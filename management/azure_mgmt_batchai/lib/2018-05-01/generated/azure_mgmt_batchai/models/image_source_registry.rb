# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_05_01
  module Models
    #
    # Information about docker image for the job.
    #
    class ImageSourceRegistry

      include MsRestAzure

      # @return [String] Server URL. URL for image repository.
      attr_accessor :server_url

      # @return [String] Image. The name of the image in the image repository.
      attr_accessor :image

      # @return [PrivateRegistryCredentials] Credentials. Credentials to access
      # the private docker repository.
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
