using Stipple
using StippleUI
using StipplePlotly

using Stipple.Pages
using Stipple.ModelStorage.Sessions

using ScoringEngineBuilder
using ScoringEngineBuilder.ScoringEngine

# using BSON
# using HTTP
# using Sockets
# using JSON3
# using JSONTables
# using DataFrames
# using Stipple
# using StippleUI
# using StipplePlotly
# using PlotlyBase
# using Random

# using ShapML
# using Weave

# using StatsBase: sample
# using Statistics: mean, std

@info "Inside Routes.jl"


# include("models/scoringengine/ScoringEngineDemo.jl")
# include("models/scoringengine/setup.jl")


Page("/", view = "views/hello.jl.html",
          layout = "layouts/app.jl.html",
          model = () -> ScoringEngineBuilder.ScoringEngine.Score |> init_from_storage |> ScoringEngine.handlers,
          context = @__MODULE__)
