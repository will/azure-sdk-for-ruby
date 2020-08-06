# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # The object defining the schema of the exported Api Detail
    #
    class ApiExportResultValue

      include MsRestAzure

      # @return [String] Link to the Storage Blob containing the result of the
      # export operation. The Blob Uri is only valid for 5 minutes.
      attr_accessor :link


      #
      # Mapper for ApiExportResultValue class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiExportResult_value',
          type: {
            name: 'Composite',
            class_name: 'ApiExportResultValue',
            model_properties: {
              link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'link',
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
