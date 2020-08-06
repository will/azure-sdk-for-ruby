# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_07_01
  module Models
    #
    # A Media Services account.
    #
    class MediaService < TrackedResource

      include MsRestAzure

      # @return The Media Services account ID.
      attr_accessor :media_service_id

      # @return [Array<StorageAccount>] The storage accounts for this resource.
      attr_accessor :storage_accounts


      #
      # Mapper for MediaService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MediaService',
          type: {
            name: 'Composite',
            class_name: 'MediaService',
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
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              media_service_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.mediaServiceId',
                type: {
                  name: 'String'
                }
              },
              storage_accounts: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.storageAccounts',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StorageAccountElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StorageAccount'
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
