# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MediaServices::Mgmt::V2018_03_30_preview
  module Models
    #
    # A Content Key Policy resource.
    #
    class ContentKeyPolicy < ProxyResource

      include MsRestAzure

      # @return The legacy Policy ID.
      attr_accessor :policy_id

      # @return [DateTime] The creation date of the Policy
      attr_accessor :created

      # @return [DateTime] The last modified date of the Policy
      attr_accessor :last_modified

      # @return [String] A description for the Policy.
      attr_accessor :description

      # @return [Array<ContentKeyPolicyOption>] The Key Policy options.
      attr_accessor :options


      #
      # Mapper for ContentKeyPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContentKeyPolicy',
          type: {
            name: 'Composite',
            class_name: 'ContentKeyPolicy',
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
              policy_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.policyId',
                type: {
                  name: 'String'
                }
              },
              created: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.created',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastModified',
                type: {
                  name: 'DateTime'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
                type: {
                  name: 'String'
                }
              },
              options: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.options',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ContentKeyPolicyOptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ContentKeyPolicyOption'
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
