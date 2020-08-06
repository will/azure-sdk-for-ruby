# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2017_07_01
  module Models
    #
    # The routing related properties of the IoT hub. See:
    # https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging
    #
    class RoutingProperties

      include MsRestAzure

      # @return [RoutingEndpoints]
      attr_accessor :endpoints

      # @return [Array<RouteProperties>] The list of user-provided routing
      # rules that the IoT hub uses to route messages to built-in and custom
      # endpoints. A maximum of 100 routing rules are allowed for paid hubs and
      # a maximum of 5 routing rules are allowed for free hubs.
      attr_accessor :routes

      # @return [FallbackRouteProperties] The properties of the route that is
      # used as a fall-back route when none of the conditions specified in the
      # 'routes' section are met. This is an optional parameter. When this
      # property is not set, the messages which do not meet any of the
      # conditions specified in the 'routes' section get routed to the built-in
      # eventhub endpoint.
      attr_accessor :fallback_route


      #
      # Mapper for RoutingProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RoutingProperties',
          type: {
            name: 'Composite',
            class_name: 'RoutingProperties',
            model_properties: {
              endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endpoints',
                type: {
                  name: 'Composite',
                  class_name: 'RoutingEndpoints'
                }
              },
              routes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'routes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RoutePropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RouteProperties'
                      }
                  }
                }
              },
              fallback_route: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fallbackRoute',
                type: {
                  name: 'Composite',
                  class_name: 'FallbackRouteProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
