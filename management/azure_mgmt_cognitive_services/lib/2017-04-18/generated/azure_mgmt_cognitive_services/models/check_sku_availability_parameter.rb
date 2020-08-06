# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Mgmt::V2017_04_18
  module Models
    #
    # Check SKU availability parameter.
    #
    class CheckSkuAvailabilityParameter

      include MsRestAzure

      # @return [Array<String>] The SKU of the resource.
      attr_accessor :skus

      # @return [String] The Kind of the resource.
      attr_accessor :kind

      # @return [String] The Type of the resource.
      attr_accessor :type


      #
      # Mapper for CheckSkuAvailabilityParameter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckSkuAvailabilityParameter',
          type: {
            name: 'Composite',
            class_name: 'CheckSkuAvailabilityParameter',
            model_properties: {
              skus: {
                client_side_validation: true,
                required: true,
                serialized_name: 'skus',
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
              },
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
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
