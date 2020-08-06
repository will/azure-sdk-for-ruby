# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # A2A Policy creation input.
    #
    class A2APolicyCreationInput < PolicyProviderSpecificInput

      include MsRestAzure


      def initialize
        @instanceType = "A2A"
      end

      attr_accessor :instanceType

      # @return [Integer] The duration in minutes until which the recovery
      # points need to be stored.
      attr_accessor :recovery_point_history

      # @return [Integer] The crash consistent snapshot frequency (in minutes).
      attr_accessor :crash_consistent_frequency_in_minutes

      # @return [Integer] The app consistent snapshot frequency (in minutes).
      attr_accessor :app_consistent_frequency_in_minutes

      # @return [SetMultiVmSyncStatus] A value indicating whether multi-VM sync
      # has to be enabled. Value should be 'Enabled' or 'Disabled'. Possible
      # values include: 'Enable', 'Disable'
      attr_accessor :multi_vm_sync_status


      #
      # Mapper for A2APolicyCreationInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'A2A',
          type: {
            name: 'Composite',
            class_name: 'A2APolicyCreationInput',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_history: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recoveryPointHistory',
                type: {
                  name: 'Number'
                }
              },
              crash_consistent_frequency_in_minutes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'crashConsistentFrequencyInMinutes',
                type: {
                  name: 'Number'
                }
              },
              app_consistent_frequency_in_minutes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'appConsistentFrequencyInMinutes',
                type: {
                  name: 'Number'
                }
              },
              multi_vm_sync_status: {
                client_side_validation: true,
                required: true,
                serialized_name: 'multiVmSyncStatus',
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
