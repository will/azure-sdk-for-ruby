# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearningServices::Mgmt::V2019_05_01
  module Models
    #
    # AKS properties
    #
    class AKSProperties

      include MsRestAzure

      # @return [String] Cluster full qualified domain name
      attr_accessor :cluster_fqdn

      # @return [Array<SystemService>] System services
      attr_accessor :system_services

      # @return [Integer] Number of agents
      attr_accessor :agent_count

      # @return [String] Agent virtual machine size
      attr_accessor :agent_vmsize

      # @return [SslConfiguration] SSL configuration
      attr_accessor :ssl_configuration

      # @return [AksNetworkingConfiguration] AKS networking configuration for
      # vnet
      attr_accessor :aks_networking_configuration


      #
      # Mapper for AKSProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AKS_properties',
          type: {
            name: 'Composite',
            class_name: 'AKSProperties',
            model_properties: {
              cluster_fqdn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'clusterFqdn',
                type: {
                  name: 'String'
                }
              },
              system_services: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'systemServices',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SystemServiceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SystemService'
                      }
                  }
                }
              },
              agent_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'agentCount',
                constraints: {
                  InclusiveMinimum: 1
                },
                type: {
                  name: 'Number'
                }
              },
              agent_vmsize: {
                client_side_validation: true,
                required: false,
                serialized_name: 'agentVMSize',
                type: {
                  name: 'String'
                }
              },
              ssl_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sslConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'SslConfiguration'
                }
              },
              aks_networking_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'aksNetworkingConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'AksNetworkingConfiguration'
                }
              }
            }
          }
        }
      end
    end
  end
end
