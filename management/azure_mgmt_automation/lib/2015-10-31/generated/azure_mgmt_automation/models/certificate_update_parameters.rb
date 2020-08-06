# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # The parameters supplied to the update certificate operation.
    #
    class CertificateUpdateParameters

      include MsRestAzure

      # @return [String] Gets or sets the name of the certificate.
      attr_accessor :name

      # @return [String] Gets or sets the description of the certificate.
      attr_accessor :description


      #
      # Mapper for CertificateUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'CertificateUpdateParameters',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
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
