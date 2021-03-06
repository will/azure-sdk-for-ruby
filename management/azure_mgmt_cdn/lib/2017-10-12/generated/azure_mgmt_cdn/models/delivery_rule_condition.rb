# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2017_10_12
  module Models
    #
    # A condition for the delivery rule.
    #
    class DeliveryRuleCondition

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["UrlPath"] = "DeliveryRuleUrlPathCondition"
      @@discriminatorMap["UrlFileExtension"] = "DeliveryRuleUrlFileExtensionCondition"

      def initialize
        @name = "DeliveryRuleCondition"
      end

      attr_accessor :name


      #
      # Mapper for DeliveryRuleCondition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeliveryRuleCondition',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'name',
            uber_parent: 'DeliveryRuleCondition',
            class_name: 'DeliveryRuleCondition',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
