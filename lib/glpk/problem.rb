module GLPK
  class Problem
    def initialize
      @lp = GLPK.glp_create_prob
    end

    def name=(name)
      GLPK.glp_set_prob_name(@lp, name)
    end

    def name
      GLPK.glp_get_prob_name(@lp)
    end
  end
end
