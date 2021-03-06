# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2020_04_15
  module Models
    #
    # Defines the parameters for UrlFilename match conditions
    #
    class UrlFileNameMatchConditionParameters

      include MsRestAzure

      # @return [String] . Default value:
      # '#Microsoft.Azure.Cdn.Models.DeliveryRuleUrlFilenameConditionParameters'
      # .
      attr_accessor :odatatype

      # @return [UrlFileNameOperator] Describes operator to be matched.
      # Possible values include: 'Any', 'Equal', 'Contains', 'BeginsWith',
      # 'EndsWith', 'LessThan', 'LessThanOrEqual', 'GreaterThan',
      # 'GreaterThanOrEqual'
      attr_accessor :operator

      # @return [Boolean] Describes if this is negate condition or not
      attr_accessor :negate_condition

      # @return [Array<String>] The match value for the condition of the
      # delivery rule
      attr_accessor :match_values

      # @return [Array<Transform>] List of transforms
      attr_accessor :transforms


      #
      # Mapper for UrlFileNameMatchConditionParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UrlFileNameMatchConditionParameters',
          type: {
            name: 'Composite',
            class_name: 'UrlFileNameMatchConditionParameters',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: '@odata\\.type',
                default_value: '#Microsoft.Azure.Cdn.Models.DeliveryRuleUrlFilenameConditionParameters',
                type: {
                  name: 'String'
                }
              },
              operator: {
                client_side_validation: true,
                required: true,
                serialized_name: 'operator',
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
                      serialized_name: 'StringElementType',
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
