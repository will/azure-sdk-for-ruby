# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2015_05_01_preview
  module Models
    #
    # Properties of the sync database id.
    #
    class SyncDatabaseIdProperties

      include MsRestAzure

      # @return [String] ARM resource id of sync database.
      attr_accessor :id


      #
      # Mapper for SyncDatabaseIdProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SyncDatabaseIdProperties',
          type: {
            name: 'Composite',
            class_name: 'SyncDatabaseIdProperties',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
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
