import FormalLanglandsLab.MathlibIntegration.V45DirichletContributionUniqueness

namespace FormalLanglandsLab
namespace MathlibIntegration

def v46ActualContributionLeftAdditivity : Prop :=
  ∀ f₁ f₂ g : v33ArithmeticFunction,
  ∀ n a b value₁ value₂ : Nat,
    v44ActualDirichletContribution f₁ g n a b value₁ →
    v44ActualDirichletContribution f₂ g n a b value₂ →
      v44ActualDirichletContribution
        (v34PointwiseAdd f₁ f₂) g n a b
        (value₁ + value₂)

def v46ActualContributionRightAdditivity : Prop :=
  ∀ f g₁ g₂ : v33ArithmeticFunction,
  ∀ n a b value₁ value₂ : Nat,
    v44ActualDirichletContribution f g₁ n a b value₁ →
    v44ActualDirichletContribution f g₂ n a b value₂ →
      v44ActualDirichletContribution
        f (v34PointwiseAdd g₁ g₂) n a b
        (value₁ + value₂)

def v46ActualContributionLeftScaling : Prop :=
  ∀ c : Nat,
  ∀ f g : v33ArithmeticFunction,
  ∀ n a b value : Nat,
    v44ActualDirichletContribution f g n a b value →
      v44ActualDirichletContribution
        (v34PointwiseScale c f) g n a b
        (c * value)

def v46ActualContributionRightScaling : Prop :=
  ∀ c : Nat,
  ∀ f g : v33ArithmeticFunction,
  ∀ n a b value : Nat,
    v44ActualDirichletContribution f g n a b value →
      v44ActualDirichletContribution
        f (v34PointwiseScale c g) n a b
        (c * value)

theorem v46_actual_contribution_left_additivity
    {f₁ f₂ g : v33ArithmeticFunction}
    {n a b value₁ value₂ : Nat}
    (h₁ : v44ActualDirichletContribution f₁ g n a b value₁)
    (h₂ : v44ActualDirichletContribution f₂ g n a b value₂) :
    v44ActualDirichletContribution
      (v34PointwiseAdd f₁ f₂) g n a b
      (value₁ + value₂) := by
  constructor
  · exact h₁.1
  · calc
      value₁ + value₂ =
          v35DirichletKernelTerm f₁ g a b +
          v35DirichletKernelTerm f₂ g a b := by
            rw [h₁.2, h₂.2]
      _ = v35DirichletKernelTerm (v34PointwiseAdd f₁ f₂) g a b :=
          (v41_kernel_left_additivity f₁ f₂ g a b).symm

theorem v46_actual_contribution_right_additivity
    {f g₁ g₂ : v33ArithmeticFunction}
    {n a b value₁ value₂ : Nat}
    (h₁ : v44ActualDirichletContribution f g₁ n a b value₁)
    (h₂ : v44ActualDirichletContribution f g₂ n a b value₂) :
    v44ActualDirichletContribution
      f (v34PointwiseAdd g₁ g₂) n a b
      (value₁ + value₂) := by
  constructor
  · exact h₁.1
  · calc
      value₁ + value₂ =
          v35DirichletKernelTerm f g₁ a b +
          v35DirichletKernelTerm f g₂ a b := by
            rw [h₁.2, h₂.2]
      _ = v35DirichletKernelTerm f (v34PointwiseAdd g₁ g₂) a b :=
          (v41_kernel_right_additivity f g₁ g₂ a b).symm

theorem v46_actual_contribution_left_scaling
    {c : Nat}
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ActualDirichletContribution f g n a b value) :
    v44ActualDirichletContribution
      (v34PointwiseScale c f) g n a b
      (c * value) := by
  constructor
  · exact h.1
  · calc
      c * value =
          c * v35DirichletKernelTerm f g a b := by
            rw [h.2]
      _ = v35DirichletKernelTerm (v34PointwiseScale c f) g a b :=
          (v42_kernel_left_scaling c f g a b).symm

theorem v46_actual_contribution_right_scaling
    {c : Nat}
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ActualDirichletContribution f g n a b value) :
    v44ActualDirichletContribution
      f (v34PointwiseScale c g) n a b
      (c * value) := by
  constructor
  · exact h.1
  · calc
      c * value =
          c * v35DirichletKernelTerm f g a b := by
            rw [h.2]
      _ = v35DirichletKernelTerm f (v34PointwiseScale c g) a b :=
          (v42_kernel_right_scaling c f g a b).symm

theorem v46_actual_contribution_zero_left_algebra
    {g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ActualDirichletContribution v33ZeroFunction g n a b value) :
    value = 0 := by
  exact v44_actual_zero_left_contribution_value h

theorem v46_actual_contribution_zero_right_algebra
    {f : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ActualDirichletContribution f v33ZeroFunction n a b value) :
    value = 0 := by
  exact v44_actual_zero_right_contribution_value h

theorem v46_actual_contribution_one_left_algebra
    {g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ActualDirichletContribution v33OneFunction g n a b value) :
    value = g b := by
  exact v44_actual_one_left_contribution_value h

theorem v46_actual_contribution_one_right_algebra
    {f : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ActualDirichletContribution f v33OneFunction n a b value) :
    value = f a := by
  exact v44_actual_one_right_contribution_value h

theorem v46_actual_contribution_left_additivity_all :
    v46ActualContributionLeftAdditivity := by
  intro f₁ f₂ g n a b value₁ value₂ h₁ h₂
  exact v46_actual_contribution_left_additivity h₁ h₂

theorem v46_actual_contribution_right_additivity_all :
    v46ActualContributionRightAdditivity := by
  intro f g₁ g₂ n a b value₁ value₂ h₁ h₂
  exact v46_actual_contribution_right_additivity h₁ h₂

theorem v46_actual_contribution_left_scaling_all :
    v46ActualContributionLeftScaling := by
  intro c f g n a b value h
  exact v46_actual_contribution_left_scaling h

theorem v46_actual_contribution_right_scaling_all :
    v46ActualContributionRightScaling := by
  intro c f g n a b value h
  exact v46_actual_contribution_right_scaling h

def v46DirichletContributionAlgebraPackage : Prop :=
  v46ActualContributionLeftAdditivity ∧
  v46ActualContributionRightAdditivity ∧
  v46ActualContributionLeftScaling ∧
  v46ActualContributionRightScaling ∧
  (∀ f g : v33ArithmeticFunction,
   ∀ n a b value : Nat,
    v44ActualDirichletContribution f g n a b value →
      value = f a * g b)

theorem v46_dirichlet_contribution_algebra_package :
    v46DirichletContributionAlgebraPackage := by
  exact ⟨
    v46_actual_contribution_left_additivity_all,
    ⟨
      v46_actual_contribution_right_additivity_all,
      ⟨
        v46_actual_contribution_left_scaling_all,
        ⟨
          v46_actual_contribution_right_scaling_all,
          fun f g n a b value h =>
            v45_actual_any_contribution_equals_canonical_product h
        ⟩
      ⟩
    ⟩
  ⟩

theorem v46_dirichlet_contribution_algebra_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
