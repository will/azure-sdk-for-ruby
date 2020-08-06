# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Properties for task that validates migration input for SQL to Azure SQL
    # DB sync migrations
    #
    class ValidateMigrationInputSqlServerSqlDbSyncTaskProperties < ProjectTaskProperties

      include MsRestAzure


      def initialize
        @taskType = "ValidateMigrationInput.SqlServer.SqlDb.Sync"
      end

      attr_accessor :taskType

      # @return [ValidateSyncMigrationInputSqlServerTaskInput] Task input
      attr_accessor :input

      # @return [Array<ValidateSyncMigrationInputSqlServerTaskOutput>] Task
      # output. This is ignored if submitted.
      attr_accessor :output


      #
      # Mapper for ValidateMigrationInputSqlServerSqlDbSyncTaskProperties class
      # as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ValidateMigrationInput.SqlServer.SqlDb.Sync',
          type: {
            name: 'Composite',
            class_name: 'ValidateMigrationInputSqlServerSqlDbSyncTaskProperties',
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
              },
              taskType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'taskType',
                type: {
                  name: 'String'
                }
              },
              input: {
                client_side_validation: true,
                required: false,
                serialized_name: 'input',
                type: {
                  name: 'Composite',
                  class_name: 'ValidateSyncMigrationInputSqlServerTaskInput'
                }
              },
              output: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'output',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ValidateSyncMigrationInputSqlServerTaskOutputElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ValidateSyncMigrationInputSqlServerTaskOutput'
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
