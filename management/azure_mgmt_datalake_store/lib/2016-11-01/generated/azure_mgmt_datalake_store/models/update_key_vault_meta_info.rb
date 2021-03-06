# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeStore::Mgmt::V2016_11_01
  module Models
    #
    # The Key Vault update information used for user managed key rotation.
    #
    class UpdateKeyVaultMetaInfo

      include MsRestAzure

      # @return [String] The version of the user managed encryption key to
      # update through a key rotation.
      attr_accessor :encryption_key_version


      #
      # Mapper for UpdateKeyVaultMetaInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UpdateKeyVaultMetaInfo',
          type: {
            name: 'Composite',
            class_name: 'UpdateKeyVaultMetaInfo',
            model_properties: {
              encryption_key_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'encryptionKeyVersion',
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
