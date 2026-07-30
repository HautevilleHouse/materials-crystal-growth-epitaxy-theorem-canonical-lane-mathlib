import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure SurfaceDiffusionPackage where
  adatomDensity : ℝ → ℝ
  diffusionCoefficient : ℝ
  stepEnergyBarrier : ℝ
  nucleationRate : ℝ
  islandDensity : ℝ

structure SurfaceDiffusionEvidence (p : SurfaceDiffusionPackage) where
  adatomDensityClosed : ∀ t, p.adatomDensity t > 0
  diffusionCoefficientClosed : p.diffusionCoefficient > 0
  stepEnergyBarrierClosed : p.stepEnergyBarrier > 0
  nucleationRateClosed : p.nucleationRate > 0
  islandDensityClosed : p.islandDensity > 0

def SurfaceDiffusionClosed (p : SurfaceDiffusionPackage) : Prop :=
  (∀ t, p.adatomDensity t > 0) ∧ p.diffusionCoefficient > 0 ∧
  p.stepEnergyBarrier > 0 ∧ p.nucleationRate > 0 ∧ p.islandDensity > 0

theorem surface_diffusion_closed_from_evidence (p : SurfaceDiffusionPackage)
    (e : SurfaceDiffusionEvidence p) : SurfaceDiffusionClosed p := by
  exact And.intro e.adatomDensityClosed
    (And.intro e.diffusionCoefficientClosed
      (And.intro e.stepEnergyBarrierClosed
        (And.intro e.nucleationRateClosed e.islandDensityClosed)))

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse