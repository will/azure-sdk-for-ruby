# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2018_12_01
  module Models
    #
    # The container settings for a task.
    #
    #
    class TaskContainerSettings

      include MsRestAzure

      # @return [String] Additional options to the container create command.
      # These additional options are supplied as arguments to the "docker
      # create" command, in addition to those controlled by the Batch Service.
      attr_accessor :container_run_options

      # @return [String] The image to use to create the container in which the
      # task will run. This is the full image reference, as would be specified
      # to "docker pull". If no tag is provided as part of the image name, the
      # tag ":latest" is used as a default.
      attr_accessor :image_name

      # @return [ContainerRegistry] The private registry which contains the
      # container image. This setting can be omitted if was already provided at
      # pool creation.
      attr_accessor :registry


      #
      # Mapper for TaskContainerSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TaskContainerSettings',
          type: {
            name: 'Composite',
            class_name: 'TaskContainerSettings',
            model_properties: {
              container_run_options: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerRunOptions',
                type: {
                  name: 'String'
                }
              },
              image_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'imageName',
                type: {
                  name: 'String'
                }
              },
              registry: {
                client_side_validation: true,
                required: false,
                serialized_name: 'registry',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerRegistry'
                }
              }
            }
          }
        }
      end
    end
  end
end
