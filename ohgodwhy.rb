->(max) { puts (iter = ->(m, n=1, l=[]) { n <= m ?
    iter[m, n + 1, l << ->(c) { c.kind_of?(Array) ? c.map(&:chr).join : c }[->(i) {
      (->(m) { (m % 3) == 0 ? [102,105,122,122] : nil }[i] and
       ->(m) { (m % 5) == 0 ? [98,117,122,122] : nil }[i] ) ?
         ->(m) { (m % 3) == 0 ? [102,105,122,122] : nil }[i] +
         ->(m) { (m % 5) == 0 ? [98,117,122,122] : nil }[i] :
      (->(m) { (m % 3) == 0 ? [102,105,122,122] : nil }[i] or
       ->(m) { (m % 5) == 0 ? [98,117,122,122] : nil }[i] ) or i}[n]]] : l })[max]}[100]
__END__
# A less fucked version.

->(max) {
  # iteration
  puts (iter = ->(m, n=1, l=[]) {
    n <= m ?
    iter[m, n + 1, l << ->(c) { c.kind_of?(Array) ? c.map(&:chr).join : c }[
    # def fizzbuzz
    ->(i) {
      ( ->(mt) { (mt % 3) == 0 ? [102,105,122,122] : nil }[i] and
        ->(mf) { (mf % 5) == 0 ? [98,117,122,122] : nil }[i] ) ?
          ->(mt) { (mt % 3) == 0 ? [102,105,122,122] : nil }[i] +
          ->(mf) { (mf % 5) == 0 ? [98,117,122,122] : nil }[i] :
        ( ->(mt) { (mt % 3) == 0 ? [102,105,122,122] : nil }[i] or
          ->(mf) { (mf % 5) == 0 ? [98,117,122,122] : nil }[i] ) or i
    }[n]]] : l })[max]
}[100]

# is multiple of three?
#   (->(mt) { (mt % 3) == 0 ? [102,105,122,122] : nil }[i])
# is multiple of five?
#   (->(mf) { (mf % 5) == 0 ? [98,117,122,122] : nil }[i])
