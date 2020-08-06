# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # Network interface and its custom security rules.
    #
    class NetworkInterfaceAssociation

      include MsRestAzure

      # @return [String] Network interface ID.
      attr_accessor :id

      # @return [Array<SecurityRule>] Collection of custom security rules.
      attr_accessor :security_rules


      #
      # Mapper for NetworkInterfaceAssociation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkInterfaceAssociation',
          type: {
            name: 'Composite',
            class_name: 'NetworkInterfaceAssociation',
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
              security_rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'securityRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SecurityRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SecurityRule'
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
