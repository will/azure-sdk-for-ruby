# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DevTestLabs::Mgmt::V2018_09_15
  module Models
    #
    # Properties for plan on a custom image.
    #
    class CustomImagePropertiesFromPlan

      include MsRestAzure

      # @return [String] The id of the plan, equivalent to name of the plan
      attr_accessor :id

      # @return [String] The publisher for the plan from the marketplace image
      # the custom image is derived from
      attr_accessor :publisher

      # @return [String] The offer for the plan from the marketplace image the
      # custom image is derived from
      attr_accessor :offer


      #
      # Mapper for CustomImagePropertiesFromPlan class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CustomImagePropertiesFromPlan',
          type: {
            name: 'Composite',
            class_name: 'CustomImagePropertiesFromPlan',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                client_side_validation: true,
                required: false,
                serialized_name: 'publisher',
                type: {
                  name: 'String'
                }
              },
              offer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'offer',
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
