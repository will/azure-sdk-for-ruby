# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_05_13
  module Models
    #
    # Additional information about Azure File Share backup item.
    #
    class AzureFileshareProtectedItemExtendedInfo

      include MsRestAzure

      # @return [DateTime] The oldest backup copy available for this item in
      # the service.
      attr_accessor :oldest_recovery_point

      # @return [Integer] Number of available backup copies associated with
      # this backup item.
      attr_accessor :recovery_point_count

      # @return [String] Indicates consistency of policy object and policy
      # applied to this backup item.
      attr_accessor :policy_state

      # @return [String] Indicates the state of this resource. Possible values
      # are from enum ResourceState {Invalid, Active, SoftDeleted, Deleted}
      attr_accessor :resource_state

      # @return [DateTime] The resource state sync time for this backup item.
      attr_accessor :resource_state_sync_time


      #
      # Mapper for AzureFileshareProtectedItemExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureFileshareProtectedItemExtendedInfo',
          type: {
            name: 'Composite',
            class_name: 'AzureFileshareProtectedItemExtendedInfo',
            model_properties: {
              oldest_recovery_point: {
                client_side_validation: true,
                required: false,
                serialized_name: 'oldestRecoveryPoint',
                type: {
                  name: 'DateTime'
                }
              },
              recovery_point_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointCount',
                type: {
                  name: 'Number'
                }
              },
              policy_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyState',
                type: {
                  name: 'String'
                }
              },
              resource_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resourceState',
                type: {
                  name: 'String'
                }
              },
              resource_state_sync_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resourceStateSyncTime',
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
