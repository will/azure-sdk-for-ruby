# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Cosmosdb::Mgmt::V2019_12_12
  module Models
    #
    # The failover policy for a given region of a database account.
    #
    class FailoverPolicy

      include MsRestAzure

      # @return [String] The unique identifier of the region in which the
      # database account replicates to. Example:
      # &lt;accountName&gt;-&lt;locationName&gt;.
      attr_accessor :id

      # @return [String] The name of the region in which the database account
      # exists.
      attr_accessor :location_name

      # @return [Integer] The failover priority of the region. A failover
      # priority of 0 indicates a write region. The maximum value for a
      # failover priority = (total number of regions - 1). Failover priority
      # values must be unique for each of the regions in which the database
      # account exists.
      attr_accessor :failover_priority


      #
      # Mapper for FailoverPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FailoverPolicy',
          type: {
            name: 'Composite',
            class_name: 'FailoverPolicy',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              location_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'locationName',
                type: {
                  name: 'String'
                }
              },
              failover_priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'failoverPriority',
                constraints: {
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
