import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure FourierAnalysisPackage where
  group : Type u
  dualGroup : Type v
  fourierTransform : Type w
  plancherelTheorem : Prop
  inversionFormula : Prop
  convolutionIdentity : Prop

structure FourierAnalysisEvidence (F : FourierAnalysisPackage) where
  plancherelTheoremClosed : F.plancherelTheorem
  inversionFormulaClosed : F.inversionFormula
  convolutionIdentityClosed : F.convolutionIdentity

def FourierAnalysisClosed (F : FourierAnalysisPackage) : Prop :=
  F.plancherelTheorem ∧ F.inversionFormula ∧ F.convolutionIdentity

theorem fourier_analysis_closed_from_evidence (F : FourierAnalysisPackage)
    (E : FourierAnalysisEvidence F) : FourierAnalysisClosed F := by
  exact And.intro E.plancherelTheoremClosed
    (And.intro E.inversionFormulaClosed E.convolutionIdentityClosed)

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse