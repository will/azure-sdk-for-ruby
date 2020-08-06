# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2015_05_01_preview
  module Models
    #
    # Properties of table in sync group schema.
    #
    class SyncGroupSchemaTable

      include MsRestAzure

      # @return [Array<SyncGroupSchemaTableColumn>] List of columns in sync
      # group schema.
      attr_accessor :columns

      # @return [String] Quoted name of sync group schema table.
      attr_accessor :quoted_name


      #
      # Mapper for SyncGroupSchemaTable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SyncGroupSchemaTable',
          type: {
            name: 'Composite',
            class_name: 'SyncGroupSchemaTable',
            model_properties: {
              columns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'columns',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SyncGroupSchemaTableColumnElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SyncGroupSchemaTableColumn'
                      }
                  }
                }
              },
              quoted_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'quotedName',
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
