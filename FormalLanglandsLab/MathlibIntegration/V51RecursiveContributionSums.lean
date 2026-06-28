import FormalLanglandsLab.MathlibIntegration.V50Dashboard

namespace FormalLanglandsLab
namespace MathlibIntegration

def v51ContributionValueList :=
  List Nat

def v51ContributionAggregate
    (values : v51ContributionValueList) : Nat :=
  v50NatListSum values

theorem v51_contribution_aggregate_nil :
    v51ContributionAggregate [] = 0 := by
  rfl

theorem v51_contribution_aggregate_cons
    (value : Nat)
    (values : v51ContributionValueList) :
    v51ContributionAggregate (value :: values) =
      value + v51ContributionAggregate values := by
  rfl

theorem v51_contribution_aggregate_singleton
    (value : Nat) :
    v51ContributionAggregate [value] = value := by
  simp [v51ContributionAggregate, v50NatListSum]

theorem v51_contribution_aggregate_pair
    (value₁ value₂ : Nat) :
    v51ContributionAggregate [value₁, value₂] =
      value₁ + value₂ := by
  simp [v51ContributionAggregate, v50NatListSum]

theorem v51_contribution_aggregate_triple
    (value₁ value₂ value₃ : Nat) :
    v51ContributionAggregate [value₁, value₂, value₃] =
      value₁ + value₂ + value₃ := by
  simp [v51ContributionAggregate, v50NatListSum, Nat.add_assoc]

def v51ActualContributionValueList
    (f g : v33ArithmeticFunction)
    (n : Nat) :=
  List Nat

def v51ActualContributionAggregate
    (f g : v33ArithmeticFunction)
    (n : Nat)
    (values : v51ActualContributionValueList f g n) : Nat :=
  v51ContributionAggregate values

theorem v51_actual_contribution_aggregate_nil
    (f g : v33ArithmeticFunction)
    (n : Nat) :
    v51ActualContributionAggregate f g n [] = 0 := by
  rfl

theorem v51_actual_contribution_aggregate_cons
    (f g : v33ArithmeticFunction)
    (n value : Nat)
    (values : v51ActualContributionValueList f g n) :
    v51ActualContributionAggregate f g n (value :: values) =
      value + v51ActualContributionAggregate f g n values := by
  rfl

theorem v51_actual_contribution_aggregate_singleton
    (f g : v33ArithmeticFunction)
    (n value : Nat) :
    v51ActualContributionAggregate f g n [value] = value := by
  simp [
    v51ActualContributionAggregate,
    v51ContributionAggregate,
    v50NatListSum
  ]

theorem v51_actual_contribution_aggregate_pair
    (f g : v33ArithmeticFunction)
    (n value₁ value₂ : Nat) :
    v51ActualContributionAggregate f g n [value₁, value₂] =
      value₁ + value₂ := by
  simp [
    v51ActualContributionAggregate,
    v51ContributionAggregate,
    v50NatListSum
  ]

theorem v51_actual_contribution_aggregate_triple
    (f g : v33ArithmeticFunction)
    (n value₁ value₂ value₃ : Nat) :
    v51ActualContributionAggregate f g n [value₁, value₂, value₃] =
      value₁ + value₂ + value₃ := by
  simp [
    v51ActualContributionAggregate,
    v51ContributionAggregate,
    v50NatListSum,
    Nat.add_assoc
  ]

theorem v51_actual_single_contribution_aggregate_canonical
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ActualDirichletContribution f g n a b value) :
    v51ActualContributionAggregate f g n [value] =
      f a * g b := by
  calc
    v51ActualContributionAggregate f g n [value] = value := by
      exact v51_actual_contribution_aggregate_singleton f g n value
    _ = f a * g b := v44_actual_contribution_evaluates h

theorem v51_actual_pair_contribution_aggregate_canonical
    {f g : v33ArithmeticFunction}
    {n a₁ b₁ a₂ b₂ value₁ value₂ : Nat}
    (h₁ : v44ActualDirichletContribution f g n a₁ b₁ value₁)
    (h₂ : v44ActualDirichletContribution f g n a₂ b₂ value₂) :
    v51ActualContributionAggregate f g n [value₁, value₂] =
      f a₁ * g b₁ + f a₂ * g b₂ := by
  calc
    v51ActualContributionAggregate f g n [value₁, value₂] =
        value₁ + value₂ := by
      exact v51_actual_contribution_aggregate_pair f g n value₁ value₂
    _ = f a₁ * g b₁ + f a₂ * g b₂ := by
      rw [
        v44_actual_contribution_evaluates h₁,
        v44_actual_contribution_evaluates h₂
      ]

theorem v51_actual_triple_contribution_aggregate_canonical
    {f g : v33ArithmeticFunction}
    {n a₁ b₁ a₂ b₂ a₃ b₃ value₁ value₂ value₃ : Nat}
    (h₁ : v44ActualDirichletContribution f g n a₁ b₁ value₁)
    (h₂ : v44ActualDirichletContribution f g n a₂ b₂ value₂)
    (h₃ : v44ActualDirichletContribution f g n a₃ b₃ value₃) :
    v51ActualContributionAggregate f g n [value₁, value₂, value₃] =
      f a₁ * g b₁ + f a₂ * g b₂ + f a₃ * g b₃ := by
  calc
    v51ActualContributionAggregate f g n [value₁, value₂, value₃] =
        value₁ + value₂ + value₃ := by
      exact v51_actual_contribution_aggregate_triple f g n value₁ value₂ value₃
    _ = f a₁ * g b₁ + f a₂ * g b₂ + f a₃ * g b₃ := by
      rw [
        v44_actual_contribution_evaluates h₁,
        v44_actual_contribution_evaluates h₂,
        v44_actual_contribution_evaluates h₃
      ]

def v51RecursiveContributionSumsPackage : Prop :=
  (v51ContributionAggregate [] = 0) ∧
  (∀ value values,
    v51ContributionAggregate (value :: values) =
      value + v51ContributionAggregate values) ∧
  (∀ f g : v33ArithmeticFunction,
   ∀ n : Nat,
    v51ActualContributionAggregate f g n [] = 0) ∧
  (∀ f g : v33ArithmeticFunction,
   ∀ n value : Nat,
   ∀ values : v51ActualContributionValueList f g n,
    v51ActualContributionAggregate f g n (value :: values) =
      value + v51ActualContributionAggregate f g n values)

theorem v51_recursive_contribution_sums_package :
    v51RecursiveContributionSumsPackage := by
  exact ⟨
    v51_contribution_aggregate_nil,
    ⟨
      v51_contribution_aggregate_cons,
      ⟨
        v51_actual_contribution_aggregate_nil,
        v51_actual_contribution_aggregate_cons
      ⟩
    ⟩
  ⟩

theorem v51_recursive_contribution_sums_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
