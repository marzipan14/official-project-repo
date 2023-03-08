; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua_cjson.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua_cjson.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.luaL_Reg = type { i8*, i32 (%struct.lua_State*)* }
%struct.lua_State = type opaque
%struct.strbuf_t = type { i8*, i32, i32, i32, i32, i32, i32 }
%struct.json_config_t = type { [256 x i32], [256 x i8], %struct.strbuf_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.json_parse_t = type { i8*, i8*, %struct.strbuf_t*, %struct.json_config_t*, i32 }
%struct.json_token_t = type { i32, i32, %union.anon, i32 }
%union.anon = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"cjson\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"encode\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"encode_sparse_array\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"encode_max_depth\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"decode_max_depth\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"encode_number_precision\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"encode_keep_buffer\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"encode_invalid_numbers\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"decode_invalid_numbers\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@lua_cjson_new.reg = private unnamed_addr constant [11 x %struct.luaL_Reg] [%struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.lua_State*)* @json_encode }, %struct.luaL_Reg { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.lua_State*)* @json_decode }, %struct.luaL_Reg { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.lua_State*)* @json_cfg_encode_sparse_array }, %struct.luaL_Reg { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.lua_State*)* @json_cfg_encode_max_depth }, %struct.luaL_Reg { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.lua_State*)* @json_cfg_decode_max_depth }, %struct.luaL_Reg { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.lua_State*)* @json_cfg_encode_number_precision }, %struct.luaL_Reg { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.lua_State*)* @json_cfg_encode_keep_buffer }, %struct.luaL_Reg { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.lua_State*)* @json_cfg_encode_invalid_numbers }, %struct.luaL_Reg { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.lua_State*)* @json_cfg_decode_invalid_numbers }, %struct.luaL_Reg { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.lua_State*)* @lua_cjson_new }, %struct.luaL_Reg zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"_NAME\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"2.1.0\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"_VERSION\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"expected 1 argument\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"BUG: Unable to fetch CJSON configuration\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"type not supported\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"\5Cu0000\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"\5Cu0001\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"\5Cu0002\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"\5Cu0003\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"\5Cu0004\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"\5Cu0005\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"\5Cu0006\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"\5Cu0007\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"\5Cb\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"\5Ct\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"\5Cu000b\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"\5Cf\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"\5Cr\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"\5Cu000e\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"\5Cu000f\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"\5Cu0010\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"\5Cu0011\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"\5Cu0012\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"\5Cu0013\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"\5Cu0014\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"\5Cu0015\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"\5Cu0016\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"\5Cu0017\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"\5Cu0018\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"\5Cu0019\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"\5Cu001a\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"\5Cu001b\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"\5Cu001c\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"\5Cu001d\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"\5Cu001e\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"\5Cu001f\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"\5C\22\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"\5C/\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"\5C\5C\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"\5Cu007f\00", align 1
@char2escape = internal unnamed_addr constant <{ [128 x i8*], [128 x i8*] }> <{ [128 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i32 0, i32 0), i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0)], [128 x i8*] zeroinitializer }>, align 16, !dbg !0
@.str.57 = private unnamed_addr constant [23 x i8] c"must not be NaN or Inf\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.59 = private unnamed_addr constant [41 x i8] c"Cannot serialise, excessive nesting (%d)\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"excessively sparse array\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"\22:\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"table key must be a number or string\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"Cannot serialise %s: %s\00", align 1
@.str.64 = private unnamed_addr constant [46 x i8] c"JSON parser does not support UTF-16 or UTF-32\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"the end\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"invalid token\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@.str.68 = private unnamed_addr constant [86 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua_cjson.c\00", align 1
@__func__.json_next_string_token = private unnamed_addr constant [23 x i8] c"json_next_string_token\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"*json->ptr == '\22'\00", align 1
@.str.70 = private unnamed_addr constant [25 x i8] c"unexpected end of string\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"invalid unicode escape code\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"invalid escape code\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"object key string\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"colon\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"comma or object end\00", align 1
@.str.78 = private unnamed_addr constant [59 x i8] c"Found too many nested data structures (%d) at character %d\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"comma or array end\00", align 1
@json_token_type_name = internal unnamed_addr constant [15 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.90, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.93, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8* null], align 16, !dbg !26
@.str.80 = private unnamed_addr constant [41 x i8] c"Expected %s but found %s at character %d\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"T_OBJ_BEGIN\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"T_OBJ_END\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"T_ARR_BEGIN\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"T_ARR_END\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"T_STRING\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"T_NUMBER\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"T_BOOLEAN\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"T_NULL\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"T_COLON\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"T_COMMA\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"T_END\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"T_WHITESPACE\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"T_ERROR\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"T_UNKNOWN\00", align 1
@.str.95 = private unnamed_addr constant [25 x i8] c"found too many arguments\00", align 1
@json_enum_option.bool_options = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i32 0, i32 0), i8* null], align 16, !dbg !34
@.str.96 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.98 = private unnamed_addr constant [35 x i8] c"expected integer between %d and %d\00", align 1
@json_cfg_encode_invalid_numbers.options = internal global [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.96, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* null], align 16, !dbg !55
@.str.99 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c"too many upvalues\00", align 1
@.str.101 = private unnamed_addr constant [48 x i8] c"Memory allocation error in CJSON protected call\00", align 1

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_cjson(%struct.lua_State*) local_unnamed_addr #0 !dbg !104 {
  %2 = tail call i32 @lua_cjson_new(%struct.lua_State* %0) #6, !dbg !108
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #7, !dbg !109
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #7, !dbg !110
  ret i32 1, !dbg !111
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone nounwind
define internal i32 @lua_cjson_new(%struct.lua_State*) #0 !dbg !112 {
  %2 = alloca [11 x %struct.luaL_Reg], align 16
  %3 = bitcast [11 x %struct.luaL_Reg]* %2 to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 176, i8* nonnull %3) #8, !dbg !128
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %3, i8* align 16 bitcast ([11 x %struct.luaL_Reg]* @lua_cjson_new.reg to i8*), i64 176, i1 false), !dbg !129
  tail call void (...) @fpconv_init() #7, !dbg !130
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #7, !dbg !131
  %4 = tail call i8* @lua_newuserdata(%struct.lua_State* %0, i64 1352) #7, !dbg !141
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #7, !dbg !143
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @json_destroy_config, i32 0) #7, !dbg !144
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i64 0, i64 0)) #7, !dbg !145
  %5 = tail call i32 @lua_setmetatable(%struct.lua_State* %0, i32 -2) #7, !dbg !146
  %6 = getelementptr inbounds i8, i8* %4, i64 1312, !dbg !147
  %7 = bitcast i8* %6 to <4 x i32>*, !dbg !148
  store <4 x i32> <i32 0, i32 2, i32 10, i32 1000>, <4 x i32>* %7, align 8, !dbg !148, !tbaa !149
  %8 = getelementptr inbounds i8, i8* %4, i64 1344, !dbg !153
  %9 = bitcast i8* %8 to i32*, !dbg !153
  store i32 1000, i32* %9, align 8, !dbg !154, !tbaa !155
  %10 = getelementptr inbounds i8, i8* %4, i64 1328, !dbg !159
  %11 = bitcast i8* %10 to <4 x i32>*, !dbg !160
  store <4 x i32> <i32 0, i32 14, i32 1, i32 1>, <4 x i32>* %11, align 8, !dbg !160, !tbaa !149
  %12 = getelementptr inbounds i8, i8* %4, i64 1280, !dbg !161
  %13 = bitcast i8* %12 to %struct.strbuf_t*, !dbg !161
  tail call void @strbuf_init(%struct.strbuf_t* nonnull %13, i32 0) #7, !dbg !162
  %14 = bitcast i8* %4 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %14, align 4, !dbg !164, !tbaa !167
  %15 = getelementptr inbounds i8, i8* %4, i64 16, !dbg !164
  %16 = bitcast i8* %15 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %16, align 4, !dbg !164, !tbaa !167
  %17 = getelementptr inbounds i8, i8* %4, i64 32, !dbg !168
  %18 = bitcast i8* %17 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %18, align 4, !dbg !164, !tbaa !167
  %19 = getelementptr inbounds i8, i8* %4, i64 48, !dbg !164
  %20 = bitcast i8* %19 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %20, align 4, !dbg !164, !tbaa !167
  %21 = getelementptr inbounds i8, i8* %4, i64 64, !dbg !168
  %22 = bitcast i8* %21 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %22, align 4, !dbg !164, !tbaa !167
  %23 = getelementptr inbounds i8, i8* %4, i64 80, !dbg !164
  %24 = bitcast i8* %23 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %24, align 4, !dbg !164, !tbaa !167
  %25 = getelementptr inbounds i8, i8* %4, i64 96, !dbg !168
  %26 = bitcast i8* %25 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %26, align 4, !dbg !164, !tbaa !167
  %27 = getelementptr inbounds i8, i8* %4, i64 112, !dbg !164
  %28 = bitcast i8* %27 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %28, align 4, !dbg !164, !tbaa !167
  %29 = getelementptr inbounds i8, i8* %4, i64 128, !dbg !168
  %30 = bitcast i8* %29 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %30, align 4, !dbg !164, !tbaa !167
  %31 = getelementptr inbounds i8, i8* %4, i64 144, !dbg !164
  %32 = bitcast i8* %31 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %32, align 4, !dbg !164, !tbaa !167
  %33 = getelementptr inbounds i8, i8* %4, i64 160, !dbg !168
  %34 = bitcast i8* %33 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %34, align 4, !dbg !164, !tbaa !167
  %35 = getelementptr inbounds i8, i8* %4, i64 176, !dbg !164
  %36 = bitcast i8* %35 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %36, align 4, !dbg !164, !tbaa !167
  %37 = getelementptr inbounds i8, i8* %4, i64 192, !dbg !168
  %38 = bitcast i8* %37 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %38, align 4, !dbg !164, !tbaa !167
  %39 = getelementptr inbounds i8, i8* %4, i64 208, !dbg !164
  %40 = bitcast i8* %39 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %40, align 4, !dbg !164, !tbaa !167
  %41 = getelementptr inbounds i8, i8* %4, i64 224, !dbg !168
  %42 = bitcast i8* %41 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %42, align 4, !dbg !164, !tbaa !167
  %43 = getelementptr inbounds i8, i8* %4, i64 240, !dbg !164
  %44 = bitcast i8* %43 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %44, align 4, !dbg !164, !tbaa !167
  %45 = getelementptr inbounds i8, i8* %4, i64 256, !dbg !168
  %46 = bitcast i8* %45 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %46, align 4, !dbg !164, !tbaa !167
  %47 = getelementptr inbounds i8, i8* %4, i64 272, !dbg !164
  %48 = bitcast i8* %47 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %48, align 4, !dbg !164, !tbaa !167
  %49 = getelementptr inbounds i8, i8* %4, i64 288, !dbg !168
  %50 = bitcast i8* %49 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %50, align 4, !dbg !164, !tbaa !167
  %51 = getelementptr inbounds i8, i8* %4, i64 304, !dbg !164
  %52 = bitcast i8* %51 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %52, align 4, !dbg !164, !tbaa !167
  %53 = getelementptr inbounds i8, i8* %4, i64 320, !dbg !168
  %54 = bitcast i8* %53 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %54, align 4, !dbg !164, !tbaa !167
  %55 = getelementptr inbounds i8, i8* %4, i64 336, !dbg !164
  %56 = bitcast i8* %55 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %56, align 4, !dbg !164, !tbaa !167
  %57 = getelementptr inbounds i8, i8* %4, i64 352, !dbg !168
  %58 = bitcast i8* %57 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %58, align 4, !dbg !164, !tbaa !167
  %59 = getelementptr inbounds i8, i8* %4, i64 368, !dbg !164
  %60 = bitcast i8* %59 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %60, align 4, !dbg !164, !tbaa !167
  %61 = getelementptr inbounds i8, i8* %4, i64 384, !dbg !168
  %62 = bitcast i8* %61 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %62, align 4, !dbg !164, !tbaa !167
  %63 = getelementptr inbounds i8, i8* %4, i64 400, !dbg !164
  %64 = bitcast i8* %63 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %64, align 4, !dbg !164, !tbaa !167
  %65 = getelementptr inbounds i8, i8* %4, i64 416, !dbg !168
  %66 = bitcast i8* %65 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %66, align 4, !dbg !164, !tbaa !167
  %67 = getelementptr inbounds i8, i8* %4, i64 432, !dbg !164
  %68 = bitcast i8* %67 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %68, align 4, !dbg !164, !tbaa !167
  %69 = getelementptr inbounds i8, i8* %4, i64 448, !dbg !168
  %70 = bitcast i8* %69 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %70, align 4, !dbg !164, !tbaa !167
  %71 = getelementptr inbounds i8, i8* %4, i64 464, !dbg !164
  %72 = bitcast i8* %71 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %72, align 4, !dbg !164, !tbaa !167
  %73 = getelementptr inbounds i8, i8* %4, i64 480, !dbg !168
  %74 = bitcast i8* %73 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %74, align 4, !dbg !164, !tbaa !167
  %75 = getelementptr inbounds i8, i8* %4, i64 496, !dbg !164
  %76 = bitcast i8* %75 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %76, align 4, !dbg !164, !tbaa !167
  %77 = getelementptr inbounds i8, i8* %4, i64 512, !dbg !168
  %78 = bitcast i8* %77 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %78, align 4, !dbg !164, !tbaa !167
  %79 = getelementptr inbounds i8, i8* %4, i64 528, !dbg !164
  %80 = bitcast i8* %79 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %80, align 4, !dbg !164, !tbaa !167
  %81 = getelementptr inbounds i8, i8* %4, i64 544, !dbg !168
  %82 = bitcast i8* %81 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %82, align 4, !dbg !164, !tbaa !167
  %83 = getelementptr inbounds i8, i8* %4, i64 560, !dbg !164
  %84 = bitcast i8* %83 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %84, align 4, !dbg !164, !tbaa !167
  %85 = getelementptr inbounds i8, i8* %4, i64 576, !dbg !168
  %86 = bitcast i8* %85 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %86, align 4, !dbg !164, !tbaa !167
  %87 = getelementptr inbounds i8, i8* %4, i64 592, !dbg !164
  %88 = bitcast i8* %87 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %88, align 4, !dbg !164, !tbaa !167
  %89 = getelementptr inbounds i8, i8* %4, i64 608, !dbg !168
  %90 = bitcast i8* %89 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %90, align 4, !dbg !164, !tbaa !167
  %91 = getelementptr inbounds i8, i8* %4, i64 624, !dbg !164
  %92 = bitcast i8* %91 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %92, align 4, !dbg !164, !tbaa !167
  %93 = getelementptr inbounds i8, i8* %4, i64 640, !dbg !168
  %94 = bitcast i8* %93 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %94, align 4, !dbg !164, !tbaa !167
  %95 = getelementptr inbounds i8, i8* %4, i64 656, !dbg !164
  %96 = bitcast i8* %95 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %96, align 4, !dbg !164, !tbaa !167
  %97 = getelementptr inbounds i8, i8* %4, i64 672, !dbg !168
  %98 = bitcast i8* %97 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %98, align 4, !dbg !164, !tbaa !167
  %99 = getelementptr inbounds i8, i8* %4, i64 688, !dbg !164
  %100 = bitcast i8* %99 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %100, align 4, !dbg !164, !tbaa !167
  %101 = getelementptr inbounds i8, i8* %4, i64 704, !dbg !168
  %102 = bitcast i8* %101 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %102, align 4, !dbg !164, !tbaa !167
  %103 = getelementptr inbounds i8, i8* %4, i64 720, !dbg !164
  %104 = bitcast i8* %103 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %104, align 4, !dbg !164, !tbaa !167
  %105 = getelementptr inbounds i8, i8* %4, i64 736, !dbg !168
  %106 = bitcast i8* %105 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %106, align 4, !dbg !164, !tbaa !167
  %107 = getelementptr inbounds i8, i8* %4, i64 752, !dbg !164
  %108 = bitcast i8* %107 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %108, align 4, !dbg !164, !tbaa !167
  %109 = getelementptr inbounds i8, i8* %4, i64 768, !dbg !168
  %110 = bitcast i8* %109 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %110, align 4, !dbg !164, !tbaa !167
  %111 = getelementptr inbounds i8, i8* %4, i64 784, !dbg !164
  %112 = bitcast i8* %111 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %112, align 4, !dbg !164, !tbaa !167
  %113 = getelementptr inbounds i8, i8* %4, i64 800, !dbg !168
  %114 = bitcast i8* %113 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %114, align 4, !dbg !164, !tbaa !167
  %115 = getelementptr inbounds i8, i8* %4, i64 816, !dbg !164
  %116 = bitcast i8* %115 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %116, align 4, !dbg !164, !tbaa !167
  %117 = getelementptr inbounds i8, i8* %4, i64 832, !dbg !168
  %118 = bitcast i8* %117 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %118, align 4, !dbg !164, !tbaa !167
  %119 = getelementptr inbounds i8, i8* %4, i64 848, !dbg !164
  %120 = bitcast i8* %119 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %120, align 4, !dbg !164, !tbaa !167
  %121 = getelementptr inbounds i8, i8* %4, i64 864, !dbg !168
  %122 = bitcast i8* %121 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %122, align 4, !dbg !164, !tbaa !167
  %123 = getelementptr inbounds i8, i8* %4, i64 880, !dbg !164
  %124 = bitcast i8* %123 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %124, align 4, !dbg !164, !tbaa !167
  %125 = getelementptr inbounds i8, i8* %4, i64 896, !dbg !168
  %126 = bitcast i8* %125 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %126, align 4, !dbg !164, !tbaa !167
  %127 = getelementptr inbounds i8, i8* %4, i64 912, !dbg !164
  %128 = bitcast i8* %127 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %128, align 4, !dbg !164, !tbaa !167
  %129 = getelementptr inbounds i8, i8* %4, i64 928, !dbg !168
  %130 = bitcast i8* %129 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %130, align 4, !dbg !164, !tbaa !167
  %131 = getelementptr inbounds i8, i8* %4, i64 944, !dbg !164
  %132 = bitcast i8* %131 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %132, align 4, !dbg !164, !tbaa !167
  %133 = getelementptr inbounds i8, i8* %4, i64 960, !dbg !168
  %134 = bitcast i8* %133 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %134, align 4, !dbg !164, !tbaa !167
  %135 = getelementptr inbounds i8, i8* %4, i64 976, !dbg !164
  %136 = bitcast i8* %135 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %136, align 4, !dbg !164, !tbaa !167
  %137 = getelementptr inbounds i8, i8* %4, i64 992, !dbg !168
  %138 = bitcast i8* %137 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %138, align 4, !dbg !164, !tbaa !167
  %139 = getelementptr inbounds i8, i8* %4, i64 1008, !dbg !164
  %140 = bitcast i8* %139 to <4 x i32>*, !dbg !164
  store <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32>* %140, align 4, !dbg !164, !tbaa !167
  %141 = getelementptr inbounds i8, i8* %4, i64 492, !dbg !169
  %142 = bitcast i8* %141 to i32*, !dbg !169
  store i32 0, i32* %142, align 4, !dbg !170, !tbaa !167
  %143 = getelementptr inbounds i8, i8* %4, i64 500, !dbg !171
  %144 = bitcast i8* %143 to i32*, !dbg !171
  store i32 1, i32* %144, align 4, !dbg !172, !tbaa !167
  %145 = getelementptr inbounds i8, i8* %4, i64 364, !dbg !173
  %146 = bitcast i8* %145 to i32*, !dbg !173
  store i32 2, i32* %146, align 4, !dbg !174, !tbaa !167
  %147 = getelementptr inbounds i8, i8* %4, i64 372, !dbg !175
  %148 = bitcast i8* %147 to i32*, !dbg !175
  store i32 3, i32* %148, align 4, !dbg !176, !tbaa !167
  %149 = getelementptr inbounds i8, i8* %4, i64 176, !dbg !177
  %150 = bitcast i8* %149 to i32*, !dbg !177
  store i32 9, i32* %150, align 8, !dbg !178, !tbaa !167
  %151 = getelementptr inbounds i8, i8* %4, i64 232, !dbg !179
  %152 = bitcast i8* %151 to i32*, !dbg !179
  store i32 8, i32* %152, align 8, !dbg !180, !tbaa !167
  %153 = bitcast i8* %4 to i32*, !dbg !181
  store i32 10, i32* %153, align 8, !dbg !182, !tbaa !167
  %154 = getelementptr inbounds i8, i8* %4, i64 128, !dbg !183
  %155 = bitcast i8* %154 to i32*, !dbg !183
  store i32 11, i32* %155, align 8, !dbg !184, !tbaa !167
  %156 = getelementptr inbounds i8, i8* %4, i64 36, !dbg !185
  %157 = bitcast i8* %156 to i32*, !dbg !185
  store i32 11, i32* %157, align 4, !dbg !186, !tbaa !167
  %158 = getelementptr inbounds i8, i8* %4, i64 40, !dbg !187
  %159 = bitcast i8* %158 to i32*, !dbg !187
  store i32 11, i32* %159, align 8, !dbg !188, !tbaa !167
  %160 = getelementptr inbounds i8, i8* %4, i64 52, !dbg !189
  %161 = bitcast i8* %160 to i32*, !dbg !189
  store i32 11, i32* %161, align 4, !dbg !190, !tbaa !167
  %162 = getelementptr inbounds i8, i8* %4, i64 408, !dbg !191
  %163 = bitcast i8* %162 to i32*, !dbg !191
  store i32 13, i32* %163, align 8, !dbg !192, !tbaa !167
  %164 = getelementptr inbounds i8, i8* %4, i64 420, !dbg !193
  %165 = bitcast i8* %164 to i32*, !dbg !193
  store i32 13, i32* %165, align 4, !dbg !194, !tbaa !167
  %166 = getelementptr inbounds i8, i8* %4, i64 292, !dbg !195
  %167 = bitcast i8* %166 to i32*, !dbg !195
  store i32 13, i32* %167, align 4, !dbg !196, !tbaa !167
  %168 = getelementptr inbounds i8, i8* %4, i64 440, !dbg !197
  %169 = bitcast i8* %168 to i32*, !dbg !197
  store i32 13, i32* %169, align 8, !dbg !198, !tbaa !167
  %170 = getelementptr inbounds i8, i8* %4, i64 312, !dbg !199
  %171 = bitcast i8* %170 to i32*, !dbg !199
  store i32 13, i32* %171, align 8, !dbg !200, !tbaa !167
  %172 = getelementptr inbounds i8, i8* %4, i64 464, !dbg !201
  %173 = bitcast i8* %172 to i32*, !dbg !201
  store i32 13, i32* %173, align 8, !dbg !202, !tbaa !167
  %174 = getelementptr inbounds i8, i8* %4, i64 136, !dbg !203
  %175 = bitcast i8* %174 to i32*, !dbg !203
  store i32 13, i32* %175, align 8, !dbg !204, !tbaa !167
  %176 = getelementptr inbounds i8, i8* %4, i64 172, !dbg !205
  %177 = bitcast i8* %176 to i32*, !dbg !205
  store i32 13, i32* %177, align 4, !dbg !206, !tbaa !167
  %178 = getelementptr inbounds i8, i8* %4, i64 180, !dbg !207
  %179 = bitcast i8* %178 to i32*, !dbg !207
  store i32 13, i32* %179, align 4, !dbg !208, !tbaa !167
  %180 = getelementptr inbounds i8, i8* %4, i64 192, !dbg !209
  %181 = bitcast i8* %180 to <4 x i32>*, !dbg !212
  store <4 x i32> <i32 13, i32 13, i32 13, i32 13>, <4 x i32>* %181, align 4, !dbg !212, !tbaa !167
  %182 = getelementptr inbounds i8, i8* %4, i64 208, !dbg !209
  %183 = bitcast i8* %182 to <4 x i32>*, !dbg !212
  store <4 x i32> <i32 13, i32 13, i32 13, i32 13>, <4 x i32>* %183, align 4, !dbg !212, !tbaa !167
  %184 = getelementptr inbounds i8, i8* %4, i64 224, !dbg !209
  %185 = bitcast i8* %184 to i32*, !dbg !209
  store i32 13, i32* %185, align 4, !dbg !212, !tbaa !167
  %186 = getelementptr inbounds i8, i8* %4, i64 228, !dbg !209
  %187 = bitcast i8* %186 to i32*, !dbg !209
  store i32 13, i32* %187, align 4, !dbg !212, !tbaa !167
  %188 = getelementptr inbounds i8, i8* %4, i64 1024
  %189 = bitcast i8* %188 to <16 x i8>*, !dbg !213
  store <16 x i8> zeroinitializer, <16 x i8>* %189, align 1, !dbg !213, !tbaa !167
  %190 = getelementptr inbounds i8, i8* %4, i64 1040, !dbg !213
  %191 = bitcast i8* %190 to <16 x i8>*, !dbg !213
  store <16 x i8> zeroinitializer, <16 x i8>* %191, align 1, !dbg !213, !tbaa !167
  %192 = getelementptr inbounds i8, i8* %4, i64 1056, !dbg !216
  %193 = bitcast i8* %192 to <16 x i8>*, !dbg !213
  store <16 x i8> zeroinitializer, <16 x i8>* %193, align 1, !dbg !213, !tbaa !167
  %194 = getelementptr inbounds i8, i8* %4, i64 1072, !dbg !213
  %195 = bitcast i8* %194 to <16 x i8>*, !dbg !213
  store <16 x i8> zeroinitializer, <16 x i8>* %195, align 1, !dbg !213, !tbaa !167
  %196 = getelementptr inbounds i8, i8* %4, i64 1088, !dbg !216
  %197 = bitcast i8* %196 to <16 x i8>*, !dbg !213
  store <16 x i8> zeroinitializer, <16 x i8>* %197, align 1, !dbg !213, !tbaa !167
  %198 = getelementptr inbounds i8, i8* %4, i64 1104, !dbg !213
  %199 = bitcast i8* %198 to <16 x i8>*, !dbg !213
  store <16 x i8> zeroinitializer, <16 x i8>* %199, align 1, !dbg !213, !tbaa !167
  %200 = getelementptr inbounds i8, i8* %4, i64 1120, !dbg !216
  %201 = bitcast i8* %200 to <16 x i8>*, !dbg !213
  store <16 x i8> zeroinitializer, <16 x i8>* %201, align 1, !dbg !213, !tbaa !167
  %202 = getelementptr inbounds i8, i8* %4, i64 1136, !dbg !213
  %203 = bitcast i8* %202 to <16 x i8>*, !dbg !213
  store <16 x i8> zeroinitializer, <16 x i8>* %203, align 1, !dbg !213, !tbaa !167
  %204 = getelementptr inbounds i8, i8* %4, i64 1152, !dbg !216
  %205 = bitcast i8* %204 to <16 x i8>*, !dbg !213
  store <16 x i8> zeroinitializer, <16 x i8>* %205, align 1, !dbg !213, !tbaa !167
  %206 = getelementptr inbounds i8, i8* %4, i64 1168, !dbg !213
  %207 = bitcast i8* %206 to <16 x i8>*, !dbg !213
  store <16 x i8> zeroinitializer, <16 x i8>* %207, align 1, !dbg !213, !tbaa !167
  %208 = getelementptr inbounds i8, i8* %4, i64 1184, !dbg !216
  %209 = bitcast i8* %208 to <16 x i8>*, !dbg !213
  store <16 x i8> zeroinitializer, <16 x i8>* %209, align 1, !dbg !213, !tbaa !167
  %210 = getelementptr inbounds i8, i8* %4, i64 1200, !dbg !213
  %211 = bitcast i8* %210 to <16 x i8>*, !dbg !213
  store <16 x i8> zeroinitializer, <16 x i8>* %211, align 1, !dbg !213, !tbaa !167
  %212 = getelementptr inbounds i8, i8* %4, i64 1216, !dbg !216
  %213 = bitcast i8* %212 to <16 x i8>*, !dbg !213
  store <16 x i8> zeroinitializer, <16 x i8>* %213, align 1, !dbg !213, !tbaa !167
  %214 = getelementptr inbounds i8, i8* %4, i64 1232, !dbg !213
  %215 = bitcast i8* %214 to <16 x i8>*, !dbg !213
  store <16 x i8> zeroinitializer, <16 x i8>* %215, align 1, !dbg !213, !tbaa !167
  %216 = getelementptr inbounds i8, i8* %4, i64 1248, !dbg !216
  %217 = bitcast i8* %216 to <16 x i8>*, !dbg !213
  store <16 x i8> zeroinitializer, <16 x i8>* %217, align 1, !dbg !213, !tbaa !167
  %218 = getelementptr inbounds i8, i8* %4, i64 1264, !dbg !213
  %219 = bitcast i8* %218 to <16 x i8>*, !dbg !213
  store <16 x i8> zeroinitializer, <16 x i8>* %219, align 1, !dbg !213, !tbaa !167
  %220 = getelementptr inbounds i8, i8* %4, i64 1058, !dbg !217
  store i8 34, i8* %220, align 2, !dbg !218, !tbaa !167
  %221 = getelementptr inbounds i8, i8* %4, i64 1116, !dbg !219
  store i8 92, i8* %221, align 4, !dbg !220, !tbaa !167
  %222 = getelementptr inbounds i8, i8* %4, i64 1071, !dbg !221
  store i8 47, i8* %222, align 1, !dbg !222, !tbaa !167
  %223 = getelementptr inbounds i8, i8* %4, i64 1122, !dbg !223
  store i8 8, i8* %223, align 2, !dbg !224, !tbaa !167
  %224 = getelementptr inbounds i8, i8* %4, i64 1140, !dbg !225
  store i8 9, i8* %224, align 4, !dbg !226, !tbaa !167
  %225 = getelementptr inbounds i8, i8* %4, i64 1134, !dbg !227
  store i8 10, i8* %225, align 2, !dbg !228, !tbaa !167
  %226 = getelementptr inbounds i8, i8* %4, i64 1126, !dbg !229
  store i8 12, i8* %226, align 2, !dbg !230, !tbaa !167
  %227 = getelementptr inbounds i8, i8* %4, i64 1138, !dbg !231
  store i8 13, i8* %227, align 2, !dbg !232, !tbaa !167
  %228 = getelementptr inbounds i8, i8* %4, i64 1141, !dbg !233
  store i8 117, i8* %228, align 1, !dbg !234, !tbaa !167
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.100, i64 0, i64 0)) #7, !dbg !249
  %229 = getelementptr inbounds [11 x %struct.luaL_Reg], [11 x %struct.luaL_Reg]* %2, i64 0, i64 0, i32 0, !dbg !250
  br label %230, !dbg !253

; <label>:230:                                    ; preds = %1, %230
  %231 = phi i8** [ %236, %230 ], [ %229, %1 ]
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #7, !dbg !253
  %232 = getelementptr inbounds i8*, i8** %231, i64 1, !dbg !257
  %233 = bitcast i8** %232 to i32 (%struct.lua_State*)**, !dbg !257
  %234 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %233, align 8, !dbg !257, !tbaa !258
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* %234, i32 1) #7, !dbg !260
  %235 = load i8*, i8** %231, align 8, !dbg !261, !tbaa !262
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* %235) #7, !dbg !263
  %236 = getelementptr inbounds i8*, i8** %231, i64 2, !dbg !264
  %237 = load i8*, i8** %236, align 8, !dbg !250, !tbaa !262
  %238 = icmp eq i8* %237, null, !dbg !265
  br i1 %238, label %239, label %230, !dbg !266, !llvm.loop !267

; <label>:239:                                    ; preds = %230
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7, !dbg !270
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* null) #7, !dbg !271
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !272
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 5) #7, !dbg !273
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !274
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64 5) #7, !dbg !275
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !276
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %3) #8, !dbg !277
  ret i32 1, !dbg !278
}

; Function Attrs: noredzone
declare dso_local void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_cjson_safe(%struct.lua_State*) local_unnamed_addr #0 !dbg !279 {
  %2 = tail call i32 @lua_cjson_safe_new(%struct.lua_State* %0) #6, !dbg !283
  ret i32 1, !dbg !284
}

; Function Attrs: noredzone nounwind
define internal i32 @lua_cjson_safe_new(%struct.lua_State*) #0 !dbg !285 {
  %2 = tail call i32 @lua_cjson_new(%struct.lua_State* %0) #6, !dbg !291
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @lua_cjson_safe_new, i32 0) #7, !dbg !292
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !293
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !295
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @json_protect_conversion, i32 1) #7, !dbg !299
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !300
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !295
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @json_protect_conversion, i32 1) #7, !dbg !299
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !300
  ret i32 1, !dbg !301
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone nounwind
define internal i32 @json_encode(%struct.lua_State*) #0 !dbg !302 {
  %2 = alloca %struct.strbuf_t, align 8
  %3 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -10003) #7, !dbg !320
  %4 = bitcast i8* %3 to %struct.json_config_t*, !dbg !320
  %5 = icmp eq i8* %3, null, !dbg !322
  br i1 %5, label %6, label %8, !dbg !324

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !325
  br label %8, !dbg !325

; <label>:8:                                      ; preds = %1, %6
  %9 = bitcast %struct.strbuf_t* %2 to i8*, !dbg !327
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #8, !dbg !327
  %10 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7, !dbg !328
  %11 = icmp eq i32 %10, 1, !dbg !328
  br i1 %11, label %14, label %12, !dbg !328

; <label>:12:                                     ; preds = %8
  %13 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !328
  br label %14, !dbg !328

; <label>:14:                                     ; preds = %12, %8
  %15 = getelementptr inbounds i8, i8* %3, i64 1336, !dbg !329
  %16 = bitcast i8* %15 to i32*, !dbg !329
  %17 = load i32, i32* %16, align 8, !dbg !329, !tbaa !331
  %18 = icmp eq i32 %17, 0, !dbg !332
  br i1 %18, label %19, label %20, !dbg !333

; <label>:19:                                     ; preds = %14
  call void @strbuf_init(%struct.strbuf_t* nonnull %2, i32 0) #7, !dbg !336
  br label %25, !dbg !338

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds i8, i8* %3, i64 1280, !dbg !339
  %22 = bitcast i8* %21 to %struct.strbuf_t*, !dbg !339
  %23 = getelementptr inbounds i8, i8* %3, i64 1292, !dbg !348
  %24 = bitcast i8* %23 to i32*, !dbg !348
  store i32 0, i32* %24, align 4, !dbg !349, !tbaa !350
  br label %25

; <label>:25:                                     ; preds = %20, %19
  %26 = phi %struct.strbuf_t* [ %22, %20 ], [ %2, %19 ], !dbg !351
  call fastcc void @json_append_data(%struct.lua_State* %0, %struct.json_config_t* nonnull %4, i32 0, %struct.strbuf_t* nonnull %26) #6, !dbg !352
  %27 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %26, i64 0, i32 2, !dbg !361
  %28 = load i32, i32* %27, align 4, !dbg !361, !tbaa !350
  %29 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %26, i64 0, i32 0, !dbg !363
  %30 = load i8*, i8** %29, align 8, !dbg !363, !tbaa !364
  %31 = sext i32 %28 to i64, !dbg !367
  call void @lua_pushlstring(%struct.lua_State* %0, i8* %30, i64 %31) #7, !dbg !368
  %32 = load i32, i32* %16, align 8, !dbg !369, !tbaa !331
  %33 = icmp eq i32 %32, 0, !dbg !371
  br i1 %33, label %34, label %35, !dbg !372

; <label>:34:                                     ; preds = %25
  call void @strbuf_free(%struct.strbuf_t* nonnull %26) #7, !dbg !373
  br label %35, !dbg !373

; <label>:35:                                     ; preds = %25, %34
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #8, !dbg !374
  ret i32 1, !dbg !375
}

; Function Attrs: noredzone nounwind
define internal i32 @json_decode(%struct.lua_State*) #0 !dbg !376 {
  %2 = alloca %struct.json_parse_t, align 8
  %3 = alloca %struct.json_token_t, align 8
  %4 = alloca i64, align 8
  %5 = bitcast %struct.json_parse_t* %2 to i8*, !dbg !409
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #8, !dbg !409
  %6 = bitcast %struct.json_token_t* %3 to i8*, !dbg !410
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8, !dbg !410
  %7 = bitcast i64* %4 to i8*, !dbg !411
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !411
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7, !dbg !412
  %9 = icmp eq i32 %8, 1, !dbg !412
  br i1 %9, label %12, label %10, !dbg !412

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !412
  br label %12, !dbg !412

; <label>:12:                                     ; preds = %10, %1
  %13 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -10003) #7, !dbg !415
  %14 = icmp eq i8* %13, null, !dbg !417
  br i1 %14, label %15, label %17, !dbg !418

; <label>:15:                                     ; preds = %12
  %16 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !419
  br label %17, !dbg !419

; <label>:17:                                     ; preds = %12, %15
  %18 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %2, i64 0, i32 3, !dbg !420
  %19 = bitcast %struct.json_config_t** %18 to i8**, !dbg !421
  store i8* %13, i8** %19, align 8, !dbg !421, !tbaa !422
  %20 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %4) #7, !dbg !425
  %21 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %2, i64 0, i32 0, !dbg !426
  store i8* %20, i8** %21, align 8, !dbg !427, !tbaa !428
  %22 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %2, i64 0, i32 4, !dbg !429
  store i32 0, i32* %22, align 8, !dbg !430, !tbaa !431
  %23 = ptrtoint i8* %20 to i64, !dbg !432
  %24 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %2, i64 0, i32 1, !dbg !433
  %25 = bitcast i8** %24 to i64*, !dbg !434
  store i64 %23, i64* %25, align 8, !dbg !434, !tbaa !435
  %26 = load i64, i64* %4, align 8, !dbg !436, !tbaa !438
  %27 = icmp ugt i64 %26, 1, !dbg !440
  br i1 %27, label %28, label %38, !dbg !441

; <label>:28:                                     ; preds = %17
  %29 = load i8, i8* %20, align 1, !dbg !442, !tbaa !167
  %30 = icmp eq i8 %29, 0, !dbg !442
  br i1 %30, label %35, label %31, !dbg !443

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !444
  %33 = load i8, i8* %32, align 1, !dbg !444, !tbaa !167
  %34 = icmp eq i8 %33, 0, !dbg !444
  br i1 %34, label %35, label %38, !dbg !445

; <label>:35:                                     ; preds = %31, %28
  %36 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i64 0, i64 0)) #7, !dbg !446
  %37 = load i64, i64* %4, align 8, !dbg !447, !tbaa !438
  br label %38, !dbg !446

; <label>:38:                                     ; preds = %31, %35, %17
  %39 = phi i64 [ %26, %31 ], [ %37, %35 ], [ %26, %17 ], !dbg !447
  %40 = trunc i64 %39 to i32, !dbg !447
  %41 = call %struct.strbuf_t* @strbuf_new(i32 %40) #7, !dbg !448
  %42 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %2, i64 0, i32 2, !dbg !449
  store %struct.strbuf_t* %41, %struct.strbuf_t** %42, align 8, !dbg !450, !tbaa !451
  call fastcc void @json_next_token(%struct.json_parse_t* nonnull %2, %struct.json_token_t* nonnull %3) #6, !dbg !454
  call fastcc void @json_process_value(%struct.lua_State* %0, %struct.json_parse_t* nonnull %2, %struct.json_token_t* nonnull %3) #6, !dbg !455
  call fastcc void @json_next_token(%struct.json_parse_t* nonnull %2, %struct.json_token_t* nonnull %3) #6, !dbg !456
  %43 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %3, i64 0, i32 0, !dbg !457
  %44 = load i32, i32* %43, align 8, !dbg !457, !tbaa !459
  %45 = icmp eq i32 %44, 10, !dbg !461
  br i1 %45, label %59, label %46, !dbg !462

; <label>:46:                                     ; preds = %38
  %47 = load %struct.strbuf_t*, %struct.strbuf_t** %42, align 8, !dbg !479, !tbaa !451
  call void @strbuf_free(%struct.strbuf_t* %47) #7, !dbg !480
  %48 = load i32, i32* %43, align 8, !dbg !481, !tbaa !459
  %49 = icmp eq i32 %48, 12, !dbg !483
  %50 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %3, i64 0, i32 2, i32 0, !dbg !484
  %51 = zext i32 %48 to i64, !dbg !486
  %52 = getelementptr inbounds [15 x i8*], [15 x i8*]* @json_token_type_name, i64 0, i64 %51, !dbg !486
  %53 = select i1 %49, i8** %50, i8** %52, !dbg !487
  %54 = load i8*, i8** %53, align 8, !dbg !488, !tbaa !167
  %55 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %3, i64 0, i32 1, !dbg !489
  %56 = load i32, i32* %55, align 4, !dbg !489, !tbaa !490
  %57 = add nsw i32 %56, 1, !dbg !491
  %58 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i64 0, i64 0), i8* %54, i32 %57) #7, !dbg !492
  br label %59, !dbg !493

; <label>:59:                                     ; preds = %38, %46
  %60 = load %struct.strbuf_t*, %struct.strbuf_t** %42, align 8, !dbg !494, !tbaa !451
  call void @strbuf_free(%struct.strbuf_t* %60) #7, !dbg !495
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !496
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8, !dbg !496
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #8, !dbg !496
  ret i32 1, !dbg !497
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_encode_sparse_array(%struct.lua_State*) #0 !dbg !498 {
  %2 = alloca [64 x i8], align 16
  %3 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 3) #6, !dbg !521
  %4 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %3, i64 0, i32 3, !dbg !523
  tail call fastcc void @json_enum_option(%struct.lua_State* %0, i32* nonnull %4, i8** null) #6, !dbg !524
  %5 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %3, i64 0, i32 4, !dbg !525
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0, !dbg !531
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #8, !dbg !531
  %7 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #7, !dbg !532
  %8 = icmp eq i32 %7, 0, !dbg !532
  br i1 %8, label %9, label %11, !dbg !534

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %5, align 4, !dbg !535, !tbaa !149
  br label %19, !dbg !534

; <label>:11:                                     ; preds = %1
  %12 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #7, !dbg !536
  %13 = trunc i64 %12 to i32, !dbg !536
  %14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %6, i64 64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.98, i64 0, i64 0), i32 0, i32 2147483647) #7, !dbg !539
  %15 = icmp slt i32 %13, 0, !dbg !540
  br i1 %15, label %16, label %18, !dbg !540

; <label>:16:                                     ; preds = %11
  %17 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* nonnull %6) #7, !dbg !540
  br label %18, !dbg !540

; <label>:18:                                     ; preds = %16, %11
  store i32 %13, i32* %5, align 4, !dbg !541, !tbaa !149
  br label %19, !dbg !542

; <label>:19:                                     ; preds = %9, %18
  %20 = phi i32 [ %10, %9 ], [ %13, %18 ], !dbg !535
  %21 = sext i32 %20 to i64, !dbg !535
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %21) #7, !dbg !543
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #8, !dbg !544
  %22 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %3, i64 0, i32 5, !dbg !545
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #8, !dbg !551
  %23 = call i32 @lua_type(%struct.lua_State* %0, i32 3) #7, !dbg !552
  %24 = icmp eq i32 %23, 0, !dbg !552
  br i1 %24, label %25, label %27, !dbg !553

; <label>:25:                                     ; preds = %19
  %26 = load i32, i32* %22, align 4, !dbg !554, !tbaa !149
  br label %35, !dbg !553

; <label>:27:                                     ; preds = %19
  %28 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 3) #7, !dbg !555
  %29 = trunc i64 %28 to i32, !dbg !555
  %30 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %6, i64 64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.98, i64 0, i64 0), i32 0, i32 2147483647) #7, !dbg !557
  %31 = icmp slt i32 %29, 0, !dbg !558
  br i1 %31, label %32, label %34, !dbg !558

; <label>:32:                                     ; preds = %27
  %33 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* nonnull %6) #7, !dbg !558
  br label %34, !dbg !558

; <label>:34:                                     ; preds = %32, %27
  store i32 %29, i32* %22, align 4, !dbg !559, !tbaa !149
  br label %35, !dbg !560

; <label>:35:                                     ; preds = %25, %34
  %36 = phi i32 [ %26, %25 ], [ %29, %34 ], !dbg !554
  %37 = sext i32 %36 to i64, !dbg !554
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %37) #7, !dbg !561
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #8, !dbg !562
  ret i32 3, !dbg !563
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_encode_max_depth(%struct.lua_State*) #0 !dbg !564 {
  %2 = alloca [64 x i8], align 16
  %3 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 1) #6, !dbg !571
  %4 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %3, i64 0, i32 6, !dbg !573
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0, !dbg !579
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #8, !dbg !579
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7, !dbg !580
  %7 = icmp eq i32 %6, 0, !dbg !580
  br i1 %7, label %8, label %10, !dbg !581

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %4, align 4, !dbg !582, !tbaa !149
  br label %18, !dbg !581

; <label>:10:                                     ; preds = %1
  %11 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #7, !dbg !583
  %12 = trunc i64 %11 to i32, !dbg !583
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %5, i64 64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.98, i64 0, i64 0), i32 1, i32 2147483647) #7, !dbg !585
  %14 = icmp slt i32 %12, 1, !dbg !586
  br i1 %14, label %15, label %17, !dbg !586

; <label>:15:                                     ; preds = %10
  %16 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* nonnull %5) #7, !dbg !586
  br label %17, !dbg !586

; <label>:17:                                     ; preds = %15, %10
  store i32 %12, i32* %4, align 4, !dbg !587, !tbaa !149
  br label %18, !dbg !588

; <label>:18:                                     ; preds = %8, %17
  %19 = phi i32 [ %9, %8 ], [ %12, %17 ], !dbg !582
  %20 = sext i32 %19 to i64, !dbg !582
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %20) #7, !dbg !589
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #8, !dbg !590
  ret i32 1, !dbg !591
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_decode_max_depth(%struct.lua_State*) #0 !dbg !592 {
  %2 = alloca [64 x i8], align 16
  %3 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 1) #6, !dbg !599
  %4 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %3, i64 0, i32 11, !dbg !601
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0, !dbg !607
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #8, !dbg !607
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7, !dbg !608
  %7 = icmp eq i32 %6, 0, !dbg !608
  br i1 %7, label %8, label %10, !dbg !609

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %4, align 4, !dbg !610, !tbaa !149
  br label %18, !dbg !609

; <label>:10:                                     ; preds = %1
  %11 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #7, !dbg !611
  %12 = trunc i64 %11 to i32, !dbg !611
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %5, i64 64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.98, i64 0, i64 0), i32 1, i32 2147483647) #7, !dbg !613
  %14 = icmp slt i32 %12, 1, !dbg !614
  br i1 %14, label %15, label %17, !dbg !614

; <label>:15:                                     ; preds = %10
  %16 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* nonnull %5) #7, !dbg !614
  br label %17, !dbg !614

; <label>:17:                                     ; preds = %15, %10
  store i32 %12, i32* %4, align 4, !dbg !615, !tbaa !149
  br label %18, !dbg !616

; <label>:18:                                     ; preds = %8, %17
  %19 = phi i32 [ %9, %8 ], [ %12, %17 ], !dbg !610
  %20 = sext i32 %19 to i64, !dbg !610
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %20) #7, !dbg !617
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #8, !dbg !618
  ret i32 1, !dbg !619
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_encode_number_precision(%struct.lua_State*) #0 !dbg !620 {
  %2 = alloca [64 x i8], align 16
  %3 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 1) #6, !dbg !627
  %4 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %3, i64 0, i32 8, !dbg !629
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0, !dbg !635
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #8, !dbg !635
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7, !dbg !636
  %7 = icmp eq i32 %6, 0, !dbg !636
  br i1 %7, label %8, label %10, !dbg !637

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %4, align 4, !dbg !638, !tbaa !149
  br label %19, !dbg !637

; <label>:10:                                     ; preds = %1
  %11 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #7, !dbg !639
  %12 = trunc i64 %11 to i32, !dbg !639
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %5, i64 64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.98, i64 0, i64 0), i32 1, i32 14) #7, !dbg !641
  %14 = add i32 %12, -1, !dbg !642
  %15 = icmp ugt i32 %14, 13, !dbg !642
  br i1 %15, label %16, label %18, !dbg !642

; <label>:16:                                     ; preds = %10
  %17 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* nonnull %5) #7, !dbg !642
  br label %18, !dbg !642

; <label>:18:                                     ; preds = %16, %10
  store i32 %12, i32* %4, align 4, !dbg !643, !tbaa !149
  br label %19, !dbg !644

; <label>:19:                                     ; preds = %8, %18
  %20 = phi i32 [ %9, %8 ], [ %12, %18 ], !dbg !638
  %21 = sext i32 %20 to i64, !dbg !638
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %21) #7, !dbg !645
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #8, !dbg !646
  ret i32 1, !dbg !647
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_encode_keep_buffer(%struct.lua_State*) #0 !dbg !648 {
  %2 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 1) #6, !dbg !654
  %3 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %2, i64 0, i32 9, !dbg !656
  %4 = load i32, i32* %3, align 8, !dbg !656, !tbaa !331
  tail call fastcc void @json_enum_option(%struct.lua_State* %0, i32* nonnull %3, i8** null) #6, !dbg !658
  %5 = load i32, i32* %3, align 8, !dbg !659, !tbaa !331
  %6 = icmp eq i32 %4, %5, !dbg !661
  br i1 %6, label %12, label %7, !dbg !662

; <label>:7:                                      ; preds = %1
  %8 = icmp eq i32 %5, 0, !dbg !663
  %9 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %2, i64 0, i32 2, !dbg !666
  br i1 %8, label %11, label %10, !dbg !667

; <label>:10:                                     ; preds = %7
  tail call void @strbuf_init(%struct.strbuf_t* nonnull %9, i32 0) #7, !dbg !668
  br label %12, !dbg !668

; <label>:11:                                     ; preds = %7
  tail call void @strbuf_free(%struct.strbuf_t* nonnull %9) #7, !dbg !669
  br label %12

; <label>:12:                                     ; preds = %1, %10, %11
  ret i32 1, !dbg !670
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_encode_invalid_numbers(%struct.lua_State*) #0 !dbg !57 {
  %2 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 1) #6, !dbg !672
  %3 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %2, i64 0, i32 7, !dbg !674
  tail call fastcc void @json_enum_option(%struct.lua_State* %0, i32* nonnull %3, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @json_cfg_encode_invalid_numbers.options, i64 0, i64 0)) #6, !dbg !675
  ret i32 1, !dbg !676
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_decode_invalid_numbers(%struct.lua_State*) #0 !dbg !677 {
  %2 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 1) #6, !dbg !682
  %3 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %2, i64 0, i32 10, !dbg !684
  tail call fastcc void @json_enum_option(%struct.lua_State* %0, i32* nonnull %3, i8** null) #6, !dbg !685
  ret i32 1, !dbg !686
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: noredzone
declare dso_local void @fpconv_init(...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushlightuserdata(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone
declare dso_local i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @strbuf_init(%struct.strbuf_t*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @json_append_data(%struct.lua_State*, %struct.json_config_t* readonly, i32, %struct.strbuf_t*) unnamed_addr #0 !dbg !687 {
  %5 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #7, !dbg !700
  switch i32 %5, label %327 [
    i32 4, label %6
    i32 3, label %7
    i32 1, label %8
    i32 5, label %45
    i32 0, label %284
    i32 2, label %304
  ], !dbg !701

; <label>:6:                                      ; preds = %4
  tail call fastcc void @json_append_string(%struct.lua_State* %0, %struct.strbuf_t* %3, i32 -1) #6, !dbg !702
  br label %336, !dbg !704

; <label>:7:                                      ; preds = %4
  tail call fastcc void @json_append_number(%struct.lua_State* %0, %struct.json_config_t* %1, %struct.strbuf_t* %3, i32 -1) #6, !dbg !705
  br label %336, !dbg !706

; <label>:8:                                      ; preds = %4
  %9 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #7, !dbg !707
  %10 = icmp eq i32 %9, 0, !dbg !707
  %11 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 1, !dbg !720
  %12 = load i32, i32* %11, align 8, !dbg !720, !tbaa !735
  %13 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 2, !dbg !736
  %14 = load i32, i32* %13, align 4, !dbg !736, !tbaa !350
  %15 = xor i32 %14, -1, !dbg !737
  %16 = add i32 %12, %15, !dbg !737
  br i1 %10, label %31, label %17, !dbg !738

; <label>:17:                                     ; preds = %8
  %18 = icmp slt i32 %16, 4, !dbg !746
  br i1 %18, label %19, label %22, !dbg !747

; <label>:19:                                     ; preds = %17
  %20 = add nsw i32 %14, 4, !dbg !748
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %20) #7, !dbg !749
  %21 = load i32, i32* %13, align 4, !dbg !750, !tbaa !350
  br label %22, !dbg !749

; <label>:22:                                     ; preds = %17, %19
  %23 = phi i32 [ %14, %17 ], [ %21, %19 ], !dbg !750
  %24 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 0, !dbg !751
  %25 = load i8*, i8** %24, align 8, !dbg !751, !tbaa !364
  %26 = sext i32 %23 to i64, !dbg !752
  %27 = getelementptr inbounds i8, i8* %25, i64 %26, !dbg !752
  %28 = tail call i8* @memcpy(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 4) #7, !dbg !753
  %29 = load i32, i32* %13, align 4, !dbg !754, !tbaa !350
  %30 = add nsw i32 %29, 4, !dbg !754
  store i32 %30, i32* %13, align 4, !dbg !754, !tbaa !350
  br label %336, !dbg !755

; <label>:31:                                     ; preds = %8
  %32 = icmp slt i32 %16, 5, !dbg !761
  br i1 %32, label %33, label %36, !dbg !762

; <label>:33:                                     ; preds = %31
  %34 = add nsw i32 %14, 5, !dbg !763
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %34) #7, !dbg !764
  %35 = load i32, i32* %13, align 4, !dbg !765, !tbaa !350
  br label %36, !dbg !764

; <label>:36:                                     ; preds = %31, %33
  %37 = phi i32 [ %14, %31 ], [ %35, %33 ], !dbg !765
  %38 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 0, !dbg !766
  %39 = load i8*, i8** %38, align 8, !dbg !766, !tbaa !364
  %40 = sext i32 %37 to i64, !dbg !767
  %41 = getelementptr inbounds i8, i8* %39, i64 %40, !dbg !767
  %42 = tail call i8* @memcpy(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i64 5) #7, !dbg !768
  %43 = load i32, i32* %13, align 4, !dbg !769, !tbaa !350
  %44 = add nsw i32 %43, 5, !dbg !769
  store i32 %44, i32* %13, align 4, !dbg !769, !tbaa !350
  br label %336

; <label>:45:                                     ; preds = %4
  %46 = add nsw i32 %2, 1, !dbg !770
  %47 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 6, !dbg !782
  %48 = load i32, i32* %47, align 4, !dbg !782, !tbaa !784
  %49 = icmp sgt i32 %48, %2, !dbg !785
  br i1 %49, label %50, label %53, !dbg !786

; <label>:50:                                     ; preds = %45
  %51 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 3) #7, !dbg !787
  %52 = icmp eq i32 %51, 0, !dbg !787
  br i1 %52, label %53, label %60, !dbg !788

; <label>:53:                                     ; preds = %45, %50
  %54 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 9, !dbg !789
  %55 = load i32, i32* %54, align 8, !dbg !789, !tbaa !331
  %56 = icmp eq i32 %55, 0, !dbg !791
  br i1 %56, label %57, label %58, !dbg !792

; <label>:57:                                     ; preds = %53
  tail call void @strbuf_free(%struct.strbuf_t* %3) #7, !dbg !793
  br label %58, !dbg !793

; <label>:58:                                     ; preds = %57, %53
  %59 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.59, i64 0, i64 0), i32 %46) #7, !dbg !794
  br label %60, !dbg !795

; <label>:60:                                     ; preds = %50, %58
  tail call void @lua_pushnil(%struct.lua_State* %0) #7, !dbg !812
  %61 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #7, !dbg !813
  %62 = icmp eq i32 %61, 0, !dbg !814
  br i1 %62, label %85, label %63, !dbg !815

; <label>:63:                                     ; preds = %60, %76
  %64 = phi i32 [ %81, %76 ], [ 0, %60 ]
  %65 = phi i32 [ %80, %76 ], [ 0, %60 ]
  %66 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -2) #7, !dbg !816
  %67 = icmp eq i32 %66, 3, !dbg !819
  br i1 %67, label %68, label %84, !dbg !820

; <label>:68:                                     ; preds = %63
  %69 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -2) #7, !dbg !821
  %70 = fcmp une double %69, 0.000000e+00, !dbg !823
  br i1 %70, label %71, label %84, !dbg !824

; <label>:71:                                     ; preds = %68
  %72 = tail call double @floor(double %69) #7, !dbg !825
  %73 = fcmp oeq double %72, %69, !dbg !828
  %74 = fcmp oge double %69, 1.000000e+00, !dbg !829
  %75 = and i1 %74, %73, !dbg !830
  br i1 %75, label %76, label %84, !dbg !830

; <label>:76:                                     ; preds = %71
  %77 = sitofp i32 %65 to double, !dbg !831
  %78 = fcmp ogt double %69, %77, !dbg !834
  %79 = fptosi double %69 to i32, !dbg !835
  %80 = select i1 %78, i32 %79, i32 %65, !dbg !836
  %81 = add nuw nsw i32 %64, 1, !dbg !837
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7, !dbg !838
  %82 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #7, !dbg !813
  %83 = icmp eq i32 %82, 0, !dbg !814
  br i1 %83, label %85, label %63, !dbg !815, !llvm.loop !839

; <label>:84:                                     ; preds = %71, %68, %63
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #7, !dbg !842
  br label %169, !dbg !843

; <label>:85:                                     ; preds = %76, %60
  %86 = phi i32 [ 0, %60 ], [ %80, %76 ], !dbg !844
  %87 = phi i32 [ 0, %60 ], [ %81, %76 ], !dbg !845
  %88 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 4, !dbg !846
  %89 = load i32, i32* %88, align 4, !dbg !846, !tbaa !848
  %90 = icmp sgt i32 %89, 0, !dbg !849
  %91 = mul nsw i32 %89, %87, !dbg !850
  %92 = icmp sgt i32 %86, %91, !dbg !851
  %93 = and i1 %90, %92, !dbg !852
  br i1 %93, label %94, label %111, !dbg !852

; <label>:94:                                     ; preds = %85
  %95 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 5, !dbg !853
  %96 = load i32, i32* %95, align 8, !dbg !853, !tbaa !854
  %97 = icmp sgt i32 %86, %96, !dbg !855
  br i1 %97, label %98, label %111, !dbg !856

; <label>:98:                                     ; preds = %94
  %99 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 3, !dbg !857
  %100 = load i32, i32* %99, align 8, !dbg !857, !tbaa !860
  %101 = icmp eq i32 %100, 0, !dbg !861
  br i1 %101, label %102, label %169, !dbg !862

; <label>:102:                                    ; preds = %98
  %103 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 9, !dbg !878
  %104 = load i32, i32* %103, align 8, !dbg !878, !tbaa !331
  %105 = icmp eq i32 %104, 0, !dbg !880
  br i1 %105, label %106, label %107, !dbg !881

; <label>:106:                                    ; preds = %102
  tail call void @strbuf_free(%struct.strbuf_t* %3) #7, !dbg !882
  br label %107, !dbg !882

; <label>:107:                                    ; preds = %106, %102
  %108 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #7, !dbg !883
  %109 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %108) #7, !dbg !884
  %110 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0), i8* %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i64 0, i64 0)) #7, !dbg !885
  br label %169, !dbg !886

; <label>:111:                                    ; preds = %85, %94
  %112 = icmp sgt i32 %86, 0, !dbg !888
  br i1 %112, label %113, label %169, !dbg !890

; <label>:113:                                    ; preds = %111
  %114 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 1, !dbg !922
  %115 = load i32, i32* %114, align 8, !dbg !922, !tbaa !735
  %116 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 2, !dbg !923
  %117 = load i32, i32* %116, align 4, !dbg !923, !tbaa !350
  %118 = xor i32 %117, -1, !dbg !924
  %119 = add i32 %115, %118, !dbg !924
  %120 = icmp slt i32 %119, 1, !dbg !925
  br i1 %120, label %121, label %124, !dbg !926

; <label>:121:                                    ; preds = %113
  %122 = add nsw i32 %117, 1, !dbg !927
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %122) #7, !dbg !928
  %123 = load i32, i32* %116, align 4, !dbg !929, !tbaa !350
  br label %124, !dbg !928

; <label>:124:                                    ; preds = %113, %121
  %125 = phi i32 [ %117, %113 ], [ %123, %121 ], !dbg !929
  %126 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 0, !dbg !930
  %127 = load i8*, i8** %126, align 8, !dbg !930, !tbaa !364
  %128 = add nsw i32 %125, 1, !dbg !929
  store i32 %128, i32* %116, align 4, !dbg !929, !tbaa !350
  %129 = sext i32 %125 to i64, !dbg !931
  %130 = getelementptr inbounds i8, i8* %127, i64 %129, !dbg !931
  store i8 91, i8* %130, align 1, !dbg !932, !tbaa !167
  br label %131, !dbg !935

; <label>:131:                                    ; preds = %150, %124
  %132 = phi i32 [ %152, %150 ], [ 1, %124 ]
  %133 = phi i32 [ %151, %150 ], [ 0, %124 ]
  %134 = icmp eq i32 %133, 0, !dbg !935
  br i1 %134, label %150, label %135, !dbg !940

; <label>:135:                                    ; preds = %131
  %136 = load i32, i32* %114, align 8, !dbg !949, !tbaa !735
  %137 = load i32, i32* %116, align 4, !dbg !950, !tbaa !350
  %138 = xor i32 %137, -1, !dbg !951
  %139 = add i32 %136, %138, !dbg !951
  %140 = icmp slt i32 %139, 1, !dbg !952
  br i1 %140, label %141, label %144, !dbg !953

; <label>:141:                                    ; preds = %135
  %142 = add nsw i32 %137, 1, !dbg !954
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %142) #7, !dbg !955
  %143 = load i32, i32* %116, align 4, !dbg !956, !tbaa !350
  br label %144, !dbg !955

; <label>:144:                                    ; preds = %141, %135
  %145 = phi i32 [ %137, %135 ], [ %143, %141 ], !dbg !956
  %146 = load i8*, i8** %126, align 8, !dbg !957, !tbaa !364
  %147 = add nsw i32 %145, 1, !dbg !956
  store i32 %147, i32* %116, align 4, !dbg !956, !tbaa !350
  %148 = sext i32 %145 to i64, !dbg !958
  %149 = getelementptr inbounds i8, i8* %146, i64 %148, !dbg !958
  store i8 44, i8* %149, align 1, !dbg !959, !tbaa !167
  br label %150, !dbg !960

; <label>:150:                                    ; preds = %144, %131
  %151 = phi i32 [ %133, %144 ], [ 1, %131 ], !dbg !961
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -1, i32 %132) #7, !dbg !962
  tail call fastcc void @json_append_data(%struct.lua_State* %0, %struct.json_config_t* %1, i32 %46, %struct.strbuf_t* %3) #7, !dbg !963
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7, !dbg !964
  %152 = add nuw nsw i32 %132, 1, !dbg !965
  %153 = icmp eq i32 %132, %86, !dbg !966
  br i1 %153, label %154, label %131, !dbg !967, !llvm.loop !968

; <label>:154:                                    ; preds = %150
  %155 = load i32, i32* %114, align 8, !dbg !979, !tbaa !735
  %156 = load i32, i32* %116, align 4, !dbg !980, !tbaa !350
  %157 = xor i32 %156, -1, !dbg !981
  %158 = add i32 %155, %157, !dbg !981
  %159 = icmp slt i32 %158, 1, !dbg !982
  br i1 %159, label %160, label %163, !dbg !983

; <label>:160:                                    ; preds = %154
  %161 = add nsw i32 %156, 1, !dbg !984
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %161) #7, !dbg !985
  %162 = load i32, i32* %116, align 4, !dbg !986, !tbaa !350
  br label %163, !dbg !985

; <label>:163:                                    ; preds = %154, %160
  %164 = phi i32 [ %156, %154 ], [ %162, %160 ], !dbg !986
  %165 = load i8*, i8** %126, align 8, !dbg !987, !tbaa !364
  %166 = add nsw i32 %164, 1, !dbg !986
  store i32 %166, i32* %116, align 4, !dbg !986, !tbaa !350
  %167 = sext i32 %164 to i64, !dbg !988
  %168 = getelementptr inbounds i8, i8* %165, i64 %167, !dbg !988
  store i8 93, i8* %168, align 1, !dbg !989, !tbaa !167
  br label %336, !dbg !990

; <label>:169:                                    ; preds = %107, %98, %84, %111
  %170 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 1, !dbg !1012
  %171 = load i32, i32* %170, align 8, !dbg !1012, !tbaa !735
  %172 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 2, !dbg !1013
  %173 = load i32, i32* %172, align 4, !dbg !1013, !tbaa !350
  %174 = xor i32 %173, -1, !dbg !1014
  %175 = add i32 %171, %174, !dbg !1014
  %176 = icmp slt i32 %175, 1, !dbg !1015
  br i1 %176, label %177, label %180, !dbg !1016

; <label>:177:                                    ; preds = %169
  %178 = add nsw i32 %173, 1, !dbg !1017
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %178) #7, !dbg !1018
  %179 = load i32, i32* %172, align 4, !dbg !1019, !tbaa !350
  br label %180, !dbg !1018

; <label>:180:                                    ; preds = %177, %169
  %181 = phi i32 [ %173, %169 ], [ %179, %177 ], !dbg !1019
  %182 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 0, !dbg !1020
  %183 = load i8*, i8** %182, align 8, !dbg !1020, !tbaa !364
  %184 = add nsw i32 %181, 1, !dbg !1019
  store i32 %184, i32* %172, align 4, !dbg !1019, !tbaa !350
  %185 = sext i32 %181 to i64, !dbg !1021
  %186 = getelementptr inbounds i8, i8* %183, i64 %185, !dbg !1021
  store i8 123, i8* %186, align 1, !dbg !1022, !tbaa !167
  tail call void @lua_pushnil(%struct.lua_State* %0) #7, !dbg !1023
  %187 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #7, !dbg !1025
  %188 = icmp eq i32 %187, 0, !dbg !1026
  br i1 %188, label %269, label %189, !dbg !1027

; <label>:189:                                    ; preds = %180
  %190 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 9
  br label %191, !dbg !1027

; <label>:191:                                    ; preds = %189, %266
  %192 = phi i32 [ 0, %189 ], [ %210, %266 ]
  %193 = icmp eq i32 %192, 0, !dbg !1028
  br i1 %193, label %209, label %194, !dbg !1031

; <label>:194:                                    ; preds = %191
  %195 = load i32, i32* %170, align 8, !dbg !1040, !tbaa !735
  %196 = load i32, i32* %172, align 4, !dbg !1041, !tbaa !350
  %197 = xor i32 %196, -1, !dbg !1042
  %198 = add i32 %195, %197, !dbg !1042
  %199 = icmp slt i32 %198, 1, !dbg !1043
  br i1 %199, label %200, label %203, !dbg !1044

; <label>:200:                                    ; preds = %194
  %201 = add nsw i32 %196, 1, !dbg !1045
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %201) #7, !dbg !1046
  %202 = load i32, i32* %172, align 4, !dbg !1047, !tbaa !350
  br label %203, !dbg !1046

; <label>:203:                                    ; preds = %200, %194
  %204 = phi i32 [ %196, %194 ], [ %202, %200 ], !dbg !1047
  %205 = load i8*, i8** %182, align 8, !dbg !1048, !tbaa !364
  %206 = add nsw i32 %204, 1, !dbg !1047
  store i32 %206, i32* %172, align 4, !dbg !1047, !tbaa !350
  %207 = sext i32 %204 to i64, !dbg !1049
  %208 = getelementptr inbounds i8, i8* %205, i64 %207, !dbg !1049
  store i8 44, i8* %208, align 1, !dbg !1050, !tbaa !167
  br label %209, !dbg !1051

; <label>:209:                                    ; preds = %203, %191
  %210 = phi i32 [ %192, %203 ], [ 1, %191 ], !dbg !1052
  %211 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -2) #7, !dbg !1053
  switch i32 %211, label %258 [
    i32 3, label %212
    i32 4, label %243
  ], !dbg !1055

; <label>:212:                                    ; preds = %209
  %213 = load i32, i32* %170, align 8, !dbg !1066, !tbaa !735
  %214 = load i32, i32* %172, align 4, !dbg !1067, !tbaa !350
  %215 = xor i32 %214, -1, !dbg !1068
  %216 = add i32 %213, %215, !dbg !1068
  %217 = icmp slt i32 %216, 1, !dbg !1069
  br i1 %217, label %218, label %221, !dbg !1070

; <label>:218:                                    ; preds = %212
  %219 = add nsw i32 %214, 1, !dbg !1071
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %219) #7, !dbg !1072
  %220 = load i32, i32* %172, align 4, !dbg !1073, !tbaa !350
  br label %221, !dbg !1072

; <label>:221:                                    ; preds = %218, %212
  %222 = phi i32 [ %214, %212 ], [ %220, %218 ], !dbg !1073
  %223 = load i8*, i8** %182, align 8, !dbg !1074, !tbaa !364
  %224 = add nsw i32 %222, 1, !dbg !1073
  store i32 %224, i32* %172, align 4, !dbg !1073, !tbaa !350
  %225 = sext i32 %222 to i64, !dbg !1075
  %226 = getelementptr inbounds i8, i8* %223, i64 %225, !dbg !1075
  store i8 34, i8* %226, align 1, !dbg !1076, !tbaa !167
  tail call fastcc void @json_append_number(%struct.lua_State* %0, %struct.json_config_t* %1, %struct.strbuf_t* nonnull %3, i32 -2) #7, !dbg !1077
  %227 = load i32, i32* %170, align 8, !dbg !1087, !tbaa !735
  %228 = load i32, i32* %172, align 4, !dbg !1088, !tbaa !350
  %229 = xor i32 %228, -1, !dbg !1089
  %230 = add i32 %227, %229, !dbg !1089
  %231 = icmp slt i32 %230, 2, !dbg !1090
  br i1 %231, label %232, label %235, !dbg !1091

; <label>:232:                                    ; preds = %221
  %233 = add nsw i32 %228, 2, !dbg !1092
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %233) #7, !dbg !1093
  %234 = load i32, i32* %172, align 4, !dbg !1094, !tbaa !350
  br label %235, !dbg !1093

; <label>:235:                                    ; preds = %232, %221
  %236 = phi i32 [ %228, %221 ], [ %234, %232 ], !dbg !1094
  %237 = load i8*, i8** %182, align 8, !dbg !1095, !tbaa !364
  %238 = sext i32 %236 to i64, !dbg !1096
  %239 = getelementptr inbounds i8, i8* %237, i64 %238, !dbg !1096
  %240 = tail call i8* @memcpy(i8* %239, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i64 2) #7, !dbg !1097
  %241 = load i32, i32* %172, align 4, !dbg !1098, !tbaa !350
  %242 = add nsw i32 %241, 2, !dbg !1098
  store i32 %242, i32* %172, align 4, !dbg !1098, !tbaa !350
  br label %266, !dbg !1099

; <label>:243:                                    ; preds = %209
  tail call fastcc void @json_append_string(%struct.lua_State* %0, %struct.strbuf_t* %3, i32 -2) #7, !dbg !1100
  %244 = load i32, i32* %170, align 8, !dbg !1111, !tbaa !735
  %245 = load i32, i32* %172, align 4, !dbg !1112, !tbaa !350
  %246 = xor i32 %245, -1, !dbg !1113
  %247 = add i32 %244, %246, !dbg !1113
  %248 = icmp slt i32 %247, 1, !dbg !1114
  br i1 %248, label %249, label %252, !dbg !1115

; <label>:249:                                    ; preds = %243
  %250 = add nsw i32 %245, 1, !dbg !1116
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %250) #7, !dbg !1117
  %251 = load i32, i32* %172, align 4, !dbg !1118, !tbaa !350
  br label %252, !dbg !1117

; <label>:252:                                    ; preds = %249, %243
  %253 = phi i32 [ %245, %243 ], [ %251, %249 ], !dbg !1118
  %254 = load i8*, i8** %182, align 8, !dbg !1119, !tbaa !364
  %255 = add nsw i32 %253, 1, !dbg !1118
  store i32 %255, i32* %172, align 4, !dbg !1118, !tbaa !350
  %256 = sext i32 %253 to i64, !dbg !1120
  %257 = getelementptr inbounds i8, i8* %254, i64 %256, !dbg !1120
  store i8 58, i8* %257, align 1, !dbg !1121, !tbaa !167
  br label %266, !dbg !1122

; <label>:258:                                    ; preds = %209
  %259 = load i32, i32* %190, align 8, !dbg !1130, !tbaa !331
  %260 = icmp eq i32 %259, 0, !dbg !1131
  br i1 %260, label %261, label %262, !dbg !1132

; <label>:261:                                    ; preds = %258
  tail call void @strbuf_free(%struct.strbuf_t* %3) #7, !dbg !1133
  br label %262, !dbg !1133

; <label>:262:                                    ; preds = %261, %258
  %263 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -2) #7, !dbg !1134
  %264 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %263) #7, !dbg !1135
  %265 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0), i8* %264, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !1136
  br label %266

; <label>:266:                                    ; preds = %262, %252, %235
  tail call fastcc void @json_append_data(%struct.lua_State* %0, %struct.json_config_t* %1, i32 %46, %struct.strbuf_t* %3) #7, !dbg !1137
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7, !dbg !1138
  %267 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #7, !dbg !1025
  %268 = icmp eq i32 %267, 0, !dbg !1026
  br i1 %268, label %269, label %191, !dbg !1027, !llvm.loop !1139

; <label>:269:                                    ; preds = %266, %180
  %270 = load i32, i32* %170, align 8, !dbg !1150, !tbaa !735
  %271 = load i32, i32* %172, align 4, !dbg !1151, !tbaa !350
  %272 = xor i32 %271, -1, !dbg !1152
  %273 = add i32 %270, %272, !dbg !1152
  %274 = icmp slt i32 %273, 1, !dbg !1153
  br i1 %274, label %275, label %278, !dbg !1154

; <label>:275:                                    ; preds = %269
  %276 = add nsw i32 %271, 1, !dbg !1155
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %276) #7, !dbg !1156
  %277 = load i32, i32* %172, align 4, !dbg !1157, !tbaa !350
  br label %278, !dbg !1156

; <label>:278:                                    ; preds = %269, %275
  %279 = phi i32 [ %271, %269 ], [ %277, %275 ], !dbg !1157
  %280 = load i8*, i8** %182, align 8, !dbg !1158, !tbaa !364
  %281 = add nsw i32 %279, 1, !dbg !1157
  store i32 %281, i32* %172, align 4, !dbg !1157, !tbaa !350
  %282 = sext i32 %279 to i64, !dbg !1159
  %283 = getelementptr inbounds i8, i8* %280, i64 %282, !dbg !1159
  store i8 125, i8* %283, align 1, !dbg !1160, !tbaa !167
  br label %336

; <label>:284:                                    ; preds = %4
  %285 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 1, !dbg !1170
  %286 = load i32, i32* %285, align 8, !dbg !1170, !tbaa !735
  %287 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 2, !dbg !1171
  %288 = load i32, i32* %287, align 4, !dbg !1171, !tbaa !350
  %289 = xor i32 %288, -1, !dbg !1172
  %290 = add i32 %286, %289, !dbg !1172
  %291 = icmp slt i32 %290, 4, !dbg !1173
  br i1 %291, label %292, label %295, !dbg !1174

; <label>:292:                                    ; preds = %284
  %293 = add nsw i32 %288, 4, !dbg !1175
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %293) #7, !dbg !1176
  %294 = load i32, i32* %287, align 4, !dbg !1177, !tbaa !350
  br label %295, !dbg !1176

; <label>:295:                                    ; preds = %284, %292
  %296 = phi i32 [ %288, %284 ], [ %294, %292 ], !dbg !1177
  %297 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 0, !dbg !1178
  %298 = load i8*, i8** %297, align 8, !dbg !1178, !tbaa !364
  %299 = sext i32 %296 to i64, !dbg !1179
  %300 = getelementptr inbounds i8, i8* %298, i64 %299, !dbg !1179
  %301 = tail call i8* @memcpy(i8* %300, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4) #7, !dbg !1180
  %302 = load i32, i32* %287, align 4, !dbg !1181, !tbaa !350
  %303 = add nsw i32 %302, 4, !dbg !1181
  store i32 %303, i32* %287, align 4, !dbg !1181, !tbaa !350
  br label %336, !dbg !1182

; <label>:304:                                    ; preds = %4
  %305 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #7, !dbg !1183
  %306 = icmp eq i8* %305, null, !dbg !1185
  br i1 %306, label %307, label %327, !dbg !1186

; <label>:307:                                    ; preds = %304
  %308 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 1, !dbg !1197
  %309 = load i32, i32* %308, align 8, !dbg !1197, !tbaa !735
  %310 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 2, !dbg !1198
  %311 = load i32, i32* %310, align 4, !dbg !1198, !tbaa !350
  %312 = xor i32 %311, -1, !dbg !1199
  %313 = add i32 %309, %312, !dbg !1199
  %314 = icmp slt i32 %313, 4, !dbg !1200
  br i1 %314, label %315, label %318, !dbg !1201

; <label>:315:                                    ; preds = %307
  %316 = add nsw i32 %311, 4, !dbg !1202
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %316) #7, !dbg !1203
  %317 = load i32, i32* %310, align 4, !dbg !1204, !tbaa !350
  br label %318, !dbg !1203

; <label>:318:                                    ; preds = %307, %315
  %319 = phi i32 [ %311, %307 ], [ %317, %315 ], !dbg !1204
  %320 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 0, !dbg !1205
  %321 = load i8*, i8** %320, align 8, !dbg !1205, !tbaa !364
  %322 = sext i32 %319 to i64, !dbg !1206
  %323 = getelementptr inbounds i8, i8* %321, i64 %322, !dbg !1206
  %324 = tail call i8* @memcpy(i8* %323, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4) #7, !dbg !1207
  %325 = load i32, i32* %310, align 4, !dbg !1208, !tbaa !350
  %326 = add nsw i32 %325, 4, !dbg !1208
  store i32 %326, i32* %310, align 4, !dbg !1208, !tbaa !350
  br label %336, !dbg !1209

; <label>:327:                                    ; preds = %304, %4
  %328 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 9, !dbg !1216
  %329 = load i32, i32* %328, align 8, !dbg !1216, !tbaa !331
  %330 = icmp eq i32 %329, 0, !dbg !1217
  br i1 %330, label %331, label %332, !dbg !1218

; <label>:331:                                    ; preds = %327
  tail call void @strbuf_free(%struct.strbuf_t* %3) #7, !dbg !1219
  br label %332, !dbg !1219

; <label>:332:                                    ; preds = %327, %331
  %333 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #7, !dbg !1220
  %334 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %333) #7, !dbg !1221
  %335 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0), i8* %334, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !1222
  br label %336, !dbg !1223

; <label>:336:                                    ; preds = %163, %278, %22, %36, %332, %318, %295, %7, %6
  ret void, !dbg !1224
}

; Function Attrs: noredzone
declare dso_local void @strbuf_free(%struct.strbuf_t*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @lua_touserdata(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @json_append_string(%struct.lua_State*, %struct.strbuf_t*, i32) unnamed_addr #0 !dbg !1225 {
  %4 = alloca i64, align 8
  %5 = bitcast i64* %4 to i8*, !dbg !1239
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1239
  %6 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %2, i64* nonnull %4) #7, !dbg !1241
  %7 = load i64, i64* %4, align 8, !dbg !1243, !tbaa !438
  %8 = trunc i64 %7 to i32, !dbg !1243
  %9 = mul i32 %8, 6, !dbg !1243
  %10 = add i32 %9, 2, !dbg !1243
  %11 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %1, i64 0, i32 1, !dbg !1249
  %12 = load i32, i32* %11, align 8, !dbg !1249, !tbaa !735
  %13 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %1, i64 0, i32 2, !dbg !1250
  %14 = load i32, i32* %13, align 4, !dbg !1250, !tbaa !350
  %15 = xor i32 %14, -1, !dbg !1251
  %16 = add i32 %12, %15, !dbg !1251
  %17 = icmp slt i32 %16, %10, !dbg !1252
  br i1 %17, label %18, label %21, !dbg !1253

; <label>:18:                                     ; preds = %3
  %19 = add nsw i32 %10, %14, !dbg !1254
  call void @strbuf_resize(%struct.strbuf_t* nonnull %1, i32 %19) #7, !dbg !1255
  %20 = load i32, i32* %13, align 4, !dbg !1256, !tbaa !350
  br label %21, !dbg !1255

; <label>:21:                                     ; preds = %3, %18
  %22 = phi i32 [ %14, %3 ], [ %20, %18 ], !dbg !1256
  %23 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %1, i64 0, i32 0, !dbg !1264
  %24 = load i8*, i8** %23, align 8, !dbg !1264, !tbaa !364
  %25 = add nsw i32 %22, 1, !dbg !1256
  store i32 %25, i32* %13, align 4, !dbg !1256, !tbaa !350
  %26 = sext i32 %22 to i64, !dbg !1265
  %27 = getelementptr inbounds i8, i8* %24, i64 %26, !dbg !1265
  store i8 34, i8* %27, align 1, !dbg !1266, !tbaa !167
  %28 = load i64, i64* %4, align 8, !dbg !1268, !tbaa !438
  %29 = icmp eq i64 %28, 0, !dbg !1271
  br i1 %29, label %49, label %30, !dbg !1272

; <label>:30:                                     ; preds = %21, %45
  %31 = phi i64 [ %46, %45 ], [ 0, %21 ]
  %32 = getelementptr inbounds i8, i8* %6, i64 %31, !dbg !1273
  %33 = load i8, i8* %32, align 1, !dbg !1273, !tbaa !167
  %34 = zext i8 %33 to i64, !dbg !1275
  %35 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [128 x i8*], [128 x i8*] }>* @char2escape to [256 x i8*]*), i64 0, i64 %34, !dbg !1275
  %36 = load i8*, i8** %35, align 8, !dbg !1275, !tbaa !1276
  %37 = icmp eq i8* %36, null, !dbg !1278
  br i1 %37, label %39, label %38, !dbg !1280

; <label>:38:                                     ; preds = %30
  call void @strbuf_append_string(%struct.strbuf_t* %1, i8* nonnull %36) #7, !dbg !1281
  br label %45, !dbg !1281

; <label>:39:                                     ; preds = %30
  %40 = load i8*, i8** %23, align 8, !dbg !1285, !tbaa !364
  %41 = load i32, i32* %13, align 4, !dbg !1286, !tbaa !350
  %42 = add nsw i32 %41, 1, !dbg !1286
  store i32 %42, i32* %13, align 4, !dbg !1286, !tbaa !350
  %43 = sext i32 %41 to i64, !dbg !1287
  %44 = getelementptr inbounds i8, i8* %40, i64 %43, !dbg !1287
  store i8 %33, i8* %44, align 1, !dbg !1288, !tbaa !167
  br label %45

; <label>:45:                                     ; preds = %38, %39
  %46 = add nuw i64 %31, 1, !dbg !1289
  %47 = load i64, i64* %4, align 8, !dbg !1268, !tbaa !438
  %48 = icmp ugt i64 %47, %46, !dbg !1271
  br i1 %48, label %30, label %49, !dbg !1272, !llvm.loop !1290

; <label>:49:                                     ; preds = %45, %21
  %50 = load i8*, i8** %23, align 8, !dbg !1295, !tbaa !364
  %51 = load i32, i32* %13, align 4, !dbg !1296, !tbaa !350
  %52 = add nsw i32 %51, 1, !dbg !1296
  store i32 %52, i32* %13, align 4, !dbg !1296, !tbaa !350
  %53 = sext i32 %51 to i64, !dbg !1297
  %54 = getelementptr inbounds i8, i8* %50, i64 %53, !dbg !1297
  store i8 34, i8* %54, align 1, !dbg !1298, !tbaa !167
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1299
  ret void, !dbg !1299
}

; Function Attrs: noredzone nounwind
define internal fastcc void @json_append_number(%struct.lua_State*, %struct.json_config_t* nocapture readonly, %struct.strbuf_t*, i32) unnamed_addr #0 !dbg !1300 {
  %5 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 %3) #7, !dbg !1314
  %6 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 7, !dbg !1316
  %7 = load i32, i32* %6, align 8, !dbg !1316, !tbaa !1318
  %8 = icmp eq i32 %7, 0, !dbg !1319
  br i1 %8, label %9, label %24, !dbg !1320

; <label>:9:                                      ; preds = %4
  %10 = tail call i32 @__fpclassifyd(double %5) #7, !dbg !1321
  %11 = icmp eq i32 %10, 1, !dbg !1321
  br i1 %11, label %15, label %12, !dbg !1324

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @__fpclassifyd(double %5) #7, !dbg !1325
  %14 = icmp eq i32 %13, 0, !dbg !1325
  br i1 %14, label %15, label %70, !dbg !1326

; <label>:15:                                     ; preds = %12, %9
  %16 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 9, !dbg !1333
  %17 = load i32, i32* %16, align 8, !dbg !1333, !tbaa !331
  %18 = icmp eq i32 %17, 0, !dbg !1334
  br i1 %18, label %19, label %20, !dbg !1335

; <label>:19:                                     ; preds = %15
  tail call void @strbuf_free(%struct.strbuf_t* %2) #7, !dbg !1336
  br label %20, !dbg !1336

; <label>:20:                                     ; preds = %15, %19
  %21 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %3) #7, !dbg !1337
  %22 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %21) #7, !dbg !1338
  %23 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0), i8* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i64 0, i64 0)) #7, !dbg !1339
  br label %70, !dbg !1340

; <label>:24:                                     ; preds = %4
  %25 = icmp eq i32 %7, 1, !dbg !1341
  %26 = tail call i32 @__fpclassifyd(double %5) #7, !dbg !1343
  br i1 %25, label %27, label %47, !dbg !1346

; <label>:27:                                     ; preds = %24
  %28 = icmp eq i32 %26, 0, !dbg !1347
  br i1 %28, label %29, label %70, !dbg !1350

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 1, !dbg !1361
  %31 = load i32, i32* %30, align 8, !dbg !1361, !tbaa !735
  %32 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 2, !dbg !1362
  %33 = load i32, i32* %32, align 4, !dbg !1362, !tbaa !350
  %34 = xor i32 %33, -1, !dbg !1363
  %35 = add i32 %31, %34, !dbg !1363
  %36 = icmp slt i32 %35, 3, !dbg !1364
  br i1 %36, label %37, label %40, !dbg !1365

; <label>:37:                                     ; preds = %29
  %38 = add nsw i32 %33, 3, !dbg !1366
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %2, i32 %38) #7, !dbg !1367
  %39 = load i32, i32* %32, align 4, !dbg !1368, !tbaa !350
  br label %40, !dbg !1367

; <label>:40:                                     ; preds = %29, %37
  %41 = phi i32 [ %33, %29 ], [ %39, %37 ], !dbg !1368
  %42 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 0, !dbg !1369
  %43 = load i8*, i8** %42, align 8, !dbg !1369, !tbaa !364
  %44 = sext i32 %41 to i64, !dbg !1370
  %45 = getelementptr inbounds i8, i8* %43, i64 %44, !dbg !1370
  %46 = tail call i8* @memcpy(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i64 3) #7, !dbg !1371
  br label %90, !dbg !1372

; <label>:47:                                     ; preds = %24
  %48 = icmp eq i32 %26, 1, !dbg !1373
  br i1 %48, label %52, label %49, !dbg !1374

; <label>:49:                                     ; preds = %47
  %50 = tail call i32 @__fpclassifyd(double %5) #7, !dbg !1375
  %51 = icmp eq i32 %50, 0, !dbg !1375
  br i1 %51, label %52, label %70, !dbg !1376

; <label>:52:                                     ; preds = %49, %47
  %53 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 1, !dbg !1387
  %54 = load i32, i32* %53, align 8, !dbg !1387, !tbaa !735
  %55 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 2, !dbg !1388
  %56 = load i32, i32* %55, align 4, !dbg !1388, !tbaa !350
  %57 = xor i32 %56, -1, !dbg !1389
  %58 = add i32 %54, %57, !dbg !1389
  %59 = icmp slt i32 %58, 4, !dbg !1390
  br i1 %59, label %60, label %63, !dbg !1391

; <label>:60:                                     ; preds = %52
  %61 = add nsw i32 %56, 4, !dbg !1392
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %2, i32 %61) #7, !dbg !1393
  %62 = load i32, i32* %55, align 4, !dbg !1394, !tbaa !350
  br label %63, !dbg !1393

; <label>:63:                                     ; preds = %52, %60
  %64 = phi i32 [ %56, %52 ], [ %62, %60 ], !dbg !1394
  %65 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 0, !dbg !1395
  %66 = load i8*, i8** %65, align 8, !dbg !1395, !tbaa !364
  %67 = sext i32 %64 to i64, !dbg !1396
  %68 = getelementptr inbounds i8, i8* %66, i64 %67, !dbg !1396
  %69 = tail call i8* @memcpy(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4) #7, !dbg !1397
  br label %90, !dbg !1398

; <label>:70:                                     ; preds = %27, %49, %12, %20
  %71 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 1, !dbg !1404
  %72 = load i32, i32* %71, align 8, !dbg !1404, !tbaa !735
  %73 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 2, !dbg !1405
  %74 = load i32, i32* %73, align 4, !dbg !1405, !tbaa !350
  %75 = xor i32 %74, -1, !dbg !1406
  %76 = add i32 %72, %75, !dbg !1406
  %77 = icmp slt i32 %76, 32, !dbg !1407
  br i1 %77, label %78, label %81, !dbg !1408

; <label>:78:                                     ; preds = %70
  %79 = add nsw i32 %74, 32, !dbg !1409
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %2, i32 %79) #7, !dbg !1410
  %80 = load i32, i32* %73, align 4, !dbg !1411, !tbaa !350
  br label %81, !dbg !1410

; <label>:81:                                     ; preds = %70, %78
  %82 = phi i32 [ %74, %70 ], [ %80, %78 ], !dbg !1411
  %83 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 0, !dbg !1419
  %84 = load i8*, i8** %83, align 8, !dbg !1419, !tbaa !364
  %85 = sext i32 %82 to i64, !dbg !1420
  %86 = getelementptr inbounds i8, i8* %84, i64 %85, !dbg !1420
  %87 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 8, !dbg !1421
  %88 = load i32, i32* %87, align 4, !dbg !1421, !tbaa !1422
  %89 = tail call i32 @fpconv_g_fmt(i8* %86, double %5, i32 %88) #7, !dbg !1423
  br label %90, !dbg !1432

; <label>:90:                                     ; preds = %81, %63, %40
  %91 = phi i32* [ %73, %81 ], [ %55, %63 ], [ %32, %40 ]
  %92 = phi i32 [ %89, %81 ], [ 4, %63 ], [ 3, %40 ]
  %93 = load i32, i32* %91, align 4, !dbg !1433, !tbaa !350
  %94 = add nsw i32 %93, %92, !dbg !1433
  store i32 %94, i32* %91, align 4, !dbg !1433, !tbaa !350
  ret void, !dbg !1432
}

; Function Attrs: noredzone
declare dso_local i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @strbuf_append_string(%struct.strbuf_t*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @strbuf_resize(%struct.strbuf_t*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @lua_tonumber(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @fpconv_g_fmt(i8*, double, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_checkstack(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_next(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local double @floor(double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_rawgeti(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @lua_typename(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @luaL_checklstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local %struct.strbuf_t* @strbuf_new(i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc void @json_next_token(%struct.json_parse_t*, %struct.json_token_t*) unnamed_addr #0 !dbg !1434 {
  %3 = alloca i8*, align 8
  %4 = alloca [4 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %0, i64 0, i32 3, !dbg !1474
  %7 = load %struct.json_config_t*, %struct.json_config_t** %6, align 8, !dbg !1474, !tbaa !422
  %8 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %0, i64 0, i32 1, !dbg !1476
  %9 = load i8*, i8** %8, align 8, !dbg !1476, !tbaa !435
  %10 = load i8, i8* %9, align 1, !dbg !1478, !tbaa !167
  %11 = zext i8 %10 to i64, !dbg !1479
  %12 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %7, i64 0, i32 0, i64 %11, !dbg !1479
  %13 = load i32, i32* %12, align 4, !dbg !1479, !tbaa !167
  %14 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 0, !dbg !1480
  store i32 %13, i32* %14, align 8, !dbg !1481, !tbaa !459
  %15 = icmp eq i32 %13, 11, !dbg !1482
  br i1 %15, label %16, label %24, !dbg !1484

; <label>:16:                                     ; preds = %2, %16
  %17 = phi i8* [ %18, %16 ], [ %9, %2 ]
  %18 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1485
  store i8* %18, i8** %8, align 8, !dbg !1485, !tbaa !435
  %19 = load i8, i8* %18, align 1, !dbg !1478, !tbaa !167
  %20 = zext i8 %19 to i64, !dbg !1479
  %21 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %7, i64 0, i32 0, i64 %20, !dbg !1479
  %22 = load i32, i32* %21, align 4, !dbg !1479, !tbaa !167
  store i32 %22, i32* %14, align 8, !dbg !1481, !tbaa !459
  %23 = icmp eq i32 %22, 11, !dbg !1482
  br i1 %23, label %16, label %24, !dbg !1484, !llvm.loop !1486

; <label>:24:                                     ; preds = %16, %2
  %25 = phi i8* [ %9, %2 ], [ %18, %16 ]
  %26 = phi i8 [ %10, %2 ], [ %19, %16 ], !dbg !1478
  %27 = phi i32 [ %13, %2 ], [ %22, %16 ], !dbg !1479
  %28 = ptrtoint i8* %25 to i64, !dbg !1489
  %29 = bitcast %struct.json_parse_t* %0 to i64*, !dbg !1490
  %30 = load i64, i64* %29, align 8, !dbg !1490, !tbaa !428
  %31 = sub i64 %28, %30, !dbg !1489
  %32 = trunc i64 %31 to i32, !dbg !1491
  %33 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 1, !dbg !1492
  store i32 %32, i32* %33, align 4, !dbg !1493, !tbaa !490
  switch i32 %27, label %38 [
    i32 12, label %34
    i32 10, label %447
    i32 13, label %40
  ], !dbg !1494

; <label>:34:                                     ; preds = %24
  store i32 12, i32* %14, align 8, !dbg !1508, !tbaa !459
  %35 = sub i64 %28, %30, !dbg !1509
  %36 = trunc i64 %35 to i32, !dbg !1510
  store i32 %36, i32* %33, align 4, !dbg !1511, !tbaa !490
  %37 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1512
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i64 0, i64 0), i8** %37, align 8, !dbg !1513, !tbaa !167
  br label %447, !dbg !1514

; <label>:38:                                     ; preds = %24
  %39 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1515
  store i8* %39, i8** %8, align 8, !dbg !1515, !tbaa !435
  br label %447, !dbg !1518

; <label>:40:                                     ; preds = %24
  switch i8 %26, label %314 [
    i8 34, label %41
    i8 45, label %317
  ], !dbg !1519

; <label>:41:                                     ; preds = %40
  %42 = load i8, i8* %25, align 1, !dbg !1523, !tbaa !167
  %43 = icmp eq i8 %42, 34, !dbg !1523
  br i1 %43, label %45, label %44, !dbg !1523

; <label>:44:                                     ; preds = %41
  tail call void @__assert_func(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.68, i64 0, i64 0), i32 891, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.json_next_string_token, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i64 0, i64 0)) #9, !dbg !1523
  unreachable, !dbg !1523

; <label>:45:                                     ; preds = %41
  %46 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1524
  store i8* %46, i8** %8, align 8, !dbg !1524, !tbaa !435
  %47 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %0, i64 0, i32 2, !dbg !1525
  %48 = load %struct.strbuf_t*, %struct.strbuf_t** %47, align 8, !dbg !1525, !tbaa !451
  %49 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %48, i64 0, i32 2, !dbg !1528
  store i32 0, i32* %49, align 4, !dbg !1529, !tbaa !350
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  br label %54, !dbg !1530

; <label>:54:                                     ; preds = %295, %45
  %55 = phi i8* [ %46, %45 ], [ %296, %295 ]
  %56 = load i8, i8* %55, align 1, !dbg !1531, !tbaa !167
  switch i8 %56, label %283 [
    i8 34, label %297
    i8 0, label %57
    i8 92, label %63
  ], !dbg !1530

; <label>:57:                                     ; preds = %54
  %58 = ptrtoint i8* %55 to i64, !dbg !1533
  store i32 12, i32* %14, align 8, !dbg !1540, !tbaa !459
  %59 = load i64, i64* %29, align 8, !dbg !1541, !tbaa !428
  %60 = sub i64 %58, %59, !dbg !1542
  %61 = trunc i64 %60 to i32, !dbg !1543
  store i32 %61, i32* %33, align 4, !dbg !1544, !tbaa !490
  %62 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1545
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.70, i64 0, i64 0), i8** %62, align 8, !dbg !1546, !tbaa !167
  br label %447, !dbg !1547

; <label>:63:                                     ; preds = %54
  %64 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1548
  %65 = load i8, i8* %64, align 1, !dbg !1549, !tbaa !167
  %66 = zext i8 %65 to i64, !dbg !1550
  %67 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %7, i64 0, i32 1, i64 %66, !dbg !1550
  %68 = load i8, i8* %67, align 1, !dbg !1550, !tbaa !167
  switch i8 %68, label %282 [
    i8 117, label %69
    i8 0, label %276
  ], !dbg !1551

; <label>:69:                                     ; preds = %63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %50) #8, !dbg !1553
  %70 = getelementptr inbounds i8, i8* %55, i64 2, !dbg !1555
  %71 = load i8, i8* %70, align 1, !dbg !1567, !tbaa !167
  %72 = add i8 %71, -48, !dbg !1578
  %73 = icmp ult i8 %72, 10, !dbg !1578
  br i1 %73, label %78, label %74, !dbg !1578

; <label>:74:                                     ; preds = %69
  %75 = or i8 %71, 32, !dbg !1580
  %76 = add i8 %75, -97, !dbg !1581
  %77 = icmp ult i8 %76, 6, !dbg !1581
  br i1 %77, label %78, label %270, !dbg !1581

; <label>:78:                                     ; preds = %74, %69
  %79 = phi i8 [ %71, %69 ], [ %75, %74 ]
  %80 = phi i32 [ -48, %69 ], [ -87, %74 ]
  %81 = sext i8 %79 to i32, !dbg !1583
  %82 = add nsw i32 %80, %81, !dbg !1583
  %83 = getelementptr inbounds i8, i8* %55, i64 3, !dbg !1567
  %84 = load i8, i8* %83, align 1, !dbg !1567, !tbaa !167
  %85 = add i8 %84, -48, !dbg !1578
  %86 = icmp ult i8 %85, 10, !dbg !1578
  br i1 %86, label %91, label %87, !dbg !1578

; <label>:87:                                     ; preds = %78
  %88 = or i8 %84, 32, !dbg !1580
  %89 = add i8 %88, -97, !dbg !1581
  %90 = icmp ult i8 %89, 6, !dbg !1581
  br i1 %90, label %91, label %270, !dbg !1581

; <label>:91:                                     ; preds = %78, %87
  %92 = phi i8 [ %88, %87 ], [ %84, %78 ]
  %93 = phi i32 [ -87, %87 ], [ -48, %78 ]
  %94 = sext i8 %92 to i32, !dbg !1583
  %95 = add nsw i32 %93, %94, !dbg !1583
  %96 = getelementptr inbounds i8, i8* %55, i64 4, !dbg !1567
  %97 = load i8, i8* %96, align 1, !dbg !1567, !tbaa !167
  %98 = add i8 %97, -48, !dbg !1578
  %99 = icmp ult i8 %98, 10, !dbg !1578
  br i1 %99, label %104, label %100, !dbg !1578

; <label>:100:                                    ; preds = %91
  %101 = or i8 %97, 32, !dbg !1580
  %102 = add i8 %101, -97, !dbg !1581
  %103 = icmp ult i8 %102, 6, !dbg !1581
  br i1 %103, label %104, label %270, !dbg !1581

; <label>:104:                                    ; preds = %91, %100
  %105 = phi i8 [ %101, %100 ], [ %97, %91 ]
  %106 = phi i32 [ -87, %100 ], [ -48, %91 ]
  %107 = sext i8 %105 to i32, !dbg !1583
  %108 = add nsw i32 %106, %107, !dbg !1583
  %109 = getelementptr inbounds i8, i8* %55, i64 5, !dbg !1567
  %110 = load i8, i8* %109, align 1, !dbg !1567, !tbaa !167
  %111 = add i8 %110, -48, !dbg !1578
  %112 = icmp ult i8 %111, 10, !dbg !1578
  br i1 %112, label %117, label %113, !dbg !1578

; <label>:113:                                    ; preds = %104
  %114 = or i8 %110, 32, !dbg !1580
  %115 = add i8 %114, -97, !dbg !1581
  %116 = icmp ult i8 %115, 6, !dbg !1581
  br i1 %116, label %117, label %270, !dbg !1581

; <label>:117:                                    ; preds = %104, %113
  %118 = phi i8 [ %114, %113 ], [ %110, %104 ]
  %119 = phi i32 [ -87, %113 ], [ -48, %104 ]
  %120 = sext i8 %118 to i32, !dbg !1583
  %121 = add nsw i32 %119, %120, !dbg !1583
  %122 = shl nsw i32 %82, 12, !dbg !1585
  %123 = shl nsw i32 %95, 8, !dbg !1586
  %124 = add nsw i32 %123, %122, !dbg !1587
  %125 = shl nsw i32 %108, 4, !dbg !1588
  %126 = add nsw i32 %124, %125, !dbg !1589
  %127 = add nsw i32 %126, %121, !dbg !1590
  %128 = icmp slt i32 %127, 0, !dbg !1592
  br i1 %128, label %270, label %129, !dbg !1594

; <label>:129:                                    ; preds = %117
  %130 = and i32 %127, 63488, !dbg !1595
  %131 = icmp eq i32 %130, 55296, !dbg !1597
  br i1 %131, label %132, label %210, !dbg !1598

; <label>:132:                                    ; preds = %129
  %133 = and i32 %127, 1024, !dbg !1599
  %134 = icmp eq i32 %133, 0, !dbg !1599
  br i1 %134, label %135, label %270, !dbg !1602

; <label>:135:                                    ; preds = %132
  %136 = getelementptr inbounds i8, i8* %55, i64 6, !dbg !1603
  %137 = load i8, i8* %136, align 1, !dbg !1605, !tbaa !167
  %138 = icmp eq i8 %137, 92, !dbg !1606
  br i1 %138, label %139, label %270, !dbg !1607

; <label>:139:                                    ; preds = %135
  %140 = getelementptr inbounds i8, i8* %55, i64 7, !dbg !1608
  %141 = load i8, i8* %140, align 1, !dbg !1609, !tbaa !167
  %142 = icmp eq i8 %141, 117, !dbg !1610
  br i1 %142, label %143, label %270, !dbg !1611

; <label>:143:                                    ; preds = %139
  %144 = getelementptr inbounds i8, i8* %55, i64 8, !dbg !1612
  %145 = load i8, i8* %144, align 1, !dbg !1616, !tbaa !167
  %146 = add i8 %145, -48, !dbg !1619
  %147 = icmp ult i8 %146, 10, !dbg !1619
  br i1 %147, label %152, label %148, !dbg !1619

; <label>:148:                                    ; preds = %143
  %149 = or i8 %145, 32, !dbg !1620
  %150 = add i8 %149, -97, !dbg !1621
  %151 = icmp ult i8 %150, 6, !dbg !1621
  br i1 %151, label %152, label %270, !dbg !1621

; <label>:152:                                    ; preds = %148, %143
  %153 = phi i8 [ %145, %143 ], [ %149, %148 ]
  %154 = phi i32 [ -48, %143 ], [ -87, %148 ]
  %155 = sext i8 %153 to i32, !dbg !1622
  %156 = add nsw i32 %154, %155, !dbg !1622
  %157 = getelementptr inbounds i8, i8* %55, i64 9, !dbg !1616
  %158 = load i8, i8* %157, align 1, !dbg !1616, !tbaa !167
  %159 = add i8 %158, -48, !dbg !1619
  %160 = icmp ult i8 %159, 10, !dbg !1619
  br i1 %160, label %165, label %161, !dbg !1619

; <label>:161:                                    ; preds = %152
  %162 = or i8 %158, 32, !dbg !1620
  %163 = add i8 %162, -97, !dbg !1621
  %164 = icmp ult i8 %163, 6, !dbg !1621
  br i1 %164, label %165, label %270, !dbg !1621

; <label>:165:                                    ; preds = %152, %161
  %166 = phi i8 [ %162, %161 ], [ %158, %152 ]
  %167 = phi i32 [ -87, %161 ], [ -48, %152 ]
  %168 = sext i8 %166 to i32, !dbg !1622
  %169 = add nsw i32 %167, %168, !dbg !1622
  %170 = getelementptr inbounds i8, i8* %55, i64 10, !dbg !1616
  %171 = load i8, i8* %170, align 1, !dbg !1616, !tbaa !167
  %172 = add i8 %171, -48, !dbg !1619
  %173 = icmp ult i8 %172, 10, !dbg !1619
  br i1 %173, label %178, label %174, !dbg !1619

; <label>:174:                                    ; preds = %165
  %175 = or i8 %171, 32, !dbg !1620
  %176 = add i8 %175, -97, !dbg !1621
  %177 = icmp ult i8 %176, 6, !dbg !1621
  br i1 %177, label %178, label %270, !dbg !1621

; <label>:178:                                    ; preds = %165, %174
  %179 = phi i8 [ %175, %174 ], [ %171, %165 ]
  %180 = phi i32 [ -87, %174 ], [ -48, %165 ]
  %181 = sext i8 %179 to i32, !dbg !1622
  %182 = add nsw i32 %180, %181, !dbg !1622
  %183 = getelementptr inbounds i8, i8* %55, i64 11, !dbg !1616
  %184 = load i8, i8* %183, align 1, !dbg !1616, !tbaa !167
  %185 = add i8 %184, -48, !dbg !1619
  %186 = icmp ult i8 %185, 10, !dbg !1619
  br i1 %186, label %191, label %187, !dbg !1619

; <label>:187:                                    ; preds = %178
  %188 = or i8 %184, 32, !dbg !1620
  %189 = add i8 %188, -97, !dbg !1621
  %190 = icmp ult i8 %189, 6, !dbg !1621
  br i1 %190, label %191, label %270, !dbg !1621

; <label>:191:                                    ; preds = %178, %187
  %192 = phi i8 [ %188, %187 ], [ %184, %178 ]
  %193 = phi i32 [ -87, %187 ], [ -48, %178 ]
  %194 = sext i8 %192 to i32, !dbg !1622
  %195 = add nsw i32 %193, %194, !dbg !1622
  %196 = shl nsw i32 %156, 12, !dbg !1624
  %197 = shl nsw i32 %169, 8, !dbg !1625
  %198 = add nsw i32 %197, %196, !dbg !1626
  %199 = shl nsw i32 %182, 4, !dbg !1627
  %200 = add nsw i32 %198, %199, !dbg !1628
  %201 = add nsw i32 %200, %195, !dbg !1629
  %202 = and i32 %201, -2147419136, !dbg !1631
  %203 = icmp eq i32 %202, 56320, !dbg !1631
  br i1 %203, label %204, label %270, !dbg !1631

; <label>:204:                                    ; preds = %191
  %205 = shl i32 %127, 10, !dbg !1632
  %206 = and i32 %205, 1047552, !dbg !1632
  %207 = and i32 %201, 1023, !dbg !1633
  %208 = or i32 %207, %206, !dbg !1634
  %209 = add nuw nsw i32 %208, 65536, !dbg !1635
  br label %210, !dbg !1636

; <label>:210:                                    ; preds = %204, %129
  %211 = phi i32 [ %209, %204 ], [ %127, %129 ], !dbg !1637
  %212 = phi i64 [ 12, %204 ], [ 6, %129 ]
  %213 = icmp slt i32 %211, 128, !dbg !1647
  br i1 %213, label %214, label %216, !dbg !1649

; <label>:214:                                    ; preds = %210
  %215 = trunc i32 %211 to i8, !dbg !1650
  store i8 %215, i8* %50, align 1, !dbg !1652, !tbaa !167
  br label %255, !dbg !1653

; <label>:216:                                    ; preds = %210
  %217 = icmp slt i32 %211, 2048, !dbg !1654
  br i1 %217, label %218, label %225, !dbg !1656

; <label>:218:                                    ; preds = %216
  %219 = lshr i32 %211, 6, !dbg !1657
  %220 = trunc i32 %219 to i8, !dbg !1659
  %221 = or i8 %220, -64, !dbg !1659
  store i8 %221, i8* %50, align 1, !dbg !1660, !tbaa !167
  %222 = trunc i32 %211 to i8, !dbg !1661
  %223 = and i8 %222, 63, !dbg !1661
  %224 = or i8 %223, -128, !dbg !1661
  store i8 %224, i8* %51, align 1, !dbg !1662, !tbaa !167
  br label %255, !dbg !1663

; <label>:225:                                    ; preds = %216
  %226 = icmp slt i32 %211, 65536, !dbg !1664
  br i1 %226, label %227, label %238, !dbg !1666

; <label>:227:                                    ; preds = %225
  %228 = lshr i32 %211, 12, !dbg !1667
  %229 = trunc i32 %228 to i8, !dbg !1669
  %230 = or i8 %229, -32, !dbg !1669
  store i8 %230, i8* %50, align 1, !dbg !1670, !tbaa !167
  %231 = lshr i32 %211, 6, !dbg !1671
  %232 = trunc i32 %231 to i8, !dbg !1672
  %233 = and i8 %232, 63, !dbg !1672
  %234 = or i8 %233, -128, !dbg !1672
  store i8 %234, i8* %51, align 1, !dbg !1673, !tbaa !167
  %235 = trunc i32 %211 to i8, !dbg !1674
  %236 = and i8 %235, 63, !dbg !1674
  %237 = or i8 %236, -128, !dbg !1674
  store i8 %237, i8* %52, align 1, !dbg !1675, !tbaa !167
  br label %255, !dbg !1676

; <label>:238:                                    ; preds = %225
  %239 = icmp slt i32 %211, 2097152, !dbg !1677
  br i1 %239, label %240, label %270, !dbg !1679

; <label>:240:                                    ; preds = %238
  %241 = lshr i32 %211, 18, !dbg !1680
  %242 = trunc i32 %241 to i8, !dbg !1682
  %243 = or i8 %242, -16, !dbg !1682
  store i8 %243, i8* %50, align 1, !dbg !1683, !tbaa !167
  %244 = lshr i32 %211, 12, !dbg !1684
  %245 = trunc i32 %244 to i8, !dbg !1685
  %246 = and i8 %245, 63, !dbg !1685
  %247 = or i8 %246, -128, !dbg !1685
  store i8 %247, i8* %51, align 1, !dbg !1686, !tbaa !167
  %248 = lshr i32 %211, 6, !dbg !1687
  %249 = trunc i32 %248 to i8, !dbg !1688
  %250 = and i8 %249, 63, !dbg !1688
  %251 = or i8 %250, -128, !dbg !1688
  store i8 %251, i8* %52, align 1, !dbg !1689, !tbaa !167
  %252 = trunc i32 %211 to i8, !dbg !1690
  %253 = and i8 %252, 63, !dbg !1690
  %254 = or i8 %253, -128, !dbg !1690
  store i8 %254, i8* %53, align 1, !dbg !1691, !tbaa !167
  br label %255, !dbg !1692

; <label>:255:                                    ; preds = %240, %227, %218, %214
  %256 = phi i32 [ 4, %240 ], [ 3, %227 ], [ 2, %218 ], [ 1, %214 ]
  %257 = load %struct.strbuf_t*, %struct.strbuf_t** %47, align 8, !dbg !1693, !tbaa !451
  %258 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %257, i64 0, i32 0, !dbg !1702
  %259 = load i8*, i8** %258, align 8, !dbg !1702, !tbaa !364
  %260 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %257, i64 0, i32 2, !dbg !1703
  %261 = load i32, i32* %260, align 4, !dbg !1703, !tbaa !350
  %262 = sext i32 %261 to i64, !dbg !1704
  %263 = getelementptr inbounds i8, i8* %259, i64 %262, !dbg !1704
  %264 = zext i32 %256 to i64, !dbg !1705
  %265 = call i8* @memcpy(i8* %263, i8* nonnull %50, i64 %264) #7, !dbg !1706
  %266 = load i32, i32* %260, align 4, !dbg !1707, !tbaa !350
  %267 = add nsw i32 %266, %256, !dbg !1707
  store i32 %267, i32* %260, align 4, !dbg !1707, !tbaa !350
  %268 = load i8*, i8** %8, align 8, !dbg !1708, !tbaa !435
  %269 = getelementptr inbounds i8, i8* %268, i64 %212, !dbg !1708
  store i8* %269, i8** %8, align 8, !dbg !1708, !tbaa !435
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %50) #8, !dbg !1709
  br label %295, !dbg !1710

; <label>:270:                                    ; preds = %238, %191, %187, %174, %161, %148, %139, %135, %132, %117, %113, %100, %87, %74
  %271 = ptrtoint i8* %55 to i64, !dbg !1533
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %50) #8, !dbg !1709
  store i32 12, i32* %14, align 8, !dbg !1715, !tbaa !459
  %272 = load i64, i64* %29, align 8, !dbg !1716, !tbaa !428
  %273 = sub i64 %271, %272, !dbg !1717
  %274 = trunc i64 %273 to i32, !dbg !1718
  store i32 %274, i32* %33, align 4, !dbg !1719, !tbaa !490
  %275 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1720
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.71, i64 0, i64 0), i8** %275, align 8, !dbg !1721, !tbaa !167
  br label %447, !dbg !1722

; <label>:276:                                    ; preds = %63
  %277 = ptrtoint i8* %55 to i64, !dbg !1533
  store i32 12, i32* %14, align 8, !dbg !1729, !tbaa !459
  %278 = load i64, i64* %29, align 8, !dbg !1730, !tbaa !428
  %279 = sub i64 %277, %278, !dbg !1731
  %280 = trunc i64 %279 to i32, !dbg !1732
  store i32 %280, i32* %33, align 4, !dbg !1733, !tbaa !490
  %281 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1734
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.72, i64 0, i64 0), i8** %281, align 8, !dbg !1735, !tbaa !167
  br label %447, !dbg !1736

; <label>:282:                                    ; preds = %63
  store i8* %64, i8** %8, align 8, !dbg !1737, !tbaa !435
  br label %283, !dbg !1738

; <label>:283:                                    ; preds = %282, %54
  %284 = phi i8 [ %68, %282 ], [ %56, %54 ], !dbg !1533
  %285 = load %struct.strbuf_t*, %struct.strbuf_t** %47, align 8, !dbg !1739, !tbaa !451
  %286 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %285, i64 0, i32 0, !dbg !1743
  %287 = load i8*, i8** %286, align 8, !dbg !1743, !tbaa !364
  %288 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %285, i64 0, i32 2, !dbg !1744
  %289 = load i32, i32* %288, align 4, !dbg !1745, !tbaa !350
  %290 = add nsw i32 %289, 1, !dbg !1745
  store i32 %290, i32* %288, align 4, !dbg !1745, !tbaa !350
  %291 = sext i32 %289 to i64, !dbg !1746
  %292 = getelementptr inbounds i8, i8* %287, i64 %291, !dbg !1746
  store i8 %284, i8* %292, align 1, !dbg !1747, !tbaa !167
  %293 = load i8*, i8** %8, align 8, !dbg !1748, !tbaa !435
  %294 = getelementptr inbounds i8, i8* %293, i64 1, !dbg !1748
  store i8* %294, i8** %8, align 8, !dbg !1748, !tbaa !435
  br label %295, !dbg !1530

; <label>:295:                                    ; preds = %283, %255
  %296 = phi i8* [ %294, %283 ], [ %269, %255 ]
  br label %54, !dbg !1531, !llvm.loop !1749

; <label>:297:                                    ; preds = %54
  %298 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1752
  store i8* %298, i8** %8, align 8, !dbg !1752, !tbaa !435
  %299 = load %struct.strbuf_t*, %struct.strbuf_t** %47, align 8, !dbg !1753, !tbaa !451
  %300 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %299, i64 0, i32 0, !dbg !1759
  %301 = load i8*, i8** %300, align 8, !dbg !1759, !tbaa !364
  %302 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %299, i64 0, i32 2, !dbg !1760
  %303 = load i32, i32* %302, align 4, !dbg !1760, !tbaa !350
  %304 = sext i32 %303 to i64, !dbg !1761
  %305 = getelementptr inbounds i8, i8* %301, i64 %304, !dbg !1761
  store i8 0, i8* %305, align 1, !dbg !1762, !tbaa !167
  store i32 4, i32* %14, align 8, !dbg !1763, !tbaa !459
  %306 = load %struct.strbuf_t*, %struct.strbuf_t** %47, align 8, !dbg !1764, !tbaa !451
  %307 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 3, !dbg !1765
  %308 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %306, i64 0, i32 2, !dbg !1769
  %309 = load i32, i32* %308, align 4, !dbg !1769, !tbaa !350
  store i32 %309, i32* %307, align 4, !dbg !1770, !tbaa !149
  %310 = bitcast %struct.strbuf_t* %306 to i64*, !dbg !1771
  %311 = load i64, i64* %310, align 8, !dbg !1771, !tbaa !364
  %312 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1772
  %313 = bitcast i8** %312 to i64*, !dbg !1773
  store i64 %311, i64* %313, align 8, !dbg !1773, !tbaa !167
  br label %447, !dbg !1774

; <label>:314:                                    ; preds = %40
  %315 = add i8 %26, -48, !dbg !1775
  %316 = icmp ult i8 %315, 10, !dbg !1775
  br i1 %316, label %317, label %366, !dbg !1775

; <label>:317:                                    ; preds = %40, %314
  %318 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %7, i64 0, i32 10, !dbg !1777
  %319 = load i32, i32* %318, align 4, !dbg !1777, !tbaa !1780
  %320 = icmp eq i32 %319, 0, !dbg !1781
  br i1 %320, label %321, label %350, !dbg !1782

; <label>:321:                                    ; preds = %317
  %322 = load i8, i8* %25, align 1, !dbg !1793, !tbaa !167
  switch i8 %322, label %326 [
    i8 43, label %346
    i8 45, label %323
  ], !dbg !1795

; <label>:323:                                    ; preds = %321
  %324 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1796
  %325 = load i8, i8* %324, align 1, !dbg !1798, !tbaa !167
  br label %326, !dbg !1799

; <label>:326:                                    ; preds = %323, %321
  %327 = phi i8 [ %322, %321 ], [ %325, %323 ], !dbg !1798
  %328 = phi i8* [ %25, %321 ], [ %324, %323 ], !dbg !1800
  %329 = icmp eq i8 %327, 48, !dbg !1801
  br i1 %329, label %330, label %338, !dbg !1802

; <label>:330:                                    ; preds = %326
  %331 = getelementptr inbounds i8, i8* %328, i64 1, !dbg !1803
  %332 = load i8, i8* %331, align 1, !dbg !1804, !tbaa !167
  %333 = or i8 %332, 32, !dbg !1805
  %334 = icmp eq i8 %333, 120, !dbg !1807
  %335 = add i8 %332, -48, !dbg !1808
  %336 = icmp ult i8 %335, 10, !dbg !1808
  %337 = or i1 %334, %336, !dbg !1809
  br i1 %337, label %346, label %350, !dbg !1810

; <label>:338:                                    ; preds = %326
  %339 = icmp slt i8 %327, 58, !dbg !1811
  br i1 %339, label %350, label %340, !dbg !1813

; <label>:340:                                    ; preds = %338
  %341 = tail call i32 @strncasecmp(i8* nonnull %328, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i64 0, i64 0), i64 3) #10, !dbg !1814
  %342 = icmp eq i32 %341, 0, !dbg !1814
  br i1 %342, label %346, label %343, !dbg !1816

; <label>:343:                                    ; preds = %340
  %344 = tail call i32 @strncasecmp(i8* nonnull %328, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i64 3) #10, !dbg !1817
  %345 = icmp eq i32 %344, 0, !dbg !1817
  br i1 %345, label %346, label %350, !dbg !1810

; <label>:346:                                    ; preds = %330, %343, %340, %321
  store i32 12, i32* %14, align 8, !dbg !1824, !tbaa !459
  %347 = sub i64 %28, %30, !dbg !1825
  %348 = trunc i64 %347 to i32, !dbg !1826
  store i32 %348, i32* %33, align 4, !dbg !1827, !tbaa !490
  %349 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1828
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0), i8** %349, align 8, !dbg !1829, !tbaa !167
  br label %447, !dbg !1830

; <label>:350:                                    ; preds = %330, %343, %338, %317
  %351 = bitcast i8** %3 to i8*, !dbg !1839
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %351) #8, !dbg !1839
  store i32 5, i32* %14, align 8, !dbg !1840, !tbaa !459
  %352 = call double @fpconv_strtod(i8* %25, i8** nonnull %3) #7, !dbg !1842
  %353 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, !dbg !1843
  %354 = bitcast %union.anon* %353 to double*, !dbg !1844
  store double %352, double* %354, align 8, !dbg !1845, !tbaa !167
  %355 = load i8*, i8** %8, align 8, !dbg !1846, !tbaa !435
  %356 = load i8*, i8** %3, align 8, !dbg !1848, !tbaa !1276
  %357 = icmp eq i8* %355, %356, !dbg !1849
  br i1 %357, label %358, label %364, !dbg !1850

; <label>:358:                                    ; preds = %350
  %359 = ptrtoint i8* %355 to i64, !dbg !1850
  store i32 12, i32* %14, align 8, !dbg !1855, !tbaa !459
  %360 = load i64, i64* %29, align 8, !dbg !1856, !tbaa !428
  %361 = sub i64 %359, %360, !dbg !1857
  %362 = trunc i64 %361 to i32, !dbg !1858
  store i32 %362, i32* %33, align 4, !dbg !1859, !tbaa !490
  %363 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1860
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0), i8** %363, align 8, !dbg !1861, !tbaa !167
  br label %365, !dbg !1862

; <label>:364:                                    ; preds = %350
  store i8* %356, i8** %8, align 8, !dbg !1863, !tbaa !435
  br label %365

; <label>:365:                                    ; preds = %358, %364
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %351) #8, !dbg !1864
  br label %447, !dbg !1865

; <label>:366:                                    ; preds = %314
  %367 = tail call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 4) #7, !dbg !1866
  %368 = icmp eq i32 %367, 0, !dbg !1866
  br i1 %368, label %369, label %374, !dbg !1868

; <label>:369:                                    ; preds = %366
  store i32 6, i32* %14, align 8, !dbg !1869, !tbaa !459
  %370 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, !dbg !1871
  %371 = bitcast %union.anon* %370 to i32*, !dbg !1872
  store i32 1, i32* %371, align 8, !dbg !1873, !tbaa !167
  %372 = load i8*, i8** %8, align 8, !dbg !1874, !tbaa !435
  %373 = getelementptr inbounds i8, i8* %372, i64 4, !dbg !1874
  store i8* %373, i8** %8, align 8, !dbg !1874, !tbaa !435
  br label %447, !dbg !1875

; <label>:374:                                    ; preds = %366
  %375 = load i8*, i8** %8, align 8, !dbg !1876, !tbaa !435
  %376 = tail call i32 @strncmp(i8* %375, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i64 5) #7, !dbg !1878
  %377 = icmp eq i32 %376, 0, !dbg !1878
  br i1 %377, label %378, label %383, !dbg !1879

; <label>:378:                                    ; preds = %374
  store i32 6, i32* %14, align 8, !dbg !1880, !tbaa !459
  %379 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, !dbg !1882
  %380 = bitcast %union.anon* %379 to i32*, !dbg !1883
  store i32 0, i32* %380, align 8, !dbg !1884, !tbaa !167
  %381 = load i8*, i8** %8, align 8, !dbg !1885, !tbaa !435
  %382 = getelementptr inbounds i8, i8* %381, i64 5, !dbg !1885
  store i8* %382, i8** %8, align 8, !dbg !1885, !tbaa !435
  br label %447, !dbg !1886

; <label>:383:                                    ; preds = %374
  %384 = load i8*, i8** %8, align 8, !dbg !1887, !tbaa !435
  %385 = tail call i32 @strncmp(i8* %384, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4) #7, !dbg !1889
  %386 = icmp eq i32 %385, 0, !dbg !1889
  br i1 %386, label %387, label %390, !dbg !1890

; <label>:387:                                    ; preds = %383
  store i32 7, i32* %14, align 8, !dbg !1891, !tbaa !459
  %388 = load i8*, i8** %8, align 8, !dbg !1893, !tbaa !435
  %389 = getelementptr inbounds i8, i8* %388, i64 4, !dbg !1893
  store i8* %389, i8** %8, align 8, !dbg !1893, !tbaa !435
  br label %447, !dbg !1894

; <label>:390:                                    ; preds = %383
  %391 = load %struct.json_config_t*, %struct.json_config_t** %6, align 8, !dbg !1895, !tbaa !422
  %392 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %391, i64 0, i32 10, !dbg !1897
  %393 = load i32, i32* %392, align 4, !dbg !1897, !tbaa !1780
  %394 = icmp eq i32 %393, 0, !dbg !1898
  br i1 %394, label %395, label %398, !dbg !1899

; <label>:395:                                    ; preds = %390
  %396 = bitcast i8** %8 to i64*
  %397 = load i64, i64* %396, align 8, !dbg !1900, !tbaa !435
  br label %441, !dbg !1899

; <label>:398:                                    ; preds = %390
  %399 = load i8*, i8** %8, align 8, !dbg !1904, !tbaa !435
  %400 = load i8, i8* %399, align 1, !dbg !1906, !tbaa !167
  %401 = ptrtoint i8* %399 to i64, !dbg !1907
  switch i8 %400, label %405 [
    i8 43, label %425
    i8 45, label %402
  ], !dbg !1907

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %399, i64 1, !dbg !1908
  %404 = load i8, i8* %403, align 1, !dbg !1909, !tbaa !167
  br label %405, !dbg !1910

; <label>:405:                                    ; preds = %402, %398
  %406 = phi i8 [ %400, %398 ], [ %404, %402 ], !dbg !1909
  %407 = phi i8* [ %399, %398 ], [ %403, %402 ], !dbg !1911
  %408 = icmp eq i8 %406, 48, !dbg !1912
  br i1 %408, label %409, label %417, !dbg !1913

; <label>:409:                                    ; preds = %405
  %410 = getelementptr inbounds i8, i8* %407, i64 1, !dbg !1914
  %411 = load i8, i8* %410, align 1, !dbg !1915, !tbaa !167
  %412 = or i8 %411, 32, !dbg !1916
  %413 = icmp eq i8 %412, 120, !dbg !1917
  %414 = add i8 %411, -48, !dbg !1918
  %415 = icmp ult i8 %414, 10, !dbg !1918
  %416 = or i1 %413, %415, !dbg !1919
  br i1 %416, label %425, label %441, !dbg !1920

; <label>:417:                                    ; preds = %405
  %418 = icmp slt i8 %406, 58, !dbg !1921
  br i1 %418, label %441, label %419, !dbg !1922

; <label>:419:                                    ; preds = %417
  %420 = tail call i32 @strncasecmp(i8* %407, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i64 0, i64 0), i64 3) #10, !dbg !1923
  %421 = icmp eq i32 %420, 0, !dbg !1923
  br i1 %421, label %425, label %422, !dbg !1924

; <label>:422:                                    ; preds = %419
  %423 = tail call i32 @strncasecmp(i8* %407, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i64 3) #10, !dbg !1925
  %424 = icmp eq i32 %423, 0, !dbg !1925
  br i1 %424, label %425, label %441, !dbg !1920

; <label>:425:                                    ; preds = %409, %422, %419, %398
  %426 = bitcast i8** %5 to i8*, !dbg !1930
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %426) #8, !dbg !1930
  store i32 5, i32* %14, align 8, !dbg !1931, !tbaa !459
  %427 = call double @fpconv_strtod(i8* %399, i8** nonnull %5) #7, !dbg !1933
  %428 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, !dbg !1934
  %429 = bitcast %union.anon* %428 to double*, !dbg !1935
  store double %427, double* %429, align 8, !dbg !1936, !tbaa !167
  %430 = load i8*, i8** %8, align 8, !dbg !1937, !tbaa !435
  %431 = load i8*, i8** %5, align 8, !dbg !1938, !tbaa !1276
  %432 = icmp eq i8* %430, %431, !dbg !1939
  br i1 %432, label %433, label %439, !dbg !1940

; <label>:433:                                    ; preds = %425
  %434 = ptrtoint i8* %430 to i64, !dbg !1940
  store i32 12, i32* %14, align 8, !dbg !1945, !tbaa !459
  %435 = load i64, i64* %29, align 8, !dbg !1946, !tbaa !428
  %436 = sub i64 %434, %435, !dbg !1947
  %437 = trunc i64 %436 to i32, !dbg !1948
  store i32 %437, i32* %33, align 4, !dbg !1949, !tbaa !490
  %438 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1950
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0), i8** %438, align 8, !dbg !1951, !tbaa !167
  br label %440, !dbg !1952

; <label>:439:                                    ; preds = %425
  store i8* %431, i8** %8, align 8, !dbg !1953, !tbaa !435
  br label %440

; <label>:440:                                    ; preds = %433, %439
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %426) #8, !dbg !1954
  br label %447, !dbg !1955

; <label>:441:                                    ; preds = %409, %395, %422, %417
  %442 = phi i64 [ %397, %395 ], [ %401, %422 ], [ %401, %417 ], [ %401, %409 ], !dbg !1900
  store i32 12, i32* %14, align 8, !dbg !1959, !tbaa !459
  %443 = load i64, i64* %29, align 8, !dbg !1960, !tbaa !428
  %444 = sub i64 %442, %443, !dbg !1961
  %445 = trunc i64 %444 to i32, !dbg !1962
  store i32 %445, i32* %33, align 4, !dbg !1963, !tbaa !490
  %446 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1964
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i64 0, i64 0), i8** %446, align 8, !dbg !1965, !tbaa !167
  br label %447, !dbg !1966

; <label>:447:                                    ; preds = %297, %276, %270, %57, %24, %441, %440, %387, %378, %369, %365, %346, %38, %34
  ret void, !dbg !1966
}

; Function Attrs: noredzone nounwind
define internal fastcc void @json_process_value(%struct.lua_State*, %struct.json_parse_t*, %struct.json_token_t* nocapture readonly) unnamed_addr #0 !dbg !1967 {
  %4 = alloca %struct.json_token_t, align 8
  %5 = alloca %struct.json_token_t, align 8
  %6 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 0, !dbg !1977
  %7 = load i32, i32* %6, align 8, !dbg !1977, !tbaa !459
  switch i32 %7, label %156 [
    i32 4, label %8
    i32 5, label %14
    i32 6, label %18
    i32 0, label %22
    i32 2, label %104
    i32 7, label %155
  ], !dbg !1978

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 2, i32 0, !dbg !1979
  %10 = load i8*, i8** %9, align 8, !dbg !1979, !tbaa !167
  %11 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 3, !dbg !1981
  %12 = load i32, i32* %11, align 8, !dbg !1981, !tbaa !1982
  %13 = sext i32 %12 to i64, !dbg !1983
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %10, i64 %13) #7, !dbg !1984
  br label %170, !dbg !1985

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 2, !dbg !1986
  %16 = bitcast %union.anon* %15 to double*, !dbg !1987
  %17 = load double, double* %16, align 8, !dbg !1987, !tbaa !167
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %17) #7, !dbg !1988
  br label %170, !dbg !1989

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 2, !dbg !1990
  %20 = bitcast %union.anon* %19 to i32*, !dbg !1991
  %21 = load i32, i32* %20, align 8, !dbg !1991, !tbaa !167
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %21) #7, !dbg !1992
  br label %170, !dbg !1993

; <label>:22:                                     ; preds = %3
  %23 = bitcast %struct.json_token_t* %5 to i8*, !dbg !2004
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %23) #8, !dbg !2004
  %24 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 4, !dbg !2016
  %25 = load i32, i32* %24, align 8, !dbg !2017, !tbaa !431
  %26 = add nsw i32 %25, 1, !dbg !2017
  store i32 %26, i32* %24, align 8, !dbg !2017, !tbaa !431
  %27 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 3, !dbg !2018
  %28 = load %struct.json_config_t*, %struct.json_config_t** %27, align 8, !dbg !2018, !tbaa !422
  %29 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %28, i64 0, i32 11, !dbg !2020
  %30 = load i32, i32* %29, align 8, !dbg !2020, !tbaa !155
  %31 = icmp slt i32 %25, %30, !dbg !2021
  br i1 %31, label %32, label %35, !dbg !2022

; <label>:32:                                     ; preds = %22
  %33 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 3) #7, !dbg !2023
  %34 = icmp eq i32 %33, 0, !dbg !2023
  br i1 %34, label %35, label %46, !dbg !2024

; <label>:35:                                     ; preds = %32, %22
  %36 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 2, !dbg !2025
  %37 = load %struct.strbuf_t*, %struct.strbuf_t** %36, align 8, !dbg !2025, !tbaa !451
  tail call void @strbuf_free(%struct.strbuf_t* %37) #7, !dbg !2026
  %38 = load i32, i32* %24, align 8, !dbg !2027, !tbaa !431
  %39 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 1, !dbg !2028
  %40 = bitcast i8** %39 to i64*, !dbg !2028
  %41 = load i64, i64* %40, align 8, !dbg !2028, !tbaa !435
  %42 = bitcast %struct.json_parse_t* %1 to i64*, !dbg !2029
  %43 = load i64, i64* %42, align 8, !dbg !2029, !tbaa !428
  %44 = sub i64 %41, %43, !dbg !2030
  %45 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.78, i64 0, i64 0), i32 %38, i64 %44) #7, !dbg !2031
  br label %46, !dbg !2032

; <label>:46:                                     ; preds = %35, %32
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #7, !dbg !2033
  call fastcc void @json_next_token(%struct.json_parse_t* nonnull %1, %struct.json_token_t* nonnull %5) #7, !dbg !2035
  %47 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %5, i64 0, i32 0, !dbg !2036
  %48 = load i32, i32* %47, align 8, !dbg !2036, !tbaa !459
  %49 = icmp eq i32 %48, 1, !dbg !2038
  br i1 %49, label %101, label %50, !dbg !2039

; <label>:50:                                     ; preds = %46
  %51 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %5, i64 0, i32 2, i32 0
  %52 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %5, i64 0, i32 3
  %53 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 2
  %54 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %5, i64 0, i32 1
  br label %55, !dbg !2040

; <label>:55:                                     ; preds = %50, %99
  %56 = phi i32 [ %100, %99 ], [ %48, %50 ], !dbg !2043
  %57 = icmp eq i32 %56, 4, !dbg !2040
  br i1 %57, label %69, label %58, !dbg !2044

; <label>:58:                                     ; preds = %55
  %59 = load %struct.strbuf_t*, %struct.strbuf_t** %53, align 8, !dbg !2050, !tbaa !451
  call void @strbuf_free(%struct.strbuf_t* %59) #7, !dbg !2051
  %60 = load i32, i32* %47, align 8, !dbg !2052, !tbaa !459
  %61 = icmp eq i32 %60, 12, !dbg !2053
  %62 = zext i32 %60 to i64, !dbg !2055
  %63 = getelementptr inbounds [15 x i8*], [15 x i8*]* @json_token_type_name, i64 0, i64 %62, !dbg !2055
  %64 = select i1 %61, i8** %51, i8** %63, !dbg !2056
  %65 = load i8*, i8** %64, align 8, !dbg !2057, !tbaa !167
  %66 = load i32, i32* %54, align 4, !dbg !2058, !tbaa !490
  %67 = add nsw i32 %66, 1, !dbg !2059
  %68 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i64 0, i64 0), i8* %65, i32 %67) #7, !dbg !2060
  br label %69, !dbg !2061

; <label>:69:                                     ; preds = %58, %55
  %70 = load i8*, i8** %51, align 8, !dbg !2062, !tbaa !167
  %71 = load i32, i32* %52, align 8, !dbg !2063, !tbaa !1982
  %72 = sext i32 %71 to i64, !dbg !2064
  call void @lua_pushlstring(%struct.lua_State* %0, i8* %70, i64 %72) #7, !dbg !2065
  call fastcc void @json_next_token(%struct.json_parse_t* %1, %struct.json_token_t* nonnull %5) #7, !dbg !2066
  %73 = load i32, i32* %47, align 8, !dbg !2067, !tbaa !459
  %74 = icmp eq i32 %73, 8, !dbg !2069
  br i1 %74, label %86, label %75, !dbg !2070

; <label>:75:                                     ; preds = %69
  %76 = load %struct.strbuf_t*, %struct.strbuf_t** %53, align 8, !dbg !2076, !tbaa !451
  call void @strbuf_free(%struct.strbuf_t* %76) #7, !dbg !2077
  %77 = load i32, i32* %47, align 8, !dbg !2078, !tbaa !459
  %78 = icmp eq i32 %77, 12, !dbg !2079
  %79 = zext i32 %77 to i64, !dbg !2081
  %80 = getelementptr inbounds [15 x i8*], [15 x i8*]* @json_token_type_name, i64 0, i64 %79, !dbg !2081
  %81 = select i1 %78, i8** %51, i8** %80, !dbg !2082
  %82 = load i8*, i8** %81, align 8, !dbg !2083, !tbaa !167
  %83 = load i32, i32* %54, align 4, !dbg !2084, !tbaa !490
  %84 = add nsw i32 %83, 1, !dbg !2085
  %85 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0), i8* %82, i32 %84) #7, !dbg !2086
  br label %86, !dbg !2087

; <label>:86:                                     ; preds = %75, %69
  call fastcc void @json_next_token(%struct.json_parse_t* %1, %struct.json_token_t* nonnull %5) #7, !dbg !2088
  call fastcc void @json_process_value(%struct.lua_State* %0, %struct.json_parse_t* %1, %struct.json_token_t* nonnull %5) #7, !dbg !2089
  call void @lua_rawset(%struct.lua_State* %0, i32 -3) #7, !dbg !2090
  call fastcc void @json_next_token(%struct.json_parse_t* %1, %struct.json_token_t* nonnull %5) #7, !dbg !2091
  %87 = load i32, i32* %47, align 8, !dbg !2092, !tbaa !459
  switch i32 %87, label %88 [
    i32 1, label %101
    i32 9, label %99
  ], !dbg !2094

; <label>:88:                                     ; preds = %86
  %89 = load %struct.strbuf_t*, %struct.strbuf_t** %53, align 8, !dbg !2101, !tbaa !451
  call void @strbuf_free(%struct.strbuf_t* %89) #7, !dbg !2102
  %90 = load i32, i32* %47, align 8, !dbg !2103, !tbaa !459
  %91 = icmp eq i32 %90, 12, !dbg !2104
  %92 = zext i32 %90 to i64, !dbg !2106
  %93 = getelementptr inbounds [15 x i8*], [15 x i8*]* @json_token_type_name, i64 0, i64 %92, !dbg !2106
  %94 = select i1 %91, i8** %51, i8** %93, !dbg !2107
  %95 = load i8*, i8** %94, align 8, !dbg !2108, !tbaa !167
  %96 = load i32, i32* %54, align 4, !dbg !2109, !tbaa !490
  %97 = add nsw i32 %96, 1, !dbg !2110
  %98 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i8* %95, i32 %97) #7, !dbg !2111
  br label %99, !dbg !2112

; <label>:99:                                     ; preds = %88, %86
  call fastcc void @json_next_token(%struct.json_parse_t* %1, %struct.json_token_t* nonnull %5) #7, !dbg !2113
  %100 = load i32, i32* %47, align 8, !dbg !2043, !tbaa !459
  br label %55, !dbg !2114, !llvm.loop !2115

; <label>:101:                                    ; preds = %86, %46
  %102 = load i32, i32* %24, align 8, !dbg !2118, !tbaa !431
  %103 = add nsw i32 %102, -1, !dbg !2118
  store i32 %103, i32* %24, align 8, !dbg !2118, !tbaa !431
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %23) #8, !dbg !2126
  br label %170, !dbg !2127

; <label>:104:                                    ; preds = %3
  %105 = bitcast %struct.json_token_t* %4 to i8*, !dbg !2137
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %105) #8, !dbg !2137
  %106 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 4, !dbg !2142
  %107 = load i32, i32* %106, align 8, !dbg !2143, !tbaa !431
  %108 = add nsw i32 %107, 1, !dbg !2143
  store i32 %108, i32* %106, align 8, !dbg !2143, !tbaa !431
  %109 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 3, !dbg !2144
  %110 = load %struct.json_config_t*, %struct.json_config_t** %109, align 8, !dbg !2144, !tbaa !422
  %111 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %110, i64 0, i32 11, !dbg !2145
  %112 = load i32, i32* %111, align 8, !dbg !2145, !tbaa !155
  %113 = icmp slt i32 %107, %112, !dbg !2146
  br i1 %113, label %114, label %117, !dbg !2147

; <label>:114:                                    ; preds = %104
  %115 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 2) #7, !dbg !2148
  %116 = icmp eq i32 %115, 0, !dbg !2148
  br i1 %116, label %117, label %128, !dbg !2149

; <label>:117:                                    ; preds = %114, %104
  %118 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 2, !dbg !2150
  %119 = load %struct.strbuf_t*, %struct.strbuf_t** %118, align 8, !dbg !2150, !tbaa !451
  tail call void @strbuf_free(%struct.strbuf_t* %119) #7, !dbg !2151
  %120 = load i32, i32* %106, align 8, !dbg !2152, !tbaa !431
  %121 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 1, !dbg !2153
  %122 = bitcast i8** %121 to i64*, !dbg !2153
  %123 = load i64, i64* %122, align 8, !dbg !2153, !tbaa !435
  %124 = bitcast %struct.json_parse_t* %1 to i64*, !dbg !2154
  %125 = load i64, i64* %124, align 8, !dbg !2154, !tbaa !428
  %126 = sub i64 %123, %125, !dbg !2155
  %127 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.78, i64 0, i64 0), i32 %120, i64 %126) #7, !dbg !2156
  br label %128, !dbg !2157

; <label>:128:                                    ; preds = %117, %114
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #7, !dbg !2158
  call fastcc void @json_next_token(%struct.json_parse_t* nonnull %1, %struct.json_token_t* nonnull %4) #7, !dbg !2160
  %129 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %4, i64 0, i32 0, !dbg !2161
  %130 = load i32, i32* %129, align 8, !dbg !2161, !tbaa !459
  %131 = icmp eq i32 %130, 3, !dbg !2163
  br i1 %131, label %152, label %132, !dbg !2164

; <label>:132:                                    ; preds = %128
  %133 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 2
  %134 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %4, i64 0, i32 2, i32 0
  %135 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %4, i64 0, i32 1
  br label %136, !dbg !2165

; <label>:136:                                    ; preds = %132, %150
  %137 = phi i32 [ %151, %150 ], [ 1, %132 ], !dbg !2169
  call fastcc void @json_process_value(%struct.lua_State* %0, %struct.json_parse_t* %1, %struct.json_token_t* nonnull %4) #7, !dbg !2165
  call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 %137) #7, !dbg !2171
  call fastcc void @json_next_token(%struct.json_parse_t* %1, %struct.json_token_t* nonnull %4) #7, !dbg !2172
  %138 = load i32, i32* %129, align 8, !dbg !2173, !tbaa !459
  switch i32 %138, label %139 [
    i32 3, label %152
    i32 9, label %150
  ], !dbg !2175

; <label>:139:                                    ; preds = %136
  %140 = load %struct.strbuf_t*, %struct.strbuf_t** %133, align 8, !dbg !2182, !tbaa !451
  call void @strbuf_free(%struct.strbuf_t* %140) #7, !dbg !2183
  %141 = load i32, i32* %129, align 8, !dbg !2184, !tbaa !459
  %142 = icmp eq i32 %141, 12, !dbg !2185
  %143 = zext i32 %141 to i64, !dbg !2187
  %144 = getelementptr inbounds [15 x i8*], [15 x i8*]* @json_token_type_name, i64 0, i64 %143, !dbg !2187
  %145 = select i1 %142, i8** %134, i8** %144, !dbg !2188
  %146 = load i8*, i8** %145, align 8, !dbg !2189, !tbaa !167
  %147 = load i32, i32* %135, align 4, !dbg !2190, !tbaa !490
  %148 = add nsw i32 %147, 1, !dbg !2191
  %149 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.79, i64 0, i64 0), i8* %146, i32 %148) #7, !dbg !2192
  br label %150, !dbg !2193

; <label>:150:                                    ; preds = %139, %136
  call fastcc void @json_next_token(%struct.json_parse_t* %1, %struct.json_token_t* nonnull %4) #7, !dbg !2194
  %151 = add nuw nsw i32 %137, 1, !dbg !2195
  br label %136, !dbg !2196, !llvm.loop !2197

; <label>:152:                                    ; preds = %136, %128
  %153 = load i32, i32* %106, align 8, !dbg !2200, !tbaa !431
  %154 = add nsw i32 %153, -1, !dbg !2200
  store i32 %154, i32* %106, align 8, !dbg !2200, !tbaa !431
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %105) #8, !dbg !2203
  br label %170, !dbg !2204

; <label>:155:                                    ; preds = %3
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* null) #7, !dbg !2205
  br label %170, !dbg !2206

; <label>:156:                                    ; preds = %3
  %157 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 2, !dbg !2212
  %158 = load %struct.strbuf_t*, %struct.strbuf_t** %157, align 8, !dbg !2212, !tbaa !451
  tail call void @strbuf_free(%struct.strbuf_t* %158) #7, !dbg !2213
  %159 = load i32, i32* %6, align 8, !dbg !2214, !tbaa !459
  %160 = icmp eq i32 %159, 12, !dbg !2215
  %161 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 2, i32 0, !dbg !2216
  %162 = zext i32 %159 to i64, !dbg !2218
  %163 = getelementptr inbounds [15 x i8*], [15 x i8*]* @json_token_type_name, i64 0, i64 %162, !dbg !2218
  %164 = select i1 %160, i8** %161, i8** %163, !dbg !2219
  %165 = load i8*, i8** %164, align 8, !dbg !2220, !tbaa !167
  %166 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 1, !dbg !2221
  %167 = load i32, i32* %166, align 4, !dbg !2221, !tbaa !490
  %168 = add nsw i32 %167, 1, !dbg !2222
  %169 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0), i8* %165, i32 %168) #7, !dbg !2223
  br label %170, !dbg !2224

; <label>:170:                                    ; preds = %156, %155, %152, %101, %18, %14, %8
  ret void, !dbg !2225
}

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone noreturn
declare dso_local void @__assert_func(i8*, i32, i8*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strncasecmp(i8*, i8*, i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local double @fpconv_strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushnumber(%struct.lua_State*, double) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_rawset(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_rawseti(%struct.lua_State*, i32, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State*, i32) unnamed_addr #0 !dbg !2226 {
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7, !dbg !2234
  %4 = icmp sgt i32 %3, %1, !dbg !2234
  br i1 %4, label %5, label %8, !dbg !2234

; <label>:5:                                      ; preds = %2
  %6 = add nsw i32 %1, 1, !dbg !2234
  %7 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.95, i64 0, i64 0)) #7, !dbg !2234
  br label %8, !dbg !2234

; <label>:8:                                      ; preds = %2, %5
  %9 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7, !dbg !2235
  %10 = icmp slt i32 %9, %1, !dbg !2236
  br i1 %10, label %11, label %14, !dbg !2237

; <label>:11:                                     ; preds = %8, %11
  tail call void @lua_pushnil(%struct.lua_State* %0) #7, !dbg !2238
  %12 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7, !dbg !2235
  %13 = icmp slt i32 %12, %1, !dbg !2236
  br i1 %13, label %11, label %14, !dbg !2237, !llvm.loop !2239

; <label>:14:                                     ; preds = %11, %8
  %15 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -10003) #7, !dbg !2243
  %16 = bitcast i8* %15 to %struct.json_config_t*, !dbg !2243
  %17 = icmp eq i8* %15, null, !dbg !2245
  br i1 %17, label %18, label %20, !dbg !2246

; <label>:18:                                     ; preds = %14
  %19 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !2247
  br label %20, !dbg !2247

; <label>:20:                                     ; preds = %14, %18
  ret %struct.json_config_t* %16, !dbg !2248
}

; Function Attrs: noredzone nounwind
define internal fastcc void @json_enum_option(%struct.lua_State*, i32* nocapture, i8**) unnamed_addr #0 !dbg !36 {
  %4 = icmp eq i8** %2, null, !dbg !2254
  %5 = select i1 %4, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @json_enum_option.bool_options, i64 0, i64 0), i8** %2, !dbg !2256
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7, !dbg !2257
  %7 = icmp eq i32 %6, 0, !dbg !2257
  br i1 %7, label %15, label %8, !dbg !2259

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7, !dbg !2260
  %10 = icmp eq i32 %9, 1, !dbg !2260
  br i1 %10, label %11, label %13, !dbg !2263

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 1) #7, !dbg !2264
  store i32 %12, i32* %1, align 4, !dbg !2265, !tbaa !149
  br label %17, !dbg !2266

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 1, i8* null, i8** %5) #7, !dbg !2267
  store i32 %14, i32* %1, align 4, !dbg !2268, !tbaa !149
  br label %17

; <label>:15:                                     ; preds = %3
  %16 = load i32, i32* %1, align 4, !dbg !2269, !tbaa !149
  br label %17, !dbg !2269

; <label>:17:                                     ; preds = %15, %13, %11
  %18 = phi i32 [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], !dbg !2269
  %19 = icmp ult i32 %18, 2, !dbg !2271
  br i1 %19, label %20, label %21, !dbg !2271

; <label>:20:                                     ; preds = %17
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %18) #7, !dbg !2272
  br label %25, !dbg !2272

; <label>:21:                                     ; preds = %17
  %22 = sext i32 %18 to i64, !dbg !2273
  %23 = getelementptr inbounds i8*, i8** %5, i64 %22, !dbg !2273
  %24 = load i8*, i8** %23, align 8, !dbg !2273, !tbaa !1276
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %24) #7, !dbg !2274
  br label %25

; <label>:25:                                     ; preds = %21, %20
  ret void
}

; Function Attrs: noredzone
declare dso_local i32 @luaL_checkoption(%struct.lua_State*, i32, i8*, i8**) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushinteger(%struct.lua_State*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @lua_newuserdata(%struct.lua_State*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal i32 @json_destroy_config(%struct.lua_State*) #0 !dbg !2275 {
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 1) #7, !dbg !2280
  %3 = icmp eq i8* %2, null, !dbg !2281
  br i1 %3, label %7, label %4, !dbg !2283

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds i8, i8* %2, i64 1280, !dbg !2285
  %6 = bitcast i8* %5 to %struct.strbuf_t*, !dbg !2285
  tail call void @strbuf_free(%struct.strbuf_t* nonnull %6) #7, !dbg !2286
  br label %7, !dbg !2286

; <label>:7:                                      ; preds = %1, %4
  ret i32 0, !dbg !2287
}

; Function Attrs: noredzone
declare dso_local i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal i32 @json_protect_conversion(%struct.lua_State*) #0 !dbg !2288 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7, !dbg !2293
  %3 = icmp eq i32 %2, 1, !dbg !2293
  br i1 %3, label %6, label %4, !dbg !2293

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !2293
  br label %6, !dbg !2293

; <label>:6:                                      ; preds = %4, %1
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10003) #7, !dbg !2294
  tail call void @lua_insert(%struct.lua_State* %0, i32 1) #7, !dbg !2295
  %7 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 1, i32 1, i32 0) #7, !dbg !2296
  switch i32 %7, label %9 [
    i32 0, label %11
    i32 2, label %8
  ], !dbg !2298

; <label>:8:                                      ; preds = %6
  tail call void @lua_pushnil(%struct.lua_State* %0) #7, !dbg !2299
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #7, !dbg !2302
  br label %11, !dbg !2303

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.101, i64 0, i64 0)) #7, !dbg !2304
  br label %11, !dbg !2305

; <label>:11:                                     ; preds = %6, %9, %8
  %12 = phi i32 [ 2, %8 ], [ %10, %9 ], [ 1, %6 ], !dbg !2306
  ret i32 %12, !dbg !2308
}

; Function Attrs: noredzone
declare dso_local void @lua_insert(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @lua_pcall(%struct.lua_State*, i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noredzone }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone noreturn nounwind }
attributes #10 = { nobuiltin noredzone nounwind readonly }

!llvm.module.flags = !{!100, !101, !102}
!llvm.ident = !{!103}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "char2escape", scope: !2, file: !3, line: 153, type: !99, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !22, globals: !25)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua_cjson.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 79, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21}
!8 = !DIEnumerator(name: "T_OBJ_BEGIN", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "T_OBJ_END", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "T_ARR_BEGIN", value: 2, isUnsigned: true)
!11 = !DIEnumerator(name: "T_ARR_END", value: 3, isUnsigned: true)
!12 = !DIEnumerator(name: "T_STRING", value: 4, isUnsigned: true)
!13 = !DIEnumerator(name: "T_NUMBER", value: 5, isUnsigned: true)
!14 = !DIEnumerator(name: "T_BOOLEAN", value: 6, isUnsigned: true)
!15 = !DIEnumerator(name: "T_NULL", value: 7, isUnsigned: true)
!16 = !DIEnumerator(name: "T_COLON", value: 8, isUnsigned: true)
!17 = !DIEnumerator(name: "T_COMMA", value: 9, isUnsigned: true)
!18 = !DIEnumerator(name: "T_END", value: 10, isUnsigned: true)
!19 = !DIEnumerator(name: "T_WHITESPACE", value: 11, isUnsigned: true)
!20 = !DIEnumerator(name: "T_ERROR", value: 12, isUnsigned: true)
!21 = !DIEnumerator(name: "T_UNKNOWN", value: 13, isUnsigned: true)
!22 = !{!23, !24}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !{!0, !26, !34, !55}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "json_token_type_name", scope: !2, file: !3, line: 96, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 960, elements: !32)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!32 = !{!33}
!33 = !DISubrange(count: 15)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "bool_options", scope: !36, file: !3, line: 242, type: !52, isLocal: true, isDefinition: true)
!36 = distinct !DISubprogram(name: "json_enum_option", scope: !3, file: !3, line: 239, type: !37, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !46)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !40, !39, !44, !45, !39}
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !42, line: 50, baseType: !43)
!42 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!43 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !42, line: 50, flags: DIFlagFwdDecl)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!46 = !{!47, !48, !49, !50, !51}
!47 = !DILocalVariable(name: "l", arg: 1, scope: !36, file: !3, line: 239, type: !40)
!48 = !DILocalVariable(name: "optindex", arg: 2, scope: !36, file: !3, line: 239, type: !39)
!49 = !DILocalVariable(name: "setting", arg: 3, scope: !36, file: !3, line: 239, type: !44)
!50 = !DILocalVariable(name: "options", arg: 4, scope: !36, file: !3, line: 240, type: !45)
!51 = !DILocalVariable(name: "bool_true", arg: 5, scope: !36, file: !3, line: 240, type: !39)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 192, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 3)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "options", scope: !57, file: !3, line: 340, type: !96, isLocal: true, isDefinition: true)
!57 = distinct !DISubprogram(name: "json_cfg_encode_invalid_numbers", scope: !3, file: !3, line: 338, type: !58, isLocal: true, isDefinition: true, scopeLine: 339, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{!39, !40}
!60 = !{!61, !62}
!61 = !DILocalVariable(name: "l", arg: 1, scope: !57, file: !3, line: 338, type: !40)
!62 = !DILocalVariable(name: "cfg", scope: !57, file: !3, line: 341, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_config_t", file: !3, line: 132, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 114, size: 10816, elements: !66)
!66 = !{!67, !72, !74, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "ch2token", scope: !65, file: !3, line: 115, baseType: !68, size: 8192)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 8192, elements: !70)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_token_type_t", file: !3, line: 94, baseType: !5)
!70 = !{!71}
!71 = !DISubrange(count: 256)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "escape2char", scope: !65, file: !3, line: 116, baseType: !73, size: 2048, offset: 8192)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2048, elements: !70)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "encode_buf", scope: !65, file: !3, line: 120, baseType: !75, size: 256, offset: 10240)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "strbuf_t", file: !76, line: 42, baseType: !77)
!76 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/strbuf.h", directory: "/root/.unikraft/apps/redis/build")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 34, size: 256, elements: !78)
!78 = !{!79, !81, !82, !83, !84, !85, !86}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !77, file: !76, line: 35, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !77, file: !76, line: 36, baseType: !39, size: 32, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !77, file: !76, line: 37, baseType: !39, size: 32, offset: 96)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "increment", scope: !77, file: !76, line: 38, baseType: !39, size: 32, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic", scope: !77, file: !76, line: 39, baseType: !39, size: 32, offset: 160)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reallocs", scope: !77, file: !76, line: 40, baseType: !39, size: 32, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !77, file: !76, line: 41, baseType: !39, size: 32, offset: 224)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "encode_sparse_convert", scope: !65, file: !3, line: 122, baseType: !39, size: 32, offset: 10496)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "encode_sparse_ratio", scope: !65, file: !3, line: 123, baseType: !39, size: 32, offset: 10528)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "encode_sparse_safe", scope: !65, file: !3, line: 124, baseType: !39, size: 32, offset: 10560)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "encode_max_depth", scope: !65, file: !3, line: 125, baseType: !39, size: 32, offset: 10592)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "encode_invalid_numbers", scope: !65, file: !3, line: 126, baseType: !39, size: 32, offset: 10624)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "encode_number_precision", scope: !65, file: !3, line: 127, baseType: !39, size: 32, offset: 10656)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "encode_keep_buffer", scope: !65, file: !3, line: 128, baseType: !39, size: 32, offset: 10688)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "decode_invalid_numbers", scope: !65, file: !3, line: 130, baseType: !39, size: 32, offset: 10720)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "decode_max_depth", scope: !65, file: !3, line: 131, baseType: !39, size: 32, offset: 10752)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 256, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 4)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 16384, elements: !70)
!100 = !{i32 2, !"Dwarf Version", i32 4}
!101 = !{i32 2, !"Debug Info Version", i32 3}
!102 = !{i32 1, !"wchar_size", i32 4}
!103 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!104 = distinct !DISubprogram(name: "luaopen_cjson", scope: !3, file: !3, line: 1404, type: !58, isLocal: false, isDefinition: true, scopeLine: 1405, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !105)
!105 = !{!106}
!106 = !DILocalVariable(name: "l", arg: 1, scope: !104, file: !3, line: 1404, type: !40)
!107 = !DILocation(line: 1404, column: 30, scope: !104)
!108 = !DILocation(line: 1406, column: 5, scope: !104)
!109 = !DILocation(line: 1410, column: 5, scope: !104)
!110 = !DILocation(line: 1411, column: 5, scope: !104)
!111 = !DILocation(line: 1415, column: 5, scope: !104)
!112 = distinct !DISubprogram(name: "lua_cjson_new", scope: !3, file: !3, line: 1344, type: !58, isLocal: true, isDefinition: true, scopeLine: 1345, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !113)
!113 = !{!114, !115}
!114 = !DILocalVariable(name: "l", arg: 1, scope: !112, file: !3, line: 1344, type: !40)
!115 = !DILocalVariable(name: "reg", scope: !112, file: !3, line: 1346, type: !116)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 1408, elements: !125)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "luaL_Reg", file: !118, line: 38, baseType: !119)
!118 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lauxlib.h", directory: "/root/.unikraft/apps/redis/build")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "luaL_Reg", file: !118, line: 35, size: 128, elements: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !119, file: !118, line: 36, baseType: !29, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !119, file: !118, line: 37, baseType: !123, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !42, line: 52, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!125 = !{!126}
!126 = !DISubrange(count: 11)
!127 = !DILocation(line: 1344, column: 37, scope: !112)
!128 = !DILocation(line: 1346, column: 5, scope: !112)
!129 = !DILocation(line: 1346, column: 14, scope: !112)
!130 = !DILocation(line: 1361, column: 5, scope: !112)
!131 = !DILocation(line: 1364, column: 5, scope: !112)
!132 = !DILocalVariable(name: "l", arg: 1, scope: !133, file: !3, line: 373, type: !40)
!133 = distinct !DISubprogram(name: "json_create_config", scope: !3, file: !3, line: 373, type: !134, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !136)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !40}
!136 = !{!132, !137, !138}
!137 = !DILocalVariable(name: "cfg", scope: !133, file: !3, line: 375, type: !63)
!138 = !DILocalVariable(name: "i", scope: !133, file: !3, line: 376, type: !39)
!139 = !DILocation(line: 373, column: 43, scope: !133, inlinedAt: !140)
!140 = distinct !DILocation(line: 1367, column: 5, scope: !112)
!141 = !DILocation(line: 378, column: 11, scope: !133, inlinedAt: !140)
!142 = !DILocation(line: 375, column: 20, scope: !133, inlinedAt: !140)
!143 = !DILocation(line: 381, column: 5, scope: !133, inlinedAt: !140)
!144 = !DILocation(line: 382, column: 5, scope: !133, inlinedAt: !140)
!145 = !DILocation(line: 383, column: 5, scope: !133, inlinedAt: !140)
!146 = !DILocation(line: 384, column: 5, scope: !133, inlinedAt: !140)
!147 = !DILocation(line: 386, column: 10, scope: !133, inlinedAt: !140)
!148 = !DILocation(line: 386, column: 32, scope: !133, inlinedAt: !140)
!149 = !{!150, !150, i64 0}
!150 = !{!"int", !151, i64 0}
!151 = !{!"omnipotent char", !152, i64 0}
!152 = !{!"Simple C/C++ TBAA"}
!153 = !DILocation(line: 390, column: 10, scope: !133, inlinedAt: !140)
!154 = !DILocation(line: 390, column: 27, scope: !133, inlinedAt: !140)
!155 = !{!156, !150, i64 1344}
!156 = !{!"", !151, i64 0, !151, i64 1024, !157, i64 1280, !150, i64 1312, !150, i64 1316, !150, i64 1320, !150, i64 1324, !150, i64 1328, !150, i64 1332, !150, i64 1336, !150, i64 1340, !150, i64 1344}
!157 = !{!"", !158, i64 0, !150, i64 8, !150, i64 12, !150, i64 16, !150, i64 20, !150, i64 24, !150, i64 28}
!158 = !{!"any pointer", !151, i64 0}
!159 = !DILocation(line: 391, column: 10, scope: !133, inlinedAt: !140)
!160 = !DILocation(line: 391, column: 33, scope: !133, inlinedAt: !140)
!161 = !DILocation(line: 397, column: 23, scope: !133, inlinedAt: !140)
!162 = !DILocation(line: 397, column: 5, scope: !133, inlinedAt: !140)
!163 = !DILocation(line: 376, column: 9, scope: !133, inlinedAt: !140)
!164 = !DILocation(line: 404, column: 26, scope: !165, inlinedAt: !140)
!165 = distinct !DILexicalBlock(scope: !166, file: !3, line: 403, column: 5)
!166 = distinct !DILexicalBlock(scope: !133, file: !3, line: 403, column: 5)
!167 = !{!151, !151, i64 0}
!168 = !DILocation(line: 404, column: 9, scope: !165, inlinedAt: !140)
!169 = !DILocation(line: 407, column: 5, scope: !133, inlinedAt: !140)
!170 = !DILocation(line: 407, column: 24, scope: !133, inlinedAt: !140)
!171 = !DILocation(line: 408, column: 5, scope: !133, inlinedAt: !140)
!172 = !DILocation(line: 408, column: 24, scope: !133, inlinedAt: !140)
!173 = !DILocation(line: 409, column: 5, scope: !133, inlinedAt: !140)
!174 = !DILocation(line: 409, column: 24, scope: !133, inlinedAt: !140)
!175 = !DILocation(line: 410, column: 5, scope: !133, inlinedAt: !140)
!176 = !DILocation(line: 410, column: 24, scope: !133, inlinedAt: !140)
!177 = !DILocation(line: 411, column: 5, scope: !133, inlinedAt: !140)
!178 = !DILocation(line: 411, column: 24, scope: !133, inlinedAt: !140)
!179 = !DILocation(line: 412, column: 5, scope: !133, inlinedAt: !140)
!180 = !DILocation(line: 412, column: 24, scope: !133, inlinedAt: !140)
!181 = !DILocation(line: 413, column: 5, scope: !133, inlinedAt: !140)
!182 = !DILocation(line: 413, column: 25, scope: !133, inlinedAt: !140)
!183 = !DILocation(line: 414, column: 5, scope: !133, inlinedAt: !140)
!184 = !DILocation(line: 414, column: 24, scope: !133, inlinedAt: !140)
!185 = !DILocation(line: 415, column: 5, scope: !133, inlinedAt: !140)
!186 = !DILocation(line: 415, column: 25, scope: !133, inlinedAt: !140)
!187 = !DILocation(line: 416, column: 5, scope: !133, inlinedAt: !140)
!188 = !DILocation(line: 416, column: 25, scope: !133, inlinedAt: !140)
!189 = !DILocation(line: 417, column: 5, scope: !133, inlinedAt: !140)
!190 = !DILocation(line: 417, column: 25, scope: !133, inlinedAt: !140)
!191 = !DILocation(line: 420, column: 5, scope: !133, inlinedAt: !140)
!192 = !DILocation(line: 420, column: 24, scope: !133, inlinedAt: !140)
!193 = !DILocation(line: 421, column: 5, scope: !133, inlinedAt: !140)
!194 = !DILocation(line: 421, column: 24, scope: !133, inlinedAt: !140)
!195 = !DILocation(line: 422, column: 5, scope: !133, inlinedAt: !140)
!196 = !DILocation(line: 422, column: 24, scope: !133, inlinedAt: !140)
!197 = !DILocation(line: 423, column: 5, scope: !133, inlinedAt: !140)
!198 = !DILocation(line: 423, column: 24, scope: !133, inlinedAt: !140)
!199 = !DILocation(line: 424, column: 5, scope: !133, inlinedAt: !140)
!200 = !DILocation(line: 424, column: 24, scope: !133, inlinedAt: !140)
!201 = !DILocation(line: 425, column: 5, scope: !133, inlinedAt: !140)
!202 = !DILocation(line: 425, column: 24, scope: !133, inlinedAt: !140)
!203 = !DILocation(line: 426, column: 5, scope: !133, inlinedAt: !140)
!204 = !DILocation(line: 426, column: 24, scope: !133, inlinedAt: !140)
!205 = !DILocation(line: 427, column: 5, scope: !133, inlinedAt: !140)
!206 = !DILocation(line: 427, column: 24, scope: !133, inlinedAt: !140)
!207 = !DILocation(line: 428, column: 5, scope: !133, inlinedAt: !140)
!208 = !DILocation(line: 428, column: 24, scope: !133, inlinedAt: !140)
!209 = !DILocation(line: 430, column: 9, scope: !210, inlinedAt: !140)
!210 = distinct !DILexicalBlock(scope: !211, file: !3, line: 429, column: 5)
!211 = distinct !DILexicalBlock(scope: !133, file: !3, line: 429, column: 5)
!212 = !DILocation(line: 430, column: 32, scope: !210, inlinedAt: !140)
!213 = !DILocation(line: 434, column: 29, scope: !214, inlinedAt: !140)
!214 = distinct !DILexicalBlock(scope: !215, file: !3, line: 433, column: 5)
!215 = distinct !DILexicalBlock(scope: !133, file: !3, line: 433, column: 5)
!216 = !DILocation(line: 434, column: 9, scope: !214, inlinedAt: !140)
!217 = !DILocation(line: 435, column: 5, scope: !133, inlinedAt: !140)
!218 = !DILocation(line: 435, column: 27, scope: !133, inlinedAt: !140)
!219 = !DILocation(line: 436, column: 5, scope: !133, inlinedAt: !140)
!220 = !DILocation(line: 436, column: 28, scope: !133, inlinedAt: !140)
!221 = !DILocation(line: 437, column: 5, scope: !133, inlinedAt: !140)
!222 = !DILocation(line: 437, column: 27, scope: !133, inlinedAt: !140)
!223 = !DILocation(line: 438, column: 5, scope: !133, inlinedAt: !140)
!224 = !DILocation(line: 438, column: 27, scope: !133, inlinedAt: !140)
!225 = !DILocation(line: 439, column: 5, scope: !133, inlinedAt: !140)
!226 = !DILocation(line: 439, column: 27, scope: !133, inlinedAt: !140)
!227 = !DILocation(line: 440, column: 5, scope: !133, inlinedAt: !140)
!228 = !DILocation(line: 440, column: 27, scope: !133, inlinedAt: !140)
!229 = !DILocation(line: 441, column: 5, scope: !133, inlinedAt: !140)
!230 = !DILocation(line: 441, column: 27, scope: !133, inlinedAt: !140)
!231 = !DILocation(line: 442, column: 5, scope: !133, inlinedAt: !140)
!232 = !DILocation(line: 442, column: 27, scope: !133, inlinedAt: !140)
!233 = !DILocation(line: 443, column: 5, scope: !133, inlinedAt: !140)
!234 = !DILocation(line: 443, column: 27, scope: !133, inlinedAt: !140)
!235 = !DILocalVariable(name: "l", arg: 1, scope: !236, file: !3, line: 1300, type: !40)
!236 = distinct !DISubprogram(name: "luaL_setfuncs", scope: !3, file: !3, line: 1300, type: !237, isLocal: true, isDefinition: true, scopeLine: 1301, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !241)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !40, !239, !39}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!241 = !{!235, !242, !243, !244}
!242 = !DILocalVariable(name: "reg", arg: 2, scope: !236, file: !3, line: 1300, type: !239)
!243 = !DILocalVariable(name: "nup", arg: 3, scope: !236, file: !3, line: 1300, type: !39)
!244 = !DILocalVariable(name: "i", scope: !236, file: !3, line: 1302, type: !39)
!245 = !DILocation(line: 1300, column: 39, scope: !236, inlinedAt: !246)
!246 = distinct !DILocation(line: 1368, column: 5, scope: !112)
!247 = !DILocation(line: 1300, column: 58, scope: !236, inlinedAt: !246)
!248 = !DILocation(line: 1300, column: 67, scope: !236, inlinedAt: !246)
!249 = !DILocation(line: 1304, column: 5, scope: !236, inlinedAt: !246)
!250 = !DILocation(line: 1305, column: 17, scope: !251, inlinedAt: !246)
!251 = distinct !DILexicalBlock(scope: !252, file: !3, line: 1305, column: 5)
!252 = distinct !DILexicalBlock(scope: !236, file: !3, line: 1305, column: 5)
!253 = !DILocation(line: 1307, column: 13, scope: !254, inlinedAt: !246)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 1306, column: 9)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 1306, column: 9)
!256 = distinct !DILexicalBlock(scope: !251, file: !3, line: 1305, column: 38)
!257 = !DILocation(line: 1308, column: 34, scope: !256, inlinedAt: !246)
!258 = !{!259, !158, i64 8}
!259 = !{!"luaL_Reg", !158, i64 0, !158, i64 8}
!260 = !DILocation(line: 1308, column: 9, scope: !256, inlinedAt: !246)
!261 = !DILocation(line: 1309, column: 42, scope: !256, inlinedAt: !246)
!262 = !{!259, !158, i64 0}
!263 = !DILocation(line: 1309, column: 9, scope: !256, inlinedAt: !246)
!264 = !DILocation(line: 1305, column: 34, scope: !251, inlinedAt: !246)
!265 = !DILocation(line: 1305, column: 22, scope: !251, inlinedAt: !246)
!266 = !DILocation(line: 1305, column: 5, scope: !252, inlinedAt: !246)
!267 = distinct !{!267, !268, !269}
!268 = !DILocation(line: 1305, column: 5, scope: !252)
!269 = !DILocation(line: 1310, column: 5, scope: !252)
!270 = !DILocation(line: 1311, column: 5, scope: !236, inlinedAt: !246)
!271 = !DILocation(line: 1371, column: 5, scope: !112)
!272 = !DILocation(line: 1372, column: 5, scope: !112)
!273 = !DILocation(line: 1375, column: 5, scope: !112)
!274 = !DILocation(line: 1376, column: 5, scope: !112)
!275 = !DILocation(line: 1377, column: 5, scope: !112)
!276 = !DILocation(line: 1378, column: 5, scope: !112)
!277 = !DILocation(line: 1381, column: 1, scope: !112)
!278 = !DILocation(line: 1380, column: 5, scope: !112)
!279 = distinct !DISubprogram(name: "luaopen_cjson_safe", scope: !3, file: !3, line: 1418, type: !58, isLocal: false, isDefinition: true, scopeLine: 1419, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !280)
!280 = !{!281}
!281 = !DILocalVariable(name: "l", arg: 1, scope: !279, file: !3, line: 1418, type: !40)
!282 = !DILocation(line: 1418, column: 35, scope: !279)
!283 = !DILocation(line: 1420, column: 5, scope: !279)
!284 = !DILocation(line: 1423, column: 5, scope: !279)
!285 = distinct !DISubprogram(name: "lua_cjson_safe_new", scope: !3, file: !3, line: 1384, type: !58, isLocal: true, isDefinition: true, scopeLine: 1385, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !286)
!286 = !{!287, !288, !289}
!287 = !DILocalVariable(name: "l", arg: 1, scope: !285, file: !3, line: 1384, type: !40)
!288 = !DILocalVariable(name: "func", scope: !285, file: !3, line: 1386, type: !52)
!289 = !DILocalVariable(name: "i", scope: !285, file: !3, line: 1387, type: !39)
!290 = !DILocation(line: 1384, column: 42, scope: !285)
!291 = !DILocation(line: 1389, column: 5, scope: !285)
!292 = !DILocation(line: 1392, column: 5, scope: !285)
!293 = !DILocation(line: 1393, column: 5, scope: !285)
!294 = !DILocation(line: 1387, column: 9, scope: !285)
!295 = !DILocation(line: 1396, column: 9, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !3, line: 1395, column: 31)
!297 = distinct !DILexicalBlock(scope: !298, file: !3, line: 1395, column: 5)
!298 = distinct !DILexicalBlock(scope: !285, file: !3, line: 1395, column: 5)
!299 = !DILocation(line: 1397, column: 9, scope: !296)
!300 = !DILocation(line: 1398, column: 9, scope: !296)
!301 = !DILocation(line: 1401, column: 5, scope: !285)
!302 = distinct !DISubprogram(name: "json_encode", scope: !3, file: !3, line: 703, type: !58, isLocal: true, isDefinition: true, scopeLine: 704, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !303)
!303 = !{!304, !305, !306, !307, !309, !310}
!304 = !DILocalVariable(name: "l", arg: 1, scope: !302, file: !3, line: 703, type: !40)
!305 = !DILocalVariable(name: "cfg", scope: !302, file: !3, line: 705, type: !63)
!306 = !DILocalVariable(name: "local_encode_buf", scope: !302, file: !3, line: 706, type: !75)
!307 = !DILocalVariable(name: "encode_buf", scope: !302, file: !3, line: 707, type: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!309 = !DILocalVariable(name: "json", scope: !302, file: !3, line: 708, type: !80)
!310 = !DILocalVariable(name: "len", scope: !302, file: !3, line: 709, type: !39)
!311 = !DILocation(line: 703, column: 35, scope: !302)
!312 = !DILocalVariable(name: "l", arg: 1, scope: !313, file: !3, line: 194, type: !40)
!313 = distinct !DISubprogram(name: "json_fetch_config", scope: !3, file: !3, line: 194, type: !314, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !316)
!314 = !DISubroutineType(types: !315)
!315 = !{!63, !40}
!316 = !{!312, !317}
!317 = !DILocalVariable(name: "cfg", scope: !313, file: !3, line: 196, type: !63)
!318 = !DILocation(line: 194, column: 52, scope: !313, inlinedAt: !319)
!319 = distinct !DILocation(line: 705, column: 26, scope: !302)
!320 = !DILocation(line: 198, column: 11, scope: !313, inlinedAt: !319)
!321 = !DILocation(line: 196, column: 20, scope: !313, inlinedAt: !319)
!322 = !DILocation(line: 199, column: 10, scope: !323, inlinedAt: !319)
!323 = distinct !DILexicalBlock(scope: !313, file: !3, line: 199, column: 9)
!324 = !DILocation(line: 199, column: 9, scope: !313, inlinedAt: !319)
!325 = !DILocation(line: 200, column: 9, scope: !323, inlinedAt: !319)
!326 = !DILocation(line: 705, column: 20, scope: !302)
!327 = !DILocation(line: 706, column: 5, scope: !302)
!328 = !DILocation(line: 711, column: 5, scope: !302)
!329 = !DILocation(line: 713, column: 15, scope: !330)
!330 = distinct !DILexicalBlock(scope: !302, file: !3, line: 713, column: 9)
!331 = !{!156, !150, i64 1336}
!332 = !DILocation(line: 713, column: 10, scope: !330)
!333 = !DILocation(line: 713, column: 9, scope: !302)
!334 = !DILocation(line: 707, column: 15, scope: !302)
!335 = !DILocation(line: 706, column: 14, scope: !302)
!336 = !DILocation(line: 716, column: 9, scope: !337)
!337 = distinct !DILexicalBlock(scope: !330, file: !3, line: 713, column: 35)
!338 = !DILocation(line: 717, column: 5, scope: !337)
!339 = !DILocation(line: 719, column: 28, scope: !340)
!340 = distinct !DILexicalBlock(scope: !330, file: !3, line: 717, column: 12)
!341 = !DILocalVariable(name: "s", arg: 1, scope: !342, file: !76, line: 78, type: !308)
!342 = distinct !DISubprogram(name: "strbuf_reset", scope: !76, file: !76, line: 78, type: !343, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !345)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !308}
!345 = !{!341}
!346 = !DILocation(line: 78, column: 43, scope: !342, inlinedAt: !347)
!347 = distinct !DILocation(line: 720, column: 9, scope: !340)
!348 = !DILocation(line: 80, column: 8, scope: !342, inlinedAt: !347)
!349 = !DILocation(line: 80, column: 15, scope: !342, inlinedAt: !347)
!350 = !{!157, !150, i64 12}
!351 = !DILocation(line: 0, scope: !337)
!352 = !DILocation(line: 723, column: 5, scope: !302)
!353 = !DILocalVariable(name: "s", arg: 1, scope: !354, file: !76, line: 145, type: !308)
!354 = distinct !DISubprogram(name: "strbuf_string", scope: !76, file: !76, line: 145, type: !355, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{!80, !308, !44}
!357 = !{!353, !358}
!358 = !DILocalVariable(name: "len", arg: 2, scope: !354, file: !76, line: 145, type: !44)
!359 = !DILocation(line: 145, column: 45, scope: !354, inlinedAt: !360)
!360 = distinct !DILocation(line: 724, column: 12, scope: !302)
!361 = !DILocation(line: 148, column: 19, scope: !362, inlinedAt: !360)
!362 = distinct !DILexicalBlock(scope: !354, file: !76, line: 147, column: 9)
!363 = !DILocation(line: 150, column: 15, scope: !354, inlinedAt: !360)
!364 = !{!157, !158, i64 0}
!365 = !DILocation(line: 708, column: 11, scope: !302)
!366 = !DILocation(line: 709, column: 9, scope: !302)
!367 = !DILocation(line: 726, column: 30, scope: !302)
!368 = !DILocation(line: 726, column: 5, scope: !302)
!369 = !DILocation(line: 728, column: 15, scope: !370)
!370 = distinct !DILexicalBlock(scope: !302, file: !3, line: 728, column: 9)
!371 = !DILocation(line: 728, column: 10, scope: !370)
!372 = !DILocation(line: 728, column: 9, scope: !302)
!373 = !DILocation(line: 729, column: 9, scope: !370)
!374 = !DILocation(line: 732, column: 1, scope: !302)
!375 = !DILocation(line: 731, column: 5, scope: !302)
!376 = distinct !DISubprogram(name: "json_decode", scope: !3, file: !3, line: 1253, type: !58, isLocal: true, isDefinition: true, scopeLine: 1254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !377)
!377 = !{!378, !379, !388, !402}
!378 = !DILocalVariable(name: "l", arg: 1, scope: !376, file: !3, line: 1253, type: !40)
!379 = !DILocalVariable(name: "json", scope: !376, file: !3, line: 1255, type: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_parse_t", file: !3, line: 140, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 134, size: 320, elements: !382)
!382 = !{!383, !384, !385, !386, !387}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !381, file: !3, line: 135, baseType: !29, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !381, file: !3, line: 136, baseType: !29, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !381, file: !3, line: 137, baseType: !308, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !381, file: !3, line: 138, baseType: !63, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "current_depth", scope: !381, file: !3, line: 139, baseType: !39, size: 32, offset: 256)
!388 = !DILocalVariable(name: "token", scope: !376, file: !3, line: 1256, type: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_token_t", file: !3, line: 151, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 142, size: 192, elements: !391)
!391 = !{!392, !393, !394, !401}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !390, file: !3, line: 143, baseType: !69, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !390, file: !3, line: 144, baseType: !39, size: 32, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !390, file: !3, line: 149, baseType: !395, size: 64, offset: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !390, file: !3, line: 145, size: 64, elements: !396)
!396 = !{!397, !398, !400}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !395, file: !3, line: 146, baseType: !29, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !395, file: !3, line: 147, baseType: !399, size: 64)
!399 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !395, file: !3, line: 148, baseType: !39, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "string_len", scope: !390, file: !3, line: 150, baseType: !39, size: 32, offset: 128)
!402 = !DILocalVariable(name: "json_len", scope: !376, file: !3, line: 1257, type: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !404, line: 40, baseType: !405)
!404 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !406, line: 129, baseType: !407)
!406 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!407 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!408 = !DILocation(line: 1253, column: 35, scope: !376)
!409 = !DILocation(line: 1255, column: 5, scope: !376)
!410 = !DILocation(line: 1256, column: 5, scope: !376)
!411 = !DILocation(line: 1257, column: 5, scope: !376)
!412 = !DILocation(line: 1259, column: 5, scope: !376)
!413 = !DILocation(line: 194, column: 52, scope: !313, inlinedAt: !414)
!414 = distinct !DILocation(line: 1261, column: 16, scope: !376)
!415 = !DILocation(line: 198, column: 11, scope: !313, inlinedAt: !414)
!416 = !DILocation(line: 196, column: 20, scope: !313, inlinedAt: !414)
!417 = !DILocation(line: 199, column: 10, scope: !323, inlinedAt: !414)
!418 = !DILocation(line: 199, column: 9, scope: !313, inlinedAt: !414)
!419 = !DILocation(line: 200, column: 9, scope: !323, inlinedAt: !414)
!420 = !DILocation(line: 1261, column: 10, scope: !376)
!421 = !DILocation(line: 1261, column: 14, scope: !376)
!422 = !{!423, !158, i64 24}
!423 = !{!"", !158, i64 0, !158, i64 8, !158, i64 16, !158, i64 24, !150, i64 32}
!424 = !DILocation(line: 1257, column: 12, scope: !376)
!425 = !DILocation(line: 1262, column: 17, scope: !376)
!426 = !DILocation(line: 1262, column: 10, scope: !376)
!427 = !DILocation(line: 1262, column: 15, scope: !376)
!428 = !{!423, !158, i64 0}
!429 = !DILocation(line: 1263, column: 10, scope: !376)
!430 = !DILocation(line: 1263, column: 24, scope: !376)
!431 = !{!423, !150, i64 32}
!432 = !DILocation(line: 1264, column: 21, scope: !376)
!433 = !DILocation(line: 1264, column: 10, scope: !376)
!434 = !DILocation(line: 1264, column: 14, scope: !376)
!435 = !{!423, !158, i64 8}
!436 = !DILocation(line: 1271, column: 9, scope: !437)
!437 = distinct !DILexicalBlock(scope: !376, file: !3, line: 1271, column: 9)
!438 = !{!439, !439, i64 0}
!439 = !{!"long", !151, i64 0}
!440 = !DILocation(line: 1271, column: 18, scope: !437)
!441 = !DILocation(line: 1271, column: 23, scope: !437)
!442 = !DILocation(line: 1271, column: 28, scope: !437)
!443 = !DILocation(line: 1271, column: 41, scope: !437)
!444 = !DILocation(line: 1271, column: 45, scope: !437)
!445 = !DILocation(line: 1271, column: 9, scope: !376)
!446 = !DILocation(line: 1272, column: 9, scope: !437)
!447 = !DILocation(line: 1277, column: 27, scope: !376)
!448 = !DILocation(line: 1277, column: 16, scope: !376)
!449 = !DILocation(line: 1277, column: 10, scope: !376)
!450 = !DILocation(line: 1277, column: 14, scope: !376)
!451 = !{!423, !158, i64 16}
!452 = !DILocation(line: 1255, column: 18, scope: !376)
!453 = !DILocation(line: 1256, column: 18, scope: !376)
!454 = !DILocation(line: 1279, column: 5, scope: !376)
!455 = !DILocation(line: 1280, column: 5, scope: !376)
!456 = !DILocation(line: 1283, column: 5, scope: !376)
!457 = !DILocation(line: 1285, column: 15, scope: !458)
!458 = distinct !DILexicalBlock(scope: !376, file: !3, line: 1285, column: 9)
!459 = !{!460, !151, i64 0}
!460 = !{!"", !151, i64 0, !150, i64 4, !151, i64 8, !150, i64 16}
!461 = !DILocation(line: 1285, column: 20, scope: !458)
!462 = !DILocation(line: 1285, column: 9, scope: !376)
!463 = !DILocalVariable(name: "l", arg: 1, scope: !464, file: !3, line: 1099, type: !40)
!464 = distinct !DISubprogram(name: "json_throw_parse_error", scope: !3, file: !3, line: 1099, type: !465, isLocal: true, isDefinition: true, scopeLine: 1101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !469)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !40, !467, !29, !468}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!469 = !{!463, !470, !471, !472, !473}
!470 = !DILocalVariable(name: "json", arg: 2, scope: !464, file: !3, line: 1099, type: !467)
!471 = !DILocalVariable(name: "exp", arg: 3, scope: !464, file: !3, line: 1100, type: !29)
!472 = !DILocalVariable(name: "token", arg: 4, scope: !464, file: !3, line: 1100, type: !468)
!473 = !DILocalVariable(name: "found", scope: !464, file: !3, line: 1102, type: !29)
!474 = !DILocation(line: 1099, column: 47, scope: !464, inlinedAt: !475)
!475 = distinct !DILocation(line: 1286, column: 9, scope: !458)
!476 = !DILocation(line: 1099, column: 64, scope: !464, inlinedAt: !475)
!477 = !DILocation(line: 1100, column: 48, scope: !464, inlinedAt: !475)
!478 = !DILocation(line: 1100, column: 67, scope: !464, inlinedAt: !475)
!479 = !DILocation(line: 1104, column: 23, scope: !464, inlinedAt: !475)
!480 = !DILocation(line: 1104, column: 5, scope: !464, inlinedAt: !475)
!481 = !DILocation(line: 1106, column: 16, scope: !482, inlinedAt: !475)
!482 = distinct !DILexicalBlock(scope: !464, file: !3, line: 1106, column: 9)
!483 = !DILocation(line: 1106, column: 21, scope: !482, inlinedAt: !475)
!484 = !DILocation(line: 1107, column: 30, scope: !482, inlinedAt: !475)
!485 = !DILocation(line: 1102, column: 17, scope: !464, inlinedAt: !475)
!486 = !DILocation(line: 1109, column: 17, scope: !482, inlinedAt: !475)
!487 = !DILocation(line: 1106, column: 9, scope: !464, inlinedAt: !475)
!488 = !DILocation(line: 0, scope: !482, inlinedAt: !475)
!489 = !DILocation(line: 1113, column: 35, scope: !464, inlinedAt: !475)
!490 = !{!460, !150, i64 4}
!491 = !DILocation(line: 1113, column: 41, scope: !464, inlinedAt: !475)
!492 = !DILocation(line: 1112, column: 5, scope: !464, inlinedAt: !475)
!493 = !DILocation(line: 1286, column: 9, scope: !458)
!494 = !DILocation(line: 1288, column: 22, scope: !376)
!495 = !DILocation(line: 1288, column: 5, scope: !376)
!496 = !DILocation(line: 1291, column: 1, scope: !376)
!497 = !DILocation(line: 1290, column: 5, scope: !376)
!498 = distinct !DISubprogram(name: "json_cfg_encode_sparse_array", scope: !3, file: !3, line: 268, type: !58, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !499)
!499 = !{!500, !501}
!500 = !DILocalVariable(name: "l", arg: 1, scope: !498, file: !3, line: 268, type: !40)
!501 = !DILocalVariable(name: "cfg", scope: !498, file: !3, line: 270, type: !63)
!502 = !DILocalVariable(name: "errmsg", scope: !503, file: !3, line: 223, type: !513)
!503 = distinct !DISubprogram(name: "json_integer_option", scope: !3, file: !3, line: 220, type: !504, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !506)
!504 = !DISubroutineType(types: !505)
!505 = !{!39, !40, !39, !44, !39, !39}
!506 = !{!507, !508, !509, !510, !511, !502, !512}
!507 = !DILocalVariable(name: "l", arg: 1, scope: !503, file: !3, line: 220, type: !40)
!508 = !DILocalVariable(name: "optindex", arg: 2, scope: !503, file: !3, line: 220, type: !39)
!509 = !DILocalVariable(name: "setting", arg: 3, scope: !503, file: !3, line: 220, type: !44)
!510 = !DILocalVariable(name: "min", arg: 4, scope: !503, file: !3, line: 221, type: !39)
!511 = !DILocalVariable(name: "max", arg: 5, scope: !503, file: !3, line: 221, type: !39)
!512 = !DILocalVariable(name: "value", scope: !503, file: !3, line: 224, type: !39)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 512, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 64)
!516 = !DILocation(line: 223, column: 10, scope: !503, inlinedAt: !517)
!517 = distinct !DILocation(line: 274, column: 5, scope: !498)
!518 = !DILocation(line: 223, column: 10, scope: !503, inlinedAt: !519)
!519 = distinct !DILocation(line: 273, column: 5, scope: !498)
!520 = !DILocation(line: 268, column: 52, scope: !498)
!521 = !DILocation(line: 270, column: 26, scope: !498)
!522 = !DILocation(line: 270, column: 20, scope: !498)
!523 = !DILocation(line: 272, column: 34, scope: !498)
!524 = !DILocation(line: 272, column: 5, scope: !498)
!525 = !DILocation(line: 273, column: 37, scope: !498)
!526 = !DILocation(line: 220, column: 43, scope: !503, inlinedAt: !519)
!527 = !DILocation(line: 220, column: 50, scope: !503, inlinedAt: !519)
!528 = !DILocation(line: 220, column: 65, scope: !503, inlinedAt: !519)
!529 = !DILocation(line: 221, column: 36, scope: !503, inlinedAt: !519)
!530 = !DILocation(line: 221, column: 45, scope: !503, inlinedAt: !519)
!531 = !DILocation(line: 223, column: 5, scope: !503, inlinedAt: !519)
!532 = !DILocation(line: 226, column: 10, scope: !533, inlinedAt: !519)
!533 = distinct !DILexicalBlock(scope: !503, file: !3, line: 226, column: 9)
!534 = !DILocation(line: 226, column: 9, scope: !503, inlinedAt: !519)
!535 = !DILocation(line: 233, column: 24, scope: !503, inlinedAt: !519)
!536 = !DILocation(line: 227, column: 17, scope: !537, inlinedAt: !519)
!537 = distinct !DILexicalBlock(scope: !533, file: !3, line: 226, column: 34)
!538 = !DILocation(line: 224, column: 9, scope: !503, inlinedAt: !519)
!539 = !DILocation(line: 228, column: 9, scope: !537, inlinedAt: !519)
!540 = !DILocation(line: 229, column: 9, scope: !537, inlinedAt: !519)
!541 = !DILocation(line: 230, column: 18, scope: !537, inlinedAt: !519)
!542 = !DILocation(line: 231, column: 5, scope: !537, inlinedAt: !519)
!543 = !DILocation(line: 233, column: 5, scope: !503, inlinedAt: !519)
!544 = !DILocation(line: 236, column: 1, scope: !503, inlinedAt: !519)
!545 = !DILocation(line: 274, column: 37, scope: !498)
!546 = !DILocation(line: 220, column: 43, scope: !503, inlinedAt: !517)
!547 = !DILocation(line: 220, column: 50, scope: !503, inlinedAt: !517)
!548 = !DILocation(line: 220, column: 65, scope: !503, inlinedAt: !517)
!549 = !DILocation(line: 221, column: 36, scope: !503, inlinedAt: !517)
!550 = !DILocation(line: 221, column: 45, scope: !503, inlinedAt: !517)
!551 = !DILocation(line: 223, column: 5, scope: !503, inlinedAt: !517)
!552 = !DILocation(line: 226, column: 10, scope: !533, inlinedAt: !517)
!553 = !DILocation(line: 226, column: 9, scope: !503, inlinedAt: !517)
!554 = !DILocation(line: 233, column: 24, scope: !503, inlinedAt: !517)
!555 = !DILocation(line: 227, column: 17, scope: !537, inlinedAt: !517)
!556 = !DILocation(line: 224, column: 9, scope: !503, inlinedAt: !517)
!557 = !DILocation(line: 228, column: 9, scope: !537, inlinedAt: !517)
!558 = !DILocation(line: 229, column: 9, scope: !537, inlinedAt: !517)
!559 = !DILocation(line: 230, column: 18, scope: !537, inlinedAt: !517)
!560 = !DILocation(line: 231, column: 5, scope: !537, inlinedAt: !517)
!561 = !DILocation(line: 233, column: 5, scope: !503, inlinedAt: !517)
!562 = !DILocation(line: 236, column: 1, scope: !503, inlinedAt: !517)
!563 = !DILocation(line: 276, column: 5, scope: !498)
!564 = distinct !DISubprogram(name: "json_cfg_encode_max_depth", scope: !3, file: !3, line: 281, type: !58, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !565)
!565 = !{!566, !567}
!566 = !DILocalVariable(name: "l", arg: 1, scope: !564, file: !3, line: 281, type: !40)
!567 = !DILocalVariable(name: "cfg", scope: !564, file: !3, line: 283, type: !63)
!568 = !DILocation(line: 223, column: 10, scope: !503, inlinedAt: !569)
!569 = distinct !DILocation(line: 285, column: 12, scope: !564)
!570 = !DILocation(line: 281, column: 49, scope: !564)
!571 = !DILocation(line: 283, column: 26, scope: !564)
!572 = !DILocation(line: 283, column: 20, scope: !564)
!573 = !DILocation(line: 285, column: 44, scope: !564)
!574 = !DILocation(line: 220, column: 43, scope: !503, inlinedAt: !569)
!575 = !DILocation(line: 220, column: 50, scope: !503, inlinedAt: !569)
!576 = !DILocation(line: 220, column: 65, scope: !503, inlinedAt: !569)
!577 = !DILocation(line: 221, column: 36, scope: !503, inlinedAt: !569)
!578 = !DILocation(line: 221, column: 45, scope: !503, inlinedAt: !569)
!579 = !DILocation(line: 223, column: 5, scope: !503, inlinedAt: !569)
!580 = !DILocation(line: 226, column: 10, scope: !533, inlinedAt: !569)
!581 = !DILocation(line: 226, column: 9, scope: !503, inlinedAt: !569)
!582 = !DILocation(line: 233, column: 24, scope: !503, inlinedAt: !569)
!583 = !DILocation(line: 227, column: 17, scope: !537, inlinedAt: !569)
!584 = !DILocation(line: 224, column: 9, scope: !503, inlinedAt: !569)
!585 = !DILocation(line: 228, column: 9, scope: !537, inlinedAt: !569)
!586 = !DILocation(line: 229, column: 9, scope: !537, inlinedAt: !569)
!587 = !DILocation(line: 230, column: 18, scope: !537, inlinedAt: !569)
!588 = !DILocation(line: 231, column: 5, scope: !537, inlinedAt: !569)
!589 = !DILocation(line: 233, column: 5, scope: !503, inlinedAt: !569)
!590 = !DILocation(line: 236, column: 1, scope: !503, inlinedAt: !569)
!591 = !DILocation(line: 285, column: 5, scope: !564)
!592 = distinct !DISubprogram(name: "json_cfg_decode_max_depth", scope: !3, file: !3, line: 290, type: !58, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !593)
!593 = !{!594, !595}
!594 = !DILocalVariable(name: "l", arg: 1, scope: !592, file: !3, line: 290, type: !40)
!595 = !DILocalVariable(name: "cfg", scope: !592, file: !3, line: 292, type: !63)
!596 = !DILocation(line: 223, column: 10, scope: !503, inlinedAt: !597)
!597 = distinct !DILocation(line: 294, column: 12, scope: !592)
!598 = !DILocation(line: 290, column: 49, scope: !592)
!599 = !DILocation(line: 292, column: 26, scope: !592)
!600 = !DILocation(line: 292, column: 20, scope: !592)
!601 = !DILocation(line: 294, column: 44, scope: !592)
!602 = !DILocation(line: 220, column: 43, scope: !503, inlinedAt: !597)
!603 = !DILocation(line: 220, column: 50, scope: !503, inlinedAt: !597)
!604 = !DILocation(line: 220, column: 65, scope: !503, inlinedAt: !597)
!605 = !DILocation(line: 221, column: 36, scope: !503, inlinedAt: !597)
!606 = !DILocation(line: 221, column: 45, scope: !503, inlinedAt: !597)
!607 = !DILocation(line: 223, column: 5, scope: !503, inlinedAt: !597)
!608 = !DILocation(line: 226, column: 10, scope: !533, inlinedAt: !597)
!609 = !DILocation(line: 226, column: 9, scope: !503, inlinedAt: !597)
!610 = !DILocation(line: 233, column: 24, scope: !503, inlinedAt: !597)
!611 = !DILocation(line: 227, column: 17, scope: !537, inlinedAt: !597)
!612 = !DILocation(line: 224, column: 9, scope: !503, inlinedAt: !597)
!613 = !DILocation(line: 228, column: 9, scope: !537, inlinedAt: !597)
!614 = !DILocation(line: 229, column: 9, scope: !537, inlinedAt: !597)
!615 = !DILocation(line: 230, column: 18, scope: !537, inlinedAt: !597)
!616 = !DILocation(line: 231, column: 5, scope: !537, inlinedAt: !597)
!617 = !DILocation(line: 233, column: 5, scope: !503, inlinedAt: !597)
!618 = !DILocation(line: 236, column: 1, scope: !503, inlinedAt: !597)
!619 = !DILocation(line: 294, column: 5, scope: !592)
!620 = distinct !DISubprogram(name: "json_cfg_encode_number_precision", scope: !3, file: !3, line: 298, type: !58, isLocal: true, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !621)
!621 = !{!622, !623}
!622 = !DILocalVariable(name: "l", arg: 1, scope: !620, file: !3, line: 298, type: !40)
!623 = !DILocalVariable(name: "cfg", scope: !620, file: !3, line: 300, type: !63)
!624 = !DILocation(line: 223, column: 10, scope: !503, inlinedAt: !625)
!625 = distinct !DILocation(line: 302, column: 12, scope: !620)
!626 = !DILocation(line: 298, column: 56, scope: !620)
!627 = !DILocation(line: 300, column: 26, scope: !620)
!628 = !DILocation(line: 300, column: 20, scope: !620)
!629 = !DILocation(line: 302, column: 44, scope: !620)
!630 = !DILocation(line: 220, column: 43, scope: !503, inlinedAt: !625)
!631 = !DILocation(line: 220, column: 50, scope: !503, inlinedAt: !625)
!632 = !DILocation(line: 220, column: 65, scope: !503, inlinedAt: !625)
!633 = !DILocation(line: 221, column: 36, scope: !503, inlinedAt: !625)
!634 = !DILocation(line: 221, column: 45, scope: !503, inlinedAt: !625)
!635 = !DILocation(line: 223, column: 5, scope: !503, inlinedAt: !625)
!636 = !DILocation(line: 226, column: 10, scope: !533, inlinedAt: !625)
!637 = !DILocation(line: 226, column: 9, scope: !503, inlinedAt: !625)
!638 = !DILocation(line: 233, column: 24, scope: !503, inlinedAt: !625)
!639 = !DILocation(line: 227, column: 17, scope: !537, inlinedAt: !625)
!640 = !DILocation(line: 224, column: 9, scope: !503, inlinedAt: !625)
!641 = !DILocation(line: 228, column: 9, scope: !537, inlinedAt: !625)
!642 = !DILocation(line: 229, column: 9, scope: !537, inlinedAt: !625)
!643 = !DILocation(line: 230, column: 18, scope: !537, inlinedAt: !625)
!644 = !DILocation(line: 231, column: 5, scope: !537, inlinedAt: !625)
!645 = !DILocation(line: 233, column: 5, scope: !503, inlinedAt: !625)
!646 = !DILocation(line: 236, column: 1, scope: !503, inlinedAt: !625)
!647 = !DILocation(line: 302, column: 5, scope: !620)
!648 = distinct !DISubprogram(name: "json_cfg_encode_keep_buffer", scope: !3, file: !3, line: 306, type: !58, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !649)
!649 = !{!650, !651, !652}
!650 = !DILocalVariable(name: "l", arg: 1, scope: !648, file: !3, line: 306, type: !40)
!651 = !DILocalVariable(name: "cfg", scope: !648, file: !3, line: 308, type: !63)
!652 = !DILocalVariable(name: "old_value", scope: !648, file: !3, line: 309, type: !39)
!653 = !DILocation(line: 306, column: 51, scope: !648)
!654 = !DILocation(line: 308, column: 26, scope: !648)
!655 = !DILocation(line: 308, column: 20, scope: !648)
!656 = !DILocation(line: 311, column: 22, scope: !648)
!657 = !DILocation(line: 309, column: 9, scope: !648)
!658 = !DILocation(line: 313, column: 5, scope: !648)
!659 = !DILocation(line: 316, column: 26, scope: !660)
!660 = distinct !DILexicalBlock(scope: !648, file: !3, line: 316, column: 9)
!661 = !DILocation(line: 316, column: 19, scope: !660)
!662 = !DILocation(line: 316, column: 9, scope: !648)
!663 = !DILocation(line: 317, column: 13, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 317, column: 13)
!665 = distinct !DILexicalBlock(scope: !660, file: !3, line: 316, column: 46)
!666 = !DILocation(line: 0, scope: !664)
!667 = !DILocation(line: 317, column: 13, scope: !665)
!668 = !DILocation(line: 318, column: 13, scope: !664)
!669 = !DILocation(line: 320, column: 13, scope: !664)
!670 = !DILocation(line: 323, column: 5, scope: !648)
!671 = !DILocation(line: 338, column: 55, scope: !57)
!672 = !DILocation(line: 341, column: 26, scope: !57)
!673 = !DILocation(line: 341, column: 20, scope: !57)
!674 = !DILocation(line: 343, column: 34, scope: !57)
!675 = !DILocation(line: 343, column: 5, scope: !57)
!676 = !DILocation(line: 347, column: 5, scope: !57)
!677 = distinct !DISubprogram(name: "json_cfg_decode_invalid_numbers", scope: !3, file: !3, line: 350, type: !58, isLocal: true, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !678)
!678 = !{!679, !680}
!679 = !DILocalVariable(name: "l", arg: 1, scope: !677, file: !3, line: 350, type: !40)
!680 = !DILocalVariable(name: "cfg", scope: !677, file: !3, line: 352, type: !63)
!681 = !DILocation(line: 350, column: 55, scope: !677)
!682 = !DILocation(line: 352, column: 26, scope: !677)
!683 = !DILocation(line: 352, column: 20, scope: !677)
!684 = !DILocation(line: 354, column: 34, scope: !677)
!685 = !DILocation(line: 354, column: 5, scope: !677)
!686 = !DILocation(line: 358, column: 5, scope: !677)
!687 = distinct !DISubprogram(name: "json_append_data", scope: !3, file: !3, line: 660, type: !688, isLocal: true, isDefinition: true, scopeLine: 662, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !40, !63, !39, !308}
!690 = !{!691, !692, !693, !694, !695}
!691 = !DILocalVariable(name: "l", arg: 1, scope: !687, file: !3, line: 660, type: !40)
!692 = !DILocalVariable(name: "cfg", arg: 2, scope: !687, file: !3, line: 660, type: !63)
!693 = !DILocalVariable(name: "current_depth", arg: 3, scope: !687, file: !3, line: 661, type: !39)
!694 = !DILocalVariable(name: "json", arg: 4, scope: !687, file: !3, line: 661, type: !308)
!695 = !DILocalVariable(name: "len", scope: !687, file: !3, line: 663, type: !39)
!696 = !DILocation(line: 660, column: 41, scope: !687)
!697 = !DILocation(line: 660, column: 59, scope: !687)
!698 = !DILocation(line: 661, column: 34, scope: !687)
!699 = !DILocation(line: 661, column: 59, scope: !687)
!700 = !DILocation(line: 665, column: 13, scope: !687)
!701 = !DILocation(line: 665, column: 5, scope: !687)
!702 = !DILocation(line: 667, column: 9, scope: !703)
!703 = distinct !DILexicalBlock(scope: !687, file: !3, line: 665, column: 30)
!704 = !DILocation(line: 668, column: 9, scope: !703)
!705 = !DILocation(line: 670, column: 9, scope: !703)
!706 = !DILocation(line: 671, column: 9, scope: !703)
!707 = !DILocation(line: 673, column: 13, scope: !708)
!708 = distinct !DILexicalBlock(scope: !703, file: !3, line: 673, column: 13)
!709 = !DILocalVariable(name: "s", arg: 1, scope: !710, file: !76, line: 127, type: !308)
!710 = distinct !DISubprogram(name: "strbuf_append_mem", scope: !76, file: !76, line: 127, type: !711, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !713)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !308, !29, !39}
!713 = !{!709, !714, !715}
!714 = !DILocalVariable(name: "c", arg: 2, scope: !710, file: !76, line: 127, type: !29)
!715 = !DILocalVariable(name: "len", arg: 3, scope: !710, file: !76, line: 127, type: !39)
!716 = !DILocation(line: 127, column: 48, scope: !710, inlinedAt: !717)
!717 = distinct !DILocation(line: 676, column: 13, scope: !708)
!718 = !DILocation(line: 127, column: 48, scope: !710, inlinedAt: !719)
!719 = distinct !DILocation(line: 674, column: 13, scope: !708)
!720 = !DILocation(line: 92, column: 15, scope: !721, inlinedAt: !726)
!721 = distinct !DISubprogram(name: "strbuf_empty_length", scope: !76, file: !76, line: 90, type: !722, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !724)
!722 = !DISubroutineType(types: !723)
!723 = !{!39, !308}
!724 = !{!725}
!725 = !DILocalVariable(name: "s", arg: 1, scope: !721, file: !76, line: 90, type: !308)
!726 = distinct !DILocation(line: 97, column: 15, scope: !727, inlinedAt: !734)
!727 = distinct !DILexicalBlock(scope: !728, file: !76, line: 97, column: 9)
!728 = distinct !DISubprogram(name: "strbuf_ensure_empty_length", scope: !76, file: !76, line: 95, type: !729, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !731)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !308, !39}
!731 = !{!732, !733}
!732 = !DILocalVariable(name: "s", arg: 1, scope: !728, file: !76, line: 95, type: !308)
!733 = !DILocalVariable(name: "len", arg: 2, scope: !728, file: !76, line: 95, type: !39)
!734 = distinct !DILocation(line: 129, column: 5, scope: !710, inlinedAt: !717)
!735 = !{!157, !150, i64 8}
!736 = !DILocation(line: 92, column: 25, scope: !721, inlinedAt: !726)
!737 = !DILocation(line: 92, column: 32, scope: !721, inlinedAt: !726)
!738 = !DILocation(line: 673, column: 13, scope: !703)
!739 = !DILocation(line: 127, column: 63, scope: !710, inlinedAt: !719)
!740 = !DILocation(line: 127, column: 70, scope: !710, inlinedAt: !719)
!741 = !DILocation(line: 95, column: 57, scope: !728, inlinedAt: !742)
!742 = distinct !DILocation(line: 129, column: 5, scope: !710, inlinedAt: !719)
!743 = !DILocation(line: 95, column: 64, scope: !728, inlinedAt: !742)
!744 = !DILocation(line: 90, column: 49, scope: !721, inlinedAt: !745)
!745 = distinct !DILocation(line: 97, column: 15, scope: !727, inlinedAt: !742)
!746 = !DILocation(line: 97, column: 13, scope: !727, inlinedAt: !742)
!747 = !DILocation(line: 97, column: 9, scope: !728, inlinedAt: !742)
!748 = !DILocation(line: 98, column: 36, scope: !727, inlinedAt: !742)
!749 = !DILocation(line: 98, column: 9, scope: !727, inlinedAt: !742)
!750 = !DILocation(line: 130, column: 24, scope: !710, inlinedAt: !719)
!751 = !DILocation(line: 130, column: 15, scope: !710, inlinedAt: !719)
!752 = !DILocation(line: 130, column: 19, scope: !710, inlinedAt: !719)
!753 = !DILocation(line: 130, column: 5, scope: !710, inlinedAt: !719)
!754 = !DILocation(line: 131, column: 15, scope: !710, inlinedAt: !719)
!755 = !DILocation(line: 674, column: 13, scope: !708)
!756 = !DILocation(line: 127, column: 63, scope: !710, inlinedAt: !717)
!757 = !DILocation(line: 127, column: 70, scope: !710, inlinedAt: !717)
!758 = !DILocation(line: 95, column: 57, scope: !728, inlinedAt: !734)
!759 = !DILocation(line: 95, column: 64, scope: !728, inlinedAt: !734)
!760 = !DILocation(line: 90, column: 49, scope: !721, inlinedAt: !726)
!761 = !DILocation(line: 97, column: 13, scope: !727, inlinedAt: !734)
!762 = !DILocation(line: 97, column: 9, scope: !728, inlinedAt: !734)
!763 = !DILocation(line: 98, column: 36, scope: !727, inlinedAt: !734)
!764 = !DILocation(line: 98, column: 9, scope: !727, inlinedAt: !734)
!765 = !DILocation(line: 130, column: 24, scope: !710, inlinedAt: !717)
!766 = !DILocation(line: 130, column: 15, scope: !710, inlinedAt: !717)
!767 = !DILocation(line: 130, column: 19, scope: !710, inlinedAt: !717)
!768 = !DILocation(line: 130, column: 5, scope: !710, inlinedAt: !717)
!769 = !DILocation(line: 131, column: 15, scope: !710, inlinedAt: !717)
!770 = !DILocation(line: 679, column: 22, scope: !703)
!771 = !DILocalVariable(name: "l", arg: 1, scope: !772, file: !3, line: 536, type: !40)
!772 = distinct !DISubprogram(name: "json_check_encode_depth", scope: !3, file: !3, line: 536, type: !688, isLocal: true, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !773)
!773 = !{!771, !774, !775, !776}
!774 = !DILocalVariable(name: "cfg", arg: 2, scope: !772, file: !3, line: 536, type: !63)
!775 = !DILocalVariable(name: "current_depth", arg: 3, scope: !772, file: !3, line: 537, type: !39)
!776 = !DILocalVariable(name: "json", arg: 4, scope: !772, file: !3, line: 537, type: !308)
!777 = !DILocation(line: 536, column: 48, scope: !772, inlinedAt: !778)
!778 = distinct !DILocation(line: 680, column: 9, scope: !703)
!779 = !DILocation(line: 536, column: 66, scope: !772, inlinedAt: !778)
!780 = !DILocation(line: 537, column: 41, scope: !772, inlinedAt: !778)
!781 = !DILocation(line: 537, column: 66, scope: !772, inlinedAt: !778)
!782 = !DILocation(line: 549, column: 31, scope: !783, inlinedAt: !778)
!783 = distinct !DILexicalBlock(scope: !772, file: !3, line: 549, column: 9)
!784 = !{!156, !150, i64 1324}
!785 = !DILocation(line: 549, column: 23, scope: !783, inlinedAt: !778)
!786 = !DILocation(line: 549, column: 48, scope: !783, inlinedAt: !778)
!787 = !DILocation(line: 549, column: 51, scope: !783, inlinedAt: !778)
!788 = !DILocation(line: 549, column: 9, scope: !772, inlinedAt: !778)
!789 = !DILocation(line: 552, column: 15, scope: !790, inlinedAt: !778)
!790 = distinct !DILexicalBlock(scope: !772, file: !3, line: 552, column: 9)
!791 = !DILocation(line: 552, column: 10, scope: !790, inlinedAt: !778)
!792 = !DILocation(line: 552, column: 9, scope: !772, inlinedAt: !778)
!793 = !DILocation(line: 553, column: 9, scope: !790, inlinedAt: !778)
!794 = !DILocation(line: 555, column: 5, scope: !772, inlinedAt: !778)
!795 = !DILocation(line: 557, column: 1, scope: !772, inlinedAt: !778)
!796 = !DILocalVariable(name: "l", arg: 1, scope: !797, file: !3, line: 493, type: !40)
!797 = distinct !DISubprogram(name: "lua_array_length", scope: !3, file: !3, line: 493, type: !798, isLocal: true, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{!39, !40, !63, !308}
!800 = !{!796, !801, !802, !803, !804, !805}
!801 = !DILocalVariable(name: "cfg", arg: 2, scope: !797, file: !3, line: 493, type: !63)
!802 = !DILocalVariable(name: "json", arg: 3, scope: !797, file: !3, line: 493, type: !308)
!803 = !DILocalVariable(name: "k", scope: !797, file: !3, line: 495, type: !399)
!804 = !DILocalVariable(name: "max", scope: !797, file: !3, line: 496, type: !39)
!805 = !DILocalVariable(name: "items", scope: !797, file: !3, line: 497, type: !39)
!806 = !DILocation(line: 493, column: 40, scope: !797, inlinedAt: !807)
!807 = distinct !DILocation(line: 681, column: 15, scope: !703)
!808 = !DILocation(line: 493, column: 58, scope: !797, inlinedAt: !807)
!809 = !DILocation(line: 493, column: 73, scope: !797, inlinedAt: !807)
!810 = !DILocation(line: 496, column: 9, scope: !797, inlinedAt: !807)
!811 = !DILocation(line: 497, column: 9, scope: !797, inlinedAt: !807)
!812 = !DILocation(line: 502, column: 5, scope: !797, inlinedAt: !807)
!813 = !DILocation(line: 504, column: 12, scope: !797, inlinedAt: !807)
!814 = !DILocation(line: 504, column: 28, scope: !797, inlinedAt: !807)
!815 = !DILocation(line: 504, column: 5, scope: !797, inlinedAt: !807)
!816 = !DILocation(line: 506, column: 13, scope: !817, inlinedAt: !807)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 506, column: 13)
!818 = distinct !DILexicalBlock(scope: !797, file: !3, line: 504, column: 34)
!819 = !DILocation(line: 506, column: 29, scope: !817, inlinedAt: !807)
!820 = !DILocation(line: 506, column: 44, scope: !817, inlinedAt: !807)
!821 = !DILocation(line: 507, column: 18, scope: !817, inlinedAt: !807)
!822 = !DILocation(line: 495, column: 12, scope: !797, inlinedAt: !807)
!823 = !DILocation(line: 507, column: 16, scope: !817, inlinedAt: !807)
!824 = !DILocation(line: 506, column: 13, scope: !818, inlinedAt: !807)
!825 = !DILocation(line: 509, column: 17, scope: !826, inlinedAt: !807)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 509, column: 17)
!827 = distinct !DILexicalBlock(scope: !817, file: !3, line: 507, column: 40)
!828 = !DILocation(line: 509, column: 26, scope: !826, inlinedAt: !807)
!829 = !DILocation(line: 509, column: 36, scope: !826, inlinedAt: !807)
!830 = !DILocation(line: 509, column: 31, scope: !826, inlinedAt: !807)
!831 = !DILocation(line: 510, column: 25, scope: !832, inlinedAt: !807)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 510, column: 21)
!833 = distinct !DILexicalBlock(scope: !826, file: !3, line: 509, column: 42)
!834 = !DILocation(line: 510, column: 23, scope: !832, inlinedAt: !807)
!835 = !DILocation(line: 511, column: 27, scope: !832, inlinedAt: !807)
!836 = !DILocation(line: 510, column: 21, scope: !833, inlinedAt: !807)
!837 = !DILocation(line: 512, column: 22, scope: !833, inlinedAt: !807)
!838 = !DILocation(line: 513, column: 17, scope: !833, inlinedAt: !807)
!839 = distinct !{!839, !840, !841}
!840 = !DILocation(line: 504, column: 5, scope: !797)
!841 = !DILocation(line: 521, column: 5, scope: !797)
!842 = !DILocation(line: 519, column: 9, scope: !818, inlinedAt: !807)
!843 = !DILocation(line: 520, column: 9, scope: !818, inlinedAt: !807)
!844 = !DILocation(line: 0, scope: !832, inlinedAt: !807)
!845 = !DILocation(line: 0, scope: !833, inlinedAt: !807)
!846 = !DILocation(line: 524, column: 14, scope: !847, inlinedAt: !807)
!847 = distinct !DILexicalBlock(scope: !797, file: !3, line: 524, column: 9)
!848 = !{!156, !150, i64 1316}
!849 = !DILocation(line: 524, column: 34, scope: !847, inlinedAt: !807)
!850 = !DILocation(line: 525, column: 21, scope: !847, inlinedAt: !807)
!851 = !DILocation(line: 525, column: 13, scope: !847, inlinedAt: !807)
!852 = !DILocation(line: 524, column: 38, scope: !847, inlinedAt: !807)
!853 = !DILocation(line: 526, column: 20, scope: !847, inlinedAt: !807)
!854 = !{!156, !150, i64 1320}
!855 = !DILocation(line: 526, column: 13, scope: !847, inlinedAt: !807)
!856 = !DILocation(line: 524, column: 9, scope: !797, inlinedAt: !807)
!857 = !DILocation(line: 527, column: 19, scope: !858, inlinedAt: !807)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 527, column: 13)
!859 = distinct !DILexicalBlock(scope: !847, file: !3, line: 526, column: 40)
!860 = !{!156, !150, i64 1312}
!861 = !DILocation(line: 527, column: 14, scope: !858, inlinedAt: !807)
!862 = !DILocation(line: 527, column: 13, scope: !859, inlinedAt: !807)
!863 = !DILocalVariable(name: "l", arg: 1, scope: !864, file: !3, line: 448, type: !40)
!864 = distinct !DISubprogram(name: "json_encode_exception", scope: !3, file: !3, line: 448, type: !865, isLocal: true, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !867)
!865 = !DISubroutineType(types: !866)
!866 = !{null, !40, !63, !308, !39, !29}
!867 = !{!863, !868, !869, !870, !871}
!868 = !DILocalVariable(name: "cfg", arg: 2, scope: !864, file: !3, line: 448, type: !63)
!869 = !DILocalVariable(name: "json", arg: 3, scope: !864, file: !3, line: 448, type: !308)
!870 = !DILocalVariable(name: "lindex", arg: 4, scope: !864, file: !3, line: 448, type: !39)
!871 = !DILocalVariable(name: "reason", arg: 5, scope: !864, file: !3, line: 449, type: !29)
!872 = !DILocation(line: 448, column: 46, scope: !864, inlinedAt: !873)
!873 = distinct !DILocation(line: 528, column: 13, scope: !858, inlinedAt: !807)
!874 = !DILocation(line: 448, column: 64, scope: !864, inlinedAt: !873)
!875 = !DILocation(line: 448, column: 79, scope: !864, inlinedAt: !873)
!876 = !DILocation(line: 448, column: 89, scope: !864, inlinedAt: !873)
!877 = !DILocation(line: 449, column: 47, scope: !864, inlinedAt: !873)
!878 = !DILocation(line: 451, column: 15, scope: !879, inlinedAt: !873)
!879 = distinct !DILexicalBlock(scope: !864, file: !3, line: 451, column: 9)
!880 = !DILocation(line: 451, column: 10, scope: !879, inlinedAt: !873)
!881 = !DILocation(line: 451, column: 9, scope: !864, inlinedAt: !873)
!882 = !DILocation(line: 452, column: 9, scope: !879, inlinedAt: !873)
!883 = !DILocation(line: 454, column: 35, scope: !864, inlinedAt: !873)
!884 = !DILocation(line: 454, column: 19, scope: !864, inlinedAt: !873)
!885 = !DILocation(line: 453, column: 5, scope: !864, inlinedAt: !873)
!886 = !DILocation(line: 528, column: 13, scope: !858, inlinedAt: !807)
!887 = !DILocation(line: 663, column: 9, scope: !687)
!888 = !DILocation(line: 682, column: 17, scope: !889)
!889 = distinct !DILexicalBlock(scope: !703, file: !3, line: 682, column: 13)
!890 = !DILocation(line: 682, column: 13, scope: !703)
!891 = !DILocalVariable(name: "l", arg: 1, scope: !892, file: !3, line: 566, type: !40)
!892 = distinct !DISubprogram(name: "json_append_array", scope: !3, file: !3, line: 566, type: !893, isLocal: true, isDefinition: true, scopeLine: 568, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !895)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !40, !63, !39, !308, !39}
!895 = !{!891, !896, !897, !898, !899, !900, !901}
!896 = !DILocalVariable(name: "cfg", arg: 2, scope: !892, file: !3, line: 566, type: !63)
!897 = !DILocalVariable(name: "current_depth", arg: 3, scope: !892, file: !3, line: 566, type: !39)
!898 = !DILocalVariable(name: "json", arg: 4, scope: !892, file: !3, line: 567, type: !308)
!899 = !DILocalVariable(name: "array_length", arg: 5, scope: !892, file: !3, line: 567, type: !39)
!900 = !DILocalVariable(name: "comma", scope: !892, file: !3, line: 569, type: !39)
!901 = !DILocalVariable(name: "i", scope: !892, file: !3, line: 569, type: !39)
!902 = !DILocation(line: 566, column: 42, scope: !892, inlinedAt: !903)
!903 = distinct !DILocation(line: 683, column: 13, scope: !889)
!904 = !DILocation(line: 566, column: 60, scope: !892, inlinedAt: !903)
!905 = !DILocation(line: 566, column: 69, scope: !892, inlinedAt: !903)
!906 = !DILocation(line: 567, column: 41, scope: !892, inlinedAt: !903)
!907 = !DILocation(line: 567, column: 51, scope: !892, inlinedAt: !903)
!908 = !DILocalVariable(name: "s", arg: 1, scope: !909, file: !76, line: 116, type: !308)
!909 = distinct !DISubprogram(name: "strbuf_append_char", scope: !76, file: !76, line: 116, type: !910, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !912)
!910 = !DISubroutineType(types: !911)
!911 = !{null, !308, !30}
!912 = !{!908, !913}
!913 = !DILocalVariable(name: "c", arg: 2, scope: !909, file: !76, line: 116, type: !30)
!914 = !DILocation(line: 116, column: 49, scope: !909, inlinedAt: !915)
!915 = distinct !DILocation(line: 571, column: 5, scope: !892, inlinedAt: !903)
!916 = !DILocation(line: 116, column: 63, scope: !909, inlinedAt: !915)
!917 = !DILocation(line: 95, column: 57, scope: !728, inlinedAt: !918)
!918 = distinct !DILocation(line: 118, column: 5, scope: !909, inlinedAt: !915)
!919 = !DILocation(line: 95, column: 64, scope: !728, inlinedAt: !918)
!920 = !DILocation(line: 90, column: 49, scope: !721, inlinedAt: !921)
!921 = distinct !DILocation(line: 97, column: 15, scope: !727, inlinedAt: !918)
!922 = !DILocation(line: 92, column: 15, scope: !721, inlinedAt: !921)
!923 = !DILocation(line: 92, column: 25, scope: !721, inlinedAt: !921)
!924 = !DILocation(line: 92, column: 32, scope: !721, inlinedAt: !921)
!925 = !DILocation(line: 97, column: 13, scope: !727, inlinedAt: !918)
!926 = !DILocation(line: 97, column: 9, scope: !728, inlinedAt: !918)
!927 = !DILocation(line: 98, column: 36, scope: !727, inlinedAt: !918)
!928 = !DILocation(line: 98, column: 9, scope: !727, inlinedAt: !918)
!929 = !DILocation(line: 119, column: 21, scope: !909, inlinedAt: !915)
!930 = !DILocation(line: 119, column: 8, scope: !909, inlinedAt: !915)
!931 = !DILocation(line: 119, column: 5, scope: !909, inlinedAt: !915)
!932 = !DILocation(line: 119, column: 25, scope: !909, inlinedAt: !915)
!933 = !DILocation(line: 569, column: 9, scope: !892, inlinedAt: !903)
!934 = !DILocation(line: 569, column: 16, scope: !892, inlinedAt: !903)
!935 = !DILocation(line: 575, column: 13, scope: !936, inlinedAt: !903)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 575, column: 13)
!937 = distinct !DILexicalBlock(scope: !938, file: !3, line: 574, column: 41)
!938 = distinct !DILexicalBlock(scope: !939, file: !3, line: 574, column: 5)
!939 = distinct !DILexicalBlock(scope: !892, file: !3, line: 574, column: 5)
!940 = !DILocation(line: 575, column: 13, scope: !937, inlinedAt: !903)
!941 = !DILocation(line: 116, column: 49, scope: !909, inlinedAt: !942)
!942 = distinct !DILocation(line: 576, column: 13, scope: !936, inlinedAt: !903)
!943 = !DILocation(line: 116, column: 63, scope: !909, inlinedAt: !942)
!944 = !DILocation(line: 95, column: 57, scope: !728, inlinedAt: !945)
!945 = distinct !DILocation(line: 118, column: 5, scope: !909, inlinedAt: !942)
!946 = !DILocation(line: 95, column: 64, scope: !728, inlinedAt: !945)
!947 = !DILocation(line: 90, column: 49, scope: !721, inlinedAt: !948)
!948 = distinct !DILocation(line: 97, column: 15, scope: !727, inlinedAt: !945)
!949 = !DILocation(line: 92, column: 15, scope: !721, inlinedAt: !948)
!950 = !DILocation(line: 92, column: 25, scope: !721, inlinedAt: !948)
!951 = !DILocation(line: 92, column: 32, scope: !721, inlinedAt: !948)
!952 = !DILocation(line: 97, column: 13, scope: !727, inlinedAt: !945)
!953 = !DILocation(line: 97, column: 9, scope: !728, inlinedAt: !945)
!954 = !DILocation(line: 98, column: 36, scope: !727, inlinedAt: !945)
!955 = !DILocation(line: 98, column: 9, scope: !727, inlinedAt: !945)
!956 = !DILocation(line: 119, column: 21, scope: !909, inlinedAt: !942)
!957 = !DILocation(line: 119, column: 8, scope: !909, inlinedAt: !942)
!958 = !DILocation(line: 119, column: 5, scope: !909, inlinedAt: !942)
!959 = !DILocation(line: 119, column: 25, scope: !909, inlinedAt: !942)
!960 = !DILocation(line: 576, column: 13, scope: !936, inlinedAt: !903)
!961 = !DILocation(line: 0, scope: !936, inlinedAt: !903)
!962 = !DILocation(line: 580, column: 9, scope: !937, inlinedAt: !903)
!963 = !DILocation(line: 581, column: 9, scope: !937, inlinedAt: !903)
!964 = !DILocation(line: 582, column: 9, scope: !937, inlinedAt: !903)
!965 = !DILocation(line: 574, column: 37, scope: !938, inlinedAt: !903)
!966 = !DILocation(line: 574, column: 19, scope: !938, inlinedAt: !903)
!967 = !DILocation(line: 574, column: 5, scope: !939, inlinedAt: !903)
!968 = distinct !{!968, !969, !970}
!969 = !DILocation(line: 574, column: 5, scope: !939)
!970 = !DILocation(line: 583, column: 5, scope: !939)
!971 = !DILocation(line: 116, column: 49, scope: !909, inlinedAt: !972)
!972 = distinct !DILocation(line: 585, column: 5, scope: !892, inlinedAt: !903)
!973 = !DILocation(line: 116, column: 63, scope: !909, inlinedAt: !972)
!974 = !DILocation(line: 95, column: 57, scope: !728, inlinedAt: !975)
!975 = distinct !DILocation(line: 118, column: 5, scope: !909, inlinedAt: !972)
!976 = !DILocation(line: 95, column: 64, scope: !728, inlinedAt: !975)
!977 = !DILocation(line: 90, column: 49, scope: !721, inlinedAt: !978)
!978 = distinct !DILocation(line: 97, column: 15, scope: !727, inlinedAt: !975)
!979 = !DILocation(line: 92, column: 15, scope: !721, inlinedAt: !978)
!980 = !DILocation(line: 92, column: 25, scope: !721, inlinedAt: !978)
!981 = !DILocation(line: 92, column: 32, scope: !721, inlinedAt: !978)
!982 = !DILocation(line: 97, column: 13, scope: !727, inlinedAt: !975)
!983 = !DILocation(line: 97, column: 9, scope: !728, inlinedAt: !975)
!984 = !DILocation(line: 98, column: 36, scope: !727, inlinedAt: !975)
!985 = !DILocation(line: 98, column: 9, scope: !727, inlinedAt: !975)
!986 = !DILocation(line: 119, column: 21, scope: !909, inlinedAt: !972)
!987 = !DILocation(line: 119, column: 8, scope: !909, inlinedAt: !972)
!988 = !DILocation(line: 119, column: 5, scope: !909, inlinedAt: !972)
!989 = !DILocation(line: 119, column: 25, scope: !909, inlinedAt: !972)
!990 = !DILocation(line: 683, column: 13, scope: !889)
!991 = !DILocalVariable(name: "l", arg: 1, scope: !992, file: !3, line: 618, type: !40)
!992 = distinct !DISubprogram(name: "json_append_object", scope: !3, file: !3, line: 618, type: !688, isLocal: true, isDefinition: true, scopeLine: 620, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !993)
!993 = !{!991, !994, !995, !996, !997, !998}
!994 = !DILocalVariable(name: "cfg", arg: 2, scope: !992, file: !3, line: 618, type: !63)
!995 = !DILocalVariable(name: "current_depth", arg: 3, scope: !992, file: !3, line: 619, type: !39)
!996 = !DILocalVariable(name: "json", arg: 4, scope: !992, file: !3, line: 619, type: !308)
!997 = !DILocalVariable(name: "comma", scope: !992, file: !3, line: 621, type: !39)
!998 = !DILocalVariable(name: "keytype", scope: !992, file: !3, line: 621, type: !39)
!999 = !DILocation(line: 618, column: 43, scope: !992, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 685, column: 13, scope: !889)
!1001 = !DILocation(line: 618, column: 61, scope: !992, inlinedAt: !1000)
!1002 = !DILocation(line: 619, column: 36, scope: !992, inlinedAt: !1000)
!1003 = !DILocation(line: 619, column: 61, scope: !992, inlinedAt: !1000)
!1004 = !DILocation(line: 116, column: 49, scope: !909, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 624, column: 5, scope: !992, inlinedAt: !1000)
!1006 = !DILocation(line: 116, column: 63, scope: !909, inlinedAt: !1005)
!1007 = !DILocation(line: 95, column: 57, scope: !728, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 118, column: 5, scope: !909, inlinedAt: !1005)
!1009 = !DILocation(line: 95, column: 64, scope: !728, inlinedAt: !1008)
!1010 = !DILocation(line: 90, column: 49, scope: !721, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 97, column: 15, scope: !727, inlinedAt: !1008)
!1012 = !DILocation(line: 92, column: 15, scope: !721, inlinedAt: !1011)
!1013 = !DILocation(line: 92, column: 25, scope: !721, inlinedAt: !1011)
!1014 = !DILocation(line: 92, column: 32, scope: !721, inlinedAt: !1011)
!1015 = !DILocation(line: 97, column: 13, scope: !727, inlinedAt: !1008)
!1016 = !DILocation(line: 97, column: 9, scope: !728, inlinedAt: !1008)
!1017 = !DILocation(line: 98, column: 36, scope: !727, inlinedAt: !1008)
!1018 = !DILocation(line: 98, column: 9, scope: !727, inlinedAt: !1008)
!1019 = !DILocation(line: 119, column: 21, scope: !909, inlinedAt: !1005)
!1020 = !DILocation(line: 119, column: 8, scope: !909, inlinedAt: !1005)
!1021 = !DILocation(line: 119, column: 5, scope: !909, inlinedAt: !1005)
!1022 = !DILocation(line: 119, column: 25, scope: !909, inlinedAt: !1005)
!1023 = !DILocation(line: 626, column: 5, scope: !992, inlinedAt: !1000)
!1024 = !DILocation(line: 621, column: 9, scope: !992, inlinedAt: !1000)
!1025 = !DILocation(line: 629, column: 12, scope: !992, inlinedAt: !1000)
!1026 = !DILocation(line: 629, column: 28, scope: !992, inlinedAt: !1000)
!1027 = !DILocation(line: 629, column: 5, scope: !992, inlinedAt: !1000)
!1028 = !DILocation(line: 630, column: 13, scope: !1029, inlinedAt: !1000)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 630, column: 13)
!1030 = distinct !DILexicalBlock(scope: !992, file: !3, line: 629, column: 34)
!1031 = !DILocation(line: 630, column: 13, scope: !1030, inlinedAt: !1000)
!1032 = !DILocation(line: 116, column: 49, scope: !909, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 631, column: 13, scope: !1029, inlinedAt: !1000)
!1034 = !DILocation(line: 116, column: 63, scope: !909, inlinedAt: !1033)
!1035 = !DILocation(line: 95, column: 57, scope: !728, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 118, column: 5, scope: !909, inlinedAt: !1033)
!1037 = !DILocation(line: 95, column: 64, scope: !728, inlinedAt: !1036)
!1038 = !DILocation(line: 90, column: 49, scope: !721, inlinedAt: !1039)
!1039 = distinct !DILocation(line: 97, column: 15, scope: !727, inlinedAt: !1036)
!1040 = !DILocation(line: 92, column: 15, scope: !721, inlinedAt: !1039)
!1041 = !DILocation(line: 92, column: 25, scope: !721, inlinedAt: !1039)
!1042 = !DILocation(line: 92, column: 32, scope: !721, inlinedAt: !1039)
!1043 = !DILocation(line: 97, column: 13, scope: !727, inlinedAt: !1036)
!1044 = !DILocation(line: 97, column: 9, scope: !728, inlinedAt: !1036)
!1045 = !DILocation(line: 98, column: 36, scope: !727, inlinedAt: !1036)
!1046 = !DILocation(line: 98, column: 9, scope: !727, inlinedAt: !1036)
!1047 = !DILocation(line: 119, column: 21, scope: !909, inlinedAt: !1033)
!1048 = !DILocation(line: 119, column: 8, scope: !909, inlinedAt: !1033)
!1049 = !DILocation(line: 119, column: 5, scope: !909, inlinedAt: !1033)
!1050 = !DILocation(line: 119, column: 25, scope: !909, inlinedAt: !1033)
!1051 = !DILocation(line: 631, column: 13, scope: !1029, inlinedAt: !1000)
!1052 = !DILocation(line: 0, scope: !1029, inlinedAt: !1000)
!1053 = !DILocation(line: 636, column: 19, scope: !1030, inlinedAt: !1000)
!1054 = !DILocation(line: 621, column: 16, scope: !992, inlinedAt: !1000)
!1055 = !DILocation(line: 637, column: 13, scope: !1030, inlinedAt: !1000)
!1056 = !DILocation(line: 116, column: 49, scope: !909, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 638, column: 13, scope: !1058, inlinedAt: !1000)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 637, column: 37)
!1059 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 637, column: 13)
!1060 = !DILocation(line: 116, column: 63, scope: !909, inlinedAt: !1057)
!1061 = !DILocation(line: 95, column: 57, scope: !728, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 118, column: 5, scope: !909, inlinedAt: !1057)
!1063 = !DILocation(line: 95, column: 64, scope: !728, inlinedAt: !1062)
!1064 = !DILocation(line: 90, column: 49, scope: !721, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 97, column: 15, scope: !727, inlinedAt: !1062)
!1066 = !DILocation(line: 92, column: 15, scope: !721, inlinedAt: !1065)
!1067 = !DILocation(line: 92, column: 25, scope: !721, inlinedAt: !1065)
!1068 = !DILocation(line: 92, column: 32, scope: !721, inlinedAt: !1065)
!1069 = !DILocation(line: 97, column: 13, scope: !727, inlinedAt: !1062)
!1070 = !DILocation(line: 97, column: 9, scope: !728, inlinedAt: !1062)
!1071 = !DILocation(line: 98, column: 36, scope: !727, inlinedAt: !1062)
!1072 = !DILocation(line: 98, column: 9, scope: !727, inlinedAt: !1062)
!1073 = !DILocation(line: 119, column: 21, scope: !909, inlinedAt: !1057)
!1074 = !DILocation(line: 119, column: 8, scope: !909, inlinedAt: !1057)
!1075 = !DILocation(line: 119, column: 5, scope: !909, inlinedAt: !1057)
!1076 = !DILocation(line: 119, column: 25, scope: !909, inlinedAt: !1057)
!1077 = !DILocation(line: 639, column: 13, scope: !1058, inlinedAt: !1000)
!1078 = !DILocation(line: 127, column: 48, scope: !710, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 640, column: 13, scope: !1058, inlinedAt: !1000)
!1080 = !DILocation(line: 127, column: 63, scope: !710, inlinedAt: !1079)
!1081 = !DILocation(line: 127, column: 70, scope: !710, inlinedAt: !1079)
!1082 = !DILocation(line: 95, column: 57, scope: !728, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 129, column: 5, scope: !710, inlinedAt: !1079)
!1084 = !DILocation(line: 95, column: 64, scope: !728, inlinedAt: !1083)
!1085 = !DILocation(line: 90, column: 49, scope: !721, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 97, column: 15, scope: !727, inlinedAt: !1083)
!1087 = !DILocation(line: 92, column: 15, scope: !721, inlinedAt: !1086)
!1088 = !DILocation(line: 92, column: 25, scope: !721, inlinedAt: !1086)
!1089 = !DILocation(line: 92, column: 32, scope: !721, inlinedAt: !1086)
!1090 = !DILocation(line: 97, column: 13, scope: !727, inlinedAt: !1083)
!1091 = !DILocation(line: 97, column: 9, scope: !728, inlinedAt: !1083)
!1092 = !DILocation(line: 98, column: 36, scope: !727, inlinedAt: !1083)
!1093 = !DILocation(line: 98, column: 9, scope: !727, inlinedAt: !1083)
!1094 = !DILocation(line: 130, column: 24, scope: !710, inlinedAt: !1079)
!1095 = !DILocation(line: 130, column: 15, scope: !710, inlinedAt: !1079)
!1096 = !DILocation(line: 130, column: 19, scope: !710, inlinedAt: !1079)
!1097 = !DILocation(line: 130, column: 5, scope: !710, inlinedAt: !1079)
!1098 = !DILocation(line: 131, column: 15, scope: !710, inlinedAt: !1079)
!1099 = !DILocation(line: 641, column: 9, scope: !1058, inlinedAt: !1000)
!1100 = !DILocation(line: 642, column: 13, scope: !1101, inlinedAt: !1000)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 641, column: 44)
!1102 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 641, column: 20)
!1103 = !DILocation(line: 116, column: 49, scope: !909, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 643, column: 13, scope: !1101, inlinedAt: !1000)
!1105 = !DILocation(line: 116, column: 63, scope: !909, inlinedAt: !1104)
!1106 = !DILocation(line: 95, column: 57, scope: !728, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 118, column: 5, scope: !909, inlinedAt: !1104)
!1108 = !DILocation(line: 95, column: 64, scope: !728, inlinedAt: !1107)
!1109 = !DILocation(line: 90, column: 49, scope: !721, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 97, column: 15, scope: !727, inlinedAt: !1107)
!1111 = !DILocation(line: 92, column: 15, scope: !721, inlinedAt: !1110)
!1112 = !DILocation(line: 92, column: 25, scope: !721, inlinedAt: !1110)
!1113 = !DILocation(line: 92, column: 32, scope: !721, inlinedAt: !1110)
!1114 = !DILocation(line: 97, column: 13, scope: !727, inlinedAt: !1107)
!1115 = !DILocation(line: 97, column: 9, scope: !728, inlinedAt: !1107)
!1116 = !DILocation(line: 98, column: 36, scope: !727, inlinedAt: !1107)
!1117 = !DILocation(line: 98, column: 9, scope: !727, inlinedAt: !1107)
!1118 = !DILocation(line: 119, column: 21, scope: !909, inlinedAt: !1104)
!1119 = !DILocation(line: 119, column: 8, scope: !909, inlinedAt: !1104)
!1120 = !DILocation(line: 119, column: 5, scope: !909, inlinedAt: !1104)
!1121 = !DILocation(line: 119, column: 25, scope: !909, inlinedAt: !1104)
!1122 = !DILocation(line: 644, column: 9, scope: !1101, inlinedAt: !1000)
!1123 = !DILocation(line: 448, column: 46, scope: !864, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 645, column: 13, scope: !1125, inlinedAt: !1000)
!1125 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 644, column: 16)
!1126 = !DILocation(line: 448, column: 64, scope: !864, inlinedAt: !1124)
!1127 = !DILocation(line: 448, column: 79, scope: !864, inlinedAt: !1124)
!1128 = !DILocation(line: 448, column: 89, scope: !864, inlinedAt: !1124)
!1129 = !DILocation(line: 449, column: 47, scope: !864, inlinedAt: !1124)
!1130 = !DILocation(line: 451, column: 15, scope: !879, inlinedAt: !1124)
!1131 = !DILocation(line: 451, column: 10, scope: !879, inlinedAt: !1124)
!1132 = !DILocation(line: 451, column: 9, scope: !864, inlinedAt: !1124)
!1133 = !DILocation(line: 452, column: 9, scope: !879, inlinedAt: !1124)
!1134 = !DILocation(line: 454, column: 35, scope: !864, inlinedAt: !1124)
!1135 = !DILocation(line: 454, column: 19, scope: !864, inlinedAt: !1124)
!1136 = !DILocation(line: 453, column: 5, scope: !864, inlinedAt: !1124)
!1137 = !DILocation(line: 651, column: 9, scope: !1030, inlinedAt: !1000)
!1138 = !DILocation(line: 652, column: 9, scope: !1030, inlinedAt: !1000)
!1139 = distinct !{!1139, !1140, !1141}
!1140 = !DILocation(line: 629, column: 5, scope: !992)
!1141 = !DILocation(line: 654, column: 5, scope: !992)
!1142 = !DILocation(line: 116, column: 49, scope: !909, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 656, column: 5, scope: !992, inlinedAt: !1000)
!1144 = !DILocation(line: 116, column: 63, scope: !909, inlinedAt: !1143)
!1145 = !DILocation(line: 95, column: 57, scope: !728, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 118, column: 5, scope: !909, inlinedAt: !1143)
!1147 = !DILocation(line: 95, column: 64, scope: !728, inlinedAt: !1146)
!1148 = !DILocation(line: 90, column: 49, scope: !721, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 97, column: 15, scope: !727, inlinedAt: !1146)
!1150 = !DILocation(line: 92, column: 15, scope: !721, inlinedAt: !1149)
!1151 = !DILocation(line: 92, column: 25, scope: !721, inlinedAt: !1149)
!1152 = !DILocation(line: 92, column: 32, scope: !721, inlinedAt: !1149)
!1153 = !DILocation(line: 97, column: 13, scope: !727, inlinedAt: !1146)
!1154 = !DILocation(line: 97, column: 9, scope: !728, inlinedAt: !1146)
!1155 = !DILocation(line: 98, column: 36, scope: !727, inlinedAt: !1146)
!1156 = !DILocation(line: 98, column: 9, scope: !727, inlinedAt: !1146)
!1157 = !DILocation(line: 119, column: 21, scope: !909, inlinedAt: !1143)
!1158 = !DILocation(line: 119, column: 8, scope: !909, inlinedAt: !1143)
!1159 = !DILocation(line: 119, column: 5, scope: !909, inlinedAt: !1143)
!1160 = !DILocation(line: 119, column: 25, scope: !909, inlinedAt: !1143)
!1161 = !DILocation(line: 127, column: 48, scope: !710, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 688, column: 9, scope: !703)
!1163 = !DILocation(line: 127, column: 63, scope: !710, inlinedAt: !1162)
!1164 = !DILocation(line: 127, column: 70, scope: !710, inlinedAt: !1162)
!1165 = !DILocation(line: 95, column: 57, scope: !728, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 129, column: 5, scope: !710, inlinedAt: !1162)
!1167 = !DILocation(line: 95, column: 64, scope: !728, inlinedAt: !1166)
!1168 = !DILocation(line: 90, column: 49, scope: !721, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 97, column: 15, scope: !727, inlinedAt: !1166)
!1170 = !DILocation(line: 92, column: 15, scope: !721, inlinedAt: !1169)
!1171 = !DILocation(line: 92, column: 25, scope: !721, inlinedAt: !1169)
!1172 = !DILocation(line: 92, column: 32, scope: !721, inlinedAt: !1169)
!1173 = !DILocation(line: 97, column: 13, scope: !727, inlinedAt: !1166)
!1174 = !DILocation(line: 97, column: 9, scope: !728, inlinedAt: !1166)
!1175 = !DILocation(line: 98, column: 36, scope: !727, inlinedAt: !1166)
!1176 = !DILocation(line: 98, column: 9, scope: !727, inlinedAt: !1166)
!1177 = !DILocation(line: 130, column: 24, scope: !710, inlinedAt: !1162)
!1178 = !DILocation(line: 130, column: 15, scope: !710, inlinedAt: !1162)
!1179 = !DILocation(line: 130, column: 19, scope: !710, inlinedAt: !1162)
!1180 = !DILocation(line: 130, column: 5, scope: !710, inlinedAt: !1162)
!1181 = !DILocation(line: 131, column: 15, scope: !710, inlinedAt: !1162)
!1182 = !DILocation(line: 689, column: 9, scope: !703)
!1183 = !DILocation(line: 691, column: 13, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !703, file: !3, line: 691, column: 13)
!1185 = !DILocation(line: 691, column: 35, scope: !1184)
!1186 = !DILocation(line: 691, column: 13, scope: !703)
!1187 = !DILocation(line: 127, column: 48, scope: !710, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 692, column: 13, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 691, column: 44)
!1190 = !DILocation(line: 127, column: 63, scope: !710, inlinedAt: !1188)
!1191 = !DILocation(line: 127, column: 70, scope: !710, inlinedAt: !1188)
!1192 = !DILocation(line: 95, column: 57, scope: !728, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 129, column: 5, scope: !710, inlinedAt: !1188)
!1194 = !DILocation(line: 95, column: 64, scope: !728, inlinedAt: !1193)
!1195 = !DILocation(line: 90, column: 49, scope: !721, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 97, column: 15, scope: !727, inlinedAt: !1193)
!1197 = !DILocation(line: 92, column: 15, scope: !721, inlinedAt: !1196)
!1198 = !DILocation(line: 92, column: 25, scope: !721, inlinedAt: !1196)
!1199 = !DILocation(line: 92, column: 32, scope: !721, inlinedAt: !1196)
!1200 = !DILocation(line: 97, column: 13, scope: !727, inlinedAt: !1193)
!1201 = !DILocation(line: 97, column: 9, scope: !728, inlinedAt: !1193)
!1202 = !DILocation(line: 98, column: 36, scope: !727, inlinedAt: !1193)
!1203 = !DILocation(line: 98, column: 9, scope: !727, inlinedAt: !1193)
!1204 = !DILocation(line: 130, column: 24, scope: !710, inlinedAt: !1188)
!1205 = !DILocation(line: 130, column: 15, scope: !710, inlinedAt: !1188)
!1206 = !DILocation(line: 130, column: 19, scope: !710, inlinedAt: !1188)
!1207 = !DILocation(line: 130, column: 5, scope: !710, inlinedAt: !1188)
!1208 = !DILocation(line: 131, column: 15, scope: !710, inlinedAt: !1188)
!1209 = !DILocation(line: 693, column: 13, scope: !1189)
!1210 = !DILocation(line: 448, column: 46, scope: !864, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 698, column: 9, scope: !703)
!1212 = !DILocation(line: 448, column: 64, scope: !864, inlinedAt: !1211)
!1213 = !DILocation(line: 448, column: 79, scope: !864, inlinedAt: !1211)
!1214 = !DILocation(line: 448, column: 89, scope: !864, inlinedAt: !1211)
!1215 = !DILocation(line: 449, column: 47, scope: !864, inlinedAt: !1211)
!1216 = !DILocation(line: 451, column: 15, scope: !879, inlinedAt: !1211)
!1217 = !DILocation(line: 451, column: 10, scope: !879, inlinedAt: !1211)
!1218 = !DILocation(line: 451, column: 9, scope: !864, inlinedAt: !1211)
!1219 = !DILocation(line: 452, column: 9, scope: !879, inlinedAt: !1211)
!1220 = !DILocation(line: 454, column: 35, scope: !864, inlinedAt: !1211)
!1221 = !DILocation(line: 454, column: 19, scope: !864, inlinedAt: !1211)
!1222 = !DILocation(line: 453, column: 5, scope: !864, inlinedAt: !1211)
!1223 = !DILocation(line: 700, column: 5, scope: !703)
!1224 = !DILocation(line: 701, column: 1, scope: !687)
!1225 = distinct !DISubprogram(name: "json_append_string", scope: !3, file: !3, line: 463, type: !1226, isLocal: true, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1228)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{null, !40, !308, !39}
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235}
!1229 = !DILocalVariable(name: "l", arg: 1, scope: !1225, file: !3, line: 463, type: !40)
!1230 = !DILocalVariable(name: "json", arg: 2, scope: !1225, file: !3, line: 463, type: !308)
!1231 = !DILocalVariable(name: "lindex", arg: 3, scope: !1225, file: !3, line: 463, type: !39)
!1232 = !DILocalVariable(name: "escstr", scope: !1225, file: !3, line: 465, type: !29)
!1233 = !DILocalVariable(name: "i", scope: !1225, file: !3, line: 466, type: !39)
!1234 = !DILocalVariable(name: "str", scope: !1225, file: !3, line: 467, type: !29)
!1235 = !DILocalVariable(name: "len", scope: !1225, file: !3, line: 468, type: !403)
!1236 = !DILocation(line: 463, column: 43, scope: !1225)
!1237 = !DILocation(line: 463, column: 56, scope: !1225)
!1238 = !DILocation(line: 463, column: 66, scope: !1225)
!1239 = !DILocation(line: 468, column: 5, scope: !1225)
!1240 = !DILocation(line: 468, column: 12, scope: !1225)
!1241 = !DILocation(line: 470, column: 11, scope: !1225)
!1242 = !DILocation(line: 467, column: 17, scope: !1225)
!1243 = !DILocation(line: 476, column: 38, scope: !1225)
!1244 = !DILocation(line: 95, column: 57, scope: !728, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 476, column: 5, scope: !1225)
!1246 = !DILocation(line: 95, column: 64, scope: !728, inlinedAt: !1245)
!1247 = !DILocation(line: 90, column: 49, scope: !721, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 97, column: 15, scope: !727, inlinedAt: !1245)
!1249 = !DILocation(line: 92, column: 15, scope: !721, inlinedAt: !1248)
!1250 = !DILocation(line: 92, column: 25, scope: !721, inlinedAt: !1248)
!1251 = !DILocation(line: 92, column: 32, scope: !721, inlinedAt: !1248)
!1252 = !DILocation(line: 97, column: 13, scope: !727, inlinedAt: !1245)
!1253 = !DILocation(line: 97, column: 9, scope: !728, inlinedAt: !1245)
!1254 = !DILocation(line: 98, column: 36, scope: !727, inlinedAt: !1245)
!1255 = !DILocation(line: 98, column: 9, scope: !727, inlinedAt: !1245)
!1256 = !DILocation(line: 124, column: 21, scope: !1257, inlinedAt: !1261)
!1257 = distinct !DISubprogram(name: "strbuf_append_char_unsafe", scope: !76, file: !76, line: 122, type: !910, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1258)
!1258 = !{!1259, !1260}
!1259 = !DILocalVariable(name: "s", arg: 1, scope: !1257, file: !76, line: 122, type: !308)
!1260 = !DILocalVariable(name: "c", arg: 2, scope: !1257, file: !76, line: 122, type: !30)
!1261 = distinct !DILocation(line: 478, column: 5, scope: !1225)
!1262 = !DILocation(line: 122, column: 56, scope: !1257, inlinedAt: !1261)
!1263 = !DILocation(line: 122, column: 70, scope: !1257, inlinedAt: !1261)
!1264 = !DILocation(line: 124, column: 8, scope: !1257, inlinedAt: !1261)
!1265 = !DILocation(line: 124, column: 5, scope: !1257, inlinedAt: !1261)
!1266 = !DILocation(line: 124, column: 25, scope: !1257, inlinedAt: !1261)
!1267 = !DILocation(line: 466, column: 9, scope: !1225)
!1268 = !DILocation(line: 479, column: 21, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 479, column: 5)
!1270 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 479, column: 5)
!1271 = !DILocation(line: 479, column: 19, scope: !1269)
!1272 = !DILocation(line: 479, column: 5, scope: !1270)
!1273 = !DILocation(line: 480, column: 45, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 479, column: 31)
!1275 = !DILocation(line: 480, column: 18, scope: !1274)
!1276 = !{!158, !158, i64 0}
!1277 = !DILocation(line: 465, column: 17, scope: !1225)
!1278 = !DILocation(line: 481, column: 13, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 481, column: 13)
!1280 = !DILocation(line: 481, column: 13, scope: !1274)
!1281 = !DILocation(line: 482, column: 13, scope: !1279)
!1282 = !DILocation(line: 122, column: 56, scope: !1257, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 484, column: 13, scope: !1279)
!1284 = !DILocation(line: 122, column: 70, scope: !1257, inlinedAt: !1283)
!1285 = !DILocation(line: 124, column: 8, scope: !1257, inlinedAt: !1283)
!1286 = !DILocation(line: 124, column: 21, scope: !1257, inlinedAt: !1283)
!1287 = !DILocation(line: 124, column: 5, scope: !1257, inlinedAt: !1283)
!1288 = !DILocation(line: 124, column: 25, scope: !1257, inlinedAt: !1283)
!1289 = !DILocation(line: 479, column: 27, scope: !1269)
!1290 = distinct !{!1290, !1272, !1291}
!1291 = !DILocation(line: 485, column: 5, scope: !1270)
!1292 = !DILocation(line: 122, column: 56, scope: !1257, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 486, column: 5, scope: !1225)
!1294 = !DILocation(line: 122, column: 70, scope: !1257, inlinedAt: !1293)
!1295 = !DILocation(line: 124, column: 8, scope: !1257, inlinedAt: !1293)
!1296 = !DILocation(line: 124, column: 21, scope: !1257, inlinedAt: !1293)
!1297 = !DILocation(line: 124, column: 5, scope: !1257, inlinedAt: !1293)
!1298 = !DILocation(line: 124, column: 25, scope: !1257, inlinedAt: !1293)
!1299 = !DILocation(line: 487, column: 1, scope: !1225)
!1300 = distinct !DISubprogram(name: "json_append_number", scope: !3, file: !3, line: 588, type: !1301, isLocal: true, isDefinition: true, scopeLine: 590, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1303)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !40, !63, !308, !39}
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1309}
!1304 = !DILocalVariable(name: "l", arg: 1, scope: !1300, file: !3, line: 588, type: !40)
!1305 = !DILocalVariable(name: "cfg", arg: 2, scope: !1300, file: !3, line: 588, type: !63)
!1306 = !DILocalVariable(name: "json", arg: 3, scope: !1300, file: !3, line: 589, type: !308)
!1307 = !DILocalVariable(name: "lindex", arg: 4, scope: !1300, file: !3, line: 589, type: !39)
!1308 = !DILocalVariable(name: "num", scope: !1300, file: !3, line: 591, type: !399)
!1309 = !DILocalVariable(name: "len", scope: !1300, file: !3, line: 592, type: !39)
!1310 = !DILocation(line: 588, column: 43, scope: !1300)
!1311 = !DILocation(line: 588, column: 61, scope: !1300)
!1312 = !DILocation(line: 589, column: 42, scope: !1300)
!1313 = !DILocation(line: 589, column: 52, scope: !1300)
!1314 = !DILocation(line: 591, column: 18, scope: !1300)
!1315 = !DILocation(line: 591, column: 12, scope: !1300)
!1316 = !DILocation(line: 594, column: 14, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 594, column: 9)
!1318 = !{!156, !150, i64 1328}
!1319 = !DILocation(line: 594, column: 37, scope: !1317)
!1320 = !DILocation(line: 594, column: 9, scope: !1300)
!1321 = !DILocation(line: 596, column: 13, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 596, column: 13)
!1323 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 594, column: 43)
!1324 = !DILocation(line: 596, column: 24, scope: !1322)
!1325 = !DILocation(line: 596, column: 27, scope: !1322)
!1326 = !DILocation(line: 596, column: 13, scope: !1323)
!1327 = !DILocation(line: 448, column: 46, scope: !864, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 597, column: 13, scope: !1322)
!1329 = !DILocation(line: 448, column: 64, scope: !864, inlinedAt: !1328)
!1330 = !DILocation(line: 448, column: 79, scope: !864, inlinedAt: !1328)
!1331 = !DILocation(line: 448, column: 89, scope: !864, inlinedAt: !1328)
!1332 = !DILocation(line: 449, column: 47, scope: !864, inlinedAt: !1328)
!1333 = !DILocation(line: 451, column: 15, scope: !879, inlinedAt: !1328)
!1334 = !DILocation(line: 451, column: 10, scope: !879, inlinedAt: !1328)
!1335 = !DILocation(line: 451, column: 9, scope: !864, inlinedAt: !1328)
!1336 = !DILocation(line: 452, column: 9, scope: !879, inlinedAt: !1328)
!1337 = !DILocation(line: 454, column: 35, scope: !864, inlinedAt: !1328)
!1338 = !DILocation(line: 454, column: 19, scope: !864, inlinedAt: !1328)
!1339 = !DILocation(line: 453, column: 5, scope: !864, inlinedAt: !1328)
!1340 = !DILocation(line: 597, column: 13, scope: !1322)
!1341 = !DILocation(line: 598, column: 44, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 598, column: 16)
!1343 = !DILocation(line: 0, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 607, column: 13)
!1345 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 605, column: 12)
!1346 = !DILocation(line: 598, column: 16, scope: !1317)
!1347 = !DILocation(line: 601, column: 13, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 601, column: 13)
!1349 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 598, column: 50)
!1350 = !DILocation(line: 601, column: 13, scope: !1349)
!1351 = !DILocation(line: 127, column: 48, scope: !710, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 602, column: 13, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 601, column: 25)
!1354 = !DILocation(line: 127, column: 63, scope: !710, inlinedAt: !1352)
!1355 = !DILocation(line: 127, column: 70, scope: !710, inlinedAt: !1352)
!1356 = !DILocation(line: 95, column: 57, scope: !728, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 129, column: 5, scope: !710, inlinedAt: !1352)
!1358 = !DILocation(line: 95, column: 64, scope: !728, inlinedAt: !1357)
!1359 = !DILocation(line: 90, column: 49, scope: !721, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 97, column: 15, scope: !727, inlinedAt: !1357)
!1361 = !DILocation(line: 92, column: 15, scope: !721, inlinedAt: !1360)
!1362 = !DILocation(line: 92, column: 25, scope: !721, inlinedAt: !1360)
!1363 = !DILocation(line: 92, column: 32, scope: !721, inlinedAt: !1360)
!1364 = !DILocation(line: 97, column: 13, scope: !727, inlinedAt: !1357)
!1365 = !DILocation(line: 97, column: 9, scope: !728, inlinedAt: !1357)
!1366 = !DILocation(line: 98, column: 36, scope: !727, inlinedAt: !1357)
!1367 = !DILocation(line: 98, column: 9, scope: !727, inlinedAt: !1357)
!1368 = !DILocation(line: 130, column: 24, scope: !710, inlinedAt: !1352)
!1369 = !DILocation(line: 130, column: 15, scope: !710, inlinedAt: !1352)
!1370 = !DILocation(line: 130, column: 19, scope: !710, inlinedAt: !1352)
!1371 = !DILocation(line: 130, column: 5, scope: !710, inlinedAt: !1352)
!1372 = !DILocation(line: 603, column: 13, scope: !1353)
!1373 = !DILocation(line: 607, column: 13, scope: !1344)
!1374 = !DILocation(line: 607, column: 24, scope: !1344)
!1375 = !DILocation(line: 607, column: 27, scope: !1344)
!1376 = !DILocation(line: 607, column: 13, scope: !1345)
!1377 = !DILocation(line: 127, column: 48, scope: !710, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 608, column: 13, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 607, column: 39)
!1380 = !DILocation(line: 127, column: 63, scope: !710, inlinedAt: !1378)
!1381 = !DILocation(line: 127, column: 70, scope: !710, inlinedAt: !1378)
!1382 = !DILocation(line: 95, column: 57, scope: !728, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 129, column: 5, scope: !710, inlinedAt: !1378)
!1384 = !DILocation(line: 95, column: 64, scope: !728, inlinedAt: !1383)
!1385 = !DILocation(line: 90, column: 49, scope: !721, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 97, column: 15, scope: !727, inlinedAt: !1383)
!1387 = !DILocation(line: 92, column: 15, scope: !721, inlinedAt: !1386)
!1388 = !DILocation(line: 92, column: 25, scope: !721, inlinedAt: !1386)
!1389 = !DILocation(line: 92, column: 32, scope: !721, inlinedAt: !1386)
!1390 = !DILocation(line: 97, column: 13, scope: !727, inlinedAt: !1383)
!1391 = !DILocation(line: 97, column: 9, scope: !728, inlinedAt: !1383)
!1392 = !DILocation(line: 98, column: 36, scope: !727, inlinedAt: !1383)
!1393 = !DILocation(line: 98, column: 9, scope: !727, inlinedAt: !1383)
!1394 = !DILocation(line: 130, column: 24, scope: !710, inlinedAt: !1378)
!1395 = !DILocation(line: 130, column: 15, scope: !710, inlinedAt: !1378)
!1396 = !DILocation(line: 130, column: 19, scope: !710, inlinedAt: !1378)
!1397 = !DILocation(line: 130, column: 5, scope: !710, inlinedAt: !1378)
!1398 = !DILocation(line: 609, column: 13, scope: !1379)
!1399 = !DILocation(line: 95, column: 57, scope: !728, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 613, column: 5, scope: !1300)
!1401 = !DILocation(line: 95, column: 64, scope: !728, inlinedAt: !1400)
!1402 = !DILocation(line: 90, column: 49, scope: !721, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 97, column: 15, scope: !727, inlinedAt: !1400)
!1404 = !DILocation(line: 92, column: 15, scope: !721, inlinedAt: !1403)
!1405 = !DILocation(line: 92, column: 25, scope: !721, inlinedAt: !1403)
!1406 = !DILocation(line: 92, column: 32, scope: !721, inlinedAt: !1403)
!1407 = !DILocation(line: 97, column: 13, scope: !727, inlinedAt: !1400)
!1408 = !DILocation(line: 97, column: 9, scope: !728, inlinedAt: !1400)
!1409 = !DILocation(line: 98, column: 36, scope: !727, inlinedAt: !1400)
!1410 = !DILocation(line: 98, column: 9, scope: !727, inlinedAt: !1400)
!1411 = !DILocation(line: 103, column: 24, scope: !1412, inlinedAt: !1417)
!1412 = distinct !DISubprogram(name: "strbuf_empty_ptr", scope: !76, file: !76, line: 101, type: !1413, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1415)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!80, !308}
!1415 = !{!1416}
!1416 = !DILocalVariable(name: "s", arg: 1, scope: !1412, file: !76, line: 101, type: !308)
!1417 = distinct !DILocation(line: 614, column: 24, scope: !1300)
!1418 = !DILocation(line: 101, column: 48, scope: !1412, inlinedAt: !1417)
!1419 = !DILocation(line: 103, column: 15, scope: !1412, inlinedAt: !1417)
!1420 = !DILocation(line: 103, column: 19, scope: !1412, inlinedAt: !1417)
!1421 = !DILocation(line: 614, column: 58, scope: !1300)
!1422 = !{!156, !150, i64 1332}
!1423 = !DILocation(line: 614, column: 11, scope: !1300)
!1424 = !DILocation(line: 592, column: 9, scope: !1300)
!1425 = !DILocalVariable(name: "s", arg: 1, scope: !1426, file: !76, line: 106, type: !308)
!1426 = distinct !DISubprogram(name: "strbuf_extend_length", scope: !76, file: !76, line: 106, type: !729, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1427)
!1427 = !{!1425, !1428}
!1428 = !DILocalVariable(name: "len", arg: 2, scope: !1426, file: !76, line: 106, type: !39)
!1429 = !DILocation(line: 106, column: 51, scope: !1426, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 615, column: 5, scope: !1300)
!1431 = !DILocation(line: 106, column: 58, scope: !1426, inlinedAt: !1430)
!1432 = !DILocation(line: 616, column: 1, scope: !1300)
!1433 = !DILocation(line: 0, scope: !1353)
!1434 = distinct !DISubprogram(name: "json_next_token", scope: !3, file: !3, line: 1014, type: !1435, isLocal: true, isDefinition: true, scopeLine: 1015, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1437)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !467, !468}
!1437 = !{!1438, !1439, !1440, !1443}
!1438 = !DILocalVariable(name: "json", arg: 1, scope: !1434, file: !3, line: 1014, type: !467)
!1439 = !DILocalVariable(name: "token", arg: 2, scope: !1434, file: !3, line: 1014, type: !468)
!1440 = !DILocalVariable(name: "ch2token", scope: !1434, file: !3, line: 1016, type: !1441)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!1443 = !DILocalVariable(name: "ch", scope: !1434, file: !3, line: 1017, type: !39)
!1444 = !DILocalVariable(name: "utf8", scope: !1445, file: !3, line: 821, type: !1454)
!1445 = distinct !DISubprogram(name: "json_append_unicode_escape", scope: !3, file: !3, line: 819, type: !1446, isLocal: true, isDefinition: true, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1448)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!39, !467}
!1448 = !{!1449, !1444, !1450, !1451, !1452, !1453}
!1449 = !DILocalVariable(name: "json", arg: 1, scope: !1445, file: !3, line: 819, type: !467)
!1450 = !DILocalVariable(name: "codepoint", scope: !1445, file: !3, line: 822, type: !39)
!1451 = !DILocalVariable(name: "surrogate_low", scope: !1445, file: !3, line: 823, type: !39)
!1452 = !DILocalVariable(name: "len", scope: !1445, file: !3, line: 824, type: !39)
!1453 = !DILocalVariable(name: "escape_len", scope: !1445, file: !3, line: 825, type: !39)
!1454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !97)
!1455 = !DILocation(line: 821, column: 10, scope: !1445, inlinedAt: !1456)
!1456 = distinct !DILocation(line: 917, column: 21, scope: !1457, inlinedAt: !1469)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 917, column: 21)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !3, line: 916, column: 28)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 916, column: 17)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 910, column: 25)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 910, column: 13)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 902, column: 38)
!1463 = distinct !DISubprogram(name: "json_next_string_token", scope: !3, file: !3, line: 885, type: !1435, isLocal: true, isDefinition: true, scopeLine: 886, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1464)
!1464 = !{!1465, !1466, !1467, !1468}
!1465 = !DILocalVariable(name: "json", arg: 1, scope: !1463, file: !3, line: 885, type: !467)
!1466 = !DILocalVariable(name: "token", arg: 2, scope: !1463, file: !3, line: 885, type: !468)
!1467 = !DILocalVariable(name: "escape2char", scope: !1463, file: !3, line: 887, type: !80)
!1468 = !DILocalVariable(name: "ch", scope: !1463, file: !3, line: 888, type: !31)
!1469 = distinct !DILocation(line: 1055, column: 9, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 1054, column: 20)
!1471 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 1054, column: 9)
!1472 = !DILocation(line: 1014, column: 43, scope: !1434)
!1473 = !DILocation(line: 1014, column: 63, scope: !1434)
!1474 = !DILocation(line: 1016, column: 47, scope: !1434)
!1475 = !DILocation(line: 1016, column: 30, scope: !1434)
!1476 = !DILocation(line: 1021, column: 37, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 1020, column: 15)
!1478 = !DILocation(line: 1021, column: 29, scope: !1477)
!1479 = !DILocation(line: 1022, column: 23, scope: !1477)
!1480 = !DILocation(line: 1022, column: 16, scope: !1477)
!1481 = !DILocation(line: 1022, column: 21, scope: !1477)
!1482 = !DILocation(line: 1023, column: 25, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 1023, column: 13)
!1484 = !DILocation(line: 1023, column: 13, scope: !1477)
!1485 = !DILocation(line: 1025, column: 18, scope: !1477)
!1486 = distinct !{!1486, !1487, !1488}
!1487 = !DILocation(line: 1020, column: 5, scope: !1434)
!1488 = !DILocation(line: 1026, column: 5, scope: !1434)
!1489 = !DILocation(line: 1030, column: 30, scope: !1434)
!1490 = !DILocation(line: 1030, column: 38, scope: !1434)
!1491 = !DILocation(line: 1030, column: 20, scope: !1434)
!1492 = !DILocation(line: 1030, column: 12, scope: !1434)
!1493 = !DILocation(line: 1030, column: 18, scope: !1434)
!1494 = !DILocation(line: 1033, column: 9, scope: !1434)
!1495 = !DILocalVariable(name: "token", arg: 1, scope: !1496, file: !3, line: 877, type: !468)
!1496 = distinct !DISubprogram(name: "json_set_token_error", scope: !3, file: !3, line: 877, type: !1497, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1499)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !468, !467, !29}
!1499 = !{!1495, !1500, !1501}
!1500 = !DILocalVariable(name: "json", arg: 2, scope: !1496, file: !3, line: 877, type: !467)
!1501 = !DILocalVariable(name: "errtype", arg: 3, scope: !1496, file: !3, line: 878, type: !29)
!1502 = !DILocation(line: 877, column: 48, scope: !1496, inlinedAt: !1503)
!1503 = distinct !DILocation(line: 1034, column: 9, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 1033, column: 33)
!1505 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 1033, column: 9)
!1506 = !DILocation(line: 877, column: 69, scope: !1496, inlinedAt: !1503)
!1507 = !DILocation(line: 878, column: 46, scope: !1496, inlinedAt: !1503)
!1508 = !DILocation(line: 880, column: 17, scope: !1496, inlinedAt: !1503)
!1509 = !DILocation(line: 881, column: 30, scope: !1496, inlinedAt: !1503)
!1510 = !DILocation(line: 881, column: 20, scope: !1496, inlinedAt: !1503)
!1511 = !DILocation(line: 881, column: 18, scope: !1496, inlinedAt: !1503)
!1512 = !DILocation(line: 882, column: 18, scope: !1496, inlinedAt: !1503)
!1513 = !DILocation(line: 882, column: 25, scope: !1496, inlinedAt: !1503)
!1514 = !DILocation(line: 1035, column: 9, scope: !1504)
!1515 = !DILocation(line: 1044, column: 18, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 1043, column: 35)
!1517 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 1043, column: 9)
!1518 = !DILocation(line: 1045, column: 9, scope: !1516)
!1519 = !DILocation(line: 1054, column: 9, scope: !1434)
!1520 = !DILocation(line: 885, column: 50, scope: !1463, inlinedAt: !1469)
!1521 = !DILocation(line: 885, column: 70, scope: !1463, inlinedAt: !1469)
!1522 = !DILocation(line: 887, column: 11, scope: !1463, inlinedAt: !1469)
!1523 = !DILocation(line: 891, column: 5, scope: !1463, inlinedAt: !1469)
!1524 = !DILocation(line: 894, column: 14, scope: !1463, inlinedAt: !1469)
!1525 = !DILocation(line: 900, column: 24, scope: !1463, inlinedAt: !1469)
!1526 = !DILocation(line: 78, column: 43, scope: !342, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 900, column: 5, scope: !1463, inlinedAt: !1469)
!1528 = !DILocation(line: 80, column: 8, scope: !342, inlinedAt: !1527)
!1529 = !DILocation(line: 80, column: 15, scope: !342, inlinedAt: !1527)
!1530 = !DILocation(line: 902, column: 5, scope: !1463, inlinedAt: !1469)
!1531 = !DILocation(line: 902, column: 18, scope: !1463, inlinedAt: !1469)
!1532 = !DILocation(line: 888, column: 10, scope: !1463, inlinedAt: !1469)
!1533 = !DILocation(line: 0, scope: !1463, inlinedAt: !1469)
!1534 = !DILocation(line: 877, column: 48, scope: !1496, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 905, column: 13, scope: !1536, inlinedAt: !1469)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 903, column: 18)
!1537 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 903, column: 13)
!1538 = !DILocation(line: 877, column: 69, scope: !1496, inlinedAt: !1535)
!1539 = !DILocation(line: 878, column: 46, scope: !1496, inlinedAt: !1535)
!1540 = !DILocation(line: 880, column: 17, scope: !1496, inlinedAt: !1535)
!1541 = !DILocation(line: 881, column: 38, scope: !1496, inlinedAt: !1535)
!1542 = !DILocation(line: 881, column: 30, scope: !1496, inlinedAt: !1535)
!1543 = !DILocation(line: 881, column: 20, scope: !1496, inlinedAt: !1535)
!1544 = !DILocation(line: 881, column: 18, scope: !1496, inlinedAt: !1535)
!1545 = !DILocation(line: 882, column: 18, scope: !1496, inlinedAt: !1535)
!1546 = !DILocation(line: 882, column: 25, scope: !1496, inlinedAt: !1535)
!1547 = !DILocation(line: 906, column: 13, scope: !1536, inlinedAt: !1469)
!1548 = !DILocation(line: 912, column: 30, scope: !1460, inlinedAt: !1469)
!1549 = !DILocation(line: 912, column: 18, scope: !1460, inlinedAt: !1469)
!1550 = !DILocation(line: 915, column: 18, scope: !1460, inlinedAt: !1469)
!1551 = !DILocation(line: 916, column: 17, scope: !1460, inlinedAt: !1469)
!1552 = !DILocation(line: 819, column: 53, scope: !1445, inlinedAt: !1456)
!1553 = !DILocation(line: 821, column: 5, scope: !1445, inlinedAt: !1456)
!1554 = !DILocation(line: 825, column: 9, scope: !1445, inlinedAt: !1456)
!1555 = !DILocation(line: 828, column: 39, scope: !1445, inlinedAt: !1456)
!1556 = !DILocalVariable(name: "hex", arg: 1, scope: !1557, file: !3, line: 752, type: !29)
!1557 = distinct !DISubprogram(name: "decode_hex4", scope: !3, file: !3, line: 752, type: !1558, isLocal: true, isDefinition: true, scopeLine: 753, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1560)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!39, !29}
!1560 = !{!1556, !1561, !1563}
!1561 = !DILocalVariable(name: "digit", scope: !1557, file: !3, line: 754, type: !1562)
!1562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !97)
!1563 = !DILocalVariable(name: "i", scope: !1557, file: !3, line: 755, type: !39)
!1564 = !DILocation(line: 752, column: 36, scope: !1557, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 828, column: 17, scope: !1445, inlinedAt: !1456)
!1566 = !DILocation(line: 755, column: 9, scope: !1557, inlinedAt: !1565)
!1567 = !DILocation(line: 761, column: 33, scope: !1568, inlinedAt: !1565)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !3, line: 760, column: 29)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !3, line: 760, column: 5)
!1570 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 760, column: 5)
!1571 = !DILocalVariable(name: "hex", arg: 1, scope: !1572, file: !3, line: 739, type: !31)
!1572 = distinct !DISubprogram(name: "hexdigit2int", scope: !3, file: !3, line: 739, type: !1573, isLocal: true, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1575)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!39, !31}
!1575 = !{!1571}
!1576 = !DILocation(line: 739, column: 30, scope: !1572, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 761, column: 20, scope: !1568, inlinedAt: !1565)
!1578 = !DILocation(line: 741, column: 21, scope: !1579, inlinedAt: !1577)
!1579 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 741, column: 9)
!1580 = !DILocation(line: 745, column: 9, scope: !1572, inlinedAt: !1577)
!1581 = !DILocation(line: 746, column: 20, scope: !1582, inlinedAt: !1577)
!1582 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 746, column: 9)
!1583 = !DILocation(line: 0, scope: !1568, inlinedAt: !1565)
!1584 = !DILocation(line: 754, column: 9, scope: !1557, inlinedAt: !1565)
!1585 = !DILocation(line: 767, column: 22, scope: !1557, inlinedAt: !1565)
!1586 = !DILocation(line: 768, column: 22, scope: !1557, inlinedAt: !1565)
!1587 = !DILocation(line: 767, column: 29, scope: !1557, inlinedAt: !1565)
!1588 = !DILocation(line: 769, column: 22, scope: !1557, inlinedAt: !1565)
!1589 = !DILocation(line: 768, column: 28, scope: !1557, inlinedAt: !1565)
!1590 = !DILocation(line: 769, column: 28, scope: !1557, inlinedAt: !1565)
!1591 = !DILocation(line: 822, column: 9, scope: !1445, inlinedAt: !1456)
!1592 = !DILocation(line: 829, column: 19, scope: !1593, inlinedAt: !1456)
!1593 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 829, column: 9)
!1594 = !DILocation(line: 829, column: 9, scope: !1445, inlinedAt: !1456)
!1595 = !DILocation(line: 838, column: 20, scope: !1596, inlinedAt: !1456)
!1596 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 838, column: 9)
!1597 = !DILocation(line: 838, column: 30, scope: !1596, inlinedAt: !1456)
!1598 = !DILocation(line: 838, column: 9, scope: !1445, inlinedAt: !1456)
!1599 = !DILocation(line: 840, column: 23, scope: !1600, inlinedAt: !1456)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 840, column: 13)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 838, column: 41)
!1602 = !DILocation(line: 840, column: 13, scope: !1601, inlinedAt: !1456)
!1603 = !DILocation(line: 844, column: 25, scope: !1604, inlinedAt: !1456)
!1604 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 844, column: 13)
!1605 = !DILocation(line: 844, column: 13, scope: !1604, inlinedAt: !1456)
!1606 = !DILocation(line: 844, column: 39, scope: !1604, inlinedAt: !1456)
!1607 = !DILocation(line: 844, column: 47, scope: !1604, inlinedAt: !1456)
!1608 = !DILocation(line: 845, column: 38, scope: !1604, inlinedAt: !1456)
!1609 = !DILocation(line: 845, column: 13, scope: !1604, inlinedAt: !1456)
!1610 = !DILocation(line: 845, column: 43, scope: !1604, inlinedAt: !1456)
!1611 = !DILocation(line: 844, column: 13, scope: !1601, inlinedAt: !1456)
!1612 = !DILocation(line: 850, column: 51, scope: !1601, inlinedAt: !1456)
!1613 = !DILocation(line: 752, column: 36, scope: !1557, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 850, column: 25, scope: !1601, inlinedAt: !1456)
!1615 = !DILocation(line: 755, column: 9, scope: !1557, inlinedAt: !1614)
!1616 = !DILocation(line: 761, column: 33, scope: !1568, inlinedAt: !1614)
!1617 = !DILocation(line: 739, column: 30, scope: !1572, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 761, column: 20, scope: !1568, inlinedAt: !1614)
!1619 = !DILocation(line: 741, column: 21, scope: !1579, inlinedAt: !1618)
!1620 = !DILocation(line: 745, column: 9, scope: !1572, inlinedAt: !1618)
!1621 = !DILocation(line: 746, column: 20, scope: !1582, inlinedAt: !1618)
!1622 = !DILocation(line: 0, scope: !1568, inlinedAt: !1614)
!1623 = !DILocation(line: 754, column: 9, scope: !1557, inlinedAt: !1614)
!1624 = !DILocation(line: 767, column: 22, scope: !1557, inlinedAt: !1614)
!1625 = !DILocation(line: 768, column: 22, scope: !1557, inlinedAt: !1614)
!1626 = !DILocation(line: 767, column: 29, scope: !1557, inlinedAt: !1614)
!1627 = !DILocation(line: 769, column: 22, scope: !1557, inlinedAt: !1614)
!1628 = !DILocation(line: 768, column: 28, scope: !1557, inlinedAt: !1614)
!1629 = !DILocation(line: 769, column: 28, scope: !1557, inlinedAt: !1614)
!1630 = !DILocation(line: 823, column: 9, scope: !1445, inlinedAt: !1456)
!1631 = !DILocation(line: 851, column: 13, scope: !1601, inlinedAt: !1456)
!1632 = !DILocation(line: 859, column: 41, scope: !1601, inlinedAt: !1456)
!1633 = !DILocation(line: 860, column: 23, scope: !1601, inlinedAt: !1456)
!1634 = !DILocation(line: 861, column: 32, scope: !1601, inlinedAt: !1456)
!1635 = !DILocation(line: 861, column: 49, scope: !1601, inlinedAt: !1456)
!1636 = !DILocation(line: 863, column: 5, scope: !1601, inlinedAt: !1456)
!1637 = !DILocation(line: 0, scope: !1445, inlinedAt: !1456)
!1638 = !DILocalVariable(name: "utf8", arg: 1, scope: !1639, file: !3, line: 775, type: !80)
!1639 = distinct !DISubprogram(name: "codepoint_to_utf8", scope: !3, file: !3, line: 775, type: !1640, isLocal: true, isDefinition: true, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1642)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!39, !80, !39}
!1642 = !{!1638, !1643}
!1643 = !DILocalVariable(name: "codepoint", arg: 2, scope: !1639, file: !3, line: 775, type: !39)
!1644 = !DILocation(line: 775, column: 36, scope: !1639, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 866, column: 11, scope: !1445, inlinedAt: !1456)
!1646 = !DILocation(line: 775, column: 46, scope: !1639, inlinedAt: !1645)
!1647 = !DILocation(line: 778, column: 19, scope: !1648, inlinedAt: !1645)
!1648 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 778, column: 9)
!1649 = !DILocation(line: 778, column: 9, scope: !1639, inlinedAt: !1645)
!1650 = !DILocation(line: 779, column: 19, scope: !1651, inlinedAt: !1645)
!1651 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 778, column: 28)
!1652 = !DILocation(line: 779, column: 17, scope: !1651, inlinedAt: !1645)
!1653 = !DILocation(line: 780, column: 9, scope: !1651, inlinedAt: !1645)
!1654 = !DILocation(line: 784, column: 19, scope: !1655, inlinedAt: !1645)
!1655 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 784, column: 9)
!1656 = !DILocation(line: 784, column: 9, scope: !1639, inlinedAt: !1645)
!1657 = !DILocation(line: 785, column: 30, scope: !1658, inlinedAt: !1645)
!1658 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 784, column: 29)
!1659 = !DILocation(line: 785, column: 19, scope: !1658, inlinedAt: !1645)
!1660 = !DILocation(line: 785, column: 17, scope: !1658, inlinedAt: !1645)
!1661 = !DILocation(line: 786, column: 19, scope: !1658, inlinedAt: !1645)
!1662 = !DILocation(line: 786, column: 17, scope: !1658, inlinedAt: !1645)
!1663 = !DILocation(line: 787, column: 9, scope: !1658, inlinedAt: !1645)
!1664 = !DILocation(line: 791, column: 19, scope: !1665, inlinedAt: !1645)
!1665 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 791, column: 9)
!1666 = !DILocation(line: 791, column: 9, scope: !1639, inlinedAt: !1645)
!1667 = !DILocation(line: 792, column: 30, scope: !1668, inlinedAt: !1645)
!1668 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 791, column: 30)
!1669 = !DILocation(line: 792, column: 19, scope: !1668, inlinedAt: !1645)
!1670 = !DILocation(line: 792, column: 17, scope: !1668, inlinedAt: !1645)
!1671 = !DILocation(line: 793, column: 31, scope: !1668, inlinedAt: !1645)
!1672 = !DILocation(line: 793, column: 19, scope: !1668, inlinedAt: !1645)
!1673 = !DILocation(line: 793, column: 17, scope: !1668, inlinedAt: !1645)
!1674 = !DILocation(line: 794, column: 19, scope: !1668, inlinedAt: !1645)
!1675 = !DILocation(line: 794, column: 17, scope: !1668, inlinedAt: !1645)
!1676 = !DILocation(line: 795, column: 9, scope: !1668, inlinedAt: !1645)
!1677 = !DILocation(line: 799, column: 19, scope: !1678, inlinedAt: !1645)
!1678 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 799, column: 9)
!1679 = !DILocation(line: 799, column: 9, scope: !1639, inlinedAt: !1645)
!1680 = !DILocation(line: 800, column: 30, scope: !1681, inlinedAt: !1645)
!1681 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 799, column: 32)
!1682 = !DILocation(line: 800, column: 19, scope: !1681, inlinedAt: !1645)
!1683 = !DILocation(line: 800, column: 17, scope: !1681, inlinedAt: !1645)
!1684 = !DILocation(line: 801, column: 31, scope: !1681, inlinedAt: !1645)
!1685 = !DILocation(line: 801, column: 19, scope: !1681, inlinedAt: !1645)
!1686 = !DILocation(line: 801, column: 17, scope: !1681, inlinedAt: !1645)
!1687 = !DILocation(line: 802, column: 31, scope: !1681, inlinedAt: !1645)
!1688 = !DILocation(line: 802, column: 19, scope: !1681, inlinedAt: !1645)
!1689 = !DILocation(line: 802, column: 17, scope: !1681, inlinedAt: !1645)
!1690 = !DILocation(line: 803, column: 19, scope: !1681, inlinedAt: !1645)
!1691 = !DILocation(line: 803, column: 17, scope: !1681, inlinedAt: !1645)
!1692 = !DILocation(line: 804, column: 9, scope: !1681, inlinedAt: !1645)
!1693 = !DILocation(line: 871, column: 36, scope: !1445, inlinedAt: !1456)
!1694 = !DILocalVariable(name: "s", arg: 1, scope: !1695, file: !76, line: 134, type: !308)
!1695 = distinct !DISubprogram(name: "strbuf_append_mem_unsafe", scope: !76, file: !76, line: 134, type: !711, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1696)
!1696 = !{!1694, !1697, !1698}
!1697 = !DILocalVariable(name: "c", arg: 2, scope: !1695, file: !76, line: 134, type: !29)
!1698 = !DILocalVariable(name: "len", arg: 3, scope: !1695, file: !76, line: 134, type: !39)
!1699 = !DILocation(line: 134, column: 55, scope: !1695, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 871, column: 5, scope: !1445, inlinedAt: !1456)
!1701 = !DILocation(line: 134, column: 70, scope: !1695, inlinedAt: !1700)
!1702 = !DILocation(line: 136, column: 15, scope: !1695, inlinedAt: !1700)
!1703 = !DILocation(line: 136, column: 24, scope: !1695, inlinedAt: !1700)
!1704 = !DILocation(line: 136, column: 19, scope: !1695, inlinedAt: !1700)
!1705 = !DILocation(line: 136, column: 35, scope: !1695, inlinedAt: !1700)
!1706 = !DILocation(line: 136, column: 5, scope: !1695, inlinedAt: !1700)
!1707 = !DILocation(line: 137, column: 15, scope: !1695, inlinedAt: !1700)
!1708 = !DILocation(line: 872, column: 15, scope: !1445, inlinedAt: !1456)
!1709 = !DILocation(line: 875, column: 1, scope: !1445, inlinedAt: !1456)
!1710 = !DILocation(line: 917, column: 21, scope: !1458, inlinedAt: !1469)
!1711 = !DILocation(line: 877, column: 48, scope: !1496, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 920, column: 17, scope: !1458, inlinedAt: !1469)
!1713 = !DILocation(line: 877, column: 69, scope: !1496, inlinedAt: !1712)
!1714 = !DILocation(line: 878, column: 46, scope: !1496, inlinedAt: !1712)
!1715 = !DILocation(line: 880, column: 17, scope: !1496, inlinedAt: !1712)
!1716 = !DILocation(line: 881, column: 38, scope: !1496, inlinedAt: !1712)
!1717 = !DILocation(line: 881, column: 30, scope: !1496, inlinedAt: !1712)
!1718 = !DILocation(line: 881, column: 20, scope: !1496, inlinedAt: !1712)
!1719 = !DILocation(line: 881, column: 18, scope: !1496, inlinedAt: !1712)
!1720 = !DILocation(line: 882, column: 18, scope: !1496, inlinedAt: !1712)
!1721 = !DILocation(line: 882, column: 25, scope: !1496, inlinedAt: !1712)
!1722 = !DILocation(line: 922, column: 17, scope: !1458, inlinedAt: !1469)
!1723 = !DILocation(line: 877, column: 48, scope: !1496, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 925, column: 17, scope: !1725, inlinedAt: !1469)
!1725 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 924, column: 22)
!1726 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 924, column: 17)
!1727 = !DILocation(line: 877, column: 69, scope: !1496, inlinedAt: !1724)
!1728 = !DILocation(line: 878, column: 46, scope: !1496, inlinedAt: !1724)
!1729 = !DILocation(line: 880, column: 17, scope: !1496, inlinedAt: !1724)
!1730 = !DILocation(line: 881, column: 38, scope: !1496, inlinedAt: !1724)
!1731 = !DILocation(line: 881, column: 30, scope: !1496, inlinedAt: !1724)
!1732 = !DILocation(line: 881, column: 20, scope: !1496, inlinedAt: !1724)
!1733 = !DILocation(line: 881, column: 18, scope: !1496, inlinedAt: !1724)
!1734 = !DILocation(line: 882, column: 18, scope: !1496, inlinedAt: !1724)
!1735 = !DILocation(line: 882, column: 25, scope: !1496, inlinedAt: !1724)
!1736 = !DILocation(line: 926, column: 17, scope: !1725, inlinedAt: !1469)
!1737 = !DILocation(line: 930, column: 22, scope: !1460, inlinedAt: !1469)
!1738 = !DILocation(line: 931, column: 9, scope: !1460, inlinedAt: !1469)
!1739 = !DILocation(line: 934, column: 41, scope: !1462, inlinedAt: !1469)
!1740 = !DILocation(line: 122, column: 56, scope: !1257, inlinedAt: !1741)
!1741 = distinct !DILocation(line: 934, column: 9, scope: !1462, inlinedAt: !1469)
!1742 = !DILocation(line: 122, column: 70, scope: !1257, inlinedAt: !1741)
!1743 = !DILocation(line: 124, column: 8, scope: !1257, inlinedAt: !1741)
!1744 = !DILocation(line: 124, column: 15, scope: !1257, inlinedAt: !1741)
!1745 = !DILocation(line: 124, column: 21, scope: !1257, inlinedAt: !1741)
!1746 = !DILocation(line: 124, column: 5, scope: !1257, inlinedAt: !1741)
!1747 = !DILocation(line: 124, column: 25, scope: !1257, inlinedAt: !1741)
!1748 = !DILocation(line: 935, column: 18, scope: !1462, inlinedAt: !1469)
!1749 = distinct !{!1749, !1750, !1751}
!1750 = !DILocation(line: 902, column: 5, scope: !1463)
!1751 = !DILocation(line: 936, column: 5, scope: !1463)
!1752 = !DILocation(line: 937, column: 14, scope: !1463, inlinedAt: !1469)
!1753 = !DILocation(line: 939, column: 30, scope: !1463, inlinedAt: !1469)
!1754 = !DILocalVariable(name: "s", arg: 1, scope: !1755, file: !76, line: 140, type: !308)
!1755 = distinct !DISubprogram(name: "strbuf_ensure_null", scope: !76, file: !76, line: 140, type: !343, isLocal: true, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1756)
!1756 = !{!1754}
!1757 = !DILocation(line: 140, column: 49, scope: !1755, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 939, column: 5, scope: !1463, inlinedAt: !1469)
!1759 = !DILocation(line: 142, column: 8, scope: !1755, inlinedAt: !1758)
!1760 = !DILocation(line: 142, column: 15, scope: !1755, inlinedAt: !1758)
!1761 = !DILocation(line: 142, column: 5, scope: !1755, inlinedAt: !1758)
!1762 = !DILocation(line: 142, column: 23, scope: !1755, inlinedAt: !1758)
!1763 = !DILocation(line: 941, column: 17, scope: !1463, inlinedAt: !1469)
!1764 = !DILocation(line: 942, column: 47, scope: !1463, inlinedAt: !1469)
!1765 = !DILocation(line: 942, column: 60, scope: !1463, inlinedAt: !1469)
!1766 = !DILocation(line: 145, column: 45, scope: !354, inlinedAt: !1767)
!1767 = distinct !DILocation(line: 942, column: 27, scope: !1463, inlinedAt: !1469)
!1768 = !DILocation(line: 145, column: 53, scope: !354, inlinedAt: !1767)
!1769 = !DILocation(line: 148, column: 19, scope: !362, inlinedAt: !1767)
!1770 = !DILocation(line: 148, column: 14, scope: !362, inlinedAt: !1767)
!1771 = !DILocation(line: 150, column: 15, scope: !354, inlinedAt: !1767)
!1772 = !DILocation(line: 942, column: 18, scope: !1463, inlinedAt: !1469)
!1773 = !DILocation(line: 942, column: 25, scope: !1463, inlinedAt: !1469)
!1774 = !DILocation(line: 943, column: 1, scope: !1463, inlinedAt: !1469)
!1775 = !DILocation(line: 1057, column: 40, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 1057, column: 16)
!1777 = !DILocation(line: 1058, column: 25, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 1058, column: 13)
!1779 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 1057, column: 55)
!1780 = !{!156, !150, i64 1340}
!1781 = !DILocation(line: 1058, column: 14, scope: !1778)
!1782 = !DILocation(line: 1058, column: 48, scope: !1778)
!1783 = !DILocalVariable(name: "json", arg: 1, scope: !1784, file: !3, line: 960, type: !467)
!1784 = distinct !DISubprogram(name: "json_is_invalid_number", scope: !3, file: !3, line: 960, type: !1446, isLocal: true, isDefinition: true, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1785)
!1785 = !{!1783, !1786, !1787}
!1786 = !DILocalVariable(name: "p", scope: !1784, file: !3, line: 962, type: !29)
!1787 = !DILocalVariable(name: "ch2", scope: !1788, file: !3, line: 974, type: !39)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 973, column: 20)
!1789 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 973, column: 9)
!1790 = !DILocation(line: 960, column: 49, scope: !1784, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 1058, column: 51, scope: !1778)
!1792 = !DILocation(line: 962, column: 17, scope: !1784, inlinedAt: !1791)
!1793 = !DILocation(line: 965, column: 9, scope: !1794, inlinedAt: !1791)
!1794 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 965, column: 9)
!1795 = !DILocation(line: 965, column: 9, scope: !1784, inlinedAt: !1791)
!1796 = !DILocation(line: 970, column: 10, scope: !1797, inlinedAt: !1791)
!1797 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 969, column: 9)
!1798 = !DILocation(line: 973, column: 9, scope: !1789, inlinedAt: !1791)
!1799 = !DILocation(line: 970, column: 9, scope: !1797, inlinedAt: !1791)
!1800 = !DILocation(line: 0, scope: !1784, inlinedAt: !1791)
!1801 = !DILocation(line: 973, column: 12, scope: !1789, inlinedAt: !1791)
!1802 = !DILocation(line: 973, column: 9, scope: !1784, inlinedAt: !1791)
!1803 = !DILocation(line: 974, column: 23, scope: !1788, inlinedAt: !1791)
!1804 = !DILocation(line: 974, column: 19, scope: !1788, inlinedAt: !1791)
!1805 = !DILocation(line: 976, column: 18, scope: !1806, inlinedAt: !1791)
!1806 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 976, column: 13)
!1807 = !DILocation(line: 976, column: 26, scope: !1806, inlinedAt: !1791)
!1808 = !DILocation(line: 977, column: 25, scope: !1806, inlinedAt: !1791)
!1809 = !DILocation(line: 976, column: 33, scope: !1806, inlinedAt: !1791)
!1810 = !DILocation(line: 1058, column: 13, scope: !1779)
!1811 = !DILocation(line: 981, column: 19, scope: !1812, inlinedAt: !1791)
!1812 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 981, column: 16)
!1813 = !DILocation(line: 981, column: 16, scope: !1789, inlinedAt: !1791)
!1814 = !DILocation(line: 986, column: 10, scope: !1815, inlinedAt: !1791)
!1815 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 986, column: 9)
!1816 = !DILocation(line: 986, column: 9, scope: !1784, inlinedAt: !1791)
!1817 = !DILocation(line: 988, column: 10, scope: !1818, inlinedAt: !1791)
!1818 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 988, column: 9)
!1819 = !DILocation(line: 877, column: 48, scope: !1496, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 1059, column: 13, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 1058, column: 81)
!1822 = !DILocation(line: 877, column: 69, scope: !1496, inlinedAt: !1820)
!1823 = !DILocation(line: 878, column: 46, scope: !1496, inlinedAt: !1820)
!1824 = !DILocation(line: 880, column: 17, scope: !1496, inlinedAt: !1820)
!1825 = !DILocation(line: 881, column: 30, scope: !1496, inlinedAt: !1820)
!1826 = !DILocation(line: 881, column: 20, scope: !1496, inlinedAt: !1820)
!1827 = !DILocation(line: 881, column: 18, scope: !1496, inlinedAt: !1820)
!1828 = !DILocation(line: 882, column: 18, scope: !1496, inlinedAt: !1820)
!1829 = !DILocation(line: 882, column: 25, scope: !1496, inlinedAt: !1820)
!1830 = !DILocation(line: 1060, column: 13, scope: !1821)
!1831 = !DILocalVariable(name: "json", arg: 1, scope: !1832, file: !3, line: 996, type: !467)
!1832 = distinct !DISubprogram(name: "json_next_number_token", scope: !3, file: !3, line: 996, type: !1435, isLocal: true, isDefinition: true, scopeLine: 997, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1833)
!1833 = !{!1831, !1834, !1835}
!1834 = !DILocalVariable(name: "token", arg: 2, scope: !1832, file: !3, line: 996, type: !468)
!1835 = !DILocalVariable(name: "endptr", scope: !1832, file: !3, line: 998, type: !80)
!1836 = !DILocation(line: 996, column: 50, scope: !1832, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 1062, column: 9, scope: !1779)
!1838 = !DILocation(line: 996, column: 70, scope: !1832, inlinedAt: !1837)
!1839 = !DILocation(line: 998, column: 5, scope: !1832, inlinedAt: !1837)
!1840 = !DILocation(line: 1000, column: 17, scope: !1832, inlinedAt: !1837)
!1841 = !DILocation(line: 998, column: 11, scope: !1832, inlinedAt: !1837)
!1842 = !DILocation(line: 1001, column: 27, scope: !1832, inlinedAt: !1837)
!1843 = !DILocation(line: 1001, column: 12, scope: !1832, inlinedAt: !1837)
!1844 = !DILocation(line: 1001, column: 18, scope: !1832, inlinedAt: !1837)
!1845 = !DILocation(line: 1001, column: 25, scope: !1832, inlinedAt: !1837)
!1846 = !DILocation(line: 1002, column: 15, scope: !1847, inlinedAt: !1837)
!1847 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 1002, column: 9)
!1848 = !DILocation(line: 1002, column: 22, scope: !1847, inlinedAt: !1837)
!1849 = !DILocation(line: 1002, column: 19, scope: !1847, inlinedAt: !1837)
!1850 = !DILocation(line: 1002, column: 9, scope: !1832, inlinedAt: !1837)
!1851 = !DILocation(line: 877, column: 48, scope: !1496, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 1003, column: 9, scope: !1847, inlinedAt: !1837)
!1853 = !DILocation(line: 877, column: 69, scope: !1496, inlinedAt: !1852)
!1854 = !DILocation(line: 878, column: 46, scope: !1496, inlinedAt: !1852)
!1855 = !DILocation(line: 880, column: 17, scope: !1496, inlinedAt: !1852)
!1856 = !DILocation(line: 881, column: 38, scope: !1496, inlinedAt: !1852)
!1857 = !DILocation(line: 881, column: 30, scope: !1496, inlinedAt: !1852)
!1858 = !DILocation(line: 881, column: 20, scope: !1496, inlinedAt: !1852)
!1859 = !DILocation(line: 881, column: 18, scope: !1496, inlinedAt: !1852)
!1860 = !DILocation(line: 882, column: 18, scope: !1496, inlinedAt: !1852)
!1861 = !DILocation(line: 882, column: 25, scope: !1496, inlinedAt: !1852)
!1862 = !DILocation(line: 1003, column: 9, scope: !1847, inlinedAt: !1837)
!1863 = !DILocation(line: 1005, column: 19, scope: !1847, inlinedAt: !1837)
!1864 = !DILocation(line: 1008, column: 1, scope: !1832, inlinedAt: !1837)
!1865 = !DILocation(line: 1063, column: 9, scope: !1779)
!1866 = !DILocation(line: 1064, column: 17, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 1064, column: 16)
!1868 = !DILocation(line: 1064, column: 16, scope: !1776)
!1869 = !DILocation(line: 1065, column: 21, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 1064, column: 48)
!1871 = !DILocation(line: 1066, column: 16, scope: !1870)
!1872 = !DILocation(line: 1066, column: 22, scope: !1870)
!1873 = !DILocation(line: 1066, column: 30, scope: !1870)
!1874 = !DILocation(line: 1067, column: 19, scope: !1870)
!1875 = !DILocation(line: 1068, column: 9, scope: !1870)
!1876 = !DILocation(line: 1069, column: 31, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 1069, column: 16)
!1878 = !DILocation(line: 1069, column: 17, scope: !1877)
!1879 = !DILocation(line: 1069, column: 16, scope: !1867)
!1880 = !DILocation(line: 1070, column: 21, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 1069, column: 49)
!1882 = !DILocation(line: 1071, column: 16, scope: !1881)
!1883 = !DILocation(line: 1071, column: 22, scope: !1881)
!1884 = !DILocation(line: 1071, column: 30, scope: !1881)
!1885 = !DILocation(line: 1072, column: 19, scope: !1881)
!1886 = !DILocation(line: 1073, column: 9, scope: !1881)
!1887 = !DILocation(line: 1074, column: 31, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1877, file: !3, line: 1074, column: 16)
!1889 = !DILocation(line: 1074, column: 17, scope: !1888)
!1890 = !DILocation(line: 1074, column: 16, scope: !1877)
!1891 = !DILocation(line: 1075, column: 21, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 1074, column: 48)
!1893 = !DILocation(line: 1076, column: 19, scope: !1892)
!1894 = !DILocation(line: 1077, column: 9, scope: !1892)
!1895 = !DILocation(line: 1078, column: 22, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 1078, column: 16)
!1897 = !DILocation(line: 1078, column: 27, scope: !1896)
!1898 = !DILocation(line: 1078, column: 16, scope: !1896)
!1899 = !DILocation(line: 1078, column: 50, scope: !1896)
!1900 = !DILocation(line: 881, column: 26, scope: !1496, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 1090, column: 5, scope: !1434)
!1902 = !DILocation(line: 960, column: 49, scope: !1784, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 1079, column: 16, scope: !1896)
!1904 = !DILocation(line: 962, column: 27, scope: !1784, inlinedAt: !1903)
!1905 = !DILocation(line: 962, column: 17, scope: !1784, inlinedAt: !1903)
!1906 = !DILocation(line: 965, column: 9, scope: !1794, inlinedAt: !1903)
!1907 = !DILocation(line: 965, column: 9, scope: !1784, inlinedAt: !1903)
!1908 = !DILocation(line: 970, column: 10, scope: !1797, inlinedAt: !1903)
!1909 = !DILocation(line: 973, column: 9, scope: !1789, inlinedAt: !1903)
!1910 = !DILocation(line: 970, column: 9, scope: !1797, inlinedAt: !1903)
!1911 = !DILocation(line: 0, scope: !1784, inlinedAt: !1903)
!1912 = !DILocation(line: 973, column: 12, scope: !1789, inlinedAt: !1903)
!1913 = !DILocation(line: 973, column: 9, scope: !1784, inlinedAt: !1903)
!1914 = !DILocation(line: 974, column: 23, scope: !1788, inlinedAt: !1903)
!1915 = !DILocation(line: 974, column: 19, scope: !1788, inlinedAt: !1903)
!1916 = !DILocation(line: 976, column: 18, scope: !1806, inlinedAt: !1903)
!1917 = !DILocation(line: 976, column: 26, scope: !1806, inlinedAt: !1903)
!1918 = !DILocation(line: 977, column: 25, scope: !1806, inlinedAt: !1903)
!1919 = !DILocation(line: 976, column: 33, scope: !1806, inlinedAt: !1903)
!1920 = !DILocation(line: 1078, column: 16, scope: !1888)
!1921 = !DILocation(line: 981, column: 19, scope: !1812, inlinedAt: !1903)
!1922 = !DILocation(line: 981, column: 16, scope: !1789, inlinedAt: !1903)
!1923 = !DILocation(line: 986, column: 10, scope: !1815, inlinedAt: !1903)
!1924 = !DILocation(line: 986, column: 9, scope: !1784, inlinedAt: !1903)
!1925 = !DILocation(line: 988, column: 10, scope: !1818, inlinedAt: !1903)
!1926 = !DILocation(line: 996, column: 50, scope: !1832, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 1085, column: 9, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1896, file: !3, line: 1079, column: 46)
!1929 = !DILocation(line: 996, column: 70, scope: !1832, inlinedAt: !1927)
!1930 = !DILocation(line: 998, column: 5, scope: !1832, inlinedAt: !1927)
!1931 = !DILocation(line: 1000, column: 17, scope: !1832, inlinedAt: !1927)
!1932 = !DILocation(line: 998, column: 11, scope: !1832, inlinedAt: !1927)
!1933 = !DILocation(line: 1001, column: 27, scope: !1832, inlinedAt: !1927)
!1934 = !DILocation(line: 1001, column: 12, scope: !1832, inlinedAt: !1927)
!1935 = !DILocation(line: 1001, column: 18, scope: !1832, inlinedAt: !1927)
!1936 = !DILocation(line: 1001, column: 25, scope: !1832, inlinedAt: !1927)
!1937 = !DILocation(line: 1002, column: 15, scope: !1847, inlinedAt: !1927)
!1938 = !DILocation(line: 1002, column: 22, scope: !1847, inlinedAt: !1927)
!1939 = !DILocation(line: 1002, column: 19, scope: !1847, inlinedAt: !1927)
!1940 = !DILocation(line: 1002, column: 9, scope: !1832, inlinedAt: !1927)
!1941 = !DILocation(line: 877, column: 48, scope: !1496, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 1003, column: 9, scope: !1847, inlinedAt: !1927)
!1943 = !DILocation(line: 877, column: 69, scope: !1496, inlinedAt: !1942)
!1944 = !DILocation(line: 878, column: 46, scope: !1496, inlinedAt: !1942)
!1945 = !DILocation(line: 880, column: 17, scope: !1496, inlinedAt: !1942)
!1946 = !DILocation(line: 881, column: 38, scope: !1496, inlinedAt: !1942)
!1947 = !DILocation(line: 881, column: 30, scope: !1496, inlinedAt: !1942)
!1948 = !DILocation(line: 881, column: 20, scope: !1496, inlinedAt: !1942)
!1949 = !DILocation(line: 881, column: 18, scope: !1496, inlinedAt: !1942)
!1950 = !DILocation(line: 882, column: 18, scope: !1496, inlinedAt: !1942)
!1951 = !DILocation(line: 882, column: 25, scope: !1496, inlinedAt: !1942)
!1952 = !DILocation(line: 1003, column: 9, scope: !1847, inlinedAt: !1927)
!1953 = !DILocation(line: 1005, column: 19, scope: !1847, inlinedAt: !1927)
!1954 = !DILocation(line: 1008, column: 1, scope: !1832, inlinedAt: !1927)
!1955 = !DILocation(line: 1086, column: 9, scope: !1928)
!1956 = !DILocation(line: 877, column: 48, scope: !1496, inlinedAt: !1901)
!1957 = !DILocation(line: 877, column: 69, scope: !1496, inlinedAt: !1901)
!1958 = !DILocation(line: 878, column: 46, scope: !1496, inlinedAt: !1901)
!1959 = !DILocation(line: 880, column: 17, scope: !1496, inlinedAt: !1901)
!1960 = !DILocation(line: 881, column: 38, scope: !1496, inlinedAt: !1901)
!1961 = !DILocation(line: 881, column: 30, scope: !1496, inlinedAt: !1901)
!1962 = !DILocation(line: 881, column: 20, scope: !1496, inlinedAt: !1901)
!1963 = !DILocation(line: 881, column: 18, scope: !1496, inlinedAt: !1901)
!1964 = !DILocation(line: 882, column: 18, scope: !1496, inlinedAt: !1901)
!1965 = !DILocation(line: 882, column: 25, scope: !1496, inlinedAt: !1901)
!1966 = !DILocation(line: 1091, column: 1, scope: !1434)
!1967 = distinct !DISubprogram(name: "json_process_value", scope: !3, file: !3, line: 1224, type: !1968, isLocal: true, isDefinition: true, scopeLine: 1226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1970)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{null, !40, !467, !468}
!1970 = !{!1971, !1972, !1973}
!1971 = !DILocalVariable(name: "l", arg: 1, scope: !1967, file: !3, line: 1224, type: !40)
!1972 = !DILocalVariable(name: "json", arg: 2, scope: !1967, file: !3, line: 1224, type: !467)
!1973 = !DILocalVariable(name: "token", arg: 3, scope: !1967, file: !3, line: 1225, type: !468)
!1974 = !DILocation(line: 1224, column: 43, scope: !1967)
!1975 = !DILocation(line: 1224, column: 60, scope: !1967)
!1976 = !DILocation(line: 1225, column: 46, scope: !1967)
!1977 = !DILocation(line: 1227, column: 20, scope: !1967)
!1978 = !DILocation(line: 1227, column: 5, scope: !1967)
!1979 = !DILocation(line: 1229, column: 41, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1967, file: !3, line: 1227, column: 26)
!1981 = !DILocation(line: 1229, column: 56, scope: !1980)
!1982 = !{!460, !150, i64 16}
!1983 = !DILocation(line: 1229, column: 49, scope: !1980)
!1984 = !DILocation(line: 1229, column: 9, scope: !1980)
!1985 = !DILocation(line: 1230, column: 9, scope: !1980)
!1986 = !DILocation(line: 1232, column: 34, scope: !1980)
!1987 = !DILocation(line: 1232, column: 40, scope: !1980)
!1988 = !DILocation(line: 1232, column: 9, scope: !1980)
!1989 = !DILocation(line: 1233, column: 9, scope: !1980)
!1990 = !DILocation(line: 1235, column: 35, scope: !1980)
!1991 = !DILocation(line: 1235, column: 41, scope: !1980)
!1992 = !DILocation(line: 1235, column: 9, scope: !1980)
!1993 = !DILocation(line: 1236, column: 9, scope: !1980)
!1994 = !DILocalVariable(name: "l", arg: 1, scope: !1995, file: !3, line: 1135, type: !40)
!1995 = distinct !DISubprogram(name: "json_parse_object_context", scope: !3, file: !3, line: 1135, type: !1996, isLocal: true, isDefinition: true, scopeLine: 1136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1998)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{null, !40, !467}
!1998 = !{!1994, !1999, !2000}
!1999 = !DILocalVariable(name: "json", arg: 2, scope: !1995, file: !3, line: 1135, type: !467)
!2000 = !DILocalVariable(name: "token", scope: !1995, file: !3, line: 1137, type: !389)
!2001 = !DILocation(line: 1135, column: 50, scope: !1995, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 1238, column: 9, scope: !1980)
!2003 = !DILocation(line: 1135, column: 67, scope: !1995, inlinedAt: !2002)
!2004 = !DILocation(line: 1137, column: 5, scope: !1995, inlinedAt: !2002)
!2005 = !DILocalVariable(name: "l", arg: 1, scope: !2006, file: !3, line: 1121, type: !40)
!2006 = distinct !DISubprogram(name: "json_decode_descend", scope: !3, file: !3, line: 1121, type: !2007, isLocal: true, isDefinition: true, scopeLine: 1122, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2009)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{null, !40, !467, !39}
!2009 = !{!2005, !2010, !2011}
!2010 = !DILocalVariable(name: "json", arg: 2, scope: !2006, file: !3, line: 1121, type: !467)
!2011 = !DILocalVariable(name: "slots", arg: 3, scope: !2006, file: !3, line: 1121, type: !39)
!2012 = !DILocation(line: 1121, column: 44, scope: !2006, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 1141, column: 5, scope: !1995, inlinedAt: !2002)
!2014 = !DILocation(line: 1121, column: 61, scope: !2006, inlinedAt: !2013)
!2015 = !DILocation(line: 1121, column: 71, scope: !2006, inlinedAt: !2013)
!2016 = !DILocation(line: 1123, column: 11, scope: !2006, inlinedAt: !2013)
!2017 = !DILocation(line: 1123, column: 24, scope: !2006, inlinedAt: !2013)
!2018 = !DILocation(line: 1125, column: 38, scope: !2019, inlinedAt: !2013)
!2019 = distinct !DILexicalBlock(scope: !2006, file: !3, line: 1125, column: 9)
!2020 = !DILocation(line: 1125, column: 43, scope: !2019, inlinedAt: !2013)
!2021 = !DILocation(line: 1125, column: 29, scope: !2019, inlinedAt: !2013)
!2022 = !DILocation(line: 1125, column: 60, scope: !2019, inlinedAt: !2013)
!2023 = !DILocation(line: 1126, column: 9, scope: !2019, inlinedAt: !2013)
!2024 = !DILocation(line: 1125, column: 9, scope: !2006, inlinedAt: !2013)
!2025 = !DILocation(line: 1130, column: 23, scope: !2006, inlinedAt: !2013)
!2026 = !DILocation(line: 1130, column: 5, scope: !2006, inlinedAt: !2013)
!2027 = !DILocation(line: 1132, column: 15, scope: !2006, inlinedAt: !2013)
!2028 = !DILocation(line: 1132, column: 36, scope: !2006, inlinedAt: !2013)
!2029 = !DILocation(line: 1132, column: 48, scope: !2006, inlinedAt: !2013)
!2030 = !DILocation(line: 1132, column: 40, scope: !2006, inlinedAt: !2013)
!2031 = !DILocation(line: 1131, column: 5, scope: !2006, inlinedAt: !2013)
!2032 = !DILocation(line: 1133, column: 1, scope: !2006, inlinedAt: !2013)
!2033 = !DILocation(line: 1143, column: 5, scope: !1995, inlinedAt: !2002)
!2034 = !DILocation(line: 1137, column: 18, scope: !1995, inlinedAt: !2002)
!2035 = !DILocation(line: 1145, column: 5, scope: !1995, inlinedAt: !2002)
!2036 = !DILocation(line: 1148, column: 15, scope: !2037, inlinedAt: !2002)
!2037 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 1148, column: 9)
!2038 = !DILocation(line: 1148, column: 20, scope: !2037, inlinedAt: !2002)
!2039 = !DILocation(line: 1148, column: 9, scope: !1995, inlinedAt: !2002)
!2040 = !DILocation(line: 1154, column: 24, scope: !2041, inlinedAt: !2002)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 1154, column: 13)
!2042 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 1153, column: 15)
!2043 = !DILocation(line: 1154, column: 19, scope: !2041, inlinedAt: !2002)
!2044 = !DILocation(line: 1154, column: 13, scope: !2042, inlinedAt: !2002)
!2045 = !DILocation(line: 1099, column: 47, scope: !464, inlinedAt: !2046)
!2046 = distinct !DILocation(line: 1155, column: 13, scope: !2041, inlinedAt: !2002)
!2047 = !DILocation(line: 1099, column: 64, scope: !464, inlinedAt: !2046)
!2048 = !DILocation(line: 1100, column: 48, scope: !464, inlinedAt: !2046)
!2049 = !DILocation(line: 1100, column: 67, scope: !464, inlinedAt: !2046)
!2050 = !DILocation(line: 1104, column: 23, scope: !464, inlinedAt: !2046)
!2051 = !DILocation(line: 1104, column: 5, scope: !464, inlinedAt: !2046)
!2052 = !DILocation(line: 1106, column: 16, scope: !482, inlinedAt: !2046)
!2053 = !DILocation(line: 1106, column: 21, scope: !482, inlinedAt: !2046)
!2054 = !DILocation(line: 1102, column: 17, scope: !464, inlinedAt: !2046)
!2055 = !DILocation(line: 1109, column: 17, scope: !482, inlinedAt: !2046)
!2056 = !DILocation(line: 1106, column: 9, scope: !464, inlinedAt: !2046)
!2057 = !DILocation(line: 0, scope: !482, inlinedAt: !2046)
!2058 = !DILocation(line: 1113, column: 35, scope: !464, inlinedAt: !2046)
!2059 = !DILocation(line: 1113, column: 41, scope: !464, inlinedAt: !2046)
!2060 = !DILocation(line: 1112, column: 5, scope: !464, inlinedAt: !2046)
!2061 = !DILocation(line: 1155, column: 13, scope: !2041, inlinedAt: !2002)
!2062 = !DILocation(line: 1158, column: 40, scope: !2042, inlinedAt: !2002)
!2063 = !DILocation(line: 1158, column: 54, scope: !2042, inlinedAt: !2002)
!2064 = !DILocation(line: 1158, column: 48, scope: !2042, inlinedAt: !2002)
!2065 = !DILocation(line: 1158, column: 9, scope: !2042, inlinedAt: !2002)
!2066 = !DILocation(line: 1160, column: 9, scope: !2042, inlinedAt: !2002)
!2067 = !DILocation(line: 1161, column: 19, scope: !2068, inlinedAt: !2002)
!2068 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 1161, column: 13)
!2069 = !DILocation(line: 1161, column: 24, scope: !2068, inlinedAt: !2002)
!2070 = !DILocation(line: 1161, column: 13, scope: !2042, inlinedAt: !2002)
!2071 = !DILocation(line: 1099, column: 47, scope: !464, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 1162, column: 13, scope: !2068, inlinedAt: !2002)
!2073 = !DILocation(line: 1099, column: 64, scope: !464, inlinedAt: !2072)
!2074 = !DILocation(line: 1100, column: 48, scope: !464, inlinedAt: !2072)
!2075 = !DILocation(line: 1100, column: 67, scope: !464, inlinedAt: !2072)
!2076 = !DILocation(line: 1104, column: 23, scope: !464, inlinedAt: !2072)
!2077 = !DILocation(line: 1104, column: 5, scope: !464, inlinedAt: !2072)
!2078 = !DILocation(line: 1106, column: 16, scope: !482, inlinedAt: !2072)
!2079 = !DILocation(line: 1106, column: 21, scope: !482, inlinedAt: !2072)
!2080 = !DILocation(line: 1102, column: 17, scope: !464, inlinedAt: !2072)
!2081 = !DILocation(line: 1109, column: 17, scope: !482, inlinedAt: !2072)
!2082 = !DILocation(line: 1106, column: 9, scope: !464, inlinedAt: !2072)
!2083 = !DILocation(line: 0, scope: !482, inlinedAt: !2072)
!2084 = !DILocation(line: 1113, column: 35, scope: !464, inlinedAt: !2072)
!2085 = !DILocation(line: 1113, column: 41, scope: !464, inlinedAt: !2072)
!2086 = !DILocation(line: 1112, column: 5, scope: !464, inlinedAt: !2072)
!2087 = !DILocation(line: 1162, column: 13, scope: !2068, inlinedAt: !2002)
!2088 = !DILocation(line: 1165, column: 9, scope: !2042, inlinedAt: !2002)
!2089 = !DILocation(line: 1166, column: 9, scope: !2042, inlinedAt: !2002)
!2090 = !DILocation(line: 1169, column: 9, scope: !2042, inlinedAt: !2002)
!2091 = !DILocation(line: 1171, column: 9, scope: !2042, inlinedAt: !2002)
!2092 = !DILocation(line: 1173, column: 19, scope: !2093, inlinedAt: !2002)
!2093 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 1173, column: 13)
!2094 = !DILocation(line: 1173, column: 13, scope: !2042, inlinedAt: !2002)
!2095 = !DILocation(line: 1099, column: 47, scope: !464, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 1179, column: 13, scope: !2097, inlinedAt: !2002)
!2097 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 1178, column: 13)
!2098 = !DILocation(line: 1099, column: 64, scope: !464, inlinedAt: !2096)
!2099 = !DILocation(line: 1100, column: 48, scope: !464, inlinedAt: !2096)
!2100 = !DILocation(line: 1100, column: 67, scope: !464, inlinedAt: !2096)
!2101 = !DILocation(line: 1104, column: 23, scope: !464, inlinedAt: !2096)
!2102 = !DILocation(line: 1104, column: 5, scope: !464, inlinedAt: !2096)
!2103 = !DILocation(line: 1106, column: 16, scope: !482, inlinedAt: !2096)
!2104 = !DILocation(line: 1106, column: 21, scope: !482, inlinedAt: !2096)
!2105 = !DILocation(line: 1102, column: 17, scope: !464, inlinedAt: !2096)
!2106 = !DILocation(line: 1109, column: 17, scope: !482, inlinedAt: !2096)
!2107 = !DILocation(line: 1106, column: 9, scope: !464, inlinedAt: !2096)
!2108 = !DILocation(line: 0, scope: !482, inlinedAt: !2096)
!2109 = !DILocation(line: 1113, column: 35, scope: !464, inlinedAt: !2096)
!2110 = !DILocation(line: 1113, column: 41, scope: !464, inlinedAt: !2096)
!2111 = !DILocation(line: 1112, column: 5, scope: !464, inlinedAt: !2096)
!2112 = !DILocation(line: 1179, column: 13, scope: !2097, inlinedAt: !2002)
!2113 = !DILocation(line: 1181, column: 9, scope: !2042, inlinedAt: !2002)
!2114 = !DILocation(line: 1153, column: 5, scope: !1995, inlinedAt: !2002)
!2115 = distinct !{!2115, !2116, !2117}
!2116 = !DILocation(line: 1153, column: 5, scope: !1995)
!2117 = !DILocation(line: 1182, column: 5, scope: !1995)
!2118 = !DILocation(line: 1118, column: 24, scope: !2119, inlinedAt: !2124)
!2119 = distinct !DISubprogram(name: "json_decode_ascend", scope: !3, file: !3, line: 1116, type: !2120, isLocal: true, isDefinition: true, scopeLine: 1117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2122)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{null, !467}
!2122 = !{!2123}
!2123 = !DILocalVariable(name: "json", arg: 1, scope: !2119, file: !3, line: 1116, type: !467)
!2124 = distinct !DILocation(line: 1174, column: 13, scope: !2125, inlinedAt: !2002)
!2125 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 1173, column: 38)
!2126 = !DILocation(line: 1183, column: 1, scope: !1995, inlinedAt: !2002)
!2127 = !DILocation(line: 1239, column: 9, scope: !1980)
!2128 = !DILocalVariable(name: "l", arg: 1, scope: !2129, file: !3, line: 1186, type: !40)
!2129 = distinct !DISubprogram(name: "json_parse_array_context", scope: !3, file: !3, line: 1186, type: !1996, isLocal: true, isDefinition: true, scopeLine: 1187, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2130)
!2130 = !{!2128, !2131, !2132, !2133}
!2131 = !DILocalVariable(name: "json", arg: 2, scope: !2129, file: !3, line: 1186, type: !467)
!2132 = !DILocalVariable(name: "token", scope: !2129, file: !3, line: 1188, type: !389)
!2133 = !DILocalVariable(name: "i", scope: !2129, file: !3, line: 1189, type: !39)
!2134 = !DILocation(line: 1186, column: 49, scope: !2129, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 1241, column: 9, scope: !1980)
!2136 = !DILocation(line: 1186, column: 66, scope: !2129, inlinedAt: !2135)
!2137 = !DILocation(line: 1188, column: 5, scope: !2129, inlinedAt: !2135)
!2138 = !DILocation(line: 1121, column: 44, scope: !2006, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 1193, column: 5, scope: !2129, inlinedAt: !2135)
!2140 = !DILocation(line: 1121, column: 61, scope: !2006, inlinedAt: !2139)
!2141 = !DILocation(line: 1121, column: 71, scope: !2006, inlinedAt: !2139)
!2142 = !DILocation(line: 1123, column: 11, scope: !2006, inlinedAt: !2139)
!2143 = !DILocation(line: 1123, column: 24, scope: !2006, inlinedAt: !2139)
!2144 = !DILocation(line: 1125, column: 38, scope: !2019, inlinedAt: !2139)
!2145 = !DILocation(line: 1125, column: 43, scope: !2019, inlinedAt: !2139)
!2146 = !DILocation(line: 1125, column: 29, scope: !2019, inlinedAt: !2139)
!2147 = !DILocation(line: 1125, column: 60, scope: !2019, inlinedAt: !2139)
!2148 = !DILocation(line: 1126, column: 9, scope: !2019, inlinedAt: !2139)
!2149 = !DILocation(line: 1125, column: 9, scope: !2006, inlinedAt: !2139)
!2150 = !DILocation(line: 1130, column: 23, scope: !2006, inlinedAt: !2139)
!2151 = !DILocation(line: 1130, column: 5, scope: !2006, inlinedAt: !2139)
!2152 = !DILocation(line: 1132, column: 15, scope: !2006, inlinedAt: !2139)
!2153 = !DILocation(line: 1132, column: 36, scope: !2006, inlinedAt: !2139)
!2154 = !DILocation(line: 1132, column: 48, scope: !2006, inlinedAt: !2139)
!2155 = !DILocation(line: 1132, column: 40, scope: !2006, inlinedAt: !2139)
!2156 = !DILocation(line: 1131, column: 5, scope: !2006, inlinedAt: !2139)
!2157 = !DILocation(line: 1133, column: 1, scope: !2006, inlinedAt: !2139)
!2158 = !DILocation(line: 1195, column: 5, scope: !2129, inlinedAt: !2135)
!2159 = !DILocation(line: 1188, column: 18, scope: !2129, inlinedAt: !2135)
!2160 = !DILocation(line: 1197, column: 5, scope: !2129, inlinedAt: !2135)
!2161 = !DILocation(line: 1200, column: 15, scope: !2162, inlinedAt: !2135)
!2162 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 1200, column: 9)
!2163 = !DILocation(line: 1200, column: 20, scope: !2162, inlinedAt: !2135)
!2164 = !DILocation(line: 1200, column: 9, scope: !2129, inlinedAt: !2135)
!2165 = !DILocation(line: 1206, column: 9, scope: !2166, inlinedAt: !2135)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 1205, column: 24)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 1205, column: 5)
!2168 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 1205, column: 5)
!2169 = !DILocation(line: 0, scope: !2167, inlinedAt: !2135)
!2170 = !DILocation(line: 1189, column: 9, scope: !2129, inlinedAt: !2135)
!2171 = !DILocation(line: 1207, column: 9, scope: !2166, inlinedAt: !2135)
!2172 = !DILocation(line: 1209, column: 9, scope: !2166, inlinedAt: !2135)
!2173 = !DILocation(line: 1211, column: 19, scope: !2174, inlinedAt: !2135)
!2174 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 1211, column: 13)
!2175 = !DILocation(line: 1211, column: 13, scope: !2166, inlinedAt: !2135)
!2176 = !DILocation(line: 1099, column: 47, scope: !464, inlinedAt: !2177)
!2177 = distinct !DILocation(line: 1217, column: 13, scope: !2178, inlinedAt: !2135)
!2178 = distinct !DILexicalBlock(scope: !2166, file: !3, line: 1216, column: 13)
!2179 = !DILocation(line: 1099, column: 64, scope: !464, inlinedAt: !2177)
!2180 = !DILocation(line: 1100, column: 48, scope: !464, inlinedAt: !2177)
!2181 = !DILocation(line: 1100, column: 67, scope: !464, inlinedAt: !2177)
!2182 = !DILocation(line: 1104, column: 23, scope: !464, inlinedAt: !2177)
!2183 = !DILocation(line: 1104, column: 5, scope: !464, inlinedAt: !2177)
!2184 = !DILocation(line: 1106, column: 16, scope: !482, inlinedAt: !2177)
!2185 = !DILocation(line: 1106, column: 21, scope: !482, inlinedAt: !2177)
!2186 = !DILocation(line: 1102, column: 17, scope: !464, inlinedAt: !2177)
!2187 = !DILocation(line: 1109, column: 17, scope: !482, inlinedAt: !2177)
!2188 = !DILocation(line: 1106, column: 9, scope: !464, inlinedAt: !2177)
!2189 = !DILocation(line: 0, scope: !482, inlinedAt: !2177)
!2190 = !DILocation(line: 1113, column: 35, scope: !464, inlinedAt: !2177)
!2191 = !DILocation(line: 1113, column: 41, scope: !464, inlinedAt: !2177)
!2192 = !DILocation(line: 1112, column: 5, scope: !464, inlinedAt: !2177)
!2193 = !DILocation(line: 1217, column: 13, scope: !2178, inlinedAt: !2135)
!2194 = !DILocation(line: 1219, column: 9, scope: !2166, inlinedAt: !2135)
!2195 = !DILocation(line: 1205, column: 20, scope: !2167, inlinedAt: !2135)
!2196 = !DILocation(line: 1205, column: 5, scope: !2167, inlinedAt: !2135)
!2197 = distinct !{!2197, !2198, !2199}
!2198 = !DILocation(line: 1205, column: 5, scope: !2168)
!2199 = !DILocation(line: 1220, column: 5, scope: !2168)
!2200 = !DILocation(line: 1118, column: 24, scope: !2119, inlinedAt: !2201)
!2201 = distinct !DILocation(line: 1212, column: 13, scope: !2202, inlinedAt: !2135)
!2202 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 1211, column: 38)
!2203 = !DILocation(line: 1221, column: 1, scope: !2129, inlinedAt: !2135)
!2204 = !DILocation(line: 1242, column: 9, scope: !1980)
!2205 = !DILocation(line: 1246, column: 9, scope: !1980)
!2206 = !DILocation(line: 1247, column: 9, scope: !1980)
!2207 = !DILocation(line: 1099, column: 47, scope: !464, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 1249, column: 9, scope: !1980)
!2209 = !DILocation(line: 1099, column: 64, scope: !464, inlinedAt: !2208)
!2210 = !DILocation(line: 1100, column: 48, scope: !464, inlinedAt: !2208)
!2211 = !DILocation(line: 1100, column: 67, scope: !464, inlinedAt: !2208)
!2212 = !DILocation(line: 1104, column: 23, scope: !464, inlinedAt: !2208)
!2213 = !DILocation(line: 1104, column: 5, scope: !464, inlinedAt: !2208)
!2214 = !DILocation(line: 1106, column: 16, scope: !482, inlinedAt: !2208)
!2215 = !DILocation(line: 1106, column: 21, scope: !482, inlinedAt: !2208)
!2216 = !DILocation(line: 1107, column: 30, scope: !482, inlinedAt: !2208)
!2217 = !DILocation(line: 1102, column: 17, scope: !464, inlinedAt: !2208)
!2218 = !DILocation(line: 1109, column: 17, scope: !482, inlinedAt: !2208)
!2219 = !DILocation(line: 1106, column: 9, scope: !464, inlinedAt: !2208)
!2220 = !DILocation(line: 0, scope: !482, inlinedAt: !2208)
!2221 = !DILocation(line: 1113, column: 35, scope: !464, inlinedAt: !2208)
!2222 = !DILocation(line: 1113, column: 41, scope: !464, inlinedAt: !2208)
!2223 = !DILocation(line: 1112, column: 5, scope: !464, inlinedAt: !2208)
!2224 = !DILocation(line: 1250, column: 5, scope: !1980)
!2225 = !DILocation(line: 1251, column: 1, scope: !1967)
!2226 = distinct !DISubprogram(name: "json_arg_init", scope: !3, file: !3, line: 208, type: !2227, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2229)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!63, !40, !39}
!2229 = !{!2230, !2231}
!2230 = !DILocalVariable(name: "l", arg: 1, scope: !2226, file: !3, line: 208, type: !40)
!2231 = !DILocalVariable(name: "args", arg: 2, scope: !2226, file: !3, line: 208, type: !39)
!2232 = !DILocation(line: 208, column: 48, scope: !2226)
!2233 = !DILocation(line: 208, column: 55, scope: !2226)
!2234 = !DILocation(line: 210, column: 5, scope: !2226)
!2235 = !DILocation(line: 213, column: 12, scope: !2226)
!2236 = !DILocation(line: 213, column: 26, scope: !2226)
!2237 = !DILocation(line: 213, column: 5, scope: !2226)
!2238 = !DILocation(line: 214, column: 9, scope: !2226)
!2239 = distinct !{!2239, !2237, !2240}
!2240 = !DILocation(line: 214, column: 22, scope: !2226)
!2241 = !DILocation(line: 194, column: 52, scope: !313, inlinedAt: !2242)
!2242 = distinct !DILocation(line: 216, column: 12, scope: !2226)
!2243 = !DILocation(line: 198, column: 11, scope: !313, inlinedAt: !2242)
!2244 = !DILocation(line: 196, column: 20, scope: !313, inlinedAt: !2242)
!2245 = !DILocation(line: 199, column: 10, scope: !323, inlinedAt: !2242)
!2246 = !DILocation(line: 199, column: 9, scope: !313, inlinedAt: !2242)
!2247 = !DILocation(line: 200, column: 9, scope: !323, inlinedAt: !2242)
!2248 = !DILocation(line: 216, column: 5, scope: !2226)
!2249 = !DILocation(line: 239, column: 40, scope: !36)
!2250 = !DILocation(line: 239, column: 47, scope: !36)
!2251 = !DILocation(line: 239, column: 62, scope: !36)
!2252 = !DILocation(line: 240, column: 42, scope: !36)
!2253 = !DILocation(line: 240, column: 55, scope: !36)
!2254 = !DILocation(line: 244, column: 10, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !36, file: !3, line: 244, column: 9)
!2256 = !DILocation(line: 244, column: 9, scope: !36)
!2257 = !DILocation(line: 249, column: 10, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !36, file: !3, line: 249, column: 9)
!2259 = !DILocation(line: 249, column: 9, scope: !36)
!2260 = !DILocation(line: 250, column: 26, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 250, column: 13)
!2262 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 249, column: 34)
!2263 = !DILocation(line: 250, column: 13, scope: !2262)
!2264 = !DILocation(line: 251, column: 24, scope: !2261)
!2265 = !DILocation(line: 251, column: 22, scope: !2261)
!2266 = !DILocation(line: 251, column: 13, scope: !2261)
!2267 = !DILocation(line: 253, column: 24, scope: !2261)
!2268 = !DILocation(line: 253, column: 22, scope: !2261)
!2269 = !DILocation(line: 256, column: 23, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !36, file: !3, line: 256, column: 9)
!2271 = !DILocation(line: 256, column: 37, scope: !2270)
!2272 = !DILocation(line: 257, column: 9, scope: !2270)
!2273 = !DILocation(line: 259, column: 27, scope: !2270)
!2274 = !DILocation(line: 259, column: 9, scope: !2270)
!2275 = distinct !DISubprogram(name: "json_destroy_config", scope: !3, file: !3, line: 361, type: !58, isLocal: true, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2276)
!2276 = !{!2277, !2278}
!2277 = !DILocalVariable(name: "l", arg: 1, scope: !2275, file: !3, line: 361, type: !40)
!2278 = !DILocalVariable(name: "cfg", scope: !2275, file: !3, line: 363, type: !63)
!2279 = !DILocation(line: 361, column: 43, scope: !2275)
!2280 = !DILocation(line: 365, column: 11, scope: !2275)
!2281 = !DILocation(line: 366, column: 9, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 366, column: 9)
!2283 = !DILocation(line: 366, column: 9, scope: !2275)
!2284 = !DILocation(line: 363, column: 20, scope: !2275)
!2285 = !DILocation(line: 367, column: 27, scope: !2282)
!2286 = !DILocation(line: 367, column: 9, scope: !2282)
!2287 = !DILocation(line: 370, column: 5, scope: !2275)
!2288 = distinct !DISubprogram(name: "json_protect_conversion", scope: !3, file: !3, line: 1318, type: !58, isLocal: true, isDefinition: true, scopeLine: 1319, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2289)
!2289 = !{!2290, !2291}
!2290 = !DILocalVariable(name: "l", arg: 1, scope: !2288, file: !3, line: 1318, type: !40)
!2291 = !DILocalVariable(name: "err", scope: !2288, file: !3, line: 1320, type: !39)
!2292 = !DILocation(line: 1318, column: 47, scope: !2288)
!2293 = !DILocation(line: 1323, column: 5, scope: !2288)
!2294 = !DILocation(line: 1326, column: 5, scope: !2288)
!2295 = !DILocation(line: 1327, column: 5, scope: !2288)
!2296 = !DILocation(line: 1328, column: 11, scope: !2288)
!2297 = !DILocation(line: 1320, column: 9, scope: !2288)
!2298 = !DILocation(line: 1329, column: 9, scope: !2288)
!2299 = !DILocation(line: 1333, column: 9, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !3, line: 1332, column: 28)
!2301 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 1332, column: 9)
!2302 = !DILocation(line: 1334, column: 9, scope: !2300)
!2303 = !DILocation(line: 1335, column: 9, scope: !2300)
!2304 = !DILocation(line: 1340, column: 12, scope: !2288)
!2305 = !DILocation(line: 1340, column: 5, scope: !2288)
!2306 = !DILocation(line: 0, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 1329, column: 9)
!2308 = !DILocation(line: 1341, column: 1, scope: !2288)
