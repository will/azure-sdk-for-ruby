# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2017_01_31
  module Models
    #
    # Information about a service principal identity for the cluster to use for
    # manipulating Azure APIs.
    #
    class ContainerServiceServicePrincipalProfile

      include MsRestAzure

      # @return [String] The ID for the service principal.
      attr_accessor :client_id

      # @return [String] The secret password associated with the service
      # principal.
      attr_accessor :secret


      #
      # Mapper for ContainerServiceServicePrincipalProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerServiceServicePrincipalProfile',
          type: {
            name: 'Composite',
            class_name: 'ContainerServiceServicePrincipalProfile',
            model_properties: {
              client_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'clientId',
                type: {
                  name: 'String'
                }
              },
              secret: {
                client_side_validation: true,
                required: true,
                serialized_name: 'secret',
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
