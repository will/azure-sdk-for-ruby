# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  module Models
    #
    # Certificate configuration which consist of non-trusted intermediates and
    # root certificates.
    #
    class CertificateConfiguration

      include MsRestAzure

      # @return [String] Base64 Encoded certificate.
      attr_accessor :encoded_certificate

      # @return [String] Certificate Password.
      attr_accessor :certificate_password

      # @return [Enum] The
      # System.Security.Cryptography.x509certificates.StoreName certificate
      # store location. Only Root and CertificateAuthority are valid locations.
      # Possible values include: 'CertificateAuthority', 'Root'
      attr_accessor :store_name

      # @return [CertificateInformation] Certificate information.
      attr_accessor :certificate


      #
      # Mapper for CertificateConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateConfiguration',
          type: {
            name: 'Composite',
            class_name: 'CertificateConfiguration',
            model_properties: {
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
              store_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'storeName',
                type: {
                  name: 'String'
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
