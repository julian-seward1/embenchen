;; Doubly-recursive Fibonnaci

(module
  (func $fib (export "fib") (param $n i32) (result i32)
    (if (result i32) (i32.lt_s (local.get $n) (i32.const 2))
        (local.get $n)
        (i32.add (call $fib (i32.sub (local.get $n) (i32.const 1)))
                 (call $fib (i32.sub (local.get $n) (i32.const 2)))))))
