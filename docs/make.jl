using Documenter, ImagPhotonics

makedocs( root="./",
    modules = [ImagPhotonics],
    build = "build",
    source= "src",
    clean = true,
    sitename = "ImagPhotonics",
    authors = "Marco Menarini, and contributors.",
    pages = [
        "Home" => "index.md",
        "Manual" => Any["Guide" => "man/examples.md"],
        "Library" => Any["Public"=> "lib/functions.md"]
    ],
    doctest=true,
    highlightsig = true,
    expandfirst = [],
)
deploydocs(
    repo = "github.com/uriele/ImagPhotonics.git",
    target = "build",
    push_preview = true,
    devbranch = "main",
)
