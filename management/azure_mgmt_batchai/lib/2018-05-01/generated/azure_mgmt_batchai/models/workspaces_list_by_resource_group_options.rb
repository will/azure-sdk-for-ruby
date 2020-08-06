# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_05_01
  module Models
    #
    # Additional parameters for list_by_resource_group operation.
    #
    class WorkspacesListByResourceGroupOptions

      include MsRestAzure

      # @return [Integer] The maximum number of items to return in the
      # response. A maximum of 1000 files can be returned. Default value: 1000
      # .
      attr_accessor :max_results


      #
      # Mapper for WorkspacesListByResourceGroupOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          type: {
            name: 'Composite',
            class_name: 'WorkspacesListByResourceGroupOptions',
            model_properties: {
              max_results: {
                client_side_validation: true,
                required: false,
                default_value: 1000,
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
