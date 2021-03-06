# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2015_06_01_preview
  module Models
    #
    # Represents the publisher information of a process/rule
    #
    class PublisherInfo

      include MsRestAzure

      # @return [String] The Subject field of the x.509 certificate used to
      # sign the code, using the following fields -  O = Organization, L =
      # Locality, S = State or Province, and C = Country
      attr_accessor :publisher_name

      # @return [String] The product name taken from the file's version
      # resource
      attr_accessor :product_name

      # @return [String] The "OriginalName" field taken from the file's version
      # resource
      attr_accessor :binary_name

      # @return [String] The binary file version taken from the file's version
      # resource
      attr_accessor :version


      #
      # Mapper for PublisherInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PublisherInfo',
          type: {
            name: 'Composite',
            class_name: 'PublisherInfo',
            model_properties: {
              publisher_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'publisherName',
                type: {
                  name: 'String'
                }
              },
              product_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'productName',
                type: {
                  name: 'String'
                }
              },
              binary_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'binaryName',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'version',
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
