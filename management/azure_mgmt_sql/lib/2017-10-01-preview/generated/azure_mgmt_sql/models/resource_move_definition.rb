# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_10_01_preview
  module Models
    #
    # Contains the information necessary to perform a resource move (rename).
    #
    class ResourceMoveDefinition

      include MsRestAzure

      # @return [String] The target ID for the resource
      attr_accessor :id


      #
      # Mapper for ResourceMoveDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceMoveDefinition',
          type: {
            name: 'Composite',
            class_name: 'ResourceMoveDefinition',
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
