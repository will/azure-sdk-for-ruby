# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2017_10_12
  module Models
    #
    # Defines the URL file extension condition for the delivery rule.
    #
    class DeliveryRuleUrlFileExtensionCondition < DeliveryRuleCondition

      include MsRestAzure


      def initialize
        @name = "UrlFileExtension"
      end

      attr_accessor :name

      # @return [UrlFileExtensionConditionParameters] Defines the parameters
      # for the condition.
      attr_accessor :parameters


      #
      # Mapper for DeliveryRuleUrlFileExtensionCondition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UrlFileExtension',
          type: {
            name: 'Composite',
            class_name: 'DeliveryRuleUrlFileExtensionCondition',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                client_side_validation: true,
                required: true,
                serialized_name: 'parameters',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'UrlFileExtensionConditionParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end
