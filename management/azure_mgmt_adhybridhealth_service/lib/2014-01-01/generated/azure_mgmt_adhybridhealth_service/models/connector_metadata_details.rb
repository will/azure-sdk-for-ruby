# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ADHybridHealthService::Mgmt::V2014_01_01
  module Models
    #
    # Details of the connector.
    #
    class ConnectorMetadataDetails

      include MsRestAzure

      # @return [String] The Connector Id.
      attr_accessor :connector_id

      # @return [String] The Connector Display Name
      attr_accessor :connector_display_name


      #
      # Mapper for ConnectorMetadataDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnectorMetadataDetails',
          type: {
            name: 'Composite',
            class_name: 'ConnectorMetadataDetails',
            model_properties: {
              connector_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectorId',
                type: {
                  name: 'String'
                }
              },
              connector_display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectorDisplayName',
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
