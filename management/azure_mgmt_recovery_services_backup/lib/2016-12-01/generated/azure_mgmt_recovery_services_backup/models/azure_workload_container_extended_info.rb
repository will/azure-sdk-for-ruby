# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Extended information of the container.
    #
    class AzureWorkloadContainerExtendedInfo

      include MsRestAzure

      # @return [String] Host Os Name in case of Stand Alone and Cluster Name
      # in case of distributed container.
      attr_accessor :host_server_name

      # @return [InquiryInfo] Inquiry Status for the container.
      attr_accessor :inquiry_info

      # @return [Array<DistributedNodesInfo>] List of the nodes in case of
      # distributed container.
      attr_accessor :nodes_list


      #
      # Mapper for AzureWorkloadContainerExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureWorkloadContainerExtendedInfo',
          type: {
            name: 'Composite',
            class_name: 'AzureWorkloadContainerExtendedInfo',
            model_properties: {
              host_server_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'hostServerName',
                type: {
                  name: 'String'
                }
              },
              inquiry_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'inquiryInfo',
                type: {
                  name: 'Composite',
                  class_name: 'InquiryInfo'
                }
              },
              nodes_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'nodesList',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DistributedNodesInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DistributedNodesInfo'
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
