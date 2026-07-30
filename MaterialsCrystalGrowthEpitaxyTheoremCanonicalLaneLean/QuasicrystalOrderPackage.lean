import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean

structure QuasicrystalOrderPackage where
  aperiodicTiling : Prop
  longRangeOrder : Prop
  rotationalSymmetry : Prop
  icosahedralSymmetry : Prop
  diffractionPattern : Prop
  aperiodicTilingTerm : aperiodicTiling
  longRangeOrderTerm : longRangeOrder
  rotationalSymmetryTerm : rotationalSymmetry
  icosahedralSymmetryTerm : icosahedralSymmetry
  diffractionPatternTerm : diffractionPattern

structure QuasicrystalOrderEvidence (Q : QuasicrystalOrderPackage) where
  aperiodicTilingClosed : Q.aperiodicTiling
  longRangeOrderClosed : Q.longRangeOrder
  rotationalSymmetryClosed : Q.rotationalSymmetry
  icosahedralSymmetryClosed : Q.icosahedralSymmetry
  diffractionPatternClosed : Q.diffractionPattern

def QuasicrystalOrderClosed (Q : QuasicrystalOrderPackage) : Prop :=
  Q.aperiodicTiling ∧ Q.longRangeOrder ∧ Q.rotationalSymmetry ∧ Q.icosahedralSymmetry ∧ Q.diffractionPattern

theorem quasicrystal_order_closed_from_evidence (Q : QuasicrystalOrderPackage) (E : QuasicrystalOrderEvidence Q) :
    QuasicrystalOrderClosed Q := by
  exact And.intro E.aperiodicTilingClosed (And.intro E.longRangeOrderClosed (And.intro E.rotationalSymmetryClosed (And.intro E.icosahedralSymmetryClosed E.diffractionPatternClosed)))

end MaterialsCrystalGrowthEpitaxyTheoremCanonicalLaneLean
end HautevilleHouse