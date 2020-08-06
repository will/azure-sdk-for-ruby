# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_03_01
  module Models
    #
    # LogAnalytics output properties
    #
    class LogAnalyticsOutput

      include MsRestAzure

      # @return [String] Output file Uri path to blob container.
      attr_accessor :output


      #
      # Mapper for LogAnalyticsOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LogAnalyticsOutput',
          type: {
            name: 'Composite',
            class_name: 'LogAnalyticsOutput',
            model_properties: {
              output: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'output',
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
