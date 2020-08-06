# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Base class to define the health summary of the resources contained under
    # an Arm resource.
    #
    class ResourceHealthSummary

      include MsRestAzure

      # @return [Integer] The count of total resources umder the container.
      attr_accessor :resource_count

      # @return [Array<HealthErrorSummary>] The list of summary of health
      # errors across the resources under the container.
      attr_accessor :issues


      #
      # Mapper for ResourceHealthSummary class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceHealthSummary',
          type: {
            name: 'Composite',
            class_name: 'ResourceHealthSummary',
            model_properties: {
              resource_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceCount',
                type: {
                  name: 'Number'
                }
              },
              issues: {
                client_side_validation: true,
                required: false,
                serialized_name: 'issues',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'HealthErrorSummaryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HealthErrorSummary'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
