# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2019_06_01_preview
  module Models
    #
    # The properties for updating the source code repository.
    #
    class SourceUpdateParameters

      include MsRestAzure

      # @return [SourceControlType] The type of source control service.
      # Possible values include: 'Github', 'VisualStudioTeamService'
      attr_accessor :source_control_type

      # @return [String] The full URL to the source code repository
      attr_accessor :repository_url

      # @return [String] The branch name of the source code.
      attr_accessor :branch

      # @return [AuthInfoUpdateParameters] The authorization properties for
      # accessing the source code repository and to set up
      # webhooks for notifications.
      attr_accessor :source_control_auth_properties


      #
      # Mapper for SourceUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SourceUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'SourceUpdateParameters',
            model_properties: {
              source_control_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceControlType',
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
              branch: {
                client_side_validation: true,
                required: false,
                serialized_name: 'branch',
                type: {
                  name: 'String'
                }
              },
              source_control_auth_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceControlAuthProperties',
                type: {
                  name: 'Composite',
                  class_name: 'AuthInfoUpdateParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end
