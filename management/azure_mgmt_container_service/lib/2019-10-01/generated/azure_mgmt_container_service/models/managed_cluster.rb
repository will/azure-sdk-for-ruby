# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2019_10_01
  module Models
    #
    # Managed cluster.
    #
    class ManagedCluster < Resource

      include MsRestAzure

      # @return [String] The current deployment or provisioning state, which
      # only appears in the response.
      attr_accessor :provisioning_state

      # @return [Integer] The max number of agent pools for the managed
      # cluster.
      attr_accessor :max_agent_pools

      # @return [String] Version of Kubernetes specified when creating the
      # managed cluster.
      attr_accessor :kubernetes_version

      # @return [String] DNS prefix specified when creating the managed
      # cluster.
      attr_accessor :dns_prefix

      # @return [String] FQDN for the master pool.
      attr_accessor :fqdn

      # @return [String] FQDN of private cluster.
      attr_accessor :private_fqdn

      # @return [Array<ManagedClusterAgentPoolProfile>] Properties of the agent
      # pool.
      attr_accessor :agent_pool_profiles

      # @return [ContainerServiceLinuxProfile] Profile for Linux VMs in the
      # container service cluster.
      attr_accessor :linux_profile

      # @return [ManagedClusterWindowsProfile] Profile for Windows VMs in the
      # container service cluster.
      attr_accessor :windows_profile

      # @return [ManagedClusterServicePrincipalProfile] Information about a
      # service principal identity for the cluster to use for manipulating
      # Azure APIs.
      attr_accessor :service_principal_profile

      # @return [Hash{String => ManagedClusterAddonProfile}] Profile of managed
      # cluster add-on.
      attr_accessor :addon_profiles

      # @return [String] Name of the resource group containing agent pool
      # nodes.
      attr_accessor :node_resource_group

      # @return [Boolean] Whether to enable Kubernetes Role-Based Access
      # Control.
      attr_accessor :enable_rbac

      # @return [Boolean] (PREVIEW) Whether to enable Kubernetes Pod security
      # policy.
      attr_accessor :enable_pod_security_policy

      # @return [ContainerServiceNetworkProfile] Profile of network
      # configuration.
      attr_accessor :network_profile

      # @return [ManagedClusterAADProfile] Profile of Azure Active Directory
      # configuration.
      attr_accessor :aad_profile

      # @return [ManagedClusterAPIServerAccessProfile] Access profile for
      # managed cluster API server.
      attr_accessor :api_server_access_profile

      # @return [ManagedClusterIdentity] The identity of the managed cluster,
      # if configured.
      attr_accessor :identity


      #
      # Mapper for ManagedCluster class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedCluster',
          type: {
            name: 'Composite',
            class_name: 'ManagedCluster',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
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
              max_agent_pools: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.maxAgentPools',
                type: {
                  name: 'Number'
                }
              },
              kubernetes_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.kubernetesVersion',
                type: {
                  name: 'String'
                }
              },
              dns_prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dnsPrefix',
                type: {
                  name: 'String'
                }
              },
              fqdn: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.fqdn',
                type: {
                  name: 'String'
                }
              },
              private_fqdn: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.privateFQDN',
                type: {
                  name: 'String'
                }
              },
              agent_pool_profiles: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.agentPoolProfiles',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ManagedClusterAgentPoolProfileElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ManagedClusterAgentPoolProfile'
                      }
                  }
                }
              },
              linux_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.linuxProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerServiceLinuxProfile'
                }
              },
              windows_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.windowsProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedClusterWindowsProfile'
                }
              },
              service_principal_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.servicePrincipalProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedClusterServicePrincipalProfile'
                }
              },
              addon_profiles: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.addonProfiles',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ManagedClusterAddonProfileElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ManagedClusterAddonProfile'
                      }
                  }
                }
              },
              node_resource_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.nodeResourceGroup',
                type: {
                  name: 'String'
                }
              },
              enable_rbac: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableRBAC',
                type: {
                  name: 'Boolean'
                }
              },
              enable_pod_security_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enablePodSecurityPolicy',
                type: {
                  name: 'Boolean'
                }
              },
              network_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.networkProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ContainerServiceNetworkProfile'
                }
              },
              aad_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.aadProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedClusterAADProfile'
                }
              },
              api_server_access_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.apiServerAccessProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedClusterAPIServerAccessProfile'
                }
              },
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedClusterIdentity'
                }
              }
            }
          }
        }
      end
    end
  end
end
