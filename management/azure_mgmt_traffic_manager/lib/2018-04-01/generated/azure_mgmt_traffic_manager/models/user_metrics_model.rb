# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TrafficManager::Mgmt::V2018_04_01
  module Models
    #
    # Class representing Traffic Manager User Metrics.
    #
    class UserMetricsModel < ProxyResource

      include MsRestAzure

      # @return [String] The key returned by the User Metrics operation.
      attr_accessor :key


      #
      # Mapper for UserMetricsModel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UserMetricsModel',
          type: {
            name: 'Composite',
            class_name: 'UserMetricsModel',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.key',
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
