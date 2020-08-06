# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Synapse::Mgmt::V2019_06_01_preview
  module Models
    #
    # Get monitoring data response.
    #
    class IntegrationRuntimeMonitoringData

      include MsRestAzure

      # @return [String] Integration runtime name.
      attr_accessor :name

      # @return [Array<IntegrationRuntimeNodeMonitoringData>] Integration
      # runtime node monitoring data.
      attr_accessor :nodes


      #
      # Mapper for IntegrationRuntimeMonitoringData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IntegrationRuntimeMonitoringData',
          type: {
            name: 'Composite',
            class_name: 'IntegrationRuntimeMonitoringData',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              nodes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nodes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'IntegrationRuntimeNodeMonitoringDataElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IntegrationRuntimeNodeMonitoringData'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
