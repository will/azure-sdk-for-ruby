# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # Managed service identity.
    #
    class ManagedServiceIdentity

      include MsRestAzure

      # @return [ManagedServiceIdentityType] Type of managed service identity.
      # Possible values include: 'SystemAssigned'
      attr_accessor :type

      # @return [String] Tenant of managed service identity.
      attr_accessor :tenant_id

      # @return [String] Principal Id of managed service identity.
      attr_accessor :principal_id


      #
      # Mapper for ManagedServiceIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedServiceIdentity',
          type: {
            name: 'Composite',
            class_name: 'ManagedServiceIdentity',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
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
              },
              principal_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'principalId',
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
