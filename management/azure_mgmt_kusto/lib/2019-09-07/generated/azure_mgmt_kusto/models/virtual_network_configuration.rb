# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2019_09_07
  module Models
    #
    # A class that contains virtual network definition.
    #
    class VirtualNetworkConfiguration

      include MsRestAzure

      # @return [String] The subnet resource id.
      attr_accessor :subnet_id

      # @return [String] Engine service's public IP address resource id.
      attr_accessor :engine_public_ip_id

      # @return [String] Data management's service public IP address resource
      # id.
      attr_accessor :data_management_public_ip_id


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
              subnet_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'subnetId',
                type: {
                  name: 'String'
                }
              },
              engine_public_ip_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'enginePublicIpId',
                type: {
                  name: 'String'
                }
              },
              data_management_public_ip_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'dataManagementPublicIpId',
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
