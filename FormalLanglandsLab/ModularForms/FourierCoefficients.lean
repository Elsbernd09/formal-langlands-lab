import FormalLanglandsLab.ModularForms.QExpansion

namespace FormalLanglandsLab
namespace ModularForms

structure FourierCoefficientSystem where
  coefficient : Nat → Nat

def fromQExpansion
    (q : QExpansion) : FourierCoefficientSystem where
  coefficient := q.coeff

def toyFourierSystem : FourierCoefficientSystem :=
  fromQExpansion identityQExpansion

theorem toyFourierSystem_coeff_four :
    toyFourierSystem.coefficient 4 = 4 := by
  rfl

def sameFourierCoefficients
    (F G : FourierCoefficientSystem) : Prop :=
  ∀ n : Nat, F.coefficient n = G.coefficient n

theorem sameFourierCoefficients_refl
    (F : FourierCoefficientSystem) :
    sameFourierCoefficients F F := by
  intro n
  rfl

end ModularForms
end FormalLanglandsLab
