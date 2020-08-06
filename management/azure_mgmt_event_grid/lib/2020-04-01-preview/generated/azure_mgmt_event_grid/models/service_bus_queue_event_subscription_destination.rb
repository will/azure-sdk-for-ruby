# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_04_01_preview
  module Models
    #
    # Information about the service bus destination for an event subscription.
    #
    class ServiceBusQueueEventSubscriptionDestination < EventSubscriptionDestination

      include MsRestAzure


      def initialize
        @endpointType = "ServiceBusQueue"
      end

      attr_accessor :endpointType

      # @return [String] The Azure Resource Id that represents the endpoint of
      # the Service Bus destination of an event subscription.
      attr_accessor :resource_id


      #
      # Mapper for ServiceBusQueueEventSubscriptionDestination class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceBusQueue',
          type: {
            name: 'Composite',
            class_name: 'ServiceBusQueueEventSubscriptionDestination',
            model_properties: {
              endpointType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'endpointType',
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceId',
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
