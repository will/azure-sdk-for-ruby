# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_06_01
  module Models
    #
    # Effective network security rules.
    #
    class EffectiveNetworkSecurityRule

      include MsRestAzure

      # @return [String] The name of the security rule specified by the user
      # (if created by the user).
      attr_accessor :name

      # @return [EffectiveSecurityRuleProtocol] The network protocol this rule
      # applies to. Possible values include: 'Tcp', 'Udp', 'All'
      attr_accessor :protocol

      # @return [String] The source port or range.
      attr_accessor :source_port_range

      # @return [String] The destination port or range.
      attr_accessor :destination_port_range

      # @return [Array<String>] The source port ranges. Expected values include
      # a single integer between 0 and 65535, a range using '-' as separator
      # (e.g. 100-400), or an asterisk (*).
      attr_accessor :source_port_ranges

      # @return [Array<String>] The destination port ranges. Expected values
      # include a single integer between 0 and 65535, a range using '-' as
      # separator (e.g. 100-400), or an asterisk (*).
      attr_accessor :destination_port_ranges

      # @return [String] The source address prefix.
      attr_accessor :source_address_prefix

      # @return [String] The destination address prefix.
      attr_accessor :destination_address_prefix

      # @return [Array<String>] The source address prefixes. Expected values
      # include CIDR IP ranges, Default Tags (VirtualNetwork,
      # AzureLoadBalancer, Internet), System Tags, and the asterisk (*).
      attr_accessor :source_address_prefixes

      # @return [Array<String>] The destination address prefixes. Expected
      # values include CIDR IP ranges, Default Tags (VirtualNetwork,
      # AzureLoadBalancer, Internet), System Tags, and the asterisk (*).
      attr_accessor :destination_address_prefixes

      # @return [Array<String>] The expanded source address prefix.
      attr_accessor :expanded_source_address_prefix

      # @return [Array<String>] Expanded destination address prefix.
      attr_accessor :expanded_destination_address_prefix

      # @return [SecurityRuleAccess] Whether network traffic is allowed or
      # denied. Possible values include: 'Allow', 'Deny'
      attr_accessor :access

      # @return [Integer] The priority of the rule.
      attr_accessor :priority

      # @return [SecurityRuleDirection] The direction of the rule. Possible
      # values include: 'Inbound', 'Outbound'
      attr_accessor :direction


      #
      # Mapper for EffectiveNetworkSecurityRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EffectiveNetworkSecurityRule',
          type: {
            name: 'Composite',
            class_name: 'EffectiveNetworkSecurityRule',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              protocol: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protocol',
                type: {
                  name: 'String'
                }
              },
              source_port_range: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourcePortRange',
                type: {
                  name: 'String'
                }
              },
              destination_port_range: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinationPortRange',
                type: {
                  name: 'String'
                }
              },
              source_port_ranges: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourcePortRanges',
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
              destination_port_ranges: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinationPortRanges',
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
              source_address_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              destination_address_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinationAddressPrefix',
                type: {
                  name: 'String'
                }
              },
              source_address_prefixes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceAddressPrefixes',
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
              destination_address_prefixes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinationAddressPrefixes',
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
              expanded_source_address_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expandedSourceAddressPrefix',
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
              expanded_destination_address_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expandedDestinationAddressPrefix',
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
              access: {
                client_side_validation: true,
                required: false,
                serialized_name: 'access',
                type: {
                  name: 'String'
                }
              },
              priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'priority',
                type: {
                  name: 'Number'
                }
              },
              direction: {
                client_side_validation: true,
                required: false,
                serialized_name: 'direction',
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
