# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2015_02_01_preview
  module Models
    #
    # Model object.
    #
    #
    class WorkflowRunFilter

      include MsRestAzure

      # @return [WorkflowStatus] Gets or sets the status of workflow run.
      # Possible values include: 'NotSpecified', 'Paused', 'Running',
      # 'Waiting', 'Succeeded', 'Skipped', 'Suspended', 'Cancelled', 'Failed',
      # 'Faulted', 'TimedOut', 'Aborted'
      attr_accessor :status


      #
      # Mapper for WorkflowRunFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WorkflowRunFilter',
          type: {
            name: 'Composite',
            class_name: 'WorkflowRunFilter',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'WorkflowStatus'
                }
              }
            }
          }
        }
      end
    end
  end
end
