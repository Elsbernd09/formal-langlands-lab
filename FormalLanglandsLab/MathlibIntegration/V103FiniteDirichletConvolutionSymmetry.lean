import FormalLanglandsLab.MathlibIntegration.V102Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false

theorem v103_pair_contribution_symmetry
    (f g : v33ArithmeticFunction)
    (a b : Nat) :
    v101PairContribution f g (a, b) =
      v101PairContribution g f (b, a) := by
  simp [v101PairContribution, Nat.mul_comm]

theorem v103_six_convolution_symmetry
    (f g : v33ArithmeticFunction) :
    v101FiniteDirichletConvolutionSix f g =
      v101FiniteDirichletConvolutionSix g f := by
  simp [
    v101FiniteDirichletConvolutionSix,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportSix,
    v101PairContribution,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.mul_comm,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v103_twelve_convolution_symmetry
    (f g : v33ArithmeticFunction) :
    v101FiniteDirichletConvolutionTwelve f g =
      v101FiniteDirichletConvolutionTwelve g f := by
  simp [
    v101FiniteDirichletConvolutionTwelve,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportTwelve,
    v101PairContribution,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.mul_comm,
    Nat.add_assoc,
    Nat.add_comm,
    Nat.add_left_comm
  ]

theorem v103_six_identity_one_symmetry :
    v101FiniteDirichletConvolutionSix
      v33IdentityFunction v33OneFunction =
    v101FiniteDirichletConvolutionSix
      v33OneFunction v33IdentityFunction := by
  exact v103_six_convolution_symmetry
    v33IdentityFunction v33OneFunction

theorem v103_twelve_identity_one_symmetry :
    v101FiniteDirichletConvolutionTwelve
      v33IdentityFunction v33OneFunction =
    v101FiniteDirichletConvolutionTwelve
      v33OneFunction v33IdentityFunction := by
  exact v103_twelve_convolution_symmetry
    v33IdentityFunction v33OneFunction

theorem v103_six_identity_one_symmetric_value :
    v101FiniteDirichletConvolutionSix
      v33OneFunction v33IdentityFunction = 12 := by
  exact v101_six_one_identity_value

theorem v103_twelve_identity_one_symmetric_value :
    v101FiniteDirichletConvolutionTwelve
      v33OneFunction v33IdentityFunction = 28 := by
  exact v101_twelve_one_identity_value

theorem v103_six_square_one_symmetry :
    v101FiniteDirichletConvolutionSix
      v63SquareFunction v33OneFunction =
    v101FiniteDirichletConvolutionSix
      v33OneFunction v63SquareFunction := by
  exact v103_six_convolution_symmetry
    v63SquareFunction v33OneFunction

theorem v103_twelve_square_one_symmetry :
    v101FiniteDirichletConvolutionTwelve
      v63SquareFunction v33OneFunction =
    v101FiniteDirichletConvolutionTwelve
      v33OneFunction v63SquareFunction := by
  exact v103_twelve_convolution_symmetry
    v63SquareFunction v33OneFunction

def v103FiniteDirichletConvolutionSymmetryPackage : Prop :=
  (∀ f g : v33ArithmeticFunction,
    v101FiniteDirichletConvolutionSix f g =
      v101FiniteDirichletConvolutionSix g f) ∧
  (∀ f g : v33ArithmeticFunction,
    v101FiniteDirichletConvolutionTwelve f g =
      v101FiniteDirichletConvolutionTwelve g f) ∧
  (v101FiniteDirichletConvolutionSix
      v33OneFunction v33IdentityFunction = 12) ∧
  (v101FiniteDirichletConvolutionTwelve
      v33OneFunction v33IdentityFunction = 28) ∧
  v102FiniteDirichletConvolutionLinearityPackage

theorem v103_finite_dirichlet_convolution_symmetry_package :
    v103FiniteDirichletConvolutionSymmetryPackage := by
  exact ⟨
    v103_six_convolution_symmetry,
    ⟨
      v103_twelve_convolution_symmetry,
      ⟨
        v103_six_identity_one_symmetric_value,
        ⟨
          v103_twelve_identity_one_symmetric_value,
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
