# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BotService::Mgmt::V2018_07_12_preview
  module Models
    #
    # The parameters to provide for the Microsoft Teams channel.
    #
    class MsTeamsChannelProperties

      include MsRestAzure

      # @return [Boolean] Enable calling for Microsoft Teams channel
      attr_accessor :enable_calling

      # @return [String] Webhook for Microsoft Teams channel calls
      attr_accessor :calling_web_hook

      # @return [Boolean] Whether this channel is enabled for the bot
      attr_accessor :is_enabled


      #
      # Mapper for MsTeamsChannelProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MsTeamsChannelProperties',
          type: {
            name: 'Composite',
            class_name: 'MsTeamsChannelProperties',
            model_properties: {
              enable_calling: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enableCalling',
                type: {
                  name: 'Boolean'
                }
              },
              calling_web_hook: {
                client_side_validation: true,
                required: false,
                serialized_name: 'callingWebHook',
                type: {
                  name: 'String'
                }
              },
              is_enabled: {
                client_side_validation: true,
                required: true,
                serialized_name: 'isEnabled',
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
