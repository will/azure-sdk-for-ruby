# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_04_02
  module Models
    #
    # Array of Workflow
    #
    class WorkflowArray

      include MsRestAzure

      # @return [Array<Workflow>] Collection of workflow items.
      attr_accessor :value


      #
      # Mapper for WorkflowArray class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WorkflowArray',
          type: {
            name: 'Composite',
            class_name: 'WorkflowArray',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'WorkflowElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Workflow'
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
