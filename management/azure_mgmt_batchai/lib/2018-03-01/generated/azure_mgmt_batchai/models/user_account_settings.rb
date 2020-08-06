# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_03_01
  module Models
    #
    # Settings for user account that gets created on each on the nodes of a
    # cluster.
    #
    class UserAccountSettings

      include MsRestAzure

      # @return [String] Specifies the name of the administrator account.
      attr_accessor :admin_user_name

      # @return [String] SSH public keys used to authenticate with linux based
      # VMs. This does not get returned in a GET response body.
      attr_accessor :admin_user_ssh_public_key

      # @return [String] Admin user Password (linux only). This does not get
      # returned in a GET response body.
      attr_accessor :admin_user_password


      #
      # Mapper for UserAccountSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UserAccountSettings',
          type: {
            name: 'Composite',
            class_name: 'UserAccountSettings',
            model_properties: {
              admin_user_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'adminUserName',
                type: {
                  name: 'String'
                }
              },
              admin_user_ssh_public_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'adminUserSshPublicKey',
                type: {
                  name: 'String'
                }
              },
              admin_user_password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'adminUserPassword',
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
