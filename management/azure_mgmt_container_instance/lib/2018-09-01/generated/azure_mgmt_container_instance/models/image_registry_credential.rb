# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_09_01
  module Models
    #
    # Image registry credential.
    #
    class ImageRegistryCredential

      include MsRestAzure

      # @return [String] The Docker image registry server without a protocol
      # such as "http" and "https".
      attr_accessor :server

      # @return [String] The username for the private registry.
      attr_accessor :username

      # @return [String] The password for the private registry.
      attr_accessor :password


      #
      # Mapper for ImageRegistryCredential class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageRegistryCredential',
          type: {
            name: 'Composite',
            class_name: 'ImageRegistryCredential',
            model_properties: {
              server: {
                client_side_validation: true,
                required: true,
                serialized_name: 'server',
                type: {
                  name: 'String'
                }
              },
              username: {
                client_side_validation: true,
                required: true,
                serialized_name: 'username',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'password',
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
