import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure InterpolationTheorem where
  rieszThorinTheorem : Prop
  marcinkiewiczTheorem : Prop
  complexInterpolation : Prop
  realInterpolation : Prop

structure InterpolationPackage where
  interpolationTheorem : InterpolationTheorem
  sharpConstants : Prop
  endpointEstimates : Prop

structure InterpolationEvidence (I : InterpolationPackage) where
  sharpConstantsClosed : I.sharpConstants
  endpointEstimatesClosed : I.endpointEstimates

def InterpolationClosed (I : InterpolationPackage) : Prop :=
  I.sharpConstants ∧ I.endpointEstimates

theorem interpolation_closed_from_evidence (I : InterpolationPackage)
    (E : InterpolationEvidence I) : InterpolationClosed I := by
  exact And.intro E.sharpConstantsClosed E.endpointEstimatesClosed

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse
