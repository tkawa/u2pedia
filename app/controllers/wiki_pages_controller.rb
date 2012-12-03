class WikiPagesController < ApplicationController
  include Rack::Recaptcha::Helpers

  acts_as_wiki_pages_controller

  def show
    @sidebar = WikiPage.find_by_path_or_new('sidebar')
    super
  end

  def update
    return not_allowed unless params[:page] && (@page.new_record? || edit_allowed?) # Check for rights (but not for new record, for it we will use second check only)

    @page.attributes = params[:page] # Assign new attributes
    @page.comment = params[:page][:comment]

    return not_allowed unless edit_allowed? # Double check: used beacause action may become invalid after attributes update

    @page.updator = @current_user # Assing user, which updated page
    @page.creator = @current_user if @page.new_record? # Assign it's creator if it's new page

    if params[:save]
      if recaptcha_valid? && params[:tos] == true
        @page.save
        redirect_to url_for( :action => :show, :path => @page.path.split('/') ) # redirect to new page's path (if it changed)
      else
        if !recaptcha_valid?
          flash.now[:alert]="Please try again"
        end
        if params[:tos] == nil
          flash.now[:tos_alert]="Please accept"
          @tos_checked = false
        end
        render_template 'edit'
      end
    elsif params[:cancel] 
      redirect_to url_for( :action => :show, :path => @page.path.split('/') ) # redirect to new page's path (if it changed)
    else
      render_template 'edit'
    end
  end

  protected
  def edit_allowed?
    destroy_allowed?
    !@page.toppage? || destroy_allowed? # not allowed on top page
  end
  def destroy_allowed?
    current_user.try(:edit_allowed?)
  end
end
