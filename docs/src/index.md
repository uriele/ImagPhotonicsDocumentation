# Home
ImagPhotonics is a package that offers a comprehensive solution for designing, simulating, and optimizing photonic structures. With this package, you can:

1. Create photonic structures and connections between them.
2. Simulate and optimize structures using FDFD, FDTD, and the Beam Propagation Method.
3. Export the structures directly in GDSII format for fabrication.
4. Extend the RefractiveIndex library to allow for custom materials and databases.

# Installation
To install ImagPhotonics, open your Julia REPL and enter the package manager mode by typing ]. Then, run the following command:

```julia
add ImagPhotonics
```
# Overview
ImagPhotonics is organized into several modules and functions, providing a variety of tools for different tasks.

## Utility Functions (utility.jl)
- `normalize`: Normalize units to simplify computations tasks
- `λ_to_ω`: transform between wavelengths and frequencies   
- `ω_to_λ`: transform between frequencies and wavelengths
## Wrapper for gdstk (WrapperGdstk)
Create a wrapper for visualizing GDSII files and interact with them python libraries.
- `visualize_cell`: visualize a single cell of the gds file
- `visualize_gds`: visualize the entire layout with a marker for the connections
- `write_gds`: save the layout in GDSII form
- `read_gds`: import an external gds file to be used in computation. For simplicity each element should be in a different cell.
## Device Components
- `Device{T} <: AbstractComponent{T}` : contains the main active device to be simulated. Additional information about the internal pattering should be provided separately.
- `Taper{T} <: AbstractComponent{T}` : contains the information about the taper and termination for the waveguides
- `Waveguide{T} <: AbstractComponent{T}`: main connection element
- `Couplers{T} <: AbstractComponent{T}` : creates a connector for two waveguides, the main parameter to control are the total lenght, length of the coupling and distance
- `Resonator{T} <: AbstractComponent{T}` : creates ring resonators, the main parameters are width, diameter and distance.
## Material Properties
Extend the library RefractiveIndex to allow for custom libraries and materials.
- `initialize_custom_lib`: define CustomLib path
- `save_custom_lib`: save current CustomLib
- `load_custom_lib`: load current CustomLib
- `add_custom_material`: add new material to the CustomLib and return it to the user
- `remove_custom_material`: remove material from the CustomLib.
## Physical Problem
This module defines the grid discretization of the object and sets up the problem for various solvers such as Finite Difference Frequency Domain (FDFD), Finite Difference Time Domain (FDTD), or the Beam Propagation Method (BPM).

ImagPhotonics can be used with other solvers or even with user-defined solvers.

Refer to the individual function documentation for more details on their usage.

# Getting Started
To start using ImagPhotonics, simply import the package and explore its various features:

```julia
using ImagPhotonics
```
For more detailed information, consult the package documentation, which provides in-depth explanations and examples of how to use each function and module.

```@contents
Pages =["lib/functions.md"]
Depth =1
```