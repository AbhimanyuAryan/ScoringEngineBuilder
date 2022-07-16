(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir

using ScoringEngineBuilder
const UserApp = ScoringEngineBuilder
ScoringEngineBuilder.main()
