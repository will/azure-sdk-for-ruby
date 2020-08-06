# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AlertsManagement::Mgmt::V2018_05_05_preview
  module Models
    #
    # Summary of alerts by state
    #
    class AlertsSummaryPropertiesSummaryByState < AlertsSummaryByState

      include MsRestAzure


      #
      # Mapper for AlertsSummaryPropertiesSummaryByState class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'alertsSummaryProperties_summaryByState',
          type: {
            name: 'Composite',
            class_name: 'AlertsSummaryPropertiesSummaryByState',
            model_properties: {
              new: {
                client_side_validation: true,
                required: false,
                serialized_name: 'new',
                type: {
                  name: 'Number'
                }
              },
              acknowledged: {
                client_side_validation: true,
                required: false,
                serialized_name: 'acknowledged',
                type: {
                  name: 'Number'
                }
              },
              closed: {
                client_side_validation: true,
                required: false,
                serialized_name: 'closed',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
