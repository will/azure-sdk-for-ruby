# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2018_12_01
  module Models
    #
    # The configuration for compute nodes in a pool based on the Azure Virtual
    # Machines infrastructure.
    #
    #
    class VirtualMachineConfiguration

      include MsRestAzure

      # @return [ImageReference] A reference to the Azure Virtual Machines
      # Marketplace Image or the custom Virtual Machine Image to use.
      attr_accessor :image_reference

      # @return [String] The SKU of the Batch node agent to be provisioned on
      # compute nodes in the pool. The Batch node agent is a program that runs
      # on each node in the pool, and provides the command-and-control
      # interface between the node and the Batch service. There are different
      # implementations of the node agent, known as SKUs, for different
      # operating systems. You must specify a node agent SKU which matches the
      # selected image reference. To get the list of supported node agent SKUs
      # along with their list of verified image references, see the 'List
      # supported node agent SKUs' operation.
      attr_accessor :node_agent_sku_id

      # @return [WindowsConfiguration] Windows operating system settings on the
      # virtual machine. This property must not be specified if the
      # imageReference specifies a Linux OS image.
      attr_accessor :windows_configuration

      # @return [Array<DataDisk>] The configuration for data disks attached to
      # the compute nodes in the pool. This property must be specified if the
      # compute nodes in the pool need to have empty data disks attached to
      # them.
      attr_accessor :data_disks

      # @return [String] The type of on-premises license to be used when
      # deploying the operating system. This only applies to images that
      # contain the Windows operating system, and should only be used when you
      # hold valid on-premises licenses for the nodes which will be deployed.
      # If omitted, no on-premises licensing discount is applied. Values are:
      #
      # Windows_Server - The on-premises license is for Windows Server.
      # Windows_Client - The on-premises license is for Windows Client.
      #
      attr_accessor :license_type

      # @return [ContainerConfiguration] The container configuration for the
      # pool. If specified, setup is performed on each node in the pool to
      # allow tasks to run in containers. All regular tasks and job manager
      # tasks run on this pool must specify the containerSettings property, and
      # all other tasks may specify it.
      attr_accessor :container_configuration


      #
      # Mapper for VirtualMachineConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineConfiguration',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineConfiguration',
            model_properties: {
              image_reference: {
                client_side_validation: true,
                required: true,
                serialized_name: 'imageReference',
                type: {
                  name: 'Composite',
                  class_name: 'ImageReference'
                }
              },
              node_agent_sku_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'nodeAgentSkuId',
                type: {
                  name: 'String'
                }
              },
              windows_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'windowsConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'WindowsConfiguration'
                }
              },
              data_disks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dataDisks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DataDiskElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataDisk'
                      }
                  }
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
              container_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerConfiguration'
                }
              }
            }
          }
        }
      end
    end
  end
end
