# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Data Lake Analytics U-SQL activity.
    #
    class DataLakeAnalyticsUSQLActivity < ExecutionActivity

      include MsRestAzure


      def initialize
        @type = "DataLakeAnalyticsU-SQL"
      end

      attr_accessor :type

      # @return Case-sensitive path to folder that contains the U-SQL script.
      # Type: string (or Expression with resultType string).
      attr_accessor :script_path

      # @return [LinkedServiceReference] Script linked service reference.
      attr_accessor :script_linked_service

      # @return The maximum number of nodes simultaneously used to run the job.
      # Default value is 1. Type: integer (or Expression with resultType
      # integer), minimum: 1.
      attr_accessor :degree_of_parallelism

      # @return Determines which jobs out of all that are queued should be
      # selected to run first. The lower the number, the higher the priority.
      # Default value is 1000. Type: integer (or Expression with resultType
      # integer), minimum: 1.
      attr_accessor :priority

      # @return Parameters for U-SQL job request.
      attr_accessor :parameters

      # @return Runtime version of the U-SQL engine to use. Type: string (or
      # Expression with resultType string).
      attr_accessor :runtime_version

      # @return Compilation mode of U-SQL. Must be one of these values :
      # Semantic, Full and SingleBox. Type: string (or Expression with
      # resultType string).
      attr_accessor :compilation_mode


      #
      # Mapper for DataLakeAnalyticsUSQLActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataLakeAnalyticsU-SQL',
          type: {
            name: 'Composite',
            class_name: 'DataLakeAnalyticsUSQLActivity',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              depends_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dependsOn',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityDependency'
                      }
                  }
                }
              },
              user_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userProperties',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserProperty'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              linked_service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'linkedServiceName',
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policy',
                type: {
                  name: 'Composite',
                  class_name: 'ActivityPolicy'
                }
              },
              script_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.scriptPath',
                type: {
                  name: 'Object'
                }
              },
              script_linked_service: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.scriptLinkedService',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              degree_of_parallelism: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.degreeOfParallelism',
                type: {
                  name: 'Object'
                }
              },
              priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.priority',
                type: {
                  name: 'Object'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              runtime_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.runtimeVersion',
                type: {
                  name: 'Object'
                }
              },
              compilation_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.compilationMode',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
