module SimplePackage

import Ipopt
import JuMP

function Rosenbrock()
    model = JuMP.Model(Ipopt.Optimizer)
    JuMP.@variable(model, x, start = 0.0)
    JuMP.@variable(model, y, start = 0.0)

    JuMP.@NLobjective(model, Min, (1 - x)^2 + 100 * (y - x^2)^2)

    JuMP.optimize!(model)
    println("x = ", JuMP.value(x), " y = ", JuMP.value(y))
    return model
end

end # module
