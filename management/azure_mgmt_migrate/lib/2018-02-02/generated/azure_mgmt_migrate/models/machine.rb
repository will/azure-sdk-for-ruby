# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Migrate::Mgmt::V2018_02_02
  module Models
    #
    # A machine in a migration project.
    #
    class Machine

      include MsRestAzure

      # @return [String] Path reference to this machine.
      # /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/projects/{projectName}/machines/{machineName}
      attr_accessor :id

      # @return [String] Name of the machine. It is a GUID which is unique
      # identifier of machine in private data center. For user-readable name,
      # we have a displayName property on this machine.
      attr_accessor :name

      # @return [String] For optimistic concurrency control.
      attr_accessor :e_tag

      # @return [String] Type of the object =
      # [Microsoft.Migrate/projects/machines].
      attr_accessor :type

      # @return [MachineBootType] Boot type of the machine. Possible values
      # include: 'Unknown', 'EFI', 'BIOS'
      attr_accessor :boot_type

      # @return [String] Container defined in the management solution that this
      # machine is part of in the datacenter.
      attr_accessor :datacenter_container

      # @return [String] Name of the server hosting the datacenter management
      # solution.
      attr_accessor :datacenter_management_server

      # @return [String] ID of the machine as tracked by the datacenter
      # management solution.
      attr_accessor :datacenter_machine_id

      # @return [String] ID of the server hosting the datacenter management
      # solution.
      attr_accessor :datacenter_management_server_id

      # @return [String] Description of the machine
      attr_accessor :description

      # @return [String] User readable name of the machine as defined by the
      # user in their private datacenter.
      attr_accessor :display_name

      # @return [Float] Memory in Megabytes.
      attr_accessor :megabytes_of_memory

      # @return [Integer] Processor count.
      attr_accessor :number_of_cores

      # @return [String] Operating System of the machine.
      attr_accessor :operating_system

      # @return [Array<String>] List of references to the groups that the
      # machine is member of.
      attr_accessor :groups

      # @return [DateTime] Time when this machine was created. Date-Time
      # represented in ISO-8601 format.
      attr_accessor :created_timestamp

      # @return [DateTime] Time when this machine was last updated. Date-Time
      # represented in ISO-8601 format.
      attr_accessor :updated_timestamp

      # @return [DateTime] Time when this machine was discovered by Azure
      # Migrate agent. Date-Time represented in ISO-8601 format.
      attr_accessor :discovered_timestamp

      # @return [Hash{String => Disk}] Dictionary of disks attached to the
      # machine. Key is ID of disk. Value is a disk object
      attr_accessor :disks

      # @return [Hash{String => NetworkAdapter}] Dictionary of network adapters
      # attached to the machine. Key is ID of network adapter. Value is a
      # network adapter object
      attr_accessor :network_adapters


      #
      # Mapper for Machine class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Machine',
          type: {
            name: 'Composite',
            class_name: 'Machine',
            model_properties: {
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
              e_tag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eTag',
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
              boot_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.bootType',
                type: {
                  name: 'String'
                }
              },
              datacenter_container: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.datacenterContainer',
                type: {
                  name: 'String'
                }
              },
              datacenter_management_server: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.datacenterManagementServer',
                type: {
                  name: 'String'
                }
              },
              datacenter_machine_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.datacenterMachineId',
                type: {
                  name: 'String'
                }
              },
              datacenter_management_server_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.datacenterManagementServerId',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              megabytes_of_memory: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.megabytesOfMemory',
                type: {
                  name: 'Double'
                }
              },
              number_of_cores: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.numberOfCores',
                type: {
                  name: 'Number'
                }
              },
              operating_system: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.operatingSystem',
                type: {
                  name: 'String'
                }
              },
              groups: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.groups',
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
              created_timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.createdTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              updated_timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.updatedTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              discovered_timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.discoveredTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              disks: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.disks',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DiskElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Disk'
                      }
                  }
                }
              },
              network_adapters: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.networkAdapters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NetworkAdapterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkAdapter'
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
