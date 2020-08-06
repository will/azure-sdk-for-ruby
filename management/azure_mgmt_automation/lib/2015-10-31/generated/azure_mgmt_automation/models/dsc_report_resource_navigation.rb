# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # Navigation for DSC Report Resource.
    #
    class DscReportResourceNavigation

      include MsRestAzure

      # @return [String] Gets or sets the ID of the resource to navigate to.
      attr_accessor :resource_id


      #
      # Mapper for DscReportResourceNavigation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DscReportResourceNavigation',
          type: {
            name: 'Composite',
            class_name: 'DscReportResourceNavigation',
            model_properties: {
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceId',
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
