# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2016_10_02
  module Models
    #
    # The result of the GetSupportedOptimizationTypes API
    #
    class SupportedOptimizationTypesResult

      include MsRestAzure

      # @return [Array<OptimizationType>] Supported optimization types for a
      # profile.
      attr_accessor :supported_optimization_types


      #
      # Mapper for SupportedOptimizationTypesResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SupportedOptimizationTypesResult',
          type: {
            name: 'Composite',
            class_name: 'SupportedOptimizationTypesResult',
            model_properties: {
              supported_optimization_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'supportedOptimizationTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'OptimizationTypeElementType',
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
