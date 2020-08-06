# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # Virtual Router Peering resource.
    #
    class VirtualRouterPeering < SubResource

      include MsRestAzure

      # @return [Integer] Peer ASN.
      attr_accessor :peer_asn

      # @return [String] Peer IP.
      attr_accessor :peer_ip

      # @return [ProvisioningState] The provisioning state of the resource.
      # Possible values include: 'Succeeded', 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] Name of the virtual router peering that is unique
      # within a virtual router.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Peering type.
      attr_accessor :type


      #
      # Mapper for VirtualRouterPeering class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualRouterPeering',
          type: {
            name: 'Composite',
            class_name: 'VirtualRouterPeering',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              peer_asn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peerAsn',
                constraints: {
                  InclusiveMaximum: 4294967295,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              peer_ip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peerIp',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
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
              }
            }
          }
        }
      end
    end
  end
end
