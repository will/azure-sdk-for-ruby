# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerInstance::Mgmt::V2018_10_01
  module Models
    #
    # Identity for the container group.
    #
    class ContainerGroupIdentity

      include MsRestAzure

      # @return [String] The principal id of the container group identity. This
      # property will only be provided for a system assigned identity.
      attr_accessor :principal_id

      # @return [String] The tenant id associated with the container group.
      # This property will only be provided for a system assigned identity.
      attr_accessor :tenant_id

      # @return [ResourceIdentityType] The type of identity used for the
      # container group. The type 'SystemAssigned, UserAssigned' includes both
      # an implicitly created identity and a set of user assigned identities.
      # The type 'None' will remove any identities from the container group.
      # Possible values include: 'SystemAssigned', 'UserAssigned',
      # 'SystemAssigned, UserAssigned', 'None'
      attr_accessor :type

      # @return [Hash{String =>
      # ContainerGroupIdentityUserAssignedIdentitiesValue}] The list of user
      # identities associated with the container group. The user identity
      # dictionary key references will be ARM resource ids in the form:
      # '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
      attr_accessor :user_assigned_identities


      #
      # Mapper for ContainerGroupIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerGroupIdentity',
          type: {
            name: 'Composite',
            class_name: 'ContainerGroupIdentity',
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
                      serialized_name: 'ContainerGroupIdentityUserAssignedIdentitiesValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ContainerGroupIdentityUserAssignedIdentitiesValue'
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
