# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # The LiveEvent action input parameter definition.
    #
    class LiveEventActionInput

      include MsRestAzure

      # @return [Boolean] The flag indicates if remove LiveOutputs on Stop.
      attr_accessor :remove_outputs_on_stop


      #
      # Mapper for LiveEventActionInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LiveEventActionInput',
          type: {
            name: 'Composite',
            class_name: 'LiveEventActionInput',
            model_properties: {
              remove_outputs_on_stop: {
                client_side_validation: true,
                required: false,
                serialized_name: 'removeOutputsOnStop',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
