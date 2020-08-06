# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_01_01
  module Models
    #
    # Backend entity base Parameter set.
    #
    class BackendBaseParameters

      include MsRestAzure

      # @return [String] Backend Title.
      attr_accessor :title

      # @return [String] Backend Description.
      attr_accessor :description

      # @return [String] Management Uri of the Resource in External System.
      # This url can be the Arm Resource Id of Logic Apps, Function Apps or Api
      # Apps.
      attr_accessor :resource_id

      # @return [BackendProperties] Backend Properties contract
      attr_accessor :properties

      # @return [BackendCredentialsContract] Backend Credentials Contract
      # Properties
      attr_accessor :credentials

      # @return [BackendProxyContract] Backend Proxy Contract Properties
      attr_accessor :proxy

      # @return [BackendTlsProperties] Backend TLS Properties
      attr_accessor :tls


      #
      # Mapper for BackendBaseParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackendBaseParameters',
          type: {
            name: 'Composite',
            class_name: 'BackendBaseParameters',
            model_properties: {
              title: {
                client_side_validation: true,
                required: false,
                serialized_name: 'title',
                constraints: {
                  MaxLength: 300,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                constraints: {
                  MaxLength: 2000,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceId',
                constraints: {
                  MaxLength: 2000,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'BackendProperties'
                }
              },
              credentials: {
                client_side_validation: true,
                required: false,
                serialized_name: 'credentials',
                type: {
                  name: 'Composite',
                  class_name: 'BackendCredentialsContract'
                }
              },
              proxy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'proxy',
                type: {
                  name: 'Composite',
                  class_name: 'BackendProxyContract'
                }
              },
              tls: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tls',
                type: {
                  name: 'Composite',
                  class_name: 'BackendTlsProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
