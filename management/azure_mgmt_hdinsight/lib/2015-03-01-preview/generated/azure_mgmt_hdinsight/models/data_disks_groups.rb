# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2015_03_01_preview
  module Models
    #
    # The data disks groups for the role.
    #
    class DataDisksGroups

      include MsRestAzure

      # @return [Integer] The number of disks per node.
      attr_accessor :disks_per_node

      # @return [String] ReadOnly. The storage account type. Do not set this
      # value.
      attr_accessor :storage_account_type

      # @return [Integer] ReadOnly. The DiskSize in GB. Do not set this value.
      attr_accessor :disk_size_gb


      #
      # Mapper for DataDisksGroups class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataDisksGroups',
          type: {
            name: 'Composite',
            class_name: 'DataDisksGroups',
            model_properties: {
              disks_per_node: {
                client_side_validation: true,
                required: false,
                serialized_name: 'disksPerNode',
                type: {
                  name: 'Number'
                }
              },
              storage_account_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'storageAccountType',
                type: {
                  name: 'String'
                }
              },
              disk_size_gb: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'diskSizeGB',
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
