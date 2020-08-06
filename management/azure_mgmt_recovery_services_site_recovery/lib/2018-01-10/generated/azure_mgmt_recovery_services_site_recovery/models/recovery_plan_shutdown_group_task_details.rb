# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # This class represents the recovery plan shutdown group task details.
    #
    class RecoveryPlanShutdownGroupTaskDetails < GroupTaskDetails

      include MsRestAzure


      def initialize
        @instanceType = "RecoveryPlanShutdownGroupTaskDetails"
      end

      attr_accessor :instanceType

      # @return [String] The name.
      attr_accessor :name

      # @return [String] The group identifier.
      attr_accessor :group_id

      # @return [String] The group type.
      attr_accessor :rp_group_type


      #
      # Mapper for RecoveryPlanShutdownGroupTaskDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecoveryPlanShutdownGroupTaskDetails',
          type: {
            name: 'Composite',
            class_name: 'RecoveryPlanShutdownGroupTaskDetails',
            model_properties: {
              child_tasks: {
                client_side_validation: true,
                required: false,
                serialized_name: 'childTasks',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ASRTaskElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ASRTask'
                      }
                  }
                }
              },
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              group_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupId',
                type: {
                  name: 'String'
                }
              },
              rp_group_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rpGroupType',
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
