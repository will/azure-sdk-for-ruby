# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EdgeGateway::Mgmt::V2019_03_01
  module Models
    #
    # Tracking courier information.
    #
    class TrackingInfo

      include MsRestAzure

      # @return [String] Serial number of the device being tracked.
      attr_accessor :serial_number

      # @return [String] Name of the carrier used in the delivery.
      attr_accessor :carrier_name

      # @return [String] Tracking ID of the shipment.
      attr_accessor :tracking_id

      # @return [String] Tracking URL of the shipment.
      attr_accessor :tracking_url


      #
      # Mapper for TrackingInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TrackingInfo',
          type: {
            name: 'Composite',
            class_name: 'TrackingInfo',
            model_properties: {
              serial_number: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serialNumber',
                type: {
                  name: 'String'
                }
              },
              carrier_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'carrierName',
                type: {
                  name: 'String'
                }
              },
              tracking_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'trackingId',
                type: {
                  name: 'String'
                }
              },
              tracking_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'trackingUrl',
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
