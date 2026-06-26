namespace FormalLanglandsLab
namespace ModularForms

structure QExpansion where
  coeff : Nat → Nat

def constantQExpansion : QExpansion where
  coeff := fun _ => 1

def identityQExpansion : QExpansion where
  coeff := fun n => n

def coefficientAgreement
    (q₁ q₂ : QExpansion) : Prop :=
  ∀ n : Nat, q₁.coeff n = q₂.coeff n

theorem coefficientAgreement_refl
    (q : QExpansion) : coefficientAgreement q q := by
  intro n
  rfl

theorem constantQExpansion_coeff_two :
    constantQExpansion.coeff 2 = 1 := by
  rfl

theorem identityQExpansion_coeff_three :
    identityQExpansion.coeff 3 = 3 := by
  rfl

end ModularForms
end FormalLanglandsLab
