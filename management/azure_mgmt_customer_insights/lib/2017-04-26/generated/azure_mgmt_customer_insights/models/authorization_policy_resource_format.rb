# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_04_26
  module Models
    #
    # The authorization policy resource format.
    #
    class AuthorizationPolicyResourceFormat < ProxyResource

      include MsRestAzure

      # @return [String] Name of the policy.
      attr_accessor :policy_name

      # @return [Array<PermissionTypes>] The permissions associated with the
      # policy.
      attr_accessor :permissions

      # @return [String] Primary key assiciated with the policy.
      attr_accessor :primary_key

      # @return [String] Secondary key assiciated with the policy.
      attr_accessor :secondary_key


      #
      # Mapper for AuthorizationPolicyResourceFormat class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AuthorizationPolicyResourceFormat',
          type: {
            name: 'Composite',
            class_name: 'AuthorizationPolicyResourceFormat',
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
              policy_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.policyName',
                type: {
                  name: 'String'
                }
              },
              permissions: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.permissions',
                constraints: {
                  UniqueItems: true
                },
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PermissionTypesElementType',
                      type: {
                        name: 'Enum',
                        module: 'PermissionTypes'
                      }
                  }
                }
              },
              primary_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.primaryKey',
                type: {
                  name: 'String'
                }
              },
              secondary_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.secondaryKey',
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
