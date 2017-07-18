class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_filter :configure_permitted_parameters, if: :devise_controller?
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
  
  def current_user
    super || OpenStruct.new(name: "Guest User", first_name: "Guest", last_name: "User", email: "guest@example.com")
  end
  
  before_action :set_page_defaults
  
  def set_page_defaults
    @page_title = "DevcampPortfolio"
    @seo_keywords = "Tyson Allgaier Website"
  end
  
  before_action :set_copyright
  
  def set_copyright
    @copyright = TysonAllgaierViewTool::Renderer.copyright 'Tyson Allgaier', 'All Rights Reserved'
  end
  
  module TysonAllgaierViewTool
    class Renderer
      def self.copyright name, msg
        "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
      end
    end
  end
end
