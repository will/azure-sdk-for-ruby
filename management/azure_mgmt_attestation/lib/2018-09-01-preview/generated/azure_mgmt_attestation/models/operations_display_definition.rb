# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Attestation::Mgmt::V2018_09_01_preview
  module Models
    #
    # Display object with properties of the operation.
    #
    class OperationsDisplayDefinition

      include MsRestAzure

      # @return [String] Resource provider of the operation.
      attr_accessor :provider

      # @return [String] Resource for the operation.
      attr_accessor :resource

      # @return [String] Short description of the operation.
      attr_accessor :operation

      # @return [String] Description of the operation.
      attr_accessor :description


      #
      # Mapper for OperationsDisplayDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationsDisplayDefinition',
          type: {
            name: 'Composite',
            class_name: 'OperationsDisplayDefinition',
            model_properties: {
              provider: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provider',
                type: {
                  name: 'String'
                }
              },
              resource: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resource',
                type: {
                  name: 'String'
                }
              },
              operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
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
