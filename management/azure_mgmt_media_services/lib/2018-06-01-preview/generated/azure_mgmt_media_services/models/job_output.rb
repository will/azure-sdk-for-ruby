# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_06_01_preview
  module Models
    #
    # Describes all the properties of a JobOutput.
    #
    class JobOutput

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["#Microsoft.Media.JobOutputAsset"] = "JobOutputAsset"

      def initialize
        @odatatype = "JobOutput"
      end

      attr_accessor :odatatype

      # @return [JobError] If the JobOutput is in the Error state, it contains
      # the details of the error.
      attr_accessor :error

      # @return [JobState] Describes the state of the JobOutput. Possible
      # values include: 'Canceled', 'Canceling', 'Error', 'Finished',
      # 'Processing', 'Queued', 'Scheduled'
      attr_accessor :state

      # @return [Integer] If the JobOutput is in a Processing state, this
      # contains the job completion percentage.  The value is an estimate and
      # not intended to be used to predict job completion times. To determine
      # if the JobOutput is complete, use the State property.
      attr_accessor :progress


      #
      # Mapper for JobOutput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JobOutput',
          type: {
            name: 'Composite',
            polymorphic_discriminator: '@odata.type',
            uber_parent: 'JobOutput',
            class_name: 'JobOutput',
            model_properties: {
              error: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'JobError'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'JobState'
                }
              },
              progress: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'progress',
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
