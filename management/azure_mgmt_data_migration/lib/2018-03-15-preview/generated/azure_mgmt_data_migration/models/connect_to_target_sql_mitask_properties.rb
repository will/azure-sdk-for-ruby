# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_03_15_preview
  module Models
    #
    # Properties for the task that validates connection to Azure SQL Database
    # Managed Instance
    #
    class ConnectToTargetSqlMITaskProperties < ProjectTaskProperties

      include MsRestAzure


      def initialize
        @taskType = "ConnectToTarget.AzureSqlDbMI"
      end

      attr_accessor :taskType

      # @return [ConnectToTargetSqlMITaskInput] Task input
      attr_accessor :input

      # @return [Array<ConnectToTargetSqlMITaskOutput>] Task output. This is
      # ignored if submitted.
      attr_accessor :output


      #
      # Mapper for ConnectToTargetSqlMITaskProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectToTarget.AzureSqlDbMI',
          type: {
            name: 'Composite',
            class_name: 'ConnectToTargetSqlMITaskProperties',
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
                  class_name: 'ConnectToTargetSqlMITaskInput'
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
                      serialized_name: 'ConnectToTargetSqlMITaskOutputElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectToTargetSqlMITaskOutput'
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
