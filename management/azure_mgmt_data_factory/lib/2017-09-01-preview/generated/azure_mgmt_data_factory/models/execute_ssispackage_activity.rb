# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # Execute SSIS package activity.
    #
    class ExecuteSSISPackageActivity < ExecutionActivity

      include MsRestAzure


      def initialize
        @type = "ExecuteSSISPackage"
      end

      attr_accessor :type

      # @return [SSISPackageLocation] SSIS package location.
      attr_accessor :package_location

      # @return Specifies the runtime to execute SSIS package. The value should
      # be "x86" or "x64". Type: string (or Expression with resultType string).
      attr_accessor :runtime

      # @return The logging level of SSIS package execution. Type: string (or
      # Expression with resultType string).
      attr_accessor :logging_level

      # @return The environment path to execute the SSIS package. Type: string
      # (or Expression with resultType string).
      attr_accessor :environment_path

      # @return [SSISExecutionCredential] The package execution credential.
      attr_accessor :execution_credential

      # @return [IntegrationRuntimeReference] The integration runtime
      # reference.
      attr_accessor :connect_via

      # @return [Hash{String => SSISExecutionParameter}] The project level
      # parameters to execute the SSIS package.
      attr_accessor :project_parameters

      # @return [Hash{String => SSISExecutionParameter}] The package level
      # parameters to execute the SSIS package.
      attr_accessor :package_parameters

      # @return [Hash{String => Hash{String => SSISExecutionParameter}}] The
      # project level connection managers to execute the SSIS package.
      attr_accessor :project_connection_managers

      # @return [Hash{String => Hash{String => SSISExecutionParameter}}] The
      # package level connection managers to execute the SSIS package.
      attr_accessor :package_connection_managers

      # @return [Hash{String => SSISPropertyOverride}] The property overrides
      # to execute the SSIS package.
      attr_accessor :property_overrides

      # @return [SSISLogLocation] SSIS package execution log location.
      attr_accessor :log_location


      #
      # Mapper for ExecuteSSISPackageActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExecuteSSISPackage',
          type: {
            name: 'Composite',
            class_name: 'ExecuteSSISPackageActivity',
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
              package_location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.packageLocation',
                type: {
                  name: 'Composite',
                  class_name: 'SSISPackageLocation'
                }
              },
              runtime: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.runtime',
                type: {
                  name: 'Object'
                }
              },
              logging_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.loggingLevel',
                type: {
                  name: 'Object'
                }
              },
              environment_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.environmentPath',
                type: {
                  name: 'Object'
                }
              },
              execution_credential: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.executionCredential',
                type: {
                  name: 'Composite',
                  class_name: 'SSISExecutionCredential'
                }
              },
              connect_via: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.connectVia',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationRuntimeReference'
                }
              },
              project_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.projectParameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SSISExecutionParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SSISExecutionParameter'
                      }
                  }
                }
              },
              package_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.packageParameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SSISExecutionParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SSISExecutionParameter'
                      }
                  }
                }
              },
              project_connection_managers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.projectConnectionManagers',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HashElementType',
                      type: {
                        name: 'Dictionary',
                        value: {
                            client_side_validation: true,
                            required: false,
                            serialized_name: 'SSISExecutionParameterElementType',
                            type: {
                              name: 'Composite',
                              class_name: 'SSISExecutionParameter'
                            }
                        }
                      }
                  }
                }
              },
              package_connection_managers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.packageConnectionManagers',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HashElementType',
                      type: {
                        name: 'Dictionary',
                        value: {
                            client_side_validation: true,
                            required: false,
                            serialized_name: 'SSISExecutionParameterElementType',
                            type: {
                              name: 'Composite',
                              class_name: 'SSISExecutionParameter'
                            }
                        }
                      }
                  }
                }
              },
              property_overrides: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.propertyOverrides',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SSISPropertyOverrideElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SSISPropertyOverride'
                      }
                  }
                }
              },
              log_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.logLocation',
                type: {
                  name: 'Composite',
                  class_name: 'SSISLogLocation'
                }
              }
            }
          }
        }
      end
    end
  end
end
