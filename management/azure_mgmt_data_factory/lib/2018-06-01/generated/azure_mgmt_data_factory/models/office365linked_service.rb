# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Office365 linked service.
    #
    class Office365LinkedService < LinkedService

      include MsRestAzure


      def initialize
        @type = "Office365"
      end

      attr_accessor :type

      # @return Azure tenant ID to which the Office 365 account belongs. Type:
      # string (or Expression with resultType string).
      attr_accessor :office365tenant_id

      # @return Specify the tenant information under which your Azure AD web
      # application resides. Type: string (or Expression with resultType
      # string).
      attr_accessor :service_principal_tenant_id

      # @return Specify the application's client ID. Type: string (or
      # Expression with resultType string).
      attr_accessor :service_principal_id

      # @return [SecretBase] Specify the application's key.
      attr_accessor :service_principal_key

      # @return The encrypted credential used for authentication. Credentials
      # are encrypted using the integration runtime credential manager. Type:
      # string (or Expression with resultType string).
      attr_accessor :encrypted_credential


      #
      # Mapper for Office365LinkedService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Office365',
          type: {
            name: 'Composite',
            class_name: 'Office365LinkedService',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              connect_via: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectVia',
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationRuntimeReference'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParameterSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParameterSpecification'
                      }
                  }
                }
              },
              annotations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'annotations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              office365tenant_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.office365TenantId',
                type: {
                  name: 'Object'
                }
              },
              service_principal_tenant_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.servicePrincipalTenantId',
                type: {
                  name: 'Object'
                }
              },
              service_principal_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.servicePrincipalId',
                type: {
                  name: 'Object'
                }
              },
              service_principal_key: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.servicePrincipalKey',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'SecretBase',
                  class_name: 'SecretBase'
                }
              },
              encrypted_credential: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.encryptedCredential',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
