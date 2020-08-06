# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_03_15_preview
  module Models
    #
    # A representation of the name of an object in a database
    #
    class DatabaseObjectName

      include MsRestAzure

      # @return [String] The unescaped name of the database containing the
      # object
      attr_accessor :database_name

      # @return [String] The unescaped name of the object
      attr_accessor :object_name

      # @return [String] The unescaped name of the schema containing the object
      attr_accessor :schema_name

      # @return [ObjectType] Type of the object in the database. Possible
      # values include: 'StoredProcedures', 'Table', 'User', 'View', 'Function'
      attr_accessor :object_type


      #
      # Mapper for DatabaseObjectName class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseObjectName',
          type: {
            name: 'Composite',
            class_name: 'DatabaseObjectName',
            model_properties: {
              database_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'databaseName',
                type: {
                  name: 'String'
                }
              },
              object_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'objectName',
                type: {
                  name: 'String'
                }
              },
              schema_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'schemaName',
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
              }
            }
          }
        }
      end
    end
  end
end
