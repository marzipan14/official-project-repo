; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/linit.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/linit.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lua_State = type opaque

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"os\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @luaL_openlibs(%struct.lua_State*) local_unnamed_addr #0 !dbg !32 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !41
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_base, i32 0) #3, !dbg !43
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #3, !dbg !46
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #3, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !41
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_package, i32 0) #3, !dbg !43
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)) #3, !dbg !46
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #3, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !41
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_table, i32 0) #3, !dbg !43
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #3, !dbg !46
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #3, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !41
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_io, i32 0) #3, !dbg !43
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3, !dbg !46
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #3, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !41
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_os, i32 0) #3, !dbg !43
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #3, !dbg !46
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #3, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !41
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_string, i32 0) #3, !dbg !43
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #3, !dbg !46
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #3, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !41
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_math, i32 0) #3, !dbg !43
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #3, !dbg !46
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #3, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !41
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_debug, i32 0) #3, !dbg !43
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #3, !dbg !46
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #3, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  ret void, !dbg !49
}

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @lua_call(%struct.lua_State*, i32, i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @luaopen_base(%struct.lua_State*) #1

; Function Attrs: noredzone
declare dso_local i32 @luaopen_package(%struct.lua_State*) #1

; Function Attrs: noredzone
declare dso_local i32 @luaopen_table(%struct.lua_State*) #1

; Function Attrs: noredzone
declare dso_local i32 @luaopen_io(%struct.lua_State*) #1

; Function Attrs: noredzone
declare dso_local i32 @luaopen_os(%struct.lua_State*) #1

; Function Attrs: noredzone
declare dso_local i32 @luaopen_string(%struct.lua_State*) #1

; Function Attrs: noredzone
declare dso_local i32 @luaopen_math(%struct.lua_State*) #1

; Function Attrs: noredzone
declare dso_local i32 @luaopen_debug(%struct.lua_State*) #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, globals: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/linit.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIGlobalVariableExpression(var: !5, expr: !DIExpression())
!5 = distinct !DIGlobalVariable(name: "lualibs", scope: !0, file: !1, line: 17, type: !6, isLocal: true, isDefinition: true)
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1152, elements: !26)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Reg", file: !9, line: 38, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.h", directory: "/root/.unikraft/apps/redis/build")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Reg", file: !9, line: 35, size: 128, elements: !11)
!11 = !{!12, !16}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !10, file: !9, line: 36, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !10, file: !9, line: 37, baseType: !17, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !18, line: 52, baseType: !19)
!18 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !23}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !18, line: 50, baseType: !25)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !18, line: 50, flags: DIFlagFwdDecl)
!26 = !{!27}
!27 = !DISubrange(count: 9)
!28 = !{i32 2, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!32 = distinct !DISubprogram(name: "luaL_openlibs", scope: !1, file: !1, line: 30, type: !33, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !23}
!35 = !{!36, !37}
!36 = !DILocalVariable(name: "L", arg: 1, scope: !32, file: !1, line: 30, type: !23)
!37 = !DILocalVariable(name: "lib", scope: !32, file: !1, line: 31, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!39 = !DILocation(line: 30, column: 43, scope: !32)
!40 = !DILocation(line: 32, column: 3, scope: !32)
!41 = !DILocation(line: 32, column: 3, scope: !42)
!42 = distinct !DILexicalBlock(scope: !32, file: !1, line: 32, column: 3)
!43 = !DILocation(line: 33, column: 5, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 32, column: 28)
!45 = distinct !DILexicalBlock(scope: !42, file: !1, line: 32, column: 3)
!46 = !DILocation(line: 34, column: 5, scope: !44)
!47 = !DILocation(line: 35, column: 5, scope: !44)
!48 = !DILocation(line: 32, column: 3, scope: !45)
!49 = !DILocation(line: 37, column: 1, scope: !32)
