require 'glpk/column'

RSpec.describe GLPK::Column do
  describe 'name' do
    let(:prob) { GLPK::Problem.new }
    let(:row) { GLPK::Row.new(prob, 0) }
    let(:column) { GLPK::Column.new(prob, 1) }
    let(:column_name) { 'glpk_test' }
    before { column.name = column_name }

    it "sets a name correctly" do
      expect(column.name).to eq(column_name)
    end
  end
end
