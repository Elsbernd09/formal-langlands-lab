namespace FormalLanglandsLab
namespace Core

structure PrimeIndex where
  value : Nat
  isPrimeLike : Bool

def twoPrimeIndex : PrimeIndex where
  value := 2
  isPrimeLike := true

def threePrimeIndex : PrimeIndex where
  value := 3
  isPrimeLike := true

def fivePrimeIndex : PrimeIndex where
  value := 5
  isPrimeLike := true

def primeIndexValue
    (p : PrimeIndex) : Nat :=
  p.value

def isAcceptedPrimeIndex
    (p : PrimeIndex) : Bool :=
  p.isPrimeLike

theorem twoPrimeIndex_value :
    primeIndexValue twoPrimeIndex = 2 := by
  rfl

theorem threePrimeIndex_value :
    primeIndexValue threePrimeIndex = 3 := by
  rfl

theorem fivePrimeIndex_isPrimeLike :
    isAcceptedPrimeIndex fivePrimeIndex = true := by
  rfl

end Core
end FormalLanglandsLab
