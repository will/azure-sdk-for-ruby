# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2017_08_31
  module Models
    #
    # The list of available upgrades for compute pools.
    #
    class ManagedClusterUpgradeProfile

      include MsRestAzure

      # @return [String] Id of upgrade profile.
      attr_accessor :id

      # @return [String] Name of upgrade profile.
      attr_accessor :name

      # @return [String] Type of upgrade profile.
      attr_accessor :type

      # @return [ManagedClusterPoolUpgradeProfile] The list of available
      # upgrade versions for the control plane.
      attr_accessor :control_plane_profile

      # @return [Array<ManagedClusterPoolUpgradeProfile>] The list of available
      # upgrade versions for agent pools.
      attr_accessor :agent_pool_profiles


      #
      # Mapper for ManagedClusterUpgradeProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedClusterUpgradeProfile',
          type: {
            name: 'Composite',
            class_name: 'ManagedClusterUpgradeProfile',
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
              control_plane_profile: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.controlPlaneProfile',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedClusterPoolUpgradeProfile'
                }
              },
              agent_pool_profiles: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.agentPoolProfiles',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ManagedClusterPoolUpgradeProfileElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ManagedClusterPoolUpgradeProfile'
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
