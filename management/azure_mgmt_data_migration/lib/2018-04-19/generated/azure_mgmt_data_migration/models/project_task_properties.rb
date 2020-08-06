# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Base class for all types of DMS task properties. If task is not supported
    # by current client, this object is returned.
    #
    class ProjectTaskProperties

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["GetTDECertificates.Sql"] = "GetTdeCertificatesSqlTaskProperties"
      @@discriminatorMap["ValidateMigrationInput.SqlServer.AzureSqlDbMI.Sync.LRS"] = "ValidateMigrationInputSqlServerSqlMISyncTaskProperties"
      @@discriminatorMap["ValidateMigrationInput.SqlServer.AzureSqlDbMI"] = "ValidateMigrationInputSqlServerSqlMITaskProperties"
      @@discriminatorMap["ValidateMigrationInput.SqlServer.SqlDb.Sync"] = "ValidateMigrationInputSqlServerSqlDbSyncTaskProperties"
      @@discriminatorMap["Migrate.PostgreSql.AzureDbForPostgreSql.Sync"] = "MigratePostgreSqlAzureDbForPostgreSqlSyncTaskProperties"
      @@discriminatorMap["Migrate.MySql.AzureDbForMySql.Sync"] = "MigrateMySqlAzureDbForMySqlSyncTaskProperties"
      @@discriminatorMap["Migrate.SqlServer.AzureSqlDb.Sync"] = "MigrateSqlServerSqlDbSyncTaskProperties"
      @@discriminatorMap["Migrate.SqlServer.SqlDb"] = "MigrateSqlServerSqlDbTaskProperties"
      @@discriminatorMap["Migrate.SqlServer.AzureSqlDbMI.Sync.LRS"] = "MigrateSqlServerSqlMISyncTaskProperties"
      @@discriminatorMap["Migrate.SqlServer.AzureSqlDbMI"] = "MigrateSqlServerSqlMITaskProperties"
      @@discriminatorMap["ConnectToTarget.AzureDbForMySql"] = "ConnectToTargetAzureDbForMySqlTaskProperties"
      @@discriminatorMap["ConnectToTarget.AzureSqlDbMI.Sync.LRS"] = "ConnectToTargetSqlMISyncTaskProperties"
      @@discriminatorMap["ConnectToTarget.AzureSqlDbMI"] = "ConnectToTargetSqlMITaskProperties"
      @@discriminatorMap["GetUserTables.AzureSqlDb.Sync"] = "GetUserTablesSqlSyncTaskProperties"
      @@discriminatorMap["GetUserTables.Sql"] = "GetUserTablesSqlTaskProperties"
      @@discriminatorMap["ConnectToTarget.AzureDbForPostgreSql.Sync"] = "ConnectToTargetAzureDbForPostgreSqlSyncTaskProperties"
      @@discriminatorMap["ConnectToTarget.SqlDb.Sync"] = "ConnectToTargetSqlSqlDbSyncTaskProperties"
      @@discriminatorMap["ConnectToTarget.SqlDb"] = "ConnectToTargetSqlDbTaskProperties"
      @@discriminatorMap["ConnectToSource.PostgreSql.Sync"] = "ConnectToSourcePostgreSqlSyncTaskProperties"
      @@discriminatorMap["ConnectToSource.SqlServer.Sync"] = "ConnectToSourceSqlServerSyncTaskProperties"
      @@discriminatorMap["ConnectToSource.SqlServer"] = "ConnectToSourceSqlServerTaskProperties"
      @@discriminatorMap["ConnectToSource.MySql"] = "ConnectToSourceMySqlTaskProperties"

      def initialize
        @taskType = "ProjectTaskProperties"
      end

      attr_accessor :taskType

      # @return [Array<ODataError>] Array of errors. This is ignored if
      # submitted.
      attr_accessor :errors

      # @return [TaskState] The state of the task. This is ignored if
      # submitted. Possible values include: 'Unknown', 'Queued', 'Running',
      # 'Canceled', 'Succeeded', 'Failed', 'FailedInputValidation', 'Faulted'
      attr_accessor :state

      # @return [Array<CommandProperties>] Array of command properties.
      attr_accessor :commands


      #
      # Mapper for ProjectTaskProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProjectTaskProperties',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'taskType',
            uber_parent: 'ProjectTaskProperties',
            class_name: 'ProjectTaskProperties',
            model_properties: {
              errors: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'errors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ODataErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ODataError'
                      }
                  }
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              commands: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'commands',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CommandPropertiesElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'commandType',
                        uber_parent: 'CommandProperties',
                        class_name: 'CommandProperties'
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
