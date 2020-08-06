# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Initial replication details.
    #
    class InitialReplicationDetails

      include MsRestAzure

      # @return [String] Initial replication type.
      attr_accessor :initial_replication_type

      # @return [String] The initial replication progress percentage.
      attr_accessor :initial_replication_progress_percentage


      #
      # Mapper for InitialReplicationDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InitialReplicationDetails',
          type: {
            name: 'Composite',
            class_name: 'InitialReplicationDetails',
            model_properties: {
              initial_replication_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'initialReplicationType',
                type: {
                  name: 'String'
                }
              },
              initial_replication_progress_percentage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'initialReplicationProgressPercentage',
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
