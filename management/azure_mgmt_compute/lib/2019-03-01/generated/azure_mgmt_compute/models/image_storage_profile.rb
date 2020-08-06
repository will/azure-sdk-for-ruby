# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_03_01
  module Models
    #
    # Describes a storage profile.
    #
    class ImageStorageProfile

      include MsRestAzure

      # @return [ImageOSDisk] Specifies information about the operating system
      # disk used by the virtual machine. <br><br> For more information about
      # disks, see [About disks and VHDs for Azure virtual
      # machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-about-disks-vhds?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json).
      attr_accessor :os_disk

      # @return [Array<ImageDataDisk>] Specifies the parameters that are used
      # to add a data disk to a virtual machine. <br><br> For more information
      # about disks, see [About disks and VHDs for Azure virtual
      # machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-about-disks-vhds?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json).
      attr_accessor :data_disks

      # @return [Boolean] Specifies whether an image is zone resilient or not.
      # Default is false. Zone resilient images can be created only in regions
      # that provide Zone Redundant Storage (ZRS).
      attr_accessor :zone_resilient


      #
      # Mapper for ImageStorageProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageStorageProfile',
          type: {
            name: 'Composite',
            class_name: 'ImageStorageProfile',
            model_properties: {
              os_disk: {
                client_side_validation: true,
                required: false,
                serialized_name: 'osDisk',
                type: {
                  name: 'Composite',
                  class_name: 'ImageOSDisk'
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
                      serialized_name: 'ImageDataDiskElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ImageDataDisk'
                      }
                  }
                }
              },
              zone_resilient: {
                client_side_validation: true,
                required: false,
                serialized_name: 'zoneResilient',
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
