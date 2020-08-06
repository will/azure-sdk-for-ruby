# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01
  module Models
    #
    # Custom hostname configuration.
    #
    class HostnameConfiguration

      include MsRestAzure

      # @return [HostnameType] Hostname type. Possible values include: 'Proxy',
      # 'Portal', 'Management', 'Scm'
      attr_accessor :type

      # @return [String] Hostname to configure on the Api Management service.
      attr_accessor :host_name

      # @return [String] Url to the KeyVault Secret containing the Ssl
      # Certificate. If absolute Url containing version is provided,
      # auto-update of ssl certificate will not work. This requires Api
      # Management service to be configured with MSI. The secret should be of
      # type *application/x-pkcs12*
      attr_accessor :key_vault_id

      # @return [String] Base64 Encoded certificate.
      attr_accessor :encoded_certificate

      # @return [String] Certificate Password.
      attr_accessor :certificate_password

      # @return [Boolean] Specify true to setup the certificate associated with
      # this Hostname as the Default SSL Certificate. If a client does not send
      # the SNI header, then this will be the certificate that will be
      # challenged. The property is useful if a service has multiple custom
      # hostname enabled and it needs to decide on the default ssl certificate.
      # The setting only applied to Proxy Hostname Type. Default value: false .
      attr_accessor :default_ssl_binding

      # @return [Boolean] Specify true to always negotiate client certificate
      # on the hostname. Default Value is false. Default value: false .
      attr_accessor :negotiate_client_certificate

      # @return [CertificateInformation] Certificate information.
      attr_accessor :certificate


      #
      # Mapper for HostnameConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HostnameConfiguration',
          type: {
            name: 'Composite',
            class_name: 'HostnameConfiguration',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'HostnameType'
                }
              },
              host_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'hostName',
                type: {
                  name: 'String'
                }
              },
              key_vault_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyVaultId',
                type: {
                  name: 'String'
                }
              },
              encoded_certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'encodedCertificate',
                type: {
                  name: 'String'
                }
              },
              certificate_password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'certificatePassword',
                type: {
                  name: 'String'
                }
              },
              default_ssl_binding: {
                client_side_validation: true,
                required: false,
                serialized_name: 'defaultSslBinding',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              negotiate_client_certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'negotiateClientCertificate',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'certificate',
                type: {
                  name: 'Composite',
                  class_name: 'CertificateInformation'
                }
              }
            }
          }
        }
      end
    end
  end
end
