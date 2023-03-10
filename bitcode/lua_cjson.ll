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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_cjson(%struct.lua_State*) local_unnamed_addr #0 !dbg !104 {
  %2 = tail call i32 @lua_cjson_new(%struct.lua_State* %0) #6, !dbg !108
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #7, !dbg !109
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #7, !dbg !110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !111
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !235
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.100, i64 0, i64 0)) #7, !dbg !250
  %229 = getelementptr inbounds [11 x %struct.luaL_Reg], [11 x %struct.luaL_Reg]* %2, i64 0, i64 0, i32 0, !dbg !251
  br label %230, !dbg !254

; <label>:230:                                    ; preds = %1, %230
  %231 = phi i8** [ %236, %230 ], [ %229, %1 ]
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #7, !dbg !254
  %232 = getelementptr inbounds i8*, i8** %231, i64 1, !dbg !258
  %233 = bitcast i8** %232 to i32 (%struct.lua_State*)**, !dbg !258
  %234 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %233, align 8, !dbg !258, !tbaa !259
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* %234, i32 1) #7, !dbg !261
  %235 = load i8*, i8** %231, align 8, !dbg !262, !tbaa !263
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* %235) #7, !dbg !264
  %236 = getelementptr inbounds i8*, i8** %231, i64 2, !dbg !265
  %237 = load i8*, i8** %236, align 8, !dbg !251, !tbaa !263
  %238 = icmp eq i8* %237, null, !dbg !266
  br i1 %238, label %239, label %230, !dbg !267, !llvm.loop !268

; <label>:239:                                    ; preds = %230
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* null) #7, !dbg !273
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !274
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 5) #7, !dbg !275
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !276
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64 5) #7, !dbg !277
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !278
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %3) #8, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  ret i32 1, !dbg !280
}

; Function Attrs: noredzone
declare dso_local void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_cjson_safe(%struct.lua_State*) local_unnamed_addr #0 !dbg !281 {
  %2 = tail call i32 @lua_cjson_safe_new(%struct.lua_State* %0) #6, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  ret i32 1, !dbg !286
}

; Function Attrs: noredzone nounwind
define internal i32 @lua_cjson_safe_new(%struct.lua_State*) #0 !dbg !287 {
  %2 = tail call i32 @lua_cjson_new(%struct.lua_State* %0) #6, !dbg !293
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @lua_cjson_safe_new, i32 0) #7, !dbg !294
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !295
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !297
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @json_protect_conversion, i32 1) #7, !dbg !301
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !302
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !297
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @json_protect_conversion, i32 1) #7, !dbg !301
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  ret i32 1, !dbg !303
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone nounwind
define internal i32 @json_encode(%struct.lua_State*) #0 !dbg !304 {
  %2 = alloca %struct.strbuf_t, align 8
  %3 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -10003) #7, !dbg !322
  %4 = bitcast i8* %3 to %struct.json_config_t*, !dbg !322
  %5 = icmp eq i8* %3, null, !dbg !324
  br i1 %5, label %6, label %8, !dbg !326

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !327
  br label %8, !dbg !327

; <label>:8:                                      ; preds = %1, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  %9 = bitcast %struct.strbuf_t* %2 to i8*, !dbg !330
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #8, !dbg !330
  %10 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7, !dbg !331
  %11 = icmp eq i32 %10, 1, !dbg !331
  br i1 %11, label %14, label %12, !dbg !331

; <label>:12:                                     ; preds = %8
  %13 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !331
  br label %14, !dbg !331

; <label>:14:                                     ; preds = %12, %8
  %15 = getelementptr inbounds i8, i8* %3, i64 1336, !dbg !332
  %16 = bitcast i8* %15 to i32*, !dbg !332
  %17 = load i32, i32* %16, align 8, !dbg !332, !tbaa !334
  %18 = icmp eq i32 %17, 0, !dbg !335
  br i1 %18, label %19, label %20, !dbg !336

; <label>:19:                                     ; preds = %14
  call void @strbuf_init(%struct.strbuf_t* nonnull %2, i32 0) #7, !dbg !339
  br label %25, !dbg !341

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds i8, i8* %3, i64 1280, !dbg !342
  %22 = bitcast i8* %21 to %struct.strbuf_t*, !dbg !342
  %23 = getelementptr inbounds i8, i8* %3, i64 1292, !dbg !351
  %24 = bitcast i8* %23 to i32*, !dbg !351
  store i32 0, i32* %24, align 4, !dbg !352, !tbaa !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br label %25

; <label>:25:                                     ; preds = %20, %19
  %26 = phi %struct.strbuf_t* [ %22, %20 ], [ %2, %19 ], !dbg !355
  call fastcc void @json_append_data(%struct.lua_State* %0, %struct.json_config_t* nonnull %4, i32 0, %struct.strbuf_t* nonnull %26) #6, !dbg !356
  %27 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %26, i64 0, i32 2, !dbg !365
  %28 = load i32, i32* %27, align 4, !dbg !365, !tbaa !353
  %29 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %26, i64 0, i32 0, !dbg !367
  %30 = load i8*, i8** %29, align 8, !dbg !367, !tbaa !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  %31 = sext i32 %28 to i64, !dbg !372
  call void @lua_pushlstring(%struct.lua_State* %0, i8* %30, i64 %31) #7, !dbg !373
  %32 = load i32, i32* %16, align 8, !dbg !374, !tbaa !334
  %33 = icmp eq i32 %32, 0, !dbg !376
  br i1 %33, label %34, label %35, !dbg !377

; <label>:34:                                     ; preds = %25
  call void @strbuf_free(%struct.strbuf_t* nonnull %26) #7, !dbg !378
  br label %35, !dbg !378

; <label>:35:                                     ; preds = %25, %34
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #8, !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !380
  ret i32 1, !dbg !380
}

; Function Attrs: noredzone nounwind
define internal i32 @json_decode(%struct.lua_State*) #0 !dbg !381 {
  %2 = alloca %struct.json_parse_t, align 8
  %3 = alloca %struct.json_token_t, align 8
  %4 = alloca i64, align 8
  %5 = bitcast %struct.json_parse_t* %2 to i8*, !dbg !414
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #8, !dbg !414
  %6 = bitcast %struct.json_token_t* %3 to i8*, !dbg !415
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8, !dbg !415
  %7 = bitcast i64* %4 to i8*, !dbg !416
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !416
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7, !dbg !417
  %9 = icmp eq i32 %8, 1, !dbg !417
  br i1 %9, label %12, label %10, !dbg !417

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !417
  br label %12, !dbg !417

; <label>:12:                                     ; preds = %10, %1
  %13 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -10003) #7, !dbg !420
  %14 = icmp eq i8* %13, null, !dbg !422
  br i1 %14, label %15, label %17, !dbg !423

; <label>:15:                                     ; preds = %12
  %16 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !424
  br label %17, !dbg !424

; <label>:17:                                     ; preds = %12, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  %18 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %2, i64 0, i32 3, !dbg !426
  %19 = bitcast %struct.json_config_t** %18 to i8**, !dbg !427
  store i8* %13, i8** %19, align 8, !dbg !427, !tbaa !428
  %20 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %4) #7, !dbg !431
  %21 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %2, i64 0, i32 0, !dbg !432
  store i8* %20, i8** %21, align 8, !dbg !433, !tbaa !434
  %22 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %2, i64 0, i32 4, !dbg !435
  store i32 0, i32* %22, align 8, !dbg !436, !tbaa !437
  %23 = ptrtoint i8* %20 to i64, !dbg !438
  %24 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %2, i64 0, i32 1, !dbg !439
  %25 = bitcast i8** %24 to i64*, !dbg !440
  store i64 %23, i64* %25, align 8, !dbg !440, !tbaa !441
  %26 = load i64, i64* %4, align 8, !dbg !442, !tbaa !444
  %27 = icmp ugt i64 %26, 1, !dbg !446
  br i1 %27, label %28, label %38, !dbg !447

; <label>:28:                                     ; preds = %17
  %29 = load i8, i8* %20, align 1, !dbg !448, !tbaa !167
  %30 = icmp eq i8 %29, 0, !dbg !448
  br i1 %30, label %35, label %31, !dbg !449

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !450
  %33 = load i8, i8* %32, align 1, !dbg !450, !tbaa !167
  %34 = icmp eq i8 %33, 0, !dbg !450
  br i1 %34, label %35, label %38, !dbg !451

; <label>:35:                                     ; preds = %31, %28
  %36 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i64 0, i64 0)) #7, !dbg !452
  %37 = load i64, i64* %4, align 8, !dbg !453, !tbaa !444
  br label %38, !dbg !452

; <label>:38:                                     ; preds = %31, %35, %17
  %39 = phi i64 [ %26, %31 ], [ %37, %35 ], [ %26, %17 ], !dbg !453
  %40 = trunc i64 %39 to i32, !dbg !453
  %41 = call %struct.strbuf_t* @strbuf_new(i32 %40) #7, !dbg !454
  %42 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %2, i64 0, i32 2, !dbg !455
  store %struct.strbuf_t* %41, %struct.strbuf_t** %42, align 8, !dbg !456, !tbaa !457
  call fastcc void @json_next_token(%struct.json_parse_t* nonnull %2, %struct.json_token_t* nonnull %3) #6, !dbg !460
  call fastcc void @json_process_value(%struct.lua_State* %0, %struct.json_parse_t* nonnull %2, %struct.json_token_t* nonnull %3) #6, !dbg !461
  call fastcc void @json_next_token(%struct.json_parse_t* nonnull %2, %struct.json_token_t* nonnull %3) #6, !dbg !462
  %43 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %3, i64 0, i32 0, !dbg !463
  %44 = load i32, i32* %43, align 8, !dbg !463, !tbaa !465
  %45 = icmp eq i32 %44, 10, !dbg !467
  br i1 %45, label %59, label %46, !dbg !468

; <label>:46:                                     ; preds = %38
  %47 = load %struct.strbuf_t*, %struct.strbuf_t** %42, align 8, !dbg !485, !tbaa !457
  call void @strbuf_free(%struct.strbuf_t* %47) #7, !dbg !486
  %48 = load i32, i32* %43, align 8, !dbg !487, !tbaa !465
  %49 = icmp eq i32 %48, 12, !dbg !489
  %50 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %3, i64 0, i32 2, i32 0, !dbg !490
  %51 = zext i32 %48 to i64, !dbg !492
  %52 = getelementptr inbounds [15 x i8*], [15 x i8*]* @json_token_type_name, i64 0, i64 %51, !dbg !492
  %53 = select i1 %49, i8** %50, i8** %52, !dbg !493
  %54 = load i8*, i8** %53, align 8, !dbg !494, !tbaa !167
  %55 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %3, i64 0, i32 1, !dbg !495
  %56 = load i32, i32* %55, align 4, !dbg !495, !tbaa !496
  %57 = add nsw i32 %56, 1, !dbg !497
  %58 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i64 0, i64 0), i8* %54, i32 %57) #7, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  br label %59, !dbg !500

; <label>:59:                                     ; preds = %38, %46
  %60 = load %struct.strbuf_t*, %struct.strbuf_t** %42, align 8, !dbg !501, !tbaa !457
  call void @strbuf_free(%struct.strbuf_t* %60) #7, !dbg !502
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !503
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8, !dbg !503
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #8, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  ret i32 1, !dbg !504
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_encode_sparse_array(%struct.lua_State*) #0 !dbg !505 {
  %2 = alloca [64 x i8], align 16
  %3 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 3) #6, !dbg !528
  %4 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %3, i64 0, i32 3, !dbg !530
  tail call fastcc void @json_enum_option(%struct.lua_State* %0, i32* nonnull %4, i8** null) #6, !dbg !531
  %5 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %3, i64 0, i32 4, !dbg !532
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0, !dbg !538
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #8, !dbg !538
  %7 = tail call i32 @lua_type(%struct.lua_State* %0, i32 2) #7, !dbg !539
  %8 = icmp eq i32 %7, 0, !dbg !539
  br i1 %8, label %9, label %11, !dbg !541

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %5, align 4, !dbg !542, !tbaa !149
  br label %19, !dbg !541

; <label>:11:                                     ; preds = %1
  %12 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #7, !dbg !543
  %13 = trunc i64 %12 to i32, !dbg !543
  %14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %6, i64 64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.98, i64 0, i64 0), i32 0, i32 2147483647) #7, !dbg !546
  %15 = icmp slt i32 %13, 0, !dbg !547
  br i1 %15, label %16, label %18, !dbg !547

; <label>:16:                                     ; preds = %11
  %17 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* nonnull %6) #7, !dbg !547
  br label %18, !dbg !547

; <label>:18:                                     ; preds = %16, %11
  store i32 %13, i32* %5, align 4, !dbg !548, !tbaa !149
  br label %19, !dbg !549

; <label>:19:                                     ; preds = %9, %18
  %20 = phi i32 [ %10, %9 ], [ %13, %18 ], !dbg !542
  %21 = sext i32 %20 to i64, !dbg !542
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %21) #7, !dbg !550
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #8, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  %22 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %3, i64 0, i32 5, !dbg !553
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %6) #8, !dbg !559
  %23 = call i32 @lua_type(%struct.lua_State* %0, i32 3) #7, !dbg !560
  %24 = icmp eq i32 %23, 0, !dbg !560
  br i1 %24, label %25, label %27, !dbg !561

; <label>:25:                                     ; preds = %19
  %26 = load i32, i32* %22, align 4, !dbg !562, !tbaa !149
  br label %35, !dbg !561

; <label>:27:                                     ; preds = %19
  %28 = call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 3) #7, !dbg !563
  %29 = trunc i64 %28 to i32, !dbg !563
  %30 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %6, i64 64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.98, i64 0, i64 0), i32 0, i32 2147483647) #7, !dbg !565
  %31 = icmp slt i32 %29, 0, !dbg !566
  br i1 %31, label %32, label %34, !dbg !566

; <label>:32:                                     ; preds = %27
  %33 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* nonnull %6) #7, !dbg !566
  br label %34, !dbg !566

; <label>:34:                                     ; preds = %32, %27
  store i32 %29, i32* %22, align 4, !dbg !567, !tbaa !149
  br label %35, !dbg !568

; <label>:35:                                     ; preds = %25, %34
  %36 = phi i32 [ %26, %25 ], [ %29, %34 ], !dbg !562
  %37 = sext i32 %36 to i64, !dbg !562
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %37) #7, !dbg !569
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %6) #8, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  ret i32 3, !dbg !572
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_encode_max_depth(%struct.lua_State*) #0 !dbg !573 {
  %2 = alloca [64 x i8], align 16
  %3 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 1) #6, !dbg !580
  %4 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %3, i64 0, i32 6, !dbg !582
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0, !dbg !588
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #8, !dbg !588
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7, !dbg !589
  %7 = icmp eq i32 %6, 0, !dbg !589
  br i1 %7, label %8, label %10, !dbg !590

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %4, align 4, !dbg !591, !tbaa !149
  br label %18, !dbg !590

; <label>:10:                                     ; preds = %1
  %11 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #7, !dbg !592
  %12 = trunc i64 %11 to i32, !dbg !592
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %5, i64 64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.98, i64 0, i64 0), i32 1, i32 2147483647) #7, !dbg !594
  %14 = icmp slt i32 %12, 1, !dbg !595
  br i1 %14, label %15, label %17, !dbg !595

; <label>:15:                                     ; preds = %10
  %16 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* nonnull %5) #7, !dbg !595
  br label %17, !dbg !595

; <label>:17:                                     ; preds = %15, %10
  store i32 %12, i32* %4, align 4, !dbg !596, !tbaa !149
  br label %18, !dbg !597

; <label>:18:                                     ; preds = %8, %17
  %19 = phi i32 [ %9, %8 ], [ %12, %17 ], !dbg !591
  %20 = sext i32 %19 to i64, !dbg !591
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %20) #7, !dbg !598
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #8, !dbg !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !601
  ret i32 1, !dbg !601
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_decode_max_depth(%struct.lua_State*) #0 !dbg !602 {
  %2 = alloca [64 x i8], align 16
  %3 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 1) #6, !dbg !609
  %4 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %3, i64 0, i32 11, !dbg !611
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0, !dbg !617
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #8, !dbg !617
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7, !dbg !618
  %7 = icmp eq i32 %6, 0, !dbg !618
  br i1 %7, label %8, label %10, !dbg !619

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %4, align 4, !dbg !620, !tbaa !149
  br label %18, !dbg !619

; <label>:10:                                     ; preds = %1
  %11 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #7, !dbg !621
  %12 = trunc i64 %11 to i32, !dbg !621
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %5, i64 64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.98, i64 0, i64 0), i32 1, i32 2147483647) #7, !dbg !623
  %14 = icmp slt i32 %12, 1, !dbg !624
  br i1 %14, label %15, label %17, !dbg !624

; <label>:15:                                     ; preds = %10
  %16 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* nonnull %5) #7, !dbg !624
  br label %17, !dbg !624

; <label>:17:                                     ; preds = %15, %10
  store i32 %12, i32* %4, align 4, !dbg !625, !tbaa !149
  br label %18, !dbg !626

; <label>:18:                                     ; preds = %8, %17
  %19 = phi i32 [ %9, %8 ], [ %12, %17 ], !dbg !620
  %20 = sext i32 %19 to i64, !dbg !620
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %20) #7, !dbg !627
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #8, !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  ret i32 1, !dbg !630
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_encode_number_precision(%struct.lua_State*) #0 !dbg !631 {
  %2 = alloca [64 x i8], align 16
  %3 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 1) #6, !dbg !638
  %4 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %3, i64 0, i32 8, !dbg !640
  %5 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0, !dbg !646
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %5) #8, !dbg !646
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7, !dbg !647
  %7 = icmp eq i32 %6, 0, !dbg !647
  br i1 %7, label %8, label %10, !dbg !648

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %4, align 4, !dbg !649, !tbaa !149
  br label %19, !dbg !648

; <label>:10:                                     ; preds = %1
  %11 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #7, !dbg !650
  %12 = trunc i64 %11 to i32, !dbg !650
  %13 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %5, i64 64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.98, i64 0, i64 0), i32 1, i32 14) #7, !dbg !652
  %14 = add i32 %12, -1, !dbg !653
  %15 = icmp ugt i32 %14, 13, !dbg !653
  br i1 %15, label %16, label %18, !dbg !653

; <label>:16:                                     ; preds = %10
  %17 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* nonnull %5) #7, !dbg !653
  br label %18, !dbg !653

; <label>:18:                                     ; preds = %16, %10
  store i32 %12, i32* %4, align 4, !dbg !654, !tbaa !149
  br label %19, !dbg !655

; <label>:19:                                     ; preds = %8, %18
  %20 = phi i32 [ %9, %8 ], [ %12, %18 ], !dbg !649
  %21 = sext i32 %20 to i64, !dbg !649
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %21) #7, !dbg !656
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %5) #8, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  ret i32 1, !dbg !659
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_encode_keep_buffer(%struct.lua_State*) #0 !dbg !660 {
  %2 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 1) #6, !dbg !666
  %3 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %2, i64 0, i32 9, !dbg !668
  %4 = load i32, i32* %3, align 8, !dbg !668, !tbaa !334
  tail call fastcc void @json_enum_option(%struct.lua_State* %0, i32* nonnull %3, i8** null) #6, !dbg !670
  %5 = load i32, i32* %3, align 8, !dbg !671, !tbaa !334
  %6 = icmp eq i32 %4, %5, !dbg !673
  br i1 %6, label %12, label %7, !dbg !674

; <label>:7:                                      ; preds = %1
  %8 = icmp eq i32 %5, 0, !dbg !675
  %9 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %2, i64 0, i32 2, !dbg !678
  br i1 %8, label %11, label %10, !dbg !679

; <label>:10:                                     ; preds = %7
  tail call void @strbuf_init(%struct.strbuf_t* nonnull %9, i32 0) #7, !dbg !680
  br label %12, !dbg !680

; <label>:11:                                     ; preds = %7
  tail call void @strbuf_free(%struct.strbuf_t* nonnull %9) #7, !dbg !681
  br label %12

; <label>:12:                                     ; preds = %1, %10, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  ret i32 1, !dbg !682
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_encode_invalid_numbers(%struct.lua_State*) #0 !dbg !57 {
  %2 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 1) #6, !dbg !684
  %3 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %2, i64 0, i32 7, !dbg !686
  tail call fastcc void @json_enum_option(%struct.lua_State* %0, i32* nonnull %3, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @json_cfg_encode_invalid_numbers.options, i64 0, i64 0)) #6, !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  ret i32 1, !dbg !688
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_decode_invalid_numbers(%struct.lua_State*) #0 !dbg !689 {
  %2 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 1) #6, !dbg !694
  %3 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %2, i64 0, i32 10, !dbg !696
  tail call fastcc void @json_enum_option(%struct.lua_State* %0, i32* nonnull %3, i8** null) #6, !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  ret i32 1, !dbg !698
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
define internal fastcc void @json_append_data(%struct.lua_State*, %struct.json_config_t* readonly, i32, %struct.strbuf_t*) unnamed_addr #0 !dbg !699 {
  %5 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #7, !dbg !712
  switch i32 %5, label %328 [
    i32 4, label %6
    i32 3, label %7
    i32 1, label %8
    i32 5, label %45
    i32 0, label %285
    i32 2, label %305
  ], !dbg !713

; <label>:6:                                      ; preds = %4
  tail call fastcc void @json_append_string(%struct.lua_State* %0, %struct.strbuf_t* %3, i32 -1) #6, !dbg !714
  br label %337, !dbg !716

; <label>:7:                                      ; preds = %4
  tail call fastcc void @json_append_number(%struct.lua_State* %0, %struct.json_config_t* %1, %struct.strbuf_t* %3, i32 -1) #6, !dbg !717
  br label %337, !dbg !718

; <label>:8:                                      ; preds = %4
  %9 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #7, !dbg !719
  %10 = icmp eq i32 %9, 0, !dbg !719
  %11 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 1, !dbg !732
  %12 = load i32, i32* %11, align 8, !dbg !732, !tbaa !747
  %13 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 2, !dbg !748
  %14 = load i32, i32* %13, align 4, !dbg !748, !tbaa !353
  %15 = xor i32 %14, -1, !dbg !749
  %16 = add i32 %12, %15, !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  br i1 %10, label %31, label %17, !dbg !751

; <label>:17:                                     ; preds = %8
  %18 = icmp slt i32 %16, 4, !dbg !759
  br i1 %18, label %19, label %22, !dbg !760

; <label>:19:                                     ; preds = %17
  %20 = add nsw i32 %14, 4, !dbg !761
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %20) #7, !dbg !762
  %21 = load i32, i32* %13, align 4, !dbg !763, !tbaa !353
  br label %22, !dbg !762

; <label>:22:                                     ; preds = %17, %19
  %23 = phi i32 [ %14, %17 ], [ %21, %19 ], !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  %24 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 0, !dbg !765
  %25 = load i8*, i8** %24, align 8, !dbg !765, !tbaa !368
  %26 = sext i32 %23 to i64, !dbg !766
  %27 = getelementptr inbounds i8, i8* %25, i64 %26, !dbg !766
  %28 = tail call i8* @memcpy(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 4) #7, !dbg !767
  %29 = load i32, i32* %13, align 4, !dbg !768, !tbaa !353
  %30 = add nsw i32 %29, 4, !dbg !768
  store i32 %30, i32* %13, align 4, !dbg !768, !tbaa !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  br label %337, !dbg !770

; <label>:31:                                     ; preds = %8
  %32 = icmp slt i32 %16, 5, !dbg !776
  br i1 %32, label %33, label %36, !dbg !777

; <label>:33:                                     ; preds = %31
  %34 = add nsw i32 %14, 5, !dbg !778
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %34) #7, !dbg !779
  %35 = load i32, i32* %13, align 4, !dbg !780, !tbaa !353
  br label %36, !dbg !779

; <label>:36:                                     ; preds = %31, %33
  %37 = phi i32 [ %14, %31 ], [ %35, %33 ], !dbg !780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !781
  %38 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 0, !dbg !782
  %39 = load i8*, i8** %38, align 8, !dbg !782, !tbaa !368
  %40 = sext i32 %37 to i64, !dbg !783
  %41 = getelementptr inbounds i8, i8* %39, i64 %40, !dbg !783
  %42 = tail call i8* @memcpy(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i64 5) #7, !dbg !784
  %43 = load i32, i32* %13, align 4, !dbg !785, !tbaa !353
  %44 = add nsw i32 %43, 5, !dbg !785
  store i32 %44, i32* %13, align 4, !dbg !785, !tbaa !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  br label %337

; <label>:45:                                     ; preds = %4
  %46 = add nsw i32 %2, 1, !dbg !787
  %47 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 6, !dbg !799
  %48 = load i32, i32* %47, align 4, !dbg !799, !tbaa !801
  %49 = icmp sgt i32 %48, %2, !dbg !802
  br i1 %49, label %50, label %53, !dbg !803

; <label>:50:                                     ; preds = %45
  %51 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 3) #7, !dbg !804
  %52 = icmp eq i32 %51, 0, !dbg !804
  br i1 %52, label %53, label %60, !dbg !805

; <label>:53:                                     ; preds = %45, %50
  %54 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 9, !dbg !806
  %55 = load i32, i32* %54, align 8, !dbg !806, !tbaa !334
  %56 = icmp eq i32 %55, 0, !dbg !808
  br i1 %56, label %57, label %58, !dbg !809

; <label>:57:                                     ; preds = %53
  tail call void @strbuf_free(%struct.strbuf_t* %3) #7, !dbg !810
  br label %58, !dbg !810

; <label>:58:                                     ; preds = %57, %53
  %59 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.59, i64 0, i64 0), i32 %46) #7, !dbg !811
  br label %60, !dbg !812

; <label>:60:                                     ; preds = %50, %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  tail call void @lua_pushnil(%struct.lua_State* %0) #7, !dbg !829
  %61 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #7, !dbg !830
  %62 = icmp eq i32 %61, 0, !dbg !831
  br i1 %62, label %85, label %63, !dbg !832

; <label>:63:                                     ; preds = %60, %76
  %64 = phi i32 [ %81, %76 ], [ 0, %60 ]
  %65 = phi i32 [ %80, %76 ], [ 0, %60 ]
  %66 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -2) #7, !dbg !833
  %67 = icmp eq i32 %66, 3, !dbg !836
  br i1 %67, label %68, label %84, !dbg !837

; <label>:68:                                     ; preds = %63
  %69 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -2) #7, !dbg !838
  %70 = fcmp une double %69, 0.000000e+00, !dbg !840
  br i1 %70, label %71, label %84, !dbg !841

; <label>:71:                                     ; preds = %68
  %72 = tail call double @floor(double %69) #7, !dbg !842
  %73 = fcmp oeq double %72, %69, !dbg !845
  %74 = fcmp oge double %69, 1.000000e+00, !dbg !846
  %75 = and i1 %74, %73, !dbg !847
  br i1 %75, label %76, label %84, !dbg !847

; <label>:76:                                     ; preds = %71
  %77 = sitofp i32 %65 to double, !dbg !848
  %78 = fcmp ogt double %69, %77, !dbg !851
  %79 = fptosi double %69 to i32, !dbg !852
  %80 = select i1 %78, i32 %79, i32 %65, !dbg !853
  %81 = add nuw nsw i32 %64, 1, !dbg !854
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7, !dbg !855
  %82 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #7, !dbg !830
  %83 = icmp eq i32 %82, 0, !dbg !831
  br i1 %83, label %85, label %63, !dbg !832, !llvm.loop !856

; <label>:84:                                     ; preds = %71, %68, %63
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #7, !dbg !859
  br label %111, !dbg !860

; <label>:85:                                     ; preds = %76, %60
  %86 = phi i32 [ 0, %60 ], [ %80, %76 ], !dbg !861
  %87 = phi i32 [ 0, %60 ], [ %81, %76 ], !dbg !862
  %88 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 4, !dbg !863
  %89 = load i32, i32* %88, align 4, !dbg !863, !tbaa !865
  %90 = icmp sgt i32 %89, 0, !dbg !866
  %91 = mul nsw i32 %89, %87, !dbg !867
  %92 = icmp sgt i32 %86, %91, !dbg !868
  %93 = and i1 %90, %92, !dbg !869
  br i1 %93, label %94, label %112, !dbg !869

; <label>:94:                                     ; preds = %85
  %95 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 5, !dbg !870
  %96 = load i32, i32* %95, align 8, !dbg !870, !tbaa !871
  %97 = icmp sgt i32 %86, %96, !dbg !872
  br i1 %97, label %98, label %112, !dbg !873

; <label>:98:                                     ; preds = %94
  %99 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 3, !dbg !874
  %100 = load i32, i32* %99, align 8, !dbg !874, !tbaa !877
  %101 = icmp eq i32 %100, 0, !dbg !878
  br i1 %101, label %102, label %111, !dbg !879

; <label>:102:                                    ; preds = %98
  %103 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 9, !dbg !895
  %104 = load i32, i32* %103, align 8, !dbg !895, !tbaa !334
  %105 = icmp eq i32 %104, 0, !dbg !897
  br i1 %105, label %106, label %107, !dbg !898

; <label>:106:                                    ; preds = %102
  tail call void @strbuf_free(%struct.strbuf_t* %3) #7, !dbg !899
  br label %107, !dbg !899

; <label>:107:                                    ; preds = %106, %102
  %108 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #7, !dbg !900
  %109 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %108) #7, !dbg !901
  %110 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0), i8* %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i64 0, i64 0)) #7, !dbg !902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !903
  br label %111, !dbg !904

; <label>:111:                                    ; preds = %84, %98, %107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  br label %170, !dbg !907

; <label>:112:                                    ; preds = %85, %94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  %113 = icmp sgt i32 %86, 0, !dbg !908
  br i1 %113, label %114, label %170, !dbg !907

; <label>:114:                                    ; preds = %112
  %115 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 1, !dbg !941
  %116 = load i32, i32* %115, align 8, !dbg !941, !tbaa !747
  %117 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 2, !dbg !942
  %118 = load i32, i32* %117, align 4, !dbg !942, !tbaa !353
  %119 = xor i32 %118, -1, !dbg !943
  %120 = add i32 %116, %119, !dbg !943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  %121 = icmp slt i32 %120, 1, !dbg !945
  br i1 %121, label %122, label %125, !dbg !946

; <label>:122:                                    ; preds = %114
  %123 = add nsw i32 %118, 1, !dbg !947
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %123) #7, !dbg !948
  %124 = load i32, i32* %117, align 4, !dbg !949, !tbaa !353
  br label %125, !dbg !948

; <label>:125:                                    ; preds = %114, %122
  %126 = phi i32 [ %118, %114 ], [ %124, %122 ], !dbg !949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !950
  %127 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 0, !dbg !951
  %128 = load i8*, i8** %127, align 8, !dbg !951, !tbaa !368
  %129 = add nsw i32 %126, 1, !dbg !949
  store i32 %129, i32* %117, align 4, !dbg !949, !tbaa !353
  %130 = sext i32 %126 to i64, !dbg !952
  %131 = getelementptr inbounds i8, i8* %128, i64 %130, !dbg !952
  store i8 91, i8* %131, align 1, !dbg !953, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !954
  br label %132, !dbg !957

; <label>:132:                                    ; preds = %151, %125
  %133 = phi i32 [ %153, %151 ], [ 1, %125 ]
  %134 = phi i32 [ %152, %151 ], [ 0, %125 ]
  %135 = icmp eq i32 %134, 0, !dbg !957
  br i1 %135, label %151, label %136, !dbg !962

; <label>:136:                                    ; preds = %132
  %137 = load i32, i32* %115, align 8, !dbg !971, !tbaa !747
  %138 = load i32, i32* %117, align 4, !dbg !972, !tbaa !353
  %139 = xor i32 %138, -1, !dbg !973
  %140 = add i32 %137, %139, !dbg !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  %141 = icmp slt i32 %140, 1, !dbg !975
  br i1 %141, label %142, label %145, !dbg !976

; <label>:142:                                    ; preds = %136
  %143 = add nsw i32 %138, 1, !dbg !977
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %143) #7, !dbg !978
  %144 = load i32, i32* %117, align 4, !dbg !979, !tbaa !353
  br label %145, !dbg !978

; <label>:145:                                    ; preds = %142, %136
  %146 = phi i32 [ %138, %136 ], [ %144, %142 ], !dbg !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !980
  %147 = load i8*, i8** %127, align 8, !dbg !981, !tbaa !368
  %148 = add nsw i32 %146, 1, !dbg !979
  store i32 %148, i32* %117, align 4, !dbg !979, !tbaa !353
  %149 = sext i32 %146 to i64, !dbg !982
  %150 = getelementptr inbounds i8, i8* %147, i64 %149, !dbg !982
  store i8 44, i8* %150, align 1, !dbg !983, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !984
  br label %151, !dbg !985

; <label>:151:                                    ; preds = %145, %132
  %152 = phi i32 [ %134, %145 ], [ 1, %132 ], !dbg !986
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -1, i32 %133) #7, !dbg !987
  tail call fastcc void @json_append_data(%struct.lua_State* %0, %struct.json_config_t* %1, i32 %46, %struct.strbuf_t* %3) #7, !dbg !988
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7, !dbg !989
  %153 = add nuw nsw i32 %133, 1, !dbg !990
  %154 = icmp eq i32 %133, %86, !dbg !991
  br i1 %154, label %155, label %132, !dbg !992, !llvm.loop !993

; <label>:155:                                    ; preds = %151
  %156 = load i32, i32* %115, align 8, !dbg !1004, !tbaa !747
  %157 = load i32, i32* %117, align 4, !dbg !1005, !tbaa !353
  %158 = xor i32 %157, -1, !dbg !1006
  %159 = add i32 %156, %158, !dbg !1006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  %160 = icmp slt i32 %159, 1, !dbg !1008
  br i1 %160, label %161, label %164, !dbg !1009

; <label>:161:                                    ; preds = %155
  %162 = add nsw i32 %157, 1, !dbg !1010
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %162) #7, !dbg !1011
  %163 = load i32, i32* %117, align 4, !dbg !1012, !tbaa !353
  br label %164, !dbg !1011

; <label>:164:                                    ; preds = %155, %161
  %165 = phi i32 [ %157, %155 ], [ %163, %161 ], !dbg !1012
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1013
  %166 = load i8*, i8** %127, align 8, !dbg !1014, !tbaa !368
  %167 = add nsw i32 %165, 1, !dbg !1012
  store i32 %167, i32* %117, align 4, !dbg !1012, !tbaa !353
  %168 = sext i32 %165 to i64, !dbg !1015
  %169 = getelementptr inbounds i8, i8* %166, i64 %168, !dbg !1015
  store i8 93, i8* %169, align 1, !dbg !1016, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1018
  br label %337, !dbg !1019

; <label>:170:                                    ; preds = %111, %112
  %171 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 1, !dbg !1041
  %172 = load i32, i32* %171, align 8, !dbg !1041, !tbaa !747
  %173 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 2, !dbg !1042
  %174 = load i32, i32* %173, align 4, !dbg !1042, !tbaa !353
  %175 = xor i32 %174, -1, !dbg !1043
  %176 = add i32 %172, %175, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  %177 = icmp slt i32 %176, 1, !dbg !1045
  br i1 %177, label %178, label %181, !dbg !1046

; <label>:178:                                    ; preds = %170
  %179 = add nsw i32 %174, 1, !dbg !1047
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %179) #7, !dbg !1048
  %180 = load i32, i32* %173, align 4, !dbg !1049, !tbaa !353
  br label %181, !dbg !1048

; <label>:181:                                    ; preds = %178, %170
  %182 = phi i32 [ %174, %170 ], [ %180, %178 ], !dbg !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1050
  %183 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 0, !dbg !1051
  %184 = load i8*, i8** %183, align 8, !dbg !1051, !tbaa !368
  %185 = add nsw i32 %182, 1, !dbg !1049
  store i32 %185, i32* %173, align 4, !dbg !1049, !tbaa !353
  %186 = sext i32 %182 to i64, !dbg !1052
  %187 = getelementptr inbounds i8, i8* %184, i64 %186, !dbg !1052
  store i8 123, i8* %187, align 1, !dbg !1053, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  tail call void @lua_pushnil(%struct.lua_State* %0) #7, !dbg !1055
  %188 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #7, !dbg !1057
  %189 = icmp eq i32 %188, 0, !dbg !1058
  br i1 %189, label %270, label %190, !dbg !1059

; <label>:190:                                    ; preds = %181
  %191 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 9
  br label %192, !dbg !1059

; <label>:192:                                    ; preds = %190, %267
  %193 = phi i32 [ 0, %190 ], [ %211, %267 ]
  %194 = icmp eq i32 %193, 0, !dbg !1060
  br i1 %194, label %210, label %195, !dbg !1063

; <label>:195:                                    ; preds = %192
  %196 = load i32, i32* %171, align 8, !dbg !1072, !tbaa !747
  %197 = load i32, i32* %173, align 4, !dbg !1073, !tbaa !353
  %198 = xor i32 %197, -1, !dbg !1074
  %199 = add i32 %196, %198, !dbg !1074
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1075
  %200 = icmp slt i32 %199, 1, !dbg !1076
  br i1 %200, label %201, label %204, !dbg !1077

; <label>:201:                                    ; preds = %195
  %202 = add nsw i32 %197, 1, !dbg !1078
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %202) #7, !dbg !1079
  %203 = load i32, i32* %173, align 4, !dbg !1080, !tbaa !353
  br label %204, !dbg !1079

; <label>:204:                                    ; preds = %201, %195
  %205 = phi i32 [ %197, %195 ], [ %203, %201 ], !dbg !1080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  %206 = load i8*, i8** %183, align 8, !dbg !1082, !tbaa !368
  %207 = add nsw i32 %205, 1, !dbg !1080
  store i32 %207, i32* %173, align 4, !dbg !1080, !tbaa !353
  %208 = sext i32 %205 to i64, !dbg !1083
  %209 = getelementptr inbounds i8, i8* %206, i64 %208, !dbg !1083
  store i8 44, i8* %209, align 1, !dbg !1084, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1085
  br label %210, !dbg !1086

; <label>:210:                                    ; preds = %204, %192
  %211 = phi i32 [ %193, %204 ], [ 1, %192 ], !dbg !1087
  %212 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -2) #7, !dbg !1088
  switch i32 %212, label %259 [
    i32 3, label %213
    i32 4, label %244
  ], !dbg !1090

; <label>:213:                                    ; preds = %210
  %214 = load i32, i32* %171, align 8, !dbg !1101, !tbaa !747
  %215 = load i32, i32* %173, align 4, !dbg !1102, !tbaa !353
  %216 = xor i32 %215, -1, !dbg !1103
  %217 = add i32 %214, %216, !dbg !1103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  %218 = icmp slt i32 %217, 1, !dbg !1105
  br i1 %218, label %219, label %222, !dbg !1106

; <label>:219:                                    ; preds = %213
  %220 = add nsw i32 %215, 1, !dbg !1107
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %220) #7, !dbg !1108
  %221 = load i32, i32* %173, align 4, !dbg !1109, !tbaa !353
  br label %222, !dbg !1108

; <label>:222:                                    ; preds = %219, %213
  %223 = phi i32 [ %215, %213 ], [ %221, %219 ], !dbg !1109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  %224 = load i8*, i8** %183, align 8, !dbg !1111, !tbaa !368
  %225 = add nsw i32 %223, 1, !dbg !1109
  store i32 %225, i32* %173, align 4, !dbg !1109, !tbaa !353
  %226 = sext i32 %223 to i64, !dbg !1112
  %227 = getelementptr inbounds i8, i8* %224, i64 %226, !dbg !1112
  store i8 34, i8* %227, align 1, !dbg !1113, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  tail call fastcc void @json_append_number(%struct.lua_State* %0, %struct.json_config_t* %1, %struct.strbuf_t* nonnull %3, i32 -2) #7, !dbg !1115
  %228 = load i32, i32* %171, align 8, !dbg !1125, !tbaa !747
  %229 = load i32, i32* %173, align 4, !dbg !1126, !tbaa !353
  %230 = xor i32 %229, -1, !dbg !1127
  %231 = add i32 %228, %230, !dbg !1127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  %232 = icmp slt i32 %231, 2, !dbg !1129
  br i1 %232, label %233, label %236, !dbg !1130

; <label>:233:                                    ; preds = %222
  %234 = add nsw i32 %229, 2, !dbg !1131
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %234) #7, !dbg !1132
  %235 = load i32, i32* %173, align 4, !dbg !1133, !tbaa !353
  br label %236, !dbg !1132

; <label>:236:                                    ; preds = %233, %222
  %237 = phi i32 [ %229, %222 ], [ %235, %233 ], !dbg !1133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  %238 = load i8*, i8** %183, align 8, !dbg !1135, !tbaa !368
  %239 = sext i32 %237 to i64, !dbg !1136
  %240 = getelementptr inbounds i8, i8* %238, i64 %239, !dbg !1136
  %241 = tail call i8* @memcpy(i8* %240, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i64 2) #7, !dbg !1137
  %242 = load i32, i32* %173, align 4, !dbg !1138, !tbaa !353
  %243 = add nsw i32 %242, 2, !dbg !1138
  store i32 %243, i32* %173, align 4, !dbg !1138, !tbaa !353
  br label %267, !dbg !1139

; <label>:244:                                    ; preds = %210
  tail call fastcc void @json_append_string(%struct.lua_State* %0, %struct.strbuf_t* %3, i32 -2) #7, !dbg !1140
  %245 = load i32, i32* %171, align 8, !dbg !1151, !tbaa !747
  %246 = load i32, i32* %173, align 4, !dbg !1152, !tbaa !353
  %247 = xor i32 %246, -1, !dbg !1153
  %248 = add i32 %245, %247, !dbg !1153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1154
  %249 = icmp slt i32 %248, 1, !dbg !1155
  br i1 %249, label %250, label %253, !dbg !1156

; <label>:250:                                    ; preds = %244
  %251 = add nsw i32 %246, 1, !dbg !1157
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %251) #7, !dbg !1158
  %252 = load i32, i32* %173, align 4, !dbg !1159, !tbaa !353
  br label %253, !dbg !1158

; <label>:253:                                    ; preds = %250, %244
  %254 = phi i32 [ %246, %244 ], [ %252, %250 ], !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1160
  %255 = load i8*, i8** %183, align 8, !dbg !1161, !tbaa !368
  %256 = add nsw i32 %254, 1, !dbg !1159
  store i32 %256, i32* %173, align 4, !dbg !1159, !tbaa !353
  %257 = sext i32 %254 to i64, !dbg !1162
  %258 = getelementptr inbounds i8, i8* %255, i64 %257, !dbg !1162
  store i8 58, i8* %258, align 1, !dbg !1163, !tbaa !167
  br label %267, !dbg !1164

; <label>:259:                                    ; preds = %210
  %260 = load i32, i32* %191, align 8, !dbg !1172, !tbaa !334
  %261 = icmp eq i32 %260, 0, !dbg !1173
  br i1 %261, label %262, label %263, !dbg !1174

; <label>:262:                                    ; preds = %259
  tail call void @strbuf_free(%struct.strbuf_t* %3) #7, !dbg !1175
  br label %263, !dbg !1175

; <label>:263:                                    ; preds = %262, %259
  %264 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -2) #7, !dbg !1176
  %265 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %264) #7, !dbg !1177
  %266 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0), i8* %265, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !1178
  br label %267

; <label>:267:                                    ; preds = %263, %253, %236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1179
  tail call fastcc void @json_append_data(%struct.lua_State* %0, %struct.json_config_t* %1, i32 %46, %struct.strbuf_t* %3) #7, !dbg !1180
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7, !dbg !1181
  %268 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #7, !dbg !1057
  %269 = icmp eq i32 %268, 0, !dbg !1058
  br i1 %269, label %270, label %192, !dbg !1059, !llvm.loop !1182

; <label>:270:                                    ; preds = %267, %181
  %271 = load i32, i32* %171, align 8, !dbg !1193, !tbaa !747
  %272 = load i32, i32* %173, align 4, !dbg !1194, !tbaa !353
  %273 = xor i32 %272, -1, !dbg !1195
  %274 = add i32 %271, %273, !dbg !1195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  %275 = icmp slt i32 %274, 1, !dbg !1197
  br i1 %275, label %276, label %279, !dbg !1198

; <label>:276:                                    ; preds = %270
  %277 = add nsw i32 %272, 1, !dbg !1199
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %277) #7, !dbg !1200
  %278 = load i32, i32* %173, align 4, !dbg !1201, !tbaa !353
  br label %279, !dbg !1200

; <label>:279:                                    ; preds = %270, %276
  %280 = phi i32 [ %272, %270 ], [ %278, %276 ], !dbg !1201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1202
  %281 = load i8*, i8** %183, align 8, !dbg !1203, !tbaa !368
  %282 = add nsw i32 %280, 1, !dbg !1201
  store i32 %282, i32* %173, align 4, !dbg !1201, !tbaa !353
  %283 = sext i32 %280 to i64, !dbg !1204
  %284 = getelementptr inbounds i8, i8* %281, i64 %283, !dbg !1204
  store i8 125, i8* %284, align 1, !dbg !1205, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  br label %337

; <label>:285:                                    ; preds = %4
  %286 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 1, !dbg !1217
  %287 = load i32, i32* %286, align 8, !dbg !1217, !tbaa !747
  %288 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 2, !dbg !1218
  %289 = load i32, i32* %288, align 4, !dbg !1218, !tbaa !353
  %290 = xor i32 %289, -1, !dbg !1219
  %291 = add i32 %287, %290, !dbg !1219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1220
  %292 = icmp slt i32 %291, 4, !dbg !1221
  br i1 %292, label %293, label %296, !dbg !1222

; <label>:293:                                    ; preds = %285
  %294 = add nsw i32 %289, 4, !dbg !1223
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %294) #7, !dbg !1224
  %295 = load i32, i32* %288, align 4, !dbg !1225, !tbaa !353
  br label %296, !dbg !1224

; <label>:296:                                    ; preds = %285, %293
  %297 = phi i32 [ %289, %285 ], [ %295, %293 ], !dbg !1225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1226
  %298 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 0, !dbg !1227
  %299 = load i8*, i8** %298, align 8, !dbg !1227, !tbaa !368
  %300 = sext i32 %297 to i64, !dbg !1228
  %301 = getelementptr inbounds i8, i8* %299, i64 %300, !dbg !1228
  %302 = tail call i8* @memcpy(i8* %301, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4) #7, !dbg !1229
  %303 = load i32, i32* %288, align 4, !dbg !1230, !tbaa !353
  %304 = add nsw i32 %303, 4, !dbg !1230
  store i32 %304, i32* %288, align 4, !dbg !1230, !tbaa !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1231
  br label %337, !dbg !1232

; <label>:305:                                    ; preds = %4
  %306 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #7, !dbg !1233
  %307 = icmp eq i8* %306, null, !dbg !1235
  br i1 %307, label %308, label %328, !dbg !1236

; <label>:308:                                    ; preds = %305
  %309 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 1, !dbg !1247
  %310 = load i32, i32* %309, align 8, !dbg !1247, !tbaa !747
  %311 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 2, !dbg !1248
  %312 = load i32, i32* %311, align 4, !dbg !1248, !tbaa !353
  %313 = xor i32 %312, -1, !dbg !1249
  %314 = add i32 %310, %313, !dbg !1249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1250
  %315 = icmp slt i32 %314, 4, !dbg !1251
  br i1 %315, label %316, label %319, !dbg !1252

; <label>:316:                                    ; preds = %308
  %317 = add nsw i32 %312, 4, !dbg !1253
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %317) #7, !dbg !1254
  %318 = load i32, i32* %311, align 4, !dbg !1255, !tbaa !353
  br label %319, !dbg !1254

; <label>:319:                                    ; preds = %308, %316
  %320 = phi i32 [ %312, %308 ], [ %318, %316 ], !dbg !1255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1256
  %321 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 0, !dbg !1257
  %322 = load i8*, i8** %321, align 8, !dbg !1257, !tbaa !368
  %323 = sext i32 %320 to i64, !dbg !1258
  %324 = getelementptr inbounds i8, i8* %322, i64 %323, !dbg !1258
  %325 = tail call i8* @memcpy(i8* %324, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4) #7, !dbg !1259
  %326 = load i32, i32* %311, align 4, !dbg !1260, !tbaa !353
  %327 = add nsw i32 %326, 4, !dbg !1260
  store i32 %327, i32* %311, align 4, !dbg !1260, !tbaa !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1261
  br label %337, !dbg !1262

; <label>:328:                                    ; preds = %305, %4
  %329 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 9, !dbg !1269
  %330 = load i32, i32* %329, align 8, !dbg !1269, !tbaa !334
  %331 = icmp eq i32 %330, 0, !dbg !1270
  br i1 %331, label %332, label %333, !dbg !1271

; <label>:332:                                    ; preds = %328
  tail call void @strbuf_free(%struct.strbuf_t* %3) #7, !dbg !1272
  br label %333, !dbg !1272

; <label>:333:                                    ; preds = %328, %332
  %334 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #7, !dbg !1273
  %335 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %334) #7, !dbg !1274
  %336 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0), i8* %335, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !1275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  br label %337, !dbg !1277

; <label>:337:                                    ; preds = %164, %279, %22, %36, %333, %319, %296, %7, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1278
  ret void, !dbg !1278
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
define internal fastcc void @json_append_string(%struct.lua_State*, %struct.strbuf_t*, i32) unnamed_addr #0 !dbg !1279 {
  %4 = alloca i64, align 8
  %5 = bitcast i64* %4 to i8*, !dbg !1293
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1293
  %6 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %2, i64* nonnull %4) #7, !dbg !1295
  %7 = load i64, i64* %4, align 8, !dbg !1297, !tbaa !444
  %8 = trunc i64 %7 to i32, !dbg !1297
  %9 = mul i32 %8, 6, !dbg !1297
  %10 = add i32 %9, 2, !dbg !1297
  %11 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %1, i64 0, i32 1, !dbg !1303
  %12 = load i32, i32* %11, align 8, !dbg !1303, !tbaa !747
  %13 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %1, i64 0, i32 2, !dbg !1304
  %14 = load i32, i32* %13, align 4, !dbg !1304, !tbaa !353
  %15 = xor i32 %14, -1, !dbg !1305
  %16 = add i32 %12, %15, !dbg !1305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  %17 = icmp slt i32 %16, %10, !dbg !1307
  br i1 %17, label %18, label %21, !dbg !1308

; <label>:18:                                     ; preds = %3
  %19 = add nsw i32 %10, %14, !dbg !1309
  call void @strbuf_resize(%struct.strbuf_t* nonnull %1, i32 %19) #7, !dbg !1310
  %20 = load i32, i32* %13, align 4, !dbg !1311, !tbaa !353
  br label %21, !dbg !1310

; <label>:21:                                     ; preds = %3, %18
  %22 = phi i32 [ %14, %3 ], [ %20, %18 ], !dbg !1311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1317
  %23 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %1, i64 0, i32 0, !dbg !1320
  %24 = load i8*, i8** %23, align 8, !dbg !1320, !tbaa !368
  %25 = add nsw i32 %22, 1, !dbg !1311
  store i32 %25, i32* %13, align 4, !dbg !1311, !tbaa !353
  %26 = sext i32 %22 to i64, !dbg !1321
  %27 = getelementptr inbounds i8, i8* %24, i64 %26, !dbg !1321
  store i8 34, i8* %27, align 1, !dbg !1322, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  %28 = load i64, i64* %4, align 8, !dbg !1325, !tbaa !444
  %29 = icmp eq i64 %28, 0, !dbg !1328
  br i1 %29, label %49, label %30, !dbg !1329

; <label>:30:                                     ; preds = %21, %45
  %31 = phi i64 [ %46, %45 ], [ 0, %21 ]
  %32 = getelementptr inbounds i8, i8* %6, i64 %31, !dbg !1330
  %33 = load i8, i8* %32, align 1, !dbg !1330, !tbaa !167
  %34 = zext i8 %33 to i64, !dbg !1332
  %35 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [128 x i8*], [128 x i8*] }>* @char2escape to [256 x i8*]*), i64 0, i64 %34, !dbg !1332
  %36 = load i8*, i8** %35, align 8, !dbg !1332, !tbaa !1333
  %37 = icmp eq i8* %36, null, !dbg !1335
  br i1 %37, label %39, label %38, !dbg !1337

; <label>:38:                                     ; preds = %30
  call void @strbuf_append_string(%struct.strbuf_t* %1, i8* nonnull %36) #7, !dbg !1338
  br label %45, !dbg !1338

; <label>:39:                                     ; preds = %30
  %40 = load i8*, i8** %23, align 8, !dbg !1342, !tbaa !368
  %41 = load i32, i32* %13, align 4, !dbg !1343, !tbaa !353
  %42 = add nsw i32 %41, 1, !dbg !1343
  store i32 %42, i32* %13, align 4, !dbg !1343, !tbaa !353
  %43 = sext i32 %41 to i64, !dbg !1344
  %44 = getelementptr inbounds i8, i8* %40, i64 %43, !dbg !1344
  store i8 %33, i8* %44, align 1, !dbg !1345, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1346
  br label %45

; <label>:45:                                     ; preds = %38, %39
  %46 = add nuw i64 %31, 1, !dbg !1347
  %47 = load i64, i64* %4, align 8, !dbg !1325, !tbaa !444
  %48 = icmp ugt i64 %47, %46, !dbg !1328
  br i1 %48, label %30, label %49, !dbg !1329, !llvm.loop !1348

; <label>:49:                                     ; preds = %45, %21
  %50 = load i8*, i8** %23, align 8, !dbg !1353, !tbaa !368
  %51 = load i32, i32* %13, align 4, !dbg !1354, !tbaa !353
  %52 = add nsw i32 %51, 1, !dbg !1354
  store i32 %52, i32* %13, align 4, !dbg !1354, !tbaa !353
  %53 = sext i32 %51 to i64, !dbg !1355
  %54 = getelementptr inbounds i8, i8* %50, i64 %53, !dbg !1355
  store i8 34, i8* %54, align 1, !dbg !1356, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1358
  ret void, !dbg !1358
}

; Function Attrs: noredzone nounwind
define internal fastcc void @json_append_number(%struct.lua_State*, %struct.json_config_t* nocapture readonly, %struct.strbuf_t*, i32) unnamed_addr #0 !dbg !1359 {
  %5 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 %3) #7, !dbg !1373
  %6 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 7, !dbg !1375
  %7 = load i32, i32* %6, align 8, !dbg !1375, !tbaa !1377
  %8 = icmp eq i32 %7, 0, !dbg !1378
  br i1 %8, label %9, label %24, !dbg !1379

; <label>:9:                                      ; preds = %4
  %10 = tail call i32 @__fpclassifyd(double %5) #7, !dbg !1380
  %11 = icmp eq i32 %10, 1, !dbg !1380
  br i1 %11, label %15, label %12, !dbg !1383

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @__fpclassifyd(double %5) #7, !dbg !1384
  %14 = icmp eq i32 %13, 0, !dbg !1384
  br i1 %14, label %15, label %70, !dbg !1385

; <label>:15:                                     ; preds = %12, %9
  %16 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 9, !dbg !1392
  %17 = load i32, i32* %16, align 8, !dbg !1392, !tbaa !334
  %18 = icmp eq i32 %17, 0, !dbg !1393
  br i1 %18, label %19, label %20, !dbg !1394

; <label>:19:                                     ; preds = %15
  tail call void @strbuf_free(%struct.strbuf_t* %2) #7, !dbg !1395
  br label %20, !dbg !1395

; <label>:20:                                     ; preds = %15, %19
  %21 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %3) #7, !dbg !1396
  %22 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %21) #7, !dbg !1397
  %23 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0), i8* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i64 0, i64 0)) #7, !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1399
  br label %70, !dbg !1400

; <label>:24:                                     ; preds = %4
  %25 = icmp eq i32 %7, 1, !dbg !1401
  %26 = tail call i32 @__fpclassifyd(double %5) #7, !dbg !1403
  br i1 %25, label %27, label %47, !dbg !1406

; <label>:27:                                     ; preds = %24
  %28 = icmp eq i32 %26, 0, !dbg !1407
  br i1 %28, label %29, label %70, !dbg !1410

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 1, !dbg !1421
  %31 = load i32, i32* %30, align 8, !dbg !1421, !tbaa !747
  %32 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 2, !dbg !1422
  %33 = load i32, i32* %32, align 4, !dbg !1422, !tbaa !353
  %34 = xor i32 %33, -1, !dbg !1423
  %35 = add i32 %31, %34, !dbg !1423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  %36 = icmp slt i32 %35, 3, !dbg !1425
  br i1 %36, label %37, label %40, !dbg !1426

; <label>:37:                                     ; preds = %29
  %38 = add nsw i32 %33, 3, !dbg !1427
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %2, i32 %38) #7, !dbg !1428
  %39 = load i32, i32* %32, align 4, !dbg !1429, !tbaa !353
  br label %40, !dbg !1428

; <label>:40:                                     ; preds = %29, %37
  %41 = phi i32 [ %33, %29 ], [ %39, %37 ], !dbg !1429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1430
  %42 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 0, !dbg !1431
  %43 = load i8*, i8** %42, align 8, !dbg !1431, !tbaa !368
  %44 = sext i32 %41 to i64, !dbg !1432
  %45 = getelementptr inbounds i8, i8* %43, i64 %44, !dbg !1432
  %46 = tail call i8* @memcpy(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i64 3) #7, !dbg !1433
  br label %90, !dbg !1434

; <label>:47:                                     ; preds = %24
  %48 = icmp eq i32 %26, 1, !dbg !1435
  br i1 %48, label %52, label %49, !dbg !1436

; <label>:49:                                     ; preds = %47
  %50 = tail call i32 @__fpclassifyd(double %5) #7, !dbg !1437
  %51 = icmp eq i32 %50, 0, !dbg !1437
  br i1 %51, label %52, label %70, !dbg !1438

; <label>:52:                                     ; preds = %49, %47
  %53 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 1, !dbg !1449
  %54 = load i32, i32* %53, align 8, !dbg !1449, !tbaa !747
  %55 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 2, !dbg !1450
  %56 = load i32, i32* %55, align 4, !dbg !1450, !tbaa !353
  %57 = xor i32 %56, -1, !dbg !1451
  %58 = add i32 %54, %57, !dbg !1451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  %59 = icmp slt i32 %58, 4, !dbg !1453
  br i1 %59, label %60, label %63, !dbg !1454

; <label>:60:                                     ; preds = %52
  %61 = add nsw i32 %56, 4, !dbg !1455
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %2, i32 %61) #7, !dbg !1456
  %62 = load i32, i32* %55, align 4, !dbg !1457, !tbaa !353
  br label %63, !dbg !1456

; <label>:63:                                     ; preds = %52, %60
  %64 = phi i32 [ %56, %52 ], [ %62, %60 ], !dbg !1457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  %65 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 0, !dbg !1459
  %66 = load i8*, i8** %65, align 8, !dbg !1459, !tbaa !368
  %67 = sext i32 %64 to i64, !dbg !1460
  %68 = getelementptr inbounds i8, i8* %66, i64 %67, !dbg !1460
  %69 = tail call i8* @memcpy(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4) #7, !dbg !1461
  br label %90, !dbg !1462

; <label>:70:                                     ; preds = %27, %49, %12, %20
  %71 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 1, !dbg !1468
  %72 = load i32, i32* %71, align 8, !dbg !1468, !tbaa !747
  %73 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 2, !dbg !1469
  %74 = load i32, i32* %73, align 4, !dbg !1469, !tbaa !353
  %75 = xor i32 %74, -1, !dbg !1470
  %76 = add i32 %72, %75, !dbg !1470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1471
  %77 = icmp slt i32 %76, 32, !dbg !1472
  br i1 %77, label %78, label %81, !dbg !1473

; <label>:78:                                     ; preds = %70
  %79 = add nsw i32 %74, 32, !dbg !1474
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %2, i32 %79) #7, !dbg !1475
  %80 = load i32, i32* %73, align 4, !dbg !1476, !tbaa !353
  br label %81, !dbg !1475

; <label>:81:                                     ; preds = %70, %78
  %82 = phi i32 [ %74, %70 ], [ %80, %78 ], !dbg !1476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  %83 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 0, !dbg !1485
  %84 = load i8*, i8** %83, align 8, !dbg !1485, !tbaa !368
  %85 = sext i32 %82 to i64, !dbg !1486
  %86 = getelementptr inbounds i8, i8* %84, i64 %85, !dbg !1486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1487
  %87 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 8, !dbg !1488
  %88 = load i32, i32* %87, align 4, !dbg !1488, !tbaa !1489
  %89 = tail call i32 @fpconv_g_fmt(i8* %86, double %5, i32 %88) #7, !dbg !1490
  br label %90, !dbg !1499

; <label>:90:                                     ; preds = %81, %63, %40
  %91 = phi i32* [ %73, %81 ], [ %55, %63 ], [ %32, %40 ]
  %92 = phi i32 [ %89, %81 ], [ 4, %63 ], [ 3, %40 ]
  %93 = load i32, i32* %91, align 4, !dbg !1500, !tbaa !353
  %94 = add nsw i32 %93, %92, !dbg !1500
  store i32 %94, i32* %91, align 4, !dbg !1500, !tbaa !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1499
  ret void, !dbg !1499
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
define internal fastcc void @json_next_token(%struct.json_parse_t*, %struct.json_token_t*) unnamed_addr #0 !dbg !1501 {
  %3 = alloca i8*, align 8
  %4 = alloca [4 x i8], align 1
  %5 = alloca i8*, align 8
  %6 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %0, i64 0, i32 3, !dbg !1541
  %7 = load %struct.json_config_t*, %struct.json_config_t** %6, align 8, !dbg !1541, !tbaa !428
  %8 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %0, i64 0, i32 1, !dbg !1543
  %9 = load i8*, i8** %8, align 8, !dbg !1543, !tbaa !441
  %10 = load i8, i8* %9, align 1, !dbg !1545, !tbaa !167
  %11 = zext i8 %10 to i64, !dbg !1546
  %12 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %7, i64 0, i32 0, i64 %11, !dbg !1546
  %13 = load i32, i32* %12, align 4, !dbg !1546, !tbaa !167
  %14 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 0, !dbg !1547
  store i32 %13, i32* %14, align 8, !dbg !1548, !tbaa !465
  %15 = icmp eq i32 %13, 11, !dbg !1549
  br i1 %15, label %16, label %24, !dbg !1551

; <label>:16:                                     ; preds = %2, %16
  %17 = phi i8* [ %18, %16 ], [ %9, %2 ]
  %18 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1552
  store i8* %18, i8** %8, align 8, !dbg !1552, !tbaa !441
  %19 = load i8, i8* %18, align 1, !dbg !1545, !tbaa !167
  %20 = zext i8 %19 to i64, !dbg !1546
  %21 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %7, i64 0, i32 0, i64 %20, !dbg !1546
  %22 = load i32, i32* %21, align 4, !dbg !1546, !tbaa !167
  store i32 %22, i32* %14, align 8, !dbg !1548, !tbaa !465
  %23 = icmp eq i32 %22, 11, !dbg !1549
  br i1 %23, label %16, label %24, !dbg !1551, !llvm.loop !1553

; <label>:24:                                     ; preds = %16, %2
  %25 = phi i8* [ %9, %2 ], [ %18, %16 ]
  %26 = phi i8 [ %10, %2 ], [ %19, %16 ], !dbg !1545
  %27 = phi i32 [ %13, %2 ], [ %22, %16 ], !dbg !1546
  %28 = ptrtoint i8* %25 to i64, !dbg !1556
  %29 = bitcast %struct.json_parse_t* %0 to i64*, !dbg !1557
  %30 = load i64, i64* %29, align 8, !dbg !1557, !tbaa !434
  %31 = sub i64 %28, %30, !dbg !1556
  %32 = trunc i64 %31 to i32, !dbg !1558
  %33 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 1, !dbg !1559
  store i32 %32, i32* %33, align 4, !dbg !1560, !tbaa !496
  switch i32 %27, label %38 [
    i32 12, label %34
    i32 10, label %343
    i32 13, label %40
  ], !dbg !1561

; <label>:34:                                     ; preds = %24
  store i32 12, i32* %14, align 8, !dbg !1575, !tbaa !465
  %35 = sub i64 %28, %30, !dbg !1576
  %36 = trunc i64 %35 to i32, !dbg !1577
  store i32 %36, i32* %33, align 4, !dbg !1578, !tbaa !496
  %37 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1579
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i64 0, i64 0), i8** %37, align 8, !dbg !1580, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1581
  br label %343, !dbg !1582

; <label>:38:                                     ; preds = %24
  %39 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1583
  store i8* %39, i8** %8, align 8, !dbg !1583, !tbaa !441
  br label %343, !dbg !1586

; <label>:40:                                     ; preds = %24
  switch i8 %26, label %206 [
    i8 34, label %41
    i8 45, label %209
  ], !dbg !1587

; <label>:41:                                     ; preds = %40
  %42 = load i8, i8* %25, align 1, !dbg !1591, !tbaa !167
  %43 = icmp eq i8 %42, 34, !dbg !1591
  br i1 %43, label %45, label %44, !dbg !1591

; <label>:44:                                     ; preds = %41
  tail call void @__assert_func(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.68, i64 0, i64 0), i32 891, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.json_next_string_token, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i64 0, i64 0)) #9, !dbg !1591
  unreachable, !dbg !1591

; <label>:45:                                     ; preds = %41
  %46 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1592
  store i8* %46, i8** %8, align 8, !dbg !1592, !tbaa !441
  %47 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %0, i64 0, i32 2, !dbg !1593
  %48 = load %struct.strbuf_t*, %struct.strbuf_t** %47, align 8, !dbg !1593, !tbaa !457
  %49 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %48, i64 0, i32 2, !dbg !1596
  store i32 0, i32* %49, align 4, !dbg !1597, !tbaa !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  br label %54, !dbg !1599

; <label>:54:                                     ; preds = %186, %45
  %55 = phi i8* [ %46, %45 ], [ %187, %186 ]
  %56 = load i8, i8* %55, align 1, !dbg !1600, !tbaa !167
  switch i8 %56, label %174 [
    i8 34, label %188
    i8 0, label %57
    i8 92, label %63
  ], !dbg !1599

; <label>:57:                                     ; preds = %54
  %58 = ptrtoint i8* %55 to i64, !dbg !1602
  store i32 12, i32* %14, align 8, !dbg !1609, !tbaa !465
  %59 = load i64, i64* %29, align 8, !dbg !1610, !tbaa !434
  %60 = sub i64 %58, %59, !dbg !1611
  %61 = trunc i64 %60 to i32, !dbg !1612
  store i32 %61, i32* %33, align 4, !dbg !1613, !tbaa !496
  %62 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1614
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.70, i64 0, i64 0), i8** %62, align 8, !dbg !1615, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1616
  br label %205, !dbg !1617

; <label>:63:                                     ; preds = %54
  %64 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1618
  %65 = load i8, i8* %64, align 1, !dbg !1619, !tbaa !167
  %66 = zext i8 %65 to i64, !dbg !1620
  %67 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %7, i64 0, i32 1, i64 %66, !dbg !1620
  %68 = load i8, i8* %67, align 1, !dbg !1620, !tbaa !167
  switch i8 %68, label %173 [
    i8 117, label %69
    i8 0, label %167
  ], !dbg !1621

; <label>:69:                                     ; preds = %63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %50) #8, !dbg !1623
  %70 = getelementptr inbounds i8, i8* %55, i64 2, !dbg !1625
  %71 = call fastcc i32 @decode_hex4(i8* nonnull %70) #7, !dbg !1626
  %72 = icmp slt i32 %71, 0, !dbg !1628
  br i1 %72, label %160, label %73, !dbg !1630

; <label>:73:                                     ; preds = %69
  %74 = and i32 %71, 63488, !dbg !1631
  %75 = icmp eq i32 %74, 55296, !dbg !1633
  br i1 %75, label %76, label %99, !dbg !1634

; <label>:76:                                     ; preds = %73
  %77 = and i32 %71, 1024, !dbg !1635
  %78 = icmp eq i32 %77, 0, !dbg !1635
  br i1 %78, label %79, label %160, !dbg !1638

; <label>:79:                                     ; preds = %76
  %80 = load i8*, i8** %8, align 8, !dbg !1639, !tbaa !441
  %81 = getelementptr inbounds i8, i8* %80, i64 6, !dbg !1641
  %82 = load i8, i8* %81, align 1, !dbg !1642, !tbaa !167
  %83 = icmp eq i8 %82, 92, !dbg !1643
  br i1 %83, label %84, label %160, !dbg !1644

; <label>:84:                                     ; preds = %79
  %85 = getelementptr inbounds i8, i8* %80, i64 7, !dbg !1645
  %86 = load i8, i8* %85, align 1, !dbg !1646, !tbaa !167
  %87 = icmp eq i8 %86, 117, !dbg !1647
  br i1 %87, label %88, label %160, !dbg !1648

; <label>:88:                                     ; preds = %84
  %89 = getelementptr inbounds i8, i8* %80, i64 8, !dbg !1649
  %90 = call fastcc i32 @decode_hex4(i8* nonnull %89) #7, !dbg !1650
  %91 = and i32 %90, -2147419136, !dbg !1652
  %92 = icmp eq i32 %91, 56320, !dbg !1652
  br i1 %92, label %93, label %160, !dbg !1652

; <label>:93:                                     ; preds = %88
  %94 = shl i32 %71, 10, !dbg !1653
  %95 = and i32 %94, 1047552, !dbg !1653
  %96 = and i32 %90, 1023, !dbg !1654
  %97 = or i32 %96, %95, !dbg !1655
  %98 = add nuw nsw i32 %97, 65536, !dbg !1656
  br label %99, !dbg !1657

; <label>:99:                                     ; preds = %93, %73
  %100 = phi i32 [ %98, %93 ], [ %71, %73 ], !dbg !1658
  %101 = phi i64 [ 12, %93 ], [ 6, %73 ]
  %102 = icmp slt i32 %100, 128, !dbg !1668
  br i1 %102, label %103, label %105, !dbg !1670

; <label>:103:                                    ; preds = %99
  %104 = trunc i32 %100 to i8, !dbg !1671
  store i8 %104, i8* %50, align 1, !dbg !1673, !tbaa !167
  br label %145, !dbg !1674

; <label>:105:                                    ; preds = %99
  %106 = icmp slt i32 %100, 2048, !dbg !1675
  br i1 %106, label %107, label %114, !dbg !1677

; <label>:107:                                    ; preds = %105
  %108 = lshr i32 %100, 6, !dbg !1678
  %109 = trunc i32 %108 to i8, !dbg !1680
  %110 = or i8 %109, -64, !dbg !1680
  store i8 %110, i8* %50, align 1, !dbg !1681, !tbaa !167
  %111 = trunc i32 %100 to i8, !dbg !1682
  %112 = and i8 %111, 63, !dbg !1682
  %113 = or i8 %112, -128, !dbg !1682
  store i8 %113, i8* %51, align 1, !dbg !1683, !tbaa !167
  br label %145, !dbg !1684

; <label>:114:                                    ; preds = %105
  %115 = icmp slt i32 %100, 65536, !dbg !1685
  br i1 %115, label %116, label %127, !dbg !1687

; <label>:116:                                    ; preds = %114
  %117 = lshr i32 %100, 12, !dbg !1688
  %118 = trunc i32 %117 to i8, !dbg !1690
  %119 = or i8 %118, -32, !dbg !1690
  store i8 %119, i8* %50, align 1, !dbg !1691, !tbaa !167
  %120 = lshr i32 %100, 6, !dbg !1692
  %121 = trunc i32 %120 to i8, !dbg !1693
  %122 = and i8 %121, 63, !dbg !1693
  %123 = or i8 %122, -128, !dbg !1693
  store i8 %123, i8* %51, align 1, !dbg !1694, !tbaa !167
  %124 = trunc i32 %100 to i8, !dbg !1695
  %125 = and i8 %124, 63, !dbg !1695
  %126 = or i8 %125, -128, !dbg !1695
  store i8 %126, i8* %52, align 1, !dbg !1696, !tbaa !167
  br label %145, !dbg !1697

; <label>:127:                                    ; preds = %114
  %128 = icmp slt i32 %100, 2097152, !dbg !1698
  br i1 %128, label %129, label %144, !dbg !1700

; <label>:129:                                    ; preds = %127
  %130 = lshr i32 %100, 18, !dbg !1701
  %131 = trunc i32 %130 to i8, !dbg !1703
  %132 = or i8 %131, -16, !dbg !1703
  store i8 %132, i8* %50, align 1, !dbg !1704, !tbaa !167
  %133 = lshr i32 %100, 12, !dbg !1705
  %134 = trunc i32 %133 to i8, !dbg !1706
  %135 = and i8 %134, 63, !dbg !1706
  %136 = or i8 %135, -128, !dbg !1706
  store i8 %136, i8* %51, align 1, !dbg !1707, !tbaa !167
  %137 = lshr i32 %100, 6, !dbg !1708
  %138 = trunc i32 %137 to i8, !dbg !1709
  %139 = and i8 %138, 63, !dbg !1709
  %140 = or i8 %139, -128, !dbg !1709
  store i8 %140, i8* %52, align 1, !dbg !1710, !tbaa !167
  %141 = trunc i32 %100 to i8, !dbg !1711
  %142 = and i8 %141, 63, !dbg !1711
  %143 = or i8 %142, -128, !dbg !1711
  store i8 %143, i8* %53, align 1, !dbg !1712, !tbaa !167
  br label %145, !dbg !1713

; <label>:144:                                    ; preds = %127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1714
  br label %160

; <label>:145:                                    ; preds = %129, %116, %107, %103
  %146 = phi i32 [ 4, %129 ], [ 3, %116 ], [ 2, %107 ], [ 1, %103 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1714
  %147 = load %struct.strbuf_t*, %struct.strbuf_t** %47, align 8, !dbg !1716, !tbaa !457
  %148 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %147, i64 0, i32 0, !dbg !1726
  %149 = load i8*, i8** %148, align 8, !dbg !1726, !tbaa !368
  %150 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %147, i64 0, i32 2, !dbg !1727
  %151 = load i32, i32* %150, align 4, !dbg !1727, !tbaa !353
  %152 = sext i32 %151 to i64, !dbg !1728
  %153 = getelementptr inbounds i8, i8* %149, i64 %152, !dbg !1728
  %154 = zext i32 %146 to i64, !dbg !1729
  %155 = call i8* @memcpy(i8* %153, i8* nonnull %50, i64 %154) #7, !dbg !1730
  %156 = load i32, i32* %150, align 4, !dbg !1731, !tbaa !353
  %157 = add nsw i32 %156, %146, !dbg !1731
  store i32 %157, i32* %150, align 4, !dbg !1731, !tbaa !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1732
  %158 = load i8*, i8** %8, align 8, !dbg !1733, !tbaa !441
  %159 = getelementptr inbounds i8, i8* %158, i64 %101, !dbg !1733
  store i8* %159, i8** %8, align 8, !dbg !1733, !tbaa !441
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %50) #8, !dbg !1734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1734
  br label %186, !dbg !1735

; <label>:160:                                    ; preds = %88, %84, %79, %76, %69, %144
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %50) #8, !dbg !1734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1734
  store i32 12, i32* %14, align 8, !dbg !1740, !tbaa !465
  %161 = bitcast i8** %8 to i64*, !dbg !1741
  %162 = load i64, i64* %161, align 8, !dbg !1741, !tbaa !441
  %163 = load i64, i64* %29, align 8, !dbg !1742, !tbaa !434
  %164 = sub i64 %162, %163, !dbg !1743
  %165 = trunc i64 %164 to i32, !dbg !1744
  store i32 %165, i32* %33, align 4, !dbg !1745, !tbaa !496
  %166 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1746
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.71, i64 0, i64 0), i8** %166, align 8, !dbg !1747, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1748
  br label %205, !dbg !1749

; <label>:167:                                    ; preds = %63
  %168 = ptrtoint i8* %55 to i64, !dbg !1602
  store i32 12, i32* %14, align 8, !dbg !1756, !tbaa !465
  %169 = load i64, i64* %29, align 8, !dbg !1757, !tbaa !434
  %170 = sub i64 %168, %169, !dbg !1758
  %171 = trunc i64 %170 to i32, !dbg !1759
  store i32 %171, i32* %33, align 4, !dbg !1760, !tbaa !496
  %172 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1761
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.72, i64 0, i64 0), i8** %172, align 8, !dbg !1762, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1763
  br label %205, !dbg !1764

; <label>:173:                                    ; preds = %63
  store i8* %64, i8** %8, align 8, !dbg !1765, !tbaa !441
  br label %174, !dbg !1766

; <label>:174:                                    ; preds = %173, %54
  %175 = phi i8 [ %68, %173 ], [ %56, %54 ], !dbg !1602
  %176 = load %struct.strbuf_t*, %struct.strbuf_t** %47, align 8, !dbg !1767, !tbaa !457
  %177 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %176, i64 0, i32 0, !dbg !1771
  %178 = load i8*, i8** %177, align 8, !dbg !1771, !tbaa !368
  %179 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %176, i64 0, i32 2, !dbg !1772
  %180 = load i32, i32* %179, align 4, !dbg !1773, !tbaa !353
  %181 = add nsw i32 %180, 1, !dbg !1773
  store i32 %181, i32* %179, align 4, !dbg !1773, !tbaa !353
  %182 = sext i32 %180 to i64, !dbg !1774
  %183 = getelementptr inbounds i8, i8* %178, i64 %182, !dbg !1774
  store i8 %175, i8* %183, align 1, !dbg !1775, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1776
  %184 = load i8*, i8** %8, align 8, !dbg !1777, !tbaa !441
  %185 = getelementptr inbounds i8, i8* %184, i64 1, !dbg !1777
  store i8* %185, i8** %8, align 8, !dbg !1777, !tbaa !441
  br label %186, !dbg !1599

; <label>:186:                                    ; preds = %174, %145
  %187 = phi i8* [ %185, %174 ], [ %159, %145 ]
  br label %54, !dbg !1600, !llvm.loop !1778

; <label>:188:                                    ; preds = %54
  %189 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1781
  store i8* %189, i8** %8, align 8, !dbg !1781, !tbaa !441
  %190 = load %struct.strbuf_t*, %struct.strbuf_t** %47, align 8, !dbg !1782, !tbaa !457
  %191 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %190, i64 0, i32 0, !dbg !1788
  %192 = load i8*, i8** %191, align 8, !dbg !1788, !tbaa !368
  %193 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %190, i64 0, i32 2, !dbg !1789
  %194 = load i32, i32* %193, align 4, !dbg !1789, !tbaa !353
  %195 = sext i32 %194 to i64, !dbg !1790
  %196 = getelementptr inbounds i8, i8* %192, i64 %195, !dbg !1790
  store i8 0, i8* %196, align 1, !dbg !1791, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1792
  store i32 4, i32* %14, align 8, !dbg !1793, !tbaa !465
  %197 = load %struct.strbuf_t*, %struct.strbuf_t** %47, align 8, !dbg !1794, !tbaa !457
  %198 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 3, !dbg !1795
  %199 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %197, i64 0, i32 2, !dbg !1799
  %200 = load i32, i32* %199, align 4, !dbg !1799, !tbaa !353
  store i32 %200, i32* %198, align 4, !dbg !1800, !tbaa !149
  %201 = bitcast %struct.strbuf_t* %197 to i64*, !dbg !1801
  %202 = load i64, i64* %201, align 8, !dbg !1801, !tbaa !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1802
  %203 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1803
  %204 = bitcast i8** %203 to i64*, !dbg !1804
  store i64 %202, i64* %204, align 8, !dbg !1804, !tbaa !167
  br label %205, !dbg !1805

; <label>:205:                                    ; preds = %57, %160, %167, %188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1805
  br label %343, !dbg !1806

; <label>:206:                                    ; preds = %40
  %207 = add i8 %26, -48, !dbg !1807
  %208 = icmp ult i8 %207, 10, !dbg !1807
  br i1 %208, label %209, label %260, !dbg !1807

; <label>:209:                                    ; preds = %40, %206
  %210 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %7, i64 0, i32 10, !dbg !1809
  %211 = load i32, i32* %210, align 4, !dbg !1809, !tbaa !1812
  %212 = icmp eq i32 %211, 0, !dbg !1813
  br i1 %212, label %213, label %244, !dbg !1814

; <label>:213:                                    ; preds = %209
  %214 = load i8, i8* %25, align 1, !dbg !1825, !tbaa !167
  switch i8 %214, label %218 [
    i8 43, label %236
    i8 45, label %215
  ], !dbg !1827

; <label>:215:                                    ; preds = %213
  %216 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1828
  %217 = load i8, i8* %216, align 1, !dbg !1830, !tbaa !167
  br label %218, !dbg !1831

; <label>:218:                                    ; preds = %215, %213
  %219 = phi i8 [ %214, %213 ], [ %217, %215 ], !dbg !1830
  %220 = phi i8* [ %25, %213 ], [ %216, %215 ], !dbg !1832
  %221 = icmp eq i8 %219, 48, !dbg !1833
  br i1 %221, label %222, label %230, !dbg !1834

; <label>:222:                                    ; preds = %218
  %223 = getelementptr inbounds i8, i8* %220, i64 1, !dbg !1835
  %224 = load i8, i8* %223, align 1, !dbg !1836, !tbaa !167
  %225 = or i8 %224, 32, !dbg !1837
  %226 = icmp eq i8 %225, 120, !dbg !1839
  %227 = add i8 %224, -48, !dbg !1840
  %228 = icmp ult i8 %227, 10, !dbg !1840
  %229 = or i1 %226, %228, !dbg !1841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1842
  br i1 %229, label %240, label %244, !dbg !1843

; <label>:230:                                    ; preds = %218
  %231 = icmp slt i8 %219, 58, !dbg !1844
  br i1 %231, label %232, label %233, !dbg !1846

; <label>:232:                                    ; preds = %230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1842
  br label %244, !dbg !1843

; <label>:233:                                    ; preds = %230
  %234 = tail call i32 @strncasecmp(i8* nonnull %220, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i64 0, i64 0), i64 3) #10, !dbg !1847
  %235 = icmp eq i32 %234, 0, !dbg !1847
  br i1 %235, label %236, label %237, !dbg !1849

; <label>:236:                                    ; preds = %213, %233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1842
  br label %240, !dbg !1843

; <label>:237:                                    ; preds = %233
  %238 = tail call i32 @strncasecmp(i8* nonnull %220, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i64 3) #10, !dbg !1850
  %239 = icmp eq i32 %238, 0, !dbg !1850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1842
  br i1 %239, label %240, label %244, !dbg !1843

; <label>:240:                                    ; preds = %222, %237, %236
  store i32 12, i32* %14, align 8, !dbg !1857, !tbaa !465
  %241 = sub i64 %28, %30, !dbg !1858
  %242 = trunc i64 %241 to i32, !dbg !1859
  store i32 %242, i32* %33, align 4, !dbg !1860, !tbaa !496
  %243 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1861
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0), i8** %243, align 8, !dbg !1862, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  br label %343, !dbg !1864

; <label>:244:                                    ; preds = %222, %237, %232, %209
  %245 = bitcast i8** %3 to i8*, !dbg !1873
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %245) #8, !dbg !1873
  store i32 5, i32* %14, align 8, !dbg !1874, !tbaa !465
  %246 = call double @fpconv_strtod(i8* %25, i8** nonnull %3) #7, !dbg !1876
  %247 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, !dbg !1877
  %248 = bitcast %union.anon* %247 to double*, !dbg !1878
  store double %246, double* %248, align 8, !dbg !1879, !tbaa !167
  %249 = load i8*, i8** %8, align 8, !dbg !1880, !tbaa !441
  %250 = load i8*, i8** %3, align 8, !dbg !1882, !tbaa !1333
  %251 = icmp eq i8* %249, %250, !dbg !1883
  br i1 %251, label %252, label %258, !dbg !1884

; <label>:252:                                    ; preds = %244
  %253 = ptrtoint i8* %249 to i64, !dbg !1884
  store i32 12, i32* %14, align 8, !dbg !1889, !tbaa !465
  %254 = load i64, i64* %29, align 8, !dbg !1890, !tbaa !434
  %255 = sub i64 %253, %254, !dbg !1891
  %256 = trunc i64 %255 to i32, !dbg !1892
  store i32 %256, i32* %33, align 4, !dbg !1893, !tbaa !496
  %257 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1894
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0), i8** %257, align 8, !dbg !1895, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1896
  br label %259, !dbg !1897

; <label>:258:                                    ; preds = %244
  store i8* %250, i8** %8, align 8, !dbg !1898, !tbaa !441
  br label %259

; <label>:259:                                    ; preds = %252, %258
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %245) #8, !dbg !1899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1899
  br label %343, !dbg !1900

; <label>:260:                                    ; preds = %206
  %261 = tail call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 4) #7, !dbg !1901
  %262 = icmp eq i32 %261, 0, !dbg !1901
  br i1 %262, label %263, label %268, !dbg !1903

; <label>:263:                                    ; preds = %260
  store i32 6, i32* %14, align 8, !dbg !1904, !tbaa !465
  %264 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, !dbg !1906
  %265 = bitcast %union.anon* %264 to i32*, !dbg !1907
  store i32 1, i32* %265, align 8, !dbg !1908, !tbaa !167
  %266 = load i8*, i8** %8, align 8, !dbg !1909, !tbaa !441
  %267 = getelementptr inbounds i8, i8* %266, i64 4, !dbg !1909
  store i8* %267, i8** %8, align 8, !dbg !1909, !tbaa !441
  br label %343, !dbg !1910

; <label>:268:                                    ; preds = %260
  %269 = load i8*, i8** %8, align 8, !dbg !1911, !tbaa !441
  %270 = tail call i32 @strncmp(i8* %269, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i64 5) #7, !dbg !1913
  %271 = icmp eq i32 %270, 0, !dbg !1913
  br i1 %271, label %272, label %277, !dbg !1914

; <label>:272:                                    ; preds = %268
  store i32 6, i32* %14, align 8, !dbg !1915, !tbaa !465
  %273 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, !dbg !1917
  %274 = bitcast %union.anon* %273 to i32*, !dbg !1918
  store i32 0, i32* %274, align 8, !dbg !1919, !tbaa !167
  %275 = load i8*, i8** %8, align 8, !dbg !1920, !tbaa !441
  %276 = getelementptr inbounds i8, i8* %275, i64 5, !dbg !1920
  store i8* %276, i8** %8, align 8, !dbg !1920, !tbaa !441
  br label %343, !dbg !1921

; <label>:277:                                    ; preds = %268
  %278 = load i8*, i8** %8, align 8, !dbg !1922, !tbaa !441
  %279 = tail call i32 @strncmp(i8* %278, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4) #7, !dbg !1924
  %280 = icmp eq i32 %279, 0, !dbg !1924
  br i1 %280, label %281, label %284, !dbg !1925

; <label>:281:                                    ; preds = %277
  store i32 7, i32* %14, align 8, !dbg !1926, !tbaa !465
  %282 = load i8*, i8** %8, align 8, !dbg !1928, !tbaa !441
  %283 = getelementptr inbounds i8, i8* %282, i64 4, !dbg !1928
  store i8* %283, i8** %8, align 8, !dbg !1928, !tbaa !441
  br label %343, !dbg !1929

; <label>:284:                                    ; preds = %277
  %285 = load %struct.json_config_t*, %struct.json_config_t** %6, align 8, !dbg !1930, !tbaa !428
  %286 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %285, i64 0, i32 10, !dbg !1932
  %287 = load i32, i32* %286, align 4, !dbg !1932, !tbaa !1812
  %288 = icmp eq i32 %287, 0, !dbg !1933
  br i1 %288, label %289, label %292, !dbg !1934

; <label>:289:                                    ; preds = %284
  %290 = bitcast i8** %8 to i64*
  %291 = load i64, i64* %290, align 8, !dbg !1935, !tbaa !441
  br label %337, !dbg !1934

; <label>:292:                                    ; preds = %284
  %293 = load i8*, i8** %8, align 8, !dbg !1939, !tbaa !441
  %294 = load i8, i8* %293, align 1, !dbg !1941, !tbaa !167
  %295 = ptrtoint i8* %293 to i64, !dbg !1942
  switch i8 %294, label %299 [
    i8 43, label %317
    i8 45, label %296
  ], !dbg !1942

; <label>:296:                                    ; preds = %292
  %297 = getelementptr inbounds i8, i8* %293, i64 1, !dbg !1943
  %298 = load i8, i8* %297, align 1, !dbg !1944, !tbaa !167
  br label %299, !dbg !1945

; <label>:299:                                    ; preds = %296, %292
  %300 = phi i8 [ %294, %292 ], [ %298, %296 ], !dbg !1944
  %301 = phi i8* [ %293, %292 ], [ %297, %296 ], !dbg !1946
  %302 = icmp eq i8 %300, 48, !dbg !1947
  br i1 %302, label %303, label %311, !dbg !1948

; <label>:303:                                    ; preds = %299
  %304 = getelementptr inbounds i8, i8* %301, i64 1, !dbg !1949
  %305 = load i8, i8* %304, align 1, !dbg !1950, !tbaa !167
  %306 = or i8 %305, 32, !dbg !1951
  %307 = icmp eq i8 %306, 120, !dbg !1952
  %308 = add i8 %305, -48, !dbg !1953
  %309 = icmp ult i8 %308, 10, !dbg !1953
  %310 = or i1 %307, %309, !dbg !1954
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1955
  br i1 %310, label %321, label %337, !dbg !1956

; <label>:311:                                    ; preds = %299
  %312 = icmp slt i8 %300, 58, !dbg !1957
  br i1 %312, label %313, label %314, !dbg !1958

; <label>:313:                                    ; preds = %311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1955
  br label %337, !dbg !1956

; <label>:314:                                    ; preds = %311
  %315 = tail call i32 @strncasecmp(i8* %301, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i64 0, i64 0), i64 3) #10, !dbg !1959
  %316 = icmp eq i32 %315, 0, !dbg !1959
  br i1 %316, label %317, label %318, !dbg !1960

; <label>:317:                                    ; preds = %292, %314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1955
  br label %321, !dbg !1956

; <label>:318:                                    ; preds = %314
  %319 = tail call i32 @strncasecmp(i8* %301, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i64 3) #10, !dbg !1961
  %320 = icmp eq i32 %319, 0, !dbg !1961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1955
  br i1 %320, label %321, label %337, !dbg !1956

; <label>:321:                                    ; preds = %303, %318, %317
  %322 = bitcast i8** %5 to i8*, !dbg !1966
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %322) #8, !dbg !1966
  store i32 5, i32* %14, align 8, !dbg !1967, !tbaa !465
  %323 = call double @fpconv_strtod(i8* %293, i8** nonnull %5) #7, !dbg !1969
  %324 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, !dbg !1970
  %325 = bitcast %union.anon* %324 to double*, !dbg !1971
  store double %323, double* %325, align 8, !dbg !1972, !tbaa !167
  %326 = load i8*, i8** %8, align 8, !dbg !1973, !tbaa !441
  %327 = load i8*, i8** %5, align 8, !dbg !1974, !tbaa !1333
  %328 = icmp eq i8* %326, %327, !dbg !1975
  br i1 %328, label %329, label %335, !dbg !1976

; <label>:329:                                    ; preds = %321
  %330 = ptrtoint i8* %326 to i64, !dbg !1976
  store i32 12, i32* %14, align 8, !dbg !1981, !tbaa !465
  %331 = load i64, i64* %29, align 8, !dbg !1982, !tbaa !434
  %332 = sub i64 %330, %331, !dbg !1983
  %333 = trunc i64 %332 to i32, !dbg !1984
  store i32 %333, i32* %33, align 4, !dbg !1985, !tbaa !496
  %334 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1986
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0), i8** %334, align 8, !dbg !1987, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1988
  br label %336, !dbg !1989

; <label>:335:                                    ; preds = %321
  store i8* %327, i8** %8, align 8, !dbg !1990, !tbaa !441
  br label %336

; <label>:336:                                    ; preds = %329, %335
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %322) #8, !dbg !1991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1991
  br label %343, !dbg !1992

; <label>:337:                                    ; preds = %303, %289, %318, %313
  %338 = phi i64 [ %291, %289 ], [ %295, %318 ], [ %295, %313 ], [ %295, %303 ], !dbg !1935
  store i32 12, i32* %14, align 8, !dbg !1996, !tbaa !465
  %339 = load i64, i64* %29, align 8, !dbg !1997, !tbaa !434
  %340 = sub i64 %338, %339, !dbg !1998
  %341 = trunc i64 %340 to i32, !dbg !1999
  store i32 %341, i32* %33, align 4, !dbg !2000, !tbaa !496
  %342 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !2001
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i64 0, i64 0), i8** %342, align 8, !dbg !2002, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2003
  br label %343, !dbg !2004

; <label>:343:                                    ; preds = %24, %337, %336, %281, %272, %263, %259, %240, %205, %38, %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2004
  ret void, !dbg !2004
}

; Function Attrs: noredzone nounwind
define internal fastcc void @json_process_value(%struct.lua_State*, %struct.json_parse_t*, %struct.json_token_t* nocapture readonly) unnamed_addr #0 !dbg !2005 {
  %4 = alloca %struct.json_token_t, align 8
  %5 = alloca %struct.json_token_t, align 8
  %6 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 0, !dbg !2015
  %7 = load i32, i32* %6, align 8, !dbg !2015, !tbaa !465
  switch i32 %7, label %156 [
    i32 4, label %8
    i32 5, label %14
    i32 6, label %18
    i32 0, label %22
    i32 2, label %104
    i32 7, label %155
  ], !dbg !2016

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 2, i32 0, !dbg !2017
  %10 = load i8*, i8** %9, align 8, !dbg !2017, !tbaa !167
  %11 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 3, !dbg !2019
  %12 = load i32, i32* %11, align 8, !dbg !2019, !tbaa !2020
  %13 = sext i32 %12 to i64, !dbg !2021
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %10, i64 %13) #7, !dbg !2022
  br label %170, !dbg !2023

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 2, !dbg !2024
  %16 = bitcast %union.anon* %15 to double*, !dbg !2025
  %17 = load double, double* %16, align 8, !dbg !2025, !tbaa !167
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %17) #7, !dbg !2026
  br label %170, !dbg !2027

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 2, !dbg !2028
  %20 = bitcast %union.anon* %19 to i32*, !dbg !2029
  %21 = load i32, i32* %20, align 8, !dbg !2029, !tbaa !167
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %21) #7, !dbg !2030
  br label %170, !dbg !2031

; <label>:22:                                     ; preds = %3
  %23 = bitcast %struct.json_token_t* %5 to i8*, !dbg !2042
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %23) #8, !dbg !2042
  %24 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 4, !dbg !2054
  %25 = load i32, i32* %24, align 8, !dbg !2055, !tbaa !437
  %26 = add nsw i32 %25, 1, !dbg !2055
  store i32 %26, i32* %24, align 8, !dbg !2055, !tbaa !437
  %27 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 3, !dbg !2056
  %28 = load %struct.json_config_t*, %struct.json_config_t** %27, align 8, !dbg !2056, !tbaa !428
  %29 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %28, i64 0, i32 11, !dbg !2058
  %30 = load i32, i32* %29, align 8, !dbg !2058, !tbaa !155
  %31 = icmp slt i32 %25, %30, !dbg !2059
  br i1 %31, label %32, label %35, !dbg !2060

; <label>:32:                                     ; preds = %22
  %33 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 3) #7, !dbg !2061
  %34 = icmp eq i32 %33, 0, !dbg !2061
  br i1 %34, label %35, label %46, !dbg !2062

; <label>:35:                                     ; preds = %32, %22
  %36 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 2, !dbg !2063
  %37 = load %struct.strbuf_t*, %struct.strbuf_t** %36, align 8, !dbg !2063, !tbaa !457
  tail call void @strbuf_free(%struct.strbuf_t* %37) #7, !dbg !2064
  %38 = load i32, i32* %24, align 8, !dbg !2065, !tbaa !437
  %39 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 1, !dbg !2066
  %40 = bitcast i8** %39 to i64*, !dbg !2066
  %41 = load i64, i64* %40, align 8, !dbg !2066, !tbaa !441
  %42 = bitcast %struct.json_parse_t* %1 to i64*, !dbg !2067
  %43 = load i64, i64* %42, align 8, !dbg !2067, !tbaa !434
  %44 = sub i64 %41, %43, !dbg !2068
  %45 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.78, i64 0, i64 0), i32 %38, i64 %44) #7, !dbg !2069
  br label %46, !dbg !2070

; <label>:46:                                     ; preds = %35, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2070
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #7, !dbg !2071
  call fastcc void @json_next_token(%struct.json_parse_t* nonnull %1, %struct.json_token_t* nonnull %5) #7, !dbg !2073
  %47 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %5, i64 0, i32 0, !dbg !2074
  %48 = load i32, i32* %47, align 8, !dbg !2074, !tbaa !465
  %49 = icmp eq i32 %48, 1, !dbg !2076
  br i1 %49, label %101, label %50, !dbg !2077

; <label>:50:                                     ; preds = %46
  %51 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %5, i64 0, i32 2, i32 0
  %52 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %5, i64 0, i32 3
  %53 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 2
  %54 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %5, i64 0, i32 1
  br label %55, !dbg !2078

; <label>:55:                                     ; preds = %50, %99
  %56 = phi i32 [ %100, %99 ], [ %48, %50 ], !dbg !2081
  %57 = icmp eq i32 %56, 4, !dbg !2078
  br i1 %57, label %69, label %58, !dbg !2082

; <label>:58:                                     ; preds = %55
  %59 = load %struct.strbuf_t*, %struct.strbuf_t** %53, align 8, !dbg !2088, !tbaa !457
  call void @strbuf_free(%struct.strbuf_t* %59) #7, !dbg !2089
  %60 = load i32, i32* %47, align 8, !dbg !2090, !tbaa !465
  %61 = icmp eq i32 %60, 12, !dbg !2091
  %62 = zext i32 %60 to i64, !dbg !2093
  %63 = getelementptr inbounds [15 x i8*], [15 x i8*]* @json_token_type_name, i64 0, i64 %62, !dbg !2093
  %64 = select i1 %61, i8** %51, i8** %63, !dbg !2094
  %65 = load i8*, i8** %64, align 8, !dbg !2095, !tbaa !167
  %66 = load i32, i32* %54, align 4, !dbg !2096, !tbaa !496
  %67 = add nsw i32 %66, 1, !dbg !2097
  %68 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i64 0, i64 0), i8* %65, i32 %67) #7, !dbg !2098
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2099
  br label %69, !dbg !2100

; <label>:69:                                     ; preds = %58, %55
  %70 = load i8*, i8** %51, align 8, !dbg !2101, !tbaa !167
  %71 = load i32, i32* %52, align 8, !dbg !2102, !tbaa !2020
  %72 = sext i32 %71 to i64, !dbg !2103
  call void @lua_pushlstring(%struct.lua_State* %0, i8* %70, i64 %72) #7, !dbg !2104
  call fastcc void @json_next_token(%struct.json_parse_t* %1, %struct.json_token_t* nonnull %5) #7, !dbg !2105
  %73 = load i32, i32* %47, align 8, !dbg !2106, !tbaa !465
  %74 = icmp eq i32 %73, 8, !dbg !2108
  br i1 %74, label %86, label %75, !dbg !2109

; <label>:75:                                     ; preds = %69
  %76 = load %struct.strbuf_t*, %struct.strbuf_t** %53, align 8, !dbg !2115, !tbaa !457
  call void @strbuf_free(%struct.strbuf_t* %76) #7, !dbg !2116
  %77 = load i32, i32* %47, align 8, !dbg !2117, !tbaa !465
  %78 = icmp eq i32 %77, 12, !dbg !2118
  %79 = zext i32 %77 to i64, !dbg !2120
  %80 = getelementptr inbounds [15 x i8*], [15 x i8*]* @json_token_type_name, i64 0, i64 %79, !dbg !2120
  %81 = select i1 %78, i8** %51, i8** %80, !dbg !2121
  %82 = load i8*, i8** %81, align 8, !dbg !2122, !tbaa !167
  %83 = load i32, i32* %54, align 4, !dbg !2123, !tbaa !496
  %84 = add nsw i32 %83, 1, !dbg !2124
  %85 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0), i8* %82, i32 %84) #7, !dbg !2125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2126
  br label %86, !dbg !2127

; <label>:86:                                     ; preds = %75, %69
  call fastcc void @json_next_token(%struct.json_parse_t* %1, %struct.json_token_t* nonnull %5) #7, !dbg !2128
  call fastcc void @json_process_value(%struct.lua_State* %0, %struct.json_parse_t* %1, %struct.json_token_t* nonnull %5) #7, !dbg !2129
  call void @lua_rawset(%struct.lua_State* %0, i32 -3) #7, !dbg !2130
  call fastcc void @json_next_token(%struct.json_parse_t* %1, %struct.json_token_t* nonnull %5) #7, !dbg !2131
  %87 = load i32, i32* %47, align 8, !dbg !2132, !tbaa !465
  switch i32 %87, label %88 [
    i32 1, label %101
    i32 9, label %99
  ], !dbg !2134

; <label>:88:                                     ; preds = %86
  %89 = load %struct.strbuf_t*, %struct.strbuf_t** %53, align 8, !dbg !2141, !tbaa !457
  call void @strbuf_free(%struct.strbuf_t* %89) #7, !dbg !2142
  %90 = load i32, i32* %47, align 8, !dbg !2143, !tbaa !465
  %91 = icmp eq i32 %90, 12, !dbg !2144
  %92 = zext i32 %90 to i64, !dbg !2146
  %93 = getelementptr inbounds [15 x i8*], [15 x i8*]* @json_token_type_name, i64 0, i64 %92, !dbg !2146
  %94 = select i1 %91, i8** %51, i8** %93, !dbg !2147
  %95 = load i8*, i8** %94, align 8, !dbg !2148, !tbaa !167
  %96 = load i32, i32* %54, align 4, !dbg !2149, !tbaa !496
  %97 = add nsw i32 %96, 1, !dbg !2150
  %98 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i8* %95, i32 %97) #7, !dbg !2151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2152
  br label %99, !dbg !2153

; <label>:99:                                     ; preds = %88, %86
  call fastcc void @json_next_token(%struct.json_parse_t* %1, %struct.json_token_t* nonnull %5) #7, !dbg !2154
  %100 = load i32, i32* %47, align 8, !dbg !2081, !tbaa !465
  br label %55, !dbg !2155, !llvm.loop !2156

; <label>:101:                                    ; preds = %86, %46
  %102 = load i32, i32* %24, align 8, !dbg !2159, !tbaa !437
  %103 = add nsw i32 %102, -1, !dbg !2159
  store i32 %103, i32* %24, align 8, !dbg !2159, !tbaa !437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2167
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %23) #8, !dbg !2168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2168
  br label %170, !dbg !2169

; <label>:104:                                    ; preds = %3
  %105 = bitcast %struct.json_token_t* %4 to i8*, !dbg !2179
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %105) #8, !dbg !2179
  %106 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 4, !dbg !2184
  %107 = load i32, i32* %106, align 8, !dbg !2185, !tbaa !437
  %108 = add nsw i32 %107, 1, !dbg !2185
  store i32 %108, i32* %106, align 8, !dbg !2185, !tbaa !437
  %109 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 3, !dbg !2186
  %110 = load %struct.json_config_t*, %struct.json_config_t** %109, align 8, !dbg !2186, !tbaa !428
  %111 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %110, i64 0, i32 11, !dbg !2187
  %112 = load i32, i32* %111, align 8, !dbg !2187, !tbaa !155
  %113 = icmp slt i32 %107, %112, !dbg !2188
  br i1 %113, label %114, label %117, !dbg !2189

; <label>:114:                                    ; preds = %104
  %115 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 2) #7, !dbg !2190
  %116 = icmp eq i32 %115, 0, !dbg !2190
  br i1 %116, label %117, label %128, !dbg !2191

; <label>:117:                                    ; preds = %114, %104
  %118 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 2, !dbg !2192
  %119 = load %struct.strbuf_t*, %struct.strbuf_t** %118, align 8, !dbg !2192, !tbaa !457
  tail call void @strbuf_free(%struct.strbuf_t* %119) #7, !dbg !2193
  %120 = load i32, i32* %106, align 8, !dbg !2194, !tbaa !437
  %121 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 1, !dbg !2195
  %122 = bitcast i8** %121 to i64*, !dbg !2195
  %123 = load i64, i64* %122, align 8, !dbg !2195, !tbaa !441
  %124 = bitcast %struct.json_parse_t* %1 to i64*, !dbg !2196
  %125 = load i64, i64* %124, align 8, !dbg !2196, !tbaa !434
  %126 = sub i64 %123, %125, !dbg !2197
  %127 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.78, i64 0, i64 0), i32 %120, i64 %126) #7, !dbg !2198
  br label %128, !dbg !2199

; <label>:128:                                    ; preds = %117, %114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2199
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #7, !dbg !2200
  call fastcc void @json_next_token(%struct.json_parse_t* nonnull %1, %struct.json_token_t* nonnull %4) #7, !dbg !2202
  %129 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %4, i64 0, i32 0, !dbg !2203
  %130 = load i32, i32* %129, align 8, !dbg !2203, !tbaa !465
  %131 = icmp eq i32 %130, 3, !dbg !2205
  br i1 %131, label %152, label %132, !dbg !2206

; <label>:132:                                    ; preds = %128
  %133 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 2
  %134 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %4, i64 0, i32 2, i32 0
  %135 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %4, i64 0, i32 1
  br label %136, !dbg !2207

; <label>:136:                                    ; preds = %132, %150
  %137 = phi i32 [ %151, %150 ], [ 1, %132 ], !dbg !2211
  call fastcc void @json_process_value(%struct.lua_State* %0, %struct.json_parse_t* %1, %struct.json_token_t* nonnull %4) #7, !dbg !2207
  call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 %137) #7, !dbg !2213
  call fastcc void @json_next_token(%struct.json_parse_t* %1, %struct.json_token_t* nonnull %4) #7, !dbg !2214
  %138 = load i32, i32* %129, align 8, !dbg !2215, !tbaa !465
  switch i32 %138, label %139 [
    i32 3, label %152
    i32 9, label %150
  ], !dbg !2217

; <label>:139:                                    ; preds = %136
  %140 = load %struct.strbuf_t*, %struct.strbuf_t** %133, align 8, !dbg !2224, !tbaa !457
  call void @strbuf_free(%struct.strbuf_t* %140) #7, !dbg !2225
  %141 = load i32, i32* %129, align 8, !dbg !2226, !tbaa !465
  %142 = icmp eq i32 %141, 12, !dbg !2227
  %143 = zext i32 %141 to i64, !dbg !2229
  %144 = getelementptr inbounds [15 x i8*], [15 x i8*]* @json_token_type_name, i64 0, i64 %143, !dbg !2229
  %145 = select i1 %142, i8** %134, i8** %144, !dbg !2230
  %146 = load i8*, i8** %145, align 8, !dbg !2231, !tbaa !167
  %147 = load i32, i32* %135, align 4, !dbg !2232, !tbaa !496
  %148 = add nsw i32 %147, 1, !dbg !2233
  %149 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.79, i64 0, i64 0), i8* %146, i32 %148) #7, !dbg !2234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  br label %150, !dbg !2236

; <label>:150:                                    ; preds = %139, %136
  call fastcc void @json_next_token(%struct.json_parse_t* %1, %struct.json_token_t* nonnull %4) #7, !dbg !2237
  %151 = add nuw nsw i32 %137, 1, !dbg !2238
  br label %136, !dbg !2239, !llvm.loop !2240

; <label>:152:                                    ; preds = %136, %128
  %153 = load i32, i32* %106, align 8, !dbg !2243, !tbaa !437
  %154 = add nsw i32 %153, -1, !dbg !2243
  store i32 %154, i32* %106, align 8, !dbg !2243, !tbaa !437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2246
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %105) #8, !dbg !2247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2247
  br label %170, !dbg !2248

; <label>:155:                                    ; preds = %3
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* null) #7, !dbg !2249
  br label %170, !dbg !2250

; <label>:156:                                    ; preds = %3
  %157 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 2, !dbg !2256
  %158 = load %struct.strbuf_t*, %struct.strbuf_t** %157, align 8, !dbg !2256, !tbaa !457
  tail call void @strbuf_free(%struct.strbuf_t* %158) #7, !dbg !2257
  %159 = load i32, i32* %6, align 8, !dbg !2258, !tbaa !465
  %160 = icmp eq i32 %159, 12, !dbg !2259
  %161 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 2, i32 0, !dbg !2260
  %162 = zext i32 %159 to i64, !dbg !2262
  %163 = getelementptr inbounds [15 x i8*], [15 x i8*]* @json_token_type_name, i64 0, i64 %162, !dbg !2262
  %164 = select i1 %160, i8** %161, i8** %163, !dbg !2263
  %165 = load i8*, i8** %164, align 8, !dbg !2264, !tbaa !167
  %166 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 1, !dbg !2265
  %167 = load i32, i32* %166, align 4, !dbg !2265, !tbaa !496
  %168 = add nsw i32 %167, 1, !dbg !2266
  %169 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0), i8* %165, i32 %168) #7, !dbg !2267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2268
  br label %170, !dbg !2269

; <label>:170:                                    ; preds = %156, %155, %152, %101, %18, %14, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2270
  ret void, !dbg !2270
}

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone noreturn
declare dso_local void @__assert_func(i8*, i32, i8*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define internal fastcc i32 @decode_hex4(i8* nocapture readonly) unnamed_addr #0 !dbg !2271 {
  %2 = load i8, i8* %0, align 1, !dbg !2281, !tbaa !167
  %3 = add i8 %2, -48, !dbg !2292
  %4 = icmp ult i8 %3, 10, !dbg !2292
  br i1 %4, label %10, label %5, !dbg !2292

; <label>:5:                                      ; preds = %1
  %6 = or i8 %2, 32, !dbg !2294
  %7 = add i8 %6, -97, !dbg !2295
  %8 = icmp ult i8 %7, 6, !dbg !2295
  br i1 %8, label %10, label %9, !dbg !2295

; <label>:9:                                      ; preds = %47, %34, %21, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2297
  br label %19

; <label>:10:                                     ; preds = %5, %1
  %11 = phi i8 [ %2, %1 ], [ %6, %5 ]
  %12 = phi i32 [ -48, %1 ], [ -87, %5 ]
  %13 = sext i8 %11 to i32, !dbg !2299
  %14 = add nsw i32 %12, %13, !dbg !2299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2297
  %15 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2281
  %16 = load i8, i8* %15, align 1, !dbg !2281, !tbaa !167
  %17 = add i8 %16, -48, !dbg !2292
  %18 = icmp ult i8 %17, 10, !dbg !2292
  br i1 %18, label %25, label %21, !dbg !2292

; <label>:19:                                     ; preds = %9, %51
  %20 = phi i32 [ %61, %51 ], [ -1, %9 ], !dbg !2300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  ret i32 %20, !dbg !2301

; <label>:21:                                     ; preds = %10
  %22 = or i8 %16, 32, !dbg !2294
  %23 = add i8 %22, -97, !dbg !2295
  %24 = icmp ult i8 %23, 6, !dbg !2295
  br i1 %24, label %25, label %9, !dbg !2295

; <label>:25:                                     ; preds = %10, %21
  %26 = phi i8 [ %22, %21 ], [ %16, %10 ]
  %27 = phi i32 [ -87, %21 ], [ -48, %10 ]
  %28 = sext i8 %26 to i32, !dbg !2299
  %29 = add nsw i32 %27, %28, !dbg !2299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2297
  %30 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2281
  %31 = load i8, i8* %30, align 1, !dbg !2281, !tbaa !167
  %32 = add i8 %31, -48, !dbg !2292
  %33 = icmp ult i8 %32, 10, !dbg !2292
  br i1 %33, label %38, label %34, !dbg !2292

; <label>:34:                                     ; preds = %25
  %35 = or i8 %31, 32, !dbg !2294
  %36 = add i8 %35, -97, !dbg !2295
  %37 = icmp ult i8 %36, 6, !dbg !2295
  br i1 %37, label %38, label %9, !dbg !2295

; <label>:38:                                     ; preds = %25, %34
  %39 = phi i8 [ %35, %34 ], [ %31, %25 ]
  %40 = phi i32 [ -87, %34 ], [ -48, %25 ]
  %41 = sext i8 %39 to i32, !dbg !2299
  %42 = add nsw i32 %40, %41, !dbg !2299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2297
  %43 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2281
  %44 = load i8, i8* %43, align 1, !dbg !2281, !tbaa !167
  %45 = add i8 %44, -48, !dbg !2292
  %46 = icmp ult i8 %45, 10, !dbg !2292
  br i1 %46, label %51, label %47, !dbg !2292

; <label>:47:                                     ; preds = %38
  %48 = or i8 %44, 32, !dbg !2294
  %49 = add i8 %48, -97, !dbg !2295
  %50 = icmp ult i8 %49, 6, !dbg !2295
  br i1 %50, label %51, label %9, !dbg !2295

; <label>:51:                                     ; preds = %38, %47
  %52 = phi i8 [ %48, %47 ], [ %44, %38 ]
  %53 = phi i32 [ -87, %47 ], [ -48, %38 ]
  %54 = sext i8 %52 to i32, !dbg !2299
  %55 = add nsw i32 %53, %54, !dbg !2299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2297
  %56 = shl nsw i32 %14, 12, !dbg !2302
  %57 = shl nsw i32 %29, 8, !dbg !2303
  %58 = add nsw i32 %57, %56, !dbg !2304
  %59 = shl nsw i32 %42, 4, !dbg !2305
  %60 = add nsw i32 %58, %59, !dbg !2306
  %61 = add nsw i32 %60, %55, !dbg !2307
  br label %19, !dbg !2308
}

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
define internal fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State*, i32) unnamed_addr #0 !dbg !2309 {
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7, !dbg !2317
  %4 = icmp sgt i32 %3, %1, !dbg !2317
  br i1 %4, label %5, label %8, !dbg !2317

; <label>:5:                                      ; preds = %2
  %6 = add nsw i32 %1, 1, !dbg !2317
  %7 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.95, i64 0, i64 0)) #7, !dbg !2317
  br label %8, !dbg !2317

; <label>:8:                                      ; preds = %2, %5
  %9 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7, !dbg !2318
  %10 = icmp slt i32 %9, %1, !dbg !2319
  br i1 %10, label %11, label %14, !dbg !2320

; <label>:11:                                     ; preds = %8, %11
  tail call void @lua_pushnil(%struct.lua_State* %0) #7, !dbg !2321
  %12 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7, !dbg !2318
  %13 = icmp slt i32 %12, %1, !dbg !2319
  br i1 %13, label %11, label %14, !dbg !2320, !llvm.loop !2322

; <label>:14:                                     ; preds = %11, %8
  %15 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -10003) #7, !dbg !2326
  %16 = bitcast i8* %15 to %struct.json_config_t*, !dbg !2326
  %17 = icmp eq i8* %15, null, !dbg !2328
  br i1 %17, label %18, label %20, !dbg !2329

; <label>:18:                                     ; preds = %14
  %19 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !2330
  br label %20, !dbg !2330

; <label>:20:                                     ; preds = %14, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2332
  ret %struct.json_config_t* %16, !dbg !2332
}

; Function Attrs: noredzone nounwind
define internal fastcc void @json_enum_option(%struct.lua_State*, i32* nocapture, i8**) unnamed_addr #0 !dbg !36 {
  %4 = icmp eq i8** %2, null, !dbg !2338
  %5 = select i1 %4, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @json_enum_option.bool_options, i64 0, i64 0), i8** %2, !dbg !2340
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7, !dbg !2341
  %7 = icmp eq i32 %6, 0, !dbg !2341
  br i1 %7, label %15, label %8, !dbg !2343

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7, !dbg !2344
  %10 = icmp eq i32 %9, 1, !dbg !2344
  br i1 %10, label %11, label %13, !dbg !2347

; <label>:11:                                     ; preds = %8
  %12 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 1) #7, !dbg !2348
  store i32 %12, i32* %1, align 4, !dbg !2349, !tbaa !149
  br label %17, !dbg !2350

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 1, i8* null, i8** %5) #7, !dbg !2351
  store i32 %14, i32* %1, align 4, !dbg !2352, !tbaa !149
  br label %17

; <label>:15:                                     ; preds = %3
  %16 = load i32, i32* %1, align 4, !dbg !2353, !tbaa !149
  br label %17, !dbg !2353

; <label>:17:                                     ; preds = %15, %13, %11
  %18 = phi i32 [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], !dbg !2353
  %19 = icmp ult i32 %18, 2, !dbg !2355
  br i1 %19, label %20, label %21, !dbg !2355

; <label>:20:                                     ; preds = %17
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %18) #7, !dbg !2356
  br label %25, !dbg !2356

; <label>:21:                                     ; preds = %17
  %22 = sext i32 %18 to i64, !dbg !2357
  %23 = getelementptr inbounds i8*, i8** %5, i64 %22, !dbg !2357
  %24 = load i8*, i8** %23, align 8, !dbg !2357, !tbaa !1333
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %24) #7, !dbg !2358
  br label %25

; <label>:25:                                     ; preds = %21, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2359
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
define internal i32 @json_destroy_config(%struct.lua_State*) #0 !dbg !2360 {
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 1) #7, !dbg !2365
  %3 = icmp eq i8* %2, null, !dbg !2366
  br i1 %3, label %7, label %4, !dbg !2368

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds i8, i8* %2, i64 1280, !dbg !2370
  %6 = bitcast i8* %5 to %struct.strbuf_t*, !dbg !2370
  tail call void @strbuf_free(%struct.strbuf_t* nonnull %6) #7, !dbg !2371
  br label %7, !dbg !2371

; <label>:7:                                      ; preds = %1, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2372
  ret i32 0, !dbg !2372
}

; Function Attrs: noredzone
declare dso_local i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal i32 @json_protect_conversion(%struct.lua_State*) #0 !dbg !2373 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7, !dbg !2378
  %3 = icmp eq i32 %2, 1, !dbg !2378
  br i1 %3, label %6, label %4, !dbg !2378

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !2378
  br label %6, !dbg !2378

; <label>:6:                                      ; preds = %4, %1
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10003) #7, !dbg !2379
  tail call void @lua_insert(%struct.lua_State* %0, i32 1) #7, !dbg !2380
  %7 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 1, i32 1, i32 0) #7, !dbg !2381
  switch i32 %7, label %9 [
    i32 0, label %11
    i32 2, label %8
  ], !dbg !2383

; <label>:8:                                      ; preds = %6
  tail call void @lua_pushnil(%struct.lua_State* %0) #7, !dbg !2384
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #7, !dbg !2387
  br label %11, !dbg !2388

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.101, i64 0, i64 0)) #7, !dbg !2389
  br label %11, !dbg !2390

; <label>:11:                                     ; preds = %6, %9, %8
  %12 = phi i32 [ 2, %8 ], [ %10, %9 ], [ 1, %6 ], !dbg !2391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2393
  ret i32 %12, !dbg !2393
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
!235 = !DILocation(line: 444, column: 1, scope: !133, inlinedAt: !140)
!236 = !DILocalVariable(name: "l", arg: 1, scope: !237, file: !3, line: 1300, type: !40)
!237 = distinct !DISubprogram(name: "luaL_setfuncs", scope: !3, file: !3, line: 1300, type: !238, isLocal: true, isDefinition: true, scopeLine: 1301, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !242)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !40, !240, !39}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!242 = !{!236, !243, !244, !245}
!243 = !DILocalVariable(name: "reg", arg: 2, scope: !237, file: !3, line: 1300, type: !240)
!244 = !DILocalVariable(name: "nup", arg: 3, scope: !237, file: !3, line: 1300, type: !39)
!245 = !DILocalVariable(name: "i", scope: !237, file: !3, line: 1302, type: !39)
!246 = !DILocation(line: 1300, column: 39, scope: !237, inlinedAt: !247)
!247 = distinct !DILocation(line: 1368, column: 5, scope: !112)
!248 = !DILocation(line: 1300, column: 58, scope: !237, inlinedAt: !247)
!249 = !DILocation(line: 1300, column: 67, scope: !237, inlinedAt: !247)
!250 = !DILocation(line: 1304, column: 5, scope: !237, inlinedAt: !247)
!251 = !DILocation(line: 1305, column: 17, scope: !252, inlinedAt: !247)
!252 = distinct !DILexicalBlock(scope: !253, file: !3, line: 1305, column: 5)
!253 = distinct !DILexicalBlock(scope: !237, file: !3, line: 1305, column: 5)
!254 = !DILocation(line: 1307, column: 13, scope: !255, inlinedAt: !247)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 1306, column: 9)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 1306, column: 9)
!257 = distinct !DILexicalBlock(scope: !252, file: !3, line: 1305, column: 38)
!258 = !DILocation(line: 1308, column: 34, scope: !257, inlinedAt: !247)
!259 = !{!260, !158, i64 8}
!260 = !{!"luaL_Reg", !158, i64 0, !158, i64 8}
!261 = !DILocation(line: 1308, column: 9, scope: !257, inlinedAt: !247)
!262 = !DILocation(line: 1309, column: 42, scope: !257, inlinedAt: !247)
!263 = !{!260, !158, i64 0}
!264 = !DILocation(line: 1309, column: 9, scope: !257, inlinedAt: !247)
!265 = !DILocation(line: 1305, column: 34, scope: !252, inlinedAt: !247)
!266 = !DILocation(line: 1305, column: 22, scope: !252, inlinedAt: !247)
!267 = !DILocation(line: 1305, column: 5, scope: !253, inlinedAt: !247)
!268 = distinct !{!268, !269, !270}
!269 = !DILocation(line: 1305, column: 5, scope: !253)
!270 = !DILocation(line: 1310, column: 5, scope: !253)
!271 = !DILocation(line: 1311, column: 5, scope: !237, inlinedAt: !247)
!272 = !DILocation(line: 1312, column: 1, scope: !237, inlinedAt: !247)
!273 = !DILocation(line: 1371, column: 5, scope: !112)
!274 = !DILocation(line: 1372, column: 5, scope: !112)
!275 = !DILocation(line: 1375, column: 5, scope: !112)
!276 = !DILocation(line: 1376, column: 5, scope: !112)
!277 = !DILocation(line: 1377, column: 5, scope: !112)
!278 = !DILocation(line: 1378, column: 5, scope: !112)
!279 = !DILocation(line: 1381, column: 1, scope: !112)
!280 = !DILocation(line: 1380, column: 5, scope: !112)
!281 = distinct !DISubprogram(name: "luaopen_cjson_safe", scope: !3, file: !3, line: 1418, type: !58, isLocal: false, isDefinition: true, scopeLine: 1419, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !282)
!282 = !{!283}
!283 = !DILocalVariable(name: "l", arg: 1, scope: !281, file: !3, line: 1418, type: !40)
!284 = !DILocation(line: 1418, column: 35, scope: !281)
!285 = !DILocation(line: 1420, column: 5, scope: !281)
!286 = !DILocation(line: 1423, column: 5, scope: !281)
!287 = distinct !DISubprogram(name: "lua_cjson_safe_new", scope: !3, file: !3, line: 1384, type: !58, isLocal: true, isDefinition: true, scopeLine: 1385, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !288)
!288 = !{!289, !290, !291}
!289 = !DILocalVariable(name: "l", arg: 1, scope: !287, file: !3, line: 1384, type: !40)
!290 = !DILocalVariable(name: "func", scope: !287, file: !3, line: 1386, type: !52)
!291 = !DILocalVariable(name: "i", scope: !287, file: !3, line: 1387, type: !39)
!292 = !DILocation(line: 1384, column: 42, scope: !287)
!293 = !DILocation(line: 1389, column: 5, scope: !287)
!294 = !DILocation(line: 1392, column: 5, scope: !287)
!295 = !DILocation(line: 1393, column: 5, scope: !287)
!296 = !DILocation(line: 1387, column: 9, scope: !287)
!297 = !DILocation(line: 1396, column: 9, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 1395, column: 31)
!299 = distinct !DILexicalBlock(scope: !300, file: !3, line: 1395, column: 5)
!300 = distinct !DILexicalBlock(scope: !287, file: !3, line: 1395, column: 5)
!301 = !DILocation(line: 1397, column: 9, scope: !298)
!302 = !DILocation(line: 1398, column: 9, scope: !298)
!303 = !DILocation(line: 1401, column: 5, scope: !287)
!304 = distinct !DISubprogram(name: "json_encode", scope: !3, file: !3, line: 703, type: !58, isLocal: true, isDefinition: true, scopeLine: 704, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !305)
!305 = !{!306, !307, !308, !309, !311, !312}
!306 = !DILocalVariable(name: "l", arg: 1, scope: !304, file: !3, line: 703, type: !40)
!307 = !DILocalVariable(name: "cfg", scope: !304, file: !3, line: 705, type: !63)
!308 = !DILocalVariable(name: "local_encode_buf", scope: !304, file: !3, line: 706, type: !75)
!309 = !DILocalVariable(name: "encode_buf", scope: !304, file: !3, line: 707, type: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!311 = !DILocalVariable(name: "json", scope: !304, file: !3, line: 708, type: !80)
!312 = !DILocalVariable(name: "len", scope: !304, file: !3, line: 709, type: !39)
!313 = !DILocation(line: 703, column: 35, scope: !304)
!314 = !DILocalVariable(name: "l", arg: 1, scope: !315, file: !3, line: 194, type: !40)
!315 = distinct !DISubprogram(name: "json_fetch_config", scope: !3, file: !3, line: 194, type: !316, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !318)
!316 = !DISubroutineType(types: !317)
!317 = !{!63, !40}
!318 = !{!314, !319}
!319 = !DILocalVariable(name: "cfg", scope: !315, file: !3, line: 196, type: !63)
!320 = !DILocation(line: 194, column: 52, scope: !315, inlinedAt: !321)
!321 = distinct !DILocation(line: 705, column: 26, scope: !304)
!322 = !DILocation(line: 198, column: 11, scope: !315, inlinedAt: !321)
!323 = !DILocation(line: 196, column: 20, scope: !315, inlinedAt: !321)
!324 = !DILocation(line: 199, column: 10, scope: !325, inlinedAt: !321)
!325 = distinct !DILexicalBlock(scope: !315, file: !3, line: 199, column: 9)
!326 = !DILocation(line: 199, column: 9, scope: !315, inlinedAt: !321)
!327 = !DILocation(line: 200, column: 9, scope: !325, inlinedAt: !321)
!328 = !DILocation(line: 202, column: 5, scope: !315, inlinedAt: !321)
!329 = !DILocation(line: 705, column: 20, scope: !304)
!330 = !DILocation(line: 706, column: 5, scope: !304)
!331 = !DILocation(line: 711, column: 5, scope: !304)
!332 = !DILocation(line: 713, column: 15, scope: !333)
!333 = distinct !DILexicalBlock(scope: !304, file: !3, line: 713, column: 9)
!334 = !{!156, !150, i64 1336}
!335 = !DILocation(line: 713, column: 10, scope: !333)
!336 = !DILocation(line: 713, column: 9, scope: !304)
!337 = !DILocation(line: 707, column: 15, scope: !304)
!338 = !DILocation(line: 706, column: 14, scope: !304)
!339 = !DILocation(line: 716, column: 9, scope: !340)
!340 = distinct !DILexicalBlock(scope: !333, file: !3, line: 713, column: 35)
!341 = !DILocation(line: 717, column: 5, scope: !340)
!342 = !DILocation(line: 719, column: 28, scope: !343)
!343 = distinct !DILexicalBlock(scope: !333, file: !3, line: 717, column: 12)
!344 = !DILocalVariable(name: "s", arg: 1, scope: !345, file: !76, line: 78, type: !310)
!345 = distinct !DISubprogram(name: "strbuf_reset", scope: !76, file: !76, line: 78, type: !346, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !310}
!348 = !{!344}
!349 = !DILocation(line: 78, column: 43, scope: !345, inlinedAt: !350)
!350 = distinct !DILocation(line: 720, column: 9, scope: !343)
!351 = !DILocation(line: 80, column: 8, scope: !345, inlinedAt: !350)
!352 = !DILocation(line: 80, column: 15, scope: !345, inlinedAt: !350)
!353 = !{!157, !150, i64 12}
!354 = !DILocation(line: 81, column: 1, scope: !345, inlinedAt: !350)
!355 = !DILocation(line: 0, scope: !340)
!356 = !DILocation(line: 723, column: 5, scope: !304)
!357 = !DILocalVariable(name: "s", arg: 1, scope: !358, file: !76, line: 145, type: !310)
!358 = distinct !DISubprogram(name: "strbuf_string", scope: !76, file: !76, line: 145, type: !359, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !361)
!359 = !DISubroutineType(types: !360)
!360 = !{!80, !310, !44}
!361 = !{!357, !362}
!362 = !DILocalVariable(name: "len", arg: 2, scope: !358, file: !76, line: 145, type: !44)
!363 = !DILocation(line: 145, column: 45, scope: !358, inlinedAt: !364)
!364 = distinct !DILocation(line: 724, column: 12, scope: !304)
!365 = !DILocation(line: 148, column: 19, scope: !366, inlinedAt: !364)
!366 = distinct !DILexicalBlock(scope: !358, file: !76, line: 147, column: 9)
!367 = !DILocation(line: 150, column: 15, scope: !358, inlinedAt: !364)
!368 = !{!157, !158, i64 0}
!369 = !DILocation(line: 150, column: 5, scope: !358, inlinedAt: !364)
!370 = !DILocation(line: 708, column: 11, scope: !304)
!371 = !DILocation(line: 709, column: 9, scope: !304)
!372 = !DILocation(line: 726, column: 30, scope: !304)
!373 = !DILocation(line: 726, column: 5, scope: !304)
!374 = !DILocation(line: 728, column: 15, scope: !375)
!375 = distinct !DILexicalBlock(scope: !304, file: !3, line: 728, column: 9)
!376 = !DILocation(line: 728, column: 10, scope: !375)
!377 = !DILocation(line: 728, column: 9, scope: !304)
!378 = !DILocation(line: 729, column: 9, scope: !375)
!379 = !DILocation(line: 732, column: 1, scope: !304)
!380 = !DILocation(line: 731, column: 5, scope: !304)
!381 = distinct !DISubprogram(name: "json_decode", scope: !3, file: !3, line: 1253, type: !58, isLocal: true, isDefinition: true, scopeLine: 1254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !382)
!382 = !{!383, !384, !393, !407}
!383 = !DILocalVariable(name: "l", arg: 1, scope: !381, file: !3, line: 1253, type: !40)
!384 = !DILocalVariable(name: "json", scope: !381, file: !3, line: 1255, type: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_parse_t", file: !3, line: 140, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 134, size: 320, elements: !387)
!387 = !{!388, !389, !390, !391, !392}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !386, file: !3, line: 135, baseType: !29, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !386, file: !3, line: 136, baseType: !29, size: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !386, file: !3, line: 137, baseType: !310, size: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !386, file: !3, line: 138, baseType: !63, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "current_depth", scope: !386, file: !3, line: 139, baseType: !39, size: 32, offset: 256)
!393 = !DILocalVariable(name: "token", scope: !381, file: !3, line: 1256, type: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_token_t", file: !3, line: 151, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 142, size: 192, elements: !396)
!396 = !{!397, !398, !399, !406}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !395, file: !3, line: 143, baseType: !69, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !395, file: !3, line: 144, baseType: !39, size: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !395, file: !3, line: 149, baseType: !400, size: 64, offset: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !395, file: !3, line: 145, size: 64, elements: !401)
!401 = !{!402, !403, !405}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !400, file: !3, line: 146, baseType: !29, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !400, file: !3, line: 147, baseType: !404, size: 64)
!404 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !400, file: !3, line: 148, baseType: !39, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "string_len", scope: !395, file: !3, line: 150, baseType: !39, size: 32, offset: 128)
!407 = !DILocalVariable(name: "json_len", scope: !381, file: !3, line: 1257, type: !408)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !409, line: 40, baseType: !410)
!409 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !411, line: 129, baseType: !412)
!411 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!412 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!413 = !DILocation(line: 1253, column: 35, scope: !381)
!414 = !DILocation(line: 1255, column: 5, scope: !381)
!415 = !DILocation(line: 1256, column: 5, scope: !381)
!416 = !DILocation(line: 1257, column: 5, scope: !381)
!417 = !DILocation(line: 1259, column: 5, scope: !381)
!418 = !DILocation(line: 194, column: 52, scope: !315, inlinedAt: !419)
!419 = distinct !DILocation(line: 1261, column: 16, scope: !381)
!420 = !DILocation(line: 198, column: 11, scope: !315, inlinedAt: !419)
!421 = !DILocation(line: 196, column: 20, scope: !315, inlinedAt: !419)
!422 = !DILocation(line: 199, column: 10, scope: !325, inlinedAt: !419)
!423 = !DILocation(line: 199, column: 9, scope: !315, inlinedAt: !419)
!424 = !DILocation(line: 200, column: 9, scope: !325, inlinedAt: !419)
!425 = !DILocation(line: 202, column: 5, scope: !315, inlinedAt: !419)
!426 = !DILocation(line: 1261, column: 10, scope: !381)
!427 = !DILocation(line: 1261, column: 14, scope: !381)
!428 = !{!429, !158, i64 24}
!429 = !{!"", !158, i64 0, !158, i64 8, !158, i64 16, !158, i64 24, !150, i64 32}
!430 = !DILocation(line: 1257, column: 12, scope: !381)
!431 = !DILocation(line: 1262, column: 17, scope: !381)
!432 = !DILocation(line: 1262, column: 10, scope: !381)
!433 = !DILocation(line: 1262, column: 15, scope: !381)
!434 = !{!429, !158, i64 0}
!435 = !DILocation(line: 1263, column: 10, scope: !381)
!436 = !DILocation(line: 1263, column: 24, scope: !381)
!437 = !{!429, !150, i64 32}
!438 = !DILocation(line: 1264, column: 21, scope: !381)
!439 = !DILocation(line: 1264, column: 10, scope: !381)
!440 = !DILocation(line: 1264, column: 14, scope: !381)
!441 = !{!429, !158, i64 8}
!442 = !DILocation(line: 1271, column: 9, scope: !443)
!443 = distinct !DILexicalBlock(scope: !381, file: !3, line: 1271, column: 9)
!444 = !{!445, !445, i64 0}
!445 = !{!"long", !151, i64 0}
!446 = !DILocation(line: 1271, column: 18, scope: !443)
!447 = !DILocation(line: 1271, column: 23, scope: !443)
!448 = !DILocation(line: 1271, column: 28, scope: !443)
!449 = !DILocation(line: 1271, column: 41, scope: !443)
!450 = !DILocation(line: 1271, column: 45, scope: !443)
!451 = !DILocation(line: 1271, column: 9, scope: !381)
!452 = !DILocation(line: 1272, column: 9, scope: !443)
!453 = !DILocation(line: 1277, column: 27, scope: !381)
!454 = !DILocation(line: 1277, column: 16, scope: !381)
!455 = !DILocation(line: 1277, column: 10, scope: !381)
!456 = !DILocation(line: 1277, column: 14, scope: !381)
!457 = !{!429, !158, i64 16}
!458 = !DILocation(line: 1255, column: 18, scope: !381)
!459 = !DILocation(line: 1256, column: 18, scope: !381)
!460 = !DILocation(line: 1279, column: 5, scope: !381)
!461 = !DILocation(line: 1280, column: 5, scope: !381)
!462 = !DILocation(line: 1283, column: 5, scope: !381)
!463 = !DILocation(line: 1285, column: 15, scope: !464)
!464 = distinct !DILexicalBlock(scope: !381, file: !3, line: 1285, column: 9)
!465 = !{!466, !151, i64 0}
!466 = !{!"", !151, i64 0, !150, i64 4, !151, i64 8, !150, i64 16}
!467 = !DILocation(line: 1285, column: 20, scope: !464)
!468 = !DILocation(line: 1285, column: 9, scope: !381)
!469 = !DILocalVariable(name: "l", arg: 1, scope: !470, file: !3, line: 1099, type: !40)
!470 = distinct !DISubprogram(name: "json_throw_parse_error", scope: !3, file: !3, line: 1099, type: !471, isLocal: true, isDefinition: true, scopeLine: 1101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !475)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !40, !473, !29, !474}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!475 = !{!469, !476, !477, !478, !479}
!476 = !DILocalVariable(name: "json", arg: 2, scope: !470, file: !3, line: 1099, type: !473)
!477 = !DILocalVariable(name: "exp", arg: 3, scope: !470, file: !3, line: 1100, type: !29)
!478 = !DILocalVariable(name: "token", arg: 4, scope: !470, file: !3, line: 1100, type: !474)
!479 = !DILocalVariable(name: "found", scope: !470, file: !3, line: 1102, type: !29)
!480 = !DILocation(line: 1099, column: 47, scope: !470, inlinedAt: !481)
!481 = distinct !DILocation(line: 1286, column: 9, scope: !464)
!482 = !DILocation(line: 1099, column: 64, scope: !470, inlinedAt: !481)
!483 = !DILocation(line: 1100, column: 48, scope: !470, inlinedAt: !481)
!484 = !DILocation(line: 1100, column: 67, scope: !470, inlinedAt: !481)
!485 = !DILocation(line: 1104, column: 23, scope: !470, inlinedAt: !481)
!486 = !DILocation(line: 1104, column: 5, scope: !470, inlinedAt: !481)
!487 = !DILocation(line: 1106, column: 16, scope: !488, inlinedAt: !481)
!488 = distinct !DILexicalBlock(scope: !470, file: !3, line: 1106, column: 9)
!489 = !DILocation(line: 1106, column: 21, scope: !488, inlinedAt: !481)
!490 = !DILocation(line: 1107, column: 30, scope: !488, inlinedAt: !481)
!491 = !DILocation(line: 1102, column: 17, scope: !470, inlinedAt: !481)
!492 = !DILocation(line: 1109, column: 17, scope: !488, inlinedAt: !481)
!493 = !DILocation(line: 1106, column: 9, scope: !470, inlinedAt: !481)
!494 = !DILocation(line: 0, scope: !488, inlinedAt: !481)
!495 = !DILocation(line: 1113, column: 35, scope: !470, inlinedAt: !481)
!496 = !{!466, !150, i64 4}
!497 = !DILocation(line: 1113, column: 41, scope: !470, inlinedAt: !481)
!498 = !DILocation(line: 1112, column: 5, scope: !470, inlinedAt: !481)
!499 = !DILocation(line: 1114, column: 1, scope: !470, inlinedAt: !481)
!500 = !DILocation(line: 1286, column: 9, scope: !464)
!501 = !DILocation(line: 1288, column: 22, scope: !381)
!502 = !DILocation(line: 1288, column: 5, scope: !381)
!503 = !DILocation(line: 1291, column: 1, scope: !381)
!504 = !DILocation(line: 1290, column: 5, scope: !381)
!505 = distinct !DISubprogram(name: "json_cfg_encode_sparse_array", scope: !3, file: !3, line: 268, type: !58, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !506)
!506 = !{!507, !508}
!507 = !DILocalVariable(name: "l", arg: 1, scope: !505, file: !3, line: 268, type: !40)
!508 = !DILocalVariable(name: "cfg", scope: !505, file: !3, line: 270, type: !63)
!509 = !DILocalVariable(name: "errmsg", scope: !510, file: !3, line: 223, type: !520)
!510 = distinct !DISubprogram(name: "json_integer_option", scope: !3, file: !3, line: 220, type: !511, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{!39, !40, !39, !44, !39, !39}
!513 = !{!514, !515, !516, !517, !518, !509, !519}
!514 = !DILocalVariable(name: "l", arg: 1, scope: !510, file: !3, line: 220, type: !40)
!515 = !DILocalVariable(name: "optindex", arg: 2, scope: !510, file: !3, line: 220, type: !39)
!516 = !DILocalVariable(name: "setting", arg: 3, scope: !510, file: !3, line: 220, type: !44)
!517 = !DILocalVariable(name: "min", arg: 4, scope: !510, file: !3, line: 221, type: !39)
!518 = !DILocalVariable(name: "max", arg: 5, scope: !510, file: !3, line: 221, type: !39)
!519 = !DILocalVariable(name: "value", scope: !510, file: !3, line: 224, type: !39)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 512, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 64)
!523 = !DILocation(line: 223, column: 10, scope: !510, inlinedAt: !524)
!524 = distinct !DILocation(line: 274, column: 5, scope: !505)
!525 = !DILocation(line: 223, column: 10, scope: !510, inlinedAt: !526)
!526 = distinct !DILocation(line: 273, column: 5, scope: !505)
!527 = !DILocation(line: 268, column: 52, scope: !505)
!528 = !DILocation(line: 270, column: 26, scope: !505)
!529 = !DILocation(line: 270, column: 20, scope: !505)
!530 = !DILocation(line: 272, column: 34, scope: !505)
!531 = !DILocation(line: 272, column: 5, scope: !505)
!532 = !DILocation(line: 273, column: 37, scope: !505)
!533 = !DILocation(line: 220, column: 43, scope: !510, inlinedAt: !526)
!534 = !DILocation(line: 220, column: 50, scope: !510, inlinedAt: !526)
!535 = !DILocation(line: 220, column: 65, scope: !510, inlinedAt: !526)
!536 = !DILocation(line: 221, column: 36, scope: !510, inlinedAt: !526)
!537 = !DILocation(line: 221, column: 45, scope: !510, inlinedAt: !526)
!538 = !DILocation(line: 223, column: 5, scope: !510, inlinedAt: !526)
!539 = !DILocation(line: 226, column: 10, scope: !540, inlinedAt: !526)
!540 = distinct !DILexicalBlock(scope: !510, file: !3, line: 226, column: 9)
!541 = !DILocation(line: 226, column: 9, scope: !510, inlinedAt: !526)
!542 = !DILocation(line: 233, column: 24, scope: !510, inlinedAt: !526)
!543 = !DILocation(line: 227, column: 17, scope: !544, inlinedAt: !526)
!544 = distinct !DILexicalBlock(scope: !540, file: !3, line: 226, column: 34)
!545 = !DILocation(line: 224, column: 9, scope: !510, inlinedAt: !526)
!546 = !DILocation(line: 228, column: 9, scope: !544, inlinedAt: !526)
!547 = !DILocation(line: 229, column: 9, scope: !544, inlinedAt: !526)
!548 = !DILocation(line: 230, column: 18, scope: !544, inlinedAt: !526)
!549 = !DILocation(line: 231, column: 5, scope: !544, inlinedAt: !526)
!550 = !DILocation(line: 233, column: 5, scope: !510, inlinedAt: !526)
!551 = !DILocation(line: 236, column: 1, scope: !510, inlinedAt: !526)
!552 = !DILocation(line: 235, column: 5, scope: !510, inlinedAt: !526)
!553 = !DILocation(line: 274, column: 37, scope: !505)
!554 = !DILocation(line: 220, column: 43, scope: !510, inlinedAt: !524)
!555 = !DILocation(line: 220, column: 50, scope: !510, inlinedAt: !524)
!556 = !DILocation(line: 220, column: 65, scope: !510, inlinedAt: !524)
!557 = !DILocation(line: 221, column: 36, scope: !510, inlinedAt: !524)
!558 = !DILocation(line: 221, column: 45, scope: !510, inlinedAt: !524)
!559 = !DILocation(line: 223, column: 5, scope: !510, inlinedAt: !524)
!560 = !DILocation(line: 226, column: 10, scope: !540, inlinedAt: !524)
!561 = !DILocation(line: 226, column: 9, scope: !510, inlinedAt: !524)
!562 = !DILocation(line: 233, column: 24, scope: !510, inlinedAt: !524)
!563 = !DILocation(line: 227, column: 17, scope: !544, inlinedAt: !524)
!564 = !DILocation(line: 224, column: 9, scope: !510, inlinedAt: !524)
!565 = !DILocation(line: 228, column: 9, scope: !544, inlinedAt: !524)
!566 = !DILocation(line: 229, column: 9, scope: !544, inlinedAt: !524)
!567 = !DILocation(line: 230, column: 18, scope: !544, inlinedAt: !524)
!568 = !DILocation(line: 231, column: 5, scope: !544, inlinedAt: !524)
!569 = !DILocation(line: 233, column: 5, scope: !510, inlinedAt: !524)
!570 = !DILocation(line: 236, column: 1, scope: !510, inlinedAt: !524)
!571 = !DILocation(line: 235, column: 5, scope: !510, inlinedAt: !524)
!572 = !DILocation(line: 276, column: 5, scope: !505)
!573 = distinct !DISubprogram(name: "json_cfg_encode_max_depth", scope: !3, file: !3, line: 281, type: !58, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !574)
!574 = !{!575, !576}
!575 = !DILocalVariable(name: "l", arg: 1, scope: !573, file: !3, line: 281, type: !40)
!576 = !DILocalVariable(name: "cfg", scope: !573, file: !3, line: 283, type: !63)
!577 = !DILocation(line: 223, column: 10, scope: !510, inlinedAt: !578)
!578 = distinct !DILocation(line: 285, column: 12, scope: !573)
!579 = !DILocation(line: 281, column: 49, scope: !573)
!580 = !DILocation(line: 283, column: 26, scope: !573)
!581 = !DILocation(line: 283, column: 20, scope: !573)
!582 = !DILocation(line: 285, column: 44, scope: !573)
!583 = !DILocation(line: 220, column: 43, scope: !510, inlinedAt: !578)
!584 = !DILocation(line: 220, column: 50, scope: !510, inlinedAt: !578)
!585 = !DILocation(line: 220, column: 65, scope: !510, inlinedAt: !578)
!586 = !DILocation(line: 221, column: 36, scope: !510, inlinedAt: !578)
!587 = !DILocation(line: 221, column: 45, scope: !510, inlinedAt: !578)
!588 = !DILocation(line: 223, column: 5, scope: !510, inlinedAt: !578)
!589 = !DILocation(line: 226, column: 10, scope: !540, inlinedAt: !578)
!590 = !DILocation(line: 226, column: 9, scope: !510, inlinedAt: !578)
!591 = !DILocation(line: 233, column: 24, scope: !510, inlinedAt: !578)
!592 = !DILocation(line: 227, column: 17, scope: !544, inlinedAt: !578)
!593 = !DILocation(line: 224, column: 9, scope: !510, inlinedAt: !578)
!594 = !DILocation(line: 228, column: 9, scope: !544, inlinedAt: !578)
!595 = !DILocation(line: 229, column: 9, scope: !544, inlinedAt: !578)
!596 = !DILocation(line: 230, column: 18, scope: !544, inlinedAt: !578)
!597 = !DILocation(line: 231, column: 5, scope: !544, inlinedAt: !578)
!598 = !DILocation(line: 233, column: 5, scope: !510, inlinedAt: !578)
!599 = !DILocation(line: 236, column: 1, scope: !510, inlinedAt: !578)
!600 = !DILocation(line: 235, column: 5, scope: !510, inlinedAt: !578)
!601 = !DILocation(line: 285, column: 5, scope: !573)
!602 = distinct !DISubprogram(name: "json_cfg_decode_max_depth", scope: !3, file: !3, line: 290, type: !58, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !603)
!603 = !{!604, !605}
!604 = !DILocalVariable(name: "l", arg: 1, scope: !602, file: !3, line: 290, type: !40)
!605 = !DILocalVariable(name: "cfg", scope: !602, file: !3, line: 292, type: !63)
!606 = !DILocation(line: 223, column: 10, scope: !510, inlinedAt: !607)
!607 = distinct !DILocation(line: 294, column: 12, scope: !602)
!608 = !DILocation(line: 290, column: 49, scope: !602)
!609 = !DILocation(line: 292, column: 26, scope: !602)
!610 = !DILocation(line: 292, column: 20, scope: !602)
!611 = !DILocation(line: 294, column: 44, scope: !602)
!612 = !DILocation(line: 220, column: 43, scope: !510, inlinedAt: !607)
!613 = !DILocation(line: 220, column: 50, scope: !510, inlinedAt: !607)
!614 = !DILocation(line: 220, column: 65, scope: !510, inlinedAt: !607)
!615 = !DILocation(line: 221, column: 36, scope: !510, inlinedAt: !607)
!616 = !DILocation(line: 221, column: 45, scope: !510, inlinedAt: !607)
!617 = !DILocation(line: 223, column: 5, scope: !510, inlinedAt: !607)
!618 = !DILocation(line: 226, column: 10, scope: !540, inlinedAt: !607)
!619 = !DILocation(line: 226, column: 9, scope: !510, inlinedAt: !607)
!620 = !DILocation(line: 233, column: 24, scope: !510, inlinedAt: !607)
!621 = !DILocation(line: 227, column: 17, scope: !544, inlinedAt: !607)
!622 = !DILocation(line: 224, column: 9, scope: !510, inlinedAt: !607)
!623 = !DILocation(line: 228, column: 9, scope: !544, inlinedAt: !607)
!624 = !DILocation(line: 229, column: 9, scope: !544, inlinedAt: !607)
!625 = !DILocation(line: 230, column: 18, scope: !544, inlinedAt: !607)
!626 = !DILocation(line: 231, column: 5, scope: !544, inlinedAt: !607)
!627 = !DILocation(line: 233, column: 5, scope: !510, inlinedAt: !607)
!628 = !DILocation(line: 236, column: 1, scope: !510, inlinedAt: !607)
!629 = !DILocation(line: 235, column: 5, scope: !510, inlinedAt: !607)
!630 = !DILocation(line: 294, column: 5, scope: !602)
!631 = distinct !DISubprogram(name: "json_cfg_encode_number_precision", scope: !3, file: !3, line: 298, type: !58, isLocal: true, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !632)
!632 = !{!633, !634}
!633 = !DILocalVariable(name: "l", arg: 1, scope: !631, file: !3, line: 298, type: !40)
!634 = !DILocalVariable(name: "cfg", scope: !631, file: !3, line: 300, type: !63)
!635 = !DILocation(line: 223, column: 10, scope: !510, inlinedAt: !636)
!636 = distinct !DILocation(line: 302, column: 12, scope: !631)
!637 = !DILocation(line: 298, column: 56, scope: !631)
!638 = !DILocation(line: 300, column: 26, scope: !631)
!639 = !DILocation(line: 300, column: 20, scope: !631)
!640 = !DILocation(line: 302, column: 44, scope: !631)
!641 = !DILocation(line: 220, column: 43, scope: !510, inlinedAt: !636)
!642 = !DILocation(line: 220, column: 50, scope: !510, inlinedAt: !636)
!643 = !DILocation(line: 220, column: 65, scope: !510, inlinedAt: !636)
!644 = !DILocation(line: 221, column: 36, scope: !510, inlinedAt: !636)
!645 = !DILocation(line: 221, column: 45, scope: !510, inlinedAt: !636)
!646 = !DILocation(line: 223, column: 5, scope: !510, inlinedAt: !636)
!647 = !DILocation(line: 226, column: 10, scope: !540, inlinedAt: !636)
!648 = !DILocation(line: 226, column: 9, scope: !510, inlinedAt: !636)
!649 = !DILocation(line: 233, column: 24, scope: !510, inlinedAt: !636)
!650 = !DILocation(line: 227, column: 17, scope: !544, inlinedAt: !636)
!651 = !DILocation(line: 224, column: 9, scope: !510, inlinedAt: !636)
!652 = !DILocation(line: 228, column: 9, scope: !544, inlinedAt: !636)
!653 = !DILocation(line: 229, column: 9, scope: !544, inlinedAt: !636)
!654 = !DILocation(line: 230, column: 18, scope: !544, inlinedAt: !636)
!655 = !DILocation(line: 231, column: 5, scope: !544, inlinedAt: !636)
!656 = !DILocation(line: 233, column: 5, scope: !510, inlinedAt: !636)
!657 = !DILocation(line: 236, column: 1, scope: !510, inlinedAt: !636)
!658 = !DILocation(line: 235, column: 5, scope: !510, inlinedAt: !636)
!659 = !DILocation(line: 302, column: 5, scope: !631)
!660 = distinct !DISubprogram(name: "json_cfg_encode_keep_buffer", scope: !3, file: !3, line: 306, type: !58, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !661)
!661 = !{!662, !663, !664}
!662 = !DILocalVariable(name: "l", arg: 1, scope: !660, file: !3, line: 306, type: !40)
!663 = !DILocalVariable(name: "cfg", scope: !660, file: !3, line: 308, type: !63)
!664 = !DILocalVariable(name: "old_value", scope: !660, file: !3, line: 309, type: !39)
!665 = !DILocation(line: 306, column: 51, scope: !660)
!666 = !DILocation(line: 308, column: 26, scope: !660)
!667 = !DILocation(line: 308, column: 20, scope: !660)
!668 = !DILocation(line: 311, column: 22, scope: !660)
!669 = !DILocation(line: 309, column: 9, scope: !660)
!670 = !DILocation(line: 313, column: 5, scope: !660)
!671 = !DILocation(line: 316, column: 26, scope: !672)
!672 = distinct !DILexicalBlock(scope: !660, file: !3, line: 316, column: 9)
!673 = !DILocation(line: 316, column: 19, scope: !672)
!674 = !DILocation(line: 316, column: 9, scope: !660)
!675 = !DILocation(line: 317, column: 13, scope: !676)
!676 = distinct !DILexicalBlock(scope: !677, file: !3, line: 317, column: 13)
!677 = distinct !DILexicalBlock(scope: !672, file: !3, line: 316, column: 46)
!678 = !DILocation(line: 0, scope: !676)
!679 = !DILocation(line: 317, column: 13, scope: !677)
!680 = !DILocation(line: 318, column: 13, scope: !676)
!681 = !DILocation(line: 320, column: 13, scope: !676)
!682 = !DILocation(line: 323, column: 5, scope: !660)
!683 = !DILocation(line: 338, column: 55, scope: !57)
!684 = !DILocation(line: 341, column: 26, scope: !57)
!685 = !DILocation(line: 341, column: 20, scope: !57)
!686 = !DILocation(line: 343, column: 34, scope: !57)
!687 = !DILocation(line: 343, column: 5, scope: !57)
!688 = !DILocation(line: 347, column: 5, scope: !57)
!689 = distinct !DISubprogram(name: "json_cfg_decode_invalid_numbers", scope: !3, file: !3, line: 350, type: !58, isLocal: true, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !690)
!690 = !{!691, !692}
!691 = !DILocalVariable(name: "l", arg: 1, scope: !689, file: !3, line: 350, type: !40)
!692 = !DILocalVariable(name: "cfg", scope: !689, file: !3, line: 352, type: !63)
!693 = !DILocation(line: 350, column: 55, scope: !689)
!694 = !DILocation(line: 352, column: 26, scope: !689)
!695 = !DILocation(line: 352, column: 20, scope: !689)
!696 = !DILocation(line: 354, column: 34, scope: !689)
!697 = !DILocation(line: 354, column: 5, scope: !689)
!698 = !DILocation(line: 358, column: 5, scope: !689)
!699 = distinct !DISubprogram(name: "json_append_data", scope: !3, file: !3, line: 660, type: !700, isLocal: true, isDefinition: true, scopeLine: 662, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !702)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !40, !63, !39, !310}
!702 = !{!703, !704, !705, !706, !707}
!703 = !DILocalVariable(name: "l", arg: 1, scope: !699, file: !3, line: 660, type: !40)
!704 = !DILocalVariable(name: "cfg", arg: 2, scope: !699, file: !3, line: 660, type: !63)
!705 = !DILocalVariable(name: "current_depth", arg: 3, scope: !699, file: !3, line: 661, type: !39)
!706 = !DILocalVariable(name: "json", arg: 4, scope: !699, file: !3, line: 661, type: !310)
!707 = !DILocalVariable(name: "len", scope: !699, file: !3, line: 663, type: !39)
!708 = !DILocation(line: 660, column: 41, scope: !699)
!709 = !DILocation(line: 660, column: 59, scope: !699)
!710 = !DILocation(line: 661, column: 34, scope: !699)
!711 = !DILocation(line: 661, column: 59, scope: !699)
!712 = !DILocation(line: 665, column: 13, scope: !699)
!713 = !DILocation(line: 665, column: 5, scope: !699)
!714 = !DILocation(line: 667, column: 9, scope: !715)
!715 = distinct !DILexicalBlock(scope: !699, file: !3, line: 665, column: 30)
!716 = !DILocation(line: 668, column: 9, scope: !715)
!717 = !DILocation(line: 670, column: 9, scope: !715)
!718 = !DILocation(line: 671, column: 9, scope: !715)
!719 = !DILocation(line: 673, column: 13, scope: !720)
!720 = distinct !DILexicalBlock(scope: !715, file: !3, line: 673, column: 13)
!721 = !DILocalVariable(name: "s", arg: 1, scope: !722, file: !76, line: 127, type: !310)
!722 = distinct !DISubprogram(name: "strbuf_append_mem", scope: !76, file: !76, line: 127, type: !723, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !725)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !310, !29, !39}
!725 = !{!721, !726, !727}
!726 = !DILocalVariable(name: "c", arg: 2, scope: !722, file: !76, line: 127, type: !29)
!727 = !DILocalVariable(name: "len", arg: 3, scope: !722, file: !76, line: 127, type: !39)
!728 = !DILocation(line: 127, column: 48, scope: !722, inlinedAt: !729)
!729 = distinct !DILocation(line: 676, column: 13, scope: !720)
!730 = !DILocation(line: 127, column: 48, scope: !722, inlinedAt: !731)
!731 = distinct !DILocation(line: 674, column: 13, scope: !720)
!732 = !DILocation(line: 92, column: 15, scope: !733, inlinedAt: !738)
!733 = distinct !DISubprogram(name: "strbuf_empty_length", scope: !76, file: !76, line: 90, type: !734, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !736)
!734 = !DISubroutineType(types: !735)
!735 = !{!39, !310}
!736 = !{!737}
!737 = !DILocalVariable(name: "s", arg: 1, scope: !733, file: !76, line: 90, type: !310)
!738 = distinct !DILocation(line: 97, column: 15, scope: !739, inlinedAt: !746)
!739 = distinct !DILexicalBlock(scope: !740, file: !76, line: 97, column: 9)
!740 = distinct !DISubprogram(name: "strbuf_ensure_empty_length", scope: !76, file: !76, line: 95, type: !741, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !310, !39}
!743 = !{!744, !745}
!744 = !DILocalVariable(name: "s", arg: 1, scope: !740, file: !76, line: 95, type: !310)
!745 = !DILocalVariable(name: "len", arg: 2, scope: !740, file: !76, line: 95, type: !39)
!746 = distinct !DILocation(line: 129, column: 5, scope: !722, inlinedAt: !729)
!747 = !{!157, !150, i64 8}
!748 = !DILocation(line: 92, column: 25, scope: !733, inlinedAt: !738)
!749 = !DILocation(line: 92, column: 32, scope: !733, inlinedAt: !738)
!750 = !DILocation(line: 92, column: 5, scope: !733, inlinedAt: !738)
!751 = !DILocation(line: 673, column: 13, scope: !715)
!752 = !DILocation(line: 127, column: 63, scope: !722, inlinedAt: !731)
!753 = !DILocation(line: 127, column: 70, scope: !722, inlinedAt: !731)
!754 = !DILocation(line: 95, column: 57, scope: !740, inlinedAt: !755)
!755 = distinct !DILocation(line: 129, column: 5, scope: !722, inlinedAt: !731)
!756 = !DILocation(line: 95, column: 64, scope: !740, inlinedAt: !755)
!757 = !DILocation(line: 90, column: 49, scope: !733, inlinedAt: !758)
!758 = distinct !DILocation(line: 97, column: 15, scope: !739, inlinedAt: !755)
!759 = !DILocation(line: 97, column: 13, scope: !739, inlinedAt: !755)
!760 = !DILocation(line: 97, column: 9, scope: !740, inlinedAt: !755)
!761 = !DILocation(line: 98, column: 36, scope: !739, inlinedAt: !755)
!762 = !DILocation(line: 98, column: 9, scope: !739, inlinedAt: !755)
!763 = !DILocation(line: 130, column: 24, scope: !722, inlinedAt: !731)
!764 = !DILocation(line: 99, column: 1, scope: !740, inlinedAt: !755)
!765 = !DILocation(line: 130, column: 15, scope: !722, inlinedAt: !731)
!766 = !DILocation(line: 130, column: 19, scope: !722, inlinedAt: !731)
!767 = !DILocation(line: 130, column: 5, scope: !722, inlinedAt: !731)
!768 = !DILocation(line: 131, column: 15, scope: !722, inlinedAt: !731)
!769 = !DILocation(line: 132, column: 1, scope: !722, inlinedAt: !731)
!770 = !DILocation(line: 674, column: 13, scope: !720)
!771 = !DILocation(line: 127, column: 63, scope: !722, inlinedAt: !729)
!772 = !DILocation(line: 127, column: 70, scope: !722, inlinedAt: !729)
!773 = !DILocation(line: 95, column: 57, scope: !740, inlinedAt: !746)
!774 = !DILocation(line: 95, column: 64, scope: !740, inlinedAt: !746)
!775 = !DILocation(line: 90, column: 49, scope: !733, inlinedAt: !738)
!776 = !DILocation(line: 97, column: 13, scope: !739, inlinedAt: !746)
!777 = !DILocation(line: 97, column: 9, scope: !740, inlinedAt: !746)
!778 = !DILocation(line: 98, column: 36, scope: !739, inlinedAt: !746)
!779 = !DILocation(line: 98, column: 9, scope: !739, inlinedAt: !746)
!780 = !DILocation(line: 130, column: 24, scope: !722, inlinedAt: !729)
!781 = !DILocation(line: 99, column: 1, scope: !740, inlinedAt: !746)
!782 = !DILocation(line: 130, column: 15, scope: !722, inlinedAt: !729)
!783 = !DILocation(line: 130, column: 19, scope: !722, inlinedAt: !729)
!784 = !DILocation(line: 130, column: 5, scope: !722, inlinedAt: !729)
!785 = !DILocation(line: 131, column: 15, scope: !722, inlinedAt: !729)
!786 = !DILocation(line: 132, column: 1, scope: !722, inlinedAt: !729)
!787 = !DILocation(line: 679, column: 22, scope: !715)
!788 = !DILocalVariable(name: "l", arg: 1, scope: !789, file: !3, line: 536, type: !40)
!789 = distinct !DISubprogram(name: "json_check_encode_depth", scope: !3, file: !3, line: 536, type: !700, isLocal: true, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !790)
!790 = !{!788, !791, !792, !793}
!791 = !DILocalVariable(name: "cfg", arg: 2, scope: !789, file: !3, line: 536, type: !63)
!792 = !DILocalVariable(name: "current_depth", arg: 3, scope: !789, file: !3, line: 537, type: !39)
!793 = !DILocalVariable(name: "json", arg: 4, scope: !789, file: !3, line: 537, type: !310)
!794 = !DILocation(line: 536, column: 48, scope: !789, inlinedAt: !795)
!795 = distinct !DILocation(line: 680, column: 9, scope: !715)
!796 = !DILocation(line: 536, column: 66, scope: !789, inlinedAt: !795)
!797 = !DILocation(line: 537, column: 41, scope: !789, inlinedAt: !795)
!798 = !DILocation(line: 537, column: 66, scope: !789, inlinedAt: !795)
!799 = !DILocation(line: 549, column: 31, scope: !800, inlinedAt: !795)
!800 = distinct !DILexicalBlock(scope: !789, file: !3, line: 549, column: 9)
!801 = !{!156, !150, i64 1324}
!802 = !DILocation(line: 549, column: 23, scope: !800, inlinedAt: !795)
!803 = !DILocation(line: 549, column: 48, scope: !800, inlinedAt: !795)
!804 = !DILocation(line: 549, column: 51, scope: !800, inlinedAt: !795)
!805 = !DILocation(line: 549, column: 9, scope: !789, inlinedAt: !795)
!806 = !DILocation(line: 552, column: 15, scope: !807, inlinedAt: !795)
!807 = distinct !DILexicalBlock(scope: !789, file: !3, line: 552, column: 9)
!808 = !DILocation(line: 552, column: 10, scope: !807, inlinedAt: !795)
!809 = !DILocation(line: 552, column: 9, scope: !789, inlinedAt: !795)
!810 = !DILocation(line: 553, column: 9, scope: !807, inlinedAt: !795)
!811 = !DILocation(line: 555, column: 5, scope: !789, inlinedAt: !795)
!812 = !DILocation(line: 557, column: 1, scope: !789, inlinedAt: !795)
!813 = !DILocalVariable(name: "l", arg: 1, scope: !814, file: !3, line: 493, type: !40)
!814 = distinct !DISubprogram(name: "lua_array_length", scope: !3, file: !3, line: 493, type: !815, isLocal: true, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !817)
!815 = !DISubroutineType(types: !816)
!816 = !{!39, !40, !63, !310}
!817 = !{!813, !818, !819, !820, !821, !822}
!818 = !DILocalVariable(name: "cfg", arg: 2, scope: !814, file: !3, line: 493, type: !63)
!819 = !DILocalVariable(name: "json", arg: 3, scope: !814, file: !3, line: 493, type: !310)
!820 = !DILocalVariable(name: "k", scope: !814, file: !3, line: 495, type: !404)
!821 = !DILocalVariable(name: "max", scope: !814, file: !3, line: 496, type: !39)
!822 = !DILocalVariable(name: "items", scope: !814, file: !3, line: 497, type: !39)
!823 = !DILocation(line: 493, column: 40, scope: !814, inlinedAt: !824)
!824 = distinct !DILocation(line: 681, column: 15, scope: !715)
!825 = !DILocation(line: 493, column: 58, scope: !814, inlinedAt: !824)
!826 = !DILocation(line: 493, column: 73, scope: !814, inlinedAt: !824)
!827 = !DILocation(line: 496, column: 9, scope: !814, inlinedAt: !824)
!828 = !DILocation(line: 497, column: 9, scope: !814, inlinedAt: !824)
!829 = !DILocation(line: 502, column: 5, scope: !814, inlinedAt: !824)
!830 = !DILocation(line: 504, column: 12, scope: !814, inlinedAt: !824)
!831 = !DILocation(line: 504, column: 28, scope: !814, inlinedAt: !824)
!832 = !DILocation(line: 504, column: 5, scope: !814, inlinedAt: !824)
!833 = !DILocation(line: 506, column: 13, scope: !834, inlinedAt: !824)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 506, column: 13)
!835 = distinct !DILexicalBlock(scope: !814, file: !3, line: 504, column: 34)
!836 = !DILocation(line: 506, column: 29, scope: !834, inlinedAt: !824)
!837 = !DILocation(line: 506, column: 44, scope: !834, inlinedAt: !824)
!838 = !DILocation(line: 507, column: 18, scope: !834, inlinedAt: !824)
!839 = !DILocation(line: 495, column: 12, scope: !814, inlinedAt: !824)
!840 = !DILocation(line: 507, column: 16, scope: !834, inlinedAt: !824)
!841 = !DILocation(line: 506, column: 13, scope: !835, inlinedAt: !824)
!842 = !DILocation(line: 509, column: 17, scope: !843, inlinedAt: !824)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 509, column: 17)
!844 = distinct !DILexicalBlock(scope: !834, file: !3, line: 507, column: 40)
!845 = !DILocation(line: 509, column: 26, scope: !843, inlinedAt: !824)
!846 = !DILocation(line: 509, column: 36, scope: !843, inlinedAt: !824)
!847 = !DILocation(line: 509, column: 31, scope: !843, inlinedAt: !824)
!848 = !DILocation(line: 510, column: 25, scope: !849, inlinedAt: !824)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 510, column: 21)
!850 = distinct !DILexicalBlock(scope: !843, file: !3, line: 509, column: 42)
!851 = !DILocation(line: 510, column: 23, scope: !849, inlinedAt: !824)
!852 = !DILocation(line: 511, column: 27, scope: !849, inlinedAt: !824)
!853 = !DILocation(line: 510, column: 21, scope: !850, inlinedAt: !824)
!854 = !DILocation(line: 512, column: 22, scope: !850, inlinedAt: !824)
!855 = !DILocation(line: 513, column: 17, scope: !850, inlinedAt: !824)
!856 = distinct !{!856, !857, !858}
!857 = !DILocation(line: 504, column: 5, scope: !814)
!858 = !DILocation(line: 521, column: 5, scope: !814)
!859 = !DILocation(line: 519, column: 9, scope: !835, inlinedAt: !824)
!860 = !DILocation(line: 520, column: 9, scope: !835, inlinedAt: !824)
!861 = !DILocation(line: 0, scope: !849, inlinedAt: !824)
!862 = !DILocation(line: 0, scope: !850, inlinedAt: !824)
!863 = !DILocation(line: 524, column: 14, scope: !864, inlinedAt: !824)
!864 = distinct !DILexicalBlock(scope: !814, file: !3, line: 524, column: 9)
!865 = !{!156, !150, i64 1316}
!866 = !DILocation(line: 524, column: 34, scope: !864, inlinedAt: !824)
!867 = !DILocation(line: 525, column: 21, scope: !864, inlinedAt: !824)
!868 = !DILocation(line: 525, column: 13, scope: !864, inlinedAt: !824)
!869 = !DILocation(line: 524, column: 38, scope: !864, inlinedAt: !824)
!870 = !DILocation(line: 526, column: 20, scope: !864, inlinedAt: !824)
!871 = !{!156, !150, i64 1320}
!872 = !DILocation(line: 526, column: 13, scope: !864, inlinedAt: !824)
!873 = !DILocation(line: 524, column: 9, scope: !814, inlinedAt: !824)
!874 = !DILocation(line: 527, column: 19, scope: !875, inlinedAt: !824)
!875 = distinct !DILexicalBlock(scope: !876, file: !3, line: 527, column: 13)
!876 = distinct !DILexicalBlock(scope: !864, file: !3, line: 526, column: 40)
!877 = !{!156, !150, i64 1312}
!878 = !DILocation(line: 527, column: 14, scope: !875, inlinedAt: !824)
!879 = !DILocation(line: 527, column: 13, scope: !876, inlinedAt: !824)
!880 = !DILocalVariable(name: "l", arg: 1, scope: !881, file: !3, line: 448, type: !40)
!881 = distinct !DISubprogram(name: "json_encode_exception", scope: !3, file: !3, line: 448, type: !882, isLocal: true, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !884)
!882 = !DISubroutineType(types: !883)
!883 = !{null, !40, !63, !310, !39, !29}
!884 = !{!880, !885, !886, !887, !888}
!885 = !DILocalVariable(name: "cfg", arg: 2, scope: !881, file: !3, line: 448, type: !63)
!886 = !DILocalVariable(name: "json", arg: 3, scope: !881, file: !3, line: 448, type: !310)
!887 = !DILocalVariable(name: "lindex", arg: 4, scope: !881, file: !3, line: 448, type: !39)
!888 = !DILocalVariable(name: "reason", arg: 5, scope: !881, file: !3, line: 449, type: !29)
!889 = !DILocation(line: 448, column: 46, scope: !881, inlinedAt: !890)
!890 = distinct !DILocation(line: 528, column: 13, scope: !875, inlinedAt: !824)
!891 = !DILocation(line: 448, column: 64, scope: !881, inlinedAt: !890)
!892 = !DILocation(line: 448, column: 79, scope: !881, inlinedAt: !890)
!893 = !DILocation(line: 448, column: 89, scope: !881, inlinedAt: !890)
!894 = !DILocation(line: 449, column: 47, scope: !881, inlinedAt: !890)
!895 = !DILocation(line: 451, column: 15, scope: !896, inlinedAt: !890)
!896 = distinct !DILexicalBlock(scope: !881, file: !3, line: 451, column: 9)
!897 = !DILocation(line: 451, column: 10, scope: !896, inlinedAt: !890)
!898 = !DILocation(line: 451, column: 9, scope: !881, inlinedAt: !890)
!899 = !DILocation(line: 452, column: 9, scope: !896, inlinedAt: !890)
!900 = !DILocation(line: 454, column: 35, scope: !881, inlinedAt: !890)
!901 = !DILocation(line: 454, column: 19, scope: !881, inlinedAt: !890)
!902 = !DILocation(line: 453, column: 5, scope: !881, inlinedAt: !890)
!903 = !DILocation(line: 455, column: 1, scope: !881, inlinedAt: !890)
!904 = !DILocation(line: 528, column: 13, scope: !875, inlinedAt: !824)
!905 = !DILocation(line: 534, column: 1, scope: !814, inlinedAt: !824)
!906 = !DILocation(line: 663, column: 9, scope: !699)
!907 = !DILocation(line: 682, column: 13, scope: !715)
!908 = !DILocation(line: 682, column: 17, scope: !909)
!909 = distinct !DILexicalBlock(scope: !715, file: !3, line: 682, column: 13)
!910 = !DILocalVariable(name: "l", arg: 1, scope: !911, file: !3, line: 566, type: !40)
!911 = distinct !DISubprogram(name: "json_append_array", scope: !3, file: !3, line: 566, type: !912, isLocal: true, isDefinition: true, scopeLine: 568, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !914)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !40, !63, !39, !310, !39}
!914 = !{!910, !915, !916, !917, !918, !919, !920}
!915 = !DILocalVariable(name: "cfg", arg: 2, scope: !911, file: !3, line: 566, type: !63)
!916 = !DILocalVariable(name: "current_depth", arg: 3, scope: !911, file: !3, line: 566, type: !39)
!917 = !DILocalVariable(name: "json", arg: 4, scope: !911, file: !3, line: 567, type: !310)
!918 = !DILocalVariable(name: "array_length", arg: 5, scope: !911, file: !3, line: 567, type: !39)
!919 = !DILocalVariable(name: "comma", scope: !911, file: !3, line: 569, type: !39)
!920 = !DILocalVariable(name: "i", scope: !911, file: !3, line: 569, type: !39)
!921 = !DILocation(line: 566, column: 42, scope: !911, inlinedAt: !922)
!922 = distinct !DILocation(line: 683, column: 13, scope: !909)
!923 = !DILocation(line: 566, column: 60, scope: !911, inlinedAt: !922)
!924 = !DILocation(line: 566, column: 69, scope: !911, inlinedAt: !922)
!925 = !DILocation(line: 567, column: 41, scope: !911, inlinedAt: !922)
!926 = !DILocation(line: 567, column: 51, scope: !911, inlinedAt: !922)
!927 = !DILocalVariable(name: "s", arg: 1, scope: !928, file: !76, line: 116, type: !310)
!928 = distinct !DISubprogram(name: "strbuf_append_char", scope: !76, file: !76, line: 116, type: !929, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !931)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !310, !30}
!931 = !{!927, !932}
!932 = !DILocalVariable(name: "c", arg: 2, scope: !928, file: !76, line: 116, type: !30)
!933 = !DILocation(line: 116, column: 49, scope: !928, inlinedAt: !934)
!934 = distinct !DILocation(line: 571, column: 5, scope: !911, inlinedAt: !922)
!935 = !DILocation(line: 116, column: 63, scope: !928, inlinedAt: !934)
!936 = !DILocation(line: 95, column: 57, scope: !740, inlinedAt: !937)
!937 = distinct !DILocation(line: 118, column: 5, scope: !928, inlinedAt: !934)
!938 = !DILocation(line: 95, column: 64, scope: !740, inlinedAt: !937)
!939 = !DILocation(line: 90, column: 49, scope: !733, inlinedAt: !940)
!940 = distinct !DILocation(line: 97, column: 15, scope: !739, inlinedAt: !937)
!941 = !DILocation(line: 92, column: 15, scope: !733, inlinedAt: !940)
!942 = !DILocation(line: 92, column: 25, scope: !733, inlinedAt: !940)
!943 = !DILocation(line: 92, column: 32, scope: !733, inlinedAt: !940)
!944 = !DILocation(line: 92, column: 5, scope: !733, inlinedAt: !940)
!945 = !DILocation(line: 97, column: 13, scope: !739, inlinedAt: !937)
!946 = !DILocation(line: 97, column: 9, scope: !740, inlinedAt: !937)
!947 = !DILocation(line: 98, column: 36, scope: !739, inlinedAt: !937)
!948 = !DILocation(line: 98, column: 9, scope: !739, inlinedAt: !937)
!949 = !DILocation(line: 119, column: 21, scope: !928, inlinedAt: !934)
!950 = !DILocation(line: 99, column: 1, scope: !740, inlinedAt: !937)
!951 = !DILocation(line: 119, column: 8, scope: !928, inlinedAt: !934)
!952 = !DILocation(line: 119, column: 5, scope: !928, inlinedAt: !934)
!953 = !DILocation(line: 119, column: 25, scope: !928, inlinedAt: !934)
!954 = !DILocation(line: 120, column: 1, scope: !928, inlinedAt: !934)
!955 = !DILocation(line: 569, column: 9, scope: !911, inlinedAt: !922)
!956 = !DILocation(line: 569, column: 16, scope: !911, inlinedAt: !922)
!957 = !DILocation(line: 575, column: 13, scope: !958, inlinedAt: !922)
!958 = distinct !DILexicalBlock(scope: !959, file: !3, line: 575, column: 13)
!959 = distinct !DILexicalBlock(scope: !960, file: !3, line: 574, column: 41)
!960 = distinct !DILexicalBlock(scope: !961, file: !3, line: 574, column: 5)
!961 = distinct !DILexicalBlock(scope: !911, file: !3, line: 574, column: 5)
!962 = !DILocation(line: 575, column: 13, scope: !959, inlinedAt: !922)
!963 = !DILocation(line: 116, column: 49, scope: !928, inlinedAt: !964)
!964 = distinct !DILocation(line: 576, column: 13, scope: !958, inlinedAt: !922)
!965 = !DILocation(line: 116, column: 63, scope: !928, inlinedAt: !964)
!966 = !DILocation(line: 95, column: 57, scope: !740, inlinedAt: !967)
!967 = distinct !DILocation(line: 118, column: 5, scope: !928, inlinedAt: !964)
!968 = !DILocation(line: 95, column: 64, scope: !740, inlinedAt: !967)
!969 = !DILocation(line: 90, column: 49, scope: !733, inlinedAt: !970)
!970 = distinct !DILocation(line: 97, column: 15, scope: !739, inlinedAt: !967)
!971 = !DILocation(line: 92, column: 15, scope: !733, inlinedAt: !970)
!972 = !DILocation(line: 92, column: 25, scope: !733, inlinedAt: !970)
!973 = !DILocation(line: 92, column: 32, scope: !733, inlinedAt: !970)
!974 = !DILocation(line: 92, column: 5, scope: !733, inlinedAt: !970)
!975 = !DILocation(line: 97, column: 13, scope: !739, inlinedAt: !967)
!976 = !DILocation(line: 97, column: 9, scope: !740, inlinedAt: !967)
!977 = !DILocation(line: 98, column: 36, scope: !739, inlinedAt: !967)
!978 = !DILocation(line: 98, column: 9, scope: !739, inlinedAt: !967)
!979 = !DILocation(line: 119, column: 21, scope: !928, inlinedAt: !964)
!980 = !DILocation(line: 99, column: 1, scope: !740, inlinedAt: !967)
!981 = !DILocation(line: 119, column: 8, scope: !928, inlinedAt: !964)
!982 = !DILocation(line: 119, column: 5, scope: !928, inlinedAt: !964)
!983 = !DILocation(line: 119, column: 25, scope: !928, inlinedAt: !964)
!984 = !DILocation(line: 120, column: 1, scope: !928, inlinedAt: !964)
!985 = !DILocation(line: 576, column: 13, scope: !958, inlinedAt: !922)
!986 = !DILocation(line: 0, scope: !958, inlinedAt: !922)
!987 = !DILocation(line: 580, column: 9, scope: !959, inlinedAt: !922)
!988 = !DILocation(line: 581, column: 9, scope: !959, inlinedAt: !922)
!989 = !DILocation(line: 582, column: 9, scope: !959, inlinedAt: !922)
!990 = !DILocation(line: 574, column: 37, scope: !960, inlinedAt: !922)
!991 = !DILocation(line: 574, column: 19, scope: !960, inlinedAt: !922)
!992 = !DILocation(line: 574, column: 5, scope: !961, inlinedAt: !922)
!993 = distinct !{!993, !994, !995}
!994 = !DILocation(line: 574, column: 5, scope: !961)
!995 = !DILocation(line: 583, column: 5, scope: !961)
!996 = !DILocation(line: 116, column: 49, scope: !928, inlinedAt: !997)
!997 = distinct !DILocation(line: 585, column: 5, scope: !911, inlinedAt: !922)
!998 = !DILocation(line: 116, column: 63, scope: !928, inlinedAt: !997)
!999 = !DILocation(line: 95, column: 57, scope: !740, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 118, column: 5, scope: !928, inlinedAt: !997)
!1001 = !DILocation(line: 95, column: 64, scope: !740, inlinedAt: !1000)
!1002 = !DILocation(line: 90, column: 49, scope: !733, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 97, column: 15, scope: !739, inlinedAt: !1000)
!1004 = !DILocation(line: 92, column: 15, scope: !733, inlinedAt: !1003)
!1005 = !DILocation(line: 92, column: 25, scope: !733, inlinedAt: !1003)
!1006 = !DILocation(line: 92, column: 32, scope: !733, inlinedAt: !1003)
!1007 = !DILocation(line: 92, column: 5, scope: !733, inlinedAt: !1003)
!1008 = !DILocation(line: 97, column: 13, scope: !739, inlinedAt: !1000)
!1009 = !DILocation(line: 97, column: 9, scope: !740, inlinedAt: !1000)
!1010 = !DILocation(line: 98, column: 36, scope: !739, inlinedAt: !1000)
!1011 = !DILocation(line: 98, column: 9, scope: !739, inlinedAt: !1000)
!1012 = !DILocation(line: 119, column: 21, scope: !928, inlinedAt: !997)
!1013 = !DILocation(line: 99, column: 1, scope: !740, inlinedAt: !1000)
!1014 = !DILocation(line: 119, column: 8, scope: !928, inlinedAt: !997)
!1015 = !DILocation(line: 119, column: 5, scope: !928, inlinedAt: !997)
!1016 = !DILocation(line: 119, column: 25, scope: !928, inlinedAt: !997)
!1017 = !DILocation(line: 120, column: 1, scope: !928, inlinedAt: !997)
!1018 = !DILocation(line: 586, column: 1, scope: !911, inlinedAt: !922)
!1019 = !DILocation(line: 683, column: 13, scope: !909)
!1020 = !DILocalVariable(name: "l", arg: 1, scope: !1021, file: !3, line: 618, type: !40)
!1021 = distinct !DISubprogram(name: "json_append_object", scope: !3, file: !3, line: 618, type: !700, isLocal: true, isDefinition: true, scopeLine: 620, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1022)
!1022 = !{!1020, !1023, !1024, !1025, !1026, !1027}
!1023 = !DILocalVariable(name: "cfg", arg: 2, scope: !1021, file: !3, line: 618, type: !63)
!1024 = !DILocalVariable(name: "current_depth", arg: 3, scope: !1021, file: !3, line: 619, type: !39)
!1025 = !DILocalVariable(name: "json", arg: 4, scope: !1021, file: !3, line: 619, type: !310)
!1026 = !DILocalVariable(name: "comma", scope: !1021, file: !3, line: 621, type: !39)
!1027 = !DILocalVariable(name: "keytype", scope: !1021, file: !3, line: 621, type: !39)
!1028 = !DILocation(line: 618, column: 43, scope: !1021, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 685, column: 13, scope: !909)
!1030 = !DILocation(line: 618, column: 61, scope: !1021, inlinedAt: !1029)
!1031 = !DILocation(line: 619, column: 36, scope: !1021, inlinedAt: !1029)
!1032 = !DILocation(line: 619, column: 61, scope: !1021, inlinedAt: !1029)
!1033 = !DILocation(line: 116, column: 49, scope: !928, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 624, column: 5, scope: !1021, inlinedAt: !1029)
!1035 = !DILocation(line: 116, column: 63, scope: !928, inlinedAt: !1034)
!1036 = !DILocation(line: 95, column: 57, scope: !740, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 118, column: 5, scope: !928, inlinedAt: !1034)
!1038 = !DILocation(line: 95, column: 64, scope: !740, inlinedAt: !1037)
!1039 = !DILocation(line: 90, column: 49, scope: !733, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 97, column: 15, scope: !739, inlinedAt: !1037)
!1041 = !DILocation(line: 92, column: 15, scope: !733, inlinedAt: !1040)
!1042 = !DILocation(line: 92, column: 25, scope: !733, inlinedAt: !1040)
!1043 = !DILocation(line: 92, column: 32, scope: !733, inlinedAt: !1040)
!1044 = !DILocation(line: 92, column: 5, scope: !733, inlinedAt: !1040)
!1045 = !DILocation(line: 97, column: 13, scope: !739, inlinedAt: !1037)
!1046 = !DILocation(line: 97, column: 9, scope: !740, inlinedAt: !1037)
!1047 = !DILocation(line: 98, column: 36, scope: !739, inlinedAt: !1037)
!1048 = !DILocation(line: 98, column: 9, scope: !739, inlinedAt: !1037)
!1049 = !DILocation(line: 119, column: 21, scope: !928, inlinedAt: !1034)
!1050 = !DILocation(line: 99, column: 1, scope: !740, inlinedAt: !1037)
!1051 = !DILocation(line: 119, column: 8, scope: !928, inlinedAt: !1034)
!1052 = !DILocation(line: 119, column: 5, scope: !928, inlinedAt: !1034)
!1053 = !DILocation(line: 119, column: 25, scope: !928, inlinedAt: !1034)
!1054 = !DILocation(line: 120, column: 1, scope: !928, inlinedAt: !1034)
!1055 = !DILocation(line: 626, column: 5, scope: !1021, inlinedAt: !1029)
!1056 = !DILocation(line: 621, column: 9, scope: !1021, inlinedAt: !1029)
!1057 = !DILocation(line: 629, column: 12, scope: !1021, inlinedAt: !1029)
!1058 = !DILocation(line: 629, column: 28, scope: !1021, inlinedAt: !1029)
!1059 = !DILocation(line: 629, column: 5, scope: !1021, inlinedAt: !1029)
!1060 = !DILocation(line: 630, column: 13, scope: !1061, inlinedAt: !1029)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 630, column: 13)
!1062 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 629, column: 34)
!1063 = !DILocation(line: 630, column: 13, scope: !1062, inlinedAt: !1029)
!1064 = !DILocation(line: 116, column: 49, scope: !928, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 631, column: 13, scope: !1061, inlinedAt: !1029)
!1066 = !DILocation(line: 116, column: 63, scope: !928, inlinedAt: !1065)
!1067 = !DILocation(line: 95, column: 57, scope: !740, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 118, column: 5, scope: !928, inlinedAt: !1065)
!1069 = !DILocation(line: 95, column: 64, scope: !740, inlinedAt: !1068)
!1070 = !DILocation(line: 90, column: 49, scope: !733, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 97, column: 15, scope: !739, inlinedAt: !1068)
!1072 = !DILocation(line: 92, column: 15, scope: !733, inlinedAt: !1071)
!1073 = !DILocation(line: 92, column: 25, scope: !733, inlinedAt: !1071)
!1074 = !DILocation(line: 92, column: 32, scope: !733, inlinedAt: !1071)
!1075 = !DILocation(line: 92, column: 5, scope: !733, inlinedAt: !1071)
!1076 = !DILocation(line: 97, column: 13, scope: !739, inlinedAt: !1068)
!1077 = !DILocation(line: 97, column: 9, scope: !740, inlinedAt: !1068)
!1078 = !DILocation(line: 98, column: 36, scope: !739, inlinedAt: !1068)
!1079 = !DILocation(line: 98, column: 9, scope: !739, inlinedAt: !1068)
!1080 = !DILocation(line: 119, column: 21, scope: !928, inlinedAt: !1065)
!1081 = !DILocation(line: 99, column: 1, scope: !740, inlinedAt: !1068)
!1082 = !DILocation(line: 119, column: 8, scope: !928, inlinedAt: !1065)
!1083 = !DILocation(line: 119, column: 5, scope: !928, inlinedAt: !1065)
!1084 = !DILocation(line: 119, column: 25, scope: !928, inlinedAt: !1065)
!1085 = !DILocation(line: 120, column: 1, scope: !928, inlinedAt: !1065)
!1086 = !DILocation(line: 631, column: 13, scope: !1061, inlinedAt: !1029)
!1087 = !DILocation(line: 0, scope: !1061, inlinedAt: !1029)
!1088 = !DILocation(line: 636, column: 19, scope: !1062, inlinedAt: !1029)
!1089 = !DILocation(line: 621, column: 16, scope: !1021, inlinedAt: !1029)
!1090 = !DILocation(line: 637, column: 13, scope: !1062, inlinedAt: !1029)
!1091 = !DILocation(line: 116, column: 49, scope: !928, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 638, column: 13, scope: !1093, inlinedAt: !1029)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 637, column: 37)
!1094 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 637, column: 13)
!1095 = !DILocation(line: 116, column: 63, scope: !928, inlinedAt: !1092)
!1096 = !DILocation(line: 95, column: 57, scope: !740, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 118, column: 5, scope: !928, inlinedAt: !1092)
!1098 = !DILocation(line: 95, column: 64, scope: !740, inlinedAt: !1097)
!1099 = !DILocation(line: 90, column: 49, scope: !733, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 97, column: 15, scope: !739, inlinedAt: !1097)
!1101 = !DILocation(line: 92, column: 15, scope: !733, inlinedAt: !1100)
!1102 = !DILocation(line: 92, column: 25, scope: !733, inlinedAt: !1100)
!1103 = !DILocation(line: 92, column: 32, scope: !733, inlinedAt: !1100)
!1104 = !DILocation(line: 92, column: 5, scope: !733, inlinedAt: !1100)
!1105 = !DILocation(line: 97, column: 13, scope: !739, inlinedAt: !1097)
!1106 = !DILocation(line: 97, column: 9, scope: !740, inlinedAt: !1097)
!1107 = !DILocation(line: 98, column: 36, scope: !739, inlinedAt: !1097)
!1108 = !DILocation(line: 98, column: 9, scope: !739, inlinedAt: !1097)
!1109 = !DILocation(line: 119, column: 21, scope: !928, inlinedAt: !1092)
!1110 = !DILocation(line: 99, column: 1, scope: !740, inlinedAt: !1097)
!1111 = !DILocation(line: 119, column: 8, scope: !928, inlinedAt: !1092)
!1112 = !DILocation(line: 119, column: 5, scope: !928, inlinedAt: !1092)
!1113 = !DILocation(line: 119, column: 25, scope: !928, inlinedAt: !1092)
!1114 = !DILocation(line: 120, column: 1, scope: !928, inlinedAt: !1092)
!1115 = !DILocation(line: 639, column: 13, scope: !1093, inlinedAt: !1029)
!1116 = !DILocation(line: 127, column: 48, scope: !722, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 640, column: 13, scope: !1093, inlinedAt: !1029)
!1118 = !DILocation(line: 127, column: 63, scope: !722, inlinedAt: !1117)
!1119 = !DILocation(line: 127, column: 70, scope: !722, inlinedAt: !1117)
!1120 = !DILocation(line: 95, column: 57, scope: !740, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 129, column: 5, scope: !722, inlinedAt: !1117)
!1122 = !DILocation(line: 95, column: 64, scope: !740, inlinedAt: !1121)
!1123 = !DILocation(line: 90, column: 49, scope: !733, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 97, column: 15, scope: !739, inlinedAt: !1121)
!1125 = !DILocation(line: 92, column: 15, scope: !733, inlinedAt: !1124)
!1126 = !DILocation(line: 92, column: 25, scope: !733, inlinedAt: !1124)
!1127 = !DILocation(line: 92, column: 32, scope: !733, inlinedAt: !1124)
!1128 = !DILocation(line: 92, column: 5, scope: !733, inlinedAt: !1124)
!1129 = !DILocation(line: 97, column: 13, scope: !739, inlinedAt: !1121)
!1130 = !DILocation(line: 97, column: 9, scope: !740, inlinedAt: !1121)
!1131 = !DILocation(line: 98, column: 36, scope: !739, inlinedAt: !1121)
!1132 = !DILocation(line: 98, column: 9, scope: !739, inlinedAt: !1121)
!1133 = !DILocation(line: 130, column: 24, scope: !722, inlinedAt: !1117)
!1134 = !DILocation(line: 99, column: 1, scope: !740, inlinedAt: !1121)
!1135 = !DILocation(line: 130, column: 15, scope: !722, inlinedAt: !1117)
!1136 = !DILocation(line: 130, column: 19, scope: !722, inlinedAt: !1117)
!1137 = !DILocation(line: 130, column: 5, scope: !722, inlinedAt: !1117)
!1138 = !DILocation(line: 131, column: 15, scope: !722, inlinedAt: !1117)
!1139 = !DILocation(line: 641, column: 9, scope: !1093, inlinedAt: !1029)
!1140 = !DILocation(line: 642, column: 13, scope: !1141, inlinedAt: !1029)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 641, column: 44)
!1142 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 641, column: 20)
!1143 = !DILocation(line: 116, column: 49, scope: !928, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 643, column: 13, scope: !1141, inlinedAt: !1029)
!1145 = !DILocation(line: 116, column: 63, scope: !928, inlinedAt: !1144)
!1146 = !DILocation(line: 95, column: 57, scope: !740, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 118, column: 5, scope: !928, inlinedAt: !1144)
!1148 = !DILocation(line: 95, column: 64, scope: !740, inlinedAt: !1147)
!1149 = !DILocation(line: 90, column: 49, scope: !733, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 97, column: 15, scope: !739, inlinedAt: !1147)
!1151 = !DILocation(line: 92, column: 15, scope: !733, inlinedAt: !1150)
!1152 = !DILocation(line: 92, column: 25, scope: !733, inlinedAt: !1150)
!1153 = !DILocation(line: 92, column: 32, scope: !733, inlinedAt: !1150)
!1154 = !DILocation(line: 92, column: 5, scope: !733, inlinedAt: !1150)
!1155 = !DILocation(line: 97, column: 13, scope: !739, inlinedAt: !1147)
!1156 = !DILocation(line: 97, column: 9, scope: !740, inlinedAt: !1147)
!1157 = !DILocation(line: 98, column: 36, scope: !739, inlinedAt: !1147)
!1158 = !DILocation(line: 98, column: 9, scope: !739, inlinedAt: !1147)
!1159 = !DILocation(line: 119, column: 21, scope: !928, inlinedAt: !1144)
!1160 = !DILocation(line: 99, column: 1, scope: !740, inlinedAt: !1147)
!1161 = !DILocation(line: 119, column: 8, scope: !928, inlinedAt: !1144)
!1162 = !DILocation(line: 119, column: 5, scope: !928, inlinedAt: !1144)
!1163 = !DILocation(line: 119, column: 25, scope: !928, inlinedAt: !1144)
!1164 = !DILocation(line: 644, column: 9, scope: !1141, inlinedAt: !1029)
!1165 = !DILocation(line: 448, column: 46, scope: !881, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 645, column: 13, scope: !1167, inlinedAt: !1029)
!1167 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 644, column: 16)
!1168 = !DILocation(line: 448, column: 64, scope: !881, inlinedAt: !1166)
!1169 = !DILocation(line: 448, column: 79, scope: !881, inlinedAt: !1166)
!1170 = !DILocation(line: 448, column: 89, scope: !881, inlinedAt: !1166)
!1171 = !DILocation(line: 449, column: 47, scope: !881, inlinedAt: !1166)
!1172 = !DILocation(line: 451, column: 15, scope: !896, inlinedAt: !1166)
!1173 = !DILocation(line: 451, column: 10, scope: !896, inlinedAt: !1166)
!1174 = !DILocation(line: 451, column: 9, scope: !881, inlinedAt: !1166)
!1175 = !DILocation(line: 452, column: 9, scope: !896, inlinedAt: !1166)
!1176 = !DILocation(line: 454, column: 35, scope: !881, inlinedAt: !1166)
!1177 = !DILocation(line: 454, column: 19, scope: !881, inlinedAt: !1166)
!1178 = !DILocation(line: 453, column: 5, scope: !881, inlinedAt: !1166)
!1179 = !DILocation(line: 0, scope: !909)
!1180 = !DILocation(line: 651, column: 9, scope: !1062, inlinedAt: !1029)
!1181 = !DILocation(line: 652, column: 9, scope: !1062, inlinedAt: !1029)
!1182 = distinct !{!1182, !1183, !1184}
!1183 = !DILocation(line: 629, column: 5, scope: !1021)
!1184 = !DILocation(line: 654, column: 5, scope: !1021)
!1185 = !DILocation(line: 116, column: 49, scope: !928, inlinedAt: !1186)
!1186 = distinct !DILocation(line: 656, column: 5, scope: !1021, inlinedAt: !1029)
!1187 = !DILocation(line: 116, column: 63, scope: !928, inlinedAt: !1186)
!1188 = !DILocation(line: 95, column: 57, scope: !740, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 118, column: 5, scope: !928, inlinedAt: !1186)
!1190 = !DILocation(line: 95, column: 64, scope: !740, inlinedAt: !1189)
!1191 = !DILocation(line: 90, column: 49, scope: !733, inlinedAt: !1192)
!1192 = distinct !DILocation(line: 97, column: 15, scope: !739, inlinedAt: !1189)
!1193 = !DILocation(line: 92, column: 15, scope: !733, inlinedAt: !1192)
!1194 = !DILocation(line: 92, column: 25, scope: !733, inlinedAt: !1192)
!1195 = !DILocation(line: 92, column: 32, scope: !733, inlinedAt: !1192)
!1196 = !DILocation(line: 92, column: 5, scope: !733, inlinedAt: !1192)
!1197 = !DILocation(line: 97, column: 13, scope: !739, inlinedAt: !1189)
!1198 = !DILocation(line: 97, column: 9, scope: !740, inlinedAt: !1189)
!1199 = !DILocation(line: 98, column: 36, scope: !739, inlinedAt: !1189)
!1200 = !DILocation(line: 98, column: 9, scope: !739, inlinedAt: !1189)
!1201 = !DILocation(line: 119, column: 21, scope: !928, inlinedAt: !1186)
!1202 = !DILocation(line: 99, column: 1, scope: !740, inlinedAt: !1189)
!1203 = !DILocation(line: 119, column: 8, scope: !928, inlinedAt: !1186)
!1204 = !DILocation(line: 119, column: 5, scope: !928, inlinedAt: !1186)
!1205 = !DILocation(line: 119, column: 25, scope: !928, inlinedAt: !1186)
!1206 = !DILocation(line: 120, column: 1, scope: !928, inlinedAt: !1186)
!1207 = !DILocation(line: 657, column: 1, scope: !1021, inlinedAt: !1029)
!1208 = !DILocation(line: 127, column: 48, scope: !722, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 688, column: 9, scope: !715)
!1210 = !DILocation(line: 127, column: 63, scope: !722, inlinedAt: !1209)
!1211 = !DILocation(line: 127, column: 70, scope: !722, inlinedAt: !1209)
!1212 = !DILocation(line: 95, column: 57, scope: !740, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 129, column: 5, scope: !722, inlinedAt: !1209)
!1214 = !DILocation(line: 95, column: 64, scope: !740, inlinedAt: !1213)
!1215 = !DILocation(line: 90, column: 49, scope: !733, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 97, column: 15, scope: !739, inlinedAt: !1213)
!1217 = !DILocation(line: 92, column: 15, scope: !733, inlinedAt: !1216)
!1218 = !DILocation(line: 92, column: 25, scope: !733, inlinedAt: !1216)
!1219 = !DILocation(line: 92, column: 32, scope: !733, inlinedAt: !1216)
!1220 = !DILocation(line: 92, column: 5, scope: !733, inlinedAt: !1216)
!1221 = !DILocation(line: 97, column: 13, scope: !739, inlinedAt: !1213)
!1222 = !DILocation(line: 97, column: 9, scope: !740, inlinedAt: !1213)
!1223 = !DILocation(line: 98, column: 36, scope: !739, inlinedAt: !1213)
!1224 = !DILocation(line: 98, column: 9, scope: !739, inlinedAt: !1213)
!1225 = !DILocation(line: 130, column: 24, scope: !722, inlinedAt: !1209)
!1226 = !DILocation(line: 99, column: 1, scope: !740, inlinedAt: !1213)
!1227 = !DILocation(line: 130, column: 15, scope: !722, inlinedAt: !1209)
!1228 = !DILocation(line: 130, column: 19, scope: !722, inlinedAt: !1209)
!1229 = !DILocation(line: 130, column: 5, scope: !722, inlinedAt: !1209)
!1230 = !DILocation(line: 131, column: 15, scope: !722, inlinedAt: !1209)
!1231 = !DILocation(line: 132, column: 1, scope: !722, inlinedAt: !1209)
!1232 = !DILocation(line: 689, column: 9, scope: !715)
!1233 = !DILocation(line: 691, column: 13, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !715, file: !3, line: 691, column: 13)
!1235 = !DILocation(line: 691, column: 35, scope: !1234)
!1236 = !DILocation(line: 691, column: 13, scope: !715)
!1237 = !DILocation(line: 127, column: 48, scope: !722, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 692, column: 13, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 691, column: 44)
!1240 = !DILocation(line: 127, column: 63, scope: !722, inlinedAt: !1238)
!1241 = !DILocation(line: 127, column: 70, scope: !722, inlinedAt: !1238)
!1242 = !DILocation(line: 95, column: 57, scope: !740, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 129, column: 5, scope: !722, inlinedAt: !1238)
!1244 = !DILocation(line: 95, column: 64, scope: !740, inlinedAt: !1243)
!1245 = !DILocation(line: 90, column: 49, scope: !733, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 97, column: 15, scope: !739, inlinedAt: !1243)
!1247 = !DILocation(line: 92, column: 15, scope: !733, inlinedAt: !1246)
!1248 = !DILocation(line: 92, column: 25, scope: !733, inlinedAt: !1246)
!1249 = !DILocation(line: 92, column: 32, scope: !733, inlinedAt: !1246)
!1250 = !DILocation(line: 92, column: 5, scope: !733, inlinedAt: !1246)
!1251 = !DILocation(line: 97, column: 13, scope: !739, inlinedAt: !1243)
!1252 = !DILocation(line: 97, column: 9, scope: !740, inlinedAt: !1243)
!1253 = !DILocation(line: 98, column: 36, scope: !739, inlinedAt: !1243)
!1254 = !DILocation(line: 98, column: 9, scope: !739, inlinedAt: !1243)
!1255 = !DILocation(line: 130, column: 24, scope: !722, inlinedAt: !1238)
!1256 = !DILocation(line: 99, column: 1, scope: !740, inlinedAt: !1243)
!1257 = !DILocation(line: 130, column: 15, scope: !722, inlinedAt: !1238)
!1258 = !DILocation(line: 130, column: 19, scope: !722, inlinedAt: !1238)
!1259 = !DILocation(line: 130, column: 5, scope: !722, inlinedAt: !1238)
!1260 = !DILocation(line: 131, column: 15, scope: !722, inlinedAt: !1238)
!1261 = !DILocation(line: 132, column: 1, scope: !722, inlinedAt: !1238)
!1262 = !DILocation(line: 693, column: 13, scope: !1239)
!1263 = !DILocation(line: 448, column: 46, scope: !881, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 698, column: 9, scope: !715)
!1265 = !DILocation(line: 448, column: 64, scope: !881, inlinedAt: !1264)
!1266 = !DILocation(line: 448, column: 79, scope: !881, inlinedAt: !1264)
!1267 = !DILocation(line: 448, column: 89, scope: !881, inlinedAt: !1264)
!1268 = !DILocation(line: 449, column: 47, scope: !881, inlinedAt: !1264)
!1269 = !DILocation(line: 451, column: 15, scope: !896, inlinedAt: !1264)
!1270 = !DILocation(line: 451, column: 10, scope: !896, inlinedAt: !1264)
!1271 = !DILocation(line: 451, column: 9, scope: !881, inlinedAt: !1264)
!1272 = !DILocation(line: 452, column: 9, scope: !896, inlinedAt: !1264)
!1273 = !DILocation(line: 454, column: 35, scope: !881, inlinedAt: !1264)
!1274 = !DILocation(line: 454, column: 19, scope: !881, inlinedAt: !1264)
!1275 = !DILocation(line: 453, column: 5, scope: !881, inlinedAt: !1264)
!1276 = !DILocation(line: 455, column: 1, scope: !881, inlinedAt: !1264)
!1277 = !DILocation(line: 700, column: 5, scope: !715)
!1278 = !DILocation(line: 701, column: 1, scope: !699)
!1279 = distinct !DISubprogram(name: "json_append_string", scope: !3, file: !3, line: 463, type: !1280, isLocal: true, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1282)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{null, !40, !310, !39}
!1282 = !{!1283, !1284, !1285, !1286, !1287, !1288, !1289}
!1283 = !DILocalVariable(name: "l", arg: 1, scope: !1279, file: !3, line: 463, type: !40)
!1284 = !DILocalVariable(name: "json", arg: 2, scope: !1279, file: !3, line: 463, type: !310)
!1285 = !DILocalVariable(name: "lindex", arg: 3, scope: !1279, file: !3, line: 463, type: !39)
!1286 = !DILocalVariable(name: "escstr", scope: !1279, file: !3, line: 465, type: !29)
!1287 = !DILocalVariable(name: "i", scope: !1279, file: !3, line: 466, type: !39)
!1288 = !DILocalVariable(name: "str", scope: !1279, file: !3, line: 467, type: !29)
!1289 = !DILocalVariable(name: "len", scope: !1279, file: !3, line: 468, type: !408)
!1290 = !DILocation(line: 463, column: 43, scope: !1279)
!1291 = !DILocation(line: 463, column: 56, scope: !1279)
!1292 = !DILocation(line: 463, column: 66, scope: !1279)
!1293 = !DILocation(line: 468, column: 5, scope: !1279)
!1294 = !DILocation(line: 468, column: 12, scope: !1279)
!1295 = !DILocation(line: 470, column: 11, scope: !1279)
!1296 = !DILocation(line: 467, column: 17, scope: !1279)
!1297 = !DILocation(line: 476, column: 38, scope: !1279)
!1298 = !DILocation(line: 95, column: 57, scope: !740, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 476, column: 5, scope: !1279)
!1300 = !DILocation(line: 95, column: 64, scope: !740, inlinedAt: !1299)
!1301 = !DILocation(line: 90, column: 49, scope: !733, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 97, column: 15, scope: !739, inlinedAt: !1299)
!1303 = !DILocation(line: 92, column: 15, scope: !733, inlinedAt: !1302)
!1304 = !DILocation(line: 92, column: 25, scope: !733, inlinedAt: !1302)
!1305 = !DILocation(line: 92, column: 32, scope: !733, inlinedAt: !1302)
!1306 = !DILocation(line: 92, column: 5, scope: !733, inlinedAt: !1302)
!1307 = !DILocation(line: 97, column: 13, scope: !739, inlinedAt: !1299)
!1308 = !DILocation(line: 97, column: 9, scope: !740, inlinedAt: !1299)
!1309 = !DILocation(line: 98, column: 36, scope: !739, inlinedAt: !1299)
!1310 = !DILocation(line: 98, column: 9, scope: !739, inlinedAt: !1299)
!1311 = !DILocation(line: 124, column: 21, scope: !1312, inlinedAt: !1316)
!1312 = distinct !DISubprogram(name: "strbuf_append_char_unsafe", scope: !76, file: !76, line: 122, type: !929, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1313)
!1313 = !{!1314, !1315}
!1314 = !DILocalVariable(name: "s", arg: 1, scope: !1312, file: !76, line: 122, type: !310)
!1315 = !DILocalVariable(name: "c", arg: 2, scope: !1312, file: !76, line: 122, type: !30)
!1316 = distinct !DILocation(line: 478, column: 5, scope: !1279)
!1317 = !DILocation(line: 99, column: 1, scope: !740, inlinedAt: !1299)
!1318 = !DILocation(line: 122, column: 56, scope: !1312, inlinedAt: !1316)
!1319 = !DILocation(line: 122, column: 70, scope: !1312, inlinedAt: !1316)
!1320 = !DILocation(line: 124, column: 8, scope: !1312, inlinedAt: !1316)
!1321 = !DILocation(line: 124, column: 5, scope: !1312, inlinedAt: !1316)
!1322 = !DILocation(line: 124, column: 25, scope: !1312, inlinedAt: !1316)
!1323 = !DILocation(line: 125, column: 1, scope: !1312, inlinedAt: !1316)
!1324 = !DILocation(line: 466, column: 9, scope: !1279)
!1325 = !DILocation(line: 479, column: 21, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 479, column: 5)
!1327 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 479, column: 5)
!1328 = !DILocation(line: 479, column: 19, scope: !1326)
!1329 = !DILocation(line: 479, column: 5, scope: !1327)
!1330 = !DILocation(line: 480, column: 45, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 479, column: 31)
!1332 = !DILocation(line: 480, column: 18, scope: !1331)
!1333 = !{!158, !158, i64 0}
!1334 = !DILocation(line: 465, column: 17, scope: !1279)
!1335 = !DILocation(line: 481, column: 13, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 481, column: 13)
!1337 = !DILocation(line: 481, column: 13, scope: !1331)
!1338 = !DILocation(line: 482, column: 13, scope: !1336)
!1339 = !DILocation(line: 122, column: 56, scope: !1312, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 484, column: 13, scope: !1336)
!1341 = !DILocation(line: 122, column: 70, scope: !1312, inlinedAt: !1340)
!1342 = !DILocation(line: 124, column: 8, scope: !1312, inlinedAt: !1340)
!1343 = !DILocation(line: 124, column: 21, scope: !1312, inlinedAt: !1340)
!1344 = !DILocation(line: 124, column: 5, scope: !1312, inlinedAt: !1340)
!1345 = !DILocation(line: 124, column: 25, scope: !1312, inlinedAt: !1340)
!1346 = !DILocation(line: 125, column: 1, scope: !1312, inlinedAt: !1340)
!1347 = !DILocation(line: 479, column: 27, scope: !1326)
!1348 = distinct !{!1348, !1329, !1349}
!1349 = !DILocation(line: 485, column: 5, scope: !1327)
!1350 = !DILocation(line: 122, column: 56, scope: !1312, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 486, column: 5, scope: !1279)
!1352 = !DILocation(line: 122, column: 70, scope: !1312, inlinedAt: !1351)
!1353 = !DILocation(line: 124, column: 8, scope: !1312, inlinedAt: !1351)
!1354 = !DILocation(line: 124, column: 21, scope: !1312, inlinedAt: !1351)
!1355 = !DILocation(line: 124, column: 5, scope: !1312, inlinedAt: !1351)
!1356 = !DILocation(line: 124, column: 25, scope: !1312, inlinedAt: !1351)
!1357 = !DILocation(line: 125, column: 1, scope: !1312, inlinedAt: !1351)
!1358 = !DILocation(line: 487, column: 1, scope: !1279)
!1359 = distinct !DISubprogram(name: "json_append_number", scope: !3, file: !3, line: 588, type: !1360, isLocal: true, isDefinition: true, scopeLine: 590, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1362)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !40, !63, !310, !39}
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368}
!1363 = !DILocalVariable(name: "l", arg: 1, scope: !1359, file: !3, line: 588, type: !40)
!1364 = !DILocalVariable(name: "cfg", arg: 2, scope: !1359, file: !3, line: 588, type: !63)
!1365 = !DILocalVariable(name: "json", arg: 3, scope: !1359, file: !3, line: 589, type: !310)
!1366 = !DILocalVariable(name: "lindex", arg: 4, scope: !1359, file: !3, line: 589, type: !39)
!1367 = !DILocalVariable(name: "num", scope: !1359, file: !3, line: 591, type: !404)
!1368 = !DILocalVariable(name: "len", scope: !1359, file: !3, line: 592, type: !39)
!1369 = !DILocation(line: 588, column: 43, scope: !1359)
!1370 = !DILocation(line: 588, column: 61, scope: !1359)
!1371 = !DILocation(line: 589, column: 42, scope: !1359)
!1372 = !DILocation(line: 589, column: 52, scope: !1359)
!1373 = !DILocation(line: 591, column: 18, scope: !1359)
!1374 = !DILocation(line: 591, column: 12, scope: !1359)
!1375 = !DILocation(line: 594, column: 14, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 594, column: 9)
!1377 = !{!156, !150, i64 1328}
!1378 = !DILocation(line: 594, column: 37, scope: !1376)
!1379 = !DILocation(line: 594, column: 9, scope: !1359)
!1380 = !DILocation(line: 596, column: 13, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 596, column: 13)
!1382 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 594, column: 43)
!1383 = !DILocation(line: 596, column: 24, scope: !1381)
!1384 = !DILocation(line: 596, column: 27, scope: !1381)
!1385 = !DILocation(line: 596, column: 13, scope: !1382)
!1386 = !DILocation(line: 448, column: 46, scope: !881, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 597, column: 13, scope: !1381)
!1388 = !DILocation(line: 448, column: 64, scope: !881, inlinedAt: !1387)
!1389 = !DILocation(line: 448, column: 79, scope: !881, inlinedAt: !1387)
!1390 = !DILocation(line: 448, column: 89, scope: !881, inlinedAt: !1387)
!1391 = !DILocation(line: 449, column: 47, scope: !881, inlinedAt: !1387)
!1392 = !DILocation(line: 451, column: 15, scope: !896, inlinedAt: !1387)
!1393 = !DILocation(line: 451, column: 10, scope: !896, inlinedAt: !1387)
!1394 = !DILocation(line: 451, column: 9, scope: !881, inlinedAt: !1387)
!1395 = !DILocation(line: 452, column: 9, scope: !896, inlinedAt: !1387)
!1396 = !DILocation(line: 454, column: 35, scope: !881, inlinedAt: !1387)
!1397 = !DILocation(line: 454, column: 19, scope: !881, inlinedAt: !1387)
!1398 = !DILocation(line: 453, column: 5, scope: !881, inlinedAt: !1387)
!1399 = !DILocation(line: 455, column: 1, scope: !881, inlinedAt: !1387)
!1400 = !DILocation(line: 597, column: 13, scope: !1381)
!1401 = !DILocation(line: 598, column: 44, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 598, column: 16)
!1403 = !DILocation(line: 0, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 607, column: 13)
!1405 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 605, column: 12)
!1406 = !DILocation(line: 598, column: 16, scope: !1376)
!1407 = !DILocation(line: 601, column: 13, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !3, line: 601, column: 13)
!1409 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 598, column: 50)
!1410 = !DILocation(line: 601, column: 13, scope: !1409)
!1411 = !DILocation(line: 127, column: 48, scope: !722, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 602, column: 13, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 601, column: 25)
!1414 = !DILocation(line: 127, column: 63, scope: !722, inlinedAt: !1412)
!1415 = !DILocation(line: 127, column: 70, scope: !722, inlinedAt: !1412)
!1416 = !DILocation(line: 95, column: 57, scope: !740, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 129, column: 5, scope: !722, inlinedAt: !1412)
!1418 = !DILocation(line: 95, column: 64, scope: !740, inlinedAt: !1417)
!1419 = !DILocation(line: 90, column: 49, scope: !733, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 97, column: 15, scope: !739, inlinedAt: !1417)
!1421 = !DILocation(line: 92, column: 15, scope: !733, inlinedAt: !1420)
!1422 = !DILocation(line: 92, column: 25, scope: !733, inlinedAt: !1420)
!1423 = !DILocation(line: 92, column: 32, scope: !733, inlinedAt: !1420)
!1424 = !DILocation(line: 92, column: 5, scope: !733, inlinedAt: !1420)
!1425 = !DILocation(line: 97, column: 13, scope: !739, inlinedAt: !1417)
!1426 = !DILocation(line: 97, column: 9, scope: !740, inlinedAt: !1417)
!1427 = !DILocation(line: 98, column: 36, scope: !739, inlinedAt: !1417)
!1428 = !DILocation(line: 98, column: 9, scope: !739, inlinedAt: !1417)
!1429 = !DILocation(line: 130, column: 24, scope: !722, inlinedAt: !1412)
!1430 = !DILocation(line: 99, column: 1, scope: !740, inlinedAt: !1417)
!1431 = !DILocation(line: 130, column: 15, scope: !722, inlinedAt: !1412)
!1432 = !DILocation(line: 130, column: 19, scope: !722, inlinedAt: !1412)
!1433 = !DILocation(line: 130, column: 5, scope: !722, inlinedAt: !1412)
!1434 = !DILocation(line: 603, column: 13, scope: !1413)
!1435 = !DILocation(line: 607, column: 13, scope: !1404)
!1436 = !DILocation(line: 607, column: 24, scope: !1404)
!1437 = !DILocation(line: 607, column: 27, scope: !1404)
!1438 = !DILocation(line: 607, column: 13, scope: !1405)
!1439 = !DILocation(line: 127, column: 48, scope: !722, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 608, column: 13, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 607, column: 39)
!1442 = !DILocation(line: 127, column: 63, scope: !722, inlinedAt: !1440)
!1443 = !DILocation(line: 127, column: 70, scope: !722, inlinedAt: !1440)
!1444 = !DILocation(line: 95, column: 57, scope: !740, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 129, column: 5, scope: !722, inlinedAt: !1440)
!1446 = !DILocation(line: 95, column: 64, scope: !740, inlinedAt: !1445)
!1447 = !DILocation(line: 90, column: 49, scope: !733, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 97, column: 15, scope: !739, inlinedAt: !1445)
!1449 = !DILocation(line: 92, column: 15, scope: !733, inlinedAt: !1448)
!1450 = !DILocation(line: 92, column: 25, scope: !733, inlinedAt: !1448)
!1451 = !DILocation(line: 92, column: 32, scope: !733, inlinedAt: !1448)
!1452 = !DILocation(line: 92, column: 5, scope: !733, inlinedAt: !1448)
!1453 = !DILocation(line: 97, column: 13, scope: !739, inlinedAt: !1445)
!1454 = !DILocation(line: 97, column: 9, scope: !740, inlinedAt: !1445)
!1455 = !DILocation(line: 98, column: 36, scope: !739, inlinedAt: !1445)
!1456 = !DILocation(line: 98, column: 9, scope: !739, inlinedAt: !1445)
!1457 = !DILocation(line: 130, column: 24, scope: !722, inlinedAt: !1440)
!1458 = !DILocation(line: 99, column: 1, scope: !740, inlinedAt: !1445)
!1459 = !DILocation(line: 130, column: 15, scope: !722, inlinedAt: !1440)
!1460 = !DILocation(line: 130, column: 19, scope: !722, inlinedAt: !1440)
!1461 = !DILocation(line: 130, column: 5, scope: !722, inlinedAt: !1440)
!1462 = !DILocation(line: 609, column: 13, scope: !1441)
!1463 = !DILocation(line: 95, column: 57, scope: !740, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 613, column: 5, scope: !1359)
!1465 = !DILocation(line: 95, column: 64, scope: !740, inlinedAt: !1464)
!1466 = !DILocation(line: 90, column: 49, scope: !733, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 97, column: 15, scope: !739, inlinedAt: !1464)
!1468 = !DILocation(line: 92, column: 15, scope: !733, inlinedAt: !1467)
!1469 = !DILocation(line: 92, column: 25, scope: !733, inlinedAt: !1467)
!1470 = !DILocation(line: 92, column: 32, scope: !733, inlinedAt: !1467)
!1471 = !DILocation(line: 92, column: 5, scope: !733, inlinedAt: !1467)
!1472 = !DILocation(line: 97, column: 13, scope: !739, inlinedAt: !1464)
!1473 = !DILocation(line: 97, column: 9, scope: !740, inlinedAt: !1464)
!1474 = !DILocation(line: 98, column: 36, scope: !739, inlinedAt: !1464)
!1475 = !DILocation(line: 98, column: 9, scope: !739, inlinedAt: !1464)
!1476 = !DILocation(line: 103, column: 24, scope: !1477, inlinedAt: !1482)
!1477 = distinct !DISubprogram(name: "strbuf_empty_ptr", scope: !76, file: !76, line: 101, type: !1478, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1480)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!80, !310}
!1480 = !{!1481}
!1481 = !DILocalVariable(name: "s", arg: 1, scope: !1477, file: !76, line: 101, type: !310)
!1482 = distinct !DILocation(line: 614, column: 24, scope: !1359)
!1483 = !DILocation(line: 99, column: 1, scope: !740, inlinedAt: !1464)
!1484 = !DILocation(line: 101, column: 48, scope: !1477, inlinedAt: !1482)
!1485 = !DILocation(line: 103, column: 15, scope: !1477, inlinedAt: !1482)
!1486 = !DILocation(line: 103, column: 19, scope: !1477, inlinedAt: !1482)
!1487 = !DILocation(line: 103, column: 5, scope: !1477, inlinedAt: !1482)
!1488 = !DILocation(line: 614, column: 58, scope: !1359)
!1489 = !{!156, !150, i64 1332}
!1490 = !DILocation(line: 614, column: 11, scope: !1359)
!1491 = !DILocation(line: 592, column: 9, scope: !1359)
!1492 = !DILocalVariable(name: "s", arg: 1, scope: !1493, file: !76, line: 106, type: !310)
!1493 = distinct !DISubprogram(name: "strbuf_extend_length", scope: !76, file: !76, line: 106, type: !741, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1494)
!1494 = !{!1492, !1495}
!1495 = !DILocalVariable(name: "len", arg: 2, scope: !1493, file: !76, line: 106, type: !39)
!1496 = !DILocation(line: 106, column: 51, scope: !1493, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 615, column: 5, scope: !1359)
!1498 = !DILocation(line: 106, column: 58, scope: !1493, inlinedAt: !1497)
!1499 = !DILocation(line: 616, column: 1, scope: !1359)
!1500 = !DILocation(line: 0, scope: !1413)
!1501 = distinct !DISubprogram(name: "json_next_token", scope: !3, file: !3, line: 1014, type: !1502, isLocal: true, isDefinition: true, scopeLine: 1015, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1504)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null, !473, !474}
!1504 = !{!1505, !1506, !1507, !1510}
!1505 = !DILocalVariable(name: "json", arg: 1, scope: !1501, file: !3, line: 1014, type: !473)
!1506 = !DILocalVariable(name: "token", arg: 2, scope: !1501, file: !3, line: 1014, type: !474)
!1507 = !DILocalVariable(name: "ch2token", scope: !1501, file: !3, line: 1016, type: !1508)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!1510 = !DILocalVariable(name: "ch", scope: !1501, file: !3, line: 1017, type: !39)
!1511 = !DILocalVariable(name: "utf8", scope: !1512, file: !3, line: 821, type: !1521)
!1512 = distinct !DISubprogram(name: "json_append_unicode_escape", scope: !3, file: !3, line: 819, type: !1513, isLocal: true, isDefinition: true, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1515)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!39, !473}
!1515 = !{!1516, !1511, !1517, !1518, !1519, !1520}
!1516 = !DILocalVariable(name: "json", arg: 1, scope: !1512, file: !3, line: 819, type: !473)
!1517 = !DILocalVariable(name: "codepoint", scope: !1512, file: !3, line: 822, type: !39)
!1518 = !DILocalVariable(name: "surrogate_low", scope: !1512, file: !3, line: 823, type: !39)
!1519 = !DILocalVariable(name: "len", scope: !1512, file: !3, line: 824, type: !39)
!1520 = !DILocalVariable(name: "escape_len", scope: !1512, file: !3, line: 825, type: !39)
!1521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 32, elements: !97)
!1522 = !DILocation(line: 821, column: 10, scope: !1512, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 917, column: 21, scope: !1524, inlinedAt: !1536)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 917, column: 21)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 916, column: 28)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 916, column: 17)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 910, column: 25)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 910, column: 13)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 902, column: 38)
!1530 = distinct !DISubprogram(name: "json_next_string_token", scope: !3, file: !3, line: 885, type: !1502, isLocal: true, isDefinition: true, scopeLine: 886, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1531)
!1531 = !{!1532, !1533, !1534, !1535}
!1532 = !DILocalVariable(name: "json", arg: 1, scope: !1530, file: !3, line: 885, type: !473)
!1533 = !DILocalVariable(name: "token", arg: 2, scope: !1530, file: !3, line: 885, type: !474)
!1534 = !DILocalVariable(name: "escape2char", scope: !1530, file: !3, line: 887, type: !80)
!1535 = !DILocalVariable(name: "ch", scope: !1530, file: !3, line: 888, type: !31)
!1536 = distinct !DILocation(line: 1055, column: 9, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 1054, column: 20)
!1538 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 1054, column: 9)
!1539 = !DILocation(line: 1014, column: 43, scope: !1501)
!1540 = !DILocation(line: 1014, column: 63, scope: !1501)
!1541 = !DILocation(line: 1016, column: 47, scope: !1501)
!1542 = !DILocation(line: 1016, column: 30, scope: !1501)
!1543 = !DILocation(line: 1021, column: 37, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 1020, column: 15)
!1545 = !DILocation(line: 1021, column: 29, scope: !1544)
!1546 = !DILocation(line: 1022, column: 23, scope: !1544)
!1547 = !DILocation(line: 1022, column: 16, scope: !1544)
!1548 = !DILocation(line: 1022, column: 21, scope: !1544)
!1549 = !DILocation(line: 1023, column: 25, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 1023, column: 13)
!1551 = !DILocation(line: 1023, column: 13, scope: !1544)
!1552 = !DILocation(line: 1025, column: 18, scope: !1544)
!1553 = distinct !{!1553, !1554, !1555}
!1554 = !DILocation(line: 1020, column: 5, scope: !1501)
!1555 = !DILocation(line: 1026, column: 5, scope: !1501)
!1556 = !DILocation(line: 1030, column: 30, scope: !1501)
!1557 = !DILocation(line: 1030, column: 38, scope: !1501)
!1558 = !DILocation(line: 1030, column: 20, scope: !1501)
!1559 = !DILocation(line: 1030, column: 12, scope: !1501)
!1560 = !DILocation(line: 1030, column: 18, scope: !1501)
!1561 = !DILocation(line: 1033, column: 9, scope: !1501)
!1562 = !DILocalVariable(name: "token", arg: 1, scope: !1563, file: !3, line: 877, type: !474)
!1563 = distinct !DISubprogram(name: "json_set_token_error", scope: !3, file: !3, line: 877, type: !1564, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1566)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !474, !473, !29}
!1566 = !{!1562, !1567, !1568}
!1567 = !DILocalVariable(name: "json", arg: 2, scope: !1563, file: !3, line: 877, type: !473)
!1568 = !DILocalVariable(name: "errtype", arg: 3, scope: !1563, file: !3, line: 878, type: !29)
!1569 = !DILocation(line: 877, column: 48, scope: !1563, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 1034, column: 9, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 1033, column: 33)
!1572 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 1033, column: 9)
!1573 = !DILocation(line: 877, column: 69, scope: !1563, inlinedAt: !1570)
!1574 = !DILocation(line: 878, column: 46, scope: !1563, inlinedAt: !1570)
!1575 = !DILocation(line: 880, column: 17, scope: !1563, inlinedAt: !1570)
!1576 = !DILocation(line: 881, column: 30, scope: !1563, inlinedAt: !1570)
!1577 = !DILocation(line: 881, column: 20, scope: !1563, inlinedAt: !1570)
!1578 = !DILocation(line: 881, column: 18, scope: !1563, inlinedAt: !1570)
!1579 = !DILocation(line: 882, column: 18, scope: !1563, inlinedAt: !1570)
!1580 = !DILocation(line: 882, column: 25, scope: !1563, inlinedAt: !1570)
!1581 = !DILocation(line: 883, column: 1, scope: !1563, inlinedAt: !1570)
!1582 = !DILocation(line: 1035, column: 9, scope: !1571)
!1583 = !DILocation(line: 1044, column: 18, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !3, line: 1043, column: 35)
!1585 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 1043, column: 9)
!1586 = !DILocation(line: 1045, column: 9, scope: !1584)
!1587 = !DILocation(line: 1054, column: 9, scope: !1501)
!1588 = !DILocation(line: 885, column: 50, scope: !1530, inlinedAt: !1536)
!1589 = !DILocation(line: 885, column: 70, scope: !1530, inlinedAt: !1536)
!1590 = !DILocation(line: 887, column: 11, scope: !1530, inlinedAt: !1536)
!1591 = !DILocation(line: 891, column: 5, scope: !1530, inlinedAt: !1536)
!1592 = !DILocation(line: 894, column: 14, scope: !1530, inlinedAt: !1536)
!1593 = !DILocation(line: 900, column: 24, scope: !1530, inlinedAt: !1536)
!1594 = !DILocation(line: 78, column: 43, scope: !345, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 900, column: 5, scope: !1530, inlinedAt: !1536)
!1596 = !DILocation(line: 80, column: 8, scope: !345, inlinedAt: !1595)
!1597 = !DILocation(line: 80, column: 15, scope: !345, inlinedAt: !1595)
!1598 = !DILocation(line: 81, column: 1, scope: !345, inlinedAt: !1595)
!1599 = !DILocation(line: 902, column: 5, scope: !1530, inlinedAt: !1536)
!1600 = !DILocation(line: 902, column: 18, scope: !1530, inlinedAt: !1536)
!1601 = !DILocation(line: 888, column: 10, scope: !1530, inlinedAt: !1536)
!1602 = !DILocation(line: 0, scope: !1530, inlinedAt: !1536)
!1603 = !DILocation(line: 877, column: 48, scope: !1563, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 905, column: 13, scope: !1605, inlinedAt: !1536)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 903, column: 18)
!1606 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 903, column: 13)
!1607 = !DILocation(line: 877, column: 69, scope: !1563, inlinedAt: !1604)
!1608 = !DILocation(line: 878, column: 46, scope: !1563, inlinedAt: !1604)
!1609 = !DILocation(line: 880, column: 17, scope: !1563, inlinedAt: !1604)
!1610 = !DILocation(line: 881, column: 38, scope: !1563, inlinedAt: !1604)
!1611 = !DILocation(line: 881, column: 30, scope: !1563, inlinedAt: !1604)
!1612 = !DILocation(line: 881, column: 20, scope: !1563, inlinedAt: !1604)
!1613 = !DILocation(line: 881, column: 18, scope: !1563, inlinedAt: !1604)
!1614 = !DILocation(line: 882, column: 18, scope: !1563, inlinedAt: !1604)
!1615 = !DILocation(line: 882, column: 25, scope: !1563, inlinedAt: !1604)
!1616 = !DILocation(line: 883, column: 1, scope: !1563, inlinedAt: !1604)
!1617 = !DILocation(line: 906, column: 13, scope: !1605, inlinedAt: !1536)
!1618 = !DILocation(line: 912, column: 30, scope: !1527, inlinedAt: !1536)
!1619 = !DILocation(line: 912, column: 18, scope: !1527, inlinedAt: !1536)
!1620 = !DILocation(line: 915, column: 18, scope: !1527, inlinedAt: !1536)
!1621 = !DILocation(line: 916, column: 17, scope: !1527, inlinedAt: !1536)
!1622 = !DILocation(line: 819, column: 53, scope: !1512, inlinedAt: !1523)
!1623 = !DILocation(line: 821, column: 5, scope: !1512, inlinedAt: !1523)
!1624 = !DILocation(line: 825, column: 9, scope: !1512, inlinedAt: !1523)
!1625 = !DILocation(line: 828, column: 39, scope: !1512, inlinedAt: !1523)
!1626 = !DILocation(line: 828, column: 17, scope: !1512, inlinedAt: !1523)
!1627 = !DILocation(line: 822, column: 9, scope: !1512, inlinedAt: !1523)
!1628 = !DILocation(line: 829, column: 19, scope: !1629, inlinedAt: !1523)
!1629 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 829, column: 9)
!1630 = !DILocation(line: 829, column: 9, scope: !1512, inlinedAt: !1523)
!1631 = !DILocation(line: 838, column: 20, scope: !1632, inlinedAt: !1523)
!1632 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 838, column: 9)
!1633 = !DILocation(line: 838, column: 30, scope: !1632, inlinedAt: !1523)
!1634 = !DILocation(line: 838, column: 9, scope: !1512, inlinedAt: !1523)
!1635 = !DILocation(line: 840, column: 23, scope: !1636, inlinedAt: !1523)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 840, column: 13)
!1637 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 838, column: 41)
!1638 = !DILocation(line: 840, column: 13, scope: !1637, inlinedAt: !1523)
!1639 = !DILocation(line: 844, column: 21, scope: !1640, inlinedAt: !1523)
!1640 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 844, column: 13)
!1641 = !DILocation(line: 844, column: 25, scope: !1640, inlinedAt: !1523)
!1642 = !DILocation(line: 844, column: 13, scope: !1640, inlinedAt: !1523)
!1643 = !DILocation(line: 844, column: 39, scope: !1640, inlinedAt: !1523)
!1644 = !DILocation(line: 844, column: 47, scope: !1640, inlinedAt: !1523)
!1645 = !DILocation(line: 845, column: 38, scope: !1640, inlinedAt: !1523)
!1646 = !DILocation(line: 845, column: 13, scope: !1640, inlinedAt: !1523)
!1647 = !DILocation(line: 845, column: 43, scope: !1640, inlinedAt: !1523)
!1648 = !DILocation(line: 844, column: 13, scope: !1637, inlinedAt: !1523)
!1649 = !DILocation(line: 850, column: 51, scope: !1637, inlinedAt: !1523)
!1650 = !DILocation(line: 850, column: 25, scope: !1637, inlinedAt: !1523)
!1651 = !DILocation(line: 823, column: 9, scope: !1512, inlinedAt: !1523)
!1652 = !DILocation(line: 851, column: 13, scope: !1637, inlinedAt: !1523)
!1653 = !DILocation(line: 859, column: 41, scope: !1637, inlinedAt: !1523)
!1654 = !DILocation(line: 860, column: 23, scope: !1637, inlinedAt: !1523)
!1655 = !DILocation(line: 861, column: 32, scope: !1637, inlinedAt: !1523)
!1656 = !DILocation(line: 861, column: 49, scope: !1637, inlinedAt: !1523)
!1657 = !DILocation(line: 863, column: 5, scope: !1637, inlinedAt: !1523)
!1658 = !DILocation(line: 0, scope: !1512, inlinedAt: !1523)
!1659 = !DILocalVariable(name: "utf8", arg: 1, scope: !1660, file: !3, line: 775, type: !80)
!1660 = distinct !DISubprogram(name: "codepoint_to_utf8", scope: !3, file: !3, line: 775, type: !1661, isLocal: true, isDefinition: true, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1663)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!39, !80, !39}
!1663 = !{!1659, !1664}
!1664 = !DILocalVariable(name: "codepoint", arg: 2, scope: !1660, file: !3, line: 775, type: !39)
!1665 = !DILocation(line: 775, column: 36, scope: !1660, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 866, column: 11, scope: !1512, inlinedAt: !1523)
!1667 = !DILocation(line: 775, column: 46, scope: !1660, inlinedAt: !1666)
!1668 = !DILocation(line: 778, column: 19, scope: !1669, inlinedAt: !1666)
!1669 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 778, column: 9)
!1670 = !DILocation(line: 778, column: 9, scope: !1660, inlinedAt: !1666)
!1671 = !DILocation(line: 779, column: 19, scope: !1672, inlinedAt: !1666)
!1672 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 778, column: 28)
!1673 = !DILocation(line: 779, column: 17, scope: !1672, inlinedAt: !1666)
!1674 = !DILocation(line: 780, column: 9, scope: !1672, inlinedAt: !1666)
!1675 = !DILocation(line: 784, column: 19, scope: !1676, inlinedAt: !1666)
!1676 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 784, column: 9)
!1677 = !DILocation(line: 784, column: 9, scope: !1660, inlinedAt: !1666)
!1678 = !DILocation(line: 785, column: 30, scope: !1679, inlinedAt: !1666)
!1679 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 784, column: 29)
!1680 = !DILocation(line: 785, column: 19, scope: !1679, inlinedAt: !1666)
!1681 = !DILocation(line: 785, column: 17, scope: !1679, inlinedAt: !1666)
!1682 = !DILocation(line: 786, column: 19, scope: !1679, inlinedAt: !1666)
!1683 = !DILocation(line: 786, column: 17, scope: !1679, inlinedAt: !1666)
!1684 = !DILocation(line: 787, column: 9, scope: !1679, inlinedAt: !1666)
!1685 = !DILocation(line: 791, column: 19, scope: !1686, inlinedAt: !1666)
!1686 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 791, column: 9)
!1687 = !DILocation(line: 791, column: 9, scope: !1660, inlinedAt: !1666)
!1688 = !DILocation(line: 792, column: 30, scope: !1689, inlinedAt: !1666)
!1689 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 791, column: 30)
!1690 = !DILocation(line: 792, column: 19, scope: !1689, inlinedAt: !1666)
!1691 = !DILocation(line: 792, column: 17, scope: !1689, inlinedAt: !1666)
!1692 = !DILocation(line: 793, column: 31, scope: !1689, inlinedAt: !1666)
!1693 = !DILocation(line: 793, column: 19, scope: !1689, inlinedAt: !1666)
!1694 = !DILocation(line: 793, column: 17, scope: !1689, inlinedAt: !1666)
!1695 = !DILocation(line: 794, column: 19, scope: !1689, inlinedAt: !1666)
!1696 = !DILocation(line: 794, column: 17, scope: !1689, inlinedAt: !1666)
!1697 = !DILocation(line: 795, column: 9, scope: !1689, inlinedAt: !1666)
!1698 = !DILocation(line: 799, column: 19, scope: !1699, inlinedAt: !1666)
!1699 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 799, column: 9)
!1700 = !DILocation(line: 799, column: 9, scope: !1660, inlinedAt: !1666)
!1701 = !DILocation(line: 800, column: 30, scope: !1702, inlinedAt: !1666)
!1702 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 799, column: 32)
!1703 = !DILocation(line: 800, column: 19, scope: !1702, inlinedAt: !1666)
!1704 = !DILocation(line: 800, column: 17, scope: !1702, inlinedAt: !1666)
!1705 = !DILocation(line: 801, column: 31, scope: !1702, inlinedAt: !1666)
!1706 = !DILocation(line: 801, column: 19, scope: !1702, inlinedAt: !1666)
!1707 = !DILocation(line: 801, column: 17, scope: !1702, inlinedAt: !1666)
!1708 = !DILocation(line: 802, column: 31, scope: !1702, inlinedAt: !1666)
!1709 = !DILocation(line: 802, column: 19, scope: !1702, inlinedAt: !1666)
!1710 = !DILocation(line: 802, column: 17, scope: !1702, inlinedAt: !1666)
!1711 = !DILocation(line: 803, column: 19, scope: !1702, inlinedAt: !1666)
!1712 = !DILocation(line: 803, column: 17, scope: !1702, inlinedAt: !1666)
!1713 = !DILocation(line: 804, column: 9, scope: !1702, inlinedAt: !1666)
!1714 = !DILocation(line: 808, column: 1, scope: !1660, inlinedAt: !1666)
!1715 = !DILocation(line: 824, column: 9, scope: !1512, inlinedAt: !1523)
!1716 = !DILocation(line: 871, column: 36, scope: !1512, inlinedAt: !1523)
!1717 = !DILocalVariable(name: "s", arg: 1, scope: !1718, file: !76, line: 134, type: !310)
!1718 = distinct !DISubprogram(name: "strbuf_append_mem_unsafe", scope: !76, file: !76, line: 134, type: !723, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1719)
!1719 = !{!1717, !1720, !1721}
!1720 = !DILocalVariable(name: "c", arg: 2, scope: !1718, file: !76, line: 134, type: !29)
!1721 = !DILocalVariable(name: "len", arg: 3, scope: !1718, file: !76, line: 134, type: !39)
!1722 = !DILocation(line: 134, column: 55, scope: !1718, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 871, column: 5, scope: !1512, inlinedAt: !1523)
!1724 = !DILocation(line: 134, column: 70, scope: !1718, inlinedAt: !1723)
!1725 = !DILocation(line: 134, column: 77, scope: !1718, inlinedAt: !1723)
!1726 = !DILocation(line: 136, column: 15, scope: !1718, inlinedAt: !1723)
!1727 = !DILocation(line: 136, column: 24, scope: !1718, inlinedAt: !1723)
!1728 = !DILocation(line: 136, column: 19, scope: !1718, inlinedAt: !1723)
!1729 = !DILocation(line: 136, column: 35, scope: !1718, inlinedAt: !1723)
!1730 = !DILocation(line: 136, column: 5, scope: !1718, inlinedAt: !1723)
!1731 = !DILocation(line: 137, column: 15, scope: !1718, inlinedAt: !1723)
!1732 = !DILocation(line: 138, column: 1, scope: !1718, inlinedAt: !1723)
!1733 = !DILocation(line: 872, column: 15, scope: !1512, inlinedAt: !1523)
!1734 = !DILocation(line: 875, column: 1, scope: !1512, inlinedAt: !1523)
!1735 = !DILocation(line: 917, column: 21, scope: !1525, inlinedAt: !1536)
!1736 = !DILocation(line: 877, column: 48, scope: !1563, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 920, column: 17, scope: !1525, inlinedAt: !1536)
!1738 = !DILocation(line: 877, column: 69, scope: !1563, inlinedAt: !1737)
!1739 = !DILocation(line: 878, column: 46, scope: !1563, inlinedAt: !1737)
!1740 = !DILocation(line: 880, column: 17, scope: !1563, inlinedAt: !1737)
!1741 = !DILocation(line: 881, column: 26, scope: !1563, inlinedAt: !1737)
!1742 = !DILocation(line: 881, column: 38, scope: !1563, inlinedAt: !1737)
!1743 = !DILocation(line: 881, column: 30, scope: !1563, inlinedAt: !1737)
!1744 = !DILocation(line: 881, column: 20, scope: !1563, inlinedAt: !1737)
!1745 = !DILocation(line: 881, column: 18, scope: !1563, inlinedAt: !1737)
!1746 = !DILocation(line: 882, column: 18, scope: !1563, inlinedAt: !1737)
!1747 = !DILocation(line: 882, column: 25, scope: !1563, inlinedAt: !1737)
!1748 = !DILocation(line: 883, column: 1, scope: !1563, inlinedAt: !1737)
!1749 = !DILocation(line: 922, column: 17, scope: !1525, inlinedAt: !1536)
!1750 = !DILocation(line: 877, column: 48, scope: !1563, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 925, column: 17, scope: !1752, inlinedAt: !1536)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 924, column: 22)
!1753 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 924, column: 17)
!1754 = !DILocation(line: 877, column: 69, scope: !1563, inlinedAt: !1751)
!1755 = !DILocation(line: 878, column: 46, scope: !1563, inlinedAt: !1751)
!1756 = !DILocation(line: 880, column: 17, scope: !1563, inlinedAt: !1751)
!1757 = !DILocation(line: 881, column: 38, scope: !1563, inlinedAt: !1751)
!1758 = !DILocation(line: 881, column: 30, scope: !1563, inlinedAt: !1751)
!1759 = !DILocation(line: 881, column: 20, scope: !1563, inlinedAt: !1751)
!1760 = !DILocation(line: 881, column: 18, scope: !1563, inlinedAt: !1751)
!1761 = !DILocation(line: 882, column: 18, scope: !1563, inlinedAt: !1751)
!1762 = !DILocation(line: 882, column: 25, scope: !1563, inlinedAt: !1751)
!1763 = !DILocation(line: 883, column: 1, scope: !1563, inlinedAt: !1751)
!1764 = !DILocation(line: 926, column: 17, scope: !1752, inlinedAt: !1536)
!1765 = !DILocation(line: 930, column: 22, scope: !1527, inlinedAt: !1536)
!1766 = !DILocation(line: 931, column: 9, scope: !1527, inlinedAt: !1536)
!1767 = !DILocation(line: 934, column: 41, scope: !1529, inlinedAt: !1536)
!1768 = !DILocation(line: 122, column: 56, scope: !1312, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 934, column: 9, scope: !1529, inlinedAt: !1536)
!1770 = !DILocation(line: 122, column: 70, scope: !1312, inlinedAt: !1769)
!1771 = !DILocation(line: 124, column: 8, scope: !1312, inlinedAt: !1769)
!1772 = !DILocation(line: 124, column: 15, scope: !1312, inlinedAt: !1769)
!1773 = !DILocation(line: 124, column: 21, scope: !1312, inlinedAt: !1769)
!1774 = !DILocation(line: 124, column: 5, scope: !1312, inlinedAt: !1769)
!1775 = !DILocation(line: 124, column: 25, scope: !1312, inlinedAt: !1769)
!1776 = !DILocation(line: 125, column: 1, scope: !1312, inlinedAt: !1769)
!1777 = !DILocation(line: 935, column: 18, scope: !1529, inlinedAt: !1536)
!1778 = distinct !{!1778, !1779, !1780}
!1779 = !DILocation(line: 902, column: 5, scope: !1530)
!1780 = !DILocation(line: 936, column: 5, scope: !1530)
!1781 = !DILocation(line: 937, column: 14, scope: !1530, inlinedAt: !1536)
!1782 = !DILocation(line: 939, column: 30, scope: !1530, inlinedAt: !1536)
!1783 = !DILocalVariable(name: "s", arg: 1, scope: !1784, file: !76, line: 140, type: !310)
!1784 = distinct !DISubprogram(name: "strbuf_ensure_null", scope: !76, file: !76, line: 140, type: !346, isLocal: true, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1785)
!1785 = !{!1783}
!1786 = !DILocation(line: 140, column: 49, scope: !1784, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 939, column: 5, scope: !1530, inlinedAt: !1536)
!1788 = !DILocation(line: 142, column: 8, scope: !1784, inlinedAt: !1787)
!1789 = !DILocation(line: 142, column: 15, scope: !1784, inlinedAt: !1787)
!1790 = !DILocation(line: 142, column: 5, scope: !1784, inlinedAt: !1787)
!1791 = !DILocation(line: 142, column: 23, scope: !1784, inlinedAt: !1787)
!1792 = !DILocation(line: 143, column: 1, scope: !1784, inlinedAt: !1787)
!1793 = !DILocation(line: 941, column: 17, scope: !1530, inlinedAt: !1536)
!1794 = !DILocation(line: 942, column: 47, scope: !1530, inlinedAt: !1536)
!1795 = !DILocation(line: 942, column: 60, scope: !1530, inlinedAt: !1536)
!1796 = !DILocation(line: 145, column: 45, scope: !358, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 942, column: 27, scope: !1530, inlinedAt: !1536)
!1798 = !DILocation(line: 145, column: 53, scope: !358, inlinedAt: !1797)
!1799 = !DILocation(line: 148, column: 19, scope: !366, inlinedAt: !1797)
!1800 = !DILocation(line: 148, column: 14, scope: !366, inlinedAt: !1797)
!1801 = !DILocation(line: 150, column: 15, scope: !358, inlinedAt: !1797)
!1802 = !DILocation(line: 150, column: 5, scope: !358, inlinedAt: !1797)
!1803 = !DILocation(line: 942, column: 18, scope: !1530, inlinedAt: !1536)
!1804 = !DILocation(line: 942, column: 25, scope: !1530, inlinedAt: !1536)
!1805 = !DILocation(line: 943, column: 1, scope: !1530, inlinedAt: !1536)
!1806 = !DILocation(line: 1056, column: 9, scope: !1537)
!1807 = !DILocation(line: 1057, column: 40, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 1057, column: 16)
!1809 = !DILocation(line: 1058, column: 25, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 1058, column: 13)
!1811 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 1057, column: 55)
!1812 = !{!156, !150, i64 1340}
!1813 = !DILocation(line: 1058, column: 14, scope: !1810)
!1814 = !DILocation(line: 1058, column: 48, scope: !1810)
!1815 = !DILocalVariable(name: "json", arg: 1, scope: !1816, file: !3, line: 960, type: !473)
!1816 = distinct !DISubprogram(name: "json_is_invalid_number", scope: !3, file: !3, line: 960, type: !1513, isLocal: true, isDefinition: true, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1817)
!1817 = !{!1815, !1818, !1819}
!1818 = !DILocalVariable(name: "p", scope: !1816, file: !3, line: 962, type: !29)
!1819 = !DILocalVariable(name: "ch2", scope: !1820, file: !3, line: 974, type: !39)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 973, column: 20)
!1821 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 973, column: 9)
!1822 = !DILocation(line: 960, column: 49, scope: !1816, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 1058, column: 51, scope: !1810)
!1824 = !DILocation(line: 962, column: 17, scope: !1816, inlinedAt: !1823)
!1825 = !DILocation(line: 965, column: 9, scope: !1826, inlinedAt: !1823)
!1826 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 965, column: 9)
!1827 = !DILocation(line: 965, column: 9, scope: !1816, inlinedAt: !1823)
!1828 = !DILocation(line: 970, column: 10, scope: !1829, inlinedAt: !1823)
!1829 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 969, column: 9)
!1830 = !DILocation(line: 973, column: 9, scope: !1821, inlinedAt: !1823)
!1831 = !DILocation(line: 970, column: 9, scope: !1829, inlinedAt: !1823)
!1832 = !DILocation(line: 0, scope: !1816, inlinedAt: !1823)
!1833 = !DILocation(line: 973, column: 12, scope: !1821, inlinedAt: !1823)
!1834 = !DILocation(line: 973, column: 9, scope: !1816, inlinedAt: !1823)
!1835 = !DILocation(line: 974, column: 23, scope: !1820, inlinedAt: !1823)
!1836 = !DILocation(line: 974, column: 19, scope: !1820, inlinedAt: !1823)
!1837 = !DILocation(line: 976, column: 18, scope: !1838, inlinedAt: !1823)
!1838 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 976, column: 13)
!1839 = !DILocation(line: 976, column: 26, scope: !1838, inlinedAt: !1823)
!1840 = !DILocation(line: 977, column: 25, scope: !1838, inlinedAt: !1823)
!1841 = !DILocation(line: 976, column: 33, scope: !1838, inlinedAt: !1823)
!1842 = !DILocation(line: 994, column: 1, scope: !1816, inlinedAt: !1823)
!1843 = !DILocation(line: 1058, column: 13, scope: !1811)
!1844 = !DILocation(line: 981, column: 19, scope: !1845, inlinedAt: !1823)
!1845 = distinct !DILexicalBlock(scope: !1821, file: !3, line: 981, column: 16)
!1846 = !DILocation(line: 981, column: 16, scope: !1821, inlinedAt: !1823)
!1847 = !DILocation(line: 986, column: 10, scope: !1848, inlinedAt: !1823)
!1848 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 986, column: 9)
!1849 = !DILocation(line: 986, column: 9, scope: !1816, inlinedAt: !1823)
!1850 = !DILocation(line: 988, column: 10, scope: !1851, inlinedAt: !1823)
!1851 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 988, column: 9)
!1852 = !DILocation(line: 877, column: 48, scope: !1563, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 1059, column: 13, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 1058, column: 81)
!1855 = !DILocation(line: 877, column: 69, scope: !1563, inlinedAt: !1853)
!1856 = !DILocation(line: 878, column: 46, scope: !1563, inlinedAt: !1853)
!1857 = !DILocation(line: 880, column: 17, scope: !1563, inlinedAt: !1853)
!1858 = !DILocation(line: 881, column: 30, scope: !1563, inlinedAt: !1853)
!1859 = !DILocation(line: 881, column: 20, scope: !1563, inlinedAt: !1853)
!1860 = !DILocation(line: 881, column: 18, scope: !1563, inlinedAt: !1853)
!1861 = !DILocation(line: 882, column: 18, scope: !1563, inlinedAt: !1853)
!1862 = !DILocation(line: 882, column: 25, scope: !1563, inlinedAt: !1853)
!1863 = !DILocation(line: 883, column: 1, scope: !1563, inlinedAt: !1853)
!1864 = !DILocation(line: 1060, column: 13, scope: !1854)
!1865 = !DILocalVariable(name: "json", arg: 1, scope: !1866, file: !3, line: 996, type: !473)
!1866 = distinct !DISubprogram(name: "json_next_number_token", scope: !3, file: !3, line: 996, type: !1502, isLocal: true, isDefinition: true, scopeLine: 997, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1867)
!1867 = !{!1865, !1868, !1869}
!1868 = !DILocalVariable(name: "token", arg: 2, scope: !1866, file: !3, line: 996, type: !474)
!1869 = !DILocalVariable(name: "endptr", scope: !1866, file: !3, line: 998, type: !80)
!1870 = !DILocation(line: 996, column: 50, scope: !1866, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 1062, column: 9, scope: !1811)
!1872 = !DILocation(line: 996, column: 70, scope: !1866, inlinedAt: !1871)
!1873 = !DILocation(line: 998, column: 5, scope: !1866, inlinedAt: !1871)
!1874 = !DILocation(line: 1000, column: 17, scope: !1866, inlinedAt: !1871)
!1875 = !DILocation(line: 998, column: 11, scope: !1866, inlinedAt: !1871)
!1876 = !DILocation(line: 1001, column: 27, scope: !1866, inlinedAt: !1871)
!1877 = !DILocation(line: 1001, column: 12, scope: !1866, inlinedAt: !1871)
!1878 = !DILocation(line: 1001, column: 18, scope: !1866, inlinedAt: !1871)
!1879 = !DILocation(line: 1001, column: 25, scope: !1866, inlinedAt: !1871)
!1880 = !DILocation(line: 1002, column: 15, scope: !1881, inlinedAt: !1871)
!1881 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 1002, column: 9)
!1882 = !DILocation(line: 1002, column: 22, scope: !1881, inlinedAt: !1871)
!1883 = !DILocation(line: 1002, column: 19, scope: !1881, inlinedAt: !1871)
!1884 = !DILocation(line: 1002, column: 9, scope: !1866, inlinedAt: !1871)
!1885 = !DILocation(line: 877, column: 48, scope: !1563, inlinedAt: !1886)
!1886 = distinct !DILocation(line: 1003, column: 9, scope: !1881, inlinedAt: !1871)
!1887 = !DILocation(line: 877, column: 69, scope: !1563, inlinedAt: !1886)
!1888 = !DILocation(line: 878, column: 46, scope: !1563, inlinedAt: !1886)
!1889 = !DILocation(line: 880, column: 17, scope: !1563, inlinedAt: !1886)
!1890 = !DILocation(line: 881, column: 38, scope: !1563, inlinedAt: !1886)
!1891 = !DILocation(line: 881, column: 30, scope: !1563, inlinedAt: !1886)
!1892 = !DILocation(line: 881, column: 20, scope: !1563, inlinedAt: !1886)
!1893 = !DILocation(line: 881, column: 18, scope: !1563, inlinedAt: !1886)
!1894 = !DILocation(line: 882, column: 18, scope: !1563, inlinedAt: !1886)
!1895 = !DILocation(line: 882, column: 25, scope: !1563, inlinedAt: !1886)
!1896 = !DILocation(line: 883, column: 1, scope: !1563, inlinedAt: !1886)
!1897 = !DILocation(line: 1003, column: 9, scope: !1881, inlinedAt: !1871)
!1898 = !DILocation(line: 1005, column: 19, scope: !1881, inlinedAt: !1871)
!1899 = !DILocation(line: 1008, column: 1, scope: !1866, inlinedAt: !1871)
!1900 = !DILocation(line: 1063, column: 9, scope: !1811)
!1901 = !DILocation(line: 1064, column: 17, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 1064, column: 16)
!1903 = !DILocation(line: 1064, column: 16, scope: !1808)
!1904 = !DILocation(line: 1065, column: 21, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 1064, column: 48)
!1906 = !DILocation(line: 1066, column: 16, scope: !1905)
!1907 = !DILocation(line: 1066, column: 22, scope: !1905)
!1908 = !DILocation(line: 1066, column: 30, scope: !1905)
!1909 = !DILocation(line: 1067, column: 19, scope: !1905)
!1910 = !DILocation(line: 1068, column: 9, scope: !1905)
!1911 = !DILocation(line: 1069, column: 31, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 1069, column: 16)
!1913 = !DILocation(line: 1069, column: 17, scope: !1912)
!1914 = !DILocation(line: 1069, column: 16, scope: !1902)
!1915 = !DILocation(line: 1070, column: 21, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 1069, column: 49)
!1917 = !DILocation(line: 1071, column: 16, scope: !1916)
!1918 = !DILocation(line: 1071, column: 22, scope: !1916)
!1919 = !DILocation(line: 1071, column: 30, scope: !1916)
!1920 = !DILocation(line: 1072, column: 19, scope: !1916)
!1921 = !DILocation(line: 1073, column: 9, scope: !1916)
!1922 = !DILocation(line: 1074, column: 31, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1912, file: !3, line: 1074, column: 16)
!1924 = !DILocation(line: 1074, column: 17, scope: !1923)
!1925 = !DILocation(line: 1074, column: 16, scope: !1912)
!1926 = !DILocation(line: 1075, column: 21, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 1074, column: 48)
!1928 = !DILocation(line: 1076, column: 19, scope: !1927)
!1929 = !DILocation(line: 1077, column: 9, scope: !1927)
!1930 = !DILocation(line: 1078, column: 22, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 1078, column: 16)
!1932 = !DILocation(line: 1078, column: 27, scope: !1931)
!1933 = !DILocation(line: 1078, column: 16, scope: !1931)
!1934 = !DILocation(line: 1078, column: 50, scope: !1931)
!1935 = !DILocation(line: 881, column: 26, scope: !1563, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 1090, column: 5, scope: !1501)
!1937 = !DILocation(line: 960, column: 49, scope: !1816, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 1079, column: 16, scope: !1931)
!1939 = !DILocation(line: 962, column: 27, scope: !1816, inlinedAt: !1938)
!1940 = !DILocation(line: 962, column: 17, scope: !1816, inlinedAt: !1938)
!1941 = !DILocation(line: 965, column: 9, scope: !1826, inlinedAt: !1938)
!1942 = !DILocation(line: 965, column: 9, scope: !1816, inlinedAt: !1938)
!1943 = !DILocation(line: 970, column: 10, scope: !1829, inlinedAt: !1938)
!1944 = !DILocation(line: 973, column: 9, scope: !1821, inlinedAt: !1938)
!1945 = !DILocation(line: 970, column: 9, scope: !1829, inlinedAt: !1938)
!1946 = !DILocation(line: 0, scope: !1816, inlinedAt: !1938)
!1947 = !DILocation(line: 973, column: 12, scope: !1821, inlinedAt: !1938)
!1948 = !DILocation(line: 973, column: 9, scope: !1816, inlinedAt: !1938)
!1949 = !DILocation(line: 974, column: 23, scope: !1820, inlinedAt: !1938)
!1950 = !DILocation(line: 974, column: 19, scope: !1820, inlinedAt: !1938)
!1951 = !DILocation(line: 976, column: 18, scope: !1838, inlinedAt: !1938)
!1952 = !DILocation(line: 976, column: 26, scope: !1838, inlinedAt: !1938)
!1953 = !DILocation(line: 977, column: 25, scope: !1838, inlinedAt: !1938)
!1954 = !DILocation(line: 976, column: 33, scope: !1838, inlinedAt: !1938)
!1955 = !DILocation(line: 994, column: 1, scope: !1816, inlinedAt: !1938)
!1956 = !DILocation(line: 1078, column: 16, scope: !1923)
!1957 = !DILocation(line: 981, column: 19, scope: !1845, inlinedAt: !1938)
!1958 = !DILocation(line: 981, column: 16, scope: !1821, inlinedAt: !1938)
!1959 = !DILocation(line: 986, column: 10, scope: !1848, inlinedAt: !1938)
!1960 = !DILocation(line: 986, column: 9, scope: !1816, inlinedAt: !1938)
!1961 = !DILocation(line: 988, column: 10, scope: !1851, inlinedAt: !1938)
!1962 = !DILocation(line: 996, column: 50, scope: !1866, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 1085, column: 9, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 1079, column: 46)
!1965 = !DILocation(line: 996, column: 70, scope: !1866, inlinedAt: !1963)
!1966 = !DILocation(line: 998, column: 5, scope: !1866, inlinedAt: !1963)
!1967 = !DILocation(line: 1000, column: 17, scope: !1866, inlinedAt: !1963)
!1968 = !DILocation(line: 998, column: 11, scope: !1866, inlinedAt: !1963)
!1969 = !DILocation(line: 1001, column: 27, scope: !1866, inlinedAt: !1963)
!1970 = !DILocation(line: 1001, column: 12, scope: !1866, inlinedAt: !1963)
!1971 = !DILocation(line: 1001, column: 18, scope: !1866, inlinedAt: !1963)
!1972 = !DILocation(line: 1001, column: 25, scope: !1866, inlinedAt: !1963)
!1973 = !DILocation(line: 1002, column: 15, scope: !1881, inlinedAt: !1963)
!1974 = !DILocation(line: 1002, column: 22, scope: !1881, inlinedAt: !1963)
!1975 = !DILocation(line: 1002, column: 19, scope: !1881, inlinedAt: !1963)
!1976 = !DILocation(line: 1002, column: 9, scope: !1866, inlinedAt: !1963)
!1977 = !DILocation(line: 877, column: 48, scope: !1563, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 1003, column: 9, scope: !1881, inlinedAt: !1963)
!1979 = !DILocation(line: 877, column: 69, scope: !1563, inlinedAt: !1978)
!1980 = !DILocation(line: 878, column: 46, scope: !1563, inlinedAt: !1978)
!1981 = !DILocation(line: 880, column: 17, scope: !1563, inlinedAt: !1978)
!1982 = !DILocation(line: 881, column: 38, scope: !1563, inlinedAt: !1978)
!1983 = !DILocation(line: 881, column: 30, scope: !1563, inlinedAt: !1978)
!1984 = !DILocation(line: 881, column: 20, scope: !1563, inlinedAt: !1978)
!1985 = !DILocation(line: 881, column: 18, scope: !1563, inlinedAt: !1978)
!1986 = !DILocation(line: 882, column: 18, scope: !1563, inlinedAt: !1978)
!1987 = !DILocation(line: 882, column: 25, scope: !1563, inlinedAt: !1978)
!1988 = !DILocation(line: 883, column: 1, scope: !1563, inlinedAt: !1978)
!1989 = !DILocation(line: 1003, column: 9, scope: !1881, inlinedAt: !1963)
!1990 = !DILocation(line: 1005, column: 19, scope: !1881, inlinedAt: !1963)
!1991 = !DILocation(line: 1008, column: 1, scope: !1866, inlinedAt: !1963)
!1992 = !DILocation(line: 1086, column: 9, scope: !1964)
!1993 = !DILocation(line: 877, column: 48, scope: !1563, inlinedAt: !1936)
!1994 = !DILocation(line: 877, column: 69, scope: !1563, inlinedAt: !1936)
!1995 = !DILocation(line: 878, column: 46, scope: !1563, inlinedAt: !1936)
!1996 = !DILocation(line: 880, column: 17, scope: !1563, inlinedAt: !1936)
!1997 = !DILocation(line: 881, column: 38, scope: !1563, inlinedAt: !1936)
!1998 = !DILocation(line: 881, column: 30, scope: !1563, inlinedAt: !1936)
!1999 = !DILocation(line: 881, column: 20, scope: !1563, inlinedAt: !1936)
!2000 = !DILocation(line: 881, column: 18, scope: !1563, inlinedAt: !1936)
!2001 = !DILocation(line: 882, column: 18, scope: !1563, inlinedAt: !1936)
!2002 = !DILocation(line: 882, column: 25, scope: !1563, inlinedAt: !1936)
!2003 = !DILocation(line: 883, column: 1, scope: !1563, inlinedAt: !1936)
!2004 = !DILocation(line: 1091, column: 1, scope: !1501)
!2005 = distinct !DISubprogram(name: "json_process_value", scope: !3, file: !3, line: 1224, type: !2006, isLocal: true, isDefinition: true, scopeLine: 1226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2008)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null, !40, !473, !474}
!2008 = !{!2009, !2010, !2011}
!2009 = !DILocalVariable(name: "l", arg: 1, scope: !2005, file: !3, line: 1224, type: !40)
!2010 = !DILocalVariable(name: "json", arg: 2, scope: !2005, file: !3, line: 1224, type: !473)
!2011 = !DILocalVariable(name: "token", arg: 3, scope: !2005, file: !3, line: 1225, type: !474)
!2012 = !DILocation(line: 1224, column: 43, scope: !2005)
!2013 = !DILocation(line: 1224, column: 60, scope: !2005)
!2014 = !DILocation(line: 1225, column: 46, scope: !2005)
!2015 = !DILocation(line: 1227, column: 20, scope: !2005)
!2016 = !DILocation(line: 1227, column: 5, scope: !2005)
!2017 = !DILocation(line: 1229, column: 41, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 1227, column: 26)
!2019 = !DILocation(line: 1229, column: 56, scope: !2018)
!2020 = !{!466, !150, i64 16}
!2021 = !DILocation(line: 1229, column: 49, scope: !2018)
!2022 = !DILocation(line: 1229, column: 9, scope: !2018)
!2023 = !DILocation(line: 1230, column: 9, scope: !2018)
!2024 = !DILocation(line: 1232, column: 34, scope: !2018)
!2025 = !DILocation(line: 1232, column: 40, scope: !2018)
!2026 = !DILocation(line: 1232, column: 9, scope: !2018)
!2027 = !DILocation(line: 1233, column: 9, scope: !2018)
!2028 = !DILocation(line: 1235, column: 35, scope: !2018)
!2029 = !DILocation(line: 1235, column: 41, scope: !2018)
!2030 = !DILocation(line: 1235, column: 9, scope: !2018)
!2031 = !DILocation(line: 1236, column: 9, scope: !2018)
!2032 = !DILocalVariable(name: "l", arg: 1, scope: !2033, file: !3, line: 1135, type: !40)
!2033 = distinct !DISubprogram(name: "json_parse_object_context", scope: !3, file: !3, line: 1135, type: !2034, isLocal: true, isDefinition: true, scopeLine: 1136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2036)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !40, !473}
!2036 = !{!2032, !2037, !2038}
!2037 = !DILocalVariable(name: "json", arg: 2, scope: !2033, file: !3, line: 1135, type: !473)
!2038 = !DILocalVariable(name: "token", scope: !2033, file: !3, line: 1137, type: !394)
!2039 = !DILocation(line: 1135, column: 50, scope: !2033, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 1238, column: 9, scope: !2018)
!2041 = !DILocation(line: 1135, column: 67, scope: !2033, inlinedAt: !2040)
!2042 = !DILocation(line: 1137, column: 5, scope: !2033, inlinedAt: !2040)
!2043 = !DILocalVariable(name: "l", arg: 1, scope: !2044, file: !3, line: 1121, type: !40)
!2044 = distinct !DISubprogram(name: "json_decode_descend", scope: !3, file: !3, line: 1121, type: !2045, isLocal: true, isDefinition: true, scopeLine: 1122, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2047)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{null, !40, !473, !39}
!2047 = !{!2043, !2048, !2049}
!2048 = !DILocalVariable(name: "json", arg: 2, scope: !2044, file: !3, line: 1121, type: !473)
!2049 = !DILocalVariable(name: "slots", arg: 3, scope: !2044, file: !3, line: 1121, type: !39)
!2050 = !DILocation(line: 1121, column: 44, scope: !2044, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 1141, column: 5, scope: !2033, inlinedAt: !2040)
!2052 = !DILocation(line: 1121, column: 61, scope: !2044, inlinedAt: !2051)
!2053 = !DILocation(line: 1121, column: 71, scope: !2044, inlinedAt: !2051)
!2054 = !DILocation(line: 1123, column: 11, scope: !2044, inlinedAt: !2051)
!2055 = !DILocation(line: 1123, column: 24, scope: !2044, inlinedAt: !2051)
!2056 = !DILocation(line: 1125, column: 38, scope: !2057, inlinedAt: !2051)
!2057 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 1125, column: 9)
!2058 = !DILocation(line: 1125, column: 43, scope: !2057, inlinedAt: !2051)
!2059 = !DILocation(line: 1125, column: 29, scope: !2057, inlinedAt: !2051)
!2060 = !DILocation(line: 1125, column: 60, scope: !2057, inlinedAt: !2051)
!2061 = !DILocation(line: 1126, column: 9, scope: !2057, inlinedAt: !2051)
!2062 = !DILocation(line: 1125, column: 9, scope: !2044, inlinedAt: !2051)
!2063 = !DILocation(line: 1130, column: 23, scope: !2044, inlinedAt: !2051)
!2064 = !DILocation(line: 1130, column: 5, scope: !2044, inlinedAt: !2051)
!2065 = !DILocation(line: 1132, column: 15, scope: !2044, inlinedAt: !2051)
!2066 = !DILocation(line: 1132, column: 36, scope: !2044, inlinedAt: !2051)
!2067 = !DILocation(line: 1132, column: 48, scope: !2044, inlinedAt: !2051)
!2068 = !DILocation(line: 1132, column: 40, scope: !2044, inlinedAt: !2051)
!2069 = !DILocation(line: 1131, column: 5, scope: !2044, inlinedAt: !2051)
!2070 = !DILocation(line: 1133, column: 1, scope: !2044, inlinedAt: !2051)
!2071 = !DILocation(line: 1143, column: 5, scope: !2033, inlinedAt: !2040)
!2072 = !DILocation(line: 1137, column: 18, scope: !2033, inlinedAt: !2040)
!2073 = !DILocation(line: 1145, column: 5, scope: !2033, inlinedAt: !2040)
!2074 = !DILocation(line: 1148, column: 15, scope: !2075, inlinedAt: !2040)
!2075 = distinct !DILexicalBlock(scope: !2033, file: !3, line: 1148, column: 9)
!2076 = !DILocation(line: 1148, column: 20, scope: !2075, inlinedAt: !2040)
!2077 = !DILocation(line: 1148, column: 9, scope: !2033, inlinedAt: !2040)
!2078 = !DILocation(line: 1154, column: 24, scope: !2079, inlinedAt: !2040)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 1154, column: 13)
!2080 = distinct !DILexicalBlock(scope: !2033, file: !3, line: 1153, column: 15)
!2081 = !DILocation(line: 1154, column: 19, scope: !2079, inlinedAt: !2040)
!2082 = !DILocation(line: 1154, column: 13, scope: !2080, inlinedAt: !2040)
!2083 = !DILocation(line: 1099, column: 47, scope: !470, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 1155, column: 13, scope: !2079, inlinedAt: !2040)
!2085 = !DILocation(line: 1099, column: 64, scope: !470, inlinedAt: !2084)
!2086 = !DILocation(line: 1100, column: 48, scope: !470, inlinedAt: !2084)
!2087 = !DILocation(line: 1100, column: 67, scope: !470, inlinedAt: !2084)
!2088 = !DILocation(line: 1104, column: 23, scope: !470, inlinedAt: !2084)
!2089 = !DILocation(line: 1104, column: 5, scope: !470, inlinedAt: !2084)
!2090 = !DILocation(line: 1106, column: 16, scope: !488, inlinedAt: !2084)
!2091 = !DILocation(line: 1106, column: 21, scope: !488, inlinedAt: !2084)
!2092 = !DILocation(line: 1102, column: 17, scope: !470, inlinedAt: !2084)
!2093 = !DILocation(line: 1109, column: 17, scope: !488, inlinedAt: !2084)
!2094 = !DILocation(line: 1106, column: 9, scope: !470, inlinedAt: !2084)
!2095 = !DILocation(line: 0, scope: !488, inlinedAt: !2084)
!2096 = !DILocation(line: 1113, column: 35, scope: !470, inlinedAt: !2084)
!2097 = !DILocation(line: 1113, column: 41, scope: !470, inlinedAt: !2084)
!2098 = !DILocation(line: 1112, column: 5, scope: !470, inlinedAt: !2084)
!2099 = !DILocation(line: 1114, column: 1, scope: !470, inlinedAt: !2084)
!2100 = !DILocation(line: 1155, column: 13, scope: !2079, inlinedAt: !2040)
!2101 = !DILocation(line: 1158, column: 40, scope: !2080, inlinedAt: !2040)
!2102 = !DILocation(line: 1158, column: 54, scope: !2080, inlinedAt: !2040)
!2103 = !DILocation(line: 1158, column: 48, scope: !2080, inlinedAt: !2040)
!2104 = !DILocation(line: 1158, column: 9, scope: !2080, inlinedAt: !2040)
!2105 = !DILocation(line: 1160, column: 9, scope: !2080, inlinedAt: !2040)
!2106 = !DILocation(line: 1161, column: 19, scope: !2107, inlinedAt: !2040)
!2107 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 1161, column: 13)
!2108 = !DILocation(line: 1161, column: 24, scope: !2107, inlinedAt: !2040)
!2109 = !DILocation(line: 1161, column: 13, scope: !2080, inlinedAt: !2040)
!2110 = !DILocation(line: 1099, column: 47, scope: !470, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 1162, column: 13, scope: !2107, inlinedAt: !2040)
!2112 = !DILocation(line: 1099, column: 64, scope: !470, inlinedAt: !2111)
!2113 = !DILocation(line: 1100, column: 48, scope: !470, inlinedAt: !2111)
!2114 = !DILocation(line: 1100, column: 67, scope: !470, inlinedAt: !2111)
!2115 = !DILocation(line: 1104, column: 23, scope: !470, inlinedAt: !2111)
!2116 = !DILocation(line: 1104, column: 5, scope: !470, inlinedAt: !2111)
!2117 = !DILocation(line: 1106, column: 16, scope: !488, inlinedAt: !2111)
!2118 = !DILocation(line: 1106, column: 21, scope: !488, inlinedAt: !2111)
!2119 = !DILocation(line: 1102, column: 17, scope: !470, inlinedAt: !2111)
!2120 = !DILocation(line: 1109, column: 17, scope: !488, inlinedAt: !2111)
!2121 = !DILocation(line: 1106, column: 9, scope: !470, inlinedAt: !2111)
!2122 = !DILocation(line: 0, scope: !488, inlinedAt: !2111)
!2123 = !DILocation(line: 1113, column: 35, scope: !470, inlinedAt: !2111)
!2124 = !DILocation(line: 1113, column: 41, scope: !470, inlinedAt: !2111)
!2125 = !DILocation(line: 1112, column: 5, scope: !470, inlinedAt: !2111)
!2126 = !DILocation(line: 1114, column: 1, scope: !470, inlinedAt: !2111)
!2127 = !DILocation(line: 1162, column: 13, scope: !2107, inlinedAt: !2040)
!2128 = !DILocation(line: 1165, column: 9, scope: !2080, inlinedAt: !2040)
!2129 = !DILocation(line: 1166, column: 9, scope: !2080, inlinedAt: !2040)
!2130 = !DILocation(line: 1169, column: 9, scope: !2080, inlinedAt: !2040)
!2131 = !DILocation(line: 1171, column: 9, scope: !2080, inlinedAt: !2040)
!2132 = !DILocation(line: 1173, column: 19, scope: !2133, inlinedAt: !2040)
!2133 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 1173, column: 13)
!2134 = !DILocation(line: 1173, column: 13, scope: !2080, inlinedAt: !2040)
!2135 = !DILocation(line: 1099, column: 47, scope: !470, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 1179, column: 13, scope: !2137, inlinedAt: !2040)
!2137 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 1178, column: 13)
!2138 = !DILocation(line: 1099, column: 64, scope: !470, inlinedAt: !2136)
!2139 = !DILocation(line: 1100, column: 48, scope: !470, inlinedAt: !2136)
!2140 = !DILocation(line: 1100, column: 67, scope: !470, inlinedAt: !2136)
!2141 = !DILocation(line: 1104, column: 23, scope: !470, inlinedAt: !2136)
!2142 = !DILocation(line: 1104, column: 5, scope: !470, inlinedAt: !2136)
!2143 = !DILocation(line: 1106, column: 16, scope: !488, inlinedAt: !2136)
!2144 = !DILocation(line: 1106, column: 21, scope: !488, inlinedAt: !2136)
!2145 = !DILocation(line: 1102, column: 17, scope: !470, inlinedAt: !2136)
!2146 = !DILocation(line: 1109, column: 17, scope: !488, inlinedAt: !2136)
!2147 = !DILocation(line: 1106, column: 9, scope: !470, inlinedAt: !2136)
!2148 = !DILocation(line: 0, scope: !488, inlinedAt: !2136)
!2149 = !DILocation(line: 1113, column: 35, scope: !470, inlinedAt: !2136)
!2150 = !DILocation(line: 1113, column: 41, scope: !470, inlinedAt: !2136)
!2151 = !DILocation(line: 1112, column: 5, scope: !470, inlinedAt: !2136)
!2152 = !DILocation(line: 1114, column: 1, scope: !470, inlinedAt: !2136)
!2153 = !DILocation(line: 1179, column: 13, scope: !2137, inlinedAt: !2040)
!2154 = !DILocation(line: 1181, column: 9, scope: !2080, inlinedAt: !2040)
!2155 = !DILocation(line: 1153, column: 5, scope: !2033, inlinedAt: !2040)
!2156 = distinct !{!2156, !2157, !2158}
!2157 = !DILocation(line: 1153, column: 5, scope: !2033)
!2158 = !DILocation(line: 1182, column: 5, scope: !2033)
!2159 = !DILocation(line: 1118, column: 24, scope: !2160, inlinedAt: !2165)
!2160 = distinct !DISubprogram(name: "json_decode_ascend", scope: !3, file: !3, line: 1116, type: !2161, isLocal: true, isDefinition: true, scopeLine: 1117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2163)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{null, !473}
!2163 = !{!2164}
!2164 = !DILocalVariable(name: "json", arg: 1, scope: !2160, file: !3, line: 1116, type: !473)
!2165 = distinct !DILocation(line: 1149, column: 9, scope: !2166, inlinedAt: !2040)
!2166 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 1148, column: 34)
!2167 = !DILocation(line: 1119, column: 1, scope: !2160, inlinedAt: !2165)
!2168 = !DILocation(line: 1183, column: 1, scope: !2033, inlinedAt: !2040)
!2169 = !DILocation(line: 1239, column: 9, scope: !2018)
!2170 = !DILocalVariable(name: "l", arg: 1, scope: !2171, file: !3, line: 1186, type: !40)
!2171 = distinct !DISubprogram(name: "json_parse_array_context", scope: !3, file: !3, line: 1186, type: !2034, isLocal: true, isDefinition: true, scopeLine: 1187, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2172)
!2172 = !{!2170, !2173, !2174, !2175}
!2173 = !DILocalVariable(name: "json", arg: 2, scope: !2171, file: !3, line: 1186, type: !473)
!2174 = !DILocalVariable(name: "token", scope: !2171, file: !3, line: 1188, type: !394)
!2175 = !DILocalVariable(name: "i", scope: !2171, file: !3, line: 1189, type: !39)
!2176 = !DILocation(line: 1186, column: 49, scope: !2171, inlinedAt: !2177)
!2177 = distinct !DILocation(line: 1241, column: 9, scope: !2018)
!2178 = !DILocation(line: 1186, column: 66, scope: !2171, inlinedAt: !2177)
!2179 = !DILocation(line: 1188, column: 5, scope: !2171, inlinedAt: !2177)
!2180 = !DILocation(line: 1121, column: 44, scope: !2044, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 1193, column: 5, scope: !2171, inlinedAt: !2177)
!2182 = !DILocation(line: 1121, column: 61, scope: !2044, inlinedAt: !2181)
!2183 = !DILocation(line: 1121, column: 71, scope: !2044, inlinedAt: !2181)
!2184 = !DILocation(line: 1123, column: 11, scope: !2044, inlinedAt: !2181)
!2185 = !DILocation(line: 1123, column: 24, scope: !2044, inlinedAt: !2181)
!2186 = !DILocation(line: 1125, column: 38, scope: !2057, inlinedAt: !2181)
!2187 = !DILocation(line: 1125, column: 43, scope: !2057, inlinedAt: !2181)
!2188 = !DILocation(line: 1125, column: 29, scope: !2057, inlinedAt: !2181)
!2189 = !DILocation(line: 1125, column: 60, scope: !2057, inlinedAt: !2181)
!2190 = !DILocation(line: 1126, column: 9, scope: !2057, inlinedAt: !2181)
!2191 = !DILocation(line: 1125, column: 9, scope: !2044, inlinedAt: !2181)
!2192 = !DILocation(line: 1130, column: 23, scope: !2044, inlinedAt: !2181)
!2193 = !DILocation(line: 1130, column: 5, scope: !2044, inlinedAt: !2181)
!2194 = !DILocation(line: 1132, column: 15, scope: !2044, inlinedAt: !2181)
!2195 = !DILocation(line: 1132, column: 36, scope: !2044, inlinedAt: !2181)
!2196 = !DILocation(line: 1132, column: 48, scope: !2044, inlinedAt: !2181)
!2197 = !DILocation(line: 1132, column: 40, scope: !2044, inlinedAt: !2181)
!2198 = !DILocation(line: 1131, column: 5, scope: !2044, inlinedAt: !2181)
!2199 = !DILocation(line: 1133, column: 1, scope: !2044, inlinedAt: !2181)
!2200 = !DILocation(line: 1195, column: 5, scope: !2171, inlinedAt: !2177)
!2201 = !DILocation(line: 1188, column: 18, scope: !2171, inlinedAt: !2177)
!2202 = !DILocation(line: 1197, column: 5, scope: !2171, inlinedAt: !2177)
!2203 = !DILocation(line: 1200, column: 15, scope: !2204, inlinedAt: !2177)
!2204 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 1200, column: 9)
!2205 = !DILocation(line: 1200, column: 20, scope: !2204, inlinedAt: !2177)
!2206 = !DILocation(line: 1200, column: 9, scope: !2171, inlinedAt: !2177)
!2207 = !DILocation(line: 1206, column: 9, scope: !2208, inlinedAt: !2177)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 1205, column: 24)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 1205, column: 5)
!2210 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 1205, column: 5)
!2211 = !DILocation(line: 0, scope: !2209, inlinedAt: !2177)
!2212 = !DILocation(line: 1189, column: 9, scope: !2171, inlinedAt: !2177)
!2213 = !DILocation(line: 1207, column: 9, scope: !2208, inlinedAt: !2177)
!2214 = !DILocation(line: 1209, column: 9, scope: !2208, inlinedAt: !2177)
!2215 = !DILocation(line: 1211, column: 19, scope: !2216, inlinedAt: !2177)
!2216 = distinct !DILexicalBlock(scope: !2208, file: !3, line: 1211, column: 13)
!2217 = !DILocation(line: 1211, column: 13, scope: !2208, inlinedAt: !2177)
!2218 = !DILocation(line: 1099, column: 47, scope: !470, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 1217, column: 13, scope: !2220, inlinedAt: !2177)
!2220 = distinct !DILexicalBlock(scope: !2208, file: !3, line: 1216, column: 13)
!2221 = !DILocation(line: 1099, column: 64, scope: !470, inlinedAt: !2219)
!2222 = !DILocation(line: 1100, column: 48, scope: !470, inlinedAt: !2219)
!2223 = !DILocation(line: 1100, column: 67, scope: !470, inlinedAt: !2219)
!2224 = !DILocation(line: 1104, column: 23, scope: !470, inlinedAt: !2219)
!2225 = !DILocation(line: 1104, column: 5, scope: !470, inlinedAt: !2219)
!2226 = !DILocation(line: 1106, column: 16, scope: !488, inlinedAt: !2219)
!2227 = !DILocation(line: 1106, column: 21, scope: !488, inlinedAt: !2219)
!2228 = !DILocation(line: 1102, column: 17, scope: !470, inlinedAt: !2219)
!2229 = !DILocation(line: 1109, column: 17, scope: !488, inlinedAt: !2219)
!2230 = !DILocation(line: 1106, column: 9, scope: !470, inlinedAt: !2219)
!2231 = !DILocation(line: 0, scope: !488, inlinedAt: !2219)
!2232 = !DILocation(line: 1113, column: 35, scope: !470, inlinedAt: !2219)
!2233 = !DILocation(line: 1113, column: 41, scope: !470, inlinedAt: !2219)
!2234 = !DILocation(line: 1112, column: 5, scope: !470, inlinedAt: !2219)
!2235 = !DILocation(line: 1114, column: 1, scope: !470, inlinedAt: !2219)
!2236 = !DILocation(line: 1217, column: 13, scope: !2220, inlinedAt: !2177)
!2237 = !DILocation(line: 1219, column: 9, scope: !2208, inlinedAt: !2177)
!2238 = !DILocation(line: 1205, column: 20, scope: !2209, inlinedAt: !2177)
!2239 = !DILocation(line: 1205, column: 5, scope: !2209, inlinedAt: !2177)
!2240 = distinct !{!2240, !2241, !2242}
!2241 = !DILocation(line: 1205, column: 5, scope: !2210)
!2242 = !DILocation(line: 1220, column: 5, scope: !2210)
!2243 = !DILocation(line: 1118, column: 24, scope: !2160, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 1201, column: 9, scope: !2245, inlinedAt: !2177)
!2245 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 1200, column: 34)
!2246 = !DILocation(line: 1119, column: 1, scope: !2160, inlinedAt: !2244)
!2247 = !DILocation(line: 1221, column: 1, scope: !2171, inlinedAt: !2177)
!2248 = !DILocation(line: 1242, column: 9, scope: !2018)
!2249 = !DILocation(line: 1246, column: 9, scope: !2018)
!2250 = !DILocation(line: 1247, column: 9, scope: !2018)
!2251 = !DILocation(line: 1099, column: 47, scope: !470, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 1249, column: 9, scope: !2018)
!2253 = !DILocation(line: 1099, column: 64, scope: !470, inlinedAt: !2252)
!2254 = !DILocation(line: 1100, column: 48, scope: !470, inlinedAt: !2252)
!2255 = !DILocation(line: 1100, column: 67, scope: !470, inlinedAt: !2252)
!2256 = !DILocation(line: 1104, column: 23, scope: !470, inlinedAt: !2252)
!2257 = !DILocation(line: 1104, column: 5, scope: !470, inlinedAt: !2252)
!2258 = !DILocation(line: 1106, column: 16, scope: !488, inlinedAt: !2252)
!2259 = !DILocation(line: 1106, column: 21, scope: !488, inlinedAt: !2252)
!2260 = !DILocation(line: 1107, column: 30, scope: !488, inlinedAt: !2252)
!2261 = !DILocation(line: 1102, column: 17, scope: !470, inlinedAt: !2252)
!2262 = !DILocation(line: 1109, column: 17, scope: !488, inlinedAt: !2252)
!2263 = !DILocation(line: 1106, column: 9, scope: !470, inlinedAt: !2252)
!2264 = !DILocation(line: 0, scope: !488, inlinedAt: !2252)
!2265 = !DILocation(line: 1113, column: 35, scope: !470, inlinedAt: !2252)
!2266 = !DILocation(line: 1113, column: 41, scope: !470, inlinedAt: !2252)
!2267 = !DILocation(line: 1112, column: 5, scope: !470, inlinedAt: !2252)
!2268 = !DILocation(line: 1114, column: 1, scope: !470, inlinedAt: !2252)
!2269 = !DILocation(line: 1250, column: 5, scope: !2018)
!2270 = !DILocation(line: 1251, column: 1, scope: !2005)
!2271 = distinct !DISubprogram(name: "decode_hex4", scope: !3, file: !3, line: 752, type: !2272, isLocal: true, isDefinition: true, scopeLine: 753, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!39, !29}
!2274 = !{!2275, !2276, !2278}
!2275 = !DILocalVariable(name: "hex", arg: 1, scope: !2271, file: !3, line: 752, type: !29)
!2276 = !DILocalVariable(name: "digit", scope: !2271, file: !3, line: 754, type: !2277)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !97)
!2278 = !DILocalVariable(name: "i", scope: !2271, file: !3, line: 755, type: !39)
!2279 = !DILocation(line: 752, column: 36, scope: !2271)
!2280 = !DILocation(line: 755, column: 9, scope: !2271)
!2281 = !DILocation(line: 761, column: 33, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 760, column: 29)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 760, column: 5)
!2284 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 760, column: 5)
!2285 = !DILocalVariable(name: "hex", arg: 1, scope: !2286, file: !3, line: 739, type: !31)
!2286 = distinct !DISubprogram(name: "hexdigit2int", scope: !3, file: !3, line: 739, type: !2287, isLocal: true, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2289)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!39, !31}
!2289 = !{!2285}
!2290 = !DILocation(line: 739, column: 30, scope: !2286, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 761, column: 20, scope: !2282)
!2292 = !DILocation(line: 741, column: 21, scope: !2293, inlinedAt: !2291)
!2293 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 741, column: 9)
!2294 = !DILocation(line: 745, column: 9, scope: !2286, inlinedAt: !2291)
!2295 = !DILocation(line: 746, column: 20, scope: !2296, inlinedAt: !2291)
!2296 = distinct !DILexicalBlock(scope: !2286, file: !3, line: 746, column: 9)
!2297 = !DILocation(line: 750, column: 1, scope: !2286, inlinedAt: !2291)
!2298 = !DILocation(line: 754, column: 9, scope: !2271)
!2299 = !DILocation(line: 0, scope: !2282)
!2300 = !DILocation(line: 0, scope: !2271)
!2301 = !DILocation(line: 771, column: 1, scope: !2271)
!2302 = !DILocation(line: 767, column: 22, scope: !2271)
!2303 = !DILocation(line: 768, column: 22, scope: !2271)
!2304 = !DILocation(line: 767, column: 29, scope: !2271)
!2305 = !DILocation(line: 769, column: 22, scope: !2271)
!2306 = !DILocation(line: 768, column: 28, scope: !2271)
!2307 = !DILocation(line: 769, column: 28, scope: !2271)
!2308 = !DILocation(line: 767, column: 5, scope: !2271)
!2309 = distinct !DISubprogram(name: "json_arg_init", scope: !3, file: !3, line: 208, type: !2310, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2312)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!63, !40, !39}
!2312 = !{!2313, !2314}
!2313 = !DILocalVariable(name: "l", arg: 1, scope: !2309, file: !3, line: 208, type: !40)
!2314 = !DILocalVariable(name: "args", arg: 2, scope: !2309, file: !3, line: 208, type: !39)
!2315 = !DILocation(line: 208, column: 48, scope: !2309)
!2316 = !DILocation(line: 208, column: 55, scope: !2309)
!2317 = !DILocation(line: 210, column: 5, scope: !2309)
!2318 = !DILocation(line: 213, column: 12, scope: !2309)
!2319 = !DILocation(line: 213, column: 26, scope: !2309)
!2320 = !DILocation(line: 213, column: 5, scope: !2309)
!2321 = !DILocation(line: 214, column: 9, scope: !2309)
!2322 = distinct !{!2322, !2320, !2323}
!2323 = !DILocation(line: 214, column: 22, scope: !2309)
!2324 = !DILocation(line: 194, column: 52, scope: !315, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 216, column: 12, scope: !2309)
!2326 = !DILocation(line: 198, column: 11, scope: !315, inlinedAt: !2325)
!2327 = !DILocation(line: 196, column: 20, scope: !315, inlinedAt: !2325)
!2328 = !DILocation(line: 199, column: 10, scope: !325, inlinedAt: !2325)
!2329 = !DILocation(line: 199, column: 9, scope: !315, inlinedAt: !2325)
!2330 = !DILocation(line: 200, column: 9, scope: !325, inlinedAt: !2325)
!2331 = !DILocation(line: 202, column: 5, scope: !315, inlinedAt: !2325)
!2332 = !DILocation(line: 216, column: 5, scope: !2309)
!2333 = !DILocation(line: 239, column: 40, scope: !36)
!2334 = !DILocation(line: 239, column: 47, scope: !36)
!2335 = !DILocation(line: 239, column: 62, scope: !36)
!2336 = !DILocation(line: 240, column: 42, scope: !36)
!2337 = !DILocation(line: 240, column: 55, scope: !36)
!2338 = !DILocation(line: 244, column: 10, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !36, file: !3, line: 244, column: 9)
!2340 = !DILocation(line: 244, column: 9, scope: !36)
!2341 = !DILocation(line: 249, column: 10, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !36, file: !3, line: 249, column: 9)
!2343 = !DILocation(line: 249, column: 9, scope: !36)
!2344 = !DILocation(line: 250, column: 26, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 250, column: 13)
!2346 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 249, column: 34)
!2347 = !DILocation(line: 250, column: 13, scope: !2346)
!2348 = !DILocation(line: 251, column: 24, scope: !2345)
!2349 = !DILocation(line: 251, column: 22, scope: !2345)
!2350 = !DILocation(line: 251, column: 13, scope: !2345)
!2351 = !DILocation(line: 253, column: 24, scope: !2345)
!2352 = !DILocation(line: 253, column: 22, scope: !2345)
!2353 = !DILocation(line: 256, column: 23, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !36, file: !3, line: 256, column: 9)
!2355 = !DILocation(line: 256, column: 37, scope: !2354)
!2356 = !DILocation(line: 257, column: 9, scope: !2354)
!2357 = !DILocation(line: 259, column: 27, scope: !2354)
!2358 = !DILocation(line: 259, column: 9, scope: !2354)
!2359 = !DILocation(line: 261, column: 5, scope: !36)
!2360 = distinct !DISubprogram(name: "json_destroy_config", scope: !3, file: !3, line: 361, type: !58, isLocal: true, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2361)
!2361 = !{!2362, !2363}
!2362 = !DILocalVariable(name: "l", arg: 1, scope: !2360, file: !3, line: 361, type: !40)
!2363 = !DILocalVariable(name: "cfg", scope: !2360, file: !3, line: 363, type: !63)
!2364 = !DILocation(line: 361, column: 43, scope: !2360)
!2365 = !DILocation(line: 365, column: 11, scope: !2360)
!2366 = !DILocation(line: 366, column: 9, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2360, file: !3, line: 366, column: 9)
!2368 = !DILocation(line: 366, column: 9, scope: !2360)
!2369 = !DILocation(line: 363, column: 20, scope: !2360)
!2370 = !DILocation(line: 367, column: 27, scope: !2367)
!2371 = !DILocation(line: 367, column: 9, scope: !2367)
!2372 = !DILocation(line: 370, column: 5, scope: !2360)
!2373 = distinct !DISubprogram(name: "json_protect_conversion", scope: !3, file: !3, line: 1318, type: !58, isLocal: true, isDefinition: true, scopeLine: 1319, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2374)
!2374 = !{!2375, !2376}
!2375 = !DILocalVariable(name: "l", arg: 1, scope: !2373, file: !3, line: 1318, type: !40)
!2376 = !DILocalVariable(name: "err", scope: !2373, file: !3, line: 1320, type: !39)
!2377 = !DILocation(line: 1318, column: 47, scope: !2373)
!2378 = !DILocation(line: 1323, column: 5, scope: !2373)
!2379 = !DILocation(line: 1326, column: 5, scope: !2373)
!2380 = !DILocation(line: 1327, column: 5, scope: !2373)
!2381 = !DILocation(line: 1328, column: 11, scope: !2373)
!2382 = !DILocation(line: 1320, column: 9, scope: !2373)
!2383 = !DILocation(line: 1329, column: 9, scope: !2373)
!2384 = !DILocation(line: 1333, column: 9, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 1332, column: 28)
!2386 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 1332, column: 9)
!2387 = !DILocation(line: 1334, column: 9, scope: !2385)
!2388 = !DILocation(line: 1335, column: 9, scope: !2385)
!2389 = !DILocation(line: 1340, column: 12, scope: !2373)
!2390 = !DILocation(line: 1340, column: 5, scope: !2373)
!2391 = !DILocation(line: 0, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 1329, column: 9)
!2393 = !DILocation(line: 1341, column: 1, scope: !2373)
