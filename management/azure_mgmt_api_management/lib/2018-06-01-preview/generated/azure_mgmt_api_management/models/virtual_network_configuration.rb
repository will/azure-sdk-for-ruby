# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_06_01_preview
  module Models
    #
    # Configuration of a virtual network to which API Management service is
    # deployed.
    #
    class VirtualNetworkConfiguration

      include MsRestAzure

      # @return [String] The virtual network ID. This is typically a GUID.
      # Expect a null GUID by default.
      attr_accessor :vnetid

      # @return [String] The name of the subnet.
      attr_accessor :subnetname

      # @return [String] The full resource ID of a subnet in a virtual network
      # to deploy the API Management service in.
      attr_accessor :subnet_resource_id


      #
      # Mapper for VirtualNetworkConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualNetworkConfiguration',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkConfiguration',
            model_properties: {
              vnetid: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'vnetid',
                type: {
                  name: 'String'
                }
              },
              subnetname: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'subnetname',
                type: {
                  name: 'String'
                }
              },
              subnet_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subnetResourceId',
                constraints: {
                  Pattern: '^/subscriptions/[^/]*/resourceGroups/[^/]*/providers/Microsoft.(ClassicNetwork|Network)/virtualNetworks/[^/]*/subnets/[^/]*$'
                },
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
