# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # This class represents the virtual machine task details.
    #
    class VirtualMachineTaskDetails < TaskTypeDetails

      include MsRestAzure


      def initialize
        @instanceType = "VirtualMachineTaskDetails"
      end

      attr_accessor :instanceType

      # @return [String] The skipped reason.
      attr_accessor :skipped_reason

      # @return [String] The skipped reason string.
      attr_accessor :skipped_reason_string

      # @return [JobEntity] The job entity.
      attr_accessor :job_task


      #
      # Mapper for VirtualMachineTaskDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineTaskDetails',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineTaskDetails',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              skipped_reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'skippedReason',
                type: {
                  name: 'String'
                }
              },
              skipped_reason_string: {
                client_side_validation: true,
                required: false,
                serialized_name: 'skippedReasonString',
                type: {
                  name: 'String'
                }
              },
              job_task: {
                client_side_validation: true,
                required: false,
                serialized_name: 'jobTask',
                type: {
                  name: 'Composite',
                  class_name: 'JobEntity'
                }
              }
            }
          }
        }
      end
    end
  end
end
