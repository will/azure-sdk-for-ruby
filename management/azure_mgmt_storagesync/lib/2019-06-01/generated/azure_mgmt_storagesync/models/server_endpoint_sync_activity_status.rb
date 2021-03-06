# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2019_06_01
  module Models
    #
    # Sync Session status object.
    #
    class ServerEndpointSyncActivityStatus

      include MsRestAzure

      # @return [DateTime] Timestamp when properties were updated
      attr_accessor :timestamp

      # @return [Integer] Per item error count
      attr_accessor :per_item_error_count

      # @return [Integer] Applied item count.
      attr_accessor :applied_item_count

      # @return [Integer] Total item count (if available)
      attr_accessor :total_item_count

      # @return [Integer] Applied bytes
      attr_accessor :applied_bytes

      # @return [Integer] Total bytes (if available)
      attr_accessor :total_bytes


      #
      # Mapper for ServerEndpointSyncActivityStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServerEndpointSyncActivityStatus',
          type: {
            name: 'Composite',
            class_name: 'ServerEndpointSyncActivityStatus',
            model_properties: {
              timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'timestamp',
                type: {
                  name: 'DateTime'
                }
              },
              per_item_error_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'perItemErrorCount',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              applied_item_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'appliedItemCount',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              total_item_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'totalItemCount',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              applied_bytes: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'appliedBytes',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              total_bytes: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'totalBytes',
                constraints: {
                  InclusiveMinimum: 0
                },
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
