# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2019_09_30_preview
  module Models
    #
    # Defines the Identity provider for MS AAD.
    #
    class OpenShiftManagedClusterAADIdentityProvider < OpenShiftManagedClusterBaseIdentityProvider

      include MsRestAzure


      def initialize
        @kind = "AADIdentityProvider"
      end

      attr_accessor :kind

      # @return [String] The clientId password associated with the provider.
      attr_accessor :client_id

      # @return [String] The secret password associated with the provider.
      attr_accessor :secret

      # @return [String] The tenantId associated with the provider.
      attr_accessor :tenant_id

      # @return [String] The groupId to be granted cluster admin role.
      attr_accessor :customer_admin_group_id


      #
      # Mapper for OpenShiftManagedClusterAADIdentityProvider class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AADIdentityProvider',
          type: {
            name: 'Composite',
            class_name: 'OpenShiftManagedClusterAADIdentityProvider',
            model_properties: {
              kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              client_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clientId',
                type: {
                  name: 'String'
                }
              },
              secret: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secret',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              customer_admin_group_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customerAdminGroupId',
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
