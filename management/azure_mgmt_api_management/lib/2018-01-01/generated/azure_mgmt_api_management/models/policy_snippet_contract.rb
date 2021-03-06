# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01
  module Models
    #
    # Policy snippet.
    #
    class PolicySnippetContract

      include MsRestAzure

      # @return [String] Snippet name.
      attr_accessor :name

      # @return [String] Snippet content.
      attr_accessor :content

      # @return [String] Snippet toolTip.
      attr_accessor :tool_tip

      # @return [Integer] Binary OR value of the Snippet scope.
      attr_accessor :scope


      #
      # Mapper for PolicySnippetContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicySnippetContract',
          type: {
            name: 'Composite',
            class_name: 'PolicySnippetContract',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              content: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'content',
                type: {
                  name: 'String'
                }
              },
              tool_tip: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'toolTip',
                type: {
                  name: 'String'
                }
              },
              scope: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'scope',
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
