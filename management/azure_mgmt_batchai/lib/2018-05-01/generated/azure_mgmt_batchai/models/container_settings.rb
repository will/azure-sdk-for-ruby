# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_05_01
  module Models
    #
    # Docker container settings.
    #
    class ContainerSettings

      include MsRestAzure

      # @return [ImageSourceRegistry] Image source registry. Information about
      # docker image and docker registry to download the container from.
      attr_accessor :image_source_registry

      # @return [String] /dev/shm size. Size of /dev/shm. Please refer to
      # docker documentation for supported argument formats.
      attr_accessor :shm_size


      #
      # Mapper for ContainerSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerSettings',
          type: {
            name: 'Composite',
            class_name: 'ContainerSettings',
            model_properties: {
              image_source_registry: {
                client_side_validation: true,
                required: true,
                serialized_name: 'imageSourceRegistry',
                type: {
                  name: 'Composite',
                  class_name: 'ImageSourceRegistry'
                }
              },
              shm_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'shmSize',
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
