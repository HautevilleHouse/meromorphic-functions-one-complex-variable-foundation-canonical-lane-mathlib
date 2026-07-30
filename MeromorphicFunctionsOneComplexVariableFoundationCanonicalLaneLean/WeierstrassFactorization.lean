import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure WeierstrassFactorizationPackage where
  productExpansion : Prop
  growthEstimate : Prop
  genusBound : Prop
  hadamardFactorization : Prop
  productExpansionProof : productExpansion
  growthEstimateProof : growthEstimate
  genusBoundProof : genusBound
  hadamardFactorizationProof : hadamardFactorization

structure WeierstrassFactorizationEvidence (W : WeierstrassFactorizationPackage) where
  productExpansionClosed : W.productExpansion
  growthEstimateClosed : W.growthEstimate
  genusBoundClosed : W.genusBound
  hadamardFactorizationClosed : W.hadamardFactorization

def WeierstrassFactorizationClosed (W : WeierstrassFactorizationPackage) : Prop :=
  W.productExpansion ∧ W.growthEstimate ∧ W.genusBound ∧ W.hadamardFactorization

theorem weierstrass_factorization_closed_from_evidence (W : WeierstrassFactorizationPackage) (E : WeierstrassFactorizationEvidence W) :
    WeierstrassFactorizationClosed W := by
  exact And.intro E.productExpansionClosed
    (And.intro E.growthEstimateClosed
      (And.intro E.genusBoundClosed E.hadamardFactorizationClosed))

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse