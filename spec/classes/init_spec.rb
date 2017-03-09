require 'spec_helper'
describe 'simple_motd' do

  context 'with defaults for all parameters' do
    it { should contain_class('simple_motd') }
  end
end
