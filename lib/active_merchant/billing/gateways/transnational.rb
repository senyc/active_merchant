module ActiveMerchant # :nodoc:
  module Billing # :nodoc:
    class TransnationalGateway < NetworkMerchantsGateway
      self.homepage_url = 'https://sandbox.gotnpgateway.com/api/transaction"'
      self.display_name = 'Transnational'
      self.supported_countries = ['US']

      def initialize(options = {})
        requires!(options, :secret_key)
        super
      end

      def headers
        {
          'Authorization' => @options[:secret_key],
          'Content-Type' => 'application/json'
        }
      end
    end
  end
end
