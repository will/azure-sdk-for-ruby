# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_03_01
  module Models
    #
    # The source image from which the Image Version is going to be created.
    #
    class UserArtifactSource

      include MsRestAzure

      # @return [String] Required. The fileName of the artifact.
      attr_accessor :file_name

      # @return [String] Required. The mediaLink of the artifact, must be a
      # readable storage blob.
      attr_accessor :media_link


      #
      # Mapper for UserArtifactSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UserArtifactSource',
          type: {
            name: 'Composite',
            class_name: 'UserArtifactSource',
            model_properties: {
              file_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'fileName',
                type: {
                  name: 'String'
                }
              },
              media_link: {
                client_side_validation: true,
                required: true,
                serialized_name: 'mediaLink',
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
