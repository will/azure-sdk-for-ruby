# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_12_01
  module Models
    #
    # The configuration parameters used for performing automatic OS upgrade.
    #
    class AutomaticOSUpgradePolicy

      include MsRestAzure

      # @return [Boolean] Indicates whether OS upgrades should automatically be
      # applied to scale set instances in a rolling fashion when a newer
      # version of the OS image becomes available. Default value is false.
      # <br><br> If this is set to true for Windows based scale sets,
      # [enableAutomaticUpdates](https://docs.microsoft.com/dotnet/api/microsoft.azure.management.compute.models.windowsconfiguration.enableautomaticupdates?view=azure-dotnet)
      # is automatically set to false and cannot be set to true.
      attr_accessor :enable_automatic_osupgrade

      # @return [Boolean] Whether OS image rollback feature should be disabled.
      # Default value is false.
      attr_accessor :disable_automatic_rollback


      #
      # Mapper for AutomaticOSUpgradePolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AutomaticOSUpgradePolicy',
          type: {
            name: 'Composite',
            class_name: 'AutomaticOSUpgradePolicy',
            model_properties: {
              enable_automatic_osupgrade: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enableAutomaticOSUpgrade',
                type: {
                  name: 'Boolean'
                }
              },
              disable_automatic_rollback: {
                client_side_validation: true,
                required: false,
                serialized_name: 'disableAutomaticRollback',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
