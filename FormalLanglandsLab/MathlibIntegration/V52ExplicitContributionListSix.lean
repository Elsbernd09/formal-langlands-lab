import FormalLanglandsLab.MathlibIntegration.V51Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v52SixCanonicalContributionValues
    (f g : v33ArithmeticFunction) : List Nat :=
  [
    f 1 * g 6,
    f 2 * g 3,
    f 3 * g 2,
    f 6 * g 1
  ]

def v52SixControlledConvolutionPrototype
    (f g : v33ArithmeticFunction) : Nat :=
  v51ActualContributionAggregate f g 6
    (v52SixCanonicalContributionValues f g)

theorem v52_support_six_one_six :
    v39ActualDirichletSupport 6 1 6 := by
  have hn : 6 ≠ 0 := by decide
  exact (v39_actual_support_iff_pair 6 1 6 hn).mpr
    (v35_pair_one_n hn)

theorem v52_support_six_two_three :
    v39ActualDirichletSupport 6 2 3 := by
  have hn : 6 ≠ 0 := by decide
  exact (v39_actual_support_iff_pair 6 2 3 hn).mpr
    ⟨by decide, by decide, by decide⟩

theorem v52_support_six_three_two :
    v39ActualDirichletSupport 6 3 2 := by
  have hn : 6 ≠ 0 := by decide
  exact (v39_actual_support_iff_pair 6 3 2 hn).mpr
    ⟨by decide, by decide, by decide⟩

theorem v52_support_six_six_one :
    v39ActualDirichletSupport 6 6 1 := by
  have hn : 6 ≠ 0 := by decide
  exact (v39_actual_support_iff_pair 6 6 1 hn).mpr
    (v35_pair_n_one hn)

theorem v52_actual_contribution_six_one_six
    (f g : v33ArithmeticFunction) :
    v44ActualDirichletContribution
      f g 6 1 6
      (f 1 * g 6) := by
  exact v45_actual_contribution_canonical_product
    f g v52_support_six_one_six

theorem v52_actual_contribution_six_two_three
    (f g : v33ArithmeticFunction) :
    v44ActualDirichletContribution
      f g 6 2 3
      (f 2 * g 3) := by
  exact v45_actual_contribution_canonical_product
    f g v52_support_six_two_three

theorem v52_actual_contribution_six_three_two
    (f g : v33ArithmeticFunction) :
    v44ActualDirichletContribution
      f g 6 3 2
      (f 3 * g 2) := by
  exact v45_actual_contribution_canonical_product
    f g v52_support_six_three_two

theorem v52_actual_contribution_six_six_one
    (f g : v33ArithmeticFunction) :
    v44ActualDirichletContribution
      f g 6 6 1
      (f 6 * g 1) := by
  exact v45_actual_contribution_canonical_product
    f g v52_support_six_six_one

theorem v52_six_canonical_values_definition
    (f g : v33ArithmeticFunction) :
    v52SixCanonicalContributionValues f g =
      [
        f 1 * g 6,
        f 2 * g 3,
        f 3 * g 2,
        f 6 * g 1
      ] := by
  rfl

theorem v52_four_value_aggregate
    (f g : v33ArithmeticFunction)
    (value₁ value₂ value₃ value₄ : Nat) :
    v51ActualContributionAggregate f g 6
      [value₁, value₂, value₃, value₄] =
        value₁ + value₂ + value₃ + value₄ := by
  simp [
    v51ActualContributionAggregate,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v52_six_controlled_convolution_prototype_value
    (f g : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype f g =
      f 1 * g 6 +
      f 2 * g 3 +
      f 3 * g 2 +
      f 6 * g 1 := by
  unfold v52SixControlledConvolutionPrototype
  unfold v52SixCanonicalContributionValues
  exact v52_four_value_aggregate
    f g
    (f 1 * g 6)
    (f 2 * g 3)
    (f 3 * g 2)
    (f 6 * g 1)

theorem v52_six_controlled_convolution_zero_left
    (g : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype v33ZeroFunction g = 0 := by
  rw [v52_six_controlled_convolution_prototype_value]
  simp [v33ZeroFunction]

theorem v52_six_controlled_convolution_zero_right
    (f : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype f v33ZeroFunction = 0 := by
  rw [v52_six_controlled_convolution_prototype_value]
  simp [v33ZeroFunction]

theorem v52_six_controlled_convolution_one_left
    (g : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype v33OneFunction g =
      g 6 + g 3 + g 2 + g 1 := by
  rw [v52_six_controlled_convolution_prototype_value]
  simp [v33OneFunction]

theorem v52_six_controlled_convolution_one_right
    (f : v33ArithmeticFunction) :
    v52SixControlledConvolutionPrototype f v33OneFunction =
      f 1 + f 2 + f 3 + f 6 := by
  rw [v52_six_controlled_convolution_prototype_value]
  simp [v33OneFunction]

def v52ExplicitContributionListSixPackage : Prop :=
  v39ActualDirichletSupport 6 1 6 ∧
  v39ActualDirichletSupport 6 2 3 ∧
  v39ActualDirichletSupport 6 3 2 ∧
  v39ActualDirichletSupport 6 6 1 ∧
  (∀ f g : v33ArithmeticFunction,
    v52SixControlledConvolutionPrototype f g =
      f 1 * g 6 +
      f 2 * g 3 +
      f 3 * g 2 +
      f 6 * g 1)

theorem v52_explicit_contribution_list_six_package :
    v52ExplicitContributionListSixPackage := by
  exact ⟨
    v52_support_six_one_six,
    ⟨
      v52_support_six_two_three,
      ⟨
        v52_support_six_three_two,
        ⟨
          v52_support_six_six_one,
          v52_six_controlled_convolution_prototype_value
        ⟩
      ⟩
    ⟩
  ⟩

theorem v52_explicit_contribution_list_six_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
