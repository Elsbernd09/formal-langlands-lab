import FormalLanglandsLab.MathlibIntegration.V13BoundedOutOfRangePackages

namespace FormalLanglandsLab
namespace MathlibIntegration

def v13ExpectedOutOfRangeResultCount : Nat := 10
def v13OutOfRangeAgreementResultCount : Nat := 18
def v13BoundedOutOfRangePackageResultCount : Nat := 12

def v13TrackedResultCount : Nat :=
  v13ExpectedOutOfRangeResultCount +
  v13OutOfRangeAgreementResultCount +
  v13BoundedOutOfRangePackageResultCount

theorem v13ExpectedOutOfRangeResultCount_value :
    v13ExpectedOutOfRangeResultCount = 10 := by
  rfl

theorem v13OutOfRangeAgreementResultCount_value :
    v13OutOfRangeAgreementResultCount = 18 := by
  rfl

theorem v13BoundedOutOfRangePackageResultCount_value :
    v13BoundedOutOfRangePackageResultCount = 12 := by
  rfl

theorem v13TrackedResultCount_value :
    v13TrackedResultCount = 40 := by
  rfl

theorem registry_v13_expected_six_seven_not_mem :
    7 ∉ v10ExpectedDivisorsSix := by
  exact v13_expected_six_seven_not_mem

theorem registry_v13_expected_six_eight_not_mem :
    8 ∉ v10ExpectedDivisorsSix := by
  exact v13_expected_six_eight_not_mem

theorem registry_v13_expected_six_nine_not_mem :
    9 ∉ v10ExpectedDivisorsSix := by
  exact v13_expected_six_nine_not_mem

theorem registry_v13_expected_six_ten_not_mem :
    10 ∉ v10ExpectedDivisorsSix := by
  exact v13_expected_six_ten_not_mem

theorem registry_v13_expected_twelve_thirteen_not_mem :
    13 ∉ v10ExpectedDivisorsTwelve := by
  exact v13_expected_twelve_thirteen_not_mem

theorem registry_v13_expected_twelve_fourteen_not_mem :
    14 ∉ v10ExpectedDivisorsTwelve := by
  exact v13_expected_twelve_fourteen_not_mem

theorem registry_v13_expected_twelve_fifteen_not_mem :
    15 ∉ v10ExpectedDivisorsTwelve := by
  exact v13_expected_twelve_fifteen_not_mem

theorem registry_v13_expected_twelve_sixteen_not_mem :
    16 ∉ v10ExpectedDivisorsTwelve := by
  exact v13_expected_twelve_sixteen_not_mem

theorem registry_v13_expected_out_of_range_package_six :
    7 ∉ v10ExpectedDivisorsSix ∧
    8 ∉ v10ExpectedDivisorsSix ∧
    9 ∉ v10ExpectedDivisorsSix ∧
    10 ∉ v10ExpectedDivisorsSix := by
  exact v13_expected_out_of_range_six_sample_package

theorem registry_v13_expected_out_of_range_package_twelve :
    13 ∉ v10ExpectedDivisorsTwelve ∧
    14 ∉ v10ExpectedDivisorsTwelve ∧
    15 ∉ v10ExpectedDivisorsTwelve ∧
    16 ∉ v10ExpectedDivisorsTwelve := by
  exact v13_expected_out_of_range_twelve_sample_package

theorem registry_v13_agreement_six_seven :
    v13OutOfRangeAgreementSix 7 := by
  exact v13_agreement_six_seven

theorem registry_v13_agreement_six_eight :
    v13OutOfRangeAgreementSix 8 := by
  exact v13_agreement_six_eight

theorem registry_v13_agreement_six_nine :
    v13OutOfRangeAgreementSix 9 := by
  exact v13_agreement_six_nine

theorem registry_v13_agreement_six_ten :
    v13OutOfRangeAgreementSix 10 := by
  exact v13_agreement_six_ten

theorem registry_v13_agreement_twelve_thirteen :
    v13OutOfRangeAgreementTwelve 13 := by
  exact v13_agreement_twelve_thirteen

theorem registry_v13_agreement_twelve_fourteen :
    v13OutOfRangeAgreementTwelve 14 := by
  exact v13_agreement_twelve_fourteen

theorem registry_v13_agreement_twelve_fifteen :
    v13OutOfRangeAgreementTwelve 15 := by
  exact v13_agreement_twelve_fifteen

theorem registry_v13_agreement_twelve_sixteen :
    v13OutOfRangeAgreementTwelve 16 := by
  exact v13_agreement_twelve_sixteen

theorem registry_v13_out_of_range_agreement_package_six :
    v13OutOfRangeAgreementPackageSix := by
  exact v13_out_of_range_agreement_package_six

theorem registry_v13_out_of_range_agreement_package_twelve :
    v13OutOfRangeAgreementPackageTwelve := by
  exact v13_out_of_range_agreement_package_twelve

theorem registry_v13_bounded_plus_out_of_range_six :
    v13BoundedPlusOutOfRangeAgreementSix := by
  exact v13_bounded_plus_out_of_range_agreement_six

theorem registry_v13_bounded_plus_out_of_range_twelve :
    v13BoundedPlusOutOfRangeAgreementTwelve := by
  exact v13_bounded_plus_out_of_range_agreement_twelve

theorem registry_v13_strong_agreement_preparation :
    v13StrongAgreementPreparation := by
  exact v13_strong_agreement_preparation

theorem registry_v13_strong_agreement_has_six :
    v13StrongAgreementPreparation → v13BoundedPlusOutOfRangeAgreementSix := by
  exact v13_strong_agreement_preparation_has_six

theorem registry_v13_strong_agreement_has_twelve :
    v13StrongAgreementPreparation → v13BoundedPlusOutOfRangeAgreementTwelve := by
  exact v13_strong_agreement_preparation_has_twelve

end MathlibIntegration
end FormalLanglandsLab
