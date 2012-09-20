U2pedia::Application.config.middleware.use Rack::Recaptcha, :public_key => Settings.recaptcha.public_key, :private_key => Settings.recaptcha.private_key
