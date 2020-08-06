# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearningServices::Mgmt::V2018_03_01_preview
  module Models
    #
    # Error detail information.
    #
    class ErrorDetail

      include MsRestAzure

      # @return [String] Error code.
      attr_accessor :code

      # @return [String] Error message.
      attr_accessor :message


      #
      # Mapper for ErrorDetail class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ErrorDetail',
          type: {
            name: 'Composite',
            class_name: 'ErrorDetail',
            model_properties: {
              code: {
                client_side_validation: true,
                required: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: true,
                serialized_name: 'message',
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
