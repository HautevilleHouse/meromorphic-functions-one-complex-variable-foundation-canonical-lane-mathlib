import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure RiemannMappingPackage where
  simplyConnectedDomain : Prop
  conformalEquivalence : Prop
  riemannMappingExistence : Prop
  boundaryBehavior : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  simplyConnectedDomainClosed : R.simplyConnectedDomain
  conformalEquivalenceClosed : R.conformalEquivalence
  riemannMappingExistenceClosed : R.riemannMappingExistence
  boundaryBehaviorClosed : R.boundaryBehavior

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.simplyConnectedDomain ∧ R.conformalEquivalence ∧ R.riemannMappingExistence ∧ R.boundaryBehavior

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage) (E : RiemannMappingEvidence R) :
    RiemannMappingClosed R := by
  exact And.intro E.simplyConnectedDomainClosed (And.intro E.conformalEquivalenceClosed (And.intro E.riemannMappingExistenceClosed E.boundaryBehaviorClosed))

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse