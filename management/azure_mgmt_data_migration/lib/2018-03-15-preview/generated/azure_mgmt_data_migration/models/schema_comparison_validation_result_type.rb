# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_03_15_preview
  module Models
    #
    # Description about the errors happen while performing migration validation
    #
    class SchemaComparisonValidationResultType

      include MsRestAzure

      # @return [String] Name of the object that has the difference
      attr_accessor :object_name

      # @return [ObjectType] Type of the object that has the difference. e.g
      # (Table/View/StoredProcedure). Possible values include:
      # 'StoredProcedures', 'Table', 'User', 'View', 'Function'
      attr_accessor :object_type

      # @return [UpdateActionType] Update action type with respect to target.
      # Possible values include: 'DeletedOnTarget', 'ChangedOnTarget',
      # 'AddedOnTarget'
      attr_accessor :update_action


      #
      # Mapper for SchemaComparisonValidationResultType class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SchemaComparisonValidationResultType',
          type: {
            name: 'Composite',
            class_name: 'SchemaComparisonValidationResultType',
            model_properties: {
              object_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'objectName',
                type: {
                  name: 'String'
                }
              },
              object_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              update_action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'updateAction',
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
