# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BotService::Mgmt::V2018_07_12_preview
  module Models
    #
    # The parameters to provide for the Email channel.
    #
    class EmailChannelProperties

      include MsRestAzure

      # @return [String] The email address
      attr_accessor :email_address

      # @return [String] The password for the email address. Value only
      # returned through POST to the action Channel List API, otherwise empty.
      attr_accessor :password

      # @return [Boolean] Whether this channel is enabled for the bot
      attr_accessor :is_enabled


      #
      # Mapper for EmailChannelProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EmailChannelProperties',
          type: {
            name: 'Composite',
            class_name: 'EmailChannelProperties',
            model_properties: {
              email_address: {
                client_side_validation: true,
                required: true,
                serialized_name: 'emailAddress',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: true,
                serialized_name: 'password',
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
