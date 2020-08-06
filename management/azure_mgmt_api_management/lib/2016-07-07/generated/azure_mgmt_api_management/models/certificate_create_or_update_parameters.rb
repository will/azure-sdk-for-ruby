# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_07_07
  module Models
    #
    # Parameters supplied to the CreateOrUpdate certificate operation.
    #
    class CertificateCreateOrUpdateParameters

      include MsRestAzure

      # @return [String] Base 64 encoded certificate using the
      # application/x-pkcs12 representation.
      attr_accessor :data

      # @return [String] Password for the Certificate
      attr_accessor :password


      #
      # Mapper for CertificateCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'CertificateCreateOrUpdateParameters',
            model_properties: {
              data: {
                client_side_validation: true,
                required: true,
                serialized_name: 'data',
                type: {
                  name: 'String'
                }
              },
              password: {
                client_side_validation: true,
                required: true,
                serialized_name: 'password',
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
