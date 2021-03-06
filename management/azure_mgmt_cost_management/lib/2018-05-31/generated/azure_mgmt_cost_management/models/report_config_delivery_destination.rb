# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2018_05_31
  module Models
    #
    # The destination information for the delivery of the report.
    #
    class ReportConfigDeliveryDestination

      include MsRestAzure

      # @return [String] The resource id of the storage account where reports
      # will be delivered.
      attr_accessor :resource_id

      # @return [String] The name of the container where reports will be
      # uploaded.
      attr_accessor :container

      # @return [String] The name of the directory where reports will be
      # uploaded.
      attr_accessor :root_folder_path


      #
      # Mapper for ReportConfigDeliveryDestination class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReportConfigDeliveryDestination',
          type: {
            name: 'Composite',
            class_name: 'ReportConfigDeliveryDestination',
            model_properties: {
              resource_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              container: {
                client_side_validation: true,
                required: true,
                serialized_name: 'container',
                type: {
                  name: 'String'
                }
              },
              root_folder_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rootFolderPath',
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
