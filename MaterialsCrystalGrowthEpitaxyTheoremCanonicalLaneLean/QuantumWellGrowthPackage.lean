import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure QuantumWellGrowthPackage where
  barrierMaterial : String
  quantumWellMaterial : String
  wellWidth : ℝ
  barrierWidth : ℝ
  growthTemperature : ℝ
  growthRate : ℝ
  interfaceRoughness : ℝ
  photoluminescencePeak : ℝ

structure QuantumWellGrowthEvidence (p : QuantumWellGrowthPackage) where
  wellWidthClosed : p.wellWidth > 0
  barrierWidthClosed : p.barrierWidth > 0
  growthTemperatureClosed : p.growthTemperature > 0
  growthRateClosed : p.growthRate > 0
  interfaceRoughnessClosed : p.interfaceRoughness < 1 -- normalized
  photoluminescencePeakClosed : p.photoluminescencePeak > 0

def QuantumWellGrowthClosed (p : QuantumWellGrowthPackage) : Prop :=
  p.wellWidth > 0 ∧ p.barrierWidth > 0 ∧ p.growthTemperature > 0 ∧
  p.growthRate > 0 ∧ p.interfaceRoughness < 1 ∧ p.photoluminescencePeak > 0

theorem quantum_well_growth_closed_from_evidence (p : QuantumWellGrowthPackage)
    (e : QuantumWellGrowthEvidence p) : QuantumWellGrowthClosed p := by
  exact And.intro e.wellWidthClosed
    (And.intro e.barrierWidthClosed
      (And.intro e.growthTemperatureClosed
        (And.intro e.growthRateClosed
          (And.intro e.interfaceRoughnessClosed e.photoluminescencePeakClosed))))

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse