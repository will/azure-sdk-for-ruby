# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # The parameters supplied to the create or update or replace certificate
    # operation.
    #
    class CertificateCreateOrUpdateParameters

      include MsRestAzure

      # @return [String] Gets or sets the name of the certificate.
      attr_accessor :name

      # @return [String] Gets or sets the base64 encoded value of the
      # certificate.
      attr_accessor :base64value

      # @return [String] Gets or sets the description of the certificate.
      attr_accessor :description

      # @return [String] Gets or sets the thumbprint of the certificate.
      attr_accessor :thumbprint

      # @return [Boolean] Gets or sets the is exportable flag of the
      # certificate.
      attr_accessor :is_exportable


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
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              base64value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.base64Value',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
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
              is_exportable: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.isExportable',
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
