# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2016_09_01
  module Models
    #
    # Delta health policy for the cluster
    #
    class ClusterUpgradeDeltaHealthPolicy

      include MsRestAzure

      # @return [Integer] Additional unhealthy nodes percentage
      attr_accessor :max_percent_delta_unhealthy_nodes

      # @return [Integer] Additional unhealthy nodes percentage per upgrade
      # domain
      attr_accessor :max_percent_upgrade_domain_delta_unhealthy_nodes

      # @return [Integer] Additional unhealthy applications percentage
      attr_accessor :max_percent_delta_unhealthy_applications


      #
      # Mapper for ClusterUpgradeDeltaHealthPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterUpgradeDeltaHealthPolicy',
          type: {
            name: 'Composite',
            class_name: 'ClusterUpgradeDeltaHealthPolicy',
            model_properties: {
              max_percent_delta_unhealthy_nodes: {
                client_side_validation: true,
                required: true,
                serialized_name: 'maxPercentDeltaUnhealthyNodes',
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              max_percent_upgrade_domain_delta_unhealthy_nodes: {
                client_side_validation: true,
                required: true,
                serialized_name: 'maxPercentUpgradeDomainDeltaUnhealthyNodes',
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              max_percent_delta_unhealthy_applications: {
                client_side_validation: true,
                required: true,
                serialized_name: 'maxPercentDeltaUnhealthyApplications',
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 0
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
