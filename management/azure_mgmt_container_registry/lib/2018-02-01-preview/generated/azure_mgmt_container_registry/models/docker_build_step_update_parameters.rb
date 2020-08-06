# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2018_02_01_preview
  module Models
    #
    # The properties for updating a docker build step.
    #
    class DockerBuildStepUpdateParameters < BuildStepPropertiesUpdateParameters

      include MsRestAzure


      def initialize
        @type = "Docker"
      end

      attr_accessor :type

      # @return [String] The repository branch name.
      attr_accessor :branch

      # @return [Array<String>] The fully qualified image names including the
      # repository and tag.
      attr_accessor :image_names

      # @return [Boolean] The value of this property indicates whether the
      # image built should be pushed to the registry or not.
      attr_accessor :is_push_enabled

      # @return [Boolean] The value of this property indicates whether the
      # image cache is enabled or not.
      attr_accessor :no_cache

      # @return [String] The Docker file path relative to the source control
      # root.
      attr_accessor :docker_file_path

      # @return [String] The relative context path for a docker build in the
      # source.
      attr_accessor :context_path

      # @return [Array<BuildArgument>] The custom arguments for building this
      # build step.
      attr_accessor :build_arguments

      # @return [BaseImageTriggerType] The type of the auto trigger for base
      # image dependency updates. Possible values include: 'All', 'Runtime',
      # 'None'
      attr_accessor :base_image_trigger


      #
      # Mapper for DockerBuildStepUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Docker',
          type: {
            name: 'Composite',
            class_name: 'DockerBuildStepUpdateParameters',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              branch: {
                client_side_validation: true,
                required: false,
                serialized_name: 'branch',
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
                type: {
                  name: 'Boolean'
                }
              },
              no_cache: {
                client_side_validation: true,
                required: false,
                serialized_name: 'noCache',
                type: {
                  name: 'Boolean'
                }
              },
              docker_file_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dockerFilePath',
                type: {
                  name: 'String'
                }
              },
              context_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contextPath',
                type: {
                  name: 'String'
                }
              },
              build_arguments: {
                client_side_validation: true,
                required: false,
                serialized_name: 'buildArguments',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BuildArgumentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BuildArgument'
                      }
                  }
                }
              },
              base_image_trigger: {
                client_side_validation: true,
                required: false,
                serialized_name: 'baseImageTrigger',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
