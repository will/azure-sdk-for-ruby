# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Input for the task that migrates PostgreSQL databases to Azure Database
    # for PostgreSQL for online migrations
    #
    class MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput

      include MsRestAzure

      # @return [Array<MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput>]
      # Databases to migrate
      attr_accessor :selected_databases

      # @return [PostgreSqlConnectionInfo] Connection information for target
      # Azure Database for PostgreSQL
      attr_accessor :target_connection_info

      # @return [PostgreSqlConnectionInfo] Connection information for source
      # PostgreSQL
      attr_accessor :source_connection_info


      #
      # Mapper for MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput',
          type: {
            name: 'Composite',
            class_name: 'MigratePostgreSqlAzureDbForPostgreSqlSyncTaskInput',
            model_properties: {
              selected_databases: {
                client_side_validation: true,
                required: true,
                serialized_name: 'selectedDatabases',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInputElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MigratePostgreSqlAzureDbForPostgreSqlSyncDatabaseInput'
                      }
                  }
                }
              },
              target_connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'targetConnectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'PostgreSqlConnectionInfo'
                }
              },
              source_connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sourceConnectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'PostgreSqlConnectionInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
