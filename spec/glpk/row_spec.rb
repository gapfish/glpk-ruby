require 'glpk/row'

RSpec.describe GLPK::Row do
  describe 'name' do
    let(:prob) { GLPK::Problem.new }
    let(:row) { GLPK::Row.new(prob, 0) }
    let(:row_name) { 'glpk_test' }
    before { row.name = row_name }

    it "sets a name correctly" do
      expect(row.name).to eq(row_name)
    end
  end
end
