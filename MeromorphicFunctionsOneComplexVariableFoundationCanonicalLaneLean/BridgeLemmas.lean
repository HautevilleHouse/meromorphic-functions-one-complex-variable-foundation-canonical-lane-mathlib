import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MeromorphicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse