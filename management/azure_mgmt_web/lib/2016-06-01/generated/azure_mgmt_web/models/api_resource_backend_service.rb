# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_06_01
  module Models
    #
    # The API backend service
    #
    class ApiResourceBackendService

      include MsRestAzure

      # @return [String] The service URL
      attr_accessor :service_url


      #
      # Mapper for ApiResourceBackendService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiResourceBackendService',
          type: {
            name: 'Composite',
            class_name: 'ApiResourceBackendService',
            model_properties: {
              service_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceUrl',
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
