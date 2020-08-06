# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2015_06_01_preview
  module Models
    #
    # Model object.
    #
    #
    class AdaptiveNetworkHardeningEnforceRequest

      include MsRestAzure

      # @return [Array<Rule>] The rules to enforce
      attr_accessor :rules

      # @return [Array<String>] The Azure resource IDs of the effective network
      # security groups that will be updated with the created security rules
      # from the Adaptive Network Hardening rules
      attr_accessor :network_security_groups


      #
      # Mapper for AdaptiveNetworkHardeningEnforceRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AdaptiveNetworkHardeningEnforceRequest',
          type: {
            name: 'Composite',
            class_name: 'AdaptiveNetworkHardeningEnforceRequest',
            model_properties: {
              rules: {
                client_side_validation: true,
                required: true,
                serialized_name: 'rules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Rule'
                      }
                  }
                }
              },
              network_security_groups: {
                client_side_validation: true,
                required: true,
                serialized_name: 'networkSecurityGroups',
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
              }
            }
          }
        }
      end
    end
  end
end
