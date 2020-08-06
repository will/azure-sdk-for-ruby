# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BotService::Mgmt::V2017_12_01_preview
  module Models
    #
    # The parameters to provide for the Kik channel.
    #
    class KikChannelProperties

      include MsRestAzure

      # @return [String] The Kik user name
      attr_accessor :user_name

      # @return [String] Kik API key. Value only returned through POST to the
      # action Channel List API, otherwise empty.
      attr_accessor :api_key

      # @return [Boolean] Whether this channel is validated for the bot
      attr_accessor :is_validated

      # @return [Boolean] Whether this channel is enabled for the bot
      attr_accessor :is_enabled


      #
      # Mapper for KikChannelProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KikChannelProperties',
          type: {
            name: 'Composite',
            class_name: 'KikChannelProperties',
            model_properties: {
              user_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'userName',
                type: {
                  name: 'String'
                }
              },
              api_key: {
                client_side_validation: true,
                required: true,
                serialized_name: 'apiKey',
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
