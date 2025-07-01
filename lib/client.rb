require 'httparty'
require 'yaml'

module TonapiWallet
  class Client
    include HTTParty
    base_uri 'https://tonapi.io/v2'

    def initialize(api_key = nil)
      @api_key = api_key || load_config[:tonapi_key]
    end

    def get_wallet(address)
      self.class.get("/accounts/#{address}", headers: { "Authorization" => "Bearer #{@api_key}" })
    end

    private

    def load_config
      YAML.load_file(File.join(__dir__, '../../config/defaults.yml'))
    end
  end
end
