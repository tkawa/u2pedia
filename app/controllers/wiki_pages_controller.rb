class WikiPagesController < ApplicationController
  acts_as_wiki_pages_controller

  protected
  def edit_allowed?
    ! @page.toppage? # not allowed on top page
  end
  def destroy_allowed?
    false
  end

end
