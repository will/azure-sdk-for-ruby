# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2018_02_01
  module Models
    #
    # Describes the client certificate details using common name.
    #
    class ClientCertificateCommonName

      include MsRestAzure

      # @return [Boolean] Indicates if the client certificate has admin access
      # to the cluster. Non admin clients can perform only read only operations
      # on the cluster.
      attr_accessor :is_admin

      # @return [String] The common name of the client certificate.
      attr_accessor :certificate_common_name

      # @return [String] The issuer thumbprint of the client certificate.
      attr_accessor :certificate_issuer_thumbprint


      #
      # Mapper for ClientCertificateCommonName class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClientCertificateCommonName',
          type: {
            name: 'Composite',
            class_name: 'ClientCertificateCommonName',
            model_properties: {
              is_admin: {
                client_side_validation: true,
                required: true,
                serialized_name: 'isAdmin',
                type: {
                  name: 'Boolean'
                }
              },
              certificate_common_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'certificateCommonName',
                type: {
                  name: 'String'
                }
              },
              certificate_issuer_thumbprint: {
                client_side_validation: true,
                required: true,
                serialized_name: 'certificateIssuerThumbprint',
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
