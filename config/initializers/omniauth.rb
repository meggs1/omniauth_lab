Rails.application.config.middleware.use OmniAuth::Builder do
    provider :developer unless Rails.env.production?
     provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
  end

  # OmniAuth::Builder adds providers, providers authenticate third parties
  # each provider has a strategy. this code sets the developer strategy