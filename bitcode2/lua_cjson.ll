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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !164
  %14 = bitcast i8* %4 to [256 x i32]*, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
  br label %15, !dbg !167

; <label>:15:                                     ; preds = %15, %1
  %16 = phi i64 [ 0, %1 ], [ %24, %15 ]
  %17 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %16, !dbg !168
  store i32 12, i32* %17, align 4, !dbg !170, !tbaa !171
  %18 = or i64 %16, 1, !dbg !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
  %19 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %18, !dbg !168
  store i32 12, i32* %19, align 4, !dbg !170, !tbaa !171
  %20 = or i64 %16, 2, !dbg !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %20, !dbg !168
  store i32 12, i32* %21, align 4, !dbg !170, !tbaa !171
  %22 = or i64 %16, 3, !dbg !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %22, !dbg !168
  store i32 12, i32* %23, align 4, !dbg !170, !tbaa !171
  %24 = add nuw nsw i64 %16, 4, !dbg !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
  %25 = icmp eq i64 %24, 256, !dbg !174
  br i1 %25, label %26, label %15, !dbg !167, !llvm.loop !175

; <label>:26:                                     ; preds = %15
  %27 = getelementptr inbounds i8, i8* %4, i64 492, !dbg !178
  %28 = bitcast i8* %27 to i32*, !dbg !178
  store i32 0, i32* %28, align 4, !dbg !179, !tbaa !171
  %29 = getelementptr inbounds i8, i8* %4, i64 500, !dbg !180
  %30 = bitcast i8* %29 to i32*, !dbg !180
  store i32 1, i32* %30, align 4, !dbg !181, !tbaa !171
  %31 = getelementptr inbounds i8, i8* %4, i64 364, !dbg !182
  %32 = bitcast i8* %31 to i32*, !dbg !182
  store i32 2, i32* %32, align 4, !dbg !183, !tbaa !171
  %33 = getelementptr inbounds i8, i8* %4, i64 372, !dbg !184
  %34 = bitcast i8* %33 to i32*, !dbg !184
  store i32 3, i32* %34, align 4, !dbg !185, !tbaa !171
  %35 = getelementptr inbounds i8, i8* %4, i64 176, !dbg !186
  %36 = bitcast i8* %35 to i32*, !dbg !186
  store i32 9, i32* %36, align 8, !dbg !187, !tbaa !171
  %37 = getelementptr inbounds i8, i8* %4, i64 232, !dbg !188
  %38 = bitcast i8* %37 to i32*, !dbg !188
  store i32 8, i32* %38, align 8, !dbg !189, !tbaa !171
  %39 = bitcast i8* %4 to i32*, !dbg !190
  store i32 10, i32* %39, align 8, !dbg !191, !tbaa !171
  %40 = getelementptr inbounds i8, i8* %4, i64 128, !dbg !192
  %41 = bitcast i8* %40 to i32*, !dbg !192
  store i32 11, i32* %41, align 8, !dbg !193, !tbaa !171
  %42 = getelementptr inbounds i8, i8* %4, i64 36, !dbg !194
  %43 = bitcast i8* %42 to i32*, !dbg !194
  store i32 11, i32* %43, align 4, !dbg !195, !tbaa !171
  %44 = getelementptr inbounds i8, i8* %4, i64 40, !dbg !196
  %45 = bitcast i8* %44 to i32*, !dbg !196
  store i32 11, i32* %45, align 8, !dbg !197, !tbaa !171
  %46 = getelementptr inbounds i8, i8* %4, i64 52, !dbg !198
  %47 = bitcast i8* %46 to i32*, !dbg !198
  store i32 11, i32* %47, align 4, !dbg !199, !tbaa !171
  %48 = getelementptr inbounds i8, i8* %4, i64 408, !dbg !200
  %49 = bitcast i8* %48 to i32*, !dbg !200
  store i32 13, i32* %49, align 8, !dbg !201, !tbaa !171
  %50 = getelementptr inbounds i8, i8* %4, i64 420, !dbg !202
  %51 = bitcast i8* %50 to i32*, !dbg !202
  store i32 13, i32* %51, align 4, !dbg !203, !tbaa !171
  %52 = getelementptr inbounds i8, i8* %4, i64 292, !dbg !204
  %53 = bitcast i8* %52 to i32*, !dbg !204
  store i32 13, i32* %53, align 4, !dbg !205, !tbaa !171
  %54 = getelementptr inbounds i8, i8* %4, i64 440, !dbg !206
  %55 = bitcast i8* %54 to i32*, !dbg !206
  store i32 13, i32* %55, align 8, !dbg !207, !tbaa !171
  %56 = getelementptr inbounds i8, i8* %4, i64 312, !dbg !208
  %57 = bitcast i8* %56 to i32*, !dbg !208
  store i32 13, i32* %57, align 8, !dbg !209, !tbaa !171
  %58 = getelementptr inbounds i8, i8* %4, i64 464, !dbg !210
  %59 = bitcast i8* %58 to i32*, !dbg !210
  store i32 13, i32* %59, align 8, !dbg !211, !tbaa !171
  %60 = getelementptr inbounds i8, i8* %4, i64 136, !dbg !212
  %61 = bitcast i8* %60 to i32*, !dbg !212
  store i32 13, i32* %61, align 8, !dbg !213, !tbaa !171
  %62 = getelementptr inbounds i8, i8* %4, i64 172, !dbg !214
  %63 = bitcast i8* %62 to i32*, !dbg !214
  store i32 13, i32* %63, align 4, !dbg !215, !tbaa !171
  %64 = getelementptr inbounds i8, i8* %4, i64 180, !dbg !216
  %65 = bitcast i8* %64 to i32*, !dbg !216
  store i32 13, i32* %65, align 4, !dbg !217, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  %66 = getelementptr inbounds i8, i8* %4, i64 192, !dbg !221
  %67 = bitcast i8* %66 to i32*, !dbg !221
  store i32 13, i32* %67, align 4, !dbg !223, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  %68 = getelementptr inbounds i8, i8* %4, i64 196, !dbg !221
  %69 = bitcast i8* %68 to i32*, !dbg !221
  store i32 13, i32* %69, align 4, !dbg !223, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  %70 = getelementptr inbounds i8, i8* %4, i64 200, !dbg !221
  %71 = bitcast i8* %70 to i32*, !dbg !221
  store i32 13, i32* %71, align 4, !dbg !223, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  %72 = getelementptr inbounds i8, i8* %4, i64 204, !dbg !221
  %73 = bitcast i8* %72 to i32*, !dbg !221
  store i32 13, i32* %73, align 4, !dbg !223, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  %74 = getelementptr inbounds i8, i8* %4, i64 208, !dbg !221
  %75 = bitcast i8* %74 to i32*, !dbg !221
  store i32 13, i32* %75, align 4, !dbg !223, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  %76 = getelementptr inbounds i8, i8* %4, i64 212, !dbg !221
  %77 = bitcast i8* %76 to i32*, !dbg !221
  store i32 13, i32* %77, align 4, !dbg !223, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  %78 = getelementptr inbounds i8, i8* %4, i64 216, !dbg !221
  %79 = bitcast i8* %78 to i32*, !dbg !221
  store i32 13, i32* %79, align 4, !dbg !223, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  %80 = getelementptr inbounds i8, i8* %4, i64 220, !dbg !221
  %81 = bitcast i8* %80 to i32*, !dbg !221
  store i32 13, i32* %81, align 4, !dbg !223, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  %82 = getelementptr inbounds i8, i8* %4, i64 224, !dbg !221
  %83 = bitcast i8* %82 to i32*, !dbg !221
  store i32 13, i32* %83, align 4, !dbg !223, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  %84 = getelementptr inbounds i8, i8* %4, i64 228, !dbg !221
  %85 = bitcast i8* %84 to i32*, !dbg !221
  store i32 13, i32* %85, align 4, !dbg !223, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  %86 = getelementptr inbounds i8, i8* %4, i64 1024
  br label %87, !dbg !227

; <label>:87:                                     ; preds = %87, %26
  %88 = phi i64 [ 0, %26 ], [ %96, %87 ]
  %89 = getelementptr inbounds i8, i8* %86, i64 %88, !dbg !228
  store i8 0, i8* %89, align 1, !dbg !230, !tbaa !171
  %90 = or i64 %88, 1, !dbg !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  %91 = getelementptr inbounds i8, i8* %86, i64 %90, !dbg !228
  store i8 0, i8* %91, align 1, !dbg !230, !tbaa !171
  %92 = or i64 %88, 2, !dbg !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  %93 = getelementptr inbounds i8, i8* %86, i64 %92, !dbg !228
  store i8 0, i8* %93, align 1, !dbg !230, !tbaa !171
  %94 = or i64 %88, 3, !dbg !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  %95 = getelementptr inbounds i8, i8* %86, i64 %94, !dbg !228
  store i8 0, i8* %95, align 1, !dbg !230, !tbaa !171
  %96 = add nuw nsw i64 %88, 4, !dbg !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  %97 = icmp eq i64 %96, 256, !dbg !233
  br i1 %97, label %98, label %87, !dbg !227, !llvm.loop !234

; <label>:98:                                     ; preds = %87
  %99 = getelementptr inbounds i8, i8* %4, i64 1058, !dbg !237
  store i8 34, i8* %99, align 2, !dbg !238, !tbaa !171
  %100 = getelementptr inbounds i8, i8* %4, i64 1116, !dbg !239
  store i8 92, i8* %100, align 4, !dbg !240, !tbaa !171
  %101 = getelementptr inbounds i8, i8* %4, i64 1071, !dbg !241
  store i8 47, i8* %101, align 1, !dbg !242, !tbaa !171
  %102 = getelementptr inbounds i8, i8* %4, i64 1122, !dbg !243
  store i8 8, i8* %102, align 2, !dbg !244, !tbaa !171
  %103 = getelementptr inbounds i8, i8* %4, i64 1140, !dbg !245
  store i8 9, i8* %103, align 4, !dbg !246, !tbaa !171
  %104 = getelementptr inbounds i8, i8* %4, i64 1134, !dbg !247
  store i8 10, i8* %104, align 2, !dbg !248, !tbaa !171
  %105 = getelementptr inbounds i8, i8* %4, i64 1126, !dbg !249
  store i8 12, i8* %105, align 2, !dbg !250, !tbaa !171
  %106 = getelementptr inbounds i8, i8* %4, i64 1138, !dbg !251
  store i8 13, i8* %106, align 2, !dbg !252, !tbaa !171
  %107 = getelementptr inbounds i8, i8* %4, i64 1141, !dbg !253
  store i8 117, i8* %107, align 1, !dbg !254, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  tail call void @luaL_checkstack(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.100, i64 0, i64 0)) #7, !dbg !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  %108 = getelementptr inbounds [11 x %struct.luaL_Reg], [11 x %struct.luaL_Reg]* %2, i64 0, i64 0, i32 0, !dbg !272
  %109 = load i8*, i8** %108, align 16, !dbg !272, !tbaa !275
  %110 = icmp eq i8* %109, null, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  br i1 %110, label %120, label %111, !dbg !278

; <label>:111:                                    ; preds = %98, %111
  %112 = phi i8** [ %117, %111 ], [ %108, %98 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -1) #7, !dbg !284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  %113 = getelementptr inbounds i8*, i8** %112, i64 1, !dbg !287
  %114 = bitcast i8** %113 to i32 (%struct.lua_State*)**, !dbg !287
  %115 = load i32 (%struct.lua_State*)*, i32 (%struct.lua_State*)** %114, align 8, !dbg !287, !tbaa !288
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* %115, i32 1) #7, !dbg !289
  %116 = load i8*, i8** %112, align 8, !dbg !290, !tbaa !275
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -3, i8* %116) #7, !dbg !291
  %117 = getelementptr inbounds i8*, i8** %112, i64 2, !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  %118 = load i8*, i8** %117, align 8, !dbg !272, !tbaa !275
  %119 = icmp eq i8* %118, null, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  br i1 %119, label %120, label %111, !dbg !278, !llvm.loop !294

; <label>:120:                                    ; preds = %111, %98
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* null) #7, !dbg !299
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)) #7, !dbg !300
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 5) #7, !dbg !301
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0)) #7, !dbg !302
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64 5) #7, !dbg !303
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !304
  call void @llvm.lifetime.end.p0i8(i64 176, i8* nonnull %3) #8, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  ret i32 1, !dbg !306
}

; Function Attrs: noredzone
declare dso_local void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i32 @luaopen_cjson_safe(%struct.lua_State*) local_unnamed_addr #0 !dbg !307 {
  %2 = tail call i32 @lua_cjson_safe_new(%struct.lua_State* %0) #6, !dbg !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  ret i32 1, !dbg !312
}

; Function Attrs: noredzone nounwind
define internal i32 @lua_cjson_safe_new(%struct.lua_State*) #0 !dbg !313 {
  %2 = tail call i32 @lua_cjson_new(%struct.lua_State* %0) #6, !dbg !319
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @lua_cjson_safe_new, i32 0) #7, !dbg !320
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !326
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @json_protect_conversion, i32 1) #7, !dbg !329
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !326
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @json_protect_conversion, i32 1) #7, !dbg !329
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  ret i32 1, !dbg !332
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone nounwind
define internal i32 @json_encode(%struct.lua_State*) #0 !dbg !333 {
  %2 = alloca %struct.strbuf_t, align 8
  %3 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -10003) #7, !dbg !351
  %4 = bitcast i8* %3 to %struct.json_config_t*, !dbg !351
  %5 = icmp eq i8* %3, null, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br i1 %5, label %6, label %8, !dbg !355

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  br label %8, !dbg !356

; <label>:8:                                      ; preds = %1, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  %9 = bitcast %struct.strbuf_t* %2 to i8*, !dbg !359
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #8, !dbg !359
  %10 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7, !dbg !360
  %11 = icmp eq i32 %10, 1, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br i1 %11, label %14, label %12, !dbg !360

; <label>:12:                                     ; preds = %8
  %13 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br label %14, !dbg !360

; <label>:14:                                     ; preds = %12, %8
  %15 = getelementptr inbounds i8, i8* %3, i64 1336, !dbg !361
  %16 = bitcast i8* %15 to i32*, !dbg !361
  %17 = load i32, i32* %16, align 8, !dbg !361, !tbaa !363
  %18 = icmp eq i32 %17, 0, !dbg !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  br i1 %18, label %19, label %20, !dbg !365

; <label>:19:                                     ; preds = %14
  call void @strbuf_init(%struct.strbuf_t* nonnull %2, i32 0) #7, !dbg !368
  br label %25, !dbg !370

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds i8, i8* %3, i64 1280, !dbg !371
  %22 = bitcast i8* %21 to %struct.strbuf_t*, !dbg !371
  %23 = getelementptr inbounds i8, i8* %3, i64 1292, !dbg !380
  %24 = bitcast i8* %23 to i32*, !dbg !380
  store i32 0, i32* %24, align 4, !dbg !381, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  br label %25

; <label>:25:                                     ; preds = %20, %19
  %26 = phi %struct.strbuf_t* [ %22, %20 ], [ %2, %19 ], !dbg !384
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call fastcc void @json_append_data(%struct.lua_State* %0, %struct.json_config_t* nonnull %4, i32 0, %struct.strbuf_t* nonnull %26) #6, !dbg !385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  %27 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %26, i64 0, i32 2, !dbg !395
  %28 = load i32, i32* %27, align 4, !dbg !395, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  %29 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %26, i64 0, i32 0, !dbg !398
  %30 = load i8*, i8** %29, align 8, !dbg !398, !tbaa !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  %31 = sext i32 %28 to i64, !dbg !403
  call void @lua_pushlstring(%struct.lua_State* %0, i8* %30, i64 %31) #7, !dbg !404
  %32 = load i32, i32* %16, align 8, !dbg !405, !tbaa !363
  %33 = icmp eq i32 %32, 0, !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  br i1 %33, label %34, label %35, !dbg !408

; <label>:34:                                     ; preds = %25
  call void @strbuf_free(%struct.strbuf_t* nonnull %26) #7, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  br label %35, !dbg !409

; <label>:35:                                     ; preds = %25, %34
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #8, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  ret i32 1, !dbg !411
}

; Function Attrs: noredzone nounwind
define internal i32 @json_decode(%struct.lua_State*) #0 !dbg !412 {
  %2 = alloca %struct.json_parse_t, align 8
  %3 = alloca %struct.json_token_t, align 8
  %4 = alloca i64, align 8
  %5 = bitcast %struct.json_parse_t* %2 to i8*, !dbg !445
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #8, !dbg !445
  %6 = bitcast %struct.json_token_t* %3 to i8*, !dbg !446
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8, !dbg !446
  %7 = bitcast i64* %4 to i8*, !dbg !447
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #8, !dbg !447
  %8 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7, !dbg !448
  %9 = icmp eq i32 %8, 1, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  br i1 %9, label %12, label %10, !dbg !448

; <label>:10:                                     ; preds = %1
  %11 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  br label %12, !dbg !448

; <label>:12:                                     ; preds = %10, %1
  %13 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -10003) #7, !dbg !451
  %14 = icmp eq i8* %13, null, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !454
  br i1 %14, label %15, label %17, !dbg !454

; <label>:15:                                     ; preds = %12
  %16 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !455
  br label %17, !dbg !455

; <label>:17:                                     ; preds = %12, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  %18 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %2, i64 0, i32 3, !dbg !457
  %19 = bitcast %struct.json_config_t** %18 to i8**, !dbg !458
  store i8* %13, i8** %19, align 8, !dbg !458, !tbaa !459
  %20 = call i8* @luaL_checklstring(%struct.lua_State* %0, i32 1, i64* nonnull %4) #7, !dbg !462
  %21 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %2, i64 0, i32 0, !dbg !463
  store i8* %20, i8** %21, align 8, !dbg !464, !tbaa !465
  %22 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %2, i64 0, i32 4, !dbg !466
  store i32 0, i32* %22, align 8, !dbg !467, !tbaa !468
  %23 = ptrtoint i8* %20 to i64, !dbg !469
  %24 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %2, i64 0, i32 1, !dbg !470
  %25 = bitcast i8** %24 to i64*, !dbg !471
  store i64 %23, i64* %25, align 8, !dbg !471, !tbaa !472
  %26 = load i64, i64* %4, align 8, !dbg !473, !tbaa !475
  %27 = icmp ugt i64 %26, 1, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br i1 %27, label %28, label %38, !dbg !478

; <label>:28:                                     ; preds = %17
  %29 = load i8, i8* %20, align 1, !dbg !479, !tbaa !171
  %30 = icmp eq i8 %29, 0, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !480
  br i1 %30, label %35, label %31, !dbg !480

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !481
  %33 = load i8, i8* %32, align 1, !dbg !481, !tbaa !171
  %34 = icmp eq i8 %33, 0, !dbg !481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  br i1 %34, label %35, label %38, !dbg !482

; <label>:35:                                     ; preds = %31, %28
  %36 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.64, i64 0, i64 0)) #7, !dbg !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  %37 = load i64, i64* %4, align 8, !dbg !484, !tbaa !475
  br label %38, !dbg !483

; <label>:38:                                     ; preds = %31, %35, %17
  %39 = phi i64 [ %26, %31 ], [ %37, %35 ], [ %26, %17 ], !dbg !484
  %40 = trunc i64 %39 to i32, !dbg !484
  %41 = call %struct.strbuf_t* @strbuf_new(i32 %40) #7, !dbg !485
  %42 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %2, i64 0, i32 2, !dbg !486
  store %struct.strbuf_t* %41, %struct.strbuf_t** %42, align 8, !dbg !487, !tbaa !488
  call fastcc void @json_next_token(%struct.json_parse_t* nonnull %2, %struct.json_token_t* nonnull %3) #6, !dbg !491
  call fastcc void @json_process_value(%struct.lua_State* %0, %struct.json_parse_t* nonnull %2, %struct.json_token_t* nonnull %3) #6, !dbg !492
  call fastcc void @json_next_token(%struct.json_parse_t* nonnull %2, %struct.json_token_t* nonnull %3) #6, !dbg !493
  %43 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %3, i64 0, i32 0, !dbg !494
  %44 = load i32, i32* %43, align 8, !dbg !494, !tbaa !496
  %45 = icmp eq i32 %44, 10, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  br i1 %45, label %59, label %46, !dbg !499

; <label>:46:                                     ; preds = %38
  %47 = load %struct.strbuf_t*, %struct.strbuf_t** %42, align 8, !dbg !516, !tbaa !488
  call void @strbuf_free(%struct.strbuf_t* %47) #7, !dbg !517
  %48 = load i32, i32* %43, align 8, !dbg !518, !tbaa !496
  %49 = icmp eq i32 %48, 12, !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  %50 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %3, i64 0, i32 2, i32 0, !dbg !522
  %51 = zext i32 %48 to i64, !dbg !524
  %52 = getelementptr inbounds [15 x i8*], [15 x i8*]* @json_token_type_name, i64 0, i64 %51, !dbg !524
  %53 = select i1 %49, i8** %50, i8** %52, !dbg !521
  %54 = load i8*, i8** %53, align 8, !dbg !525, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %55 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %3, i64 0, i32 1, !dbg !526
  %56 = load i32, i32* %55, align 4, !dbg !526, !tbaa !527
  %57 = add nsw i32 %56, 1, !dbg !528
  %58 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i64 0, i64 0), i8* %54, i32 %57) #7, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !531
  br label %59, !dbg !531

; <label>:59:                                     ; preds = %38, %46
  %60 = load %struct.strbuf_t*, %struct.strbuf_t** %42, align 8, !dbg !532, !tbaa !488
  call void @strbuf_free(%struct.strbuf_t* %60) #7, !dbg !533
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #8, !dbg !534
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8, !dbg !534
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #8, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !535
  ret i32 1, !dbg !535
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_encode_sparse_array(%struct.lua_State*) #0 !dbg !536 {
  %2 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 3) #6, !dbg !541
  %3 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %2, i64 0, i32 3, !dbg !543
  tail call fastcc void @json_enum_option(%struct.lua_State* %0, i32* nonnull %3, i8** null) #6, !dbg !544
  %4 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %2, i64 0, i32 4, !dbg !545
  tail call fastcc void @json_integer_option(%struct.lua_State* %0, i32 2, i32* nonnull %4, i32 0, i32 2147483647) #6, !dbg !546
  %5 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %2, i64 0, i32 5, !dbg !547
  tail call fastcc void @json_integer_option(%struct.lua_State* %0, i32 3, i32* nonnull %5, i32 0, i32 2147483647) #6, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  ret i32 3, !dbg !549
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_encode_max_depth(%struct.lua_State*) #0 !dbg !550 {
  %2 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 1) #6, !dbg !555
  %3 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %2, i64 0, i32 6, !dbg !557
  tail call fastcc void @json_integer_option(%struct.lua_State* %0, i32 1, i32* nonnull %3, i32 1, i32 2147483647) #6, !dbg !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  ret i32 1, !dbg !559
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_decode_max_depth(%struct.lua_State*) #0 !dbg !560 {
  %2 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 1) #6, !dbg !565
  %3 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %2, i64 0, i32 11, !dbg !567
  tail call fastcc void @json_integer_option(%struct.lua_State* %0, i32 1, i32* nonnull %3, i32 1, i32 2147483647) #6, !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !569
  ret i32 1, !dbg !569
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_encode_number_precision(%struct.lua_State*) #0 !dbg !570 {
  %2 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 1) #6, !dbg !575
  %3 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %2, i64 0, i32 8, !dbg !577
  tail call fastcc void @json_integer_option(%struct.lua_State* %0, i32 1, i32* nonnull %3, i32 1, i32 14) #6, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  ret i32 1, !dbg !579
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_encode_keep_buffer(%struct.lua_State*) #0 !dbg !580 {
  %2 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 1) #6, !dbg !586
  %3 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %2, i64 0, i32 9, !dbg !588
  %4 = load i32, i32* %3, align 8, !dbg !588, !tbaa !363
  tail call fastcc void @json_enum_option(%struct.lua_State* %0, i32* nonnull %3, i8** null) #6, !dbg !590
  %5 = load i32, i32* %3, align 8, !dbg !591, !tbaa !363
  %6 = icmp eq i32 %4, %5, !dbg !593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  br i1 %6, label %13, label %7, !dbg !594

; <label>:7:                                      ; preds = %1
  %8 = icmp eq i32 %5, 0, !dbg !595
  %9 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %2, i64 0, i32 2, !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  br i1 %8, label %11, label %10, !dbg !599

; <label>:10:                                     ; preds = %7
  tail call void @strbuf_init(%struct.strbuf_t* nonnull %9, i32 0) #7, !dbg !600
  br label %12, !dbg !600

; <label>:11:                                     ; preds = %7
  tail call void @strbuf_free(%struct.strbuf_t* nonnull %9) #7, !dbg !601
  br label %12

; <label>:12:                                     ; preds = %11, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %13, !dbg !602

; <label>:13:                                     ; preds = %12, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  ret i32 1, !dbg !602
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_encode_invalid_numbers(%struct.lua_State*) #0 !dbg !57 {
  %2 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 1) #6, !dbg !604
  %3 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %2, i64 0, i32 7, !dbg !606
  tail call fastcc void @json_enum_option(%struct.lua_State* %0, i32* nonnull %3, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @json_cfg_encode_invalid_numbers.options, i64 0, i64 0)) #6, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  ret i32 1, !dbg !608
}

; Function Attrs: noredzone nounwind
define internal i32 @json_cfg_decode_invalid_numbers(%struct.lua_State*) #0 !dbg !609 {
  %2 = tail call fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State* %0, i32 1) #6, !dbg !614
  %3 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %2, i64 0, i32 10, !dbg !616
  tail call fastcc void @json_enum_option(%struct.lua_State* %0, i32* nonnull %3, i8** null) #6, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  ret i32 1, !dbg !618
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
define internal fastcc void @json_append_data(%struct.lua_State*, %struct.json_config_t* readonly, i32, %struct.strbuf_t*) unnamed_addr #0 !dbg !619 {
  %5 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #7, !dbg !632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  switch i32 %5, label %333 [
    i32 4, label %6
    i32 3, label %7
    i32 1, label %8
    i32 5, label %45
    i32 0, label %290
    i32 2, label %310
  ], !dbg !633

; <label>:6:                                      ; preds = %4
  tail call fastcc void @json_append_string(%struct.lua_State* %0, %struct.strbuf_t* %3, i32 -1) #6, !dbg !634
  br label %342, !dbg !636

; <label>:7:                                      ; preds = %4
  tail call fastcc void @json_append_number(%struct.lua_State* %0, %struct.json_config_t* %1, %struct.strbuf_t* %3, i32 -1) #6, !dbg !637
  br label %342, !dbg !638

; <label>:8:                                      ; preds = %4
  %9 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 -1) #7, !dbg !639
  %10 = icmp eq i32 %9, 0, !dbg !639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  %11 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 1, !dbg !653
  %12 = load i32, i32* %11, align 8, !dbg !653, !tbaa !668
  %13 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 2, !dbg !669
  %14 = load i32, i32* %13, align 4, !dbg !669, !tbaa !382
  %15 = xor i32 %14, -1, !dbg !670
  %16 = add i32 %12, %15, !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  br i1 %10, label %31, label %17, !dbg !641

; <label>:17:                                     ; preds = %8
  %18 = icmp slt i32 %16, 4, !dbg !679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  br i1 %18, label %19, label %22, !dbg !680

; <label>:19:                                     ; preds = %17
  %20 = add nsw i32 %14, 4, !dbg !681
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %20) #7, !dbg !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  %21 = load i32, i32* %13, align 4, !dbg !683, !tbaa !382
  br label %22, !dbg !682

; <label>:22:                                     ; preds = %17, %19
  %23 = phi i32 [ %14, %17 ], [ %21, %19 ], !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  %24 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 0, !dbg !685
  %25 = load i8*, i8** %24, align 8, !dbg !685, !tbaa !399
  %26 = sext i32 %23 to i64, !dbg !686
  %27 = getelementptr inbounds i8, i8* %25, i64 %26, !dbg !686
  %28 = tail call i8* @memcpy(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 4) #7, !dbg !687
  %29 = load i32, i32* %13, align 4, !dbg !688, !tbaa !382
  %30 = add nsw i32 %29, 4, !dbg !688
  store i32 %30, i32* %13, align 4, !dbg !688, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  br label %342, !dbg !690

; <label>:31:                                     ; preds = %8
  %32 = icmp slt i32 %16, 5, !dbg !696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  br i1 %32, label %33, label %36, !dbg !697

; <label>:33:                                     ; preds = %31
  %34 = add nsw i32 %14, 5, !dbg !698
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %34) #7, !dbg !699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  %35 = load i32, i32* %13, align 4, !dbg !700, !tbaa !382
  br label %36, !dbg !699

; <label>:36:                                     ; preds = %31, %33
  %37 = phi i32 [ %14, %31 ], [ %35, %33 ], !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  %38 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 0, !dbg !702
  %39 = load i8*, i8** %38, align 8, !dbg !702, !tbaa !399
  %40 = sext i32 %37 to i64, !dbg !703
  %41 = getelementptr inbounds i8, i8* %39, i64 %40, !dbg !703
  %42 = tail call i8* @memcpy(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i64 5) #7, !dbg !704
  %43 = load i32, i32* %13, align 4, !dbg !705, !tbaa !382
  %44 = add nsw i32 %43, 5, !dbg !705
  store i32 %44, i32* %13, align 4, !dbg !705, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  br label %342

; <label>:45:                                     ; preds = %4
  %46 = add nsw i32 %2, 1, !dbg !707
  %47 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 6, !dbg !719
  %48 = load i32, i32* %47, align 4, !dbg !719, !tbaa !721
  %49 = icmp sgt i32 %48, %2, !dbg !722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  br i1 %49, label %50, label %53, !dbg !723

; <label>:50:                                     ; preds = %45
  %51 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 3) #7, !dbg !724
  %52 = icmp eq i32 %51, 0, !dbg !724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  br i1 %52, label %53, label %60, !dbg !725

; <label>:53:                                     ; preds = %45, %50
  %54 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 9, !dbg !726
  %55 = load i32, i32* %54, align 8, !dbg !726, !tbaa !363
  %56 = icmp eq i32 %55, 0, !dbg !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !729
  br i1 %56, label %57, label %58, !dbg !729

; <label>:57:                                     ; preds = %53
  tail call void @strbuf_free(%struct.strbuf_t* %3) #7, !dbg !730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  br label %58, !dbg !730

; <label>:58:                                     ; preds = %57, %53
  %59 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.59, i64 0, i64 0), i32 %46) #7, !dbg !731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  br label %60, !dbg !732

; <label>:60:                                     ; preds = %50, %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  tail call void @lua_pushnil(%struct.lua_State* %0) #7, !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  %61 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #7, !dbg !751
  %62 = icmp eq i32 %61, 0, !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  br i1 %62, label %87, label %63, !dbg !750

; <label>:63:                                     ; preds = %60, %81
  %64 = phi i32 [ %83, %81 ], [ 0, %60 ]
  %65 = phi i32 [ %82, %81 ], [ 0, %60 ]
  %66 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -2) #7, !dbg !753
  %67 = icmp eq i32 %66, 3, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !757
  br i1 %67, label %68, label %86, !dbg !757

; <label>:68:                                     ; preds = %63
  %69 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -2) #7, !dbg !758
  %70 = fcmp une double %69, 0.000000e+00, !dbg !760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  br i1 %70, label %71, label %86, !dbg !761

; <label>:71:                                     ; preds = %68
  %72 = tail call double @floor(double %69) #7, !dbg !762
  %73 = fcmp oeq double %72, %69, !dbg !765
  %74 = fcmp oge double %69, 1.000000e+00, !dbg !766
  %75 = and i1 %74, %73, !dbg !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !767
  br i1 %75, label %76, label %86, !dbg !767

; <label>:76:                                     ; preds = %71
  %77 = sitofp i32 %65 to double, !dbg !768
  %78 = fcmp ogt double %69, %77, !dbg !771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  br i1 %78, label %79, label %81, !dbg !772

; <label>:79:                                     ; preds = %76
  %80 = fptosi double %69 to i32, !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  br label %81, !dbg !774

; <label>:81:                                     ; preds = %79, %76
  %82 = phi i32 [ %80, %79 ], [ %65, %76 ], !dbg !775
  %83 = add nuw nsw i32 %64, 1, !dbg !776
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7, !dbg !777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  %84 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #7, !dbg !751
  %85 = icmp eq i32 %84, 0, !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  br i1 %85, label %87, label %63, !dbg !750, !llvm.loop !779

; <label>:86:                                     ; preds = %71, %68, %63
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #7, !dbg !782
  br label %113, !dbg !783

; <label>:87:                                     ; preds = %81, %60
  %88 = phi i32 [ 0, %60 ], [ %82, %81 ], !dbg !784
  %89 = phi i32 [ 0, %60 ], [ %83, %81 ], !dbg !785
  %90 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 4, !dbg !786
  %91 = load i32, i32* %90, align 4, !dbg !786, !tbaa !788
  %92 = icmp sgt i32 %91, 0, !dbg !789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  br i1 %92, label %93, label %114, !dbg !790

; <label>:93:                                     ; preds = %87
  %94 = mul nsw i32 %91, %89, !dbg !791
  %95 = icmp sgt i32 %88, %94, !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  br i1 %95, label %96, label %114, !dbg !793

; <label>:96:                                     ; preds = %93
  %97 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 5, !dbg !794
  %98 = load i32, i32* %97, align 8, !dbg !794, !tbaa !795
  %99 = icmp sgt i32 %88, %98, !dbg !796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !797
  br i1 %99, label %100, label %114, !dbg !797

; <label>:100:                                    ; preds = %96
  %101 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 3, !dbg !798
  %102 = load i32, i32* %101, align 8, !dbg !798, !tbaa !801
  %103 = icmp eq i32 %102, 0, !dbg !802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  br i1 %103, label %104, label %113, !dbg !803

; <label>:104:                                    ; preds = %100
  %105 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 9, !dbg !819
  %106 = load i32, i32* %105, align 8, !dbg !819, !tbaa !363
  %107 = icmp eq i32 %106, 0, !dbg !821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !822
  br i1 %107, label %108, label %109, !dbg !822

; <label>:108:                                    ; preds = %104
  tail call void @strbuf_free(%struct.strbuf_t* %3) #7, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  br label %109, !dbg !823

; <label>:109:                                    ; preds = %108, %104
  %110 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #7, !dbg !824
  %111 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %110) #7, !dbg !825
  %112 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0), i8* %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.60, i64 0, i64 0)) #7, !dbg !826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !828
  br label %113, !dbg !828

; <label>:113:                                    ; preds = %100, %109, %86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !832
  br label %172, !dbg !832

; <label>:114:                                    ; preds = %87, %93, %96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  %115 = icmp sgt i32 %88, 0, !dbg !834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !832
  br i1 %115, label %116, label %172, !dbg !832

; <label>:116:                                    ; preds = %114
  %117 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 1, !dbg !867
  %118 = load i32, i32* %117, align 8, !dbg !867, !tbaa !668
  %119 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 2, !dbg !868
  %120 = load i32, i32* %119, align 4, !dbg !868, !tbaa !382
  %121 = xor i32 %120, -1, !dbg !869
  %122 = add i32 %118, %121, !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !870
  %123 = icmp slt i32 %122, 1, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  br i1 %123, label %124, label %127, !dbg !872

; <label>:124:                                    ; preds = %116
  %125 = add nsw i32 %120, 1, !dbg !873
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %125) #7, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  %126 = load i32, i32* %119, align 4, !dbg !875, !tbaa !382
  br label %127, !dbg !874

; <label>:127:                                    ; preds = %116, %124
  %128 = phi i32 [ %120, %116 ], [ %126, %124 ], !dbg !875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !876
  %129 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 0, !dbg !877
  %130 = load i8*, i8** %129, align 8, !dbg !877, !tbaa !399
  %131 = add nsw i32 %128, 1, !dbg !875
  store i32 %131, i32* %119, align 4, !dbg !875, !tbaa !382
  %132 = sext i32 %128 to i64, !dbg !878
  %133 = getelementptr inbounds i8, i8* %130, i64 %132, !dbg !878
  store i8 91, i8* %133, align 1, !dbg !879, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !885
  br label %134, !dbg !886

; <label>:134:                                    ; preds = %153, %127
  %135 = phi i32 [ %155, %153 ], [ 1, %127 ]
  %136 = phi i32 [ %154, %153 ], [ 0, %127 ]
  %137 = icmp eq i32 %136, 0, !dbg !886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  br i1 %137, label %153, label %138, !dbg !890

; <label>:138:                                    ; preds = %134
  %139 = load i32, i32* %117, align 8, !dbg !899, !tbaa !668
  %140 = load i32, i32* %119, align 4, !dbg !900, !tbaa !382
  %141 = xor i32 %140, -1, !dbg !901
  %142 = add i32 %139, %141, !dbg !901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  %143 = icmp slt i32 %142, 1, !dbg !903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !904
  br i1 %143, label %144, label %147, !dbg !904

; <label>:144:                                    ; preds = %138
  %145 = add nsw i32 %140, 1, !dbg !905
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %145) #7, !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  %146 = load i32, i32* %119, align 4, !dbg !907, !tbaa !382
  br label %147, !dbg !906

; <label>:147:                                    ; preds = %144, %138
  %148 = phi i32 [ %140, %138 ], [ %146, %144 ], !dbg !907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  %149 = load i8*, i8** %129, align 8, !dbg !909, !tbaa !399
  %150 = add nsw i32 %148, 1, !dbg !907
  store i32 %150, i32* %119, align 4, !dbg !907, !tbaa !382
  %151 = sext i32 %148 to i64, !dbg !910
  %152 = getelementptr inbounds i8, i8* %149, i64 %151, !dbg !910
  store i8 44, i8* %152, align 1, !dbg !911, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !912
  br label %153, !dbg !913

; <label>:153:                                    ; preds = %134, %147
  %154 = phi i32 [ %136, %147 ], [ 1, %134 ], !dbg !914
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @lua_rawgeti(%struct.lua_State* %0, i32 -1, i32 %135) #7, !dbg !915
  tail call fastcc void @json_append_data(%struct.lua_State* %0, %struct.json_config_t* %1, i32 %46, %struct.strbuf_t* %3) #7, !dbg !916
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7, !dbg !917
  %155 = add nuw nsw i32 %135, 1, !dbg !918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !885
  %156 = icmp eq i32 %135, %88, !dbg !920
  br i1 %156, label %157, label %134, !dbg !885, !llvm.loop !921

; <label>:157:                                    ; preds = %153
  %158 = load i32, i32* %117, align 8, !dbg !932, !tbaa !668
  %159 = load i32, i32* %119, align 4, !dbg !933, !tbaa !382
  %160 = xor i32 %159, -1, !dbg !934
  %161 = add i32 %158, %160, !dbg !934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  %162 = icmp slt i32 %161, 1, !dbg !936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %162, label %163, label %166, !dbg !937

; <label>:163:                                    ; preds = %157
  %164 = add nsw i32 %159, 1, !dbg !938
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %164) #7, !dbg !939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  %165 = load i32, i32* %119, align 4, !dbg !940, !tbaa !382
  br label %166, !dbg !939

; <label>:166:                                    ; preds = %157, %163
  %167 = phi i32 [ %159, %157 ], [ %165, %163 ], !dbg !940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  %168 = load i8*, i8** %129, align 8, !dbg !942, !tbaa !399
  %169 = add nsw i32 %167, 1, !dbg !940
  store i32 %169, i32* %119, align 4, !dbg !940, !tbaa !382
  %170 = sext i32 %167 to i64, !dbg !943
  %171 = getelementptr inbounds i8, i8* %168, i64 %170, !dbg !943
  store i8 93, i8* %171, align 1, !dbg !944, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  br label %342, !dbg !947

; <label>:172:                                    ; preds = %113, %114
  %173 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 1, !dbg !969
  %174 = load i32, i32* %173, align 8, !dbg !969, !tbaa !668
  %175 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 2, !dbg !970
  %176 = load i32, i32* %175, align 4, !dbg !970, !tbaa !382
  %177 = xor i32 %176, -1, !dbg !971
  %178 = add i32 %174, %177, !dbg !971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  %179 = icmp slt i32 %178, 1, !dbg !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  br i1 %179, label %180, label %183, !dbg !974

; <label>:180:                                    ; preds = %172
  %181 = add nsw i32 %176, 1, !dbg !975
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %181) #7, !dbg !976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  %182 = load i32, i32* %175, align 4, !dbg !977, !tbaa !382
  br label %183, !dbg !976

; <label>:183:                                    ; preds = %180, %172
  %184 = phi i32 [ %176, %172 ], [ %182, %180 ], !dbg !977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  %185 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 0, !dbg !979
  %186 = load i8*, i8** %185, align 8, !dbg !979, !tbaa !399
  %187 = add nsw i32 %184, 1, !dbg !977
  store i32 %187, i32* %175, align 4, !dbg !977, !tbaa !382
  %188 = sext i32 %184 to i64, !dbg !980
  %189 = getelementptr inbounds i8, i8* %186, i64 %188, !dbg !980
  store i8 123, i8* %189, align 1, !dbg !981, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !982
  tail call void @lua_pushnil(%struct.lua_State* %0) #7, !dbg !983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !985
  %190 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #7, !dbg !986
  %191 = icmp eq i32 %190, 0, !dbg !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !985
  br i1 %191, label %275, label %192, !dbg !985

; <label>:192:                                    ; preds = %183
  %193 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 9
  br label %194, !dbg !985

; <label>:194:                                    ; preds = %192, %272
  %195 = phi i32 [ 0, %192 ], [ %213, %272 ]
  %196 = icmp eq i32 %195, 0, !dbg !988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  br i1 %196, label %212, label %197, !dbg !991

; <label>:197:                                    ; preds = %194
  %198 = load i32, i32* %173, align 8, !dbg !1000, !tbaa !668
  %199 = load i32, i32* %175, align 4, !dbg !1001, !tbaa !382
  %200 = xor i32 %199, -1, !dbg !1002
  %201 = add i32 %198, %200, !dbg !1002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1003
  %202 = icmp slt i32 %201, 1, !dbg !1004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1005
  br i1 %202, label %203, label %206, !dbg !1005

; <label>:203:                                    ; preds = %197
  %204 = add nsw i32 %199, 1, !dbg !1006
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %204) #7, !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  %205 = load i32, i32* %175, align 4, !dbg !1008, !tbaa !382
  br label %206, !dbg !1007

; <label>:206:                                    ; preds = %203, %197
  %207 = phi i32 [ %199, %197 ], [ %205, %203 ], !dbg !1008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  %208 = load i8*, i8** %185, align 8, !dbg !1010, !tbaa !399
  %209 = add nsw i32 %207, 1, !dbg !1008
  store i32 %209, i32* %175, align 4, !dbg !1008, !tbaa !382
  %210 = sext i32 %207 to i64, !dbg !1011
  %211 = getelementptr inbounds i8, i8* %208, i64 %210, !dbg !1011
  store i8 44, i8* %211, align 1, !dbg !1012, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1013
  br label %212, !dbg !1014

; <label>:212:                                    ; preds = %194, %206
  %213 = phi i32 [ %195, %206 ], [ 1, %194 ], !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %214 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -2) #7, !dbg !1016
  %215 = icmp eq i32 %214, 3, !dbg !1018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  br i1 %215, label %216, label %247, !dbg !1020

; <label>:216:                                    ; preds = %212
  %217 = load i32, i32* %173, align 8, !dbg !1030, !tbaa !668
  %218 = load i32, i32* %175, align 4, !dbg !1031, !tbaa !382
  %219 = xor i32 %218, -1, !dbg !1032
  %220 = add i32 %217, %219, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  %221 = icmp slt i32 %220, 1, !dbg !1034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  br i1 %221, label %222, label %225, !dbg !1035

; <label>:222:                                    ; preds = %216
  %223 = add nsw i32 %218, 1, !dbg !1036
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %223) #7, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  %224 = load i32, i32* %175, align 4, !dbg !1038, !tbaa !382
  br label %225, !dbg !1037

; <label>:225:                                    ; preds = %222, %216
  %226 = phi i32 [ %218, %216 ], [ %224, %222 ], !dbg !1038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  %227 = load i8*, i8** %185, align 8, !dbg !1040, !tbaa !399
  %228 = add nsw i32 %226, 1, !dbg !1038
  store i32 %228, i32* %175, align 4, !dbg !1038, !tbaa !382
  %229 = sext i32 %226 to i64, !dbg !1041
  %230 = getelementptr inbounds i8, i8* %227, i64 %229, !dbg !1041
  store i8 34, i8* %230, align 1, !dbg !1042, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1043
  tail call fastcc void @json_append_number(%struct.lua_State* %0, %struct.json_config_t* %1, %struct.strbuf_t* nonnull %3, i32 -2) #7, !dbg !1044
  %231 = load i32, i32* %173, align 8, !dbg !1054, !tbaa !668
  %232 = load i32, i32* %175, align 4, !dbg !1055, !tbaa !382
  %233 = xor i32 %232, -1, !dbg !1056
  %234 = add i32 %231, %233, !dbg !1056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1057
  %235 = icmp slt i32 %234, 2, !dbg !1058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  br i1 %235, label %236, label %239, !dbg !1059

; <label>:236:                                    ; preds = %225
  %237 = add nsw i32 %232, 2, !dbg !1060
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %237) #7, !dbg !1061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1061
  %238 = load i32, i32* %175, align 4, !dbg !1062, !tbaa !382
  br label %239, !dbg !1061

; <label>:239:                                    ; preds = %236, %225
  %240 = phi i32 [ %232, %225 ], [ %238, %236 ], !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1063
  %241 = load i8*, i8** %185, align 8, !dbg !1064, !tbaa !399
  %242 = sext i32 %240 to i64, !dbg !1065
  %243 = getelementptr inbounds i8, i8* %241, i64 %242, !dbg !1065
  %244 = tail call i8* @memcpy(i8* %243, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i64 2) #7, !dbg !1066
  %245 = load i32, i32* %175, align 4, !dbg !1067, !tbaa !382
  %246 = add nsw i32 %245, 2, !dbg !1067
  store i32 %246, i32* %175, align 4, !dbg !1067, !tbaa !382
  br label %272, !dbg !1068

; <label>:247:                                    ; preds = %212
  %248 = icmp eq i32 %214, 4, !dbg !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  br i1 %248, label %249, label %264, !dbg !1071

; <label>:249:                                    ; preds = %247
  tail call fastcc void @json_append_string(%struct.lua_State* %0, %struct.strbuf_t* %3, i32 -2) #7, !dbg !1072
  %250 = load i32, i32* %173, align 8, !dbg !1082, !tbaa !668
  %251 = load i32, i32* %175, align 4, !dbg !1083, !tbaa !382
  %252 = xor i32 %251, -1, !dbg !1084
  %253 = add i32 %250, %252, !dbg !1084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1085
  %254 = icmp slt i32 %253, 1, !dbg !1086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1087
  br i1 %254, label %255, label %258, !dbg !1087

; <label>:255:                                    ; preds = %249
  %256 = add nsw i32 %251, 1, !dbg !1088
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %256) #7, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1089
  %257 = load i32, i32* %175, align 4, !dbg !1090, !tbaa !382
  br label %258, !dbg !1089

; <label>:258:                                    ; preds = %255, %249
  %259 = phi i32 [ %251, %249 ], [ %257, %255 ], !dbg !1090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1091
  %260 = load i8*, i8** %185, align 8, !dbg !1092, !tbaa !399
  %261 = add nsw i32 %259, 1, !dbg !1090
  store i32 %261, i32* %175, align 4, !dbg !1090, !tbaa !382
  %262 = sext i32 %259 to i64, !dbg !1093
  %263 = getelementptr inbounds i8, i8* %260, i64 %262, !dbg !1093
  store i8 58, i8* %263, align 1, !dbg !1094, !tbaa !171
  br label %272, !dbg !1095

; <label>:264:                                    ; preds = %247
  %265 = load i32, i32* %193, align 8, !dbg !1103, !tbaa !363
  %266 = icmp eq i32 %265, 0, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1105
  br i1 %266, label %267, label %268, !dbg !1105

; <label>:267:                                    ; preds = %264
  tail call void @strbuf_free(%struct.strbuf_t* %3) #7, !dbg !1106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  br label %268, !dbg !1106

; <label>:268:                                    ; preds = %267, %264
  %269 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -2) #7, !dbg !1107
  %270 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %269) #7, !dbg !1108
  %271 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0), i8* %270, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62, i64 0, i64 0)) #7, !dbg !1109
  br label %272

; <label>:272:                                    ; preds = %268, %258, %239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call fastcc void @json_append_data(%struct.lua_State* %0, %struct.json_config_t* %1, i32 %46, %struct.strbuf_t* %3) #7, !dbg !1111
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #7, !dbg !1112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !985
  %273 = tail call i32 @lua_next(%struct.lua_State* %0, i32 -2) #7, !dbg !986
  %274 = icmp eq i32 %273, 0, !dbg !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !985
  br i1 %274, label %275, label %194, !dbg !985, !llvm.loop !1113

; <label>:275:                                    ; preds = %272, %183
  %276 = load i32, i32* %173, align 8, !dbg !1124, !tbaa !668
  %277 = load i32, i32* %175, align 4, !dbg !1125, !tbaa !382
  %278 = xor i32 %277, -1, !dbg !1126
  %279 = add i32 %276, %278, !dbg !1126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1127
  %280 = icmp slt i32 %279, 1, !dbg !1128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1129
  br i1 %280, label %281, label %284, !dbg !1129

; <label>:281:                                    ; preds = %275
  %282 = add nsw i32 %277, 1, !dbg !1130
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %282) #7, !dbg !1131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  %283 = load i32, i32* %175, align 4, !dbg !1132, !tbaa !382
  br label %284, !dbg !1131

; <label>:284:                                    ; preds = %275, %281
  %285 = phi i32 [ %277, %275 ], [ %283, %281 ], !dbg !1132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1133
  %286 = load i8*, i8** %185, align 8, !dbg !1134, !tbaa !399
  %287 = add nsw i32 %285, 1, !dbg !1132
  store i32 %287, i32* %175, align 4, !dbg !1132, !tbaa !382
  %288 = sext i32 %285 to i64, !dbg !1135
  %289 = getelementptr inbounds i8, i8* %286, i64 %288, !dbg !1135
  store i8 125, i8* %289, align 1, !dbg !1136, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1138
  br label %342

; <label>:290:                                    ; preds = %4
  %291 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 1, !dbg !1148
  %292 = load i32, i32* %291, align 8, !dbg !1148, !tbaa !668
  %293 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 2, !dbg !1149
  %294 = load i32, i32* %293, align 4, !dbg !1149, !tbaa !382
  %295 = xor i32 %294, -1, !dbg !1150
  %296 = add i32 %292, %295, !dbg !1150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1151
  %297 = icmp slt i32 %296, 4, !dbg !1152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1153
  br i1 %297, label %298, label %301, !dbg !1153

; <label>:298:                                    ; preds = %290
  %299 = add nsw i32 %294, 4, !dbg !1154
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %299) #7, !dbg !1155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1155
  %300 = load i32, i32* %293, align 4, !dbg !1156, !tbaa !382
  br label %301, !dbg !1155

; <label>:301:                                    ; preds = %290, %298
  %302 = phi i32 [ %294, %290 ], [ %300, %298 ], !dbg !1156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1157
  %303 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 0, !dbg !1158
  %304 = load i8*, i8** %303, align 8, !dbg !1158, !tbaa !399
  %305 = sext i32 %302 to i64, !dbg !1159
  %306 = getelementptr inbounds i8, i8* %304, i64 %305, !dbg !1159
  %307 = tail call i8* @memcpy(i8* %306, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4) #7, !dbg !1160
  %308 = load i32, i32* %293, align 4, !dbg !1161, !tbaa !382
  %309 = add nsw i32 %308, 4, !dbg !1161
  store i32 %309, i32* %293, align 4, !dbg !1161, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  br label %342, !dbg !1163

; <label>:310:                                    ; preds = %4
  %311 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -1) #7, !dbg !1164
  %312 = icmp eq i8* %311, null, !dbg !1166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1167
  br i1 %312, label %313, label %333, !dbg !1167

; <label>:313:                                    ; preds = %310
  %314 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 1, !dbg !1178
  %315 = load i32, i32* %314, align 8, !dbg !1178, !tbaa !668
  %316 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 2, !dbg !1179
  %317 = load i32, i32* %316, align 4, !dbg !1179, !tbaa !382
  %318 = xor i32 %317, -1, !dbg !1180
  %319 = add i32 %315, %318, !dbg !1180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1181
  %320 = icmp slt i32 %319, 4, !dbg !1182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1183
  br i1 %320, label %321, label %324, !dbg !1183

; <label>:321:                                    ; preds = %313
  %322 = add nsw i32 %317, 4, !dbg !1184
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %3, i32 %322) #7, !dbg !1185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  %323 = load i32, i32* %316, align 4, !dbg !1186, !tbaa !382
  br label %324, !dbg !1185

; <label>:324:                                    ; preds = %313, %321
  %325 = phi i32 [ %317, %313 ], [ %323, %321 ], !dbg !1186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1187
  %326 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %3, i64 0, i32 0, !dbg !1188
  %327 = load i8*, i8** %326, align 8, !dbg !1188, !tbaa !399
  %328 = sext i32 %325 to i64, !dbg !1189
  %329 = getelementptr inbounds i8, i8* %327, i64 %328, !dbg !1189
  %330 = tail call i8* @memcpy(i8* %329, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4) #7, !dbg !1190
  %331 = load i32, i32* %316, align 4, !dbg !1191, !tbaa !382
  %332 = add nsw i32 %331, 4, !dbg !1191
  store i32 %332, i32* %316, align 4, !dbg !1191, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1192
  br label %342, !dbg !1193

; <label>:333:                                    ; preds = %310, %4
  %334 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 9, !dbg !1200
  %335 = load i32, i32* %334, align 8, !dbg !1200, !tbaa !363
  %336 = icmp eq i32 %335, 0, !dbg !1201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1202
  br i1 %336, label %337, label %338, !dbg !1202

; <label>:337:                                    ; preds = %333
  tail call void @strbuf_free(%struct.strbuf_t* %3) #7, !dbg !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1203
  br label %338, !dbg !1203

; <label>:338:                                    ; preds = %333, %337
  %339 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #7, !dbg !1204
  %340 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %339) #7, !dbg !1205
  %341 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0), i8* %340, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0)) #7, !dbg !1206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  br label %342, !dbg !1208

; <label>:342:                                    ; preds = %166, %284, %22, %36, %338, %324, %301, %7, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  ret void, !dbg !1209
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
define internal fastcc void @json_append_string(%struct.lua_State*, %struct.strbuf_t*, i32) unnamed_addr #0 !dbg !1210 {
  %4 = alloca i64, align 8
  %5 = bitcast i64* %4 to i8*, !dbg !1224
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1224
  %6 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %2, i64* nonnull %4) #7, !dbg !1226
  %7 = load i64, i64* %4, align 8, !dbg !1228, !tbaa !475
  %8 = trunc i64 %7 to i32, !dbg !1228
  %9 = mul i32 %8, 6, !dbg !1228
  %10 = add i32 %9, 2, !dbg !1228
  %11 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %1, i64 0, i32 1, !dbg !1234
  %12 = load i32, i32* %11, align 8, !dbg !1234, !tbaa !668
  %13 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %1, i64 0, i32 2, !dbg !1235
  %14 = load i32, i32* %13, align 4, !dbg !1235, !tbaa !382
  %15 = xor i32 %14, -1, !dbg !1236
  %16 = add i32 %12, %15, !dbg !1236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1237
  %17 = icmp slt i32 %16, %10, !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  br i1 %17, label %18, label %21, !dbg !1239

; <label>:18:                                     ; preds = %3
  %19 = add nsw i32 %10, %14, !dbg !1240
  call void @strbuf_resize(%struct.strbuf_t* nonnull %1, i32 %19) #7, !dbg !1241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1241
  %20 = load i32, i32* %13, align 4, !dbg !1242, !tbaa !382
  br label %21, !dbg !1241

; <label>:21:                                     ; preds = %3, %18
  %22 = phi i32 [ %14, %3 ], [ %20, %18 ], !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1248
  %23 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %1, i64 0, i32 0, !dbg !1251
  %24 = load i8*, i8** %23, align 8, !dbg !1251, !tbaa !399
  %25 = add nsw i32 %22, 1, !dbg !1242
  store i32 %25, i32* %13, align 4, !dbg !1242, !tbaa !382
  %26 = sext i32 %22 to i64, !dbg !1252
  %27 = getelementptr inbounds i8, i8* %24, i64 %26, !dbg !1252
  store i8 34, i8* %27, align 1, !dbg !1253, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1256
  %28 = load i64, i64* %4, align 8, !dbg !1258, !tbaa !475
  %29 = icmp eq i64 %28, 0, !dbg !1260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1261
  br i1 %29, label %49, label %30, !dbg !1261

; <label>:30:                                     ; preds = %21, %45
  %31 = phi i64 [ %46, %45 ], [ 0, %21 ]
  %32 = getelementptr inbounds i8, i8* %6, i64 %31, !dbg !1262
  %33 = load i8, i8* %32, align 1, !dbg !1262, !tbaa !171
  %34 = zext i8 %33 to i64, !dbg !1264
  %35 = getelementptr inbounds [256 x i8*], [256 x i8*]* bitcast (<{ [128 x i8*], [128 x i8*] }>* @char2escape to [256 x i8*]*), i64 0, i64 %34, !dbg !1264
  %36 = load i8*, i8** %35, align 8, !dbg !1264, !tbaa !1265
  %37 = icmp eq i8* %36, null, !dbg !1267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1269
  br i1 %37, label %39, label %38, !dbg !1269

; <label>:38:                                     ; preds = %30
  call void @strbuf_append_string(%struct.strbuf_t* %1, i8* nonnull %36) #7, !dbg !1270
  br label %45, !dbg !1270

; <label>:39:                                     ; preds = %30
  %40 = load i8*, i8** %23, align 8, !dbg !1274, !tbaa !399
  %41 = load i32, i32* %13, align 4, !dbg !1275, !tbaa !382
  %42 = add nsw i32 %41, 1, !dbg !1275
  store i32 %42, i32* %13, align 4, !dbg !1275, !tbaa !382
  %43 = sext i32 %41 to i64, !dbg !1276
  %44 = getelementptr inbounds i8, i8* %40, i64 %43, !dbg !1276
  store i8 %33, i8* %44, align 1, !dbg !1277, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1278
  br label %45

; <label>:45:                                     ; preds = %38, %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %46 = add nuw i64 %31, 1, !dbg !1279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1280
  %47 = load i64, i64* %4, align 8, !dbg !1258, !tbaa !475
  %48 = icmp ugt i64 %47, %46, !dbg !1260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1261
  br i1 %48, label %30, label %49, !dbg !1261, !llvm.loop !1281

; <label>:49:                                     ; preds = %45, %21
  %50 = load i8*, i8** %23, align 8, !dbg !1286, !tbaa !399
  %51 = load i32, i32* %13, align 4, !dbg !1287, !tbaa !382
  %52 = add nsw i32 %51, 1, !dbg !1287
  store i32 %52, i32* %13, align 4, !dbg !1287, !tbaa !382
  %53 = sext i32 %51 to i64, !dbg !1288
  %54 = getelementptr inbounds i8, i8* %50, i64 %53, !dbg !1288
  store i8 34, i8* %54, align 1, !dbg !1289, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1290
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !1291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1291
  ret void, !dbg !1291
}

; Function Attrs: noredzone nounwind
define internal fastcc void @json_append_number(%struct.lua_State*, %struct.json_config_t* nocapture readonly, %struct.strbuf_t*, i32) unnamed_addr #0 !dbg !1292 {
  %5 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 %3) #7, !dbg !1306
  %6 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 7, !dbg !1308
  %7 = load i32, i32* %6, align 8, !dbg !1308, !tbaa !1310
  %8 = icmp eq i32 %7, 0, !dbg !1311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1312
  br i1 %8, label %9, label %24, !dbg !1312

; <label>:9:                                      ; preds = %4
  %10 = tail call i32 @__fpclassifyd(double %5) #7, !dbg !1313
  %11 = icmp eq i32 %10, 1, !dbg !1313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1316
  br i1 %11, label %15, label %12, !dbg !1316

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 @__fpclassifyd(double %5) #7, !dbg !1317
  %14 = icmp eq i32 %13, 0, !dbg !1317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1318
  br i1 %14, label %15, label %70, !dbg !1318

; <label>:15:                                     ; preds = %12, %9
  %16 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 9, !dbg !1325
  %17 = load i32, i32* %16, align 8, !dbg !1325, !tbaa !363
  %18 = icmp eq i32 %17, 0, !dbg !1326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1327
  br i1 %18, label %19, label %20, !dbg !1327

; <label>:19:                                     ; preds = %15
  tail call void @strbuf_free(%struct.strbuf_t* %2) #7, !dbg !1328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1328
  br label %20, !dbg !1328

; <label>:20:                                     ; preds = %15, %19
  %21 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %3) #7, !dbg !1329
  %22 = tail call i8* @lua_typename(%struct.lua_State* %0, i32 %21) #7, !dbg !1330
  %23 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0), i8* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i64 0, i64 0)) #7, !dbg !1331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1333
  br label %70, !dbg !1333

; <label>:24:                                     ; preds = %4
  %25 = icmp eq i32 %7, 1, !dbg !1334
  %26 = tail call i32 @__fpclassifyd(double %5) #7, !dbg !1336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  br i1 %25, label %27, label %47, !dbg !1339

; <label>:27:                                     ; preds = %24
  %28 = icmp eq i32 %26, 0, !dbg !1340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1343
  br i1 %28, label %29, label %70, !dbg !1343

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 1, !dbg !1354
  %31 = load i32, i32* %30, align 8, !dbg !1354, !tbaa !668
  %32 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 2, !dbg !1355
  %33 = load i32, i32* %32, align 4, !dbg !1355, !tbaa !382
  %34 = xor i32 %33, -1, !dbg !1356
  %35 = add i32 %31, %34, !dbg !1356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  %36 = icmp slt i32 %35, 3, !dbg !1358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1359
  br i1 %36, label %37, label %40, !dbg !1359

; <label>:37:                                     ; preds = %29
  %38 = add nsw i32 %33, 3, !dbg !1360
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %2, i32 %38) #7, !dbg !1361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1361
  %39 = load i32, i32* %32, align 4, !dbg !1362, !tbaa !382
  br label %40, !dbg !1361

; <label>:40:                                     ; preds = %29, %37
  %41 = phi i32 [ %33, %29 ], [ %39, %37 ], !dbg !1362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %42 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 0, !dbg !1364
  %43 = load i8*, i8** %42, align 8, !dbg !1364, !tbaa !399
  %44 = sext i32 %41 to i64, !dbg !1365
  %45 = getelementptr inbounds i8, i8* %43, i64 %44, !dbg !1365
  %46 = tail call i8* @memcpy(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i64 3) #7, !dbg !1366
  br label %90, !dbg !1367

; <label>:47:                                     ; preds = %24
  %48 = icmp eq i32 %26, 1, !dbg !1368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1369
  br i1 %48, label %52, label %49, !dbg !1369

; <label>:49:                                     ; preds = %47
  %50 = tail call i32 @__fpclassifyd(double %5) #7, !dbg !1370
  %51 = icmp eq i32 %50, 0, !dbg !1370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1371
  br i1 %51, label %52, label %70, !dbg !1371

; <label>:52:                                     ; preds = %49, %47
  %53 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 1, !dbg !1382
  %54 = load i32, i32* %53, align 8, !dbg !1382, !tbaa !668
  %55 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 2, !dbg !1383
  %56 = load i32, i32* %55, align 4, !dbg !1383, !tbaa !382
  %57 = xor i32 %56, -1, !dbg !1384
  %58 = add i32 %54, %57, !dbg !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1385
  %59 = icmp slt i32 %58, 4, !dbg !1386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1387
  br i1 %59, label %60, label %63, !dbg !1387

; <label>:60:                                     ; preds = %52
  %61 = add nsw i32 %56, 4, !dbg !1388
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %2, i32 %61) #7, !dbg !1389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  %62 = load i32, i32* %55, align 4, !dbg !1390, !tbaa !382
  br label %63, !dbg !1389

; <label>:63:                                     ; preds = %52, %60
  %64 = phi i32 [ %56, %52 ], [ %62, %60 ], !dbg !1390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  %65 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 0, !dbg !1392
  %66 = load i8*, i8** %65, align 8, !dbg !1392, !tbaa !399
  %67 = sext i32 %64 to i64, !dbg !1393
  %68 = getelementptr inbounds i8, i8* %66, i64 %67, !dbg !1393
  %69 = tail call i8* @memcpy(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4) #7, !dbg !1394
  br label %90, !dbg !1395

; <label>:70:                                     ; preds = %27, %49, %12, %20
  %71 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 1, !dbg !1401
  %72 = load i32, i32* %71, align 8, !dbg !1401, !tbaa !668
  %73 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 2, !dbg !1402
  %74 = load i32, i32* %73, align 4, !dbg !1402, !tbaa !382
  %75 = xor i32 %74, -1, !dbg !1403
  %76 = add i32 %72, %75, !dbg !1403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1404
  %77 = icmp slt i32 %76, 32, !dbg !1405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1406
  br i1 %77, label %78, label %81, !dbg !1406

; <label>:78:                                     ; preds = %70
  %79 = add nsw i32 %74, 32, !dbg !1407
  tail call void @strbuf_resize(%struct.strbuf_t* nonnull %2, i32 %79) #7, !dbg !1408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1408
  %80 = load i32, i32* %73, align 4, !dbg !1409, !tbaa !382
  br label %81, !dbg !1408

; <label>:81:                                     ; preds = %70, %78
  %82 = phi i32 [ %74, %70 ], [ %80, %78 ], !dbg !1409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1416
  %83 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %2, i64 0, i32 0, !dbg !1418
  %84 = load i8*, i8** %83, align 8, !dbg !1418, !tbaa !399
  %85 = sext i32 %82 to i64, !dbg !1419
  %86 = getelementptr inbounds i8, i8* %84, i64 %85, !dbg !1419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1420
  %87 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %1, i64 0, i32 8, !dbg !1421
  %88 = load i32, i32* %87, align 4, !dbg !1421, !tbaa !1422
  %89 = tail call i32 @fpconv_g_fmt(i8* %86, double %5, i32 %88) #7, !dbg !1423
  br label %90, !dbg !1432

; <label>:90:                                     ; preds = %81, %63, %40
  %91 = phi i32* [ %73, %81 ], [ %55, %63 ], [ %32, %40 ]
  %92 = phi i32 [ %89, %81 ], [ 4, %63 ], [ 3, %40 ]
  %93 = load i32, i32* %91, align 4, !dbg !1433, !tbaa !382
  %94 = add nsw i32 %93, %92, !dbg !1433
  store i32 %94, i32* %91, align 4, !dbg !1433, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1432
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
  %7 = load %struct.json_config_t*, %struct.json_config_t** %6, align 8, !dbg !1474, !tbaa !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1476
  %8 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %0, i64 0, i32 1, !dbg !1477
  %9 = load i8*, i8** %8, align 8, !dbg !1477, !tbaa !472
  %10 = load i8, i8* %9, align 1, !dbg !1479, !tbaa !171
  %11 = zext i8 %10 to i64, !dbg !1480
  %12 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %7, i64 0, i32 0, i64 %11, !dbg !1480
  %13 = load i32, i32* %12, align 4, !dbg !1480, !tbaa !171
  %14 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 0, !dbg !1481
  store i32 %13, i32* %14, align 8, !dbg !1482, !tbaa !496
  %15 = icmp eq i32 %13, 11, !dbg !1483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1485
  br i1 %15, label %16, label %24, !dbg !1485

; <label>:16:                                     ; preds = %2, %16
  %17 = phi i8* [ %18, %16 ], [ %9, %2 ]
  %18 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1486
  store i8* %18, i8** %8, align 8, !dbg !1486, !tbaa !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1476
  %19 = load i8, i8* %18, align 1, !dbg !1479, !tbaa !171
  %20 = zext i8 %19 to i64, !dbg !1480
  %21 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %7, i64 0, i32 0, i64 %20, !dbg !1480
  %22 = load i32, i32* %21, align 4, !dbg !1480, !tbaa !171
  store i32 %22, i32* %14, align 8, !dbg !1482, !tbaa !496
  %23 = icmp eq i32 %22, 11, !dbg !1483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1485
  br i1 %23, label %16, label %24, !dbg !1485, !llvm.loop !1487

; <label>:24:                                     ; preds = %16, %2
  %25 = phi i8* [ %9, %2 ], [ %18, %16 ]
  %26 = phi i8 [ %10, %2 ], [ %19, %16 ], !dbg !1479
  %27 = phi i32 [ %13, %2 ], [ %22, %16 ], !dbg !1480
  %28 = ptrtoint i8* %25 to i64, !dbg !1489
  %29 = bitcast %struct.json_parse_t* %0 to i64*, !dbg !1490
  %30 = load i64, i64* %29, align 8, !dbg !1490, !tbaa !465
  %31 = sub i64 %28, %30, !dbg !1489
  %32 = trunc i64 %31 to i32, !dbg !1491
  %33 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 1, !dbg !1492
  store i32 %32, i32* %33, align 4, !dbg !1493, !tbaa !527
  %34 = icmp eq i32 %27, 12, !dbg !1494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1496
  br i1 %34, label %35, label %39, !dbg !1496

; <label>:35:                                     ; preds = %24
  store i32 12, i32* %14, align 8, !dbg !1509, !tbaa !496
  %36 = sub i64 %28, %30, !dbg !1510
  %37 = trunc i64 %36 to i32, !dbg !1511
  store i32 %37, i32* %33, align 4, !dbg !1512, !tbaa !527
  %38 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1513
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i64 0, i64 0), i8** %38, align 8, !dbg !1514, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1515
  br label %323, !dbg !1516

; <label>:39:                                     ; preds = %24
  %40 = icmp eq i32 %27, 10, !dbg !1517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  br i1 %40, label %323, label %41, !dbg !1519

; <label>:41:                                     ; preds = %39
  %42 = icmp eq i32 %27, 13, !dbg !1520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1522
  br i1 %42, label %45, label %43, !dbg !1522

; <label>:43:                                     ; preds = %41
  %44 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1523
  store i8* %44, i8** %8, align 8, !dbg !1523, !tbaa !472
  br label %323, !dbg !1525

; <label>:45:                                     ; preds = %41
  %46 = icmp eq i8 %26, 34, !dbg !1526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  br i1 %46, label %47, label %229, !dbg !1527

; <label>:47:                                     ; preds = %45
  %48 = load i8, i8* %25, align 1, !dbg !1531, !tbaa !171
  %49 = icmp eq i8 %48, 34, !dbg !1531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1531
  br i1 %49, label %51, label %50, !dbg !1531

; <label>:50:                                     ; preds = %47
  tail call void @__assert_func(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.68, i64 0, i64 0), i32 891, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.json_next_string_token, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i64 0, i64 0)) #9, !dbg !1531
  unreachable

; <label>:51:                                     ; preds = %47
  %52 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1532
  store i8* %52, i8** %8, align 8, !dbg !1532, !tbaa !472
  %53 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %0, i64 0, i32 2, !dbg !1533
  %54 = load %struct.strbuf_t*, %struct.strbuf_t** %53, align 8, !dbg !1533, !tbaa !488
  %55 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %54, i64 0, i32 2, !dbg !1536
  store i32 0, i32* %55, align 4, !dbg !1537, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1539
  %56 = load i8, i8* %52, align 1, !dbg !1540, !tbaa !171
  %57 = icmp eq i8 %56, 34, !dbg !1542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1539
  br i1 %57, label %212, label %58, !dbg !1539

; <label>:58:                                     ; preds = %51
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  br label %63, !dbg !1539

; <label>:63:                                     ; preds = %203, %58
  %64 = phi i8* [ %52, %58 ], [ %204, %203 ]
  %65 = phi i8 [ %56, %58 ], [ %205, %203 ]
  %66 = icmp eq i8 %65, 0, !dbg !1543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1545
  br i1 %66, label %67, label %73, !dbg !1545

; <label>:67:                                     ; preds = %63
  %68 = ptrtoint i8* %64 to i64, !dbg !1539
  store i32 12, i32* %14, align 8, !dbg !1551, !tbaa !496
  %69 = load i64, i64* %29, align 8, !dbg !1552, !tbaa !465
  %70 = sub i64 %68, %69, !dbg !1553
  %71 = trunc i64 %70 to i32, !dbg !1554
  store i32 %71, i32* %33, align 4, !dbg !1555, !tbaa !527
  %72 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1556
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.70, i64 0, i64 0), i8** %72, align 8, !dbg !1557, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1558
  br label %228, !dbg !1559

; <label>:73:                                     ; preds = %63
  %74 = icmp eq i8 %65, 92, !dbg !1560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1561
  br i1 %74, label %75, label %191, !dbg !1561

; <label>:75:                                     ; preds = %73
  %76 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !1562
  %77 = load i8, i8* %76, align 1, !dbg !1563, !tbaa !171
  %78 = zext i8 %77 to i64, !dbg !1564
  %79 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %7, i64 0, i32 1, i64 %78, !dbg !1564
  %80 = load i8, i8* %79, align 1, !dbg !1564, !tbaa !171
  %81 = icmp eq i8 %80, 117, !dbg !1565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1566
  br i1 %81, label %82, label %182, !dbg !1566

; <label>:82:                                     ; preds = %75
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %59) #8, !dbg !1568
  %83 = getelementptr inbounds i8, i8* %64, i64 2, !dbg !1570
  %84 = call fastcc i32 @decode_hex4(i8* nonnull %83) #7, !dbg !1571
  %85 = icmp slt i32 %84, 0, !dbg !1573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1575
  br i1 %85, label %175, label %86, !dbg !1575

; <label>:86:                                     ; preds = %82
  %87 = and i32 %84, 63488, !dbg !1576
  %88 = icmp eq i32 %87, 55296, !dbg !1578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1579
  br i1 %88, label %89, label %114, !dbg !1579

; <label>:89:                                     ; preds = %86
  %90 = and i32 %84, 1024, !dbg !1580
  %91 = icmp eq i32 %90, 0, !dbg !1580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1583
  br i1 %91, label %92, label %175, !dbg !1583

; <label>:92:                                     ; preds = %89
  %93 = load i8*, i8** %8, align 8, !dbg !1584, !tbaa !472
  %94 = getelementptr inbounds i8, i8* %93, i64 6, !dbg !1586
  %95 = load i8, i8* %94, align 1, !dbg !1587, !tbaa !171
  %96 = icmp eq i8 %95, 92, !dbg !1588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1589
  br i1 %96, label %97, label %175, !dbg !1589

; <label>:97:                                     ; preds = %92
  %98 = getelementptr inbounds i8, i8* %93, i64 7, !dbg !1590
  %99 = load i8, i8* %98, align 1, !dbg !1591, !tbaa !171
  %100 = icmp eq i8 %99, 117, !dbg !1592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1593
  br i1 %100, label %101, label %175, !dbg !1593

; <label>:101:                                    ; preds = %97
  %102 = getelementptr inbounds i8, i8* %93, i64 8, !dbg !1594
  %103 = call fastcc i32 @decode_hex4(i8* nonnull %102) #7, !dbg !1595
  %104 = icmp slt i32 %103, 0, !dbg !1597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1599
  br i1 %104, label %175, label %105, !dbg !1599

; <label>:105:                                    ; preds = %101
  %106 = and i32 %103, 64512, !dbg !1600
  %107 = icmp eq i32 %106, 56320, !dbg !1602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1603
  br i1 %107, label %108, label %175, !dbg !1603

; <label>:108:                                    ; preds = %105
  %109 = shl i32 %84, 10, !dbg !1604
  %110 = and i32 %109, 1047552, !dbg !1604
  %111 = and i32 %103, 1023, !dbg !1605
  %112 = or i32 %111, %110, !dbg !1606
  %113 = add nuw nsw i32 %112, 65536, !dbg !1607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1608
  br label %114, !dbg !1608

; <label>:114:                                    ; preds = %108, %86
  %115 = phi i32 [ %113, %108 ], [ %84, %86 ], !dbg !1609
  %116 = phi i64 [ 12, %108 ], [ 6, %86 ]
  %117 = icmp slt i32 %115, 128, !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1621
  br i1 %117, label %118, label %120, !dbg !1621

; <label>:118:                                    ; preds = %114
  %119 = trunc i32 %115 to i8, !dbg !1622
  store i8 %119, i8* %59, align 1, !dbg !1624, !tbaa !171
  br label %160, !dbg !1625

; <label>:120:                                    ; preds = %114
  %121 = icmp slt i32 %115, 2048, !dbg !1626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1628
  br i1 %121, label %122, label %129, !dbg !1628

; <label>:122:                                    ; preds = %120
  %123 = lshr i32 %115, 6, !dbg !1629
  %124 = trunc i32 %123 to i8, !dbg !1631
  %125 = or i8 %124, -64, !dbg !1631
  store i8 %125, i8* %59, align 1, !dbg !1632, !tbaa !171
  %126 = trunc i32 %115 to i8, !dbg !1633
  %127 = and i8 %126, 63, !dbg !1633
  %128 = or i8 %127, -128, !dbg !1633
  store i8 %128, i8* %60, align 1, !dbg !1634, !tbaa !171
  br label %160, !dbg !1635

; <label>:129:                                    ; preds = %120
  %130 = icmp slt i32 %115, 65536, !dbg !1636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1638
  br i1 %130, label %131, label %142, !dbg !1638

; <label>:131:                                    ; preds = %129
  %132 = lshr i32 %115, 12, !dbg !1639
  %133 = trunc i32 %132 to i8, !dbg !1641
  %134 = or i8 %133, -32, !dbg !1641
  store i8 %134, i8* %59, align 1, !dbg !1642, !tbaa !171
  %135 = lshr i32 %115, 6, !dbg !1643
  %136 = trunc i32 %135 to i8, !dbg !1644
  %137 = and i8 %136, 63, !dbg !1644
  %138 = or i8 %137, -128, !dbg !1644
  store i8 %138, i8* %60, align 1, !dbg !1645, !tbaa !171
  %139 = trunc i32 %115 to i8, !dbg !1646
  %140 = and i8 %139, 63, !dbg !1646
  %141 = or i8 %140, -128, !dbg !1646
  store i8 %141, i8* %61, align 1, !dbg !1647, !tbaa !171
  br label %160, !dbg !1648

; <label>:142:                                    ; preds = %129
  %143 = icmp slt i32 %115, 2097152, !dbg !1649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1651
  br i1 %143, label %144, label %159, !dbg !1651

; <label>:144:                                    ; preds = %142
  %145 = lshr i32 %115, 18, !dbg !1652
  %146 = trunc i32 %145 to i8, !dbg !1654
  %147 = or i8 %146, -16, !dbg !1654
  store i8 %147, i8* %59, align 1, !dbg !1655, !tbaa !171
  %148 = lshr i32 %115, 12, !dbg !1656
  %149 = trunc i32 %148 to i8, !dbg !1657
  %150 = and i8 %149, 63, !dbg !1657
  %151 = or i8 %150, -128, !dbg !1657
  store i8 %151, i8* %60, align 1, !dbg !1658, !tbaa !171
  %152 = lshr i32 %115, 6, !dbg !1659
  %153 = trunc i32 %152 to i8, !dbg !1660
  %154 = and i8 %153, 63, !dbg !1660
  %155 = or i8 %154, -128, !dbg !1660
  store i8 %155, i8* %61, align 1, !dbg !1661, !tbaa !171
  %156 = trunc i32 %115 to i8, !dbg !1662
  %157 = and i8 %156, 63, !dbg !1662
  %158 = or i8 %157, -128, !dbg !1662
  store i8 %158, i8* %62, align 1, !dbg !1663, !tbaa !171
  br label %160, !dbg !1664

; <label>:159:                                    ; preds = %142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1668
  br label %175, !dbg !1669

; <label>:160:                                    ; preds = %144, %131, %122, %118
  %161 = phi i32 [ 4, %144 ], [ 3, %131 ], [ 2, %122 ], [ 1, %118 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1668
  %162 = load %struct.strbuf_t*, %struct.strbuf_t** %53, align 8, !dbg !1672, !tbaa !488
  %163 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %162, i64 0, i32 0, !dbg !1682
  %164 = load i8*, i8** %163, align 8, !dbg !1682, !tbaa !399
  %165 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %162, i64 0, i32 2, !dbg !1683
  %166 = load i32, i32* %165, align 4, !dbg !1683, !tbaa !382
  %167 = sext i32 %166 to i64, !dbg !1684
  %168 = getelementptr inbounds i8, i8* %164, i64 %167, !dbg !1684
  %169 = zext i32 %161 to i64, !dbg !1685
  %170 = call i8* @memcpy(i8* %168, i8* nonnull %59, i64 %169) #7, !dbg !1686
  %171 = load i32, i32* %165, align 4, !dbg !1687, !tbaa !382
  %172 = add nsw i32 %171, %161, !dbg !1687
  store i32 %172, i32* %165, align 4, !dbg !1687, !tbaa !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1688
  %173 = load i8*, i8** %8, align 8, !dbg !1689, !tbaa !472
  %174 = getelementptr inbounds i8, i8* %173, i64 %116, !dbg !1689
  store i8* %174, i8** %8, align 8, !dbg !1689, !tbaa !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1690
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %59) #8, !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  br label %203, !dbg !1692

; <label>:175:                                    ; preds = %105, %101, %92, %97, %89, %82, %159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1671
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %59) #8, !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1692
  store i32 12, i32* %14, align 8, !dbg !1697, !tbaa !496
  %176 = bitcast i8** %8 to i64*, !dbg !1698
  %177 = load i64, i64* %176, align 8, !dbg !1698, !tbaa !472
  %178 = load i64, i64* %29, align 8, !dbg !1699, !tbaa !465
  %179 = sub i64 %177, %178, !dbg !1700
  %180 = trunc i64 %179 to i32, !dbg !1701
  store i32 %180, i32* %33, align 4, !dbg !1702, !tbaa !527
  %181 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1703
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.71, i64 0, i64 0), i8** %181, align 8, !dbg !1704, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1705
  br label %228, !dbg !1706

; <label>:182:                                    ; preds = %75
  %183 = icmp eq i8 %80, 0, !dbg !1707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1709
  br i1 %183, label %184, label %190, !dbg !1709

; <label>:184:                                    ; preds = %182
  %185 = ptrtoint i8* %64 to i64, !dbg !1539
  store i32 12, i32* %14, align 8, !dbg !1715, !tbaa !496
  %186 = load i64, i64* %29, align 8, !dbg !1716, !tbaa !465
  %187 = sub i64 %185, %186, !dbg !1717
  %188 = trunc i64 %187 to i32, !dbg !1718
  store i32 %188, i32* %33, align 4, !dbg !1719, !tbaa !527
  %189 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1720
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.72, i64 0, i64 0), i8** %189, align 8, !dbg !1721, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1722
  br label %228, !dbg !1723

; <label>:190:                                    ; preds = %182
  store i8* %76, i8** %8, align 8, !dbg !1724, !tbaa !472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1725
  br label %191, !dbg !1725

; <label>:191:                                    ; preds = %190, %73
  %192 = phi i8 [ %80, %190 ], [ %65, %73 ], !dbg !1726
  %193 = load %struct.strbuf_t*, %struct.strbuf_t** %53, align 8, !dbg !1727, !tbaa !488
  %194 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %193, i64 0, i32 0, !dbg !1731
  %195 = load i8*, i8** %194, align 8, !dbg !1731, !tbaa !399
  %196 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %193, i64 0, i32 2, !dbg !1732
  %197 = load i32, i32* %196, align 4, !dbg !1733, !tbaa !382
  %198 = add nsw i32 %197, 1, !dbg !1733
  store i32 %198, i32* %196, align 4, !dbg !1733, !tbaa !382
  %199 = sext i32 %197 to i64, !dbg !1734
  %200 = getelementptr inbounds i8, i8* %195, i64 %199, !dbg !1734
  store i8 %192, i8* %200, align 1, !dbg !1735, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1736
  %201 = load i8*, i8** %8, align 8, !dbg !1737, !tbaa !472
  %202 = getelementptr inbounds i8, i8* %201, i64 1, !dbg !1737
  store i8* %202, i8** %8, align 8, !dbg !1737, !tbaa !472
  br label %203, !dbg !1539

; <label>:203:                                    ; preds = %191, %160
  %204 = phi i8* [ %202, %191 ], [ %174, %160 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1671
  %205 = load i8, i8* %204, align 1, !dbg !1540, !tbaa !171
  %206 = icmp eq i8 %205, 34, !dbg !1542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1539
  br i1 %206, label %207, label %63, !dbg !1539, !llvm.loop !1738

; <label>:207:                                    ; preds = %203
  %208 = load %struct.strbuf_t*, %struct.strbuf_t** %53, align 8, !dbg !1741, !tbaa !488
  %209 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %208, i64 0, i32 2
  %210 = load i32, i32* %209, align 4, !dbg !1742, !tbaa !382
  %211 = sext i32 %210 to i64, !dbg !1747
  br label %212, !dbg !1747

; <label>:212:                                    ; preds = %207, %51
  %213 = phi i64 [ 0, %51 ], [ %211, %207 ]
  %214 = phi %struct.strbuf_t* [ %54, %51 ], [ %208, %207 ], !dbg !1741
  %215 = phi i8* [ %52, %51 ], [ %204, %207 ], !dbg !1748
  %216 = getelementptr inbounds i8, i8* %215, i64 1, !dbg !1747
  store i8* %216, i8** %8, align 8, !dbg !1747, !tbaa !472
  %217 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %214, i64 0, i32 0, !dbg !1750
  %218 = load i8*, i8** %217, align 8, !dbg !1750, !tbaa !399
  %219 = getelementptr inbounds i8, i8* %218, i64 %213, !dbg !1751
  store i8 0, i8* %219, align 1, !dbg !1752, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1753
  store i32 4, i32* %14, align 8, !dbg !1754, !tbaa !496
  %220 = load %struct.strbuf_t*, %struct.strbuf_t** %53, align 8, !dbg !1755, !tbaa !488
  %221 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 3, !dbg !1756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1760
  %222 = getelementptr inbounds %struct.strbuf_t, %struct.strbuf_t* %220, i64 0, i32 2, !dbg !1761
  %223 = load i32, i32* %222, align 4, !dbg !1761, !tbaa !382
  store i32 %223, i32* %221, align 4, !dbg !1762, !tbaa !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1763
  %224 = bitcast %struct.strbuf_t* %220 to i64*, !dbg !1764
  %225 = load i64, i64* %224, align 8, !dbg !1764, !tbaa !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1765
  %226 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1766
  %227 = bitcast i8** %226 to i64*, !dbg !1767
  store i64 %225, i64* %227, align 8, !dbg !1767, !tbaa !171
  br label %228, !dbg !1768

; <label>:228:                                    ; preds = %67, %175, %184, %212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1768
  br label %323, !dbg !1769

; <label>:229:                                    ; preds = %45
  %230 = icmp eq i8 %26, 45, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1772
  br i1 %230, label %234, label %231, !dbg !1772

; <label>:231:                                    ; preds = %229
  %232 = add i8 %26, -48, !dbg !1773
  %233 = icmp ult i8 %232, 10, !dbg !1773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1773
  br i1 %233, label %234, label %267, !dbg !1773

; <label>:234:                                    ; preds = %231, %229
  %235 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %7, i64 0, i32 10, !dbg !1774
  %236 = load i32, i32* %235, align 4, !dbg !1774, !tbaa !1777
  %237 = icmp eq i32 %236, 0, !dbg !1778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1779
  br i1 %237, label %238, label %250, !dbg !1779

; <label>:238:                                    ; preds = %234
  %239 = tail call fastcc i32 @json_is_invalid_number(%struct.json_parse_t* nonnull %0) #6, !dbg !1780
  %240 = icmp eq i32 %239, 0, !dbg !1780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1781
  br i1 %240, label %241, label %243, !dbg !1781

; <label>:241:                                    ; preds = %238
  %242 = load i8*, i8** %8, align 8, !dbg !1782, !tbaa !472
  br label %250, !dbg !1781

; <label>:243:                                    ; preds = %238
  store i32 12, i32* %14, align 8, !dbg !1794, !tbaa !496
  %244 = bitcast i8** %8 to i64*, !dbg !1795
  %245 = load i64, i64* %244, align 8, !dbg !1795, !tbaa !472
  %246 = load i64, i64* %29, align 8, !dbg !1796, !tbaa !465
  %247 = sub i64 %245, %246, !dbg !1797
  %248 = trunc i64 %247 to i32, !dbg !1798
  store i32 %248, i32* %33, align 4, !dbg !1799, !tbaa !527
  %249 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1800
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0), i8** %249, align 8, !dbg !1801, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1802
  br label %323, !dbg !1803

; <label>:250:                                    ; preds = %241, %234
  %251 = phi i8* [ %242, %241 ], [ %25, %234 ], !dbg !1782
  %252 = bitcast i8** %3 to i8*, !dbg !1806
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %252) #8, !dbg !1806
  store i32 5, i32* %14, align 8, !dbg !1807, !tbaa !496
  %253 = call double @fpconv_strtod(i8* %251, i8** nonnull %3) #7, !dbg !1809
  %254 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, !dbg !1810
  %255 = bitcast %union.anon* %254 to double*, !dbg !1811
  store double %253, double* %255, align 8, !dbg !1812, !tbaa !171
  %256 = load i8*, i8** %8, align 8, !dbg !1813, !tbaa !472
  %257 = load i8*, i8** %3, align 8, !dbg !1815, !tbaa !1265
  %258 = icmp eq i8* %256, %257, !dbg !1816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1817
  br i1 %258, label %259, label %265, !dbg !1817

; <label>:259:                                    ; preds = %250
  %260 = ptrtoint i8* %256 to i64, !dbg !1817
  store i32 12, i32* %14, align 8, !dbg !1822, !tbaa !496
  %261 = load i64, i64* %29, align 8, !dbg !1823, !tbaa !465
  %262 = sub i64 %260, %261, !dbg !1824
  %263 = trunc i64 %262 to i32, !dbg !1825
  store i32 %263, i32* %33, align 4, !dbg !1826, !tbaa !527
  %264 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1827
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0), i8** %264, align 8, !dbg !1828, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1829
  br label %266, !dbg !1830

; <label>:265:                                    ; preds = %250
  store i8* %257, i8** %8, align 8, !dbg !1831, !tbaa !472
  br label %266

; <label>:266:                                    ; preds = %259, %265
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %252) #8, !dbg !1832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1832
  br label %323, !dbg !1833

; <label>:267:                                    ; preds = %231
  %268 = tail call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 4) #7, !dbg !1834
  %269 = icmp eq i32 %268, 0, !dbg !1834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1836
  br i1 %269, label %270, label %275, !dbg !1836

; <label>:270:                                    ; preds = %267
  store i32 6, i32* %14, align 8, !dbg !1837, !tbaa !496
  %271 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, !dbg !1839
  %272 = bitcast %union.anon* %271 to i32*, !dbg !1840
  store i32 1, i32* %272, align 8, !dbg !1841, !tbaa !171
  %273 = load i8*, i8** %8, align 8, !dbg !1842, !tbaa !472
  %274 = getelementptr inbounds i8, i8* %273, i64 4, !dbg !1842
  store i8* %274, i8** %8, align 8, !dbg !1842, !tbaa !472
  br label %323, !dbg !1843

; <label>:275:                                    ; preds = %267
  %276 = load i8*, i8** %8, align 8, !dbg !1844, !tbaa !472
  %277 = tail call i32 @strncmp(i8* %276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i64 5) #7, !dbg !1846
  %278 = icmp eq i32 %277, 0, !dbg !1846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1847
  br i1 %278, label %279, label %284, !dbg !1847

; <label>:279:                                    ; preds = %275
  store i32 6, i32* %14, align 8, !dbg !1848, !tbaa !496
  %280 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, !dbg !1850
  %281 = bitcast %union.anon* %280 to i32*, !dbg !1851
  store i32 0, i32* %281, align 8, !dbg !1852, !tbaa !171
  %282 = load i8*, i8** %8, align 8, !dbg !1853, !tbaa !472
  %283 = getelementptr inbounds i8, i8* %282, i64 5, !dbg !1853
  store i8* %283, i8** %8, align 8, !dbg !1853, !tbaa !472
  br label %323, !dbg !1854

; <label>:284:                                    ; preds = %275
  %285 = load i8*, i8** %8, align 8, !dbg !1855, !tbaa !472
  %286 = tail call i32 @strncmp(i8* %285, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4) #7, !dbg !1857
  %287 = icmp eq i32 %286, 0, !dbg !1857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1858
  br i1 %287, label %288, label %291, !dbg !1858

; <label>:288:                                    ; preds = %284
  store i32 7, i32* %14, align 8, !dbg !1859, !tbaa !496
  %289 = load i8*, i8** %8, align 8, !dbg !1861, !tbaa !472
  %290 = getelementptr inbounds i8, i8* %289, i64 4, !dbg !1861
  store i8* %290, i8** %8, align 8, !dbg !1861, !tbaa !472
  br label %323, !dbg !1862

; <label>:291:                                    ; preds = %284
  %292 = load %struct.json_config_t*, %struct.json_config_t** %6, align 8, !dbg !1863, !tbaa !459
  %293 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %292, i64 0, i32 10, !dbg !1865
  %294 = load i32, i32* %293, align 4, !dbg !1865, !tbaa !1777
  %295 = icmp eq i32 %294, 0, !dbg !1866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1867
  br i1 %295, label %316, label %296, !dbg !1867

; <label>:296:                                    ; preds = %291
  %297 = tail call fastcc i32 @json_is_invalid_number(%struct.json_parse_t* nonnull %0) #6, !dbg !1868
  %298 = icmp eq i32 %297, 0, !dbg !1868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1869
  br i1 %298, label %316, label %299, !dbg !1869

; <label>:299:                                    ; preds = %296
  %300 = bitcast i8** %5 to i8*, !dbg !1874
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %300) #8, !dbg !1874
  store i32 5, i32* %14, align 8, !dbg !1875, !tbaa !496
  %301 = load i8*, i8** %8, align 8, !dbg !1876, !tbaa !472
  %302 = call double @fpconv_strtod(i8* %301, i8** nonnull %5) #7, !dbg !1878
  %303 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, !dbg !1879
  %304 = bitcast %union.anon* %303 to double*, !dbg !1880
  store double %302, double* %304, align 8, !dbg !1881, !tbaa !171
  %305 = load i8*, i8** %8, align 8, !dbg !1882, !tbaa !472
  %306 = load i8*, i8** %5, align 8, !dbg !1883, !tbaa !1265
  %307 = icmp eq i8* %305, %306, !dbg !1884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1885
  br i1 %307, label %308, label %314, !dbg !1885

; <label>:308:                                    ; preds = %299
  %309 = ptrtoint i8* %305 to i64, !dbg !1885
  store i32 12, i32* %14, align 8, !dbg !1890, !tbaa !496
  %310 = load i64, i64* %29, align 8, !dbg !1891, !tbaa !465
  %311 = sub i64 %309, %310, !dbg !1892
  %312 = trunc i64 %311 to i32, !dbg !1893
  store i32 %312, i32* %33, align 4, !dbg !1894, !tbaa !527
  %313 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1895
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i64 0, i64 0), i8** %313, align 8, !dbg !1896, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  br label %315, !dbg !1898

; <label>:314:                                    ; preds = %299
  store i8* %306, i8** %8, align 8, !dbg !1899, !tbaa !472
  br label %315

; <label>:315:                                    ; preds = %308, %314
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %300) #8, !dbg !1900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1900
  br label %323, !dbg !1901

; <label>:316:                                    ; preds = %296, %291
  store i32 12, i32* %14, align 8, !dbg !1906, !tbaa !496
  %317 = bitcast i8** %8 to i64*, !dbg !1907
  %318 = load i64, i64* %317, align 8, !dbg !1907, !tbaa !472
  %319 = load i64, i64* %29, align 8, !dbg !1908, !tbaa !465
  %320 = sub i64 %318, %319, !dbg !1909
  %321 = trunc i64 %320 to i32, !dbg !1910
  store i32 %321, i32* %33, align 4, !dbg !1911, !tbaa !527
  %322 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %1, i64 0, i32 2, i32 0, !dbg !1912
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i64 0, i64 0), i8** %322, align 8, !dbg !1913, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1914
  br label %323, !dbg !1915

; <label>:323:                                    ; preds = %39, %316, %315, %288, %279, %270, %266, %243, %228, %43, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1915
  ret void, !dbg !1915
}

; Function Attrs: noredzone nounwind
define internal fastcc void @json_process_value(%struct.lua_State*, %struct.json_parse_t*, %struct.json_token_t* nocapture readonly) unnamed_addr #0 !dbg !1917 {
  %4 = alloca %struct.json_token_t, align 8
  %5 = alloca %struct.json_token_t, align 8
  %6 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 0, !dbg !1927
  %7 = load i32, i32* %6, align 8, !dbg !1927, !tbaa !496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1928
  switch i32 %7, label %165 [
    i32 4, label %8
    i32 5, label %14
    i32 6, label %18
    i32 0, label %22
    i32 2, label %107
    i32 7, label %164
  ], !dbg !1928

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 2, i32 0, !dbg !1929
  %10 = load i8*, i8** %9, align 8, !dbg !1929, !tbaa !171
  %11 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 3, !dbg !1931
  %12 = load i32, i32* %11, align 8, !dbg !1931, !tbaa !1932
  %13 = sext i32 %12 to i64, !dbg !1933
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %10, i64 %13) #7, !dbg !1934
  br label %179, !dbg !1935

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 2, !dbg !1936
  %16 = bitcast %union.anon* %15 to double*, !dbg !1937
  %17 = load double, double* %16, align 8, !dbg !1937, !tbaa !171
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %17) #7, !dbg !1938
  br label %179, !dbg !1939

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 2, !dbg !1940
  %20 = bitcast %union.anon* %19 to i32*, !dbg !1941
  %21 = load i32, i32* %20, align 8, !dbg !1941, !tbaa !171
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %21) #7, !dbg !1942
  br label %179, !dbg !1943

; <label>:22:                                     ; preds = %3
  %23 = bitcast %struct.json_token_t* %5 to i8*, !dbg !1954
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %23) #8, !dbg !1954
  %24 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 4, !dbg !1966
  %25 = load i32, i32* %24, align 8, !dbg !1967, !tbaa !468
  %26 = add nsw i32 %25, 1, !dbg !1967
  store i32 %26, i32* %24, align 8, !dbg !1967, !tbaa !468
  %27 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 3, !dbg !1968
  %28 = load %struct.json_config_t*, %struct.json_config_t** %27, align 8, !dbg !1968, !tbaa !459
  %29 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %28, i64 0, i32 11, !dbg !1970
  %30 = load i32, i32* %29, align 8, !dbg !1970, !tbaa !155
  %31 = icmp slt i32 %25, %30, !dbg !1971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1972
  br i1 %31, label %32, label %35, !dbg !1972

; <label>:32:                                     ; preds = %22
  %33 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 3) #7, !dbg !1973
  %34 = icmp eq i32 %33, 0, !dbg !1973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1974
  br i1 %34, label %35, label %46, !dbg !1974

; <label>:35:                                     ; preds = %32, %22
  %36 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 2, !dbg !1975
  %37 = load %struct.strbuf_t*, %struct.strbuf_t** %36, align 8, !dbg !1975, !tbaa !488
  tail call void @strbuf_free(%struct.strbuf_t* %37) #7, !dbg !1976
  %38 = load i32, i32* %24, align 8, !dbg !1977, !tbaa !468
  %39 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 1, !dbg !1978
  %40 = bitcast i8** %39 to i64*, !dbg !1978
  %41 = load i64, i64* %40, align 8, !dbg !1978, !tbaa !472
  %42 = bitcast %struct.json_parse_t* %1 to i64*, !dbg !1979
  %43 = load i64, i64* %42, align 8, !dbg !1979, !tbaa !465
  %44 = sub i64 %41, %43, !dbg !1980
  %45 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.78, i64 0, i64 0), i32 %38, i64 %44) #7, !dbg !1981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1982
  br label %46, !dbg !1982

; <label>:46:                                     ; preds = %35, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1982
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #7, !dbg !1983
  call fastcc void @json_next_token(%struct.json_parse_t* nonnull %1, %struct.json_token_t* nonnull %5) #7, !dbg !1985
  %47 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %5, i64 0, i32 0, !dbg !1986
  %48 = load i32, i32* %47, align 8, !dbg !1986, !tbaa !496
  %49 = icmp eq i32 %48, 1, !dbg !1988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1989
  br i1 %49, label %104, label %50, !dbg !1989

; <label>:50:                                     ; preds = %46
  %51 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %5, i64 0, i32 2, i32 0
  %52 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %5, i64 0, i32 3
  %53 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 2
  %54 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %5, i64 0, i32 1
  br label %55, !dbg !1990

; <label>:55:                                     ; preds = %50, %102
  %56 = phi i32 [ %103, %102 ], [ %48, %50 ], !dbg !1993
  %57 = icmp eq i32 %56, 4, !dbg !1990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1994
  br i1 %57, label %69, label %58, !dbg !1994

; <label>:58:                                     ; preds = %55
  %59 = load %struct.strbuf_t*, %struct.strbuf_t** %53, align 8, !dbg !2000, !tbaa !488
  call void @strbuf_free(%struct.strbuf_t* %59) #7, !dbg !2001
  %60 = load i32, i32* %47, align 8, !dbg !2002, !tbaa !496
  %61 = icmp eq i32 %60, 12, !dbg !2003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2004
  %62 = zext i32 %60 to i64, !dbg !2005
  %63 = getelementptr inbounds [15 x i8*], [15 x i8*]* @json_token_type_name, i64 0, i64 %62, !dbg !2005
  %64 = select i1 %61, i8** %51, i8** %63, !dbg !2004
  %65 = load i8*, i8** %64, align 8, !dbg !2007, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %66 = load i32, i32* %54, align 4, !dbg !2008, !tbaa !527
  %67 = add nsw i32 %66, 1, !dbg !2009
  %68 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i64 0, i64 0), i8* %65, i32 %67) #7, !dbg !2010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2012
  br label %69, !dbg !2012

; <label>:69:                                     ; preds = %58, %55
  %70 = load i8*, i8** %51, align 8, !dbg !2013, !tbaa !171
  %71 = load i32, i32* %52, align 8, !dbg !2014, !tbaa !1932
  %72 = sext i32 %71 to i64, !dbg !2015
  call void @lua_pushlstring(%struct.lua_State* %0, i8* %70, i64 %72) #7, !dbg !2016
  call fastcc void @json_next_token(%struct.json_parse_t* %1, %struct.json_token_t* nonnull %5) #7, !dbg !2017
  %73 = load i32, i32* %47, align 8, !dbg !2018, !tbaa !496
  %74 = icmp eq i32 %73, 8, !dbg !2020
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2021
  br i1 %74, label %86, label %75, !dbg !2021

; <label>:75:                                     ; preds = %69
  %76 = load %struct.strbuf_t*, %struct.strbuf_t** %53, align 8, !dbg !2027, !tbaa !488
  call void @strbuf_free(%struct.strbuf_t* %76) #7, !dbg !2028
  %77 = load i32, i32* %47, align 8, !dbg !2029, !tbaa !496
  %78 = icmp eq i32 %77, 12, !dbg !2030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2031
  %79 = zext i32 %77 to i64, !dbg !2032
  %80 = getelementptr inbounds [15 x i8*], [15 x i8*]* @json_token_type_name, i64 0, i64 %79, !dbg !2032
  %81 = select i1 %78, i8** %51, i8** %80, !dbg !2031
  %82 = load i8*, i8** %81, align 8, !dbg !2034, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %83 = load i32, i32* %54, align 4, !dbg !2035, !tbaa !527
  %84 = add nsw i32 %83, 1, !dbg !2036
  %85 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i64 0, i64 0), i8* %82, i32 %84) #7, !dbg !2037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2039
  br label %86, !dbg !2039

; <label>:86:                                     ; preds = %75, %69
  call fastcc void @json_next_token(%struct.json_parse_t* %1, %struct.json_token_t* nonnull %5) #7, !dbg !2040
  call fastcc void @json_process_value(%struct.lua_State* %0, %struct.json_parse_t* %1, %struct.json_token_t* nonnull %5) #7, !dbg !2041
  call void @lua_rawset(%struct.lua_State* %0, i32 -3) #7, !dbg !2042
  call fastcc void @json_next_token(%struct.json_parse_t* %1, %struct.json_token_t* nonnull %5) #7, !dbg !2043
  %87 = load i32, i32* %47, align 8, !dbg !2044, !tbaa !496
  %88 = icmp eq i32 %87, 1, !dbg !2046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  br i1 %88, label %104, label %89, !dbg !2047

; <label>:89:                                     ; preds = %86
  %90 = icmp eq i32 %87, 9, !dbg !2048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2050
  br i1 %90, label %102, label %91, !dbg !2050

; <label>:91:                                     ; preds = %89
  %92 = load %struct.strbuf_t*, %struct.strbuf_t** %53, align 8, !dbg !2056, !tbaa !488
  call void @strbuf_free(%struct.strbuf_t* %92) #7, !dbg !2057
  %93 = load i32, i32* %47, align 8, !dbg !2058, !tbaa !496
  %94 = icmp eq i32 %93, 12, !dbg !2059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2060
  %95 = zext i32 %93 to i64, !dbg !2061
  %96 = getelementptr inbounds [15 x i8*], [15 x i8*]* @json_token_type_name, i64 0, i64 %95, !dbg !2061
  %97 = select i1 %94, i8** %51, i8** %96, !dbg !2060
  %98 = load i8*, i8** %97, align 8, !dbg !2063, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %99 = load i32, i32* %54, align 4, !dbg !2064, !tbaa !527
  %100 = add nsw i32 %99, 1, !dbg !2065
  %101 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0), i8* %98, i32 %100) #7, !dbg !2066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2068
  br label %102, !dbg !2068

; <label>:102:                                    ; preds = %91, %89
  call fastcc void @json_next_token(%struct.json_parse_t* %1, %struct.json_token_t* nonnull %5) #7, !dbg !2069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2070
  %103 = load i32, i32* %47, align 8, !dbg !1993, !tbaa !496
  br label %55, !dbg !2070, !llvm.loop !2071

; <label>:104:                                    ; preds = %86, %46
  %105 = load i32, i32* %24, align 8, !dbg !2074, !tbaa !468
  %106 = add nsw i32 %105, -1, !dbg !2074
  store i32 %106, i32* %24, align 8, !dbg !2074, !tbaa !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2083
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %23) #8, !dbg !2084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2084
  br label %179, !dbg !2085

; <label>:107:                                    ; preds = %3
  %108 = bitcast %struct.json_token_t* %4 to i8*, !dbg !2095
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %108) #8, !dbg !2095
  %109 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 4, !dbg !2100
  %110 = load i32, i32* %109, align 8, !dbg !2101, !tbaa !468
  %111 = add nsw i32 %110, 1, !dbg !2101
  store i32 %111, i32* %109, align 8, !dbg !2101, !tbaa !468
  %112 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 3, !dbg !2102
  %113 = load %struct.json_config_t*, %struct.json_config_t** %112, align 8, !dbg !2102, !tbaa !459
  %114 = getelementptr inbounds %struct.json_config_t, %struct.json_config_t* %113, i64 0, i32 11, !dbg !2103
  %115 = load i32, i32* %114, align 8, !dbg !2103, !tbaa !155
  %116 = icmp slt i32 %110, %115, !dbg !2104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2105
  br i1 %116, label %117, label %120, !dbg !2105

; <label>:117:                                    ; preds = %107
  %118 = tail call i32 @lua_checkstack(%struct.lua_State* %0, i32 2) #7, !dbg !2106
  %119 = icmp eq i32 %118, 0, !dbg !2106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2107
  br i1 %119, label %120, label %131, !dbg !2107

; <label>:120:                                    ; preds = %117, %107
  %121 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 2, !dbg !2108
  %122 = load %struct.strbuf_t*, %struct.strbuf_t** %121, align 8, !dbg !2108, !tbaa !488
  tail call void @strbuf_free(%struct.strbuf_t* %122) #7, !dbg !2109
  %123 = load i32, i32* %109, align 8, !dbg !2110, !tbaa !468
  %124 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 1, !dbg !2111
  %125 = bitcast i8** %124 to i64*, !dbg !2111
  %126 = load i64, i64* %125, align 8, !dbg !2111, !tbaa !472
  %127 = bitcast %struct.json_parse_t* %1 to i64*, !dbg !2112
  %128 = load i64, i64* %127, align 8, !dbg !2112, !tbaa !465
  %129 = sub i64 %126, %128, !dbg !2113
  %130 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.78, i64 0, i64 0), i32 %123, i64 %129) #7, !dbg !2114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2115
  br label %131, !dbg !2115

; <label>:131:                                    ; preds = %120, %117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2115
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #7, !dbg !2116
  call fastcc void @json_next_token(%struct.json_parse_t* nonnull %1, %struct.json_token_t* nonnull %4) #7, !dbg !2118
  %132 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %4, i64 0, i32 0, !dbg !2119
  %133 = load i32, i32* %132, align 8, !dbg !2119, !tbaa !496
  %134 = icmp eq i32 %133, 3, !dbg !2121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2122
  br i1 %134, label %161, label %135, !dbg !2122

; <label>:135:                                    ; preds = %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2124
  call fastcc void @json_process_value(%struct.lua_State* %0, %struct.json_parse_t* nonnull %1, %struct.json_token_t* nonnull %4) #7, !dbg !2126
  call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 1) #7, !dbg !2129
  call fastcc void @json_next_token(%struct.json_parse_t* nonnull %1, %struct.json_token_t* nonnull %4) #7, !dbg !2130
  %136 = load i32, i32* %132, align 8, !dbg !2131, !tbaa !496
  %137 = icmp eq i32 %136, 3, !dbg !2133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2134
  br i1 %137, label %161, label %138, !dbg !2134

; <label>:138:                                    ; preds = %135
  %139 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 2
  %140 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %4, i64 0, i32 2, i32 0
  %141 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %4, i64 0, i32 1
  br label %142, !dbg !2134

; <label>:142:                                    ; preds = %138, %157
  %143 = phi i32 [ %136, %138 ], [ %159, %157 ]
  %144 = phi i32 [ 1, %138 ], [ %158, %157 ]
  %145 = icmp eq i32 %143, 9, !dbg !2135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2137
  br i1 %145, label %157, label %146, !dbg !2137

; <label>:146:                                    ; preds = %142
  %147 = load %struct.strbuf_t*, %struct.strbuf_t** %139, align 8, !dbg !2143, !tbaa !488
  call void @strbuf_free(%struct.strbuf_t* %147) #7, !dbg !2144
  %148 = load i32, i32* %132, align 8, !dbg !2145, !tbaa !496
  %149 = icmp eq i32 %148, 12, !dbg !2146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2147
  %150 = zext i32 %148 to i64, !dbg !2148
  %151 = getelementptr inbounds [15 x i8*], [15 x i8*]* @json_token_type_name, i64 0, i64 %150, !dbg !2148
  %152 = select i1 %149, i8** %140, i8** %151, !dbg !2147
  %153 = load i8*, i8** %152, align 8, !dbg !2150, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %154 = load i32, i32* %141, align 4, !dbg !2151, !tbaa !527
  %155 = add nsw i32 %154, 1, !dbg !2152
  %156 = call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.79, i64 0, i64 0), i8* %153, i32 %155) #7, !dbg !2153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2155
  br label %157, !dbg !2155

; <label>:157:                                    ; preds = %146, %142
  call fastcc void @json_next_token(%struct.json_parse_t* %1, %struct.json_token_t* nonnull %4) #7, !dbg !2156
  %158 = add nuw nsw i32 %144, 1, !dbg !2157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2158
  call fastcc void @json_process_value(%struct.lua_State* %0, %struct.json_parse_t* %1, %struct.json_token_t* nonnull %4) #7, !dbg !2126
  call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 %158) #7, !dbg !2129
  call fastcc void @json_next_token(%struct.json_parse_t* %1, %struct.json_token_t* nonnull %4) #7, !dbg !2130
  %159 = load i32, i32* %132, align 8, !dbg !2131, !tbaa !496
  %160 = icmp eq i32 %159, 3, !dbg !2133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2134
  br i1 %160, label %161, label %142, !dbg !2134, !llvm.loop !2159

; <label>:161:                                    ; preds = %157, %135, %131
  %162 = load i32, i32* %109, align 8, !dbg !2162, !tbaa !468
  %163 = add nsw i32 %162, -1, !dbg !2162
  store i32 %163, i32* %109, align 8, !dbg !2162, !tbaa !468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2083
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %108) #8, !dbg !2166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2166
  br label %179, !dbg !2167

; <label>:164:                                    ; preds = %3
  tail call void @lua_pushlightuserdata(%struct.lua_State* %0, i8* null) #7, !dbg !2168
  br label %179, !dbg !2169

; <label>:165:                                    ; preds = %3
  %166 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %1, i64 0, i32 2, !dbg !2175
  %167 = load %struct.strbuf_t*, %struct.strbuf_t** %166, align 8, !dbg !2175, !tbaa !488
  tail call void @strbuf_free(%struct.strbuf_t* %167) #7, !dbg !2176
  %168 = load i32, i32* %6, align 8, !dbg !2177, !tbaa !496
  %169 = icmp eq i32 %168, 12, !dbg !2178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2179
  %170 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 2, i32 0, !dbg !2180
  %171 = zext i32 %168 to i64, !dbg !2182
  %172 = getelementptr inbounds [15 x i8*], [15 x i8*]* @json_token_type_name, i64 0, i64 %171, !dbg !2182
  %173 = select i1 %169, i8** %170, i8** %172, !dbg !2179
  %174 = load i8*, i8** %173, align 8, !dbg !2083, !tbaa !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %175 = getelementptr inbounds %struct.json_token_t, %struct.json_token_t* %2, i64 0, i32 1, !dbg !2183
  %176 = load i32, i32* %175, align 4, !dbg !2183, !tbaa !527
  %177 = add nsw i32 %176, 1, !dbg !2184
  %178 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0), i8* %174, i32 %177) #7, !dbg !2185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2186
  br label %179, !dbg !2187

; <label>:179:                                    ; preds = %165, %164, %161, %104, %18, %14, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2188
  ret void, !dbg !2188
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @json_is_invalid_number(%struct.json_parse_t* nocapture readonly) unnamed_addr #0 !dbg !2189 {
  %2 = getelementptr inbounds %struct.json_parse_t, %struct.json_parse_t* %0, i64 0, i32 1, !dbg !2197
  %3 = load i8*, i8** %2, align 8, !dbg !2197, !tbaa !472
  %4 = load i8, i8* %3, align 1, !dbg !2199, !tbaa !171
  %5 = icmp eq i8 %4, 43, !dbg !2201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2202
  br i1 %5, label %6, label %7, !dbg !2202

; <label>:6:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2203
  br label %38, !dbg !2203

; <label>:7:                                      ; preds = %1
  %8 = icmp eq i8 %4, 45, !dbg !2204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2206
  br i1 %8, label %9, label %12, !dbg !2206

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !2207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2208
  %11 = load i8, i8* %10, align 1, !dbg !2209, !tbaa !171
  br label %12, !dbg !2208

; <label>:12:                                     ; preds = %9, %7
  %13 = phi i8 [ %11, %9 ], [ %4, %7 ], !dbg !2209
  %14 = phi i8* [ %10, %9 ], [ %3, %7 ], !dbg !2210
  %15 = icmp eq i8 %13, 48, !dbg !2211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2212
  br i1 %15, label %16, label %27, !dbg !2212

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !2213
  %18 = load i8, i8* %17, align 1, !dbg !2214, !tbaa !171
  %19 = or i8 %18, 32, !dbg !2215
  %20 = icmp eq i8 %19, 120, !dbg !2217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2218
  br i1 %20, label %25, label %21, !dbg !2218

; <label>:21:                                     ; preds = %16
  %22 = add i8 %18, -48, !dbg !2219
  %23 = icmp ult i8 %22, 10, !dbg !2219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2219
  %24 = zext i1 %23 to i32, !dbg !2219
  br label %25, !dbg !2219

; <label>:25:                                     ; preds = %21, %16
  %26 = phi i32 [ 1, %16 ], [ %24, %21 ], !dbg !2220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2221
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %38

; <label>:27:                                     ; preds = %12
  %28 = icmp slt i8 %13, 58, !dbg !2222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2224
  br i1 %28, label %29, label %30, !dbg !2224

; <label>:29:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2225
  br label %38, !dbg !2225

; <label>:30:                                     ; preds = %27
  %31 = tail call i32 @strncasecmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.73, i64 0, i64 0), i64 3) #10, !dbg !2227
  %32 = icmp eq i32 %31, 0, !dbg !2227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2229
  br i1 %32, label %33, label %34, !dbg !2229

; <label>:33:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  br label %38, !dbg !2230

; <label>:34:                                     ; preds = %30
  %35 = tail call i32 @strncasecmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i64 3) #10, !dbg !2231
  %36 = icmp eq i32 %35, 0, !dbg !2231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2210
  %37 = zext i1 %36 to i32, !dbg !2234
  br label %38, !dbg !2234

; <label>:38:                                     ; preds = %34, %33, %29, %25, %6
  %39 = phi i32 [ 1, %6 ], [ %26, %25 ], [ 0, %29 ], [ 1, %33 ], [ %37, %34 ], !dbg !2235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2236
  ret i32 %39, !dbg !2236
}

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone noreturn
declare dso_local void @__assert_func(i8*, i32, i8*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define internal fastcc i32 @decode_hex4(i8* nocapture readonly) unnamed_addr #0 !dbg !2237 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2249
  %2 = load i8, i8* %0, align 1, !dbg !2250, !tbaa !171
  %3 = sext i8 %2 to i32, !dbg !2260
  %4 = icmp sgt i8 %2, 47, !dbg !2262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2263
  br i1 %4, label %5, label %9, !dbg !2263

; <label>:5:                                      ; preds = %1
  %6 = icmp slt i8 %2, 58, !dbg !2264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2265
  br i1 %6, label %7, label %9, !dbg !2265

; <label>:7:                                      ; preds = %5
  %8 = add nsw i32 %3, -48, !dbg !2266
  br label %18, !dbg !2267

; <label>:9:                                      ; preds = %5, %1
  %10 = or i8 %2, 32, !dbg !2268
  %11 = sext i8 %10 to i32, !dbg !2269
  %12 = icmp sgt i8 %10, 96, !dbg !2271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2272
  br i1 %12, label %13, label %17, !dbg !2272

; <label>:13:                                     ; preds = %9
  %14 = icmp slt i8 %10, 103, !dbg !2273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2274
  br i1 %14, label %15, label %17, !dbg !2274

; <label>:15:                                     ; preds = %13
  %16 = add nsw i32 %11, -87, !dbg !2275
  br label %18, !dbg !2276

; <label>:17:                                     ; preds = %74, %70, %54, %50, %34, %30, %9, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2280
  br label %26, !dbg !2280

; <label>:18:                                     ; preds = %7, %15
  %19 = phi i32 [ %8, %7 ], [ %16, %15 ], !dbg !2281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2278
  %20 = icmp slt i32 %19, 0, !dbg !2283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2280
  br i1 %20, label %26, label %21, !dbg !2280

; <label>:21:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2249
  %22 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2250
  %23 = load i8, i8* %22, align 1, !dbg !2250, !tbaa !171
  %24 = sext i8 %23 to i32, !dbg !2260
  %25 = icmp sgt i8 %23, 47, !dbg !2262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2263
  br i1 %25, label %28, label %30, !dbg !2263

; <label>:26:                                     ; preds = %17, %80, %60, %40, %18, %83
  %27 = phi i32 [ %89, %83 ], [ -1, %18 ], [ -1, %40 ], [ -1, %60 ], [ -1, %80 ], [ -1, %17 ], !dbg !2286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2289
  ret i32 %27, !dbg !2289

; <label>:28:                                     ; preds = %21
  %29 = icmp slt i8 %23, 58, !dbg !2264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2265
  br i1 %29, label %38, label %30, !dbg !2265

; <label>:30:                                     ; preds = %28, %21
  %31 = or i8 %23, 32, !dbg !2268
  %32 = sext i8 %31 to i32, !dbg !2269
  %33 = icmp sgt i8 %31, 96, !dbg !2271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2272
  br i1 %33, label %34, label %17, !dbg !2272

; <label>:34:                                     ; preds = %30
  %35 = icmp slt i8 %31, 103, !dbg !2273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2274
  br i1 %35, label %36, label %17, !dbg !2274

; <label>:36:                                     ; preds = %34
  %37 = add nsw i32 %32, -87, !dbg !2275
  br label %40, !dbg !2276

; <label>:38:                                     ; preds = %28
  %39 = add nsw i32 %24, -48, !dbg !2266
  br label %40, !dbg !2267

; <label>:40:                                     ; preds = %38, %36
  %41 = phi i32 [ %39, %38 ], [ %37, %36 ], !dbg !2281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2278
  %42 = icmp slt i32 %41, 0, !dbg !2283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2280
  br i1 %42, label %26, label %43, !dbg !2280

; <label>:43:                                     ; preds = %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2249
  %44 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !2250
  %45 = load i8, i8* %44, align 1, !dbg !2250, !tbaa !171
  %46 = sext i8 %45 to i32, !dbg !2260
  %47 = icmp sgt i8 %45, 47, !dbg !2262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2263
  br i1 %47, label %48, label %50, !dbg !2263

; <label>:48:                                     ; preds = %43
  %49 = icmp slt i8 %45, 58, !dbg !2264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2265
  br i1 %49, label %58, label %50, !dbg !2265

; <label>:50:                                     ; preds = %48, %43
  %51 = or i8 %45, 32, !dbg !2268
  %52 = sext i8 %51 to i32, !dbg !2269
  %53 = icmp sgt i8 %51, 96, !dbg !2271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2272
  br i1 %53, label %54, label %17, !dbg !2272

; <label>:54:                                     ; preds = %50
  %55 = icmp slt i8 %51, 103, !dbg !2273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2274
  br i1 %55, label %56, label %17, !dbg !2274

; <label>:56:                                     ; preds = %54
  %57 = add nsw i32 %52, -87, !dbg !2275
  br label %60, !dbg !2276

; <label>:58:                                     ; preds = %48
  %59 = add nsw i32 %46, -48, !dbg !2266
  br label %60, !dbg !2267

; <label>:60:                                     ; preds = %58, %56
  %61 = phi i32 [ %59, %58 ], [ %57, %56 ], !dbg !2281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2278
  %62 = icmp slt i32 %61, 0, !dbg !2283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2280
  br i1 %62, label %26, label %63, !dbg !2280

; <label>:63:                                     ; preds = %60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2249
  %64 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !2250
  %65 = load i8, i8* %64, align 1, !dbg !2250, !tbaa !171
  %66 = sext i8 %65 to i32, !dbg !2260
  %67 = icmp sgt i8 %65, 47, !dbg !2262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2263
  br i1 %67, label %68, label %70, !dbg !2263

; <label>:68:                                     ; preds = %63
  %69 = icmp slt i8 %65, 58, !dbg !2264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2265
  br i1 %69, label %78, label %70, !dbg !2265

; <label>:70:                                     ; preds = %68, %63
  %71 = or i8 %65, 32, !dbg !2268
  %72 = sext i8 %71 to i32, !dbg !2269
  %73 = icmp sgt i8 %71, 96, !dbg !2271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2272
  br i1 %73, label %74, label %17, !dbg !2272

; <label>:74:                                     ; preds = %70
  %75 = icmp slt i8 %71, 103, !dbg !2273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2274
  br i1 %75, label %76, label %17, !dbg !2274

; <label>:76:                                     ; preds = %74
  %77 = add nsw i32 %72, -87, !dbg !2275
  br label %80, !dbg !2276

; <label>:78:                                     ; preds = %68
  %79 = add nsw i32 %66, -48, !dbg !2266
  br label %80, !dbg !2267

; <label>:80:                                     ; preds = %78, %76
  %81 = phi i32 [ %79, %78 ], [ %77, %76 ], !dbg !2281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2278
  %82 = icmp slt i32 %81, 0, !dbg !2283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2280
  br i1 %82, label %26, label %83, !dbg !2280

; <label>:83:                                     ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2249
  %84 = shl nsw i32 %19, 12, !dbg !2290
  %85 = shl nsw i32 %41, 8, !dbg !2291
  %86 = add nsw i32 %85, %84, !dbg !2292
  %87 = shl nsw i32 %61, 4, !dbg !2293
  %88 = add nsw i32 %86, %87, !dbg !2294
  %89 = add nsw i32 %88, %81, !dbg !2295
  br label %26, !dbg !2296
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
define internal fastcc %struct.json_config_t* @json_arg_init(%struct.lua_State*, i32) unnamed_addr #0 !dbg !2297 {
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7, !dbg !2305
  %4 = icmp sgt i32 %3, %1, !dbg !2305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2305
  br i1 %4, label %5, label %8, !dbg !2305

; <label>:5:                                      ; preds = %2
  %6 = add nsw i32 %1, 1, !dbg !2305
  %7 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 %6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.95, i64 0, i64 0)) #7, !dbg !2305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2305
  br label %8, !dbg !2305

; <label>:8:                                      ; preds = %2, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2306
  %9 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7, !dbg !2307
  %10 = icmp slt i32 %9, %1, !dbg !2308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2306
  br i1 %10, label %11, label %14, !dbg !2306

; <label>:11:                                     ; preds = %8, %11
  tail call void @lua_pushnil(%struct.lua_State* %0) #7, !dbg !2309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2306
  %12 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7, !dbg !2307
  %13 = icmp slt i32 %12, %1, !dbg !2308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2306
  br i1 %13, label %11, label %14, !dbg !2306, !llvm.loop !2310

; <label>:14:                                     ; preds = %11, %8
  %15 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 -10003) #7, !dbg !2314
  %16 = bitcast i8* %15 to %struct.json_config_t*, !dbg !2314
  %17 = icmp eq i8* %15, null, !dbg !2316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2317
  br i1 %17, label %18, label %20, !dbg !2317

; <label>:18:                                     ; preds = %14
  %19 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0)) #7, !dbg !2318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2318
  br label %20, !dbg !2318

; <label>:20:                                     ; preds = %14, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2320
  ret %struct.json_config_t* %16, !dbg !2320
}

; Function Attrs: noredzone nounwind
define internal fastcc void @json_enum_option(%struct.lua_State*, i32* nocapture, i8**) unnamed_addr #0 !dbg !36 {
  %4 = icmp eq i8** %2, null, !dbg !2326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2328
  br i1 %4, label %5, label %6, !dbg !2328

; <label>:5:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2329
  br label %6, !dbg !2329

; <label>:6:                                      ; preds = %3, %5
  %7 = phi i8** [ %2, %3 ], [ getelementptr inbounds ([3 x i8*], [3 x i8*]* @json_enum_option.bool_options, i64 0, i64 0), %5 ]
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7, !dbg !2331
  %9 = icmp eq i32 %8, 0, !dbg !2331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2333
  br i1 %9, label %10, label %12, !dbg !2333

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %1, align 4, !dbg !2334, !tbaa !149
  br label %19, !dbg !2333

; <label>:12:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2336
  %13 = tail call i32 @lua_type(%struct.lua_State* %0, i32 1) #7, !dbg !2339
  %14 = icmp eq i32 %13, 1, !dbg !2339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2340
  br i1 %14, label %15, label %17, !dbg !2340

; <label>:15:                                     ; preds = %12
  %16 = tail call i32 @lua_toboolean(%struct.lua_State* %0, i32 1) #7, !dbg !2341
  store i32 %16, i32* %1, align 4, !dbg !2342, !tbaa !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2343
  br label %19, !dbg !2343

; <label>:17:                                     ; preds = %12
  %18 = tail call i32 @luaL_checkoption(%struct.lua_State* %0, i32 1, i8* null, i8** %7) #7, !dbg !2344
  store i32 %18, i32* %1, align 4, !dbg !2345, !tbaa !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %19

; <label>:19:                                     ; preds = %10, %15, %17
  %20 = phi i32 [ %11, %10 ], [ %16, %15 ], [ %18, %17 ], !dbg !2334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2346
  %21 = icmp eq i32 %20, 0, !dbg !2347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2348
  br i1 %21, label %24, label %22, !dbg !2348

; <label>:22:                                     ; preds = %19
  %23 = icmp eq i32 %20, 1, !dbg !2349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2350
  br i1 %23, label %24, label %25, !dbg !2350

; <label>:24:                                     ; preds = %22, %19
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 %20) #7, !dbg !2351
  br label %29, !dbg !2351

; <label>:25:                                     ; preds = %22
  %26 = sext i32 %20 to i64, !dbg !2352
  %27 = getelementptr inbounds i8*, i8** %7, i64 %26, !dbg !2352
  %28 = load i8*, i8** %27, align 8, !dbg !2352, !tbaa !1265
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %28) #7, !dbg !2353
  br label %29

; <label>:29:                                     ; preds = %25, %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2354
  ret void
}

; Function Attrs: noredzone nounwind
define internal fastcc void @json_integer_option(%struct.lua_State*, i32, i32* nocapture, i32, i32) unnamed_addr #0 !dbg !2355 {
  %6 = alloca [64 x i8], align 16
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0, !dbg !2374
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %7) #8, !dbg !2374
  %8 = tail call i32 @lua_type(%struct.lua_State* %0, i32 %1) #7, !dbg !2376
  %9 = icmp eq i32 %8, 0, !dbg !2376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2378
  br i1 %9, label %10, label %12, !dbg !2378

; <label>:10:                                     ; preds = %5
  %11 = load i32, i32* %2, align 4, !dbg !2379, !tbaa !149
  br label %22, !dbg !2378

; <label>:12:                                     ; preds = %5
  %13 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 %1) #7, !dbg !2380
  %14 = trunc i64 %13 to i32, !dbg !2380
  %15 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %7, i64 64, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.98, i64 0, i64 0), i32 %3, i32 %4) #7, !dbg !2383
  %16 = icmp slt i32 %14, %3, !dbg !2384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2384
  br i1 %16, label %19, label %17, !dbg !2384

; <label>:17:                                     ; preds = %12
  %18 = icmp sgt i32 %14, %4, !dbg !2384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2384
  br i1 %18, label %19, label %21, !dbg !2384

; <label>:19:                                     ; preds = %17, %12
  %20 = call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* nonnull %7) #7, !dbg !2384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2384
  br label %21, !dbg !2384

; <label>:21:                                     ; preds = %17, %19
  store i32 %14, i32* %2, align 4, !dbg !2385, !tbaa !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2386
  br label %22, !dbg !2386

; <label>:22:                                     ; preds = %10, %21
  %23 = phi i32 [ %11, %10 ], [ %14, %21 ], !dbg !2379
  %24 = sext i32 %23 to i64, !dbg !2379
  call void @lua_pushinteger(%struct.lua_State* %0, i64 %24) #7, !dbg !2387
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %7) #8, !dbg !2388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2389
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
define internal i32 @json_destroy_config(%struct.lua_State*) #0 !dbg !2390 {
  %2 = tail call i8* @lua_touserdata(%struct.lua_State* %0, i32 1) #7, !dbg !2395
  %3 = icmp eq i8* %2, null, !dbg !2396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2398
  br i1 %3, label %7, label %4, !dbg !2398

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds i8, i8* %2, i64 1280, !dbg !2400
  %6 = bitcast i8* %5 to %struct.strbuf_t*, !dbg !2400
  tail call void @strbuf_free(%struct.strbuf_t* nonnull %6) #7, !dbg !2401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2401
  br label %7, !dbg !2401

; <label>:7:                                      ; preds = %1, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2402
  ret i32 0, !dbg !2402
}

; Function Attrs: noredzone
declare dso_local i32 @lua_setmetatable(%struct.lua_State*, i32) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @luaL_checkstack(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define internal i32 @json_protect_conversion(%struct.lua_State*) #0 !dbg !2403 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #7, !dbg !2408
  %3 = icmp eq i32 %2, 1, !dbg !2408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2408
  br i1 %3, label %6, label %4, !dbg !2408

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !2408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2408
  br label %6, !dbg !2408

; <label>:6:                                      ; preds = %4, %1
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -10003) #7, !dbg !2409
  tail call void @lua_insert(%struct.lua_State* %0, i32 1) #7, !dbg !2410
  %7 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 1, i32 1, i32 0) #7, !dbg !2411
  %8 = icmp eq i32 %7, 0, !dbg !2413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2415
  br i1 %8, label %14, label %9, !dbg !2415

; <label>:9:                                      ; preds = %6
  %10 = icmp eq i32 %7, 2, !dbg !2416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2418
  br i1 %10, label %11, label %12, !dbg !2418

; <label>:11:                                     ; preds = %9
  tail call void @lua_pushnil(%struct.lua_State* %0) #7, !dbg !2419
  tail call void @lua_insert(%struct.lua_State* %0, i32 -2) #7, !dbg !2421
  br label %14, !dbg !2422

; <label>:12:                                     ; preds = %9
  %13 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.101, i64 0, i64 0)) #7, !dbg !2423
  br label %14, !dbg !2424

; <label>:14:                                     ; preds = %6, %12, %11
  %15 = phi i32 [ 2, %11 ], [ %13, %12 ], [ 1, %6 ], !dbg !2425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2426
  ret i32 %15, !dbg !2426
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
!164 = !DILocation(line: 403, column: 10, scope: !165, inlinedAt: !140)
!165 = distinct !DILexicalBlock(scope: !133, file: !3, line: 403, column: 5)
!166 = !DILocation(line: 0, scope: !133, inlinedAt: !140)
!167 = !DILocation(line: 403, column: 5, scope: !165, inlinedAt: !140)
!168 = !DILocation(line: 404, column: 9, scope: !169, inlinedAt: !140)
!169 = distinct !DILexicalBlock(scope: !165, file: !3, line: 403, column: 5)
!170 = !DILocation(line: 404, column: 26, scope: !169, inlinedAt: !140)
!171 = !{!151, !151, i64 0}
!172 = !DILocation(line: 403, column: 27, scope: !169, inlinedAt: !140)
!173 = !DILocation(line: 403, column: 5, scope: !169, inlinedAt: !140)
!174 = !DILocation(line: 403, column: 19, scope: !169, inlinedAt: !140)
!175 = distinct !{!175, !176, !177}
!176 = !DILocation(line: 403, column: 5, scope: !165)
!177 = !DILocation(line: 404, column: 28, scope: !165)
!178 = !DILocation(line: 407, column: 5, scope: !133, inlinedAt: !140)
!179 = !DILocation(line: 407, column: 24, scope: !133, inlinedAt: !140)
!180 = !DILocation(line: 408, column: 5, scope: !133, inlinedAt: !140)
!181 = !DILocation(line: 408, column: 24, scope: !133, inlinedAt: !140)
!182 = !DILocation(line: 409, column: 5, scope: !133, inlinedAt: !140)
!183 = !DILocation(line: 409, column: 24, scope: !133, inlinedAt: !140)
!184 = !DILocation(line: 410, column: 5, scope: !133, inlinedAt: !140)
!185 = !DILocation(line: 410, column: 24, scope: !133, inlinedAt: !140)
!186 = !DILocation(line: 411, column: 5, scope: !133, inlinedAt: !140)
!187 = !DILocation(line: 411, column: 24, scope: !133, inlinedAt: !140)
!188 = !DILocation(line: 412, column: 5, scope: !133, inlinedAt: !140)
!189 = !DILocation(line: 412, column: 24, scope: !133, inlinedAt: !140)
!190 = !DILocation(line: 413, column: 5, scope: !133, inlinedAt: !140)
!191 = !DILocation(line: 413, column: 25, scope: !133, inlinedAt: !140)
!192 = !DILocation(line: 414, column: 5, scope: !133, inlinedAt: !140)
!193 = !DILocation(line: 414, column: 24, scope: !133, inlinedAt: !140)
!194 = !DILocation(line: 415, column: 5, scope: !133, inlinedAt: !140)
!195 = !DILocation(line: 415, column: 25, scope: !133, inlinedAt: !140)
!196 = !DILocation(line: 416, column: 5, scope: !133, inlinedAt: !140)
!197 = !DILocation(line: 416, column: 25, scope: !133, inlinedAt: !140)
!198 = !DILocation(line: 417, column: 5, scope: !133, inlinedAt: !140)
!199 = !DILocation(line: 417, column: 25, scope: !133, inlinedAt: !140)
!200 = !DILocation(line: 420, column: 5, scope: !133, inlinedAt: !140)
!201 = !DILocation(line: 420, column: 24, scope: !133, inlinedAt: !140)
!202 = !DILocation(line: 421, column: 5, scope: !133, inlinedAt: !140)
!203 = !DILocation(line: 421, column: 24, scope: !133, inlinedAt: !140)
!204 = !DILocation(line: 422, column: 5, scope: !133, inlinedAt: !140)
!205 = !DILocation(line: 422, column: 24, scope: !133, inlinedAt: !140)
!206 = !DILocation(line: 423, column: 5, scope: !133, inlinedAt: !140)
!207 = !DILocation(line: 423, column: 24, scope: !133, inlinedAt: !140)
!208 = !DILocation(line: 424, column: 5, scope: !133, inlinedAt: !140)
!209 = !DILocation(line: 424, column: 24, scope: !133, inlinedAt: !140)
!210 = !DILocation(line: 425, column: 5, scope: !133, inlinedAt: !140)
!211 = !DILocation(line: 425, column: 24, scope: !133, inlinedAt: !140)
!212 = !DILocation(line: 426, column: 5, scope: !133, inlinedAt: !140)
!213 = !DILocation(line: 426, column: 24, scope: !133, inlinedAt: !140)
!214 = !DILocation(line: 427, column: 5, scope: !133, inlinedAt: !140)
!215 = !DILocation(line: 427, column: 24, scope: !133, inlinedAt: !140)
!216 = !DILocation(line: 428, column: 5, scope: !133, inlinedAt: !140)
!217 = !DILocation(line: 428, column: 24, scope: !133, inlinedAt: !140)
!218 = !DILocation(line: 429, column: 10, scope: !219, inlinedAt: !140)
!219 = distinct !DILexicalBlock(scope: !133, file: !3, line: 429, column: 5)
!220 = !DILocation(line: 429, column: 5, scope: !219, inlinedAt: !140)
!221 = !DILocation(line: 430, column: 9, scope: !222, inlinedAt: !140)
!222 = distinct !DILexicalBlock(scope: !219, file: !3, line: 429, column: 5)
!223 = !DILocation(line: 430, column: 32, scope: !222, inlinedAt: !140)
!224 = !DILocation(line: 429, column: 5, scope: !222, inlinedAt: !140)
!225 = !DILocation(line: 433, column: 10, scope: !226, inlinedAt: !140)
!226 = distinct !DILexicalBlock(scope: !133, file: !3, line: 433, column: 5)
!227 = !DILocation(line: 433, column: 5, scope: !226, inlinedAt: !140)
!228 = !DILocation(line: 434, column: 9, scope: !229, inlinedAt: !140)
!229 = distinct !DILexicalBlock(scope: !226, file: !3, line: 433, column: 5)
!230 = !DILocation(line: 434, column: 29, scope: !229, inlinedAt: !140)
!231 = !DILocation(line: 433, column: 27, scope: !229, inlinedAt: !140)
!232 = !DILocation(line: 433, column: 5, scope: !229, inlinedAt: !140)
!233 = !DILocation(line: 433, column: 19, scope: !229, inlinedAt: !140)
!234 = distinct !{!234, !235, !236}
!235 = !DILocation(line: 433, column: 5, scope: !226)
!236 = !DILocation(line: 434, column: 31, scope: !226)
!237 = !DILocation(line: 435, column: 5, scope: !133, inlinedAt: !140)
!238 = !DILocation(line: 435, column: 27, scope: !133, inlinedAt: !140)
!239 = !DILocation(line: 436, column: 5, scope: !133, inlinedAt: !140)
!240 = !DILocation(line: 436, column: 28, scope: !133, inlinedAt: !140)
!241 = !DILocation(line: 437, column: 5, scope: !133, inlinedAt: !140)
!242 = !DILocation(line: 437, column: 27, scope: !133, inlinedAt: !140)
!243 = !DILocation(line: 438, column: 5, scope: !133, inlinedAt: !140)
!244 = !DILocation(line: 438, column: 27, scope: !133, inlinedAt: !140)
!245 = !DILocation(line: 439, column: 5, scope: !133, inlinedAt: !140)
!246 = !DILocation(line: 439, column: 27, scope: !133, inlinedAt: !140)
!247 = !DILocation(line: 440, column: 5, scope: !133, inlinedAt: !140)
!248 = !DILocation(line: 440, column: 27, scope: !133, inlinedAt: !140)
!249 = !DILocation(line: 441, column: 5, scope: !133, inlinedAt: !140)
!250 = !DILocation(line: 441, column: 27, scope: !133, inlinedAt: !140)
!251 = !DILocation(line: 442, column: 5, scope: !133, inlinedAt: !140)
!252 = !DILocation(line: 442, column: 27, scope: !133, inlinedAt: !140)
!253 = !DILocation(line: 443, column: 5, scope: !133, inlinedAt: !140)
!254 = !DILocation(line: 443, column: 27, scope: !133, inlinedAt: !140)
!255 = !DILocation(line: 444, column: 1, scope: !133, inlinedAt: !140)
!256 = !DILocalVariable(name: "l", arg: 1, scope: !257, file: !3, line: 1300, type: !40)
!257 = distinct !DISubprogram(name: "luaL_setfuncs", scope: !3, file: !3, line: 1300, type: !258, isLocal: true, isDefinition: true, scopeLine: 1301, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !262)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !40, !260, !39}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!262 = !{!256, !263, !264, !265}
!263 = !DILocalVariable(name: "reg", arg: 2, scope: !257, file: !3, line: 1300, type: !260)
!264 = !DILocalVariable(name: "nup", arg: 3, scope: !257, file: !3, line: 1300, type: !39)
!265 = !DILocalVariable(name: "i", scope: !257, file: !3, line: 1302, type: !39)
!266 = !DILocation(line: 1300, column: 39, scope: !257, inlinedAt: !267)
!267 = distinct !DILocation(line: 1368, column: 5, scope: !112)
!268 = !DILocation(line: 1300, column: 58, scope: !257, inlinedAt: !267)
!269 = !DILocation(line: 1300, column: 67, scope: !257, inlinedAt: !267)
!270 = !DILocation(line: 1304, column: 5, scope: !257, inlinedAt: !267)
!271 = !DILocation(line: 1305, column: 5, scope: !257, inlinedAt: !267)
!272 = !DILocation(line: 1305, column: 17, scope: !273, inlinedAt: !267)
!273 = distinct !DILexicalBlock(scope: !274, file: !3, line: 1305, column: 5)
!274 = distinct !DILexicalBlock(scope: !257, file: !3, line: 1305, column: 5)
!275 = !{!276, !158, i64 0}
!276 = !{!"luaL_Reg", !158, i64 0, !158, i64 8}
!277 = !DILocation(line: 1305, column: 22, scope: !273, inlinedAt: !267)
!278 = !DILocation(line: 1305, column: 5, scope: !274, inlinedAt: !267)
!279 = !DILocation(line: 1302, column: 9, scope: !257, inlinedAt: !267)
!280 = !DILocation(line: 1306, column: 14, scope: !281, inlinedAt: !267)
!281 = distinct !DILexicalBlock(scope: !282, file: !3, line: 1306, column: 9)
!282 = distinct !DILexicalBlock(scope: !273, file: !3, line: 1305, column: 38)
!283 = !DILocation(line: 1306, column: 9, scope: !281, inlinedAt: !267)
!284 = !DILocation(line: 1307, column: 13, scope: !285, inlinedAt: !267)
!285 = distinct !DILexicalBlock(scope: !281, file: !3, line: 1306, column: 9)
!286 = !DILocation(line: 1306, column: 9, scope: !285, inlinedAt: !267)
!287 = !DILocation(line: 1308, column: 34, scope: !282, inlinedAt: !267)
!288 = !{!276, !158, i64 8}
!289 = !DILocation(line: 1308, column: 9, scope: !282, inlinedAt: !267)
!290 = !DILocation(line: 1309, column: 42, scope: !282, inlinedAt: !267)
!291 = !DILocation(line: 1309, column: 9, scope: !282, inlinedAt: !267)
!292 = !DILocation(line: 1305, column: 34, scope: !273, inlinedAt: !267)
!293 = !DILocation(line: 1305, column: 5, scope: !273, inlinedAt: !267)
!294 = distinct !{!294, !295, !296}
!295 = !DILocation(line: 1305, column: 5, scope: !274)
!296 = !DILocation(line: 1310, column: 5, scope: !274)
!297 = !DILocation(line: 1311, column: 5, scope: !257, inlinedAt: !267)
!298 = !DILocation(line: 1312, column: 1, scope: !257, inlinedAt: !267)
!299 = !DILocation(line: 1371, column: 5, scope: !112)
!300 = !DILocation(line: 1372, column: 5, scope: !112)
!301 = !DILocation(line: 1375, column: 5, scope: !112)
!302 = !DILocation(line: 1376, column: 5, scope: !112)
!303 = !DILocation(line: 1377, column: 5, scope: !112)
!304 = !DILocation(line: 1378, column: 5, scope: !112)
!305 = !DILocation(line: 1381, column: 1, scope: !112)
!306 = !DILocation(line: 1380, column: 5, scope: !112)
!307 = distinct !DISubprogram(name: "luaopen_cjson_safe", scope: !3, file: !3, line: 1418, type: !58, isLocal: false, isDefinition: true, scopeLine: 1419, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !308)
!308 = !{!309}
!309 = !DILocalVariable(name: "l", arg: 1, scope: !307, file: !3, line: 1418, type: !40)
!310 = !DILocation(line: 1418, column: 35, scope: !307)
!311 = !DILocation(line: 1420, column: 5, scope: !307)
!312 = !DILocation(line: 1423, column: 5, scope: !307)
!313 = distinct !DISubprogram(name: "lua_cjson_safe_new", scope: !3, file: !3, line: 1384, type: !58, isLocal: true, isDefinition: true, scopeLine: 1385, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !314)
!314 = !{!315, !316, !317}
!315 = !DILocalVariable(name: "l", arg: 1, scope: !313, file: !3, line: 1384, type: !40)
!316 = !DILocalVariable(name: "func", scope: !313, file: !3, line: 1386, type: !52)
!317 = !DILocalVariable(name: "i", scope: !313, file: !3, line: 1387, type: !39)
!318 = !DILocation(line: 1384, column: 42, scope: !313)
!319 = !DILocation(line: 1389, column: 5, scope: !313)
!320 = !DILocation(line: 1392, column: 5, scope: !313)
!321 = !DILocation(line: 1393, column: 5, scope: !313)
!322 = !DILocation(line: 1387, column: 9, scope: !313)
!323 = !DILocation(line: 1395, column: 10, scope: !324)
!324 = distinct !DILexicalBlock(scope: !313, file: !3, line: 1395, column: 5)
!325 = !DILocation(line: 1395, column: 5, scope: !324)
!326 = !DILocation(line: 1396, column: 9, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !3, line: 1395, column: 31)
!328 = distinct !DILexicalBlock(scope: !324, file: !3, line: 1395, column: 5)
!329 = !DILocation(line: 1397, column: 9, scope: !327)
!330 = !DILocation(line: 1398, column: 9, scope: !327)
!331 = !DILocation(line: 1395, column: 5, scope: !328)
!332 = !DILocation(line: 1401, column: 5, scope: !313)
!333 = distinct !DISubprogram(name: "json_encode", scope: !3, file: !3, line: 703, type: !58, isLocal: true, isDefinition: true, scopeLine: 704, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !334)
!334 = !{!335, !336, !337, !338, !340, !341}
!335 = !DILocalVariable(name: "l", arg: 1, scope: !333, file: !3, line: 703, type: !40)
!336 = !DILocalVariable(name: "cfg", scope: !333, file: !3, line: 705, type: !63)
!337 = !DILocalVariable(name: "local_encode_buf", scope: !333, file: !3, line: 706, type: !75)
!338 = !DILocalVariable(name: "encode_buf", scope: !333, file: !3, line: 707, type: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!340 = !DILocalVariable(name: "json", scope: !333, file: !3, line: 708, type: !80)
!341 = !DILocalVariable(name: "len", scope: !333, file: !3, line: 709, type: !39)
!342 = !DILocation(line: 703, column: 35, scope: !333)
!343 = !DILocalVariable(name: "l", arg: 1, scope: !344, file: !3, line: 194, type: !40)
!344 = distinct !DISubprogram(name: "json_fetch_config", scope: !3, file: !3, line: 194, type: !345, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !347)
!345 = !DISubroutineType(types: !346)
!346 = !{!63, !40}
!347 = !{!343, !348}
!348 = !DILocalVariable(name: "cfg", scope: !344, file: !3, line: 196, type: !63)
!349 = !DILocation(line: 194, column: 52, scope: !344, inlinedAt: !350)
!350 = distinct !DILocation(line: 705, column: 26, scope: !333)
!351 = !DILocation(line: 198, column: 11, scope: !344, inlinedAt: !350)
!352 = !DILocation(line: 196, column: 20, scope: !344, inlinedAt: !350)
!353 = !DILocation(line: 199, column: 10, scope: !354, inlinedAt: !350)
!354 = distinct !DILexicalBlock(scope: !344, file: !3, line: 199, column: 9)
!355 = !DILocation(line: 199, column: 9, scope: !344, inlinedAt: !350)
!356 = !DILocation(line: 200, column: 9, scope: !354, inlinedAt: !350)
!357 = !DILocation(line: 202, column: 5, scope: !344, inlinedAt: !350)
!358 = !DILocation(line: 705, column: 20, scope: !333)
!359 = !DILocation(line: 706, column: 5, scope: !333)
!360 = !DILocation(line: 711, column: 5, scope: !333)
!361 = !DILocation(line: 713, column: 15, scope: !362)
!362 = distinct !DILexicalBlock(scope: !333, file: !3, line: 713, column: 9)
!363 = !{!156, !150, i64 1336}
!364 = !DILocation(line: 713, column: 10, scope: !362)
!365 = !DILocation(line: 713, column: 9, scope: !333)
!366 = !DILocation(line: 707, column: 15, scope: !333)
!367 = !DILocation(line: 706, column: 14, scope: !333)
!368 = !DILocation(line: 716, column: 9, scope: !369)
!369 = distinct !DILexicalBlock(scope: !362, file: !3, line: 713, column: 35)
!370 = !DILocation(line: 717, column: 5, scope: !369)
!371 = !DILocation(line: 719, column: 28, scope: !372)
!372 = distinct !DILexicalBlock(scope: !362, file: !3, line: 717, column: 12)
!373 = !DILocalVariable(name: "s", arg: 1, scope: !374, file: !76, line: 78, type: !339)
!374 = distinct !DISubprogram(name: "strbuf_reset", scope: !76, file: !76, line: 78, type: !375, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !377)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !339}
!377 = !{!373}
!378 = !DILocation(line: 78, column: 43, scope: !374, inlinedAt: !379)
!379 = distinct !DILocation(line: 720, column: 9, scope: !372)
!380 = !DILocation(line: 80, column: 8, scope: !374, inlinedAt: !379)
!381 = !DILocation(line: 80, column: 15, scope: !374, inlinedAt: !379)
!382 = !{!157, !150, i64 12}
!383 = !DILocation(line: 81, column: 1, scope: !374, inlinedAt: !379)
!384 = !DILocation(line: 0, scope: !369)
!385 = !DILocation(line: 723, column: 5, scope: !333)
!386 = !DILocalVariable(name: "s", arg: 1, scope: !387, file: !76, line: 145, type: !339)
!387 = distinct !DISubprogram(name: "strbuf_string", scope: !76, file: !76, line: 145, type: !388, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !390)
!388 = !DISubroutineType(types: !389)
!389 = !{!80, !339, !44}
!390 = !{!386, !391}
!391 = !DILocalVariable(name: "len", arg: 2, scope: !387, file: !76, line: 145, type: !44)
!392 = !DILocation(line: 145, column: 45, scope: !387, inlinedAt: !393)
!393 = distinct !DILocation(line: 724, column: 12, scope: !333)
!394 = !DILocation(line: 147, column: 9, scope: !387, inlinedAt: !393)
!395 = !DILocation(line: 148, column: 19, scope: !396, inlinedAt: !393)
!396 = distinct !DILexicalBlock(scope: !387, file: !76, line: 147, column: 9)
!397 = !DILocation(line: 148, column: 9, scope: !396, inlinedAt: !393)
!398 = !DILocation(line: 150, column: 15, scope: !387, inlinedAt: !393)
!399 = !{!157, !158, i64 0}
!400 = !DILocation(line: 150, column: 5, scope: !387, inlinedAt: !393)
!401 = !DILocation(line: 708, column: 11, scope: !333)
!402 = !DILocation(line: 709, column: 9, scope: !333)
!403 = !DILocation(line: 726, column: 30, scope: !333)
!404 = !DILocation(line: 726, column: 5, scope: !333)
!405 = !DILocation(line: 728, column: 15, scope: !406)
!406 = distinct !DILexicalBlock(scope: !333, file: !3, line: 728, column: 9)
!407 = !DILocation(line: 728, column: 10, scope: !406)
!408 = !DILocation(line: 728, column: 9, scope: !333)
!409 = !DILocation(line: 729, column: 9, scope: !406)
!410 = !DILocation(line: 732, column: 1, scope: !333)
!411 = !DILocation(line: 731, column: 5, scope: !333)
!412 = distinct !DISubprogram(name: "json_decode", scope: !3, file: !3, line: 1253, type: !58, isLocal: true, isDefinition: true, scopeLine: 1254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !413)
!413 = !{!414, !415, !424, !438}
!414 = !DILocalVariable(name: "l", arg: 1, scope: !412, file: !3, line: 1253, type: !40)
!415 = !DILocalVariable(name: "json", scope: !412, file: !3, line: 1255, type: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_parse_t", file: !3, line: 140, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 134, size: 320, elements: !418)
!418 = !{!419, !420, !421, !422, !423}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !417, file: !3, line: 135, baseType: !29, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !417, file: !3, line: 136, baseType: !29, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "tmp", scope: !417, file: !3, line: 137, baseType: !339, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !417, file: !3, line: 138, baseType: !63, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "current_depth", scope: !417, file: !3, line: 139, baseType: !39, size: 32, offset: 256)
!424 = !DILocalVariable(name: "token", scope: !412, file: !3, line: 1256, type: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "json_token_t", file: !3, line: 151, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 142, size: 192, elements: !427)
!427 = !{!428, !429, !430, !437}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !426, file: !3, line: 143, baseType: !69, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !426, file: !3, line: 144, baseType: !39, size: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !426, file: !3, line: 149, baseType: !431, size: 64, offset: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !3, line: 145, size: 64, elements: !432)
!432 = !{!433, !434, !436}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !431, file: !3, line: 146, baseType: !29, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !431, file: !3, line: 147, baseType: !435, size: 64)
!435 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "boolean", scope: !431, file: !3, line: 148, baseType: !39, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "string_len", scope: !426, file: !3, line: 150, baseType: !39, size: 32, offset: 128)
!438 = !DILocalVariable(name: "json_len", scope: !412, file: !3, line: 1257, type: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !440, line: 40, baseType: !441)
!440 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !442, line: 129, baseType: !443)
!442 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!443 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!444 = !DILocation(line: 1253, column: 35, scope: !412)
!445 = !DILocation(line: 1255, column: 5, scope: !412)
!446 = !DILocation(line: 1256, column: 5, scope: !412)
!447 = !DILocation(line: 1257, column: 5, scope: !412)
!448 = !DILocation(line: 1259, column: 5, scope: !412)
!449 = !DILocation(line: 194, column: 52, scope: !344, inlinedAt: !450)
!450 = distinct !DILocation(line: 1261, column: 16, scope: !412)
!451 = !DILocation(line: 198, column: 11, scope: !344, inlinedAt: !450)
!452 = !DILocation(line: 196, column: 20, scope: !344, inlinedAt: !450)
!453 = !DILocation(line: 199, column: 10, scope: !354, inlinedAt: !450)
!454 = !DILocation(line: 199, column: 9, scope: !344, inlinedAt: !450)
!455 = !DILocation(line: 200, column: 9, scope: !354, inlinedAt: !450)
!456 = !DILocation(line: 202, column: 5, scope: !344, inlinedAt: !450)
!457 = !DILocation(line: 1261, column: 10, scope: !412)
!458 = !DILocation(line: 1261, column: 14, scope: !412)
!459 = !{!460, !158, i64 24}
!460 = !{!"", !158, i64 0, !158, i64 8, !158, i64 16, !158, i64 24, !150, i64 32}
!461 = !DILocation(line: 1257, column: 12, scope: !412)
!462 = !DILocation(line: 1262, column: 17, scope: !412)
!463 = !DILocation(line: 1262, column: 10, scope: !412)
!464 = !DILocation(line: 1262, column: 15, scope: !412)
!465 = !{!460, !158, i64 0}
!466 = !DILocation(line: 1263, column: 10, scope: !412)
!467 = !DILocation(line: 1263, column: 24, scope: !412)
!468 = !{!460, !150, i64 32}
!469 = !DILocation(line: 1264, column: 21, scope: !412)
!470 = !DILocation(line: 1264, column: 10, scope: !412)
!471 = !DILocation(line: 1264, column: 14, scope: !412)
!472 = !{!460, !158, i64 8}
!473 = !DILocation(line: 1271, column: 9, scope: !474)
!474 = distinct !DILexicalBlock(scope: !412, file: !3, line: 1271, column: 9)
!475 = !{!476, !476, i64 0}
!476 = !{!"long", !151, i64 0}
!477 = !DILocation(line: 1271, column: 18, scope: !474)
!478 = !DILocation(line: 1271, column: 23, scope: !474)
!479 = !DILocation(line: 1271, column: 28, scope: !474)
!480 = !DILocation(line: 1271, column: 41, scope: !474)
!481 = !DILocation(line: 1271, column: 45, scope: !474)
!482 = !DILocation(line: 1271, column: 9, scope: !412)
!483 = !DILocation(line: 1272, column: 9, scope: !474)
!484 = !DILocation(line: 1277, column: 27, scope: !412)
!485 = !DILocation(line: 1277, column: 16, scope: !412)
!486 = !DILocation(line: 1277, column: 10, scope: !412)
!487 = !DILocation(line: 1277, column: 14, scope: !412)
!488 = !{!460, !158, i64 16}
!489 = !DILocation(line: 1255, column: 18, scope: !412)
!490 = !DILocation(line: 1256, column: 18, scope: !412)
!491 = !DILocation(line: 1279, column: 5, scope: !412)
!492 = !DILocation(line: 1280, column: 5, scope: !412)
!493 = !DILocation(line: 1283, column: 5, scope: !412)
!494 = !DILocation(line: 1285, column: 15, scope: !495)
!495 = distinct !DILexicalBlock(scope: !412, file: !3, line: 1285, column: 9)
!496 = !{!497, !151, i64 0}
!497 = !{!"", !151, i64 0, !150, i64 4, !151, i64 8, !150, i64 16}
!498 = !DILocation(line: 1285, column: 20, scope: !495)
!499 = !DILocation(line: 1285, column: 9, scope: !412)
!500 = !DILocalVariable(name: "l", arg: 1, scope: !501, file: !3, line: 1099, type: !40)
!501 = distinct !DISubprogram(name: "json_throw_parse_error", scope: !3, file: !3, line: 1099, type: !502, isLocal: true, isDefinition: true, scopeLine: 1101, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !506)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !40, !504, !29, !505}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!506 = !{!500, !507, !508, !509, !510}
!507 = !DILocalVariable(name: "json", arg: 2, scope: !501, file: !3, line: 1099, type: !504)
!508 = !DILocalVariable(name: "exp", arg: 3, scope: !501, file: !3, line: 1100, type: !29)
!509 = !DILocalVariable(name: "token", arg: 4, scope: !501, file: !3, line: 1100, type: !505)
!510 = !DILocalVariable(name: "found", scope: !501, file: !3, line: 1102, type: !29)
!511 = !DILocation(line: 1099, column: 47, scope: !501, inlinedAt: !512)
!512 = distinct !DILocation(line: 1286, column: 9, scope: !495)
!513 = !DILocation(line: 1099, column: 64, scope: !501, inlinedAt: !512)
!514 = !DILocation(line: 1100, column: 48, scope: !501, inlinedAt: !512)
!515 = !DILocation(line: 1100, column: 67, scope: !501, inlinedAt: !512)
!516 = !DILocation(line: 1104, column: 23, scope: !501, inlinedAt: !512)
!517 = !DILocation(line: 1104, column: 5, scope: !501, inlinedAt: !512)
!518 = !DILocation(line: 1106, column: 16, scope: !519, inlinedAt: !512)
!519 = distinct !DILexicalBlock(scope: !501, file: !3, line: 1106, column: 9)
!520 = !DILocation(line: 1106, column: 21, scope: !519, inlinedAt: !512)
!521 = !DILocation(line: 1106, column: 9, scope: !501, inlinedAt: !512)
!522 = !DILocation(line: 1107, column: 30, scope: !519, inlinedAt: !512)
!523 = !DILocation(line: 1102, column: 17, scope: !501, inlinedAt: !512)
!524 = !DILocation(line: 1109, column: 17, scope: !519, inlinedAt: !512)
!525 = !DILocation(line: 0, scope: !495)
!526 = !DILocation(line: 1113, column: 35, scope: !501, inlinedAt: !512)
!527 = !{!497, !150, i64 4}
!528 = !DILocation(line: 1113, column: 41, scope: !501, inlinedAt: !512)
!529 = !DILocation(line: 1112, column: 5, scope: !501, inlinedAt: !512)
!530 = !DILocation(line: 1114, column: 1, scope: !501, inlinedAt: !512)
!531 = !DILocation(line: 1286, column: 9, scope: !495)
!532 = !DILocation(line: 1288, column: 22, scope: !412)
!533 = !DILocation(line: 1288, column: 5, scope: !412)
!534 = !DILocation(line: 1291, column: 1, scope: !412)
!535 = !DILocation(line: 1290, column: 5, scope: !412)
!536 = distinct !DISubprogram(name: "json_cfg_encode_sparse_array", scope: !3, file: !3, line: 268, type: !58, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !537)
!537 = !{!538, !539}
!538 = !DILocalVariable(name: "l", arg: 1, scope: !536, file: !3, line: 268, type: !40)
!539 = !DILocalVariable(name: "cfg", scope: !536, file: !3, line: 270, type: !63)
!540 = !DILocation(line: 268, column: 52, scope: !536)
!541 = !DILocation(line: 270, column: 26, scope: !536)
!542 = !DILocation(line: 270, column: 20, scope: !536)
!543 = !DILocation(line: 272, column: 34, scope: !536)
!544 = !DILocation(line: 272, column: 5, scope: !536)
!545 = !DILocation(line: 273, column: 37, scope: !536)
!546 = !DILocation(line: 273, column: 5, scope: !536)
!547 = !DILocation(line: 274, column: 37, scope: !536)
!548 = !DILocation(line: 274, column: 5, scope: !536)
!549 = !DILocation(line: 276, column: 5, scope: !536)
!550 = distinct !DISubprogram(name: "json_cfg_encode_max_depth", scope: !3, file: !3, line: 281, type: !58, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !551)
!551 = !{!552, !553}
!552 = !DILocalVariable(name: "l", arg: 1, scope: !550, file: !3, line: 281, type: !40)
!553 = !DILocalVariable(name: "cfg", scope: !550, file: !3, line: 283, type: !63)
!554 = !DILocation(line: 281, column: 49, scope: !550)
!555 = !DILocation(line: 283, column: 26, scope: !550)
!556 = !DILocation(line: 283, column: 20, scope: !550)
!557 = !DILocation(line: 285, column: 44, scope: !550)
!558 = !DILocation(line: 285, column: 12, scope: !550)
!559 = !DILocation(line: 285, column: 5, scope: !550)
!560 = distinct !DISubprogram(name: "json_cfg_decode_max_depth", scope: !3, file: !3, line: 290, type: !58, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !561)
!561 = !{!562, !563}
!562 = !DILocalVariable(name: "l", arg: 1, scope: !560, file: !3, line: 290, type: !40)
!563 = !DILocalVariable(name: "cfg", scope: !560, file: !3, line: 292, type: !63)
!564 = !DILocation(line: 290, column: 49, scope: !560)
!565 = !DILocation(line: 292, column: 26, scope: !560)
!566 = !DILocation(line: 292, column: 20, scope: !560)
!567 = !DILocation(line: 294, column: 44, scope: !560)
!568 = !DILocation(line: 294, column: 12, scope: !560)
!569 = !DILocation(line: 294, column: 5, scope: !560)
!570 = distinct !DISubprogram(name: "json_cfg_encode_number_precision", scope: !3, file: !3, line: 298, type: !58, isLocal: true, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !571)
!571 = !{!572, !573}
!572 = !DILocalVariable(name: "l", arg: 1, scope: !570, file: !3, line: 298, type: !40)
!573 = !DILocalVariable(name: "cfg", scope: !570, file: !3, line: 300, type: !63)
!574 = !DILocation(line: 298, column: 56, scope: !570)
!575 = !DILocation(line: 300, column: 26, scope: !570)
!576 = !DILocation(line: 300, column: 20, scope: !570)
!577 = !DILocation(line: 302, column: 44, scope: !570)
!578 = !DILocation(line: 302, column: 12, scope: !570)
!579 = !DILocation(line: 302, column: 5, scope: !570)
!580 = distinct !DISubprogram(name: "json_cfg_encode_keep_buffer", scope: !3, file: !3, line: 306, type: !58, isLocal: true, isDefinition: true, scopeLine: 307, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !581)
!581 = !{!582, !583, !584}
!582 = !DILocalVariable(name: "l", arg: 1, scope: !580, file: !3, line: 306, type: !40)
!583 = !DILocalVariable(name: "cfg", scope: !580, file: !3, line: 308, type: !63)
!584 = !DILocalVariable(name: "old_value", scope: !580, file: !3, line: 309, type: !39)
!585 = !DILocation(line: 306, column: 51, scope: !580)
!586 = !DILocation(line: 308, column: 26, scope: !580)
!587 = !DILocation(line: 308, column: 20, scope: !580)
!588 = !DILocation(line: 311, column: 22, scope: !580)
!589 = !DILocation(line: 309, column: 9, scope: !580)
!590 = !DILocation(line: 313, column: 5, scope: !580)
!591 = !DILocation(line: 316, column: 26, scope: !592)
!592 = distinct !DILexicalBlock(scope: !580, file: !3, line: 316, column: 9)
!593 = !DILocation(line: 316, column: 19, scope: !592)
!594 = !DILocation(line: 316, column: 9, scope: !580)
!595 = !DILocation(line: 317, column: 13, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !3, line: 317, column: 13)
!597 = distinct !DILexicalBlock(scope: !592, file: !3, line: 316, column: 46)
!598 = !DILocation(line: 0, scope: !596)
!599 = !DILocation(line: 317, column: 13, scope: !597)
!600 = !DILocation(line: 318, column: 13, scope: !596)
!601 = !DILocation(line: 320, column: 13, scope: !596)
!602 = !DILocation(line: 323, column: 5, scope: !580)
!603 = !DILocation(line: 338, column: 55, scope: !57)
!604 = !DILocation(line: 341, column: 26, scope: !57)
!605 = !DILocation(line: 341, column: 20, scope: !57)
!606 = !DILocation(line: 343, column: 34, scope: !57)
!607 = !DILocation(line: 343, column: 5, scope: !57)
!608 = !DILocation(line: 347, column: 5, scope: !57)
!609 = distinct !DISubprogram(name: "json_cfg_decode_invalid_numbers", scope: !3, file: !3, line: 350, type: !58, isLocal: true, isDefinition: true, scopeLine: 351, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !610)
!610 = !{!611, !612}
!611 = !DILocalVariable(name: "l", arg: 1, scope: !609, file: !3, line: 350, type: !40)
!612 = !DILocalVariable(name: "cfg", scope: !609, file: !3, line: 352, type: !63)
!613 = !DILocation(line: 350, column: 55, scope: !609)
!614 = !DILocation(line: 352, column: 26, scope: !609)
!615 = !DILocation(line: 352, column: 20, scope: !609)
!616 = !DILocation(line: 354, column: 34, scope: !609)
!617 = !DILocation(line: 354, column: 5, scope: !609)
!618 = !DILocation(line: 358, column: 5, scope: !609)
!619 = distinct !DISubprogram(name: "json_append_data", scope: !3, file: !3, line: 660, type: !620, isLocal: true, isDefinition: true, scopeLine: 662, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !622)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !40, !63, !39, !339}
!622 = !{!623, !624, !625, !626, !627}
!623 = !DILocalVariable(name: "l", arg: 1, scope: !619, file: !3, line: 660, type: !40)
!624 = !DILocalVariable(name: "cfg", arg: 2, scope: !619, file: !3, line: 660, type: !63)
!625 = !DILocalVariable(name: "current_depth", arg: 3, scope: !619, file: !3, line: 661, type: !39)
!626 = !DILocalVariable(name: "json", arg: 4, scope: !619, file: !3, line: 661, type: !339)
!627 = !DILocalVariable(name: "len", scope: !619, file: !3, line: 663, type: !39)
!628 = !DILocation(line: 660, column: 41, scope: !619)
!629 = !DILocation(line: 660, column: 59, scope: !619)
!630 = !DILocation(line: 661, column: 34, scope: !619)
!631 = !DILocation(line: 661, column: 59, scope: !619)
!632 = !DILocation(line: 665, column: 13, scope: !619)
!633 = !DILocation(line: 665, column: 5, scope: !619)
!634 = !DILocation(line: 667, column: 9, scope: !635)
!635 = distinct !DILexicalBlock(scope: !619, file: !3, line: 665, column: 30)
!636 = !DILocation(line: 668, column: 9, scope: !635)
!637 = !DILocation(line: 670, column: 9, scope: !635)
!638 = !DILocation(line: 671, column: 9, scope: !635)
!639 = !DILocation(line: 673, column: 13, scope: !640)
!640 = distinct !DILexicalBlock(scope: !635, file: !3, line: 673, column: 13)
!641 = !DILocation(line: 673, column: 13, scope: !635)
!642 = !DILocalVariable(name: "s", arg: 1, scope: !643, file: !76, line: 127, type: !339)
!643 = distinct !DISubprogram(name: "strbuf_append_mem", scope: !76, file: !76, line: 127, type: !644, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !646)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !339, !29, !39}
!646 = !{!642, !647, !648}
!647 = !DILocalVariable(name: "c", arg: 2, scope: !643, file: !76, line: 127, type: !29)
!648 = !DILocalVariable(name: "len", arg: 3, scope: !643, file: !76, line: 127, type: !39)
!649 = !DILocation(line: 127, column: 48, scope: !643, inlinedAt: !650)
!650 = distinct !DILocation(line: 676, column: 13, scope: !640)
!651 = !DILocation(line: 127, column: 48, scope: !643, inlinedAt: !652)
!652 = distinct !DILocation(line: 674, column: 13, scope: !640)
!653 = !DILocation(line: 92, column: 15, scope: !654, inlinedAt: !659)
!654 = distinct !DISubprogram(name: "strbuf_empty_length", scope: !76, file: !76, line: 90, type: !655, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !657)
!655 = !DISubroutineType(types: !656)
!656 = !{!39, !339}
!657 = !{!658}
!658 = !DILocalVariable(name: "s", arg: 1, scope: !654, file: !76, line: 90, type: !339)
!659 = distinct !DILocation(line: 97, column: 15, scope: !660, inlinedAt: !667)
!660 = distinct !DILexicalBlock(scope: !661, file: !76, line: 97, column: 9)
!661 = distinct !DISubprogram(name: "strbuf_ensure_empty_length", scope: !76, file: !76, line: 95, type: !662, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !664)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !339, !39}
!664 = !{!665, !666}
!665 = !DILocalVariable(name: "s", arg: 1, scope: !661, file: !76, line: 95, type: !339)
!666 = !DILocalVariable(name: "len", arg: 2, scope: !661, file: !76, line: 95, type: !39)
!667 = distinct !DILocation(line: 129, column: 5, scope: !643, inlinedAt: !650)
!668 = !{!157, !150, i64 8}
!669 = !DILocation(line: 92, column: 25, scope: !654, inlinedAt: !659)
!670 = !DILocation(line: 92, column: 32, scope: !654, inlinedAt: !659)
!671 = !DILocation(line: 92, column: 5, scope: !654, inlinedAt: !659)
!672 = !DILocation(line: 127, column: 63, scope: !643, inlinedAt: !652)
!673 = !DILocation(line: 127, column: 70, scope: !643, inlinedAt: !652)
!674 = !DILocation(line: 95, column: 57, scope: !661, inlinedAt: !675)
!675 = distinct !DILocation(line: 129, column: 5, scope: !643, inlinedAt: !652)
!676 = !DILocation(line: 95, column: 64, scope: !661, inlinedAt: !675)
!677 = !DILocation(line: 90, column: 49, scope: !654, inlinedAt: !678)
!678 = distinct !DILocation(line: 97, column: 15, scope: !660, inlinedAt: !675)
!679 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !675)
!680 = !DILocation(line: 97, column: 9, scope: !661, inlinedAt: !675)
!681 = !DILocation(line: 98, column: 36, scope: !660, inlinedAt: !675)
!682 = !DILocation(line: 98, column: 9, scope: !660, inlinedAt: !675)
!683 = !DILocation(line: 130, column: 24, scope: !643, inlinedAt: !652)
!684 = !DILocation(line: 99, column: 1, scope: !661, inlinedAt: !675)
!685 = !DILocation(line: 130, column: 15, scope: !643, inlinedAt: !652)
!686 = !DILocation(line: 130, column: 19, scope: !643, inlinedAt: !652)
!687 = !DILocation(line: 130, column: 5, scope: !643, inlinedAt: !652)
!688 = !DILocation(line: 131, column: 15, scope: !643, inlinedAt: !652)
!689 = !DILocation(line: 132, column: 1, scope: !643, inlinedAt: !652)
!690 = !DILocation(line: 674, column: 13, scope: !640)
!691 = !DILocation(line: 127, column: 63, scope: !643, inlinedAt: !650)
!692 = !DILocation(line: 127, column: 70, scope: !643, inlinedAt: !650)
!693 = !DILocation(line: 95, column: 57, scope: !661, inlinedAt: !667)
!694 = !DILocation(line: 95, column: 64, scope: !661, inlinedAt: !667)
!695 = !DILocation(line: 90, column: 49, scope: !654, inlinedAt: !659)
!696 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !667)
!697 = !DILocation(line: 97, column: 9, scope: !661, inlinedAt: !667)
!698 = !DILocation(line: 98, column: 36, scope: !660, inlinedAt: !667)
!699 = !DILocation(line: 98, column: 9, scope: !660, inlinedAt: !667)
!700 = !DILocation(line: 130, column: 24, scope: !643, inlinedAt: !650)
!701 = !DILocation(line: 99, column: 1, scope: !661, inlinedAt: !667)
!702 = !DILocation(line: 130, column: 15, scope: !643, inlinedAt: !650)
!703 = !DILocation(line: 130, column: 19, scope: !643, inlinedAt: !650)
!704 = !DILocation(line: 130, column: 5, scope: !643, inlinedAt: !650)
!705 = !DILocation(line: 131, column: 15, scope: !643, inlinedAt: !650)
!706 = !DILocation(line: 132, column: 1, scope: !643, inlinedAt: !650)
!707 = !DILocation(line: 679, column: 22, scope: !635)
!708 = !DILocalVariable(name: "l", arg: 1, scope: !709, file: !3, line: 536, type: !40)
!709 = distinct !DISubprogram(name: "json_check_encode_depth", scope: !3, file: !3, line: 536, type: !620, isLocal: true, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !710)
!710 = !{!708, !711, !712, !713}
!711 = !DILocalVariable(name: "cfg", arg: 2, scope: !709, file: !3, line: 536, type: !63)
!712 = !DILocalVariable(name: "current_depth", arg: 3, scope: !709, file: !3, line: 537, type: !39)
!713 = !DILocalVariable(name: "json", arg: 4, scope: !709, file: !3, line: 537, type: !339)
!714 = !DILocation(line: 536, column: 48, scope: !709, inlinedAt: !715)
!715 = distinct !DILocation(line: 680, column: 9, scope: !635)
!716 = !DILocation(line: 536, column: 66, scope: !709, inlinedAt: !715)
!717 = !DILocation(line: 537, column: 41, scope: !709, inlinedAt: !715)
!718 = !DILocation(line: 537, column: 66, scope: !709, inlinedAt: !715)
!719 = !DILocation(line: 549, column: 31, scope: !720, inlinedAt: !715)
!720 = distinct !DILexicalBlock(scope: !709, file: !3, line: 549, column: 9)
!721 = !{!156, !150, i64 1324}
!722 = !DILocation(line: 549, column: 23, scope: !720, inlinedAt: !715)
!723 = !DILocation(line: 549, column: 48, scope: !720, inlinedAt: !715)
!724 = !DILocation(line: 549, column: 51, scope: !720, inlinedAt: !715)
!725 = !DILocation(line: 549, column: 9, scope: !709, inlinedAt: !715)
!726 = !DILocation(line: 552, column: 15, scope: !727, inlinedAt: !715)
!727 = distinct !DILexicalBlock(scope: !709, file: !3, line: 552, column: 9)
!728 = !DILocation(line: 552, column: 10, scope: !727, inlinedAt: !715)
!729 = !DILocation(line: 552, column: 9, scope: !709, inlinedAt: !715)
!730 = !DILocation(line: 553, column: 9, scope: !727, inlinedAt: !715)
!731 = !DILocation(line: 555, column: 5, scope: !709, inlinedAt: !715)
!732 = !DILocation(line: 557, column: 1, scope: !709, inlinedAt: !715)
!733 = !DILocalVariable(name: "l", arg: 1, scope: !734, file: !3, line: 493, type: !40)
!734 = distinct !DISubprogram(name: "lua_array_length", scope: !3, file: !3, line: 493, type: !735, isLocal: true, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !737)
!735 = !DISubroutineType(types: !736)
!736 = !{!39, !40, !63, !339}
!737 = !{!733, !738, !739, !740, !741, !742}
!738 = !DILocalVariable(name: "cfg", arg: 2, scope: !734, file: !3, line: 493, type: !63)
!739 = !DILocalVariable(name: "json", arg: 3, scope: !734, file: !3, line: 493, type: !339)
!740 = !DILocalVariable(name: "k", scope: !734, file: !3, line: 495, type: !435)
!741 = !DILocalVariable(name: "max", scope: !734, file: !3, line: 496, type: !39)
!742 = !DILocalVariable(name: "items", scope: !734, file: !3, line: 497, type: !39)
!743 = !DILocation(line: 493, column: 40, scope: !734, inlinedAt: !744)
!744 = distinct !DILocation(line: 681, column: 15, scope: !635)
!745 = !DILocation(line: 493, column: 58, scope: !734, inlinedAt: !744)
!746 = !DILocation(line: 493, column: 73, scope: !734, inlinedAt: !744)
!747 = !DILocation(line: 496, column: 9, scope: !734, inlinedAt: !744)
!748 = !DILocation(line: 497, column: 9, scope: !734, inlinedAt: !744)
!749 = !DILocation(line: 502, column: 5, scope: !734, inlinedAt: !744)
!750 = !DILocation(line: 504, column: 5, scope: !734, inlinedAt: !744)
!751 = !DILocation(line: 504, column: 12, scope: !734, inlinedAt: !744)
!752 = !DILocation(line: 504, column: 28, scope: !734, inlinedAt: !744)
!753 = !DILocation(line: 506, column: 13, scope: !754, inlinedAt: !744)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 506, column: 13)
!755 = distinct !DILexicalBlock(scope: !734, file: !3, line: 504, column: 34)
!756 = !DILocation(line: 506, column: 29, scope: !754, inlinedAt: !744)
!757 = !DILocation(line: 506, column: 44, scope: !754, inlinedAt: !744)
!758 = !DILocation(line: 507, column: 18, scope: !754, inlinedAt: !744)
!759 = !DILocation(line: 495, column: 12, scope: !734, inlinedAt: !744)
!760 = !DILocation(line: 507, column: 16, scope: !754, inlinedAt: !744)
!761 = !DILocation(line: 506, column: 13, scope: !755, inlinedAt: !744)
!762 = !DILocation(line: 509, column: 17, scope: !763, inlinedAt: !744)
!763 = distinct !DILexicalBlock(scope: !764, file: !3, line: 509, column: 17)
!764 = distinct !DILexicalBlock(scope: !754, file: !3, line: 507, column: 40)
!765 = !DILocation(line: 509, column: 26, scope: !763, inlinedAt: !744)
!766 = !DILocation(line: 509, column: 36, scope: !763, inlinedAt: !744)
!767 = !DILocation(line: 509, column: 31, scope: !763, inlinedAt: !744)
!768 = !DILocation(line: 510, column: 25, scope: !769, inlinedAt: !744)
!769 = distinct !DILexicalBlock(scope: !770, file: !3, line: 510, column: 21)
!770 = distinct !DILexicalBlock(scope: !763, file: !3, line: 509, column: 42)
!771 = !DILocation(line: 510, column: 23, scope: !769, inlinedAt: !744)
!772 = !DILocation(line: 510, column: 21, scope: !770, inlinedAt: !744)
!773 = !DILocation(line: 511, column: 27, scope: !769, inlinedAt: !744)
!774 = !DILocation(line: 511, column: 21, scope: !769, inlinedAt: !744)
!775 = !DILocation(line: 0, scope: !734, inlinedAt: !744)
!776 = !DILocation(line: 512, column: 22, scope: !770, inlinedAt: !744)
!777 = !DILocation(line: 513, column: 17, scope: !770, inlinedAt: !744)
!778 = !DILocation(line: 514, column: 17, scope: !770, inlinedAt: !744)
!779 = distinct !{!779, !780, !781}
!780 = !DILocation(line: 504, column: 5, scope: !734)
!781 = !DILocation(line: 521, column: 5, scope: !734)
!782 = !DILocation(line: 519, column: 9, scope: !755, inlinedAt: !744)
!783 = !DILocation(line: 520, column: 9, scope: !755, inlinedAt: !744)
!784 = !DILocation(line: 0, scope: !769, inlinedAt: !744)
!785 = !DILocation(line: 0, scope: !770, inlinedAt: !744)
!786 = !DILocation(line: 524, column: 14, scope: !787, inlinedAt: !744)
!787 = distinct !DILexicalBlock(scope: !734, file: !3, line: 524, column: 9)
!788 = !{!156, !150, i64 1316}
!789 = !DILocation(line: 524, column: 34, scope: !787, inlinedAt: !744)
!790 = !DILocation(line: 524, column: 38, scope: !787, inlinedAt: !744)
!791 = !DILocation(line: 525, column: 21, scope: !787, inlinedAt: !744)
!792 = !DILocation(line: 525, column: 13, scope: !787, inlinedAt: !744)
!793 = !DILocation(line: 525, column: 48, scope: !787, inlinedAt: !744)
!794 = !DILocation(line: 526, column: 20, scope: !787, inlinedAt: !744)
!795 = !{!156, !150, i64 1320}
!796 = !DILocation(line: 526, column: 13, scope: !787, inlinedAt: !744)
!797 = !DILocation(line: 524, column: 9, scope: !734, inlinedAt: !744)
!798 = !DILocation(line: 527, column: 19, scope: !799, inlinedAt: !744)
!799 = distinct !DILexicalBlock(scope: !800, file: !3, line: 527, column: 13)
!800 = distinct !DILexicalBlock(scope: !787, file: !3, line: 526, column: 40)
!801 = !{!156, !150, i64 1312}
!802 = !DILocation(line: 527, column: 14, scope: !799, inlinedAt: !744)
!803 = !DILocation(line: 527, column: 13, scope: !800, inlinedAt: !744)
!804 = !DILocalVariable(name: "l", arg: 1, scope: !805, file: !3, line: 448, type: !40)
!805 = distinct !DISubprogram(name: "json_encode_exception", scope: !3, file: !3, line: 448, type: !806, isLocal: true, isDefinition: true, scopeLine: 450, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !808)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !40, !63, !339, !39, !29}
!808 = !{!804, !809, !810, !811, !812}
!809 = !DILocalVariable(name: "cfg", arg: 2, scope: !805, file: !3, line: 448, type: !63)
!810 = !DILocalVariable(name: "json", arg: 3, scope: !805, file: !3, line: 448, type: !339)
!811 = !DILocalVariable(name: "lindex", arg: 4, scope: !805, file: !3, line: 448, type: !39)
!812 = !DILocalVariable(name: "reason", arg: 5, scope: !805, file: !3, line: 449, type: !29)
!813 = !DILocation(line: 448, column: 46, scope: !805, inlinedAt: !814)
!814 = distinct !DILocation(line: 528, column: 13, scope: !799, inlinedAt: !744)
!815 = !DILocation(line: 448, column: 64, scope: !805, inlinedAt: !814)
!816 = !DILocation(line: 448, column: 79, scope: !805, inlinedAt: !814)
!817 = !DILocation(line: 448, column: 89, scope: !805, inlinedAt: !814)
!818 = !DILocation(line: 449, column: 47, scope: !805, inlinedAt: !814)
!819 = !DILocation(line: 451, column: 15, scope: !820, inlinedAt: !814)
!820 = distinct !DILexicalBlock(scope: !805, file: !3, line: 451, column: 9)
!821 = !DILocation(line: 451, column: 10, scope: !820, inlinedAt: !814)
!822 = !DILocation(line: 451, column: 9, scope: !805, inlinedAt: !814)
!823 = !DILocation(line: 452, column: 9, scope: !820, inlinedAt: !814)
!824 = !DILocation(line: 454, column: 35, scope: !805, inlinedAt: !814)
!825 = !DILocation(line: 454, column: 19, scope: !805, inlinedAt: !814)
!826 = !DILocation(line: 453, column: 5, scope: !805, inlinedAt: !814)
!827 = !DILocation(line: 455, column: 1, scope: !805, inlinedAt: !814)
!828 = !DILocation(line: 528, column: 13, scope: !799, inlinedAt: !744)
!829 = !DILocation(line: 0, scope: !635)
!830 = !DILocation(line: 534, column: 1, scope: !734, inlinedAt: !744)
!831 = !DILocation(line: 663, column: 9, scope: !619)
!832 = !DILocation(line: 682, column: 13, scope: !635)
!833 = !DILocation(line: 533, column: 5, scope: !734, inlinedAt: !744)
!834 = !DILocation(line: 682, column: 17, scope: !835)
!835 = distinct !DILexicalBlock(scope: !635, file: !3, line: 682, column: 13)
!836 = !DILocalVariable(name: "l", arg: 1, scope: !837, file: !3, line: 566, type: !40)
!837 = distinct !DISubprogram(name: "json_append_array", scope: !3, file: !3, line: 566, type: !838, isLocal: true, isDefinition: true, scopeLine: 568, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !840)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !40, !63, !39, !339, !39}
!840 = !{!836, !841, !842, !843, !844, !845, !846}
!841 = !DILocalVariable(name: "cfg", arg: 2, scope: !837, file: !3, line: 566, type: !63)
!842 = !DILocalVariable(name: "current_depth", arg: 3, scope: !837, file: !3, line: 566, type: !39)
!843 = !DILocalVariable(name: "json", arg: 4, scope: !837, file: !3, line: 567, type: !339)
!844 = !DILocalVariable(name: "array_length", arg: 5, scope: !837, file: !3, line: 567, type: !39)
!845 = !DILocalVariable(name: "comma", scope: !837, file: !3, line: 569, type: !39)
!846 = !DILocalVariable(name: "i", scope: !837, file: !3, line: 569, type: !39)
!847 = !DILocation(line: 566, column: 42, scope: !837, inlinedAt: !848)
!848 = distinct !DILocation(line: 683, column: 13, scope: !835)
!849 = !DILocation(line: 566, column: 60, scope: !837, inlinedAt: !848)
!850 = !DILocation(line: 566, column: 69, scope: !837, inlinedAt: !848)
!851 = !DILocation(line: 567, column: 41, scope: !837, inlinedAt: !848)
!852 = !DILocation(line: 567, column: 51, scope: !837, inlinedAt: !848)
!853 = !DILocalVariable(name: "s", arg: 1, scope: !854, file: !76, line: 116, type: !339)
!854 = distinct !DISubprogram(name: "strbuf_append_char", scope: !76, file: !76, line: 116, type: !855, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !857)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !339, !30}
!857 = !{!853, !858}
!858 = !DILocalVariable(name: "c", arg: 2, scope: !854, file: !76, line: 116, type: !30)
!859 = !DILocation(line: 116, column: 49, scope: !854, inlinedAt: !860)
!860 = distinct !DILocation(line: 571, column: 5, scope: !837, inlinedAt: !848)
!861 = !DILocation(line: 116, column: 63, scope: !854, inlinedAt: !860)
!862 = !DILocation(line: 95, column: 57, scope: !661, inlinedAt: !863)
!863 = distinct !DILocation(line: 118, column: 5, scope: !854, inlinedAt: !860)
!864 = !DILocation(line: 95, column: 64, scope: !661, inlinedAt: !863)
!865 = !DILocation(line: 90, column: 49, scope: !654, inlinedAt: !866)
!866 = distinct !DILocation(line: 97, column: 15, scope: !660, inlinedAt: !863)
!867 = !DILocation(line: 92, column: 15, scope: !654, inlinedAt: !866)
!868 = !DILocation(line: 92, column: 25, scope: !654, inlinedAt: !866)
!869 = !DILocation(line: 92, column: 32, scope: !654, inlinedAt: !866)
!870 = !DILocation(line: 92, column: 5, scope: !654, inlinedAt: !866)
!871 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !863)
!872 = !DILocation(line: 97, column: 9, scope: !661, inlinedAt: !863)
!873 = !DILocation(line: 98, column: 36, scope: !660, inlinedAt: !863)
!874 = !DILocation(line: 98, column: 9, scope: !660, inlinedAt: !863)
!875 = !DILocation(line: 119, column: 21, scope: !854, inlinedAt: !860)
!876 = !DILocation(line: 99, column: 1, scope: !661, inlinedAt: !863)
!877 = !DILocation(line: 119, column: 8, scope: !854, inlinedAt: !860)
!878 = !DILocation(line: 119, column: 5, scope: !854, inlinedAt: !860)
!879 = !DILocation(line: 119, column: 25, scope: !854, inlinedAt: !860)
!880 = !DILocation(line: 120, column: 1, scope: !854, inlinedAt: !860)
!881 = !DILocation(line: 569, column: 9, scope: !837, inlinedAt: !848)
!882 = !DILocation(line: 569, column: 16, scope: !837, inlinedAt: !848)
!883 = !DILocation(line: 574, column: 10, scope: !884, inlinedAt: !848)
!884 = distinct !DILexicalBlock(scope: !837, file: !3, line: 574, column: 5)
!885 = !DILocation(line: 574, column: 5, scope: !884, inlinedAt: !848)
!886 = !DILocation(line: 575, column: 13, scope: !887, inlinedAt: !848)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 575, column: 13)
!888 = distinct !DILexicalBlock(scope: !889, file: !3, line: 574, column: 41)
!889 = distinct !DILexicalBlock(scope: !884, file: !3, line: 574, column: 5)
!890 = !DILocation(line: 575, column: 13, scope: !888, inlinedAt: !848)
!891 = !DILocation(line: 116, column: 49, scope: !854, inlinedAt: !892)
!892 = distinct !DILocation(line: 576, column: 13, scope: !887, inlinedAt: !848)
!893 = !DILocation(line: 116, column: 63, scope: !854, inlinedAt: !892)
!894 = !DILocation(line: 95, column: 57, scope: !661, inlinedAt: !895)
!895 = distinct !DILocation(line: 118, column: 5, scope: !854, inlinedAt: !892)
!896 = !DILocation(line: 95, column: 64, scope: !661, inlinedAt: !895)
!897 = !DILocation(line: 90, column: 49, scope: !654, inlinedAt: !898)
!898 = distinct !DILocation(line: 97, column: 15, scope: !660, inlinedAt: !895)
!899 = !DILocation(line: 92, column: 15, scope: !654, inlinedAt: !898)
!900 = !DILocation(line: 92, column: 25, scope: !654, inlinedAt: !898)
!901 = !DILocation(line: 92, column: 32, scope: !654, inlinedAt: !898)
!902 = !DILocation(line: 92, column: 5, scope: !654, inlinedAt: !898)
!903 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !895)
!904 = !DILocation(line: 97, column: 9, scope: !661, inlinedAt: !895)
!905 = !DILocation(line: 98, column: 36, scope: !660, inlinedAt: !895)
!906 = !DILocation(line: 98, column: 9, scope: !660, inlinedAt: !895)
!907 = !DILocation(line: 119, column: 21, scope: !854, inlinedAt: !892)
!908 = !DILocation(line: 99, column: 1, scope: !661, inlinedAt: !895)
!909 = !DILocation(line: 119, column: 8, scope: !854, inlinedAt: !892)
!910 = !DILocation(line: 119, column: 5, scope: !854, inlinedAt: !892)
!911 = !DILocation(line: 119, column: 25, scope: !854, inlinedAt: !892)
!912 = !DILocation(line: 120, column: 1, scope: !854, inlinedAt: !892)
!913 = !DILocation(line: 576, column: 13, scope: !887, inlinedAt: !848)
!914 = !DILocation(line: 0, scope: !887, inlinedAt: !848)
!915 = !DILocation(line: 580, column: 9, scope: !888, inlinedAt: !848)
!916 = !DILocation(line: 581, column: 9, scope: !888, inlinedAt: !848)
!917 = !DILocation(line: 582, column: 9, scope: !888, inlinedAt: !848)
!918 = !DILocation(line: 574, column: 37, scope: !889, inlinedAt: !848)
!919 = !DILocation(line: 574, column: 5, scope: !889, inlinedAt: !848)
!920 = !DILocation(line: 574, column: 19, scope: !889, inlinedAt: !848)
!921 = distinct !{!921, !922, !923}
!922 = !DILocation(line: 574, column: 5, scope: !884)
!923 = !DILocation(line: 583, column: 5, scope: !884)
!924 = !DILocation(line: 116, column: 49, scope: !854, inlinedAt: !925)
!925 = distinct !DILocation(line: 585, column: 5, scope: !837, inlinedAt: !848)
!926 = !DILocation(line: 116, column: 63, scope: !854, inlinedAt: !925)
!927 = !DILocation(line: 95, column: 57, scope: !661, inlinedAt: !928)
!928 = distinct !DILocation(line: 118, column: 5, scope: !854, inlinedAt: !925)
!929 = !DILocation(line: 95, column: 64, scope: !661, inlinedAt: !928)
!930 = !DILocation(line: 90, column: 49, scope: !654, inlinedAt: !931)
!931 = distinct !DILocation(line: 97, column: 15, scope: !660, inlinedAt: !928)
!932 = !DILocation(line: 92, column: 15, scope: !654, inlinedAt: !931)
!933 = !DILocation(line: 92, column: 25, scope: !654, inlinedAt: !931)
!934 = !DILocation(line: 92, column: 32, scope: !654, inlinedAt: !931)
!935 = !DILocation(line: 92, column: 5, scope: !654, inlinedAt: !931)
!936 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !928)
!937 = !DILocation(line: 97, column: 9, scope: !661, inlinedAt: !928)
!938 = !DILocation(line: 98, column: 36, scope: !660, inlinedAt: !928)
!939 = !DILocation(line: 98, column: 9, scope: !660, inlinedAt: !928)
!940 = !DILocation(line: 119, column: 21, scope: !854, inlinedAt: !925)
!941 = !DILocation(line: 99, column: 1, scope: !661, inlinedAt: !928)
!942 = !DILocation(line: 119, column: 8, scope: !854, inlinedAt: !925)
!943 = !DILocation(line: 119, column: 5, scope: !854, inlinedAt: !925)
!944 = !DILocation(line: 119, column: 25, scope: !854, inlinedAt: !925)
!945 = !DILocation(line: 120, column: 1, scope: !854, inlinedAt: !925)
!946 = !DILocation(line: 586, column: 1, scope: !837, inlinedAt: !848)
!947 = !DILocation(line: 683, column: 13, scope: !835)
!948 = !DILocalVariable(name: "l", arg: 1, scope: !949, file: !3, line: 618, type: !40)
!949 = distinct !DISubprogram(name: "json_append_object", scope: !3, file: !3, line: 618, type: !620, isLocal: true, isDefinition: true, scopeLine: 620, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !950)
!950 = !{!948, !951, !952, !953, !954, !955}
!951 = !DILocalVariable(name: "cfg", arg: 2, scope: !949, file: !3, line: 618, type: !63)
!952 = !DILocalVariable(name: "current_depth", arg: 3, scope: !949, file: !3, line: 619, type: !39)
!953 = !DILocalVariable(name: "json", arg: 4, scope: !949, file: !3, line: 619, type: !339)
!954 = !DILocalVariable(name: "comma", scope: !949, file: !3, line: 621, type: !39)
!955 = !DILocalVariable(name: "keytype", scope: !949, file: !3, line: 621, type: !39)
!956 = !DILocation(line: 618, column: 43, scope: !949, inlinedAt: !957)
!957 = distinct !DILocation(line: 685, column: 13, scope: !835)
!958 = !DILocation(line: 618, column: 61, scope: !949, inlinedAt: !957)
!959 = !DILocation(line: 619, column: 36, scope: !949, inlinedAt: !957)
!960 = !DILocation(line: 619, column: 61, scope: !949, inlinedAt: !957)
!961 = !DILocation(line: 116, column: 49, scope: !854, inlinedAt: !962)
!962 = distinct !DILocation(line: 624, column: 5, scope: !949, inlinedAt: !957)
!963 = !DILocation(line: 116, column: 63, scope: !854, inlinedAt: !962)
!964 = !DILocation(line: 95, column: 57, scope: !661, inlinedAt: !965)
!965 = distinct !DILocation(line: 118, column: 5, scope: !854, inlinedAt: !962)
!966 = !DILocation(line: 95, column: 64, scope: !661, inlinedAt: !965)
!967 = !DILocation(line: 90, column: 49, scope: !654, inlinedAt: !968)
!968 = distinct !DILocation(line: 97, column: 15, scope: !660, inlinedAt: !965)
!969 = !DILocation(line: 92, column: 15, scope: !654, inlinedAt: !968)
!970 = !DILocation(line: 92, column: 25, scope: !654, inlinedAt: !968)
!971 = !DILocation(line: 92, column: 32, scope: !654, inlinedAt: !968)
!972 = !DILocation(line: 92, column: 5, scope: !654, inlinedAt: !968)
!973 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !965)
!974 = !DILocation(line: 97, column: 9, scope: !661, inlinedAt: !965)
!975 = !DILocation(line: 98, column: 36, scope: !660, inlinedAt: !965)
!976 = !DILocation(line: 98, column: 9, scope: !660, inlinedAt: !965)
!977 = !DILocation(line: 119, column: 21, scope: !854, inlinedAt: !962)
!978 = !DILocation(line: 99, column: 1, scope: !661, inlinedAt: !965)
!979 = !DILocation(line: 119, column: 8, scope: !854, inlinedAt: !962)
!980 = !DILocation(line: 119, column: 5, scope: !854, inlinedAt: !962)
!981 = !DILocation(line: 119, column: 25, scope: !854, inlinedAt: !962)
!982 = !DILocation(line: 120, column: 1, scope: !854, inlinedAt: !962)
!983 = !DILocation(line: 626, column: 5, scope: !949, inlinedAt: !957)
!984 = !DILocation(line: 621, column: 9, scope: !949, inlinedAt: !957)
!985 = !DILocation(line: 629, column: 5, scope: !949, inlinedAt: !957)
!986 = !DILocation(line: 629, column: 12, scope: !949, inlinedAt: !957)
!987 = !DILocation(line: 629, column: 28, scope: !949, inlinedAt: !957)
!988 = !DILocation(line: 630, column: 13, scope: !989, inlinedAt: !957)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 630, column: 13)
!990 = distinct !DILexicalBlock(scope: !949, file: !3, line: 629, column: 34)
!991 = !DILocation(line: 630, column: 13, scope: !990, inlinedAt: !957)
!992 = !DILocation(line: 116, column: 49, scope: !854, inlinedAt: !993)
!993 = distinct !DILocation(line: 631, column: 13, scope: !989, inlinedAt: !957)
!994 = !DILocation(line: 116, column: 63, scope: !854, inlinedAt: !993)
!995 = !DILocation(line: 95, column: 57, scope: !661, inlinedAt: !996)
!996 = distinct !DILocation(line: 118, column: 5, scope: !854, inlinedAt: !993)
!997 = !DILocation(line: 95, column: 64, scope: !661, inlinedAt: !996)
!998 = !DILocation(line: 90, column: 49, scope: !654, inlinedAt: !999)
!999 = distinct !DILocation(line: 97, column: 15, scope: !660, inlinedAt: !996)
!1000 = !DILocation(line: 92, column: 15, scope: !654, inlinedAt: !999)
!1001 = !DILocation(line: 92, column: 25, scope: !654, inlinedAt: !999)
!1002 = !DILocation(line: 92, column: 32, scope: !654, inlinedAt: !999)
!1003 = !DILocation(line: 92, column: 5, scope: !654, inlinedAt: !999)
!1004 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !996)
!1005 = !DILocation(line: 97, column: 9, scope: !661, inlinedAt: !996)
!1006 = !DILocation(line: 98, column: 36, scope: !660, inlinedAt: !996)
!1007 = !DILocation(line: 98, column: 9, scope: !660, inlinedAt: !996)
!1008 = !DILocation(line: 119, column: 21, scope: !854, inlinedAt: !993)
!1009 = !DILocation(line: 99, column: 1, scope: !661, inlinedAt: !996)
!1010 = !DILocation(line: 119, column: 8, scope: !854, inlinedAt: !993)
!1011 = !DILocation(line: 119, column: 5, scope: !854, inlinedAt: !993)
!1012 = !DILocation(line: 119, column: 25, scope: !854, inlinedAt: !993)
!1013 = !DILocation(line: 120, column: 1, scope: !854, inlinedAt: !993)
!1014 = !DILocation(line: 631, column: 13, scope: !989, inlinedAt: !957)
!1015 = !DILocation(line: 0, scope: !989, inlinedAt: !957)
!1016 = !DILocation(line: 636, column: 19, scope: !990, inlinedAt: !957)
!1017 = !DILocation(line: 621, column: 16, scope: !949, inlinedAt: !957)
!1018 = !DILocation(line: 637, column: 21, scope: !1019, inlinedAt: !957)
!1019 = distinct !DILexicalBlock(scope: !990, file: !3, line: 637, column: 13)
!1020 = !DILocation(line: 637, column: 13, scope: !990, inlinedAt: !957)
!1021 = !DILocation(line: 116, column: 49, scope: !854, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 638, column: 13, scope: !1023, inlinedAt: !957)
!1023 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 637, column: 37)
!1024 = !DILocation(line: 116, column: 63, scope: !854, inlinedAt: !1022)
!1025 = !DILocation(line: 95, column: 57, scope: !661, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 118, column: 5, scope: !854, inlinedAt: !1022)
!1027 = !DILocation(line: 95, column: 64, scope: !661, inlinedAt: !1026)
!1028 = !DILocation(line: 90, column: 49, scope: !654, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 97, column: 15, scope: !660, inlinedAt: !1026)
!1030 = !DILocation(line: 92, column: 15, scope: !654, inlinedAt: !1029)
!1031 = !DILocation(line: 92, column: 25, scope: !654, inlinedAt: !1029)
!1032 = !DILocation(line: 92, column: 32, scope: !654, inlinedAt: !1029)
!1033 = !DILocation(line: 92, column: 5, scope: !654, inlinedAt: !1029)
!1034 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !1026)
!1035 = !DILocation(line: 97, column: 9, scope: !661, inlinedAt: !1026)
!1036 = !DILocation(line: 98, column: 36, scope: !660, inlinedAt: !1026)
!1037 = !DILocation(line: 98, column: 9, scope: !660, inlinedAt: !1026)
!1038 = !DILocation(line: 119, column: 21, scope: !854, inlinedAt: !1022)
!1039 = !DILocation(line: 99, column: 1, scope: !661, inlinedAt: !1026)
!1040 = !DILocation(line: 119, column: 8, scope: !854, inlinedAt: !1022)
!1041 = !DILocation(line: 119, column: 5, scope: !854, inlinedAt: !1022)
!1042 = !DILocation(line: 119, column: 25, scope: !854, inlinedAt: !1022)
!1043 = !DILocation(line: 120, column: 1, scope: !854, inlinedAt: !1022)
!1044 = !DILocation(line: 639, column: 13, scope: !1023, inlinedAt: !957)
!1045 = !DILocation(line: 127, column: 48, scope: !643, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 640, column: 13, scope: !1023, inlinedAt: !957)
!1047 = !DILocation(line: 127, column: 63, scope: !643, inlinedAt: !1046)
!1048 = !DILocation(line: 127, column: 70, scope: !643, inlinedAt: !1046)
!1049 = !DILocation(line: 95, column: 57, scope: !661, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 129, column: 5, scope: !643, inlinedAt: !1046)
!1051 = !DILocation(line: 95, column: 64, scope: !661, inlinedAt: !1050)
!1052 = !DILocation(line: 90, column: 49, scope: !654, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 97, column: 15, scope: !660, inlinedAt: !1050)
!1054 = !DILocation(line: 92, column: 15, scope: !654, inlinedAt: !1053)
!1055 = !DILocation(line: 92, column: 25, scope: !654, inlinedAt: !1053)
!1056 = !DILocation(line: 92, column: 32, scope: !654, inlinedAt: !1053)
!1057 = !DILocation(line: 92, column: 5, scope: !654, inlinedAt: !1053)
!1058 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !1050)
!1059 = !DILocation(line: 97, column: 9, scope: !661, inlinedAt: !1050)
!1060 = !DILocation(line: 98, column: 36, scope: !660, inlinedAt: !1050)
!1061 = !DILocation(line: 98, column: 9, scope: !660, inlinedAt: !1050)
!1062 = !DILocation(line: 130, column: 24, scope: !643, inlinedAt: !1046)
!1063 = !DILocation(line: 99, column: 1, scope: !661, inlinedAt: !1050)
!1064 = !DILocation(line: 130, column: 15, scope: !643, inlinedAt: !1046)
!1065 = !DILocation(line: 130, column: 19, scope: !643, inlinedAt: !1046)
!1066 = !DILocation(line: 130, column: 5, scope: !643, inlinedAt: !1046)
!1067 = !DILocation(line: 131, column: 15, scope: !643, inlinedAt: !1046)
!1068 = !DILocation(line: 641, column: 9, scope: !1023, inlinedAt: !957)
!1069 = !DILocation(line: 641, column: 28, scope: !1070, inlinedAt: !957)
!1070 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 641, column: 20)
!1071 = !DILocation(line: 641, column: 20, scope: !1019, inlinedAt: !957)
!1072 = !DILocation(line: 642, column: 13, scope: !1073, inlinedAt: !957)
!1073 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 641, column: 44)
!1074 = !DILocation(line: 116, column: 49, scope: !854, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 643, column: 13, scope: !1073, inlinedAt: !957)
!1076 = !DILocation(line: 116, column: 63, scope: !854, inlinedAt: !1075)
!1077 = !DILocation(line: 95, column: 57, scope: !661, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 118, column: 5, scope: !854, inlinedAt: !1075)
!1079 = !DILocation(line: 95, column: 64, scope: !661, inlinedAt: !1078)
!1080 = !DILocation(line: 90, column: 49, scope: !654, inlinedAt: !1081)
!1081 = distinct !DILocation(line: 97, column: 15, scope: !660, inlinedAt: !1078)
!1082 = !DILocation(line: 92, column: 15, scope: !654, inlinedAt: !1081)
!1083 = !DILocation(line: 92, column: 25, scope: !654, inlinedAt: !1081)
!1084 = !DILocation(line: 92, column: 32, scope: !654, inlinedAt: !1081)
!1085 = !DILocation(line: 92, column: 5, scope: !654, inlinedAt: !1081)
!1086 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !1078)
!1087 = !DILocation(line: 97, column: 9, scope: !661, inlinedAt: !1078)
!1088 = !DILocation(line: 98, column: 36, scope: !660, inlinedAt: !1078)
!1089 = !DILocation(line: 98, column: 9, scope: !660, inlinedAt: !1078)
!1090 = !DILocation(line: 119, column: 21, scope: !854, inlinedAt: !1075)
!1091 = !DILocation(line: 99, column: 1, scope: !661, inlinedAt: !1078)
!1092 = !DILocation(line: 119, column: 8, scope: !854, inlinedAt: !1075)
!1093 = !DILocation(line: 119, column: 5, scope: !854, inlinedAt: !1075)
!1094 = !DILocation(line: 119, column: 25, scope: !854, inlinedAt: !1075)
!1095 = !DILocation(line: 644, column: 9, scope: !1073, inlinedAt: !957)
!1096 = !DILocation(line: 448, column: 46, scope: !805, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 645, column: 13, scope: !1098, inlinedAt: !957)
!1098 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 644, column: 16)
!1099 = !DILocation(line: 448, column: 64, scope: !805, inlinedAt: !1097)
!1100 = !DILocation(line: 448, column: 79, scope: !805, inlinedAt: !1097)
!1101 = !DILocation(line: 448, column: 89, scope: !805, inlinedAt: !1097)
!1102 = !DILocation(line: 449, column: 47, scope: !805, inlinedAt: !1097)
!1103 = !DILocation(line: 451, column: 15, scope: !820, inlinedAt: !1097)
!1104 = !DILocation(line: 451, column: 10, scope: !820, inlinedAt: !1097)
!1105 = !DILocation(line: 451, column: 9, scope: !805, inlinedAt: !1097)
!1106 = !DILocation(line: 452, column: 9, scope: !820, inlinedAt: !1097)
!1107 = !DILocation(line: 454, column: 35, scope: !805, inlinedAt: !1097)
!1108 = !DILocation(line: 454, column: 19, scope: !805, inlinedAt: !1097)
!1109 = !DILocation(line: 453, column: 5, scope: !805, inlinedAt: !1097)
!1110 = !DILocation(line: 0, scope: !835)
!1111 = !DILocation(line: 651, column: 9, scope: !990, inlinedAt: !957)
!1112 = !DILocation(line: 652, column: 9, scope: !990, inlinedAt: !957)
!1113 = distinct !{!1113, !1114, !1115}
!1114 = !DILocation(line: 629, column: 5, scope: !949)
!1115 = !DILocation(line: 654, column: 5, scope: !949)
!1116 = !DILocation(line: 116, column: 49, scope: !854, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 656, column: 5, scope: !949, inlinedAt: !957)
!1118 = !DILocation(line: 116, column: 63, scope: !854, inlinedAt: !1117)
!1119 = !DILocation(line: 95, column: 57, scope: !661, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 118, column: 5, scope: !854, inlinedAt: !1117)
!1121 = !DILocation(line: 95, column: 64, scope: !661, inlinedAt: !1120)
!1122 = !DILocation(line: 90, column: 49, scope: !654, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 97, column: 15, scope: !660, inlinedAt: !1120)
!1124 = !DILocation(line: 92, column: 15, scope: !654, inlinedAt: !1123)
!1125 = !DILocation(line: 92, column: 25, scope: !654, inlinedAt: !1123)
!1126 = !DILocation(line: 92, column: 32, scope: !654, inlinedAt: !1123)
!1127 = !DILocation(line: 92, column: 5, scope: !654, inlinedAt: !1123)
!1128 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !1120)
!1129 = !DILocation(line: 97, column: 9, scope: !661, inlinedAt: !1120)
!1130 = !DILocation(line: 98, column: 36, scope: !660, inlinedAt: !1120)
!1131 = !DILocation(line: 98, column: 9, scope: !660, inlinedAt: !1120)
!1132 = !DILocation(line: 119, column: 21, scope: !854, inlinedAt: !1117)
!1133 = !DILocation(line: 99, column: 1, scope: !661, inlinedAt: !1120)
!1134 = !DILocation(line: 119, column: 8, scope: !854, inlinedAt: !1117)
!1135 = !DILocation(line: 119, column: 5, scope: !854, inlinedAt: !1117)
!1136 = !DILocation(line: 119, column: 25, scope: !854, inlinedAt: !1117)
!1137 = !DILocation(line: 120, column: 1, scope: !854, inlinedAt: !1117)
!1138 = !DILocation(line: 657, column: 1, scope: !949, inlinedAt: !957)
!1139 = !DILocation(line: 127, column: 48, scope: !643, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 688, column: 9, scope: !635)
!1141 = !DILocation(line: 127, column: 63, scope: !643, inlinedAt: !1140)
!1142 = !DILocation(line: 127, column: 70, scope: !643, inlinedAt: !1140)
!1143 = !DILocation(line: 95, column: 57, scope: !661, inlinedAt: !1144)
!1144 = distinct !DILocation(line: 129, column: 5, scope: !643, inlinedAt: !1140)
!1145 = !DILocation(line: 95, column: 64, scope: !661, inlinedAt: !1144)
!1146 = !DILocation(line: 90, column: 49, scope: !654, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 97, column: 15, scope: !660, inlinedAt: !1144)
!1148 = !DILocation(line: 92, column: 15, scope: !654, inlinedAt: !1147)
!1149 = !DILocation(line: 92, column: 25, scope: !654, inlinedAt: !1147)
!1150 = !DILocation(line: 92, column: 32, scope: !654, inlinedAt: !1147)
!1151 = !DILocation(line: 92, column: 5, scope: !654, inlinedAt: !1147)
!1152 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !1144)
!1153 = !DILocation(line: 97, column: 9, scope: !661, inlinedAt: !1144)
!1154 = !DILocation(line: 98, column: 36, scope: !660, inlinedAt: !1144)
!1155 = !DILocation(line: 98, column: 9, scope: !660, inlinedAt: !1144)
!1156 = !DILocation(line: 130, column: 24, scope: !643, inlinedAt: !1140)
!1157 = !DILocation(line: 99, column: 1, scope: !661, inlinedAt: !1144)
!1158 = !DILocation(line: 130, column: 15, scope: !643, inlinedAt: !1140)
!1159 = !DILocation(line: 130, column: 19, scope: !643, inlinedAt: !1140)
!1160 = !DILocation(line: 130, column: 5, scope: !643, inlinedAt: !1140)
!1161 = !DILocation(line: 131, column: 15, scope: !643, inlinedAt: !1140)
!1162 = !DILocation(line: 132, column: 1, scope: !643, inlinedAt: !1140)
!1163 = !DILocation(line: 689, column: 9, scope: !635)
!1164 = !DILocation(line: 691, column: 13, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !635, file: !3, line: 691, column: 13)
!1166 = !DILocation(line: 691, column: 35, scope: !1165)
!1167 = !DILocation(line: 691, column: 13, scope: !635)
!1168 = !DILocation(line: 127, column: 48, scope: !643, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 692, column: 13, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 691, column: 44)
!1171 = !DILocation(line: 127, column: 63, scope: !643, inlinedAt: !1169)
!1172 = !DILocation(line: 127, column: 70, scope: !643, inlinedAt: !1169)
!1173 = !DILocation(line: 95, column: 57, scope: !661, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 129, column: 5, scope: !643, inlinedAt: !1169)
!1175 = !DILocation(line: 95, column: 64, scope: !661, inlinedAt: !1174)
!1176 = !DILocation(line: 90, column: 49, scope: !654, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 97, column: 15, scope: !660, inlinedAt: !1174)
!1178 = !DILocation(line: 92, column: 15, scope: !654, inlinedAt: !1177)
!1179 = !DILocation(line: 92, column: 25, scope: !654, inlinedAt: !1177)
!1180 = !DILocation(line: 92, column: 32, scope: !654, inlinedAt: !1177)
!1181 = !DILocation(line: 92, column: 5, scope: !654, inlinedAt: !1177)
!1182 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !1174)
!1183 = !DILocation(line: 97, column: 9, scope: !661, inlinedAt: !1174)
!1184 = !DILocation(line: 98, column: 36, scope: !660, inlinedAt: !1174)
!1185 = !DILocation(line: 98, column: 9, scope: !660, inlinedAt: !1174)
!1186 = !DILocation(line: 130, column: 24, scope: !643, inlinedAt: !1169)
!1187 = !DILocation(line: 99, column: 1, scope: !661, inlinedAt: !1174)
!1188 = !DILocation(line: 130, column: 15, scope: !643, inlinedAt: !1169)
!1189 = !DILocation(line: 130, column: 19, scope: !643, inlinedAt: !1169)
!1190 = !DILocation(line: 130, column: 5, scope: !643, inlinedAt: !1169)
!1191 = !DILocation(line: 131, column: 15, scope: !643, inlinedAt: !1169)
!1192 = !DILocation(line: 132, column: 1, scope: !643, inlinedAt: !1169)
!1193 = !DILocation(line: 693, column: 13, scope: !1170)
!1194 = !DILocation(line: 448, column: 46, scope: !805, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 698, column: 9, scope: !635)
!1196 = !DILocation(line: 448, column: 64, scope: !805, inlinedAt: !1195)
!1197 = !DILocation(line: 448, column: 79, scope: !805, inlinedAt: !1195)
!1198 = !DILocation(line: 448, column: 89, scope: !805, inlinedAt: !1195)
!1199 = !DILocation(line: 449, column: 47, scope: !805, inlinedAt: !1195)
!1200 = !DILocation(line: 451, column: 15, scope: !820, inlinedAt: !1195)
!1201 = !DILocation(line: 451, column: 10, scope: !820, inlinedAt: !1195)
!1202 = !DILocation(line: 451, column: 9, scope: !805, inlinedAt: !1195)
!1203 = !DILocation(line: 452, column: 9, scope: !820, inlinedAt: !1195)
!1204 = !DILocation(line: 454, column: 35, scope: !805, inlinedAt: !1195)
!1205 = !DILocation(line: 454, column: 19, scope: !805, inlinedAt: !1195)
!1206 = !DILocation(line: 453, column: 5, scope: !805, inlinedAt: !1195)
!1207 = !DILocation(line: 455, column: 1, scope: !805, inlinedAt: !1195)
!1208 = !DILocation(line: 700, column: 5, scope: !635)
!1209 = !DILocation(line: 701, column: 1, scope: !619)
!1210 = distinct !DISubprogram(name: "json_append_string", scope: !3, file: !3, line: 463, type: !1211, isLocal: true, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1213)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{null, !40, !339, !39}
!1213 = !{!1214, !1215, !1216, !1217, !1218, !1219, !1220}
!1214 = !DILocalVariable(name: "l", arg: 1, scope: !1210, file: !3, line: 463, type: !40)
!1215 = !DILocalVariable(name: "json", arg: 2, scope: !1210, file: !3, line: 463, type: !339)
!1216 = !DILocalVariable(name: "lindex", arg: 3, scope: !1210, file: !3, line: 463, type: !39)
!1217 = !DILocalVariable(name: "escstr", scope: !1210, file: !3, line: 465, type: !29)
!1218 = !DILocalVariable(name: "i", scope: !1210, file: !3, line: 466, type: !39)
!1219 = !DILocalVariable(name: "str", scope: !1210, file: !3, line: 467, type: !29)
!1220 = !DILocalVariable(name: "len", scope: !1210, file: !3, line: 468, type: !439)
!1221 = !DILocation(line: 463, column: 43, scope: !1210)
!1222 = !DILocation(line: 463, column: 56, scope: !1210)
!1223 = !DILocation(line: 463, column: 66, scope: !1210)
!1224 = !DILocation(line: 468, column: 5, scope: !1210)
!1225 = !DILocation(line: 468, column: 12, scope: !1210)
!1226 = !DILocation(line: 470, column: 11, scope: !1210)
!1227 = !DILocation(line: 467, column: 17, scope: !1210)
!1228 = !DILocation(line: 476, column: 38, scope: !1210)
!1229 = !DILocation(line: 95, column: 57, scope: !661, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 476, column: 5, scope: !1210)
!1231 = !DILocation(line: 95, column: 64, scope: !661, inlinedAt: !1230)
!1232 = !DILocation(line: 90, column: 49, scope: !654, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 97, column: 15, scope: !660, inlinedAt: !1230)
!1234 = !DILocation(line: 92, column: 15, scope: !654, inlinedAt: !1233)
!1235 = !DILocation(line: 92, column: 25, scope: !654, inlinedAt: !1233)
!1236 = !DILocation(line: 92, column: 32, scope: !654, inlinedAt: !1233)
!1237 = !DILocation(line: 92, column: 5, scope: !654, inlinedAt: !1233)
!1238 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !1230)
!1239 = !DILocation(line: 97, column: 9, scope: !661, inlinedAt: !1230)
!1240 = !DILocation(line: 98, column: 36, scope: !660, inlinedAt: !1230)
!1241 = !DILocation(line: 98, column: 9, scope: !660, inlinedAt: !1230)
!1242 = !DILocation(line: 124, column: 21, scope: !1243, inlinedAt: !1247)
!1243 = distinct !DISubprogram(name: "strbuf_append_char_unsafe", scope: !76, file: !76, line: 122, type: !855, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1244)
!1244 = !{!1245, !1246}
!1245 = !DILocalVariable(name: "s", arg: 1, scope: !1243, file: !76, line: 122, type: !339)
!1246 = !DILocalVariable(name: "c", arg: 2, scope: !1243, file: !76, line: 122, type: !30)
!1247 = distinct !DILocation(line: 478, column: 5, scope: !1210)
!1248 = !DILocation(line: 99, column: 1, scope: !661, inlinedAt: !1230)
!1249 = !DILocation(line: 122, column: 56, scope: !1243, inlinedAt: !1247)
!1250 = !DILocation(line: 122, column: 70, scope: !1243, inlinedAt: !1247)
!1251 = !DILocation(line: 124, column: 8, scope: !1243, inlinedAt: !1247)
!1252 = !DILocation(line: 124, column: 5, scope: !1243, inlinedAt: !1247)
!1253 = !DILocation(line: 124, column: 25, scope: !1243, inlinedAt: !1247)
!1254 = !DILocation(line: 125, column: 1, scope: !1243, inlinedAt: !1247)
!1255 = !DILocation(line: 466, column: 9, scope: !1210)
!1256 = !DILocation(line: 479, column: 10, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1210, file: !3, line: 479, column: 5)
!1258 = !DILocation(line: 479, column: 21, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 479, column: 5)
!1260 = !DILocation(line: 479, column: 19, scope: !1259)
!1261 = !DILocation(line: 479, column: 5, scope: !1257)
!1262 = !DILocation(line: 480, column: 45, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 479, column: 31)
!1264 = !DILocation(line: 480, column: 18, scope: !1263)
!1265 = !{!158, !158, i64 0}
!1266 = !DILocation(line: 465, column: 17, scope: !1210)
!1267 = !DILocation(line: 481, column: 13, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 481, column: 13)
!1269 = !DILocation(line: 481, column: 13, scope: !1263)
!1270 = !DILocation(line: 482, column: 13, scope: !1268)
!1271 = !DILocation(line: 122, column: 56, scope: !1243, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 484, column: 13, scope: !1268)
!1273 = !DILocation(line: 122, column: 70, scope: !1243, inlinedAt: !1272)
!1274 = !DILocation(line: 124, column: 8, scope: !1243, inlinedAt: !1272)
!1275 = !DILocation(line: 124, column: 21, scope: !1243, inlinedAt: !1272)
!1276 = !DILocation(line: 124, column: 5, scope: !1243, inlinedAt: !1272)
!1277 = !DILocation(line: 124, column: 25, scope: !1243, inlinedAt: !1272)
!1278 = !DILocation(line: 125, column: 1, scope: !1243, inlinedAt: !1272)
!1279 = !DILocation(line: 479, column: 27, scope: !1259)
!1280 = !DILocation(line: 479, column: 5, scope: !1259)
!1281 = distinct !{!1281, !1261, !1282}
!1282 = !DILocation(line: 485, column: 5, scope: !1257)
!1283 = !DILocation(line: 122, column: 56, scope: !1243, inlinedAt: !1284)
!1284 = distinct !DILocation(line: 486, column: 5, scope: !1210)
!1285 = !DILocation(line: 122, column: 70, scope: !1243, inlinedAt: !1284)
!1286 = !DILocation(line: 124, column: 8, scope: !1243, inlinedAt: !1284)
!1287 = !DILocation(line: 124, column: 21, scope: !1243, inlinedAt: !1284)
!1288 = !DILocation(line: 124, column: 5, scope: !1243, inlinedAt: !1284)
!1289 = !DILocation(line: 124, column: 25, scope: !1243, inlinedAt: !1284)
!1290 = !DILocation(line: 125, column: 1, scope: !1243, inlinedAt: !1284)
!1291 = !DILocation(line: 487, column: 1, scope: !1210)
!1292 = distinct !DISubprogram(name: "json_append_number", scope: !3, file: !3, line: 588, type: !1293, isLocal: true, isDefinition: true, scopeLine: 590, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1295)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{null, !40, !63, !339, !39}
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1301}
!1296 = !DILocalVariable(name: "l", arg: 1, scope: !1292, file: !3, line: 588, type: !40)
!1297 = !DILocalVariable(name: "cfg", arg: 2, scope: !1292, file: !3, line: 588, type: !63)
!1298 = !DILocalVariable(name: "json", arg: 3, scope: !1292, file: !3, line: 589, type: !339)
!1299 = !DILocalVariable(name: "lindex", arg: 4, scope: !1292, file: !3, line: 589, type: !39)
!1300 = !DILocalVariable(name: "num", scope: !1292, file: !3, line: 591, type: !435)
!1301 = !DILocalVariable(name: "len", scope: !1292, file: !3, line: 592, type: !39)
!1302 = !DILocation(line: 588, column: 43, scope: !1292)
!1303 = !DILocation(line: 588, column: 61, scope: !1292)
!1304 = !DILocation(line: 589, column: 42, scope: !1292)
!1305 = !DILocation(line: 589, column: 52, scope: !1292)
!1306 = !DILocation(line: 591, column: 18, scope: !1292)
!1307 = !DILocation(line: 591, column: 12, scope: !1292)
!1308 = !DILocation(line: 594, column: 14, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 594, column: 9)
!1310 = !{!156, !150, i64 1328}
!1311 = !DILocation(line: 594, column: 37, scope: !1309)
!1312 = !DILocation(line: 594, column: 9, scope: !1292)
!1313 = !DILocation(line: 596, column: 13, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 596, column: 13)
!1315 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 594, column: 43)
!1316 = !DILocation(line: 596, column: 24, scope: !1314)
!1317 = !DILocation(line: 596, column: 27, scope: !1314)
!1318 = !DILocation(line: 596, column: 13, scope: !1315)
!1319 = !DILocation(line: 448, column: 46, scope: !805, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 597, column: 13, scope: !1314)
!1321 = !DILocation(line: 448, column: 64, scope: !805, inlinedAt: !1320)
!1322 = !DILocation(line: 448, column: 79, scope: !805, inlinedAt: !1320)
!1323 = !DILocation(line: 448, column: 89, scope: !805, inlinedAt: !1320)
!1324 = !DILocation(line: 449, column: 47, scope: !805, inlinedAt: !1320)
!1325 = !DILocation(line: 451, column: 15, scope: !820, inlinedAt: !1320)
!1326 = !DILocation(line: 451, column: 10, scope: !820, inlinedAt: !1320)
!1327 = !DILocation(line: 451, column: 9, scope: !805, inlinedAt: !1320)
!1328 = !DILocation(line: 452, column: 9, scope: !820, inlinedAt: !1320)
!1329 = !DILocation(line: 454, column: 35, scope: !805, inlinedAt: !1320)
!1330 = !DILocation(line: 454, column: 19, scope: !805, inlinedAt: !1320)
!1331 = !DILocation(line: 453, column: 5, scope: !805, inlinedAt: !1320)
!1332 = !DILocation(line: 455, column: 1, scope: !805, inlinedAt: !1320)
!1333 = !DILocation(line: 597, column: 13, scope: !1314)
!1334 = !DILocation(line: 598, column: 44, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 598, column: 16)
!1336 = !DILocation(line: 0, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 607, column: 13)
!1338 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 605, column: 12)
!1339 = !DILocation(line: 598, column: 16, scope: !1309)
!1340 = !DILocation(line: 601, column: 13, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 601, column: 13)
!1342 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 598, column: 50)
!1343 = !DILocation(line: 601, column: 13, scope: !1342)
!1344 = !DILocation(line: 127, column: 48, scope: !643, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 602, column: 13, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 601, column: 25)
!1347 = !DILocation(line: 127, column: 63, scope: !643, inlinedAt: !1345)
!1348 = !DILocation(line: 127, column: 70, scope: !643, inlinedAt: !1345)
!1349 = !DILocation(line: 95, column: 57, scope: !661, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 129, column: 5, scope: !643, inlinedAt: !1345)
!1351 = !DILocation(line: 95, column: 64, scope: !661, inlinedAt: !1350)
!1352 = !DILocation(line: 90, column: 49, scope: !654, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 97, column: 15, scope: !660, inlinedAt: !1350)
!1354 = !DILocation(line: 92, column: 15, scope: !654, inlinedAt: !1353)
!1355 = !DILocation(line: 92, column: 25, scope: !654, inlinedAt: !1353)
!1356 = !DILocation(line: 92, column: 32, scope: !654, inlinedAt: !1353)
!1357 = !DILocation(line: 92, column: 5, scope: !654, inlinedAt: !1353)
!1358 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !1350)
!1359 = !DILocation(line: 97, column: 9, scope: !661, inlinedAt: !1350)
!1360 = !DILocation(line: 98, column: 36, scope: !660, inlinedAt: !1350)
!1361 = !DILocation(line: 98, column: 9, scope: !660, inlinedAt: !1350)
!1362 = !DILocation(line: 130, column: 24, scope: !643, inlinedAt: !1345)
!1363 = !DILocation(line: 99, column: 1, scope: !661, inlinedAt: !1350)
!1364 = !DILocation(line: 130, column: 15, scope: !643, inlinedAt: !1345)
!1365 = !DILocation(line: 130, column: 19, scope: !643, inlinedAt: !1345)
!1366 = !DILocation(line: 130, column: 5, scope: !643, inlinedAt: !1345)
!1367 = !DILocation(line: 603, column: 13, scope: !1346)
!1368 = !DILocation(line: 607, column: 13, scope: !1337)
!1369 = !DILocation(line: 607, column: 24, scope: !1337)
!1370 = !DILocation(line: 607, column: 27, scope: !1337)
!1371 = !DILocation(line: 607, column: 13, scope: !1338)
!1372 = !DILocation(line: 127, column: 48, scope: !643, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 608, column: 13, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 607, column: 39)
!1375 = !DILocation(line: 127, column: 63, scope: !643, inlinedAt: !1373)
!1376 = !DILocation(line: 127, column: 70, scope: !643, inlinedAt: !1373)
!1377 = !DILocation(line: 95, column: 57, scope: !661, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 129, column: 5, scope: !643, inlinedAt: !1373)
!1379 = !DILocation(line: 95, column: 64, scope: !661, inlinedAt: !1378)
!1380 = !DILocation(line: 90, column: 49, scope: !654, inlinedAt: !1381)
!1381 = distinct !DILocation(line: 97, column: 15, scope: !660, inlinedAt: !1378)
!1382 = !DILocation(line: 92, column: 15, scope: !654, inlinedAt: !1381)
!1383 = !DILocation(line: 92, column: 25, scope: !654, inlinedAt: !1381)
!1384 = !DILocation(line: 92, column: 32, scope: !654, inlinedAt: !1381)
!1385 = !DILocation(line: 92, column: 5, scope: !654, inlinedAt: !1381)
!1386 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !1378)
!1387 = !DILocation(line: 97, column: 9, scope: !661, inlinedAt: !1378)
!1388 = !DILocation(line: 98, column: 36, scope: !660, inlinedAt: !1378)
!1389 = !DILocation(line: 98, column: 9, scope: !660, inlinedAt: !1378)
!1390 = !DILocation(line: 130, column: 24, scope: !643, inlinedAt: !1373)
!1391 = !DILocation(line: 99, column: 1, scope: !661, inlinedAt: !1378)
!1392 = !DILocation(line: 130, column: 15, scope: !643, inlinedAt: !1373)
!1393 = !DILocation(line: 130, column: 19, scope: !643, inlinedAt: !1373)
!1394 = !DILocation(line: 130, column: 5, scope: !643, inlinedAt: !1373)
!1395 = !DILocation(line: 609, column: 13, scope: !1374)
!1396 = !DILocation(line: 95, column: 57, scope: !661, inlinedAt: !1397)
!1397 = distinct !DILocation(line: 613, column: 5, scope: !1292)
!1398 = !DILocation(line: 95, column: 64, scope: !661, inlinedAt: !1397)
!1399 = !DILocation(line: 90, column: 49, scope: !654, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 97, column: 15, scope: !660, inlinedAt: !1397)
!1401 = !DILocation(line: 92, column: 15, scope: !654, inlinedAt: !1400)
!1402 = !DILocation(line: 92, column: 25, scope: !654, inlinedAt: !1400)
!1403 = !DILocation(line: 92, column: 32, scope: !654, inlinedAt: !1400)
!1404 = !DILocation(line: 92, column: 5, scope: !654, inlinedAt: !1400)
!1405 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !1397)
!1406 = !DILocation(line: 97, column: 9, scope: !661, inlinedAt: !1397)
!1407 = !DILocation(line: 98, column: 36, scope: !660, inlinedAt: !1397)
!1408 = !DILocation(line: 98, column: 9, scope: !660, inlinedAt: !1397)
!1409 = !DILocation(line: 103, column: 24, scope: !1410, inlinedAt: !1415)
!1410 = distinct !DISubprogram(name: "strbuf_empty_ptr", scope: !76, file: !76, line: 101, type: !1411, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1413)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!80, !339}
!1413 = !{!1414}
!1414 = !DILocalVariable(name: "s", arg: 1, scope: !1410, file: !76, line: 101, type: !339)
!1415 = distinct !DILocation(line: 614, column: 24, scope: !1292)
!1416 = !DILocation(line: 99, column: 1, scope: !661, inlinedAt: !1397)
!1417 = !DILocation(line: 101, column: 48, scope: !1410, inlinedAt: !1415)
!1418 = !DILocation(line: 103, column: 15, scope: !1410, inlinedAt: !1415)
!1419 = !DILocation(line: 103, column: 19, scope: !1410, inlinedAt: !1415)
!1420 = !DILocation(line: 103, column: 5, scope: !1410, inlinedAt: !1415)
!1421 = !DILocation(line: 614, column: 58, scope: !1292)
!1422 = !{!156, !150, i64 1332}
!1423 = !DILocation(line: 614, column: 11, scope: !1292)
!1424 = !DILocation(line: 592, column: 9, scope: !1292)
!1425 = !DILocalVariable(name: "s", arg: 1, scope: !1426, file: !76, line: 106, type: !339)
!1426 = distinct !DISubprogram(name: "strbuf_extend_length", scope: !76, file: !76, line: 106, type: !662, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1427)
!1427 = !{!1425, !1428}
!1428 = !DILocalVariable(name: "len", arg: 2, scope: !1426, file: !76, line: 106, type: !39)
!1429 = !DILocation(line: 106, column: 51, scope: !1426, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 615, column: 5, scope: !1292)
!1431 = !DILocation(line: 106, column: 58, scope: !1426, inlinedAt: !1430)
!1432 = !DILocation(line: 616, column: 1, scope: !1292)
!1433 = !DILocation(line: 0, scope: !1346)
!1434 = distinct !DISubprogram(name: "json_next_token", scope: !3, file: !3, line: 1014, type: !1435, isLocal: true, isDefinition: true, scopeLine: 1015, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1437)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !504, !505}
!1437 = !{!1438, !1439, !1440, !1443}
!1438 = !DILocalVariable(name: "json", arg: 1, scope: !1434, file: !3, line: 1014, type: !504)
!1439 = !DILocalVariable(name: "token", arg: 2, scope: !1434, file: !3, line: 1014, type: !505)
!1440 = !DILocalVariable(name: "ch2token", scope: !1434, file: !3, line: 1016, type: !1441)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!1443 = !DILocalVariable(name: "ch", scope: !1434, file: !3, line: 1017, type: !39)
!1444 = !DILocalVariable(name: "utf8", scope: !1445, file: !3, line: 821, type: !1454)
!1445 = distinct !DISubprogram(name: "json_append_unicode_escape", scope: !3, file: !3, line: 819, type: !1446, isLocal: true, isDefinition: true, scopeLine: 820, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1448)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!39, !504}
!1448 = !{!1449, !1444, !1450, !1451, !1452, !1453}
!1449 = !DILocalVariable(name: "json", arg: 1, scope: !1445, file: !3, line: 819, type: !504)
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
!1465 = !DILocalVariable(name: "json", arg: 1, scope: !1463, file: !3, line: 885, type: !504)
!1466 = !DILocalVariable(name: "token", arg: 2, scope: !1463, file: !3, line: 885, type: !505)
!1467 = !DILocalVariable(name: "escape2char", scope: !1463, file: !3, line: 887, type: !80)
!1468 = !DILocalVariable(name: "ch", scope: !1463, file: !3, line: 888, type: !31)
!1469 = distinct !DILocation(line: 1055, column: 9, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 1054, column: 20)
!1471 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 1054, column: 9)
!1472 = !DILocation(line: 1014, column: 43, scope: !1434)
!1473 = !DILocation(line: 1014, column: 63, scope: !1434)
!1474 = !DILocation(line: 1016, column: 47, scope: !1434)
!1475 = !DILocation(line: 1016, column: 30, scope: !1434)
!1476 = !DILocation(line: 1020, column: 5, scope: !1434)
!1477 = !DILocation(line: 1021, column: 37, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 1020, column: 15)
!1479 = !DILocation(line: 1021, column: 29, scope: !1478)
!1480 = !DILocation(line: 1022, column: 23, scope: !1478)
!1481 = !DILocation(line: 1022, column: 16, scope: !1478)
!1482 = !DILocation(line: 1022, column: 21, scope: !1478)
!1483 = !DILocation(line: 1023, column: 25, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 1023, column: 13)
!1485 = !DILocation(line: 1023, column: 13, scope: !1478)
!1486 = !DILocation(line: 1025, column: 18, scope: !1478)
!1487 = distinct !{!1487, !1476, !1488}
!1488 = !DILocation(line: 1026, column: 5, scope: !1434)
!1489 = !DILocation(line: 1030, column: 30, scope: !1434)
!1490 = !DILocation(line: 1030, column: 38, scope: !1434)
!1491 = !DILocation(line: 1030, column: 20, scope: !1434)
!1492 = !DILocation(line: 1030, column: 12, scope: !1434)
!1493 = !DILocation(line: 1030, column: 18, scope: !1434)
!1494 = !DILocation(line: 1033, column: 21, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 1033, column: 9)
!1496 = !DILocation(line: 1033, column: 9, scope: !1434)
!1497 = !DILocalVariable(name: "token", arg: 1, scope: !1498, file: !3, line: 877, type: !505)
!1498 = distinct !DISubprogram(name: "json_set_token_error", scope: !3, file: !3, line: 877, type: !1499, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1501)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{null, !505, !504, !29}
!1501 = !{!1497, !1502, !1503}
!1502 = !DILocalVariable(name: "json", arg: 2, scope: !1498, file: !3, line: 877, type: !504)
!1503 = !DILocalVariable(name: "errtype", arg: 3, scope: !1498, file: !3, line: 878, type: !29)
!1504 = !DILocation(line: 877, column: 48, scope: !1498, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 1034, column: 9, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 1033, column: 33)
!1507 = !DILocation(line: 877, column: 69, scope: !1498, inlinedAt: !1505)
!1508 = !DILocation(line: 878, column: 46, scope: !1498, inlinedAt: !1505)
!1509 = !DILocation(line: 880, column: 17, scope: !1498, inlinedAt: !1505)
!1510 = !DILocation(line: 881, column: 30, scope: !1498, inlinedAt: !1505)
!1511 = !DILocation(line: 881, column: 20, scope: !1498, inlinedAt: !1505)
!1512 = !DILocation(line: 881, column: 18, scope: !1498, inlinedAt: !1505)
!1513 = !DILocation(line: 882, column: 18, scope: !1498, inlinedAt: !1505)
!1514 = !DILocation(line: 882, column: 25, scope: !1498, inlinedAt: !1505)
!1515 = !DILocation(line: 883, column: 1, scope: !1498, inlinedAt: !1505)
!1516 = !DILocation(line: 1035, column: 9, scope: !1506)
!1517 = !DILocation(line: 1038, column: 21, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 1038, column: 9)
!1519 = !DILocation(line: 1038, column: 9, scope: !1434)
!1520 = !DILocation(line: 1043, column: 21, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 1043, column: 9)
!1522 = !DILocation(line: 1043, column: 9, scope: !1434)
!1523 = !DILocation(line: 1044, column: 18, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 1043, column: 35)
!1525 = !DILocation(line: 1045, column: 9, scope: !1524)
!1526 = !DILocation(line: 1054, column: 12, scope: !1471)
!1527 = !DILocation(line: 1054, column: 9, scope: !1434)
!1528 = !DILocation(line: 885, column: 50, scope: !1463, inlinedAt: !1469)
!1529 = !DILocation(line: 885, column: 70, scope: !1463, inlinedAt: !1469)
!1530 = !DILocation(line: 887, column: 11, scope: !1463, inlinedAt: !1469)
!1531 = !DILocation(line: 891, column: 5, scope: !1463, inlinedAt: !1469)
!1532 = !DILocation(line: 894, column: 14, scope: !1463, inlinedAt: !1469)
!1533 = !DILocation(line: 900, column: 24, scope: !1463, inlinedAt: !1469)
!1534 = !DILocation(line: 78, column: 43, scope: !374, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 900, column: 5, scope: !1463, inlinedAt: !1469)
!1536 = !DILocation(line: 80, column: 8, scope: !374, inlinedAt: !1535)
!1537 = !DILocation(line: 80, column: 15, scope: !374, inlinedAt: !1535)
!1538 = !DILocation(line: 81, column: 1, scope: !374, inlinedAt: !1535)
!1539 = !DILocation(line: 902, column: 5, scope: !1463, inlinedAt: !1469)
!1540 = !DILocation(line: 902, column: 18, scope: !1463, inlinedAt: !1469)
!1541 = !DILocation(line: 888, column: 10, scope: !1463, inlinedAt: !1469)
!1542 = !DILocation(line: 902, column: 30, scope: !1463, inlinedAt: !1469)
!1543 = !DILocation(line: 903, column: 14, scope: !1544, inlinedAt: !1469)
!1544 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 903, column: 13)
!1545 = !DILocation(line: 903, column: 13, scope: !1462, inlinedAt: !1469)
!1546 = !DILocation(line: 877, column: 48, scope: !1498, inlinedAt: !1547)
!1547 = distinct !DILocation(line: 905, column: 13, scope: !1548, inlinedAt: !1469)
!1548 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 903, column: 18)
!1549 = !DILocation(line: 877, column: 69, scope: !1498, inlinedAt: !1547)
!1550 = !DILocation(line: 878, column: 46, scope: !1498, inlinedAt: !1547)
!1551 = !DILocation(line: 880, column: 17, scope: !1498, inlinedAt: !1547)
!1552 = !DILocation(line: 881, column: 38, scope: !1498, inlinedAt: !1547)
!1553 = !DILocation(line: 881, column: 30, scope: !1498, inlinedAt: !1547)
!1554 = !DILocation(line: 881, column: 20, scope: !1498, inlinedAt: !1547)
!1555 = !DILocation(line: 881, column: 18, scope: !1498, inlinedAt: !1547)
!1556 = !DILocation(line: 882, column: 18, scope: !1498, inlinedAt: !1547)
!1557 = !DILocation(line: 882, column: 25, scope: !1498, inlinedAt: !1547)
!1558 = !DILocation(line: 883, column: 1, scope: !1498, inlinedAt: !1547)
!1559 = !DILocation(line: 906, column: 13, scope: !1548, inlinedAt: !1469)
!1560 = !DILocation(line: 910, column: 16, scope: !1461, inlinedAt: !1469)
!1561 = !DILocation(line: 910, column: 13, scope: !1462, inlinedAt: !1469)
!1562 = !DILocation(line: 912, column: 30, scope: !1460, inlinedAt: !1469)
!1563 = !DILocation(line: 912, column: 18, scope: !1460, inlinedAt: !1469)
!1564 = !DILocation(line: 915, column: 18, scope: !1460, inlinedAt: !1469)
!1565 = !DILocation(line: 916, column: 20, scope: !1459, inlinedAt: !1469)
!1566 = !DILocation(line: 916, column: 17, scope: !1460, inlinedAt: !1469)
!1567 = !DILocation(line: 819, column: 53, scope: !1445, inlinedAt: !1456)
!1568 = !DILocation(line: 821, column: 5, scope: !1445, inlinedAt: !1456)
!1569 = !DILocation(line: 825, column: 9, scope: !1445, inlinedAt: !1456)
!1570 = !DILocation(line: 828, column: 39, scope: !1445, inlinedAt: !1456)
!1571 = !DILocation(line: 828, column: 17, scope: !1445, inlinedAt: !1456)
!1572 = !DILocation(line: 822, column: 9, scope: !1445, inlinedAt: !1456)
!1573 = !DILocation(line: 829, column: 19, scope: !1574, inlinedAt: !1456)
!1574 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 829, column: 9)
!1575 = !DILocation(line: 829, column: 9, scope: !1445, inlinedAt: !1456)
!1576 = !DILocation(line: 838, column: 20, scope: !1577, inlinedAt: !1456)
!1577 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 838, column: 9)
!1578 = !DILocation(line: 838, column: 30, scope: !1577, inlinedAt: !1456)
!1579 = !DILocation(line: 838, column: 9, scope: !1445, inlinedAt: !1456)
!1580 = !DILocation(line: 840, column: 23, scope: !1581, inlinedAt: !1456)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 840, column: 13)
!1582 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 838, column: 41)
!1583 = !DILocation(line: 840, column: 13, scope: !1582, inlinedAt: !1456)
!1584 = !DILocation(line: 844, column: 21, scope: !1585, inlinedAt: !1456)
!1585 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 844, column: 13)
!1586 = !DILocation(line: 844, column: 25, scope: !1585, inlinedAt: !1456)
!1587 = !DILocation(line: 844, column: 13, scope: !1585, inlinedAt: !1456)
!1588 = !DILocation(line: 844, column: 39, scope: !1585, inlinedAt: !1456)
!1589 = !DILocation(line: 844, column: 47, scope: !1585, inlinedAt: !1456)
!1590 = !DILocation(line: 845, column: 38, scope: !1585, inlinedAt: !1456)
!1591 = !DILocation(line: 845, column: 13, scope: !1585, inlinedAt: !1456)
!1592 = !DILocation(line: 845, column: 43, scope: !1585, inlinedAt: !1456)
!1593 = !DILocation(line: 844, column: 13, scope: !1582, inlinedAt: !1456)
!1594 = !DILocation(line: 850, column: 51, scope: !1582, inlinedAt: !1456)
!1595 = !DILocation(line: 850, column: 25, scope: !1582, inlinedAt: !1456)
!1596 = !DILocation(line: 823, column: 9, scope: !1445, inlinedAt: !1456)
!1597 = !DILocation(line: 851, column: 27, scope: !1598, inlinedAt: !1456)
!1598 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 851, column: 13)
!1599 = !DILocation(line: 851, column: 13, scope: !1582, inlinedAt: !1456)
!1600 = !DILocation(line: 855, column: 28, scope: !1601, inlinedAt: !1456)
!1601 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 855, column: 13)
!1602 = !DILocation(line: 855, column: 38, scope: !1601, inlinedAt: !1456)
!1603 = !DILocation(line: 855, column: 13, scope: !1582, inlinedAt: !1456)
!1604 = !DILocation(line: 859, column: 41, scope: !1582, inlinedAt: !1456)
!1605 = !DILocation(line: 860, column: 23, scope: !1582, inlinedAt: !1456)
!1606 = !DILocation(line: 861, column: 32, scope: !1582, inlinedAt: !1456)
!1607 = !DILocation(line: 861, column: 49, scope: !1582, inlinedAt: !1456)
!1608 = !DILocation(line: 863, column: 5, scope: !1582, inlinedAt: !1456)
!1609 = !DILocation(line: 0, scope: !1445, inlinedAt: !1456)
!1610 = !DILocalVariable(name: "utf8", arg: 1, scope: !1611, file: !3, line: 775, type: !80)
!1611 = distinct !DISubprogram(name: "codepoint_to_utf8", scope: !3, file: !3, line: 775, type: !1612, isLocal: true, isDefinition: true, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1614)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!39, !80, !39}
!1614 = !{!1610, !1615}
!1615 = !DILocalVariable(name: "codepoint", arg: 2, scope: !1611, file: !3, line: 775, type: !39)
!1616 = !DILocation(line: 775, column: 36, scope: !1611, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 866, column: 11, scope: !1445, inlinedAt: !1456)
!1618 = !DILocation(line: 775, column: 46, scope: !1611, inlinedAt: !1617)
!1619 = !DILocation(line: 778, column: 19, scope: !1620, inlinedAt: !1617)
!1620 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 778, column: 9)
!1621 = !DILocation(line: 778, column: 9, scope: !1611, inlinedAt: !1617)
!1622 = !DILocation(line: 779, column: 19, scope: !1623, inlinedAt: !1617)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 778, column: 28)
!1624 = !DILocation(line: 779, column: 17, scope: !1623, inlinedAt: !1617)
!1625 = !DILocation(line: 780, column: 9, scope: !1623, inlinedAt: !1617)
!1626 = !DILocation(line: 784, column: 19, scope: !1627, inlinedAt: !1617)
!1627 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 784, column: 9)
!1628 = !DILocation(line: 784, column: 9, scope: !1611, inlinedAt: !1617)
!1629 = !DILocation(line: 785, column: 30, scope: !1630, inlinedAt: !1617)
!1630 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 784, column: 29)
!1631 = !DILocation(line: 785, column: 19, scope: !1630, inlinedAt: !1617)
!1632 = !DILocation(line: 785, column: 17, scope: !1630, inlinedAt: !1617)
!1633 = !DILocation(line: 786, column: 19, scope: !1630, inlinedAt: !1617)
!1634 = !DILocation(line: 786, column: 17, scope: !1630, inlinedAt: !1617)
!1635 = !DILocation(line: 787, column: 9, scope: !1630, inlinedAt: !1617)
!1636 = !DILocation(line: 791, column: 19, scope: !1637, inlinedAt: !1617)
!1637 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 791, column: 9)
!1638 = !DILocation(line: 791, column: 9, scope: !1611, inlinedAt: !1617)
!1639 = !DILocation(line: 792, column: 30, scope: !1640, inlinedAt: !1617)
!1640 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 791, column: 30)
!1641 = !DILocation(line: 792, column: 19, scope: !1640, inlinedAt: !1617)
!1642 = !DILocation(line: 792, column: 17, scope: !1640, inlinedAt: !1617)
!1643 = !DILocation(line: 793, column: 31, scope: !1640, inlinedAt: !1617)
!1644 = !DILocation(line: 793, column: 19, scope: !1640, inlinedAt: !1617)
!1645 = !DILocation(line: 793, column: 17, scope: !1640, inlinedAt: !1617)
!1646 = !DILocation(line: 794, column: 19, scope: !1640, inlinedAt: !1617)
!1647 = !DILocation(line: 794, column: 17, scope: !1640, inlinedAt: !1617)
!1648 = !DILocation(line: 795, column: 9, scope: !1640, inlinedAt: !1617)
!1649 = !DILocation(line: 799, column: 19, scope: !1650, inlinedAt: !1617)
!1650 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 799, column: 9)
!1651 = !DILocation(line: 799, column: 9, scope: !1611, inlinedAt: !1617)
!1652 = !DILocation(line: 800, column: 30, scope: !1653, inlinedAt: !1617)
!1653 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 799, column: 32)
!1654 = !DILocation(line: 800, column: 19, scope: !1653, inlinedAt: !1617)
!1655 = !DILocation(line: 800, column: 17, scope: !1653, inlinedAt: !1617)
!1656 = !DILocation(line: 801, column: 31, scope: !1653, inlinedAt: !1617)
!1657 = !DILocation(line: 801, column: 19, scope: !1653, inlinedAt: !1617)
!1658 = !DILocation(line: 801, column: 17, scope: !1653, inlinedAt: !1617)
!1659 = !DILocation(line: 802, column: 31, scope: !1653, inlinedAt: !1617)
!1660 = !DILocation(line: 802, column: 19, scope: !1653, inlinedAt: !1617)
!1661 = !DILocation(line: 802, column: 17, scope: !1653, inlinedAt: !1617)
!1662 = !DILocation(line: 803, column: 19, scope: !1653, inlinedAt: !1617)
!1663 = !DILocation(line: 803, column: 17, scope: !1653, inlinedAt: !1617)
!1664 = !DILocation(line: 804, column: 9, scope: !1653, inlinedAt: !1617)
!1665 = !DILocation(line: 807, column: 5, scope: !1611, inlinedAt: !1617)
!1666 = !DILocation(line: 808, column: 1, scope: !1611, inlinedAt: !1617)
!1667 = !DILocation(line: 824, column: 9, scope: !1445, inlinedAt: !1456)
!1668 = !DILocation(line: 867, column: 9, scope: !1445, inlinedAt: !1456)
!1669 = !DILocation(line: 868, column: 9, scope: !1670, inlinedAt: !1456)
!1670 = distinct !DILexicalBlock(scope: !1445, file: !3, line: 867, column: 9)
!1671 = !DILocation(line: 0, scope: !1470)
!1672 = !DILocation(line: 871, column: 36, scope: !1445, inlinedAt: !1456)
!1673 = !DILocalVariable(name: "s", arg: 1, scope: !1674, file: !76, line: 134, type: !339)
!1674 = distinct !DISubprogram(name: "strbuf_append_mem_unsafe", scope: !76, file: !76, line: 134, type: !644, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1675)
!1675 = !{!1673, !1676, !1677}
!1676 = !DILocalVariable(name: "c", arg: 2, scope: !1674, file: !76, line: 134, type: !29)
!1677 = !DILocalVariable(name: "len", arg: 3, scope: !1674, file: !76, line: 134, type: !39)
!1678 = !DILocation(line: 134, column: 55, scope: !1674, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 871, column: 5, scope: !1445, inlinedAt: !1456)
!1680 = !DILocation(line: 134, column: 70, scope: !1674, inlinedAt: !1679)
!1681 = !DILocation(line: 134, column: 77, scope: !1674, inlinedAt: !1679)
!1682 = !DILocation(line: 136, column: 15, scope: !1674, inlinedAt: !1679)
!1683 = !DILocation(line: 136, column: 24, scope: !1674, inlinedAt: !1679)
!1684 = !DILocation(line: 136, column: 19, scope: !1674, inlinedAt: !1679)
!1685 = !DILocation(line: 136, column: 35, scope: !1674, inlinedAt: !1679)
!1686 = !DILocation(line: 136, column: 5, scope: !1674, inlinedAt: !1679)
!1687 = !DILocation(line: 137, column: 15, scope: !1674, inlinedAt: !1679)
!1688 = !DILocation(line: 138, column: 1, scope: !1674, inlinedAt: !1679)
!1689 = !DILocation(line: 872, column: 15, scope: !1445, inlinedAt: !1456)
!1690 = !DILocation(line: 874, column: 5, scope: !1445, inlinedAt: !1456)
!1691 = !DILocation(line: 875, column: 1, scope: !1445, inlinedAt: !1456)
!1692 = !DILocation(line: 917, column: 21, scope: !1458, inlinedAt: !1469)
!1693 = !DILocation(line: 877, column: 48, scope: !1498, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 920, column: 17, scope: !1458, inlinedAt: !1469)
!1695 = !DILocation(line: 877, column: 69, scope: !1498, inlinedAt: !1694)
!1696 = !DILocation(line: 878, column: 46, scope: !1498, inlinedAt: !1694)
!1697 = !DILocation(line: 880, column: 17, scope: !1498, inlinedAt: !1694)
!1698 = !DILocation(line: 881, column: 26, scope: !1498, inlinedAt: !1694)
!1699 = !DILocation(line: 881, column: 38, scope: !1498, inlinedAt: !1694)
!1700 = !DILocation(line: 881, column: 30, scope: !1498, inlinedAt: !1694)
!1701 = !DILocation(line: 881, column: 20, scope: !1498, inlinedAt: !1694)
!1702 = !DILocation(line: 881, column: 18, scope: !1498, inlinedAt: !1694)
!1703 = !DILocation(line: 882, column: 18, scope: !1498, inlinedAt: !1694)
!1704 = !DILocation(line: 882, column: 25, scope: !1498, inlinedAt: !1694)
!1705 = !DILocation(line: 883, column: 1, scope: !1498, inlinedAt: !1694)
!1706 = !DILocation(line: 922, column: 17, scope: !1458, inlinedAt: !1469)
!1707 = !DILocation(line: 924, column: 18, scope: !1708, inlinedAt: !1469)
!1708 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 924, column: 17)
!1709 = !DILocation(line: 924, column: 17, scope: !1460, inlinedAt: !1469)
!1710 = !DILocation(line: 877, column: 48, scope: !1498, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 925, column: 17, scope: !1712, inlinedAt: !1469)
!1712 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 924, column: 22)
!1713 = !DILocation(line: 877, column: 69, scope: !1498, inlinedAt: !1711)
!1714 = !DILocation(line: 878, column: 46, scope: !1498, inlinedAt: !1711)
!1715 = !DILocation(line: 880, column: 17, scope: !1498, inlinedAt: !1711)
!1716 = !DILocation(line: 881, column: 38, scope: !1498, inlinedAt: !1711)
!1717 = !DILocation(line: 881, column: 30, scope: !1498, inlinedAt: !1711)
!1718 = !DILocation(line: 881, column: 20, scope: !1498, inlinedAt: !1711)
!1719 = !DILocation(line: 881, column: 18, scope: !1498, inlinedAt: !1711)
!1720 = !DILocation(line: 882, column: 18, scope: !1498, inlinedAt: !1711)
!1721 = !DILocation(line: 882, column: 25, scope: !1498, inlinedAt: !1711)
!1722 = !DILocation(line: 883, column: 1, scope: !1498, inlinedAt: !1711)
!1723 = !DILocation(line: 926, column: 17, scope: !1712, inlinedAt: !1469)
!1724 = !DILocation(line: 930, column: 22, scope: !1460, inlinedAt: !1469)
!1725 = !DILocation(line: 931, column: 9, scope: !1460, inlinedAt: !1469)
!1726 = !DILocation(line: 0, scope: !1463, inlinedAt: !1469)
!1727 = !DILocation(line: 934, column: 41, scope: !1462, inlinedAt: !1469)
!1728 = !DILocation(line: 122, column: 56, scope: !1243, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 934, column: 9, scope: !1462, inlinedAt: !1469)
!1730 = !DILocation(line: 122, column: 70, scope: !1243, inlinedAt: !1729)
!1731 = !DILocation(line: 124, column: 8, scope: !1243, inlinedAt: !1729)
!1732 = !DILocation(line: 124, column: 15, scope: !1243, inlinedAt: !1729)
!1733 = !DILocation(line: 124, column: 21, scope: !1243, inlinedAt: !1729)
!1734 = !DILocation(line: 124, column: 5, scope: !1243, inlinedAt: !1729)
!1735 = !DILocation(line: 124, column: 25, scope: !1243, inlinedAt: !1729)
!1736 = !DILocation(line: 125, column: 1, scope: !1243, inlinedAt: !1729)
!1737 = !DILocation(line: 935, column: 18, scope: !1462, inlinedAt: !1469)
!1738 = distinct !{!1738, !1739, !1740}
!1739 = !DILocation(line: 902, column: 5, scope: !1463)
!1740 = !DILocation(line: 936, column: 5, scope: !1463)
!1741 = !DILocation(line: 939, column: 30, scope: !1463, inlinedAt: !1469)
!1742 = !DILocation(line: 142, column: 15, scope: !1743, inlinedAt: !1746)
!1743 = distinct !DISubprogram(name: "strbuf_ensure_null", scope: !76, file: !76, line: 140, type: !375, isLocal: true, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1744)
!1744 = !{!1745}
!1745 = !DILocalVariable(name: "s", arg: 1, scope: !1743, file: !76, line: 140, type: !339)
!1746 = distinct !DILocation(line: 939, column: 5, scope: !1463, inlinedAt: !1469)
!1747 = !DILocation(line: 937, column: 14, scope: !1463, inlinedAt: !1469)
!1748 = !DILocation(line: 902, column: 25, scope: !1463, inlinedAt: !1469)
!1749 = !DILocation(line: 140, column: 49, scope: !1743, inlinedAt: !1746)
!1750 = !DILocation(line: 142, column: 8, scope: !1743, inlinedAt: !1746)
!1751 = !DILocation(line: 142, column: 5, scope: !1743, inlinedAt: !1746)
!1752 = !DILocation(line: 142, column: 23, scope: !1743, inlinedAt: !1746)
!1753 = !DILocation(line: 143, column: 1, scope: !1743, inlinedAt: !1746)
!1754 = !DILocation(line: 941, column: 17, scope: !1463, inlinedAt: !1469)
!1755 = !DILocation(line: 942, column: 47, scope: !1463, inlinedAt: !1469)
!1756 = !DILocation(line: 942, column: 60, scope: !1463, inlinedAt: !1469)
!1757 = !DILocation(line: 145, column: 45, scope: !387, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 942, column: 27, scope: !1463, inlinedAt: !1469)
!1759 = !DILocation(line: 145, column: 53, scope: !387, inlinedAt: !1758)
!1760 = !DILocation(line: 147, column: 9, scope: !387, inlinedAt: !1758)
!1761 = !DILocation(line: 148, column: 19, scope: !396, inlinedAt: !1758)
!1762 = !DILocation(line: 148, column: 14, scope: !396, inlinedAt: !1758)
!1763 = !DILocation(line: 148, column: 9, scope: !396, inlinedAt: !1758)
!1764 = !DILocation(line: 150, column: 15, scope: !387, inlinedAt: !1758)
!1765 = !DILocation(line: 150, column: 5, scope: !387, inlinedAt: !1758)
!1766 = !DILocation(line: 942, column: 18, scope: !1463, inlinedAt: !1469)
!1767 = !DILocation(line: 942, column: 25, scope: !1463, inlinedAt: !1469)
!1768 = !DILocation(line: 943, column: 1, scope: !1463, inlinedAt: !1469)
!1769 = !DILocation(line: 1056, column: 9, scope: !1470)
!1770 = !DILocation(line: 1057, column: 19, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 1057, column: 16)
!1772 = !DILocation(line: 1057, column: 26, scope: !1771)
!1773 = !DILocation(line: 1057, column: 40, scope: !1771)
!1774 = !DILocation(line: 1058, column: 25, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !3, line: 1058, column: 13)
!1776 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 1057, column: 55)
!1777 = !{!156, !150, i64 1340}
!1778 = !DILocation(line: 1058, column: 14, scope: !1775)
!1779 = !DILocation(line: 1058, column: 48, scope: !1775)
!1780 = !DILocation(line: 1058, column: 51, scope: !1775)
!1781 = !DILocation(line: 1058, column: 13, scope: !1776)
!1782 = !DILocation(line: 1001, column: 47, scope: !1783, inlinedAt: !1788)
!1783 = distinct !DISubprogram(name: "json_next_number_token", scope: !3, file: !3, line: 996, type: !1435, isLocal: true, isDefinition: true, scopeLine: 997, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1784)
!1784 = !{!1785, !1786, !1787}
!1785 = !DILocalVariable(name: "json", arg: 1, scope: !1783, file: !3, line: 996, type: !504)
!1786 = !DILocalVariable(name: "token", arg: 2, scope: !1783, file: !3, line: 996, type: !505)
!1787 = !DILocalVariable(name: "endptr", scope: !1783, file: !3, line: 998, type: !80)
!1788 = distinct !DILocation(line: 1062, column: 9, scope: !1776)
!1789 = !DILocation(line: 877, column: 48, scope: !1498, inlinedAt: !1790)
!1790 = distinct !DILocation(line: 1059, column: 13, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 1058, column: 81)
!1792 = !DILocation(line: 877, column: 69, scope: !1498, inlinedAt: !1790)
!1793 = !DILocation(line: 878, column: 46, scope: !1498, inlinedAt: !1790)
!1794 = !DILocation(line: 880, column: 17, scope: !1498, inlinedAt: !1790)
!1795 = !DILocation(line: 881, column: 26, scope: !1498, inlinedAt: !1790)
!1796 = !DILocation(line: 881, column: 38, scope: !1498, inlinedAt: !1790)
!1797 = !DILocation(line: 881, column: 30, scope: !1498, inlinedAt: !1790)
!1798 = !DILocation(line: 881, column: 20, scope: !1498, inlinedAt: !1790)
!1799 = !DILocation(line: 881, column: 18, scope: !1498, inlinedAt: !1790)
!1800 = !DILocation(line: 882, column: 18, scope: !1498, inlinedAt: !1790)
!1801 = !DILocation(line: 882, column: 25, scope: !1498, inlinedAt: !1790)
!1802 = !DILocation(line: 883, column: 1, scope: !1498, inlinedAt: !1790)
!1803 = !DILocation(line: 1060, column: 13, scope: !1791)
!1804 = !DILocation(line: 996, column: 50, scope: !1783, inlinedAt: !1788)
!1805 = !DILocation(line: 996, column: 70, scope: !1783, inlinedAt: !1788)
!1806 = !DILocation(line: 998, column: 5, scope: !1783, inlinedAt: !1788)
!1807 = !DILocation(line: 1000, column: 17, scope: !1783, inlinedAt: !1788)
!1808 = !DILocation(line: 998, column: 11, scope: !1783, inlinedAt: !1788)
!1809 = !DILocation(line: 1001, column: 27, scope: !1783, inlinedAt: !1788)
!1810 = !DILocation(line: 1001, column: 12, scope: !1783, inlinedAt: !1788)
!1811 = !DILocation(line: 1001, column: 18, scope: !1783, inlinedAt: !1788)
!1812 = !DILocation(line: 1001, column: 25, scope: !1783, inlinedAt: !1788)
!1813 = !DILocation(line: 1002, column: 15, scope: !1814, inlinedAt: !1788)
!1814 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 1002, column: 9)
!1815 = !DILocation(line: 1002, column: 22, scope: !1814, inlinedAt: !1788)
!1816 = !DILocation(line: 1002, column: 19, scope: !1814, inlinedAt: !1788)
!1817 = !DILocation(line: 1002, column: 9, scope: !1783, inlinedAt: !1788)
!1818 = !DILocation(line: 877, column: 48, scope: !1498, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 1003, column: 9, scope: !1814, inlinedAt: !1788)
!1820 = !DILocation(line: 877, column: 69, scope: !1498, inlinedAt: !1819)
!1821 = !DILocation(line: 878, column: 46, scope: !1498, inlinedAt: !1819)
!1822 = !DILocation(line: 880, column: 17, scope: !1498, inlinedAt: !1819)
!1823 = !DILocation(line: 881, column: 38, scope: !1498, inlinedAt: !1819)
!1824 = !DILocation(line: 881, column: 30, scope: !1498, inlinedAt: !1819)
!1825 = !DILocation(line: 881, column: 20, scope: !1498, inlinedAt: !1819)
!1826 = !DILocation(line: 881, column: 18, scope: !1498, inlinedAt: !1819)
!1827 = !DILocation(line: 882, column: 18, scope: !1498, inlinedAt: !1819)
!1828 = !DILocation(line: 882, column: 25, scope: !1498, inlinedAt: !1819)
!1829 = !DILocation(line: 883, column: 1, scope: !1498, inlinedAt: !1819)
!1830 = !DILocation(line: 1003, column: 9, scope: !1814, inlinedAt: !1788)
!1831 = !DILocation(line: 1005, column: 19, scope: !1814, inlinedAt: !1788)
!1832 = !DILocation(line: 1008, column: 1, scope: !1783, inlinedAt: !1788)
!1833 = !DILocation(line: 1063, column: 9, scope: !1776)
!1834 = !DILocation(line: 1064, column: 17, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 1064, column: 16)
!1836 = !DILocation(line: 1064, column: 16, scope: !1771)
!1837 = !DILocation(line: 1065, column: 21, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 1064, column: 48)
!1839 = !DILocation(line: 1066, column: 16, scope: !1838)
!1840 = !DILocation(line: 1066, column: 22, scope: !1838)
!1841 = !DILocation(line: 1066, column: 30, scope: !1838)
!1842 = !DILocation(line: 1067, column: 19, scope: !1838)
!1843 = !DILocation(line: 1068, column: 9, scope: !1838)
!1844 = !DILocation(line: 1069, column: 31, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 1069, column: 16)
!1846 = !DILocation(line: 1069, column: 17, scope: !1845)
!1847 = !DILocation(line: 1069, column: 16, scope: !1835)
!1848 = !DILocation(line: 1070, column: 21, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 1069, column: 49)
!1850 = !DILocation(line: 1071, column: 16, scope: !1849)
!1851 = !DILocation(line: 1071, column: 22, scope: !1849)
!1852 = !DILocation(line: 1071, column: 30, scope: !1849)
!1853 = !DILocation(line: 1072, column: 19, scope: !1849)
!1854 = !DILocation(line: 1073, column: 9, scope: !1849)
!1855 = !DILocation(line: 1074, column: 31, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 1074, column: 16)
!1857 = !DILocation(line: 1074, column: 17, scope: !1856)
!1858 = !DILocation(line: 1074, column: 16, scope: !1845)
!1859 = !DILocation(line: 1075, column: 21, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 1074, column: 48)
!1861 = !DILocation(line: 1076, column: 19, scope: !1860)
!1862 = !DILocation(line: 1077, column: 9, scope: !1860)
!1863 = !DILocation(line: 1078, column: 22, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 1078, column: 16)
!1865 = !DILocation(line: 1078, column: 27, scope: !1864)
!1866 = !DILocation(line: 1078, column: 16, scope: !1864)
!1867 = !DILocation(line: 1078, column: 50, scope: !1864)
!1868 = !DILocation(line: 1079, column: 16, scope: !1864)
!1869 = !DILocation(line: 1078, column: 16, scope: !1856)
!1870 = !DILocation(line: 996, column: 50, scope: !1783, inlinedAt: !1871)
!1871 = distinct !DILocation(line: 1085, column: 9, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 1079, column: 46)
!1873 = !DILocation(line: 996, column: 70, scope: !1783, inlinedAt: !1871)
!1874 = !DILocation(line: 998, column: 5, scope: !1783, inlinedAt: !1871)
!1875 = !DILocation(line: 1000, column: 17, scope: !1783, inlinedAt: !1871)
!1876 = !DILocation(line: 1001, column: 47, scope: !1783, inlinedAt: !1871)
!1877 = !DILocation(line: 998, column: 11, scope: !1783, inlinedAt: !1871)
!1878 = !DILocation(line: 1001, column: 27, scope: !1783, inlinedAt: !1871)
!1879 = !DILocation(line: 1001, column: 12, scope: !1783, inlinedAt: !1871)
!1880 = !DILocation(line: 1001, column: 18, scope: !1783, inlinedAt: !1871)
!1881 = !DILocation(line: 1001, column: 25, scope: !1783, inlinedAt: !1871)
!1882 = !DILocation(line: 1002, column: 15, scope: !1814, inlinedAt: !1871)
!1883 = !DILocation(line: 1002, column: 22, scope: !1814, inlinedAt: !1871)
!1884 = !DILocation(line: 1002, column: 19, scope: !1814, inlinedAt: !1871)
!1885 = !DILocation(line: 1002, column: 9, scope: !1783, inlinedAt: !1871)
!1886 = !DILocation(line: 877, column: 48, scope: !1498, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 1003, column: 9, scope: !1814, inlinedAt: !1871)
!1888 = !DILocation(line: 877, column: 69, scope: !1498, inlinedAt: !1887)
!1889 = !DILocation(line: 878, column: 46, scope: !1498, inlinedAt: !1887)
!1890 = !DILocation(line: 880, column: 17, scope: !1498, inlinedAt: !1887)
!1891 = !DILocation(line: 881, column: 38, scope: !1498, inlinedAt: !1887)
!1892 = !DILocation(line: 881, column: 30, scope: !1498, inlinedAt: !1887)
!1893 = !DILocation(line: 881, column: 20, scope: !1498, inlinedAt: !1887)
!1894 = !DILocation(line: 881, column: 18, scope: !1498, inlinedAt: !1887)
!1895 = !DILocation(line: 882, column: 18, scope: !1498, inlinedAt: !1887)
!1896 = !DILocation(line: 882, column: 25, scope: !1498, inlinedAt: !1887)
!1897 = !DILocation(line: 883, column: 1, scope: !1498, inlinedAt: !1887)
!1898 = !DILocation(line: 1003, column: 9, scope: !1814, inlinedAt: !1871)
!1899 = !DILocation(line: 1005, column: 19, scope: !1814, inlinedAt: !1871)
!1900 = !DILocation(line: 1008, column: 1, scope: !1783, inlinedAt: !1871)
!1901 = !DILocation(line: 1086, column: 9, scope: !1872)
!1902 = !DILocation(line: 877, column: 48, scope: !1498, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 1090, column: 5, scope: !1434)
!1904 = !DILocation(line: 877, column: 69, scope: !1498, inlinedAt: !1903)
!1905 = !DILocation(line: 878, column: 46, scope: !1498, inlinedAt: !1903)
!1906 = !DILocation(line: 880, column: 17, scope: !1498, inlinedAt: !1903)
!1907 = !DILocation(line: 881, column: 26, scope: !1498, inlinedAt: !1903)
!1908 = !DILocation(line: 881, column: 38, scope: !1498, inlinedAt: !1903)
!1909 = !DILocation(line: 881, column: 30, scope: !1498, inlinedAt: !1903)
!1910 = !DILocation(line: 881, column: 20, scope: !1498, inlinedAt: !1903)
!1911 = !DILocation(line: 881, column: 18, scope: !1498, inlinedAt: !1903)
!1912 = !DILocation(line: 882, column: 18, scope: !1498, inlinedAt: !1903)
!1913 = !DILocation(line: 882, column: 25, scope: !1498, inlinedAt: !1903)
!1914 = !DILocation(line: 883, column: 1, scope: !1498, inlinedAt: !1903)
!1915 = !DILocation(line: 1091, column: 1, scope: !1434)
!1916 = !DILocation(line: 0, scope: !1506)
!1917 = distinct !DISubprogram(name: "json_process_value", scope: !3, file: !3, line: 1224, type: !1918, isLocal: true, isDefinition: true, scopeLine: 1226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1920)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{null, !40, !504, !505}
!1920 = !{!1921, !1922, !1923}
!1921 = !DILocalVariable(name: "l", arg: 1, scope: !1917, file: !3, line: 1224, type: !40)
!1922 = !DILocalVariable(name: "json", arg: 2, scope: !1917, file: !3, line: 1224, type: !504)
!1923 = !DILocalVariable(name: "token", arg: 3, scope: !1917, file: !3, line: 1225, type: !505)
!1924 = !DILocation(line: 1224, column: 43, scope: !1917)
!1925 = !DILocation(line: 1224, column: 60, scope: !1917)
!1926 = !DILocation(line: 1225, column: 46, scope: !1917)
!1927 = !DILocation(line: 1227, column: 20, scope: !1917)
!1928 = !DILocation(line: 1227, column: 5, scope: !1917)
!1929 = !DILocation(line: 1229, column: 41, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 1227, column: 26)
!1931 = !DILocation(line: 1229, column: 56, scope: !1930)
!1932 = !{!497, !150, i64 16}
!1933 = !DILocation(line: 1229, column: 49, scope: !1930)
!1934 = !DILocation(line: 1229, column: 9, scope: !1930)
!1935 = !DILocation(line: 1230, column: 9, scope: !1930)
!1936 = !DILocation(line: 1232, column: 34, scope: !1930)
!1937 = !DILocation(line: 1232, column: 40, scope: !1930)
!1938 = !DILocation(line: 1232, column: 9, scope: !1930)
!1939 = !DILocation(line: 1233, column: 9, scope: !1930)
!1940 = !DILocation(line: 1235, column: 35, scope: !1930)
!1941 = !DILocation(line: 1235, column: 41, scope: !1930)
!1942 = !DILocation(line: 1235, column: 9, scope: !1930)
!1943 = !DILocation(line: 1236, column: 9, scope: !1930)
!1944 = !DILocalVariable(name: "l", arg: 1, scope: !1945, file: !3, line: 1135, type: !40)
!1945 = distinct !DISubprogram(name: "json_parse_object_context", scope: !3, file: !3, line: 1135, type: !1946, isLocal: true, isDefinition: true, scopeLine: 1136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1948)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{null, !40, !504}
!1948 = !{!1944, !1949, !1950}
!1949 = !DILocalVariable(name: "json", arg: 2, scope: !1945, file: !3, line: 1135, type: !504)
!1950 = !DILocalVariable(name: "token", scope: !1945, file: !3, line: 1137, type: !425)
!1951 = !DILocation(line: 1135, column: 50, scope: !1945, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 1238, column: 9, scope: !1930)
!1953 = !DILocation(line: 1135, column: 67, scope: !1945, inlinedAt: !1952)
!1954 = !DILocation(line: 1137, column: 5, scope: !1945, inlinedAt: !1952)
!1955 = !DILocalVariable(name: "l", arg: 1, scope: !1956, file: !3, line: 1121, type: !40)
!1956 = distinct !DISubprogram(name: "json_decode_descend", scope: !3, file: !3, line: 1121, type: !1957, isLocal: true, isDefinition: true, scopeLine: 1122, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1959)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{null, !40, !504, !39}
!1959 = !{!1955, !1960, !1961}
!1960 = !DILocalVariable(name: "json", arg: 2, scope: !1956, file: !3, line: 1121, type: !504)
!1961 = !DILocalVariable(name: "slots", arg: 3, scope: !1956, file: !3, line: 1121, type: !39)
!1962 = !DILocation(line: 1121, column: 44, scope: !1956, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 1141, column: 5, scope: !1945, inlinedAt: !1952)
!1964 = !DILocation(line: 1121, column: 61, scope: !1956, inlinedAt: !1963)
!1965 = !DILocation(line: 1121, column: 71, scope: !1956, inlinedAt: !1963)
!1966 = !DILocation(line: 1123, column: 11, scope: !1956, inlinedAt: !1963)
!1967 = !DILocation(line: 1123, column: 24, scope: !1956, inlinedAt: !1963)
!1968 = !DILocation(line: 1125, column: 38, scope: !1969, inlinedAt: !1963)
!1969 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 1125, column: 9)
!1970 = !DILocation(line: 1125, column: 43, scope: !1969, inlinedAt: !1963)
!1971 = !DILocation(line: 1125, column: 29, scope: !1969, inlinedAt: !1963)
!1972 = !DILocation(line: 1125, column: 60, scope: !1969, inlinedAt: !1963)
!1973 = !DILocation(line: 1126, column: 9, scope: !1969, inlinedAt: !1963)
!1974 = !DILocation(line: 1125, column: 9, scope: !1956, inlinedAt: !1963)
!1975 = !DILocation(line: 1130, column: 23, scope: !1956, inlinedAt: !1963)
!1976 = !DILocation(line: 1130, column: 5, scope: !1956, inlinedAt: !1963)
!1977 = !DILocation(line: 1132, column: 15, scope: !1956, inlinedAt: !1963)
!1978 = !DILocation(line: 1132, column: 36, scope: !1956, inlinedAt: !1963)
!1979 = !DILocation(line: 1132, column: 48, scope: !1956, inlinedAt: !1963)
!1980 = !DILocation(line: 1132, column: 40, scope: !1956, inlinedAt: !1963)
!1981 = !DILocation(line: 1131, column: 5, scope: !1956, inlinedAt: !1963)
!1982 = !DILocation(line: 1133, column: 1, scope: !1956, inlinedAt: !1963)
!1983 = !DILocation(line: 1143, column: 5, scope: !1945, inlinedAt: !1952)
!1984 = !DILocation(line: 1137, column: 18, scope: !1945, inlinedAt: !1952)
!1985 = !DILocation(line: 1145, column: 5, scope: !1945, inlinedAt: !1952)
!1986 = !DILocation(line: 1148, column: 15, scope: !1987, inlinedAt: !1952)
!1987 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 1148, column: 9)
!1988 = !DILocation(line: 1148, column: 20, scope: !1987, inlinedAt: !1952)
!1989 = !DILocation(line: 1148, column: 9, scope: !1945, inlinedAt: !1952)
!1990 = !DILocation(line: 1154, column: 24, scope: !1991, inlinedAt: !1952)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 1154, column: 13)
!1992 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 1153, column: 15)
!1993 = !DILocation(line: 1154, column: 19, scope: !1991, inlinedAt: !1952)
!1994 = !DILocation(line: 1154, column: 13, scope: !1992, inlinedAt: !1952)
!1995 = !DILocation(line: 1099, column: 47, scope: !501, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 1155, column: 13, scope: !1991, inlinedAt: !1952)
!1997 = !DILocation(line: 1099, column: 64, scope: !501, inlinedAt: !1996)
!1998 = !DILocation(line: 1100, column: 48, scope: !501, inlinedAt: !1996)
!1999 = !DILocation(line: 1100, column: 67, scope: !501, inlinedAt: !1996)
!2000 = !DILocation(line: 1104, column: 23, scope: !501, inlinedAt: !1996)
!2001 = !DILocation(line: 1104, column: 5, scope: !501, inlinedAt: !1996)
!2002 = !DILocation(line: 1106, column: 16, scope: !519, inlinedAt: !1996)
!2003 = !DILocation(line: 1106, column: 21, scope: !519, inlinedAt: !1996)
!2004 = !DILocation(line: 1106, column: 9, scope: !501, inlinedAt: !1996)
!2005 = !DILocation(line: 1109, column: 17, scope: !519, inlinedAt: !1996)
!2006 = !DILocation(line: 1102, column: 17, scope: !501, inlinedAt: !1996)
!2007 = !DILocation(line: 0, scope: !1991, inlinedAt: !1952)
!2008 = !DILocation(line: 1113, column: 35, scope: !501, inlinedAt: !1996)
!2009 = !DILocation(line: 1113, column: 41, scope: !501, inlinedAt: !1996)
!2010 = !DILocation(line: 1112, column: 5, scope: !501, inlinedAt: !1996)
!2011 = !DILocation(line: 1114, column: 1, scope: !501, inlinedAt: !1996)
!2012 = !DILocation(line: 1155, column: 13, scope: !1991, inlinedAt: !1952)
!2013 = !DILocation(line: 1158, column: 40, scope: !1992, inlinedAt: !1952)
!2014 = !DILocation(line: 1158, column: 54, scope: !1992, inlinedAt: !1952)
!2015 = !DILocation(line: 1158, column: 48, scope: !1992, inlinedAt: !1952)
!2016 = !DILocation(line: 1158, column: 9, scope: !1992, inlinedAt: !1952)
!2017 = !DILocation(line: 1160, column: 9, scope: !1992, inlinedAt: !1952)
!2018 = !DILocation(line: 1161, column: 19, scope: !2019, inlinedAt: !1952)
!2019 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 1161, column: 13)
!2020 = !DILocation(line: 1161, column: 24, scope: !2019, inlinedAt: !1952)
!2021 = !DILocation(line: 1161, column: 13, scope: !1992, inlinedAt: !1952)
!2022 = !DILocation(line: 1099, column: 47, scope: !501, inlinedAt: !2023)
!2023 = distinct !DILocation(line: 1162, column: 13, scope: !2019, inlinedAt: !1952)
!2024 = !DILocation(line: 1099, column: 64, scope: !501, inlinedAt: !2023)
!2025 = !DILocation(line: 1100, column: 48, scope: !501, inlinedAt: !2023)
!2026 = !DILocation(line: 1100, column: 67, scope: !501, inlinedAt: !2023)
!2027 = !DILocation(line: 1104, column: 23, scope: !501, inlinedAt: !2023)
!2028 = !DILocation(line: 1104, column: 5, scope: !501, inlinedAt: !2023)
!2029 = !DILocation(line: 1106, column: 16, scope: !519, inlinedAt: !2023)
!2030 = !DILocation(line: 1106, column: 21, scope: !519, inlinedAt: !2023)
!2031 = !DILocation(line: 1106, column: 9, scope: !501, inlinedAt: !2023)
!2032 = !DILocation(line: 1109, column: 17, scope: !519, inlinedAt: !2023)
!2033 = !DILocation(line: 1102, column: 17, scope: !501, inlinedAt: !2023)
!2034 = !DILocation(line: 0, scope: !2019, inlinedAt: !1952)
!2035 = !DILocation(line: 1113, column: 35, scope: !501, inlinedAt: !2023)
!2036 = !DILocation(line: 1113, column: 41, scope: !501, inlinedAt: !2023)
!2037 = !DILocation(line: 1112, column: 5, scope: !501, inlinedAt: !2023)
!2038 = !DILocation(line: 1114, column: 1, scope: !501, inlinedAt: !2023)
!2039 = !DILocation(line: 1162, column: 13, scope: !2019, inlinedAt: !1952)
!2040 = !DILocation(line: 1165, column: 9, scope: !1992, inlinedAt: !1952)
!2041 = !DILocation(line: 1166, column: 9, scope: !1992, inlinedAt: !1952)
!2042 = !DILocation(line: 1169, column: 9, scope: !1992, inlinedAt: !1952)
!2043 = !DILocation(line: 1171, column: 9, scope: !1992, inlinedAt: !1952)
!2044 = !DILocation(line: 1173, column: 19, scope: !2045, inlinedAt: !1952)
!2045 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 1173, column: 13)
!2046 = !DILocation(line: 1173, column: 24, scope: !2045, inlinedAt: !1952)
!2047 = !DILocation(line: 1173, column: 13, scope: !1992, inlinedAt: !1952)
!2048 = !DILocation(line: 1178, column: 24, scope: !2049, inlinedAt: !1952)
!2049 = distinct !DILexicalBlock(scope: !1992, file: !3, line: 1178, column: 13)
!2050 = !DILocation(line: 1178, column: 13, scope: !1992, inlinedAt: !1952)
!2051 = !DILocation(line: 1099, column: 47, scope: !501, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 1179, column: 13, scope: !2049, inlinedAt: !1952)
!2053 = !DILocation(line: 1099, column: 64, scope: !501, inlinedAt: !2052)
!2054 = !DILocation(line: 1100, column: 48, scope: !501, inlinedAt: !2052)
!2055 = !DILocation(line: 1100, column: 67, scope: !501, inlinedAt: !2052)
!2056 = !DILocation(line: 1104, column: 23, scope: !501, inlinedAt: !2052)
!2057 = !DILocation(line: 1104, column: 5, scope: !501, inlinedAt: !2052)
!2058 = !DILocation(line: 1106, column: 16, scope: !519, inlinedAt: !2052)
!2059 = !DILocation(line: 1106, column: 21, scope: !519, inlinedAt: !2052)
!2060 = !DILocation(line: 1106, column: 9, scope: !501, inlinedAt: !2052)
!2061 = !DILocation(line: 1109, column: 17, scope: !519, inlinedAt: !2052)
!2062 = !DILocation(line: 1102, column: 17, scope: !501, inlinedAt: !2052)
!2063 = !DILocation(line: 0, scope: !2049, inlinedAt: !1952)
!2064 = !DILocation(line: 1113, column: 35, scope: !501, inlinedAt: !2052)
!2065 = !DILocation(line: 1113, column: 41, scope: !501, inlinedAt: !2052)
!2066 = !DILocation(line: 1112, column: 5, scope: !501, inlinedAt: !2052)
!2067 = !DILocation(line: 1114, column: 1, scope: !501, inlinedAt: !2052)
!2068 = !DILocation(line: 1179, column: 13, scope: !2049, inlinedAt: !1952)
!2069 = !DILocation(line: 1181, column: 9, scope: !1992, inlinedAt: !1952)
!2070 = !DILocation(line: 1153, column: 5, scope: !1945, inlinedAt: !1952)
!2071 = distinct !{!2071, !2072, !2073}
!2072 = !DILocation(line: 1153, column: 5, scope: !1945)
!2073 = !DILocation(line: 1182, column: 5, scope: !1945)
!2074 = !DILocation(line: 1118, column: 24, scope: !2075, inlinedAt: !2080)
!2075 = distinct !DISubprogram(name: "json_decode_ascend", scope: !3, file: !3, line: 1116, type: !2076, isLocal: true, isDefinition: true, scopeLine: 1117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2078)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{null, !504}
!2078 = !{!2079}
!2079 = !DILocalVariable(name: "json", arg: 1, scope: !2075, file: !3, line: 1116, type: !504)
!2080 = distinct !DILocation(line: 1149, column: 9, scope: !2081, inlinedAt: !1952)
!2081 = distinct !DILexicalBlock(scope: !1987, file: !3, line: 1148, column: 34)
!2082 = !DILocation(line: 1119, column: 1, scope: !2075, inlinedAt: !2080)
!2083 = !DILocation(line: 0, scope: !1930)
!2084 = !DILocation(line: 1183, column: 1, scope: !1945, inlinedAt: !1952)
!2085 = !DILocation(line: 1239, column: 9, scope: !1930)
!2086 = !DILocalVariable(name: "l", arg: 1, scope: !2087, file: !3, line: 1186, type: !40)
!2087 = distinct !DISubprogram(name: "json_parse_array_context", scope: !3, file: !3, line: 1186, type: !1946, isLocal: true, isDefinition: true, scopeLine: 1187, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2088)
!2088 = !{!2086, !2089, !2090, !2091}
!2089 = !DILocalVariable(name: "json", arg: 2, scope: !2087, file: !3, line: 1186, type: !504)
!2090 = !DILocalVariable(name: "token", scope: !2087, file: !3, line: 1188, type: !425)
!2091 = !DILocalVariable(name: "i", scope: !2087, file: !3, line: 1189, type: !39)
!2092 = !DILocation(line: 1186, column: 49, scope: !2087, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 1241, column: 9, scope: !1930)
!2094 = !DILocation(line: 1186, column: 66, scope: !2087, inlinedAt: !2093)
!2095 = !DILocation(line: 1188, column: 5, scope: !2087, inlinedAt: !2093)
!2096 = !DILocation(line: 1121, column: 44, scope: !1956, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 1193, column: 5, scope: !2087, inlinedAt: !2093)
!2098 = !DILocation(line: 1121, column: 61, scope: !1956, inlinedAt: !2097)
!2099 = !DILocation(line: 1121, column: 71, scope: !1956, inlinedAt: !2097)
!2100 = !DILocation(line: 1123, column: 11, scope: !1956, inlinedAt: !2097)
!2101 = !DILocation(line: 1123, column: 24, scope: !1956, inlinedAt: !2097)
!2102 = !DILocation(line: 1125, column: 38, scope: !1969, inlinedAt: !2097)
!2103 = !DILocation(line: 1125, column: 43, scope: !1969, inlinedAt: !2097)
!2104 = !DILocation(line: 1125, column: 29, scope: !1969, inlinedAt: !2097)
!2105 = !DILocation(line: 1125, column: 60, scope: !1969, inlinedAt: !2097)
!2106 = !DILocation(line: 1126, column: 9, scope: !1969, inlinedAt: !2097)
!2107 = !DILocation(line: 1125, column: 9, scope: !1956, inlinedAt: !2097)
!2108 = !DILocation(line: 1130, column: 23, scope: !1956, inlinedAt: !2097)
!2109 = !DILocation(line: 1130, column: 5, scope: !1956, inlinedAt: !2097)
!2110 = !DILocation(line: 1132, column: 15, scope: !1956, inlinedAt: !2097)
!2111 = !DILocation(line: 1132, column: 36, scope: !1956, inlinedAt: !2097)
!2112 = !DILocation(line: 1132, column: 48, scope: !1956, inlinedAt: !2097)
!2113 = !DILocation(line: 1132, column: 40, scope: !1956, inlinedAt: !2097)
!2114 = !DILocation(line: 1131, column: 5, scope: !1956, inlinedAt: !2097)
!2115 = !DILocation(line: 1133, column: 1, scope: !1956, inlinedAt: !2097)
!2116 = !DILocation(line: 1195, column: 5, scope: !2087, inlinedAt: !2093)
!2117 = !DILocation(line: 1188, column: 18, scope: !2087, inlinedAt: !2093)
!2118 = !DILocation(line: 1197, column: 5, scope: !2087, inlinedAt: !2093)
!2119 = !DILocation(line: 1200, column: 15, scope: !2120, inlinedAt: !2093)
!2120 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 1200, column: 9)
!2121 = !DILocation(line: 1200, column: 20, scope: !2120, inlinedAt: !2093)
!2122 = !DILocation(line: 1200, column: 9, scope: !2087, inlinedAt: !2093)
!2123 = !DILocation(line: 1189, column: 9, scope: !2087, inlinedAt: !2093)
!2124 = !DILocation(line: 1205, column: 10, scope: !2125, inlinedAt: !2093)
!2125 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 1205, column: 5)
!2126 = !DILocation(line: 1206, column: 9, scope: !2127, inlinedAt: !2093)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 1205, column: 24)
!2128 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 1205, column: 5)
!2129 = !DILocation(line: 1207, column: 9, scope: !2127, inlinedAt: !2093)
!2130 = !DILocation(line: 1209, column: 9, scope: !2127, inlinedAt: !2093)
!2131 = !DILocation(line: 1211, column: 19, scope: !2132, inlinedAt: !2093)
!2132 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 1211, column: 13)
!2133 = !DILocation(line: 1211, column: 24, scope: !2132, inlinedAt: !2093)
!2134 = !DILocation(line: 1211, column: 13, scope: !2127, inlinedAt: !2093)
!2135 = !DILocation(line: 1216, column: 24, scope: !2136, inlinedAt: !2093)
!2136 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 1216, column: 13)
!2137 = !DILocation(line: 1216, column: 13, scope: !2127, inlinedAt: !2093)
!2138 = !DILocation(line: 1099, column: 47, scope: !501, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 1217, column: 13, scope: !2136, inlinedAt: !2093)
!2140 = !DILocation(line: 1099, column: 64, scope: !501, inlinedAt: !2139)
!2141 = !DILocation(line: 1100, column: 48, scope: !501, inlinedAt: !2139)
!2142 = !DILocation(line: 1100, column: 67, scope: !501, inlinedAt: !2139)
!2143 = !DILocation(line: 1104, column: 23, scope: !501, inlinedAt: !2139)
!2144 = !DILocation(line: 1104, column: 5, scope: !501, inlinedAt: !2139)
!2145 = !DILocation(line: 1106, column: 16, scope: !519, inlinedAt: !2139)
!2146 = !DILocation(line: 1106, column: 21, scope: !519, inlinedAt: !2139)
!2147 = !DILocation(line: 1106, column: 9, scope: !501, inlinedAt: !2139)
!2148 = !DILocation(line: 1109, column: 17, scope: !519, inlinedAt: !2139)
!2149 = !DILocation(line: 1102, column: 17, scope: !501, inlinedAt: !2139)
!2150 = !DILocation(line: 0, scope: !2136, inlinedAt: !2093)
!2151 = !DILocation(line: 1113, column: 35, scope: !501, inlinedAt: !2139)
!2152 = !DILocation(line: 1113, column: 41, scope: !501, inlinedAt: !2139)
!2153 = !DILocation(line: 1112, column: 5, scope: !501, inlinedAt: !2139)
!2154 = !DILocation(line: 1114, column: 1, scope: !501, inlinedAt: !2139)
!2155 = !DILocation(line: 1217, column: 13, scope: !2136, inlinedAt: !2093)
!2156 = !DILocation(line: 1219, column: 9, scope: !2127, inlinedAt: !2093)
!2157 = !DILocation(line: 1205, column: 20, scope: !2128, inlinedAt: !2093)
!2158 = !DILocation(line: 1205, column: 5, scope: !2128, inlinedAt: !2093)
!2159 = distinct !{!2159, !2160, !2161}
!2160 = !DILocation(line: 1205, column: 5, scope: !2125)
!2161 = !DILocation(line: 1220, column: 5, scope: !2125)
!2162 = !DILocation(line: 1118, column: 24, scope: !2075, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 1201, column: 9, scope: !2164, inlinedAt: !2093)
!2164 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 1200, column: 34)
!2165 = !DILocation(line: 1119, column: 1, scope: !2075, inlinedAt: !2163)
!2166 = !DILocation(line: 1221, column: 1, scope: !2087, inlinedAt: !2093)
!2167 = !DILocation(line: 1242, column: 9, scope: !1930)
!2168 = !DILocation(line: 1246, column: 9, scope: !1930)
!2169 = !DILocation(line: 1247, column: 9, scope: !1930)
!2170 = !DILocation(line: 1099, column: 47, scope: !501, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 1249, column: 9, scope: !1930)
!2172 = !DILocation(line: 1099, column: 64, scope: !501, inlinedAt: !2171)
!2173 = !DILocation(line: 1100, column: 48, scope: !501, inlinedAt: !2171)
!2174 = !DILocation(line: 1100, column: 67, scope: !501, inlinedAt: !2171)
!2175 = !DILocation(line: 1104, column: 23, scope: !501, inlinedAt: !2171)
!2176 = !DILocation(line: 1104, column: 5, scope: !501, inlinedAt: !2171)
!2177 = !DILocation(line: 1106, column: 16, scope: !519, inlinedAt: !2171)
!2178 = !DILocation(line: 1106, column: 21, scope: !519, inlinedAt: !2171)
!2179 = !DILocation(line: 1106, column: 9, scope: !501, inlinedAt: !2171)
!2180 = !DILocation(line: 1107, column: 30, scope: !519, inlinedAt: !2171)
!2181 = !DILocation(line: 1102, column: 17, scope: !501, inlinedAt: !2171)
!2182 = !DILocation(line: 1109, column: 17, scope: !519, inlinedAt: !2171)
!2183 = !DILocation(line: 1113, column: 35, scope: !501, inlinedAt: !2171)
!2184 = !DILocation(line: 1113, column: 41, scope: !501, inlinedAt: !2171)
!2185 = !DILocation(line: 1112, column: 5, scope: !501, inlinedAt: !2171)
!2186 = !DILocation(line: 1114, column: 1, scope: !501, inlinedAt: !2171)
!2187 = !DILocation(line: 1250, column: 5, scope: !1930)
!2188 = !DILocation(line: 1251, column: 1, scope: !1917)
!2189 = distinct !DISubprogram(name: "json_is_invalid_number", scope: !3, file: !3, line: 960, type: !1446, isLocal: true, isDefinition: true, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2190)
!2190 = !{!2191, !2192, !2193}
!2191 = !DILocalVariable(name: "json", arg: 1, scope: !2189, file: !3, line: 960, type: !504)
!2192 = !DILocalVariable(name: "p", scope: !2189, file: !3, line: 962, type: !29)
!2193 = !DILocalVariable(name: "ch2", scope: !2194, file: !3, line: 974, type: !39)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 973, column: 20)
!2195 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 973, column: 9)
!2196 = !DILocation(line: 960, column: 49, scope: !2189)
!2197 = !DILocation(line: 962, column: 27, scope: !2189)
!2198 = !DILocation(line: 962, column: 17, scope: !2189)
!2199 = !DILocation(line: 965, column: 9, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 965, column: 9)
!2201 = !DILocation(line: 965, column: 12, scope: !2200)
!2202 = !DILocation(line: 965, column: 9, scope: !2189)
!2203 = !DILocation(line: 966, column: 9, scope: !2200)
!2204 = !DILocation(line: 969, column: 12, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 969, column: 9)
!2206 = !DILocation(line: 969, column: 9, scope: !2189)
!2207 = !DILocation(line: 970, column: 10, scope: !2205)
!2208 = !DILocation(line: 970, column: 9, scope: !2205)
!2209 = !DILocation(line: 973, column: 9, scope: !2195)
!2210 = !DILocation(line: 0, scope: !2189)
!2211 = !DILocation(line: 973, column: 12, scope: !2195)
!2212 = !DILocation(line: 973, column: 9, scope: !2189)
!2213 = !DILocation(line: 974, column: 23, scope: !2194)
!2214 = !DILocation(line: 974, column: 19, scope: !2194)
!2215 = !DILocation(line: 976, column: 18, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2194, file: !3, line: 976, column: 13)
!2217 = !DILocation(line: 976, column: 26, scope: !2216)
!2218 = !DILocation(line: 976, column: 33, scope: !2216)
!2219 = !DILocation(line: 977, column: 25, scope: !2216)
!2220 = !DILocation(line: 0, scope: !2194)
!2221 = !DILocation(line: 0, scope: !2216)
!2222 = !DILocation(line: 981, column: 19, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2195, file: !3, line: 981, column: 16)
!2224 = !DILocation(line: 981, column: 16, scope: !2195)
!2225 = !DILocation(line: 982, column: 9, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 981, column: 27)
!2227 = !DILocation(line: 986, column: 10, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 986, column: 9)
!2229 = !DILocation(line: 986, column: 9, scope: !2189)
!2230 = !DILocation(line: 987, column: 9, scope: !2228)
!2231 = !DILocation(line: 988, column: 10, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 988, column: 9)
!2233 = !DILocation(line: 988, column: 9, scope: !2189)
!2234 = !DILocation(line: 989, column: 9, scope: !2232)
!2235 = !DILocation(line: 0, scope: !2228)
!2236 = !DILocation(line: 994, column: 1, scope: !2189)
!2237 = distinct !DISubprogram(name: "decode_hex4", scope: !3, file: !3, line: 752, type: !2238, isLocal: true, isDefinition: true, scopeLine: 753, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2240)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!39, !29}
!2240 = !{!2241, !2242, !2244}
!2241 = !DILocalVariable(name: "hex", arg: 1, scope: !2237, file: !3, line: 752, type: !29)
!2242 = !DILocalVariable(name: "digit", scope: !2237, file: !3, line: 754, type: !2243)
!2243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !97)
!2244 = !DILocalVariable(name: "i", scope: !2237, file: !3, line: 755, type: !39)
!2245 = !DILocation(line: 752, column: 36, scope: !2237)
!2246 = !DILocation(line: 755, column: 9, scope: !2237)
!2247 = !DILocation(line: 760, column: 10, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 760, column: 5)
!2249 = !DILocation(line: 760, column: 5, scope: !2248)
!2250 = !DILocation(line: 761, column: 33, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 760, column: 29)
!2252 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 760, column: 5)
!2253 = !DILocalVariable(name: "hex", arg: 1, scope: !2254, file: !3, line: 739, type: !31)
!2254 = distinct !DISubprogram(name: "hexdigit2int", scope: !3, file: !3, line: 739, type: !2255, isLocal: true, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2257)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!39, !31}
!2257 = !{!2253}
!2258 = !DILocation(line: 739, column: 30, scope: !2254, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 761, column: 20, scope: !2251)
!2260 = !DILocation(line: 741, column: 16, scope: !2261, inlinedAt: !2259)
!2261 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 741, column: 9)
!2262 = !DILocation(line: 741, column: 13, scope: !2261, inlinedAt: !2259)
!2263 = !DILocation(line: 741, column: 21, scope: !2261, inlinedAt: !2259)
!2264 = !DILocation(line: 741, column: 28, scope: !2261, inlinedAt: !2259)
!2265 = !DILocation(line: 741, column: 9, scope: !2254, inlinedAt: !2259)
!2266 = !DILocation(line: 742, column: 20, scope: !2261, inlinedAt: !2259)
!2267 = !DILocation(line: 742, column: 9, scope: !2261, inlinedAt: !2259)
!2268 = !DILocation(line: 745, column: 9, scope: !2254, inlinedAt: !2259)
!2269 = !DILocation(line: 746, column: 16, scope: !2270, inlinedAt: !2259)
!2270 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 746, column: 9)
!2271 = !DILocation(line: 746, column: 13, scope: !2270, inlinedAt: !2259)
!2272 = !DILocation(line: 746, column: 20, scope: !2270, inlinedAt: !2259)
!2273 = !DILocation(line: 746, column: 27, scope: !2270, inlinedAt: !2259)
!2274 = !DILocation(line: 746, column: 9, scope: !2254, inlinedAt: !2259)
!2275 = !DILocation(line: 747, column: 25, scope: !2270, inlinedAt: !2259)
!2276 = !DILocation(line: 747, column: 9, scope: !2270, inlinedAt: !2259)
!2277 = !DILocation(line: 749, column: 5, scope: !2254, inlinedAt: !2259)
!2278 = !DILocation(line: 750, column: 1, scope: !2254, inlinedAt: !2259)
!2279 = !DILocation(line: 754, column: 9, scope: !2237)
!2280 = !DILocation(line: 762, column: 13, scope: !2251)
!2281 = !DILocation(line: 0, scope: !2254, inlinedAt: !2259)
!2282 = !DILocation(line: 0, scope: !2251)
!2283 = !DILocation(line: 762, column: 22, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 762, column: 13)
!2285 = !DILocation(line: 760, column: 5, scope: !2252)
!2286 = !DILocation(line: 0, scope: !2237)
!2287 = !DILocation(line: 0, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 762, column: 27)
!2289 = !DILocation(line: 771, column: 1, scope: !2237)
!2290 = !DILocation(line: 767, column: 22, scope: !2237)
!2291 = !DILocation(line: 768, column: 22, scope: !2237)
!2292 = !DILocation(line: 767, column: 29, scope: !2237)
!2293 = !DILocation(line: 769, column: 22, scope: !2237)
!2294 = !DILocation(line: 768, column: 28, scope: !2237)
!2295 = !DILocation(line: 769, column: 28, scope: !2237)
!2296 = !DILocation(line: 767, column: 5, scope: !2237)
!2297 = distinct !DISubprogram(name: "json_arg_init", scope: !3, file: !3, line: 208, type: !2298, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2300)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!63, !40, !39}
!2300 = !{!2301, !2302}
!2301 = !DILocalVariable(name: "l", arg: 1, scope: !2297, file: !3, line: 208, type: !40)
!2302 = !DILocalVariable(name: "args", arg: 2, scope: !2297, file: !3, line: 208, type: !39)
!2303 = !DILocation(line: 208, column: 48, scope: !2297)
!2304 = !DILocation(line: 208, column: 55, scope: !2297)
!2305 = !DILocation(line: 210, column: 5, scope: !2297)
!2306 = !DILocation(line: 213, column: 5, scope: !2297)
!2307 = !DILocation(line: 213, column: 12, scope: !2297)
!2308 = !DILocation(line: 213, column: 26, scope: !2297)
!2309 = !DILocation(line: 214, column: 9, scope: !2297)
!2310 = distinct !{!2310, !2306, !2311}
!2311 = !DILocation(line: 214, column: 22, scope: !2297)
!2312 = !DILocation(line: 194, column: 52, scope: !344, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 216, column: 12, scope: !2297)
!2314 = !DILocation(line: 198, column: 11, scope: !344, inlinedAt: !2313)
!2315 = !DILocation(line: 196, column: 20, scope: !344, inlinedAt: !2313)
!2316 = !DILocation(line: 199, column: 10, scope: !354, inlinedAt: !2313)
!2317 = !DILocation(line: 199, column: 9, scope: !344, inlinedAt: !2313)
!2318 = !DILocation(line: 200, column: 9, scope: !354, inlinedAt: !2313)
!2319 = !DILocation(line: 202, column: 5, scope: !344, inlinedAt: !2313)
!2320 = !DILocation(line: 216, column: 5, scope: !2297)
!2321 = !DILocation(line: 239, column: 40, scope: !36)
!2322 = !DILocation(line: 239, column: 47, scope: !36)
!2323 = !DILocation(line: 239, column: 62, scope: !36)
!2324 = !DILocation(line: 240, column: 42, scope: !36)
!2325 = !DILocation(line: 240, column: 55, scope: !36)
!2326 = !DILocation(line: 244, column: 10, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !36, file: !3, line: 244, column: 9)
!2328 = !DILocation(line: 244, column: 9, scope: !36)
!2329 = !DILocation(line: 247, column: 5, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 244, column: 19)
!2331 = !DILocation(line: 249, column: 10, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !36, file: !3, line: 249, column: 9)
!2333 = !DILocation(line: 249, column: 9, scope: !36)
!2334 = !DILocation(line: 256, column: 23, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !36, file: !3, line: 256, column: 9)
!2336 = !DILocation(line: 250, column: 23, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !3, line: 250, column: 13)
!2338 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 249, column: 34)
!2339 = !DILocation(line: 250, column: 26, scope: !2337)
!2340 = !DILocation(line: 250, column: 13, scope: !2338)
!2341 = !DILocation(line: 251, column: 24, scope: !2337)
!2342 = !DILocation(line: 251, column: 22, scope: !2337)
!2343 = !DILocation(line: 251, column: 13, scope: !2337)
!2344 = !DILocation(line: 253, column: 24, scope: !2337)
!2345 = !DILocation(line: 253, column: 22, scope: !2337)
!2346 = !DILocation(line: 256, column: 19, scope: !2335)
!2347 = !DILocation(line: 256, column: 32, scope: !2335)
!2348 = !DILocation(line: 256, column: 37, scope: !2335)
!2349 = !DILocation(line: 256, column: 49, scope: !2335)
!2350 = !DILocation(line: 256, column: 9, scope: !36)
!2351 = !DILocation(line: 257, column: 9, scope: !2335)
!2352 = !DILocation(line: 259, column: 27, scope: !2335)
!2353 = !DILocation(line: 259, column: 9, scope: !2335)
!2354 = !DILocation(line: 261, column: 5, scope: !36)
!2355 = distinct !DISubprogram(name: "json_integer_option", scope: !3, file: !3, line: 220, type: !2356, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2358)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!39, !40, !39, !44, !39, !39}
!2358 = !{!2359, !2360, !2361, !2362, !2363, !2364, !2368}
!2359 = !DILocalVariable(name: "l", arg: 1, scope: !2355, file: !3, line: 220, type: !40)
!2360 = !DILocalVariable(name: "optindex", arg: 2, scope: !2355, file: !3, line: 220, type: !39)
!2361 = !DILocalVariable(name: "setting", arg: 3, scope: !2355, file: !3, line: 220, type: !44)
!2362 = !DILocalVariable(name: "min", arg: 4, scope: !2355, file: !3, line: 221, type: !39)
!2363 = !DILocalVariable(name: "max", arg: 5, scope: !2355, file: !3, line: 221, type: !39)
!2364 = !DILocalVariable(name: "errmsg", scope: !2355, file: !3, line: 223, type: !2365)
!2365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 512, elements: !2366)
!2366 = !{!2367}
!2367 = !DISubrange(count: 64)
!2368 = !DILocalVariable(name: "value", scope: !2355, file: !3, line: 224, type: !39)
!2369 = !DILocation(line: 220, column: 43, scope: !2355)
!2370 = !DILocation(line: 220, column: 50, scope: !2355)
!2371 = !DILocation(line: 220, column: 65, scope: !2355)
!2372 = !DILocation(line: 221, column: 36, scope: !2355)
!2373 = !DILocation(line: 221, column: 45, scope: !2355)
!2374 = !DILocation(line: 223, column: 5, scope: !2355)
!2375 = !DILocation(line: 223, column: 10, scope: !2355)
!2376 = !DILocation(line: 226, column: 10, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 226, column: 9)
!2378 = !DILocation(line: 226, column: 9, scope: !2355)
!2379 = !DILocation(line: 233, column: 24, scope: !2355)
!2380 = !DILocation(line: 227, column: 17, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 226, column: 34)
!2382 = !DILocation(line: 224, column: 9, scope: !2355)
!2383 = !DILocation(line: 228, column: 9, scope: !2381)
!2384 = !DILocation(line: 229, column: 9, scope: !2381)
!2385 = !DILocation(line: 230, column: 18, scope: !2381)
!2386 = !DILocation(line: 231, column: 5, scope: !2381)
!2387 = !DILocation(line: 233, column: 5, scope: !2355)
!2388 = !DILocation(line: 236, column: 1, scope: !2355)
!2389 = !DILocation(line: 235, column: 5, scope: !2355)
!2390 = distinct !DISubprogram(name: "json_destroy_config", scope: !3, file: !3, line: 361, type: !58, isLocal: true, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2391)
!2391 = !{!2392, !2393}
!2392 = !DILocalVariable(name: "l", arg: 1, scope: !2390, file: !3, line: 361, type: !40)
!2393 = !DILocalVariable(name: "cfg", scope: !2390, file: !3, line: 363, type: !63)
!2394 = !DILocation(line: 361, column: 43, scope: !2390)
!2395 = !DILocation(line: 365, column: 11, scope: !2390)
!2396 = !DILocation(line: 366, column: 9, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2390, file: !3, line: 366, column: 9)
!2398 = !DILocation(line: 366, column: 9, scope: !2390)
!2399 = !DILocation(line: 363, column: 20, scope: !2390)
!2400 = !DILocation(line: 367, column: 27, scope: !2397)
!2401 = !DILocation(line: 367, column: 9, scope: !2397)
!2402 = !DILocation(line: 370, column: 5, scope: !2390)
!2403 = distinct !DISubprogram(name: "json_protect_conversion", scope: !3, file: !3, line: 1318, type: !58, isLocal: true, isDefinition: true, scopeLine: 1319, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2404)
!2404 = !{!2405, !2406}
!2405 = !DILocalVariable(name: "l", arg: 1, scope: !2403, file: !3, line: 1318, type: !40)
!2406 = !DILocalVariable(name: "err", scope: !2403, file: !3, line: 1320, type: !39)
!2407 = !DILocation(line: 1318, column: 47, scope: !2403)
!2408 = !DILocation(line: 1323, column: 5, scope: !2403)
!2409 = !DILocation(line: 1326, column: 5, scope: !2403)
!2410 = !DILocation(line: 1327, column: 5, scope: !2403)
!2411 = !DILocation(line: 1328, column: 11, scope: !2403)
!2412 = !DILocation(line: 1320, column: 9, scope: !2403)
!2413 = !DILocation(line: 1329, column: 10, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 1329, column: 9)
!2415 = !DILocation(line: 1329, column: 9, scope: !2403)
!2416 = !DILocation(line: 1332, column: 13, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2403, file: !3, line: 1332, column: 9)
!2418 = !DILocation(line: 1332, column: 9, scope: !2403)
!2419 = !DILocation(line: 1333, column: 9, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 1332, column: 28)
!2421 = !DILocation(line: 1334, column: 9, scope: !2420)
!2422 = !DILocation(line: 1335, column: 9, scope: !2420)
!2423 = !DILocation(line: 1340, column: 12, scope: !2403)
!2424 = !DILocation(line: 1340, column: 5, scope: !2403)
!2425 = !DILocation(line: 0, scope: !2414)
!2426 = !DILocation(line: 1341, column: 1, scope: !2403)
