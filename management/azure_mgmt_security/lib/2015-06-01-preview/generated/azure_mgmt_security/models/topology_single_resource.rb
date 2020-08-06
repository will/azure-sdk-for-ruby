# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2015_06_01_preview
  module Models
    #
    # Model object.
    #
    #
    class TopologySingleResource

      include MsRestAzure

      # @return [String] Azure resource id
      attr_accessor :resource_id

      # @return [String] The security severity of the resource
      attr_accessor :severity

      # @return [Boolean] Indicates if the resource has security
      # recommendations
      attr_accessor :recommendations_exist

      # @return [String] Indicates the resource connectivity level to the
      # Internet (InternetFacing, Internal ,etc.)
      attr_accessor :network_zones

      # @return [Integer] Score of the resource based on its security severity
      attr_accessor :topology_score

      # @return [String] The location of this resource
      attr_accessor :location

      # @return [Array<TopologySingleResourceParent>] Azure resources connected
      # to this resource which are in higher level in the topology view
      attr_accessor :parents

      # @return [Array<TopologySingleResourceChild>] Azure resources connected
      # to this resource which are in lower level in the topology view
      attr_accessor :children


      #
      # Mapper for TopologySingleResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TopologySingleResource',
          type: {
            name: 'Composite',
            class_name: 'TopologySingleResource',
            model_properties: {
              resource_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              severity: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'severity',
                type: {
                  name: 'String'
                }
              },
              recommendations_exist: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'recommendationsExist',
                type: {
                  name: 'Boolean'
                }
              },
              network_zones: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'networkZones',
                type: {
                  name: 'String'
                }
              },
              topology_score: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'topologyScore',
                type: {
                  name: 'Number'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              parents: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'parents',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TopologySingleResourceParentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TopologySingleResourceParent'
                      }
                  }
                }
              },
              children: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'children',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TopologySingleResourceChildElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TopologySingleResourceChild'
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
