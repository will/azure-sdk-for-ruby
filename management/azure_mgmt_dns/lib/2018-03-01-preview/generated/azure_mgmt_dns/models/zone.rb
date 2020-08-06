# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Dns::Mgmt::V2018_03_01_preview
  module Models
    #
    # Describes a DNS zone.
    #
    class Zone < TrackedResource

      include MsRestAzure

      # @return [String] The etag of the zone.
      attr_accessor :etag

      # @return [Integer] The maximum number of record sets that can be created
      # in this DNS zone.  This is a read-only property and any attempt to set
      # this value will be ignored.
      attr_accessor :max_number_of_record_sets

      # @return [Integer] The current number of record sets in this DNS zone.
      # This is a read-only property and any attempt to set this value will be
      # ignored.
      attr_accessor :number_of_record_sets

      # @return [Array<String>] The name servers for this DNS zone. This is a
      # read-only property and any attempt to set this value will be ignored.
      attr_accessor :name_servers

      # @return [ZoneType] The type of this DNS zone (Public or Private).
      # Possible values include: 'Public', 'Private'. Default value: 'Public' .
      attr_accessor :zone_type

      # @return [Array<SubResource>] A list of references to virtual networks
      # that register hostnames in this DNS zone. This is a only when ZoneType
      # is Private.
      attr_accessor :registration_virtual_networks

      # @return [Array<SubResource>] A list of references to virtual networks
      # that resolve records in this DNS zone. This is a only when ZoneType is
      # Private.
      attr_accessor :resolution_virtual_networks


      #
      # Mapper for Zone class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Zone',
          type: {
            name: 'Composite',
            class_name: 'Zone',
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
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              max_number_of_record_sets: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.maxNumberOfRecordSets',
                type: {
                  name: 'Number'
                }
              },
              number_of_record_sets: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.numberOfRecordSets',
                type: {
                  name: 'Number'
                }
              },
              name_servers: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.nameServers',
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
              },
              zone_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.zoneType',
                default_value: 'Public',
                type: {
                  name: 'Enum',
                  module: 'ZoneType'
                }
              },
              registration_virtual_networks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.registrationVirtualNetworks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              resolution_virtual_networks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.resolutionVirtualNetworks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
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
