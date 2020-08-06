# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2019_03_22_preview
  module Models
    #
    # Input for testing all routes
    #
    class TestAllRoutesInput

      include MsRestAzure

      # @return [RoutingSource] Routing source. Possible values include:
      # 'Invalid', 'DeviceMessages', 'TwinChangeEvents',
      # 'DeviceLifecycleEvents', 'DeviceJobLifecycleEvents'
      attr_accessor :routing_source

      # @return [RoutingMessage] Routing message
      attr_accessor :message

      # @return [RoutingTwin] Routing Twin Reference
      attr_accessor :twin


      #
      # Mapper for TestAllRoutesInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TestAllRoutesInput',
          type: {
            name: 'Composite',
            class_name: 'TestAllRoutesInput',
            model_properties: {
              routing_source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'routingSource',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'Composite',
                  class_name: 'RoutingMessage'
                }
              },
              twin: {
                client_side_validation: true,
                required: false,
                serialized_name: 'twin',
                type: {
                  name: 'Composite',
                  class_name: 'RoutingTwin'
                }
              }
            }
          }
        }
      end
    end
  end
end
