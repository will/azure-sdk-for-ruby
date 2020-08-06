# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_10_10
  module Models
    #
    # The response of the GetSsoToken operation.
    #
    class ApiManagementServiceGetSsoTokenResult

      include MsRestAzure

      # @return [String] Redirect URL containing the SSO token.
      attr_accessor :redirect_uri


      #
      # Mapper for ApiManagementServiceGetSsoTokenResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiManagementServiceGetSsoTokenResult',
          type: {
            name: 'Composite',
            class_name: 'ApiManagementServiceGetSsoTokenResult',
            model_properties: {
              redirect_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'redirect_uri',
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
