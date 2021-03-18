module StrideArrays

# Write your package code here.

using VectorizationBase, ArrayInterface,
    SLEEFPirates, VectorizedRNG,
    LoopVectorization, LinearAlgebra,
    Random#, StackPointers#,
    # SpecialFunctions # Perhaps there is a better way to support erf?

using VectorizationBase: align, gep, AbstractStridedPointer, AbstractSIMDVector, vnoaliasstore!, staticm1,
    static_sizeof, lazymul, vmul_fast, StridedPointer, gesp, zero_offsets, pause, zstridedpointer,
    val_dense_dims, val_stride_rank
using LoopVectorization: maybestaticsize, preserve_buffer, CloseOpen
using ArrayInterface: StaticInt, Zero, One, StaticBool, True, False,
    OptionallyStaticUnitRange, size, strides, offsets, indices,
    static_length, static_first, static_last, axes,
    dense_dims, stride_rank

using Octavian
using Octavian: MemoryBuffer

export @StrideArray, @gc_preserve, # @Constant,
    AbstractStrideArray, AbstractStrideVector, AbstractStrideMatrix,
    StrideArray, StrideVector, StrideMatrix,
    PtrArray,# PtrVector, PtrMatrix,
    # ConstantArray, ConstantVector, ConstantMatrix, allocarray,
    matmul!, matmul_serial!, mul!, *ˡ, StaticInt,
    matmul, matmul_serial
# LazyMap, 

include("type_declarations.jl")
include("size_and_strides.jl")
include("adjoints.jl")
include("stridedpointers.jl")
include("indexing.jl")
include("initialization.jl")
include("views.jl")
include("rand.jl")
include("blas.jl")
include("broadcast.jl")
include("miscellaneous.jl")


# include("precompile.jl")
# _precompile_()


end
