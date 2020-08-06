# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataShare::Mgmt::V2019_11_01
  module Models
    #
    # An account data transfer object.
    #
    class Account < DefaultDto

      include MsRestAzure

      # @return [Identity] Identity Info on the Account
      attr_accessor :identity

      # @return [DateTime] Time at which the account was created.
      attr_accessor :created_at

      # @return [ProvisioningState] Provisioning state of the Account. Possible
      # values include: 'Succeeded', 'Creating', 'Deleting', 'Moving', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] Email of the user who created the resource
      attr_accessor :user_email

      # @return [String] Name of the user who created the resource
      attr_accessor :user_name


      #
      # Mapper for Account class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Account',
          type: {
            name: 'Composite',
            class_name: 'Account',
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
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
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
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
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
              identity: {
                client_side_validation: true,
                required: true,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'Identity'
                }
              },
              created_at: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.createdAt',
                type: {
                  name: 'DateTime'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              user_email: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.userEmail',
                type: {
                  name: 'String'
                }
              },
              user_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.userName',
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
