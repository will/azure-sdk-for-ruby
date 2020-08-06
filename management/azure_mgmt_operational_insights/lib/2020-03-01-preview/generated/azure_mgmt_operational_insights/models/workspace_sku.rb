# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2020_03_01_preview
  module Models
    #
    # The SKU (tier) of a workspace.
    #
    class WorkspaceSku

      include MsRestAzure

      # @return [WorkspaceSkuNameEnum] The name of the SKU. Possible values
      # include: 'Free', 'Standard', 'Premium', 'PerNode', 'PerGB2018',
      # 'Standalone', 'CapacityReservation'
      attr_accessor :name

      # @return [Integer] The capacity reservation level for this workspace,
      # when CapacityReservation sku is selected.
      attr_accessor :capacity_reservation_level

      # @return [Integer] The maximum capacity reservation level available for
      # this workspace, when CapacityReservation sku is selected.
      attr_accessor :max_capacity_reservation_level

      # @return [String] The last time when the sku was updated.
      attr_accessor :last_sku_update


      #
      # Mapper for WorkspaceSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WorkspaceSku',
          type: {
            name: 'Composite',
            class_name: 'WorkspaceSku',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              capacity_reservation_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'capacityReservationLevel',
                type: {
                  name: 'Number'
                }
              },
              max_capacity_reservation_level: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'maxCapacityReservationLevel',
                type: {
                  name: 'Number'
                }
              },
              last_sku_update: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastSkuUpdate',
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
