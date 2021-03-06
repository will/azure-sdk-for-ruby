# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BotService::Mgmt::V2018_07_12_preview
  module Models
    #
    # The request body for a request to Bot Service Management to check
    # availability of a bot name.
    #
    class CheckNameAvailabilityRequestBody

      include MsRestAzure

      # @return [String] the name of the bot for which availability needs to be
      # checked.
      attr_accessor :name

      # @return [String] the type of the bot for which availability needs to be
      # checked
      attr_accessor :type


      #
      # Mapper for CheckNameAvailabilityRequestBody class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckNameAvailabilityRequestBody',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityRequestBody',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
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
