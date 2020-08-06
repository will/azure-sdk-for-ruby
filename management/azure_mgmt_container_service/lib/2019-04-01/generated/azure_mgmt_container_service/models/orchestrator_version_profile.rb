# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2019_04_01
  module Models
    #
    # The profile of an orchestrator and its available versions.
    #
    class OrchestratorVersionProfile

      include MsRestAzure

      # @return [String] Orchestrator type.
      attr_accessor :orchestrator_type

      # @return [String] Orchestrator version (major, minor, patch).
      attr_accessor :orchestrator_version

      # @return [Boolean] Installed by default if version is not specified.
      attr_accessor :default

      # @return [Boolean] Whether Kubernetes version is currently in preview.
      attr_accessor :is_preview

      # @return [Array<OrchestratorProfile>] The list of available upgrade
      # versions.
      attr_accessor :upgrades


      #
      # Mapper for OrchestratorVersionProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OrchestratorVersionProfile',
          type: {
            name: 'Composite',
            class_name: 'OrchestratorVersionProfile',
            model_properties: {
              orchestrator_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'orchestratorType',
                type: {
                  name: 'String'
                }
              },
              orchestrator_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'orchestratorVersion',
                type: {
                  name: 'String'
                }
              },
              default: {
                client_side_validation: true,
                required: false,
                serialized_name: 'default',
                type: {
                  name: 'Boolean'
                }
              },
              is_preview: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isPreview',
                type: {
                  name: 'Boolean'
                }
              },
              upgrades: {
                client_side_validation: true,
                required: false,
                serialized_name: 'upgrades',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'OrchestratorProfileElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OrchestratorProfile'
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
