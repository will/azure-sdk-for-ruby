# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Mgmt::V2016_02_01_preview
  module Models
    #
    # Model object.
    #
    #
    class CognitiveServicesResourceAndSku

      include MsRestAzure

      # @return [String] Resource Namespace and Type
      attr_accessor :resource_type

      # @return [Sku]
      attr_accessor :sku


      #
      # Mapper for CognitiveServicesResourceAndSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CognitiveServicesResourceAndSku',
          type: {
            name: 'Composite',
            class_name: 'CognitiveServicesResourceAndSku',
            model_properties: {
              resource_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceType',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              }
            }
          }
        }
      end
    end
  end
end
