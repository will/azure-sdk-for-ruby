# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2018_11_01_preview
  module Models
    #
    # An account resource.
    #
    class EnrollmentAccount < Resource

      include MsRestAzure

      # @return [String] The account name.
      attr_accessor :account_name

      # @return [String] The cost center name.
      attr_accessor :cost_center

      # @return [String] The account owner
      attr_accessor :account_owner

      # @return [String] The status for account.
      attr_accessor :status

      # @return [DateTime] Account Start Date
      attr_accessor :start_date

      # @return [DateTime] Account End Date
      attr_accessor :end_date

      # @return [Department] Associated department. By default this is not
      # populated, unless it's specified in $expand.
      attr_accessor :department


      #
      # Mapper for EnrollmentAccount class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EnrollmentAccount',
          type: {
            name: 'Composite',
            class_name: 'EnrollmentAccount',
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
              tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              account_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.accountName',
                type: {
                  name: 'String'
                }
              },
              cost_center: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.costCenter',
                type: {
                  name: 'String'
                }
              },
              account_owner: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.accountOwner',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              start_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.startDate',
                type: {
                  name: 'DateTime'
                }
              },
              end_date: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.endDate',
                type: {
                  name: 'DateTime'
                }
              },
              department: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.department',
                type: {
                  name: 'Composite',
                  class_name: 'Department'
                }
              }
            }
          }
        }
      end
    end
  end
end
