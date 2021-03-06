# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Details about an operation related to logs.
    #
    class OperationLogSpecification

      include MsRestAzure

      # @return [String] The name of the log category.
      attr_accessor :name

      # @return [String] Localized display name.
      attr_accessor :display_name

      # @return [String] Blobs created in the customer storage account, per
      # hour.
      attr_accessor :blob_duration


      #
      # Mapper for OperationLogSpecification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationLogSpecification',
          type: {
            name: 'Composite',
            class_name: 'OperationLogSpecification',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              blob_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'blobDuration',
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
