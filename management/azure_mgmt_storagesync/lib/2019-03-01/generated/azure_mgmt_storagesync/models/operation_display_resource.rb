# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2019_03_01
  module Models
    #
    # Operation Display Resource object.
    #
    class OperationDisplayResource

      include MsRestAzure

      # @return [String] Operation Display Resource Provider.
      attr_accessor :provider

      # @return [String] Operation Display Resource.
      attr_accessor :resource

      # @return [String] Operation Display Resource Operation.
      attr_accessor :operation

      # @return [String] Operation Display Resource Description.
      attr_accessor :description


      #
      # Mapper for OperationDisplayResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationDisplayResource',
          type: {
            name: 'Composite',
            class_name: 'OperationDisplayResource',
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
