# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2017_02_28_preview
  module Models
    #
    # Properties of the EventHub event source.
    #
    class EventHubEventSourceCommonProperties < AzureEventSourceProperties

      include MsRestAzure

      # @return [String] The name of the service bus that contains the event
      # hub.
      attr_accessor :service_bus_namespace

      # @return [String] The name of the event hub.
      attr_accessor :event_hub_name

      # @return [String] The name of the event hub's consumer group that holds
      # the partitions from which events will be read.
      attr_accessor :consumer_group_name

      # @return [String] The name of the SAS key that grants the Time Series
      # Insights service access to the event hub. The shared access policies
      # for this key must grant 'Listen' permissions to the event hub.
      attr_accessor :key_name


      #
      # Mapper for EventHubEventSourceCommonProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventHubEventSourceCommonProperties',
          type: {
            name: 'Composite',
            class_name: 'EventHubEventSourceCommonProperties',
            model_properties: {
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
                type: {
                  name: 'Enum',
                  module: 'ProvisioningState'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              timestamp_property_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timestampPropertyName',
                type: {
                  name: 'String'
                }
              },
              event_source_resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'eventSourceResourceId',
                type: {
                  name: 'String'
                }
              },
              service_bus_namespace: {
                client_side_validation: true,
                required: true,
                serialized_name: 'serviceBusNamespace',
                type: {
                  name: 'String'
                }
              },
              event_hub_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'eventHubName',
                type: {
                  name: 'String'
                }
              },
              consumer_group_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'consumerGroupName',
                type: {
                  name: 'String'
                }
              },
              key_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyName',
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
