# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # HyperV replica Azure input to update replication protected item.
    #
    class HyperVReplicaAzureUpdateReplicationProtectedItemInput < UpdateReplicationProtectedItemProviderInput

      include MsRestAzure


      def initialize
        @instanceType = "HyperVReplicaAzure"
      end

      attr_accessor :instanceType

      # @return [String] The recovery Azure resource group Id for classic
      # deployment.
      attr_accessor :recovery_azure_v1resource_group_id

      # @return [String] The recovery Azure resource group Id for resource
      # manager deployment.
      attr_accessor :recovery_azure_v2resource_group_id

      # @return [String] A value indicating whether managed disks should be
      # used during failover.
      attr_accessor :use_managed_disks


      #
      # Mapper for HyperVReplicaAzureUpdateReplicationProtectedItemInput class
      # as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HyperVReplicaAzure',
          type: {
            name: 'Composite',
            class_name: 'HyperVReplicaAzureUpdateReplicationProtectedItemInput',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              recovery_azure_v1resource_group_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryAzureV1ResourceGroupId',
                type: {
                  name: 'String'
                }
              },
              recovery_azure_v2resource_group_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryAzureV2ResourceGroupId',
                type: {
                  name: 'String'
                }
              },
              use_managed_disks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'useManagedDisks',
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
