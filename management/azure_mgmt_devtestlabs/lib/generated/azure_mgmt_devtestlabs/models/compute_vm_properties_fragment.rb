# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Properties of a virtual machine returned by the Microsoft.Compute API.
    #
    class ComputeVmPropertiesFragment

      include MsRestAzure

      # @return [Array<ComputeVmInstanceViewStatusFragment>] Gets the statuses
      # of the virtual machine.
      attr_accessor :statuses

      # @return [String] Gets the OS type of the virtual machine.
      attr_accessor :os_type

      # @return [String] Gets the size of the virtual machine.
      attr_accessor :vm_size

      # @return [String] Gets the network interface ID of the virtual machine.
      attr_accessor :network_interface_id

      # @return [String] Gets OS disk blob uri for the virtual machine.
      attr_accessor :os_disk_id

      # @return [Array<String>] Gets data disks blob uri for the virtual
      # machine.
      attr_accessor :data_disk_ids

      # @return [Array<ComputeDataDiskFragment>] Gets all data disks attached
      # to the virtual machine.
      attr_accessor :data_disks


      #
      # Mapper for ComputeVmPropertiesFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ComputeVmPropertiesFragment',
          type: {
            name: 'Composite',
            class_name: 'ComputeVmPropertiesFragment',
            model_properties: {
              statuses: {
                required: false,
                serialized_name: 'statuses',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ComputeVmInstanceViewStatusFragmentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ComputeVmInstanceViewStatusFragment'
                      }
                  }
                }
              },
              os_type: {
                required: false,
                serialized_name: 'osType',
                type: {
                  name: 'String'
                }
              },
              vm_size: {
                required: false,
                serialized_name: 'vmSize',
                type: {
                  name: 'String'
                }
              },
              network_interface_id: {
                required: false,
                serialized_name: 'networkInterfaceId',
                type: {
                  name: 'String'
                }
              },
              os_disk_id: {
                required: false,
                serialized_name: 'osDiskId',
                type: {
                  name: 'String'
                }
              },
              data_disk_ids: {
                required: false,
                serialized_name: 'dataDiskIds',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              data_disks: {
                required: false,
                serialized_name: 'dataDisks',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ComputeDataDiskFragmentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ComputeDataDiskFragment'
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
