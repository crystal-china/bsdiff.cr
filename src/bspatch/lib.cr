@[Link(ldflags: "`command -v pkg-config > /dev/null && pkg-config --cflags --libs bzip2`")]
@[Link(ldflags: "#{__DIR__}/../../ext/bsdiff.a")]

lib LibBspatch
  fun bspatch(x0 : LibC::Char*, x1 : LibC::Char*, x2 : LibC::Char*) : LibC::Char*
end
