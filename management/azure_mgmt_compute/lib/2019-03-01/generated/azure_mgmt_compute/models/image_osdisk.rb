# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_03_01
  module Models
    #
    # Describes an Operating System disk.
    #
    class ImageOSDisk

      include MsRestAzure

      # @return [OperatingSystemTypes] This property allows you to specify the
      # type of the OS that is included in the disk if creating a VM from a
      # custom image. <br><br> Possible values are: <br><br> **Windows**
      # <br><br> **Linux**. Possible values include: 'Windows', 'Linux'
      attr_accessor :os_type

      # @return [OperatingSystemStateTypes] The OS State. Possible values
      # include: 'Generalized', 'Specialized'
      attr_accessor :os_state

      # @return [SubResource] The snapshot.
      attr_accessor :snapshot

      # @return [SubResource] The managedDisk.
      attr_accessor :managed_disk

      # @return [String] The Virtual Hard Disk.
      attr_accessor :blob_uri

      # @return [CachingTypes] Specifies the caching requirements. <br><br>
      # Possible values are: <br><br> **None** <br><br> **ReadOnly** <br><br>
      # **ReadWrite** <br><br> Default: **None for Standard storage. ReadOnly
      # for Premium storage**. Possible values include: 'None', 'ReadOnly',
      # 'ReadWrite'
      attr_accessor :caching

      # @return [Integer] Specifies the size of empty data disks in gigabytes.
      # This element can be used to overwrite the name of the disk in a virtual
      # machine image. <br><br> This value cannot be larger than 1023 GB
      attr_accessor :disk_size_gb

      # @return [StorageAccountTypes] Specifies the storage account type for
      # the managed disk. UltraSSD_LRS cannot be used with OS Disk. Possible
      # values include: 'Standard_LRS', 'Premium_LRS', 'StandardSSD_LRS',
      # 'UltraSSD_LRS'
      attr_accessor :storage_account_type


      #
      # Mapper for ImageOSDisk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageOSDisk',
          type: {
            name: 'Composite',
            class_name: 'ImageOSDisk',
            model_properties: {
              os_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'osType',
                type: {
                  name: 'Enum',
                  module: 'OperatingSystemTypes'
                }
              },
              os_state: {
                client_side_validation: true,
                required: true,
                serialized_name: 'osState',
                type: {
                  name: 'Enum',
                  module: 'OperatingSystemStateTypes'
                }
              },
              snapshot: {
                client_side_validation: true,
                required: false,
                serialized_name: 'snapshot',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              managed_disk: {
                client_side_validation: true,
                required: false,
                serialized_name: 'managedDisk',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              blob_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'blobUri',
                type: {
                  name: 'String'
                }
              },
              caching: {
                client_side_validation: true,
                required: false,
                serialized_name: 'caching',
                type: {
                  name: 'Enum',
                  module: 'CachingTypes'
                }
              },
              disk_size_gb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskSizeGB',
                type: {
                  name: 'Number'
                }
              },
              storage_account_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageAccountType',
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
