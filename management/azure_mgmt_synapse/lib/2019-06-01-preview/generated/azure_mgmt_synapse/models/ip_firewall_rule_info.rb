# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # IP firewall rule
    #
    class IpFirewallRuleInfo < ProxyResource

      include MsRestAzure

      # @return [String] The end IP address of the firewall rule. Must be IPv4
      # format. Must be greater than or equal to startIpAddress
      attr_accessor :end_ip_address

      # @return [ProvisioningState] Resource provisioning state. Possible
      # values include: 'Provisioning', 'Succeeded', 'Deleting', 'Failed',
      # 'DeleteError'
      attr_accessor :provisioning_state

      # @return [String] The start IP address of the firewall rule. Must be
      # IPv4 format
      attr_accessor :start_ip_address


      #
      # Mapper for IpFirewallRuleInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IpFirewallRuleInfo',
          type: {
            name: 'Composite',
            class_name: 'IpFirewallRuleInfo',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              end_ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.endIpAddress',
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
              start_ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.startIpAddress',
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
