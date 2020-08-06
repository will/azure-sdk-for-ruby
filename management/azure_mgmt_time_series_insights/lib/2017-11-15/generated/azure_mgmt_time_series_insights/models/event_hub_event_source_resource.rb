# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2017_11_15
  module Models
    #
    # An event source that receives its data from an Azure EventHub.
    #
    class EventHubEventSourceResource < EventSourceResource

      include MsRestAzure


      def initialize
        @kind = "Microsoft.EventHub"
      end

      attr_accessor :kind

      # @return [ProvisioningState] Provisioning state of the resource.
      # Possible values include: 'Accepted', 'Creating', 'Updating',
      # 'Succeeded', 'Failed', 'Deleting'
      attr_accessor :provisioning_state

      # @return [DateTime] The time the resource was created.
      attr_accessor :creation_time

      # @return [String] The event property that will be used as the event
      # source's timestamp. If a value isn't specified for
      # timestampPropertyName, or if null or empty-string is specified, the
      # event creation time will be used.
      attr_accessor :timestamp_property_name

      # @return [String] The resource id of the event source in Azure Resource
      # Manager.
      attr_accessor :event_source_resource_id

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
      # Mapper for EventHubEventSourceResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Microsoft.EventHub',
          type: {
            name: 'Composite',
            class_name: 'EventHubEventSourceResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'ProvisioningState'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              timestamp_property_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.timestampPropertyName',
                type: {
                  name: 'String'
                }
              },
              event_source_resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.eventSourceResourceId',
                type: {
                  name: 'String'
                }
              },
              service_bus_namespace: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.serviceBusNamespace',
                type: {
                  name: 'String'
                }
              },
              event_hub_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.eventHubName',
                type: {
                  name: 'String'
                }
              },
              consumer_group_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.consumerGroupName',
                type: {
                  name: 'String'
                }
              },
              key_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.keyName',
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
