# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_03_01
  module Models
    #
    # Describes a virtual machine scale set virtual machine profile.
    #
    class VirtualMachineScaleSetUpdateVMProfile

      include MsRestAzure

      # @return [VirtualMachineScaleSetUpdateOSProfile] The virtual machine
      # scale set OS profile.
      attr_accessor :os_profile

      # @return [VirtualMachineScaleSetUpdateStorageProfile] The virtual
      # machine scale set storage profile.
      attr_accessor :storage_profile

      # @return [VirtualMachineScaleSetUpdateNetworkProfile] The virtual
      # machine scale set network profile.
      attr_accessor :network_profile

      # @return [DiagnosticsProfile] The virtual machine scale set diagnostics
      # profile.
      attr_accessor :diagnostics_profile

      # @return [VirtualMachineScaleSetExtensionProfile] The virtual machine
      # scale set extension profile.
      attr_accessor :extension_profile

      # @return [String] The license type, which is for bring your own license
      # scenario.
      attr_accessor :license_type

      # @return [BillingProfile] Specifies the billing related details of a low
      # priority VMSS. <br><br>Minimum api-version: 2019-03-01.
      attr_accessor :billing_profile

      # @return [ScheduledEventsProfile] Specifies Scheduled Event related
      # configurations.
      attr_accessor :scheduled_events_profile


      #
      # Mapper for VirtualMachineScaleSetUpdateVMProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineScaleSetUpdateVMProfile',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetUpdateVMProfile',
            model_properties: {
              os_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'osProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetUpdateOSProfile'
                }
              },
              storage_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetUpdateStorageProfile'
                }
              },
              network_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetUpdateNetworkProfile'
                }
              },
              diagnostics_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diagnosticsProfile',
                type: {
                  name: 'Composite',
                  class_name: 'DiagnosticsProfile'
                }
              },
              extension_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'extensionProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetExtensionProfile'
                }
              },
              license_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'licenseType',
                type: {
                  name: 'String'
                }
              },
              billing_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'billingProfile',
                type: {
                  name: 'Composite',
                  class_name: 'BillingProfile'
                }
              },
              scheduled_events_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scheduledEventsProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ScheduledEventsProfile'
                }
              }
            }
          }
        }
      end
    end
  end
end
