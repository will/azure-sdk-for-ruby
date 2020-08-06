# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2017_09_01_preview
  module Models
    #
    # At least one of manual or autoScale settings must be specified. Only one
    # of manual or autoScale settings can be specified. If autoScale settings
    # are specified, the system automatically scales the cluster up and down
    # (within the supplied limits) based on the pending jobs on the cluster.
    #
    class ScaleSettings

      include MsRestAzure

      # @return [ManualScaleSettings] The scale for the cluster by manual
      # settings.
      attr_accessor :manual

      # @return [AutoScaleSettings] The scale for the cluster by autoscale
      # settings.
      attr_accessor :auto_scale


      #
      # Mapper for ScaleSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ScaleSettings',
          type: {
            name: 'Composite',
            class_name: 'ScaleSettings',
            model_properties: {
              manual: {
                client_side_validation: true,
                required: false,
                serialized_name: 'manual',
                type: {
                  name: 'Composite',
                  class_name: 'ManualScaleSettings'
                }
              },
              auto_scale: {
                client_side_validation: true,
                required: false,
                serialized_name: 'autoScale',
                type: {
                  name: 'Composite',
                  class_name: 'AutoScaleSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
