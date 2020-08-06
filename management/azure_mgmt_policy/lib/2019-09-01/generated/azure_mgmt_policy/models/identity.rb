# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Policy::Mgmt::V2019_09_01
  module Models
    #
    # Identity for the resource.
    #
    class Identity

      include MsRestAzure

      # @return [String] The principal ID of the resource identity.
      attr_accessor :principal_id

      # @return [String] The tenant ID of the resource identity.
      attr_accessor :tenant_id

      # @return [ResourceIdentityType] The identity type. This is the only
      # required field when adding a system assigned identity to a resource.
      # Possible values include: 'SystemAssigned', 'None'
      attr_accessor :type


      #
      # Mapper for Identity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Identity',
          type: {
            name: 'Composite',
            class_name: 'Identity',
            model_properties: {
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
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'ResourceIdentityType'
                }
              }
            }
          }
        }
      end
    end
  end
end
