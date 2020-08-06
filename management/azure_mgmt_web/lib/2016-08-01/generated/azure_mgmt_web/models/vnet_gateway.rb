# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # The Virtual Network gateway contract. This is used to give the Virtual
    # Network gateway access to the VPN package.
    #
    class VnetGateway < ProxyOnlyResource

      include MsRestAzure

      # @return [String] The Virtual Network name.
      attr_accessor :vnet_name

      # @return [String] The URI where the VPN package can be downloaded.
      attr_accessor :vpn_package_uri


      #
      # Mapper for VnetGateway class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VnetGateway',
          type: {
            name: 'Composite',
            class_name: 'VnetGateway',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              vnet_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vnetName',
                type: {
                  name: 'String'
                }
              },
              vpn_package_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vpnPackageUri',
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
