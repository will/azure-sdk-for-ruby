# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # The settings that will be leveraged for SAP HANA source partitioning.
    #
    class SapHanaPartitionSettings

      include MsRestAzure

      # @return The name of the column that will be used for proceeding range
      # partitioning. Type: string (or Expression with resultType string).
      attr_accessor :partition_column_name


      #
      # Mapper for SapHanaPartitionSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SapHanaPartitionSettings',
          type: {
            name: 'Composite',
            class_name: 'SapHanaPartitionSettings',
            model_properties: {
              partition_column_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'partitionColumnName',
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
