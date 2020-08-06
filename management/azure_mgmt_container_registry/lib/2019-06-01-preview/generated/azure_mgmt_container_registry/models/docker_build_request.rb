# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_06_01_preview
  module Models
    #
    # The parameters for a docker quick build.
    #
    class DockerBuildRequest < RunRequest

      include MsRestAzure


      def initialize
        @type = "DockerBuildRequest"
      end

      attr_accessor :type

      # @return [Array<String>] The fully qualified image names including the
      # repository and tag.
      attr_accessor :image_names

      # @return [Boolean] The value of this property indicates whether the
      # image built should be pushed to the registry or not. Default value:
      # true .
      attr_accessor :is_push_enabled

      # @return [Boolean] The value of this property indicates whether the
      # image cache is enabled or not. Default value: false .
      attr_accessor :no_cache

      # @return [String] The Docker file path relative to the source location.
      attr_accessor :docker_file_path

      # @return [String] The name of the target build stage for the docker
      # build.
      attr_accessor :target

      # @return [Array<Argument>] The collection of override arguments to be
      # used when executing the run.
      attr_accessor :arguments

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
      # Mapper for DockerBuildRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DockerBuildRequest',
          type: {
            name: 'Composite',
            class_name: 'DockerBuildRequest',
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
              image_names: {
                client_side_validation: true,
                required: false,
                serialized_name: 'imageNames',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              is_push_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isPushEnabled',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              no_cache: {
                client_side_validation: true,
                required: false,
                serialized_name: 'noCache',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              docker_file_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'dockerFilePath',
                type: {
                  name: 'String'
                }
              },
              target: {
                client_side_validation: true,
                required: false,
                serialized_name: 'target',
                type: {
                  name: 'String'
                }
              },
              arguments: {
                client_side_validation: true,
                required: false,
                serialized_name: 'arguments',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArgumentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Argument'
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
