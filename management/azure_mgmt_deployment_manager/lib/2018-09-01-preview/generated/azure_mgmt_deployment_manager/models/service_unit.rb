# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2018_09_01_preview
  module Models
    #
    # Defines a service unit.
    #
    class ServiceUnit < ServiceUnitProperties

      include MsRestAzure

      # @return [String] Name of the service unit.
      attr_accessor :name

      # @return [Array<RolloutStep>] Detailed step information, if present.
      attr_accessor :steps


      #
      # Mapper for ServiceUnit class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceUnit',
          type: {
            name: 'Composite',
            class_name: 'ServiceUnit',
            model_properties: {
              target_resource_group: {
                client_side_validation: true,
                required: true,
                serialized_name: 'targetResourceGroup',
                type: {
                  name: 'String'
                }
              },
              deployment_mode: {
                client_side_validation: true,
                required: true,
                serialized_name: 'deploymentMode',
                type: {
                  name: 'Enum',
                  module: 'DeploymentMode'
                }
              },
              artifacts: {
                client_side_validation: true,
                required: false,
                serialized_name: 'artifacts',
                type: {
                  name: 'Composite',
                  class_name: 'ServiceUnitArtifacts'
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
              steps: {
                client_side_validation: true,
                required: false,
                serialized_name: 'steps',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RolloutStepElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RolloutStep'
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
