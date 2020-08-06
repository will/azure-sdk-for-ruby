# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # Describes the ICMP configuration.
    #
    class ConnectionMonitorIcmpConfiguration

      include MsRestAzure

      # @return [Boolean] Value indicating whether path evaluation with trace
      # route should be disabled.
      attr_accessor :disable_trace_route


      #
      # Mapper for ConnectionMonitorIcmpConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionMonitorIcmpConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ConnectionMonitorIcmpConfiguration',
            model_properties: {
              disable_trace_route: {
                client_side_validation: true,
                required: false,
                serialized_name: 'disableTraceRoute',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
