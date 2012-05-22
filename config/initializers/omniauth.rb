Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :developer unless Rails.env.production?
  provider :twitter, Settings.twitter.key, Settings.twitter.secret
#  provider :github, ENV['GITHUB_CLIENT_ID'], ENV['GITHUB_SECRET']
#  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET']
end
