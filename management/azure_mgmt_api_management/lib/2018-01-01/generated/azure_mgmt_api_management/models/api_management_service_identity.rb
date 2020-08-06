# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01
  module Models
    #
    # Identity properties of the Api Management service resource.
    #
    class ApiManagementServiceIdentity

      include MsRestAzure

      # @return [String] The identity type. Currently the only supported type
      # is 'SystemAssigned'. Default value: 'SystemAssigned' .
      attr_accessor :type

      # @return The principal id of the identity.
      attr_accessor :principal_id

      # @return The client tenant id of the identity.
      attr_accessor :tenant_id


      #
      # Mapper for ApiManagementServiceIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiManagementServiceIdentity',
          type: {
            name: 'Composite',
            class_name: 'ApiManagementServiceIdentity',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                is_constant: true,
                serialized_name: 'type',
                default_value: 'SystemAssigned',
                type: {
                  name: 'String'
                }
              },
              principal_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'principalId',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tenantId',
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
