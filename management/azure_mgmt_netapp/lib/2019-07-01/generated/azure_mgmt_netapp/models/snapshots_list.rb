# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2019_07_01
  module Models
    #
    # List of Snapshots
    #
    class SnapshotsList

      include MsRestAzure

      # @return [Array<Snapshot>] A list of Snapshots
      attr_accessor :value


      #
      # Mapper for SnapshotsList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'snapshotsList',
          type: {
            name: 'Composite',
            class_name: 'SnapshotsList',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SnapshotElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Snapshot'
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
