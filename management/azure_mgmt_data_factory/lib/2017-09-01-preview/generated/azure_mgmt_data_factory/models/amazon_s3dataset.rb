# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # A single Amazon Simple Storage Service (S3) object or a set of S3
    # objects.
    #
    class AmazonS3Dataset < Dataset

      include MsRestAzure


      def initialize
        @type = "AmazonS3Object"
      end

      attr_accessor :type

      # @return The name of the Amazon S3 bucket. Type: string (or Expression
      # with resultType string).
      attr_accessor :bucket_name

      # @return The key of the Amazon S3 object. Type: string (or Expression
      # with resultType string).
      attr_accessor :key

      # @return The prefix filter for the S3 object name. Type: string (or
      # Expression with resultType string).
      attr_accessor :prefix

      # @return The version for the S3 object. Type: string (or Expression with
      # resultType string).
      attr_accessor :version

      # @return [DatasetStorageFormat] The format of files.
      attr_accessor :format

      # @return [DatasetCompression] The data compression method used for the
      # Amazon S3 object.
      attr_accessor :compression


      #
      # Mapper for AmazonS3Dataset class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AmazonS3Object',
          type: {
            name: 'Composite',
            class_name: 'AmazonS3Dataset',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              structure: {
                client_side_validation: true,
                required: false,
                serialized_name: 'structure',
                type: {
                  name: 'Object'
                }
              },
              linked_service_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'linkedServiceName',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParameterSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParameterSpecification'
                      }
                  }
                }
              },
              annotations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'annotations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              bucket_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.bucketName',
                type: {
                  name: 'Object'
                }
              },
              key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.key',
                type: {
                  name: 'Object'
                }
              },
              prefix: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.prefix',
                type: {
                  name: 'Object'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.version',
                type: {
                  name: 'Object'
                }
              },
              format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.format',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'DatasetStorageFormat',
                  class_name: 'DatasetStorageFormat'
                }
              },
              compression: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.compression',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'DatasetCompression',
                  class_name: 'DatasetCompression'
                }
              }
            }
          }
        }
      end
    end
  end
end
