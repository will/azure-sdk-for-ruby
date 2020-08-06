# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_01_01
  module Models
    #
    # Operation Entity contract Properties.
    #
    class OperationTagResourceContractProperties

      include MsRestAzure

      # @return [String] Identifier of the operation in form
      # /operations/{operationId}.
      attr_accessor :id

      # @return [String] Operation name.
      attr_accessor :name

      # @return [String] Api Name.
      attr_accessor :api_name

      # @return [String] Api Revision.
      attr_accessor :api_revision

      # @return [String] Api Version.
      attr_accessor :api_version

      # @return [String] Operation Description.
      attr_accessor :description

      # @return [String] A Valid HTTP Operation Method. Typical Http Methods
      # like GET, PUT, POST but not limited by only them.
      attr_accessor :method

      # @return [String] Relative URL template identifying the target resource
      # for this operation. May include parameters. Example:
      # /customers/{cid}/orders/{oid}/?date={date}
      attr_accessor :url_template


      #
      # Mapper for OperationTagResourceContractProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationTagResourceContractProperties',
          type: {
            name: 'Composite',
            class_name: 'OperationTagResourceContractProperties',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
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
              api_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'apiName',
                type: {
                  name: 'String'
                }
              },
              api_revision: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'apiRevision',
                type: {
                  name: 'String'
                }
              },
              api_version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'apiVersion',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              method: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'method',
                type: {
                  name: 'String'
                }
              },
              url_template: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'urlTemplate',
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
