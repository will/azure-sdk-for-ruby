# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Updates network mappings input.
    #
    class AzureToAzureUpdateNetworkMappingInput < FabricSpecificUpdateNetworkMappingInput

      include MsRestAzure


      def initialize
        @instanceType = "AzureToAzure"
      end

      attr_accessor :instanceType

      # @return [String] The primary azure vnet Id.
      attr_accessor :primary_network_id


      #
      # Mapper for AzureToAzureUpdateNetworkMappingInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureToAzure',
          type: {
            name: 'Composite',
            class_name: 'AzureToAzureUpdateNetworkMappingInput',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              primary_network_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryNetworkId',
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
