# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # Path rule of URL path map of an application gateway.
    #
    class ApplicationGatewayPathRule < SubResource

      include MsRestAzure

      # @return [Array<String>] Path rules of URL path map.
      attr_accessor :paths

      # @return [SubResource] Backend address pool resource of URL path map
      # path rule.
      attr_accessor :backend_address_pool

      # @return [SubResource] Backend http settings resource of URL path map
      # path rule.
      attr_accessor :backend_http_settings

      # @return [SubResource] Redirect configuration resource of URL path map
      # path rule.
      attr_accessor :redirect_configuration

      # @return [SubResource] Rewrite rule set resource of URL path map path
      # rule.
      attr_accessor :rewrite_rule_set

      # @return [ProvisioningState] The provisioning state of the path rule
      # resource. Possible values include: 'Succeeded', 'Updating', 'Deleting',
      # 'Failed'
      attr_accessor :provisioning_state

      # @return [SubResource] Reference to the FirewallPolicy resource.
      attr_accessor :firewall_policy

      # @return [String] Name of the path rule that is unique within an
      # Application Gateway.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Type of the resource.
      attr_accessor :type


      #
      # Mapper for ApplicationGatewayPathRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayPathRule',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayPathRule',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              paths: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.paths',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              backend_address_pool: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.backendAddressPool',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              backend_http_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.backendHttpSettings',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              redirect_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.redirectConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              rewrite_rule_set: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.rewriteRuleSet',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
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
              firewall_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.firewallPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
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
