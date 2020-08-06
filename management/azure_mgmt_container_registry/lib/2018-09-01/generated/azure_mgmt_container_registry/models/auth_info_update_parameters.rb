# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2018_09_01
  module Models
    #
    # The authorization properties for accessing the source code repository.
    #
    class AuthInfoUpdateParameters

      include MsRestAzure

      # @return [TokenType] The type of Auth token. Possible values include:
      # 'PAT', 'OAuth'
      attr_accessor :token_type

      # @return [String] The access token used to access the source control
      # provider.
      attr_accessor :token

      # @return [String] The refresh token used to refresh the access token.
      attr_accessor :refresh_token

      # @return [String] The scope of the access token.
      attr_accessor :scope

      # @return [Integer] Time in seconds that the token remains valid
      attr_accessor :expires_in


      #
      # Mapper for AuthInfoUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AuthInfoUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'AuthInfoUpdateParameters',
            model_properties: {
              token_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tokenType',
                type: {
                  name: 'String'
                }
              },
              token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'token',
                type: {
                  name: 'String'
                }
              },
              refresh_token: {
                client_side_validation: true,
                required: false,
                serialized_name: 'refreshToken',
                type: {
                  name: 'String'
                }
              },
              scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scope',
                type: {
                  name: 'String'
                }
              },
              expires_in: {
                client_side_validation: true,
                required: false,
                serialized_name: 'expiresIn',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
