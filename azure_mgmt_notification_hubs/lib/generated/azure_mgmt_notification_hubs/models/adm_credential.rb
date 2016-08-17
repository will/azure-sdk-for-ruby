# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::NotificationHubs
  module Models
    #
    # Description of a NotificationHub AdmCredential.
    #
    class AdmCredential

      include MsRestAzure

      # @return [AdmCredentialProperties] Gets or sets properties of
      # NotificationHub AdmCredential.
      attr_accessor :properties


      #
      # Mapper for AdmCredential class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AdmCredential',
          type: {
            name: 'Composite',
            class_name: 'AdmCredential',
            model_properties: {
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'AdmCredentialProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end