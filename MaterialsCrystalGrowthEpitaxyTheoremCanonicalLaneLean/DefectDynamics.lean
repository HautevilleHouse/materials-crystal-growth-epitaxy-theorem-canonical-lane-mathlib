import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

inductive PointDefect where
  | vacancy
  | interstitial
  | antisite
  | impurity (element : String)

structure Dislocation where
  burgersVector : ℝ × ℝ × ℝ
  lineDirection : ℝ × ℝ × ℝ
  glidePlane : (ℝ × ℝ × ℝ)

def DefectEnergy (defect : PointDefect) : ℝ := by
  match defect with
  | PointDefect.vacancy => 1.0
  | PointDefect.interstitial => 0.5
  | PointDefect.antisite => 0.8
  | PointDefect.impurity _ => 0.3

structure GrainBoundary where
  misorientationAngle : ℝ
  boundaryPlane : (ℝ × ℝ × ℝ)
  energy : ℝ
  excessVolume : ℝ

theorem defect_energy_positive (d : PointDefect) : DefectEnergy d > 0 := by
  unfold DefectEnergy
  match d with
  | PointDefect.vacancy => norm_num
  | PointDefect.interstitial => norm_num
  | PointDefect.antisite => norm_num
  | PointDefect.impurity _ => norm_num

end HautevilleHouse
end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean