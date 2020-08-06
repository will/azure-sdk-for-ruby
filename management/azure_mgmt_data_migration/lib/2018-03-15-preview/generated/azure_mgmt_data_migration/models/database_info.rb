# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_03_15_preview
  module Models
    #
    # Project Database Details
    #
    class DatabaseInfo

      include MsRestAzure

      # @return [String] Name of the database
      attr_accessor :source_database_name


      #
      # Mapper for DatabaseInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseInfo',
          type: {
            name: 'Composite',
            class_name: 'DatabaseInfo',
            model_properties: {
              source_database_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sourceDatabaseName',
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
