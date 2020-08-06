# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2015_08_01
  module Models
    #
    # Directory for virtual application.
    #
    class VirtualDirectory

      include MsRestAzure

      # @return [String] Path to virtual application.
      attr_accessor :virtual_path

      # @return [String] Physical path.
      attr_accessor :physical_path


      #
      # Mapper for VirtualDirectory class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualDirectory',
          type: {
            name: 'Composite',
            class_name: 'VirtualDirectory',
            model_properties: {
              virtual_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'virtualPath',
                type: {
                  name: 'String'
                }
              },
              physical_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'physicalPath',
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
