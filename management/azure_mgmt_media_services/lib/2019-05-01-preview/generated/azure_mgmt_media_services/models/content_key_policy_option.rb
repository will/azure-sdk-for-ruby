# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2019_05_01_preview
  module Models
    #
    # Represents a policy option.
    #
    class ContentKeyPolicyOption

      include MsRestAzure

      # @return The legacy Policy Option ID.
      attr_accessor :policy_option_id

      # @return [String] The Policy Option description.
      attr_accessor :name

      # @return [ContentKeyPolicyConfiguration] The key delivery configuration.
      attr_accessor :configuration

      # @return [ContentKeyPolicyRestriction] The requirements that must be met
      # to deliver keys with this configuration
      attr_accessor :restriction


      #
      # Mapper for ContentKeyPolicyOption class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContentKeyPolicyOption',
          type: {
            name: 'Composite',
            class_name: 'ContentKeyPolicyOption',
            model_properties: {
              policy_option_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'policyOptionId',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              configuration: {
                client_side_validation: true,
                required: true,
                serialized_name: 'configuration',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: '@odata.type',
                  uber_parent: 'ContentKeyPolicyConfiguration',
                  class_name: 'ContentKeyPolicyConfiguration'
                }
              },
              restriction: {
                client_side_validation: true,
                required: true,
                serialized_name: 'restriction',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: '@odata.type',
                  uber_parent: 'ContentKeyPolicyRestriction',
                  class_name: 'ContentKeyPolicyRestriction'
                }
              }
            }
          }
        }
      end
    end
  end
end
