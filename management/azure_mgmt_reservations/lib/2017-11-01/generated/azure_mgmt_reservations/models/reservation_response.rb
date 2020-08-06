# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Reservations::Mgmt::V2017_11_01
  module Models
    #
    # Model object.
    #
    #
    class ReservationResponse

      include MsRestAzure

      # @return [Enum] Possible values include: 'westus', 'eastus', 'eastus2',
      # 'northcentralus', 'westus2', 'southcentralus', 'centralus',
      # 'westeurope', 'northeurope', 'eastasia', 'southeastasia', 'japaneast',
      # 'japanwest', 'brazilsouth', 'australiaeast', 'australiasoutheast',
      # 'southindia', 'westindia', 'centralindia', 'canadacentral',
      # 'canadaeast', 'uksouth', 'westcentralus', 'ukwest'
      attr_accessor :location

      # @return [Integer]
      attr_accessor :etag

      # @return [String] Identifier of the reservation
      attr_accessor :id

      # @return [String] Name of the reservation
      attr_accessor :name

      # @return [Kind] Resource Provider type to be reserved. Possible values
      # include: 'Microsoft.Compute'
      attr_accessor :kind

      # @return [SkuName]
      attr_accessor :sku

      # @return [ReservationProperties]
      attr_accessor :properties

      # @return [String] Type of resource.
      # "Microsoft.Capacity/reservationOrders/reservations"
      attr_accessor :type


      #
      # Mapper for ReservationResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReservationResponse',
          type: {
            name: 'Composite',
            class_name: 'ReservationResponse',
            model_properties: {
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'Number'
                }
              },
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'Enum',
                  module: 'Kind'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'SkuName'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'ReservationProperties'
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
              }
            }
          }
        }
      end
    end
  end
end
