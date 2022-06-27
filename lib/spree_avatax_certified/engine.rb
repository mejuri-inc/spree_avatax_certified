module SpreeAvataxCertified
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_avatax_certified'

    config.autoload_paths += %W(#{config.root}/lib)

    config.generators do |g|
      g.test_framework :rspec
    end

    initializer "spree.avatax_certified.preferences", :before => :load_config_initializers do |app|
      Spree::AppConfiguration.class_eval do
        preference :avatax_api_username, :string
        preference :avatax_api_password, :string
        preference :avatax_company_code, :string
        preference :avatax_endpoint, :string
        preference :avatax_account, :string
        preference :avatax_license_key, :string
        preference :avatax_iseligible, :boolean, default: true
        preference :avatax_log, :boolean, default: true
        preference :avatax_address_validation, :boolean, default: true
        preference :avatax_address_validation_enabled_countries, :array, default: ["United States", "Canada"]
        preference :avatax_tax_calculation, :boolean, default: true
        preference :avatax_document_commit, :boolean, default: true
        preference :avatax_origin, :string, default: "{}"
        preference :avatax_log_to_stdout, :boolean, default: false
        preference :avatax_read_timeout, :integer, default: 10
        preference :avatax_open_timeout, :integer, default: 5
      end
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../../app/**/*_decorator*.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
