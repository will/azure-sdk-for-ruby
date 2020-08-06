# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  module Models
    #
    # Delegation settings for a developer portal.
    #
    class PortalDelegationSettings < Resource

      include MsRestAzure

      # @return [String] A delegation Url.
      attr_accessor :url

      # @return [String] A base64-encoded validation key to validate, that a
      # request is coming from Azure API Management.
      attr_accessor :validation_key

      # @return [SubscriptionsDelegationSettingsProperties] Subscriptions
      # delegation settings.
      attr_accessor :subscriptions

      # @return [RegistrationDelegationSettingsProperties] User registration
      # delegation settings.
      attr_accessor :user_registration


      #
      # Mapper for PortalDelegationSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PortalDelegationSettings',
          type: {
            name: 'Composite',
            class_name: 'PortalDelegationSettings',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.url',
                type: {
                  name: 'String'
                }
              },
              validation_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.validationKey',
                type: {
                  name: 'String'
                }
              },
              subscriptions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.subscriptions',
                type: {
                  name: 'Composite',
                  class_name: 'SubscriptionsDelegationSettingsProperties'
                }
              },
              user_registration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.userRegistration',
                type: {
                  name: 'Composite',
                  class_name: 'RegistrationDelegationSettingsProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
