# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2017_09_01_preview
  module Models
    #
    # Represents a resource ID. For example, for a subnet, it is the resource
    # URL for the subnet.
    #
    class ResourceId

      include MsRestAzure

      # @return [String] The ID of the resource
      attr_accessor :id


      #
      # Mapper for ResourceId class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceId',
          type: {
            name: 'Composite',
            class_name: 'ResourceId',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
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
