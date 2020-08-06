# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # The external Identity Providers like Facebook, Google, Microsoft, Twitter
    # or Azure Active Directory which can be used to enable access to the API
    # Management service developer portal for all users.
    #
    class IdentityProviderContract

      include MsRestAzure

      # @return [String] Client Id of the Application in the external Identity
      # Provider. It is App ID for Facebook login, Client ID for Google login,
      # App ID for Microsoft.
      attr_accessor :client_id

      # @return [String] Client secret of the Application in external Identity
      # Provider, used to authenticate login request. For example, it is App
      # Secret for Facebook login, API Key for Google login, Public Key for
      # Microsoft.
      attr_accessor :client_secret

      # @return [IdentityProviderNameType] Identity Provider Type identifier.
      # Possible values include: 'facebook', 'google', 'microsoft', 'twitter',
      # 'aad'
      attr_accessor :type

      # @return [Array<String>] List of Allowed Tenants when configuring Azure
      # Active Directory login.
      attr_accessor :allowed_tenants


      #
      # Mapper for IdentityProviderContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IdentityProviderContract',
          type: {
            name: 'Composite',
            class_name: 'IdentityProviderContract',
            model_properties: {
              client_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'clientId',
                constraints: {
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              client_secret: {
                client_side_validation: true,
                required: true,
                serialized_name: 'clientSecret',
                constraints: {
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              allowed_tenants: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allowedTenants',
                constraints: {
                  MaxItems: 32
                },
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
