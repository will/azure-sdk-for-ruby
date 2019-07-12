# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Appconfiguration::Mgmt::V2019_02_01_preview
  module Models
    #
    # An API key used for authenticating with a configuration store endpoint.
    #
    class ApiKey

      include MsRestAzure

      # @return [String] The key ID.
      attr_accessor :id

      # @return [String] A name for the key describing its usage.
      attr_accessor :name

      # @return [String] The value of the key that is used for authentication
      # purposes.
      attr_accessor :value

      # @return [String] A connection string that can be used by supporting
      # clients for authentication.
      attr_accessor :connection_string

      # @return [DateTime] The last time any of the key's properties were
      # modified.
      attr_accessor :last_modified

      # @return [Boolean] Whether this key can only be used for read
      # operations.
      attr_accessor :read_only


      #
      # Mapper for ApiKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApiKey',
          type: {
            name: 'Composite',
            class_name: 'ApiKey',
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
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'String'
                }
              },
              connection_string: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'connectionString',
                type: {
                  name: 'String'
                }
              },
              last_modified: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastModified',
                type: {
                  name: 'DateTime'
                }
              },
              read_only: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'readOnly',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
