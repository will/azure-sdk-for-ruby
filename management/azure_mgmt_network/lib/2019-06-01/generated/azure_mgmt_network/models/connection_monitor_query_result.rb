# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_06_01
  module Models
    #
    # List of connection states snapshots.
    #
    class ConnectionMonitorQueryResult

      include MsRestAzure

      # @return [ConnectionMonitorSourceStatus] Status of connection monitor
      # source. Possible values include: 'Unknown', 'Active', 'Inactive'
      attr_accessor :source_status

      # @return [Array<ConnectionStateSnapshot>] Information about connection
      # states.
      attr_accessor :states


      #
      # Mapper for ConnectionMonitorQueryResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectionMonitorQueryResult',
          type: {
            name: 'Composite',
            class_name: 'ConnectionMonitorQueryResult',
            model_properties: {
              source_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceStatus',
                type: {
                  name: 'String'
                }
              },
              states: {
                client_side_validation: true,
                required: false,
                serialized_name: 'states',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ConnectionStateSnapshotElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ConnectionStateSnapshot'
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
