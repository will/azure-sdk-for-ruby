# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2018_12_01_preview
  module Models
    #
    # The JSON-serialized X509 Certificate.
    #
    class CertificateBodyDescription

      include MsRestAzure

      # @return [String] base-64 representation of the X509 leaf certificate
      # .cer file or just .pem file content.
      attr_accessor :certificate


      #
      # Mapper for CertificateBodyDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CertificateBodyDescription',
          type: {
            name: 'Composite',
            class_name: 'CertificateBodyDescription',
            model_properties: {
              certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'certificate',
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
