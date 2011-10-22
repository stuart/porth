module Porth
  module Format
    module XML
      def self.call controller, object
        object.to_xml :root => controller.xml_root
      end
      
      module ControllerExtensions
        def xml_root
          self.class.name.sub('Controller', '').underscore.split('/').last.pluralize
        end
      end
    end
  end
end
