require 'spec_helper'

describe HardWorker do
  it { expect(HardWorker).to be_processed_in :default }
end
