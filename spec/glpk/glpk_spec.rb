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
end
