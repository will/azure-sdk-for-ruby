# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_03_01
  module Models
    #
    # Performance counters reporting settings.
    #
    class PerformanceCountersSettings

      include MsRestAzure

      # @return [AppInsightsReference] Specifies Azure Application Insights
      # information for performance counters reporting. If provided, Batch AI
      # will upload node performance counters to the corresponding Azure
      # Application Insights account.
      attr_accessor :app_insights_reference


      #
      # Mapper for PerformanceCountersSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PerformanceCountersSettings',
          type: {
            name: 'Composite',
            class_name: 'PerformanceCountersSettings',
            model_properties: {
              app_insights_reference: {
                client_side_validation: true,
                required: true,
                serialized_name: 'appInsightsReference',
                type: {
                  name: 'Composite',
                  class_name: 'AppInsightsReference'
                }
              }
            }
          }
        }
      end
    end
  end
end
