# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_06_01_preview
  module Models
    #
    # Base properties for any task step.
    #
    class TaskStepProperties

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["Docker"] = "DockerBuildStep"
      @@discriminatorMap["FileTask"] = "FileTaskStep"
      @@discriminatorMap["EncodedTask"] = "EncodedTaskStep"

      def initialize
        @type = "TaskStepProperties"
      end

      attr_accessor :type

      # @return [Array<BaseImageDependency>] List of base image dependencies
      # for a step.
      attr_accessor :base_image_dependencies

      # @return [String] The URL(absolute or relative) of the source context
      # for the task step.
      attr_accessor :context_path

      # @return [String] The token (git PAT or SAS token of storage account
      # blob) associated with the context for a step.
      attr_accessor :context_access_token


      #
      # Mapper for TaskStepProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TaskStepProperties',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'TaskStepProperties',
            class_name: 'TaskStepProperties',
            model_properties: {
              base_image_dependencies: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'baseImageDependencies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BaseImageDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BaseImageDependency'
                      }
                  }
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
              context_access_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contextAccessToken',
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
