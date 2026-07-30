import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure WeierstrassFactorizationPackage where
  entireFunction : Type u
  zeroSet : Set ℂ → Prop
  elementaryFactors : Type u
  productConvergence : Prop
  genusBound : ℕ → Prop
  meromorphicRepresentation : Prop

def WeierstrassFactorizationClosed (W : WeierstrassFactorizationPackage) : Prop :=
  W.productConvergence ∧ W.meromorphicRepresentation

structure WeierstrassFactorizationEvidence (W : WeierstrassFactorizationPackage) where
  productConvergenceClosed : W.productConvergence
  meromorphicRepresentationClosed : W.meromorphicRepresentation

theorem weierstrass_factorization_closed_from_evidence (W : WeierstrassFactorizationPackage) (E : WeierstrassFactorizationEvidence W) : WeierstrassFactorizationClosed W := by
  exact And.intro E.productConvergenceClosed E.meromorphicRepresentationClosed

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse