# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Create network mappings input properties/behaviour specific to Vmm to
    # Azure Network mapping.
    #
    class VmmToAzureCreateNetworkMappingInput < FabricSpecificCreateNetworkMappingInput

      include MsRestAzure


      def initialize
        @instanceType = "VmmToAzure"
      end

      attr_accessor :instanceType


      #
      # Mapper for VmmToAzureCreateNetworkMappingInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VmmToAzure',
          type: {
            name: 'Composite',
            class_name: 'VmmToAzureCreateNetworkMappingInput',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
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
