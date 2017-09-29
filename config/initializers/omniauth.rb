OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '45768978488-edhnm34dfeig5v851dj4gclf2dbi6058.apps.googleusercontent.com', 'wrEukXUNx8Ha9boa0TYqoTMM',
        {
           hd: 'g.ucla.edu',

          client_options: {ssl:
            {ca_file: Rails.root.join("cacert.pem").to_s}
            }
        }
end
