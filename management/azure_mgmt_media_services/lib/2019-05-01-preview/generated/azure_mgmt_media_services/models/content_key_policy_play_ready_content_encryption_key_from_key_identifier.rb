# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2019_05_01_preview
  module Models
    #
    # Specifies that the content key ID is specified in the PlayReady
    # configuration.
    #
    class ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier < ContentKeyPolicyPlayReadyContentKeyLocation

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier"
      end

      attr_accessor :odatatype

      # @return The content key ID.
      attr_accessor :key_id


      #
      # Mapper for
      # ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier',
          type: {
            name: 'Composite',
            class_name: 'ContentKeyPolicyPlayReadyContentEncryptionKeyFromKeyIdentifier',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              key_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyId',
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
