import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HarmonicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse