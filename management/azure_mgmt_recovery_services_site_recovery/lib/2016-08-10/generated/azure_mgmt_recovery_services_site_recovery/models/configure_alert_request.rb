# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Request to configure alerts for the system.
    #
    class ConfigureAlertRequest

      include MsRestAzure

      # @return [ConfigureAlertRequestProperties] The properties of a configure
      # alert request.
      attr_accessor :properties


      #
      # Mapper for ConfigureAlertRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConfigureAlertRequest',
          type: {
            name: 'Composite',
            class_name: 'ConfigureAlertRequest',
            model_properties: {
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'ConfigureAlertRequestProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
