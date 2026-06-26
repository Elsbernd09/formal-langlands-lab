namespace FormalLanglandsLab
namespace Galois

structure GaloisGroupPrototype where
  name : String
  degree : Nat

structure RepresentationPrototype where
  source : GaloisGroupPrototype
  dimension : Nat
  trace : Nat → Nat

def absoluteGaloisQPrototype : GaloisGroupPrototype where
  name := "Gal(Qbar/Q)"
  degree := 0

def toyTwoDimensionalRepresentation : RepresentationPrototype where
  source := absoluteGaloisQPrototype
  dimension := 2
  trace := fun n => n + 1

theorem toyRepresentation_dimension :
    toyTwoDimensionalRepresentation.dimension = 2 := by
  rfl

theorem toyRepresentation_trace_two :
    toyTwoDimensionalRepresentation.trace 2 = 3 := by
  rfl

end Galois
end FormalLanglandsLab
