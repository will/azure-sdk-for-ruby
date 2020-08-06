# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Subscriptions::Mgmt::V2017_11_01_preview
  module Models
    #
    # The subscription definition used to create the subscription.
    #
    class SubscriptionDefinition

      include MsRestAzure

      # @return [String] The resource ID.
      attr_accessor :id

      # @return [String] The name of the resource.
      attr_accessor :name

      # @return [String] The type of the resource.
      attr_accessor :type

      # @return [String] The ID of the subscription.
      attr_accessor :subscription_id

      # @return [String] The display name of the subscription.
      attr_accessor :subscription_display_name

      # @return [String] The offer type of the subscription. For example,
      # MS-AZR-0017P (EnterpriseAgreement) and MS-AZR-0148P
      # (EnterpriseAgreement devTest) are available.
      attr_accessor :offer_type

      # @return [String] The etag the subscription definition.
      attr_accessor :etag


      #
      # Mapper for SubscriptionDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SubscriptionDefinition',
          type: {
            name: 'Composite',
            class_name: 'SubscriptionDefinition',
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
              subscription_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.subscriptionId',
                type: {
                  name: 'String'
                }
              },
              subscription_display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.subscriptionDisplayName',
                type: {
                  name: 'String'
                }
              },
              offer_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.offerType',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.etag',
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
