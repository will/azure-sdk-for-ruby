# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # VMware/Physical specific Disk Details
    #
    class InMageDiskDetails

      include MsRestAzure

      # @return [String] The disk Id.
      attr_accessor :disk_id

      # @return [String] The disk name.
      attr_accessor :disk_name

      # @return [String] The disk size in MB.
      attr_accessor :disk_size_in_mb

      # @return [String] Whether disk is system disk or data disk.
      attr_accessor :disk_type

      # @return [String] Whether disk is dynamic disk or basic disk.
      attr_accessor :disk_configuration

      # @return [Array<DiskVolumeDetails>] Volumes of the disk.
      attr_accessor :volume_list


      #
      # Mapper for InMageDiskDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InMageDiskDetails',
          type: {
            name: 'Composite',
            class_name: 'InMageDiskDetails',
            model_properties: {
              disk_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskId',
                type: {
                  name: 'String'
                }
              },
              disk_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskName',
                type: {
                  name: 'String'
                }
              },
              disk_size_in_mb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskSizeInMB',
                type: {
                  name: 'String'
                }
              },
              disk_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskType',
                type: {
                  name: 'String'
                }
              },
              disk_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskConfiguration',
                type: {
                  name: 'String'
                }
              },
              volume_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'volumeList',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DiskVolumeDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DiskVolumeDetails'
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
