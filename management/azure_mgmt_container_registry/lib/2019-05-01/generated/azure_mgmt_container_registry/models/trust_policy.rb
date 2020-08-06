# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_05_01
  module Models
    #
    # The content trust policy for a container registry.
    #
    class TrustPolicy

      include MsRestAzure

      # @return [TrustPolicyType] The type of trust policy. Possible values
      # include: 'Notary'
      attr_accessor :type

      # @return [PolicyStatus] The value that indicates whether the policy is
      # enabled or not. Possible values include: 'enabled', 'disabled'
      attr_accessor :status


      #
      # Mapper for TrustPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TrustPolicy',
          type: {
            name: 'Composite',
            class_name: 'TrustPolicy',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
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
