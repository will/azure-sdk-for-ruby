# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Network Properties
    #
    class NetworkProperties

      include MsRestAzure

      # @return [String] The Fabric Type.
      attr_accessor :fabric_type

      # @return [Array<Subnet>] The List of subnets.
      attr_accessor :subnets

      # @return [String] The Friendly Name.
      attr_accessor :friendly_name

      # @return [String] The Network Type.
      attr_accessor :network_type


      #
      # Mapper for NetworkProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkProperties',
          type: {
            name: 'Composite',
            class_name: 'NetworkProperties',
            model_properties: {
              fabric_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fabricType',
                type: {
                  name: 'String'
                }
              },
              subnets: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subnets',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubnetElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Subnet'
                      }
                  }
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              network_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkType',
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
