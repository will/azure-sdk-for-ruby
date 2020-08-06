# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Policy::Mgmt::V2019_09_01
  module Models
    #
    # The policy sku. This property is optional, obsolete, and will be ignored.
    #
    class PolicySku

      include MsRestAzure

      # @return [String] The name of the policy sku. Possible values are A0 and
      # A1.
      attr_accessor :name

      # @return [String] The policy sku tier. Possible values are Free and
      # Standard.
      attr_accessor :tier


      #
      # Mapper for PolicySku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicySku',
          type: {
            name: 'Composite',
            class_name: 'PolicySku',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tier',
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
