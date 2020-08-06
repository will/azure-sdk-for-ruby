# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2018_12_01_preview
  module Models
    #
    # The description of an X509 CA Certificate including the challenge nonce
    # issued for the Proof-Of-Possession flow.
    #
    class CertificatePropertiesWithNonce

      include MsRestAzure

      # @return [String] The certificate's subject name.
      attr_accessor :subject

      # @return [DateTime] The certificate's expiration date and time.
      attr_accessor :expiry

      # @return [String] The certificate's thumbprint.
      attr_accessor :thumbprint

      # @return [Boolean] Determines whether certificate has been verified.
      attr_accessor :is_verified

      # @return [DateTime] The certificate's create date and time.
      attr_accessor :created

      # @return [DateTime] The certificate's last update date and time.
      attr_accessor :updated

      # @return [String] The certificate's verification code that will be used
      # for proof of possession.
      attr_accessor :verification_code

      # @return [String] The certificate content
      attr_accessor :certificate


      #
      # Mapper for CertificatePropertiesWithNonce class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificatePropertiesWithNonce',
          type: {
            name: 'Composite',
            class_name: 'CertificatePropertiesWithNonce',
            model_properties: {
              subject: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'subject',
                type: {
                  name: 'String'
                }
              },
              expiry: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'expiry',
                type: {
                  name: 'DateTimeRfc1123'
                }
              },
              thumbprint: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'thumbprint',
                type: {
                  name: 'String'
                }
              },
              is_verified: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'isVerified',
                type: {
                  name: 'Boolean'
                }
              },
              created: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'created',
                type: {
                  name: 'DateTimeRfc1123'
                }
              },
              updated: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'updated',
                type: {
                  name: 'DateTimeRfc1123'
                }
              },
              verification_code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'verificationCode',
                type: {
                  name: 'String'
                }
              },
              certificate: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'certificate',
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
