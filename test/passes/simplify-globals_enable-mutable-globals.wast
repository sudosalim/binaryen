(module
  (import "env" "global-1" (global $g1 i32))
  (global $g2 (mut i32) (global.get $g1))
  (func $foo
   (drop (global.get $g1))
   (drop (global.get $g2))
  )
)
(module
  (import "env" "global-1" (global $g1 i32))
  (global $g2 (mut i32) (global.get $g1))
  (global $g3 (mut i32) (global.get $g2))
  (global $g4 (mut i32) (global.get $g3))
  (func $foo
   (drop (global.get $g1))
   (drop (global.get $g2))
   (drop (global.get $g3))
   (drop (global.get $g4))
  )
)
(module
  (import "env" "global-1" (global $g1 (mut i32)))
  (global $g2 (mut i32) (global.get $g1))
)
(module
  (import "env" "global-1" (global $g1 i32))
  (global $g2 (mut i32) (global.get $g1))
  (func $foo
   (global.set $g2 (unreachable))
  )
)
(module
  (import "env" "global-1" (global $g1 (mut i32)))
  (global $g2 (mut i32) (global.get $g1))
  (export "global-2" (global $g2))
)
(module
  (global $g1 i32 (i32.const 1))
  (global $g2 i32 (global.get $g1))
  (global $g3 f64 (f64.const -3.4))
  (global $g4 (mut f64) (f64.const -2.8))
  (global $g5 i32 (i32.const 2))
  (global $g6 (mut i32) (global.get $g5))
  (global $g7 (mut i32) (i32.const 3))
  (global $g8 i32 (global.get $g7))
  (global $g9 i32 (i32.const 4))
  (global $ga (mut i32) (global.get $g9))
  (global $gb (mut i32) (i32.const 5))
  (global $gc i32 (global.get $gb))
  (func $foo
   (drop (global.get $g1))
   (drop (global.get $g2))
   (drop (global.get $g3))
   (drop (global.get $g4))
   (drop (global.get $g5))
   (drop (global.get $g6))
   (drop (global.get $g7))
   (drop (global.get $g8))
   (drop (global.get $g9))
   (drop (global.get $ga))
   (drop (global.get $gb))
   (drop (global.get $gc))
   (global.set $ga (i32.const 6))
   (global.set $gb (i32.const 7))
  )
)

