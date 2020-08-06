# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_03_01
  module Models
    #
    # Details of the container image such as name, URL and credentials.
    #
    class ImageSourceRegistry

      include MsRestAzure

      # @return [String] URL for image repository.
      attr_accessor :server_url

      # @return [String] The name of the image in image repository.
      attr_accessor :image

      # @return [PrivateRegistryCredentials] Information to access the private
      # Docker repository.
      attr_accessor :credentials


      #
      # Mapper for ImageSourceRegistry class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageSourceRegistry',
          type: {
            name: 'Composite',
            class_name: 'ImageSourceRegistry',
            model_properties: {
              server_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serverUrl',
                type: {
                  name: 'String'
                }
              },
              image: {
                client_side_validation: true,
                required: true,
                serialized_name: 'image',
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
                  class_name: 'PrivateRegistryCredentials'
                }
              }
            }
          }
        }
      end
    end
  end
end
