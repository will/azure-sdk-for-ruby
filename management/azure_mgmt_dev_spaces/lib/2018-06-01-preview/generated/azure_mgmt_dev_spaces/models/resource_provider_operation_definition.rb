# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevSpaces::Mgmt::V2018_06_01_preview
  module Models
    #
    # Model object.
    #
    #
    class ResourceProviderOperationDefinition

      include MsRestAzure

      # @return [String] Resource provider operation name.
      attr_accessor :name

      # @return [ResourceProviderOperationDisplay]
      attr_accessor :display


      #
      # Mapper for ResourceProviderOperationDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceProviderOperationDefinition',
          type: {
            name: 'Composite',
            class_name: 'ResourceProviderOperationDefinition',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display: {
                client_side_validation: true,
                required: false,
                serialized_name: 'display',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceProviderOperationDisplay'
                }
              }
            }
          }
        }
      end
    end
  end
end
