class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  protect_from_forgery prepend: true    ##===   In Rails 5
  layout Proc.new { |controller| controller.devise_controller? ? 'devise' : 'application' }
  before_action :configure_permitted_parameter_for_login, if: :devise_controller?

   def logged_in?
       ! current_admin.nil?
   end
   # Confirms a logged-in user.
   def logged_in_user
      unless logged_in?
         flash[:danger] = "Por favor Iniciar sesión."
         redirect_to new_admin_session_path
      end
   end
 protected
 def configure_permitted_parameter_for_login
   devise_parameter_sanitizer.permit(:sign_in) do |params|
     params.permit(:login,:password)
   end
 end
 private

    def after_sign_in_path_for(resource)
     "/dashboard"
    end

private def after_sign_up_path_for(resource)
    new_admin_session_path
end

private def after_sign_out_path_for(resource)
    new_admin_session_path
    end
end
