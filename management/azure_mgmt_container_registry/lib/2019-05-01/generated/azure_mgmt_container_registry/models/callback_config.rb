# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_05_01
  module Models
    #
    # The configuration of service URI and custom headers for the webhook.
    #
    class CallbackConfig

      include MsRestAzure

      # @return [String] The service URI for the webhook to post notifications.
      attr_accessor :service_uri

      # @return [Hash{String => String}] Custom headers that will be added to
      # the webhook notifications.
      attr_accessor :custom_headers


      #
      # Mapper for CallbackConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CallbackConfig',
          type: {
            name: 'Composite',
            class_name: 'CallbackConfig',
            model_properties: {
              service_uri: {
                client_side_validation: true,
                required: true,
                serialized_name: 'serviceUri',
                type: {
                  name: 'String'
                }
              },
              custom_headers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customHeaders',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
