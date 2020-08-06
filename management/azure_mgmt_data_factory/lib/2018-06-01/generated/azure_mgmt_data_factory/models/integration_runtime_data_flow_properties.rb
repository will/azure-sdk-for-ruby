# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Data flow properties for managed integration runtime.
    #
    class IntegrationRuntimeDataFlowProperties

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [DataFlowComputeType] Compute type of the cluster which will
      # execute data flow job. Possible values include: 'General',
      # 'MemoryOptimized', 'ComputeOptimized'
      attr_accessor :compute_type

      # @return [Integer] Core count of the cluster which will execute data
      # flow job. Supported values are: 8, 16, 32, 48, 80, 144 and 272.
      attr_accessor :core_count

      # @return [Integer] Time to live (in minutes) setting of the cluster
      # which will execute data flow job.
      attr_accessor :time_to_live


      #
      # Mapper for IntegrationRuntimeDataFlowProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IntegrationRuntimeDataFlowProperties',
          type: {
            name: 'Composite',
            class_name: 'IntegrationRuntimeDataFlowProperties',
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
              compute_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'computeType',
                type: {
                  name: 'String'
                }
              },
              core_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'coreCount',
                type: {
                  name: 'Number'
                }
              },
              time_to_live: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeToLive',
                constraints: {
                  InclusiveMinimum: 0
                },
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
