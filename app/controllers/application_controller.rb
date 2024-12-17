class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # Users must be able to navigate to the sign-in form from the home page even when they are not authenticated.
  before_action :authenticate_user!, unless: :devise_controller?
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  private

  def current_company
    @current_company ||= current_user.company if user_signed_in?
  end
  helper_method :current_company
end