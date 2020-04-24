module GLPK
  class Column
    attr_accessor :problem, :index

    def initialize(problem, index)
      @problem = problem
      @index = index
    end

    def name=(name)
      GLPK.glp_set_col_name(_problem, @index, name)
    end

    def name
      GLPK.glp_get_col_name(_problem, @index)
    end

    private

    def _problem
      @problem.problem
    end
  end
end
