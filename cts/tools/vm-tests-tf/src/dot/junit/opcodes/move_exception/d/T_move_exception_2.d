; Copyright (C) 2008 The Android Open Source Project
;
; Licensed under the Apache License, Version 2.0 (the "License");
; you may not use this file except in compliance with the License.
; You may obtain a copy of the License at
;
;      http://www.apache.org/licenses/LICENSE-2.0
;
; Unless required by applicable law or agreed to in writing, software
; distributed under the License is distributed on an "AS IS" BASIS,
; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
; See the License for the specific language governing permissions and
; limitations under the License.

.source T_move_exception_2.java
.class public dot.junit.opcodes.move_exception.d.T_move_exception_2
.super java/lang/Object


.method public <init>()V
.limit regs 1

       invoke-direct {v0}, java/lang/Object/<init>()V
       return-void
.end method

.method public run()Z
.limit regs 6

Label1:
       const v1, 1
       const v2, 0
       div-int v0, v1, v2 
       
Label2:
       goto Label4

Label3:
       move-exception v3
       const v4, 1
       return v4

Label4:
       const v4, 0
       return v4

.catch java/lang/RuntimeException from Label1 to Label2 using Label3
.end method
