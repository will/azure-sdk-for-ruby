# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_04_15
  module Models
    #
    # Defines web application firewall policy for Azure CDN.
    #
    class CdnWebApplicationFirewallPolicy < TrackedResource

      include MsRestAzure

      # @return [PolicySettings] Describes  policySettings for policy
      attr_accessor :policy_settings

      # @return [RateLimitRuleList] Describes rate limit rules inside the
      # policy.
      attr_accessor :rate_limit_rules

      # @return [CustomRuleList] Describes custom rules inside the policy.
      attr_accessor :custom_rules

      # @return [ManagedRuleSetList] Describes managed rules inside the policy.
      attr_accessor :managed_rules

      # @return [Array<CdnEndpoint>] Describes Azure CDN endpoints associated
      # with this Web Application Firewall policy.
      attr_accessor :endpoint_links

      # @return [ProvisioningState] Provisioning state of the
      # WebApplicationFirewallPolicy. Possible values include: 'Creating',
      # 'Succeeded', 'Failed'
      attr_accessor :provisioning_state

      # @return [PolicyResourceState] Resource status of the policy. Possible
      # values include: 'Creating', 'Enabling', 'Enabled', 'Disabling',
      # 'Disabled', 'Deleting'
      attr_accessor :resource_state

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated.
      attr_accessor :etag

      # @return [Sku] The pricing tier (defines a CDN provider, feature list
      # and rate) of the CdnWebApplicationFirewallPolicy.
      attr_accessor :sku


      #
      # Mapper for CdnWebApplicationFirewallPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CdnWebApplicationFirewallPolicy',
          type: {
            name: 'Composite',
            class_name: 'CdnWebApplicationFirewallPolicy',
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
              location: {
                client_side_validation: true,
                required: true,
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
              policy_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.policySettings',
                type: {
                  name: 'Composite',
                  class_name: 'PolicySettings'
                }
              },
              rate_limit_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.rateLimitRules',
                type: {
                  name: 'Composite',
                  class_name: 'RateLimitRuleList'
                }
              },
              custom_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.customRules',
                type: {
                  name: 'Composite',
                  class_name: 'CustomRuleList'
                }
              },
              managed_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.managedRules',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedRuleSetList'
                }
              },
              endpoint_links: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.endpointLinks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CdnEndpointElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CdnEndpoint'
                      }
                  }
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
              resource_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceState',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              }
            }
          }
        }
      end
    end
  end
end
