# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2015_08_01
  module Models
    #
    # Certificate order action.
    #
    class CertificateOrderAction < ProxyOnlyResource

      include MsRestAzure

      # @return [CertificateOrderActionType] Action type. Possible values
      # include: 'CertificateIssued', 'CertificateOrderCanceled',
      # 'CertificateOrderCreated', 'CertificateRevoked',
      # 'DomainValidationComplete', 'FraudDetected', 'OrgNameChange',
      # 'OrgValidationComplete', 'SanDrop', 'FraudCleared',
      # 'CertificateExpired', 'CertificateExpirationWarning',
      # 'FraudDocumentationRequired', 'Unknown'
      attr_accessor :certificate_order_action_type

      # @return [DateTime] Time at which the certificate action was performed.
      attr_accessor :created_at


      #
      # Mapper for CertificateOrderAction class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateOrderAction',
          type: {
            name: 'Composite',
            class_name: 'CertificateOrderAction',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              certificate_order_action_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.type',
                type: {
                  name: 'Enum',
                  module: 'CertificateOrderActionType'
                }
              },
              created_at: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.createdAt',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
