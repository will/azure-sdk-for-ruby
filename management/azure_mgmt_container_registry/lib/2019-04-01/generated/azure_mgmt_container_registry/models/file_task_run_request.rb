# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_04_01
  module Models
    #
    # The request parameters for a scheduling run against a task file.
    #
    class FileTaskRunRequest < RunRequest

      include MsRestAzure


      def initialize
        @type = "FileTaskRunRequest"
      end

      attr_accessor :type

      # @return [String] The template/definition file path relative to the
      # source.
      attr_accessor :task_file_path

      # @return [String] The values/parameters file path relative to the
      # source.
      attr_accessor :values_file_path

      # @return [Array<SetValue>] The collection of overridable values that can
      # be passed when running a task.
      attr_accessor :values

      # @return [Integer] Run timeout in seconds. Default value: 3600 .
      attr_accessor :timeout

      # @return [PlatformProperties] The platform properties against which the
      # run has to happen.
      attr_accessor :platform

      # @return [AgentProperties] The machine configuration of the run agent.
      attr_accessor :agent_configuration

      # @return [String] The URL(absolute or relative) of the source context.
      # It can be an URL to a tar or git repository.
      # If it is relative URL, the relative path should be obtained from
      # calling listBuildSourceUploadUrl API.
      attr_accessor :source_location

      # @return [Credentials] The properties that describes a set of
      # credentials that will be used when this run is invoked.
      attr_accessor :credentials


      #
      # Mapper for FileTaskRunRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FileTaskRunRequest',
          type: {
            name: 'Composite',
            class_name: 'FileTaskRunRequest',
            model_properties: {
              is_archive_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isArchiveEnabled',
                default_value: false,
                type: {
                  name: 'Boolean'
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
              task_file_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'taskFilePath',
                type: {
                  name: 'String'
                }
              },
              values_file_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'valuesFilePath',
                type: {
                  name: 'String'
                }
              },
              values: {
                client_side_validation: true,
                required: false,
                serialized_name: 'values',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SetValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SetValue'
                      }
                  }
                }
              },
              timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeout',
                default_value: 3600,
                constraints: {
                  InclusiveMaximum: 28800,
                  InclusiveMinimum: 300
                },
                type: {
                  name: 'Number'
                }
              },
              platform: {
                client_side_validation: true,
                required: true,
                serialized_name: 'platform',
                type: {
                  name: 'Composite',
                  class_name: 'PlatformProperties'
                }
              },
              agent_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'agentConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'AgentProperties'
                }
              },
              source_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceLocation',
                type: {
                  name: 'String'
                }
              },
              credentials: {
                client_side_validation: true,
                required: false,
                serialized_name: 'credentials',
                type: {
                  name: 'Composite',
                  class_name: 'Credentials'
                }
              }
            }
          }
        }
      end
    end
  end
end
