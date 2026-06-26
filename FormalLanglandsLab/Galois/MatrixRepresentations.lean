import FormalLanglandsLab.Galois.GaloisRepresentations
import FormalLanglandsLab.LinearAlgebra.Matrices

namespace FormalLanglandsLab
namespace Galois

open FormalLanglandsLab.LinearAlgebra

structure MatrixRepresentationPrototype where
  source : GaloisGroupPrototype
  dimension : Nat
  matrixAt : Nat → Matrix2x2

def toyMatrixRepresentation : MatrixRepresentationPrototype where
  source := absoluteGaloisQPrototype
  dimension := 2
  matrixAt := fun n => scalarMatrix2x2 n

def matrixTrace
    (rho : MatrixRepresentationPrototype)
    (n : Nat) : Nat :=
  trace2x2 (rho.matrixAt n)

def matrixDeterminant
    (rho : MatrixRepresentationPrototype)
    (n : Nat) : Nat :=
  determinant2x2 (rho.matrixAt n)

theorem toyMatrixRepresentation_dimension :
    toyMatrixRepresentation.dimension = 2 := by
  rfl

theorem toyMatrixRepresentation_trace_two :
    matrixTrace toyMatrixRepresentation 2 = 4 := by
  rfl

theorem toyMatrixRepresentation_determinant_two :
    matrixDeterminant toyMatrixRepresentation 2 = 4 := by
  rfl

def traceRepresentationFromMatrixRepresentation
    (rho : MatrixRepresentationPrototype) : RepresentationPrototype where
  source := rho.source
  dimension := rho.dimension
  trace := fun n => matrixTrace rho n

theorem traceRepresentation_from_toyMatrix_trace_two :
    (traceRepresentationFromMatrixRepresentation toyMatrixRepresentation).trace 2 = 4 := by
  rfl

end Galois
end FormalLanglandsLab
