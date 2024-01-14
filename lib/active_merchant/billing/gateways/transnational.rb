module ActiveMerchant # :nodoc:
  module Billing # :nodoc:
    class TransnationalGateway < Gateway
      self.homepage_url = 'sandbox.gotnpgateway.com/'
      self.display_name = 'Transnational'
      self.supported_countries = ['US']

      def initialize(options = {})
        requies!(options, :secret_key)
        super
      end

      # def purchase(amount, payment_method, options = {})
      #   MultiResponse.run do |r|
      #     r.process { authorize(amount, payment_method, options) }
      #     r.process { capture(amount, r.authorization, options) }
      #   end
      # end

      def headers
        {
          'Authorization' => @options[:secret_key],
          'Content-Type' => 'application/json'
        }
      end
    end
  end
end
