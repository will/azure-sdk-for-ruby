# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearningServices::Mgmt::V2018_11_19
  module Models
    #
    # scale settings for AML Compute
    #
    class ScaleSettings

      include MsRestAzure

      # @return [Integer] Max number of nodes to use
      attr_accessor :max_node_count

      # @return [Integer] Min number of nodes to use. Default value: 0 .
      attr_accessor :min_node_count

      # @return [Duration] Node Idle Time before scaling down amlCompute
      attr_accessor :node_idle_time_before_scale_down


      #
      # Mapper for ScaleSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScaleSettings',
          type: {
            name: 'Composite',
            class_name: 'ScaleSettings',
            model_properties: {
              max_node_count: {
                client_side_validation: true,
                required: true,
                serialized_name: 'maxNodeCount',
                type: {
                  name: 'Number'
                }
              },
              min_node_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'minNodeCount',
                default_value: 0,
                type: {
                  name: 'Number'
                }
              },
              node_idle_time_before_scale_down: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nodeIdleTimeBeforeScaleDown',
                type: {
                  name: 'TimeSpan'
                }
              }
            }
          }
        }
      end
    end
  end
end
