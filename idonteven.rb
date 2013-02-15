# encoding: utf-8

class Integer; alias_method :〆, :chr; end
class String; alias_method :〃, :+; end

( 〪 = ->(_, ・=0) { (・ < _) ? ((λ = ->(｡, ￮, ￭ = 0) {
      (￭ < ｡) ? (
        print ￮ + 1, ￭ + 1, (￭ + 1) % 5 == 0 ?
        (1 * 10).〆 : (4 * 11).〆.〃((4 * 8).〆)
        λ[｡, ￮, ￭ + 1]):0})[_, ・]
     〪[_, ・ + 1]):0
})[5]
