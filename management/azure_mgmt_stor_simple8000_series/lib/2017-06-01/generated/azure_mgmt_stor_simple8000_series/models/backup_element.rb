# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The backup element.
    #
    class BackupElement

      include MsRestAzure

      # @return [String] The path ID that uniquely identifies the backup
      # element.
      attr_accessor :element_id

      # @return [String] The name of the backup element.
      attr_accessor :element_name

      # @return [String] The hierarchical type of the backup element.
      attr_accessor :element_type

      # @return [Integer] The size in bytes.
      attr_accessor :size_in_bytes

      # @return [String] The name of the volume.
      attr_accessor :volume_name

      # @return [String] The path ID of the volume container.
      attr_accessor :volume_container_id

      # @return [VolumeType] The volume type. Possible values include:
      # 'Tiered', 'Archival', 'LocallyPinned'
      attr_accessor :volume_type


      #
      # Mapper for BackupElement class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackupElement',
          type: {
            name: 'Composite',
            class_name: 'BackupElement',
            model_properties: {
              element_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'elementId',
                type: {
                  name: 'String'
                }
              },
              element_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'elementName',
                type: {
                  name: 'String'
                }
              },
              element_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'elementType',
                type: {
                  name: 'String'
                }
              },
              size_in_bytes: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sizeInBytes',
                type: {
                  name: 'Number'
                }
              },
              volume_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'volumeName',
                type: {
                  name: 'String'
                }
              },
              volume_container_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'volumeContainerId',
                type: {
                  name: 'String'
                }
              },
              volume_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'volumeType',
                type: {
                  name: 'Enum',
                  module: 'VolumeType'
                }
              }
            }
          }
        }
      end
    end
  end
end
