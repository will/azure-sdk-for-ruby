# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2015_03_20
  module Models
    #
    # Metadata for a workspace that isn't linked to an Azure subscription.
    #
    class LinkTarget

      include MsRestAzure

      # @return [String] The GUID that uniquely identifies the workspace.
      attr_accessor :customer_id

      # @return [String] The display name of the workspace.
      attr_accessor :display_name

      # @return [String] The DNS valid workspace name.
      attr_accessor :workspace_name

      # @return [String] The location of the workspace.
      attr_accessor :location


      #
      # Mapper for LinkTarget class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LinkTarget',
          type: {
            name: 'Composite',
            class_name: 'LinkTarget',
            model_properties: {
              customer_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customerId',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'accountName',
                type: {
                  name: 'String'
                }
              },
              workspace_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workspaceName',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
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
