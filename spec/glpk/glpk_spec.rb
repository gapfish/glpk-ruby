RSpec.describe GLPK do
  it "has a version number" do
    expect(GLPK::VERSION).not_to be_nil
  end

  describe 'glp_create_prob' do
    let(:prob) { GLPK.glp_create_prob }

    it "creates a glpk prob" do
      expect(prob.class).to be(FFI::Pointer)
    end
  end

  describe 'glp set and get prob name' do
    let(:prob) { GLPK.glp_create_prob }
    let(:prob_name) { 'glpk_test' }
    before { GLPK.glp_set_prob_name(prob, prob_name) }

    it "sets a name correctly" do
      expect(GLPK.glp_get_prob_name(prob)).to eq(prob_name)
    end
  end
end
