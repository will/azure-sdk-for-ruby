# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_08_01
  module Models
    #
    # Hybrid Connection for an App Service app.
    #
    class RelayServiceConnectionEntity < ProxyOnlyResource

      include MsRestAzure

      # @return [String]
      attr_accessor :entity_name

      # @return [String]
      attr_accessor :entity_connection_string

      # @return [String]
      attr_accessor :resource_type

      # @return [String]
      attr_accessor :resource_connection_string

      # @return [String]
      attr_accessor :hostname

      # @return [Integer]
      attr_accessor :port

      # @return [String]
      attr_accessor :biztalk_uri


      #
      # Mapper for RelayServiceConnectionEntity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RelayServiceConnectionEntity',
          type: {
            name: 'Composite',
            class_name: 'RelayServiceConnectionEntity',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              entity_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.entityName',
                type: {
                  name: 'String'
                }
              },
              entity_connection_string: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.entityConnectionString',
                type: {
                  name: 'String'
                }
              },
              resource_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceType',
                type: {
                  name: 'String'
                }
              },
              resource_connection_string: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resourceConnectionString',
                type: {
                  name: 'String'
                }
              },
              hostname: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hostname',
                type: {
                  name: 'String'
                }
              },
              port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.port',
                type: {
                  name: 'Number'
                }
              },
              biztalk_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.biztalkUri',
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
