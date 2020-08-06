# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2018_05_01_preview
  module Models
    #
    # Properties of the Topic update
    #
    class TopicUpdateParameters

      include MsRestAzure

      # @return [Hash{String => String}] Tags of the resource
      attr_accessor :tags


      #
      # Mapper for TopicUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TopicUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'TopicUpdateParameters',
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
