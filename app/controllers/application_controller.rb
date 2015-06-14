class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.new]
	protect_from_forgery with: :exception

	before_action :set_locale
	def set_locale
	    I18n.locale = params[:locale] || I18n.default_locale
	end
	def extract_locale_from_tld
		parsed_locale = request.host.split('.').last
		I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
	end
	def extract_locale_from_subdomain
		parsed_locale = request.subdomains.first
		I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
	end
	def default_url_options(options={})
		logger.debug "default_url_options is passed options: #{options.inspect}\n"
		{ locale: I18n.locale }
	end
	def definiciones
		@botonIntro = t(:botonIntro)
		@botonQueHacemos = t(:botonQueHacemos)
		@botonNosotros = t(:botonNosotros)
	end
	def after_sign_in_path_for(resource) 
		admin_path
		#redirect to admin index
	end 

	 before_filter :mailer_set_url_options
	 def mailer_set_url_options
	  ActionMailer::Base.default_url_options[:admin] = request.host_with_port
	end

	 before_filter :configure_permitted_parameters, if: :devise_controller?

	  def configure_permitted_parameters
	    devise_parameter_sanitizer.for(:account_update) { |u| 
	      u.permit(:password, :password_confirmation, :current_password) 
	    }
  	 end


	private
	  def extract_locale_from_accept_language_header
	    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
	  end
	end
