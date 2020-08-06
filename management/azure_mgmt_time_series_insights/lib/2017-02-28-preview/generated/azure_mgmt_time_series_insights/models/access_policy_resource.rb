# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2017_02_28_preview
  module Models
    #
    # An access policy is used to grant users and applications access to the
    # environment. Roles are assigned to service principals in Azure Active
    # Directory. These roles define the actions the principal can perform
    # through the Time Series Insights data plane APIs.
    #
    class AccessPolicyResource < Resource

      include MsRestAzure

      # @return [String] The objectId of the principal in Azure Active
      # Directory.
      attr_accessor :principal_object_id

      # @return [String] An description of the access policy.
      attr_accessor :description

      # @return [Array<AccessPolicyRole>] The list of roles the principal is
      # assigned on the environment.
      attr_accessor :roles


      #
      # Mapper for AccessPolicyResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AccessPolicyResource',
          type: {
            name: 'Composite',
            class_name: 'AccessPolicyResource',
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
              principal_object_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.principalObjectId',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              roles: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.roles',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AccessPolicyRoleElementType',
                      type: {
                        name: 'Enum',
                        module: 'AccessPolicyRole'
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
