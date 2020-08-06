# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # Specifies a certificate for token validation.
    #
    class ContentKeyPolicyX509CertificateTokenKey < ContentKeyPolicyRestrictionTokenKey

      include MsRestAzure


      def initialize
        @odatatype = "#Microsoft.Media.ContentKeyPolicyX509CertificateTokenKey"
      end

      attr_accessor :odatatype

      # @return [Array<Integer>] The raw data field of a certificate in PKCS 12
      # format (X509Certificate2 in .NET)
      attr_accessor :raw_body


      #
      # Mapper for ContentKeyPolicyX509CertificateTokenKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: '#Microsoft.Media.ContentKeyPolicyX509CertificateTokenKey',
          type: {
            name: 'Composite',
            class_name: 'ContentKeyPolicyX509CertificateTokenKey',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                serialized_name: '@odata\\.type',
                type: {
                  name: 'String'
                }
              },
              raw_body: {
                client_side_validation: true,
                required: true,
                serialized_name: 'rawBody',
                type: {
                  name: 'ByteArray'
                }
              }
            }
          }
        }
      end
    end
  end
end
