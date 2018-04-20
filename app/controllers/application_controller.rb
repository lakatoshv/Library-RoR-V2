class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_locale

  rescue_from ActiveRecord::RecordNotFound do
    flash[:warning] = 'Resource not found.'
    redirect_back_or root_path
  end

def redirect_back_or(path)
  redirect_to request.referer || path
end
  	def set_locale
      I18n.locale = params[:locale] || extract_locale_from_tld || extract_locale_from_subdomain || I18n.default_locale
    end
 
# Get locale from top-level domain or return +nil+ if such locale is not available
# You have to put something like:
#   127.0.0.1 application.com
#   127.0.0.1 application.it
#   127.0.0.1 application.pl
# in your /etc/hosts file to try this out locally
  private
    def extract_locale_from_tld
      parsed_locale = request.host.split('.').last
      I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
    end
    def extract_locale_from_subdomain
      parsed_locale = request.subdomains.first
      I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
    end
    def default_url_options
      { locale: I18n.locale = params[:locale] || I18n.default_locale }
    end
end
