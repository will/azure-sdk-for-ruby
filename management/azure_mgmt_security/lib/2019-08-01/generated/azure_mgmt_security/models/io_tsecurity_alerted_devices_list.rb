# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2019_08_01
  module Models
    #
    # List of devices with the count of raised alerts
    #
    class IoTSecurityAlertedDevicesList

      include MsRestAzure

      # @return [Array<IoTSecurityAlertedDevice>] List of aggregated alerts
      # data
      attr_accessor :value


      #
      # Mapper for IoTSecurityAlertedDevicesList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IoTSecurityAlertedDevicesList',
          type: {
            name: 'Composite',
            class_name: 'IoTSecurityAlertedDevicesList',
            model_properties: {
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IoTSecurityAlertedDeviceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IoTSecurityAlertedDevice'
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
