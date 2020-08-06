# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2019_04_01
  module Models
    #
    # Contains information about a certificate.
    #
    class CertificateCreateOrUpdateParameters < ProxyResource

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

      # @return [String] The base64-encoded contents of the certificate. The
      # maximum size is 10KB.
      attr_accessor :data

      # @return [String] The password to access the certificate's private key.
      # This is required if the certificate format is pfx and must be omitted
      # if the certificate format is cer.
      attr_accessor :password


      #
      # Mapper for CertificateCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'CertificateCreateOrUpdateParameters',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              thumbprint_algorithm: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.thumbprintAlgorithm',
                type: {
                  name: 'String'
                }
              },
              thumbprint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.thumbprint',
                type: {
                  name: 'String'
                }
              },
              format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.format',
                type: {
                  name: 'Enum',
                  module: 'CertificateFormat'
                }
              },
              data: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.data',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.password',
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
