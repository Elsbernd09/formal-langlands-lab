import FormalLanglandsLab.MathlibIntegration.V101Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false

theorem v102_pair_contribution_left_add
    (f h g : v33ArithmeticFunction)
    (a b : Nat) :
    v101PairContribution (v34PointwiseAdd f h) g (a, b) =
      v101PairContribution f g (a, b) +
      v101PairContribution h g (a, b) := by
  simp [
    v101PairContribution,
    v34PointwiseAdd,
    Nat.left_distrib
  ]

theorem v102_pair_contribution_right_add
    (f g h : v33ArithmeticFunction)
    (a b : Nat) :
    v101PairContribution f (v34PointwiseAdd g h) (a, b) =
      v101PairContribution f g (a, b) +
      v101PairContribution f h (a, b) := by
  simp [
    v101PairContribution,
    v34PointwiseAdd,
    Nat.right_distrib
  ]

theorem v102_six_left_add_expansion
    (f h g : v33ArithmeticFunction) :
    v101FiniteDirichletConvolutionSix
      (v34PointwiseAdd f h) g =
      (f 1 + h 1) * g 6 +
      (f 2 + h 2) * g 3 +
      (f 3 + h 3) * g 2 +
      (f 6 + h 6) * g 1 := by
  simp [
    v101FiniteDirichletConvolutionSix,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportSix,
    v101PairContribution,
    v34PointwiseAdd,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v102_six_right_add_expansion
    (f g h : v33ArithmeticFunction) :
    v101FiniteDirichletConvolutionSix
      f (v34PointwiseAdd g h) =
      f 1 * (g 6 + h 6) +
      f 2 * (g 3 + h 3) +
      f 3 * (g 2 + h 2) +
      f 6 * (g 1 + h 1) := by
  simp [
    v101FiniteDirichletConvolutionSix,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportSix,
    v101PairContribution,
    v34PointwiseAdd,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v102_twelve_left_add_expansion
    (f h g : v33ArithmeticFunction) :
    v101FiniteDirichletConvolutionTwelve
      (v34PointwiseAdd f h) g =
      (f 1 + h 1) * g 12 +
      (f 2 + h 2) * g 6 +
      (f 3 + h 3) * g 4 +
      (f 4 + h 4) * g 3 +
      (f 6 + h 6) * g 2 +
      (f 12 + h 12) * g 1 := by
  simp [
    v101FiniteDirichletConvolutionTwelve,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportTwelve,
    v101PairContribution,
    v34PointwiseAdd,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v102_twelve_right_add_expansion
    (f g h : v33ArithmeticFunction) :
    v101FiniteDirichletConvolutionTwelve
      f (v34PointwiseAdd g h) =
      f 1 * (g 12 + h 12) +
      f 2 * (g 6 + h 6) +
      f 3 * (g 4 + h 4) +
      f 4 * (g 3 + h 3) +
      f 6 * (g 2 + h 2) +
      f 12 * (g 1 + h 1) := by
  simp [
    v101FiniteDirichletConvolutionTwelve,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportTwelve,
    v101PairContribution,
    v34PointwiseAdd,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v102_six_left_add_linearity
    (f h g : v33ArithmeticFunction) :
    v101FiniteDirichletConvolutionSix
      (v34PointwiseAdd f h) g =
      v101FiniteDirichletConvolutionSix f g +
      v101FiniteDirichletConvolutionSix h g := by
  simp [
    v101FiniteDirichletConvolutionSix,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportSix,
    v101PairContribution,
    v34PointwiseAdd,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.left_distrib,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v102_six_right_add_linearity
    (f g h : v33ArithmeticFunction) :
    v101FiniteDirichletConvolutionSix
      f (v34PointwiseAdd g h) =
      v101FiniteDirichletConvolutionSix f g +
      v101FiniteDirichletConvolutionSix f h := by
  simp [
    v101FiniteDirichletConvolutionSix,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportSix,
    v101PairContribution,
    v34PointwiseAdd,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.right_distrib,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v102_twelve_left_add_linearity
    (f h g : v33ArithmeticFunction) :
    v101FiniteDirichletConvolutionTwelve
      (v34PointwiseAdd f h) g =
      v101FiniteDirichletConvolutionTwelve f g +
      v101FiniteDirichletConvolutionTwelve h g := by
  simp [
    v101FiniteDirichletConvolutionTwelve,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportTwelve,
    v101PairContribution,
    v34PointwiseAdd,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.left_distrib,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v102_twelve_right_add_linearity
    (f g h : v33ArithmeticFunction) :
    v101FiniteDirichletConvolutionTwelve
      f (v34PointwiseAdd g h) =
      v101FiniteDirichletConvolutionTwelve f g +
      v101FiniteDirichletConvolutionTwelve f h := by
  simp [
    v101FiniteDirichletConvolutionTwelve,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportTwelve,
    v101PairContribution,
    v34PointwiseAdd,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.right_distrib,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

def v102FiniteDirichletConvolutionLinearityPackage : Prop :=
  (∀ f h g : v33ArithmeticFunction,
    v101FiniteDirichletConvolutionSix
      (v34PointwiseAdd f h) g =
      v101FiniteDirichletConvolutionSix f g +
      v101FiniteDirichletConvolutionSix h g) ∧
  (∀ f g h : v33ArithmeticFunction,
    v101FiniteDirichletConvolutionSix
      f (v34PointwiseAdd g h) =
      v101FiniteDirichletConvolutionSix f g +
      v101FiniteDirichletConvolutionSix f h) ∧
  (∀ f h g : v33ArithmeticFunction,
    v101FiniteDirichletConvolutionTwelve
      (v34PointwiseAdd f h) g =
      v101FiniteDirichletConvolutionTwelve f g +
      v101FiniteDirichletConvolutionTwelve h g) ∧
  (∀ f g h : v33ArithmeticFunction,
    v101FiniteDirichletConvolutionTwelve
      f (v34PointwiseAdd g h) =
      v101FiniteDirichletConvolutionTwelve f g +
      v101FiniteDirichletConvolutionTwelve f h) ∧
  v101AbstractFiniteDirichletConvolutionPackage

theorem v102_finite_dirichlet_convolution_linearity_package :
    v102FiniteDirichletConvolutionLinearityPackage := by
  exact ⟨
    v102_six_left_add_linearity,
    ⟨
      v102_six_right_add_linearity,
      ⟨
        v102_twelve_left_add_linearity,
        ⟨
          v102_twelve_right_add_linearity,
          v101_abstract_finite_dirichlet_convolution_package
        ⟩
      ⟩
    ⟩
  ⟩

theorem v102_finite_dirichlet_convolution_linearity_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
