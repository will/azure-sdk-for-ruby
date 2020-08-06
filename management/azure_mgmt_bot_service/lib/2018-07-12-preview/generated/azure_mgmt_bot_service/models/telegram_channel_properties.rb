# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BotService::Mgmt::V2018_07_12_preview
  module Models
    #
    # The parameters to provide for the Telegram channel.
    #
    class TelegramChannelProperties

      include MsRestAzure

      # @return [String] The Telegram access token. Value only returned through
      # POST to the action Channel List API, otherwise empty.
      attr_accessor :access_token

      # @return [Boolean] Whether this channel is validated for the bot
      attr_accessor :is_validated

      # @return [Boolean] Whether this channel is enabled for the bot
      attr_accessor :is_enabled


      #
      # Mapper for TelegramChannelProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TelegramChannelProperties',
          type: {
            name: 'Composite',
            class_name: 'TelegramChannelProperties',
            model_properties: {
              access_token: {
                client_side_validation: true,
                required: true,
                serialized_name: 'accessToken',
                type: {
                  name: 'String'
                }
              },
              is_validated: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isValidated',
                type: {
                  name: 'Boolean'
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
