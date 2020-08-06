# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::VMwareCloudSimple::Mgmt::V2019_04_01
  module Models
    #
    # Private cloud model
    #
    class PrivateCloud

      include MsRestAzure

      # @return [String] Azure Id, e.g.
      # "/subscriptions/4da99247-a172-4ed6-8ae9-ebed2d12f839/providers/Microsoft.VMwareCloudSimple/privateClouds/cloud123"
      attr_accessor :id

      # @return [String] Location where private cloud created, e.g "westus"
      attr_accessor :location

      # @return [String] Private cloud name
      attr_accessor :name

      # @return [String] Availability Zone id, e.g. "az1"
      attr_accessor :availability_zone_id

      # @return [String] Availability Zone name, e.g. "Availability Zone 1"
      attr_accessor :availability_zone_name

      # @return [Integer] Number of clusters
      attr_accessor :clusters_number

      # @return [String] User's emails who created cloud
      attr_accessor :created_by

      # @return [DateTime] When private cloud was created
      attr_accessor :created_on

      # @return [Array<String>] Array of DNS servers
      attr_accessor :dns_servers

      # @return [String] Expiration date of PC
      attr_accessor :expires

      # @return [String] Nsx Type, e.g. "Advanced"
      attr_accessor :nsx_type

      # @return [String] Placement Group id, e.g. "n1"
      attr_accessor :placement_group_id

      # @return [String] Placement Group name
      attr_accessor :placement_group_name

      # @return Id of a private cloud
      attr_accessor :private_cloud_id

      # @return [Array<ResourcePool>] The list of Resource Pools
      attr_accessor :resource_pools

      # @return [String] Private Cloud state, e.g. "operational"
      attr_accessor :state

      # @return [Integer] Number of cores
      attr_accessor :total_cpu_cores

      # @return [Integer] Number of nodes
      attr_accessor :total_nodes

      # @return [Integer] Memory size
      attr_accessor :total_ram

      # @return [Float] Disk space in TB
      attr_accessor :total_storage

      # @return [String] Virtualization type e.g. "vSphere"
      attr_accessor :private_cloud_properties_type

      # @return [String] e.g. "6.5u2"
      attr_accessor :v_sphere_version

      # @return [String] FQDN for vcenter access
      attr_accessor :vcenter_fqdn

      # @return [String] Vcenter ip address
      attr_accessor :vcenter_refid

      # @return [Array<VirtualMachineTemplate>] The list of Virtual Machine
      # Templates
      attr_accessor :virtual_machine_templates

      # @return [Array<VirtualNetwork>] The list of Virtual Networks
      attr_accessor :virtual_networks

      # @return [Boolean] Is Vrops enabled/disabled
      attr_accessor :vr_ops_enabled

      # @return [PrivateCloudResourceType] Azure Resource type. Possible values
      # include: 'Microsoft.VMwareCloudSimple/privateClouds'
      attr_accessor :type


      #
      # Mapper for PrivateCloud class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateCloud',
          type: {
            name: 'Composite',
            class_name: 'PrivateCloud',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              availability_zone_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.availabilityZoneId',
                type: {
                  name: 'String'
                }
              },
              availability_zone_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.availabilityZoneName',
                type: {
                  name: 'String'
                }
              },
              clusters_number: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clustersNumber',
                type: {
                  name: 'Number'
                }
              },
              created_by: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.createdBy',
                type: {
                  name: 'String'
                }
              },
              created_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.createdOn',
                type: {
                  name: 'DateTime'
                }
              },
              dns_servers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dnsServers',
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
              expires: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.expires',
                type: {
                  name: 'String'
                }
              },
              nsx_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.nsxType',
                type: {
                  name: 'String'
                }
              },
              placement_group_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.placementGroupId',
                type: {
                  name: 'String'
                }
              },
              placement_group_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.placementGroupName',
                type: {
                  name: 'String'
                }
              },
              private_cloud_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateCloudId',
                type: {
                  name: 'String'
                }
              },
              resource_pools: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourcePools',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ResourcePoolElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourcePool'
                      }
                  }
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              total_cpu_cores: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.totalCpuCores',
                type: {
                  name: 'Number'
                }
              },
              total_nodes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.totalNodes',
                type: {
                  name: 'Number'
                }
              },
              total_ram: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.totalRam',
                type: {
                  name: 'Number'
                }
              },
              total_storage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.totalStorage',
                type: {
                  name: 'Double'
                }
              },
              private_cloud_properties_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.type',
                type: {
                  name: 'String'
                }
              },
              v_sphere_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vSphereVersion',
                type: {
                  name: 'String'
                }
              },
              vcenter_fqdn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vcenterFqdn',
                type: {
                  name: 'String'
                }
              },
              vcenter_refid: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vcenterRefid',
                type: {
                  name: 'String'
                }
              },
              virtual_machine_templates: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualMachineTemplates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualMachineTemplateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineTemplate'
                      }
                  }
                }
              },
              virtual_networks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualNetworks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualNetworkElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualNetwork'
                      }
                  }
                }
              },
              vr_ops_enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vrOpsEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'PrivateCloudResourceType'
                }
              }
            }
          }
        }
      end
    end
  end
end
