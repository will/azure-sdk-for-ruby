# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # FirewallPolicy Resource.
    #
    class FirewallPolicy < Resource

      include MsRestAzure

      # @return [Array<SubResource>] List of references to
      # FirewallPolicyRuleCollectionGroups.
      attr_accessor :rule_collection_groups

      # @return [ProvisioningState] The provisioning state of the firewall
      # policy resource. Possible values include: 'Succeeded', 'Updating',
      # 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [SubResource] The parent firewall policy from which rules are
      # inherited.
      attr_accessor :base_policy

      # @return [Array<SubResource>] List of references to Azure Firewalls that
      # this Firewall Policy is associated with.
      attr_accessor :firewalls

      # @return [Array<SubResource>] List of references to Child Firewall
      # Policies.
      attr_accessor :child_policies

      # @return [AzureFirewallThreatIntelMode] The operation mode for Threat
      # Intelligence. Possible values include: 'Alert', 'Deny', 'Off'
      attr_accessor :threat_intel_mode

      # @return [FirewallPolicyThreatIntelWhitelist] ThreatIntel Whitelist for
      # Firewall Policy.
      attr_accessor :threat_intel_whitelist

      # @return [FirewallPolicyIntrusionSystemMode] The operation mode for
      # Intrusion system. Possible values include: 'Enabled', 'Disabled'
      attr_accessor :intrusion_system_mode

      # @return [FirewallPolicyTransportSecurity] TLS Configuration definition.
      attr_accessor :transport_security

      # @return [DnsSettings] DNS Proxy Settings definition.
      attr_accessor :dns_settings

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [ManagedServiceIdentity] The identity of the firewall policy.
      attr_accessor :identity


      #
      # Mapper for FirewallPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FirewallPolicy',
          type: {
            name: 'Composite',
            class_name: 'FirewallPolicy',
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
              rule_collection_groups: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.ruleCollectionGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
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
              base_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.basePolicy',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              firewalls: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.firewalls',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              child_policies: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.childPolicies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              threat_intel_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.threatIntelMode',
                type: {
                  name: 'String'
                }
              },
              threat_intel_whitelist: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.threatIntelWhitelist',
                type: {
                  name: 'Composite',
                  class_name: 'FirewallPolicyThreatIntelWhitelist'
                }
              },
              intrusion_system_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.intrusionSystemMode',
                type: {
                  name: 'String'
                }
              },
              transport_security: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.transportSecurity',
                type: {
                  name: 'Composite',
                  class_name: 'FirewallPolicyTransportSecurity'
                }
              },
              dns_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dnsSettings',
                type: {
                  name: 'Composite',
                  class_name: 'DnsSettings'
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
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedServiceIdentity'
                }
              }
            }
          }
        }
      end
    end
  end
end
