# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourcesManagement::Mgmt::V2018_03_01_preview
  module Models
    #
    # (Optional) The ID of the parent management group.
    #
    class EntityParentGroupInfo

      include MsRestAzure

      # @return [String] The fully qualified ID for the parent management
      # group.  For example,
      # /providers/Microsoft.Management/managementGroups/0000000-0000-0000-0000-000000000000
      attr_accessor :id


      #
      # Mapper for EntityParentGroupInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EntityParentGroupInfo',
          type: {
            name: 'Composite',
            class_name: 'EntityParentGroupInfo',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
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
