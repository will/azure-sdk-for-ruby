# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Reservations::Mgmt::V2019_04_01_preview
  module Models
    #
    # Amount that Microsoft uses for record. Used during refund for calculating
    # refund limit. Tax is not included. This is locked price 30 days before
    # expiry.
    #
    class RenewPropertiesResponsePricingCurrencyTotal

      include MsRestAzure

      # @return [String]
      attr_accessor :currency_code

      # @return [Float]
      attr_accessor :amount


      #
      # Mapper for RenewPropertiesResponsePricingCurrencyTotal class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RenewPropertiesResponse_pricingCurrencyTotal',
          type: {
            name: 'Composite',
            class_name: 'RenewPropertiesResponsePricingCurrencyTotal',
            model_properties: {
              currency_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'currencyCode',
                type: {
                  name: 'String'
                }
              },
              amount: {
                client_side_validation: true,
                required: false,
                serialized_name: 'amount',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
