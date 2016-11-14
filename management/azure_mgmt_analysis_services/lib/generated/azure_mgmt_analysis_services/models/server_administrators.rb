# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::AnalysisServices
  module Models
    #
    # Array of administrator user identities
    #
    class ServerAdministrators

      include MsRestAzure

      # @return [Array<String>] Collection of administrator user identities
      attr_accessor :members


      #
      # Mapper for ServerAdministrators class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServerAdministrators',
          type: {
            name: 'Composite',
            class_name: 'ServerAdministrators',
            model_properties: {
              members: {
                required: false,
                serialized_name: 'members',
                type: {
                  name: 'Sequence',
                  element: {
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