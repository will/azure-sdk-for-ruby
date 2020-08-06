# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Input for the task that migrates MySQL databases to Azure Database for
    # MySQL for online migrations
    #
    class MigrateMySqlAzureDbForMySqlSyncTaskInput

      include MsRestAzure

      # @return [MySqlConnectionInfo] Connection information for source MySQL
      attr_accessor :source_connection_info

      # @return [MySqlConnectionInfo] Connection information for target Azure
      # Database for MySQL
      attr_accessor :target_connection_info

      # @return [Array<MigrateMySqlAzureDbForMySqlSyncDatabaseInput>] Databases
      # to migrate
      attr_accessor :selected_databases


      #
      # Mapper for MigrateMySqlAzureDbForMySqlSyncTaskInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrateMySqlAzureDbForMySqlSyncTaskInput',
          type: {
            name: 'Composite',
            class_name: 'MigrateMySqlAzureDbForMySqlSyncTaskInput',
            model_properties: {
              source_connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sourceConnectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'MySqlConnectionInfo'
                }
              },
              target_connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'targetConnectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'MySqlConnectionInfo'
                }
              },
              selected_databases: {
                client_side_validation: true,
                required: true,
                serialized_name: 'selectedDatabases',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MigrateMySqlAzureDbForMySqlSyncDatabaseInputElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MigrateMySqlAzureDbForMySqlSyncDatabaseInput'
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
