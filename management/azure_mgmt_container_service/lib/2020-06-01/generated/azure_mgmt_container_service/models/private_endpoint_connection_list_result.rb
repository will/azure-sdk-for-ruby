# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2020_06_01
  module Models
    #
    # A list of private endpoint connections
    #
    class PrivateEndpointConnectionListResult

      include MsRestAzure

      # @return [Array<PrivateEndpointConnection>] The collection value.
      attr_accessor :value


      #
      # Mapper for PrivateEndpointConnectionListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateEndpointConnectionListResult',
          type: {
            name: 'Composite',
            class_name: 'PrivateEndpointConnectionListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PrivateEndpointConnectionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PrivateEndpointConnection'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
