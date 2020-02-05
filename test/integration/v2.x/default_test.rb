# Inspec test for recipe opencv::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

control 'opencv' do
  impact 1.0
  title 'Verify OpenCV and its dependencies are installed'

  %w(
    cmake
    libgtk2.0-dev
    pkg-config
    libavcodec-dev
    libavformat-dev
    libswscale-dev
    python-dev
    python-numpy
  ).each do |pkg|
    describe package pkg do
      it { should be_installed }
    end
  end

  describe file '/usr/local/lib/libopencv_core.so.2.4.13.6' do
    it { should exist }
  end
end