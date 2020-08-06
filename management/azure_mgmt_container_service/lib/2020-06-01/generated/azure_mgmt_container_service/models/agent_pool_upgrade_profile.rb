# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2020_06_01
  module Models
    #
    # The list of available upgrades for an agent pool.
    #
    class AgentPoolUpgradeProfile

      include MsRestAzure

      # @return [String] Id of the agent pool upgrade profile.
      attr_accessor :id

      # @return [String] Name of the agent pool upgrade profile.
      attr_accessor :name

      # @return [String] Type of the agent pool upgrade profile.
      attr_accessor :type

      # @return [String] Kubernetes version (major, minor, patch).
      attr_accessor :kubernetes_version

      # @return [OSType] OsType to be used to specify os type. Choose from
      # Linux and Windows. Default to Linux. Possible values include: 'Linux',
      # 'Windows'. Default value: 'Linux' .
      attr_accessor :os_type

      # @return [Array<AgentPoolUpgradeProfilePropertiesUpgradesItem>] List of
      # orchestrator types and versions available for upgrade.
      attr_accessor :upgrades

      # @return [String] LatestNodeImageVersion is the latest AKS supported
      # node image version.
      attr_accessor :latest_node_image_version


      #
      # Mapper for AgentPoolUpgradeProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AgentPoolUpgradeProfile',
          type: {
            name: 'Composite',
            class_name: 'AgentPoolUpgradeProfile',
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
              kubernetes_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.kubernetesVersion',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.osType',
                default_value: 'Linux',
                type: {
                  name: 'String'
                }
              },
              upgrades: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.upgrades',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AgentPoolUpgradeProfilePropertiesUpgradesItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AgentPoolUpgradeProfilePropertiesUpgradesItem'
                      }
                  }
                }
              },
              latest_node_image_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.latestNodeImageVersion',
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
