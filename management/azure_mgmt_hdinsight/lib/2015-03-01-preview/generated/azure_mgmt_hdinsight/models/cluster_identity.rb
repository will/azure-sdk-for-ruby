# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2015_03_01_preview
  module Models
    #
    # Identity for the cluster.
    #
    class ClusterIdentity

      include MsRestAzure

      # @return [String] The principal id of cluster identity. This property
      # will only be provided for a system assigned identity.
      attr_accessor :principal_id

      # @return [String] The tenant id associated with the cluster. This
      # property will only be provided for a system assigned identity.
      attr_accessor :tenant_id

      # @return [ResourceIdentityType] The type of identity used for the
      # cluster. The type 'SystemAssigned, UserAssigned' includes both an
      # implicitly created identity and a set of user assigned identities.
      # Possible values include: 'SystemAssigned', 'UserAssigned',
      # 'SystemAssigned, UserAssigned', 'None'
      attr_accessor :type

      # @return [Hash{String => ClusterIdentityUserAssignedIdentitiesValue}]
      # The list of user identities associated with the cluster. The user
      # identity dictionary key references will be ARM resource ids in the
      # form:
      # '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
      attr_accessor :user_assigned_identities


      #
      # Mapper for ClusterIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterIdentity',
          type: {
            name: 'Composite',
            class_name: 'ClusterIdentity',
            model_properties: {
              principal_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'principalId',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'ResourceIdentityType'
                }
              },
              user_assigned_identities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userAssignedIdentities',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ClusterIdentityUserAssignedIdentitiesValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ClusterIdentityUserAssignedIdentitiesValue'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
