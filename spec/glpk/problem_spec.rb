require 'glpk/problem'

RSpec.describe GLPK::Problem do
  describe 'name' do
    let(:prob) { GLPK::Problem.new }
    let(:prob_name) { 'glpk_test' }
    before { prob.name = prob_name }

    it "sets a name correctly" do
      expect(prob.name).to eq(prob_name)
    end
  end
end
