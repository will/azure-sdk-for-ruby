# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2017_04_02
  module Models
    #
    # Output of custom domain validation.
    #
    class ValidateCustomDomainOutput

      include MsRestAzure

      # @return [Boolean] Indicates whether the custom domain is valid or not.
      attr_accessor :custom_domain_validated

      # @return [String] The reason why the custom domain is not valid.
      attr_accessor :reason

      # @return [String] Error message describing why the custom domain is not
      # valid.
      attr_accessor :message


      #
      # Mapper for ValidateCustomDomainOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ValidateCustomDomainOutput',
          type: {
            name: 'Composite',
            class_name: 'ValidateCustomDomainOutput',
            model_properties: {
              custom_domain_validated: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'customDomainValidated',
                type: {
                  name: 'Boolean'
                }
              },
              reason: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'reason',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
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
