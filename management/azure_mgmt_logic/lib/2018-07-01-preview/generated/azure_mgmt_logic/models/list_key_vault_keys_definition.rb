# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2018_07_01_preview
  module Models
    #
    # The list key vault keys definition.
    #
    class ListKeyVaultKeysDefinition

      include MsRestAzure

      # @return [KeyVaultReference] The key vault reference.
      attr_accessor :key_vault

      # @return [String] The skip token.
      attr_accessor :skip_token


      #
      # Mapper for ListKeyVaultKeysDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ListKeyVaultKeysDefinition',
          type: {
            name: 'Composite',
            class_name: 'ListKeyVaultKeysDefinition',
            model_properties: {
              key_vault: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyVault',
                type: {
                  name: 'Composite',
                  class_name: 'KeyVaultReference'
                }
              },
              skip_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'skipToken',
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
