# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2018_07_01_preview
  module Models
    #
    # The Edifact message filter for odata query.
    #
    class EdifactMessageFilter

      include MsRestAzure

      # @return [MessageFilterType] The message filter type. Possible values
      # include: 'NotSpecified', 'Include', 'Exclude'
      attr_accessor :message_filter_type


      #
      # Mapper for EdifactMessageFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EdifactMessageFilter',
          type: {
            name: 'Composite',
            class_name: 'EdifactMessageFilter',
            model_properties: {
              message_filter_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'messageFilterType',
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
