# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_10_01
  module Models
    #
    # ServerEndpoint Health object.
    #
    class ServerEndpointHealth

      include MsRestAzure

      # @return [Enum] Download Health Status. Possible values include:
      # 'Healthy', 'Error', 'SyncBlockedForRestore',
      # 'SyncBlockedForChangeDetectionPostRestore', 'NoActivity'
      attr_accessor :download_health

      # @return [Enum] Upload Health Status. Possible values include:
      # 'Healthy', 'Error', 'SyncBlockedForRestore',
      # 'SyncBlockedForChangeDetectionPostRestore', 'NoActivity'
      attr_accessor :upload_health

      # @return [Enum] Combined Health Status. Possible values include:
      # 'Healthy', 'Error', 'SyncBlockedForRestore',
      # 'SyncBlockedForChangeDetectionPostRestore', 'NoActivity'
      attr_accessor :combined_health

      # @return [DateTime] Last Updated Timestamp
      attr_accessor :last_updated_timestamp

      # @return [SyncSessionStatus] Upload Status
      attr_accessor :upload_status

      # @return [SyncSessionStatus] Download Status
      attr_accessor :download_status

      # @return [SyncProgressStatus] Current progress
      attr_accessor :current_progress

      # @return [Enum] Offline Data Transfer State. Possible values include:
      # 'InProgress', 'Stopping', 'NotRunning', 'Complete'
      attr_accessor :offline_data_transfer_status


      #
      # Mapper for ServerEndpointHealth class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServerEndpointHealth',
          type: {
            name: 'Composite',
            class_name: 'ServerEndpointHealth',
            model_properties: {
              download_health: {
                client_side_validation: true,
                required: false,
                serialized_name: 'downloadHealth',
                type: {
                  name: 'String'
                }
              },
              upload_health: {
                client_side_validation: true,
                required: false,
                serialized_name: 'uploadHealth',
                type: {
                  name: 'String'
                }
              },
              combined_health: {
                client_side_validation: true,
                required: false,
                serialized_name: 'combinedHealth',
                type: {
                  name: 'String'
                }
              },
              last_updated_timestamp: {
                client_side_validation: true,
                required: false,
                serialized_name: 'lastUpdatedTimestamp',
                type: {
                  name: 'DateTime'
                }
              },
              upload_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'uploadStatus',
                type: {
                  name: 'Composite',
                  class_name: 'SyncSessionStatus'
                }
              },
              download_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'downloadStatus',
                type: {
                  name: 'Composite',
                  class_name: 'SyncSessionStatus'
                }
              },
              current_progress: {
                client_side_validation: true,
                required: false,
                serialized_name: 'currentProgress',
                type: {
                  name: 'Composite',
                  class_name: 'SyncProgressStatus'
                }
              },
              offline_data_transfer_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'offlineDataTransferStatus',
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
