# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2019_07_01
  module Models
    #
    # The resource group properties.
    #
    class ResourceGroupProperties

      include MsRestAzure

      # @return [String] The provisioning state.
      attr_accessor :provisioning_state


      #
      # Mapper for ResourceGroupProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceGroupProperties',
          type: {
            name: 'Composite',
            class_name: 'ResourceGroupProperties',
            model_properties: {
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
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
