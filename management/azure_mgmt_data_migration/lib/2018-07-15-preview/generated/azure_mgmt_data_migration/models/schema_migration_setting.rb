# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Settings for migrating schema from source to target
    #
    class SchemaMigrationSetting

      include MsRestAzure

      # @return [SchemaMigrationOption] Option on how to migrate the schema.
      # Possible values include: 'None', 'ExtractFromSource', 'UseStorageFile'
      attr_accessor :schema_option

      # @return [String] Resource Identifier of a file resource containing the
      # uploaded schema file
      attr_accessor :file_id


      #
      # Mapper for SchemaMigrationSetting class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SchemaMigrationSetting',
          type: {
            name: 'Composite',
            class_name: 'SchemaMigrationSetting',
            model_properties: {
              schema_option: {
                client_side_validation: true,
                required: false,
                serialized_name: 'schemaOption',
                type: {
                  name: 'String'
                }
              },
              file_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fileId',
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
