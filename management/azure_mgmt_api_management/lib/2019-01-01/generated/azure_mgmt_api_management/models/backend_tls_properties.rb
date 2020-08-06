# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_01_01
  module Models
    #
    # Properties controlling TLS Certificate Validation.
    #
    class BackendTlsProperties

      include MsRestAzure

      # @return [Boolean] Flag indicating whether SSL certificate chain
      # validation should be done when using self-signed certificates for this
      # backend host. Default value: true .
      attr_accessor :validate_certificate_chain

      # @return [Boolean] Flag indicating whether SSL certificate name
      # validation should be done when using self-signed certificates for this
      # backend host. Default value: true .
      attr_accessor :validate_certificate_name


      #
      # Mapper for BackendTlsProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackendTlsProperties',
          type: {
            name: 'Composite',
            class_name: 'BackendTlsProperties',
            model_properties: {
              validate_certificate_chain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'validateCertificateChain',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              validate_certificate_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'validateCertificateName',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
