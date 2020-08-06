# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2019_06_01
  module Models
    #
    # The deleted share to be restored.
    #
    class DeletedShare

      include MsRestAzure

      # @return [String] Required. Identify the name of the deleted share that
      # will be restored.
      attr_accessor :deleted_share_name

      # @return [String] Required. Identify the version of the deleted share
      # that will be restored.
      attr_accessor :deleted_share_version


      #
      # Mapper for DeletedShare class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeletedShare',
          type: {
            name: 'Composite',
            class_name: 'DeletedShare',
            model_properties: {
              deleted_share_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'deletedShareName',
                type: {
                  name: 'String'
                }
              },
              deleted_share_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'deletedShareVersion',
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
