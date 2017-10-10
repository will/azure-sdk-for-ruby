# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2016_12_01
  module Models
    #
    # A load balancing rule for a load balancer.
    #
    class LoadBalancingRule < MsRestAzure::SubResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [SubResource] A reference to frontend IP addresses.
      attr_accessor :frontend_ipconfiguration

      # @return [SubResource] A reference to a pool of DIPs. Inbound traffic is
      # randomly load balanced across IPs in the backend IPs.
      attr_accessor :backend_address_pool

      # @return [SubResource] The reference of the load balancer probe used by
      # the load balancing rule.
      attr_accessor :probe

      # @return [TransportProtocol] The transport protocol for the external
      # endpoint. Possible values are 'Udp' or 'Tcp'. Possible values include:
      # 'Udp', 'Tcp'
      attr_accessor :protocol

      # @return [LoadDistribution] The load distribution policy for this rule.
      # Possible values are 'Default', 'SourceIP', and 'SourceIPProtocol'.
      # Possible values include: 'Default', 'SourceIP', 'SourceIPProtocol'
      attr_accessor :load_distribution

      # @return [Integer] The port for the external endpoint. Port numbers for
      # each rule must be unique within the Load Balancer. Acceptable values
      # are between 1 and 65534.
      attr_accessor :frontend_port

      # @return [Integer] The port used for internal connections on the
      # endpoint. Acceptable values are between 1 and 65535.
      attr_accessor :backend_port

      # @return [Integer] The timeout for the TCP idle connection. The value
      # can be set between 4 and 30 minutes. The default value is 4 minutes.
      # This element is only used when the protocol is set to TCP.
      attr_accessor :idle_timeout_in_minutes

      # @return [Boolean] Configures a virtual machine's endpoint for the
      # floating IP capability required to configure a SQL AlwaysOn
      # Availability Group. This setting is required when using the SQL
      # AlwaysOn Availability Groups in SQL server. This setting can't be
      # changed after you create the endpoint.
      attr_accessor :enable_floating_ip

      # @return [String] Gets the provisioning state of the PublicIP resource.
      # Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] The name of the resource that is unique within a
      # resource group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for LoadBalancingRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LoadBalancingRule',
          type: {
            name: 'Composite',
            class_name: 'LoadBalancingRule',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              frontend_ipconfiguration: {
                required: false,
                serialized_name: 'properties.frontendIPConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              backend_address_pool: {
                required: false,
                serialized_name: 'properties.backendAddressPool',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              probe: {
                required: false,
                serialized_name: 'properties.probe',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              protocol: {
                required: true,
                serialized_name: 'properties.protocol',
                type: {
                  name: 'String'
                }
              },
              load_distribution: {
                required: false,
                serialized_name: 'properties.loadDistribution',
                type: {
                  name: 'String'
                }
              },
              frontend_port: {
                required: true,
                serialized_name: 'properties.frontendPort',
                type: {
                  name: 'Number'
                }
              },
              backend_port: {
                required: false,
                serialized_name: 'properties.backendPort',
                type: {
                  name: 'Number'
                }
              },
              idle_timeout_in_minutes: {
                required: false,
                serialized_name: 'properties.idleTimeoutInMinutes',
                type: {
                  name: 'Number'
                }
              },
              enable_floating_ip: {
                required: false,
                serialized_name: 'properties.enableFloatingIP',
                type: {
                  name: 'Boolean'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
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