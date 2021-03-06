# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Peering::Mgmt::V2019_08_01_preview
  module Models
    #
    # The properties that define a direct peering.
    #
    class PeeringPropertiesDirect

      include MsRestAzure

      # @return [Array<DirectConnection>] The set of connections that
      # constitute a direct peering.
      attr_accessor :connections

      # @return [Boolean] The flag that indicates whether or not the peering is
      # used for peering service.
      attr_accessor :use_for_peering_service

      # @return [SubResource] The reference of the peer ASN.
      attr_accessor :peer_asn

      # @return [DirectPeeringType] The type of direct peering. Possible values
      # include: 'Edge', 'Transit', 'Cdn', 'Internal'
      attr_accessor :direct_peering_type


      #
      # Mapper for PeeringPropertiesDirect class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PeeringPropertiesDirect',
          type: {
            name: 'Composite',
            class_name: 'PeeringPropertiesDirect',
            model_properties: {
              connections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connections',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DirectConnectionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DirectConnection'
                      }
                  }
                }
              },
              use_for_peering_service: {
                client_side_validation: true,
                required: false,
                serialized_name: 'useForPeeringService',
                type: {
                  name: 'Boolean'
                }
              },
              peer_asn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'peerAsn',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              direct_peering_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'directPeeringType',
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
