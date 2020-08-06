# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Input for the task that migrates on-prem SQL Server databases to Azure
    # SQL Database for online migrations
    #
    class MigrateSqlServerSqlDbSyncTaskInput < SqlMigrationTaskInput

      include MsRestAzure

      # @return [Array<MigrateSqlServerSqlDbSyncDatabaseInput>] Databases to
      # migrate
      attr_accessor :selected_databases

      # @return [MigrationValidationOptions] Validation options
      attr_accessor :validation_options


      #
      # Mapper for MigrateSqlServerSqlDbSyncTaskInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrateSqlServerSqlDbSyncTaskInput',
          type: {
            name: 'Composite',
            class_name: 'MigrateSqlServerSqlDbSyncTaskInput',
            model_properties: {
              source_connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sourceConnectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'SqlConnectionInfo'
                }
              },
              target_connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'targetConnectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'SqlConnectionInfo'
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
                      serialized_name: 'MigrateSqlServerSqlDbSyncDatabaseInputElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MigrateSqlServerSqlDbSyncDatabaseInput'
                      }
                  }
                }
              },
              validation_options: {
                client_side_validation: true,
                required: false,
                serialized_name: 'validationOptions',
                type: {
                  name: 'Composite',
                  class_name: 'MigrationValidationOptions'
                }
              }
            }
          }
        }
      end
    end
  end
end
