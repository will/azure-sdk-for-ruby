# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2019_08_01
  module Models
    #
    # List of alerts with the count of raised alerts
    #
    class IoTSecurityDeviceAlertsList

      include MsRestAzure

      # @return [Array<IoTSecurityDeviceAlert>] List of top alerts data
      attr_accessor :value

      # @return [String] The URI to fetch the next page.
      attr_accessor :next_link


      #
      # Mapper for IoTSecurityDeviceAlertsList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IoTSecurityDeviceAlertsList',
          type: {
            name: 'Composite',
            class_name: 'IoTSecurityDeviceAlertsList',
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
                      serialized_name: 'IoTSecurityDeviceAlertElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IoTSecurityDeviceAlert'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nextLink',
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
