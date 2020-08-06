# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2017_10_12
  module Models
    #
    # Defines the parameters for the URL path condition.
    #
    class UrlPathConditionParameters

      include MsRestAzure

      # @return [String] . Default value:
      # 'Microsoft.Azure.Cdn.Models.DeliveryRuleUrlPathConditionParameters' .
      attr_accessor :odatatype

      # @return [String] A URL path for the condition of the delivery rule
      attr_accessor :path

      # @return [Enum] The match type for the condition of the delivery rule.
      # Possible values include: 'Literal', 'Wildcard'
      attr_accessor :match_type


      #
      # Mapper for UrlPathConditionParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UrlPathConditionParameters',
          type: {
            name: 'Composite',
            class_name: 'UrlPathConditionParameters',
            model_properties: {
              odatatype: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: '@odata\\.type',
                default_value: 'Microsoft.Azure.Cdn.Models.DeliveryRuleUrlPathConditionParameters',
                type: {
                  name: 'String'
                }
              },
              path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'path',
                type: {
                  name: 'String'
                }
              },
              match_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'matchType',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
