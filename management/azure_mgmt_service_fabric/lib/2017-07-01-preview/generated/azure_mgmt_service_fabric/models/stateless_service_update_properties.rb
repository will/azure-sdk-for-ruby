# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2017_07_01_preview
  module Models
    #
    # The properties of a stateless service resource for patch operations.
    #
    class StatelessServiceUpdateProperties < ServiceUpdateProperties

      include MsRestAzure


      def initialize
        @serviceKind = "Stateless"
      end

      attr_accessor :serviceKind

      # @return [Integer] The instance count.
      attr_accessor :instance_count


      #
      # Mapper for StatelessServiceUpdateProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Stateless',
          type: {
            name: 'Composite',
            class_name: 'StatelessServiceUpdateProperties',
            model_properties: {
              placement_constraints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'placementConstraints',
                type: {
                  name: 'String'
                }
              },
              correlation_scheme: {
                client_side_validation: true,
                required: false,
                serialized_name: 'correlationScheme',
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
                serialized_name: 'serviceLoadMetrics',
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
                serialized_name: 'servicePlacementPolicies',
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
                serialized_name: 'defaultMoveCost',
                type: {
                  name: 'String'
                }
              },
              serviceKind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'serviceKind',
                type: {
                  name: 'String'
                }
              },
              instance_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'instanceCount',
                constraints: {
                  InclusiveMinimum: -1
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
