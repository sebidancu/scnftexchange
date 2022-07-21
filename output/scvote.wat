(module
  (type (;0;) (func))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func (param i32 i32)))
  (type (;6;) (func (param i64)))
  (type (;7;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32)))
  (type (;9;) (func (param i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32 i32)))
  (type (;11;) (func (param i64) (result i32)))
  (type (;12;) (func (result i64)))
  (type (;13;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i64)))
  (type (;15;) (func (param i32 i32 i32) (result i64)))
  (type (;16;) (func (param i32 i32 i64 i32 i32 i32)))
  (type (;17;) (func (param i32 i64)))
  (type (;18;) (func (param i32 i64) (result i32)))
  (type (;19;) (func (param i32) (result i64)))
  (type (;20;) (func (param i32 i32 i32 i32 i32)))
  (type (;21;) (func (param i32 i64 i32 i32)))
  (type (;22;) (func (param i32 i32) (result i64)))
  (import "env" "checkNoPayment" (func (;0;) (type 0)))
  (import "env" "mBufferNewFromBytes" (func (;1;) (type 1)))
  (import "env" "getNumESDTTransfers" (func (;2;) (type 4)))
  (import "env" "bigIntNew" (func (;3;) (type 11)))
  (import "env" "bigIntGetCallValue" (func (;4;) (type 2)))
  (import "env" "bigIntGetESDTCallValue" (func (;5;) (type 2)))
  (import "env" "getESDTTokenName" (func (;6;) (type 3)))
  (import "env" "mBufferNew" (func (;7;) (type 4)))
  (import "env" "getESDTTokenNonce" (func (;8;) (type 12)))
  (import "env" "smallIntFinishSigned" (func (;9;) (type 6)))
  (import "env" "managedGetMultiESDTCallValue" (func (;10;) (type 2)))
  (import "env" "mBufferGetLength" (func (;11;) (type 3)))
  (import "env" "mBufferGetByteSlice" (func (;12;) (type 13)))
  (import "env" "mBufferSetRandom" (func (;13;) (type 1)))
  (import "env" "managedTransferValueExecute" (func (;14;) (type 7)))
  (import "env" "signalError" (func (;15;) (type 5)))
  (import "env" "mBufferStorageStore" (func (;16;) (type 1)))
  (import "env" "getNumArguments" (func (;17;) (type 4)))
  (import "env" "bigIntCmp" (func (;18;) (type 1)))
  (import "env" "bigIntAdd" (func (;19;) (type 8)))
  (import "env" "mBufferAppendBytes" (func (;20;) (type 9)))
  (import "env" "managedMultiTransferESDTNFTExecute" (func (;21;) (type 7)))
  (import "env" "managedCaller" (func (;22;) (type 2)))
  (import "env" "managedOwnerAddress" (func (;23;) (type 2)))
  (import "env" "mBufferGetArgument" (func (;24;) (type 1)))
  (import "env" "smallIntFinishUnsigned" (func (;25;) (type 6)))
  (import "env" "mBufferFinish" (func (;26;) (type 3)))
  (import "env" "finish" (func (;27;) (type 5)))
  (import "env" "mBufferStorageLoad" (func (;28;) (type 1)))
  (import "env" "managedSignalError" (func (;29;) (type 2)))
  (import "env" "bigIntSign" (func (;30;) (type 3)))
  (import "env" "mBufferAppend" (func (;31;) (type 1)))
  (import "env" "mBufferEq" (func (;32;) (type 1)))
  (import "env" "mBufferSetBytes" (func (;33;) (type 9)))
  (func (;34;) (type 0)
    call 0
    i32.const 0
    call 35
    call 36
    i32.const 1048576
    i32.const 11
    call 1
    call 37
    call 38
    call 36
    i32.const 1048587
    i32.const 11
    call 1
    call 37
    call 38
    call 39
    i32.const 1048598
    i32.const 11
    call 1
    call 37
    call 38
    call 40
    i32.const 1
    call 41)
  (func (;35;) (type 2) (param i32)
    call 17
    local.get 0
    i32.eq
    if  ;; label = @1
      return
    end
    i32.const 1048781
    i32.const 25
    call 15
    unreachable)
  (func (;36;) (type 4) (result i32)
    i32.const 1048712
    i32.const 4
    call 1)
  (func (;37;) (type 3) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      local.get 0
      call 11
      i32.const 4
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      i32.store offset=12
      local.get 0
      i32.const 0
      i32.const 4
      local.get 1
      i32.const 12
      i32.add
      call 12
      drop
      local.get 1
      i32.load offset=12
      i32.const 1145849669
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 1048912
      i32.const 0
      call 33
      drop
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;38;) (type 5) (param i32 i32)
    local.get 1
    call 74
    i32.eqz
    if  ;; label = @1
      local.get 0
      local.get 1
      call 16
      drop
      return
    end
    local.get 0
    i32.const 1048905
    i32.const 4
    call 90)
  (func (;39;) (type 4) (result i32)
    i32.const 1048720
    i32.const 9
    call 1)
  (func (;40;) (type 4) (result i32)
    i32.const 1048757
    i32.const 6
    call 1)
  (func (;41;) (type 5) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 2
    local.get 1
    i64.extend_i32_u
    i32.const 1
    local.get 2
    i32.const 8
    i32.add
    call 89
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 90
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;42;) (type 0)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    call 43
    i32.const 0
    call 35
    call 2
    local.set 1
    i64.const 0
    call 3
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block (result i32)  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.eqz
                if  ;; label = @7
                  local.get 2
                  call 4
                  br 1 (;@6;)
                end
                local.get 2
                call 5
                local.get 0
                i32.const 40
                i32.add
                i64.const 0
                i64.store
                local.get 0
                i32.const 32
                i32.add
                i64.const 0
                i64.store
                local.get 0
                i32.const 24
                i32.add
                i64.const 0
                i64.store
                local.get 0
                i64.const 0
                i64.store offset=16
                local.get 0
                i32.const 16
                i32.add
                call 6
                local.tee 1
                br_if 1 (;@5;)
              end
              call 7
              br 1 (;@4;)
            end
            local.get 1
            i32.const 33
            i32.ge_u
            br_if 1 (;@3;)
            local.get 0
            i32.const 16
            i32.add
            local.get 1
            call 1
          end
          call 2
          if (result i64)  ;; label = @4
            call 8
          else
            i64.const 0
          end
          local.set 3
          call 39
          call 44
          call 45
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          i64.const 1
          call 3
          call 46
          i32.const 255
          i32.and
          br_if 2 (;@1;)
          local.get 0
          i32.const 8
          i32.add
          call 47
          local.get 0
          i32.load offset=8
          local.get 0
          i32.load offset=12
          local.get 3
          call 48
          local.get 0
          i32.const 48
          i32.add
          global.set 0
          return
        end
        call 49
        unreachable
      end
      i32.const 1048673
      i32.const 16
      call 50
      unreachable
    end
    i32.const 1048689
    i32.const 23
    call 50
    unreachable)
  (func (;43;) (type 0)
    (local i32)
    call 7
    local.tee 0
    call 23
    local.get 0
    call 71
    call 45
    if  ;; label = @1
      return
    end
    i32.const 1048806
    i32.const 36
    call 15
    unreachable)
  (func (;44;) (type 3) (param i32) (result i32)
    local.get 0
    call 86
    call 37)
  (func (;45;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 32
    i32.const 0
    i32.gt_s)
  (func (;46;) (type 1) (param i32 i32) (result i32)
    i32.const -1
    local.get 0
    local.get 1
    call 18
    local.tee 0
    i32.const 0
    i32.ne
    local.get 0
    i32.const 0
    i32.lt_s
    select)
  (func (;47;) (type 2) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 8
    i32.add
    i32.const 1048729
    i32.const 6
    call 1
    call 80
    local.get 1
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 1
    i32.load offset=8
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;48;) (type 14) (param i32 i32 i64)
    local.get 0
    local.get 1
    call 72
    i32.const 1
    i32.add
    local.tee 0
    call 76
    local.get 2
    call 77
    local.get 1
    local.get 0
    call 78)
  (func (;49;) (type 0)
    call 92
    unreachable)
  (func (;50;) (type 5) (param i32 i32)
    local.get 0
    local.get 1
    call 15
    unreachable)
  (func (;51;) (type 0)
    call 0
    i32.const 0
    call 35
    call 36
    call 52)
  (func (;52;) (type 2) (param i32)
    local.get 0
    call 44
    local.tee 0
    call 74
    i32.eqz
    if  ;; label = @1
      local.get 0
      call 26
      drop
      return
    end
    i32.const 1048905
    i32.const 4
    call 27)
  (func (;53;) (type 0)
    call 0
    i32.const 0
    call 35
    call 54
    call 52)
  (func (;54;) (type 4) (result i32)
    i32.const 1048716
    i32.const 4
    call 1)
  (func (;55;) (type 0)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 0
    i32.const 0
    call 35
    local.get 0
    i32.const 8
    i32.add
    call 47
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call 56
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;56;) (type 5) (param i32 i32)
    (local i32)
    local.get 1
    call 72
    local.set 2
    i32.const 1
    local.set 1
    loop  ;; label = @1
      local.get 1
      local.get 2
      i32.gt_u
      i32.eqz
      if  ;; label = @2
        local.get 0
        local.get 1
        call 91
        call 25
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 1 (;@1;)
      end
    end)
  (func (;57;) (type 0)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 0
    i32.const 0
    call 35
    local.get 0
    i32.const 8
    i32.add
    call 58
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call 56
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;58;) (type 2) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 8
    i32.add
    i32.const 1048735
    i32.const 10
    call 1
    call 80
    local.get 1
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 1
    i32.load offset=8
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;59;) (type 0)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 0
    i32.const 0
    call 35
    local.get 0
    i32.const 8
    i32.add
    call 60
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call 56
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;60;) (type 2) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 8
    i32.add
    i32.const 1048745
    i32.const 12
    call 1
    call 80
    local.get 1
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 1
    i32.load offset=8
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;61;) (type 0)
    call 0
    i32.const 0
    call 35
    call 40
    call 62
    i64.extend_i32_u
    call 9)
  (func (;62;) (type 3) (param i32) (result i32)
    (local i64)
    block (result i32)  ;; label = @1
      block  ;; label = @2
        local.get 0
        call 85
        local.tee 1
        i64.const 1
        i64.le_u
        if  ;; label = @3
          i32.const 0
          local.get 1
          i32.wrap_i64
          i32.const 1
          i32.sub
          br_if 2 (;@1;)
          drop
          br 1 (;@2;)
        end
        i32.const 1048763
        i32.const 18
        call 88
        unreachable
      end
      i32.const 1
    end)
  (func (;63;) (type 0)
    call 0
    i32.const 0
    call 35
    call 39
    call 52)
  (func (;64;) (type 0)
    (local i32)
    call 0
    call 43
    i32.const 1
    call 35
    call 65
    local.set 0
    call 36
    local.get 0
    call 38)
  (func (;65;) (type 4) (result i32)
    (local i32)
    i32.const 0
    call 7
    local.tee 0
    call 24
    drop
    local.get 0
    call 37)
  (func (;66;) (type 0)
    (local i32)
    call 0
    call 43
    i32.const 1
    call 35
    call 65
    local.set 0
    call 54
    local.get 0
    call 38)
  (func (;67;) (type 0)
    (local i32)
    call 0
    call 43
    i32.const 1
    call 35
    call 65
    local.set 0
    call 39
    local.get 0
    call 38)
  (func (;68;) (type 0)
    call 0
    call 43
    i32.const 0
    call 35
    call 40
    i32.const 1
    call 41)
  (func (;69;) (type 0)
    call 0
    call 43
    i32.const 0
    call 35
    call 40
    i32.const 0
    call 41)
  (func (;70;) (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 35
    i32.const 1048576
    i32.const 11
    call 1
    call 37
    local.set 4
    i32.const 1048587
    i32.const 11
    call 1
    call 37
    local.set 5
    call 7
    local.tee 6
    call 10
    call 71
    local.set 7
    local.get 0
    i32.const 48
    i32.add
    call 47
    block  ;; label = @1
      local.get 0
      i32.load offset=52
      call 72
      if  ;; label = @2
        call 40
        call 62
        if  ;; label = @3
          local.get 6
          call 11
          local.set 8
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.const 16
                        i32.add
                        local.tee 3
                        local.get 8
                        i32.le_u
                        if  ;; label = @11
                          local.get 0
                          i32.const 56
                          i32.add
                          local.tee 2
                          i32.const 8
                          i32.add
                          i64.const 0
                          i64.store
                          local.get 0
                          i64.const 0
                          i64.store offset=56
                          local.get 6
                          local.get 1
                          i32.const 16
                          local.get 2
                          call 12
                          drop
                          local.get 0
                          i64.load offset=60 align=4
                          local.set 9
                          local.get 0
                          i32.load offset=56
                          local.tee 1
                          i32.const 8
                          i32.shl
                          i32.const 16711680
                          i32.and
                          local.get 1
                          i32.const 24
                          i32.shl
                          i32.or
                          local.get 1
                          i32.const 8
                          i32.shr_u
                          i32.const 65280
                          i32.and
                          local.get 1
                          i32.const 24
                          i32.shr_u
                          i32.or
                          i32.or
                          local.tee 2
                          local.get 4
                          call 45
                          i32.eqz
                          if  ;; label = @12
                            local.get 2
                            local.get 5
                            call 45
                            i32.eqz
                            br_if 2 (;@10;)
                          end
                          local.get 9
                          i64.const 40
                          i64.shl
                          i64.const 71776119061217280
                          i64.and
                          local.get 9
                          i64.const 56
                          i64.shl
                          i64.or
                          local.get 9
                          i64.const 24
                          i64.shl
                          i64.const 280375465082880
                          i64.and
                          local.get 9
                          i64.const 8
                          i64.shl
                          i64.const 1095216660480
                          i64.and
                          i64.or
                          i64.or
                          local.get 9
                          i64.const 8
                          i64.shr_u
                          i64.const 4278190080
                          i64.and
                          local.get 9
                          i64.const 24
                          i64.shr_u
                          i64.const 16711680
                          i64.and
                          i64.or
                          local.get 9
                          i64.const 40
                          i64.shr_u
                          i64.const 65280
                          i64.and
                          local.get 9
                          i64.const 56
                          i64.shr_u
                          i64.or
                          i64.or
                          i64.or
                          local.set 9
                          local.get 2
                          local.get 4
                          call 45
                          br_if 2 (;@9;)
                          br 6 (;@5;)
                        end
                        local.get 0
                        i32.const 24
                        i32.add
                        call 47
                        local.get 0
                        i32.load offset=28
                        call 72
                        local.set 2
                        call 39
                        call 44
                        local.set 3
                        call 7
                        local.tee 1
                        i32.const 4
                        call 13
                        drop
                        local.get 0
                        i32.const 0
                        i32.store offset=56
                        local.get 1
                        i32.const 0
                        i32.const 4
                        local.get 0
                        i32.const 56
                        i32.add
                        call 12
                        drop
                        local.get 2
                        i32.eqz
                        br_if 2 (;@8;)
                        local.get 0
                        i32.load offset=56
                        local.set 1
                        local.get 0
                        i32.const 16
                        i32.add
                        call 47
                        local.get 0
                        i32.load offset=16
                        local.get 0
                        i32.load offset=20
                        local.get 1
                        i32.const 8
                        i32.shl
                        i32.const 16711680
                        i32.and
                        local.get 1
                        i32.const 24
                        i32.shl
                        i32.or
                        local.get 1
                        i32.const 8
                        i32.shr_u
                        i32.const 65280
                        i32.and
                        local.get 1
                        i32.const 24
                        i32.shr_u
                        i32.or
                        i32.or
                        local.get 2
                        i32.rem_u
                        local.tee 4
                        i32.const 1
                        i32.add
                        local.tee 5
                        call 73
                        local.set 9
                        i64.const 1
                        call 3
                        local.set 1
                        local.get 0
                        local.get 7
                        i32.store offset=72
                        local.get 0
                        i32.const 1048912
                        i32.const 0
                        call 1
                        local.tee 2
                        i32.store offset=76
                        local.get 0
                        call 7
                        local.tee 6
                        i32.store offset=56
                        local.get 3
                        call 74
                        br_if 3 (;@7;)
                        local.get 9
                        i64.eqz
                        if  ;; label = @11
                          local.get 0
                          i32.const 72
                          i32.add
                          local.get 3
                          i64.const 0
                          local.get 1
                          local.get 0
                          i32.const 76
                          i32.add
                          local.get 0
                          i32.const 56
                          i32.add
                          call 75
                          br 5 (;@6;)
                        end
                        local.get 0
                        i32.const 72
                        i32.add
                        local.get 3
                        local.get 9
                        local.get 1
                        local.get 0
                        i32.const 76
                        i32.add
                        local.get 0
                        i32.const 56
                        i32.add
                        call 75
                        br 4 (;@6;)
                      end
                      i32.const 1048660
                      i32.const 13
                      call 50
                      unreachable
                    end
                    local.get 0
                    i32.const 40
                    i32.add
                    call 58
                    local.get 0
                    i32.load offset=40
                    local.get 0
                    i32.load offset=44
                    local.get 9
                    call 48
                    br 3 (;@5;)
                  end
                  call 49
                  unreachable
                end
                local.get 7
                local.get 1
                i64.const 0
                local.get 2
                local.get 6
                call 14
                drop
              end
              local.get 0
              i32.const 8
              i32.add
              call 47
              local.get 0
              i32.load offset=8
              local.set 2
              block  ;; label = @6
                local.get 0
                i32.load offset=12
                local.tee 3
                call 72
                local.tee 1
                local.get 4
                i32.gt_u
                if  ;; label = @7
                  local.get 1
                  local.get 5
                  i32.eq
                  br_if 1 (;@6;)
                  local.get 2
                  local.get 3
                  local.get 1
                  call 73
                  local.set 9
                  local.get 3
                  call 72
                  local.get 4
                  i32.le_u
                  br_if 6 (;@1;)
                  local.get 2
                  local.get 5
                  call 76
                  local.get 9
                  call 77
                  br 1 (;@6;)
                end
                br 5 (;@1;)
              end
              local.get 3
              call 72
              local.get 1
              i32.lt_u
              br_if 4 (;@1;)
              local.get 2
              local.get 1
              call 76
              call 7
              call 16
              drop
              local.get 3
              local.get 1
              i32.const 1
              i32.sub
              call 78
              local.get 0
              i32.const 80
              i32.add
              global.set 0
              return
            end
            local.get 3
            local.set 1
            local.get 2
            local.get 5
            call 45
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 32
            i32.add
            call 60
            local.get 0
            i32.load offset=32
            local.get 0
            i32.load offset=36
            local.get 9
            call 48
            br 0 (;@4;)
          end
          unreachable
        end
        i32.const 1048633
        i32.const 27
        call 50
        unreachable
      end
      i32.const 1048609
      i32.const 24
      call 50
      unreachable
    end
    i32.const 1048865
    i32.const 18
    call 15
    unreachable)
  (func (;71;) (type 4) (result i32)
    (local i32)
    call 7
    local.tee 0
    call 22
    local.get 0)
  (func (;72;) (type 3) (param i32) (result i32)
    (local i64)
    local.get 0
    call 85
    local.tee 1
    i64.const 4294967296
    i64.ge_u
    if  ;; label = @1
      i32.const 1048842
      i32.const 14
      call 88
      unreachable
    end
    local.get 1
    i32.wrap_i64)
  (func (;73;) (type 15) (param i32 i32 i32) (result i64)
    local.get 1
    call 72
    local.get 2
    i32.ge_u
    if  ;; label = @1
      local.get 0
      local.get 2
      call 91
      return
    end
    i32.const 1048865
    i32.const 18
    call 15
    unreachable)
  (func (;74;) (type 3) (param i32) (result i32)
    local.get 0
    call 11
    i32.eqz)
  (func (;75;) (type 16) (param i32 i32 i64 i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 6
    global.set 0
    call 7
    local.set 8
    local.get 1
    call 81
    local.set 7
    i64.const 0
    call 3
    local.tee 1
    local.get 1
    local.get 3
    call 19
    block  ;; label = @1
      local.get 1
      i64.const 0
      call 82
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 7
      call 74
      br_if 0 (;@1;)
      local.get 2
      i64.eqz
      br_if 0 (;@1;)
      local.get 1
      i64.const 1
      call 82
      drop
    end
    local.get 6
    i32.const 24
    i32.add
    local.tee 3
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get 6
    i64.const 0
    i64.store offset=24
    local.get 6
    local.get 7
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 7
    i32.const 24
    i32.shl
    i32.or
    local.get 7
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 7
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=40
    local.get 6
    i32.const 16
    i32.add
    local.get 3
    i32.const 0
    i32.const 4
    call 83
    local.get 6
    i32.load offset=16
    local.get 6
    i32.load offset=20
    local.get 6
    i32.const 40
    i32.add
    local.tee 7
    i32.const 4
    call 84
    local.get 6
    local.get 2
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    local.get 2
    i64.const 56
    i64.shl
    i64.or
    local.get 2
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 2
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 2
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 2
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 2
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 2
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=40
    local.get 6
    i32.const 8
    i32.add
    local.get 3
    i32.const 4
    i32.const 12
    call 83
    local.get 6
    i32.load offset=8
    local.get 6
    i32.load offset=12
    local.get 7
    i32.const 8
    call 84
    local.get 6
    local.get 1
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 1
    i32.const 24
    i32.shl
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=40
    local.get 6
    local.get 3
    i32.const 12
    i32.const 16
    call 83
    local.get 6
    i32.load
    local.get 6
    i32.load offset=4
    local.get 7
    i32.const 4
    call 84
    local.get 8
    local.get 3
    i32.const 16
    call 20
    drop
    local.get 0
    i32.load
    local.get 8
    i64.const 0
    local.get 4
    i32.load
    local.get 5
    i32.load
    call 21
    drop
    local.get 6
    i32.const 48
    i32.add
    global.set 0)
  (func (;76;) (type 1) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    call 81
    local.tee 0
    i32.const 1048860
    i32.const 5
    call 20
    drop
    local.get 2
    local.get 1
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 1
    i32.const 24
    i32.shl
    i32.or
    local.get 1
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 1
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call 20
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;77;) (type 17) (param i32 i64)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 2
    local.get 1
    i32.const 0
    local.get 2
    i32.const 8
    i32.add
    call 89
    local.get 0
    local.get 2
    i32.load
    local.get 2
    i32.load offset=4
    call 90
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;78;) (type 5) (param i32 i32)
    local.get 0
    local.get 1
    i64.extend_i32_u
    call 77)
  (func (;79;) (type 0)
    nop)
  (func (;80;) (type 5) (param i32 i32)
    (local i32)
    local.get 1
    call 81
    local.tee 2
    i32.const 1048856
    i32.const 4
    call 20
    drop
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;81;) (type 3) (param i32) (result i32)
    (local i32)
    call 7
    local.tee 1
    local.get 0
    call 31
    drop
    local.get 1)
  (func (;82;) (type 18) (param i32 i64) (result i32)
    local.get 1
    i64.eqz
    if  ;; label = @1
      i32.const -1
      local.get 0
      call 30
      local.tee 0
      i32.const 0
      i32.ne
      local.get 0
      i32.const 0
      i32.lt_s
      select
      return
    end
    local.get 0
    i64.const 1
    call 3
    call 46)
  (func (;83;) (type 10) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i32.const 8
    i32.add
    local.get 2
    local.get 3
    local.get 1
    i32.const 16
    call 87
    local.get 4
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 4
    i32.load offset=8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;84;) (type 10) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 1
    local.get 3
    i32.eq
    if  ;; label = @1
      local.get 1
      local.tee 3
      i32.const 15
      i32.gt_u
      if  ;; label = @2
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 4
        local.get 0
        i32.add
        local.set 5
        local.get 4
        if  ;; label = @3
          local.get 2
          local.set 1
          loop  ;; label = @4
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 5
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            i32.gt_u
            br_if 0 (;@4;)
          end
        end
        local.get 3
        local.get 4
        i32.sub
        local.tee 3
        i32.const -4
        i32.and
        local.tee 6
        local.get 5
        i32.add
        local.set 0
        block  ;; label = @3
          local.get 2
          local.get 4
          i32.add
          local.tee 4
          i32.const 3
          i32.and
          if  ;; label = @4
            local.get 6
            i32.const 0
            i32.le_s
            br_if 1 (;@3;)
            local.get 4
            i32.const 3
            i32.shl
            local.tee 1
            i32.const 24
            i32.and
            local.set 7
            i32.const 0
            local.get 1
            i32.sub
            i32.const 24
            i32.and
            local.set 8
            local.get 4
            i32.const -4
            i32.and
            local.tee 1
            i32.const 4
            i32.add
            local.set 2
            local.get 1
            i32.load
            local.set 1
            loop  ;; label = @5
              local.get 1
              local.get 7
              i32.shr_u
              local.set 9
              local.get 5
              local.get 9
              local.get 2
              i32.load
              local.tee 1
              local.get 8
              i32.shl
              i32.or
              i32.store
              local.get 2
              i32.const 4
              i32.add
              local.set 2
              local.get 5
              i32.const 4
              i32.add
              local.tee 5
              local.get 0
              i32.lt_u
              br_if 0 (;@5;)
            end
            br 1 (;@3;)
          end
          local.get 6
          i32.const 0
          i32.le_s
          br_if 0 (;@3;)
          local.get 4
          local.set 2
          loop  ;; label = @4
            local.get 5
            local.get 2
            i32.load
            i32.store
            local.get 2
            i32.const 4
            i32.add
            local.set 2
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 0
            i32.lt_u
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.const 3
        i32.and
        local.set 3
        local.get 4
        local.get 6
        i32.add
        local.set 2
      end
      local.get 3
      if  ;; label = @2
        local.get 0
        local.get 3
        i32.add
        local.set 1
        loop  ;; label = @3
          local.get 0
          local.get 2
          i32.load8_u
          i32.store8
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 1
          local.get 0
          i32.const 1
          i32.add
          local.tee 0
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      return
    end
    call 49
    unreachable)
  (func (;85;) (type 19) (param i32) (result i64)
    (local i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i64.const 0
    i64.store offset=8
    local.get 0
    call 86
    local.tee 0
    call 11
    local.tee 2
    i32.const 9
    i32.lt_u
    if  ;; label = @1
      local.get 1
      i32.const 0
      local.get 2
      local.get 1
      i32.const 8
      i32.add
      i32.const 8
      call 87
      local.get 0
      i32.const 0
      local.get 1
      i32.load offset=4
      local.tee 0
      local.get 1
      i32.load
      local.tee 2
      call 12
      drop
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 0
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 1
          i32.sub
          local.set 0
          local.get 2
          i64.load8_u
          local.get 3
          i64.const 8
          i64.shl
          i64.or
          local.set 3
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          br 0 (;@3;)
        end
        unreachable
      end
      local.get 1
      i32.const 16
      i32.add
      global.set 0
      local.get 3
      return
    end
    i32.const 1048842
    i32.const 14
    call 88
    unreachable)
  (func (;86;) (type 3) (param i32) (result i32)
    local.get 0
    call 7
    local.tee 0
    call 28
    drop
    local.get 0)
  (func (;87;) (type 20) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.le_u
      if  ;; label = @2
        local.get 2
        local.get 4
        i32.le_u
        br_if 1 (;@1;)
        call 49
        unreachable
      end
      call 49
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 1
    local.get 3
    i32.add
    i32.store)
  (func (;88;) (type 5) (param i32 i32)
    (local i32)
    i32.const 1048883
    i32.const 22
    call 1
    local.tee 2
    local.get 0
    local.get 1
    call 20
    drop
    local.get 2
    call 29
    unreachable)
  (func (;89;) (type 21) (param i32 i64 i32 i32)
    (local i32 i32 i32 i32 i64)
    local.get 3
    local.get 1
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    local.get 1
    i64.const 56
    i64.shl
    i64.or
    local.get 1
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 1
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 1
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 1
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 1
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 1
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    local.tee 8
    i64.store align=1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        block (result i32)  ;; label = @3
          local.get 1
          i64.eqz
          if  ;; label = @4
            i32.const 1048912
            local.set 3
            i32.const 0
            br 1 (;@3;)
          end
          local.get 2
          i32.eqz
          i32.eqz
          local.get 1
          i64.const -1
          i64.eq
          i32.and
          i32.eqz
          if  ;; label = @4
            i32.const 0
            local.get 2
            local.get 8
            i64.const 128
            i64.and
            i64.const 7
            i64.shr_u
            i32.wrap_i64
            i32.and
            local.tee 5
            i32.sub
            i32.const 255
            i32.and
            local.set 6
            loop  ;; label = @5
              local.get 4
              i32.const 8
              i32.eq
              br_if 3 (;@2;)
              local.get 3
              local.get 4
              i32.add
              i32.load8_u
              local.tee 7
              local.get 6
              i32.ne
              if  ;; label = @6
                local.get 4
                local.get 2
                local.get 7
                i32.const 7
                i32.shr_u
                local.get 5
                i32.ne
                i32.and
                local.tee 2
                i32.sub
                i32.const 9
                i32.ge_u
                br_if 5 (;@1;)
                i32.const 0
                local.get 2
                i32.sub
                local.tee 2
                local.get 3
                i32.add
                local.get 4
                i32.add
                local.set 3
                i32.const 8
                local.get 2
                local.get 4
                i32.add
                i32.sub
                br 3 (;@3;)
              else
                local.get 4
                i32.const 1
                i32.add
                local.set 4
                br 1 (;@5;)
              end
              unreachable
            end
            unreachable
          end
          local.get 3
          i32.const 7
          i32.add
          local.set 3
          i32.const 1
        end
        i32.store offset=4
        local.get 0
        local.get 3
        i32.store
        return
      end
      call 49
      unreachable
    end
    call 92
    unreachable)
  (func (;90;) (type 8) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call 1
    call 16
    drop)
  (func (;91;) (type 22) (param i32 i32) (result i64)
    local.get 0
    local.get 1
    call 76
    call 85)
  (func (;92;) (type 0)
    i32.const 1048912
    i32.const 14
    call 15
    unreachable)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1048926))
  (global (;2;) i32 (i32.const 1048928))
  (export "memory" (memory 0))
  (export "init" (func 34))
  (export "fund" (func 42))
  (export "getNFT1" (func 51))
  (export "getNFT2" (func 53))
  (export "getNonces" (func 55))
  (export "getNoncesBaby" (func 57))
  (export "getNoncesElixir" (func 59))
  (export "getStatus" (func 61))
  (export "getnftreward" (func 63))
  (export "set_nft1" (func 64))
  (export "set_nft2" (func 66))
  (export "set_nft_reward" (func 67))
  (export "start" (func 68))
  (export "stop" (func 69))
  (export "upgrade" (func 70))
  (export "callBack" (func 79))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 1048576) "TPCB-8ed04aTPCE-559720TPCA-c8ae76No Alpha Tiger availableUpgrade is currently closedInvalid tokenNFT is not validNFT amount is not validnft1nft2nftrewardnoncesnoncesbabynonceselixirstatusinput out of rangewrong number of argumentsEndpoint can only be called by ownerinput too long.len.itemindex out of rangestorage decode error: EGLD\00\00\00panic occurred"))
