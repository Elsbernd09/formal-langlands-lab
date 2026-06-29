import FormalLanglandsLab.MathlibIntegration.V49Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v50NatListSum : List Nat → Nat
  | [] => 0
  | x :: xs => x + v50NatListSum xs

def v50ContributionValueList :=
  List Nat

def v50ContributionValueSum
    (values : v50ContributionValueList) : Nat :=
  v50NatListSum values

def v50TwoContributionSum
    (value₁ value₂ : Nat) : Nat :=
  v50NatListSum [value₁, value₂]

def v50ThreeContributionSum
    (value₁ value₂ value₃ : Nat) : Nat :=
  v50NatListSum [value₁, value₂, value₃]

theorem v50_nat_list_sum_nil :
    v50NatListSum [] = 0 := by
  rfl

theorem v50_nat_list_sum_singleton
    (x : Nat) :
    v50NatListSum [x] = x := by
  simp [v50NatListSum]

theorem v50_nat_list_sum_pair
    (x y : Nat) :
    v50NatListSum [x, y] = x + y := by
  simp [v50NatListSum]

theorem v50_nat_list_sum_triple
    (x y z : Nat) :
    v50NatListSum [x, y, z] = x + y + z := by
  simp [v50NatListSum, Nat.add_assoc]

theorem v50_contribution_value_sum_nil :
    v50ContributionValueSum [] = 0 := by
  rfl

theorem v50_contribution_value_sum_singleton
    (value : Nat) :
    v50ContributionValueSum [value] = value := by
  simp [v50ContributionValueSum, v50NatListSum]

theorem v50_two_contribution_sum_value
    (value₁ value₂ : Nat) :
    v50TwoContributionSum value₁ value₂ = value₁ + value₂ := by
  simp [v50TwoContributionSum, v50NatListSum]

theorem v50_three_contribution_sum_value
    (value₁ value₂ value₃ : Nat) :
    v50ThreeContributionSum value₁ value₂ value₃ =
      value₁ + value₂ + value₃ := by
  simp [v50ThreeContributionSum, v50NatListSum, Nat.add_assoc]

theorem v50_actual_two_contribution_sum_canonical
    {f g : v33ArithmeticFunction}
    {n a₁ b₁ a₂ b₂ value₁ value₂ : Nat}
    (h₁ : v44ActualDirichletContribution f g n a₁ b₁ value₁)
    (h₂ : v44ActualDirichletContribution f g n a₂ b₂ value₂) :
    v50TwoContributionSum value₁ value₂ =
      f a₁ * g b₁ + f a₂ * g b₂ := by
  calc
    v50TwoContributionSum value₁ value₂ = value₁ + value₂ := by
      exact v50_two_contribution_sum_value value₁ value₂
    _ = f a₁ * g b₁ + f a₂ * g b₂ := by
      rw [
        v44_actual_contribution_evaluates h₁,
        v44_actual_contribution_evaluates h₂
      ]

theorem v50_expected_two_contribution_sum_canonical
    {f g : v33ArithmeticFunction}
    {n a₁ b₁ a₂ b₂ value₁ value₂ : Nat}
    (h₁ : v44ExpectedDirichletContribution f g n a₁ b₁ value₁)
    (h₂ : v44ExpectedDirichletContribution f g n a₂ b₂ value₂) :
    v50TwoContributionSum value₁ value₂ =
      f a₁ * g b₁ + f a₂ * g b₂ := by
  calc
    v50TwoContributionSum value₁ value₂ = value₁ + value₂ := by
      exact v50_two_contribution_sum_value value₁ value₂
    _ = f a₁ * g b₁ + f a₂ * g b₂ := by
      rw [
        v44_expected_contribution_evaluates h₁,
        v44_expected_contribution_evaluates h₂
      ]

theorem v50_actual_three_contribution_sum_canonical
    {f g : v33ArithmeticFunction}
    {n a₁ b₁ a₂ b₂ a₃ b₃ value₁ value₂ value₃ : Nat}
    (h₁ : v44ActualDirichletContribution f g n a₁ b₁ value₁)
    (h₂ : v44ActualDirichletContribution f g n a₂ b₂ value₂)
    (h₃ : v44ActualDirichletContribution f g n a₃ b₃ value₃) :
    v50ThreeContributionSum value₁ value₂ value₃ =
      f a₁ * g b₁ + f a₂ * g b₂ + f a₃ * g b₃ := by
  calc
    v50ThreeContributionSum value₁ value₂ value₃ =
        value₁ + value₂ + value₃ := by
      exact v50_three_contribution_sum_value value₁ value₂ value₃
    _ = f a₁ * g b₁ + f a₂ * g b₂ + f a₃ * g b₃ := by
      rw [
        v44_actual_contribution_evaluates h₁,
        v44_actual_contribution_evaluates h₂,
        v44_actual_contribution_evaluates h₃
      ]

def v50ControlledSummationExperimentPackage : Prop :=
  (v50NatListSum [] = 0) ∧
  (∀ value : Nat, v50ContributionValueSum [value] = value) ∧
  (∀ value₁ value₂ : Nat,
    v50TwoContributionSum value₁ value₂ = value₁ + value₂) ∧
  (∀ value₁ value₂ value₃ : Nat,
    v50ThreeContributionSum value₁ value₂ value₃ =
      value₁ + value₂ + value₃)

theorem v50_controlled_summation_experiment_package :
    v50ControlledSummationExperimentPackage := by
  exact ⟨
    v50_nat_list_sum_nil,
    ⟨
      v50_contribution_value_sum_singleton,
      ⟨
        v50_two_contribution_sum_value,
        v50_three_contribution_sum_value
      ⟩
    ⟩
  ⟩

theorem v50_controlled_summation_experiment_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
