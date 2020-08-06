# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceHealth::Mgmt::V2018_08_01_preview
  module Models
    #
    # The metadata entity contract.
    #
    class MetadataEntity < Resource

      include MsRestAzure

      # @return [String] The display name.
      attr_accessor :display_name

      # @return [Array<String>] The list of keys on which this entity depends
      # on.
      attr_accessor :depends_on

      # @return [Array<Scenario>] The list of scenarios applicable to this
      # metadata entity.
      attr_accessor :applicable_scenarios

      # @return [Array<MetadataSupportedValueDetail>] The list of supported
      # values.
      attr_accessor :supported_values


      #
      # Mapper for MetadataEntity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MetadataEntity',
          type: {
            name: 'Composite',
            class_name: 'MetadataEntity',
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
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              depends_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.dependsOn',
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
              applicable_scenarios: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.applicableScenarios',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ScenarioElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              supported_values: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.supportedValues',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetadataSupportedValueDetailElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetadataSupportedValueDetail'
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
