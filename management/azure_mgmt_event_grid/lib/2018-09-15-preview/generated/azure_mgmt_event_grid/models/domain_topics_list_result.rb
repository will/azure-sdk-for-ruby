# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2018_09_15_preview
  module Models
    #
    # Result of the List Domain Topics operation
    #
    class DomainTopicsListResult

      include MsRestAzure

      # @return [Array<DomainTopic>] A collection of Domain Topics
      attr_accessor :value


      #
      # Mapper for DomainTopicsListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DomainTopicsListResult',
          type: {
            name: 'Composite',
            class_name: 'DomainTopicsListResult',
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
                      serialized_name: 'DomainTopicElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DomainTopic'
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