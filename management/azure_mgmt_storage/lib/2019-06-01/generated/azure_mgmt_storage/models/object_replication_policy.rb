# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2019_06_01
  module Models
    #
    # The replication policy between two storage accounts. Multiple rules can
    # be defined in one policy.
    #
    class ObjectReplicationPolicy < Resource

      include MsRestAzure

      # @return [String] A unique id for object replication policy.
      attr_accessor :policy_id

      # @return [DateTime] Indicates when the policy is enabled on the source
      # account.
      attr_accessor :enabled_time

      # @return [String] Required. Source account name.
      attr_accessor :source_account

      # @return [String] Required. Destination account name.
      attr_accessor :destination_account

      # @return [Array<ObjectReplicationPolicyRule>] The storage account object
      # replication rules.
      attr_accessor :rules


      #
      # Mapper for ObjectReplicationPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ObjectReplicationPolicy',
          type: {
            name: 'Composite',
            class_name: 'ObjectReplicationPolicy',
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
              enabled_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.enabledTime',
                type: {
                  name: 'DateTime'
                }
              },
              source_account: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.sourceAccount',
                type: {
                  name: 'String'
                }
              },
              destination_account: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.destinationAccount',
                type: {
                  name: 'String'
                }
              },
              rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.rules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectReplicationPolicyRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ObjectReplicationPolicyRule'
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
