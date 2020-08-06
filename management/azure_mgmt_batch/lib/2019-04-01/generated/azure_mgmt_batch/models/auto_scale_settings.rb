# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Batch::Mgmt::V2019_04_01
  module Models
    #
    # AutoScale settings for the pool.
    #
    #
    class AutoScaleSettings

      include MsRestAzure

      # @return [String] A formula for the desired number of compute nodes in
      # the pool.
      attr_accessor :formula

      # @return [Duration] The time interval at which to automatically adjust
      # the pool size according to the autoscale formula. If omitted, the
      # default value is 15 minutes (PT15M).
      attr_accessor :evaluation_interval


      #
      # Mapper for AutoScaleSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AutoScaleSettings',
          type: {
            name: 'Composite',
            class_name: 'AutoScaleSettings',
            model_properties: {
              formula: {
                client_side_validation: true,
                required: true,
                serialized_name: 'formula',
                type: {
                  name: 'String'
                }
              },
              evaluation_interval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'evaluationInterval',
                type: {
                  name: 'TimeSpan'
                }
              }
            }
          }
        }
      end
    end
  end
end
