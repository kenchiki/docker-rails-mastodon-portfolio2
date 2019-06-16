class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def mastodon
    @user = User.find_or_create_user!(request.env["omniauth.auth"])
    sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
    set_flash_message(:notice, :success, kind: 'Mastodon')
  end
end
