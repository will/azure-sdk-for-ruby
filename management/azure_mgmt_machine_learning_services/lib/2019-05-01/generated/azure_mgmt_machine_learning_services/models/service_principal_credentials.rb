# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearningServices::Mgmt::V2019_05_01
  module Models
    #
    # Service principal credentials.
    #
    class ServicePrincipalCredentials

      include MsRestAzure

      # @return [String] Client Id
      attr_accessor :client_id

      # @return [String] Client secret
      attr_accessor :client_secret


      #
      # Mapper for ServicePrincipalCredentials class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServicePrincipalCredentials',
          type: {
            name: 'Composite',
            class_name: 'ServicePrincipalCredentials',
            model_properties: {
              client_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'clientId',
                type: {
                  name: 'String'
                }
              },
              client_secret: {
                client_side_validation: true,
                required: true,
                serialized_name: 'clientSecret',
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
