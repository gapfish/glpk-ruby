module GLPK
  class Problem
    attr_accessor :problem

    def initialize
      @problem = GLPK.glp_create_prob
    end

    def name=(name)
      GLPK.glp_set_prob_name(@problem, name)
    end

    def name
      GLPK.glp_get_prob_name(@problem)
    end
  end
end
