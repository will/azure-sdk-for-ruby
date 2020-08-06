# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Output for the task that migrates PostgreSQL databases to Azure Database
    # for PostgreSQL for online migrations
    #
    class MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutput

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["DatabaseLevelErrorOutput"] = "MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseError"
      @@discriminatorMap["ErrorOutput"] = "MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputError"
      @@discriminatorMap["TableLevelOutput"] = "MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputTableLevel"
      @@discriminatorMap["DatabaseLevelOutput"] = "MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputDatabaseLevel"
      @@discriminatorMap["MigrationLevelOutput"] = "MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputMigrationLevel"

      def initialize
        @resultType = "MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutput"
      end

      attr_accessor :resultType

      # @return [String] Result identifier
      attr_accessor :id


      #
      # Mapper for MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutput class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutput',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'resultType',
            uber_parent: 'MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutput',
            class_name: 'MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutput',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
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
