# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Storage information about the data disks present in the custom image
    #
    class DataDiskStorageTypeInfo

      include MsRestAzure

      # @return [String] Disk Lun
      attr_accessor :lun

      # @return [StorageType] Disk Storage Type. Possible values include:
      # 'Standard', 'Premium', 'StandardSSD'
      attr_accessor :storage_type


      #
      # Mapper for DataDiskStorageTypeInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataDiskStorageTypeInfo',
          type: {
            name: 'Composite',
            class_name: 'DataDiskStorageTypeInfo',
            model_properties: {
              lun: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lun',
                type: {
                  name: 'String'
                }
              },
              storage_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageType',
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
