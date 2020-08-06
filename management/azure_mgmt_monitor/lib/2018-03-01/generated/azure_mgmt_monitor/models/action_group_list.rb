# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2018_03_01
  module Models
    #
    # A list of action groups.
    #
    class ActionGroupList

      include MsRestAzure

      # @return [Array<ActionGroupResource>] The list of action groups.
      attr_accessor :value

      # @return [String] Provides the link to retrieve the next set of
      # elements.
      attr_accessor :next_link


      #
      # Mapper for ActionGroupList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ActionGroupList',
          type: {
            name: 'Composite',
            class_name: 'ActionGroupList',
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
                      serialized_name: 'ActionGroupResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActionGroupResource'
                      }
                  }
                }
              },
              next_link: {
                client_side_validation: true,
                required: false,
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
