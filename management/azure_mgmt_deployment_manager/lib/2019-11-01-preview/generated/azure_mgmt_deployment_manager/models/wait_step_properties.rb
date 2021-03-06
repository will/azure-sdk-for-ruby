# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2019_11_01_preview
  module Models
    #
    # Defines the properties of a Wait step.
    #
    class WaitStepProperties < StepProperties

      include MsRestAzure


      def initialize
        @stepType = "Wait"
      end

      attr_accessor :stepType

      # @return [WaitStepAttributes] The Wait attributes
      attr_accessor :attributes


      #
      # Mapper for WaitStepProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Wait',
          type: {
            name: 'Composite',
            class_name: 'WaitStepProperties',
            model_properties: {
              stepType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'stepType',
                type: {
                  name: 'String'
                }
              },
              attributes: {
                client_side_validation: true,
                required: true,
                serialized_name: 'attributes',
                type: {
                  name: 'Composite',
                  class_name: 'WaitStepAttributes'
                }
              }
            }
          }
        }
      end
    end
  end
end
