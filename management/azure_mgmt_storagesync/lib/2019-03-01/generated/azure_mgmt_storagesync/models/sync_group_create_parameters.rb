# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorageSync::Mgmt::V2019_03_01
  module Models
    #
    # The parameters used when creating a sync group.
    #
    class SyncGroupCreateParameters < ProxyResource

      include MsRestAzure

      # @return The parameters used to create the sync group
      attr_accessor :properties


      #
      # Mapper for SyncGroupCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SyncGroupCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'SyncGroupCreateParameters',
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
