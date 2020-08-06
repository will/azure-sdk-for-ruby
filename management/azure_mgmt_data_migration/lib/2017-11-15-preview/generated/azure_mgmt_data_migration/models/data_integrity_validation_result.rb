# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2017_11_15_preview
  module Models
    #
    # Results for checksum based Data Integrity validation results
    #
    class DataIntegrityValidationResult

      include MsRestAzure

      # @return [Hash{String => String}] List of failed table names of source
      # and target pair
      attr_accessor :failed_objects

      # @return [ValidationError] List of errors that happened while performing
      # data integrity validation
      attr_accessor :validation_errors


      #
      # Mapper for DataIntegrityValidationResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataIntegrityValidationResult',
          type: {
            name: 'Composite',
            class_name: 'DataIntegrityValidationResult',
            model_properties: {
              failed_objects: {
                client_side_validation: true,
                required: false,
                serialized_name: 'failedObjects',
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
              validation_errors: {
                client_side_validation: true,
                required: false,
                serialized_name: 'validationErrors',
                type: {
                  name: 'Composite',
                  class_name: 'ValidationError'
                }
              }
            }
          }
        }
      end
    end
  end
end
