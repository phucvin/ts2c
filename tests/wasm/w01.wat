(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i64 i32) (result i64)))
  (func (;0;) (type 3)
    call 6)
  (func (;1;) (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set 0
    local.get 3
    local.get 0
    i32.store16 offset=12
    local.get 3
    i32.load16_u offset=12
    local.set 4
    i32.const 16
    local.set 5
    local.get 4
    local.get 5
    i32.shl
    local.set 6
    local.get 6
    local.get 5
    i32.shr_s
    local.set 7
    i32.const 2
    local.set 8
    local.get 7
    local.get 8
    i32.lt_s
    local.set 9
    i32.const 1
    local.set 10
    local.get 9
    local.get 10
    i32.and
    local.set 11
    block  ;; label = @1
      block  ;; label = @2
        local.get 11
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 12
        local.get 3
        local.get 12
        i32.store16 offset=14
        br 1 (;@1;)
      end
      local.get 3
      i32.load16_u offset=12
      local.set 13
      i32.const 16
      local.set 14
      local.get 13
      local.get 14
      i32.shl
      local.set 15
      local.get 15
      local.get 14
      i32.shr_s
      local.set 16
      i32.const 2
      local.set 17
      local.get 16
      local.get 17
      i32.sub
      local.set 18
      i32.const 16
      local.set 19
      local.get 18
      local.get 19
      i32.shl
      local.set 20
      local.get 20
      local.get 19
      i32.shr_s
      local.set 21
      local.get 21
      call 1
      local.set 22
      i32.const 16
      local.set 23
      local.get 22
      local.get 23
      i32.shl
      local.set 24
      local.get 24
      local.get 23
      i32.shr_s
      local.set 25
      local.get 3
      i32.load16_u offset=12
      local.set 26
      i32.const 16
      local.set 27
      local.get 26
      local.get 27
      i32.shl
      local.set 28
      local.get 28
      local.get 27
      i32.shr_s
      local.set 29
      i32.const 1
      local.set 30
      local.get 29
      local.get 30
      i32.sub
      local.set 31
      i32.const 16
      local.set 32
      local.get 31
      local.get 32
      i32.shl
      local.set 33
      local.get 33
      local.get 32
      i32.shr_s
      local.set 34
      local.get 34
      call 1
      local.set 35
      i32.const 16
      local.set 36
      local.get 35
      local.get 36
      i32.shl
      local.set 37
      local.get 37
      local.get 36
      i32.shr_s
      local.set 38
      local.get 25
      local.get 38
      i32.add
      local.set 39
      local.get 3
      local.get 39
      i32.store16 offset=14
    end
    local.get 3
    i32.load16_u offset=14
    local.set 40
    i32.const 16
    local.set 41
    local.get 40
    local.get 41
    i32.shl
    local.set 42
    local.get 42
    local.get 41
    i32.shr_s
    local.set 43
    i32.const 16
    local.set 44
    local.get 3
    local.get 44
    i32.add
    local.set 45
    local.get 45
    global.set 0
    local.get 43
    return)
  (func (;2;) (type 0) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    i32.const 0
    local.set 3
    local.get 2
    local.get 3
    i32.store offset=12
    i32.const 0
    local.set 4
    local.get 4
    return)
  (func (;3;) (type 4) (param i32 i32) (result i32)
    (local i32)
    call 2
    local.set 2
    local.get 2
    return)
  (func (;4;) (type 1) (param i32)
    local.get 0
    global.set 1)
  (func (;5;) (type 0) (result i32)
    global.get 1)
  (func (;6;) (type 3)
    i32.const 65536
    global.set 3
    i32.const 0
    i32.const 15
    i32.add
    i32.const -16
    i32.and
    global.set 2)
  (func (;7;) (type 0) (result i32)
    global.get 0
    global.get 2
    i32.sub)
  (func (;8;) (type 0) (result i32)
    global.get 3)
  (func (;9;) (type 0) (result i32)
    global.get 2)
  (func (;10;) (type 1) (param i32))
  (func (;11;) (type 1) (param i32))
  (func (;12;) (type 0) (result i32)
    i32.const 65536
    call 10
    i32.const 65540)
  (func (;13;) (type 3)
    i32.const 65536
    call 11)
  (func (;14;) (type 2) (param i32) (result i32)
    i32.const 1)
  (func (;15;) (type 1) (param i32))
  (func (;16;) (type 2) (param i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      block  ;; label = @2
        i32.const 0
        i32.load offset=65544
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=65544
        call 16
        local.set 1
      end
      block  ;; label = @2
        i32.const 0
        i32.load offset=65544
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=65544
        call 16
        local.get 1
        i32.or
        local.set 1
      end
      block  ;; label = @2
        call 12
        i32.load
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=76
              i32.const 0
              i32.ge_s
              br_if 0 (;@5;)
              i32.const 1
              local.set 2
              br 1 (;@4;)
            end
            local.get 0
            call 14
            i32.eqz
            local.set 2
          end
          block  ;; label = @4
            local.get 0
            i32.load offset=20
            local.get 0
            i32.load offset=28
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            call 16
            local.get 1
            i32.or
            local.set 1
          end
          block  ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            local.get 0
            call 15
          end
          local.get 0
          i32.load offset=56
          local.tee 0
          br_if 0 (;@3;)
        end
      end
      call 13
      local.get 1
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=76
        i32.const 0
        i32.ge_s
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      call 14
      i32.eqz
      local.set 2
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=20
          local.get 0
          i32.load offset=28
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          i32.const 0
          i32.const 0
          local.get 0
          i32.load offset=36
          call_indirect (type 5)
          drop
          local.get 0
          i32.load offset=20
          br_if 0 (;@3;)
          i32.const -1
          local.set 1
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 1
          local.get 0
          i32.load offset=8
          local.tee 3
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          local.get 3
          i32.sub
          i64.extend_i32_s
          i32.const 1
          local.get 0
          i32.load offset=40
          call_indirect (type 6)
          drop
        end
        i32.const 0
        local.set 1
        local.get 0
        i32.const 0
        i32.store offset=28
        local.get 0
        i64.const 0
        i64.store offset=16
        local.get 0
        i64.const 0
        i64.store offset=4 align=4
        local.get 2
        br_if 1 (;@1;)
      end
      local.get 0
      call 15
    end
    local.get 1)
  (func (;17;) (type 1) (param i32)
    local.get 0
    global.set 0)
  (func (;18;) (type 2) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 1
    global.set 0
    local.get 1)
  (func (;19;) (type 0) (result i32)
    global.get 0)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 258 258)
  (global (;0;) (mut i32) (i32.const 65536))
  (global (;1;) (mut i32) (i32.const 0))
  (global (;2;) (mut i32) (i32.const 0))
  (global (;3;) (mut i32) (i32.const 0))
  (export "memory" (memory 0))
  (export "__wasm_call_ctors" (func 0))
  (export "fib" (func 1))
  (export "main" (func 3))
  (export "__indirect_function_table" (table 0))
  (export "fflush" (func 16))
  (export "emscripten_stack_init" (func 6))
  (export "emscripten_stack_get_free" (func 7))
  (export "emscripten_stack_get_base" (func 8))
  (export "emscripten_stack_get_end" (func 9))
  (export "_emscripten_stack_restore" (func 17))
  (export "_emscripten_stack_alloc" (func 18))
  (export "emscripten_stack_get_current" (func 19)))
