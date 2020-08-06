# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_06_01
  module Models
    #
    # Connection state snapshot.
    #
    class ConnectionStateSnapshot

      include MsRestAzure

      # @return [ConnectionState] The connection state. Possible values
      # include: 'Reachable', 'Unreachable', 'Unknown'
      attr_accessor :connection_state

      # @return [DateTime] The start time of the connection snapshot.
      attr_accessor :start_time

      # @return [DateTime] The end time of the connection snapshot.
      attr_accessor :end_time

      # @return [EvaluationState] Connectivity analysis evaluation state.
      # Possible values include: 'NotStarted', 'InProgress', 'Completed'
      attr_accessor :evaluation_state

      # @return [Integer] Average latency in ms.
      attr_accessor :avg_latency_in_ms

      # @return [Integer] Minimum latency in ms.
      attr_accessor :min_latency_in_ms

      # @return [Integer] Maximum latency in ms.
      attr_accessor :max_latency_in_ms

      # @return [Integer] The number of sent probes.
      attr_accessor :probes_sent

      # @return [Integer] The number of failed probes.
      attr_accessor :probes_failed

      # @return [Array<ConnectivityHop>] List of hops between the source and
      # the destination.
      attr_accessor :hops


      #
      # Mapper for ConnectionStateSnapshot class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionStateSnapshot',
          type: {
            name: 'Composite',
            class_name: 'ConnectionStateSnapshot',
            model_properties: {
              connection_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectionState',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              evaluation_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'evaluationState',
                type: {
                  name: 'String'
                }
              },
              avg_latency_in_ms: {
                client_side_validation: true,
                required: false,
                serialized_name: 'avgLatencyInMs',
                type: {
                  name: 'Number'
                }
              },
              min_latency_in_ms: {
                client_side_validation: true,
                required: false,
                serialized_name: 'minLatencyInMs',
                type: {
                  name: 'Number'
                }
              },
              max_latency_in_ms: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxLatencyInMs',
                type: {
                  name: 'Number'
                }
              },
              probes_sent: {
                client_side_validation: true,
                required: false,
                serialized_name: 'probesSent',
                type: {
                  name: 'Number'
                }
              },
              probes_failed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'probesFailed',
                type: {
                  name: 'Number'
                }
              },
              hops: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'hops',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConnectivityHopElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectivityHop'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
