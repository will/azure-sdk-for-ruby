# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Enable protection input.
    #
    class EnableProtectionInput

      include MsRestAzure

      # @return [EnableProtectionInputProperties] Enable protection input
      # properties.
      attr_accessor :properties


      #
      # Mapper for EnableProtectionInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EnableProtectionInput',
          type: {
            name: 'Composite',
            class_name: 'EnableProtectionInput',
            model_properties: {
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'EnableProtectionInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
