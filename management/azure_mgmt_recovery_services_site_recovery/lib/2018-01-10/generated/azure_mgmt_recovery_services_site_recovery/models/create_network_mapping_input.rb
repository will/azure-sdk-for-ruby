# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Create network mappings input.
    #
    class CreateNetworkMappingInput

      include MsRestAzure

      # @return [CreateNetworkMappingInputProperties] Input properties for
      # creating network mapping.
      attr_accessor :properties


      #
      # Mapper for CreateNetworkMappingInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CreateNetworkMappingInput',
          type: {
            name: 'Composite',
            class_name: 'CreateNetworkMappingInput',
            model_properties: {
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'CreateNetworkMappingInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
