# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_03_15_preview
  module Models
    #
    # Migration Validation Database level summary result
    #
    class MigrationValidationDatabaseSummaryResult

      include MsRestAzure

      # @return [String] Result identifier
      attr_accessor :id

      # @return [String] Migration Identifier
      attr_accessor :migration_id

      # @return [String] Name of the source database
      attr_accessor :source_database_name

      # @return [String] Name of the target database
      attr_accessor :target_database_name

      # @return [DateTime] Validation start time
      attr_accessor :started_on

      # @return [DateTime] Validation end time
      attr_accessor :ended_on

      # @return [ValidationStatus] Current status of validation at the database
      # level. Possible values include: 'Default', 'NotStarted', 'Initialized',
      # 'InProgress', 'Completed', 'CompletedWithIssues', 'Failed', 'Stopped'
      attr_accessor :status


      #
      # Mapper for MigrationValidationDatabaseSummaryResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrationValidationDatabaseSummaryResult',
          type: {
            name: 'Composite',
            class_name: 'MigrationValidationDatabaseSummaryResult',
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
              migration_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'migrationId',
                type: {
                  name: 'String'
                }
              },
              source_database_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sourceDatabaseName',
                type: {
                  name: 'String'
                }
              },
              target_database_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetDatabaseName',
                type: {
                  name: 'String'
                }
              },
              started_on: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'startedOn',
                type: {
                  name: 'DateTime'
                }
              },
              ended_on: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'endedOn',
                type: {
                  name: 'DateTime'
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
