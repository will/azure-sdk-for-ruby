# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2019_11_09
  module Models
    #
    # A class that contains database statistics information.
    #
    class DatabaseStatistics

      include MsRestAzure

      # @return [Float] The database size - the total size of compressed data
      # and index in bytes.
      attr_accessor :size


      #
      # Mapper for DatabaseStatistics class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseStatistics',
          type: {
            name: 'Composite',
            class_name: 'DatabaseStatistics',
            model_properties: {
              size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'size',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
