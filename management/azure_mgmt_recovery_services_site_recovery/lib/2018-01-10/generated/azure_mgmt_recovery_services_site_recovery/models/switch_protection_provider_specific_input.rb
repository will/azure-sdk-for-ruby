# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Provider specific switch protection input.
    #
    class SwitchProtectionProviderSpecificInput

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["A2A"] = "A2ASwitchProtectionInput"

      def initialize
        @instanceType = "SwitchProtectionProviderSpecificInput"
      end

      attr_accessor :instanceType


      #
      # Mapper for SwitchProtectionProviderSpecificInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SwitchProtectionProviderSpecificInput',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'instanceType',
            uber_parent: 'SwitchProtectionProviderSpecificInput',
            class_name: 'SwitchProtectionProviderSpecificInput',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
