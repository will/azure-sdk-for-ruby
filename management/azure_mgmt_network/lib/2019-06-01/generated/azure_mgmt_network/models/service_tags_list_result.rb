# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_06_01
  module Models
    #
    # Response for the ListServiceTags API service call.
    #
    class ServiceTagsListResult

      include MsRestAzure

      # @return [String] The name of the cloud.
      attr_accessor :name

      # @return [String] The ID of the cloud.
      attr_accessor :id

      # @return [String] The azure resource type.
      attr_accessor :type

      # @return [String] The iteration number.
      attr_accessor :change_number

      # @return [String] The name of the cloud.
      attr_accessor :cloud

      # @return [Array<ServiceTagInformation>] The list of service tag
      # information resources.
      attr_accessor :values


      #
      # Mapper for ServiceTagsListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceTagsListResult',
          type: {
            name: 'Composite',
            class_name: 'ServiceTagsListResult',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
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
              change_number: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'changeNumber',
                type: {
                  name: 'String'
                }
              },
              cloud: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'cloud',
                type: {
                  name: 'String'
                }
              },
              values: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'values',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceTagInformationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceTagInformation'
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
