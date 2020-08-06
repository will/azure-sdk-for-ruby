# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # DatabricksSparkJar activity.
    #
    class DatabricksSparkJarActivity < ExecutionActivity

      include MsRestAzure


      def initialize
        @type = "DatabricksSparkJar"
      end

      attr_accessor :type

      # @return The full name of the class containing the main method to be
      # executed. This class must be contained in a JAR provided as a library.
      # Type: string (or Expression with resultType string).
      attr_accessor :main_class_name

      # @return Parameters that will be passed to the main method.
      attr_accessor :parameters

      # @return A list of libraries to be installed on the cluster that will
      # execute the job.
      attr_accessor :libraries


      #
      # Mapper for DatabricksSparkJarActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabricksSparkJar',
          type: {
            name: 'Composite',
            class_name: 'DatabricksSparkJarActivity',
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
              main_class_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.mainClassName',
                type: {
                  name: 'Object'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.parameters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              libraries: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.libraries',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HashElementType',
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
