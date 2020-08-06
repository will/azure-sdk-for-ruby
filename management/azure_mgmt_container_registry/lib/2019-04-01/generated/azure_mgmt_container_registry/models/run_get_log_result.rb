# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_04_01
  module Models
    #
    # The result of get log link operation.
    #
    class RunGetLogResult

      include MsRestAzure

      # @return [String] The link to logs for a run on a azure container
      # registry.
      attr_accessor :log_link


      #
      # Mapper for RunGetLogResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RunGetLogResult',
          type: {
            name: 'Composite',
            class_name: 'RunGetLogResult',
            model_properties: {
              log_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'logLink',
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
