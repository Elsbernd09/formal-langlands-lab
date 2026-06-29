import FormalLanglandsLab.MathlibIntegration.V103Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

set_option maxHeartbeats 2000000
set_option linter.unusedSimpArgs false

def v104FiniteDivisorSumSix
    (f : v33ArithmeticFunction) : Nat :=
  v101FiniteDirichletConvolutionSix f v33OneFunction

def v104FiniteDivisorSumTwelve
    (f : v33ArithmeticFunction) : Nat :=
  v101FiniteDirichletConvolutionTwelve f v33OneFunction

theorem v104_divisor_sum_six_definition
    (f : v33ArithmeticFunction) :
    v104FiniteDivisorSumSix f =
      v101FiniteDirichletConvolutionSix f v33OneFunction := by
  rfl

theorem v104_divisor_sum_twelve_definition
    (f : v33ArithmeticFunction) :
    v104FiniteDivisorSumTwelve f =
      v101FiniteDirichletConvolutionTwelve f v33OneFunction := by
  rfl

theorem v104_divisor_sum_six_expansion
    (f : v33ArithmeticFunction) :
    v104FiniteDivisorSumSix f =
      f 1 + f 2 + f 3 + f 6 := by
  simp [
    v104FiniteDivisorSumSix,
    v101FiniteDirichletConvolutionSix,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportSix,
    v101PairContribution,
    v33OneFunction,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v104_divisor_sum_twelve_expansion
    (f : v33ArithmeticFunction) :
    v104FiniteDivisorSumTwelve f =
      f 1 + f 2 + f 3 + f 4 + f 6 + f 12 := by
  simp [
    v104FiniteDivisorSumTwelve,
    v101FiniteDirichletConvolutionTwelve,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportTwelve,
    v101PairContribution,
    v33OneFunction,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v104_divisor_sum_six_by_right_convolution
    (f : v33ArithmeticFunction) :
    v101FiniteDirichletConvolutionSix f v33OneFunction =
      f 1 + f 2 + f 3 + f 6 := by
  exact v104_divisor_sum_six_expansion f

theorem v104_divisor_sum_twelve_by_right_convolution
    (f : v33ArithmeticFunction) :
    v101FiniteDirichletConvolutionTwelve f v33OneFunction =
      f 1 + f 2 + f 3 + f 4 + f 6 + f 12 := by
  exact v104_divisor_sum_twelve_expansion f

theorem v104_divisor_sum_six_by_left_convolution
    (f : v33ArithmeticFunction) :
    v101FiniteDirichletConvolutionSix v33OneFunction f =
      f 1 + f 2 + f 3 + f 6 := by
  calc
    v101FiniteDirichletConvolutionSix v33OneFunction f
        = v101FiniteDirichletConvolutionSix f v33OneFunction := by
          exact v103_six_convolution_symmetry v33OneFunction f
    _ = f 1 + f 2 + f 3 + f 6 := by
          exact v104_divisor_sum_six_expansion f

theorem v104_divisor_sum_twelve_by_left_convolution
    (f : v33ArithmeticFunction) :
    v101FiniteDirichletConvolutionTwelve v33OneFunction f =
      f 1 + f 2 + f 3 + f 4 + f 6 + f 12 := by
  calc
    v101FiniteDirichletConvolutionTwelve v33OneFunction f
        = v101FiniteDirichletConvolutionTwelve f v33OneFunction := by
          exact v103_twelve_convolution_symmetry v33OneFunction f
    _ = f 1 + f 2 + f 3 + f 4 + f 6 + f 12 := by
          exact v104_divisor_sum_twelve_expansion f

theorem v104_one_function_divisor_sum_six_value :
    v104FiniteDivisorSumSix v33OneFunction = 4 := by
  exact v101_six_one_one_value

theorem v104_one_function_divisor_sum_twelve_value :
    v104FiniteDivisorSumTwelve v33OneFunction = 6 := by
  exact v101_twelve_one_one_value

theorem v104_identity_function_divisor_sum_six_value :
    v104FiniteDivisorSumSix v33IdentityFunction = 12 := by
  exact v101_six_identity_one_value

theorem v104_identity_function_divisor_sum_twelve_value :
    v104FiniteDivisorSumTwelve v33IdentityFunction = 28 := by
  exact v101_twelve_identity_one_value

theorem v104_square_function_divisor_sum_six_value :
    v104FiniteDivisorSumSix v63SquareFunction = 50 := by
  simp [
    v104FiniteDivisorSumSix,
    v101FiniteDirichletConvolutionSix,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportSix,
    v101PairContribution,
    v33OneFunction,
    v63SquareFunction,
    v34PointwiseMul,
    v33IdentityFunction,
    v51ContributionAggregate,
    v50NatListSum
  ]

theorem v104_square_function_divisor_sum_twelve_value :
    v104FiniteDivisorSumTwelve v63SquareFunction = 210 := by
  simp [
    v104FiniteDivisorSumTwelve,
    v101FiniteDirichletConvolutionTwelve,
    v101FiniteDirichletConvolutionOver,
    v101DivisorPairSupportTwelve,
    v101PairContribution,
    v33OneFunction,
    v63SquareFunction,
    v34PointwiseMul,
    v33IdentityFunction,
    v51ContributionAggregate,
    v50NatListSum
  ]

def v104DivisorSumsAsConvolutionWithOnePackage : Prop :=
  (∀ f : v33ArithmeticFunction,
    v104FiniteDivisorSumSix f =
      v101FiniteDirichletConvolutionSix f v33OneFunction) ∧
  (∀ f : v33ArithmeticFunction,
    v104FiniteDivisorSumTwelve f =
      v101FiniteDirichletConvolutionTwelve f v33OneFunction) ∧
  (∀ f : v33ArithmeticFunction,
    v104FiniteDivisorSumSix f =
      f 1 + f 2 + f 3 + f 6) ∧
  (∀ f : v33ArithmeticFunction,
    v104FiniteDivisorSumTwelve f =
      f 1 + f 2 + f 3 + f 4 + f 6 + f 12) ∧
  (v104FiniteDivisorSumSix v33OneFunction = 4) ∧
  (v104FiniteDivisorSumTwelve v33OneFunction = 6) ∧
  (v104FiniteDivisorSumSix v33IdentityFunction = 12) ∧
  (v104FiniteDivisorSumTwelve v33IdentityFunction = 28) ∧
  (v104FiniteDivisorSumSix v63SquareFunction = 50) ∧
  (v104FiniteDivisorSumTwelve v63SquareFunction = 210) ∧
  v103FiniteDirichletConvolutionSymmetryPackage

theorem v104_divisor_sums_as_convolution_with_one_package :
    v104DivisorSumsAsConvolutionWithOnePackage := by
  exact ⟨
    v104_divisor_sum_six_definition,
    ⟨
      v104_divisor_sum_twelve_definition,
      ⟨
        v104_divisor_sum_six_expansion,
        ⟨
          v104_divisor_sum_twelve_expansion,
          ⟨
            v104_one_function_divisor_sum_six_value,
            ⟨
              v104_one_function_divisor_sum_twelve_value,
              ⟨
                v104_identity_function_divisor_sum_six_value,
                ⟨
                  v104_identity_function_divisor_sum_twelve_value,
                  ⟨
                    v104_square_function_divisor_sum_six_value,
                    ⟨
                      v104_square_function_divisor_sum_twelve_value,
                      v103_finite_dirichlet_convolution_symmetry_package
                    ⟩
                  ⟩
                ⟩
              ⟩
            ⟩
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v104_divisor_sums_as_convolution_with_one_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
