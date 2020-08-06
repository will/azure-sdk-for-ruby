# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2019_06_01
  module Models
    #
    # The Storage Account ManagementPolicies Rules. See more details in:
    # https://docs.microsoft.com/en-us/azure/storage/common/storage-lifecycle-managment-concepts.
    #
    class ManagementPolicySchema

      include MsRestAzure

      # @return [Array<ManagementPolicyRule>] The Storage Account
      # ManagementPolicies Rules. See more details in:
      # https://docs.microsoft.com/en-us/azure/storage/common/storage-lifecycle-managment-concepts.
      attr_accessor :rules


      #
      # Mapper for ManagementPolicySchema class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagementPolicySchema',
          type: {
            name: 'Composite',
            class_name: 'ManagementPolicySchema',
            model_properties: {
              rules: {
                client_side_validation: true,
                required: true,
                serialized_name: 'rules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ManagementPolicyRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ManagementPolicyRule'
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
