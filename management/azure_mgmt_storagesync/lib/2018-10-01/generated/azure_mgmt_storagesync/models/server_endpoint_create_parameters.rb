# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_10_01
  module Models
    #
    # The parameters used when creating a server endpoint.
    #
    class ServerEndpointCreateParameters < ProxyResource

      include MsRestAzure

      # @return [String] Server Local path.
      attr_accessor :server_local_path

      # @return [Enum] Cloud Tiering. Possible values include: 'on', 'off'
      attr_accessor :cloud_tiering

      # @return [Integer] Level of free space to be maintained by Cloud Tiering
      # if it is enabled.
      attr_accessor :volume_free_space_percent

      # @return [Integer] Tier files older than days.
      attr_accessor :tier_files_older_than_days

      # @return [String] Friendly Name
      attr_accessor :friendly_name

      # @return [String] Server Resource Id.
      attr_accessor :server_resource_id

      # @return [Enum] Offline data transfer. Possible values include: 'on',
      # 'off'
      attr_accessor :offline_data_transfer

      # @return [String] Offline data transfer share name
      attr_accessor :offline_data_transfer_share_name


      #
      # Mapper for ServerEndpointCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServerEndpointCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'ServerEndpointCreateParameters',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              server_local_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serverLocalPath',
                type: {
                  name: 'String'
                }
              },
              cloud_tiering: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.cloudTiering',
                type: {
                  name: 'String'
                }
              },
              volume_free_space_percent: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.volumeFreeSpacePercent',
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              tier_files_older_than_days: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.tierFilesOlderThanDays',
                constraints: {
                  InclusiveMaximum: 2147483647,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.friendlyName',
                type: {
                  name: 'String'
                }
              },
              server_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serverResourceId',
                type: {
                  name: 'String'
                }
              },
              offline_data_transfer: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.offlineDataTransfer',
                type: {
                  name: 'String'
                }
              },
              offline_data_transfer_share_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.offlineDataTransferShareName',
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
