# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CDN::Mgmt::V2016_04_02
  module Models
    #
    # Profile properties required for profile update.
    #
    class ProfileUpdateParameters

      include MsRestAzure

      # @return [Hash{String => String}] Profile tags
      attr_accessor :tags


      #
      # Mapper for ProfileUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProfileUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ProfileUpdateParameters',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: true,
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
