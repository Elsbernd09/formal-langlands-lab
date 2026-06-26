import FormalLanglandsLab.LFunctions.LocalFactors

namespace FormalLanglandsLab
namespace LFunctions

def LocalGlobalCompatible
    (L : FormalDirichletSeries)
    (F : LocalFactorSystem) : Prop :=
  ∀ n : Nat, (F.localFactorAt n).coefficient = L.coeff n

theorem localFactorSystemFromSeries_compatible
    (L : FormalDirichletSeries) :
    LocalGlobalCompatible L (localFactorSystemFromSeries L) := by
  intro n
  rfl

def sameLocalFactors
    (F G : LocalFactorSystem) : Prop :=
  ∀ n : Nat,
    (F.localFactorAt n).coefficient =
    (G.localFactorAt n).coefficient

theorem sameLocalFactors_refl
    (F : LocalFactorSystem) :
    sameLocalFactors F F := by
  intro n
  rfl

theorem coefficientAgreement_implies_sameLocalFactors
    (L₁ L₂ : FormalDirichletSeries)
    (h : coeffAgreement L₁ L₂) :
    sameLocalFactors
      (localFactorSystemFromSeries L₁)
      (localFactorSystemFromSeries L₂) := by
  intro n
  exact h n

end LFunctions
end FormalLanglandsLab
