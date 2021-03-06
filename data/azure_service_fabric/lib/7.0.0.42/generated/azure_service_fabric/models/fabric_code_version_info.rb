# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V7_0_0_42
  module Models
    #
    # Information about a Service Fabric code version.
    #
    class FabricCodeVersionInfo

      include MsRestAzure

      # @return [String] The product version of Service Fabric.
      attr_accessor :code_version


      #
      # Mapper for FabricCodeVersionInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FabricCodeVersionInfo',
          type: {
            name: 'Composite',
            class_name: 'FabricCodeVersionInfo',
            model_properties: {
              code_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CodeVersion',
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
