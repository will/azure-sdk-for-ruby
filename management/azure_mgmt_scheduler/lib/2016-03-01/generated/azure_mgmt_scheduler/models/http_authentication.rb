# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Scheduler::Mgmt::V2016_03_01
  module Models
    #
    # Model object.
    #
    #
    class HttpAuthentication

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["ClientCertificate"] = "ClientCertAuthentication"
      @@discriminatorMap["Basic"] = "BasicAuthentication"
      @@discriminatorMap["ActiveDirectoryOAuth"] = "OAuthAuthentication"

      def initialize
        @type = "HttpAuthentication"
      end

      attr_accessor :type


      #
      # Mapper for HttpAuthentication class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HttpAuthentication',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'HttpAuthentication',
            class_name: 'HttpAuthentication',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
