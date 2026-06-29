import FormalLanglandsLab.MathlibIntegration.V46DirichletContributionAlgebra

namespace FormalLanglandsLab
namespace MathlibIntegration

def v47ContributionRelationResultCount : Nat := 6
def v47ContributionUniquenessResultCount : Nat := 6
def v47ContributionAlgebraResultCount : Nat := 8
def v47ContributionSupportCompatibilityResultCount : Nat := 4

def v47ContributionArcTrackedResultCount : Nat :=
  v47ContributionRelationResultCount +
  v47ContributionUniquenessResultCount +
  v47ContributionAlgebraResultCount +
  v47ContributionSupportCompatibilityResultCount

theorem v47ContributionRelationResultCount_value :
    v47ContributionRelationResultCount = 6 := by
  rfl

theorem v47ContributionUniquenessResultCount_value :
    v47ContributionUniquenessResultCount = 6 := by
  rfl

theorem v47ContributionAlgebraResultCount_value :
    v47ContributionAlgebraResultCount = 8 := by
  rfl

theorem v47ContributionSupportCompatibilityResultCount_value :
    v47ContributionSupportCompatibilityResultCount = 4 := by
  rfl

theorem v47ContributionArcTrackedResultCount_value :
    v47ContributionArcTrackedResultCount = 24 := by
  rfl

def v47ContributionArcRegistry : Prop :=
  v44DirichletContributionRelationPackage ∧
  v45DirichletContributionUniquenessPackage ∧
  v46DirichletContributionAlgebraPackage

theorem v47_contribution_arc_registry :
    v47ContributionArcRegistry := by
  exact ⟨
    v44_dirichlet_contribution_relation_package,
    ⟨
      v45_dirichlet_contribution_uniqueness_package,
      v46_dirichlet_contribution_algebra_package
    ⟩
  ⟩

theorem registry_v47_contribution_relation :
    v44DirichletContributionRelationPackage := by
  exact v44_dirichlet_contribution_relation_package

theorem registry_v47_contribution_uniqueness :
    v45DirichletContributionUniquenessPackage := by
  exact v45_dirichlet_contribution_uniqueness_package

theorem registry_v47_contribution_algebra :
    v46DirichletContributionAlgebraPackage := by
  exact v46_dirichlet_contribution_algebra_package

theorem registry_v47_actual_contribution_evaluation
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ActualDirichletContribution f g n a b value) :
    value = f a * g b := by
  exact v44_actual_contribution_evaluates h

theorem registry_v47_expected_contribution_evaluation
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ExpectedDirichletContribution f g n a b value) :
    value = f a * g b := by
  exact v44_expected_contribution_evaluates h

theorem registry_v47_actual_contribution_unique
    {f g : v33ArithmeticFunction}
    {n a b value₁ value₂ : Nat}
    (h₁ : v44ActualDirichletContribution f g n a b value₁)
    (h₂ : v44ActualDirichletContribution f g n a b value₂) :
    value₁ = value₂ := by
  exact v45_actual_contribution_value_unique h₁ h₂

theorem registry_v47_expected_contribution_unique
    {f g : v33ArithmeticFunction}
    {n a b value₁ value₂ : Nat}
    (h₁ : v44ExpectedDirichletContribution f g n a b value₁)
    (h₂ : v44ExpectedDirichletContribution f g n a b value₂) :
    value₁ = value₂ := by
  exact v45_expected_contribution_value_unique h₁ h₂

theorem registry_v47_actual_contribution_left_additivity :
    v46ActualContributionLeftAdditivity := by
  exact v46_actual_contribution_left_additivity_all

theorem registry_v47_actual_contribution_right_additivity :
    v46ActualContributionRightAdditivity := by
  exact v46_actual_contribution_right_additivity_all

theorem registry_v47_actual_contribution_left_scaling :
    v46ActualContributionLeftScaling := by
  exact v46_actual_contribution_left_scaling_all

theorem registry_v47_actual_contribution_right_scaling :
    v46ActualContributionRightScaling := by
  exact v46_actual_contribution_right_scaling_all

def v47DirichletContributionAlgebraRegistryPackage : Prop :=
  v47ContributionArcRegistry ∧
  (v47ContributionArcTrackedResultCount = 24) ∧
  v46ActualContributionLeftAdditivity ∧
  v46ActualContributionRightAdditivity ∧
  v46ActualContributionLeftScaling ∧
  v46ActualContributionRightScaling

theorem v47_dirichlet_contribution_algebra_registry_package :
    v47DirichletContributionAlgebraRegistryPackage := by
  exact ⟨
    v47_contribution_arc_registry,
    ⟨
      v47ContributionArcTrackedResultCount_value,
      ⟨
        v46_actual_contribution_left_additivity_all,
        ⟨
          v46_actual_contribution_right_additivity_all,
          ⟨
            v46_actual_contribution_left_scaling_all,
            v46_actual_contribution_right_scaling_all
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v47_dirichlet_contribution_algebra_registry_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
