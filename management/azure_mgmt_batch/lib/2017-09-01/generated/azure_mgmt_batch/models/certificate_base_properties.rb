# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2017_09_01
  module Models
    #
    # Model object.
    #
    #
    class CertificateBaseProperties

      include MsRestAzure

      # @return [String] The algorithm of the certificate thumbprint. This must
      # match the first portion of the certificate name. Currently required to
      # be 'SHA1'.
      attr_accessor :thumbprint_algorithm

      # @return [String] The thumbprint of the certificate. This must match the
      # thumbprint from the name.
      attr_accessor :thumbprint

      # @return [CertificateFormat] The format of the certificate - either Pfx
      # or Cer. If omitted, the default is Pfx. Possible values include: 'Pfx',
      # 'Cer'
      attr_accessor :format


      #
      # Mapper for CertificateBaseProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateBaseProperties',
          type: {
            name: 'Composite',
            class_name: 'CertificateBaseProperties',
            model_properties: {
              thumbprint_algorithm: {
                client_side_validation: true,
                required: false,
                serialized_name: 'thumbprintAlgorithm',
                type: {
                  name: 'String'
                }
              },
              thumbprint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'thumbprint',
                type: {
                  name: 'String'
                }
              },
              format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'format',
                type: {
                  name: 'Enum',
                  module: 'CertificateFormat'
                }
              }
            }
          }
        }
      end
    end
  end
end
