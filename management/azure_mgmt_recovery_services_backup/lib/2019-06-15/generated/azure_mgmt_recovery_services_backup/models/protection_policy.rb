# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_06_15
  module Models
    #
    # Base class for backup policy. Workload-specific backup policies are
    # derived from this class.
    #
    class ProtectionPolicy

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["AzureWorkload"] = "AzureVmWorkloadProtectionPolicy"
      @@discriminatorMap["AzureStorage"] = "AzureFileShareProtectionPolicy"
      @@discriminatorMap["AzureIaasVM"] = "AzureIaaSVMProtectionPolicy"
      @@discriminatorMap["AzureSql"] = "AzureSqlProtectionPolicy"
      @@discriminatorMap["GenericProtectionPolicy"] = "GenericProtectionPolicy"
      @@discriminatorMap["MAB"] = "MabProtectionPolicy"

      def initialize
        @backupManagementType = "ProtectionPolicy"
      end

      attr_accessor :backupManagementType

      # @return [Integer] Number of items associated with this policy.
      attr_accessor :protected_items_count


      #
      # Mapper for ProtectionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProtectionPolicy',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'backupManagementType',
            uber_parent: 'ProtectionPolicy',
            class_name: 'ProtectionPolicy',
            model_properties: {
              protected_items_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectedItemsCount',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
