# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Create recovery plan input class.
    #
    class CreateRecoveryPlanInput

      include MsRestAzure

      # @return [CreateRecoveryPlanInputProperties] Recovery plan creation
      # properties.
      attr_accessor :properties


      #
      # Mapper for CreateRecoveryPlanInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CreateRecoveryPlanInput',
          type: {
            name: 'Composite',
            class_name: 'CreateRecoveryPlanInput',
            model_properties: {
              properties: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'CreateRecoveryPlanInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
