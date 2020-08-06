# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_06_01
  module Models
    #
    # API connection properties
    #
    class ApiConnectionTestLink

      include MsRestAzure

      # @return [String] Test link request URI
      attr_accessor :request_uri

      # @return [String] HTTP Method
      attr_accessor :method


      #
      # Mapper for ApiConnectionTestLink class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiConnectionTestLink',
          type: {
            name: 'Composite',
            class_name: 'ApiConnectionTestLink',
            model_properties: {
              request_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'requestUri',
                type: {
                  name: 'String'
                }
              },
              method: {
                client_side_validation: true,
                required: false,
                serialized_name: 'method',
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
