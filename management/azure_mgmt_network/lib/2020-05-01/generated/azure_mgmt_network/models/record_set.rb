# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # A collective group of information about the record set information.
    #
    class RecordSet

      include MsRestAzure

      # @return [String] Resource record type.
      attr_accessor :record_type

      # @return [String] Recordset name.
      attr_accessor :record_set_name

      # @return [String] Fqdn that resolves to private endpoint ip address.
      attr_accessor :fqdn

      # @return [ProvisioningState] The provisioning state of the recordset.
      # Possible values include: 'Succeeded', 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [Integer] Recordset time to live.
      attr_accessor :ttl

      # @return [Array<String>] The private ip address of the private endpoint.
      attr_accessor :ip_addresses


      #
      # Mapper for RecordSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecordSet',
          type: {
            name: 'Composite',
            class_name: 'RecordSet',
            model_properties: {
              record_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recordType',
                type: {
                  name: 'String'
                }
              },
              record_set_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recordSetName',
                type: {
                  name: 'String'
                }
              },
              fqdn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fqdn',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
                type: {
                  name: 'String'
                }
              },
              ttl: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ttl',
                type: {
                  name: 'Number'
                }
              },
              ip_addresses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipAddresses',
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
