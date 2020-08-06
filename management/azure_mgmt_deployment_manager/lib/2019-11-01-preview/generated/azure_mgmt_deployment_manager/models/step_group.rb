# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2019_11_01_preview
  module Models
    #
    # The properties that define a Step group in a rollout.
    #
    class StepGroup

      include MsRestAzure

      # @return [String] The name of the step group.
      attr_accessor :name

      # @return [Array<String>] The list of step group names on which this step
      # group depends on.
      attr_accessor :depends_on_step_groups

      # @return [Array<PrePostStep>] The list of steps to be run before
      # deploying the target.
      attr_accessor :pre_deployment_steps

      # @return [String] The resource Id of service unit to be deployed. The
      # service unit should be from the service topology referenced in
      # targetServiceTopologyId
      attr_accessor :deployment_target_id

      # @return [Array<PrePostStep>] The list of steps to be run after
      # deploying the target.
      attr_accessor :post_deployment_steps


      #
      # Mapper for StepGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StepGroup',
          type: {
            name: 'Composite',
            class_name: 'StepGroup',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              depends_on_step_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dependsOnStepGroups',
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
              pre_deployment_steps: {
                client_side_validation: true,
                required: false,
                serialized_name: 'preDeploymentSteps',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PrePostStepElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PrePostStep'
                      }
                  }
                }
              },
              deployment_target_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'deploymentTargetId',
                type: {
                  name: 'String'
                }
              },
              post_deployment_steps: {
                client_side_validation: true,
                required: false,
                serialized_name: 'postDeploymentSteps',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PrePostStepElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PrePostStep'
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
