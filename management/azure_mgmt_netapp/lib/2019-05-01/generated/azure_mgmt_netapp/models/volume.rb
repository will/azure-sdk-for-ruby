# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2019_05_01
  module Models
    #
    # Volume resource
    #
    class Volume

      include MsRestAzure

      # @return [String] Resource location
      attr_accessor :location

      # @return [String] Resource Id
      attr_accessor :id

      # @return [String] Resource name
      attr_accessor :name

      # @return [String] Resource type
      attr_accessor :type

      # @return Resource tags
      attr_accessor :tags

      # @return [String] FileSystem ID. Unique FileSystem Identifier.
      attr_accessor :file_system_id

      # @return [String] Creation Token or File Path. A unique file path for
      # the volume. Used when creating mount targets
      attr_accessor :creation_token

      # @return [ServiceLevel] serviceLevel. The service level of the file
      # system. Possible values include: 'Standard', 'Premium', 'Ultra'.
      # Default value: 'Premium' .
      attr_accessor :service_level

      # @return [Integer] usageThreshold. Maximum storage quota allowed for a
      # file system in bytes. This is a soft quota used for alerting only.
      # Minimum size is 100 GiB. Upper limit is 100TiB. Specified in bytes.
      # Default value: 107374182400 .
      attr_accessor :usage_threshold

      # @return [VolumePropertiesExportPolicy] exportPolicy. Set of export
      # policy rules
      attr_accessor :export_policy

      # @return [Array<String>] protocolTypes. Set of protocol types
      attr_accessor :protocol_types

      # @return [String] Azure lifecycle management
      attr_accessor :provisioning_state

      # @return [String] Snapshot ID. UUID v4 used to identify the Snapshot
      attr_accessor :snapshot_id

      # @return [String] Baremetal Tenant ID. Unique Baremetal Tenant
      # Identifier.
      attr_accessor :baremetal_tenant_id

      # @return [String] The Azure Resource URI for a delegated subnet. Must
      # have the delegation Microsoft.NetApp/volumes
      attr_accessor :subnet_id

      # @return mountTargets. List of mount targets
      attr_accessor :mount_targets


      #
      # Mapper for Volume class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'volume',
          type: {
            name: 'Composite',
            class_name: 'Volume',
            model_properties: {
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Object'
                }
              },
              file_system_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.fileSystemId',
                constraints: {
                  MaxLength: 36,
                  MinLength: 36,
                  Pattern: '^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$'
                },
                type: {
                  name: 'String'
                }
              },
              creation_token: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.creationToken',
                type: {
                  name: 'String'
                }
              },
              service_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceLevel',
                default_value: 'Premium',
                type: {
                  name: 'String'
                }
              },
              usage_threshold: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.usageThreshold',
                default_value: 107374182400,
                constraints: {
                  InclusiveMaximum: 109951162777600,
                  InclusiveMinimum: 107374182400
                },
                type: {
                  name: 'Number'
                }
              },
              export_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.exportPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'VolumePropertiesExportPolicy'
                }
              },
              protocol_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.protocolTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              snapshot_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.snapshotId',
                constraints: {
                  MaxLength: 36,
                  MinLength: 36,
                  Pattern: '^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$'
                },
                type: {
                  name: 'String'
                }
              },
              baremetal_tenant_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.baremetalTenantId',
                constraints: {
                  MaxLength: 36,
                  MinLength: 36,
                  Pattern: '^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$'
                },
                type: {
                  name: 'String'
                }
              },
              subnet_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.subnetId',
                type: {
                  name: 'String'
                }
              },
              mount_targets: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.mountTargets',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
