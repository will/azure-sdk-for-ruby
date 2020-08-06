# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevSpaces::Mgmt::V2018_06_01_preview
  module Models
    #
    # Parameters for updating an Azure Dev Spaces Controller.
    #
    class ControllerUpdateParameters

      include MsRestAzure

      # @return [Hash{String => String}] Tags for the Azure Dev Spaces
      # Controller.
      attr_accessor :tags


      #
      # Mapper for ControllerUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ControllerUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ControllerUpdateParameters',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
