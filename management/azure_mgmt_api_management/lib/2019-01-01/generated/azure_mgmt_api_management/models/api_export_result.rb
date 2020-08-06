# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_01_01
  module Models
    #
    # API Export result.
    #
    class ApiExportResult

      include MsRestAzure

      # @return [String] ResourceId of the API which was exported.
      attr_accessor :id

      # @return [ExportResultFormat] Format in which the Api Details are
      # exported to the Storage Blob with Sas Key valid for 5 minutes. Possible
      # values include: 'Swagger', 'Wsdl', 'Wadl', 'OpenApi'
      attr_accessor :export_result_format

      # @return [ApiExportResultValue] The object defining the schema of the
      # exported Api Detail
      attr_accessor :value


      #
      # Mapper for ApiExportResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiExportResult',
          type: {
            name: 'Composite',
            class_name: 'ApiExportResult',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              export_result_format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'format',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Composite',
                  class_name: 'ApiExportResultValue'
                }
              }
            }
          }
        }
      end
    end
  end
end
