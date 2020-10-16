using SimplePackage, JuMP, Test
model = SimplePackage.Rosenbrock()

@test isapprox(value(model[:x]), 1.0)
@test isapprox(value(model[:y]), 1.0)
