# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2017_07_01_preview
  module Models
    #
    # The service resource.
    #
    class ServiceResource < ProxyResource

      include MsRestAzure

      # @return [String] The placement constraints as a string. Placement
      # constraints are boolean expressions on node properties and allow for
      # restricting a service to particular nodes based on the service
      # requirements. For example, to place a service on nodes where NodeType
      # is blue specify the following: "NodeColor == blue)".
      attr_accessor :placement_constraints

      # @return [Array<ServiceCorrelationDescription>]
      attr_accessor :correlation_scheme

      # @return [Array<ServiceLoadMetricDescription>]
      attr_accessor :service_load_metrics

      # @return [Array<ServicePlacementPolicyDescription>]
      attr_accessor :service_placement_policies

      # @return [Enum] Possible values include: 'Zero', 'Low', 'Medium', 'High'
      attr_accessor :default_move_cost

      # @return [String] The current deployment or provisioning state, which
      # only appears in the response
      attr_accessor :provisioning_state

      # @return [String] The name of the service type
      attr_accessor :service_type_name

      # @return [PartitionSchemeDescription]
      attr_accessor :partition_description

      # @return [String] Polymorphic Discriminator
      attr_accessor :serviceKind


      #
      # Mapper for ServiceResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceResource',
          type: {
            name: 'Composite',
            class_name: 'ServiceResource',
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
              placement_constraints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.placementConstraints',
                type: {
                  name: 'String'
                }
              },
              correlation_scheme: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.correlationScheme',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceCorrelationDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceCorrelationDescription'
                      }
                  }
                }
              },
              service_load_metrics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceLoadMetrics',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceLoadMetricDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceLoadMetricDescription'
                      }
                  }
                }
              },
              service_placement_policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.servicePlacementPolicies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServicePlacementPolicyDescriptionElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'Type',
                        uber_parent: 'ServicePlacementPolicyDescription',
                        class_name: 'ServicePlacementPolicyDescription'
                      }
                  }
                }
              },
              default_move_cost: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.defaultMoveCost',
                type: {
                  name: 'String'
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
              service_type_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceTypeName',
                type: {
                  name: 'String'
                }
              },
              partition_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.partitionDescription',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'PartitionScheme',
                  uber_parent: 'PartitionSchemeDescription',
                  class_name: 'PartitionSchemeDescription'
                }
              },
              serviceKind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.serviceKind',
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
