# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # This activity is used for iterating over a collection and execute given
    # activities.
    #
    class ForEachActivity < ControlActivity

      include MsRestAzure


      def initialize
        @type = "ForEach"
      end

      attr_accessor :type

      # @return [Boolean] Should the loop be executed in sequence or in
      # parallel (max 50)
      attr_accessor :is_sequential

      # @return [Integer] Batch count to be used for controlling the number of
      # parallel execution (when isSequential is set to false).
      attr_accessor :batch_count

      # @return [Expression] Collection to iterate.
      attr_accessor :items

      # @return [Array<Activity>] List of activities to execute .
      attr_accessor :activities


      #
      # Mapper for ForEachActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ForEach',
          type: {
            name: 'Composite',
            class_name: 'ForEachActivity',
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
              is_sequential: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.isSequential',
                type: {
                  name: 'Boolean'
                }
              },
              batch_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.batchCount',
                constraints: {
                  InclusiveMaximum: 50
                },
                type: {
                  name: 'Number'
                }
              },
              items: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.items',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'Expression'
                }
              },
              activities: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.activities',
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
