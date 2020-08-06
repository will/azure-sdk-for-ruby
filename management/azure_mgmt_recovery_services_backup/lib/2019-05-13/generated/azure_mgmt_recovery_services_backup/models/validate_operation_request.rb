# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_05_13
  module Models
    #
    # Base class for validate operation request.
    #
    class ValidateOperationRequest

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["ValidateIaasVMRestoreOperationRequest"] = "ValidateIaasVMRestoreOperationRequest"
      @@discriminatorMap["ValidateRestoreOperationRequest"] = "ValidateRestoreOperationRequest"

      def initialize
        @objectType = "ValidateOperationRequest"
      end

      attr_accessor :objectType


      #
      # Mapper for ValidateOperationRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ValidateOperationRequest',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'objectType',
            uber_parent: 'ValidateOperationRequest',
            class_name: 'ValidateOperationRequest',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
