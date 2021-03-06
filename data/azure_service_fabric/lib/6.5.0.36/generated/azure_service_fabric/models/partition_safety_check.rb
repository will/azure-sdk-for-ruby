# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Represents a safety check for the service partition being performed by
    # service fabric before continuing with operations.
    #
    class PartitionSafetyCheck < SafetyCheck

      include MsRestAzure


      def initialize
        @Kind = "PartitionSafetyCheck"
      end

      attr_accessor :Kind

      # @return Id of the partition which is undergoing the safety check.
      attr_accessor :partition_id


      #
      # Mapper for PartitionSafetyCheck class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PartitionSafetyCheck',
          type: {
            name: 'Composite',
            class_name: 'PartitionSafetyCheck',
            model_properties: {
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              partition_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PartitionId',
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
