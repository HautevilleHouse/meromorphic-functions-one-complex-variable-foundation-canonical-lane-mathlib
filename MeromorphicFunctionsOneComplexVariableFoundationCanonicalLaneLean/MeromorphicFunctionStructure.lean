import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure MeromorphicFunctionPackage where
  domain : Set ℂ
  poles : Set ℂ
  poleOrders : ℂ → ℕ
  laurentExpansions : ℂ → ℂ → ℂ
  holomorphicOn : Prop
  isolatedPoles : Prop
  principalParts : Prop
  meromorphicDecomposition : Prop

structure MeromorphicFunctionEvidence (M : MeromorphicFunctionPackage) where
  holomorphicOnClosed : M.holomorphicOn
  isolatedPolesClosed : M.isolatedPoles
  principalPartsClosed : M.principalParts
  meromorphicDecompositionClosed : M.meromorphicDecomposition

def MeromorphicFunctionClosed (M : MeromorphicFunctionPackage) : Prop :=
  M.isolatedPoles ∧ M.principalParts ∧ M.meromorphicDecomposition

theorem meromorphic_function_closed_from_evidence
    (M : MeromorphicFunctionPackage)
    (E : MeromorphicFunctionEvidence M) :
    MeromorphicFunctionClosed M := by
  exact And.intro E.isolatedPolesClosed
    (And.intro E.principalPartsClosed E.meromorphicDecompositionClosed)

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse