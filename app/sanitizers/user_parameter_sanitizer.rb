class UserParameterSanitizer < Devise::ParameterSanitizer
  USER_PARAMS = %i(
    email
    password
    password_confirmation
    current_password
    style
  )

  def account_update
    default_params.permit(USER_PARAMS)
  end
end
