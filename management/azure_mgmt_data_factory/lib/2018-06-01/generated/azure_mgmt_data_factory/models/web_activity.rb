# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # Web activity.
    #
    class WebActivity < ExecutionActivity

      include MsRestAzure


      def initialize
        @type = "WebActivity"
      end

      attr_accessor :type

      # @return [WebActivityMethod] Rest API method for target endpoint.
      # Possible values include: 'GET', 'POST', 'PUT', 'DELETE'
      attr_accessor :method

      # @return Web activity target endpoint and path. Type: string (or
      # Expression with resultType string).
      attr_accessor :url

      # @return Represents the headers that will be sent to the request. For
      # example, to set the language and type on a request: "headers" : {
      # "Accept-Language": "en-us", "Content-Type": "application/json" }. Type:
      # string (or Expression with resultType string).
      attr_accessor :headers

      # @return Represents the payload that will be sent to the endpoint.
      # Required for POST/PUT method, not allowed for GET method Type: string
      # (or Expression with resultType string).
      attr_accessor :body

      # @return [WebActivityAuthentication] Authentication method used for
      # calling the endpoint.
      attr_accessor :authentication

      # @return [Array<DatasetReference>] List of datasets passed to web
      # endpoint.
      attr_accessor :datasets

      # @return [Array<LinkedServiceReference>] List of linked services passed
      # to web endpoint.
      attr_accessor :linked_services

      # @return [IntegrationRuntimeReference] The integration runtime
      # reference.
      attr_accessor :connect_via


      #
      # Mapper for WebActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WebActivity',
          type: {
            name: 'Composite',
            class_name: 'WebActivity',
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
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
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
              depends_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dependsOn',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityDependency'
                      }
                  }
                }
              },
              user_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userProperties',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UserPropertyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UserProperty'
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
              linked_service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'linkedServiceName',
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policy',
                type: {
                  name: 'Composite',
                  class_name: 'ActivityPolicy'
                }
              },
              method: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.method',
                type: {
                  name: 'String'
                }
              },
              url: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.url',
                type: {
                  name: 'Object'
                }
              },
              headers: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.headers',
                type: {
                  name: 'Object'
                }
              },
              body: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.body',
                type: {
                  name: 'Object'
                }
              },
              authentication: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.authentication',
                type: {
                  name: 'Composite',
                  class_name: 'WebActivityAuthentication'
                }
              },
              datasets: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.datasets',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DatasetReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DatasetReference'
                      }
                  }
                }
              },
              linked_services: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.linkedServices',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LinkedServiceReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LinkedServiceReference'
                      }
                  }
                }
              },
              connect_via: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.connectVia',
                type: {
                  name: 'Composite',
                  class_name: 'IntegrationRuntimeReference'
                }
              }
            }
          }
        }
      end
    end
  end
end
