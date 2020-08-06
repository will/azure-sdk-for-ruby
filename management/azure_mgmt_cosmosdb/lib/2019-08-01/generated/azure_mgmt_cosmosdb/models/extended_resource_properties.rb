# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_08_01
  module Models
    #
    # The system generated resource properties associated with SQL databases,
    # SQL containers, Gremlin databases and Gremlin graphs.
    #
    class ExtendedResourceProperties

      include MsRestAzure

      # @return [String] A system generated property. A unique identifier.
      attr_accessor :_rid

      # @return A system generated property that denotes the last updated
      # timestamp of the resource.
      attr_accessor :_ts

      # @return [String] A system generated property representing the resource
      # etag required for optimistic concurrency control.
      attr_accessor :_etag


      #
      # Mapper for ExtendedResourceProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExtendedResourceProperties',
          type: {
            name: 'Composite',
            class_name: 'ExtendedResourceProperties',
            model_properties: {
              _rid: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: '_rid',
                type: {
                  name: 'String'
                }
              },
              _ts: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: '_ts',
                type: {
                  name: 'Object'
                }
              },
              _etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: '_etag',
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
