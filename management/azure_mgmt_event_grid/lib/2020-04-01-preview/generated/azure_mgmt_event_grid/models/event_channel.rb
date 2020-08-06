# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_04_01_preview
  module Models
    #
    # Event Channel.
    #
    class EventChannel < Resource

      include MsRestAzure

      # @return [EventChannelSource] Source of the event channel. This
      # represents a unique resource in the partner's resource model.
      attr_accessor :source

      # @return [EventChannelDestination] Represents the destination of an
      # event channel.
      attr_accessor :destination

      # @return [EventChannelProvisioningState] Provisioning state of the event
      # channel. Possible values include: 'Creating', 'Updating', 'Deleting',
      # 'Succeeded', 'Canceled', 'Failed'
      attr_accessor :provisioning_state

      # @return [PartnerTopicReadinessState] The readiness state of the
      # corresponding partner topic. Possible values include:
      # 'NotActivatedByUserYet', 'ActivatedByUser', 'DeactivatedByUser',
      # 'DeletedByUser'
      attr_accessor :partner_topic_readiness_state

      # @return [DateTime] Expiration time of the event channel. If this timer
      # expires while the corresponding partner topic is never activated,
      # the event channel and corresponding partner topic are deleted.
      attr_accessor :expiration_time_if_not_activated_utc

      # @return [EventChannelFilter] Information about the filter for the event
      # channel.
      attr_accessor :filter

      # @return [String] Friendly description about the topic. This can be set
      # by the publisher/partner to show custom description for the customer
      # partner topic.
      # This will be helpful to remove any ambiguity of the origin of creation
      # of the partner topic for the customer.
      attr_accessor :partner_topic_friendly_description


      #
      # Mapper for EventChannel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventChannel',
          type: {
            name: 'Composite',
            class_name: 'EventChannel',
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
              source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.source',
                type: {
                  name: 'Composite',
                  class_name: 'EventChannelSource'
                }
              },
              destination: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.destination',
                type: {
                  name: 'Composite',
                  class_name: 'EventChannelDestination'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              partner_topic_readiness_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.partnerTopicReadinessState',
                type: {
                  name: 'String'
                }
              },
              expiration_time_if_not_activated_utc: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.expirationTimeIfNotActivatedUtc',
                type: {
                  name: 'DateTime'
                }
              },
              filter: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.filter',
                type: {
                  name: 'Composite',
                  class_name: 'EventChannelFilter'
                }
              },
              partner_topic_friendly_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.partnerTopicFriendlyDescription',
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
