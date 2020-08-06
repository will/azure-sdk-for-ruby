# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Database level result for Sql Server to Azure Sql DB migration.
    #
    class MigrateSqlServerSqlDbTaskOutputDatabaseLevel < MigrateSqlServerSqlDbTaskOutput

      include MsRestAzure


      def initialize
        @resultType = "DatabaseLevelOutput"
      end

      attr_accessor :resultType

      # @return [String] Name of the item
      attr_accessor :database_name

      # @return [DateTime] Migration start time
      attr_accessor :started_on

      # @return [DateTime] Migration end time
      attr_accessor :ended_on

      # @return [MigrationState] Current state of migration. Possible values
      # include: 'None', 'InProgress', 'Failed', 'Warning', 'Completed',
      # 'Skipped', 'Stopped'
      attr_accessor :state

      # @return [DatabaseMigrationStage] Migration stage that this database is
      # in. Possible values include: 'None', 'Initialize', 'Backup',
      # 'FileCopy', 'Restore', 'Completed'
      attr_accessor :stage

      # @return [String] Status message
      attr_accessor :status_message

      # @return [String] Migration progress message
      attr_accessor :message

      # @return [Integer] Number of objects
      attr_accessor :number_of_objects

      # @return [Integer] Number of successfully completed objects
      attr_accessor :number_of_objects_completed

      # @return [Integer] Number of database/object errors.
      attr_accessor :error_count

      # @return [String] Wildcard string prefix to use for querying all errors
      # of the item
      attr_accessor :error_prefix

      # @return [String] Wildcard string prefix to use for querying all sub-tem
      # results of the item
      attr_accessor :result_prefix

      # @return [Array<ReportableException>] Migration exceptions and warnings.
      attr_accessor :exceptions_and_warnings

      # @return [Hash{String => DataItemMigrationSummaryResult}] Summary of
      # object results in the migration
      attr_accessor :object_summary


      #
      # Mapper for MigrateSqlServerSqlDbTaskOutputDatabaseLevel class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseLevelOutput',
          type: {
            name: 'Composite',
            class_name: 'MigrateSqlServerSqlDbTaskOutputDatabaseLevel',
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
              database_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'databaseName',
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
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              stage: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'stage',
                type: {
                  name: 'String'
                }
              },
              status_message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'statusMessage',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              number_of_objects: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'numberOfObjects',
                type: {
                  name: 'Number'
                }
              },
              number_of_objects_completed: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'numberOfObjectsCompleted',
                type: {
                  name: 'Number'
                }
              },
              error_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'errorCount',
                type: {
                  name: 'Number'
                }
              },
              error_prefix: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'errorPrefix',
                type: {
                  name: 'String'
                }
              },
              result_prefix: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resultPrefix',
                type: {
                  name: 'String'
                }
              },
              exceptions_and_warnings: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'exceptionsAndWarnings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ReportableExceptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ReportableException'
                      }
                  }
                }
              },
              object_summary: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'objectSummary',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DataItemMigrationSummaryResultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataItemMigrationSummaryResult'
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
