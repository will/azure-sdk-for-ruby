# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2018_01_22
  module Models
    #
    # The operations monitoring properties for the IoT hub. The possible keys
    # to the dictionary are Connections, DeviceTelemetry, C2DCommands,
    # DeviceIdentityOperations, FileUploadOperations, Routes,
    # D2CTwinOperations, C2DTwinOperations, TwinQueries, JobsOperations,
    # DirectMethods.
    #
    class OperationsMonitoringProperties

      include MsRestAzure

      # @return [Hash{String => OperationMonitoringLevel}]
      attr_accessor :events


      #
      # Mapper for OperationsMonitoringProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationsMonitoringProperties',
          type: {
            name: 'Composite',
            class_name: 'OperationsMonitoringProperties',
            model_properties: {
              events: {
                client_side_validation: true,
                required: false,
                serialized_name: 'events',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'OperationMonitoringLevelElementType',
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
