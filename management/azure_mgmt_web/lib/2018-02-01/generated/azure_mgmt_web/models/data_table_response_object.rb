# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # Data Table which defines columns and raw row values
    #
    class DataTableResponseObject

      include MsRestAzure

      # @return [String] Name of the table
      attr_accessor :table_name

      # @return [Array<DataTableResponseColumn>] List of columns with data
      # types
      attr_accessor :columns

      # @return [Array<Array<String>>] Raw row values
      attr_accessor :rows


      #
      # Mapper for DataTableResponseObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataTableResponseObject',
          type: {
            name: 'Composite',
            class_name: 'DataTableResponseObject',
            model_properties: {
              table_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tableName',
                type: {
                  name: 'String'
                }
              },
              columns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'columns',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DataTableResponseColumnElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DataTableResponseColumn'
                      }
                  }
                }
              },
              rows: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rows',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ArrayElementType',
                      type: {
                        name: 'Sequence',
                        element: {
                            client_side_validation: true,
                            required: false,
                            serialized_name: 'StringElementType',
                            type: {
                              name: 'String'
                            }
                        }
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
