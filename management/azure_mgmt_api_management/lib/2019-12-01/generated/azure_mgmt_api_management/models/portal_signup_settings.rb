# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # Sign-Up settings for a developer portal.
    #
    class PortalSignupSettings < Resource

      include MsRestAzure

      # @return [Boolean] Allow users to sign up on a developer portal.
      attr_accessor :enabled

      # @return [TermsOfServiceProperties] Terms of service contract
      # properties.
      attr_accessor :terms_of_service


      #
      # Mapper for PortalSignupSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PortalSignupSettings',
          type: {
            name: 'Composite',
            class_name: 'PortalSignupSettings',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enabled',
                type: {
                  name: 'Boolean'
                }
              },
              terms_of_service: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.termsOfService',
                type: {
                  name: 'Composite',
                  class_name: 'TermsOfServiceProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
