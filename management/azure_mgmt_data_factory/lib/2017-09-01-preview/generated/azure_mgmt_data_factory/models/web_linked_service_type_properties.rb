# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # Base definition of WebLinkedServiceTypeProperties, this typeProperties is
    # polymorphic based on authenticationType, so not flattened in SDK models.
    #
    class WebLinkedServiceTypeProperties

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["ClientCertificate"] = "WebClientCertificateAuthentication"
      @@discriminatorMap["Basic"] = "WebBasicAuthentication"
      @@discriminatorMap["Anonymous"] = "WebAnonymousAuthentication"

      def initialize
        @authenticationType = "WebLinkedServiceTypeProperties"
      end

      attr_accessor :authenticationType

      # @return The URL of the web service endpoint, e.g.
      # http://www.microsoft.com . Type: string (or Expression with resultType
      # string).
      attr_accessor :url


      #
      # Mapper for WebLinkedServiceTypeProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WebLinkedServiceTypeProperties',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'authenticationType',
            uber_parent: 'WebLinkedServiceTypeProperties',
            class_name: 'WebLinkedServiceTypeProperties',
            model_properties: {
              url: {
                client_side_validation: true,
                required: true,
                serialized_name: 'url',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
