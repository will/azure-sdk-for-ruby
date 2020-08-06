# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Output of the task that gets TDE certificates in Base64 encoded format.
    #
    class GetTdeCertificatesSqlTaskOutput

      include MsRestAzure

      # @return [Hash{String => Array<String>}] Mapping from certificate name
      # to base 64 encoded format.
      attr_accessor :base64encoded_certificates

      # @return [Array<ReportableException>] Validation errors
      attr_accessor :validation_errors


      #
      # Mapper for GetTdeCertificatesSqlTaskOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GetTdeCertificatesSqlTaskOutput',
          type: {
            name: 'Composite',
            class_name: 'GetTdeCertificatesSqlTaskOutput',
            model_properties: {
              base64encoded_certificates: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'base64EncodedCertificates',
                type: {
                  name: 'Dictionary',
                  value: {
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
              },
              validation_errors: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'validationErrors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ReportableExceptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ReportableException'
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
