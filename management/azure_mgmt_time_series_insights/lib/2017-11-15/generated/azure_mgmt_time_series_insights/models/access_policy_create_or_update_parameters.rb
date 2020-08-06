# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2017_11_15
  module Models
    #
    # Model object.
    #
    #
    class AccessPolicyCreateOrUpdateParameters

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
      # Mapper for AccessPolicyCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AccessPolicyCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'AccessPolicyCreateOrUpdateParameters',
            model_properties: {
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
