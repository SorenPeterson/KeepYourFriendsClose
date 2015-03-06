OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FB_AUTH_CLIENT_ID'], ENV['FB_AUTH_CLIENT_SECRET'], scope: 'user_friends'
end