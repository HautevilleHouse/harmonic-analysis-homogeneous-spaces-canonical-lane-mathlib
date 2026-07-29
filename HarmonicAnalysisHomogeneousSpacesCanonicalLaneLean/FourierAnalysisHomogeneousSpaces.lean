import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean

structure HomogeneousFourierTransform (G : Type u) [AddCommGroup G] [TopologicalSpace G] [TopologicalAddGroup G] [LocallyCompactAbelianGroup G] where
  characterGroup : Type v
  pairing : G × characterGroup → Circle
  fourierTransform : (G → ℂ) → (characterGroup → ℂ)
  inversionFormula : Prop
  plancherelIdentity : Prop

structure FourierEvidence (G : Type u) [AddCommGroup G] [TopologicalSpace G] [TopologicalAddGroup G] [LocallyCompactAbelianGroup G] (F : HomogeneousFourierTransform G) where
  inversionFormulaClosed : F.inversionFormula
  plancherelIdentityClosed : F.plancherelIdentity

def FourierClosed (G : Type u) [AddCommGroup G] [TopologicalSpace G] [TopologicalAddGroup G] [LocallyCompactAbelianGroup G] (F : HomogeneousFourierTransform G) : Prop :=
  F.inversionFormula ∧ F.plancherelIdentity

theorem fourier_closed_from_evidence (G : Type u) [AddCommGroup G] [TopologicalSpace G] [TopologicalAddGroup G] [LocallyCompactAbelianGroup G] (F : HomogeneousFourierTransform G) (E : FourierEvidence G F) : FourierClosed G F := by
  exact And.intro E.inversionFormulaClosed E.plancherelIdentityClosed

end HarmonicAnalysisHomogeneousSpacesCanonicalLaneLean
end HautevilleHouse