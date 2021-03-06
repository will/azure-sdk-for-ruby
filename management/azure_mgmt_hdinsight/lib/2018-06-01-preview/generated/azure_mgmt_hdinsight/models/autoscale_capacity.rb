# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2018_06_01_preview
  module Models
    #
    # The load-based autoscale request parameters
    #
    class AutoscaleCapacity

      include MsRestAzure

      # @return [Integer] The minimum instance count of the cluster
      attr_accessor :min_instance_count

      # @return [Integer] The maximum instance count of the cluster
      attr_accessor :max_instance_count


      #
      # Mapper for AutoscaleCapacity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AutoscaleCapacity',
          type: {
            name: 'Composite',
            class_name: 'AutoscaleCapacity',
            model_properties: {
              min_instance_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'minInstanceCount',
                type: {
                  name: 'Number'
                }
              },
              max_instance_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxInstanceCount',
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
