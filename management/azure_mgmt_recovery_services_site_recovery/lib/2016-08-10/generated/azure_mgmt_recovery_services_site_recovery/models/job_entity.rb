# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # This class contains the minimal job details required to navigate to the
    # desired drill down.
    #
    class JobEntity

      include MsRestAzure

      # @return [String] The job id.
      attr_accessor :job_id

      # @return [String] The job display name.
      attr_accessor :job_friendly_name

      # @return [String] The object id.
      attr_accessor :target_object_id

      # @return [String] The object name.
      attr_accessor :target_object_name

      # @return [String] The workflow affected object type.
      attr_accessor :target_instance_type

      # @return [String] The job name. Enum type ScenarioName.
      attr_accessor :job_scenario_name


      #
      # Mapper for JobEntity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JobEntity',
          type: {
            name: 'Composite',
            class_name: 'JobEntity',
            model_properties: {
              job_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'jobId',
                type: {
                  name: 'String'
                }
              },
              job_friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'jobFriendlyName',
                type: {
                  name: 'String'
                }
              },
              target_object_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetObjectId',
                type: {
                  name: 'String'
                }
              },
              target_object_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetObjectName',
                type: {
                  name: 'String'
                }
              },
              target_instance_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetInstanceType',
                type: {
                  name: 'String'
                }
              },
              job_scenario_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'jobScenarioName',
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
