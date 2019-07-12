# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Input for the service task to check for OCI drivers.
    #
    class CheckOCIDriverTaskInput

      include MsRestAzure

      # @return [String] Version of the source server to check against.
      # Optional.
      attr_accessor :server_version


      #
      # Mapper for CheckOCIDriverTaskInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckOCIDriverTaskInput',
          type: {
            name: 'Composite',
            class_name: 'CheckOCIDriverTaskInput',
            model_properties: {
              server_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serverVersion',
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
