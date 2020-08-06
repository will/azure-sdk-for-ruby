# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2018_07_01_preview
  module Models
    #
    # The AS2 agreement protocol settings.
    #
    class AS2ProtocolSettings

      include MsRestAzure

      # @return [AS2MessageConnectionSettings] The message connection settings.
      attr_accessor :message_connection_settings

      # @return [AS2AcknowledgementConnectionSettings] The acknowledgement
      # connection settings.
      attr_accessor :acknowledgement_connection_settings

      # @return [AS2MdnSettings] The MDN settings.
      attr_accessor :mdn_settings

      # @return [AS2SecuritySettings] The security settings.
      attr_accessor :security_settings

      # @return [AS2ValidationSettings] The validation settings.
      attr_accessor :validation_settings

      # @return [AS2EnvelopeSettings] The envelope settings.
      attr_accessor :envelope_settings

      # @return [AS2ErrorSettings] The error settings.
      attr_accessor :error_settings


      #
      # Mapper for AS2ProtocolSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AS2ProtocolSettings',
          type: {
            name: 'Composite',
            class_name: 'AS2ProtocolSettings',
            model_properties: {
              message_connection_settings: {
                client_side_validation: true,
                required: true,
                serialized_name: 'messageConnectionSettings',
                type: {
                  name: 'Composite',
                  class_name: 'AS2MessageConnectionSettings'
                }
              },
              acknowledgement_connection_settings: {
                client_side_validation: true,
                required: true,
                serialized_name: 'acknowledgementConnectionSettings',
                type: {
                  name: 'Composite',
                  class_name: 'AS2AcknowledgementConnectionSettings'
                }
              },
              mdn_settings: {
                client_side_validation: true,
                required: true,
                serialized_name: 'mdnSettings',
                type: {
                  name: 'Composite',
                  class_name: 'AS2MdnSettings'
                }
              },
              security_settings: {
                client_side_validation: true,
                required: true,
                serialized_name: 'securitySettings',
                type: {
                  name: 'Composite',
                  class_name: 'AS2SecuritySettings'
                }
              },
              validation_settings: {
                client_side_validation: true,
                required: true,
                serialized_name: 'validationSettings',
                type: {
                  name: 'Composite',
                  class_name: 'AS2ValidationSettings'
                }
              },
              envelope_settings: {
                client_side_validation: true,
                required: true,
                serialized_name: 'envelopeSettings',
                type: {
                  name: 'Composite',
                  class_name: 'AS2EnvelopeSettings'
                }
              },
              error_settings: {
                client_side_validation: true,
                required: true,
                serialized_name: 'errorSettings',
                type: {
                  name: 'Composite',
                  class_name: 'AS2ErrorSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
