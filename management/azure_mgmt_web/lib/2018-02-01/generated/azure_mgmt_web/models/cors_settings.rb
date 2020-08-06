# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # Cross-Origin Resource Sharing (CORS) settings for the app.
    #
    class CorsSettings

      include MsRestAzure

      # @return [Array<String>] Gets or sets the list of origins that should be
      # allowed to make cross-origin
      # calls (for example: http://example.com:12345). Use "*" to allow all.
      attr_accessor :allowed_origins


      #
      # Mapper for CorsSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CorsSettings',
          type: {
            name: 'Composite',
            class_name: 'CorsSettings',
            model_properties: {
              allowed_origins: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allowedOrigins',
                type: {
                  name: 'Sequence',
                  element: {
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
