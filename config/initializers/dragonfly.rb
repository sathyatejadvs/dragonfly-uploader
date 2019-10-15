require 'dragonfly'
require 'dragonfly/s3_data_store'

# Configure
Dragonfly.app.configure do
	plugin :imagemagick

	secret "b4821436115176d48f38b9a0e2003415ad79614653cffb82c8e9188887945999"

	url_format "/media/:job/:name"

	datastore :s3,
	bucket_name: 'satya-ecommerce-app',
	access_key_id: 'AKIAIZ6T2XDVFKZTQMQA',
	secret_access_key: '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',
	url_scheme: 'https',
	region: 'ap-south-1'
	
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
ActiveSupport.on_load(:active_record) do
	extend Dragonfly::Model
	extend Dragonfly::Model::Validations
end
