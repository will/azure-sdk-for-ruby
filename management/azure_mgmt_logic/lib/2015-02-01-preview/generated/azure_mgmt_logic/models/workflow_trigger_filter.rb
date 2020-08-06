# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2015_02_01_preview
  module Models
    #
    # Model object.
    #
    #
    class WorkflowTriggerFilter

      include MsRestAzure

      # @return [WorkflowState] Gets or sets the state of workflow trigger.
      # Possible values include: 'NotSpecified', 'Enabled', 'Disabled',
      # 'Deleted', 'Suspended'
      attr_accessor :state


      #
      # Mapper for WorkflowTriggerFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WorkflowTriggerFilter',
          type: {
            name: 'Composite',
            class_name: 'WorkflowTriggerFilter',
            model_properties: {
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'WorkflowState'
                }
              }
            }
          }
        }
      end
    end
  end
end
