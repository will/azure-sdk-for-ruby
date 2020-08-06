# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Dns::Mgmt::V2016_04_01
  module Models
    #
    # Parameters supplied to update a record set.
    #
    class RecordSetUpdateParameters

      include MsRestAzure

      # @return [RecordSet] Specifies information about the record set being
      # updated.
      attr_accessor :record_set


      #
      # Mapper for RecordSetUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecordSetUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'RecordSetUpdateParameters',
            model_properties: {
              record_set: {
                client_side_validation: true,
                required: false,
                serialized_name: 'RecordSet',
                type: {
                  name: 'Composite',
                  class_name: 'RecordSet'
                }
              }
            }
          }
        }
      end
    end
  end
end
