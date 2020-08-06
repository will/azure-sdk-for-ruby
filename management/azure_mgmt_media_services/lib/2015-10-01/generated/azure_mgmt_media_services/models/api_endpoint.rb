# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2015_10_01
  module Models
    #
    # The properties for a Media Services REST API endpoint.
    #
    class ApiEndpoint

      include MsRestAzure

      # @return [String] The Media Services REST endpoint.
      attr_accessor :endpoint

      # @return [String] The version of Media Services REST API.
      attr_accessor :major_version


      #
      # Mapper for ApiEndpoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiEndpoint',
          type: {
            name: 'Composite',
            class_name: 'ApiEndpoint',
            model_properties: {
              endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endpoint',
                type: {
                  name: 'String'
                }
              },
              major_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'majorVersion',
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
