# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2019_03_22_preview
  module Models
    #
    # The properties of the messaging endpoints used by this IoT hub.
    #
    class MessagingEndpointProperties

      include MsRestAzure

      # @return [Duration] The lock duration. See:
      # https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-file-upload.
      attr_accessor :lock_duration_as_iso8601

      # @return [Duration] The period of time for which a message is available
      # to consume before it is expired by the IoT hub. See:
      # https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-file-upload.
      attr_accessor :ttl_as_iso8601

      # @return [Integer] The number of times the IoT hub attempts to deliver a
      # message. See:
      # https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-file-upload.
      attr_accessor :max_delivery_count


      #
      # Mapper for MessagingEndpointProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MessagingEndpointProperties',
          type: {
            name: 'Composite',
            class_name: 'MessagingEndpointProperties',
            model_properties: {
              lock_duration_as_iso8601: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lockDurationAsIso8601',
                type: {
                  name: 'TimeSpan'
                }
              },
              ttl_as_iso8601: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ttlAsIso8601',
                type: {
                  name: 'TimeSpan'
                }
              },
              max_delivery_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxDeliveryCount',
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
