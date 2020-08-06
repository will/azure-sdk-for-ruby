# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # Log of the entity being created, updated or deleted.
    #
    class OperationResultLogItemContract

      include MsRestAzure

      # @return [String] The type of entity contract.
      attr_accessor :object_type

      # @return [String] Action like create/update/delete.
      attr_accessor :action

      # @return [String] Identifier of the entity being
      # created/updated/deleted.
      attr_accessor :object_key


      #
      # Mapper for OperationResultLogItemContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationResultLogItemContract',
          type: {
            name: 'Composite',
            class_name: 'OperationResultLogItemContract',
            model_properties: {
              object_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'action',
                type: {
                  name: 'String'
                }
              },
              object_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'objectKey',
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
