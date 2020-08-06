# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Validation result for Sql Server to Azure Sql DB migration.
    #
    class MigrateSqlServerSqlDbTaskOutputValidationResult < MigrateSqlServerSqlDbTaskOutput

      include MsRestAzure


      def initialize
        @resultType = "MigrationValidationOutput"
      end

      attr_accessor :resultType

      # @return [String] Migration Identifier
      attr_accessor :migration_id

      # @return [Hash{String => MigrationValidationDatabaseSummaryResult}]
      # Validation summary results for each database
      attr_accessor :summary_results

      # @return [ValidationStatus] Current status of validation at the
      # migration level. Status from the database validation result status will
      # be aggregated here. Possible values include: 'Default', 'NotStarted',
      # 'Initialized', 'InProgress', 'Completed', 'CompletedWithIssues',
      # 'Failed', 'Stopped'
      attr_accessor :status


      #
      # Mapper for MigrateSqlServerSqlDbTaskOutputValidationResult class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrationValidationOutput',
          type: {
            name: 'Composite',
            class_name: 'MigrateSqlServerSqlDbTaskOutputValidationResult',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              resultType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'resultType',
                type: {
                  name: 'String'
                }
              },
              migration_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'migrationId',
                type: {
                  name: 'String'
                }
              },
              summary_results: {
                client_side_validation: true,
                required: false,
                serialized_name: 'summaryResults',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MigrationValidationDatabaseSummaryResultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MigrationValidationDatabaseSummaryResult'
                      }
                  }
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
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
