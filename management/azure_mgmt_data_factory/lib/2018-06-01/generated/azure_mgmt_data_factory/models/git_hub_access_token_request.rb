# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Get GitHub access token request definition.
    #
    class GitHubAccessTokenRequest

      include MsRestAzure

      # @return [String] GitHub access code.
      attr_accessor :git_hub_access_code

      # @return [String] GitHub application client ID.
      attr_accessor :git_hub_client_id

      # @return [String] GitHub access token base URL.
      attr_accessor :git_hub_access_token_base_url


      #
      # Mapper for GitHubAccessTokenRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GitHubAccessTokenRequest',
          type: {
            name: 'Composite',
            class_name: 'GitHubAccessTokenRequest',
            model_properties: {
              git_hub_access_code: {
                client_side_validation: true,
                required: true,
                serialized_name: 'gitHubAccessCode',
                type: {
                  name: 'String'
                }
              },
              git_hub_client_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'gitHubClientId',
                type: {
                  name: 'String'
                }
              },
              git_hub_access_token_base_url: {
                client_side_validation: true,
                required: true,
                serialized_name: 'gitHubAccessTokenBaseUrl',
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
