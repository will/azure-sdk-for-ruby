# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BotService::Mgmt::V2018_07_12_preview
  module Models
    #
    # The parameters to provide for the Slack channel.
    #
    class SlackChannelProperties

      include MsRestAzure

      # @return [String] The Slack client id
      attr_accessor :client_id

      # @return [String] The Slack client secret. Value only returned through
      # POST to the action Channel List API, otherwise empty.
      attr_accessor :client_secret

      # @return [String] The Slack verification token. Value only returned
      # through POST to the action Channel List API, otherwise empty.
      attr_accessor :verification_token

      # @return [String] The Slack landing page Url
      attr_accessor :landing_page_url

      # @return [String] The Slack redirect action
      attr_accessor :redirect_action

      # @return [String] The Sms auth token
      attr_accessor :last_submission_id

      # @return [Boolean] Whether to register the settings before OAuth
      # validation is performed. Recommended to True.
      attr_accessor :register_before_oauth_flow

      # @return [Boolean] Whether this channel is validated for the bot
      attr_accessor :is_validated

      # @return [Boolean] Whether this channel is enabled for the bot
      attr_accessor :is_enabled


      #
      # Mapper for SlackChannelProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SlackChannelProperties',
          type: {
            name: 'Composite',
            class_name: 'SlackChannelProperties',
            model_properties: {
              client_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'clientId',
                type: {
                  name: 'String'
                }
              },
              client_secret: {
                client_side_validation: true,
                required: true,
                serialized_name: 'clientSecret',
                type: {
                  name: 'String'
                }
              },
              verification_token: {
                client_side_validation: true,
                required: true,
                serialized_name: 'verificationToken',
                type: {
                  name: 'String'
                }
              },
              landing_page_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'landingPageUrl',
                type: {
                  name: 'String'
                }
              },
              redirect_action: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'redirectAction',
                type: {
                  name: 'String'
                }
              },
              last_submission_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastSubmissionId',
                type: {
                  name: 'String'
                }
              },
              register_before_oauth_flow: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'registerBeforeOAuthFlow',
                type: {
                  name: 'Boolean'
                }
              },
              is_validated: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
