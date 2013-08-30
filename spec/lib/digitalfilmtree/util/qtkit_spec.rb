require 'spec_helper'

require 'digitalfilmtree/util/qtkit'
require 'digitalfilmtree/util/mediainfo'

describe Digitalfilmtree::Util::QTKit do
  describe ".update_movie_file" do
    before do
      Digitalfilmtree::Util::Mediainfo.autoconfigure
      Digitalfilmtree::Util::QTKit.autoconfigure
      @c = Class.new do
        include Digitalfilmtree::Util::Mediainfo
        include Digitalfilmtree::Util::QTKit
      end.new
    end
    let(:path) { fixture_file("without_timecode.mov") }
    let(:tc) { "01:01:01:07" }
    it "edits the movie file" do
      @c.mediainfo(path, :start_timecode).should_not eq tc
      @c.update_movie_file(path, :start_timecode=>tc)
      @c.mediainfo(path, :start_timecode).should eq tc
    end
  end
end

