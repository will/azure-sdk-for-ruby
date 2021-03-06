# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # Define match variables.
    #
    class MatchVariable

      include MsRestAzure

      # @return [WebApplicationFirewallMatchVariable] Match Variable. Possible
      # values include: 'RemoteAddr', 'RequestMethod', 'QueryString',
      # 'PostArgs', 'RequestUri', 'RequestHeaders', 'RequestBody',
      # 'RequestCookies'
      attr_accessor :variable_name

      # @return [String] The selector of match variable.
      attr_accessor :selector


      #
      # Mapper for MatchVariable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MatchVariable',
          type: {
            name: 'Composite',
            class_name: 'MatchVariable',
            model_properties: {
              variable_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'variableName',
                type: {
                  name: 'String'
                }
              },
              selector: {
                client_side_validation: true,
                required: false,
                serialized_name: 'selector',
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
