# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2017_09_01
  module Models
    #
    # Details about the current or last completed resize operation.

    # Describes either the current operation (if the pool AllocationState is
    # Resizing) or the previously completed operation (if the AllocationState
    # is Steady).
    #
    class ResizeOperationStatus

      include MsRestAzure

      # @return [Integer] The desired number of dedicated compute nodes in the
      # pool.
      attr_accessor :target_dedicated_nodes

      # @return [Integer] The desired number of low-priority compute nodes in
      # the pool.
      attr_accessor :target_low_priority_nodes

      # @return [Duration] The timeout for allocation of compute nodes to the
      # pool or removal of compute nodes from the pool. The default value is 15
      # minutes. The minimum value is 5 minutes. If you specify a value less
      # than 5 minutes, the Batch service returns an error; if you are calling
      # the REST API directly, the HTTP status code is 400 (Bad Request).
      attr_accessor :resize_timeout

      # @return [ComputeNodeDeallocationOption] Determines what to do with a
      # node and its running task(s) if the pool size is decreasing. The
      # default value is requeue. Possible values include: 'Requeue',
      # 'Terminate', 'TaskCompletion', 'RetainedData'
      attr_accessor :node_deallocation_option

      # @return [DateTime] The time when this resize operation was started.
      attr_accessor :start_time

      # @return [Array<ResizeError>] Details of any errors encountered while
      # performing the last resize on the pool. This property is set only if an
      # error occurred during the last pool resize, and only when the pool
      # allocationState is Steady.
      attr_accessor :errors


      #
      # Mapper for ResizeOperationStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResizeOperationStatus',
          type: {
            name: 'Composite',
            class_name: 'ResizeOperationStatus',
            model_properties: {
              target_dedicated_nodes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetDedicatedNodes',
                type: {
                  name: 'Number'
                }
              },
              target_low_priority_nodes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetLowPriorityNodes',
                type: {
                  name: 'Number'
                }
              },
              resize_timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resizeTimeout',
                type: {
                  name: 'TimeSpan'
                }
              },
              node_deallocation_option: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nodeDeallocationOption',
                type: {
                  name: 'Enum',
                  module: 'ComputeNodeDeallocationOption'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              errors: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ResizeErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResizeError'
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
