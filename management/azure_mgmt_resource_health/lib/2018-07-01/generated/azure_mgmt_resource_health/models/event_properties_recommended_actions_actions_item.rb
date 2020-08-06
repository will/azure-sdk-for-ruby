# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceHealth::Mgmt::V2018_07_01
  module Models
    #
    # Recommended action for the service health event.
    #
    class EventPropertiesRecommendedActionsActionsItem

      include MsRestAzure

      # @return [Integer] Recommended action group Id for the service health
      # event.
      attr_accessor :group_id

      # @return [String] Recommended action text
      attr_accessor :action_text


      #
      # Mapper for EventPropertiesRecommendedActionsActionsItem class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'event_properties_recommendedActions_actionsItem',
          type: {
            name: 'Composite',
            class_name: 'EventPropertiesRecommendedActionsActionsItem',
            model_properties: {
              group_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupId',
                type: {
                  name: 'Number'
                }
              },
              action_text: {
                client_side_validation: true,
                required: false,
                serialized_name: 'actionText',
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
