# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::IotHub::Mgmt::V2017_07_01
  module Models
    #
    # The list of shared access policies with a next link.
    #
    class SharedAccessSignatureAuthorizationRuleListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<SharedAccessSignatureAuthorizationRule>] The list of
      # shared access policies.
      attr_accessor :value

      # @return [String] The next link.
      attr_accessor :next_link

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<SharedAccessSignatureAuthorizationRule>] operation
      # results.
      #
      def get_all_items
        items = @value
        page = self
        while page.next_link != nil && !page.next_link.strip.empty? do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [SharedAccessSignatureAuthorizationRuleListResult] with next
      # page content.
      #
      def get_next_page
        response = @next_method.call(@next_link).value! unless @next_method.nil?
        unless response.nil?
          @next_link = response.body.next_link
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for SharedAccessSignatureAuthorizationRuleListResult class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SharedAccessSignatureAuthorizationRuleListResult',
          type: {
            name: 'Composite',
            class_name: 'SharedAccessSignatureAuthorizationRuleListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SharedAccessSignatureAuthorizationRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SharedAccessSignatureAuthorizationRule'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nextLink',
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
