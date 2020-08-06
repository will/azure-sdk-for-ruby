# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CustomerInsights::Mgmt::V2017_01_01
  module Models
    #
    # The Salesforce connector properties.
    #
    class SalesforceConnectorProperties

      include MsRestAzure

      # @return [SalesforceDiscoverSetting] The user settings.
      attr_accessor :usersetting

      # @return [Array<SalesforceTable>] The Salesforce tables.
      attr_accessor :salesforcetables


      #
      # Mapper for SalesforceConnectorProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SalesforceConnectorProperties',
          type: {
            name: 'Composite',
            class_name: 'SalesforceConnectorProperties',
            model_properties: {
              usersetting: {
                client_side_validation: true,
                required: true,
                serialized_name: 'usersetting',
                type: {
                  name: 'Composite',
                  class_name: 'SalesforceDiscoverSetting'
                }
              },
              salesforcetables: {
                client_side_validation: true,
                required: true,
                serialized_name: 'salesforcetables',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SalesforceTableElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SalesforceTable'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
