# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Subscriptions::Mgmt::V2019_10_01_preview
  module Models
    #
    # The new name of the subscription.
    #
    class SubscriptionName

      include MsRestAzure

      # @return [String] New subscription name
      attr_accessor :subscription_name


      #
      # Mapper for SubscriptionName class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SubscriptionName',
          type: {
            name: 'Composite',
            class_name: 'SubscriptionName',
            model_properties: {
              subscription_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subscriptionName',
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
