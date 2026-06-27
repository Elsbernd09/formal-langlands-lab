import FormalLanglandsLab.Derived.DerivedObjects

namespace FormalLanglandsLab
namespace Derived

structure StackObject where
  name : String
  localObject : Nat → DerivedObject

def toyStackObject : StackObject where
  name := "Toy stack object"
  localObject := fun n => {
    name := "Local derived object"
    degreeShift := n
    invariant := fun k => n + k
  }

def stackInvariant
    (S : StackObject)
    (n : Nat) : Nat :=
  (S.localObject n).invariant n

def sameStackInvariants
    (S T : StackObject) : Prop :=
  ∀ n : Nat, stackInvariant S n = stackInvariant T n

theorem toyStackObject_invariant_two :
    stackInvariant toyStackObject 2 = 4 := by
  rfl

theorem sameStackInvariants_refl
    (S : StackObject) :
    sameStackInvariants S S := by
  intro n
  rfl

def constantStackFromDerived
    (D : DerivedObject) : StackObject where
  name := D.name
  localObject := fun _ => D

theorem constantStack_invariant
    (D : DerivedObject)
    (n : Nat) :
    stackInvariant (constantStackFromDerived D) n = D.invariant n := by
  rfl

end Derived
end FormalLanglandsLab
