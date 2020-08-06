# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Peering::Mgmt::V2019_08_01_preview
  module Models
    #
    # The properties that define a direct peering facility.
    #
    class DirectPeeringFacility

      include MsRestAzure

      # @return [String] The address of the direct peering facility.
      attr_accessor :address

      # @return [DirectPeeringType] The type of the direct peering. Possible
      # values include: 'Edge', 'Transit', 'Cdn', 'Internal'
      attr_accessor :direct_peering_type

      # @return [Integer] The PeeringDB.com ID of the facility.
      attr_accessor :peering_dbfacility_id

      # @return [String] The PeeringDB.com URL of the facility.
      attr_accessor :peering_dbfacility_link


      #
      # Mapper for DirectPeeringFacility class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DirectPeeringFacility',
          type: {
            name: 'Composite',
            class_name: 'DirectPeeringFacility',
            model_properties: {
              address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'address',
                type: {
                  name: 'String'
                }
              },
              direct_peering_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'directPeeringType',
                type: {
                  name: 'String'
                }
              },
              peering_dbfacility_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'peeringDBFacilityId',
                type: {
                  name: 'Number'
                }
              },
              peering_dbfacility_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'peeringDBFacilityLink',
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
