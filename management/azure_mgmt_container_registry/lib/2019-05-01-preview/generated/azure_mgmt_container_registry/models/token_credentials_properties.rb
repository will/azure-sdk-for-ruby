# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_05_01_preview
  module Models
    #
    # The properties of the credentials that can be used for authenticating the
    # token.
    #
    class TokenCredentialsProperties

      include MsRestAzure

      # @return [Array<TokenCertificate>]
      attr_accessor :certificates

      # @return [Array<TokenPassword>]
      attr_accessor :passwords


      #
      # Mapper for TokenCredentialsProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TokenCredentialsProperties',
          type: {
            name: 'Composite',
            class_name: 'TokenCredentialsProperties',
            model_properties: {
              certificates: {
                client_side_validation: true,
                required: false,
                serialized_name: 'certificates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TokenCertificateElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TokenCertificate'
                      }
                  }
                }
              },
              passwords: {
                client_side_validation: true,
                required: false,
                serialized_name: 'passwords',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TokenPasswordElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TokenPassword'
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
