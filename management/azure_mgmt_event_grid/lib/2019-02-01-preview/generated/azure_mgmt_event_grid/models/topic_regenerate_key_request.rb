# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2019_02_01_preview
  module Models
    #
    # Topic regenerate share access key request
    #
    class TopicRegenerateKeyRequest

      include MsRestAzure

      # @return [String] Key name to regenerate key1 or key2
      attr_accessor :key_name


      #
      # Mapper for TopicRegenerateKeyRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TopicRegenerateKeyRequest',
          type: {
            name: 'Composite',
            class_name: 'TopicRegenerateKeyRequest',
            model_properties: {
              key_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyName',
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
