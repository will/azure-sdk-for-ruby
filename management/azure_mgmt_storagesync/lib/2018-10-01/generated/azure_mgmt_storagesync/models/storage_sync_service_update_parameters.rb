# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2018_10_01
  module Models
    #
    # Parameters for updating an Storage sync service.
    #
    class StorageSyncServiceUpdateParameters

      include MsRestAzure

      # @return [Hash{String => String}] The user-specified tags associated
      # with the storage sync service.
      attr_accessor :tags

      # @return The properties of the storage sync service.
      attr_accessor :properties


      #
      # Mapper for StorageSyncServiceUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageSyncServiceUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'StorageSyncServiceUpdateParameters',
            model_properties: {
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
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
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
