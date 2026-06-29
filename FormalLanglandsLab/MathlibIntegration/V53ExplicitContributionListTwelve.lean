import FormalLanglandsLab.MathlibIntegration.V52Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v53TwelveCanonicalContributionValues
    (f g : v33ArithmeticFunction) : List Nat :=
  [
    f 1 * g 12,
    f 2 * g 6,
    f 3 * g 4,
    f 4 * g 3,
    f 6 * g 2,
    f 12 * g 1
  ]

def v53TwelveControlledConvolutionPrototype
    (f g : v33ArithmeticFunction) : Nat :=
  v51ActualContributionAggregate f g 12
    (v53TwelveCanonicalContributionValues f g)

theorem v53_support_twelve_one_twelve :
    v39ActualDirichletSupport 12 1 12 := by
  have hn : 12 ≠ 0 := by decide
  exact (v39_actual_support_iff_pair 12 1 12 hn).mpr
    (v35_pair_one_n hn)

theorem v53_support_twelve_two_six :
    v39ActualDirichletSupport 12 2 6 := by
  have hn : 12 ≠ 0 := by decide
  exact (v39_actual_support_iff_pair 12 2 6 hn).mpr
    ⟨by decide, by decide, by decide⟩

theorem v53_support_twelve_three_four :
    v39ActualDirichletSupport 12 3 4 := by
  have hn : 12 ≠ 0 := by decide
  exact (v39_actual_support_iff_pair 12 3 4 hn).mpr
    ⟨by decide, by decide, by decide⟩

theorem v53_support_twelve_four_three :
    v39ActualDirichletSupport 12 4 3 := by
  have hn : 12 ≠ 0 := by decide
  exact (v39_actual_support_iff_pair 12 4 3 hn).mpr
    ⟨by decide, by decide, by decide⟩

theorem v53_support_twelve_six_two :
    v39ActualDirichletSupport 12 6 2 := by
  have hn : 12 ≠ 0 := by decide
  exact (v39_actual_support_iff_pair 12 6 2 hn).mpr
    ⟨by decide, by decide, by decide⟩

theorem v53_support_twelve_twelve_one :
    v39ActualDirichletSupport 12 12 1 := by
  have hn : 12 ≠ 0 := by decide
  exact (v39_actual_support_iff_pair 12 12 1 hn).mpr
    (v35_pair_n_one hn)

theorem v53_actual_contribution_twelve_one_twelve
    (f g : v33ArithmeticFunction) :
    v44ActualDirichletContribution
      f g 12 1 12
      (f 1 * g 12) := by
  exact v45_actual_contribution_canonical_product
    f g v53_support_twelve_one_twelve

theorem v53_actual_contribution_twelve_two_six
    (f g : v33ArithmeticFunction) :
    v44ActualDirichletContribution
      f g 12 2 6
      (f 2 * g 6) := by
  exact v45_actual_contribution_canonical_product
    f g v53_support_twelve_two_six

theorem v53_actual_contribution_twelve_three_four
    (f g : v33ArithmeticFunction) :
    v44ActualDirichletContribution
      f g 12 3 4
      (f 3 * g 4) := by
  exact v45_actual_contribution_canonical_product
    f g v53_support_twelve_three_four

theorem v53_actual_contribution_twelve_four_three
    (f g : v33ArithmeticFunction) :
    v44ActualDirichletContribution
      f g 12 4 3
      (f 4 * g 3) := by
  exact v45_actual_contribution_canonical_product
    f g v53_support_twelve_four_three

theorem v53_actual_contribution_twelve_six_two
    (f g : v33ArithmeticFunction) :
    v44ActualDirichletContribution
      f g 12 6 2
      (f 6 * g 2) := by
  exact v45_actual_contribution_canonical_product
    f g v53_support_twelve_six_two

theorem v53_actual_contribution_twelve_twelve_one
    (f g : v33ArithmeticFunction) :
    v44ActualDirichletContribution
      f g 12 12 1
      (f 12 * g 1) := by
  exact v45_actual_contribution_canonical_product
    f g v53_support_twelve_twelve_one

theorem v53_six_value_aggregate
    (f g : v33ArithmeticFunction)
    (value₁ value₂ value₃ value₄ value₅ value₆ : Nat) :
    v51ActualContributionAggregate f g 12
      [value₁, value₂, value₃, value₄, value₅, value₆] =
        value₁ + value₂ + value₃ + value₄ + value₅ + value₆ := by
  simp [
    v51ActualContributionAggregate,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v53_twelve_controlled_convolution_prototype_value
    (f g : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype f g =
      f 1 * g 12 +
      f 2 * g 6 +
      f 3 * g 4 +
      f 4 * g 3 +
      f 6 * g 2 +
      f 12 * g 1 := by
  unfold v53TwelveControlledConvolutionPrototype
  unfold v53TwelveCanonicalContributionValues
  exact v53_six_value_aggregate
    f g
    (f 1 * g 12)
    (f 2 * g 6)
    (f 3 * g 4)
    (f 4 * g 3)
    (f 6 * g 2)
    (f 12 * g 1)

theorem v53_twelve_controlled_convolution_zero_left
    (g : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype v33ZeroFunction g = 0 := by
  rw [v53_twelve_controlled_convolution_prototype_value]
  simp [v33ZeroFunction]

theorem v53_twelve_controlled_convolution_zero_right
    (f : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype f v33ZeroFunction = 0 := by
  rw [v53_twelve_controlled_convolution_prototype_value]
  simp [v33ZeroFunction]

theorem v53_twelve_controlled_convolution_one_left
    (g : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype v33OneFunction g =
      g 12 + g 6 + g 4 + g 3 + g 2 + g 1 := by
  rw [v53_twelve_controlled_convolution_prototype_value]
  simp [v33OneFunction]

theorem v53_twelve_controlled_convolution_one_right
    (f : v33ArithmeticFunction) :
    v53TwelveControlledConvolutionPrototype f v33OneFunction =
      f 1 + f 2 + f 3 + f 4 + f 6 + f 12 := by
  rw [v53_twelve_controlled_convolution_prototype_value]
  simp [v33OneFunction]

def v53ExplicitContributionListTwelvePackage : Prop :=
  v39ActualDirichletSupport 12 1 12 ∧
  v39ActualDirichletSupport 12 2 6 ∧
  v39ActualDirichletSupport 12 3 4 ∧
  v39ActualDirichletSupport 12 4 3 ∧
  v39ActualDirichletSupport 12 6 2 ∧
  v39ActualDirichletSupport 12 12 1 ∧
  (∀ f g : v33ArithmeticFunction,
    v53TwelveControlledConvolutionPrototype f g =
      f 1 * g 12 +
      f 2 * g 6 +
      f 3 * g 4 +
      f 4 * g 3 +
      f 6 * g 2 +
      f 12 * g 1)

theorem v53_explicit_contribution_list_twelve_package :
    v53ExplicitContributionListTwelvePackage := by
  exact ⟨
    v53_support_twelve_one_twelve,
    ⟨
      v53_support_twelve_two_six,
      ⟨
        v53_support_twelve_three_four,
        ⟨
          v53_support_twelve_four_three,
          ⟨
            v53_support_twelve_six_two,
            ⟨
              v53_support_twelve_twelve_one,
              v53_twelve_controlled_convolution_prototype_value
            ⟩
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v53_explicit_contribution_list_twelve_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
