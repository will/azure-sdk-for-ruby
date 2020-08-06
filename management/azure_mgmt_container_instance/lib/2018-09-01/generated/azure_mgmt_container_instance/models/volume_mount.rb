# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_09_01
  module Models
    #
    # The properties of the volume mount.
    #
    class VolumeMount

      include MsRestAzure

      # @return [String] The name of the volume mount.
      attr_accessor :name

      # @return [String] The path within the container where the volume should
      # be mounted. Must not contain colon (:).
      attr_accessor :mount_path

      # @return [Boolean] The flag indicating whether the volume mount is
      # read-only.
      attr_accessor :read_only


      #
      # Mapper for VolumeMount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VolumeMount',
          type: {
            name: 'Composite',
            class_name: 'VolumeMount',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              mount_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'mountPath',
                type: {
                  name: 'String'
                }
              },
              read_only: {
                client_side_validation: true,
                required: false,
                serialized_name: 'readOnly',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
