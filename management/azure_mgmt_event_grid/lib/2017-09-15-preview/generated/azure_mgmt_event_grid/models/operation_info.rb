# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2017_09_15_preview
  module Models
    #
    # Information about an operation
    #
    class OperationInfo

      include MsRestAzure

      # @return [String] Name of the provider
      attr_accessor :provider

      # @return [String] Name of the resource type
      attr_accessor :resource

      # @return [String] Name of the operation
      attr_accessor :operation

      # @return [String] Description of the operation
      attr_accessor :description


      #
      # Mapper for OperationInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationInfo',
          type: {
            name: 'Composite',
            class_name: 'OperationInfo',
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
