# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Properties for the task that validates a migration for Oracle to Azure
    # Database for PostgreSQL for online migrations
    #
    class ValidateOracleAzureDbForPostgreSqlSyncTaskProperties < ProjectTaskProperties

      include MsRestAzure


      def initialize
        @taskType = "Validate.Oracle.AzureDbPostgreSql.Sync"
      end

      attr_accessor :taskType

      # @return [MigrateOracleAzureDbPostgreSqlSyncTaskInput]
      attr_accessor :input

      # @return [Array<ValidateOracleAzureDbPostgreSqlSyncTaskOutput>] An array
      # containing a single validation error response object
      attr_accessor :output


      #
      # Mapper for ValidateOracleAzureDbForPostgreSqlSyncTaskProperties class
      # as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Validate.Oracle.AzureDbPostgreSql.Sync',
          type: {
            name: 'Composite',
            class_name: 'ValidateOracleAzureDbForPostgreSqlSyncTaskProperties',
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
              client_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clientData',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
                  class_name: 'MigrateOracleAzureDbPostgreSqlSyncTaskInput'
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
                      serialized_name: 'ValidateOracleAzureDbPostgreSqlSyncTaskOutputElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ValidateOracleAzureDbPostgreSqlSyncTaskOutput'
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
