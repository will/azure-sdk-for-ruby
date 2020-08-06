# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2019_06_01
  module Models
    #
    # Full endpoint url of an event subscription
    #
    class EventSubscriptionFullUrl

      include MsRestAzure

      # @return [String] The URL that represents the endpoint of the
      # destination of an event subscription.
      attr_accessor :endpoint_url


      #
      # Mapper for EventSubscriptionFullUrl class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventSubscriptionFullUrl',
          type: {
            name: 'Composite',
            class_name: 'EventSubscriptionFullUrl',
            model_properties: {
              endpoint_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endpointUrl',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
