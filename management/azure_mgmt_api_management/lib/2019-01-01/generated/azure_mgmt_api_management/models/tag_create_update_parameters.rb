# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_01_01
  module Models
    #
    # Parameters supplied to Create/Update Tag operations.
    #
    class TagCreateUpdateParameters

      include MsRestAzure

      # @return [String] Tag name.
      attr_accessor :display_name


      #
      # Mapper for TagCreateUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TagCreateUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'TagCreateUpdateParameters',
            model_properties: {
              display_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.displayName',
                constraints: {
                  MaxLength: 160,
                  MinLength: 1
                },
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
