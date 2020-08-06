# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataBox::Mgmt::V2018_01_01
  module Models
    #
    # Shipment pick up request details.
    #
    class ShipmentPickUpRequest

      include MsRestAzure

      # @return [DateTime] Minimum date after which the pick up should
      # commence, this must be in local time of pick up area.
      attr_accessor :start_time

      # @return [DateTime] Maximum date before which the pick up should
      # commence, this must be in local time of pick up area.
      attr_accessor :end_time

      # @return [String] Shipment Location in the pickup place. Eg.front desk
      attr_accessor :shipment_location


      #
      # Mapper for ShipmentPickUpRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ShipmentPickUpRequest',
          type: {
            name: 'Composite',
            class_name: 'ShipmentPickUpRequest',
            model_properties: {
              start_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              shipment_location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'shipmentLocation',
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
