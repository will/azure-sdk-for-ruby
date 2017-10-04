# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # The instance view of a virtual machine scale set.
    #
    class VirtualMachineScaleSetInstanceView

      include MsRestAzure

      # @return [VirtualMachineScaleSetInstanceViewStatusesSummary] The
      # instance view status summary for the virtual machine scale set.
      attr_accessor :virtual_machine

      # @return [Array<VirtualMachineScaleSetVMExtensionsSummary>] The
      # extensions information.
      attr_accessor :extensions

      # @return [Array<InstanceViewStatus>] The resource status information.
      attr_accessor :statuses


      #
      # Mapper for VirtualMachineScaleSetInstanceView class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetInstanceView',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetInstanceView',
            model_properties: {
              virtual_machine: {
                required: false,
                read_only: true,
                serialized_name: 'virtualMachine',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetInstanceViewStatusesSummary'
                }
              },
              extensions: {
                required: false,
                read_only: true,
                serialized_name: 'extensions',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualMachineScaleSetVMExtensionsSummaryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineScaleSetVMExtensionsSummary'
                      }
                  }
                }
              },
              statuses: {
                required: false,
                serialized_name: 'statuses',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'InstanceViewStatusElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InstanceViewStatus'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
