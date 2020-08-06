# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2019_03_22_preview
  module Models
    #
    # The properties related to an event hub endpoint.
    #
    class RoutingEventHubProperties

      include MsRestAzure

      # @return [String] The connection string of the event hub endpoint.
      attr_accessor :connection_string

      # @return [String] The name that identifies this endpoint. The name can
      # only include alphanumeric characters, periods, underscores, hyphens and
      # has a maximum length of 64 characters. The following names are
      # reserved:  events, fileNotifications, $default. Endpoint names must be
      # unique across endpoint types.
      attr_accessor :name

      # @return [String] The subscription identifier of the event hub endpoint.
      attr_accessor :subscription_id

      # @return [String] The name of the resource group of the event hub
      # endpoint.
      attr_accessor :resource_group


      #
      # Mapper for RoutingEventHubProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RoutingEventHubProperties',
          type: {
            name: 'Composite',
            class_name: 'RoutingEventHubProperties',
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
