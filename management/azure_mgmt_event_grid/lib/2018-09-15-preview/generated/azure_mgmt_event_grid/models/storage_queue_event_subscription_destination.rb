# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2018_09_15_preview
  module Models
    #
    # Information about the storage queue destination for an event
    # subscription.
    #
    class StorageQueueEventSubscriptionDestination < EventSubscriptionDestination

      include MsRestAzure


      def initialize
        @endpointType = "StorageQueue"
      end

      attr_accessor :endpointType

      # @return [String] The Azure Resource ID of the storage account that
      # contains the queue that is the destination of an event subscription.
      attr_accessor :resource_id

      # @return [String] The name of the Storage queue under a storage account
      # that is the destination of an event subscription.
      attr_accessor :queue_name


      #
      # Mapper for StorageQueueEventSubscriptionDestination class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageQueue',
          type: {
            name: 'Composite',
            class_name: 'StorageQueueEventSubscriptionDestination',
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
              },
              queue_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.queueName',
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
