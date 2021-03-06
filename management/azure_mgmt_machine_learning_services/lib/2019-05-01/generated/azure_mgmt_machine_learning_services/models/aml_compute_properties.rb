# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearningServices::Mgmt::V2019_05_01
  module Models
    #
    # AML Compute properties
    #
    class AmlComputeProperties

      include MsRestAzure

      # @return [String] Virtual Machine Size
      attr_accessor :vm_size

      # @return [VmPriority] Virtual Machine priority. Possible values include:
      # 'Dedicated', 'LowPriority'
      attr_accessor :vm_priority

      # @return [ScaleSettings] Scale settings for AML Compute
      attr_accessor :scale_settings

      # @return [UserAccountCredentials] User account credentials. Credentials
      # for an administrator user account that will be created on each compute
      # node.
      attr_accessor :user_account_credentials

      # @return [ResourceId] Subnet. Virtual network subnet resource ID the
      # compute nodes belong to.
      attr_accessor :subnet

      # @return [AllocationState] Allocation state. Allocation state of the
      # compute. Possible values are: steady - Indicates that the compute is
      # not resizing. There are no changes to the number of compute nodes in
      # the compute in progress. A compute enters this state when it is created
      # and when no operations are being performed on the compute to change the
      # number of compute nodes. resizing - Indicates that the compute is
      # resizing; that is, compute nodes are being added to or removed from the
      # compute. Possible values include: 'Steady', 'Resizing'
      attr_accessor :allocation_state

      # @return [DateTime] Allocation state transition time. The time at which
      # the compute entered its current allocation state.
      attr_accessor :allocation_state_transition_time

      # @return [Array<MachineLearningServiceError>] Errors. Collection of
      # errors encountered by various compute nodes during node setup.
      attr_accessor :errors

      # @return [Integer] Current node count. The number of compute nodes
      # currently assigned to the compute.
      attr_accessor :current_node_count

      # @return [Integer] Target node count. The target number of compute nodes
      # for the compute. If the allocationState is resizing, this property
      # denotes the target node count for the ongoing resize operation. If the
      # allocationState is steady, this property denotes the target node count
      # for the previous resize operation.
      attr_accessor :target_node_count

      # @return [NodeStateCounts] Node state counts. Counts of various node
      # states on the compute.
      attr_accessor :node_state_counts


      #
      # Mapper for AmlComputeProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AmlCompute_properties',
          type: {
            name: 'Composite',
            class_name: 'AmlComputeProperties',
            model_properties: {
              vm_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vmSize',
                type: {
                  name: 'String'
                }
              },
              vm_priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vmPriority',
                type: {
                  name: 'String'
                }
              },
              scale_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scaleSettings',
                type: {
                  name: 'Composite',
                  class_name: 'ScaleSettings'
                }
              },
              user_account_credentials: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userAccountCredentials',
                type: {
                  name: 'Composite',
                  class_name: 'UserAccountCredentials'
                }
              },
              subnet: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subnet',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceId'
                }
              },
              allocation_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'allocationState',
                type: {
                  name: 'String'
                }
              },
              allocation_state_transition_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'allocationStateTransitionTime',
                type: {
                  name: 'DateTime'
                }
              },
              errors: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'errors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MachineLearningServiceErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MachineLearningServiceError'
                      }
                  }
                }
              },
              current_node_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'currentNodeCount',
                type: {
                  name: 'Number'
                }
              },
              target_node_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'targetNodeCount',
                type: {
                  name: 'Number'
                }
              },
              node_state_counts: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nodeStateCounts',
                type: {
                  name: 'Composite',
                  class_name: 'NodeStateCounts'
                }
              }
            }
          }
        }
      end
    end
  end
end
