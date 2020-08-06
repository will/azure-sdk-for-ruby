# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StreamAnalytics::Mgmt::V2016_03_01
  module Models
    #
    # The binding to a JavaScript function.
    #
    class JavaScriptFunctionBinding < FunctionBinding

      include MsRestAzure


      def initialize
        @type = "Microsoft.StreamAnalytics/JavascriptUdf"
      end

      attr_accessor :type

      # @return [String] The JavaScript code containing a single function
      # definition. For example: 'function (x, y) { return x + y; }'
      attr_accessor :script


      #
      # Mapper for JavaScriptFunctionBinding class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Microsoft.StreamAnalytics/JavascriptUdf',
          type: {
            name: 'Composite',
            class_name: 'JavaScriptFunctionBinding',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              script: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.script',
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
