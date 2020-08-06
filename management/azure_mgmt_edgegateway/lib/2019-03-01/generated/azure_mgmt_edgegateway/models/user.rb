# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EdgeGateway::Mgmt::V2019_03_01
  module Models
    #
    # Represents a user who has access to one or more shares on the Data Box
    # Edge/Gateway device.
    #
    class User < ARMBaseModel

      include MsRestAzure

      # @return [AsymmetricEncryptedSecret] The password details.
      attr_accessor :encrypted_password

      # @return [Array<ShareAccessRight>] List of shares that the user has
      # rights on. This field should not be specified during user creation.
      attr_accessor :share_access_rights


      #
      # Mapper for User class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'User',
          type: {
            name: 'Composite',
            class_name: 'User',
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
              encrypted_password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.encryptedPassword',
                type: {
                  name: 'Composite',
                  class_name: 'AsymmetricEncryptedSecret'
                }
              },
              share_access_rights: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.shareAccessRights',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ShareAccessRightElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ShareAccessRight'
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
