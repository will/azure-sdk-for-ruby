# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2019_03_22_preview
  module Models
    #
    # The properties of an enrichment that your IoT hub applies to messages
    # delivered to endpoints.
    #
    class EnrichmentProperties

      include MsRestAzure

      # @return [String] The key or name for the enrichment property.
      attr_accessor :key

      # @return [String] The value for the enrichment property.
      attr_accessor :value

      # @return [Array<String>] The list of endpoints for which the enrichment
      # is applied to the message.
      attr_accessor :endpoint_names


      #
      # Mapper for EnrichmentProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EnrichmentProperties',
          type: {
            name: 'Composite',
            class_name: 'EnrichmentProperties',
            model_properties: {
              key: {
                client_side_validation: true,
                required: true,
                serialized_name: 'key',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              endpoint_names: {
                client_side_validation: true,
                required: true,
                serialized_name: 'endpointNames',
                constraints: {
                  MinItems: 1
                },
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
