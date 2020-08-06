# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # A common class for general resource information.
    #
    class LocalNetworkGateway < Resource

      include MsRestAzure

      # @return [AddressSpace] Local network site address space.
      attr_accessor :local_network_address_space

      # @return [String] IP address of local network gateway.
      attr_accessor :gateway_ip_address

      # @return [String] FQDN of local network gateway.
      attr_accessor :fqdn

      # @return [BgpSettings] Local network gateway's BGP speaker settings.
      attr_accessor :bgp_settings

      # @return [String] The resource GUID property of the local network
      # gateway resource.
      attr_accessor :resource_guid

      # @return [ProvisioningState] The provisioning state of the local network
      # gateway resource. Possible values include: 'Succeeded', 'Updating',
      # 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for LocalNetworkGateway class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LocalNetworkGateway',
          type: {
            name: 'Composite',
            class_name: 'LocalNetworkGateway',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              local_network_address_space: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.localNetworkAddressSpace',
                type: {
                  name: 'Composite',
                  class_name: 'AddressSpace'
                }
              },
              gateway_ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.gatewayIpAddress',
                type: {
                  name: 'String'
                }
              },
              fqdn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.fqdn',
                type: {
                  name: 'String'
                }
              },
              bgp_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.bgpSettings',
                type: {
                  name: 'Composite',
                  class_name: 'BgpSettings'
                }
              },
              resource_guid: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceGuid',
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
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
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
