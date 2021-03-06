# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The additional details related to the data related statistics of a job.
    # Currently applicable only for Backup, Clone and Restore jobs.
    #
    class DataStatistics

      include MsRestAzure

      # @return [Integer] The total bytes of data to be processed, as part of
      # the job.
      attr_accessor :total_data

      # @return [Integer] The number of bytes of data processed till now, as
      # part of the job.
      attr_accessor :processed_data

      # @return [Integer] The number of bytes of data written to cloud, as part
      # of the job.
      attr_accessor :cloud_data

      # @return [Integer] The average throughput of data processed(bytes/sec),
      # as part of the job.
      attr_accessor :throughput


      #
      # Mapper for DataStatistics class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataStatistics',
          type: {
            name: 'Composite',
            class_name: 'DataStatistics',
            model_properties: {
              total_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'totalData',
                type: {
                  name: 'Number'
                }
              },
              processed_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'processedData',
                type: {
                  name: 'Number'
                }
              },
              cloud_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'cloudData',
                type: {
                  name: 'Number'
                }
              },
              throughput: {
                client_side_validation: true,
                required: false,
                serialized_name: 'throughput',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
