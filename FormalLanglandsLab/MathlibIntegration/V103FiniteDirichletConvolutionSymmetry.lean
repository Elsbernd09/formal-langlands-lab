import FormalLanglandsLab.MathlibIntegration.V102Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false

theorem v103_pair_contribution_swap_symmetry
    (f g : v33ArithmeticFunction)
    (a b : Nat) :
    v101PairContribution f g (a, b) =
      v101PairContribution g f (v101SwapPair (a, b)) := by
  simp [v101PairContribution, v101SwapPair, Nat.mul_comm]

theorem v103_six_support_swap_symmetry
    (p : Nat × Nat) :
    p ∈ v101DivisorPairSupportSix →
      v101SwapPair p ∈ v101DivisorPairSupportSix := by
  intro hp
  simp [v101DivisorPairSupportSix, v101SwapPair] at hp ⊢
  rcases hp with rfl | rfl | rfl | rfl <;> simp [v101DivisorPairSupportSix, v101SwapPair]

theorem v103_twelve_support_swap_symmetry
    (p : Nat × Nat) :
    p ∈ v101DivisorPairSupportTwelve →
      v101SwapPair p ∈ v101DivisorPairSupportTwelve := by
  intro hp
  simp [v101DivisorPairSupportTwelve, v101SwapPair] at hp ⊢
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl <;> simp [v101DivisorPairSupportTwelve, v101SwapPair]

theorem v103_six_convolution_symmetry
    (f g : v33ArithmeticFunction) :
    v101FiniteDirichletConvolutionSix f g =
      v101FiniteDirichletConvolutionSix g f := by
  rw [
    v101_finite_dirichlet_convolution_six_value,
    v101_finite_dirichlet_convolution_six_value
  ]
  simp [Nat.mul_comm, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]

theorem v103_twelve_convolution_symmetry
    (f g : v33ArithmeticFunction) :
    v101FiniteDirichletConvolutionTwelve f g =
      v101FiniteDirichletConvolutionTwelve g f := by
  rw [
    v101_finite_dirichlet_convolution_twelve_value,
    v101_finite_dirichlet_convolution_twelve_value
  ]
  simp [Nat.mul_comm, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm]

def v103FiniteDirichletConvolutionSymmetryPackage : Prop :=
  (∀ f g : v33ArithmeticFunction,
    v101FiniteDirichletConvolutionSix f g =
      v101FiniteDirichletConvolutionSix g f) ∧
  (∀ f g : v33ArithmeticFunction,
    v101FiniteDirichletConvolutionTwelve f g =
      v101FiniteDirichletConvolutionTwelve g f) ∧
  (∀ p : Nat × Nat,
    p ∈ v101DivisorPairSupportSix →
      v101SwapPair p ∈ v101DivisorPairSupportSix) ∧
  (∀ p : Nat × Nat,
    p ∈ v101DivisorPairSupportTwelve →
      v101SwapPair p ∈ v101DivisorPairSupportTwelve) ∧
  v102FiniteDirichletConvolutionLinearityPackage

theorem v103_finite_dirichlet_convolution_symmetry_package :
    v103FiniteDirichletConvolutionSymmetryPackage := by
  exact ⟨
    v103_six_convolution_symmetry,
    ⟨
      v103_twelve_convolution_symmetry,
      ⟨
        v103_six_support_swap_symmetry,
        ⟨
          v103_twelve_support_swap_symmetry,
          v102_finite_dirichlet_convolution_linearity_package
        ⟩
      ⟩
    ⟩
  ⟩

theorem v103_finite_dirichlet_convolution_symmetry_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
