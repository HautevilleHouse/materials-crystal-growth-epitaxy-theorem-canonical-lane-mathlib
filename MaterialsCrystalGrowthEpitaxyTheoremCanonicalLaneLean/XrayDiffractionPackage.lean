import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure XrayDiffractionPackage where
  incidentAngle : ℝ
  scatteringVector : ℝ → ℝ
  intensityProfile : ℝ → ℝ
  latticeConstant : ℝ
  strainProfile : ℝ → ℝ
  peakPosition : ℝ
  peakWidth : ℝ

structure XrayDiffractionEvidence (p : XrayDiffractionPackage) where
  incidentAngleClosed : p.incidentAngle > 0
  scatteringVectorClosed : ∀ q, p.scatteringVector q ≠ 0
  intensityProfileClosed : ∀ q, p.intensityProfile q ≥ 0
  latticeConstantClosed : p.latticeConstant > 0
  strainProfileClosed : ∀ z, p.strainProfile z ∈ Set.Icc (-1) 1
  peakPositionClosed : p.peakPosition > 0
  peakWidthClosed : p.peakWidth > 0

def XrayDiffractionClosed (p : XrayDiffractionPackage) : Prop :=
  p.incidentAngle > 0 ∧ (∀ q, p.scatteringVector q ≠ 0) ∧ (∀ q, p.intensityProfile q ≥ 0) ∧
  p.latticeConstant > 0 ∧ (∀ z, p.strainProfile z ∈ Set.Icc (-1) 1) ∧
  p.peakPosition > 0 ∧ p.peakWidth > 0

theorem xray_diffraction_closed_from_evidence (p : XrayDiffractionPackage)
    (e : XrayDiffractionEvidence p) : XrayDiffractionClosed p := by
  exact And.intro e.incidentAngleClosed
    (And.intro e.scatteringVectorClosed
      (And.intro e.intensityProfileClosed
        (And.intro e.latticeConstantClosed
          (And.intro e.strainProfileClosed
            (And.intro e.peakPositionClosed e.peakWidthClosed)))))

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse