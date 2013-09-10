require 'spec_helper'
require 'digitalfilmtree/util/ffmbc'

describe Digitalfilmtree::Util::Ffmbc do
  let(:platform) { Digitalfilmtree::Util.platform } 

  describe ".autoconfigure" do
    context "on windows 7 x64 and up" do
      before do
        platform.stub(:mac?).and_return(false)
        platform.stub(:windows?).and_return(true)
      end
      it "sets the binary to the vendored windows exe" do
        subject.autoconfigure
        subject.bin.should match /windows/
        File.exists?(subject.bin).should be_true
      end
    end

    context "on mac 10.6 and up" do
      before do
        platform.stub(:mac?).and_return(true)
        platform.stub(:windows?).and_return(false)
      end
      it "sets the binary to the vendored mac binary" do
        subject.autoconfigure
        subject.bin.should match /mac/
        File.exists?(subject.bin).should be_true
      end
    end

    describe ".mediainfo" do
      before do
        Digitalfilmtree::Util::Ffmbc.autoconfigure
      end
      subject { Class.new {
        include Digitalfilmtree::Util::Ffmbc
      }.new }
      it "queries using mediainfo" do
        version_string = "ffmpeg\n"
        subject.mediainfo("--version", false).should eq version_string
      end
    end
  end
end
