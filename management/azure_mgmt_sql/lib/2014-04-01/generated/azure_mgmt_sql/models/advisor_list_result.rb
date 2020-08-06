# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # Represents the response to a list advisors request.
    #
    class AdvisorListResult

      include MsRestAzure

      # @return [Array<Advisor>] The list of advisors.
      attr_accessor :value


      #
      # Mapper for AdvisorListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AdvisorListResult',
          type: {
            name: 'Composite',
            class_name: 'AdvisorListResult',
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
                      serialized_name: 'AdvisorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Advisor'
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
