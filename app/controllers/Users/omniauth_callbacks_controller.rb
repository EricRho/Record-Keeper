class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def twitter
    @user = User.from_omniauth(auth_hash)

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, kind: "{provider}".capitalize) if is_navigational_format?
    else
      # session['devise.twitter_data'] = env['omniauth.auth'].except('extra')
      redirect_to new_user_registration_url
    end


  end

  def auth_hash
    request.env['omniauth.auth']
  end
  # def authenticate
  #   @discogs = Discogs::Wrapper.new("Test Oath")
  #   request_data = @discogs.get_request_token("vVqZWXDJOLmvpvMCoQly", "KNnWkTvicsySetHQDMYRZXYfehAZlNGS", "http://localhost:3000/callback")

  #   session[:request_token] = request_data[:request_token]

  #   redirect_to request_data[:authorize_url]
  # end

  # def callback
  #   @discogs = Discogs::Wrapper.new("Test Oauth")
  #   request_token = session[:request_token]
  #   verifier = params[:oauth_verifier]
  #   access_token = @discogs.authenticate(request_token, verifier)

  #   session[:request_token] = nil
  #   session[:access_token] = access_token

  #   @discogs = access_token = access_token
  # end

  # def another_action
  #   @discogs = Discogs::Wrapper.new("Test Oauth", session[:access_token])
  # end

  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when omniauth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
