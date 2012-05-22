class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :ssl_redirect if Rails.env.production?
  before_filter :reset_session_expires

  private
  # redirect to https (only on production environment)
  def ssl_redirect
    unless request.env["HTTP_X_FORWARDED_PROTO"].to_s == "https"
      request.env["HTTP_X_FORWARDED_PROTO"] = "https"
      redirect_to request.url and return
    end
  end

  def authenticate
    if session[:user_id].blank?
      redirect_to :root and return
    end
  end

  # extend session expire date
  def reset_session_expires
    request.session_options[:expire_after] = 2.weeks
  end

  def current_user
    @current_user ||= User.where(id: session[:user_id]).first
  end

  helper_method :current_user
end
