# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Peering::Mgmt::V2019_08_01_preview
  module Models
    #
    # The peering service prefix class.
    #
    class PeeringServicePrefix < Resource

      include MsRestAzure

      # @return [String] Valid route prefix
      attr_accessor :prefix

      # @return [PrefixValidationState] The prefix validation state. Possible
      # values include: 'None', 'Invalid', 'Verified', 'Failed', 'Pending',
      # 'Unknown'
      attr_accessor :prefix_validation_state

      # @return [LearnedType] The prefix learned type. Possible values include:
      # 'None', 'ViaPartner', 'ViaSession'
      attr_accessor :learned_type

      # @return [ProvisioningState] The provisioning state of the resource.
      # Possible values include: 'Succeeded', 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state


      #
      # Mapper for PeeringServicePrefix class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PeeringServicePrefix',
          type: {
            name: 'Composite',
            class_name: 'PeeringServicePrefix',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
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
              prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.prefix',
                type: {
                  name: 'String'
                }
              },
              prefix_validation_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.prefixValidationState',
                type: {
                  name: 'String'
                }
              },
              learned_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.learnedType',
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
              }
            }
          }
        }
      end
    end
  end
end
