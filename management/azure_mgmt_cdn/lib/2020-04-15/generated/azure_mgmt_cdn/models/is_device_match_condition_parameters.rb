# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_04_15
  module Models
    #
    # Defines the parameters for IsDevice match conditions
    #
    class IsDeviceMatchConditionParameters

      include MsRestAzure

      # @return [String] . Default value:
      # '#Microsoft.Azure.Cdn.Models.DeliveryRuleIsDeviceConditionParameters' .
      attr_accessor :odatatype

      # @return [String] Describes operator to be matched. Default value:
      # 'Equal' .
      attr_accessor :operator

      # @return [Boolean] Describes if this is negate condition or not
      attr_accessor :negate_condition

      # @return [Array<Enum>] The match value for the condition of the delivery
      # rule
      attr_accessor :match_values

      # @return [Array<Transform>] List of transforms
      attr_accessor :transforms


      #
      # Mapper for IsDeviceMatchConditionParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IsDeviceMatchConditionParameters',
          type: {
            name: 'Composite',
            class_name: 'IsDeviceMatchConditionParameters',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: '@odata\\.type',
                default_value: '#Microsoft.Azure.Cdn.Models.DeliveryRuleIsDeviceConditionParameters',
                type: {
                  name: 'String'
                }
              },
              operator: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'operator',
                default_value: 'Equal',
                type: {
                  name: 'String'
                }
              },
              negate_condition: {
                client_side_validation: true,
                required: false,
                serialized_name: 'negateCondition',
                type: {
                  name: 'Boolean'
                }
              },
              match_values: {
                client_side_validation: true,
                required: true,
                serialized_name: 'matchValues',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'enumElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              transforms: {
                client_side_validation: true,
                required: false,
                serialized_name: 'transforms',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TransformElementType',
                      type: {
                        name: 'String'
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
