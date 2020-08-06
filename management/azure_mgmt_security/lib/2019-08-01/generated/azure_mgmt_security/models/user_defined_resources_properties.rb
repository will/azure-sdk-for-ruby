# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2019_08_01
  module Models
    #
    # Properties of the solution's user defined resources.
    #
    class UserDefinedResourcesProperties

      include MsRestAzure

      # @return [String] Azure Resource Graph query which represents the
      # security solution's user defined resources. Required to start with
      # "where type != "Microsoft.Devices/IotHubs""
      attr_accessor :query

      # @return [Array<String>] List of Azure subscription ids on which the
      # user defined resources query should be executed.
      attr_accessor :query_subscriptions


      #
      # Mapper for UserDefinedResourcesProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UserDefinedResourcesProperties',
          type: {
            name: 'Composite',
            class_name: 'UserDefinedResourcesProperties',
            model_properties: {
              query: {
                client_side_validation: true,
                required: true,
                serialized_name: 'query',
                type: {
                  name: 'String'
                }
              },
              query_subscriptions: {
                client_side_validation: true,
                required: true,
                serialized_name: 'querySubscriptions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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
