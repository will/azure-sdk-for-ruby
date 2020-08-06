# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Serialconsole::Mgmt::V2018_05_01
  module Models
    #
    # Get Disabled result

    # Returns whether or not Serial Console is disabled for this given
    # subscription
    #
    class GetDisabledResult

      include MsRestAzure

      # @return [Boolean] Disabled result
      attr_accessor :disabled


      #
      # Mapper for GetDisabledResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GetDisabledResult',
          type: {
            name: 'Composite',
            class_name: 'GetDisabledResult',
            model_properties: {
              disabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'disabled',
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
