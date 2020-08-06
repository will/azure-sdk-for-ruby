# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2020_02_01
  module Models
    #
    # Parameters to be applied to the cluster-autoscaler when enabled
    #
    class ManagedClusterPropertiesAutoScalerProfile

      include MsRestAzure

      # @return [String]
      attr_accessor :scan_interval

      # @return [String]
      attr_accessor :scale_down_delay_after_add

      # @return [String]
      attr_accessor :scale_down_delay_after_delete

      # @return [String]
      attr_accessor :scale_down_delay_after_failure

      # @return [String]
      attr_accessor :scale_down_unneeded_time

      # @return [String]
      attr_accessor :scale_down_unready_time

      # @return [String]
      attr_accessor :scale_down_utilization_threshold

      # @return [String]
      attr_accessor :max_graceful_termination_sec


      #
      # Mapper for ManagedClusterPropertiesAutoScalerProfile class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedClusterProperties_autoScalerProfile',
          type: {
            name: 'Composite',
            class_name: 'ManagedClusterPropertiesAutoScalerProfile',
            model_properties: {
              scan_interval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scan-interval',
                type: {
                  name: 'String'
                }
              },
              scale_down_delay_after_add: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scale-down-delay-after-add',
                type: {
                  name: 'String'
                }
              },
              scale_down_delay_after_delete: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scale-down-delay-after-delete',
                type: {
                  name: 'String'
                }
              },
              scale_down_delay_after_failure: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scale-down-delay-after-failure',
                type: {
                  name: 'String'
                }
              },
              scale_down_unneeded_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scale-down-unneeded-time',
                type: {
                  name: 'String'
                }
              },
              scale_down_unready_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scale-down-unready-time',
                type: {
                  name: 'String'
                }
              },
              scale_down_utilization_threshold: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scale-down-utilization-threshold',
                type: {
                  name: 'String'
                }
              },
              max_graceful_termination_sec: {
                client_side_validation: true,
                required: false,
                serialized_name: 'max-graceful-termination-sec',
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
