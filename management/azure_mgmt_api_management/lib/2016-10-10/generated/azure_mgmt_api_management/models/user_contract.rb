# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_10_10
  module Models
    #
    # User profile.
    #
    class UserContract

      include MsRestAzure

      # @return [String] User identifier path.
      attr_accessor :id

      # @return [String] First name.
      attr_accessor :first_name

      # @return [String] Last name.
      attr_accessor :last_name

      # @return [String] Email address.
      attr_accessor :email

      # @return [UserStateContract] User state. Possible values include:
      # 'Active', 'Blocked'
      attr_accessor :state

      # @return [DateTime] Date of user registration. The date conforms to the
      # following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601
      # standard.
      #
      attr_accessor :registration_date

      # @return [String] Administrator's note about given user.
      attr_accessor :note

      # @return [Array<UserIdentityContract>] Collection of user identities.
      attr_accessor :identities


      #
      # Mapper for UserContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UserContract',
          type: {
            name: 'Composite',
            class_name: 'UserContract',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              first_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'firstName',
                type: {
                  name: 'String'
                }
              },
              last_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastName',
                type: {
                  name: 'String'
                }
              },
              email: {
                client_side_validation: true,
                required: false,
                serialized_name: 'email',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'UserStateContract'
                }
              },
              registration_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'registrationDate',
                type: {
                  name: 'DateTime'
                }
              },
              note: {
                client_side_validation: true,
                required: false,
                serialized_name: 'note',
                type: {
                  name: 'String'
                }
              },
              identities: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'identities',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserIdentityContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserIdentityContract'
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
