OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '84897315889-b152cp3ro2ad31rcimjpsoi9oo72vna9.apps.googleusercontent.com', '8yqKe57vH1qpSzGO1VoISTFk',
        {
           hd: 'g.ucla.edu',

          client_options: {ssl:
            {ca_file: Rails.root.join("cacert.pem").to_s}
            }
        }
end
