import FormalLanglandsLab.Galois.GaloisRepresentations

namespace FormalLanglandsLab
namespace Galois

structure FrobeniusTraceSystem where
  traceAt : Nat → Nat

def frobeniusTracesFromRepresentation
    (rho : RepresentationPrototype) : FrobeniusTraceSystem where
  traceAt := rho.trace

def toyFrobeniusTraceSystem : FrobeniusTraceSystem :=
  frobeniusTracesFromRepresentation toyTwoDimensionalRepresentation

theorem toyFrobeniusTrace_two :
    toyFrobeniusTraceSystem.traceAt 2 = 3 := by
  rfl

theorem toyFrobeniusTrace_three :
    toyFrobeniusTraceSystem.traceAt 3 = 4 := by
  rfl

def sameFrobeniusTraces
    (A B : FrobeniusTraceSystem) : Prop :=
  ∀ n : Nat, A.traceAt n = B.traceAt n

theorem sameFrobeniusTraces_refl
    (A : FrobeniusTraceSystem) :
    sameFrobeniusTraces A A := by
  intro n
  rfl

end Galois
end FormalLanglandsLab
