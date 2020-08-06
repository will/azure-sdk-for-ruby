# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Input definition for planned failover.
    #
    class UnplannedFailoverInput

      include MsRestAzure

      # @return [UnplannedFailoverInputProperties] Planned failover input
      # properties
      attr_accessor :properties


      #
      # Mapper for UnplannedFailoverInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UnplannedFailoverInput',
          type: {
            name: 'Composite',
            class_name: 'UnplannedFailoverInput',
            model_properties: {
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'UnplannedFailoverInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
