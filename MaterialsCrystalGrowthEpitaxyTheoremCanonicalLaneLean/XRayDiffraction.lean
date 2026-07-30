import canonicalLaneMathlib.AdmissibleClass
import MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean.CrystalStructure

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure XRDExperiment where
  crystal : CrystalStructure
  wavelength : ℝ
  incidentAngle : ℝ
  detectorAngle : ℝ
  intensity : ℝ

def braggCondition (d : ℝ) (θ : ℝ) (λ : ℝ) : Prop :=
  2 * d * Real.sin θ = λ

structure DiffractionPattern where
  peaks : List (ℝ × ℝ)  -- angle × intensity
  background : ℝ → ℝ
  instrumentBroadening : ℝ

def MillerIndices (h k l : ℤ) : Prop :=
  h ≠ 0 ∨ k ≠ 0 ∨ l ≠ 0

structure StructureFactor where
  hkl : ℤ × ℤ × ℤ
  value : Complex
  phase : ℝ

theorem bragg_law (d : ℝ) (θ : ℝ) (λ : ℝ) (h : braggCondition d θ λ) :
    d = λ / (2 * Real.sin θ) := by
  unfold braggCondition at h
  linarith

end HautevilleHouse
end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean