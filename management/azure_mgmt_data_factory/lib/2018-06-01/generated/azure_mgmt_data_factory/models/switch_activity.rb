# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # This activity evaluates an expression and executes activities under the
    # cases property that correspond to the expression evaluation expected in
    # the equals property.
    #
    class SwitchActivity < ControlActivity

      include MsRestAzure


      def initialize
        @type = "Switch"
      end

      attr_accessor :type

      # @return [Expression] An expression that would evaluate to a string or
      # integer. This is used to determine the block of activities in cases
      # that will be executed.
      attr_accessor :on

      # @return [Array<SwitchCase>] List of cases that correspond to expected
      # values of the 'on' property. This is an optional property and if not
      # provided, the activity will execute activities provided in
      # defaultActivities.
      attr_accessor :cases

      # @return [Array<Activity>] List of activities to execute if no case
      # condition is satisfied. This is an optional property and if not
      # provided, the activity will exit without any action.
      attr_accessor :default_activities


      #
      # Mapper for SwitchActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Switch',
          type: {
            name: 'Composite',
            class_name: 'SwitchActivity',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              depends_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dependsOn',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityDependency'
                      }
                  }
                }
              },
              user_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userProperties',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserProperty'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              on: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.on',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'Expression'
                }
              },
              cases: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.cases',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SwitchCaseElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SwitchCase'
                      }
                  }
                }
              },
              default_activities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.defaultActivities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'type',
                        uber_parent: 'Activity',
                        class_name: 'Activity'
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
