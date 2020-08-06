# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Model object.
    #
    #
    class MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseError < MigrateMySqlAzureDbForMySqlSyncTaskOutput

      include MsRestAzure


      def initialize
        @resultType = "DatabaseLevelErrorOutput"
      end

      attr_accessor :resultType

      # @return [String] Error message
      attr_accessor :error_message

      # @return [Array<SyncMigrationDatabaseErrorEvent>] List of error events.
      attr_accessor :events


      #
      # Mapper for MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseError class
      # as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseLevelErrorOutput',
          type: {
            name: 'Composite',
            class_name: 'MigrateMySqlAzureDbForMySqlSyncTaskOutputDatabaseError',
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
              error_message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errorMessage',
                type: {
                  name: 'String'
                }
              },
              events: {
                client_side_validation: true,
                required: false,
                serialized_name: 'events',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SyncMigrationDatabaseErrorEventElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SyncMigrationDatabaseErrorEvent'
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
