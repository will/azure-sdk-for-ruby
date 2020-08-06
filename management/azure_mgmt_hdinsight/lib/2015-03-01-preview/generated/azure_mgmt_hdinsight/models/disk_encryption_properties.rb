# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2015_03_01_preview
  module Models
    #
    # The disk encryption properties
    #
    class DiskEncryptionProperties

      include MsRestAzure

      # @return [String] Base key vault URI where the customers key is located
      # eg. https://myvault.vault.azure.net
      attr_accessor :vault_uri

      # @return [String] Key name that is used for enabling disk encryption.
      attr_accessor :key_name

      # @return [String] Specific key version that is used for enabling disk
      # encryption.
      attr_accessor :key_version

      # @return [JsonWebKeyEncryptionAlgorithm] Algorithm identifier for
      # encryption, default RSA-OAEP. Possible values include: 'RSA-OAEP',
      # 'RSA-OAEP-256', 'RSA1_5'
      attr_accessor :encryption_algorithm

      # @return [String] Resource ID of Managed Identity that is used to access
      # the key vault.
      attr_accessor :msi_resource_id

      # @return [Boolean] Indicates whether or not resource disk encryption is
      # enabled. Default value: false .
      attr_accessor :encryption_at_host


      #
      # Mapper for DiskEncryptionProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DiskEncryptionProperties',
          type: {
            name: 'Composite',
            class_name: 'DiskEncryptionProperties',
            model_properties: {
              vault_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vaultUri',
                type: {
                  name: 'String'
                }
              },
              key_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyName',
                type: {
                  name: 'String'
                }
              },
              key_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyVersion',
                type: {
                  name: 'String'
                }
              },
              encryption_algorithm: {
                client_side_validation: true,
                required: false,
                serialized_name: 'encryptionAlgorithm',
                type: {
                  name: 'String'
                }
              },
              msi_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'msiResourceId',
                type: {
                  name: 'String'
                }
              },
              encryption_at_host: {
                client_side_validation: true,
                required: false,
                serialized_name: 'encryptionAtHost',
                default_value: false,
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
