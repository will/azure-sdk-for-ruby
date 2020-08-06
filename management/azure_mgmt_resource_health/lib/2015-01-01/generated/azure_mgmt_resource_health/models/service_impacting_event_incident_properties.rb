# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceHealth::Mgmt::V2015_01_01
  module Models
    #
    # Properties of the service impacting event.
    #
    class ServiceImpactingEventIncidentProperties

      include MsRestAzure

      # @return [String] Title of the incident.
      attr_accessor :title

      # @return [String] Service impacted by the event.
      attr_accessor :service

      # @return [String] Region impacted by the event.
      attr_accessor :region

      # @return [String] Type of Event.
      attr_accessor :incident_type


      #
      # Mapper for ServiceImpactingEventIncidentProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'serviceImpactingEvent_incidentProperties',
          type: {
            name: 'Composite',
            class_name: 'ServiceImpactingEventIncidentProperties',
            model_properties: {
              title: {
                client_side_validation: true,
                required: false,
                serialized_name: 'title',
                type: {
                  name: 'String'
                }
              },
              service: {
                client_side_validation: true,
                required: false,
                serialized_name: 'service',
                type: {
                  name: 'String'
                }
              },
              region: {
                client_side_validation: true,
                required: false,
                serialized_name: 'region',
                type: {
                  name: 'String'
                }
              },
              incident_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'incidentType',
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
