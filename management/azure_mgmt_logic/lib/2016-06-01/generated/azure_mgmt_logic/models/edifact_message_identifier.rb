# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2016_06_01
  module Models
    #
    # The Edifact message identifier.
    #
    class EdifactMessageIdentifier

      include MsRestAzure

      # @return [String] The message id on which this envelope settings has to
      # be applied.
      attr_accessor :message_id


      #
      # Mapper for EdifactMessageIdentifier class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EdifactMessageIdentifier',
          type: {
            name: 'Composite',
            class_name: 'EdifactMessageIdentifier',
            model_properties: {
              message_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'messageId',
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
