# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Appconfiguration::Mgmt::V2019_11_01_preview
  module Models
    #
    # The display information for a configuration store operation.
    #
    class OperationDefinitionDisplay

      include MsRestAzure

      # @return [String] The resource provider name: Microsoft App
      # Configuration."
      attr_accessor :provider

      # @return [String] The resource on which the operation is performed.
      attr_accessor :resource

      # @return [String] The operation that users can perform.
      attr_accessor :operation

      # @return [String] The description for the operation.
      attr_accessor :description


      #
      # Mapper for OperationDefinitionDisplay class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationDefinitionDisplay',
          type: {
            name: 'Composite',
            class_name: 'OperationDefinitionDisplay',
            model_properties: {
              provider: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
