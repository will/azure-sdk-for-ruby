# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Properties for the task that validates connection to SQL Server and also
    # validates source server requirements
    #
    class ConnectToSourceSqlServerTaskProperties < ProjectTaskProperties

      include MsRestAzure


      def initialize
        @taskType = "ConnectToSource.SqlServer"
      end

      attr_accessor :taskType

      # @return [ConnectToSourceSqlServerTaskInput] Task input
      attr_accessor :input

      # @return [Array<ConnectToSourceSqlServerTaskOutput>] Task output. This
      # is ignored if submitted.
      attr_accessor :output


      #
      # Mapper for ConnectToSourceSqlServerTaskProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectToSource.SqlServer',
          type: {
            name: 'Composite',
            class_name: 'ConnectToSourceSqlServerTaskProperties',
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
                  class_name: 'ConnectToSourceSqlServerTaskInput'
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
                      serialized_name: 'ConnectToSourceSqlServerTaskOutputElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'resultType',
                        uber_parent: 'ConnectToSourceSqlServerTaskOutput',
                        class_name: 'ConnectToSourceSqlServerTaskOutput'
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
