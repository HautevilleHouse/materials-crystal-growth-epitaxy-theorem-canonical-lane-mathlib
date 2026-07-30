import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure NucleationRate where
  preExponentialFactor : ℝ
  activationBarrier : ℝ
  temperature : ℝ
  rate : ℝ

def nucleationRateFormula (A : ℝ) (Ea : ℝ) (T : ℝ) : ℝ :=
  A * Real.exp (-Ea / (8.617333262e-5 * T))

structure SurfaceDiffusion where
  diffusionCoefficient : ℝ
  activationEnergy : ℝ
  hopLength : ℝ
  attemptFrequency : ℝ

structure StepFlowGrowth where
  stepDensity : ℝ
  stepVelocity : ℝ
  terraceWidth : ℝ

def growthRateLangmuirIsotherm (k : ℝ) (P : ℝ) (θ : ℝ) : ℝ :=
  k * P * (1 - θ)

theorem nucleation_rate_increases_with_temperature (A Ea : ℝ) (T1 T2 : ℝ) (hT : T1 < T2) :
    nucleationRateFormula A Ea T1 < nucleationRateFormula A Ea T2 := by
  sorry

end HautevilleHouse
end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean