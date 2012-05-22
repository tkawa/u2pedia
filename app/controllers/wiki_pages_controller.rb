class WikiPagesController < ApplicationController
  acts_as_wiki_pages_controller

  protected
  def edit_allowed?
    ! (@page.toppage? && (current_user.nil? || !allow_users.include?(current_user.uid))) # not allowed on top page
  end
  def destroy_allowed?
    false
  end

  private
  def allow_users
    Settings['allow_users'].try {|u| u.split(',') } || []
  end
end
