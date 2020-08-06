# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2017_04_01
  module Models
    #
    # The Azure mobile App push notification receiver.
    #
    class AzureAppPushReceiver

      include MsRestAzure

      # @return [String] The name of the Azure mobile app push receiver. Names
      # must be unique across all receivers within an action group.
      attr_accessor :name

      # @return [String] The email address registered for the Azure mobile app.
      attr_accessor :email_address


      #
      # Mapper for AzureAppPushReceiver class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureAppPushReceiver',
          type: {
            name: 'Composite',
            class_name: 'AzureAppPushReceiver',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              email_address: {
                client_side_validation: true,
                required: true,
                serialized_name: 'emailAddress',
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
