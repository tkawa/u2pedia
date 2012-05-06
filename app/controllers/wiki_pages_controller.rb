class WikiPagesController < ApplicationController
  acts_as_wiki_pages_controller

  protected
  def destroy_allowed?
    false
  end

end
