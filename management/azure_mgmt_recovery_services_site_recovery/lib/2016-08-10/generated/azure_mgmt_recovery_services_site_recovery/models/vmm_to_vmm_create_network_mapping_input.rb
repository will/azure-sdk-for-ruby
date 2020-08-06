# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Create network mappings input properties/behaviour specific to vmm to vmm
    # Network mapping.
    #
    class VmmToVmmCreateNetworkMappingInput < FabricSpecificCreateNetworkMappingInput

      include MsRestAzure


      def initialize
        @instanceType = "VmmToVmm"
      end

      attr_accessor :instanceType


      #
      # Mapper for VmmToVmmCreateNetworkMappingInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VmmToVmm',
          type: {
            name: 'Composite',
            class_name: 'VmmToVmmCreateNetworkMappingInput',
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
