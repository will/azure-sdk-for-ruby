# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Reservations::Mgmt::V2017_11_01
  module Models
    #
    # Model object.
    #
    #
    class AppliedReservations

      include MsRestAzure

      # @return [String] Identifier of the applied reservations
      attr_accessor :id

      # @return [String] Name of resource
      attr_accessor :name

      # @return [String] Type of resource.
      # "Microsoft.Capacity/AppliedReservations"
      attr_accessor :type

      # @return [AppliedReservationList]
      attr_accessor :reservation_order_ids


      #
      # Mapper for AppliedReservations class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AppliedReservations',
          type: {
            name: 'Composite',
            class_name: 'AppliedReservations',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              reservation_order_ids: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.reservationOrderIds',
                type: {
                  name: 'Composite',
                  class_name: 'AppliedReservationList'
                }
              }
            }
          }
        }
      end
    end
  end
end
