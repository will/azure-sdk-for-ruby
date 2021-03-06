# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2015_08_01
  module Models
    #
    # SSL certificate details.
    #
    class CertificateDetails

      include MsRestAzure

      # @return [Integer] Certificate Version.
      attr_accessor :version

      # @return [String] Certificate Serial Number.
      attr_accessor :serial_number

      # @return [String] Certificate Thumbprint.
      attr_accessor :thumbprint

      # @return [String] Certificate Subject.
      attr_accessor :subject

      # @return [DateTime] Date Certificate is valid from.
      attr_accessor :not_before

      # @return [DateTime] Date Certificate is valid to.
      attr_accessor :not_after

      # @return [String] Certificate Signature algorithm.
      attr_accessor :signature_algorithm

      # @return [String] Certificate Issuer.
      attr_accessor :issuer

      # @return [String] Raw certificate data.
      attr_accessor :raw_data


      #
      # Mapper for CertificateDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateDetails',
          type: {
            name: 'Composite',
            class_name: 'CertificateDetails',
            model_properties: {
              version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'version',
                type: {
                  name: 'Number'
                }
              },
              serial_number: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'serialNumber',
                type: {
                  name: 'String'
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
              subject: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'subject',
                type: {
                  name: 'String'
                }
              },
              not_before: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'notBefore',
                type: {
                  name: 'DateTime'
                }
              },
              not_after: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'notAfter',
                type: {
                  name: 'DateTime'
                }
              },
              signature_algorithm: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'signatureAlgorithm',
                type: {
                  name: 'String'
                }
              },
              issuer: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'issuer',
                type: {
                  name: 'String'
                }
              },
              raw_data: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'rawData',
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
