# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Labservices::Mgmt::V2018_10_15
  module Models
    #
    # Status Details of the long running operation for an environment
    #
    class OperationStatusResponse

      include MsRestAzure

      # @return [String] status of the long running operation for an
      # environment
      attr_accessor :status


      #
      # Mapper for OperationStatusResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationStatusResponse',
          type: {
            name: 'Composite',
            class_name: 'OperationStatusResponse',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
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
