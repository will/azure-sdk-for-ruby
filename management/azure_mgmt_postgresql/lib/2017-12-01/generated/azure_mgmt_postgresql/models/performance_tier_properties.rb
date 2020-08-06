# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Postgresql::Mgmt::V2017_12_01
  module Models
    #
    # Performance tier properties
    #
    class PerformanceTierProperties

      include MsRestAzure

      # @return [String] ID of the performance tier.
      attr_accessor :id

      # @return [Array<PerformanceTierServiceLevelObjectives>] Service level
      # objectives associated with the performance tier
      attr_accessor :service_level_objectives


      #
      # Mapper for PerformanceTierProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PerformanceTierProperties',
          type: {
            name: 'Composite',
            class_name: 'PerformanceTierProperties',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              service_level_objectives: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceLevelObjectives',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PerformanceTierServiceLevelObjectivesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PerformanceTierServiceLevelObjectives'
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
