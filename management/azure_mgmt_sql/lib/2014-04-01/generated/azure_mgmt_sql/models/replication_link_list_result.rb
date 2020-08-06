# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # Represents the response to a List database replication link request.
    #
    class ReplicationLinkListResult

      include MsRestAzure

      # @return [Array<ReplicationLink>] The list of database replication links
      # housed in the database.
      attr_accessor :value


      #
      # Mapper for ReplicationLinkListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReplicationLinkListResult',
          type: {
            name: 'Composite',
            class_name: 'ReplicationLinkListResult',
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
                      serialized_name: 'ReplicationLinkElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ReplicationLink'
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
