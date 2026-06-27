namespace FormalLanglandsLab
namespace Derived

structure DerivedObject where
  name : String
  degreeShift : Nat
  invariant : Nat → Nat

def toyDerivedObject : DerivedObject where
  name := "Toy derived object"
  degreeShift := 1
  invariant := fun n => n + 1

def derivedInvariant
    (D : DerivedObject)
    (n : Nat) : Nat :=
  D.invariant n

def sameDerivedInvariants
    (D E : DerivedObject) : Prop :=
  ∀ n : Nat, D.invariant n = E.invariant n

theorem toyDerivedObject_shift :
    toyDerivedObject.degreeShift = 1 := by
  rfl

theorem toyDerivedObject_invariant_two :
    derivedInvariant toyDerivedObject 2 = 3 := by
  rfl

theorem sameDerivedInvariants_refl
    (D : DerivedObject) :
    sameDerivedInvariants D D := by
  intro n
  rfl

end Derived
end FormalLanglandsLab
