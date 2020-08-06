# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # The settings that will be leveraged for SAP table source partitioning.
    #
    class SapTablePartitionSettings

      include MsRestAzure

      # @return The name of the column that will be used for proceeding range
      # partitioning. Type: string (or Expression with resultType string).
      attr_accessor :partition_column_name

      # @return The maximum value of column specified in partitionColumnName
      # that will be used for proceeding range partitioning. Type: string (or
      # Expression with resultType string).
      attr_accessor :partition_upper_bound

      # @return The minimum value of column specified in partitionColumnName
      # that will be used for proceeding range partitioning. Type: string (or
      # Expression with resultType string).
      attr_accessor :partition_lower_bound

      # @return The maximum value of partitions the table will be split into.
      # Type: integer (or Expression with resultType string).
      attr_accessor :max_partitions_number


      #
      # Mapper for SapTablePartitionSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SapTablePartitionSettings',
          type: {
            name: 'Composite',
            class_name: 'SapTablePartitionSettings',
            model_properties: {
              partition_column_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'partitionColumnName',
                type: {
                  name: 'Object'
                }
              },
              partition_upper_bound: {
                client_side_validation: true,
                required: false,
                serialized_name: 'partitionUpperBound',
                type: {
                  name: 'Object'
                }
              },
              partition_lower_bound: {
                client_side_validation: true,
                required: false,
                serialized_name: 'partitionLowerBound',
                type: {
                  name: 'Object'
                }
              },
              max_partitions_number: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxPartitionsNumber',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
