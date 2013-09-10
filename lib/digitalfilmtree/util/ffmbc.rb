require 'digitalfilmtree/util'

module Digitalfilmtree
  module Util
    module Ffmbc

      def self.bin
        @@binpath ||= false
      end

      def self.bin= path
        raise "No such binary #{path}" unless File.exists? path
        @@binpath = path
      end

      def self.autoconfigure
        os = Util.platform
        if os.windows?
          path = Util.vendored_bin(:ffmbc, :windows, 'ffmbc.exe')
          Ffmbc.bin = Util.safe_path(path)
        elsif os.mac?
          Ffmbc.bin = Util.vendored_bin(:ffmbc, :mac, 'ffmbc')
        end
      end
    end
  end
end
