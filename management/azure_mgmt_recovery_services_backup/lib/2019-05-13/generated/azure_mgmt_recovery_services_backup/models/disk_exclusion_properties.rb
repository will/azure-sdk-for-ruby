# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_05_13
  module Models
    #
    # Model object.
    #
    #
    class DiskExclusionProperties

      include MsRestAzure

      # @return [Array<Integer>] List of Disks' Logical Unit Numbers (LUN) to
      # be used for VM Protection.
      attr_accessor :disk_lun_list

      # @return [Boolean] Flag to indicate whether DiskLunList is to be
      # included/ excluded from backup.
      attr_accessor :is_inclusion_list


      #
      # Mapper for DiskExclusionProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DiskExclusionProperties',
          type: {
            name: 'Composite',
            class_name: 'DiskExclusionProperties',
            model_properties: {
              disk_lun_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskLunList',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              is_inclusion_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isInclusionList',
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
