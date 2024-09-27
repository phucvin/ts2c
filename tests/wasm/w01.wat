(module
  (type (;0;) (func))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (param i32 i32) (result i32)))
  (func (;0;) (type 0))
  (func (;1;) (type 1) (param i32) (result i32)
    (local i32)
    loop  ;; label = @1
      local.get 0
      i32.extend16_s
      i32.const 2
      i32.lt_s
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.const 2
        i32.sub
        i32.extend16_s
        call 1
        local.get 1
        i32.add
        local.set 1
        local.get 0
        i32.const 1
        i32.sub
        local.set 0
        br 1 (;@1;)
      end
    end
    local.get 1
    i32.const 1
    i32.add
    i32.extend16_s)
  (func (;2;) (type 2) (param i32 i32) (result i32)
    i32.const 0)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 258 258)
  (export "a" (memory 0))
  (export "b" (func 0))
  (export "c" (func 1))
  (export "d" (func 2))
  (export "e" (table 0)))
