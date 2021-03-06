# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2019_11_01_preview
  module Models
    #
    # The properties that define a step.
    #
    class PrePostStep

      include MsRestAzure

      # @return [String] The resource Id of the step to be run.
      attr_accessor :step_id


      #
      # Mapper for PrePostStep class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrePostStep',
          type: {
            name: 'Composite',
            class_name: 'PrePostStep',
            model_properties: {
              step_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'stepId',
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
