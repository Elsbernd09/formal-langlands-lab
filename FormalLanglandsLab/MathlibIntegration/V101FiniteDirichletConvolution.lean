import FormalLanglandsLab.MathlibIntegration.V100Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

set_option linter.unusedSimpArgs false

def v101PairContribution
    (f g : v33ArithmeticFunction)
    (ab : Nat × Nat) : Nat :=
  f ab.1 * g ab.2

def v101FiniteDirichletConvolutionOver
    (support : List (Nat × Nat))
    (f g : v33ArithmeticFunction) : Nat :=
  v51ContributionAggregate
    (support.map (v101PairContribution f g))

def v101DivisorPairSupportSix : List (Nat × Nat) :=
  [(1, 6), (2, 3), (3, 2), (6, 1)]

def v101DivisorPairSupportTwelve : List (Nat × Nat) :=
  [(1, 12), (2, 6), (3, 4), (4, 3), (6, 2), (12, 1)]

def v101FiniteDirichletConvolutionSix
    (f g : v33ArithmeticFunction) : Nat :=
  v101FiniteDirichletConvolutionOver
    v101DivisorPairSupportSix f g

def v101FiniteDirichletConvolutionTwelve
    (f g : v33ArithmeticFunction) : Nat :=
  v101FiniteDirichletConvolutionOver
    v101DivisorPairSupportTwelve f g

theorem v101_pair_contribution_value
    (f g : v33ArithmeticFunction)
    (a b : Nat) :
    v101PairContribution f g (a, b) =
      f a * g b := by
  rfl

theorem v101_six_support_length :
    v101DivisorPairSupportSix.length = 4 := by
  rfl

theorem v101_twelve_support_length :
    v101DivisorPairSupportTwelve.length = 6 := by
  rfl

theorem v101_finite_dirichlet_convolution_six_value
    (f g : v33ArithmeticFunction) :
    v101FiniteDirichletConvolutionSix f g =
      f 1 * g 6 +
      f 2 * g 3 +
      f 3 * g 2 +
      f 6 * g 1 := by
  simp [
    v101FiniteDirichletConvolutionSix,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportSix,
    v101PairContribution,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v101_finite_dirichlet_convolution_twelve_value
    (f g : v33ArithmeticFunction) :
    v101FiniteDirichletConvolutionTwelve f g =
      f 1 * g 12 +
      f 2 * g 6 +
      f 3 * g 4 +
      f 4 * g 3 +
      f 6 * g 2 +
      f 12 * g 1 := by
  simp [
    v101FiniteDirichletConvolutionTwelve,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportTwelve,
    v101PairContribution,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v101_six_one_one_value :
    v101FiniteDirichletConvolutionSix
      v33OneFunction v33OneFunction = 4 := by
  simp [
    v101FiniteDirichletConvolutionSix,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportSix,
    v101PairContribution,
    v33OneFunction,
    v51ContributionAggregate,
    v50NatListSum
  ]

theorem v101_twelve_one_one_value :
    v101FiniteDirichletConvolutionTwelve
      v33OneFunction v33OneFunction = 6 := by
  simp [
    v101FiniteDirichletConvolutionTwelve,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportTwelve,
    v101PairContribution,
    v33OneFunction,
    v51ContributionAggregate,
    v50NatListSum
  ]

theorem v101_six_identity_one_value :
    v101FiniteDirichletConvolutionSix
      v33IdentityFunction v33OneFunction = 12 := by
  simp [
    v101FiniteDirichletConvolutionSix,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportSix,
    v101PairContribution,
    v33IdentityFunction,
    v33OneFunction,
    v51ContributionAggregate,
    v50NatListSum
  ]

theorem v101_twelve_identity_one_value :
    v101FiniteDirichletConvolutionTwelve
      v33IdentityFunction v33OneFunction = 28 := by
  simp [
    v101FiniteDirichletConvolutionTwelve,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportTwelve,
    v101PairContribution,
    v33IdentityFunction,
    v33OneFunction,
    v51ContributionAggregate,
    v50NatListSum
  ]

theorem v101_six_one_identity_value :
    v101FiniteDirichletConvolutionSix
      v33OneFunction v33IdentityFunction = 12 := by
  simp [
    v101FiniteDirichletConvolutionSix,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportSix,
    v101PairContribution,
    v33IdentityFunction,
    v33OneFunction,
    v51ContributionAggregate,
    v50NatListSum
  ]

theorem v101_twelve_one_identity_value :
    v101FiniteDirichletConvolutionTwelve
      v33OneFunction v33IdentityFunction = 28 := by
  simp [
    v101FiniteDirichletConvolutionTwelve,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportTwelve,
    v101PairContribution,
    v33IdentityFunction,
    v33OneFunction,
    v51ContributionAggregate,
    v50NatListSum
  ]

def v101AbstractFiniteDirichletConvolutionPackage : Prop :=
  (v101DivisorPairSupportSix.length = 4) ∧
  (v101DivisorPairSupportTwelve.length = 6) ∧
  (∀ f g : v33ArithmeticFunction,
    v101FiniteDirichletConvolutionSix f g =
      f 1 * g 6 +
      f 2 * g 3 +
      f 3 * g 2 +
      f 6 * g 1) ∧
  (∀ f g : v33ArithmeticFunction,
    v101FiniteDirichletConvolutionTwelve f g =
      f 1 * g 12 +
      f 2 * g 6 +
      f 3 * g 4 +
      f 4 * g 3 +
      f 6 * g 2 +
      f 12 * g 1) ∧
  (v101FiniteDirichletConvolutionSix
    v33OneFunction v33OneFunction = 4) ∧
  (v101FiniteDirichletConvolutionTwelve
    v33OneFunction v33OneFunction = 6) ∧
  (v101FiniteDirichletConvolutionSix
    v33IdentityFunction v33OneFunction = 12) ∧
  (v101FiniteDirichletConvolutionTwelve
    v33IdentityFunction v33OneFunction = 28) ∧
  v100GeneralizedPrimeWindowCheckpointPackage

theorem v101_abstract_finite_dirichlet_convolution_package :
    v101AbstractFiniteDirichletConvolutionPackage := by
  exact ⟨
    v101_six_support_length,
    ⟨
      v101_twelve_support_length,
      ⟨
        v101_finite_dirichlet_convolution_six_value,
        ⟨
          v101_finite_dirichlet_convolution_twelve_value,
          ⟨
            v101_six_one_one_value,
            ⟨
              v101_twelve_one_one_value,
              ⟨
                v101_six_identity_one_value,
                ⟨
                  v101_twelve_identity_one_value,
                  v100_generalized_prime_window_checkpoint_package
                ⟩
              ⟩
            ⟩
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v101_abstract_finite_dirichlet_convolution_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
