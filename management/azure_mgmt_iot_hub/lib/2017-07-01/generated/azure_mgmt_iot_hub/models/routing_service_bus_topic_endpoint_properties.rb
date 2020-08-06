# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2017_07_01
  module Models
    #
    # The properties related to service bus topic endpoint types.
    #
    class RoutingServiceBusTopicEndpointProperties

      include MsRestAzure

      # @return [String] The connection string of the service bus topic
      # endpoint.
      attr_accessor :connection_string

      # @return [String] The name that identifies this endpoint. The name can
      # only include alphanumeric characters, periods, underscores, hyphens and
      # has a maximum length of 64 characters. The following names are
      # reserved:  events, operationsMonitoringEvents, fileNotifications,
      # $default. Endpoint names must be unique across endpoint types.  The
      # name need not be the same as the actual topic name.
      attr_accessor :name

      # @return [String] The subscription identifier of the service bus topic
      # endpoint.
      attr_accessor :subscription_id

      # @return [String] The name of the resource group of the service bus
      # topic endpoint.
      attr_accessor :resource_group


      #
      # Mapper for RoutingServiceBusTopicEndpointProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RoutingServiceBusTopicEndpointProperties',
          type: {
            name: 'Composite',
            class_name: 'RoutingServiceBusTopicEndpointProperties',
            model_properties: {
              connection_string: {
                client_side_validation: true,
                required: true,
                serialized_name: 'connectionString',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                constraints: {
                  Pattern: '^[A-Za-z0-9-._]{1,64}$'
                },
                type: {
                  name: 'String'
                }
              },
              subscription_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subscriptionId',
                type: {
                  name: 'String'
                }
              },
              resource_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceGroup',
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
