# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceBus::Mgmt::V2017_04_01
  module Models
    #
    # Description of a namespace resource.
    #
    class SBNamespace < TrackedResource

      include MsRestAzure

      # @return [SBSku] Properties of Sku
      attr_accessor :sku

      # @return [String] Provisioning state of the namespace.
      attr_accessor :provisioning_state

      # @return [DateTime] The time the namespace was created.
      attr_accessor :created_at

      # @return [DateTime] The time the namespace was updated.
      attr_accessor :updated_at

      # @return [String] Endpoint you can use to perform Service Bus
      # operations.
      attr_accessor :service_bus_endpoint

      # @return [String] Identifier for Azure Insights metrics
      attr_accessor :metric_id


      #
      # Mapper for SBNamespace class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SBNamespace',
          type: {
            name: 'Composite',
            class_name: 'SBNamespace',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'SBSku'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              created_at: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.createdAt',
                type: {
                  name: 'DateTime'
                }
              },
              updated_at: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.updatedAt',
                type: {
                  name: 'DateTime'
                }
              },
              service_bus_endpoint: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.serviceBusEndpoint',
                type: {
                  name: 'String'
                }
              },
              metric_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.metricId',
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
