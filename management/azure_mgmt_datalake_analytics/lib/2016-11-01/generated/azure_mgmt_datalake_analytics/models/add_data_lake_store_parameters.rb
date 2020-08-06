# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataLakeAnalytics::Mgmt::V2016_11_01
  module Models
    #
    # The parameters used to add a new Data Lake Store account.
    #
    class AddDataLakeStoreParameters

      include MsRestAzure

      # @return [String] The optional suffix for the Data Lake Store account.
      attr_accessor :suffix


      #
      # Mapper for AddDataLakeStoreParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AddDataLakeStoreParameters',
          type: {
            name: 'Composite',
            class_name: 'AddDataLakeStoreParameters',
            model_properties: {
              suffix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.suffix',
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
