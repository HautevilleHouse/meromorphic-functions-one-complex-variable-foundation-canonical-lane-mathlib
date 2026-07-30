import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean.ComplexAnalysisFoundation

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure RiemannMappingPackage (F : ComplexAnalysisFoundation) where
  simplyConnectedDomain : Prop
  conformalMapExists : Prop
  uniquenessUpToAutomorphism : Prop

structure RiemannMappingEvidence {F : ComplexAnalysisFoundation} (R : RiemannMappingPackage F) where
  simplyConnectedDomainClosed : R.simplyConnectedDomain
  conformalMapExistsClosed : R.conformalMapExists
  uniquenessUpToAutomorphismClosed : R.uniquenessUpToAutomorphism

def RiemannMappingClosed {F : ComplexAnalysisFoundation} (R : RiemannMappingPackage F) : Prop :=
  R.simplyConnectedDomain ∧ R.conformalMapExists ∧ R.uniquenessUpToAutomorphism

theorem riemann_mapping_closed_from_evidence
    {F : ComplexAnalysisFoundation} (R : RiemannMappingPackage F)
    (E : RiemannMappingEvidence R) : RiemannMappingClosed R := by
  exact And.intro E.simplyConnectedDomainClosed
    (And.intro E.conformalMapExistsClosed E.uniquenessUpToAutomorphismClosed)

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse