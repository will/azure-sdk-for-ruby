# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PolicyInsights::Mgmt::V2018_07_01_preview
  module Models
    #
    # Error response.
    #
    class QueryFailure

      include MsRestAzure

      # @return [QueryFailureError] Error definition.
      attr_accessor :error


      #
      # Mapper for QueryFailure class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QueryFailure',
          type: {
            name: 'Composite',
            class_name: 'QueryFailure',
            model_properties: {
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'QueryFailureError'
                }
              }
            }
          }
        }
      end
    end
  end
end
