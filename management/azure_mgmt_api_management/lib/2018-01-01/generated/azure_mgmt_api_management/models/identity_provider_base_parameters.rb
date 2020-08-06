# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01
  module Models
    #
    # Identity Provider Base Parameter Properties.
    #
    class IdentityProviderBaseParameters

      include MsRestAzure

      # @return [IdentityProviderType] Identity Provider Type identifier.
      # Possible values include: 'facebook', 'google', 'microsoft', 'twitter',
      # 'aad', 'aadB2C'
      attr_accessor :type

      # @return [Array<String>] List of Allowed Tenants when configuring Azure
      # Active Directory login.
      attr_accessor :allowed_tenants

      # @return [String] Signup Policy Name. Only applies to AAD B2C Identity
      # Provider.
      attr_accessor :signup_policy_name

      # @return [String] Signin Policy Name. Only applies to AAD B2C Identity
      # Provider.
      attr_accessor :signin_policy_name

      # @return [String] Profile Editing Policy Name. Only applies to AAD B2C
      # Identity Provider.
      attr_accessor :profile_editing_policy_name

      # @return [String] Password Reset Policy Name. Only applies to AAD B2C
      # Identity Provider.
      attr_accessor :password_reset_policy_name


      #
      # Mapper for IdentityProviderBaseParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IdentityProviderBaseParameters',
          type: {
            name: 'Composite',
            class_name: 'IdentityProviderBaseParameters',
            model_properties: {
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
              },
              signup_policy_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'signupPolicyName',
                constraints: {
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              signin_policy_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'signinPolicyName',
                constraints: {
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              profile_editing_policy_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'profileEditingPolicyName',
                constraints: {
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              password_reset_policy_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'passwordResetPolicyName',
                constraints: {
                  MinLength: 1
                },
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
