import FormalLanglandsLab.Cohomology.CohomologyGroups
import FormalLanglandsLab.Galois.GaloisRepresentations
import FormalLanglandsLab.Galois.MatrixRepresentations
import FormalLanglandsLab.LinearAlgebra.Matrices

namespace FormalLanglandsLab
namespace Galois

open FormalLanglandsLab.Cohomology
open FormalLanglandsLab.LinearAlgebra

def representationFromCohomology
    (H : CohomologyGroupPrototype) : RepresentationPrototype where
  source := absoluteGaloisQPrototype
  dimension := H.rank
  trace := fun n => H.invariant n

def matrixFromCohomologyInvariant
    (a : Nat) : Matrix2x2 where
  a11 := a
  a12 := 0
  a21 := 0
  a22 := 0

def matrixRepresentationFromCohomology
    (H : CohomologyGroupPrototype) : MatrixRepresentationPrototype where
  source := absoluteGaloisQPrototype
  dimension := H.rank
  matrixAt := fun n => matrixFromCohomologyInvariant (H.invariant n)

theorem representationFromCohomology_trace
    (H : CohomologyGroupPrototype)
    (n : Nat) :
    (representationFromCohomology H).trace n = H.invariant n := by
  rfl

theorem matrixRepresentationFromCohomology_trace
    (H : CohomologyGroupPrototype)
    (n : Nat) :
    matrixTrace (matrixRepresentationFromCohomology H) n = H.invariant n := by
  rfl

theorem toyCohomology_representation_trace_two :
    (representationFromCohomology toyCohomologyGroup).trace 2 = 3 := by
  rfl

theorem toyCohomology_matrix_trace_two :
    matrixTrace (matrixRepresentationFromCohomology toyCohomologyGroup) 2 = 3 := by
  rfl

end Galois
end FormalLanglandsLab
