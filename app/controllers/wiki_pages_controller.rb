class WikiPagesController < ApplicationController
  acts_as_wiki_pages_controller

  def show
    @sidebar = WikiPage.find_by_path_or_new('sidebar')
    super
  end

  protected
  def edit_allowed?
    destroy_allowed?
    #!@page.toppage? || destroy_allowed? # not allowed on top page
  end
  def destroy_allowed?
    current_user.try(:edit_allowed?)
  end
end
