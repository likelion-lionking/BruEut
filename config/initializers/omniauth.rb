OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '318485249752-vi8snnhkrdktcbmtfi728q680377bs4b.apps.googleusercontent.com', 'reekNs4nsdF6E--1jId7yu6V',
        {
           hd: 'g.ucla.edu',

          client_options: {ssl:
            {ca_file: Rails.root.join("cacert.pem").to_s}
            }
        }
end
