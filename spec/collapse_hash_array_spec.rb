require 'spec_helper'

describe CollapseHashArray do
  let(:uncollapsed_log) {[
                          {time: 201201, x: 2},
                          {time: 201201, y: 7},
                          {time: 201201, z: 2},
                          {time: 201202, a: 3},
                          {time: 201202, b: 4},
                          {time: 201202, c: 0}
                         ]}
  let(:collapsed_log) {[
                       {time: 201201, x: 2, y: 7, z: 2},
                       {time: 201202, a: 3, b: 4, c: 0},
                      ]}

  it "should collapse the log" do
    CollapseHashArray.collapse(uncollapsed_log, :time).should == collapsed_log
  end

end
