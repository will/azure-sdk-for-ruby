# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # The Deflate compression method used on a dataset.
    #
    class DatasetDeflateCompression < DatasetCompression

      include MsRestAzure


      def initialize
        @type = "Deflate"
      end

      attr_accessor :type

      # @return The Deflate compression level.
      attr_accessor :level


      #
      # Mapper for DatasetDeflateCompression class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Deflate',
          type: {
            name: 'Composite',
            class_name: 'DatasetDeflateCompression',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'level',
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
