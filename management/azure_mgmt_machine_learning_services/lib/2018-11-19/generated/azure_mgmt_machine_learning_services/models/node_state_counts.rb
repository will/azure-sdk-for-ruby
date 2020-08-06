# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearningServices::Mgmt::V2018_11_19
  module Models
    #
    # Counts of various compute node states on the amlCompute.
    #
    class NodeStateCounts

      include MsRestAzure

      # @return [Integer] Idle node count. Number of compute nodes in idle
      # state.
      attr_accessor :idle_node_count

      # @return [Integer] Running node count. Number of compute nodes which are
      # running jobs.
      attr_accessor :running_node_count

      # @return [Integer] Preparing node count. Number of compute nodes which
      # are being prepared.
      attr_accessor :preparing_node_count

      # @return [Integer] Unusable node count. Number of compute nodes which
      # are in unusable state.
      attr_accessor :unusable_node_count

      # @return [Integer] Leaving node count. Number of compute nodes which are
      # leaving the amlCompute.
      attr_accessor :leaving_node_count

      # @return [Integer] Preempted node count. Number of compute nodes which
      # are in preempted state.
      attr_accessor :preempted_node_count


      #
      # Mapper for NodeStateCounts class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NodeStateCounts',
          type: {
            name: 'Composite',
            class_name: 'NodeStateCounts',
            model_properties: {
              idle_node_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'idleNodeCount',
                type: {
                  name: 'Number'
                }
              },
              running_node_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'runningNodeCount',
                type: {
                  name: 'Number'
                }
              },
              preparing_node_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'preparingNodeCount',
                type: {
                  name: 'Number'
                }
              },
              unusable_node_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'unusableNodeCount',
                type: {
                  name: 'Number'
                }
              },
              leaving_node_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'leavingNodeCount',
                type: {
                  name: 'Number'
                }
              },
              preempted_node_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'preemptedNodeCount',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
