import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean

structure MeromorphicFunctionObject where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : @ComplexManifold domain topology
  f : domain → ℂ
  meromorphic : Prop
  conclusion : meromorphic

def MeromorphicWitnessClosed (O : MeromorphicFunctionObject) : Prop :=
  O.meromorphic

end MeromorphicFunctionsOneComplexVariableFoundationCanonicalLaneLean
end HautevilleHouse