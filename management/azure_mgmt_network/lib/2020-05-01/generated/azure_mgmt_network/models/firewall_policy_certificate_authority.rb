# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # Trusted Root certificates properties for tls.
    #
    class FirewallPolicyCertificateAuthority

      include MsRestAzure

      # @return [String] Secret Id of (base-64 encoded unencrypted pfx)
      # 'Secret' or 'Certificate' object stored in KeyVault.
      attr_accessor :key_vault_secret_id

      # @return [String] Name of the CA certificate.
      attr_accessor :name


      #
      # Mapper for FirewallPolicyCertificateAuthority class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FirewallPolicyCertificateAuthority',
          type: {
            name: 'Composite',
            class_name: 'FirewallPolicyCertificateAuthority',
            model_properties: {
              key_vault_secret_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.keyVaultSecretId',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
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
