import GeneralLanglandsFunctorialityCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GeneralLanglandsFunctorialityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.sourceKeyChecked A.object.theoremObjectChecked

end GeneralLanglandsFunctorialityCanonicalLaneLean
end HautevilleHouse
