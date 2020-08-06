# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2018_04_01
  module Models
    #
    # Identity registry statistics.
    #
    class RegistryStatistics

      include MsRestAzure

      # @return [Integer] The total count of devices in the identity registry.
      attr_accessor :total_device_count

      # @return [Integer] The count of enabled devices in the identity
      # registry.
      attr_accessor :enabled_device_count

      # @return [Integer] The count of disabled devices in the identity
      # registry.
      attr_accessor :disabled_device_count


      #
      # Mapper for RegistryStatistics class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RegistryStatistics',
          type: {
            name: 'Composite',
            class_name: 'RegistryStatistics',
            model_properties: {
              total_device_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'totalDeviceCount',
                type: {
                  name: 'Number'
                }
              },
              enabled_device_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'enabledDeviceCount',
                type: {
                  name: 'Number'
                }
              },
              disabled_device_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'disabledDeviceCount',
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
