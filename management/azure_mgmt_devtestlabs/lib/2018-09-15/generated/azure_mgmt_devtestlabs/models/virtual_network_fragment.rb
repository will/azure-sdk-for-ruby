# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # A virtual network.
    #
    class VirtualNetworkFragment < UpdateResource

      include MsRestAzure

      # @return [Array<SubnetFragment>] The allowed subnets of the virtual
      # network.
      attr_accessor :allowed_subnets

      # @return [String] The description of the virtual network.
      attr_accessor :description

      # @return [String] The Microsoft.Network resource identifier of the
      # virtual network.
      attr_accessor :external_provider_resource_id

      # @return [Array<SubnetOverrideFragment>] The subnet overrides of the
      # virtual network.
      attr_accessor :subnet_overrides


      #
      # Mapper for VirtualNetworkFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualNetworkFragment',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkFragment',
            model_properties: {
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
              allowed_subnets: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowedSubnets',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubnetFragmentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubnetFragment'
                      }
                  }
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              external_provider_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.externalProviderResourceId',
                type: {
                  name: 'String'
                }
              },
              subnet_overrides: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.subnetOverrides',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubnetOverrideFragmentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubnetOverrideFragment'
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
