import FormalLanglandsLab.MathlibIntegration.V20ExactDivisorClassification

namespace FormalLanglandsLab
namespace MathlibIntegration

def v21UniversalMembershipResultCount : Nat := 2
def v21FinsetEqualityResultCount : Nat := 2
def v21ClassificationResultCount : Nat := 6
def v21MembershipConsequenceResultCount : Nat := 8

def v21TrackedResultCount : Nat :=
  v21UniversalMembershipResultCount +
  v21FinsetEqualityResultCount +
  v21ClassificationResultCount +
  v21MembershipConsequenceResultCount

theorem v21UniversalMembershipResultCount_value :
    v21UniversalMembershipResultCount = 2 := by
  rfl

theorem v21FinsetEqualityResultCount_value :
    v21FinsetEqualityResultCount = 2 := by
  rfl

theorem v21ClassificationResultCount_value :
    v21ClassificationResultCount = 6 := by
  rfl

theorem v21MembershipConsequenceResultCount_value :
    v21MembershipConsequenceResultCount = 8 := by
  rfl

theorem v21TrackedResultCount_value :
    v21TrackedResultCount = 18 := by
  rfl

theorem registry_v21_universal_membership_six :
    v15UniversalMembershipAgreementSix := by
  exact v15_universal_membership_agreement_six

theorem registry_v21_universal_membership_twelve :
    v17UniversalMembershipAgreementTwelve := by
  exact v17_universal_membership_agreement_twelve

theorem registry_v21_finset_equality_six :
    v6DivisorFinset 6 = v10ExpectedDivisorsSix := by
  exact v16_finset_equality_six

theorem registry_v21_finset_equality_twelve :
    v6DivisorFinset 12 = v10ExpectedDivisorsTwelve := by
  exact v18_finset_equality_twelve

theorem registry_v21_exact_classification_six :
    v20ExactDivisorClassificationSix := by
  exact v20_exact_divisor_classification_six

theorem registry_v21_exact_classification_twelve :
    v20ExactDivisorClassificationTwelve := by
  exact v20_exact_divisor_classification_twelve

theorem registry_v21_six_two_classifies :
    2 ∈ v6DivisorFinset 6 := by
  exact v20_six_two_classifies

theorem registry_v21_six_five_not_classifies :
    5 ∉ v6DivisorFinset 6 := by
  exact v20_six_five_not_classifies

theorem registry_v21_twelve_four_classifies :
    4 ∈ v6DivisorFinset 12 := by
  exact v20_twelve_four_classifies

theorem registry_v21_twelve_eleven_not_classifies :
    11 ∉ v6DivisorFinset 12 := by
  exact v20_twelve_eleven_not_classifies

theorem registry_v21_equality_membership_six_forward
    {d : Nat}
    (h : d ∈ v6DivisorFinset 6) :
    d ∈ v10ExpectedDivisorsSix := by
  exact v19_six_membership_transfer_forward h

theorem registry_v21_equality_membership_six_backward
    {d : Nat}
    (h : d ∈ v10ExpectedDivisorsSix) :
    d ∈ v6DivisorFinset 6 := by
  exact v19_six_membership_transfer_backward h

theorem registry_v21_equality_membership_twelve_forward
    {d : Nat}
    (h : d ∈ v6DivisorFinset 12) :
    d ∈ v10ExpectedDivisorsTwelve := by
  exact v19_twelve_membership_transfer_forward h

theorem registry_v21_equality_membership_twelve_backward
    {d : Nat}
    (h : d ∈ v10ExpectedDivisorsTwelve) :
    d ∈ v6DivisorFinset 12 := by
  exact v19_twelve_membership_transfer_backward h

def v21EqualityClassificationArcPackage : Prop :=
  v15UniversalMembershipAgreementSix ∧
  v17UniversalMembershipAgreementTwelve ∧
  v6DivisorFinset 6 = v10ExpectedDivisorsSix ∧
  v6DivisorFinset 12 = v10ExpectedDivisorsTwelve ∧
  v20ExactDivisorClassificationSix ∧
  v20ExactDivisorClassificationTwelve

theorem v21_equality_classification_arc_package :
    v21EqualityClassificationArcPackage := by
  exact ⟨
    v15_universal_membership_agreement_six,
    ⟨
      v17_universal_membership_agreement_twelve,
      ⟨
        v16_finset_equality_six,
        ⟨
          v18_finset_equality_twelve,
          ⟨
            v20_exact_divisor_classification_six,
            v20_exact_divisor_classification_twelve
          ⟩
        ⟩
      ⟩
    ⟩
  ⟩

theorem v21_registry_layer_exists :
    True := by
  trivial

end MathlibIntegration
end FormalLanglandsLab
