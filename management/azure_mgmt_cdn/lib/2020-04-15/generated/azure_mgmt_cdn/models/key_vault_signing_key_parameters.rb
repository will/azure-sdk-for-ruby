# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_04_15
  module Models
    #
    # Describes the parameters for using a user's KeyVault for URL Signing Key.
    #
    class KeyVaultSigningKeyParameters

      include MsRestAzure

      # @return [String] . Default value:
      # '#Microsoft.Azure.Cdn.Models.KeyVaultSigningKeyParameters' .
      attr_accessor :odatatype

      # @return [String] Subscription Id of the user's Key Vault containing the
      # secret
      attr_accessor :subscription_id

      # @return [String] Resource group of the user's Key Vault containing the
      # secret
      attr_accessor :resource_group_name

      # @return [String] The name of the user's Key Vault containing the secret
      attr_accessor :vault_name

      # @return [String] The name of secret in Key Vault.
      attr_accessor :secret_name

      # @return [String] The version(GUID) of secret in Key Vault.
      attr_accessor :secret_version


      #
      # Mapper for KeyVaultSigningKeyParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyVaultSigningKeyParameters',
          type: {
            name: 'Composite',
            class_name: 'KeyVaultSigningKeyParameters',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: '@odata\\.type',
                default_value: '#Microsoft.Azure.Cdn.Models.KeyVaultSigningKeyParameters',
                type: {
                  name: 'String'
                }
              },
              subscription_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'subscriptionId',
                type: {
                  name: 'String'
                }
              },
              resource_group_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'resourceGroupName',
                type: {
                  name: 'String'
                }
              },
              vault_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'vaultName',
                type: {
                  name: 'String'
                }
              },
              secret_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'secretName',
                type: {
                  name: 'String'
                }
              },
              secret_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'secretVersion',
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
