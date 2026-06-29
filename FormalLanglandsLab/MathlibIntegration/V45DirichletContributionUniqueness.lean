import FormalLanglandsLab.MathlibIntegration.V44DirichletContributionRelation

namespace FormalLanglandsLab
namespace MathlibIntegration

def v45ActualContributionValueUniqueness : Prop :=
  ∀ f g : v33ArithmeticFunction,
  ∀ n a b value₁ value₂ : Nat,
    v44ActualDirichletContribution f g n a b value₁ →
    v44ActualDirichletContribution f g n a b value₂ →
      value₁ = value₂

def v45ExpectedContributionValueUniqueness : Prop :=
  ∀ f g : v33ArithmeticFunction,
  ∀ n a b value₁ value₂ : Nat,
    v44ExpectedDirichletContribution f g n a b value₁ →
    v44ExpectedDirichletContribution f g n a b value₂ →
      value₁ = value₂

theorem v45_actual_contribution_value_unique
    {f g : v33ArithmeticFunction}
    {n a b value₁ value₂ : Nat}
    (h₁ : v44ActualDirichletContribution f g n a b value₁)
    (h₂ : v44ActualDirichletContribution f g n a b value₂) :
    value₁ = value₂ := by
  calc
    value₁ = v35DirichletKernelTerm f g a b := h₁.2
    _ = value₂ := h₂.2.symm

theorem v45_expected_contribution_value_unique
    {f g : v33ArithmeticFunction}
    {n a b value₁ value₂ : Nat}
    (h₁ : v44ExpectedDirichletContribution f g n a b value₁)
    (h₂ : v44ExpectedDirichletContribution f g n a b value₂) :
    value₁ = value₂ := by
  calc
    value₁ = v35DirichletKernelTerm f g a b := h₁.2
    _ = value₂ := h₂.2.symm

theorem v45_actual_contribution_canonical_kernel
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (hsupp : v39ActualDirichletSupport n a b) :
    v44ActualDirichletContribution
      f g n a b
      (v35DirichletKernelTerm f g a b) := by
  exact v44_actual_contribution_intro f g hsupp

theorem v45_expected_contribution_canonical_kernel
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (hsupp : v39ExpectedDirichletSupport n a b) :
    v44ExpectedDirichletContribution
      f g n a b
      (v35DirichletKernelTerm f g a b) := by
  exact v44_expected_contribution_intro f g hsupp

theorem v45_actual_contribution_canonical_product
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (hsupp : v39ActualDirichletSupport n a b) :
    v44ActualDirichletContribution
      f g n a b
      (f a * g b) := by
  exact ⟨
    hsupp,
    (v35_kernel_term_value f g a b).symm
  ⟩

theorem v45_expected_contribution_canonical_product
    (f g : v33ArithmeticFunction)
    {n a b : Nat}
    (hsupp : v39ExpectedDirichletSupport n a b) :
    v44ExpectedDirichletContribution
      f g n a b
      (f a * g b) := by
  exact ⟨
    hsupp,
    (v35_kernel_term_value f g a b).symm
  ⟩

theorem v45_actual_any_contribution_equals_canonical_product
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ActualDirichletContribution f g n a b value) :
    value = f a * g b := by
  exact v44_actual_contribution_evaluates h

theorem v45_expected_any_contribution_equals_canonical_product
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ExpectedDirichletContribution f g n a b value) :
    value = f a * g b := by
  exact v44_expected_contribution_evaluates h

theorem v45_actual_canonical_product_unique
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ActualDirichletContribution f g n a b value) :
    value = f a * g b := by
  exact v45_actual_any_contribution_equals_canonical_product h

theorem v45_expected_canonical_product_unique
    {f g : v33ArithmeticFunction}
    {n a b value : Nat}
    (h : v44ExpectedDirichletContribution f g n a b value) :
    value = f a * g b := by
  exact v45_expected_any_contribution_equals_canonical_product h

theorem v45_actual_contribution_unique_all :
    v45ActualContributionValueUniqueness := by
  intro f g n a b value₁ value₂ h₁ h₂
  exact v45_actual_contribution_value_unique h₁ h₂

theorem v45_expected_contribution_unique_all :
    v45ExpectedContributionValueUniqueness := by
  intro f g n a b value₁ value₂ h₁ h₂
  exact v45_expected_contribution_value_unique h₁ h₂

def v45DirichletContributionUniquenessPackage : Prop :=
  v45ActualContributionValueUniqueness ∧
  v45ExpectedContributionValueUniqueness ∧
  (∀ f g : v33ArithmeticFunction,
   ∀ n a b : Nat,
    v39ActualDirichletSupport n a b →
      v44ActualDirichletContribution f g n a b (f a * g b)) ∧
  (∀ f g : v33ArithmeticFunction,
   ∀ n a b value : Nat,
    v44ActualDirichletContribution f g n a b value →
      value = f a * g b)

theorem v45_dirichlet_contribution_uniqueness_package :
    v45DirichletContributionUniquenessPackage := by
  exact ⟨
    v45_actual_contribution_unique_all,
    ⟨
      v45_expected_contribution_unique_all,
      ⟨
        fun f g n a b h =>
          v45_actual_contribution_canonical_product f g h,
        fun f g n a b value h =>
          v45_actual_any_contribution_equals_canonical_product h
      ⟩
    ⟩
  ⟩

theorem v45_dirichlet_contribution_uniqueness_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
