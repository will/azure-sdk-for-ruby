# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # The application gateway private link ip configuration.
    #
    class ApplicationGatewayPrivateLinkIpConfiguration < SubResource

      include MsRestAzure

      # @return [String] The private IP address of the IP configuration.
      attr_accessor :private_ipaddress

      # @return [IPAllocationMethod] The private IP address allocation method.
      # Possible values include: 'Static', 'Dynamic'
      attr_accessor :private_ipallocation_method

      # @return [SubResource] Reference to the subnet resource.
      attr_accessor :subnet

      # @return [Boolean] Whether the ip configuration is primary or not.
      attr_accessor :primary

      # @return [ProvisioningState] The provisioning state of the application
      # gateway private link IP configuration. Possible values include:
      # 'Succeeded', 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The name of application gateway private link ip
      # configuration.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] The resource type.
      attr_accessor :type


      #
      # Mapper for ApplicationGatewayPrivateLinkIpConfiguration class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayPrivateLinkIpConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayPrivateLinkIpConfiguration',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              private_ipaddress: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateIPAddress',
                type: {
                  name: 'String'
                }
              },
              private_ipallocation_method: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateIPAllocationMethod',
                type: {
                  name: 'String'
                }
              },
              subnet: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.subnet',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              primary: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.primary',
                type: {
                  name: 'Boolean'
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
