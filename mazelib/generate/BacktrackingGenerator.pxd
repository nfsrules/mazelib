cimport cython
#cython: language_level=3, boundscheck=False, wraparound=False, initializedcheck=False, cdivision=True
from mazelib.generate.MazeGenAlgo cimport MazeGenAlgo
from numpy cimport ndarray
cimport numpy as np


cdef class BacktrackingGenerator(MazeGenAlgo):

    @cython.locals(grid=ndarray, crow=cython.uint, ccol=cython.uint, nrow=cython.uint, ncol=cython.uint, track=list,
                   neighbors=list)
    cpdef ndarray[cython.char, ndim=2] generate(self)