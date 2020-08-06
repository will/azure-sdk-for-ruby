# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # This class represents the inline workflow task details.
    #
    class InlineWorkflowTaskDetails < GroupTaskDetails

      include MsRestAzure


      def initialize
        @instanceType = "InlineWorkflowTaskDetails"
      end

      attr_accessor :instanceType

      # @return [Array<String>] The list of child workflow ids.
      attr_accessor :workflow_ids


      #
      # Mapper for InlineWorkflowTaskDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InlineWorkflowTaskDetails',
          type: {
            name: 'Composite',
            class_name: 'InlineWorkflowTaskDetails',
            model_properties: {
              child_tasks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'childTasks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ASRTaskElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ASRTask'
                      }
                  }
                }
              },
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              workflow_ids: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workflowIds',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
