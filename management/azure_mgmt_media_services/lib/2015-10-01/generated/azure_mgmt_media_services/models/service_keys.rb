# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2015_10_01
  module Models
    #
    # The response body for a ListKeys API.
    #
    class ServiceKeys

      include MsRestAzure

      # @return [String] The primary authorization endpoint.
      attr_accessor :primary_auth_endpoint

      # @return [String] The secondary authorization endpoint.
      attr_accessor :secondary_auth_endpoint

      # @return [String] The primary key for the Media Service resource.
      attr_accessor :primary_key

      # @return [String] The secondary key for the Media Service resource.
      attr_accessor :secondary_key

      # @return [String] The authorization scope.
      attr_accessor :scope


      #
      # Mapper for ServiceKeys class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceKeys',
          type: {
            name: 'Composite',
            class_name: 'ServiceKeys',
            model_properties: {
              primary_auth_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryAuthEndpoint',
                type: {
                  name: 'String'
                }
              },
              secondary_auth_endpoint: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secondaryAuthEndpoint',
                type: {
                  name: 'String'
                }
              },
              primary_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryKey',
                type: {
                  name: 'String'
                }
              },
              secondary_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'secondaryKey',
                type: {
                  name: 'String'
                }
              },
              scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scope',
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
