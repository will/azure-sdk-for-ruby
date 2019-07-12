# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Output for task that migrates SQL Server databases to Azure SQL Database
    # Managed Instance using Log Replay Service.
    #
    class MigrateSqlServerSqlMISyncTaskOutput

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["ErrorOutput"] = "MigrateSqlServerSqlMISyncTaskOutputError"
      @@discriminatorMap["DatabaseLevelOutput"] = "MigrateSqlServerSqlMISyncTaskOutputDatabaseLevel"
      @@discriminatorMap["MigrationLevelOutput"] = "MigrateSqlServerSqlMISyncTaskOutputMigrationLevel"

      def initialize
        @resultType = "MigrateSqlServerSqlMISyncTaskOutput"
      end

      attr_accessor :resultType

      # @return [String] Result identifier
      attr_accessor :id


      #
      # Mapper for MigrateSqlServerSqlMISyncTaskOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrateSqlServerSqlMISyncTaskOutput',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'resultType',
            uber_parent: 'MigrateSqlServerSqlMISyncTaskOutput',
            class_name: 'MigrateSqlServerSqlMISyncTaskOutput',
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
