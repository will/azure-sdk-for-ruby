# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Properties for task that migrates Schema for SQL Server databases to
    # Azure SQL databases
    #
    class MigrateSchemaSqlServerSqlDbTaskProperties < ProjectTaskProperties

      include MsRestAzure


      def initialize
        @taskType = "MigrateSchemaSqlServerSqlDb"
      end

      attr_accessor :taskType

      # @return [MigrateSchemaSqlServerSqlDbTaskInput] Task input
      attr_accessor :input

      # @return [Array<MigrateSchemaSqlServerSqlDbTaskOutput>] Task output.
      # This is ignored if submitted.
      attr_accessor :output


      #
      # Mapper for MigrateSchemaSqlServerSqlDbTaskProperties class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrateSchemaSqlServerSqlDb',
          type: {
            name: 'Composite',
            class_name: 'MigrateSchemaSqlServerSqlDbTaskProperties',
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
                  class_name: 'MigrateSchemaSqlServerSqlDbTaskInput'
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
                      serialized_name: 'MigrateSchemaSqlServerSqlDbTaskOutputElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'resultType',
                        uber_parent: 'MigrateSchemaSqlServerSqlDbTaskOutput',
                        class_name: 'MigrateSchemaSqlServerSqlDbTaskOutput'
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
