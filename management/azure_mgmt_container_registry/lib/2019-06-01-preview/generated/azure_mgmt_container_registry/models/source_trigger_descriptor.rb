# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_06_01_preview
  module Models
    #
    # The source trigger that caused a run.
    #
    class SourceTriggerDescriptor

      include MsRestAzure

      # @return [String] The unique ID of the trigger.
      attr_accessor :id

      # @return [String] The event type of the trigger.
      attr_accessor :event_type

      # @return [String] The unique ID that identifies a commit.
      attr_accessor :commit_id

      # @return [String] The unique ID that identifies pull request.
      attr_accessor :pull_request_id

      # @return [String] The repository URL.
      attr_accessor :repository_url

      # @return [String] The branch name in the repository.
      attr_accessor :branch_name

      # @return [String] The source control provider type.
      attr_accessor :provider_type


      #
      # Mapper for SourceTriggerDescriptor class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SourceTriggerDescriptor',
          type: {
            name: 'Composite',
            class_name: 'SourceTriggerDescriptor',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              event_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eventType',
                type: {
                  name: 'String'
                }
              },
              commit_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'commitId',
                type: {
                  name: 'String'
                }
              },
              pull_request_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pullRequestId',
                type: {
                  name: 'String'
                }
              },
              repository_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'repositoryUrl',
                type: {
                  name: 'String'
                }
              },
              branch_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'branchName',
                type: {
                  name: 'String'
                }
              },
              provider_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'providerType',
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
