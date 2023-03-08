; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/scripting.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/scripting.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ldbState = type { i32, i32, i32, %struct.list*, %struct.list*, %struct.list*, [64 x i32], i32, i32, i32, i8**, i32, i32, i8*, i64, i32 }
%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct.sharedObjectsStruct = type { %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [10 x %struct.redisObject*], [10000 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], i8*, i8* }
%struct.redisObject = type { i32, i32, i8* }
%struct.redisServer = type { i32, i8*, i8*, i8**, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, i32, i32, i32, i32, i8*, i8*, i32, i32, [41 x i8], i32, i64, i32, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, [16 x i8*], i32, i8*, i32, [16 x i32], i32, i32, [16 x i32], i32, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.rax*, i32, i64, [256 x i8], %struct.dict*, i64, i32, i32, i64, i64, i64, i64, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, [3 x %struct.anon], i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, [3 x %struct.clientBufferLimitsConfig], i32, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list*, i8*, i32, i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, i32, %struct.saveparam*, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, [2 x i32], %struct.anon.0, %struct.redisOpArray, i8*, i32, i8*, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, i8*, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, i32, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i8*, [41 x i8], i64, i32, %struct.dict*, %struct.list*, i32, %struct.list*, i32, i32, i64, i32, i32, i32, i32, i64, i32, [6 x i32], %struct.list*, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, %struct.dict*, %struct.list*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i8*, i32, i32, i32, %struct.lua_State*, %struct.client*, %struct.client*, %struct.dict*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i8*, i32, i32, i32, i64, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_* }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, %struct.list* }
%struct.aeEventLoop = type { i32, i32, i64, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)* }
%struct.aeFileEvent = type { i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent*, %struct.aeTimeEvent* }
%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxNode = type { i32, [0 x i8] }
%struct.redisCommand = type { i8*, void (%struct.client*)*, i32, i8*, i32, i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)*, i32, i32, i32, i64, i64 }
%struct.malloc_stats = type { i64, i64, i64, i64, i64 }
%struct.anon = type { i64, i64, [16 x i64], i32 }
%struct.clientBufferLimitsConfig = type { i64, i64, i64 }
%struct.saveparam = type { i64, i32 }
%struct.anon.0 = type { i32, i64, i64 }
%struct.redisOpArray = type { %struct.redisOp*, i32 }
%struct.redisOp = type { %struct.redisObject**, i32, i32, i32, %struct.redisCommand* }
%struct.clusterState = type { %struct.clusterNode*, i64, i32, i32, %struct.dict*, %struct.dict*, [16384 x %struct.clusterNode*], [16384 x %struct.clusterNode*], [16384 x %struct.clusterNode*], [16384 x i64], %struct.rax*, i64, i32, i32, i32, i64, i32, i64, %struct.clusterNode*, i64, i32, i64, i32, [10 x i64], [10 x i64], i64 }
%struct.clusterNode = type { i64, [40 x i8], i32, i64, [2048 x i8], i32, i32, %struct.clusterNode**, %struct.clusterNode*, i64, i64, i64, i64, i64, i64, i64, [46 x i8], i32, i32, %struct.clusterLink*, %struct.list* }
%struct.clusterLink = type { i64, i32, i8*, i8*, %struct.clusterNode* }
%struct.lua_State = type opaque
%struct.client = type { i64, i32, %struct.redisDb*, %struct.redisObject*, i8*, i64, i8*, i64, i32, %struct.redisObject**, %struct.redisCommand*, %struct.redisCommand*, i32, i32, i64, %struct.list*, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i8*, i64, i64, i64, i64, i64, [41 x i8], i32, [46 x i8], i32, %struct.multiState, i32, %struct.blockingState, i64, %struct.list*, %struct.dict*, %struct.list*, i8*, %struct.listNode*, i32, [16384 x i8] }
%struct.multiState = type { %struct.multiCmd*, i32, i32, i32, i64 }
%struct.multiCmd = type { %struct.redisObject**, i32, %struct.redisCommand* }
%struct.blockingState = type { i64, %struct.dict*, %struct.redisObject*, i64, %struct.redisObject*, %struct.redisObject*, i64, i64, i32, i32, i64, i8* }
%struct.dict = type { %struct.dictType*, i8*, [2 x %struct.dictht], i64, i64 }
%struct.dictType = type { i64 (i8*)*, i8* (i8*, i8*)*, i8* (i8*, i8*)*, i32 (i8*, i8*, i8*)*, void (i8*, i8*)*, void (i8*, i8*)* }
%struct.dictht = type { %struct.dictEntry**, i64, i64, i64 }
%struct.dictEntry = type { i8*, %union.anon, %struct.dictEntry* }
%union.anon = type { i8* }
%struct.pthread_mutex_t_ = type opaque
%struct.SHA1_CTX = type { [5 x i32], [2 x i32], [64 x i8] }
%struct.lua_Debug = type { i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, [60 x i8], i32 }
%struct.clientReplyBlock = type { i64, i64, [0 x i8] }
%struct.sigaction = type { %union.anon.1, i64, i32, void ()* }
%union.anon.1 = type { void (i32)* }
%struct.listIter = type { %struct.listNode*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@ldb = common dso_local global %struct.ldbState zeroinitializer, align 8, !dbg !0
@.str.3 = private unnamed_addr constant [11 x i8] c"<error> %s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"nSl\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s: %d: %s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"__redis__compare_helper\00", align 1
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"-%s\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"+%s\0D\0A\00", align 1
@server = external dso_local local_unnamed_addr global %struct.redisServer, align 8
@luaRedisGenericCommand.argv = internal unnamed_addr global %struct.redisObject** null, align 8, !dbg !69
@luaRedisGenericCommand.argv_size = internal unnamed_addr global i32 0, align 4, !dbg !372
@luaRedisGenericCommand.cached_objects = internal unnamed_addr global [32 x %struct.redisObject*] zeroinitializer, align 16, !dbg !374
@luaRedisGenericCommand.cached_objects_len = internal unnamed_addr global [32 x i64] zeroinitializer, align 16, !dbg !379
@luaRedisGenericCommand.inuse = internal unnamed_addr global i32 0, align 4, !dbg !382
@.str.13 = private unnamed_addr constant [98 x i8] c"luaRedisGenericCommand() recursive call detected. Are you doing funny stuff with Lua debug hooks?\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"Please specify at least one argument for redis.call()\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%.17g\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"Lua redis() command arguments must be strings or integers\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"<redis>\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c" ... (%d more)\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.21 = private unnamed_addr constant [59 x i8] c"Wrong number of args calling Redis command From Lua script\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"Unknown Redis command called from Lua script\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"This Redis command is not allowed from scripts\00", align 1
@.str.24 = private unnamed_addr constant [177 x i8] c"Write commands not allowed after non deterministic commands. Call redis.replicate_commands() at the start of your script in order to switch to single commands replication mode.\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"-MISCONF Errors writing to the AOF file: %s\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [65 x i8] c"Lua script attempted to access a non local key in a cluster node\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"wrong number or type of arguments\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"<debug> line %d: \00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.31 = private unnamed_addr constant [120 x i8] c"You can set the replication behavior only after turning on single commands replication with redis.replicate_commands().\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"redis.set_repl() requires two arguments.\00", align 1
@.str.33 = private unnamed_addr constant [78 x i8] c"Invalid replication flags. Use REPL_AOF, REPL_REPLICA, REPL_ALL or REPL_NONE.\00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"redis.log() requires two arguments or more.\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"First argument must be a number (log level).\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"Invalid debug level.\00", align 1
@.str.37 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"math\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"cjson\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"cmsgpack\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"bit\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"loadfile\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"dofile\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"local dbg=debug\0A\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"local mt = {}\0A\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"setmetatable(_G, mt)\0A\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"mt.__newindex = function (t, n, v)\0A\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"  if dbg.getinfo(2) then\0A\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"    local w = dbg.getinfo(2, \22S\22).what\0A\00", align 1
@.str.53 = private unnamed_addr constant [38 x i8] c"    if w ~= \22main\22 and w ~= \22C\22 then\0A\00", align 1
@.str.54 = private unnamed_addr constant [82 x i8] c"      error(\22Script attempted to create global variable '\22..tostring(n)..\22'\22, 2)\0A\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"    end\0A\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"  end\0A\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"  rawset(t, n, v)\0A\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1
@.str.59 = private unnamed_addr constant [30 x i8] c"mt.__index = function (t, n)\0A\00", align 1
@.str.60 = private unnamed_addr constant [62 x i8] c"  if dbg.getinfo(2) and dbg.getinfo(2, \22S\22).what ~= \22C\22 then\0A\00", align 1
@.str.61 = private unnamed_addr constant [92 x i8] c"    error(\22Script attempted to access nonexistent global variable '\22..tostring(n)..\22'\22, 2)\0A\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"  return rawget(t, n)\0A\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"debug = nil\0A\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"@enable_strict_lua\00", align 1
@shaScriptObjectDictType = external dso_local global %struct.dictType, align 8
@.str.65 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"pcall\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"LOG_DEBUG\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"LOG_VERBOSE\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"LOG_NOTICE\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"LOG_WARNING\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"sha1hex\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"error_reply\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"status_reply\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"replicate_commands\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"set_repl\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"REPL_NONE\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"REPL_AOF\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"REPL_SLAVE\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"REPL_REPLICA\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"REPL_ALL\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"breakpoint\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"redis\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"randomseed\00", align 1
@.str.86 = private unnamed_addr constant [120 x i8] c"function __redis__compare_helper(a,b)\0A  if a == false then a = '' end\0A  if b == false then b = '' end\0A  return a<b\0Aend\0A\00", align 1
@.str.87 = private unnamed_addr constant [14 x i8] c"@cmp_func_def\00", align 1
@.str.88 = private unnamed_addr constant [256 x i8] c"local dbg = debug\0Afunction __redis__err__handler(err)\0A  local i = dbg.getinfo(2,'nSl')\0A  if i and i.what == 'C' then\0A    i = dbg.getinfo(3,'nSl')\0A  end\0A  if i then\0A    return i.source .. ':' .. i.currentline .. ': ' .. err\0A  else\0A    return err\0A  end\0Aend\0A\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"@err_handler_def\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"interval is empty\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"function \00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"() \00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"\0Aend\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"@user_script\00", align 1
@.str.95 = private unnamed_addr constant [43 x i8] c"Error compiling script (new function): %s\0A\00", align 1
@.str.96 = private unnamed_addr constant [41 x i8] c"Error running script (new function): %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"retval == DICT_OK\00", align 1
@.str.98 = private unnamed_addr constant [77 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/scripting.c\00", align 1
@.str.99 = private unnamed_addr constant [132 x i8] c"Lua slow script detected: still in execution after %lld milliseconds. You can try killing the script using the SCRIPT KILL command.\00", align 1
@.str.100 = private unnamed_addr constant [44 x i8] c"Lua script killed by user with SCRIPT KILL.\00", align 1
@.str.101 = private unnamed_addr constant [42 x i8] c"Script killed by user with SCRIPT KILL...\00", align 1
@.str.102 = private unnamed_addr constant [52 x i8] c"Number of keys can't be greater than number of args\00", align 1
@.str.103 = private unnamed_addr constant [33 x i8] c"Number of keys can't be negative\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"__redis__err__handler\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"!lua_isnil(lua,-1)\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"KEYS\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"ARGV\00", align 1
@evalGenericCommand.gc_count = internal unnamed_addr global i64 0, align 8, !dbg !384
@.str.108 = private unnamed_addr constant [39 x i8] c"Error running script (call to %s): %s\0A\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"script != NULL\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"SCRIPT\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"LOAD\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"EVAL\00", align 1
@.str.114 = private unnamed_addr constant [49 x i8] c"Please use EVAL instead of EVALSHA for debugging\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.116 = private unnamed_addr constant [75 x i8] c"DEBUG (yes|sync|no) -- Set the debug mode for subsequent scripts executed.\00", align 1
@.str.117 = private unnamed_addr constant [105 x i8] c"EXISTS <sha1> [<sha1> ...] -- Return information about the existence of the scripts in the script cache.\00", align 1
@.str.118 = private unnamed_addr constant [66 x i8] c"FLUSH -- Flush the Lua scripts cache. Very dangerous on replicas.\00", align 1
@.str.119 = private unnamed_addr constant [49 x i8] c"KILL -- Kill the currently executing Lua script.\00", align 1
@.str.120 = private unnamed_addr constant [77 x i8] c"LOAD <script> -- Load a script into the scripts cache, without executing it.\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.125 = private unnamed_addr constant [46 x i8] c"-NOTBUSY No scripts in execution right now.\0D\0A\00", align 1
@.str.126 = private unnamed_addr constant [112 x i8] c"-UNKILLABLE The busy script was sent by a master instance in the context of replication and cannot be killed.\0D\0A\00", align 1
@.str.127 = private unnamed_addr constant [195 x i8] c"-UNKILLABLE Sorry the script already executed write commands against the dataset. You can either wait the script termination or kill the server in a hard way using the SHUTDOWN NOSAVE command.\0D\0A\00", align 1
@.str.128 = private unnamed_addr constant [47 x i8] c"SCRIPT DEBUG must be called outside a pipeline\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.132 = private unnamed_addr constant [29 x i8] c"Use SCRIPT DEBUG yes/sync/no\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.134 = private unnamed_addr constant [72 x i8] c"<hint> The above reply was trimmed. Use 'maxlen 0' to disable trimming.\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"*%i\0D\0A\00", align 1
@.str.136 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.137 = private unnamed_addr constant [49 x i8] c"Fork() failed: can't run EVAL in debugging mode.\00", align 1
@.str.138 = private unnamed_addr constant [32 x i8] c"Redis forked for debugging eval\00", align 1
@.str.139 = private unnamed_addr constant [49 x i8] c"Redis synchronous debugging eval session started\00", align 1
@.str.140 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"<endsession>\00", align 1
@.str.142 = private unnamed_addr constant [36 x i8] c"Lua debugging session child exiting\00", align 1
@.str.143 = private unnamed_addr constant [47 x i8] c"Redis synchronous debugging eval session ended\00", align 1
@.str.144 = private unnamed_addr constant [30 x i8] c"Killing debugging session %ld\00", align 1
@.str.145 = private unnamed_addr constant [32 x i8] c"<out of range source code line>\00", align 1
@.str.146 = private unnamed_addr constant [4 x i8] c"->#\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"-> \00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"  #\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.150 = private unnamed_addr constant [10 x i8] c"%s%-3d %s\00", align 1
@.str.151 = private unnamed_addr constant [45 x i8] c"<max recursion level reached! Nested table?>\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.154 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.157 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"]=\00", align 1
@.str.159 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.161 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"userdata\00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.165 = private unnamed_addr constant [15 x i8] c"light-userdata\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"\22%s@%p\22\00", align 1
@.str.167 = private unnamed_addr constant [21 x i8] c"\22<unknown-lua-type>\22\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.169 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.170 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.171 = private unnamed_addr constant [9 x i8] c"<reply> \00", align 1
@.str.172 = private unnamed_addr constant [9 x i8] c"<value> \00", align 1
@.str.173 = private unnamed_addr constant [18 x i8] c"No such variable.\00", align 1
@.str.174 = private unnamed_addr constant [13 x i8] c"(*temporary)\00", align 1
@.str.175 = private unnamed_addr constant [14 x i8] c"<value> %s = \00", align 1
@.str.176 = private unnamed_addr constant [43 x i8] c"No local variables in the current context.\00", align 1
@.str.177 = private unnamed_addr constant [47 x i8] c"No breakpoints set. Use 'b <line>' to add one.\00", align 1
@.str.178 = private unnamed_addr constant [20 x i8] c"%i breakpoints set:\00", align 1
@.str.179 = private unnamed_addr constant [22 x i8] c"Invalid argument:'%s'\00", align 1
@.str.180 = private unnamed_addr constant [25 x i8] c"All breakpoints removed.\00", align 1
@.str.181 = private unnamed_addr constant [26 x i8] c"Too many breakpoints set.\00", align 1
@.str.182 = private unnamed_addr constant [19 x i8] c"Wrong line number.\00", align 1
@.str.183 = private unnamed_addr constant [20 x i8] c"Breakpoint removed.\00", align 1
@.str.184 = private unnamed_addr constant [37 x i8] c"No breakpoint in the specified line.\00", align 1
@.str.185 = private unnamed_addr constant [8 x i8] c"return \00", align 1
@.str.186 = private unnamed_addr constant [10 x i8] c"@ldb_eval\00", align 1
@.str.187 = private unnamed_addr constant [10 x i8] c"<retval> \00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"Snl\00", align 1
@.str.189 = private unnamed_addr constant [12 x i8] c"user_script\00", align 1
@.str.190 = private unnamed_addr constant [7 x i8] c"%s %s:\00", align 1
@.str.191 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"From\00", align 1
@.str.193 = private unnamed_addr constant [10 x i8] c"top level\00", align 1
@.str.194 = private unnamed_addr constant [34 x i8] c"<error> Can't retrieve Lua stack.\00", align 1
@.str.195 = private unnamed_addr constant [43 x i8] c"<value> replies are truncated at %d bytes.\00", align 1
@.str.196 = private unnamed_addr constant [31 x i8] c"<value> replies are unlimited.\00", align 1
@.str.197 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.198 = private unnamed_addr constant [25 x i8] c"Redis Lua debugger help:\00", align 1
@.str.199 = private unnamed_addr constant [37 x i8] c"[h]elp               Show this help.\00", align 1
@.str.200 = private unnamed_addr constant [54 x i8] c"[s]tep               Run current line and stop again.\00", align 1
@.str.201 = private unnamed_addr constant [37 x i8] c"[n]ext               Alias for step.\00", align 1
@.str.202 = private unnamed_addr constant [47 x i8] c"[c]continue          Run till next breakpoint.\00", align 1
@.str.203 = private unnamed_addr constant [59 x i8] c"[l]list              List source code around current line.\00", align 1
@.str.204 = private unnamed_addr constant [53 x i8] c"[l]list [line]       List source code around [line].\00", align 1
@.str.205 = private unnamed_addr constant [55 x i8] c"                     line = 0 means: current position.\00", align 1
@.str.206 = private unnamed_addr constant [65 x i8] c"[l]list [line] [ctx] In this form [ctx] specifies how many lines\00", align 1
@.str.207 = private unnamed_addr constant [50 x i8] c"                     to show before/after [line].\00", align 1
@.str.208 = private unnamed_addr constant [71 x i8] c"[w]hole              List all source code. Alias for 'list 1 1000000'.\00", align 1
@.str.209 = private unnamed_addr constant [51 x i8] c"[p]rint              Show all the local variables.\00", align 1
@.str.210 = private unnamed_addr constant [63 x i8] c"[p]rint <var>        Show the value of the specified variable.\00", align 1
@.str.211 = private unnamed_addr constant [62 x i8] c"                     Can also show global vars KEYS and ARGV.\00", align 1
@.str.212 = private unnamed_addr constant [43 x i8] c"[b]reak              Show all breakpoints.\00", align 1
@.str.213 = private unnamed_addr constant [61 x i8] c"[b]reak <line>       Add a breakpoint to the specified line.\00", align 1
@.str.214 = private unnamed_addr constant [64 x i8] c"[b]reak -<line>      Remove breakpoint from the specified line.\00", align 1
@.str.215 = private unnamed_addr constant [45 x i8] c"[b]reak 0            Remove all breakpoints.\00", align 1
@.str.216 = private unnamed_addr constant [39 x i8] c"[t]race              Show a backtrace.\00", align 1
@.str.217 = private unnamed_addr constant [71 x i8] c"[e]eval <code>       Execute some Lua code (in a different callframe).\00", align 1
@.str.218 = private unnamed_addr constant [46 x i8] c"[r]edis <cmd>        Execute a Redis command.\00", align 1
@.str.219 = private unnamed_addr constant [73 x i8] c"[m]axlen [len]       Trim logged Redis replies and Lua var dumps to len.\00", align 1
@.str.220 = private unnamed_addr constant [63 x i8] c"                     Specifying zero as <len> means unlimited.\00", align 1
@.str.221 = private unnamed_addr constant [63 x i8] c"[a]bort              Stop the execution of the script. In sync\00", align 1
@.str.222 = private unnamed_addr constant [60 x i8] c"                     mode dataset changes will be retained.\00", align 1
@.str.223 = private unnamed_addr constant [50 x i8] c"Debugger functions you can call from Lua scripts:\00", align 1
@.str.224 = private unnamed_addr constant [59 x i8] c"redis.debug()        Produce logs in the debugger console.\00", align 1
@.str.225 = private unnamed_addr constant [68 x i8] c"redis.breakpoint()   Stop execution like if there was a breakpoing.\00", align 1
@.str.226 = private unnamed_addr constant [47 x i8] c"                     in the next line of code.\00", align 1
@.str.227 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.228 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.229 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.231 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.232 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.233 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.234 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.235 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.236 = private unnamed_addr constant [7 x i8] c"maxlen\00", align 1
@.str.237 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.238 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.239 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.240 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.241 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.242 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.243 = private unnamed_addr constant [32 x i8] c"script aborted for user request\00", align 1
@.str.244 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.245 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.246 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.247 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.248 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.249 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.250 = private unnamed_addr constant [6 x i8] c"whole\00", align 1
@.str.251 = private unnamed_addr constant [73 x i8] c"<error> Unknown Redis Lua debugger command or wrong number of arguments.\00", align 1
@.str.252 = private unnamed_addr constant [3 x i8] c"Sl\00", align 1
@.str.253 = private unnamed_addr constant [10 x i8] c"step over\00", align 1
@.str.254 = private unnamed_addr constant [26 x i8] c"redis.breakpoint() called\00", align 1
@.str.255 = private unnamed_addr constant [12 x i8] c"break point\00", align 1
@.str.256 = private unnamed_addr constant [32 x i8] c"timeout reached, infinite loop?\00", align 1
@.str.257 = private unnamed_addr constant [34 x i8] c"* Stopped at %d, stop reason = %s\00", align 1
@.str.258 = private unnamed_addr constant [60 x i8] c"timeout during Lua debugging with client closing connection\00", align 1
@__A_VARIABLE = internal global i32 0
@switch.table.ldbCatStackValueRec = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.165, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.162, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.163, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.164, i64 0, i64 0)]

; Function Attrs: noredzone nounwind
define dso_local void @sha1hex(i8* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !442 {
  %4 = alloca %struct.SHA1_CTX, align 4
  %5 = alloca [20 x i8], align 16
  %6 = bitcast %struct.SHA1_CTX* %4 to i8*, !dbg !471
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %6) #7, !dbg !471
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0, !dbg !472
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %7) #7, !dbg !472
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %4) #8, !dbg !475
  %8 = trunc i64 %2 to i32, !dbg !476
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %4, i8* %1, i32 %8) #8, !dbg !477
  call void @SHA1Final(i8* nonnull %7, %struct.SHA1_CTX* nonnull %4) #8, !dbg !478
  br label %9, !dbg !480

; <label>:9:                                      ; preds = %9, %3
  %10 = phi i64 [ 0, %3 ], [ %25, %9 ]
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %10, !dbg !482
  %12 = load i8, i8* %11, align 1, !dbg !482, !tbaa !485
  %13 = lshr i8 %12, 4, !dbg !488
  %14 = zext i8 %13 to i64, !dbg !489
  %15 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %14, !dbg !489
  %16 = load i8, i8* %15, align 1, !dbg !489, !tbaa !485
  %17 = shl nuw nsw i64 %10, 1, !dbg !490
  %18 = getelementptr inbounds i8, i8* %0, i64 %17, !dbg !491
  store i8 %16, i8* %18, align 1, !dbg !492, !tbaa !485
  %19 = and i8 %12, 15, !dbg !493
  %20 = zext i8 %19 to i64, !dbg !494
  %21 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %20, !dbg !494
  %22 = load i8, i8* %21, align 1, !dbg !494, !tbaa !485
  %23 = or i64 %17, 1, !dbg !495
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !496
  store i8 %22, i8* %24, align 1, !dbg !497, !tbaa !485
  %25 = add nuw nsw i64 %10, 1, !dbg !498
  %26 = icmp eq i64 %25, 20, !dbg !499
  br i1 %26, label %27, label %9, !dbg !480, !llvm.loop !500

; <label>:27:                                     ; preds = %9
  %28 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !502
  store i8 0, i8* %28, align 1, !dbg !503, !tbaa !485
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %7) #7, !dbg !504
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %6) #7, !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  ret void, !dbg !504
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @SHA1Init(%struct.SHA1_CTX*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @SHA1Update(%struct.SHA1_CTX*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @SHA1Final(i8*, %struct.SHA1_CTX*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i8* @redisProtocolToLuaType(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !505 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i8, i8* %1, align 1, !dbg !515, !tbaa !485
  %6 = sext i8 %5 to i32, !dbg !515
  switch i32 %6, label %56 [
    i32 58, label %7
    i32 36, label %19
    i32 43, label %38
    i32 45, label %46
    i32 42, label %54
  ], !dbg !516

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !527
  %9 = tail call i8* @strchr(i8* nonnull %8, i32 13) #8, !dbg !528
  %10 = bitcast i64* %4 to i8*, !dbg !530
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #7, !dbg !530
  %11 = ptrtoint i8* %9 to i64, !dbg !531
  %12 = ptrtoint i8* %1 to i64, !dbg !531
  %13 = xor i64 %12, -1, !dbg !532
  %14 = add i64 %11, %13, !dbg !532
  %15 = call i32 @string2ll(i8* nonnull %8, i64 %14, i64* nonnull %4) #8, !dbg !534
  %16 = load i64, i64* %4, align 8, !dbg !535, !tbaa !536
  %17 = sitofp i64 %16 to double, !dbg !538
  call void @lua_pushnumber(%struct.lua_State* %0, double %17) #8, !dbg !539
  %18 = getelementptr inbounds i8, i8* %9, i64 2, !dbg !540
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7, !dbg !541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br label %56, !dbg !543

; <label>:19:                                     ; preds = %2
  %20 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !553
  %21 = tail call i8* @strchr(i8* nonnull %20, i32 13) #8, !dbg !554
  %22 = bitcast i64* %3 to i8*, !dbg !556
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #7, !dbg !556
  %23 = ptrtoint i8* %21 to i64, !dbg !557
  %24 = ptrtoint i8* %1 to i64, !dbg !557
  %25 = xor i64 %24, -1, !dbg !558
  %26 = add i64 %23, %25, !dbg !558
  %27 = call i32 @string2ll(i8* nonnull %20, i64 %26, i64* nonnull %3) #8, !dbg !560
  %28 = load i64, i64* %3, align 8, !dbg !561, !tbaa !536
  %29 = icmp eq i64 %28, -1, !dbg !563
  br i1 %29, label %30, label %31, !dbg !564

; <label>:30:                                     ; preds = %19
  call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #8, !dbg !565
  br label %35, !dbg !567

; <label>:31:                                     ; preds = %19
  %32 = getelementptr inbounds i8, i8* %21, i64 2, !dbg !568
  call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %32, i64 %28) #8, !dbg !570
  %33 = load i64, i64* %3, align 8, !dbg !571, !tbaa !536
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !572
  br label %35, !dbg !573

; <label>:35:                                     ; preds = %30, %31
  %36 = phi i8* [ %21, %30 ], [ %34, %31 ]
  %37 = getelementptr inbounds i8, i8* %36, i64 2, !dbg !574
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #7, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  br label %56, !dbg !576

; <label>:38:                                     ; preds = %2
  %39 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !585
  %40 = tail call i8* @strchr(i8* nonnull %39, i32 13) #8, !dbg !586
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #8, !dbg !588
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !589
  %41 = ptrtoint i8* %40 to i64, !dbg !590
  %42 = ptrtoint i8* %1 to i64, !dbg !590
  %43 = xor i64 %42, -1, !dbg !591
  %44 = add i64 %41, %43, !dbg !591
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %39, i64 %44) #8, !dbg !592
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #8, !dbg !593
  %45 = getelementptr inbounds i8, i8* %40, i64 2, !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !595
  br label %56, !dbg !596

; <label>:46:                                     ; preds = %2
  %47 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !605
  %48 = tail call i8* @strchr(i8* nonnull %47, i32 13) #8, !dbg !606
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #8, !dbg !608
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !609
  %49 = ptrtoint i8* %48 to i64, !dbg !610
  %50 = ptrtoint i8* %1 to i64, !dbg !610
  %51 = xor i64 %50, -1, !dbg !611
  %52 = add i64 %49, %51, !dbg !611
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %47, i64 %52) #8, !dbg !612
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #8, !dbg !613
  %53 = getelementptr inbounds i8, i8* %48, i64 2, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  br label %56, !dbg !616

; <label>:54:                                     ; preds = %2
  %55 = tail call i8* @redisProtocolToLuaType_MultiBulk(%struct.lua_State* %0, i8* nonnull %1) #9, !dbg !617
  br label %56, !dbg !618

; <label>:56:                                     ; preds = %2, %54, %46, %38, %35, %7
  %57 = phi i8* [ %1, %2 ], [ %55, %54 ], [ %53, %46 ], [ %45, %38 ], [ %37, %35 ], [ %18, %7 ], !dbg !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  ret i8* %57, !dbg !620
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @redisProtocolToLuaType_Int(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !518 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !623
  %5 = tail call i8* @strchr(i8* nonnull %4, i32 13) #8, !dbg !624
  %6 = bitcast i64* %3 to i8*, !dbg !626
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7, !dbg !626
  %7 = ptrtoint i8* %5 to i64, !dbg !627
  %8 = ptrtoint i8* %1 to i64, !dbg !627
  %9 = xor i64 %8, -1, !dbg !628
  %10 = add i64 %7, %9, !dbg !628
  %11 = call i32 @string2ll(i8* nonnull %4, i64 %10, i64* nonnull %3) #8, !dbg !630
  %12 = load i64, i64* %3, align 8, !dbg !631, !tbaa !536
  %13 = sitofp i64 %12 to double, !dbg !632
  call void @lua_pushnumber(%struct.lua_State* %0, double %13) #8, !dbg !633
  %14 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !634
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  ret i8* %14, !dbg !636
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @redisProtocolToLuaType_Bulk(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !545 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !639
  %5 = tail call i8* @strchr(i8* nonnull %4, i32 13) #8, !dbg !640
  %6 = bitcast i64* %3 to i8*, !dbg !642
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7, !dbg !642
  %7 = ptrtoint i8* %5 to i64, !dbg !643
  %8 = ptrtoint i8* %1 to i64, !dbg !643
  %9 = xor i64 %8, -1, !dbg !644
  %10 = add i64 %7, %9, !dbg !644
  %11 = call i32 @string2ll(i8* nonnull %4, i64 %10, i64* nonnull %3) #8, !dbg !646
  %12 = load i64, i64* %3, align 8, !dbg !647, !tbaa !536
  %13 = icmp eq i64 %12, -1, !dbg !648
  br i1 %13, label %14, label %15, !dbg !649

; <label>:14:                                     ; preds = %2
  call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #8, !dbg !650
  br label %19, !dbg !651

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !652
  call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %16, i64 %12) #8, !dbg !653
  %17 = load i64, i64* %3, align 8, !dbg !654, !tbaa !536
  %18 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !655
  br label %19, !dbg !656

; <label>:19:                                     ; preds = %15, %14
  %20 = phi i8* [ %5, %14 ], [ %18, %15 ]
  %21 = getelementptr inbounds i8, i8* %20, i64 2, !dbg !657
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  ret i8* %21, !dbg !658
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @redisProtocolToLuaType_Status(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !578 {
  %3 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !661
  %4 = tail call i8* @strchr(i8* nonnull %3, i32 13) #8, !dbg !662
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #8, !dbg !664
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !665
  %5 = ptrtoint i8* %4 to i64, !dbg !666
  %6 = ptrtoint i8* %1 to i64, !dbg !666
  %7 = xor i64 %6, -1, !dbg !667
  %8 = add i64 %5, %7, !dbg !667
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %3, i64 %8) #8, !dbg !668
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #8, !dbg !669
  %9 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  ret i8* %9, !dbg !671
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @redisProtocolToLuaType_Error(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !598 {
  %3 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !674
  %4 = tail call i8* @strchr(i8* nonnull %3, i32 13) #8, !dbg !675
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #8, !dbg !677
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !678
  %5 = ptrtoint i8* %4 to i64, !dbg !679
  %6 = ptrtoint i8* %1 to i64, !dbg !679
  %7 = xor i64 %6, -1, !dbg !680
  %8 = add i64 %5, %7, !dbg !680
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %3, i64 %8) #8, !dbg !681
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #8, !dbg !682
  %9 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !684
  ret i8* %9, !dbg !684
}

; Function Attrs: noredzone nounwind
define dso_local i8* @redisProtocolToLuaType_MultiBulk(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !685 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !694
  %5 = tail call i8* @strchr(i8* nonnull %4, i32 13) #8, !dbg !695
  %6 = bitcast i64* %3 to i8*, !dbg !697
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7, !dbg !697
  %7 = ptrtoint i8* %5 to i64, !dbg !699
  %8 = ptrtoint i8* %1 to i64, !dbg !699
  %9 = xor i64 %8, -1, !dbg !700
  %10 = add i64 %7, %9, !dbg !700
  %11 = call i32 @string2ll(i8* nonnull %4, i64 %10, i64* nonnull %3) #8, !dbg !702
  %12 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !703
  %13 = load i64, i64* %3, align 8, !dbg !704, !tbaa !536
  %14 = icmp eq i64 %13, -1, !dbg !706
  br i1 %14, label %15, label %16, !dbg !707

; <label>:15:                                     ; preds = %2
  call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #8, !dbg !708
  br label %28, !dbg !710

; <label>:16:                                     ; preds = %2
  call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #8, !dbg !711
  %17 = load i64, i64* %3, align 8, !dbg !712, !tbaa !536
  %18 = icmp sgt i64 %17, 0, !dbg !715
  br i1 %18, label %19, label %28, !dbg !716

; <label>:19:                                     ; preds = %16, %19
  %20 = phi i64 [ %22, %19 ], [ 0, %16 ]
  %21 = phi i8* [ %25, %19 ], [ %12, %16 ]
  %22 = add nuw nsw i64 %20, 1, !dbg !717
  %23 = trunc i64 %22 to i32, !dbg !719
  %24 = sitofp i32 %23 to double, !dbg !719
  call void @lua_pushnumber(%struct.lua_State* %0, double %24) #8, !dbg !720
  %25 = call i8* @redisProtocolToLuaType(%struct.lua_State* %0, i8* %21) #9, !dbg !721
  call void @lua_settable(%struct.lua_State* %0, i32 -3) #8, !dbg !722
  %26 = load i64, i64* %3, align 8, !dbg !712, !tbaa !536
  %27 = icmp sgt i64 %26, %22, !dbg !715
  br i1 %27, label %19, label %28, !dbg !716, !llvm.loop !723

; <label>:28:                                     ; preds = %19, %16, %15
  %29 = phi i8* [ %12, %15 ], [ %12, %16 ], [ %25, %19 ], !dbg !725
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7, !dbg !726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  ret i8* %29, !dbg !726
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @string2ll(i8*, i64, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_pushnumber(%struct.lua_State*, double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_pushboolean(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_pushlstring(%struct.lua_State*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_createtable(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_pushstring(%struct.lua_State*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_settable(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaPushError(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !727 {
  %3 = alloca %struct.lua_Debug, align 8
  %4 = bitcast %struct.lua_Debug* %3 to i8*, !dbg !758
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %4) #7, !dbg !758
  %5 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !759, !tbaa !761
  %6 = icmp ne i32 %5, 0, !dbg !766
  %7 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !767
  %8 = icmp ne i32 %7, 0, !dbg !768
  %9 = and i1 %6, %8, !dbg !769
  br i1 %9, label %10, label %15, !dbg !769

; <label>:10:                                     ; preds = %2
  %11 = tail call i8* @sdsempty() #8, !dbg !770
  %12 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %1) #8, !dbg !772
  %13 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !780, !tbaa !781
  %14 = tail call %struct.list* @listAddNodeTail(%struct.list* %13, i8* %12) #8, !dbg !782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  br label %15, !dbg !784

; <label>:15:                                     ; preds = %10, %2
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #8, !dbg !785
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !786
  %16 = call i32 @lua_getstack(%struct.lua_State* %0, i32 1, %struct.lua_Debug* nonnull %3) #8, !dbg !788
  %17 = icmp eq i32 %16, 0, !dbg !788
  br i1 %17, label %28, label %18, !dbg !789

; <label>:18:                                     ; preds = %15
  %19 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %struct.lua_Debug* nonnull %3) #8, !dbg !790
  %20 = icmp eq i32 %19, 0, !dbg !790
  br i1 %20, label %28, label %21, !dbg !791

; <label>:21:                                     ; preds = %18
  %22 = call i8* @sdsempty() #8, !dbg !792
  %23 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 4, !dbg !793
  %24 = load i8*, i8** %23, align 8, !dbg !793, !tbaa !794
  %25 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 5, !dbg !796
  %26 = load i32, i32* %25, align 8, !dbg !796, !tbaa !797
  %27 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %24, i32 %26, i8* %1) #8, !dbg !798
  call void @lua_pushstring(%struct.lua_State* %0, i8* %27) #8, !dbg !800
  call void @sdsfree(i8* %27) #8, !dbg !801
  br label %29, !dbg !802

; <label>:28:                                     ; preds = %18, %15
  call void @lua_pushstring(%struct.lua_State* %0, i8* %1) #8, !dbg !803
  br label %29

; <label>:29:                                     ; preds = %28, %21
  call void @lua_settable(%struct.lua_State* %0, i32 -3) #8, !dbg !805
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %4) #7, !dbg !806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  ret void, !dbg !806
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbLog(i8*) local_unnamed_addr #0 !dbg !774 {
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !808, !tbaa !781
  %3 = tail call %struct.list* @listAddNodeTail(%struct.list* %2, i8* %0) #8, !dbg !809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  ret void, !dbg !810
}

; Function Attrs: noredzone
declare dso_local i8* @sdscatprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_getstack(%struct.lua_State*, i32, %struct.lua_Debug*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_getinfo(%struct.lua_State*, i8*, %struct.lua_Debug*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRaiseError(%struct.lua_State*) local_unnamed_addr #0 !dbg !811 {
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !817
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -2) #8, !dbg !818
  %2 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  ret i32 %2, !dbg !820
}

; Function Attrs: noredzone
declare dso_local void @lua_gettable(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_error(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaSortArray(%struct.lua_State*) local_unnamed_addr #0 !dbg !821 {
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !827
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !828
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -2) #8, !dbg !829
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -3) #8, !dbg !830
  %2 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 1, i32 0, i32 0) #8, !dbg !831
  %3 = icmp eq i32 %2, 0, !dbg !831
  br i1 %3, label %5, label %4, !dbg !833

; <label>:4:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !834
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !836
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -2) #8, !dbg !837
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -3) #8, !dbg !838
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !839
  tail call void @lua_call(%struct.lua_State* %0, i32 2, i32 0) #8, !dbg !840
  br label %5, !dbg !841

; <label>:5:                                      ; preds = %1, %4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  ret void, !dbg !843
}

; Function Attrs: noredzone
declare dso_local void @lua_getfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_pushvalue(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_pcall(%struct.lua_State*, i32, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_settop(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_call(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaReplyToRedisReply(%struct.client*, %struct.lua_State*) local_unnamed_addr #0 !dbg !844 {
  %3 = tail call i32 @lua_type(%struct.lua_State* %1, i32 -1) #8, !dbg !864
  switch i32 %3, label %50 [
    i32 4, label %4
    i32 1, label %7
    i32 3, label %13
    i32 5, label %16
  ], !dbg !866

; <label>:4:                                      ; preds = %2
  %5 = tail call i8* @lua_tolstring(%struct.lua_State* %1, i32 -1, i64* null) #8, !dbg !867
  %6 = tail call i64 @lua_objlen(%struct.lua_State* %1, i32 -1) #8, !dbg !868
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* %5, i64 %6) #8, !dbg !869
  br label %52, !dbg !870

; <label>:7:                                      ; preds = %2
  %8 = tail call i32 @lua_toboolean(%struct.lua_State* %1, i32 -1) #8, !dbg !871
  %9 = icmp eq i32 %8, 0, !dbg !871
  %10 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !872
  %11 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !873
  %12 = select i1 %9, %struct.redisObject* %11, %struct.redisObject* %10, !dbg !871
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %12) #8, !dbg !874
  br label %52, !dbg !875

; <label>:13:                                     ; preds = %2
  %14 = tail call double @lua_tonumber(%struct.lua_State* %1, i32 -1) #8, !dbg !876
  %15 = fptosi double %14 to i64, !dbg !877
  tail call void @addReplyLongLong(%struct.client* %0, i64 %15) #8, !dbg !878
  br label %52, !dbg !879

; <label>:16:                                     ; preds = %2
  tail call void @lua_pushstring(%struct.lua_State* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !880
  tail call void @lua_gettable(%struct.lua_State* %1, i32 -2) #8, !dbg !881
  %17 = tail call i32 @lua_type(%struct.lua_State* %1, i32 -1) #8, !dbg !882
  %18 = icmp eq i32 %17, 4, !dbg !883
  br i1 %18, label %19, label %25, !dbg !884

; <label>:19:                                     ; preds = %16
  %20 = tail call i8* @lua_tolstring(%struct.lua_State* %1, i32 -1, i64* null) #8, !dbg !885
  %21 = tail call i8* @sdsnew(i8* %20) #8, !dbg !886
  %22 = tail call i8* @sdsmapchars(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2) #8, !dbg !888
  %23 = tail call i8* @sdsempty() #8, !dbg !889
  %24 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %21) #8, !dbg !890
  tail call void @addReplySds(%struct.client* %0, i8* %24) #8, !dbg !891
  tail call void @sdsfree(i8* %21) #8, !dbg !892
  tail call void @lua_settop(%struct.lua_State* %1, i32 -3) #8, !dbg !893
  br label %53

; <label>:25:                                     ; preds = %16
  tail call void @lua_settop(%struct.lua_State* %1, i32 -2) #8, !dbg !894
  tail call void @lua_pushstring(%struct.lua_State* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !895
  tail call void @lua_gettable(%struct.lua_State* %1, i32 -2) #8, !dbg !896
  %26 = tail call i32 @lua_type(%struct.lua_State* %1, i32 -1) #8, !dbg !897
  %27 = icmp eq i32 %26, 4, !dbg !898
  br i1 %27, label %28, label %34, !dbg !899

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @lua_tolstring(%struct.lua_State* %1, i32 -1, i64* null) #8, !dbg !900
  %30 = tail call i8* @sdsnew(i8* %29) #8, !dbg !901
  %31 = tail call i8* @sdsmapchars(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2) #8, !dbg !903
  %32 = tail call i8* @sdsempty() #8, !dbg !904
  %33 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %30) #8, !dbg !905
  tail call void @addReplySds(%struct.client* %0, i8* %33) #8, !dbg !906
  tail call void @sdsfree(i8* %30) #8, !dbg !907
  tail call void @lua_settop(%struct.lua_State* %1, i32 -2) #8, !dbg !908
  br label %52, !dbg !909

; <label>:34:                                     ; preds = %25
  %35 = tail call i8* @addDeferredMultiBulkLength(%struct.client* %0) #8, !dbg !910
  tail call void @lua_settop(%struct.lua_State* %1, i32 -2) #8, !dbg !914
  tail call void @lua_pushnumber(%struct.lua_State* %1, double 1.000000e+00) #8, !dbg !915
  tail call void @lua_gettable(%struct.lua_State* %1, i32 -2) #8, !dbg !917
  %36 = tail call i32 @lua_type(%struct.lua_State* %1, i32 -1) #8, !dbg !918
  %37 = icmp eq i32 %36, 0, !dbg !919
  br i1 %37, label %40, label %42, !dbg !921

; <label>:38:                                     ; preds = %42
  %39 = zext i32 %46 to i64, !dbg !922
  br label %40, !dbg !922

; <label>:40:                                     ; preds = %38, %34
  %41 = phi i64 [ 0, %34 ], [ %39, %38 ]
  tail call void @lua_settop(%struct.lua_State* %1, i32 -2) #8, !dbg !922
  tail call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %35, i64 %41) #8, !dbg !924
  br label %52

; <label>:42:                                     ; preds = %34, %42
  %43 = phi i32 [ %46, %42 ], [ 0, %34 ]
  %44 = phi i32 [ %45, %42 ], [ 1, %34 ]
  %45 = add nuw nsw i32 %44, 1, !dbg !925
  tail call void @luaReplyToRedisReply(%struct.client* %0, %struct.lua_State* %1) #9, !dbg !926
  %46 = add nuw nsw i32 %43, 1, !dbg !927
  %47 = sitofp i32 %45 to double, !dbg !928
  tail call void @lua_pushnumber(%struct.lua_State* %1, double %47) #8, !dbg !915
  tail call void @lua_gettable(%struct.lua_State* %1, i32 -2) #8, !dbg !917
  %48 = tail call i32 @lua_type(%struct.lua_State* %1, i32 -1) #8, !dbg !918
  %49 = icmp eq i32 %48, 0, !dbg !919
  br i1 %49, label %38, label %42, !dbg !921, !llvm.loop !929

; <label>:50:                                     ; preds = %2
  %51 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !932, !tbaa !933
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %51) #8, !dbg !935
  br label %52, !dbg !936

; <label>:52:                                     ; preds = %28, %40, %50, %13, %7, %4
  tail call void @lua_settop(%struct.lua_State* %1, i32 -2) #8, !dbg !937
  br label %53, !dbg !938

; <label>:53:                                     ; preds = %52, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  ret void, !dbg !938
}

; Function Attrs: noredzone
declare dso_local i32 @lua_type(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @lua_tolstring(%struct.lua_State*, i32, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @lua_objlen(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_toboolean(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @lua_tonumber(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsnew(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsmapchars(i8*, i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplySds(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @addDeferredMultiBulkLength(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @setDeferredMultiBulkLength(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisGenericCommand(%struct.lua_State*, i32) local_unnamed_addr #0 !dbg !71 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [64 x i8], align 16
  %6 = tail call i32 @lua_gettop(%struct.lua_State* %0) #8, !dbg !941
  %7 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 271), align 8, !dbg !943, !tbaa !944
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 280), align 4, !dbg !951, !tbaa !953
  %9 = icmp eq i32 %8, 0, !dbg !954
  br i1 %9, label %10, label %16, !dbg !955

; <label>:10:                                     ; preds = %2
  %11 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !956, !tbaa !957
  %12 = getelementptr inbounds %struct.client, %struct.client* %11, i64 0, i32 21, !dbg !958
  %13 = load i32, i32* %12, align 8, !dbg !958, !tbaa !959
  %14 = and i32 %13, 8, !dbg !963
  %15 = icmp eq i32 %14, 0, !dbg !963
  br i1 %15, label %20, label %16, !dbg !964

; <label>:16:                                     ; preds = %10, %2
  %17 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 21, !dbg !965
  %18 = load i32, i32* %17, align 8, !dbg !967, !tbaa !959
  %19 = or i32 %18, 8, !dbg !967
  store i32 %19, i32* %17, align 8, !dbg !967, !tbaa !959
  br label %24, !dbg !968

; <label>:20:                                     ; preds = %10
  %21 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 21, !dbg !969
  %22 = load i32, i32* %21, align 8, !dbg !971, !tbaa !959
  %23 = and i32 %22, -9, !dbg !971
  store i32 %23, i32* %21, align 8, !dbg !971, !tbaa !959
  br label %24

; <label>:24:                                     ; preds = %20, %16
  %25 = load i32, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !972, !tbaa !973
  %26 = icmp eq i32 %25, 0, !dbg !972
  br i1 %26, label %28, label %27, !dbg !974

; <label>:27:                                     ; preds = %24
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !975
  tail call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !976
  br label %519

; <label>:28:                                     ; preds = %24
  store i32 1, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !977, !tbaa !973
  %29 = icmp eq i32 %6, 0, !dbg !978
  br i1 %29, label %30, label %36, !dbg !980

; <label>:30:                                     ; preds = %28
  tail call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !981
  %31 = load i32, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !983, !tbaa !973
  %32 = add nsw i32 %31, -1, !dbg !983
  store i32 %32, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !983, !tbaa !973
  %33 = icmp eq i32 %1, 0, !dbg !984
  br i1 %33, label %519, label %34, !dbg !984

; <label>:34:                                     ; preds = %30
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !987
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -2) #8, !dbg !988
  %35 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  br label %519, !dbg !984

; <label>:36:                                     ; preds = %28
  %37 = load i32, i32* @luaRedisGenericCommand.argv_size, align 4, !dbg !991, !tbaa !973
  %38 = icmp slt i32 %37, %6, !dbg !993
  br i1 %38, label %39, label %44, !dbg !994

; <label>:39:                                     ; preds = %36
  %40 = load i8*, i8** bitcast (%struct.redisObject*** @luaRedisGenericCommand.argv to i8**), align 8, !dbg !995, !tbaa !997
  %41 = sext i32 %6 to i64, !dbg !998
  %42 = shl nsw i64 %41, 3, !dbg !999
  %43 = tail call i8* @zrealloc(i8* %40, i64 %42) #8, !dbg !1000
  store i8* %43, i8** bitcast (%struct.redisObject*** @luaRedisGenericCommand.argv to i8**), align 8, !dbg !1001, !tbaa !997
  store i32 %6, i32* @luaRedisGenericCommand.argv_size, align 4, !dbg !1002, !tbaa !973
  br label %44, !dbg !1003

; <label>:44:                                     ; preds = %39, %36
  %45 = icmp sgt i32 %6, 0, !dbg !1005
  br i1 %45, label %46, label %115, !dbg !1006

; <label>:46:                                     ; preds = %44
  %47 = bitcast i64* %4 to i8*
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %49 = sext i32 %6 to i64, !dbg !1006
  br label %50, !dbg !1006

; <label>:50:                                     ; preds = %46, %109
  %51 = phi i64 [ 0, %46 ], [ %52, %109 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %47) #7, !dbg !1007
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %48) #7, !dbg !1008
  %52 = add nuw nsw i64 %51, 1, !dbg !1010
  %53 = trunc i64 %52 to i32, !dbg !1011
  %54 = call i32 @lua_type(%struct.lua_State* %0, i32 %53) #8, !dbg !1011
  %55 = icmp eq i32 %54, 3, !dbg !1012
  br i1 %55, label %56, label %60, !dbg !1013

; <label>:56:                                     ; preds = %50
  %57 = call double @lua_tonumber(%struct.lua_State* %0, i32 %53) #8, !dbg !1014
  %58 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %48, i64 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), double %57) #8, !dbg !1016
  %59 = sext i32 %58 to i64, !dbg !1016
  store i64 %59, i64* %4, align 8, !dbg !1018, !tbaa !1019
  br label %63, !dbg !1021

; <label>:60:                                     ; preds = %50
  %61 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %53, i64* nonnull %4) #8, !dbg !1022
  %62 = icmp eq i8* %61, null, !dbg !1024
  br i1 %62, label %111, label %63, !dbg !1026

; <label>:63:                                     ; preds = %60, %56
  %64 = phi i8* [ %48, %56 ], [ %61, %60 ], !dbg !1027
  %65 = icmp ult i64 %51, 32, !dbg !1028
  br i1 %65, label %66, label %104, !dbg !1029

; <label>:66:                                     ; preds = %63
  %67 = getelementptr inbounds [32 x %struct.redisObject*], [32 x %struct.redisObject*]* @luaRedisGenericCommand.cached_objects, i64 0, i64 %51, !dbg !1030
  %68 = load %struct.redisObject*, %struct.redisObject** %67, align 8, !dbg !1030, !tbaa !997
  %69 = icmp eq %struct.redisObject* %68, null, !dbg !1030
  br i1 %69, label %104, label %70, !dbg !1031

; <label>:70:                                     ; preds = %66
  %71 = getelementptr inbounds [32 x i64], [32 x i64]* @luaRedisGenericCommand.cached_objects_len, i64 0, i64 %51, !dbg !1032
  %72 = load i64, i64* %71, align 8, !dbg !1032, !tbaa !1019
  %73 = load i64, i64* %4, align 8, !dbg !1033, !tbaa !1019
  %74 = icmp ult i64 %72, %73, !dbg !1034
  br i1 %74, label %104, label %75, !dbg !1035

; <label>:75:                                     ; preds = %70
  %76 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %68, i64 0, i32 2, !dbg !1036
  %77 = load i8*, i8** %76, align 8, !dbg !1036, !tbaa !1037
  %78 = load %struct.redisObject**, %struct.redisObject*** @luaRedisGenericCommand.argv, align 8, !dbg !1040, !tbaa !997
  %79 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %78, i64 %51, !dbg !1040
  store %struct.redisObject* %68, %struct.redisObject** %79, align 8, !dbg !1041, !tbaa !997
  store %struct.redisObject* null, %struct.redisObject** %67, align 8, !dbg !1042, !tbaa !997
  %80 = add i64 %73, 1, !dbg !1043
  %81 = call i8* @memcpy(i8* %77, i8* nonnull %64, i64 %80) #8, !dbg !1044
  %82 = load i64, i64* %4, align 8, !dbg !1045, !tbaa !1019
  %83 = getelementptr inbounds i8, i8* %77, i64 -1, !dbg !1061
  %84 = load i8, i8* %83, align 1, !dbg !1061, !tbaa !485
  %85 = trunc i8 %84 to i3, !dbg !1063
  switch i3 %85, label %103 [
    i3 0, label %86
    i3 1, label %89
    i3 2, label %92
    i3 3, label %96
    i3 -4, label %100
  ], !dbg !1063

; <label>:86:                                     ; preds = %75
  %87 = trunc i64 %82 to i8, !dbg !1065
  %88 = shl i8 %87, 3, !dbg !1065
  store i8 %88, i8* %83, align 1, !dbg !1066, !tbaa !485
  br label %103, !dbg !1067

; <label>:89:                                     ; preds = %75
  %90 = trunc i64 %82 to i8, !dbg !1068
  %91 = getelementptr inbounds i8, i8* %77, i64 -3, !dbg !1069
  store i8 %90, i8* %91, align 1, !dbg !1070, !tbaa !485
  br label %103, !dbg !1071

; <label>:92:                                     ; preds = %75
  %93 = trunc i64 %82 to i16, !dbg !1072
  %94 = getelementptr inbounds i8, i8* %77, i64 -5, !dbg !1073
  %95 = bitcast i8* %94 to i16*, !dbg !1074
  store i16 %93, i16* %95, align 1, !dbg !1075, !tbaa !1076
  br label %103, !dbg !1078

; <label>:96:                                     ; preds = %75
  %97 = trunc i64 %82 to i32, !dbg !1079
  %98 = getelementptr inbounds i8, i8* %77, i64 -9, !dbg !1080
  %99 = bitcast i8* %98 to i32*, !dbg !1081
  store i32 %97, i32* %99, align 1, !dbg !1082, !tbaa !973
  br label %103, !dbg !1083

; <label>:100:                                    ; preds = %75
  %101 = getelementptr inbounds i8, i8* %77, i64 -17, !dbg !1084
  %102 = bitcast i8* %101 to i64*, !dbg !1085
  store i64 %82, i64* %102, align 1, !dbg !1086, !tbaa !1019
  br label %103, !dbg !1087

; <label>:103:                                    ; preds = %75, %86, %89, %92, %96, %100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1088
  br label %109, !dbg !1089

; <label>:104:                                    ; preds = %70, %66, %63
  %105 = load i64, i64* %4, align 8, !dbg !1090, !tbaa !1019
  %106 = call %struct.redisObject* @createStringObject(i8* nonnull %64, i64 %105) #8, !dbg !1092
  %107 = load %struct.redisObject**, %struct.redisObject*** @luaRedisGenericCommand.argv, align 8, !dbg !1093, !tbaa !997
  %108 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %107, i64 %51, !dbg !1093
  store %struct.redisObject* %106, %struct.redisObject** %108, align 8, !dbg !1094, !tbaa !997
  br label %109

; <label>:109:                                    ; preds = %103, %104
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %48) #7, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #7, !dbg !1095
  %110 = icmp slt i64 %52, %49, !dbg !1005
  br i1 %110, label %50, label %113, !dbg !1006, !llvm.loop !1096

; <label>:111:                                    ; preds = %60
  %112 = trunc i64 %51 to i32, !dbg !1004
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %48) #7, !dbg !1095
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #7, !dbg !1095
  br label %115

; <label>:113:                                    ; preds = %109
  %114 = trunc i64 %52 to i32, !dbg !1011
  br label %115, !dbg !1098

; <label>:115:                                    ; preds = %113, %44, %111
  %116 = phi i32 [ %112, %111 ], [ 0, %44 ], [ %114, %113 ]
  %117 = icmp eq i32 %116, %6, !dbg !1098
  br i1 %117, label %135, label %118, !dbg !1100

; <label>:118:                                    ; preds = %115
  %119 = icmp sgt i32 %116, 0, !dbg !1101
  br i1 %119, label %120, label %129, !dbg !1103

; <label>:120:                                    ; preds = %118
  %121 = zext i32 %116 to i64, !dbg !1104
  br label %122, !dbg !1104

; <label>:122:                                    ; preds = %120, %122
  %123 = phi i64 [ %121, %120 ], [ %124, %122 ]
  %124 = add nsw i64 %123, -1, !dbg !1104
  %125 = load %struct.redisObject**, %struct.redisObject*** @luaRedisGenericCommand.argv, align 8, !dbg !1106, !tbaa !997
  %126 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %125, i64 %124, !dbg !1106
  %127 = load %struct.redisObject*, %struct.redisObject** %126, align 8, !dbg !1106, !tbaa !997
  call void @decrRefCount(%struct.redisObject* %127) #8, !dbg !1107
  %128 = icmp sgt i64 %123, 1, !dbg !1101
  br i1 %128, label %122, label %129, !dbg !1103, !llvm.loop !1108

; <label>:129:                                    ; preds = %122, %118
  call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !1110
  %130 = load i32, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !1111, !tbaa !973
  %131 = add nsw i32 %130, -1, !dbg !1111
  store i32 %131, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !1111, !tbaa !973
  %132 = icmp eq i32 %1, 0, !dbg !1112
  br i1 %132, label %519, label %133, !dbg !1112

; <label>:133:                                    ; preds = %129
  call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1115
  call void @lua_gettable(%struct.lua_State* %0, i32 -2) #8, !dbg !1116
  %134 = call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1118
  br label %519, !dbg !1112

; <label>:135:                                    ; preds = %115
  %136 = load i64, i64* bitcast (%struct.redisObject*** @luaRedisGenericCommand.argv to i64*), align 8, !dbg !1119, !tbaa !997
  %137 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 9, !dbg !1120
  %138 = bitcast %struct.redisObject*** %137 to i64*, !dbg !1121
  store i64 %136, i64* %138, align 8, !dbg !1121, !tbaa !1122
  %139 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 8, !dbg !1123
  store i32 %6, i32* %139, align 8, !dbg !1124, !tbaa !1125
  call void @moduleCallCommandFilters(%struct.client* %7) #8, !dbg !1126
  %140 = load i64, i64* %138, align 8, !dbg !1127, !tbaa !1122
  store i64 %140, i64* bitcast (%struct.redisObject*** @luaRedisGenericCommand.argv to i64*), align 8, !dbg !1128, !tbaa !997
  %141 = load i32, i32* %139, align 8, !dbg !1129, !tbaa !1125
  %142 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !1130, !tbaa !761
  %143 = icmp ne i32 %142, 0, !dbg !1131
  %144 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !1132
  %145 = icmp ne i32 %144, 0, !dbg !1133
  %146 = and i1 %143, %145, !dbg !1134
  %147 = inttoptr i64 %140 to %struct.redisObject**, !dbg !1134
  br i1 %146, label %148, label %176, !dbg !1134

; <label>:148:                                    ; preds = %135
  %149 = call i8* @sdsnew(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1135
  %150 = load i32, i32* %139, align 8, !dbg !1137, !tbaa !1125
  %151 = icmp sgt i32 %150, 0, !dbg !1140
  br i1 %151, label %162, label %171, !dbg !1141

; <label>:152:                                    ; preds = %162
  %153 = call i8* @sdscatlen(i8* %168, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #8, !dbg !1142
  %154 = load %struct.redisObject**, %struct.redisObject*** %137, align 8, !dbg !1146, !tbaa !1122
  %155 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %154, i64 1, !dbg !1147
  %156 = load %struct.redisObject*, %struct.redisObject** %155, align 8, !dbg !1147, !tbaa !997
  %157 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %156, i64 0, i32 2, !dbg !1148
  %158 = load i8*, i8** %157, align 8, !dbg !1148, !tbaa !1037
  %159 = call i8* @sdscatsds(i8* %153, i8* %158) #8, !dbg !1149
  %160 = load i32, i32* %139, align 8, !dbg !1137, !tbaa !1125
  %161 = icmp sgt i32 %160, 2, !dbg !1140
  br i1 %161, label %521, label %171, !dbg !1141, !llvm.loop !1150

; <label>:162:                                    ; preds = %148
  %163 = call i8* @sdscatlen(i8* %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #8, !dbg !1142
  %164 = load %struct.redisObject**, %struct.redisObject*** %137, align 8, !dbg !1146, !tbaa !1122
  %165 = load %struct.redisObject*, %struct.redisObject** %164, align 8, !dbg !1147, !tbaa !997
  %166 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %165, i64 0, i32 2, !dbg !1148
  %167 = load i8*, i8** %166, align 8, !dbg !1148, !tbaa !1037
  %168 = call i8* @sdscatsds(i8* %163, i8* %167) #8, !dbg !1149
  %169 = load i32, i32* %139, align 8, !dbg !1137, !tbaa !1125
  %170 = icmp sgt i32 %169, 1, !dbg !1140
  br i1 %170, label %152, label %171, !dbg !1141, !llvm.loop !1150

; <label>:171:                                    ; preds = %162, %152, %521, %531, %541, %551, %561, %571, %581, %591, %148, %601
  %172 = phi i8* [ %603, %601 ], [ %149, %148 ], [ %168, %162 ], [ %159, %152 ], [ %528, %521 ], [ %538, %531 ], [ %548, %541 ], [ %558, %551 ], [ %568, %561 ], [ %578, %571 ], [ %588, %581 ], [ %598, %591 ], !dbg !1152
  %173 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !1155, !tbaa !781
  %174 = call %struct.list* @listAddNodeTail(%struct.list* %173, i8* %172) #8, !dbg !1156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1157
  %175 = load %struct.redisObject**, %struct.redisObject*** @luaRedisGenericCommand.argv, align 8, !dbg !1158, !tbaa !997
  br label %176, !dbg !1159

; <label>:176:                                    ; preds = %171, %135
  %177 = phi %struct.redisObject** [ %175, %171 ], [ %147, %135 ], !dbg !1158
  %178 = load %struct.redisObject*, %struct.redisObject** %177, align 8, !dbg !1158, !tbaa !997
  %179 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %178, i64 0, i32 2, !dbg !1160
  %180 = load i8*, i8** %179, align 8, !dbg !1160, !tbaa !1037
  %181 = call %struct.redisCommand* @lookupCommand(i8* %180) #8, !dbg !1161
  %182 = icmp eq %struct.redisCommand* %181, null, !dbg !1163
  br i1 %182, label %193, label %183, !dbg !1165

; <label>:183:                                    ; preds = %176
  %184 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %181, i64 0, i32 2, !dbg !1166
  %185 = load i32, i32* %184, align 8, !dbg !1166, !tbaa !1167
  %186 = icmp sgt i32 %185, 0, !dbg !1169
  %187 = icmp ne i32 %185, %141, !dbg !1170
  %188 = and i1 %187, %186, !dbg !1171
  %189 = sub nsw i32 0, %185, !dbg !1172
  %190 = icmp slt i32 %141, %189, !dbg !1173
  %191 = or i1 %190, %188, !dbg !1171
  br i1 %191, label %192, label %194, !dbg !1171

; <label>:192:                                    ; preds = %183
  call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0)) #9, !dbg !1174
  br label %420, !dbg !1174

; <label>:193:                                    ; preds = %176
  call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0)) #9, !dbg !1177
  br label %420

; <label>:194:                                    ; preds = %183
  %195 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 11, !dbg !1178
  store %struct.redisCommand* %181, %struct.redisCommand** %195, align 8, !dbg !1179, !tbaa !1180
  %196 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 10, !dbg !1181
  store %struct.redisCommand* %181, %struct.redisCommand** %196, align 8, !dbg !1182, !tbaa !1183
  %197 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %181, i64 0, i32 4, !dbg !1184
  %198 = load i32, i32* %197, align 8, !dbg !1184, !tbaa !1186
  %199 = and i32 %198, 64, !dbg !1187
  %200 = icmp eq i32 %199, 0, !dbg !1187
  br i1 %200, label %202, label %201, !dbg !1188

; <label>:201:                                    ; preds = %194
  call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !1189
  br label %420, !dbg !1191

; <label>:202:                                    ; preds = %194
  %203 = and i32 %198, 1, !dbg !1192
  %204 = icmp eq i32 %203, 0, !dbg !1192
  br i1 %204, label %205, label %208, !dbg !1193

; <label>:205:                                    ; preds = %202
  %206 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !1194
  %207 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !1196
  br label %245, !dbg !1193

; <label>:208:                                    ; preds = %202
  %209 = call i32 @writeCommandsDeniedByDiskError() #8, !dbg !1197
  %210 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 278), align 4, !dbg !1199, !tbaa !1200
  %211 = icmp eq i32 %210, 0, !dbg !1201
  %212 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !1202
  %213 = icmp ne i32 %212, 0, !dbg !1203
  %214 = or i1 %211, %213, !dbg !1204
  br i1 %214, label %216, label %215, !dbg !1204

; <label>:215:                                    ; preds = %208
  call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.24, i64 0, i64 0)) #9, !dbg !1205
  br label %420, !dbg !1207

; <label>:216:                                    ; preds = %208
  %217 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !1208, !tbaa !1209
  %218 = icmp eq i8* %217, null, !dbg !1210
  %219 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 211), align 4, !dbg !1211
  %220 = icmp eq i32 %219, 0, !dbg !1212
  %221 = or i1 %218, %220, !dbg !1213
  %222 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !1214
  %223 = icmp ne i32 %222, 0, !dbg !1215
  %224 = or i1 %221, %223, !dbg !1213
  br i1 %224, label %235, label %225, !dbg !1213

; <label>:225:                                    ; preds = %216
  %226 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !1216, !tbaa !957
  %227 = getelementptr inbounds %struct.client, %struct.client* %226, i64 0, i32 21, !dbg !1217
  %228 = load i32, i32* %227, align 8, !dbg !1217, !tbaa !959
  %229 = and i32 %228, 2, !dbg !1218
  %230 = icmp eq i32 %229, 0, !dbg !1218
  br i1 %230, label %231, label %235, !dbg !1219

; <label>:231:                                    ; preds = %225
  %232 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 24), align 8, !dbg !1220, !tbaa !1222
  %233 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %232, i64 0, i32 2, !dbg !1223
  %234 = load i8*, i8** %233, align 8, !dbg !1223, !tbaa !1037
  call void @luaPushError(%struct.lua_State* %0, i8* %234) #9, !dbg !1224
  br label %420, !dbg !1225

; <label>:235:                                    ; preds = %225, %216
  switch i32 %209, label %240 [
    i32 0, label %245
    i32 2, label %236
  ], !dbg !1226

; <label>:236:                                    ; preds = %235
  %237 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 22), align 8, !dbg !1227, !tbaa !1229
  %238 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %237, i64 0, i32 2, !dbg !1230
  %239 = load i8*, i8** %238, align 8, !dbg !1230, !tbaa !1037
  call void @luaPushError(%struct.lua_State* %0, i8* %239) #9, !dbg !1231
  br label %420, !dbg !1232

; <label>:240:                                    ; preds = %235
  %241 = call i8* @sdsempty() #8, !dbg !1233
  %242 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 141), align 4, !dbg !1234, !tbaa !1235
  %243 = call i8* @strerror(i32 %242) #8, !dbg !1236
  %244 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %241, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0), i8* %243) #8, !dbg !1237
  call void @luaPushError(%struct.lua_State* %0, i8* %244) #9, !dbg !1239
  call void @sdsfree(i8* %244) #8, !dbg !1240
  br label %420

; <label>:245:                                    ; preds = %205, %235
  %246 = phi i8* [ %207, %205 ], [ %217, %235 ], !dbg !1196
  %247 = phi i32 [ %206, %205 ], [ %222, %235 ], !dbg !1194
  %248 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !1241, !tbaa !1242
  %249 = icmp eq i64 %248, 0, !dbg !1243
  %250 = icmp ne i32 %247, 0, !dbg !1244
  %251 = or i1 %249, %250, !dbg !1245
  %252 = icmp ne i8* %246, null, !dbg !1246
  %253 = or i1 %251, %252, !dbg !1245
  %254 = xor i1 %253, true, !dbg !1245
  %255 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 277), align 8, !dbg !1247
  %256 = icmp eq i32 %255, 0, !dbg !1248
  %257 = and i1 %256, %254, !dbg !1245
  br i1 %257, label %258, label %269, !dbg !1245

; <label>:258:                                    ; preds = %245
  %259 = load i32, i32* %197, align 8, !dbg !1249, !tbaa !1186
  %260 = and i32 %259, 4, !dbg !1250
  %261 = icmp eq i32 %260, 0, !dbg !1250
  br i1 %261, label %269, label %262, !dbg !1251

; <label>:262:                                    ; preds = %258
  %263 = call i32 @getMaxmemoryState(i64* null, i64* null, i64* null, float* null) #8, !dbg !1252
  %264 = icmp eq i32 %263, 0, !dbg !1255
  br i1 %264, label %269, label %265, !dbg !1256

; <label>:265:                                    ; preds = %262
  %266 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 29), align 8, !dbg !1257, !tbaa !1259
  %267 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %266, i64 0, i32 2, !dbg !1260
  %268 = load i8*, i8** %267, align 8, !dbg !1260, !tbaa !1037
  call void @luaPushError(%struct.lua_State* %0, i8* %268) #9, !dbg !1261
  br label %420, !dbg !1262

; <label>:269:                                    ; preds = %262, %258, %245
  %270 = load i32, i32* %197, align 8, !dbg !1263, !tbaa !1186
  %271 = trunc i32 %270 to i8, !dbg !1265
  %272 = icmp slt i8 %271, 0, !dbg !1265
  br i1 %272, label %273, label %274, !dbg !1266

; <label>:273:                                    ; preds = %269
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 278), align 4, !dbg !1267, !tbaa !1200
  br label %274, !dbg !1268

; <label>:274:                                    ; preds = %273, %269
  %275 = and i32 %270, 1, !dbg !1269
  %276 = icmp eq i32 %275, 0, !dbg !1269
  br i1 %276, label %278, label %277, !dbg !1271

; <label>:277:                                    ; preds = %274
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 277), align 8, !dbg !1272, !tbaa !1273
  br label %278, !dbg !1274

; <label>:278:                                    ; preds = %274, %277
  %279 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !1275, !tbaa !1277
  %280 = icmp eq i32 %279, 0, !dbg !1278
  %281 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !1279
  %282 = icmp ne i32 %281, 0, !dbg !1280
  %283 = or i1 %280, %282, !dbg !1281
  br i1 %283, label %306, label %284, !dbg !1281

; <label>:284:                                    ; preds = %278
  %285 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !1282, !tbaa !957
  %286 = getelementptr inbounds %struct.client, %struct.client* %285, i64 0, i32 21, !dbg !1283
  %287 = load i32, i32* %286, align 8, !dbg !1283, !tbaa !959
  %288 = and i32 %287, 2, !dbg !1284
  %289 = icmp eq i32 %288, 0, !dbg !1284
  br i1 %289, label %290, label %306, !dbg !1285

; <label>:290:                                    ; preds = %284
  %291 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 21, !dbg !1286
  %292 = load i32, i32* %291, align 8, !dbg !1288, !tbaa !959
  %293 = and i32 %292, -131585, !dbg !1288
  store i32 %293, i32* %291, align 8, !dbg !1288, !tbaa !959
  %294 = load i32, i32* %286, align 8, !dbg !1289, !tbaa !959
  %295 = and i32 %294, 131584, !dbg !1290
  %296 = or i32 %295, %293, !dbg !1291
  store i32 %296, i32* %291, align 8, !dbg !1291, !tbaa !959
  %297 = load %struct.redisCommand*, %struct.redisCommand** %196, align 8, !dbg !1292, !tbaa !1183
  %298 = load %struct.redisObject**, %struct.redisObject*** %137, align 8, !dbg !1294, !tbaa !1122
  %299 = load i32, i32* %139, align 8, !dbg !1295, !tbaa !1125
  %300 = call %struct.clusterNode* @getNodeByQuery(%struct.client* nonnull %7, %struct.redisCommand* %297, %struct.redisObject** %298, i32 %299, i32* null, i32* null) #8, !dbg !1296
  %301 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !1297, !tbaa !1298
  %302 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %301, i64 0, i32 0, !dbg !1299
  %303 = load %struct.clusterNode*, %struct.clusterNode** %302, align 8, !dbg !1299, !tbaa !1300
  %304 = icmp eq %struct.clusterNode* %300, %303, !dbg !1302
  br i1 %304, label %306, label %305, !dbg !1303

; <label>:305:                                    ; preds = %290
  call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.26, i64 0, i64 0)) #9, !dbg !1304
  br label %420, !dbg !1306

; <label>:306:                                    ; preds = %290, %284, %278
  %307 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !1307, !tbaa !1309
  %308 = icmp eq i32 %307, 0, !dbg !1310
  %309 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 280), align 4, !dbg !1311
  %310 = icmp ne i32 %309, 0, !dbg !1312
  %311 = or i1 %308, %310, !dbg !1313
  br i1 %311, label %326, label %312, !dbg !1313

; <label>:312:                                    ; preds = %306
  %313 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !1314, !tbaa !957
  %314 = getelementptr inbounds %struct.client, %struct.client* %313, i64 0, i32 21, !dbg !1315
  %315 = load i32, i32* %314, align 8, !dbg !1315, !tbaa !959
  %316 = and i32 %315, 8, !dbg !1316
  %317 = icmp eq i32 %316, 0, !dbg !1316
  %318 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 277), align 8, !dbg !1317
  %319 = icmp ne i32 %318, 0, !dbg !1318
  %320 = and i1 %317, %319, !dbg !1319
  %321 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 281), align 8, !dbg !1320
  %322 = icmp ne i32 %321, 0, !dbg !1321
  %323 = and i1 %320, %322, !dbg !1319
  br i1 %323, label %324, label %329, !dbg !1319

; <label>:324:                                    ; preds = %312
  call void @execCommandPropagateMulti(%struct.client* %313) #8, !dbg !1322
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 280), align 4, !dbg !1324, !tbaa !953
  %325 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !1325, !tbaa !1309
  br label %326, !dbg !1327

; <label>:326:                                    ; preds = %324, %306
  %327 = phi i32 [ %307, %306 ], [ %325, %324 ], !dbg !1325
  %328 = icmp eq i32 %327, 0, !dbg !1329
  br i1 %328, label %337, label %329, !dbg !1330

; <label>:329:                                    ; preds = %312, %326
  %330 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 281), align 8, !dbg !1331, !tbaa !1334
  %331 = and i32 %330, 1, !dbg !1335
  %332 = icmp eq i32 %331, 0, !dbg !1335
  %333 = select i1 %332, i32 3, i32 7, !dbg !1336
  %334 = shl i32 %330, 2, !dbg !1337
  %335 = and i32 %334, 8, !dbg !1337
  %336 = or i32 %333, %335, !dbg !1337
  br label %337, !dbg !1337

; <label>:337:                                    ; preds = %329, %326
  %338 = phi i32 [ 3, %326 ], [ %336, %329 ], !dbg !1338
  call void @call(%struct.client* nonnull %7, i32 %338) #8, !dbg !1339
  %339 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 15, !dbg !1340
  %340 = load %struct.list*, %struct.list** %339, align 8, !dbg !1340, !tbaa !1341
  %341 = getelementptr inbounds %struct.list, %struct.list* %340, i64 0, i32 5, !dbg !1340
  %342 = load i64, i64* %341, align 8, !dbg !1340, !tbaa !1342
  %343 = icmp eq i64 %342, 0, !dbg !1344
  %344 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 47
  %345 = load i32, i32* %344, align 8, !dbg !1345, !tbaa !1346
  %346 = icmp slt i32 %345, 16384, !dbg !1347
  %347 = and i1 %343, %346, !dbg !1348
  br i1 %347, label %348, label %352, !dbg !1348

; <label>:348:                                    ; preds = %337
  %349 = sext i32 %345 to i64, !dbg !1349
  %350 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 48, i64 %349, !dbg !1349
  store i8 0, i8* %350, align 1, !dbg !1351, !tbaa !485
  %351 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 48, i64 0, !dbg !1352
  store i32 0, i32* %344, align 8, !dbg !1354, !tbaa !1346
  br label %379, !dbg !1355

; <label>:352:                                    ; preds = %337
  %353 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 48, i64 0, !dbg !1356
  %354 = sext i32 %345 to i64, !dbg !1357
  %355 = call i8* @sdsnewlen(i8* nonnull %353, i64 %354) #8, !dbg !1358
  store i32 0, i32* %344, align 8, !dbg !1359, !tbaa !1346
  %356 = load %struct.list*, %struct.list** %339, align 8, !dbg !1360, !tbaa !1341
  %357 = getelementptr inbounds %struct.list, %struct.list* %356, i64 0, i32 5, !dbg !1360
  %358 = load i64, i64* %357, align 8, !dbg !1360, !tbaa !1342
  %359 = icmp eq i64 %358, 0, !dbg !1361
  br i1 %359, label %379, label %360, !dbg !1361

; <label>:360:                                    ; preds = %352, %360
  %361 = phi %struct.list* [ %375, %360 ], [ %356, %352 ]
  %362 = phi i8* [ %371, %360 ], [ %355, %352 ]
  %363 = getelementptr inbounds %struct.list, %struct.list* %361, i64 0, i32 0, !dbg !1362
  %364 = load %struct.listNode*, %struct.listNode** %363, align 8, !dbg !1362, !tbaa !1363
  %365 = getelementptr inbounds %struct.listNode, %struct.listNode* %364, i64 0, i32 2, !dbg !1362
  %366 = bitcast i8** %365 to %struct.clientReplyBlock**, !dbg !1362
  %367 = load %struct.clientReplyBlock*, %struct.clientReplyBlock** %366, align 8, !dbg !1362, !tbaa !1364
  %368 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %367, i64 0, i32 2, i64 0, !dbg !1367
  %369 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %367, i64 0, i32 1, !dbg !1368
  %370 = load i64, i64* %369, align 8, !dbg !1368, !tbaa !1019
  %371 = call i8* @sdscatlen(i8* %362, i8* nonnull %368, i64 %370) #8, !dbg !1369
  %372 = load %struct.list*, %struct.list** %339, align 8, !dbg !1370, !tbaa !1341
  %373 = getelementptr inbounds %struct.list, %struct.list* %372, i64 0, i32 0, !dbg !1371
  %374 = load %struct.listNode*, %struct.listNode** %373, align 8, !dbg !1371, !tbaa !1363
  call void @listDelNode(%struct.list* %372, %struct.listNode* %374) #8, !dbg !1372
  %375 = load %struct.list*, %struct.list** %339, align 8, !dbg !1360, !tbaa !1341
  %376 = getelementptr inbounds %struct.list, %struct.list* %375, i64 0, i32 5, !dbg !1360
  %377 = load i64, i64* %376, align 8, !dbg !1360, !tbaa !1342
  %378 = icmp eq i64 %377, 0, !dbg !1361
  br i1 %378, label %379, label %360, !dbg !1361, !llvm.loop !1373

; <label>:379:                                    ; preds = %360, %352, %348
  %380 = phi i8* [ %351, %348 ], [ %355, %352 ], [ %371, %360 ], !dbg !1345
  %381 = icmp eq i32 %1, 0, !dbg !1375
  br i1 %381, label %386, label %382, !dbg !1377

; <label>:382:                                    ; preds = %379
  %383 = load i8, i8* %380, align 1, !dbg !1378, !tbaa !485
  %384 = icmp eq i8 %383, 45, !dbg !1379
  %385 = select i1 %384, i32 %1, i32 0, !dbg !1380
  br label %386, !dbg !1380

; <label>:386:                                    ; preds = %382, %379
  %387 = phi i32 [ 0, %379 ], [ %385, %382 ]
  %388 = call i8* @redisProtocolToLuaType(%struct.lua_State* %0, i8* %380) #9, !dbg !1381
  %389 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !1382, !tbaa !761
  %390 = icmp ne i32 %389, 0, !dbg !1384
  %391 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !1385
  %392 = icmp ne i32 %391, 0, !dbg !1386
  %393 = and i1 %390, %392, !dbg !1387
  br i1 %393, label %394, label %399, !dbg !1387

; <label>:394:                                    ; preds = %386
  %395 = bitcast i8** %3 to i8*, !dbg !1396
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %395) #7, !dbg !1396
  %396 = call i8* @sdsnew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.171, i64 0, i64 0)) #8, !dbg !1397
  store i8* %396, i8** %3, align 8, !dbg !1398, !tbaa !997
  %397 = call i8* @ldbRedisProtocolToHuman(i8** nonnull %3, i8* %380) #8, !dbg !1399
  %398 = load i8*, i8** %3, align 8, !dbg !1400, !tbaa !997
  call void @ldbLogWithMaxLen(i8* %398) #8, !dbg !1401
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %395) #7, !dbg !1402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1402
  br label %399, !dbg !1403

; <label>:399:                                    ; preds = %394, %386
  %400 = load i32, i32* %197, align 8, !dbg !1404, !tbaa !1186
  %401 = and i32 %400, 256, !dbg !1406
  %402 = icmp ne i32 %401, 0, !dbg !1406
  %403 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !1407
  %404 = icmp eq i32 %403, 0, !dbg !1408
  %405 = and i1 %402, %404, !dbg !1409
  br i1 %405, label %406, label %414, !dbg !1409

; <label>:406:                                    ; preds = %399
  %407 = load i8, i8* %380, align 1, !dbg !1410, !tbaa !485
  %408 = icmp eq i8 %407, 42, !dbg !1411
  br i1 %408, label %409, label %414, !dbg !1412

; <label>:409:                                    ; preds = %406
  %410 = getelementptr inbounds i8, i8* %380, i64 1, !dbg !1413
  %411 = load i8, i8* %410, align 1, !dbg !1413, !tbaa !485
  %412 = icmp eq i8 %411, 45, !dbg !1414
  br i1 %412, label %414, label %413, !dbg !1415

; <label>:413:                                    ; preds = %409
  call void @luaSortArray(%struct.lua_State* %0) #9, !dbg !1416
  br label %414, !dbg !1418

; <label>:414:                                    ; preds = %409, %413, %406, %399
  %415 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 48, i64 0, !dbg !1419
  %416 = icmp eq i8* %380, %415, !dbg !1421
  br i1 %416, label %418, label %417, !dbg !1422

; <label>:417:                                    ; preds = %414
  call void @sdsfree(i8* %380) #8, !dbg !1423
  br label %418, !dbg !1423

; <label>:418:                                    ; preds = %414, %417
  %419 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 16, !dbg !1424
  store i64 0, i64* %419, align 8, !dbg !1425, !tbaa !1426
  br label %420, !dbg !1427

; <label>:420:                                    ; preds = %236, %240, %215, %231, %192, %193, %418, %305, %265, %201
  %421 = phi i32 [ %1, %192 ], [ %1, %193 ], [ %1, %201 ], [ %1, %265 ], [ %387, %418 ], [ %1, %305 ], [ %1, %231 ], [ %1, %215 ], [ %1, %240 ], [ %1, %236 ]
  %422 = load i32, i32* %139, align 8, !dbg !1428, !tbaa !1125
  %423 = icmp sgt i32 %422, 0, !dbg !1429
  %424 = load %struct.redisObject**, %struct.redisObject*** %137, align 8, !dbg !1430, !tbaa !1122
  br i1 %423, label %425, label %507, !dbg !1432

; <label>:425:                                    ; preds = %420, %501
  %426 = phi i64 [ %502, %501 ], [ 0, %420 ]
  %427 = phi %struct.redisObject** [ %506, %501 ], [ %424, %420 ]
  %428 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %427, i64 %426, !dbg !1433
  %429 = load %struct.redisObject*, %struct.redisObject** %428, align 8, !dbg !1433, !tbaa !997
  %430 = icmp ult i64 %426, 32, !dbg !1435
  br i1 %430, label %431, label %500, !dbg !1436

; <label>:431:                                    ; preds = %425
  %432 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %429, i64 0, i32 1, !dbg !1437
  %433 = load i32, i32* %432, align 4, !dbg !1437, !tbaa !1438
  %434 = icmp eq i32 %433, 1, !dbg !1439
  br i1 %434, label %435, label %500, !dbg !1440

; <label>:435:                                    ; preds = %431
  %436 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %429, i64 0, i32 0, !dbg !1441
  %437 = load i32, i32* %436, align 8, !dbg !1441
  %438 = lshr i32 %437, 4, !dbg !1441
  %439 = trunc i32 %438 to i4, !dbg !1442
  switch i4 %439, label %500 [
    i4 0, label %440
    i4 -8, label %440
  ], !dbg !1442

; <label>:440:                                    ; preds = %435, %435
  %441 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %429, i64 0, i32 2, !dbg !1443
  %442 = load i8*, i8** %441, align 8, !dbg !1443, !tbaa !1037
  %443 = getelementptr inbounds i8, i8* %442, i64 -1, !dbg !1453
  %444 = load i8, i8* %443, align 1, !dbg !1453, !tbaa !485
  %445 = trunc i8 %444 to i3, !dbg !1455
  switch i3 %445, label %464 [
    i3 -4, label %460
    i3 1, label %446
    i3 2, label %450
    i3 3, label %455
  ], !dbg !1455

; <label>:446:                                    ; preds = %440
  %447 = getelementptr inbounds i8, i8* %442, i64 -3, !dbg !1456
  %448 = load i8, i8* %447, align 1, !dbg !1458, !tbaa !485
  %449 = zext i8 %448 to i64, !dbg !1456
  br label %465, !dbg !1459

; <label>:450:                                    ; preds = %440
  %451 = getelementptr inbounds i8, i8* %442, i64 -5, !dbg !1460
  %452 = bitcast i8* %451 to i16*, !dbg !1461
  %453 = load i16, i16* %452, align 1, !dbg !1461, !tbaa !1076
  %454 = zext i16 %453 to i64, !dbg !1460
  br label %465, !dbg !1462

; <label>:455:                                    ; preds = %440
  %456 = getelementptr inbounds i8, i8* %442, i64 -9, !dbg !1463
  %457 = bitcast i8* %456 to i32*, !dbg !1464
  %458 = load i32, i32* %457, align 1, !dbg !1464, !tbaa !973
  %459 = zext i32 %458 to i64, !dbg !1463
  br label %465, !dbg !1465

; <label>:460:                                    ; preds = %440
  %461 = getelementptr inbounds i8, i8* %442, i64 -17, !dbg !1466
  %462 = bitcast i8* %461 to i64*, !dbg !1467
  %463 = load i64, i64* %462, align 1, !dbg !1467, !tbaa !1019
  br label %465, !dbg !1468

; <label>:464:                                    ; preds = %440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1469
  br label %468, !dbg !1470

; <label>:465:                                    ; preds = %446, %450, %455, %460
  %466 = phi i64 [ %463, %460 ], [ %459, %455 ], [ %454, %450 ], [ %449, %446 ], !dbg !1471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1469
  %467 = icmp ult i64 %466, 65, !dbg !1472
  br i1 %467, label %468, label %500, !dbg !1470

; <label>:468:                                    ; preds = %464, %465
  %469 = getelementptr inbounds [32 x %struct.redisObject*], [32 x %struct.redisObject*]* @luaRedisGenericCommand.cached_objects, i64 0, i64 %426, !dbg !1474
  %470 = load %struct.redisObject*, %struct.redisObject** %469, align 8, !dbg !1474, !tbaa !997
  %471 = icmp eq %struct.redisObject* %470, null, !dbg !1474
  br i1 %471, label %473, label %472, !dbg !1476

; <label>:472:                                    ; preds = %468
  call void @decrRefCount(%struct.redisObject* nonnull %470) #8, !dbg !1477
  br label %473, !dbg !1477

; <label>:473:                                    ; preds = %468, %472
  store %struct.redisObject* %429, %struct.redisObject** %469, align 8, !dbg !1478, !tbaa !997
  %474 = load i8, i8* %443, align 1, !dbg !1485, !tbaa !485
  %475 = trunc i8 %474 to i3, !dbg !1487
  switch i3 %475, label %497 [
    i3 0, label %476
    i3 1, label %479
    i3 2, label %483
    i3 3, label %488
    i3 -4, label %493
  ], !dbg !1487

; <label>:476:                                    ; preds = %473
  %477 = lshr i8 %474, 3, !dbg !1488
  %478 = zext i8 %477 to i64, !dbg !1488
  br label %497, !dbg !1490

; <label>:479:                                    ; preds = %473
  %480 = getelementptr inbounds i8, i8* %442, i64 -2, !dbg !1491
  %481 = load i8, i8* %480, align 1, !dbg !1491, !tbaa !485
  %482 = zext i8 %481 to i64, !dbg !1492
  br label %497, !dbg !1493

; <label>:483:                                    ; preds = %473
  %484 = getelementptr inbounds i8, i8* %442, i64 -3, !dbg !1494
  %485 = bitcast i8* %484 to i16*, !dbg !1494
  %486 = load i16, i16* %485, align 1, !dbg !1494, !tbaa !1076
  %487 = zext i16 %486 to i64, !dbg !1495
  br label %497, !dbg !1496

; <label>:488:                                    ; preds = %473
  %489 = getelementptr inbounds i8, i8* %442, i64 -5, !dbg !1497
  %490 = bitcast i8* %489 to i32*, !dbg !1497
  %491 = load i32, i32* %490, align 1, !dbg !1497, !tbaa !973
  %492 = zext i32 %491 to i64, !dbg !1498
  br label %497, !dbg !1499

; <label>:493:                                    ; preds = %473
  %494 = getelementptr inbounds i8, i8* %442, i64 -9, !dbg !1500
  %495 = bitcast i8* %494 to i64*, !dbg !1500
  %496 = load i64, i64* %495, align 1, !dbg !1500, !tbaa !1019
  br label %497, !dbg !1501

; <label>:497:                                    ; preds = %473, %476, %479, %483, %488, %493
  %498 = phi i64 [ %496, %493 ], [ %492, %488 ], [ %487, %483 ], [ %482, %479 ], [ %478, %476 ], [ 0, %473 ], !dbg !1502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1503
  %499 = getelementptr inbounds [32 x i64], [32 x i64]* @luaRedisGenericCommand.cached_objects_len, i64 0, i64 %426, !dbg !1504
  store i64 %498, i64* %499, align 8, !dbg !1505, !tbaa !1019
  br label %501, !dbg !1506

; <label>:500:                                    ; preds = %435, %465, %431, %425
  call void @decrRefCount(%struct.redisObject* %429) #8, !dbg !1507
  br label %501

; <label>:501:                                    ; preds = %500, %497
  %502 = add nuw nsw i64 %426, 1, !dbg !1509
  %503 = load i32, i32* %139, align 8, !dbg !1428, !tbaa !1125
  %504 = sext i32 %503 to i64, !dbg !1429
  %505 = icmp slt i64 %502, %504, !dbg !1429
  %506 = load %struct.redisObject**, %struct.redisObject*** %137, align 8, !dbg !1430, !tbaa !1122
  br i1 %505, label %425, label %507, !dbg !1432, !llvm.loop !1510

; <label>:507:                                    ; preds = %501, %420
  %508 = phi %struct.redisObject** [ %424, %420 ], [ %506, %501 ], !dbg !1430
  %509 = load %struct.redisObject**, %struct.redisObject*** @luaRedisGenericCommand.argv, align 8, !dbg !1512, !tbaa !997
  %510 = icmp eq %struct.redisObject** %508, %509, !dbg !1513
  br i1 %510, label %513, label %511, !dbg !1514

; <label>:511:                                    ; preds = %507
  %512 = bitcast %struct.redisObject** %508 to i8*, !dbg !1515
  call void @zfree(i8* %512) #8, !dbg !1517
  store %struct.redisObject** null, %struct.redisObject*** @luaRedisGenericCommand.argv, align 8, !dbg !1518, !tbaa !997
  store i32 0, i32* @luaRedisGenericCommand.argv_size, align 4, !dbg !1519, !tbaa !973
  br label %513, !dbg !1520

; <label>:513:                                    ; preds = %507, %511
  %514 = icmp eq i32 %421, 0, !dbg !1521
  %515 = load i32, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !1338, !tbaa !973
  %516 = add nsw i32 %515, -1, !dbg !1338
  store i32 %516, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !1338, !tbaa !973
  br i1 %514, label %519, label %517, !dbg !1523

; <label>:517:                                    ; preds = %513
  call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1527
  call void @lua_gettable(%struct.lua_State* %0, i32 -2) #8, !dbg !1528
  %518 = call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !1529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1530
  br label %519, !dbg !1531

; <label>:519:                                    ; preds = %513, %133, %129, %34, %30, %517, %27
  %520 = phi i32 [ 1, %27 ], [ %518, %517 ], [ %35, %34 ], [ 1, %30 ], [ %134, %133 ], [ 1, %129 ], [ 1, %513 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1532
  ret i32 %520, !dbg !1532

; <label>:521:                                    ; preds = %152
  %522 = call i8* @sdscatlen(i8* %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #8, !dbg !1142
  %523 = load %struct.redisObject**, %struct.redisObject*** %137, align 8, !dbg !1146, !tbaa !1122
  %524 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %523, i64 2, !dbg !1147
  %525 = load %struct.redisObject*, %struct.redisObject** %524, align 8, !dbg !1147, !tbaa !997
  %526 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %525, i64 0, i32 2, !dbg !1148
  %527 = load i8*, i8** %526, align 8, !dbg !1148, !tbaa !1037
  %528 = call i8* @sdscatsds(i8* %522, i8* %527) #8, !dbg !1149
  %529 = load i32, i32* %139, align 8, !dbg !1137, !tbaa !1125
  %530 = icmp sgt i32 %529, 3, !dbg !1140
  br i1 %530, label %531, label %171, !dbg !1141, !llvm.loop !1150

; <label>:531:                                    ; preds = %521
  %532 = call i8* @sdscatlen(i8* %528, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #8, !dbg !1142
  %533 = load %struct.redisObject**, %struct.redisObject*** %137, align 8, !dbg !1146, !tbaa !1122
  %534 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %533, i64 3, !dbg !1147
  %535 = load %struct.redisObject*, %struct.redisObject** %534, align 8, !dbg !1147, !tbaa !997
  %536 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %535, i64 0, i32 2, !dbg !1148
  %537 = load i8*, i8** %536, align 8, !dbg !1148, !tbaa !1037
  %538 = call i8* @sdscatsds(i8* %532, i8* %537) #8, !dbg !1149
  %539 = load i32, i32* %139, align 8, !dbg !1137, !tbaa !1125
  %540 = icmp sgt i32 %539, 4, !dbg !1140
  br i1 %540, label %541, label %171, !dbg !1141, !llvm.loop !1150

; <label>:541:                                    ; preds = %531
  %542 = call i8* @sdscatlen(i8* %538, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #8, !dbg !1142
  %543 = load %struct.redisObject**, %struct.redisObject*** %137, align 8, !dbg !1146, !tbaa !1122
  %544 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %543, i64 4, !dbg !1147
  %545 = load %struct.redisObject*, %struct.redisObject** %544, align 8, !dbg !1147, !tbaa !997
  %546 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %545, i64 0, i32 2, !dbg !1148
  %547 = load i8*, i8** %546, align 8, !dbg !1148, !tbaa !1037
  %548 = call i8* @sdscatsds(i8* %542, i8* %547) #8, !dbg !1149
  %549 = load i32, i32* %139, align 8, !dbg !1137, !tbaa !1125
  %550 = icmp sgt i32 %549, 5, !dbg !1140
  br i1 %550, label %551, label %171, !dbg !1141, !llvm.loop !1150

; <label>:551:                                    ; preds = %541
  %552 = call i8* @sdscatlen(i8* %548, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #8, !dbg !1142
  %553 = load %struct.redisObject**, %struct.redisObject*** %137, align 8, !dbg !1146, !tbaa !1122
  %554 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %553, i64 5, !dbg !1147
  %555 = load %struct.redisObject*, %struct.redisObject** %554, align 8, !dbg !1147, !tbaa !997
  %556 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %555, i64 0, i32 2, !dbg !1148
  %557 = load i8*, i8** %556, align 8, !dbg !1148, !tbaa !1037
  %558 = call i8* @sdscatsds(i8* %552, i8* %557) #8, !dbg !1149
  %559 = load i32, i32* %139, align 8, !dbg !1137, !tbaa !1125
  %560 = icmp sgt i32 %559, 6, !dbg !1140
  br i1 %560, label %561, label %171, !dbg !1141, !llvm.loop !1150

; <label>:561:                                    ; preds = %551
  %562 = call i8* @sdscatlen(i8* %558, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #8, !dbg !1142
  %563 = load %struct.redisObject**, %struct.redisObject*** %137, align 8, !dbg !1146, !tbaa !1122
  %564 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %563, i64 6, !dbg !1147
  %565 = load %struct.redisObject*, %struct.redisObject** %564, align 8, !dbg !1147, !tbaa !997
  %566 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %565, i64 0, i32 2, !dbg !1148
  %567 = load i8*, i8** %566, align 8, !dbg !1148, !tbaa !1037
  %568 = call i8* @sdscatsds(i8* %562, i8* %567) #8, !dbg !1149
  %569 = load i32, i32* %139, align 8, !dbg !1137, !tbaa !1125
  %570 = icmp sgt i32 %569, 7, !dbg !1140
  br i1 %570, label %571, label %171, !dbg !1141, !llvm.loop !1150

; <label>:571:                                    ; preds = %561
  %572 = call i8* @sdscatlen(i8* %568, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #8, !dbg !1142
  %573 = load %struct.redisObject**, %struct.redisObject*** %137, align 8, !dbg !1146, !tbaa !1122
  %574 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %573, i64 7, !dbg !1147
  %575 = load %struct.redisObject*, %struct.redisObject** %574, align 8, !dbg !1147, !tbaa !997
  %576 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %575, i64 0, i32 2, !dbg !1148
  %577 = load i8*, i8** %576, align 8, !dbg !1148, !tbaa !1037
  %578 = call i8* @sdscatsds(i8* %572, i8* %577) #8, !dbg !1149
  %579 = load i32, i32* %139, align 8, !dbg !1137, !tbaa !1125
  %580 = icmp sgt i32 %579, 8, !dbg !1140
  br i1 %580, label %581, label %171, !dbg !1141, !llvm.loop !1150

; <label>:581:                                    ; preds = %571
  %582 = call i8* @sdscatlen(i8* %578, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #8, !dbg !1142
  %583 = load %struct.redisObject**, %struct.redisObject*** %137, align 8, !dbg !1146, !tbaa !1122
  %584 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %583, i64 8, !dbg !1147
  %585 = load %struct.redisObject*, %struct.redisObject** %584, align 8, !dbg !1147, !tbaa !997
  %586 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %585, i64 0, i32 2, !dbg !1148
  %587 = load i8*, i8** %586, align 8, !dbg !1148, !tbaa !1037
  %588 = call i8* @sdscatsds(i8* %582, i8* %587) #8, !dbg !1149
  %589 = load i32, i32* %139, align 8, !dbg !1137, !tbaa !1125
  %590 = icmp sgt i32 %589, 9, !dbg !1140
  br i1 %590, label %591, label %171, !dbg !1141, !llvm.loop !1150

; <label>:591:                                    ; preds = %581
  %592 = call i8* @sdscatlen(i8* %588, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #8, !dbg !1142
  %593 = load %struct.redisObject**, %struct.redisObject*** %137, align 8, !dbg !1146, !tbaa !1122
  %594 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %593, i64 9, !dbg !1147
  %595 = load %struct.redisObject*, %struct.redisObject** %594, align 8, !dbg !1147, !tbaa !997
  %596 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %595, i64 0, i32 2, !dbg !1148
  %597 = load i8*, i8** %596, align 8, !dbg !1148, !tbaa !1037
  %598 = call i8* @sdscatsds(i8* %592, i8* %597) #8, !dbg !1149
  %599 = load i32, i32* %139, align 8, !dbg !1137, !tbaa !1125
  %600 = icmp sgt i32 %599, 10, !dbg !1140
  br i1 %600, label %601, label %171, !dbg !1141, !llvm.loop !1150

; <label>:601:                                    ; preds = %591
  %602 = add i32 %599, -11, !dbg !1533
  %603 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %598, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 %602) #8, !dbg !1535
  br label %171, !dbg !1536
}

; Function Attrs: noredzone
declare dso_local i32 @lua_gettop(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @serverLog(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @moduleCallCommandFilters(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatsds(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisCommand* @lookupCommand(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @writeCommandsDeniedByDiskError() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatfmt(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strerror(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @getMaxmemoryState(i64*, i64*, i64*, float*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.clusterNode* @getNodeByQuery(%struct.client*, %struct.redisCommand*, %struct.redisObject**, i32, i32*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @execCommandPropagateMulti(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @call(%struct.client*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listDelNode(%struct.list*, %struct.listNode*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbLogRedisReply(i8*) local_unnamed_addr #0 !dbg !1389 {
  %2 = alloca i8*, align 8
  %3 = bitcast i8** %2 to i8*, !dbg !1538
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7, !dbg !1538
  %4 = tail call i8* @sdsnew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.171, i64 0, i64 0)) #8, !dbg !1539
  store i8* %4, i8** %2, align 8, !dbg !1540, !tbaa !997
  %5 = call i8* @ldbRedisProtocolToHuman(i8** nonnull %2, i8* %0) #9, !dbg !1541
  %6 = load i8*, i8** %2, align 8, !dbg !1542, !tbaa !997
  tail call void @ldbLogWithMaxLen(i8* %6) #9, !dbg !1543
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7, !dbg !1544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1544
  ret void, !dbg !1544
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisCallCommand(%struct.lua_State*) #0 !dbg !1545 {
  %2 = tail call i32 @luaRedisGenericCommand(%struct.lua_State* %0, i32 1) #9, !dbg !1549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1550
  ret i32 %2, !dbg !1550
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisPCallCommand(%struct.lua_State*) #0 !dbg !1551 {
  %2 = tail call i32 @luaRedisGenericCommand(%struct.lua_State* %0, i32 0) #9, !dbg !1555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1556
  ret i32 %2, !dbg !1556
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisSha1hexCommand(%struct.lua_State*) #0 !dbg !1557 {
  %2 = alloca %struct.SHA1_CTX, align 4
  %3 = alloca [20 x i8], align 16
  %4 = alloca [41 x i8], align 16
  %5 = alloca i64, align 8
  %6 = tail call i32 @lua_gettop(%struct.lua_State* %0) #8, !dbg !1567
  %7 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 0, !dbg !1569
  call void @llvm.lifetime.start.p0i8(i64 41, i8* nonnull %7) #7, !dbg !1569
  %8 = bitcast i64* %5 to i8*, !dbg !1571
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !1571
  %9 = icmp eq i32 %6, 1, !dbg !1572
  br i1 %9, label %12, label %10, !dbg !1574

; <label>:10:                                     ; preds = %1
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !1575
  %11 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !1577
  br label %38, !dbg !1578

; <label>:12:                                     ; preds = %1
  %13 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* nonnull %5) #8, !dbg !1580
  %14 = load i64, i64* %5, align 8, !dbg !1582, !tbaa !1019
  %15 = bitcast %struct.SHA1_CTX* %2 to i8*, !dbg !1586
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %15) #7, !dbg !1586
  %16 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0, !dbg !1587
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %16) #7, !dbg !1587
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %2) #8, !dbg !1589
  %17 = trunc i64 %14 to i32, !dbg !1590
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %2, i8* %13, i32 %17) #8, !dbg !1591
  call void @SHA1Final(i8* nonnull %16, %struct.SHA1_CTX* nonnull %2) #8, !dbg !1592
  br label %18, !dbg !1594

; <label>:18:                                     ; preds = %18, %12
  %19 = phi i64 [ 0, %12 ], [ %34, %18 ]
  %20 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 %19, !dbg !1595
  %21 = load i8, i8* %20, align 1, !dbg !1595, !tbaa !485
  %22 = lshr i8 %21, 4, !dbg !1596
  %23 = zext i8 %22 to i64, !dbg !1597
  %24 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %23, !dbg !1597
  %25 = load i8, i8* %24, align 1, !dbg !1597, !tbaa !485
  %26 = shl nuw nsw i64 %19, 1, !dbg !1598
  %27 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 %26, !dbg !1599
  store i8 %25, i8* %27, align 2, !dbg !1600, !tbaa !485
  %28 = and i8 %21, 15, !dbg !1601
  %29 = zext i8 %28 to i64, !dbg !1602
  %30 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %29, !dbg !1602
  %31 = load i8, i8* %30, align 1, !dbg !1602, !tbaa !485
  %32 = or i64 %26, 1, !dbg !1603
  %33 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 %32, !dbg !1604
  store i8 %31, i8* %33, align 1, !dbg !1605, !tbaa !485
  %34 = add nuw nsw i64 %19, 1, !dbg !1606
  %35 = icmp eq i64 %34, 20, !dbg !1607
  br i1 %35, label %36, label %18, !dbg !1594, !llvm.loop !500

; <label>:36:                                     ; preds = %18
  %37 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 40, !dbg !1608
  store i8 0, i8* %37, align 8, !dbg !1609, !tbaa !485
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %16) #7, !dbg !1610
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %15) #7, !dbg !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  call void @lua_pushstring(%struct.lua_State* %0, i8* nonnull %7) #8, !dbg !1611
  br label %38, !dbg !1612

; <label>:38:                                     ; preds = %36, %10
  %39 = phi i32 [ %11, %10 ], [ 1, %36 ], !dbg !1613
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !1614
  call void @llvm.lifetime.end.p0i8(i64 41, i8* nonnull %7) #7, !dbg !1614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1614
  ret i32 %39, !dbg !1614
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisReturnSingleFieldTable(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !1615 {
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #8, !dbg !1623
  %4 = icmp eq i32 %3, 1, !dbg !1625
  br i1 %4, label %5, label %8, !dbg !1626

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #8, !dbg !1627
  %7 = icmp eq i32 %6, 4, !dbg !1628
  br i1 %7, label %9, label %8, !dbg !1629

; <label>:8:                                      ; preds = %5, %2
  tail call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !1630
  br label %10, !dbg !1632

; <label>:9:                                      ; preds = %5
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #8, !dbg !1633
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %1) #8, !dbg !1634
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -3) #8, !dbg !1635
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #8, !dbg !1636
  br label %10, !dbg !1637

; <label>:10:                                     ; preds = %9, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1638
  ret i32 1, !dbg !1638
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisErrorReplyCommand(%struct.lua_State*) #0 !dbg !1639 {
  %2 = tail call i32 @luaRedisReturnSingleFieldTable(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1644
  ret i32 1, !dbg !1644
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisStatusReplyCommand(%struct.lua_State*) #0 !dbg !1645 {
  %2 = tail call i32 @luaRedisReturnSingleFieldTable(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !1649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1650
  ret i32 1, !dbg !1650
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisReplicateCommandsCommand(%struct.lua_State*) #0 !dbg !1651 {
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 277), align 8, !dbg !1655, !tbaa !1273
  %3 = icmp eq i32 %2, 0, !dbg !1657
  br i1 %3, label %5, label %4, !dbg !1658

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #8, !dbg !1659
  br label %7, !dbg !1661

; <label>:5:                                      ; preds = %1
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !1662, !tbaa !1309
  %6 = tail call i32 @rand() #8, !dbg !1664
  tail call void @redisSrand48(i32 %6) #8, !dbg !1665
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #8, !dbg !1666
  br label %7

; <label>:7:                                      ; preds = %5, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1667
  ret i32 1, !dbg !1667
}

; Function Attrs: noredzone
declare dso_local void @redisSrand48(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @rand() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisBreakpointCommand(%struct.lua_State*) #0 !dbg !1668 {
  %2 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !1672, !tbaa !761
  %3 = icmp eq i32 %2, 0, !dbg !1674
  br i1 %3, label %5, label %4, !dbg !1675

; <label>:4:                                      ; preds = %1
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !1676, !tbaa !1678
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #8, !dbg !1679
  br label %6, !dbg !1680

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #8, !dbg !1681
  br label %6

; <label>:6:                                      ; preds = %5, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1683
  ret i32 1, !dbg !1683
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisDebugCommand(%struct.lua_State*) #0 !dbg !1684 {
  %2 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !1690, !tbaa !761
  %3 = icmp eq i32 %2, 0, !dbg !1692
  br i1 %3, label %27, label %4, !dbg !1693

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #8, !dbg !1694
  %6 = tail call i8* @sdsempty() #8, !dbg !1696
  %7 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !1697, !tbaa !1698
  %8 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 %7) #8, !dbg !1699
  %9 = icmp eq i32 %5, 0, !dbg !1701
  br i1 %9, label %23, label %10, !dbg !1701

; <label>:10:                                     ; preds = %4
  %11 = add nsw i32 %5, -1, !dbg !1702
  %12 = sub i32 0, %5, !dbg !1703
  %13 = tail call i8* @ldbCatStackValueRec(i8* %8, %struct.lua_State* %0, i32 %12, i32 0) #8, !dbg !1716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1717
  %14 = icmp eq i32 %11, 0, !dbg !1718
  br i1 %14, label %23, label %15, !dbg !1720

; <label>:15:                                     ; preds = %10, %15
  %16 = phi i8* [ %21, %15 ], [ %13, %10 ]
  %17 = phi i32 [ %19, %15 ], [ %11, %10 ]
  %18 = tail call i8* @sdscatlen(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i64 2) #8, !dbg !1721
  %19 = add nsw i32 %17, -1, !dbg !1702
  %20 = sub i32 0, %17, !dbg !1703
  %21 = tail call i8* @ldbCatStackValueRec(i8* %18, %struct.lua_State* %0, i32 %20, i32 0) #8, !dbg !1716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1717
  %22 = icmp eq i32 %19, 0, !dbg !1718
  br i1 %22, label %23, label %15, !dbg !1720

; <label>:23:                                     ; preds = %15, %10, %4
  %24 = phi i8* [ %8, %4 ], [ %13, %10 ], [ %21, %15 ], !dbg !1722
  %25 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !1725, !tbaa !781
  %26 = tail call %struct.list* @listAddNodeTail(%struct.list* %25, i8* %24) #8, !dbg !1726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1727
  br label %27

; <label>:27:                                     ; preds = %1, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1728
  ret i32 0, !dbg !1728
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ldbCatStackValue(i8*, %struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1706 {
  %4 = tail call i8* @ldbCatStackValueRec(i8* %0, %struct.lua_State* %1, i32 %2, i32 0) #9, !dbg !1732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1733
  ret i8* %4, !dbg !1733
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisSetReplCommand(%struct.lua_State*) #0 !dbg !1734 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #8, !dbg !1740
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !1742, !tbaa !1309
  %4 = icmp eq i32 %3, 0, !dbg !1744
  br i1 %4, label %5, label %7, !dbg !1745

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.31, i64 0, i64 0)) #8, !dbg !1746
  %6 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !1748
  br label %18, !dbg !1749

; <label>:7:                                      ; preds = %1
  %8 = icmp eq i32 %2, 1, !dbg !1750
  br i1 %8, label %11, label %9, !dbg !1752

; <label>:9:                                      ; preds = %7
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !1753
  %10 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !1755
  br label %18, !dbg !1756

; <label>:11:                                     ; preds = %7
  %12 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #8, !dbg !1757
  %13 = fptosi double %12 to i32, !dbg !1757
  %14 = icmp ugt i32 %13, 3, !dbg !1759
  br i1 %14, label %15, label %17, !dbg !1761

; <label>:15:                                     ; preds = %11
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.33, i64 0, i64 0)) #8, !dbg !1762
  %16 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !1764
  br label %18, !dbg !1765

; <label>:17:                                     ; preds = %11
  store i32 %13, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 281), align 8, !dbg !1766, !tbaa !1334
  br label %18, !dbg !1767

; <label>:18:                                     ; preds = %17, %15, %9, %5
  %19 = phi i32 [ %6, %5 ], [ %10, %9 ], [ %16, %15 ], [ 0, %17 ], !dbg !1768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1769
  ret i32 %19, !dbg !1769
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaLogCommand(%struct.lua_State*) #0 !dbg !1770 {
  %2 = alloca i64, align 8
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #8, !dbg !1783
  %4 = icmp slt i32 %3, 2, !dbg !1785
  br i1 %4, label %5, label %7, !dbg !1787

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.34, i64 0, i64 0)) #8, !dbg !1788
  %6 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !1790
  br label %41, !dbg !1791

; <label>:7:                                      ; preds = %1
  %8 = sub nsw i32 0, %3, !dbg !1792
  %9 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %8) #8, !dbg !1794
  %10 = icmp eq i32 %9, 0, !dbg !1794
  br i1 %10, label %11, label %13, !dbg !1795

; <label>:11:                                     ; preds = %7
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.35, i64 0, i64 0)) #8, !dbg !1796
  %12 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !1798
  br label %41, !dbg !1799

; <label>:13:                                     ; preds = %7
  %14 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 %8) #8, !dbg !1800
  %15 = fptosi double %14 to i32, !dbg !1800
  %16 = icmp ugt i32 %15, 3, !dbg !1802
  br i1 %16, label %17, label %19, !dbg !1802

; <label>:17:                                     ; preds = %13
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0)) #8, !dbg !1804
  %18 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !1806
  br label %41, !dbg !1807

; <label>:19:                                     ; preds = %13
  %20 = tail call i8* @sdsempty() #8, !dbg !1808
  %21 = bitcast i64* %2 to i8*
  br label %22, !dbg !1811

; <label>:22:                                     ; preds = %36, %19
  %23 = phi i8* [ %20, %19 ], [ %37, %36 ]
  %24 = phi i32 [ 1, %19 ], [ %38, %36 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #7, !dbg !1812
  %25 = sub i32 %24, %3, !dbg !1813
  %26 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %25, i64* nonnull %2) #8, !dbg !1815
  %27 = icmp eq i8* %26, null, !dbg !1817
  br i1 %27, label %36, label %28, !dbg !1819

; <label>:28:                                     ; preds = %22
  %29 = icmp eq i32 %24, 1, !dbg !1820
  br i1 %29, label %32, label %30, !dbg !1823

; <label>:30:                                     ; preds = %28
  %31 = call i8* @sdscatlen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #8, !dbg !1824
  br label %32, !dbg !1825

; <label>:32:                                     ; preds = %28, %30
  %33 = phi i8* [ %31, %30 ], [ %23, %28 ], !dbg !1826
  %34 = load i64, i64* %2, align 8, !dbg !1827, !tbaa !1019
  %35 = call i8* @sdscatlen(i8* %33, i8* nonnull %26, i64 %34) #8, !dbg !1828
  br label %36, !dbg !1829

; <label>:36:                                     ; preds = %22, %32
  %37 = phi i8* [ %35, %32 ], [ %23, %22 ], !dbg !1826
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !1830
  %38 = add nuw nsw i32 %24, 1, !dbg !1831
  %39 = icmp eq i32 %38, %3, !dbg !1832
  br i1 %39, label %40, label %22, !dbg !1811, !llvm.loop !1833

; <label>:40:                                     ; preds = %36
  call void @serverLogRaw(i32 %15, i8* %37) #8, !dbg !1835
  call void @sdsfree(i8* %37) #8, !dbg !1836
  br label %41, !dbg !1837

; <label>:41:                                     ; preds = %40, %17, %11, %5
  %42 = phi i32 [ %6, %5 ], [ %18, %17 ], [ 0, %40 ], [ %12, %11 ], !dbg !1838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1839
  ret i32 %42, !dbg !1839
}

; Function Attrs: noredzone
declare dso_local i32 @lua_isnumber(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @serverLogRaw(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaLoadLib(%struct.lua_State*, i8*, i32 (%struct.lua_State*)*) local_unnamed_addr #0 !dbg !1840 {
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* %2, i32 0) #8, !dbg !1852
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %1) #8, !dbg !1853
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1855
  ret void, !dbg !1855
}

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaLoadLibraries(%struct.lua_State*) local_unnamed_addr #0 !dbg !1856 {
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_base, i32 0) #8, !dbg !1864
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)) #8, !dbg !1865
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1867
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_table, i32 0) #8, !dbg !1872
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1873
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1875
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_string, i32 0) #8, !dbg !1880
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !1881
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1883
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_math, i32 0) #8, !dbg !1888
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !1889
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1891
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_debug, i32 0) #8, !dbg !1896
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !1897
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1898
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1899
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_cjson, i32 0) #8, !dbg !1904
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0)) #8, !dbg !1905
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1907
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_struct, i32 0) #8, !dbg !1912
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !1913
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1915
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_cmsgpack, i32 0) #8, !dbg !1920
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0)) #8, !dbg !1921
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1923
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_bit, i32 0) #8, !dbg !1928
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0)) #8, !dbg !1929
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1932
  ret void, !dbg !1932
}

; Function Attrs: noredzone
declare dso_local i32 @luaopen_base(%struct.lua_State*) #3

; Function Attrs: noredzone
declare dso_local i32 @luaopen_table(%struct.lua_State*) #3

; Function Attrs: noredzone
declare dso_local i32 @luaopen_string(%struct.lua_State*) #3

; Function Attrs: noredzone
declare dso_local i32 @luaopen_math(%struct.lua_State*) #3

; Function Attrs: noredzone
declare dso_local i32 @luaopen_debug(%struct.lua_State*) #3

; Function Attrs: noredzone
declare dso_local i32 @luaopen_cjson(%struct.lua_State*) #3

; Function Attrs: noredzone
declare dso_local i32 @luaopen_struct(%struct.lua_State*) #3

; Function Attrs: noredzone
declare dso_local i32 @luaopen_cmsgpack(%struct.lua_State*) #3

; Function Attrs: noredzone
declare dso_local i32 @luaopen_bit(%struct.lua_State*) #3

; Function Attrs: noredzone nounwind
define dso_local void @luaRemoveUnsupportedFunctions(%struct.lua_State*) local_unnamed_addr #0 !dbg !1933 {
  tail call void @lua_pushnil(%struct.lua_State* %0) #8, !dbg !1937
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0)) #8, !dbg !1938
  tail call void @lua_pushnil(%struct.lua_State* %0) #8, !dbg !1939
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !1940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1941
  ret void, !dbg !1941
}

; Function Attrs: noredzone
declare dso_local void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scriptingEnableGlobalsProtection(%struct.lua_State*) local_unnamed_addr #0 !dbg !1942 {
  %2 = alloca [32 x i8*], align 16
  %3 = bitcast [32 x i8*]* %2 to i8*, !dbg !1950
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #7, !dbg !1950
  %4 = tail call i8* @sdsempty() #8, !dbg !1952
  %5 = bitcast [32 x i8*]* %2 to <2 x i8*>*, !dbg !1955
  store <2 x i8*> <i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0)>, <2 x i8*>* %5, align 16, !dbg !1955, !tbaa !997
  %6 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 2, !dbg !1956
  %7 = bitcast i8** %6 to <2 x i8*>*, !dbg !1957
  store <2 x i8*> <i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i64 0, i64 0)>, <2 x i8*>* %7, align 16, !dbg !1957, !tbaa !997
  %8 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 4, !dbg !1958
  %9 = bitcast i8** %8 to <2 x i8*>*, !dbg !1959
  store <2 x i8*> <i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.52, i64 0, i64 0)>, <2 x i8*>* %9, align 16, !dbg !1959, !tbaa !997
  %10 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 6, !dbg !1960
  %11 = bitcast i8** %10 to <2 x i8*>*, !dbg !1961
  store <2 x i8*> <i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.54, i64 0, i64 0)>, <2 x i8*>* %11, align 16, !dbg !1961, !tbaa !997
  %12 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 8, !dbg !1962
  %13 = bitcast i8** %12 to <2 x i8*>*, !dbg !1963
  store <2 x i8*> <i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0)>, <2 x i8*>* %13, align 16, !dbg !1963, !tbaa !997
  %14 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 10, !dbg !1964
  %15 = bitcast i8** %14 to <2 x i8*>*, !dbg !1965
  store <2 x i8*> <i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0)>, <2 x i8*>* %15, align 16, !dbg !1965, !tbaa !997
  %16 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 12, !dbg !1966
  %17 = bitcast i8** %16 to <2 x i8*>*, !dbg !1967
  store <2 x i8*> <i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.60, i64 0, i64 0)>, <2 x i8*>* %17, align 16, !dbg !1967, !tbaa !997
  %18 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 14, !dbg !1968
  %19 = bitcast i8** %18 to <2 x i8*>*, !dbg !1969
  store <2 x i8*> <i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0)>, <2 x i8*>* %19, align 16, !dbg !1969, !tbaa !997
  %20 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 16, !dbg !1970
  %21 = bitcast i8** %20 to <2 x i8*>*, !dbg !1971
  store <2 x i8*> <i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0)>, <2 x i8*>* %21, align 16, !dbg !1971, !tbaa !997
  %22 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 18, !dbg !1972
  %23 = bitcast i8** %22 to <2 x i8*>*, !dbg !1973
  store <2 x i8*> <i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i64 0, i64 0), i8* null>, <2 x i8*>* %23, align 16, !dbg !1973, !tbaa !997
  br label %24, !dbg !1974

; <label>:24:                                     ; preds = %1, %24
  %25 = phi i64 [ 0, %1 ], [ %30, %24 ]
  %26 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), %1 ], [ %32, %24 ]
  %27 = phi i8* [ %4, %1 ], [ %29, %24 ]
  %28 = tail call i64 @strlen(i8* nonnull %26) #8, !dbg !1974
  %29 = tail call i8* @sdscatlen(i8* %27, i8* nonnull %26, i64 %28) #8, !dbg !1977
  %30 = add nuw i64 %25, 1, !dbg !1978
  %31 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 %30, !dbg !1979
  %32 = load i8*, i8** %31, align 8, !dbg !1979, !tbaa !997
  %33 = icmp eq i8* %32, null, !dbg !1980
  br i1 %33, label %34, label %24, !dbg !1981, !llvm.loop !1982

; <label>:34:                                     ; preds = %24
  %35 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !1986
  %36 = load i8, i8* %35, align 1, !dbg !1986, !tbaa !485
  %37 = trunc i8 %36 to i3, !dbg !1988
  switch i3 %37, label %59 [
    i3 0, label %38
    i3 1, label %41
    i3 2, label %45
    i3 3, label %50
    i3 -4, label %55
  ], !dbg !1988

; <label>:38:                                     ; preds = %34
  %39 = lshr i8 %36, 3, !dbg !1989
  %40 = zext i8 %39 to i64, !dbg !1989
  br label %59, !dbg !1990

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds i8, i8* %29, i64 -3, !dbg !1991
  %43 = load i8, i8* %42, align 1, !dbg !1992, !tbaa !485
  %44 = zext i8 %43 to i64, !dbg !1991
  br label %59, !dbg !1993

; <label>:45:                                     ; preds = %34
  %46 = getelementptr inbounds i8, i8* %29, i64 -5, !dbg !1994
  %47 = bitcast i8* %46 to i16*, !dbg !1995
  %48 = load i16, i16* %47, align 1, !dbg !1995, !tbaa !1076
  %49 = zext i16 %48 to i64, !dbg !1994
  br label %59, !dbg !1996

; <label>:50:                                     ; preds = %34
  %51 = getelementptr inbounds i8, i8* %29, i64 -9, !dbg !1997
  %52 = bitcast i8* %51 to i32*, !dbg !1998
  %53 = load i32, i32* %52, align 1, !dbg !1998, !tbaa !973
  %54 = zext i32 %53 to i64, !dbg !1997
  br label %59, !dbg !1999

; <label>:55:                                     ; preds = %34
  %56 = getelementptr inbounds i8, i8* %29, i64 -17, !dbg !2000
  %57 = bitcast i8* %56 to i64*, !dbg !2001
  %58 = load i64, i64* %57, align 1, !dbg !2001, !tbaa !1019
  br label %59, !dbg !2002

; <label>:59:                                     ; preds = %34, %38, %41, %45, %50, %55
  %60 = phi i64 [ %58, %55 ], [ %54, %50 ], [ %49, %45 ], [ %44, %41 ], [ %40, %38 ], [ 0, %34 ], !dbg !2003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2004
  %61 = tail call i32 @luaL_loadbuffer(%struct.lua_State* %0, i8* nonnull %29, i64 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i64 0, i64 0)) #8, !dbg !2005
  %62 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 0, i32 0, i32 0) #8, !dbg !2006
  tail call void @sdsfree(i8* nonnull %29) #8, !dbg !2007
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #7, !dbg !2008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2008
  ret void, !dbg !2008
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @luaL_loadbuffer(%struct.lua_State*, i8*, i64, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scriptingInit(i32) local_unnamed_addr #0 !dbg !2009 {
  %2 = tail call %struct.lua_State* @luaL_newstate() #8, !dbg !2018
  %3 = icmp eq i32 %0, 0, !dbg !2020
  br i1 %3, label %9, label %4, !dbg !2022

; <label>:4:                                      ; preds = %1
  store <2 x %struct.client*> zeroinitializer, <2 x %struct.client*>* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 271) to <2 x %struct.client*>*), align 8, !dbg !2023, !tbaa !997
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !2025, !tbaa !2026
  store i32 -1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !2027, !tbaa !2032
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !2033, !tbaa !761
  %5 = tail call %struct.list* @listCreate() #8, !dbg !2034
  store %struct.list* %5, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !2035, !tbaa !781
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 3, !dbg !2036
  store void (i8*)* @sdsfree, void (i8*)** %6, align 8, !dbg !2036, !tbaa !2037
  %7 = tail call %struct.list* @listCreate() #8, !dbg !2038
  store %struct.list* %7, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !2039, !tbaa !2040
  store i8** null, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !2041, !tbaa !2042
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !2043, !tbaa !2044
  %8 = tail call i8* @sdsempty() #8, !dbg !2045
  store i8* %8, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !2046, !tbaa !2047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2048
  br label %9, !dbg !2049

; <label>:9:                                      ; preds = %1, %4
  tail call void @luaLoadLibraries(%struct.lua_State* %2) #9, !dbg !2050
  tail call void @lua_pushnil(%struct.lua_State* %2) #8, !dbg !2053
  tail call void @lua_setfield(%struct.lua_State* %2, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0)) #8, !dbg !2054
  tail call void @lua_pushnil(%struct.lua_State* %2) #8, !dbg !2055
  tail call void @lua_setfield(%struct.lua_State* %2, i32 -10002, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !2056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  %10 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @shaScriptObjectDictType, i8* null) #8, !dbg !2058
  store %struct.dict* %10, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !2059, !tbaa !2060
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !2061, !tbaa !2062
  tail call void @lua_createtable(%struct.lua_State* %2, i32 0, i32 0) #8, !dbg !2063
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0)) #8, !dbg !2064
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisCallCommand, i32 0) #8, !dbg !2065
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2066
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0)) #8, !dbg !2067
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisPCallCommand, i32 0) #8, !dbg !2068
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2069
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0)) #8, !dbg !2070
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaLogCommand, i32 0) #8, !dbg !2071
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2072
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i64 0, i64 0)) #8, !dbg !2073
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 0.000000e+00) #8, !dbg !2074
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2075
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0)) #8, !dbg !2076
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 1.000000e+00) #8, !dbg !2077
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2078
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2079
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 2.000000e+00) #8, !dbg !2080
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2081
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0)) #8, !dbg !2082
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 3.000000e+00) #8, !dbg !2083
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2084
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i64 0, i64 0)) #8, !dbg !2085
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisSha1hexCommand, i32 0) #8, !dbg !2086
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2087
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0)) #8, !dbg !2088
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisErrorReplyCommand, i32 0) #8, !dbg !2089
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2090
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i64 0, i64 0)) #8, !dbg !2091
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisStatusReplyCommand, i32 0) #8, !dbg !2092
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2093
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i64 0, i64 0)) #8, !dbg !2094
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisReplicateCommandsCommand, i32 0) #8, !dbg !2095
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2096
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0)) #8, !dbg !2097
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisSetReplCommand, i32 0) #8, !dbg !2098
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2099
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i64 0, i64 0)) #8, !dbg !2100
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 0.000000e+00) #8, !dbg !2101
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2102
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i64 0, i64 0)) #8, !dbg !2103
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 1.000000e+00) #8, !dbg !2104
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2105
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i64 0, i64 0)) #8, !dbg !2106
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 2.000000e+00) #8, !dbg !2107
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2108
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i64 0, i64 0)) #8, !dbg !2109
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 2.000000e+00) #8, !dbg !2110
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2111
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i64 0, i64 0)) #8, !dbg !2112
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 3.000000e+00) #8, !dbg !2113
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2114
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i64 0, i64 0)) #8, !dbg !2115
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisBreakpointCommand, i32 0) #8, !dbg !2116
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2117
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !2118
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisDebugCommand, i32 0) #8, !dbg !2119
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2120
  tail call void @lua_setfield(%struct.lua_State* %2, i32 -10002, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0)) #8, !dbg !2121
  tail call void @lua_getfield(%struct.lua_State* %2, i32 -10002, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !2122
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0)) #8, !dbg !2123
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @redis_math_random, i32 0) #8, !dbg !2124
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2125
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i64 0, i64 0)) #8, !dbg !2126
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @redis_math_randomseed, i32 0) #8, !dbg !2127
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2128
  tail call void @lua_setfield(%struct.lua_State* %2, i32 -10002, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !2129
  %11 = tail call i64 @strlen(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.86, i64 0, i64 0)) #8, !dbg !2130
  %12 = tail call i32 @luaL_loadbuffer(%struct.lua_State* %2, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.86, i64 0, i64 0), i64 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i64 0, i64 0)) #8, !dbg !2131
  %13 = tail call i32 @lua_pcall(%struct.lua_State* %2, i32 0, i32 0, i32 0) #8, !dbg !2132
  %14 = tail call i64 @strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.88, i64 0, i64 0)) #8, !dbg !2133
  %15 = tail call i32 @luaL_loadbuffer(%struct.lua_State* %2, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.88, i64 0, i64 0), i64 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.89, i64 0, i64 0)) #8, !dbg !2134
  %16 = tail call i32 @lua_pcall(%struct.lua_State* %2, i32 0, i32 0, i32 0) #8, !dbg !2135
  %17 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 271), align 8, !dbg !2136, !tbaa !944
  %18 = icmp eq %struct.client* %17, null, !dbg !2138
  br i1 %18, label %19, label %24, !dbg !2139

; <label>:19:                                     ; preds = %9
  %20 = tail call %struct.client* @createClient(i32 -1) #8, !dbg !2140
  store %struct.client* %20, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 271), align 8, !dbg !2142, !tbaa !944
  %21 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 21, !dbg !2143
  %22 = load i32, i32* %21, align 8, !dbg !2144, !tbaa !959
  %23 = or i32 %22, 256, !dbg !2144
  store i32 %23, i32* %21, align 8, !dbg !2144, !tbaa !959
  br label %24, !dbg !2145

; <label>:24:                                     ; preds = %19, %9
  tail call void @scriptingEnableGlobalsProtection(%struct.lua_State* %2) #9, !dbg !2146
  store %struct.lua_State* %2, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !2147, !tbaa !2148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2149
  ret void, !dbg !2149
}

; Function Attrs: noredzone
declare dso_local %struct.lua_State* @luaL_newstate() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbInit() local_unnamed_addr #0 !dbg !2028 {
  store i32 -1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !2150, !tbaa !2032
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !2151, !tbaa !761
  %1 = tail call %struct.list* @listCreate() #8, !dbg !2152
  store %struct.list* %1, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !2153, !tbaa !781
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 3, !dbg !2154
  store void (i8*)* @sdsfree, void (i8*)** %2, align 8, !dbg !2154, !tbaa !2037
  %3 = tail call %struct.list* @listCreate() #8, !dbg !2155
  store %struct.list* %3, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !2156, !tbaa !2040
  store i8** null, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !2157, !tbaa !2042
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !2158, !tbaa !2044
  %4 = tail call i8* @sdsempty() #8, !dbg !2159
  store i8* %4, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !2160, !tbaa !2047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2161
  ret void, !dbg !2161
}

; Function Attrs: noredzone
declare dso_local %struct.dict* @dictCreate(%struct.dictType*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redis_math_random(%struct.lua_State*) #0 !dbg !2162 {
  %2 = tail call i32 (...) @redisLrand48() #8, !dbg !2173
  %3 = srem i32 %2, 2147483647, !dbg !2174
  %4 = sitofp i32 %3 to double, !dbg !2175
  %5 = fdiv double %4, 0x41DFFFFFFFC00000, !dbg !2176
  %6 = tail call i32 @lua_gettop(%struct.lua_State* %0) #8, !dbg !2178
  switch i32 %6, label %35 [
    i32 0, label %7
    i32 1, label %8
    i32 2, label %19
  ], !dbg !2179

; <label>:7:                                      ; preds = %1
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %5) #8, !dbg !2180
  br label %37, !dbg !2182

; <label>:8:                                      ; preds = %1
  %9 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #8, !dbg !2183
  %10 = trunc i64 %9 to i32, !dbg !2183
  %11 = icmp sgt i32 %10, 0, !dbg !2185
  br i1 %11, label %14, label %12, !dbg !2185

; <label>:12:                                     ; preds = %8
  %13 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i64 0, i64 0)) #8, !dbg !2185
  br label %14, !dbg !2185

; <label>:14:                                     ; preds = %12, %8
  %15 = sitofp i32 %10 to double, !dbg !2186
  %16 = fmul double %5, %15, !dbg !2187
  %17 = tail call double @floor(double %16) #8, !dbg !2188
  %18 = fadd double %17, 1.000000e+00, !dbg !2189
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %18) #8, !dbg !2190
  br label %37

; <label>:19:                                     ; preds = %1
  %20 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #8, !dbg !2191
  %21 = trunc i64 %20 to i32, !dbg !2191
  %22 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #8, !dbg !2193
  %23 = trunc i64 %22 to i32, !dbg !2193
  %24 = icmp slt i32 %23, %21, !dbg !2195
  br i1 %24, label %25, label %27, !dbg !2195

; <label>:25:                                     ; preds = %19
  %26 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i64 0, i64 0)) #8, !dbg !2195
  br label %27, !dbg !2195

; <label>:27:                                     ; preds = %19, %25
  %28 = sub i32 1, %21, !dbg !2196
  %29 = add i32 %28, %23, !dbg !2197
  %30 = sitofp i32 %29 to double, !dbg !2198
  %31 = fmul double %5, %30, !dbg !2199
  %32 = tail call double @floor(double %31) #8, !dbg !2200
  %33 = sitofp i32 %21 to double, !dbg !2201
  %34 = fadd double %32, %33, !dbg !2202
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %34) #8, !dbg !2203
  br label %37

; <label>:35:                                     ; preds = %1
  %36 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !2204
  br label %37, !dbg !2205

; <label>:37:                                     ; preds = %7, %14, %27, %35
  %38 = phi i32 [ %36, %35 ], [ 1, %27 ], [ 1, %14 ], [ 1, %7 ], !dbg !2206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2207
  ret i32 %38, !dbg !2207
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redis_math_randomseed(%struct.lua_State*) #0 !dbg !2208 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #8, !dbg !2212
  %3 = trunc i64 %2 to i32, !dbg !2212
  tail call void @redisSrand48(i32 %3) #8, !dbg !2213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2214
  ret i32 0, !dbg !2214
}

; Function Attrs: noredzone
declare dso_local %struct.client* @createClient(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scriptingRelease() local_unnamed_addr #0 !dbg !2215 {
  %1 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !2216, !tbaa !2060
  tail call void @dictRelease(%struct.dict* %1) #8, !dbg !2217
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !2218, !tbaa !2062
  %2 = load %struct.lua_State*, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !2219, !tbaa !2148
  tail call void @lua_close(%struct.lua_State* %2) #8, !dbg !2220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2221
  ret void, !dbg !2221
}

; Function Attrs: noredzone
declare dso_local void @dictRelease(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_close(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scriptingReset() local_unnamed_addr #0 !dbg !2222 {
  %1 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !2223, !tbaa !2060
  tail call void @dictRelease(%struct.dict* %1) #8, !dbg !2225
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !2226, !tbaa !2062
  %2 = load %struct.lua_State*, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !2227, !tbaa !2148
  tail call void @lua_close(%struct.lua_State* %2) #8, !dbg !2228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2229
  tail call void @scriptingInit(i32 0) #9, !dbg !2230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2231
  ret void, !dbg !2231
}

; Function Attrs: noredzone nounwind
define dso_local void @luaSetGlobalArray(%struct.lua_State*, i8*, %struct.redisObject** nocapture readonly, i32) local_unnamed_addr #0 !dbg !2232 {
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #8, !dbg !2245
  %5 = icmp sgt i32 %3, 0, !dbg !2247
  br i1 %5, label %6, label %43, !dbg !2250

; <label>:6:                                      ; preds = %4
  %7 = zext i32 %3 to i64
  br label %8, !dbg !2251

; <label>:8:                                      ; preds = %38, %6
  %9 = phi i64 [ 0, %6 ], [ %40, %38 ]
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %9, !dbg !2251
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !2251, !tbaa !997
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !2253
  %13 = load i8*, i8** %12, align 8, !dbg !2253, !tbaa !1037
  %14 = getelementptr inbounds i8, i8* %13, i64 -1, !dbg !2256
  %15 = load i8, i8* %14, align 1, !dbg !2256, !tbaa !485
  %16 = trunc i8 %15 to i3, !dbg !2258
  switch i3 %16, label %38 [
    i3 0, label %17
    i3 1, label %20
    i3 2, label %24
    i3 3, label %29
    i3 -4, label %34
  ], !dbg !2258

; <label>:17:                                     ; preds = %8
  %18 = lshr i8 %15, 3, !dbg !2259
  %19 = zext i8 %18 to i64, !dbg !2259
  br label %38, !dbg !2260

; <label>:20:                                     ; preds = %8
  %21 = getelementptr inbounds i8, i8* %13, i64 -3, !dbg !2261
  %22 = load i8, i8* %21, align 1, !dbg !2262, !tbaa !485
  %23 = zext i8 %22 to i64, !dbg !2261
  br label %38, !dbg !2263

; <label>:24:                                     ; preds = %8
  %25 = getelementptr inbounds i8, i8* %13, i64 -5, !dbg !2264
  %26 = bitcast i8* %25 to i16*, !dbg !2265
  %27 = load i16, i16* %26, align 1, !dbg !2265, !tbaa !1076
  %28 = zext i16 %27 to i64, !dbg !2264
  br label %38, !dbg !2266

; <label>:29:                                     ; preds = %8
  %30 = getelementptr inbounds i8, i8* %13, i64 -9, !dbg !2267
  %31 = bitcast i8* %30 to i32*, !dbg !2268
  %32 = load i32, i32* %31, align 1, !dbg !2268, !tbaa !973
  %33 = zext i32 %32 to i64, !dbg !2267
  br label %38, !dbg !2269

; <label>:34:                                     ; preds = %8
  %35 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !2270
  %36 = bitcast i8* %35 to i64*, !dbg !2271
  %37 = load i64, i64* %36, align 1, !dbg !2271, !tbaa !1019
  br label %38, !dbg !2272

; <label>:38:                                     ; preds = %8, %17, %20, %24, %29, %34
  %39 = phi i64 [ %37, %34 ], [ %33, %29 ], [ %28, %24 ], [ %23, %20 ], [ %19, %17 ], [ 0, %8 ], !dbg !2273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2274
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %13, i64 %39) #8, !dbg !2275
  %40 = add nuw nsw i64 %9, 1, !dbg !2276
  %41 = trunc i64 %40 to i32, !dbg !2277
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 %41) #8, !dbg !2277
  %42 = icmp eq i64 %40, %7, !dbg !2247
  br i1 %42, label %43, label %8, !dbg !2250, !llvm.loop !2278

; <label>:43:                                     ; preds = %38, %4
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* %1) #8, !dbg !2280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2281
  ret void, !dbg !2281
}

; Function Attrs: noredzone
declare dso_local void @lua_rawseti(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @redisLrand48(...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @luaL_checkinteger(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @luaL_argerror(%struct.lua_State*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local double @floor(double) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @luaL_error(%struct.lua_State*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @luaCreateFunction(%struct.client*, %struct.lua_State*, %struct.redisObject*) local_unnamed_addr #0 !dbg !2282 {
  %4 = alloca %struct.SHA1_CTX, align 4
  %5 = alloca [20 x i8], align 16
  %6 = alloca [43 x i8], align 16
  %7 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 0, !dbg !2299
  call void @llvm.lifetime.start.p0i8(i64 43, i8* nonnull %7) #7, !dbg !2299
  store i8 102, i8* %7, align 16, !dbg !2301, !tbaa !485
  %8 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 1, !dbg !2302
  store i8 95, i8* %8, align 1, !dbg !2303, !tbaa !485
  %9 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 2, !dbg !2304
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !2305
  %11 = load i8*, i8** %10, align 8, !dbg !2305, !tbaa !1037
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !2308
  %13 = load i8, i8* %12, align 1, !dbg !2308, !tbaa !485
  %14 = trunc i8 %13 to i3, !dbg !2310
  switch i3 %14, label %36 [
    i3 0, label %15
    i3 1, label %18
    i3 2, label %22
    i3 3, label %27
    i3 -4, label %32
  ], !dbg !2310

; <label>:15:                                     ; preds = %3
  %16 = lshr i8 %13, 3, !dbg !2311
  %17 = zext i8 %16 to i64, !dbg !2311
  br label %36, !dbg !2312

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !2313
  %20 = load i8, i8* %19, align 1, !dbg !2314, !tbaa !485
  %21 = zext i8 %20 to i64, !dbg !2313
  br label %36, !dbg !2315

; <label>:22:                                     ; preds = %3
  %23 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !2316
  %24 = bitcast i8* %23 to i16*, !dbg !2317
  %25 = load i16, i16* %24, align 1, !dbg !2317, !tbaa !1076
  %26 = zext i16 %25 to i64, !dbg !2316
  br label %36, !dbg !2318

; <label>:27:                                     ; preds = %3
  %28 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !2319
  %29 = bitcast i8* %28 to i32*, !dbg !2320
  %30 = load i32, i32* %29, align 1, !dbg !2320, !tbaa !973
  %31 = zext i32 %30 to i64, !dbg !2319
  br label %36, !dbg !2321

; <label>:32:                                     ; preds = %3
  %33 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !2322
  %34 = bitcast i8* %33 to i64*, !dbg !2323
  %35 = load i64, i64* %34, align 1, !dbg !2323, !tbaa !1019
  br label %36, !dbg !2324

; <label>:36:                                     ; preds = %3, %15, %18, %22, %27, %32
  %37 = phi i64 [ %35, %32 ], [ %31, %27 ], [ %26, %22 ], [ %21, %18 ], [ %17, %15 ], [ 0, %3 ], !dbg !2325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2326
  %38 = bitcast %struct.SHA1_CTX* %4 to i8*, !dbg !2330
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %38) #7, !dbg !2330
  %39 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0, !dbg !2331
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %39) #7, !dbg !2331
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %4) #8, !dbg !2333
  %40 = trunc i64 %37 to i32, !dbg !2334
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %4, i8* %11, i32 %40) #8, !dbg !2335
  call void @SHA1Final(i8* nonnull %39, %struct.SHA1_CTX* nonnull %4) #8, !dbg !2336
  br label %41, !dbg !2338

; <label>:41:                                     ; preds = %41, %36
  %42 = phi i64 [ 0, %36 ], [ %57, %41 ]
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %42, !dbg !2339
  %44 = load i8, i8* %43, align 1, !dbg !2339, !tbaa !485
  %45 = lshr i8 %44, 4, !dbg !2340
  %46 = zext i8 %45 to i64, !dbg !2341
  %47 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %46, !dbg !2341
  %48 = load i8, i8* %47, align 1, !dbg !2341, !tbaa !485
  %49 = shl nuw nsw i64 %42, 1, !dbg !2342
  %50 = getelementptr inbounds i8, i8* %9, i64 %49, !dbg !2343
  store i8 %48, i8* %50, align 2, !dbg !2344, !tbaa !485
  %51 = and i8 %44, 15, !dbg !2345
  %52 = zext i8 %51 to i64, !dbg !2346
  %53 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %52, !dbg !2346
  %54 = load i8, i8* %53, align 1, !dbg !2346, !tbaa !485
  %55 = or i64 %49, 1, !dbg !2347
  %56 = getelementptr inbounds i8, i8* %9, i64 %55, !dbg !2348
  store i8 %54, i8* %56, align 1, !dbg !2349, !tbaa !485
  %57 = add nuw nsw i64 %42, 1, !dbg !2350
  %58 = icmp eq i64 %57, 20, !dbg !2351
  br i1 %58, label %59, label %41, !dbg !2338, !llvm.loop !500

; <label>:59:                                     ; preds = %41
  %60 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 42, !dbg !2352
  store i8 0, i8* %60, align 2, !dbg !2353, !tbaa !485
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %39) #7, !dbg !2354
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %38) #7, !dbg !2354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2354
  %61 = call i8* @sdsnewlen(i8* nonnull %9, i64 40) #8, !dbg !2355
  %62 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !2357, !tbaa !2060
  %63 = call %struct.dictEntry* @dictFind(%struct.dict* %62, i8* %61) #8, !dbg !2359
  %64 = icmp eq %struct.dictEntry* %63, null, !dbg !2361
  br i1 %64, label %68, label %65, !dbg !2362

; <label>:65:                                     ; preds = %59
  call void @sdsfree(i8* %61) #8, !dbg !2363
  %66 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %63, i64 0, i32 0, !dbg !2365
  %67 = load i8*, i8** %66, align 8, !dbg !2365, !tbaa !2366
  br label %158, !dbg !2368

; <label>:68:                                     ; preds = %59
  %69 = call i8* @sdsempty() #8, !dbg !2369
  %70 = call i8* @sdscat(i8* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i64 0, i64 0)) #8, !dbg !2371
  %71 = call i8* @sdscatlen(i8* %70, i8* nonnull %7, i64 42) #8, !dbg !2372
  %72 = call i8* @sdscatlen(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0), i64 3) #8, !dbg !2373
  %73 = load i8*, i8** %10, align 8, !dbg !2374, !tbaa !1037
  %74 = getelementptr inbounds i8, i8* %73, i64 -1, !dbg !2377
  %75 = load i8, i8* %74, align 1, !dbg !2377, !tbaa !485
  %76 = trunc i8 %75 to i3, !dbg !2379
  switch i3 %76, label %98 [
    i3 0, label %77
    i3 1, label %80
    i3 2, label %84
    i3 3, label %89
    i3 -4, label %94
  ], !dbg !2379

; <label>:77:                                     ; preds = %68
  %78 = lshr i8 %75, 3, !dbg !2380
  %79 = zext i8 %78 to i64, !dbg !2380
  br label %98, !dbg !2381

; <label>:80:                                     ; preds = %68
  %81 = getelementptr inbounds i8, i8* %73, i64 -3, !dbg !2382
  %82 = load i8, i8* %81, align 1, !dbg !2383, !tbaa !485
  %83 = zext i8 %82 to i64, !dbg !2382
  br label %98, !dbg !2384

; <label>:84:                                     ; preds = %68
  %85 = getelementptr inbounds i8, i8* %73, i64 -5, !dbg !2385
  %86 = bitcast i8* %85 to i16*, !dbg !2386
  %87 = load i16, i16* %86, align 1, !dbg !2386, !tbaa !1076
  %88 = zext i16 %87 to i64, !dbg !2385
  br label %98, !dbg !2387

; <label>:89:                                     ; preds = %68
  %90 = getelementptr inbounds i8, i8* %73, i64 -9, !dbg !2388
  %91 = bitcast i8* %90 to i32*, !dbg !2389
  %92 = load i32, i32* %91, align 1, !dbg !2389, !tbaa !973
  %93 = zext i32 %92 to i64, !dbg !2388
  br label %98, !dbg !2390

; <label>:94:                                     ; preds = %68
  %95 = getelementptr inbounds i8, i8* %73, i64 -17, !dbg !2391
  %96 = bitcast i8* %95 to i64*, !dbg !2392
  %97 = load i64, i64* %96, align 1, !dbg !2392, !tbaa !1019
  br label %98, !dbg !2393

; <label>:98:                                     ; preds = %68, %77, %80, %84, %89, %94
  %99 = phi i64 [ %97, %94 ], [ %93, %89 ], [ %88, %84 ], [ %83, %80 ], [ %79, %77 ], [ 0, %68 ], !dbg !2394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2395
  %100 = call i8* @sdscatlen(i8* %72, i8* %73, i64 %99) #8, !dbg !2396
  %101 = call i8* @sdscatlen(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i64 0, i64 0), i64 4) #8, !dbg !2397
  %102 = getelementptr inbounds i8, i8* %101, i64 -1, !dbg !2401
  %103 = load i8, i8* %102, align 1, !dbg !2401, !tbaa !485
  %104 = trunc i8 %103 to i3, !dbg !2403
  switch i3 %104, label %126 [
    i3 0, label %105
    i3 1, label %108
    i3 2, label %112
    i3 3, label %117
    i3 -4, label %122
  ], !dbg !2403

; <label>:105:                                    ; preds = %98
  %106 = lshr i8 %103, 3, !dbg !2404
  %107 = zext i8 %106 to i64, !dbg !2404
  br label %126, !dbg !2405

; <label>:108:                                    ; preds = %98
  %109 = getelementptr inbounds i8, i8* %101, i64 -3, !dbg !2406
  %110 = load i8, i8* %109, align 1, !dbg !2407, !tbaa !485
  %111 = zext i8 %110 to i64, !dbg !2406
  br label %126, !dbg !2408

; <label>:112:                                    ; preds = %98
  %113 = getelementptr inbounds i8, i8* %101, i64 -5, !dbg !2409
  %114 = bitcast i8* %113 to i16*, !dbg !2410
  %115 = load i16, i16* %114, align 1, !dbg !2410, !tbaa !1076
  %116 = zext i16 %115 to i64, !dbg !2409
  br label %126, !dbg !2411

; <label>:117:                                    ; preds = %98
  %118 = getelementptr inbounds i8, i8* %101, i64 -9, !dbg !2412
  %119 = bitcast i8* %118 to i32*, !dbg !2413
  %120 = load i32, i32* %119, align 1, !dbg !2413, !tbaa !973
  %121 = zext i32 %120 to i64, !dbg !2412
  br label %126, !dbg !2414

; <label>:122:                                    ; preds = %98
  %123 = getelementptr inbounds i8, i8* %101, i64 -17, !dbg !2415
  %124 = bitcast i8* %123 to i64*, !dbg !2416
  %125 = load i64, i64* %124, align 1, !dbg !2416, !tbaa !1019
  br label %126, !dbg !2417

; <label>:126:                                    ; preds = %98, %105, %108, %112, %117, %122
  %127 = phi i64 [ %125, %122 ], [ %121, %117 ], [ %116, %112 ], [ %111, %108 ], [ %107, %105 ], [ 0, %98 ], !dbg !2418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2419
  %128 = call i32 @luaL_loadbuffer(%struct.lua_State* %1, i8* %101, i64 %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.94, i64 0, i64 0)) #8, !dbg !2420
  %129 = icmp eq i32 %128, 0, !dbg !2420
  br i1 %129, label %135, label %130, !dbg !2421

; <label>:130:                                    ; preds = %126
  %131 = icmp eq %struct.client* %0, null, !dbg !2422
  br i1 %131, label %134, label %132, !dbg !2425

; <label>:132:                                    ; preds = %130
  %133 = call i8* @lua_tolstring(%struct.lua_State* %1, i32 -1, i64* null) #8, !dbg !2426
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %133) #8, !dbg !2428
  br label %134, !dbg !2429

; <label>:134:                                    ; preds = %130, %132
  call void @lua_settop(%struct.lua_State* %1, i32 -2) #8, !dbg !2430
  call void @sdsfree(i8* %61) #8, !dbg !2431
  call void @sdsfree(i8* %101) #8, !dbg !2432
  br label %158, !dbg !2433

; <label>:135:                                    ; preds = %126
  call void @sdsfree(i8* %101) #8, !dbg !2434
  %136 = call i32 @lua_pcall(%struct.lua_State* %1, i32 0, i32 0, i32 0) #8, !dbg !2435
  %137 = icmp eq i32 %136, 0, !dbg !2435
  br i1 %137, label %143, label %138, !dbg !2437

; <label>:138:                                    ; preds = %135
  %139 = icmp eq %struct.client* %0, null, !dbg !2438
  br i1 %139, label %142, label %140, !dbg !2441

; <label>:140:                                    ; preds = %138
  %141 = call i8* @lua_tolstring(%struct.lua_State* %1, i32 -1, i64* null) #8, !dbg !2442
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.96, i64 0, i64 0), i8* %141) #8, !dbg !2444
  br label %142, !dbg !2445

; <label>:142:                                    ; preds = %138, %140
  call void @lua_settop(%struct.lua_State* %1, i32 -2) #8, !dbg !2446
  call void @sdsfree(i8* %61) #8, !dbg !2447
  br label %158, !dbg !2448

; <label>:143:                                    ; preds = %135
  %144 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !2449, !tbaa !2060
  %145 = bitcast %struct.redisObject* %2 to i8*, !dbg !2450
  %146 = call i32 @dictAdd(%struct.dict* %144, i8* %61, i8* %145) #8, !dbg !2451
  %147 = icmp eq i32 %146, 0, !dbg !2453
  br i1 %147, label %152, label %148, !dbg !2453

; <label>:148:                                    ; preds = %143
  %149 = icmp eq %struct.client* %0, null, !dbg !2453
  %150 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 271), align 8, !dbg !2453
  %151 = select i1 %149, %struct.client* %150, %struct.client* %0, !dbg !2453
  call void @_serverAssertWithInfo(%struct.client* %151, %struct.redisObject* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.97, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.98, i64 0, i64 0), i32 1228) #8, !dbg !2453
  call void @_exit(i32 1) #10, !dbg !2453
  unreachable, !dbg !2453

; <label>:152:                                    ; preds = %143
  %153 = call i64 @sdsZmallocSize(i8* %61) #8, !dbg !2454
  %154 = call i64 @getStringObjectSdsUsedMemory(%struct.redisObject* nonnull %2) #8, !dbg !2455
  %155 = add i64 %154, %153, !dbg !2456
  %156 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !2457, !tbaa !2062
  %157 = add i64 %155, %156, !dbg !2457
  store i64 %157, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !2457, !tbaa !2062
  call void @incrRefCount(%struct.redisObject* nonnull %2) #8, !dbg !2458
  br label %158

; <label>:158:                                    ; preds = %134, %142, %152, %65
  %159 = phi i8* [ %67, %65 ], [ null, %134 ], [ null, %142 ], [ %61, %152 ], !dbg !2459
  call void @llvm.lifetime.end.p0i8(i64 43, i8* nonnull %7) #7, !dbg !2460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2460
  ret i8* %159, !dbg !2460
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscat(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @dictAdd(%struct.dict*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverAssertWithInfo(%struct.client*, %struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i64 @sdsZmallocSize(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @getStringObjectSdsUsedMemory(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaMaskCountHook(%struct.lua_State*, %struct.lua_Debug* nocapture readnone) #0 !dbg !2461 {
  %3 = tail call i64 @mstime() #8, !dbg !2471
  %4 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 276), align 8, !dbg !2472, !tbaa !2473
  %5 = sub nsw i64 %3, %4, !dbg !2474
  %6 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 275), align 8, !dbg !2476, !tbaa !2478
  %7 = icmp sge i64 %5, %6, !dbg !2479
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !2480
  %9 = icmp eq i32 %8, 0, !dbg !2481
  %10 = and i1 %7, %9, !dbg !2482
  br i1 %10, label %11, label %14, !dbg !2482

; <label>:11:                                     ; preds = %2
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.99, i64 0, i64 0), i64 %5) #8, !dbg !2483
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !2485, !tbaa !2026
  %12 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !2486, !tbaa !957
  tail call void @protectClient(%struct.client* %12) #8, !dbg !2487
  %13 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !2488, !tbaa !2026
  br label %14, !dbg !2490

; <label>:14:                                     ; preds = %11, %2
  %15 = phi i32 [ %13, %11 ], [ %8, %2 ], !dbg !2488
  %16 = icmp eq i32 %15, 0, !dbg !2491
  br i1 %16, label %19, label %17, !dbg !2492

; <label>:17:                                     ; preds = %14
  %18 = tail call i32 @processEventsWhileBlocked() #8, !dbg !2493
  br label %19, !dbg !2493

; <label>:19:                                     ; preds = %14, %17
  %20 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 283), align 8, !dbg !2494, !tbaa !2496
  %21 = icmp eq i32 %20, 0, !dbg !2497
  br i1 %21, label %24, label %22, !dbg !2498

; <label>:22:                                     ; preds = %19
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.100, i64 0, i64 0)) #8, !dbg !2499
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.101, i64 0, i64 0)) #8, !dbg !2501
  %23 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !2502
  br label %24, !dbg !2503

; <label>:24:                                     ; preds = %19, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2504
  ret void, !dbg !2504
}

; Function Attrs: noredzone
declare dso_local i64 @mstime() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @protectClient(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @processEventsWhileBlocked() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @evalGenericCommand(%struct.client*, i32) local_unnamed_addr #0 !dbg !386 {
  %3 = alloca %struct.SHA1_CTX, align 4
  %4 = alloca [20 x i8], align 16
  %5 = alloca [43 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca [1 x %struct.redisObject*], align 8
  %8 = load %struct.lua_State*, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !2510, !tbaa !2148
  %9 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 0, !dbg !2512
  call void @llvm.lifetime.start.p0i8(i64 43, i8* nonnull %9) #7, !dbg !2512
  %10 = bitcast i64* %6 to i8*, !dbg !2514
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #7, !dbg !2514
  %11 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2515, !tbaa !2516
  tail call void @redisSrand48(i32 0) #8, !dbg !2519
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 278), align 4, !dbg !2520, !tbaa !1200
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 277), align 8, !dbg !2521, !tbaa !1273
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 284), align 4, !dbg !2522, !tbaa !2523
  store i32 %12, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !2524, !tbaa !1309
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 280), align 4, !dbg !2525, !tbaa !953
  store i32 3, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 281), align 8, !dbg !2526, !tbaa !1334
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2527
  %14 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2527, !tbaa !1122
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 2, !dbg !2529
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !2529, !tbaa !997
  %17 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %16, i64* nonnull %6, i8* null) #8, !dbg !2531
  %18 = icmp eq i32 %17, 0, !dbg !2532
  br i1 %18, label %19, label %275, !dbg !2533

; <label>:19:                                     ; preds = %2
  %20 = load i64, i64* %6, align 8, !dbg !2534, !tbaa !536
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2536
  %22 = load i32, i32* %21, align 8, !dbg !2536, !tbaa !1125
  %23 = add nsw i32 %22, -3, !dbg !2537
  %24 = sext i32 %23 to i64, !dbg !2538
  %25 = icmp sgt i64 %20, %24, !dbg !2539
  br i1 %25, label %26, label %27, !dbg !2540

; <label>:26:                                     ; preds = %19
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.102, i64 0, i64 0)) #8, !dbg !2541
  br label %275, !dbg !2543

; <label>:27:                                     ; preds = %19
  %28 = icmp slt i64 %20, 0, !dbg !2544
  br i1 %28, label %29, label %30, !dbg !2546

; <label>:29:                                     ; preds = %27
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.103, i64 0, i64 0)) #8, !dbg !2547
  br label %275, !dbg !2549

; <label>:30:                                     ; preds = %27
  store i8 102, i8* %9, align 16, !dbg !2550, !tbaa !485
  %31 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 1, !dbg !2551
  store i8 95, i8* %31, align 1, !dbg !2552, !tbaa !485
  %32 = icmp ne i32 %1, 0, !dbg !2553
  br i1 %32, label %89, label %33, !dbg !2554

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 2, !dbg !2555
  %35 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2556, !tbaa !1122
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 1, !dbg !2557
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !2557, !tbaa !997
  %38 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 2, !dbg !2558
  %39 = load i8*, i8** %38, align 8, !dbg !2558, !tbaa !1037
  %40 = getelementptr inbounds i8, i8* %39, i64 -1, !dbg !2561
  %41 = load i8, i8* %40, align 1, !dbg !2561, !tbaa !485
  %42 = trunc i8 %41 to i3, !dbg !2563
  switch i3 %42, label %64 [
    i3 0, label %43
    i3 1, label %46
    i3 2, label %50
    i3 3, label %55
    i3 -4, label %60
  ], !dbg !2563

; <label>:43:                                     ; preds = %33
  %44 = lshr i8 %41, 3, !dbg !2564
  %45 = zext i8 %44 to i64, !dbg !2564
  br label %64, !dbg !2565

; <label>:46:                                     ; preds = %33
  %47 = getelementptr inbounds i8, i8* %39, i64 -3, !dbg !2566
  %48 = load i8, i8* %47, align 1, !dbg !2567, !tbaa !485
  %49 = zext i8 %48 to i64, !dbg !2566
  br label %64, !dbg !2568

; <label>:50:                                     ; preds = %33
  %51 = getelementptr inbounds i8, i8* %39, i64 -5, !dbg !2569
  %52 = bitcast i8* %51 to i16*, !dbg !2570
  %53 = load i16, i16* %52, align 1, !dbg !2570, !tbaa !1076
  %54 = zext i16 %53 to i64, !dbg !2569
  br label %64, !dbg !2571

; <label>:55:                                     ; preds = %33
  %56 = getelementptr inbounds i8, i8* %39, i64 -9, !dbg !2572
  %57 = bitcast i8* %56 to i32*, !dbg !2573
  %58 = load i32, i32* %57, align 1, !dbg !2573, !tbaa !973
  %59 = zext i32 %58 to i64, !dbg !2572
  br label %64, !dbg !2574

; <label>:60:                                     ; preds = %33
  %61 = getelementptr inbounds i8, i8* %39, i64 -17, !dbg !2575
  %62 = bitcast i8* %61 to i64*, !dbg !2576
  %63 = load i64, i64* %62, align 1, !dbg !2576, !tbaa !1019
  br label %64, !dbg !2577

; <label>:64:                                     ; preds = %33, %43, %46, %50, %55, %60
  %65 = phi i64 [ %63, %60 ], [ %59, %55 ], [ %54, %50 ], [ %49, %46 ], [ %45, %43 ], [ 0, %33 ], !dbg !2578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2579
  %66 = bitcast %struct.SHA1_CTX* %3 to i8*, !dbg !2583
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %66) #7, !dbg !2583
  %67 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2584
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %67) #7, !dbg !2584
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %3) #8, !dbg !2586
  %68 = trunc i64 %65 to i32, !dbg !2587
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %3, i8* %39, i32 %68) #8, !dbg !2588
  call void @SHA1Final(i8* nonnull %67, %struct.SHA1_CTX* nonnull %3) #8, !dbg !2589
  br label %69, !dbg !2591

; <label>:69:                                     ; preds = %69, %64
  %70 = phi i64 [ 0, %64 ], [ %85, %69 ]
  %71 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 %70, !dbg !2592
  %72 = load i8, i8* %71, align 1, !dbg !2592, !tbaa !485
  %73 = lshr i8 %72, 4, !dbg !2593
  %74 = zext i8 %73 to i64, !dbg !2594
  %75 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %74, !dbg !2594
  %76 = load i8, i8* %75, align 1, !dbg !2594, !tbaa !485
  %77 = shl nuw nsw i64 %70, 1, !dbg !2595
  %78 = getelementptr inbounds i8, i8* %34, i64 %77, !dbg !2596
  store i8 %76, i8* %78, align 2, !dbg !2597, !tbaa !485
  %79 = and i8 %72, 15, !dbg !2598
  %80 = zext i8 %79 to i64, !dbg !2599
  %81 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %80, !dbg !2599
  %82 = load i8, i8* %81, align 1, !dbg !2599, !tbaa !485
  %83 = or i64 %77, 1, !dbg !2600
  %84 = getelementptr inbounds i8, i8* %34, i64 %83, !dbg !2601
  store i8 %82, i8* %84, align 1, !dbg !2602, !tbaa !485
  %85 = add nuw nsw i64 %70, 1, !dbg !2603
  %86 = icmp eq i64 %85, 20, !dbg !2604
  br i1 %86, label %87, label %69, !dbg !2591, !llvm.loop !500

; <label>:87:                                     ; preds = %69
  %88 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 42, !dbg !2605
  store i8 0, i8* %88, align 2, !dbg !2606, !tbaa !485
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %67) #7, !dbg !2607
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %66) #7, !dbg !2607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2607
  br label %144, !dbg !2608

; <label>:89:                                     ; preds = %30
  %90 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2609, !tbaa !1122
  %91 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %90, i64 1, !dbg !2610
  %92 = load %struct.redisObject*, %struct.redisObject** %91, align 8, !dbg !2610, !tbaa !997
  %93 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %92, i64 0, i32 2, !dbg !2611
  %94 = load i8*, i8** %93, align 8, !dbg !2611, !tbaa !1037
  %95 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 2, !dbg !2614
  %96 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 42, !dbg !2614
  %97 = getelementptr i8, i8* %94, i64 40, !dbg !2614
  %98 = icmp ult i8* %95, %97, !dbg !2614
  %99 = icmp ult i8* %94, %96, !dbg !2614
  %100 = and i1 %98, %99, !dbg !2614
  br i1 %100, label %119, label %101, !dbg !2614

; <label>:101:                                    ; preds = %89
  %102 = bitcast i8* %94 to <16 x i8>*, !dbg !2616
  %103 = load <16 x i8>, <16 x i8>* %102, align 1, !dbg !2616, !tbaa !485, !alias.scope !2618
  %104 = add <16 x i8> %103, <i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65>, !dbg !2621
  %105 = icmp ult <16 x i8> %104, <i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26>, !dbg !2621
  %106 = add <16 x i8> %103, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, !dbg !2622
  %107 = select <16 x i1> %105, <16 x i8> %106, <16 x i8> %103, !dbg !2621
  %108 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 2, !dbg !2623
  %109 = bitcast i8* %108 to <16 x i8>*, !dbg !2624
  store <16 x i8> %107, <16 x i8>* %109, align 2, !dbg !2624, !tbaa !485, !alias.scope !2625, !noalias !2618
  %110 = getelementptr inbounds i8, i8* %94, i64 16, !dbg !2616
  %111 = bitcast i8* %110 to <16 x i8>*, !dbg !2616
  %112 = load <16 x i8>, <16 x i8>* %111, align 1, !dbg !2616, !tbaa !485, !alias.scope !2618
  %113 = add <16 x i8> %112, <i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65>, !dbg !2621
  %114 = icmp ult <16 x i8> %113, <i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26>, !dbg !2621
  %115 = add <16 x i8> %112, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, !dbg !2622
  %116 = select <16 x i1> %114, <16 x i8> %115, <16 x i8> %112, !dbg !2621
  %117 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 18, !dbg !2623
  %118 = bitcast i8* %117 to <16 x i8>*, !dbg !2624
  store <16 x i8> %116, <16 x i8>* %118, align 2, !dbg !2624, !tbaa !485, !alias.scope !2625, !noalias !2618
  br label %119, !dbg !2616

; <label>:119:                                    ; preds = %101, %89
  %120 = phi i64 [ 0, %89 ], [ 32, %101 ]
  br label %121, !dbg !2616

; <label>:121:                                    ; preds = %121, %119
  %122 = phi i64 [ %120, %119 ], [ %140, %121 ]
  %123 = getelementptr inbounds i8, i8* %94, i64 %122, !dbg !2616
  %124 = load i8, i8* %123, align 1, !dbg !2616, !tbaa !485
  %125 = add i8 %124, -65, !dbg !2621
  %126 = icmp ult i8 %125, 26, !dbg !2621
  %127 = add i8 %124, 32, !dbg !2622
  %128 = select i1 %126, i8 %127, i8 %124, !dbg !2621
  %129 = add nuw nsw i64 %122, 2, !dbg !2627
  %130 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 %129, !dbg !2623
  store i8 %128, i8* %130, align 2, !dbg !2624, !tbaa !485
  %131 = or i64 %122, 1, !dbg !2628
  %132 = getelementptr inbounds i8, i8* %94, i64 %131, !dbg !2616
  %133 = load i8, i8* %132, align 1, !dbg !2616, !tbaa !485
  %134 = add i8 %133, -65, !dbg !2621
  %135 = icmp ult i8 %134, 26, !dbg !2621
  %136 = add i8 %133, 32, !dbg !2622
  %137 = select i1 %135, i8 %136, i8 %133, !dbg !2621
  %138 = add nuw nsw i64 %122, 3, !dbg !2627
  %139 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 %138, !dbg !2623
  store i8 %137, i8* %139, align 1, !dbg !2624, !tbaa !485
  %140 = add nuw nsw i64 %122, 2, !dbg !2628
  %141 = icmp eq i64 %140, 40, !dbg !2629
  br i1 %141, label %142, label %121, !dbg !2614, !llvm.loop !2630

; <label>:142:                                    ; preds = %121
  %143 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 42, !dbg !2633
  store i8 0, i8* %143, align 2, !dbg !2634, !tbaa !485
  br label %144

; <label>:144:                                    ; preds = %142, %87
  call void @lua_getfield(%struct.lua_State* %8, i32 -10002, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.104, i64 0, i64 0)) #8, !dbg !2635
  call void @lua_getfield(%struct.lua_State* %8, i32 -10002, i8* nonnull %9) #8, !dbg !2636
  %145 = call i32 @lua_type(%struct.lua_State* %8, i32 -1) #8, !dbg !2637
  %146 = icmp eq i32 %145, 0, !dbg !2637
  br i1 %146, label %147, label %161, !dbg !2639

; <label>:147:                                    ; preds = %144
  call void @lua_settop(%struct.lua_State* %8, i32 -2) #8, !dbg !2640
  br i1 %32, label %148, label %150, !dbg !2642

; <label>:148:                                    ; preds = %147
  call void @lua_settop(%struct.lua_State* %8, i32 -2) #8, !dbg !2643
  %149 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 19), align 8, !dbg !2646, !tbaa !2647
  call void @addReply(%struct.client* %0, %struct.redisObject* %149) #8, !dbg !2648
  br label %275, !dbg !2649

; <label>:150:                                    ; preds = %147
  %151 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2650, !tbaa !1122
  %152 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %151, i64 1, !dbg !2652
  %153 = load %struct.redisObject*, %struct.redisObject** %152, align 8, !dbg !2652, !tbaa !997
  %154 = call i8* @luaCreateFunction(%struct.client* %0, %struct.lua_State* %8, %struct.redisObject* %153) #9, !dbg !2653
  %155 = icmp eq i8* %154, null, !dbg !2654
  br i1 %155, label %156, label %157, !dbg !2655

; <label>:156:                                    ; preds = %150
  call void @lua_settop(%struct.lua_State* %8, i32 -2) #8, !dbg !2656
  br label %275, !dbg !2658

; <label>:157:                                    ; preds = %150
  call void @lua_getfield(%struct.lua_State* %8, i32 -10002, i8* nonnull %9) #8, !dbg !2659
  %158 = call i32 @lua_type(%struct.lua_State* %8, i32 -1) #8, !dbg !2660
  %159 = icmp eq i32 %158, 0, !dbg !2660
  br i1 %159, label %160, label %161, !dbg !2660

; <label>:160:                                    ; preds = %157
  call void @_serverAssert(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.105, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.98, i64 0, i64 0), i32 1340) #8, !dbg !2660
  call void @_exit(i32 1) #10, !dbg !2660
  unreachable, !dbg !2660

; <label>:161:                                    ; preds = %157, %144
  %162 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2661, !tbaa !1122
  %163 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %162, i64 3, !dbg !2662
  %164 = load i64, i64* %6, align 8, !dbg !2663, !tbaa !536
  %165 = trunc i64 %164 to i32, !dbg !2663
  call void @luaSetGlobalArray(%struct.lua_State* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0), %struct.redisObject** nonnull %163, i32 %165) #9, !dbg !2664
  %166 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2665, !tbaa !1122
  %167 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %166, i64 3, !dbg !2666
  %168 = load i64, i64* %6, align 8, !dbg !2667, !tbaa !536
  %169 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %167, i64 %168, !dbg !2668
  %170 = load i32, i32* %21, align 8, !dbg !2669, !tbaa !1125
  %171 = add nsw i32 %170, -3, !dbg !2670
  %172 = trunc i64 %168 to i32, !dbg !2671
  %173 = sub i32 %171, %172, !dbg !2671
  call void @luaSetGlobalArray(%struct.lua_State* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i64 0, i64 0), %struct.redisObject** nonnull %169, i32 %173) #9, !dbg !2672
  %174 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 271), align 8, !dbg !2673, !tbaa !944
  %175 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2674
  %176 = load %struct.redisDb*, %struct.redisDb** %175, align 8, !dbg !2674, !tbaa !2675
  %177 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %176, i64 0, i32 5, !dbg !2676
  %178 = load i32, i32* %177, align 8, !dbg !2676, !tbaa !2677
  %179 = call i32 @selectDb(%struct.client* %174, i32 %178) #8, !dbg !2679
  store %struct.client* %0, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !2680, !tbaa !957
  %180 = call i64 @mstime() #8, !dbg !2681
  store i64 %180, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 276), align 8, !dbg !2682, !tbaa !2473
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 283), align 8, !dbg !2683, !tbaa !2496
  %181 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 275), align 8, !dbg !2684, !tbaa !2478
  %182 = icmp sgt i64 %181, 0, !dbg !2686
  %183 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !2687
  %184 = icmp eq i32 %183, 0, !dbg !2688
  %185 = and i1 %182, %184, !dbg !2689
  br i1 %185, label %186, label %188, !dbg !2689

; <label>:186:                                    ; preds = %161
  %187 = call i32 @lua_sethook(%struct.lua_State* %8, void (%struct.lua_State*, %struct.lua_Debug*)* nonnull @luaMaskCountHook, i32 8, i32 100000) #8, !dbg !2690
  br label %194, !dbg !2692

; <label>:188:                                    ; preds = %161
  br i1 %184, label %192, label %189, !dbg !2693

; <label>:189:                                    ; preds = %188
  %190 = load %struct.lua_State*, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !2694, !tbaa !2148
  %191 = call i32 @lua_sethook(%struct.lua_State* %190, void (%struct.lua_State*, %struct.lua_Debug*)* nonnull @luaLdbLineHook, i32 12, i32 100000) #8, !dbg !2697
  br label %194, !dbg !2698

; <label>:192:                                    ; preds = %188
  %193 = call i32 @lua_pcall(%struct.lua_State* %8, i32 0, i32 1, i32 -2) #8, !dbg !2699
  br label %197, !dbg !2701

; <label>:194:                                    ; preds = %186, %189
  %195 = call i32 @lua_pcall(%struct.lua_State* %8, i32 0, i32 1, i32 -2) #8, !dbg !2699
  %196 = call i32 @lua_sethook(%struct.lua_State* %8, void (%struct.lua_State*, %struct.lua_Debug*)* null, i32 0, i32 0) #8, !dbg !2702
  br label %197, !dbg !2702

; <label>:197:                                    ; preds = %192, %194
  %198 = phi i32 [ %195, %194 ], [ %193, %192 ]
  %199 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !2704, !tbaa !2026
  %200 = icmp eq i32 %199, 0, !dbg !2706
  br i1 %200, label %208, label %201, !dbg !2707

; <label>:201:                                    ; preds = %197
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !2708, !tbaa !2026
  call void @unprotectClient(%struct.client* nonnull %0) #8, !dbg !2710
  %202 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !2711, !tbaa !1209
  %203 = icmp ne i8* %202, null, !dbg !2713
  %204 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2714
  %205 = icmp ne %struct.client* %204, null, !dbg !2715
  %206 = and i1 %203, %205, !dbg !2716
  br i1 %206, label %207, label %208, !dbg !2716

; <label>:207:                                    ; preds = %201
  call void @queueClientForReprocessing(%struct.client* nonnull %204) #8, !dbg !2717
  br label %208, !dbg !2717

; <label>:208:                                    ; preds = %197, %201, %207
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !2718, !tbaa !957
  %209 = load i64, i64* @evalGenericCommand.gc_count, align 8, !dbg !2719, !tbaa !1019
  %210 = add nsw i64 %209, 1, !dbg !2719
  store i64 %210, i64* @evalGenericCommand.gc_count, align 8, !dbg !2719, !tbaa !1019
  %211 = icmp eq i64 %210, 50, !dbg !2721
  br i1 %211, label %212, label %214, !dbg !2723

; <label>:212:                                    ; preds = %208
  %213 = call i32 @lua_gc(%struct.lua_State* %8, i32 5, i32 50) #8, !dbg !2724
  store i64 0, i64* @evalGenericCommand.gc_count, align 8, !dbg !2726, !tbaa !1019
  br label %214, !dbg !2727

; <label>:214:                                    ; preds = %212, %208
  %215 = icmp eq i32 %198, 0, !dbg !2728
  br i1 %215, label %218, label %216, !dbg !2730

; <label>:216:                                    ; preds = %214
  %217 = call i8* @lua_tolstring(%struct.lua_State* %8, i32 -1, i64* null) #8, !dbg !2731
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.108, i64 0, i64 0), i8* nonnull %9, i8* %217) #8, !dbg !2733
  call void @lua_settop(%struct.lua_State* %8, i32 -3) #8, !dbg !2734
  br label %219, !dbg !2735

; <label>:218:                                    ; preds = %214
  call void @luaReplyToRedisReply(%struct.client* nonnull %0, %struct.lua_State* %8) #9, !dbg !2736
  call void @lua_settop(%struct.lua_State* %8, i32 -2) #8, !dbg !2738
  br label %219

; <label>:219:                                    ; preds = %218, %216
  %220 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !2739, !tbaa !1309
  %221 = icmp eq i32 %220, 0, !dbg !2740
  br i1 %221, label %234, label %222, !dbg !2741

; <label>:222:                                    ; preds = %219
  call void @preventCommandPropagation(%struct.client* nonnull %0) #8, !dbg !2742
  %223 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 280), align 4, !dbg !2743, !tbaa !953
  %224 = icmp eq i32 %223, 0, !dbg !2744
  br i1 %224, label %234, label %225, !dbg !2745

; <label>:225:                                    ; preds = %222
  %226 = bitcast [1 x %struct.redisObject*]* %7 to i8*, !dbg !2746
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %226) #7, !dbg !2746
  %227 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i64 0, i64 0), i64 4) #8, !dbg !2748
  %228 = getelementptr inbounds [1 x %struct.redisObject*], [1 x %struct.redisObject*]* %7, i64 0, i64 0, !dbg !2749
  store %struct.redisObject* %227, %struct.redisObject** %228, align 8, !dbg !2750, !tbaa !997
  %229 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 64), align 8, !dbg !2751, !tbaa !2752
  %230 = load %struct.redisDb*, %struct.redisDb** %175, align 8, !dbg !2753, !tbaa !2675
  %231 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %230, i64 0, i32 5, !dbg !2754
  %232 = load i32, i32* %231, align 8, !dbg !2754, !tbaa !2677
  call void @alsoPropagate(%struct.redisCommand* %229, i32 %232, %struct.redisObject** nonnull %228, i32 1, i32 3) #8, !dbg !2755
  %233 = load %struct.redisObject*, %struct.redisObject** %228, align 8, !dbg !2756, !tbaa !997
  call void @decrRefCount(%struct.redisObject* %233) #8, !dbg !2757
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %226) #7, !dbg !2758
  br label %234, !dbg !2759

; <label>:234:                                    ; preds = %222, %219, %225
  %235 = icmp eq i32 %1, 0, !dbg !2760
  %236 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !2761
  %237 = icmp ne i32 %236, 0, !dbg !2762
  %238 = or i1 %235, %237, !dbg !2763
  br i1 %238, label %275, label %239, !dbg !2763

; <label>:239:                                    ; preds = %234
  %240 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2764, !tbaa !1122
  %241 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %240, i64 1, !dbg !2765
  %242 = load %struct.redisObject*, %struct.redisObject** %241, align 8, !dbg !2765, !tbaa !997
  %243 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %242, i64 0, i32 2, !dbg !2766
  %244 = load i8*, i8** %243, align 8, !dbg !2766, !tbaa !1037
  %245 = call i32 @replicationScriptCacheExists(i8* %244) #8, !dbg !2767
  %246 = icmp eq i32 %245, 0, !dbg !2767
  br i1 %246, label %247, label %275, !dbg !2768

; <label>:247:                                    ; preds = %239
  %248 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !2769, !tbaa !2060
  %249 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2770, !tbaa !1122
  %250 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %249, i64 1, !dbg !2771
  %251 = load %struct.redisObject*, %struct.redisObject** %250, align 8, !dbg !2771, !tbaa !997
  %252 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %251, i64 0, i32 2, !dbg !2772
  %253 = load i8*, i8** %252, align 8, !dbg !2772, !tbaa !1037
  %254 = call i8* @dictFetchValue(%struct.dict* %248, i8* %253) #8, !dbg !2773
  %255 = bitcast i8* %254 to %struct.redisObject*, !dbg !2773
  %256 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2775, !tbaa !1122
  %257 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %256, i64 1, !dbg !2776
  %258 = load %struct.redisObject*, %struct.redisObject** %257, align 8, !dbg !2776, !tbaa !997
  %259 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %258, i64 0, i32 2, !dbg !2777
  %260 = load i8*, i8** %259, align 8, !dbg !2777, !tbaa !1037
  call void @replicationScriptCacheAdd(i8* %260) #8, !dbg !2778
  %261 = icmp eq i8* %254, null, !dbg !2779
  br i1 %261, label %262, label %263, !dbg !2779

; <label>:262:                                    ; preds = %247
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.110, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.98, i64 0, i64 0), i32 1445) #8, !dbg !2779
  call void @_exit(i32 1) #10, !dbg !2779
  unreachable, !dbg !2779

; <label>:263:                                    ; preds = %247
  %264 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2780, !tbaa !2516
  %265 = icmp eq i64 %264, %11, !dbg !2782
  br i1 %265, label %266, label %271, !dbg !2783

; <label>:266:                                    ; preds = %263
  %267 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i64 0, i64 0), i64 6) #8, !dbg !2784
  %268 = call %struct.redisObject* @resetRefCount(%struct.redisObject* %267) #8, !dbg !2786
  %269 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i64 0, i64 0), i64 4) #8, !dbg !2787
  %270 = call %struct.redisObject* @resetRefCount(%struct.redisObject* %269) #8, !dbg !2788
  call void (%struct.client*, i32, ...) @rewriteClientCommandVector(%struct.client* nonnull %0, i32 3, %struct.redisObject* %268, %struct.redisObject* %270, i8* nonnull %254) #8, !dbg !2789
  br label %274, !dbg !2790

; <label>:271:                                    ; preds = %263
  %272 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i64 0, i64 0), i64 4) #8, !dbg !2791
  %273 = call %struct.redisObject* @resetRefCount(%struct.redisObject* %272) #8, !dbg !2793
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 0, %struct.redisObject* %273) #8, !dbg !2794
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 1, %struct.redisObject* %255) #8, !dbg !2795
  br label %274

; <label>:274:                                    ; preds = %271, %266
  call void @forceCommandPropagation(%struct.client* nonnull %0, i32 3) #8, !dbg !2796
  br label %275, !dbg !2797

; <label>:275:                                    ; preds = %234, %274, %239, %2, %156, %148, %29, %26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7, !dbg !2798
  call void @llvm.lifetime.end.p0i8(i64 43, i8* nonnull %9) #7, !dbg !2798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2798
  ret void, !dbg !2798
}

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @selectDb(%struct.client*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_sethook(%struct.lua_State*, void (%struct.lua_State*, %struct.lua_Debug*)*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaLdbLineHook(%struct.lua_State*, %struct.lua_Debug*) #0 !dbg !2799 {
  %3 = tail call i32 @lua_getstack(%struct.lua_State* %0, i32 0, %struct.lua_Debug* %1) #8, !dbg !2814
  %4 = tail call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.252, i64 0, i64 0), %struct.lua_Debug* %1) #8, !dbg !2815
  %5 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 5, !dbg !2816
  %6 = load i32, i32* %5, align 8, !dbg !2816, !tbaa !797
  store i32 %6, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !2817, !tbaa !1698
  %7 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !2827, !tbaa !2830
  %8 = icmp sgt i32 %7, 0, !dbg !2831
  br i1 %8, label %9, label %19, !dbg !2832

; <label>:9:                                      ; preds = %2
  %10 = sext i32 %7 to i64, !dbg !2832
  br label %13, !dbg !2832

; <label>:11:                                     ; preds = %13
  %12 = icmp slt i64 %18, %10, !dbg !2831
  br i1 %12, label %13, label %19, !dbg !2832, !llvm.loop !2833

; <label>:13:                                     ; preds = %11, %9
  %14 = phi i64 [ 0, %9 ], [ %18, %11 ]
  %15 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %14, !dbg !2836
  %16 = load i32, i32* %15, align 4, !dbg !2836, !tbaa !973
  %17 = icmp eq i32 %16, %6, !dbg !2838
  %18 = add nuw nsw i64 %14, 1, !dbg !2839
  br i1 %17, label %19, label %11, !dbg !2840

; <label>:19:                                     ; preds = %11, %13, %2
  %20 = phi i32 [ 0, %2 ], [ 1, %13 ], [ 0, %11 ], !dbg !2841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2842
  %21 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !2843
  %22 = or i32 %21, %20, !dbg !2844
  %23 = icmp ne i32 %22, 0, !dbg !2844
  %24 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 9, i64 0, !dbg !2846
  %25 = tail call i8* @strstr(i8* nonnull %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.189, i64 0, i64 0)) #8, !dbg !2848
  %26 = icmp eq i8* %25, null, !dbg !2849
  br i1 %26, label %74, label %27, !dbg !2850

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 0, !dbg !2851
  %29 = load i32, i32* %28, align 8, !dbg !2851, !tbaa !2852
  %30 = icmp eq i32 %29, 3, !dbg !2853
  %31 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !2854
  %32 = icmp eq i32 %31, 0, !dbg !2855
  %33 = and i1 %30, %32, !dbg !2856
  %34 = xor i1 %23, true, !dbg !2857
  %35 = and i1 %33, %34, !dbg !2856
  br i1 %35, label %36, label %45, !dbg !2856

; <label>:36:                                     ; preds = %27
  %37 = tail call i64 @mstime() #8, !dbg !2858
  %38 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 276), align 8, !dbg !2859, !tbaa !2473
  %39 = sub nsw i64 %37, %38, !dbg !2860
  %40 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 275), align 8, !dbg !2862, !tbaa !2478
  %41 = icmp eq i64 %40, 0, !dbg !2863
  %42 = select i1 %41, i64 5000, i64 %40, !dbg !2863
  %43 = icmp slt i64 %39, %42, !dbg !2865
  br i1 %43, label %74, label %44, !dbg !2867

; <label>:44:                                     ; preds = %36
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !2868, !tbaa !2870
  br label %45

; <label>:45:                                     ; preds = %44, %27
  %46 = phi i32 [ %31, %27 ], [ 1, %44 ], !dbg !2871
  %47 = phi i32 [ 0, %27 ], [ 1, %44 ], !dbg !2872
  %48 = or i32 %46, %22, !dbg !2873
  %49 = icmp eq i32 %48, 0, !dbg !2873
  br i1 %49, label %74, label %50, !dbg !2873

; <label>:50:                                     ; preds = %45
  br i1 %23, label %51, label %55, !dbg !2874

; <label>:51:                                     ; preds = %50
  %52 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !2875, !tbaa !1678
  %53 = icmp eq i32 %52, 0, !dbg !2877
  %54 = select i1 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.255, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i64 0, i64 0), !dbg !2877
  br label %58, !dbg !2879

; <label>:55:                                     ; preds = %50
  %56 = icmp eq i32 %47, 0, !dbg !2880
  %57 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.253, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.256, i64 0, i64 0), !dbg !2882
  br label %58, !dbg !2882

; <label>:58:                                     ; preds = %55, %51
  %59 = phi i8* [ %54, %51 ], [ %57, %55 ], !dbg !2883
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !2884, !tbaa !2870
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !2885, !tbaa !1678
  %60 = tail call i8* @sdsempty() #8, !dbg !2886
  %61 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !2887, !tbaa !1698
  %62 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.257, i64 0, i64 0), i32 %61, i8* %59) #8, !dbg !2888
  %63 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !2891, !tbaa !781
  %64 = tail call %struct.list* @listAddNodeTail(%struct.list* %63, i8* %62) #8, !dbg !2892
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2893
  %65 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !2894, !tbaa !1698
  tail call void @ldbLogSourceLine(i32 %65) #9, !dbg !2895
  tail call void @ldbSendLogs() #9, !dbg !2896
  %66 = tail call i32 @ldbRepl(%struct.lua_State* %0) #9, !dbg !2897
  %67 = icmp eq i32 %66, -1, !dbg !2899
  %68 = icmp ne i32 %47, 0, !dbg !2900
  %69 = and i1 %68, %67, !dbg !2901
  br i1 %69, label %70, label %72, !dbg !2901

; <label>:70:                                     ; preds = %58
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.258, i64 0, i64 0)) #8, !dbg !2902
  %71 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !2904
  br label %72, !dbg !2905

; <label>:72:                                     ; preds = %70, %58
  %73 = tail call i64 @mstime() #8, !dbg !2906
  store i64 %73, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 276), align 8, !dbg !2907, !tbaa !2473
  br label %74, !dbg !2908

; <label>:74:                                     ; preds = %36, %72, %45, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2909
  ret void, !dbg !2909
}

; Function Attrs: noredzone
declare dso_local void @unprotectClient(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @queueClientForReprocessing(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_gc(%struct.lua_State*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @preventCommandPropagation(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @alsoPropagate(%struct.redisCommand*, i32, %struct.redisObject**, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @replicationScriptCacheExists(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @dictFetchValue(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @replicationScriptCacheAdd(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @rewriteClientCommandVector(%struct.client*, i32, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @resetRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @rewriteClientCommandArgument(%struct.client*, i32, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @forceCommandPropagation(%struct.client*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @evalCommand(%struct.client*) local_unnamed_addr #0 !dbg !2910 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2914
  %3 = load i32, i32* %2, align 8, !dbg !2914, !tbaa !959
  %4 = and i32 %3, 33554432, !dbg !2916
  %5 = icmp eq i32 %4, 0, !dbg !2916
  br i1 %5, label %6, label %7, !dbg !2917

; <label>:6:                                      ; preds = %1
  tail call void @evalGenericCommand(%struct.client* nonnull %0, i32 0) #9, !dbg !2918
  br label %15, !dbg !2918

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @ldbStartSession(%struct.client* nonnull %0) #8, !dbg !2926
  %9 = icmp eq i32 %8, 0, !dbg !2926
  br i1 %9, label %11, label %10, !dbg !2928

; <label>:10:                                     ; preds = %7
  tail call void @evalGenericCommand(%struct.client* nonnull %0, i32 0) #8, !dbg !2929
  tail call void @ldbEndSession(%struct.client* nonnull %0) #8, !dbg !2931
  br label %14, !dbg !2932

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %2, align 8, !dbg !2939, !tbaa !959
  %13 = and i32 %12, -100663297, !dbg !2939
  store i32 %13, i32* %2, align 8, !dbg !2939, !tbaa !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2940
  br label %14

; <label>:14:                                     ; preds = %10, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2941
  br label %15

; <label>:15:                                     ; preds = %14, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2942
  ret void, !dbg !2942
}

; Function Attrs: noredzone nounwind
define dso_local void @evalGenericCommandWithDebugging(%struct.client*, i32) local_unnamed_addr #0 !dbg !2920 {
  %3 = tail call i32 @ldbStartSession(%struct.client* %0) #9, !dbg !2945
  %4 = icmp eq i32 %3, 0, !dbg !2945
  br i1 %4, label %6, label %5, !dbg !2946

; <label>:5:                                      ; preds = %2
  tail call void @evalGenericCommand(%struct.client* %0, i32 %1) #9, !dbg !2947
  tail call void @ldbEndSession(%struct.client* %0) #9, !dbg !2948
  br label %10, !dbg !2949

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2952
  %8 = load i32, i32* %7, align 8, !dbg !2953, !tbaa !959
  %9 = and i32 %8, -100663297, !dbg !2953
  store i32 %9, i32* %7, align 8, !dbg !2953, !tbaa !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2954
  br label %10

; <label>:10:                                     ; preds = %6, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2955
  ret void, !dbg !2955
}

; Function Attrs: noredzone nounwind
define dso_local void @evalShaCommand(%struct.client*) local_unnamed_addr #0 !dbg !2956 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2960
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2960, !tbaa !1122
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !2962
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2962, !tbaa !997
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 2, !dbg !2963
  %7 = load i8*, i8** %6, align 8, !dbg !2963, !tbaa !1037
  %8 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !2966
  %9 = load i8, i8* %8, align 1, !dbg !2966, !tbaa !485
  %10 = trunc i8 %9 to i3, !dbg !2968
  switch i3 %10, label %29 [
    i3 -4, label %25
    i3 1, label %11
    i3 2, label %15
    i3 3, label %20
  ], !dbg !2968

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds i8, i8* %7, i64 -3, !dbg !2969
  %13 = load i8, i8* %12, align 1, !dbg !2970, !tbaa !485
  %14 = zext i8 %13 to i64, !dbg !2969
  br label %30, !dbg !2971

; <label>:15:                                     ; preds = %1
  %16 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !2972
  %17 = bitcast i8* %16 to i16*, !dbg !2973
  %18 = load i16, i16* %17, align 1, !dbg !2973, !tbaa !1076
  %19 = zext i16 %18 to i64, !dbg !2972
  br label %30, !dbg !2974

; <label>:20:                                     ; preds = %1
  %21 = getelementptr inbounds i8, i8* %7, i64 -9, !dbg !2975
  %22 = bitcast i8* %21 to i32*, !dbg !2976
  %23 = load i32, i32* %22, align 1, !dbg !2976, !tbaa !973
  %24 = zext i32 %23 to i64, !dbg !2975
  br label %30, !dbg !2977

; <label>:25:                                     ; preds = %1
  %26 = getelementptr inbounds i8, i8* %7, i64 -17, !dbg !2978
  %27 = bitcast i8* %26 to i64*, !dbg !2979
  %28 = load i64, i64* %27, align 1, !dbg !2979, !tbaa !1019
  br label %30, !dbg !2980

; <label>:29:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2981
  br label %33, !dbg !2982

; <label>:30:                                     ; preds = %11, %15, %20, %25
  %31 = phi i64 [ %28, %25 ], [ %24, %20 ], [ %19, %15 ], [ %14, %11 ], !dbg !2983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2981
  %32 = icmp eq i64 %31, 40, !dbg !2984
  br i1 %32, label %35, label %33, !dbg !2982

; <label>:33:                                     ; preds = %29, %30
  %34 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 19), align 8, !dbg !2985, !tbaa !2647
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %34) #8, !dbg !2987
  br label %42, !dbg !2988

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2989
  %37 = load i32, i32* %36, align 8, !dbg !2989, !tbaa !959
  %38 = and i32 %37, 33554432, !dbg !2991
  %39 = icmp eq i32 %38, 0, !dbg !2991
  br i1 %39, label %40, label %41, !dbg !2992

; <label>:40:                                     ; preds = %35
  tail call void @evalGenericCommand(%struct.client* nonnull %0, i32 1) #9, !dbg !2993
  br label %42, !dbg !2993

; <label>:41:                                     ; preds = %35
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.114, i64 0, i64 0)) #8, !dbg !2994
  br label %42, !dbg !2996

; <label>:42:                                     ; preds = %33, %41, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2997
  ret void, !dbg !2997
}

; Function Attrs: noredzone nounwind
define dso_local void @scriptCommand(%struct.client*) local_unnamed_addr #0 !dbg !2998 {
  %2 = alloca [6 x i8*], align 16
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3015
  %4 = load i32, i32* %3, align 8, !dbg !3015, !tbaa !1125
  %5 = icmp eq i32 %4, 2, !dbg !3016
  br i1 %5, label %6, label %31, !dbg !3017

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3018
  %8 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !3018, !tbaa !1122
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 1, !dbg !3019
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !3019, !tbaa !997
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !3020
  %12 = load i8*, i8** %11, align 8, !dbg !3020, !tbaa !1037
  %13 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i64 0, i64 0)) #11, !dbg !3021
  %14 = icmp eq i32 %13, 0, !dbg !3021
  br i1 %14, label %15, label %22, !dbg !3022

; <label>:15:                                     ; preds = %6
  %16 = bitcast [6 x i8*]* %2 to i8*, !dbg !3023
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %16) #7, !dbg !3023
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %16, i8 0, i64 48, i1 false), !dbg !3024
  %17 = getelementptr inbounds [6 x i8*], [6 x i8*]* %2, i64 0, i64 0, !dbg !3024
  %18 = bitcast [6 x i8*]* %2 to <2 x i8*>*, !dbg !3024
  store <2 x i8*> <i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.116, i64 0, i64 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.117, i64 0, i64 0)>, <2 x i8*>* %18, align 16, !dbg !3024
  %19 = getelementptr inbounds [6 x i8*], [6 x i8*]* %2, i64 0, i64 2, !dbg !3024
  %20 = bitcast i8** %19 to <2 x i8*>*, !dbg !3024
  store <2 x i8*> <i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.118, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.119, i64 0, i64 0)>, <2 x i8*>* %20, align 16, !dbg !3024
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* %2, i64 0, i64 4, !dbg !3024
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.120, i64 0, i64 0), i8** %21, align 16, !dbg !3024
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %17) #8, !dbg !3025
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %16) #7, !dbg !3026
  br label %174, !dbg !3027

; <label>:22:                                     ; preds = %6
  %23 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i64 0, i64 0)) #11, !dbg !3028
  %24 = icmp eq i32 %23, 0, !dbg !3028
  br i1 %24, label %25, label %40, !dbg !3029

; <label>:25:                                     ; preds = %22
  %26 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !3030, !tbaa !2060
  tail call void @dictRelease(%struct.dict* %26) #8, !dbg !3034
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !3035, !tbaa !2062
  %27 = load %struct.lua_State*, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !3036, !tbaa !2148
  tail call void @lua_close(%struct.lua_State* %27) #8, !dbg !3037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3038
  tail call void @scriptingInit(i32 0) #8, !dbg !3039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3040
  %28 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3041, !tbaa !3042
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %28) #8, !dbg !3043
  tail call void @replicationScriptCacheFlush() #8, !dbg !3044
  %29 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3045, !tbaa !2516
  %30 = add nsw i64 %29, 1, !dbg !3045
  store i64 %30, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3045, !tbaa !2516
  br label %174, !dbg !3046

; <label>:31:                                     ; preds = %1
  %32 = icmp sgt i32 %4, 1, !dbg !3047
  br i1 %32, label %33, label %173, !dbg !3048

; <label>:33:                                     ; preds = %31
  %34 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %35 = load %struct.redisObject**, %struct.redisObject*** %34, align 8, !dbg !3049, !tbaa !1122
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 1
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !3050, !tbaa !997
  %38 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 2
  %39 = load i8*, i8** %38, align 8, !dbg !3051, !tbaa !1037
  br label %40, !dbg !3048

; <label>:40:                                     ; preds = %33, %22
  %41 = phi %struct.redisObject*** [ %34, %33 ], [ %7, %22 ], !dbg !3049
  %42 = phi i8* [ %39, %33 ], [ %12, %22 ], !dbg !3051
  %43 = phi %struct.redisObject** [ %35, %33 ], [ %8, %22 ], !dbg !3049
  %44 = tail call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.122, i64 0, i64 0)) #11, !dbg !3052
  %45 = icmp eq i32 %44, 0, !dbg !3052
  br i1 %45, label %46, label %70, !dbg !3053

; <label>:46:                                     ; preds = %40
  %47 = add nsw i32 %4, -2, !dbg !3054
  %48 = sext i32 %47 to i64, !dbg !3055
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %48) #8, !dbg !3056
  %49 = load i32, i32* %3, align 8, !dbg !3058, !tbaa !1125
  %50 = icmp sgt i32 %49, 2, !dbg !3061
  br i1 %50, label %51, label %174, !dbg !3062

; <label>:51:                                     ; preds = %46, %65
  %52 = phi i64 [ %66, %65 ], [ 2, %46 ]
  %53 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !3063, !tbaa !2060
  %54 = load %struct.redisObject**, %struct.redisObject*** %41, align 8, !dbg !3066, !tbaa !1122
  %55 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %54, i64 %52, !dbg !3067
  %56 = load %struct.redisObject*, %struct.redisObject** %55, align 8, !dbg !3067, !tbaa !997
  %57 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %56, i64 0, i32 2, !dbg !3068
  %58 = load i8*, i8** %57, align 8, !dbg !3068, !tbaa !1037
  %59 = tail call %struct.dictEntry* @dictFind(%struct.dict* %53, i8* %58) #8, !dbg !3069
  %60 = icmp eq %struct.dictEntry* %59, null, !dbg !3069
  br i1 %60, label %63, label %61, !dbg !3070

; <label>:61:                                     ; preds = %51
  %62 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !3071, !tbaa !3072
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %62) #8, !dbg !3073
  br label %65, !dbg !3073

; <label>:63:                                     ; preds = %51
  %64 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !3074, !tbaa !3075
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %64) #8, !dbg !3076
  br label %65

; <label>:65:                                     ; preds = %61, %63
  %66 = add nuw nsw i64 %52, 1, !dbg !3077
  %67 = load i32, i32* %3, align 8, !dbg !3058, !tbaa !1125
  %68 = sext i32 %67 to i64, !dbg !3061
  %69 = icmp slt i64 %66, %68, !dbg !3061
  br i1 %69, label %51, label %174, !dbg !3062, !llvm.loop !3078

; <label>:70:                                     ; preds = %40
  %71 = icmp eq i32 %4, 3, !dbg !3080
  br i1 %71, label %72, label %83, !dbg !3081

; <label>:72:                                     ; preds = %70
  %73 = tail call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i64 0, i64 0)) #11, !dbg !3082
  %74 = icmp eq i32 %73, 0, !dbg !3082
  br i1 %74, label %75, label %83, !dbg !3083

; <label>:75:                                     ; preds = %72
  %76 = load %struct.lua_State*, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !3084, !tbaa !2148
  %77 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %43, i64 2, !dbg !3085
  %78 = load %struct.redisObject*, %struct.redisObject** %77, align 8, !dbg !3085, !tbaa !997
  %79 = tail call i8* @luaCreateFunction(%struct.client* nonnull %0, %struct.lua_State* %76, %struct.redisObject* %78) #9, !dbg !3086
  %80 = icmp eq i8* %79, null, !dbg !3088
  br i1 %80, label %82, label %81, !dbg !3090

; <label>:81:                                     ; preds = %75
  tail call void @addReplyBulkCBuffer(%struct.client* nonnull %0, i8* nonnull %79, i64 40) #8, !dbg !3091
  tail call void @forceCommandPropagation(%struct.client* nonnull %0, i32 3) #8, !dbg !3092
  br label %82, !dbg !3093

; <label>:82:                                     ; preds = %75, %81
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  ret void

; <label>:83:                                     ; preds = %72, %70
  %84 = phi i1 [ true, %72 ], [ false, %70 ]
  br i1 %5, label %85, label %107, !dbg !3094

; <label>:85:                                     ; preds = %83
  %86 = tail call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.124, i64 0, i64 0)) #11, !dbg !3096
  %87 = icmp eq i32 %86, 0, !dbg !3096
  br i1 %87, label %88, label %107, !dbg !3097

; <label>:88:                                     ; preds = %85
  %89 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !3098, !tbaa !957
  %90 = icmp eq %struct.client* %89, null, !dbg !3101
  br i1 %90, label %91, label %93, !dbg !3102

; <label>:91:                                     ; preds = %88
  %92 = tail call i8* @sdsnew(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.125, i64 0, i64 0)) #8, !dbg !3103
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %92) #8, !dbg !3105
  br label %174, !dbg !3106

; <label>:93:                                     ; preds = %88
  %94 = getelementptr inbounds %struct.client, %struct.client* %89, i64 0, i32 21, !dbg !3107
  %95 = load i32, i32* %94, align 8, !dbg !3107, !tbaa !959
  %96 = and i32 %95, 2, !dbg !3109
  %97 = icmp eq i32 %96, 0, !dbg !3109
  br i1 %97, label %100, label %98, !dbg !3110

; <label>:98:                                     ; preds = %93
  %99 = tail call i8* @sdsnew(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.126, i64 0, i64 0)) #8, !dbg !3111
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %99) #8, !dbg !3113
  br label %174, !dbg !3114

; <label>:100:                                    ; preds = %93
  %101 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 277), align 8, !dbg !3115, !tbaa !1273
  %102 = icmp eq i32 %101, 0, !dbg !3117
  br i1 %102, label %105, label %103, !dbg !3118

; <label>:103:                                    ; preds = %100
  %104 = tail call i8* @sdsnew(i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.127, i64 0, i64 0)) #8, !dbg !3119
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %104) #8, !dbg !3121
  br label %174, !dbg !3122

; <label>:105:                                    ; preds = %100
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 283), align 8, !dbg !3123, !tbaa !2496
  %106 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3125, !tbaa !3042
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %106) #8, !dbg !3126
  br label %174

; <label>:107:                                    ; preds = %85, %83
  br i1 %84, label %108, label %173, !dbg !3127

; <label>:108:                                    ; preds = %107
  %109 = tail call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #11, !dbg !3129
  %110 = icmp eq i32 %109, 0, !dbg !3129
  br i1 %110, label %111, label %173, !dbg !3130

; <label>:111:                                    ; preds = %108
  %112 = tail call i32 @clientHasPendingReplies(%struct.client* nonnull %0) #8, !dbg !3131
  %113 = icmp eq i32 %112, 0, !dbg !3131
  br i1 %113, label %115, label %114, !dbg !3134

; <label>:114:                                    ; preds = %111
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.128, i64 0, i64 0)) #8, !dbg !3135
  br label %174, !dbg !3137

; <label>:115:                                    ; preds = %111
  %116 = load %struct.redisObject**, %struct.redisObject*** %41, align 8, !dbg !3138, !tbaa !1122
  %117 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %116, i64 2, !dbg !3140
  %118 = load %struct.redisObject*, %struct.redisObject** %117, align 8, !dbg !3140, !tbaa !997
  %119 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %118, i64 0, i32 2, !dbg !3141
  %120 = load i8*, i8** %119, align 8, !dbg !3141, !tbaa !1037
  %121 = tail call i32 @strcasecmp(i8* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i64 0, i64 0)) #11, !dbg !3142
  %122 = icmp eq i32 %121, 0, !dbg !3142
  br i1 %122, label %123, label %128, !dbg !3143

; <label>:123:                                    ; preds = %115
  %124 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3147
  %125 = load i32, i32* %124, align 8, !dbg !3148, !tbaa !959
  %126 = and i32 %125, -100663297, !dbg !3148
  store i32 %126, i32* %124, align 8, !dbg !3148, !tbaa !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3149
  %127 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3150, !tbaa !3042
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %127) #8, !dbg !3151
  br label %174, !dbg !3152

; <label>:128:                                    ; preds = %115
  %129 = tail call i32 @strcasecmp(i8* %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0)) #11, !dbg !3153
  %130 = icmp eq i32 %129, 0, !dbg !3153
  br i1 %130, label %131, label %149, !dbg !3155

; <label>:131:                                    ; preds = %128
  %132 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3162
  %133 = load i32, i32* %132, align 8, !dbg !3163, !tbaa !959
  %134 = or i32 %133, 33554432, !dbg !3163
  store i32 %134, i32* %132, align 8, !dbg !3163, !tbaa !959
  %135 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3164, !tbaa !781
  %136 = getelementptr inbounds %struct.list, %struct.list* %135, i64 0, i32 0, !dbg !3173
  %137 = load %struct.listNode*, %struct.listNode** %136, align 8, !dbg !3173, !tbaa !1363
  %138 = icmp eq %struct.listNode* %137, null, !dbg !3175
  br i1 %138, label %143, label %139, !dbg !3176

; <label>:139:                                    ; preds = %131, %139
  %140 = phi %struct.listNode* [ %141, %139 ], [ %137, %131 ]
  tail call void @listDelNode(%struct.list* nonnull %135, %struct.listNode* nonnull %140) #8, !dbg !3177
  %141 = load %struct.listNode*, %struct.listNode** %136, align 8, !dbg !3173, !tbaa !1363
  %142 = icmp eq %struct.listNode* %141, null, !dbg !3175
  br i1 %142, label %143, label %139, !dbg !3176, !llvm.loop !3178

; <label>:143:                                    ; preds = %139, %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3181
  %144 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !3182
  %145 = load i32, i32* %144, align 8, !dbg !3182, !tbaa !3183
  store i32 %145, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3184, !tbaa !2032
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !3185, !tbaa !2870
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3186, !tbaa !2830
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !3187, !tbaa !1678
  %146 = load i8*, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3188, !tbaa !2047
  tail call void @sdsfree(i8* %146) #8, !dbg !3189
  %147 = tail call i8* @sdsempty() #8, !dbg !3190
  store i8* %147, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3191, !tbaa !2047
  store i64 256, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !3192, !tbaa !3193
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 15), align 8, !dbg !3194, !tbaa !3195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3196
  %148 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3197, !tbaa !3042
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %148) #8, !dbg !3198
  br label %174, !dbg !3199

; <label>:149:                                    ; preds = %128
  %150 = tail call i32 @strcasecmp(i8* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0)) #11, !dbg !3200
  %151 = icmp eq i32 %150, 0, !dbg !3200
  br i1 %151, label %152, label %172, !dbg !3202

; <label>:152:                                    ; preds = %149
  %153 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3206
  %154 = load i32, i32* %153, align 8, !dbg !3207, !tbaa !959
  %155 = or i32 %154, 33554432, !dbg !3207
  store i32 %155, i32* %153, align 8, !dbg !3207, !tbaa !959
  %156 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3208, !tbaa !781
  %157 = getelementptr inbounds %struct.list, %struct.list* %156, i64 0, i32 0, !dbg !3211
  %158 = load %struct.listNode*, %struct.listNode** %157, align 8, !dbg !3211, !tbaa !1363
  %159 = icmp eq %struct.listNode* %158, null, !dbg !3213
  br i1 %159, label %164, label %160, !dbg !3214

; <label>:160:                                    ; preds = %152, %160
  %161 = phi %struct.listNode* [ %162, %160 ], [ %158, %152 ]
  tail call void @listDelNode(%struct.list* nonnull %156, %struct.listNode* nonnull %161) #8, !dbg !3215
  %162 = load %struct.listNode*, %struct.listNode** %157, align 8, !dbg !3211, !tbaa !1363
  %163 = icmp eq %struct.listNode* %162, null, !dbg !3213
  br i1 %163, label %164, label %160, !dbg !3214, !llvm.loop !3178

; <label>:164:                                    ; preds = %160, %152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3216
  %165 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !3217
  %166 = load i32, i32* %165, align 8, !dbg !3217, !tbaa !3183
  store i32 %166, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3218, !tbaa !2032
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !3219, !tbaa !2870
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3220, !tbaa !2830
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !3221, !tbaa !1678
  %167 = load i8*, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3222, !tbaa !2047
  tail call void @sdsfree(i8* %167) #8, !dbg !3223
  %168 = tail call i8* @sdsempty() #8, !dbg !3224
  store i8* %168, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3225, !tbaa !2047
  store i64 256, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !3226, !tbaa !3193
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 15), align 8, !dbg !3227, !tbaa !3195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3228
  %169 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3229, !tbaa !3042
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %169) #8, !dbg !3230
  %170 = load i32, i32* %153, align 8, !dbg !3231, !tbaa !959
  %171 = or i32 %170, 67108864, !dbg !3231
  store i32 %171, i32* %153, align 8, !dbg !3231, !tbaa !959
  br label %174

; <label>:172:                                    ; preds = %149
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.132, i64 0, i64 0)) #8, !dbg !3232
  br label %174, !dbg !3234

; <label>:173:                                    ; preds = %31, %108, %107
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #8, !dbg !3235
  br label %174

; <label>:174:                                    ; preds = %65, %46, %25, %173, %143, %164, %123, %91, %103, %105, %98, %114, %172, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3237
  ret void, !dbg !3237
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #2

; Function Attrs: noredzone
declare dso_local void @addReplyHelp(%struct.client*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @replicationScriptCacheFlush() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @clientHasPendingReplies(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbDisable(%struct.client* nocapture) local_unnamed_addr #0 !dbg !2934 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3239
  %3 = load i32, i32* %2, align 8, !dbg !3240, !tbaa !959
  %4 = and i32 %3, -100663297, !dbg !3240
  store i32 %4, i32* %2, align 8, !dbg !3240, !tbaa !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3241
  ret void, !dbg !3241
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbEnable(%struct.client* nocapture) local_unnamed_addr #0 !dbg !3157 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3243
  %3 = load i32, i32* %2, align 8, !dbg !3244, !tbaa !959
  %4 = or i32 %3, 33554432, !dbg !3244
  store i32 %4, i32* %2, align 8, !dbg !3244, !tbaa !959
  %5 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3245, !tbaa !781
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 0, !dbg !3248
  %7 = load %struct.listNode*, %struct.listNode** %6, align 8, !dbg !3248, !tbaa !1363
  %8 = icmp eq %struct.listNode* %7, null, !dbg !3250
  br i1 %8, label %13, label %9, !dbg !3251

; <label>:9:                                      ; preds = %1, %9
  %10 = phi %struct.listNode* [ %11, %9 ], [ %7, %1 ]
  tail call void @listDelNode(%struct.list* nonnull %5, %struct.listNode* nonnull %10) #8, !dbg !3252
  %11 = load %struct.listNode*, %struct.listNode** %6, align 8, !dbg !3248, !tbaa !1363
  %12 = icmp eq %struct.listNode* %11, null, !dbg !3250
  br i1 %12, label %13, label %9, !dbg !3251, !llvm.loop !3178

; <label>:13:                                     ; preds = %9, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3253
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !3254
  %15 = load i32, i32* %14, align 8, !dbg !3254, !tbaa !3183
  store i32 %15, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3255, !tbaa !2032
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !3256, !tbaa !2870
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3257, !tbaa !2830
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !3258, !tbaa !1678
  %16 = load i8*, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3259, !tbaa !2047
  tail call void @sdsfree(i8* %16) #8, !dbg !3260
  %17 = tail call i8* @sdsempty() #8, !dbg !3261
  store i8* %17, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3262, !tbaa !2047
  store i64 256, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !3263, !tbaa !3193
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 15), align 8, !dbg !3264, !tbaa !3195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3265
  ret void, !dbg !3265
}

; Function Attrs: noredzone
declare dso_local void @addReplySubcommandSyntaxError(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.list* @listCreate() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbFlushLog(%struct.list*) local_unnamed_addr #0 !dbg !3166 {
  %2 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 0, !dbg !3267
  %3 = load %struct.listNode*, %struct.listNode** %2, align 8, !dbg !3267, !tbaa !1363
  %4 = icmp eq %struct.listNode* %3, null, !dbg !3269
  br i1 %4, label %9, label %5, !dbg !3179

; <label>:5:                                      ; preds = %1, %5
  %6 = phi %struct.listNode* [ %7, %5 ], [ %3, %1 ]
  tail call void @listDelNode(%struct.list* nonnull %0, %struct.listNode* nonnull %6) #8, !dbg !3270
  %7 = load %struct.listNode*, %struct.listNode** %2, align 8, !dbg !3267, !tbaa !1363
  %8 = icmp eq %struct.listNode* %7, null, !dbg !3269
  br i1 %8, label %9, label %5, !dbg !3179, !llvm.loop !3178

; <label>:9:                                      ; preds = %5, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3271
  ret void, !dbg !3271
}

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbLogWithMaxLen(i8*) local_unnamed_addr #0 !dbg !3272 {
  %2 = load i64, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !3278, !tbaa !3193
  %3 = icmp eq i64 %2, 0, !dbg !3280
  br i1 %3, label %36, label %4, !dbg !3281

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !3284
  %6 = load i8, i8* %5, align 1, !dbg !3284, !tbaa !485
  %7 = trunc i8 %6 to i3, !dbg !3286
  switch i3 %7, label %8 [
    i3 0, label %9
    i3 1, label %12
    i3 2, label %16
    i3 3, label %21
    i3 -4, label %26
  ], !dbg !3286

; <label>:8:                                      ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3287
  br label %36, !dbg !3288

; <label>:9:                                      ; preds = %4
  %10 = lshr i8 %6, 3, !dbg !3289
  %11 = zext i8 %10 to i64, !dbg !3289
  br label %30, !dbg !3290

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !3291
  %14 = load i8, i8* %13, align 1, !dbg !3292, !tbaa !485
  %15 = zext i8 %14 to i64, !dbg !3291
  br label %30, !dbg !3293

; <label>:16:                                     ; preds = %4
  %17 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !3294
  %18 = bitcast i8* %17 to i16*, !dbg !3295
  %19 = load i16, i16* %18, align 1, !dbg !3295, !tbaa !1076
  %20 = zext i16 %19 to i64, !dbg !3294
  br label %30, !dbg !3296

; <label>:21:                                     ; preds = %4
  %22 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !3297
  %23 = bitcast i8* %22 to i32*, !dbg !3298
  %24 = load i32, i32* %23, align 1, !dbg !3298, !tbaa !973
  %25 = zext i32 %24 to i64, !dbg !3297
  br label %30, !dbg !3299

; <label>:26:                                     ; preds = %4
  %27 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !3300
  %28 = bitcast i8* %27 to i64*, !dbg !3301
  %29 = load i64, i64* %28, align 1, !dbg !3301, !tbaa !1019
  br label %30, !dbg !3302

; <label>:30:                                     ; preds = %9, %12, %16, %21, %26
  %31 = phi i64 [ %29, %26 ], [ %25, %21 ], [ %20, %16 ], [ %15, %12 ], [ %11, %9 ], !dbg !3303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3287
  %32 = icmp ugt i64 %31, %2, !dbg !3304
  br i1 %32, label %33, label %36, !dbg !3288

; <label>:33:                                     ; preds = %30
  %34 = add i64 %2, -1, !dbg !3305
  tail call void @sdsrange(i8* nonnull %0, i64 0, i64 %34) #8, !dbg !3307
  %35 = tail call i8* @sdscatlen(i8* nonnull %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0), i64 4) #8, !dbg !3308
  br label %36, !dbg !3309

; <label>:36:                                     ; preds = %8, %1, %33, %30
  %37 = phi i8* [ %35, %33 ], [ %0, %30 ], [ %0, %1 ], [ %0, %8 ]
  %38 = phi i1 [ true, %33 ], [ false, %30 ], [ false, %1 ], [ false, %8 ]
  %39 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3312, !tbaa !781
  %40 = tail call %struct.list* @listAddNodeTail(%struct.list* %39, i8* %37) #8, !dbg !3313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3314
  %41 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 15), align 8, !dbg !3315
  %42 = icmp eq i32 %41, 0, !dbg !3317
  %43 = and i1 %38, %42, !dbg !3318
  br i1 %43, label %44, label %48, !dbg !3318

; <label>:44:                                     ; preds = %36
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 15), align 8, !dbg !3319, !tbaa !3195
  %45 = tail call i8* @sdsnew(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.134, i64 0, i64 0)) #8, !dbg !3321
  %46 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3324, !tbaa !781
  %47 = tail call %struct.list* @listAddNodeTail(%struct.list* %46, i8* %45) #8, !dbg !3325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3326
  br label %48, !dbg !3327

; <label>:48:                                     ; preds = %44, %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3328
  ret void, !dbg !3328
}

; Function Attrs: noredzone
declare dso_local void @sdsrange(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbSendLogs() local_unnamed_addr #0 !dbg !3329 {
  %1 = tail call i8* @sdsempty() #8, !dbg !3334
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3336, !tbaa !781
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i64 0, i32 5, !dbg !3336
  %4 = load i64, i64* %3, align 8, !dbg !3336, !tbaa !1342
  %5 = trunc i64 %4 to i32, !dbg !3337
  %6 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i64 0, i64 0), i32 %5) #8, !dbg !3338
  %7 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3339, !tbaa !781
  %8 = getelementptr inbounds %struct.list, %struct.list* %7, i64 0, i32 5, !dbg !3339
  %9 = load i64, i64* %8, align 8, !dbg !3339, !tbaa !1342
  %10 = icmp eq i64 %9, 0, !dbg !3340
  br i1 %10, label %28, label %11, !dbg !3340

; <label>:11:                                     ; preds = %0, %11
  %12 = phi %struct.list* [ %24, %11 ], [ %7, %0 ]
  %13 = phi i8* [ %22, %11 ], [ %6, %0 ]
  %14 = getelementptr inbounds %struct.list, %struct.list* %12, i64 0, i32 0, !dbg !3341
  %15 = load %struct.listNode*, %struct.listNode** %14, align 8, !dbg !3341, !tbaa !1363
  %16 = tail call i8* @sdscatlen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0), i64 1) #8, !dbg !3343
  %17 = getelementptr inbounds %struct.listNode, %struct.listNode* %15, i64 0, i32 2, !dbg !3344
  %18 = load i8*, i8** %17, align 8, !dbg !3344, !tbaa !1364
  %19 = tail call i8* @sdsmapchars(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2) #8, !dbg !3345
  %20 = load i8*, i8** %17, align 8, !dbg !3346, !tbaa !1364
  %21 = tail call i8* @sdscatsds(i8* %16, i8* %20) #8, !dbg !3347
  %22 = tail call i8* @sdscatlen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 2) #8, !dbg !3348
  %23 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3349, !tbaa !781
  tail call void @listDelNode(%struct.list* %23, %struct.listNode* %15) #8, !dbg !3350
  %24 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3339, !tbaa !781
  %25 = getelementptr inbounds %struct.list, %struct.list* %24, i64 0, i32 5, !dbg !3339
  %26 = load i64, i64* %25, align 8, !dbg !3339, !tbaa !1342
  %27 = icmp eq i64 %26, 0, !dbg !3340
  br i1 %27, label %28, label %11, !dbg !3340, !llvm.loop !3351

; <label>:28:                                     ; preds = %11, %0
  %29 = phi i8* [ %6, %0 ], [ %22, %11 ], !dbg !3353
  %30 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3354, !tbaa !2032
  %31 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !3358
  %32 = load i8, i8* %31, align 1, !dbg !3358, !tbaa !485
  %33 = trunc i8 %32 to i3, !dbg !3360
  switch i3 %33, label %55 [
    i3 0, label %34
    i3 1, label %37
    i3 2, label %41
    i3 3, label %46
    i3 -4, label %51
  ], !dbg !3360

; <label>:34:                                     ; preds = %28
  %35 = lshr i8 %32, 3, !dbg !3361
  %36 = zext i8 %35 to i64, !dbg !3361
  br label %55, !dbg !3362

; <label>:37:                                     ; preds = %28
  %38 = getelementptr inbounds i8, i8* %29, i64 -3, !dbg !3363
  %39 = load i8, i8* %38, align 1, !dbg !3364, !tbaa !485
  %40 = zext i8 %39 to i64, !dbg !3363
  br label %55, !dbg !3365

; <label>:41:                                     ; preds = %28
  %42 = getelementptr inbounds i8, i8* %29, i64 -5, !dbg !3366
  %43 = bitcast i8* %42 to i16*, !dbg !3367
  %44 = load i16, i16* %43, align 1, !dbg !3367, !tbaa !1076
  %45 = zext i16 %44 to i64, !dbg !3366
  br label %55, !dbg !3368

; <label>:46:                                     ; preds = %28
  %47 = getelementptr inbounds i8, i8* %29, i64 -9, !dbg !3369
  %48 = bitcast i8* %47 to i32*, !dbg !3370
  %49 = load i32, i32* %48, align 1, !dbg !3370, !tbaa !973
  %50 = zext i32 %49 to i64, !dbg !3369
  br label %55, !dbg !3371

; <label>:51:                                     ; preds = %28
  %52 = getelementptr inbounds i8, i8* %29, i64 -17, !dbg !3372
  %53 = bitcast i8* %52 to i64*, !dbg !3373
  %54 = load i64, i64* %53, align 1, !dbg !3373, !tbaa !1019
  br label %55, !dbg !3374

; <label>:55:                                     ; preds = %28, %34, %37, %41, %46, %51
  %56 = phi i64 [ %54, %51 ], [ %50, %46 ], [ %45, %41 ], [ %40, %37 ], [ %36, %34 ], [ 0, %28 ], !dbg !3375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3376
  %57 = tail call i64 @write(i32 %30, i8* nonnull %29, i64 %56) #8, !dbg !3377
  tail call void @sdsfree(i8* nonnull %29) #8, !dbg !3378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3379
  ret void, !dbg !3379
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @ldbStartSession(%struct.client*) local_unnamed_addr #0 !dbg !3380 {
  %2 = alloca %struct.sigaction, align 8
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3420
  %4 = load i32, i32* %3, align 8, !dbg !3420, !tbaa !959
  %5 = and i32 %4, 67108864, !dbg !3421
  %6 = icmp eq i32 %5, 0, !dbg !3422
  %7 = lshr exact i32 %5, 26, !dbg !3422
  %8 = xor i32 %7, 1, !dbg !3422
  store i32 %8, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 2), align 8, !dbg !3423, !tbaa !3424
  br i1 %6, label %9, label %25, !dbg !3425

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @fork() #8, !dbg !3426
  switch i32 %10, label %20 [
    i32 -1, label %11
    i32 0, label %12
  ], !dbg !3428

; <label>:11:                                     ; preds = %9
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.137, i64 0, i64 0)) #8, !dbg !3429
  br label %124

; <label>:12:                                     ; preds = %9
  %13 = bitcast %struct.sigaction* %2 to i8*, !dbg !3431
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %13) #7, !dbg !3431
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 1, !dbg !3432
  %15 = call i32 @sigemptyset(i64* nonnull %14) #8, !dbg !3433
  %16 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 2, !dbg !3434
  store i32 0, i32* %16, align 8, !dbg !3435, !tbaa !3436
  %17 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 0, i32 0, !dbg !3438
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %17, align 8, !dbg !3439, !tbaa !485
  %18 = call i32 @sigaction(i32 15, %struct.sigaction* nonnull %2, %struct.sigaction* null) #8, !dbg !3441
  %19 = call i32 @sigaction(i32 2, %struct.sigaction* nonnull %2, %struct.sigaction* null) #8, !dbg !3442
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.138, i64 0, i64 0)) #8, !dbg !3443
  call void @closeListeningSockets(i32 0) #8, !dbg !3444
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %13) #7, !dbg !3445
  br label %26

; <label>:20:                                     ; preds = %9
  %21 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3446, !tbaa !2040
  %22 = sext i32 %10 to i64, !dbg !3448
  %23 = inttoptr i64 %22 to i8*, !dbg !3449
  %24 = tail call %struct.list* @listAddNodeTail(%struct.list* %21, i8* %23) #8, !dbg !3450
  tail call void @freeClientAsync(%struct.client* nonnull %0) #8, !dbg !3451
  br label %124

; <label>:25:                                     ; preds = %1
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.139, i64 0, i64 0)) #8, !dbg !3452
  br label %26

; <label>:26:                                     ; preds = %12, %25
  %27 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3454, !tbaa !2032
  %28 = call i32 @anetBlock(i8* null, i32 %27) #8, !dbg !3455
  %29 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3456, !tbaa !2032
  %30 = call i32 @anetSendTimeout(i8* null, i32 %29, i64 5000) #8, !dbg !3457
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !3458, !tbaa !761
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3459
  %32 = load %struct.redisObject**, %struct.redisObject*** %31, align 8, !dbg !3459, !tbaa !1122
  %33 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %32, i64 1, !dbg !3460
  %34 = load %struct.redisObject*, %struct.redisObject** %33, align 8, !dbg !3460, !tbaa !997
  %35 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %34, i64 0, i32 2, !dbg !3461
  %36 = load i8*, i8** %35, align 8, !dbg !3461, !tbaa !1037
  %37 = call i8* @sdsdup(i8* %36) #8, !dbg !3462
  %38 = getelementptr inbounds i8, i8* %37, i64 -1, !dbg !3466
  %39 = load i8, i8* %38, align 1, !dbg !3466, !tbaa !485
  %40 = trunc i8 %39 to i3, !dbg !3468
  switch i3 %40, label %41 [
    i3 0, label %42
    i3 1, label %45
    i3 2, label %49
    i3 3, label %54
    i3 -4, label %59
  ], !dbg !3468

; <label>:41:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3469
  br label %76, !dbg !3471

; <label>:42:                                     ; preds = %26
  %43 = lshr i8 %39, 3, !dbg !3472
  %44 = zext i8 %43 to i64, !dbg !3472
  br label %63, !dbg !3473

; <label>:45:                                     ; preds = %26
  %46 = getelementptr inbounds i8, i8* %37, i64 -3, !dbg !3474
  %47 = load i8, i8* %46, align 1, !dbg !3475, !tbaa !485
  %48 = zext i8 %47 to i64, !dbg !3474
  br label %63, !dbg !3476

; <label>:49:                                     ; preds = %26
  %50 = getelementptr inbounds i8, i8* %37, i64 -5, !dbg !3477
  %51 = bitcast i8* %50 to i16*, !dbg !3478
  %52 = load i16, i16* %51, align 1, !dbg !3478, !tbaa !1076
  %53 = zext i16 %52 to i64, !dbg !3477
  br label %63, !dbg !3479

; <label>:54:                                     ; preds = %26
  %55 = getelementptr inbounds i8, i8* %37, i64 -9, !dbg !3480
  %56 = bitcast i8* %55 to i32*, !dbg !3481
  %57 = load i32, i32* %56, align 1, !dbg !3481, !tbaa !973
  %58 = zext i32 %57 to i64, !dbg !3480
  br label %63, !dbg !3482

; <label>:59:                                     ; preds = %26
  %60 = getelementptr inbounds i8, i8* %37, i64 -17, !dbg !3483
  %61 = bitcast i8* %60 to i64*, !dbg !3484
  %62 = load i64, i64* %61, align 1, !dbg !3484, !tbaa !1019
  br label %63, !dbg !3485

; <label>:63:                                     ; preds = %42, %45, %49, %54, %59
  %64 = phi i64 [ %62, %59 ], [ %58, %54 ], [ %53, %49 ], [ %48, %45 ], [ %44, %42 ], !dbg !3486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3469
  %65 = icmp eq i64 %64, 0, !dbg !3487
  br i1 %65, label %76, label %66, !dbg !3471

; <label>:66:                                     ; preds = %63, %71
  %67 = phi i64 [ %68, %71 ], [ %64, %63 ]
  %68 = add i64 %67, -1, !dbg !3488
  %69 = getelementptr inbounds i8, i8* %37, i64 %68, !dbg !3489
  %70 = load i8, i8* %69, align 1, !dbg !3489, !tbaa !485
  switch i8 %70, label %73 [
    i8 13, label %71
    i8 10, label %71
  ], !dbg !3490

; <label>:71:                                     ; preds = %66, %66
  store i8 0, i8* %69, align 1, !dbg !3491, !tbaa !485
  %72 = icmp eq i64 %68, 0, !dbg !3487
  br i1 %72, label %73, label %66, !dbg !3471, !llvm.loop !3493

; <label>:73:                                     ; preds = %66, %71
  %74 = phi i64 [ 0, %71 ], [ %67, %66 ]
  %75 = load i8, i8* %38, align 1, !dbg !3495, !tbaa !485
  br label %76, !dbg !3495

; <label>:76:                                     ; preds = %41, %73, %63
  %77 = phi i8 [ %39, %63 ], [ %75, %73 ], [ %39, %41 ], !dbg !3495
  %78 = phi i64 [ 0, %63 ], [ %74, %73 ], [ 0, %41 ], !dbg !3497
  %79 = trunc i8 %77 to i3, !dbg !3501
  switch i3 %79, label %97 [
    i3 0, label %80
    i3 1, label %83
    i3 2, label %86
    i3 3, label %90
    i3 -4, label %94
  ], !dbg !3501

; <label>:80:                                     ; preds = %76
  %81 = trunc i64 %78 to i8, !dbg !3503
  %82 = shl i8 %81, 3, !dbg !3503
  store i8 %82, i8* %38, align 1, !dbg !3504, !tbaa !485
  br label %97, !dbg !3505

; <label>:83:                                     ; preds = %76
  %84 = trunc i64 %78 to i8, !dbg !3506
  %85 = getelementptr inbounds i8, i8* %37, i64 -3, !dbg !3507
  store i8 %84, i8* %85, align 1, !dbg !3508, !tbaa !485
  br label %97, !dbg !3509

; <label>:86:                                     ; preds = %76
  %87 = trunc i64 %78 to i16, !dbg !3510
  %88 = getelementptr inbounds i8, i8* %37, i64 -5, !dbg !3511
  %89 = bitcast i8* %88 to i16*, !dbg !3512
  store i16 %87, i16* %89, align 1, !dbg !3513, !tbaa !1076
  br label %97, !dbg !3514

; <label>:90:                                     ; preds = %76
  %91 = trunc i64 %78 to i32, !dbg !3515
  %92 = getelementptr inbounds i8, i8* %37, i64 -9, !dbg !3516
  %93 = bitcast i8* %92 to i32*, !dbg !3517
  store i32 %91, i32* %93, align 1, !dbg !3518, !tbaa !973
  br label %97, !dbg !3519

; <label>:94:                                     ; preds = %76
  %95 = getelementptr inbounds i8, i8* %37, i64 -17, !dbg !3520
  %96 = bitcast i8* %95 to i64*, !dbg !3521
  store i64 %78, i64* %96, align 1, !dbg !3522, !tbaa !1019
  br label %97, !dbg !3523

; <label>:97:                                     ; preds = %76, %80, %83, %86, %90, %94
  %98 = phi i8 [ %77, %76 ], [ %82, %80 ], [ %77, %83 ], [ %77, %86 ], [ %77, %90 ], [ %77, %94 ], !dbg !3524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3526
  %99 = trunc i8 %98 to i3, !dbg !3529
  switch i3 %99, label %121 [
    i3 0, label %100
    i3 1, label %103
    i3 2, label %107
    i3 3, label %112
    i3 -4, label %117
  ], !dbg !3529

; <label>:100:                                    ; preds = %97
  %101 = lshr i8 %98, 3, !dbg !3530
  %102 = zext i8 %101 to i64, !dbg !3530
  br label %121, !dbg !3531

; <label>:103:                                    ; preds = %97
  %104 = getelementptr inbounds i8, i8* %37, i64 -3, !dbg !3532
  %105 = load i8, i8* %104, align 1, !dbg !3533, !tbaa !485
  %106 = zext i8 %105 to i64, !dbg !3532
  br label %121, !dbg !3534

; <label>:107:                                    ; preds = %97
  %108 = getelementptr inbounds i8, i8* %37, i64 -5, !dbg !3535
  %109 = bitcast i8* %108 to i16*, !dbg !3536
  %110 = load i16, i16* %109, align 1, !dbg !3536, !tbaa !1076
  %111 = zext i16 %110 to i64, !dbg !3535
  br label %121, !dbg !3537

; <label>:112:                                    ; preds = %97
  %113 = getelementptr inbounds i8, i8* %37, i64 -9, !dbg !3538
  %114 = bitcast i8* %113 to i32*, !dbg !3539
  %115 = load i32, i32* %114, align 1, !dbg !3539, !tbaa !973
  %116 = zext i32 %115 to i64, !dbg !3538
  br label %121, !dbg !3540

; <label>:117:                                    ; preds = %97
  %118 = getelementptr inbounds i8, i8* %37, i64 -17, !dbg !3541
  %119 = bitcast i8* %118 to i64*, !dbg !3542
  %120 = load i64, i64* %119, align 1, !dbg !3542, !tbaa !1019
  br label %121, !dbg !3543

; <label>:121:                                    ; preds = %97, %100, %103, %107, %112, %117
  %122 = phi i64 [ %120, %117 ], [ %116, %112 ], [ %111, %107 ], [ %106, %103 ], [ %102, %100 ], [ 0, %97 ], !dbg !3544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3545
  %123 = call i8** @sdssplitlen(i8* nonnull %37, i64 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i64 0, i64 0), i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11)) #8, !dbg !3546
  store i8** %123, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !3547, !tbaa !2042
  call void @sdsfree(i8* nonnull %37) #8, !dbg !3548
  br label %124

; <label>:124:                                    ; preds = %20, %11, %121
  %125 = phi i32 [ 1, %121 ], [ 0, %20 ], [ 0, %11 ], !dbg !3549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3550
  ret i32 %125, !dbg !3550
}

; Function Attrs: noredzone
declare dso_local i32 @fork() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @sigemptyset(i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @closeListeningSockets(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @freeClientAsync(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @anetBlock(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @anetSendTimeout(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsdup(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8** @sdssplitlen(i8*, i64, i8*, i32, i32*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbEndSession(%struct.client*) local_unnamed_addr #0 !dbg !3551 {
  %2 = tail call i8* @sdsnew(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i64 0, i64 0)) #8, !dbg !3555
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3558, !tbaa !781
  %4 = tail call %struct.list* @listAddNodeTail(%struct.list* %3, i8* %2) #8, !dbg !3559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3560
  tail call void @ldbSendLogs() #9, !dbg !3561
  %5 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 2), align 8, !dbg !3562, !tbaa !3424
  %6 = icmp eq i32 %5, 0, !dbg !3564
  br i1 %6, label %11, label %7, !dbg !3565

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !3566
  %9 = load i32, i32* %8, align 8, !dbg !3566, !tbaa !3183
  %10 = tail call i32 @writeToClient(i32 %9, %struct.client* %0, i32 0) #8, !dbg !3568
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.142, i64 0, i64 0)) #8, !dbg !3569
  tail call void @exitFromChild(i32 0) #8, !dbg !3570
  br label %12, !dbg !3571

; <label>:11:                                     ; preds = %1
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.143, i64 0, i64 0)) #8, !dbg !3572
  br label %12

; <label>:12:                                     ; preds = %11, %7
  %13 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3574, !tbaa !2032
  %14 = tail call i32 @anetNonBlock(i8* null, i32 %13) #8, !dbg !3575
  %15 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3576, !tbaa !2032
  %16 = tail call i32 @anetSendTimeout(i8* null, i32 %15, i64 0) #8, !dbg !3577
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3578
  %18 = load i32, i32* %17, align 8, !dbg !3579, !tbaa !959
  %19 = or i32 %18, 64, !dbg !3579
  store i32 %19, i32* %17, align 8, !dbg !3579, !tbaa !959
  %20 = load i8**, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !3580, !tbaa !2042
  %21 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3581, !tbaa !2044
  tail call void @sdsfreesplitres(i8** %20, i32 %21) #8, !dbg !3582
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3583, !tbaa !2044
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !3584, !tbaa !761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3585
  ret void, !dbg !3585
}

; Function Attrs: noredzone
declare dso_local i32 @writeToClient(i32, %struct.client*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @exitFromChild(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @anetNonBlock(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsfreesplitres(i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @ldbRemoveChild(i32) local_unnamed_addr #0 !dbg !3586 {
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3593, !tbaa !2040
  %3 = sext i32 %0 to i64, !dbg !3594
  %4 = inttoptr i64 %3 to i8*, !dbg !3595
  %5 = tail call %struct.listNode* @listSearchKey(%struct.list* %2, i8* %4) #8, !dbg !3596
  %6 = icmp eq %struct.listNode* %5, null, !dbg !3598
  br i1 %6, label %9, label %7, !dbg !3600

; <label>:7:                                      ; preds = %1
  %8 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3601, !tbaa !2040
  tail call void @listDelNode(%struct.list* %8, %struct.listNode* nonnull %5) #8, !dbg !3603
  br label %9, !dbg !3604

; <label>:9:                                      ; preds = %1, %7
  %10 = phi i32 [ 1, %7 ], [ 0, %1 ], !dbg !3605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3606
  ret i32 %10, !dbg !3606
}

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listSearchKey(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: norecurse noredzone nounwind
define dso_local i32 @ldbPendingChildren() local_unnamed_addr #6 !dbg !3607 {
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3610, !tbaa !2040
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 5, !dbg !3610
  %3 = load i64, i64* %2, align 8, !dbg !3610, !tbaa !1342
  %4 = trunc i64 %3 to i32, !dbg !3610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3611
  ret i32 %4, !dbg !3611
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbKillForkedSessions() local_unnamed_addr #0 !dbg !3612 {
  %1 = alloca %struct.listIter, align 8
  %2 = bitcast %struct.listIter* %1 to i8*, !dbg !3623
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3623
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3624, !tbaa !2040
  call void @listRewind(%struct.list* %3, %struct.listIter* nonnull %1) #8, !dbg !3626
  %4 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !3627
  %5 = icmp eq %struct.listNode* %4, null, !dbg !3629
  br i1 %5, label %17, label %6, !dbg !3629

; <label>:6:                                      ; preds = %0, %6
  %7 = phi %struct.listNode* [ %15, %6 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.listNode, %struct.listNode* %7, i64 0, i32 2, !dbg !3630
  %9 = bitcast i8** %8 to i64*, !dbg !3630
  %10 = load i64, i64* %9, align 8, !dbg !3630, !tbaa !1364
  %11 = trunc i64 %10 to i32, !dbg !3631
  %12 = shl i64 %10, 32, !dbg !3633
  %13 = ashr exact i64 %12, 32, !dbg !3633
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.144, i64 0, i64 0), i64 %13) #8, !dbg !3634
  %14 = call i32 @kill(i32 %11, i32 9) #8, !dbg !3635
  %15 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !3627
  %16 = icmp eq %struct.listNode* %15, null, !dbg !3629
  br i1 %16, label %17, label %6, !dbg !3629, !llvm.loop !3636

; <label>:17:                                     ; preds = %6, %0
  %18 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3638, !tbaa !2040
  call void @listRelease(%struct.list* %18) #8, !dbg !3639
  %19 = call %struct.list* @listCreate() #8, !dbg !3640
  store %struct.list* %19, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3641, !tbaa !2040
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3642
  ret void, !dbg !3642
}

; Function Attrs: noredzone
declare dso_local void @listRewind(%struct.list*, %struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listNext(%struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @kill(i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listRelease(%struct.list*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @ldbGetSourceLine(i32) local_unnamed_addr #0 !dbg !3643 {
  %2 = icmp slt i32 %0, 1, !dbg !3650
  %3 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3652
  %4 = icmp slt i32 %3, %0, !dbg !3653
  %5 = or i1 %2, %4, !dbg !3654
  br i1 %5, label %12, label %6, !dbg !3654

; <label>:6:                                      ; preds = %1
  %7 = add nsw i32 %0, -1, !dbg !3655
  %8 = load i8**, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !3657, !tbaa !2042
  %9 = sext i32 %7 to i64, !dbg !3658
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9, !dbg !3658
  %11 = load i8*, i8** %10, align 8, !dbg !3658, !tbaa !997
  br label %12, !dbg !3659

; <label>:12:                                     ; preds = %1, %6
  %13 = phi i8* [ %11, %6 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i64 0, i64 0), %1 ], !dbg !3660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3661
  ret i8* %13, !dbg !3661
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ldbIsBreakpoint(i32) local_unnamed_addr #0 !dbg !2819 {
  %2 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3664, !tbaa !2830
  %3 = icmp sgt i32 %2, 0, !dbg !3665
  br i1 %3, label %4, label %14, !dbg !2834

; <label>:4:                                      ; preds = %1
  %5 = sext i32 %2 to i64, !dbg !2834
  br label %8, !dbg !2834

; <label>:6:                                      ; preds = %8
  %7 = icmp slt i64 %13, %5, !dbg !3665
  br i1 %7, label %8, label %14, !dbg !2834, !llvm.loop !2833

; <label>:8:                                      ; preds = %4, %6
  %9 = phi i64 [ 0, %4 ], [ %13, %6 ]
  %10 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %9, !dbg !3666
  %11 = load i32, i32* %10, align 4, !dbg !3666, !tbaa !973
  %12 = icmp eq i32 %11, %0, !dbg !3667
  %13 = add nuw nsw i64 %9, 1, !dbg !3668
  br i1 %12, label %14, label %6, !dbg !3669

; <label>:14:                                     ; preds = %8, %6, %1
  %15 = phi i32 [ 0, %1 ], [ 0, %6 ], [ 1, %8 ], !dbg !3670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3671
  ret i32 %15, !dbg !3671
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ldbAddBreakpoint(i32) local_unnamed_addr #0 !dbg !3672 {
  %2 = icmp slt i32 %0, 1, !dbg !3676
  %3 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3678
  %4 = icmp slt i32 %3, %0, !dbg !3679
  %5 = or i1 %2, %4, !dbg !3680
  br i1 %5, label %27, label %6, !dbg !3680

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3685, !tbaa !2830
  %8 = icmp sgt i32 %7, 0, !dbg !3686
  br i1 %8, label %10, label %9, !dbg !3687

; <label>:9:                                      ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3688
  br label %23, !dbg !3689

; <label>:10:                                     ; preds = %6
  %11 = sext i32 %7 to i64, !dbg !3687
  br label %14, !dbg !3687

; <label>:12:                                     ; preds = %14
  %13 = icmp slt i64 %19, %11, !dbg !3686
  br i1 %13, label %14, label %21, !dbg !3687, !llvm.loop !2833

; <label>:14:                                     ; preds = %12, %10
  %15 = phi i64 [ 0, %10 ], [ %19, %12 ]
  %16 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %15, !dbg !3690
  %17 = load i32, i32* %16, align 4, !dbg !3690, !tbaa !973
  %18 = icmp eq i32 %17, %0, !dbg !3691
  %19 = add nuw nsw i64 %15, 1, !dbg !3692
  br i1 %18, label %20, label %12, !dbg !3693

; <label>:20:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3688
  br label %27, !dbg !3689

; <label>:21:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3688
  %22 = icmp eq i32 %7, 64, !dbg !3694
  br i1 %22, label %27, label %23, !dbg !3689

; <label>:23:                                     ; preds = %9, %21
  %24 = add nsw i32 %7, 1, !dbg !3695
  store i32 %24, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3695, !tbaa !2830
  %25 = sext i32 %7 to i64, !dbg !3697
  %26 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %25, !dbg !3697
  store i32 %0, i32* %26, align 4, !dbg !3698, !tbaa !973
  br label %27, !dbg !3699

; <label>:27:                                     ; preds = %21, %20, %1, %23
  %28 = phi i32 [ 1, %23 ], [ 0, %1 ], [ 0, %21 ], [ 0, %20 ], !dbg !3700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3701
  ret i32 %28, !dbg !3701
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ldbDelBreakpoint(i32) local_unnamed_addr #0 !dbg !3702 {
  %2 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3708, !tbaa !2830
  %3 = icmp sgt i32 %2, 0, !dbg !3711
  br i1 %3, label %4, label %25, !dbg !3712

; <label>:4:                                      ; preds = %1
  %5 = sext i32 %2 to i64, !dbg !3712
  br label %6, !dbg !3712

; <label>:6:                                      ; preds = %4, %22
  %7 = phi i64 [ 0, %4 ], [ %23, %22 ]
  %8 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %7, !dbg !3713
  %9 = load i32, i32* %8, align 4, !dbg !3713, !tbaa !973
  %10 = icmp eq i32 %9, %0, !dbg !3716
  br i1 %10, label %11, label %22, !dbg !3717

; <label>:11:                                     ; preds = %6
  %12 = trunc i64 %7 to i32, !dbg !3707
  %13 = and i64 %7, 4294967295, !dbg !3713
  %14 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %13, !dbg !3713
  %15 = add nsw i32 %2, -1, !dbg !3718
  store i32 %15, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3718, !tbaa !2830
  %16 = bitcast i32* %14 to i8*, !dbg !3720
  %17 = getelementptr inbounds i32, i32* %14, i64 1, !dbg !3721
  %18 = bitcast i32* %17 to i8*, !dbg !3722
  %19 = sub nsw i32 %15, %12, !dbg !3723
  %20 = sext i32 %19 to i64, !dbg !3724
  %21 = tail call i8* @memmove(i8* nonnull %16, i8* nonnull %18, i64 %20) #8, !dbg !3725
  br label %25, !dbg !3726

; <label>:22:                                     ; preds = %6
  %23 = add nuw nsw i64 %7, 1, !dbg !3727
  %24 = icmp slt i64 %23, %5, !dbg !3711
  br i1 %24, label %6, label %25, !dbg !3712, !llvm.loop !3728

; <label>:25:                                     ; preds = %22, %1, %11
  %26 = phi i32 [ 1, %11 ], [ 0, %1 ], [ 0, %22 ], !dbg !3730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3731
  ret i32 %26, !dbg !3731
}

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8** @ldbReplParseCommand(i32* nocapture) local_unnamed_addr #0 !dbg !3732 {
  %2 = load i8*, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3747, !tbaa !2047
  %3 = getelementptr inbounds i8, i8* %2, i64 -1, !dbg !3751
  %4 = load i8, i8* %3, align 1, !dbg !3751, !tbaa !485
  %5 = trunc i8 %4 to i3, !dbg !3753
  switch i3 %5, label %6 [
    i3 0, label %7
    i3 1, label %10
    i3 2, label %14
    i3 3, label %19
    i3 -4, label %24
  ], !dbg !3753

; <label>:6:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3754
  br label %91, !dbg !3755

; <label>:7:                                      ; preds = %1
  %8 = lshr i8 %4, 3, !dbg !3756
  %9 = zext i8 %8 to i64, !dbg !3756
  br label %28, !dbg !3757

; <label>:10:                                     ; preds = %1
  %11 = getelementptr inbounds i8, i8* %2, i64 -3, !dbg !3758
  %12 = load i8, i8* %11, align 1, !dbg !3759, !tbaa !485
  %13 = zext i8 %12 to i64, !dbg !3758
  br label %28, !dbg !3760

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds i8, i8* %2, i64 -5, !dbg !3761
  %16 = bitcast i8* %15 to i16*, !dbg !3762
  %17 = load i16, i16* %16, align 1, !dbg !3762, !tbaa !1076
  %18 = zext i16 %17 to i64, !dbg !3761
  br label %28, !dbg !3763

; <label>:19:                                     ; preds = %1
  %20 = getelementptr inbounds i8, i8* %2, i64 -9, !dbg !3764
  %21 = bitcast i8* %20 to i32*, !dbg !3765
  %22 = load i32, i32* %21, align 1, !dbg !3765, !tbaa !973
  %23 = zext i32 %22 to i64, !dbg !3764
  br label %28, !dbg !3766

; <label>:24:                                     ; preds = %1
  %25 = getelementptr inbounds i8, i8* %2, i64 -17, !dbg !3767
  %26 = bitcast i8* %25 to i64*, !dbg !3768
  %27 = load i64, i64* %26, align 1, !dbg !3768, !tbaa !1019
  br label %28, !dbg !3769

; <label>:28:                                     ; preds = %7, %10, %14, %19, %24
  %29 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ], [ %9, %7 ], !dbg !3770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3754
  %30 = icmp eq i64 %29, 0, !dbg !3771
  br i1 %30, label %91, label %31, !dbg !3755

; <label>:31:                                     ; preds = %28
  %32 = tail call i8* @sdsdup(i8* %2) #8, !dbg !3772
  %33 = tail call i8* @strchr(i8* %32, i32 42) #8, !dbg !3775
  %34 = icmp eq i8* %33, null, !dbg !3776
  br i1 %34, label %88, label %35, !dbg !3778

; <label>:35:                                     ; preds = %31
  %36 = tail call i8* @strstr(i8* nonnull %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !3779
  %37 = icmp eq i8* %36, null, !dbg !3780
  br i1 %37, label %88, label %38, !dbg !3782

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !3783
  store i8 0, i8* %36, align 1, !dbg !3785, !tbaa !485
  %40 = tail call i32 @atoi(i8* nonnull %39) #8, !dbg !3786
  store i32 %40, i32* %0, align 4, !dbg !3787, !tbaa !973
  %41 = add i32 %40, -1, !dbg !3788
  %42 = icmp ugt i32 %41, 1023, !dbg !3788
  br i1 %42, label %88, label %43, !dbg !3788

; <label>:43:                                     ; preds = %38
  %44 = sext i32 %40 to i64, !dbg !3790
  %45 = shl nsw i64 %44, 3, !dbg !3791
  %46 = tail call i8* @zmalloc(i64 %45) #8, !dbg !3792
  %47 = bitcast i8* %46 to i8**, !dbg !3792
  br label %48, !dbg !3793

; <label>:48:                                     ; preds = %76, %43
  %49 = phi i64 [ %77, %76 ], [ 0, %43 ], !dbg !3794
  %50 = phi i32 [ %71, %76 ], [ 0, %43 ], !dbg !3794
  %51 = phi i8* [ %73, %76 ], [ %36, %43 ]
  %52 = getelementptr inbounds i8, i8* %51, i64 2, !dbg !3795
  %53 = load i32, i32* %0, align 4, !dbg !3796, !tbaa !973
  %54 = sext i32 %53 to i64, !dbg !3797
  %55 = icmp slt i64 %49, %54, !dbg !3797
  br i1 %55, label %56, label %81, !dbg !3793

; <label>:56:                                     ; preds = %48
  %57 = load i8, i8* %52, align 1, !dbg !3798, !tbaa !485
  %58 = icmp eq i8 %57, 36, !dbg !3800
  br i1 %58, label %59, label %82, !dbg !3801

; <label>:59:                                     ; preds = %56
  %60 = tail call i8* @strstr(i8* nonnull %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !3802
  %61 = icmp eq i8* %60, null, !dbg !3803
  br i1 %61, label %84, label %62, !dbg !3805

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %51, i64 3, !dbg !3806
  store i8 0, i8* %60, align 1, !dbg !3807, !tbaa !485
  %64 = getelementptr inbounds i8, i8* %60, i64 2, !dbg !3808
  %65 = tail call i32 @atoi(i8* nonnull %63) #8, !dbg !3809
  %66 = add i32 %65, -1, !dbg !3811
  %67 = icmp ugt i32 %66, 1023, !dbg !3811
  br i1 %67, label %86, label %68, !dbg !3811

; <label>:68:                                     ; preds = %62
  %69 = sext i32 %65 to i64, !dbg !3813
  %70 = tail call i8* @sdsnewlen(i8* nonnull %64, i64 %69) #8, !dbg !3814
  %71 = add nuw nsw i32 %50, 1, !dbg !3815
  %72 = getelementptr inbounds i8*, i8** %47, i64 %49, !dbg !3816
  store i8* %70, i8** %72, align 8, !dbg !3817, !tbaa !997
  %73 = getelementptr inbounds i8, i8* %64, i64 %69, !dbg !3818
  %74 = load i8, i8* %73, align 1, !dbg !3819, !tbaa !485
  %75 = icmp eq i8 %74, 13, !dbg !3821
  br i1 %75, label %76, label %88, !dbg !3822

; <label>:76:                                     ; preds = %68
  %77 = add nuw nsw i64 %49, 1, !dbg !3815
  %78 = getelementptr inbounds i8, i8* %73, i64 1, !dbg !3823
  %79 = load i8, i8* %78, align 1, !dbg !3823, !tbaa !485
  %80 = icmp eq i8 %79, 10, !dbg !3824
  br i1 %80, label %48, label %88

; <label>:81:                                     ; preds = %48
  tail call void @sdsfree(i8* %32) #8, !dbg !3825
  br label %91, !dbg !3826

; <label>:82:                                     ; preds = %56
  %83 = trunc i64 %49 to i32, !dbg !3801
  br label %88, !dbg !3827

; <label>:84:                                     ; preds = %59
  %85 = trunc i64 %49 to i32, !dbg !3801
  br label %88, !dbg !3827

; <label>:86:                                     ; preds = %62
  %87 = trunc i64 %49 to i32, !dbg !3801
  br label %88, !dbg !3827

; <label>:88:                                     ; preds = %68, %76, %82, %84, %86, %35, %31, %38
  %89 = phi i32 [ 0, %38 ], [ 0, %35 ], [ 0, %31 ], [ %83, %82 ], [ %85, %84 ], [ %87, %86 ], [ %71, %76 ], [ %71, %68 ], !dbg !3828
  %90 = phi i8** [ null, %38 ], [ null, %35 ], [ null, %31 ], [ %47, %82 ], [ %47, %84 ], [ %47, %86 ], [ %47, %76 ], [ %47, %68 ], !dbg !3828
  tail call void @sdsfreesplitres(i8** %90, i32 %89) #8, !dbg !3827
  tail call void @sdsfree(i8* %32) #8, !dbg !3829
  br label %91, !dbg !3830

; <label>:91:                                     ; preds = %6, %81, %88, %28
  %92 = phi i8** [ null, %28 ], [ null, %88 ], [ %47, %81 ], [ null, %6 ], !dbg !3828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3831
  ret i8** %92, !dbg !3831
}

; Function Attrs: noredzone
declare dso_local i8* @strstr(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @atoi(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbLogSourceLine(i32) local_unnamed_addr #0 !dbg !3832 {
  %2 = icmp slt i32 %0, 1, !dbg !3843
  %3 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3844
  %4 = icmp slt i32 %3, %0, !dbg !3845
  %5 = or i1 %2, %4, !dbg !3846
  br i1 %5, label %12, label %6, !dbg !3846

; <label>:6:                                      ; preds = %1
  %7 = add nsw i32 %0, -1, !dbg !3847
  %8 = load i8**, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !3849, !tbaa !2042
  %9 = sext i32 %7 to i64, !dbg !3850
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9, !dbg !3850
  %11 = load i8*, i8** %10, align 8, !dbg !3850, !tbaa !997
  br label %12, !dbg !3851

; <label>:12:                                     ; preds = %1, %6
  %13 = phi i8* [ %11, %6 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i64 0, i64 0), %1 ], !dbg !3852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3853
  %14 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3858, !tbaa !2830
  %15 = icmp sgt i32 %14, 0, !dbg !3859
  br i1 %15, label %16, label %26, !dbg !3860

; <label>:16:                                     ; preds = %12
  %17 = sext i32 %14 to i64, !dbg !3860
  br label %20, !dbg !3860

; <label>:18:                                     ; preds = %20
  %19 = icmp slt i64 %25, %17, !dbg !3859
  br i1 %19, label %20, label %26, !dbg !3860, !llvm.loop !2833

; <label>:20:                                     ; preds = %18, %16
  %21 = phi i64 [ 0, %16 ], [ %25, %18 ]
  %22 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %21, !dbg !3861
  %23 = load i32, i32* %22, align 4, !dbg !3861, !tbaa !973
  %24 = icmp eq i32 %23, %0, !dbg !3862
  %25 = add nuw nsw i64 %21, 1, !dbg !3863
  br i1 %24, label %29, label %18, !dbg !3864

; <label>:26:                                     ; preds = %18, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3865
  %27 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !3866, !tbaa !1698
  %28 = icmp eq i32 %27, %0, !dbg !3867
  br label %33, !dbg !3868

; <label>:29:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3865
  %30 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !3866, !tbaa !1698
  %31 = icmp eq i32 %30, %0, !dbg !3867
  %32 = select i1 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.146, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i64 0, i64 0), !dbg !3872
  br label %33, !dbg !3868

; <label>:33:                                     ; preds = %26, %29
  %34 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i64 0, i64 0), %26 ]
  %35 = phi i1 [ %31, %29 ], [ %28, %26 ]
  %36 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148, i64 0, i64 0), %29 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i64 0, i64 0), %26 ]
  %37 = select i1 %35, i8* %34, i8* %36, !dbg !3872
  %38 = tail call i8* @sdsempty() #8, !dbg !3874
  %39 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.150, i64 0, i64 0), i8* %37, i32 %0, i8* %13) #8, !dbg !3875
  %40 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3879, !tbaa !781
  %41 = tail call %struct.list* @listAddNodeTail(%struct.list* %40, i8* %39) #8, !dbg !3880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3882
  ret void, !dbg !3882
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbList(i32, i32) local_unnamed_addr #0 !dbg !3883 {
  %3 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3893, !tbaa !2044
  %4 = icmp slt i32 %3, 1, !dbg !3896
  br i1 %4, label %18, label %5, !dbg !3897

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i32 %0, 0
  br label %7, !dbg !3897

; <label>:7:                                      ; preds = %14, %5
  %8 = phi i32 [ 1, %5 ], [ %15, %14 ]
  br i1 %6, label %13, label %9, !dbg !3898

; <label>:9:                                      ; preds = %7
  %10 = sub nsw i32 %0, %8, !dbg !3901
  %11 = tail call i32 @abs(i32 %10) #8, !dbg !3902
  %12 = icmp sgt i32 %11, %1, !dbg !3903
  br i1 %12, label %14, label %13, !dbg !3904

; <label>:13:                                     ; preds = %7, %9
  tail call void @ldbLogSourceLine(i32 %8) #9, !dbg !3905
  br label %14, !dbg !3906

; <label>:14:                                     ; preds = %9, %13
  %15 = add nuw nsw i32 %8, 1, !dbg !3907
  %16 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3893, !tbaa !2044
  %17 = icmp slt i32 %8, %16, !dbg !3896
  br i1 %17, label %7, label %18, !dbg !3897, !llvm.loop !3908

; <label>:18:                                     ; preds = %14, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3910
  ret void, !dbg !3910
}

; Function Attrs: noredzone
declare dso_local i32 @abs(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @ldbCatStackValueRec(i8*, %struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !3911 {
  %5 = alloca i64, align 8
  %6 = tail call i32 @lua_type(%struct.lua_State* %1, i32 %2) #8, !dbg !3936
  %7 = add nsw i32 %3, 1, !dbg !3938
  %8 = icmp eq i32 %3, 10, !dbg !3940
  br i1 %8, label %9, label %11, !dbg !3941

; <label>:9:                                      ; preds = %4
  %10 = tail call i8* @sdscat(i8* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.151, i64 0, i64 0)) #8, !dbg !3942
  br label %141, !dbg !3943

; <label>:11:                                     ; preds = %4
  switch i32 %6, label %139 [
    i32 4, label %12
    i32 1, label %17
    i32 3, label %22
    i32 0, label %25
    i32 5, label %27
    i32 6, label %128
    i32 7, label %128
    i32 8, label %128
    i32 2, label %128
  ], !dbg !3944

; <label>:12:                                     ; preds = %11
  %13 = bitcast i64* %5 to i8*, !dbg !3945
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #7, !dbg !3945
  %14 = call i8* @lua_tolstring(%struct.lua_State* %1, i32 %2, i64* nonnull %5) #8, !dbg !3947
  %15 = load i64, i64* %5, align 8, !dbg !3949, !tbaa !1019
  %16 = call i8* @sdscatrepr(i8* %0, i8* %14, i64 %15) #8, !dbg !3950
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #7, !dbg !3951
  br label %141, !dbg !3952

; <label>:17:                                     ; preds = %11
  %18 = tail call i32 @lua_toboolean(%struct.lua_State* %1, i32 %2) #8, !dbg !3953
  %19 = icmp eq i32 %18, 0, !dbg !3953
  %20 = select i1 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.153, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), !dbg !3953
  %21 = tail call i8* @sdscat(i8* %0, i8* %20) #8, !dbg !3954
  br label %141, !dbg !3955

; <label>:22:                                     ; preds = %11
  %23 = tail call double @lua_tonumber(%struct.lua_State* %1, i32 %2) #8, !dbg !3956
  %24 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.154, i64 0, i64 0), double %23) #8, !dbg !3957
  br label %141, !dbg !3958

; <label>:25:                                     ; preds = %11
  %26 = tail call i8* @sdscatlen(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.155, i64 0, i64 0), i64 3) #8, !dbg !3959
  br label %141, !dbg !3960

; <label>:27:                                     ; preds = %11
  %28 = tail call i8* @sdsempty() #8, !dbg !3963
  %29 = tail call i8* @sdsempty() #8, !dbg !3965
  tail call void @lua_pushnil(%struct.lua_State* %1) #8, !dbg !3967
  %30 = add nsw i32 %2, -1, !dbg !3968
  %31 = tail call i32 @lua_next(%struct.lua_State* %1, i32 %30) #8, !dbg !3969
  %32 = icmp eq i32 %31, 0, !dbg !3970
  br i1 %32, label %59, label %33, !dbg !3970

; <label>:33:                                     ; preds = %27, %47
  %34 = phi i8* [ %55, %47 ], [ %29, %27 ]
  %35 = phi i8* [ %50, %47 ], [ %28, %27 ]
  %36 = phi i32 [ %48, %47 ], [ 1, %27 ]
  %37 = phi i32 [ %56, %47 ], [ 1, %27 ]
  %38 = icmp eq i32 %36, 0, !dbg !3971
  br i1 %38, label %47, label %39, !dbg !3974

; <label>:39:                                     ; preds = %33
  %40 = tail call i32 @lua_type(%struct.lua_State* %1, i32 -2) #8, !dbg !3975
  %41 = icmp eq i32 %40, 3, !dbg !3976
  br i1 %41, label %42, label %46, !dbg !3977

; <label>:42:                                     ; preds = %39
  %43 = tail call double @lua_tonumber(%struct.lua_State* %1, i32 -2) #8, !dbg !3978
  %44 = sitofp i32 %37 to double, !dbg !3979
  %45 = fcmp une double %43, %44, !dbg !3980
  br i1 %45, label %46, label %47, !dbg !3981

; <label>:46:                                     ; preds = %39, %42
  br label %47, !dbg !3982

; <label>:47:                                     ; preds = %33, %46, %42
  %48 = phi i32 [ 0, %46 ], [ %36, %42 ], [ 0, %33 ], !dbg !3983
  %49 = tail call i8* @ldbCatStackValueRec(i8* %35, %struct.lua_State* %1, i32 -1, i32 %7) #9, !dbg !3984
  %50 = tail call i8* @sdscatlen(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i64 0, i64 0), i64 2) #8, !dbg !3985
  %51 = tail call i8* @sdscatlen(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.157, i64 0, i64 0), i64 1) #8, !dbg !3986
  %52 = tail call i8* @ldbCatStackValueRec(i8* %51, %struct.lua_State* %1, i32 -2, i32 %7) #9, !dbg !3987
  %53 = tail call i8* @sdscatlen(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i64 0, i64 0), i64 2) #8, !dbg !3988
  %54 = tail call i8* @ldbCatStackValueRec(i8* %53, %struct.lua_State* %1, i32 -1, i32 %7) #9, !dbg !3989
  %55 = tail call i8* @sdscatlen(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i64 0, i64 0), i64 2) #8, !dbg !3990
  tail call void @lua_settop(%struct.lua_State* %1, i32 -2) #8, !dbg !3991
  %56 = add nuw nsw i32 %37, 1, !dbg !3992
  %57 = tail call i32 @lua_next(%struct.lua_State* %1, i32 %30) #8, !dbg !3969
  %58 = icmp eq i32 %57, 0, !dbg !3970
  br i1 %58, label %59, label %33, !dbg !3970, !llvm.loop !3993

; <label>:59:                                     ; preds = %47, %27
  %60 = phi i32 [ 1, %27 ], [ %48, %47 ], !dbg !3995
  %61 = phi i8* [ %28, %27 ], [ %50, %47 ], !dbg !3996
  %62 = phi i8* [ %29, %27 ], [ %55, %47 ], !dbg !3996
  %63 = getelementptr inbounds i8, i8* %61, i64 -1, !dbg !4000
  %64 = load i8, i8* %63, align 1, !dbg !4000, !tbaa !485
  %65 = trunc i8 %64 to i3, !dbg !4002
  switch i3 %65, label %66 [
    i3 0, label %67
    i3 1, label %70
    i3 2, label %74
    i3 3, label %79
    i3 -4, label %84
  ], !dbg !4002

; <label>:66:                                     ; preds = %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4003
  br label %92, !dbg !4004

; <label>:67:                                     ; preds = %59
  %68 = lshr i8 %64, 3, !dbg !4005
  %69 = zext i8 %68 to i64, !dbg !4005
  br label %88, !dbg !4006

; <label>:70:                                     ; preds = %59
  %71 = getelementptr inbounds i8, i8* %61, i64 -3, !dbg !4007
  %72 = load i8, i8* %71, align 1, !dbg !4008, !tbaa !485
  %73 = zext i8 %72 to i64, !dbg !4007
  br label %88, !dbg !4009

; <label>:74:                                     ; preds = %59
  %75 = getelementptr inbounds i8, i8* %61, i64 -5, !dbg !4010
  %76 = bitcast i8* %75 to i16*, !dbg !4011
  %77 = load i16, i16* %76, align 1, !dbg !4011, !tbaa !1076
  %78 = zext i16 %77 to i64, !dbg !4010
  br label %88, !dbg !4012

; <label>:79:                                     ; preds = %59
  %80 = getelementptr inbounds i8, i8* %61, i64 -9, !dbg !4013
  %81 = bitcast i8* %80 to i32*, !dbg !4014
  %82 = load i32, i32* %81, align 1, !dbg !4014, !tbaa !973
  %83 = zext i32 %82 to i64, !dbg !4013
  br label %88, !dbg !4015

; <label>:84:                                     ; preds = %59
  %85 = getelementptr inbounds i8, i8* %61, i64 -17, !dbg !4016
  %86 = bitcast i8* %85 to i64*, !dbg !4017
  %87 = load i64, i64* %86, align 1, !dbg !4017, !tbaa !1019
  br label %88, !dbg !4018

; <label>:88:                                     ; preds = %67, %70, %74, %79, %84
  %89 = phi i64 [ %87, %84 ], [ %83, %79 ], [ %78, %74 ], [ %73, %70 ], [ %69, %67 ], !dbg !4019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4003
  %90 = icmp eq i64 %89, 0, !dbg !4020
  br i1 %90, label %92, label %91, !dbg !4004

; <label>:91:                                     ; preds = %88
  tail call void @sdsrange(i8* nonnull %61, i64 0, i64 -3) #8, !dbg !4021
  br label %92, !dbg !4021

; <label>:92:                                     ; preds = %66, %88, %91
  %93 = getelementptr inbounds i8, i8* %62, i64 -1, !dbg !4025
  %94 = load i8, i8* %93, align 1, !dbg !4025, !tbaa !485
  %95 = trunc i8 %94 to i3, !dbg !4027
  switch i3 %95, label %96 [
    i3 0, label %97
    i3 1, label %100
    i3 2, label %104
    i3 3, label %109
    i3 -4, label %114
  ], !dbg !4027

; <label>:96:                                     ; preds = %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4028
  br label %122, !dbg !4029

; <label>:97:                                     ; preds = %92
  %98 = lshr i8 %94, 3, !dbg !4030
  %99 = zext i8 %98 to i64, !dbg !4030
  br label %118, !dbg !4031

; <label>:100:                                    ; preds = %92
  %101 = getelementptr inbounds i8, i8* %62, i64 -3, !dbg !4032
  %102 = load i8, i8* %101, align 1, !dbg !4033, !tbaa !485
  %103 = zext i8 %102 to i64, !dbg !4032
  br label %118, !dbg !4034

; <label>:104:                                    ; preds = %92
  %105 = getelementptr inbounds i8, i8* %62, i64 -5, !dbg !4035
  %106 = bitcast i8* %105 to i16*, !dbg !4036
  %107 = load i16, i16* %106, align 1, !dbg !4036, !tbaa !1076
  %108 = zext i16 %107 to i64, !dbg !4035
  br label %118, !dbg !4037

; <label>:109:                                    ; preds = %92
  %110 = getelementptr inbounds i8, i8* %62, i64 -9, !dbg !4038
  %111 = bitcast i8* %110 to i32*, !dbg !4039
  %112 = load i32, i32* %111, align 1, !dbg !4039, !tbaa !973
  %113 = zext i32 %112 to i64, !dbg !4038
  br label %118, !dbg !4040

; <label>:114:                                    ; preds = %92
  %115 = getelementptr inbounds i8, i8* %62, i64 -17, !dbg !4041
  %116 = bitcast i8* %115 to i64*, !dbg !4042
  %117 = load i64, i64* %116, align 1, !dbg !4042, !tbaa !1019
  br label %118, !dbg !4043

; <label>:118:                                    ; preds = %97, %100, %104, %109, %114
  %119 = phi i64 [ %117, %114 ], [ %113, %109 ], [ %108, %104 ], [ %103, %100 ], [ %99, %97 ], !dbg !4044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4028
  %120 = icmp eq i64 %119, 0, !dbg !4045
  br i1 %120, label %122, label %121, !dbg !4029

; <label>:121:                                    ; preds = %118
  tail call void @sdsrange(i8* nonnull %62, i64 0, i64 -3) #8, !dbg !4046
  br label %122, !dbg !4046

; <label>:122:                                    ; preds = %96, %118, %121
  %123 = tail call i8* @sdscatlen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.159, i64 0, i64 0), i64 1) #8, !dbg !4047
  %124 = icmp eq i32 %60, 0, !dbg !4048
  %125 = select i1 %124, i8* %62, i8* %61, !dbg !4048
  %126 = tail call i8* @sdscatsds(i8* %123, i8* %125) #8, !dbg !4049
  %127 = tail call i8* @sdscatlen(i8* %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i64 0, i64 0), i64 1) #8, !dbg !4050
  tail call void @sdsfree(i8* nonnull %61) #8, !dbg !4051
  tail call void @sdsfree(i8* nonnull %62) #8, !dbg !4052
  br label %141, !dbg !4053

; <label>:128:                                    ; preds = %11, %11, %11, %11
  %129 = tail call i8* @lua_topointer(%struct.lua_State* %1, i32 %2) #8, !dbg !4054
  %130 = add i32 %6, -2, !dbg !4056
  %131 = icmp ult i32 %130, 7, !dbg !4056
  br i1 %131, label %132, label %136, !dbg !4056

; <label>:132:                                    ; preds = %128
  %133 = sext i32 %130 to i64, !dbg !4056
  %134 = getelementptr inbounds [7 x i8*], [7 x i8*]* @switch.table.ldbCatStackValueRec, i64 0, i64 %133, !dbg !4056
  %135 = load i8*, i8** %134, align 8, !dbg !4056
  br label %136, !dbg !4056

; <label>:136:                                    ; preds = %128, %132
  %137 = phi i8* [ %135, %132 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i64 0, i64 0), %128 ], !dbg !4057
  %138 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.166, i64 0, i64 0), i8* nonnull %137, i8* %129) #8, !dbg !4059
  br label %141, !dbg !4060

; <label>:139:                                    ; preds = %11
  %140 = tail call i8* @sdscat(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.167, i64 0, i64 0)) #8, !dbg !4061
  br label %141, !dbg !4062

; <label>:141:                                    ; preds = %12, %17, %22, %25, %122, %136, %139, %9
  %142 = phi i8* [ %10, %9 ], [ %140, %139 ], [ %138, %136 ], [ %127, %122 ], [ %26, %25 ], [ %24, %22 ], [ %21, %17 ], [ %16, %12 ], !dbg !4063
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4064
  ret i8* %142, !dbg !4064
}

; Function Attrs: noredzone
declare dso_local i8* @sdscatrepr(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_next(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @lua_topointer(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbLogStackValue(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !4065 {
  %3 = tail call i8* @sdsnew(i8* %1) #8, !dbg !4072
  %4 = tail call i8* @ldbCatStackValueRec(i8* %3, %struct.lua_State* %0, i32 -1, i32 0) #8, !dbg !4078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4079
  tail call void @ldbLogWithMaxLen(i8* %4) #9, !dbg !4080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4081
  ret void, !dbg !4081
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ldbRedisProtocolToHuman(i8** nocapture, i8*) local_unnamed_addr #0 !dbg !4082 {
  %3 = alloca i64, align 8
  %4 = load i8, i8* %1, align 1, !dbg !4092, !tbaa !485
  %5 = sext i8 %4 to i32, !dbg !4092
  switch i32 %5, label %58 [
    i32 58, label %6
    i32 36, label %16
    i32 43, label %38
    i32 45, label %47
    i32 42, label %56
  ], !dbg !4093

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4103
  %8 = tail call i8* @strchr(i8* nonnull %7, i32 13) #8, !dbg !4104
  %9 = load i8*, i8** %0, align 8, !dbg !4106, !tbaa !997
  %10 = ptrtoint i8* %8 to i64, !dbg !4107
  %11 = ptrtoint i8* %1 to i64, !dbg !4107
  %12 = xor i64 %11, -1, !dbg !4108
  %13 = add i64 %10, %12, !dbg !4108
  %14 = tail call i8* @sdscatlen(i8* %9, i8* nonnull %7, i64 %13) #8, !dbg !4109
  store i8* %14, i8** %0, align 8, !dbg !4110, !tbaa !997
  %15 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !4111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4112
  br label %58, !dbg !4113

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4123
  %18 = tail call i8* @strchr(i8* nonnull %17, i32 13) #8, !dbg !4124
  %19 = bitcast i64* %3 to i8*, !dbg !4126
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #7, !dbg !4126
  %20 = ptrtoint i8* %18 to i64, !dbg !4127
  %21 = ptrtoint i8* %1 to i64, !dbg !4127
  %22 = xor i64 %21, -1, !dbg !4128
  %23 = add i64 %20, %22, !dbg !4128
  %24 = call i32 @string2ll(i8* nonnull %17, i64 %23, i64* nonnull %3) #8, !dbg !4130
  %25 = load i64, i64* %3, align 8, !dbg !4131, !tbaa !536
  %26 = icmp eq i64 %25, -1, !dbg !4133
  %27 = load i8*, i8** %0, align 8, !dbg !4134, !tbaa !997
  br i1 %26, label %28, label %30, !dbg !4136

; <label>:28:                                     ; preds = %16
  %29 = call i8* @sdscatlen(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i64 0, i64 0), i64 4) #8, !dbg !4137
  store i8* %29, i8** %0, align 8, !dbg !4139, !tbaa !997
  br label %35, !dbg !4140

; <label>:30:                                     ; preds = %16
  %31 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !4141
  %32 = call i8* @sdscatrepr(i8* %27, i8* nonnull %31, i64 %25) #8, !dbg !4142
  store i8* %32, i8** %0, align 8, !dbg !4143, !tbaa !997
  %33 = load i64, i64* %3, align 8, !dbg !4144, !tbaa !536
  %34 = getelementptr inbounds i8, i8* %31, i64 %33, !dbg !4145
  br label %35, !dbg !4146

; <label>:35:                                     ; preds = %28, %30
  %36 = phi i8* [ %18, %28 ], [ %34, %30 ]
  %37 = getelementptr inbounds i8, i8* %36, i64 2, !dbg !4134
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !4147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4147
  br label %58, !dbg !4148

; <label>:38:                                     ; preds = %2
  %39 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4157
  %40 = tail call i8* @strchr(i8* nonnull %39, i32 13) #8, !dbg !4158
  %41 = load i8*, i8** %0, align 8, !dbg !4160, !tbaa !997
  %42 = ptrtoint i8* %40 to i64, !dbg !4161
  %43 = ptrtoint i8* %1 to i64, !dbg !4161
  %44 = sub i64 %42, %43, !dbg !4161
  %45 = tail call i8* @sdscatrepr(i8* %41, i8* nonnull %1, i64 %44) #8, !dbg !4162
  store i8* %45, i8** %0, align 8, !dbg !4163, !tbaa !997
  %46 = getelementptr inbounds i8, i8* %40, i64 2, !dbg !4164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4165
  br label %58, !dbg !4166

; <label>:47:                                     ; preds = %2
  %48 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4170
  %49 = tail call i8* @strchr(i8* nonnull %48, i32 13) #8, !dbg !4171
  %50 = load i8*, i8** %0, align 8, !dbg !4173, !tbaa !997
  %51 = ptrtoint i8* %49 to i64, !dbg !4174
  %52 = ptrtoint i8* %1 to i64, !dbg !4174
  %53 = sub i64 %51, %52, !dbg !4174
  %54 = tail call i8* @sdscatrepr(i8* %50, i8* nonnull %1, i64 %53) #8, !dbg !4175
  store i8* %54, i8** %0, align 8, !dbg !4176, !tbaa !997
  %55 = getelementptr inbounds i8, i8* %49, i64 2, !dbg !4177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4178
  br label %58, !dbg !4179

; <label>:56:                                     ; preds = %2
  %57 = tail call i8* @ldbRedisProtocolToHuman_MultiBulk(i8** %0, i8* nonnull %1) #9, !dbg !4180
  br label %58, !dbg !4181

; <label>:58:                                     ; preds = %2, %56, %47, %38, %35, %6
  %59 = phi i8* [ %1, %2 ], [ %57, %56 ], [ %55, %47 ], [ %46, %38 ], [ %37, %35 ], [ %15, %6 ], !dbg !4182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4183
  ret i8* %59, !dbg !4183
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @ldbRedisProtocolToHuman_Int(i8** nocapture, i8*) local_unnamed_addr #0 !dbg !4095 {
  %3 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4186
  %4 = tail call i8* @strchr(i8* nonnull %3, i32 13) #8, !dbg !4187
  %5 = load i8*, i8** %0, align 8, !dbg !4189, !tbaa !997
  %6 = ptrtoint i8* %4 to i64, !dbg !4190
  %7 = ptrtoint i8* %1 to i64, !dbg !4190
  %8 = xor i64 %7, -1, !dbg !4191
  %9 = add i64 %6, %8, !dbg !4191
  %10 = tail call i8* @sdscatlen(i8* %5, i8* nonnull %3, i64 %9) #8, !dbg !4192
  store i8* %10, i8** %0, align 8, !dbg !4193, !tbaa !997
  %11 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !4194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4195
  ret i8* %11, !dbg !4195
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @ldbRedisProtocolToHuman_Bulk(i8** nocapture, i8*) local_unnamed_addr #0 !dbg !4115 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4198
  %5 = tail call i8* @strchr(i8* nonnull %4, i32 13) #8, !dbg !4199
  %6 = bitcast i64* %3 to i8*, !dbg !4201
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7, !dbg !4201
  %7 = ptrtoint i8* %5 to i64, !dbg !4202
  %8 = ptrtoint i8* %1 to i64, !dbg !4202
  %9 = xor i64 %8, -1, !dbg !4203
  %10 = add i64 %7, %9, !dbg !4203
  %11 = call i32 @string2ll(i8* nonnull %4, i64 %10, i64* nonnull %3) #8, !dbg !4205
  %12 = load i64, i64* %3, align 8, !dbg !4206, !tbaa !536
  %13 = icmp eq i64 %12, -1, !dbg !4207
  %14 = load i8*, i8** %0, align 8, !dbg !4208, !tbaa !997
  br i1 %13, label %15, label %17, !dbg !4209

; <label>:15:                                     ; preds = %2
  %16 = call i8* @sdscatlen(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i64 0, i64 0), i64 4) #8, !dbg !4210
  store i8* %16, i8** %0, align 8, !dbg !4211, !tbaa !997
  br label %22, !dbg !4212

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !4213
  %19 = call i8* @sdscatrepr(i8* %14, i8* nonnull %18, i64 %12) #8, !dbg !4214
  store i8* %19, i8** %0, align 8, !dbg !4215, !tbaa !997
  %20 = load i64, i64* %3, align 8, !dbg !4216, !tbaa !536
  %21 = getelementptr inbounds i8, i8* %18, i64 %20, !dbg !4217
  br label %22, !dbg !4218

; <label>:22:                                     ; preds = %17, %15
  %23 = phi i8* [ %5, %15 ], [ %21, %17 ]
  %24 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !4208
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7, !dbg !4219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4219
  ret i8* %24, !dbg !4219
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @ldbRedisProtocolToHuman_Status(i8** nocapture, i8*) local_unnamed_addr #0 !dbg !4150 {
  %3 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4222
  %4 = tail call i8* @strchr(i8* nonnull %3, i32 13) #8, !dbg !4223
  %5 = load i8*, i8** %0, align 8, !dbg !4225, !tbaa !997
  %6 = ptrtoint i8* %4 to i64, !dbg !4226
  %7 = ptrtoint i8* %1 to i64, !dbg !4226
  %8 = sub i64 %6, %7, !dbg !4226
  %9 = tail call i8* @sdscatrepr(i8* %5, i8* %1, i64 %8) #8, !dbg !4227
  store i8* %9, i8** %0, align 8, !dbg !4228, !tbaa !997
  %10 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !4229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4230
  ret i8* %10, !dbg !4230
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ldbRedisProtocolToHuman_MultiBulk(i8** nocapture, i8*) local_unnamed_addr #0 !dbg !4231 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4240
  %5 = tail call i8* @strchr(i8* nonnull %4, i32 13) #8, !dbg !4241
  %6 = bitcast i64* %3 to i8*, !dbg !4243
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7, !dbg !4243
  %7 = ptrtoint i8* %5 to i64, !dbg !4245
  %8 = ptrtoint i8* %1 to i64, !dbg !4245
  %9 = xor i64 %8, -1, !dbg !4246
  %10 = add i64 %7, %9, !dbg !4246
  %11 = call i32 @string2ll(i8* nonnull %4, i64 %10, i64* nonnull %3) #8, !dbg !4248
  %12 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !4249
  %13 = load i64, i64* %3, align 8, !dbg !4250, !tbaa !536
  %14 = icmp eq i64 %13, -1, !dbg !4252
  %15 = load i8*, i8** %0, align 8, !dbg !4253, !tbaa !997
  br i1 %14, label %16, label %18, !dbg !4254

; <label>:16:                                     ; preds = %2
  %17 = call i8* @sdscatlen(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i64 0, i64 0), i64 4) #8, !dbg !4255
  br label %43, !dbg !4257

; <label>:18:                                     ; preds = %2
  %19 = call i8* @sdscatlen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.157, i64 0, i64 0), i64 1) #8, !dbg !4258
  store i8* %19, i8** %0, align 8, !dbg !4259, !tbaa !997
  %20 = load i64, i64* %3, align 8, !dbg !4260, !tbaa !536
  %21 = icmp sgt i64 %20, 0, !dbg !4263
  br i1 %21, label %22, label %39, !dbg !4264

; <label>:22:                                     ; preds = %18, %33
  %23 = phi i64 [ %35, %33 ], [ 0, %18 ]
  %24 = phi i8* [ %25, %33 ], [ %12, %18 ]
  %25 = call i8* @ldbRedisProtocolToHuman(i8** %0, i8* %24) #9, !dbg !4265
  %26 = load i64, i64* %3, align 8, !dbg !4267, !tbaa !536
  %27 = add nsw i64 %26, -1, !dbg !4269
  %28 = icmp eq i64 %27, %23, !dbg !4270
  br i1 %28, label %33, label %29, !dbg !4271

; <label>:29:                                     ; preds = %22
  %30 = load i8*, i8** %0, align 8, !dbg !4272, !tbaa !997
  %31 = call i8* @sdscatlen(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.169, i64 0, i64 0), i64 1) #8, !dbg !4273
  store i8* %31, i8** %0, align 8, !dbg !4274, !tbaa !997
  %32 = load i64, i64* %3, align 8, !dbg !4260, !tbaa !536
  br label %33, !dbg !4275

; <label>:33:                                     ; preds = %22, %29
  %34 = phi i64 [ %26, %22 ], [ %32, %29 ], !dbg !4260
  %35 = add nuw nsw i64 %23, 1, !dbg !4276
  %36 = icmp sgt i64 %34, %35, !dbg !4263
  br i1 %36, label %22, label %37, !dbg !4264, !llvm.loop !4277

; <label>:37:                                     ; preds = %33
  %38 = load i8*, i8** %0, align 8, !dbg !4279, !tbaa !997
  br label %39, !dbg !4279

; <label>:39:                                     ; preds = %37, %18
  %40 = phi i8* [ %19, %18 ], [ %38, %37 ], !dbg !4279
  %41 = phi i8* [ %12, %18 ], [ %25, %37 ], !dbg !4280
  %42 = call i8* @sdscatlen(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.170, i64 0, i64 0), i64 1) #8, !dbg !4281
  br label %43, !dbg !4282

; <label>:43:                                     ; preds = %39, %16
  %44 = phi i8* [ %42, %39 ], [ %17, %16 ]
  %45 = phi i8* [ %41, %39 ], [ %12, %16 ], !dbg !4253
  store i8* %44, i8** %0, align 8, !dbg !4283, !tbaa !997
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7, !dbg !4284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4284
  ret i8* %45, !dbg !4284
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbPrint(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !4285 {
  %3 = alloca %struct.lua_Debug, align 8
  %4 = bitcast %struct.lua_Debug* %3 to i8*, !dbg !4296
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %4) #7, !dbg !4296
  %5 = call i32 @lua_getstack(%struct.lua_State* %0, i32 0, %struct.lua_Debug* nonnull %3) #8, !dbg !4299
  %6 = icmp eq i32 %5, 0, !dbg !4300
  br i1 %6, label %27, label %10, !dbg !4301

; <label>:7:                                      ; preds = %23, %10
  %8 = call i32 @lua_getstack(%struct.lua_State* %0, i32 %12, %struct.lua_Debug* nonnull %3) #8, !dbg !4299
  %9 = icmp eq i32 %8, 0, !dbg !4300
  br i1 %9, label %27, label %10, !dbg !4301

; <label>:10:                                     ; preds = %2, %7
  %11 = phi i32 [ %12, %7 ], [ 0, %2 ]
  %12 = add nuw nsw i32 %11, 1, !dbg !4302
  %13 = call i8* @lua_getlocal(%struct.lua_State* %0, %struct.lua_Debug* nonnull %3, i32 1) #8, !dbg !4304
  %14 = icmp eq i8* %13, null, !dbg !4306
  br i1 %14, label %7, label %15, !dbg !4307

; <label>:15:                                     ; preds = %10, %23
  %16 = phi i8* [ %25, %23 ], [ %13, %10 ]
  %17 = phi i32 [ %24, %23 ], [ 1, %10 ]
  %18 = call i32 @strcmp(i8* %1, i8* nonnull %16) #8, !dbg !4308
  %19 = icmp eq i32 %18, 0, !dbg !4311
  br i1 %19, label %20, label %23, !dbg !4312

; <label>:20:                                     ; preds = %15
  %21 = call i8* @sdsnew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i64 0, i64 0)) #8, !dbg !4317
  %22 = call i8* @ldbCatStackValueRec(i8* %21, %struct.lua_State* %0, i32 -1, i32 0) #8, !dbg !4323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4324
  call void @ldbLogWithMaxLen(i8* %22) #8, !dbg !4325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4326
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !4327
  br label %40

; <label>:23:                                     ; preds = %15
  %24 = add nuw nsw i32 %17, 1, !dbg !4328
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !4329
  %25 = call i8* @lua_getlocal(%struct.lua_State* %0, %struct.lua_Debug* nonnull %3, i32 %24) #8, !dbg !4304
  %26 = icmp eq i8* %25, null, !dbg !4306
  br i1 %26, label %7, label %15, !dbg !4307, !llvm.loop !4331

; <label>:27:                                     ; preds = %7, %2
  %28 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i64 0, i64 0)) #8, !dbg !4333
  %29 = icmp eq i32 %28, 0, !dbg !4333
  br i1 %29, label %33, label %30, !dbg !4335

; <label>:30:                                     ; preds = %27
  %31 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0)) #8, !dbg !4336
  %32 = icmp eq i32 %31, 0, !dbg !4336
  br i1 %32, label %33, label %36, !dbg !4337

; <label>:33:                                     ; preds = %30, %27
  call void @lua_getfield(%struct.lua_State* %0, i32 -10002, i8* %1) #8, !dbg !4338
  %34 = call i8* @sdsnew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i64 0, i64 0)) #8, !dbg !4343
  %35 = call i8* @ldbCatStackValueRec(i8* %34, %struct.lua_State* %0, i32 -1, i32 0) #8, !dbg !4349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4350
  call void @ldbLogWithMaxLen(i8* %35) #8, !dbg !4351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4352
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !4353
  br label %40, !dbg !4354

; <label>:36:                                     ; preds = %30
  %37 = call i8* @sdsnew(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.173, i64 0, i64 0)) #8, !dbg !4355
  %38 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4359, !tbaa !781
  %39 = call %struct.list* @listAddNodeTail(%struct.list* %38, i8* %37) #8, !dbg !4360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4361
  br label %40

; <label>:40:                                     ; preds = %33, %36, %20
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %4) #7, !dbg !4362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4362
  ret void, !dbg !4362
}

; Function Attrs: noredzone
declare dso_local i8* @lua_getlocal(%struct.lua_State*, %struct.lua_Debug*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbPrintAll(%struct.lua_State*) local_unnamed_addr #0 !dbg !4363 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !4377
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %3) #7, !dbg !4377
  %4 = call i32 @lua_getstack(%struct.lua_State* %0, i32 0, %struct.lua_Debug* nonnull %2) #8, !dbg !4380
  %5 = icmp eq i32 %4, 0, !dbg !4381
  br i1 %5, label %28, label %6, !dbg !4382

; <label>:6:                                      ; preds = %1
  %7 = call i8* @lua_getlocal(%struct.lua_State* %0, %struct.lua_Debug* nonnull %2, i32 1) #8, !dbg !4384
  %8 = icmp eq i8* %7, null, !dbg !4386
  br i1 %8, label %28, label %9, !dbg !4387

; <label>:9:                                      ; preds = %6, %22
  %10 = phi i8* [ %24, %22 ], [ %7, %6 ]
  %11 = phi i32 [ %23, %22 ], [ 0, %6 ]
  %12 = phi i32 [ %13, %22 ], [ 1, %6 ]
  %13 = add nuw nsw i32 %12, 1, !dbg !4388
  %14 = call i8* @strstr(i8* nonnull %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.174, i64 0, i64 0)) #8, !dbg !4389
  %15 = icmp eq i8* %14, null, !dbg !4389
  br i1 %15, label %16, label %22, !dbg !4390

; <label>:16:                                     ; preds = %9
  %17 = call i8* @sdsempty() #8, !dbg !4391
  %18 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.175, i64 0, i64 0), i8* nonnull %10) #8, !dbg !4392
  %19 = call i8* @sdsnew(i8* %18) #8, !dbg !4397
  %20 = call i8* @ldbCatStackValueRec(i8* %19, %struct.lua_State* %0, i32 -1, i32 0) #8, !dbg !4403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4404
  call void @ldbLogWithMaxLen(i8* %20) #8, !dbg !4405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4406
  call void @sdsfree(i8* %18) #8, !dbg !4407
  %21 = add nsw i32 %11, 1, !dbg !4408
  br label %22, !dbg !4409

; <label>:22:                                     ; preds = %9, %16
  %23 = phi i32 [ %11, %9 ], [ %21, %16 ], !dbg !4410
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !4411
  %24 = call i8* @lua_getlocal(%struct.lua_State* %0, %struct.lua_Debug* nonnull %2, i32 %13) #8, !dbg !4384
  %25 = icmp eq i8* %24, null, !dbg !4386
  br i1 %25, label %26, label %9, !dbg !4387, !llvm.loop !4412

; <label>:26:                                     ; preds = %22
  %27 = icmp eq i32 %23, 0, !dbg !4414
  br i1 %27, label %28, label %32, !dbg !4416

; <label>:28:                                     ; preds = %6, %1, %26
  %29 = call i8* @sdsnew(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.176, i64 0, i64 0)) #8, !dbg !4417
  %30 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4421, !tbaa !781
  %31 = call %struct.list* @listAddNodeTail(%struct.list* %30, i8* %29) #8, !dbg !4422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4423
  br label %32, !dbg !4424

; <label>:32:                                     ; preds = %28, %26
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %3) #7, !dbg !4425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4425
  ret void, !dbg !4425
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbBreak(i8** nocapture readonly, i32) local_unnamed_addr #0 !dbg !4426 {
  %3 = alloca i64, align 8
  %4 = icmp eq i32 %1, 1, !dbg !4446
  br i1 %4, label %10, label %5, !dbg !4447

; <label>:5:                                      ; preds = %2
  %6 = icmp sgt i32 %1, 1, !dbg !4449
  br i1 %6, label %7, label %167, !dbg !4450

; <label>:7:                                      ; preds = %5
  %8 = bitcast i64* %3 to i8*
  %9 = zext i32 %1 to i64
  br label %33, !dbg !4450

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4451, !tbaa !2830
  %12 = icmp eq i32 %11, 0, !dbg !4452
  br i1 %12, label %13, label %17, !dbg !4453

; <label>:13:                                     ; preds = %10
  %14 = tail call i8* @sdsnew(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.177, i64 0, i64 0)) #8, !dbg !4454
  %15 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4458, !tbaa !781
  %16 = tail call %struct.list* @listAddNodeTail(%struct.list* %15, i8* %14) #8, !dbg !4459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4460
  br label %167, !dbg !4461

; <label>:17:                                     ; preds = %10
  %18 = tail call i8* @sdsempty() #8, !dbg !4462
  %19 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4463, !tbaa !2830
  %20 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.178, i64 0, i64 0), i32 %19) #8, !dbg !4464
  %21 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4467, !tbaa !781
  %22 = tail call %struct.list* @listAddNodeTail(%struct.list* %21, i8* %20) #8, !dbg !4468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4469
  %23 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4471, !tbaa !2830
  %24 = icmp sgt i32 %23, 0, !dbg !4474
  br i1 %24, label %25, label %167, !dbg !4475

; <label>:25:                                     ; preds = %17, %25
  %26 = phi i64 [ %29, %25 ], [ 0, %17 ]
  %27 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %26, !dbg !4476
  %28 = load i32, i32* %27, align 4, !dbg !4476, !tbaa !973
  tail call void @ldbLogSourceLine(i32 %28) #9, !dbg !4477
  %29 = add nuw nsw i64 %26, 1, !dbg !4478
  %30 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4471, !tbaa !2830
  %31 = sext i32 %30 to i64, !dbg !4474
  %32 = icmp slt i64 %29, %31, !dbg !4474
  br i1 %32, label %25, label %167, !dbg !4475, !llvm.loop !4479

; <label>:33:                                     ; preds = %164, %7
  %34 = phi i64 [ 1, %7 ], [ %165, %164 ]
  %35 = getelementptr inbounds i8*, i8** %0, i64 %34, !dbg !4481
  %36 = load i8*, i8** %35, align 8, !dbg !4481, !tbaa !997
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !4483
  %37 = getelementptr inbounds i8, i8* %36, i64 -1, !dbg !4487
  %38 = load i8, i8* %37, align 1, !dbg !4487, !tbaa !485
  %39 = trunc i8 %38 to i3, !dbg !4489
  switch i3 %39, label %61 [
    i3 0, label %40
    i3 1, label %43
    i3 2, label %47
    i3 3, label %52
    i3 -4, label %57
  ], !dbg !4489

; <label>:40:                                     ; preds = %33
  %41 = lshr i8 %38, 3, !dbg !4490
  %42 = zext i8 %41 to i64, !dbg !4490
  br label %61, !dbg !4491

; <label>:43:                                     ; preds = %33
  %44 = getelementptr inbounds i8, i8* %36, i64 -3, !dbg !4492
  %45 = load i8, i8* %44, align 1, !dbg !4493, !tbaa !485
  %46 = zext i8 %45 to i64, !dbg !4492
  br label %61, !dbg !4494

; <label>:47:                                     ; preds = %33
  %48 = getelementptr inbounds i8, i8* %36, i64 -5, !dbg !4495
  %49 = bitcast i8* %48 to i16*, !dbg !4496
  %50 = load i16, i16* %49, align 1, !dbg !4496, !tbaa !1076
  %51 = zext i16 %50 to i64, !dbg !4495
  br label %61, !dbg !4497

; <label>:52:                                     ; preds = %33
  %53 = getelementptr inbounds i8, i8* %36, i64 -9, !dbg !4498
  %54 = bitcast i8* %53 to i32*, !dbg !4499
  %55 = load i32, i32* %54, align 1, !dbg !4499, !tbaa !973
  %56 = zext i32 %55 to i64, !dbg !4498
  br label %61, !dbg !4500

; <label>:57:                                     ; preds = %33
  %58 = getelementptr inbounds i8, i8* %36, i64 -17, !dbg !4501
  %59 = bitcast i8* %58 to i64*, !dbg !4502
  %60 = load i64, i64* %59, align 1, !dbg !4502, !tbaa !1019
  br label %61, !dbg !4503

; <label>:61:                                     ; preds = %33, %40, %43, %47, %52, %57
  %62 = phi i64 [ %60, %57 ], [ %56, %52 ], [ %51, %47 ], [ %46, %43 ], [ %42, %40 ], [ 0, %33 ], !dbg !4504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4505
  %63 = call i32 @string2l(i8* %36, i64 %62, i64* nonnull %3) #8, !dbg !4507
  %64 = icmp eq i32 %63, 0, !dbg !4507
  br i1 %64, label %65, label %70, !dbg !4508

; <label>:65:                                     ; preds = %61
  %66 = call i8* @sdsempty() #8, !dbg !4509
  %67 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.179, i64 0, i64 0), i8* %36) #8, !dbg !4511
  %68 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4514, !tbaa !781
  %69 = call %struct.list* @listAddNodeTail(%struct.list* %68, i8* %67) #8, !dbg !4515
  br label %164, !dbg !4516

; <label>:70:                                     ; preds = %61
  %71 = load i64, i64* %3, align 8, !dbg !4517, !tbaa !1019
  %72 = icmp eq i64 %71, 0, !dbg !4520
  br i1 %72, label %73, label %77, !dbg !4521

; <label>:73:                                     ; preds = %70
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4522, !tbaa !2830
  %74 = call i8* @sdsnew(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.180, i64 0, i64 0)) #8, !dbg !4524
  %75 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4527, !tbaa !781
  %76 = call %struct.list* @listAddNodeTail(%struct.list* %75, i8* %74) #8, !dbg !4528
  br label %164, !dbg !4529

; <label>:77:                                     ; preds = %70
  %78 = icmp sgt i64 %71, 0, !dbg !4530
  br i1 %78, label %79, label %131, !dbg !4532

; <label>:79:                                     ; preds = %77
  %80 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4533, !tbaa !2830
  %81 = icmp eq i32 %80, 64, !dbg !4536
  br i1 %81, label %82, label %86, !dbg !4537

; <label>:82:                                     ; preds = %79
  %83 = call i8* @sdsnew(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.181, i64 0, i64 0)) #8, !dbg !4538
  %84 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4542, !tbaa !781
  %85 = call %struct.list* @listAddNodeTail(%struct.list* %84, i8* %83) #8, !dbg !4543
  br label %164, !dbg !4544

; <label>:86:                                     ; preds = %79
  %87 = trunc i64 %71 to i32, !dbg !4545
  %88 = icmp slt i32 %87, 1, !dbg !4549
  %89 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !4550
  %90 = icmp slt i32 %89, %87, !dbg !4551
  %91 = or i1 %88, %90, !dbg !4552
  br i1 %91, label %127, label %92, !dbg !4552

; <label>:92:                                     ; preds = %86
  %93 = icmp sgt i32 %80, 0, !dbg !4556
  br i1 %93, label %96, label %94, !dbg !4557

; <label>:94:                                     ; preds = %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4558
  %95 = sext i32 %80 to i64, !dbg !4559
  br label %108, !dbg !4560

; <label>:96:                                     ; preds = %92
  %97 = sext i32 %80 to i64, !dbg !4557
  br label %100, !dbg !4557

; <label>:98:                                     ; preds = %100
  %99 = icmp slt i64 %105, %97, !dbg !4556
  br i1 %99, label %100, label %107, !dbg !4557, !llvm.loop !2833

; <label>:100:                                    ; preds = %98, %96
  %101 = phi i64 [ 0, %96 ], [ %105, %98 ]
  %102 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %101, !dbg !4561
  %103 = load i32, i32* %102, align 4, !dbg !4561, !tbaa !973
  %104 = icmp eq i32 %103, %87, !dbg !4562
  %105 = add nuw nsw i64 %101, 1, !dbg !4563
  br i1 %104, label %106, label %98, !dbg !4564

; <label>:106:                                    ; preds = %100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4558
  br label %127, !dbg !4560

; <label>:107:                                    ; preds = %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4558
  br label %108, !dbg !4560

; <label>:108:                                    ; preds = %107, %94
  %109 = phi i64 [ %97, %107 ], [ %95, %94 ], !dbg !4559
  %110 = add nsw i32 %80, 1, !dbg !4565
  store i32 %110, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4565, !tbaa !2830
  %111 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %109, !dbg !4559
  store i32 %87, i32* %111, align 4, !dbg !4566, !tbaa !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4567
  %112 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !4573, !tbaa !2044
  %113 = icmp slt i32 %112, 1, !dbg !4574
  br i1 %113, label %164, label %114, !dbg !4575

; <label>:114:                                    ; preds = %108
  %115 = icmp eq i32 %87, 0
  br label %116, !dbg !4575

; <label>:116:                                    ; preds = %123, %114
  %117 = phi i32 [ 1, %114 ], [ %124, %123 ]
  br i1 %115, label %122, label %118, !dbg !4576

; <label>:118:                                    ; preds = %116
  %119 = sub nsw i32 %87, %117, !dbg !4577
  %120 = call i32 @abs(i32 %119) #8, !dbg !4578
  %121 = icmp sgt i32 %120, 1, !dbg !4579
  br i1 %121, label %123, label %122, !dbg !4580

; <label>:122:                                    ; preds = %118, %116
  call void @ldbLogSourceLine(i32 %117) #8, !dbg !4581
  br label %123, !dbg !4582

; <label>:123:                                    ; preds = %122, %118
  %124 = add nuw nsw i32 %117, 1, !dbg !4583
  %125 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !4573, !tbaa !2044
  %126 = icmp slt i32 %117, %125, !dbg !4574
  br i1 %126, label %116, label %164, !dbg !4575, !llvm.loop !3908

; <label>:127:                                    ; preds = %86, %106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4567
  %128 = call i8* @sdsnew(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.182, i64 0, i64 0)) #8, !dbg !4584
  %129 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4588, !tbaa !781
  %130 = call %struct.list* @listAddNodeTail(%struct.list* %129, i8* %128) #8, !dbg !4589
  br label %164

; <label>:131:                                    ; preds = %77
  %132 = trunc i64 %71 to i32, !dbg !4590
  %133 = sub i32 0, %132, !dbg !4590
  %134 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4597, !tbaa !2830
  %135 = icmp sgt i32 %134, 0, !dbg !4598
  br i1 %135, label %136, label %160, !dbg !4599

; <label>:136:                                    ; preds = %131
  %137 = sext i32 %134 to i64, !dbg !4599
  br label %138, !dbg !4599

; <label>:138:                                    ; preds = %143, %136
  %139 = phi i64 [ 0, %136 ], [ %144, %143 ]
  %140 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %139, !dbg !4600
  %141 = load i32, i32* %140, align 4, !dbg !4600, !tbaa !973
  %142 = icmp eq i32 %141, %133, !dbg !4601
  br i1 %142, label %146, label %143, !dbg !4602

; <label>:143:                                    ; preds = %138
  %144 = add nuw nsw i64 %139, 1, !dbg !4603
  %145 = icmp slt i64 %144, %137, !dbg !4598
  br i1 %145, label %138, label %160, !dbg !4599, !llvm.loop !3728

; <label>:146:                                    ; preds = %138
  %147 = trunc i64 %139 to i32, !dbg !4596
  %148 = and i64 %139, 4294967295, !dbg !4600
  %149 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %148, !dbg !4600
  %150 = add nsw i32 %134, -1, !dbg !4604
  store i32 %150, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4604, !tbaa !2830
  %151 = bitcast i32* %149 to i8*, !dbg !4605
  %152 = getelementptr inbounds i32, i32* %149, i64 1, !dbg !4606
  %153 = bitcast i32* %152 to i8*, !dbg !4607
  %154 = sub nsw i32 %150, %147, !dbg !4608
  %155 = sext i32 %154 to i64, !dbg !4609
  %156 = call i8* @memmove(i8* nonnull %151, i8* nonnull %153, i64 %155) #8, !dbg !4610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4611
  %157 = call i8* @sdsnew(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.183, i64 0, i64 0)) #8, !dbg !4612
  %158 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4615, !tbaa !781
  %159 = call %struct.list* @listAddNodeTail(%struct.list* %158, i8* %157) #8, !dbg !4616
  br label %164, !dbg !4617

; <label>:160:                                    ; preds = %143, %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4611
  %161 = call i8* @sdsnew(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.184, i64 0, i64 0)) #8, !dbg !4618
  %162 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4621, !tbaa !781
  %163 = call %struct.list* @listAddNodeTail(%struct.list* %162, i8* %161) #8, !dbg !4622
  br label %164

; <label>:164:                                    ; preds = %123, %108, %73, %160, %146, %82, %127, %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4623
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !4624
  %165 = add nuw nsw i64 %34, 1, !dbg !4625
  %166 = icmp eq i64 %165, %9, !dbg !4449
  br i1 %166, label %167, label %33, !dbg !4450, !llvm.loop !4626

; <label>:167:                                    ; preds = %164, %25, %5, %17, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4628
  ret void, !dbg !4628
}

; Function Attrs: noredzone
declare dso_local i32 @string2l(i8*, i64, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbEval(%struct.lua_State*, i8**, i32) local_unnamed_addr #0 !dbg !4629 {
  %4 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !4641
  %5 = add nsw i32 %2, -1, !dbg !4642
  %6 = tail call i8* @sdsjoinsds(i8** nonnull %4, i32 %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #8, !dbg !4643
  %7 = tail call i8* @sdsnew(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.185, i64 0, i64 0)) #8, !dbg !4645
  %8 = tail call i8* @sdscatsds(i8* %7, i8* %6) #8, !dbg !4646
  %9 = getelementptr inbounds i8, i8* %8, i64 -1, !dbg !4651
  %10 = load i8, i8* %9, align 1, !dbg !4651, !tbaa !485
  %11 = trunc i8 %10 to i3, !dbg !4653
  switch i3 %11, label %33 [
    i3 0, label %12
    i3 1, label %15
    i3 2, label %19
    i3 3, label %24
    i3 -4, label %29
  ], !dbg !4653

; <label>:12:                                     ; preds = %3
  %13 = lshr i8 %10, 3, !dbg !4654
  %14 = zext i8 %13 to i64, !dbg !4654
  br label %33, !dbg !4655

; <label>:15:                                     ; preds = %3
  %16 = getelementptr inbounds i8, i8* %8, i64 -3, !dbg !4656
  %17 = load i8, i8* %16, align 1, !dbg !4657, !tbaa !485
  %18 = zext i8 %17 to i64, !dbg !4656
  br label %33, !dbg !4658

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds i8, i8* %8, i64 -5, !dbg !4659
  %21 = bitcast i8* %20 to i16*, !dbg !4660
  %22 = load i16, i16* %21, align 1, !dbg !4660, !tbaa !1076
  %23 = zext i16 %22 to i64, !dbg !4659
  br label %33, !dbg !4661

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds i8, i8* %8, i64 -9, !dbg !4662
  %26 = bitcast i8* %25 to i32*, !dbg !4663
  %27 = load i32, i32* %26, align 1, !dbg !4663, !tbaa !973
  %28 = zext i32 %27 to i64, !dbg !4662
  br label %33, !dbg !4664

; <label>:29:                                     ; preds = %3
  %30 = getelementptr inbounds i8, i8* %8, i64 -17, !dbg !4665
  %31 = bitcast i8* %30 to i64*, !dbg !4666
  %32 = load i64, i64* %31, align 1, !dbg !4666, !tbaa !1019
  br label %33, !dbg !4667

; <label>:33:                                     ; preds = %3, %12, %15, %19, %24, %29
  %34 = phi i64 [ %32, %29 ], [ %28, %24 ], [ %23, %19 ], [ %18, %15 ], [ %14, %12 ], [ 0, %3 ], !dbg !4668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4669
  %35 = tail call i32 @luaL_loadbuffer(%struct.lua_State* %0, i8* %8, i64 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.186, i64 0, i64 0)) #8, !dbg !4670
  %36 = icmp eq i32 %35, 0, !dbg !4670
  br i1 %36, label %72, label %37, !dbg !4671

; <label>:37:                                     ; preds = %33
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !4672
  %38 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !4677
  %39 = load i8, i8* %38, align 1, !dbg !4677, !tbaa !485
  %40 = trunc i8 %39 to i3, !dbg !4679
  switch i3 %40, label %62 [
    i3 0, label %41
    i3 1, label %44
    i3 2, label %48
    i3 3, label %53
    i3 -4, label %58
  ], !dbg !4679

; <label>:41:                                     ; preds = %37
  %42 = lshr i8 %39, 3, !dbg !4680
  %43 = zext i8 %42 to i64, !dbg !4680
  br label %62, !dbg !4681

; <label>:44:                                     ; preds = %37
  %45 = getelementptr inbounds i8, i8* %6, i64 -3, !dbg !4682
  %46 = load i8, i8* %45, align 1, !dbg !4683, !tbaa !485
  %47 = zext i8 %46 to i64, !dbg !4682
  br label %62, !dbg !4684

; <label>:48:                                     ; preds = %37
  %49 = getelementptr inbounds i8, i8* %6, i64 -5, !dbg !4685
  %50 = bitcast i8* %49 to i16*, !dbg !4686
  %51 = load i16, i16* %50, align 1, !dbg !4686, !tbaa !1076
  %52 = zext i16 %51 to i64, !dbg !4685
  br label %62, !dbg !4687

; <label>:53:                                     ; preds = %37
  %54 = getelementptr inbounds i8, i8* %6, i64 -9, !dbg !4688
  %55 = bitcast i8* %54 to i32*, !dbg !4689
  %56 = load i32, i32* %55, align 1, !dbg !4689, !tbaa !973
  %57 = zext i32 %56 to i64, !dbg !4688
  br label %62, !dbg !4690

; <label>:58:                                     ; preds = %37
  %59 = getelementptr inbounds i8, i8* %6, i64 -17, !dbg !4691
  %60 = bitcast i8* %59 to i64*, !dbg !4692
  %61 = load i64, i64* %60, align 1, !dbg !4692, !tbaa !1019
  br label %62, !dbg !4693

; <label>:62:                                     ; preds = %37, %41, %44, %48, %53, %58
  %63 = phi i64 [ %61, %58 ], [ %57, %53 ], [ %52, %48 ], [ %47, %44 ], [ %43, %41 ], [ 0, %37 ], !dbg !4694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4695
  %64 = tail call i32 @luaL_loadbuffer(%struct.lua_State* %0, i8* nonnull %6, i64 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.186, i64 0, i64 0)) #8, !dbg !4696
  %65 = icmp eq i32 %64, 0, !dbg !4696
  br i1 %65, label %72, label %66, !dbg !4697

; <label>:66:                                     ; preds = %62
  %67 = tail call i8* @sdsempty() #8, !dbg !4698
  %68 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #8, !dbg !4700
  %69 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %68) #8, !dbg !4701
  %70 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4704, !tbaa !781
  %71 = tail call %struct.list* @listAddNodeTail(%struct.list* %70, i8* %69) #8, !dbg !4705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4706
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !4707
  tail call void @sdsfree(i8* nonnull %6) #8, !dbg !4708
  br label %84, !dbg !4709

; <label>:72:                                     ; preds = %62, %33
  tail call void @sdsfree(i8* %6) #8, !dbg !4710
  tail call void @sdsfree(i8* %8) #8, !dbg !4711
  %73 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 0, i32 1, i32 0) #8, !dbg !4712
  %74 = icmp eq i32 %73, 0, !dbg !4712
  br i1 %74, label %81, label %75, !dbg !4714

; <label>:75:                                     ; preds = %72
  %76 = tail call i8* @sdsempty() #8, !dbg !4715
  %77 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #8, !dbg !4717
  %78 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %77) #8, !dbg !4718
  %79 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4721, !tbaa !781
  %80 = tail call %struct.list* @listAddNodeTail(%struct.list* %79, i8* %78) #8, !dbg !4722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4723
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !4724
  br label %84, !dbg !4725

; <label>:81:                                     ; preds = %72
  %82 = tail call i8* @sdsnew(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.187, i64 0, i64 0)) #8, !dbg !4729
  %83 = tail call i8* @ldbCatStackValueRec(i8* %82, %struct.lua_State* %0, i32 -1, i32 0) #8, !dbg !4735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4736
  tail call void @ldbLogWithMaxLen(i8* %83) #8, !dbg !4737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4738
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !4739
  br label %84, !dbg !4740

; <label>:84:                                     ; preds = %81, %75, %66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4740
  ret void, !dbg !4740
}

; Function Attrs: noredzone
declare dso_local i8* @sdsjoinsds(i8**, i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbRedis(%struct.lua_State*, i8** nocapture readonly, i32) local_unnamed_addr #0 !dbg !4741 {
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !4751, !tbaa !1309
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0)) #8, !dbg !4753
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0)) #8, !dbg !4754
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -2) #8, !dbg !4755
  %5 = icmp sgt i32 %2, 1, !dbg !4757
  br i1 %5, label %6, label %40, !dbg !4760

; <label>:6:                                      ; preds = %3
  %7 = zext i32 %2 to i64
  br label %8, !dbg !4761

; <label>:8:                                      ; preds = %36, %6
  %9 = phi i64 [ 1, %6 ], [ %38, %36 ]
  %10 = getelementptr inbounds i8*, i8** %1, i64 %9, !dbg !4761
  %11 = load i8*, i8** %10, align 8, !dbg !4761, !tbaa !997
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !4764
  %13 = load i8, i8* %12, align 1, !dbg !4764, !tbaa !485
  %14 = trunc i8 %13 to i3, !dbg !4766
  switch i3 %14, label %36 [
    i3 0, label %15
    i3 1, label %18
    i3 2, label %22
    i3 3, label %27
    i3 -4, label %32
  ], !dbg !4766

; <label>:15:                                     ; preds = %8
  %16 = lshr i8 %13, 3, !dbg !4767
  %17 = zext i8 %16 to i64, !dbg !4767
  br label %36, !dbg !4768

; <label>:18:                                     ; preds = %8
  %19 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !4769
  %20 = load i8, i8* %19, align 1, !dbg !4770, !tbaa !485
  %21 = zext i8 %20 to i64, !dbg !4769
  br label %36, !dbg !4771

; <label>:22:                                     ; preds = %8
  %23 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !4772
  %24 = bitcast i8* %23 to i16*, !dbg !4773
  %25 = load i16, i16* %24, align 1, !dbg !4773, !tbaa !1076
  %26 = zext i16 %25 to i64, !dbg !4772
  br label %36, !dbg !4774

; <label>:27:                                     ; preds = %8
  %28 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !4775
  %29 = bitcast i8* %28 to i32*, !dbg !4776
  %30 = load i32, i32* %29, align 1, !dbg !4776, !tbaa !973
  %31 = zext i32 %30 to i64, !dbg !4775
  br label %36, !dbg !4777

; <label>:32:                                     ; preds = %8
  %33 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !4778
  %34 = bitcast i8* %33 to i64*, !dbg !4779
  %35 = load i64, i64* %34, align 1, !dbg !4779, !tbaa !1019
  br label %36, !dbg !4780

; <label>:36:                                     ; preds = %8, %15, %18, %22, %27, %32
  %37 = phi i64 [ %35, %32 ], [ %31, %27 ], [ %26, %22 ], [ %21, %18 ], [ %17, %15 ], [ 0, %8 ], !dbg !4781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4782
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %11, i64 %37) #8, !dbg !4783
  %38 = add nuw nsw i64 %9, 1, !dbg !4784
  %39 = icmp eq i64 %38, %7, !dbg !4757
  br i1 %39, label %40, label %8, !dbg !4760, !llvm.loop !4785

; <label>:40:                                     ; preds = %36, %3
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !4787, !tbaa !2870
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !4788, !tbaa !1309
  %41 = add nsw i32 %2, -1, !dbg !4789
  %42 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 %41, i32 1, i32 0) #8, !dbg !4790
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !4791, !tbaa !2870
  store i32 %4, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !4792, !tbaa !1309
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #8, !dbg !4793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4794
  ret void, !dbg !4794
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbTrace(%struct.lua_State*) local_unnamed_addr #0 !dbg !4795 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !4801
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %3) #7, !dbg !4801
  %4 = call i32 @lua_getstack(%struct.lua_State* %0, i32 0, %struct.lua_Debug* nonnull %2) #8, !dbg !4804
  %5 = icmp eq i32 %4, 0, !dbg !4805
  br i1 %5, label %30, label %6, !dbg !4805

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9, i64 0
  %8 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1
  %9 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5
  br label %10, !dbg !4805

; <label>:10:                                     ; preds = %6, %26
  %11 = phi i32 [ 0, %6 ], [ %27, %26 ]
  %12 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.188, i64 0, i64 0), %struct.lua_Debug* nonnull %2) #8, !dbg !4806
  %13 = call i8* @strstr(i8* nonnull %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.189, i64 0, i64 0)) #8, !dbg !4808
  %14 = icmp eq i8* %13, null, !dbg !4810
  br i1 %14, label %26, label %15, !dbg !4811

; <label>:15:                                     ; preds = %10
  %16 = call i8* @sdsempty() #8, !dbg !4812
  %17 = icmp eq i32 %11, 0, !dbg !4814
  %18 = select i1 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.191, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.192, i64 0, i64 0), !dbg !4815
  %19 = load i8*, i8** %8, align 8, !dbg !4816, !tbaa !4817
  %20 = icmp eq i8* %19, null, !dbg !4818
  %21 = select i1 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.193, i64 0, i64 0), i8* %19, !dbg !4818
  %22 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.190, i64 0, i64 0), i8* %18, i8* %21) #8, !dbg !4819
  %23 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4822, !tbaa !781
  %24 = call %struct.list* @listAddNodeTail(%struct.list* %23, i8* %22) #8, !dbg !4823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4824
  %25 = load i32, i32* %9, align 8, !dbg !4825, !tbaa !797
  call void @ldbLogSourceLine(i32 %25) #9, !dbg !4826
  br label %26, !dbg !4827

; <label>:26:                                     ; preds = %10, %15
  %27 = add nuw nsw i32 %11, 1, !dbg !4828
  %28 = call i32 @lua_getstack(%struct.lua_State* %0, i32 %27, %struct.lua_Debug* nonnull %2) #8, !dbg !4804
  %29 = icmp eq i32 %28, 0, !dbg !4805
  br i1 %29, label %34, label %10, !dbg !4805, !llvm.loop !4829

; <label>:30:                                     ; preds = %1
  %31 = call i8* @sdsnew(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.194, i64 0, i64 0)) #8, !dbg !4831
  %32 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4836, !tbaa !781
  %33 = call %struct.list* @listAddNodeTail(%struct.list* %32, i8* %31) #8, !dbg !4837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4838
  br label %34, !dbg !4839

; <label>:34:                                     ; preds = %26, %30
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %3) #7, !dbg !4840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4840
  ret void, !dbg !4840
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbMaxlen(i8** nocapture readonly, i32) local_unnamed_addr #0 !dbg !4841 {
  %3 = icmp eq i32 %1, 2, !dbg !4850
  br i1 %3, label %4, label %13, !dbg !4851

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %0, i64 1, !dbg !4852
  %6 = load i8*, i8** %5, align 8, !dbg !4852, !tbaa !997
  %7 = tail call i32 @atoi(i8* %6) #8, !dbg !4853
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 15), align 8, !dbg !4855, !tbaa !3195
  %8 = icmp ne i32 %7, 0, !dbg !4856
  %9 = icmp slt i32 %7, 61, !dbg !4858
  %10 = and i1 %8, %9, !dbg !4859
  %11 = sext i32 %7 to i64, !dbg !4860
  %12 = select i1 %10, i64 60, i64 %11, !dbg !4860
  store i64 %12, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !4861, !tbaa !3193
  br label %15, !dbg !4862

; <label>:13:                                     ; preds = %2
  %14 = load i64, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !4863, !tbaa !3193
  br label %15, !dbg !4863

; <label>:15:                                     ; preds = %13, %4
  %16 = phi i64 [ %14, %13 ], [ %12, %4 ], !dbg !4863
  %17 = icmp eq i64 %16, 0, !dbg !4865
  %18 = tail call i8* @sdsempty() #8, !dbg !4866
  br i1 %17, label %25, label %19, !dbg !4868

; <label>:19:                                     ; preds = %15
  %20 = load i64, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !4869, !tbaa !3193
  %21 = trunc i64 %20 to i32, !dbg !4871
  %22 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.195, i64 0, i64 0), i32 %21) #8, !dbg !4872
  %23 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4875, !tbaa !781
  %24 = tail call %struct.list* @listAddNodeTail(%struct.list* %23, i8* %22) #8, !dbg !4876
  br label %29, !dbg !4877

; <label>:25:                                     ; preds = %15
  %26 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.196, i64 0, i64 0)) #8, !dbg !4878
  %27 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4881, !tbaa !781
  %28 = tail call %struct.list* @listAddNodeTail(%struct.list* %27, i8* %26) #8, !dbg !4882
  br label %29

; <label>:29:                                     ; preds = %25, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4884
  ret void, !dbg !4884
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ldbRepl(%struct.lua_State*) local_unnamed_addr #0 !dbg !4885 {
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  %4 = bitcast i32* %2 to i8*, !dbg !4915
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7, !dbg !4915
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  br label %6, !dbg !4916

; <label>:6:                                      ; preds = %266, %1
  %7 = call i8** @ldbReplParseCommand(i32* nonnull %2) #9, !dbg !4918
  %8 = icmp eq i8** %7, null, !dbg !4920
  br i1 %8, label %9, label %22, !dbg !4921

; <label>:9:                                      ; preds = %6, %15
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %5) #7, !dbg !4922
  %10 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !4924, !tbaa !2032
  %11 = call i64 @read(i32 %10, i8* nonnull %5, i64 1024) #8, !dbg !4925
  %12 = trunc i64 %11 to i32, !dbg !4925
  %13 = icmp slt i32 %12, 1, !dbg !4927
  br i1 %13, label %14, label %15, !dbg !4929

; <label>:14:                                     ; preds = %9
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !4930, !tbaa !2870
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4932, !tbaa !2830
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %5) #7, !dbg !4933
  br label %270

; <label>:15:                                     ; preds = %9
  %16 = load i8*, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !4934, !tbaa !2047
  %17 = shl i64 %11, 32, !dbg !4935
  %18 = ashr exact i64 %17, 32, !dbg !4935
  %19 = call i8* @sdscatlen(i8* %16, i8* nonnull %5, i64 %18) #8, !dbg !4936
  store i8* %19, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !4937, !tbaa !2047
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %5) #7, !dbg !4933
  %20 = call i8** @ldbReplParseCommand(i32* nonnull %2) #9, !dbg !4918
  %21 = icmp eq i8** %20, null, !dbg !4920
  br i1 %21, label %9, label %22, !dbg !4921

; <label>:22:                                     ; preds = %15, %6
  %23 = phi i8** [ %7, %6 ], [ %20, %15 ], !dbg !4918
  %24 = load i8*, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !4938, !tbaa !2047
  call void @sdsfree(i8* %24) #8, !dbg !4939
  %25 = call i8* @sdsempty() #8, !dbg !4940
  store i8* %25, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !4941, !tbaa !2047
  %26 = load i8*, i8** %23, align 8, !dbg !4942, !tbaa !997
  %27 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.197, i64 0, i64 0)) #11, !dbg !4943
  %28 = icmp eq i32 %27, 0, !dbg !4943
  br i1 %28, label %32, label %29, !dbg !4944

; <label>:29:                                     ; preds = %22
  %30 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i64 0, i64 0)) #11, !dbg !4945
  %31 = icmp eq i32 %30, 0, !dbg !4945
  br i1 %31, label %32, label %123, !dbg !4946

; <label>:32:                                     ; preds = %29, %22
  %33 = call i8* @sdsnew(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !4947
  %34 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4951, !tbaa !781
  %35 = call %struct.list* @listAddNodeTail(%struct.list* %34, i8* %33) #8, !dbg !4952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4953
  %36 = call i8* @sdsnew(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.199, i64 0, i64 0)) #8, !dbg !4954
  %37 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4957, !tbaa !781
  %38 = call %struct.list* @listAddNodeTail(%struct.list* %37, i8* %36) #8, !dbg !4958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4959
  %39 = call i8* @sdsnew(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.200, i64 0, i64 0)) #8, !dbg !4960
  %40 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4963, !tbaa !781
  %41 = call %struct.list* @listAddNodeTail(%struct.list* %40, i8* %39) #8, !dbg !4964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4965
  %42 = call i8* @sdsnew(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.201, i64 0, i64 0)) #8, !dbg !4966
  %43 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4969, !tbaa !781
  %44 = call %struct.list* @listAddNodeTail(%struct.list* %43, i8* %42) #8, !dbg !4970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4971
  %45 = call i8* @sdsnew(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.202, i64 0, i64 0)) #8, !dbg !4972
  %46 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4975, !tbaa !781
  %47 = call %struct.list* @listAddNodeTail(%struct.list* %46, i8* %45) #8, !dbg !4976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4977
  %48 = call i8* @sdsnew(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.203, i64 0, i64 0)) #8, !dbg !4978
  %49 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4981, !tbaa !781
  %50 = call %struct.list* @listAddNodeTail(%struct.list* %49, i8* %48) #8, !dbg !4982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4983
  %51 = call i8* @sdsnew(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.204, i64 0, i64 0)) #8, !dbg !4984
  %52 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4987, !tbaa !781
  %53 = call %struct.list* @listAddNodeTail(%struct.list* %52, i8* %51) #8, !dbg !4988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4989
  %54 = call i8* @sdsnew(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.205, i64 0, i64 0)) #8, !dbg !4990
  %55 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4993, !tbaa !781
  %56 = call %struct.list* @listAddNodeTail(%struct.list* %55, i8* %54) #8, !dbg !4994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4995
  %57 = call i8* @sdsnew(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.206, i64 0, i64 0)) #8, !dbg !4996
  %58 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4999, !tbaa !781
  %59 = call %struct.list* @listAddNodeTail(%struct.list* %58, i8* %57) #8, !dbg !5000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5001
  %60 = call i8* @sdsnew(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.207, i64 0, i64 0)) #8, !dbg !5002
  %61 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5005, !tbaa !781
  %62 = call %struct.list* @listAddNodeTail(%struct.list* %61, i8* %60) #8, !dbg !5006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5007
  %63 = call i8* @sdsnew(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.208, i64 0, i64 0)) #8, !dbg !5008
  %64 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5011, !tbaa !781
  %65 = call %struct.list* @listAddNodeTail(%struct.list* %64, i8* %63) #8, !dbg !5012
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5013
  %66 = call i8* @sdsnew(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.209, i64 0, i64 0)) #8, !dbg !5014
  %67 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5017, !tbaa !781
  %68 = call %struct.list* @listAddNodeTail(%struct.list* %67, i8* %66) #8, !dbg !5018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5019
  %69 = call i8* @sdsnew(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.210, i64 0, i64 0)) #8, !dbg !5020
  %70 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5023, !tbaa !781
  %71 = call %struct.list* @listAddNodeTail(%struct.list* %70, i8* %69) #8, !dbg !5024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5025
  %72 = call i8* @sdsnew(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.211, i64 0, i64 0)) #8, !dbg !5026
  %73 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5029, !tbaa !781
  %74 = call %struct.list* @listAddNodeTail(%struct.list* %73, i8* %72) #8, !dbg !5030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5031
  %75 = call i8* @sdsnew(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.212, i64 0, i64 0)) #8, !dbg !5032
  %76 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5035, !tbaa !781
  %77 = call %struct.list* @listAddNodeTail(%struct.list* %76, i8* %75) #8, !dbg !5036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5037
  %78 = call i8* @sdsnew(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.213, i64 0, i64 0)) #8, !dbg !5038
  %79 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5041, !tbaa !781
  %80 = call %struct.list* @listAddNodeTail(%struct.list* %79, i8* %78) #8, !dbg !5042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5043
  %81 = call i8* @sdsnew(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.214, i64 0, i64 0)) #8, !dbg !5044
  %82 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5047, !tbaa !781
  %83 = call %struct.list* @listAddNodeTail(%struct.list* %82, i8* %81) #8, !dbg !5048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5049
  %84 = call i8* @sdsnew(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.215, i64 0, i64 0)) #8, !dbg !5050
  %85 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5053, !tbaa !781
  %86 = call %struct.list* @listAddNodeTail(%struct.list* %85, i8* %84) #8, !dbg !5054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5055
  %87 = call i8* @sdsnew(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.216, i64 0, i64 0)) #8, !dbg !5056
  %88 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5059, !tbaa !781
  %89 = call %struct.list* @listAddNodeTail(%struct.list* %88, i8* %87) #8, !dbg !5060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5061
  %90 = call i8* @sdsnew(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.217, i64 0, i64 0)) #8, !dbg !5062
  %91 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5065, !tbaa !781
  %92 = call %struct.list* @listAddNodeTail(%struct.list* %91, i8* %90) #8, !dbg !5066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5067
  %93 = call i8* @sdsnew(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.218, i64 0, i64 0)) #8, !dbg !5068
  %94 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5071, !tbaa !781
  %95 = call %struct.list* @listAddNodeTail(%struct.list* %94, i8* %93) #8, !dbg !5072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5073
  %96 = call i8* @sdsnew(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.219, i64 0, i64 0)) #8, !dbg !5074
  %97 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5077, !tbaa !781
  %98 = call %struct.list* @listAddNodeTail(%struct.list* %97, i8* %96) #8, !dbg !5078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5079
  %99 = call i8* @sdsnew(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.220, i64 0, i64 0)) #8, !dbg !5080
  %100 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5083, !tbaa !781
  %101 = call %struct.list* @listAddNodeTail(%struct.list* %100, i8* %99) #8, !dbg !5084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5085
  %102 = call i8* @sdsnew(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.221, i64 0, i64 0)) #8, !dbg !5086
  %103 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5089, !tbaa !781
  %104 = call %struct.list* @listAddNodeTail(%struct.list* %103, i8* %102) #8, !dbg !5090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5091
  %105 = call i8* @sdsnew(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.222, i64 0, i64 0)) #8, !dbg !5092
  %106 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5095, !tbaa !781
  %107 = call %struct.list* @listAddNodeTail(%struct.list* %106, i8* %105) #8, !dbg !5096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5097
  %108 = call i8* @sdsnew(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)) #8, !dbg !5098
  %109 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5101, !tbaa !781
  %110 = call %struct.list* @listAddNodeTail(%struct.list* %109, i8* %108) #8, !dbg !5102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5103
  %111 = call i8* @sdsnew(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.223, i64 0, i64 0)) #8, !dbg !5104
  %112 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5107, !tbaa !781
  %113 = call %struct.list* @listAddNodeTail(%struct.list* %112, i8* %111) #8, !dbg !5108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5109
  %114 = call i8* @sdsnew(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.224, i64 0, i64 0)) #8, !dbg !5110
  %115 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5113, !tbaa !781
  %116 = call %struct.list* @listAddNodeTail(%struct.list* %115, i8* %114) #8, !dbg !5114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5115
  %117 = call i8* @sdsnew(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.225, i64 0, i64 0)) #8, !dbg !5116
  %118 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5119, !tbaa !781
  %119 = call %struct.list* @listAddNodeTail(%struct.list* %118, i8* %117) #8, !dbg !5120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5121
  %120 = call i8* @sdsnew(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.226, i64 0, i64 0)) #8, !dbg !5122
  %121 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5125, !tbaa !781
  %122 = call %struct.list* @listAddNodeTail(%struct.list* %121, i8* %120) #8, !dbg !5126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5127
  call void @ldbSendLogs() #9, !dbg !5128
  br label %266, !dbg !5129

; <label>:123:                                    ; preds = %29
  %124 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.227, i64 0, i64 0)) #11, !dbg !5130
  %125 = icmp eq i32 %124, 0, !dbg !5130
  br i1 %125, label %135, label %126, !dbg !5131

; <label>:126:                                    ; preds = %123
  %127 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.228, i64 0, i64 0)) #11, !dbg !5132
  %128 = icmp eq i32 %127, 0, !dbg !5132
  br i1 %128, label %135, label %129, !dbg !5133

; <label>:129:                                    ; preds = %126
  %130 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.229, i64 0, i64 0)) #11, !dbg !5134
  %131 = icmp eq i32 %130, 0, !dbg !5134
  br i1 %131, label %135, label %132, !dbg !5135

; <label>:132:                                    ; preds = %129
  %133 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.230, i64 0, i64 0)) #11, !dbg !5136
  %134 = icmp eq i32 %133, 0, !dbg !5136
  br i1 %134, label %135, label %136, !dbg !5137

; <label>:135:                                    ; preds = %132, %129, %126, %123
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !5138, !tbaa !2870
  br label %268, !dbg !5140

; <label>:136:                                    ; preds = %132
  %137 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i64 0, i64 0)) #11, !dbg !5141
  %138 = icmp eq i32 %137, 0, !dbg !5141
  br i1 %138, label %268, label %139, !dbg !5142

; <label>:139:                                    ; preds = %136
  %140 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.232, i64 0, i64 0)) #11, !dbg !5143
  %141 = icmp eq i32 %140, 0, !dbg !5143
  br i1 %141, label %268, label %142, !dbg !5144

; <label>:142:                                    ; preds = %139
  %143 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.233, i64 0, i64 0)) #11, !dbg !5145
  %144 = icmp eq i32 %143, 0, !dbg !5145
  br i1 %144, label %148, label %145, !dbg !5146

; <label>:145:                                    ; preds = %142
  %146 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.234, i64 0, i64 0)) #11, !dbg !5147
  %147 = icmp eq i32 %146, 0, !dbg !5147
  br i1 %147, label %148, label %149, !dbg !5148

; <label>:148:                                    ; preds = %145, %142
  call void @ldbTrace(%struct.lua_State* %0) #9, !dbg !5149
  call void @ldbSendLogs() #9, !dbg !5151
  br label %266, !dbg !5152

; <label>:149:                                    ; preds = %145
  %150 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.235, i64 0, i64 0)) #11, !dbg !5153
  %151 = icmp eq i32 %150, 0, !dbg !5153
  br i1 %151, label %155, label %152, !dbg !5154

; <label>:152:                                    ; preds = %149
  %153 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.236, i64 0, i64 0)) #11, !dbg !5155
  %154 = icmp eq i32 %153, 0, !dbg !5155
  br i1 %154, label %155, label %157, !dbg !5156

; <label>:155:                                    ; preds = %152, %149
  %156 = load i32, i32* %2, align 4, !dbg !5157, !tbaa !973
  call void @ldbMaxlen(i8** nonnull %23, i32 %156) #9, !dbg !5159
  call void @ldbSendLogs() #9, !dbg !5160
  br label %266, !dbg !5161

; <label>:157:                                    ; preds = %152
  %158 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i64 0, i64 0)) #11, !dbg !5162
  %159 = icmp eq i32 %158, 0, !dbg !5162
  br i1 %159, label %163, label %160, !dbg !5163

; <label>:160:                                    ; preds = %157
  %161 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.238, i64 0, i64 0)) #11, !dbg !5164
  %162 = icmp eq i32 %161, 0, !dbg !5164
  br i1 %162, label %163, label %165, !dbg !5165

; <label>:163:                                    ; preds = %160, %157
  %164 = load i32, i32* %2, align 4, !dbg !5166, !tbaa !973
  call void @ldbBreak(i8** nonnull %23, i32 %164) #9, !dbg !5168
  call void @ldbSendLogs() #9, !dbg !5169
  br label %266, !dbg !5170

; <label>:165:                                    ; preds = %160
  %166 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.239, i64 0, i64 0)) #11, !dbg !5171
  %167 = icmp eq i32 %166, 0, !dbg !5171
  br i1 %167, label %171, label %168, !dbg !5172

; <label>:168:                                    ; preds = %165
  %169 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.240, i64 0, i64 0)) #11, !dbg !5173
  %170 = icmp eq i32 %169, 0, !dbg !5173
  br i1 %170, label %171, label %173, !dbg !5174

; <label>:171:                                    ; preds = %168, %165
  %172 = load i32, i32* %2, align 4, !dbg !5175, !tbaa !973
  call void @ldbEval(%struct.lua_State* %0, i8** nonnull %23, i32 %172) #9, !dbg !5177
  call void @ldbSendLogs() #9, !dbg !5178
  br label %266, !dbg !5179

; <label>:173:                                    ; preds = %168
  %174 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.241, i64 0, i64 0)) #11, !dbg !5180
  %175 = icmp eq i32 %174, 0, !dbg !5180
  br i1 %175, label %179, label %176, !dbg !5181

; <label>:176:                                    ; preds = %173
  %177 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.242, i64 0, i64 0)) #11, !dbg !5182
  %178 = icmp eq i32 %177, 0, !dbg !5182
  br i1 %178, label %179, label %181, !dbg !5183

; <label>:179:                                    ; preds = %176, %173
  call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.243, i64 0, i64 0)) #8, !dbg !5184
  %180 = call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !5186
  br label %266, !dbg !5187

; <label>:181:                                    ; preds = %176
  %182 = load i32, i32* %2, align 4, !dbg !5188, !tbaa !973
  %183 = icmp sgt i32 %182, 1, !dbg !5189
  br i1 %183, label %184, label %191, !dbg !5190

; <label>:184:                                    ; preds = %181
  %185 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.244, i64 0, i64 0)) #11, !dbg !5191
  %186 = icmp eq i32 %185, 0, !dbg !5191
  br i1 %186, label %190, label %187, !dbg !5192

; <label>:187:                                    ; preds = %184
  %188 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0)) #11, !dbg !5193
  %189 = icmp eq i32 %188, 0, !dbg !5193
  br i1 %189, label %190, label %191, !dbg !5194

; <label>:190:                                    ; preds = %187, %184
  call void @ldbRedis(%struct.lua_State* %0, i8** nonnull %23, i32 %182) #9, !dbg !5195
  call void @ldbSendLogs() #9, !dbg !5197
  br label %266, !dbg !5198

; <label>:191:                                    ; preds = %187, %181
  %192 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.245, i64 0, i64 0)) #11, !dbg !5199
  %193 = icmp eq i32 %192, 0, !dbg !5199
  br i1 %193, label %197, label %194, !dbg !5200

; <label>:194:                                    ; preds = %191
  %195 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.246, i64 0, i64 0)) #11, !dbg !5201
  %196 = icmp eq i32 %195, 0, !dbg !5201
  br i1 %196, label %197, label %204, !dbg !5202

; <label>:197:                                    ; preds = %194, %191
  %198 = icmp eq i32 %182, 2, !dbg !5203
  br i1 %198, label %199, label %202, !dbg !5206

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8*, i8** %23, i64 1, !dbg !5207
  %201 = load i8*, i8** %200, align 8, !dbg !5207, !tbaa !997
  call void @ldbPrint(%struct.lua_State* %0, i8* %201) #9, !dbg !5208
  br label %203, !dbg !5208

; <label>:202:                                    ; preds = %197
  call void @ldbPrintAll(%struct.lua_State* %0) #9, !dbg !5209
  br label %203

; <label>:203:                                    ; preds = %202, %199
  call void @ldbSendLogs() #9, !dbg !5210
  br label %266, !dbg !5211

; <label>:204:                                    ; preds = %194
  %205 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.247, i64 0, i64 0)) #11, !dbg !5212
  %206 = icmp eq i32 %205, 0, !dbg !5212
  br i1 %206, label %210, label %207, !dbg !5213

; <label>:207:                                    ; preds = %204
  %208 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.248, i64 0, i64 0)) #11, !dbg !5214
  %209 = icmp eq i32 %208, 0, !dbg !5214
  br i1 %209, label %210, label %242, !dbg !5215

; <label>:210:                                    ; preds = %207, %204
  %211 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !5216, !tbaa !1698
  br i1 %183, label %212, label %223, !dbg !5219

; <label>:212:                                    ; preds = %210
  %213 = getelementptr inbounds i8*, i8** %23, i64 1, !dbg !5220
  %214 = load i8*, i8** %213, align 8, !dbg !5220, !tbaa !997
  %215 = call i32 @atoi(i8* %214) #8, !dbg !5221
  %216 = icmp sgt i32 %215, 0, !dbg !5223
  %217 = select i1 %216, i32 %215, i32 %211, !dbg !5225
  %218 = icmp eq i32 %182, 2, !dbg !5226
  br i1 %218, label %223, label %219, !dbg !5228

; <label>:219:                                    ; preds = %212
  %220 = getelementptr inbounds i8*, i8** %23, i64 2, !dbg !5229
  %221 = load i8*, i8** %220, align 8, !dbg !5229, !tbaa !997
  %222 = call i32 @atoi(i8* %221) #8, !dbg !5230
  br label %223, !dbg !5231

; <label>:223:                                    ; preds = %212, %210, %219
  %224 = phi i32 [ %217, %219 ], [ %217, %212 ], [ %211, %210 ]
  %225 = phi i32 [ %222, %219 ], [ 5, %212 ], [ 5, %210 ], !dbg !5232
  %226 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !5237, !tbaa !2044
  %227 = icmp slt i32 %226, 1, !dbg !5238
  br i1 %227, label %241, label %228, !dbg !5239

; <label>:228:                                    ; preds = %223
  %229 = icmp eq i32 %224, 0
  br label %230, !dbg !5239

; <label>:230:                                    ; preds = %237, %228
  %231 = phi i32 [ 1, %228 ], [ %238, %237 ]
  br i1 %229, label %236, label %232, !dbg !5240

; <label>:232:                                    ; preds = %230
  %233 = sub nsw i32 %224, %231, !dbg !5241
  %234 = call i32 @abs(i32 %233) #8, !dbg !5242
  %235 = icmp sgt i32 %234, %225, !dbg !5243
  br i1 %235, label %237, label %236, !dbg !5244

; <label>:236:                                    ; preds = %232, %230
  call void @ldbLogSourceLine(i32 %231) #8, !dbg !5245
  br label %237, !dbg !5246

; <label>:237:                                    ; preds = %236, %232
  %238 = add nuw nsw i32 %231, 1, !dbg !5247
  %239 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !5237, !tbaa !2044
  %240 = icmp slt i32 %231, %239, !dbg !5238
  br i1 %240, label %230, label %241, !dbg !5239, !llvm.loop !3908

; <label>:241:                                    ; preds = %237, %223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5248
  call void @ldbSendLogs() #9, !dbg !5249
  br label %266, !dbg !5250

; <label>:242:                                    ; preds = %207
  %243 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.249, i64 0, i64 0)) #11, !dbg !5251
  %244 = icmp eq i32 %243, 0, !dbg !5251
  br i1 %244, label %248, label %245, !dbg !5253

; <label>:245:                                    ; preds = %242
  %246 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.250, i64 0, i64 0)) #11, !dbg !5254
  %247 = icmp eq i32 %246, 0, !dbg !5254
  br i1 %247, label %248, label %262, !dbg !5255

; <label>:248:                                    ; preds = %245, %242
  %249 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !5261, !tbaa !2044
  %250 = icmp slt i32 %249, 1, !dbg !5262
  br i1 %250, label %261, label %251, !dbg !5263

; <label>:251:                                    ; preds = %248, %257
  %252 = phi i32 [ %258, %257 ], [ 1, %248 ]
  %253 = sub nsw i32 1, %252, !dbg !5264
  %254 = call i32 @abs(i32 %253) #8, !dbg !5265
  %255 = icmp sgt i32 %254, 1000000, !dbg !5266
  br i1 %255, label %257, label %256, !dbg !5267

; <label>:256:                                    ; preds = %251
  call void @ldbLogSourceLine(i32 %252) #8, !dbg !5268
  br label %257, !dbg !5269

; <label>:257:                                    ; preds = %256, %251
  %258 = add nuw nsw i32 %252, 1, !dbg !5270
  %259 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !5261, !tbaa !2044
  %260 = icmp slt i32 %252, %259, !dbg !5262
  br i1 %260, label %251, label %261, !dbg !5263, !llvm.loop !3908

; <label>:261:                                    ; preds = %257, %248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5271
  call void @ldbSendLogs() #9, !dbg !5272
  br label %266, !dbg !5273

; <label>:262:                                    ; preds = %245
  %263 = call i8* @sdsnew(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.251, i64 0, i64 0)) #8, !dbg !5274
  %264 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5278, !tbaa !781
  %265 = call %struct.list* @listAddNodeTail(%struct.list* %264, i8* %263) #8, !dbg !5279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5280
  call void @ldbSendLogs() #9, !dbg !5281
  br label %266

; <label>:266:                                    ; preds = %148, %163, %179, %203, %261, %262, %241, %190, %171, %155, %32
  %267 = load i32, i32* %2, align 4, !dbg !5282, !tbaa !973
  call void @sdsfreesplitres(i8** nonnull %23, i32 %267) #8, !dbg !5283
  br label %6, !dbg !4916, !llvm.loop !5284

; <label>:268:                                    ; preds = %139, %136, %135
  %269 = load i32, i32* %2, align 4, !dbg !5286, !tbaa !973
  call void @sdsfreesplitres(i8** nonnull %23, i32 %269) #8, !dbg !5287
  br label %270, !dbg !5288

; <label>:270:                                    ; preds = %14, %268
  %271 = phi i32 [ 0, %268 ], [ -1, %14 ], !dbg !5289
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7, !dbg !5290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5290
  ret i32 %271, !dbg !5290
}

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone nounwind }
attributes #9 = { nobuiltin noredzone }
attributes #10 = { nobuiltin noredzone noreturn nounwind }
attributes #11 = { nobuiltin noredzone nounwind readonly }

!llvm.module.flags = !{!438, !439, !440}
!llvm.ident = !{!441}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ldb", scope: !2, file: !3, line: 77, type: !418, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !68)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/scripting.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !8, !11, !13, !10, !14, !15, !16, !19, !22, !23, !24, !39, !49, !59}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Number", file: !9, line: 99, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/lua/src/lua.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !14}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !15}
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !26, line: 51, size: 24, elements: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !{!28, !33, !34, !35}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !25, file: !26, line: 52, baseType: !29, size: 8)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !30, line: 24, baseType: !31)
!30 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !32, line: 43, baseType: !7)
!32 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!33 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !25, file: !26, line: 53, baseType: !29, size: 8, offset: 8)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !25, file: !26, line: 54, baseType: !7, size: 8, offset: 16)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !25, file: !26, line: 55, baseType: !36, offset: 24)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: -1)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !26, line: 57, size: 40, elements: !41)
!41 = !{!42, !46, !47, !48}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !40, file: !26, line: 58, baseType: !43, size: 16)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !30, line: 36, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !32, line: 57, baseType: !45)
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !40, file: !26, line: 59, baseType: !43, size: 16, offset: 16)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !26, line: 60, baseType: !7, size: 8, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !40, file: !26, line: 61, baseType: !36, offset: 40)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !26, line: 63, size: 72, elements: !51)
!51 = !{!52, !56, !57, !58}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !50, file: !26, line: 64, baseType: !53, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !30, line: 48, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !32, line: 79, baseType: !55)
!55 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !50, file: !26, line: 65, baseType: !53, size: 32, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !26, line: 66, baseType: !7, size: 8, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !50, file: !26, line: 67, baseType: !36, offset: 72)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !26, line: 69, size: 136, elements: !61)
!61 = !{!62, !65, !66, !67}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !60, file: !26, line: 70, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !30, line: 60, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !32, line: 105, baseType: !22)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !60, file: !26, line: 71, baseType: !63, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !60, file: !26, line: 72, baseType: !7, size: 8, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !60, file: !26, line: 73, baseType: !36, offset: 136)
!68 = !{!69, !372, !374, !379, !382, !384, !0}
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "argv", scope: !71, file: !3, line: 355, type: !219, isLocal: true, isDefinition: true)
!71 = distinct !DISubprogram(name: "luaRedisGenericCommand", scope: !3, file: !3, line: 348, type: !72, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !77)
!72 = !DISubroutineType(types: !73)
!73 = !{!15, !74, !15}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_State", file: !9, line: 50, baseType: !76)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "lua_State", file: !9, line: 50, flags: DIFlagFwdDecl)
!77 = !{!78, !79, !80, !81, !82, !320, !321, !322, !325, !329, !330, !334, !337, !340, !343, !346, !353, !354, !365, !369}
!78 = !DILocalVariable(name: "lua", arg: 1, scope: !71, file: !3, line: 348, type: !74)
!79 = !DILocalVariable(name: "raise_error", arg: 2, scope: !71, file: !3, line: 348, type: !15)
!80 = !DILocalVariable(name: "j", scope: !71, file: !3, line: 349, type: !15)
!81 = !DILocalVariable(name: "argc", scope: !71, file: !3, line: 349, type: !15)
!82 = !DILocalVariable(name: "cmd", scope: !71, file: !3, line: 350, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !85, line: 1307, size: 640, elements: !86)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !{!87, !88, !306, !307, !308, !309, !315, !316, !317, !318, !319}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !84, file: !85, line: 1308, baseType: !11, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !84, file: !85, line: 1309, baseType: !89, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !85, line: 1305, baseType: !91)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !93}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !85, line: 780, baseType: !95)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !85, line: 723, size: 135360, elements: !96)
!96 = !{!97, !98, !99, !198, !208, !210, !215, !216, !217, !218, !220, !221, !222, !223, !224, !225, !226, !228, !229, !232, !233, !234, !235, !236, !237, !238, !239, !244, !245, !246, !247, !248, !249, !250, !251, !255, !256, !260, !261, !277, !278, !295, !296, !297, !298, !299, !300, !301, !302}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !95, file: !85, line: 724, baseType: !63, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !95, file: !85, line: 725, baseType: !15, size: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !95, file: !85, line: 726, baseType: !100, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !85, line: 656, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !85, line: 647, size: 512, elements: !103)
!103 = !{!104, !166, !167, !168, !169, !170, !171, !172}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !102, file: !85, line: 648, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !107, line: 82, baseType: !108)
!107 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !107, line: 76, size: 768, elements: !109)
!109 = !{!110, !135, !136, !164, !165}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !107, line: 77, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !107, line: 65, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !107, line: 58, size: 384, elements: !114)
!114 = !{!115, !121, !125, !126, !130, !134}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !113, file: !107, line: 59, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!63, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !113, file: !107, line: 60, baseType: !122, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!14, !14, !119}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !113, file: !107, line: 61, baseType: !122, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !113, file: !107, line: 62, baseType: !127, size: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!15, !14, !119, !119}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !113, file: !107, line: 63, baseType: !131, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !14, !14}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !113, file: !107, line: 64, baseType: !131, size: 64, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !108, file: !107, line: 78, baseType: !14, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !108, file: !107, line: 79, baseType: !137, size: 512, offset: 128)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 512, elements: !162)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !107, line: 74, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !107, line: 69, size: 256, elements: !140)
!140 = !{!141, !159, !160, !161}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !139, file: !107, line: 70, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !107, line: 56, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !107, line: 47, size: 192, elements: !146)
!146 = !{!147, !148, !157}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !145, file: !107, line: 48, baseType: !14, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !145, file: !107, line: 54, baseType: !149, size: 64, offset: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !107, line: 49, size: 64, elements: !150)
!150 = !{!151, !152, !153, !156}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !149, file: !107, line: 50, baseType: !14, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !149, file: !107, line: 51, baseType: !63, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !149, file: !107, line: 52, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !30, line: 56, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !32, line: 103, baseType: !23)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !149, file: !107, line: 53, baseType: !10, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !107, line: 55, baseType: !158, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !139, file: !107, line: 71, baseType: !22, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !139, file: !107, line: 72, baseType: !22, size: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !139, file: !107, line: 73, baseType: !22, size: 64, offset: 192)
!162 = !{!163}
!163 = !DISubrange(count: 2)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !108, file: !107, line: 80, baseType: !23, size: 64, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !108, file: !107, line: 81, baseType: !22, size: 64, offset: 704)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !102, file: !85, line: 649, baseType: !105, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !102, file: !85, line: 650, baseType: !105, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !102, file: !85, line: 651, baseType: !105, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !102, file: !85, line: 652, baseType: !105, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !102, file: !85, line: 653, baseType: !15, size: 32, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !102, file: !85, line: 654, baseType: !13, size: 64, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !102, file: !85, line: 655, baseType: !173, size: 64, offset: 448)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !175, line: 54, baseType: !176)
!175 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !175, line: 47, size: 384, elements: !177)
!177 = !{!178, !187, !188, !192, !193, !197}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !176, file: !175, line: 48, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !175, line: 40, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !175, line: 36, size: 192, elements: !182)
!182 = !{!183, !185, !186}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !181, file: !175, line: 37, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !181, file: !175, line: 38, baseType: !184, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !181, file: !175, line: 39, baseType: !14, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !176, file: !175, line: 49, baseType: !179, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !176, file: !175, line: 50, baseType: !189, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!14, !14}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !176, file: !175, line: 51, baseType: !16, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !176, file: !175, line: 52, baseType: !194, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!15, !14, !14}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !176, file: !175, line: 53, baseType: !22, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !95, file: !85, line: 727, baseType: !199, size: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !85, line: 622, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !85, line: 614, size: 128, elements: !202)
!202 = !{!203, !204, !205, !206, !207}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !201, file: !85, line: 615, baseType: !55, size: 4, flags: DIFlagBitField, extraData: i64 0)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !201, file: !85, line: 616, baseType: !55, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !201, file: !85, line: 617, baseType: !55, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !201, file: !85, line: 620, baseType: !15, size: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !201, file: !85, line: 621, baseType: !14, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !95, file: !85, line: 728, baseType: !209, size: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !26, line: 43, baseType: !11)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !95, file: !85, line: 729, baseType: !211, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !212, line: 40, baseType: !213)
!212 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !214, line: 129, baseType: !22)
!214 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!215 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !95, file: !85, line: 730, baseType: !209, size: 64, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !95, file: !85, line: 734, baseType: !211, size: 64, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !95, file: !85, line: 735, baseType: !15, size: 32, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !95, file: !85, line: 736, baseType: !219, size: 64, offset: 576)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !95, file: !85, line: 737, baseType: !83, size: 64, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !95, file: !85, line: 737, baseType: !83, size: 64, offset: 704)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !95, file: !85, line: 738, baseType: !15, size: 32, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !95, file: !85, line: 739, baseType: !15, size: 32, offset: 800)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !95, file: !85, line: 740, baseType: !23, size: 64, offset: 832)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !95, file: !85, line: 741, baseType: !173, size: 64, offset: 896)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !95, file: !85, line: 742, baseType: !227, size: 64, offset: 960)
!227 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !95, file: !85, line: 743, baseType: !211, size: 64, offset: 1024)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !95, file: !85, line: 745, baseType: !230, size: 64, offset: 1088)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !231, line: 34, baseType: !23)
!231 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!232 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !95, file: !85, line: 746, baseType: !230, size: 64, offset: 1152)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !95, file: !85, line: 747, baseType: !230, size: 64, offset: 1216)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !95, file: !85, line: 748, baseType: !15, size: 32, offset: 1280)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !95, file: !85, line: 749, baseType: !15, size: 32, offset: 1312)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !95, file: !85, line: 750, baseType: !15, size: 32, offset: 1344)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !95, file: !85, line: 751, baseType: !15, size: 32, offset: 1376)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !95, file: !85, line: 752, baseType: !15, size: 32, offset: 1408)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !95, file: !85, line: 753, baseType: !240, size: 64, offset: 1472)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !241, line: 173, baseType: !242)
!241 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !214, line: 100, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !214, line: 44, baseType: !23)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !95, file: !85, line: 754, baseType: !240, size: 64, offset: 1536)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !95, file: !85, line: 755, baseType: !209, size: 64, offset: 1600)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !95, file: !85, line: 756, baseType: !13, size: 64, offset: 1664)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !95, file: !85, line: 757, baseType: !13, size: 64, offset: 1728)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !95, file: !85, line: 758, baseType: !13, size: 64, offset: 1792)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !95, file: !85, line: 759, baseType: !13, size: 64, offset: 1856)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !95, file: !85, line: 760, baseType: !13, size: 64, offset: 1920)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !95, file: !85, line: 763, baseType: !252, size: 328, offset: 1984)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 328, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 41)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !95, file: !85, line: 764, baseType: !15, size: 32, offset: 2336)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !95, file: !85, line: 765, baseType: !257, size: 368, offset: 2368)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 368, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 46)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !95, file: !85, line: 766, baseType: !15, size: 32, offset: 2752)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !95, file: !85, line: 767, baseType: !262, size: 256, offset: 2816)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !85, line: 673, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !85, line: 665, size: 256, elements: !264)
!264 = !{!265, !273, !274, !275, !276}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !263, file: !85, line: 666, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !85, line: 663, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !85, line: 659, size: 192, elements: !269)
!269 = !{!270, !271, !272}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !268, file: !85, line: 660, baseType: !219, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !268, file: !85, line: 661, baseType: !15, size: 32, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !268, file: !85, line: 662, baseType: !83, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !263, file: !85, line: 667, baseType: !15, size: 32, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !263, file: !85, line: 668, baseType: !15, size: 32, offset: 96)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !263, file: !85, line: 671, baseType: !15, size: 32, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !263, file: !85, line: 672, baseType: !230, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !95, file: !85, line: 768, baseType: !15, size: 32, offset: 3072)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !95, file: !85, line: 769, baseType: !279, size: 704, offset: 3136)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !85, line: 703, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !85, line: 677, size: 704, elements: !281)
!281 = !{!282, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !280, file: !85, line: 679, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !85, line: 52, baseType: !13)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !280, file: !85, line: 683, baseType: !105, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !280, file: !85, line: 685, baseType: !199, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !280, file: !85, line: 689, baseType: !211, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !280, file: !85, line: 690, baseType: !199, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !280, file: !85, line: 691, baseType: !199, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !280, file: !85, line: 692, baseType: !283, size: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !280, file: !85, line: 692, baseType: !283, size: 64, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !280, file: !85, line: 693, baseType: !15, size: 32, offset: 512)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !280, file: !85, line: 696, baseType: !15, size: 32, offset: 544)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !280, file: !85, line: 697, baseType: !13, size: 64, offset: 576)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !280, file: !85, line: 700, baseType: !14, size: 64, offset: 640)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !95, file: !85, line: 770, baseType: !13, size: 64, offset: 3840)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !95, file: !85, line: 771, baseType: !173, size: 64, offset: 3904)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !95, file: !85, line: 772, baseType: !105, size: 64, offset: 3968)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !95, file: !85, line: 773, baseType: !173, size: 64, offset: 4032)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !95, file: !85, line: 774, baseType: !209, size: 64, offset: 4096)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !95, file: !85, line: 775, baseType: !179, size: 64, offset: 4160)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !95, file: !85, line: 778, baseType: !15, size: 32, offset: 4224)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !95, file: !85, line: 779, baseType: !303, size: 131072, offset: 4256)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 131072, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 16384)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !84, file: !85, line: 1310, baseType: !15, size: 32, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !84, file: !85, line: 1311, baseType: !11, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !85, line: 1312, baseType: !15, size: 32, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !84, file: !85, line: 1315, baseType: !310, size: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !85, line: 1306, baseType: !312)
!312 = !DISubroutineType(types: !313)
!313 = !{!314, !83, !219, !15, !314}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !84, file: !85, line: 1317, baseType: !15, size: 32, offset: 384)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !84, file: !85, line: 1318, baseType: !15, size: 32, offset: 416)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !84, file: !85, line: 1319, baseType: !15, size: 32, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !84, file: !85, line: 1320, baseType: !13, size: 64, offset: 512)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !84, file: !85, line: 1320, baseType: !13, size: 64, offset: 576)
!320 = !DILocalVariable(name: "c", scope: !71, file: !3, line: 351, type: !93)
!321 = !DILocalVariable(name: "reply", scope: !71, file: !3, line: 352, type: !209)
!322 = !DILocalVariable(name: "recursion_warning", scope: !323, file: !3, line: 373, type: !11)
!323 = distinct !DILexicalBlock(scope: !324, file: !3, line: 372, column: 16)
!324 = distinct !DILexicalBlock(scope: !71, file: !3, line: 372, column: 9)
!325 = !DILocalVariable(name: "obj_s", scope: !326, file: !3, line: 397, type: !11)
!326 = distinct !DILexicalBlock(scope: !327, file: !3, line: 396, column: 32)
!327 = distinct !DILexicalBlock(scope: !328, file: !3, line: 396, column: 5)
!328 = distinct !DILexicalBlock(scope: !71, file: !3, line: 396, column: 5)
!329 = !DILocalVariable(name: "obj_len", scope: !326, file: !3, line: 398, type: !211)
!330 = !DILocalVariable(name: "dbuf", scope: !326, file: !3, line: 399, type: !331)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 512, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 64)
!334 = !DILocalVariable(name: "num", scope: !335, file: !3, line: 404, type: !8)
!335 = distinct !DILexicalBlock(scope: !336, file: !3, line: 401, column: 47)
!336 = distinct !DILexicalBlock(scope: !326, file: !3, line: 401, column: 13)
!337 = !DILocalVariable(name: "s", scope: !338, file: !3, line: 417, type: !209)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 416, column: 9)
!339 = distinct !DILexicalBlock(scope: !326, file: !3, line: 414, column: 13)
!340 = !DILocalVariable(name: "cmdlog", scope: !341, file: !3, line: 453, type: !209)
!341 = distinct !DILexicalBlock(scope: !342, file: !3, line: 452, column: 33)
!342 = distinct !DILexicalBlock(scope: !71, file: !3, line: 452, column: 9)
!343 = !DILocalVariable(name: "deny_write_type", scope: !344, file: !3, line: 491, type: !15)
!344 = distinct !DILexicalBlock(scope: !345, file: !3, line: 490, column: 33)
!345 = distinct !DILexicalBlock(scope: !71, file: !3, line: 490, column: 9)
!346 = !DILocalVariable(name: "aof_write_err", scope: !347, file: !3, line: 506, type: !209)
!347 = distinct !DILexicalBlock(scope: !348, file: !3, line: 505, column: 20)
!348 = distinct !DILexicalBlock(scope: !349, file: !3, line: 503, column: 17)
!349 = distinct !DILexicalBlock(scope: !350, file: !3, line: 502, column: 61)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 502, column: 20)
!351 = distinct !DILexicalBlock(scope: !352, file: !3, line: 496, column: 20)
!352 = distinct !DILexicalBlock(scope: !344, file: !3, line: 492, column: 13)
!353 = !DILocalVariable(name: "call_flags", scope: !71, file: !3, line: 568, type: !15)
!354 = !DILocalVariable(name: "o", scope: !355, file: !3, line: 592, type: !358)
!355 = distinct !DILexicalBlock(scope: !356, file: !3, line: 591, column: 37)
!356 = distinct !DILexicalBlock(scope: !357, file: !3, line: 588, column: 12)
!357 = distinct !DILexicalBlock(scope: !71, file: !3, line: 581, column: 9)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientReplyBlock", file: !85, line: 642, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clientReplyBlock", file: !85, line: 639, size: 128, elements: !361)
!361 = !{!362, !363, !364}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !360, file: !85, line: 640, baseType: !211, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !360, file: !85, line: 640, baseType: !211, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !360, file: !85, line: 641, baseType: !36, offset: 128)
!365 = !DILocalVariable(name: "o", scope: !366, file: !3, line: 619, type: !199)
!366 = distinct !DILexicalBlock(scope: !367, file: !3, line: 618, column: 35)
!367 = distinct !DILexicalBlock(scope: !368, file: !3, line: 618, column: 5)
!368 = distinct !DILexicalBlock(scope: !71, file: !3, line: 618, column: 5)
!369 = !DILocalVariable(name: "s", scope: !370, file: !3, line: 630, type: !209)
!370 = distinct !DILexicalBlock(scope: !371, file: !3, line: 629, column: 9)
!371 = distinct !DILexicalBlock(scope: !366, file: !3, line: 624, column: 13)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "argv_size", scope: !71, file: !3, line: 356, type: !15, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "cached_objects", scope: !71, file: !3, line: 357, type: !376, isLocal: true, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 2048, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 32)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "cached_objects_len", scope: !71, file: !3, line: 358, type: !381, isLocal: true, isDefinition: true)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 2048, elements: !377)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "inuse", scope: !71, file: !3, line: 359, type: !15, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "gc_count", scope: !386, file: !3, line: 1394, type: !23, isLocal: true, isDefinition: true)
!386 = distinct !DISubprogram(name: "evalGenericCommand", scope: !3, file: !3, line: 1260, type: !387, isLocal: false, isDefinition: true, scopeLine: 1260, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !389)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !93, !15}
!389 = !{!390, !391, !392, !393, !397, !398, !399, !400, !401, !404, !405, !413}
!390 = !DILocalVariable(name: "c", arg: 1, scope: !386, file: !3, line: 1260, type: !93)
!391 = !DILocalVariable(name: "evalsha", arg: 2, scope: !386, file: !3, line: 1260, type: !15)
!392 = !DILocalVariable(name: "lua", scope: !386, file: !3, line: 1261, type: !74)
!393 = !DILocalVariable(name: "funcname", scope: !386, file: !3, line: 1262, type: !394)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 344, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 43)
!397 = !DILocalVariable(name: "numkeys", scope: !386, file: !3, line: 1263, type: !13)
!398 = !DILocalVariable(name: "initial_server_dirty", scope: !386, file: !3, line: 1264, type: !13)
!399 = !DILocalVariable(name: "delhook", scope: !386, file: !3, line: 1265, type: !15)
!400 = !DILocalVariable(name: "err", scope: !386, file: !3, line: 1265, type: !15)
!401 = !DILocalVariable(name: "j", scope: !402, file: !3, line: 1305, type: !15)
!402 = distinct !DILexicalBlock(scope: !403, file: !3, line: 1303, column: 12)
!403 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1300, column: 9)
!404 = !DILocalVariable(name: "sha", scope: !402, file: !3, line: 1306, type: !11)
!405 = !DILocalVariable(name: "propargv", scope: !406, file: !3, line: 1419, type: !410)
!406 = distinct !DILexicalBlock(scope: !407, file: !3, line: 1418, column: 39)
!407 = distinct !DILexicalBlock(scope: !408, file: !3, line: 1418, column: 13)
!408 = distinct !DILexicalBlock(scope: !409, file: !3, line: 1416, column: 40)
!409 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1416, column: 9)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 64, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 1)
!413 = !DILocalVariable(name: "script", scope: !414, file: !3, line: 1442, type: !199)
!414 = distinct !DILexicalBlock(scope: !415, file: !3, line: 1438, column: 61)
!415 = distinct !DILexicalBlock(scope: !416, file: !3, line: 1438, column: 13)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 1437, column: 52)
!417 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1437, column: 9)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ldbState", file: !3, line: 60, size: 2816, elements: !419)
!419 = !{!420, !421, !422, !423, !424, !425, !426, !428, !429, !430, !431, !433, !434, !435, !436, !437}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !418, file: !3, line: 61, baseType: !15, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !418, file: !3, line: 62, baseType: !15, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "forked", scope: !418, file: !3, line: 63, baseType: !15, size: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "logs", scope: !418, file: !3, line: 64, baseType: !173, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "traces", scope: !418, file: !3, line: 65, baseType: !173, size: 64, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !418, file: !3, line: 66, baseType: !173, size: 64, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !418, file: !3, line: 67, baseType: !427, size: 2048, offset: 320)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2048, elements: !332)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "bpcount", scope: !418, file: !3, line: 68, baseType: !15, size: 32, offset: 2368)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !418, file: !3, line: 69, baseType: !15, size: 32, offset: 2400)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "luabp", scope: !418, file: !3, line: 70, baseType: !15, size: 32, offset: 2432)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !418, file: !3, line: 71, baseType: !432, size: 64, offset: 2496)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !418, file: !3, line: 72, baseType: !15, size: 32, offset: 2560)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !418, file: !3, line: 73, baseType: !15, size: 32, offset: 2592)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "cbuf", scope: !418, file: !3, line: 74, baseType: !209, size: 64, offset: 2624)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !418, file: !3, line: 75, baseType: !211, size: 64, offset: 2688)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen_hint_sent", scope: !418, file: !3, line: 76, baseType: !15, size: 32, offset: 2752)
!438 = !{i32 2, !"Dwarf Version", i32 4}
!439 = !{i32 2, !"Debug Info Version", i32 3}
!440 = !{i32 1, !"wchar_size", i32 4}
!441 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!442 = distinct !DISubprogram(name: "sha1hex", scope: !3, file: !3, line: 89, type: !443, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !445)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !11, !11, !211}
!445 = !{!446, !447, !448, !449, !462, !466, !467}
!446 = !DILocalVariable(name: "digest", arg: 1, scope: !442, file: !3, line: 89, type: !11)
!447 = !DILocalVariable(name: "script", arg: 2, scope: !442, file: !3, line: 89, type: !11)
!448 = !DILocalVariable(name: "len", arg: 3, scope: !442, file: !3, line: 89, type: !211)
!449 = !DILocalVariable(name: "ctx", scope: !442, file: !3, line: 90, type: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "SHA1_CTX", file: !451, line: 14, baseType: !452)
!451 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sha1.h", directory: "/root/.unikraft/apps/redis/build")
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !451, line: 10, size: 736, elements: !453)
!453 = !{!454, !458, !460}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !452, file: !451, line: 11, baseType: !455, size: 160)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 160, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 5)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !452, file: !451, line: 12, baseType: !459, size: 64, offset: 160)
!459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 64, elements: !162)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !452, file: !451, line: 13, baseType: !461, size: 512, offset: 224)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !332)
!462 = !DILocalVariable(name: "hash", scope: !442, file: !3, line: 91, type: !463)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 20)
!466 = !DILocalVariable(name: "cset", scope: !442, file: !3, line: 92, type: !11)
!467 = !DILocalVariable(name: "j", scope: !442, file: !3, line: 93, type: !15)
!468 = !DILocation(line: 89, column: 20, scope: !442)
!469 = !DILocation(line: 89, column: 34, scope: !442)
!470 = !DILocation(line: 89, column: 49, scope: !442)
!471 = !DILocation(line: 90, column: 5, scope: !442)
!472 = !DILocation(line: 91, column: 5, scope: !442)
!473 = !DILocation(line: 91, column: 19, scope: !442)
!474 = !DILocation(line: 90, column: 14, scope: !442)
!475 = !DILocation(line: 95, column: 5, scope: !442)
!476 = !DILocation(line: 96, column: 44, scope: !442)
!477 = !DILocation(line: 96, column: 5, scope: !442)
!478 = !DILocation(line: 97, column: 5, scope: !442)
!479 = !DILocation(line: 93, column: 9, scope: !442)
!480 = !DILocation(line: 99, column: 5, scope: !481)
!481 = distinct !DILexicalBlock(scope: !442, file: !3, line: 99, column: 5)
!482 = !DILocation(line: 100, column: 30, scope: !483)
!483 = distinct !DILexicalBlock(scope: !484, file: !3, line: 99, column: 30)
!484 = distinct !DILexicalBlock(scope: !481, file: !3, line: 99, column: 5)
!485 = !{!486, !486, i64 0}
!486 = !{!"omnipotent char", !487, i64 0}
!487 = !{!"Simple C/C++ TBAA"}
!488 = !DILocation(line: 100, column: 43, scope: !483)
!489 = !DILocation(line: 100, column: 23, scope: !483)
!490 = !DILocation(line: 100, column: 17, scope: !483)
!491 = !DILocation(line: 100, column: 9, scope: !483)
!492 = !DILocation(line: 100, column: 21, scope: !483)
!493 = !DILocation(line: 101, column: 38, scope: !483)
!494 = !DILocation(line: 101, column: 25, scope: !483)
!495 = !DILocation(line: 101, column: 19, scope: !483)
!496 = !DILocation(line: 101, column: 9, scope: !483)
!497 = !DILocation(line: 101, column: 23, scope: !483)
!498 = !DILocation(line: 99, column: 26, scope: !484)
!499 = !DILocation(line: 99, column: 19, scope: !484)
!500 = distinct !{!500, !480, !501}
!501 = !DILocation(line: 102, column: 5, scope: !481)
!502 = !DILocation(line: 103, column: 5, scope: !442)
!503 = !DILocation(line: 103, column: 16, scope: !442)
!504 = !DILocation(line: 104, column: 1, scope: !442)
!505 = distinct !DISubprogram(name: "redisProtocolToLuaType", scope: !3, file: !3, line: 127, type: !506, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !508)
!506 = !DISubroutineType(types: !507)
!507 = !{!11, !74, !11}
!508 = !{!509, !510, !511}
!509 = !DILocalVariable(name: "lua", arg: 1, scope: !505, file: !3, line: 127, type: !74)
!510 = !DILocalVariable(name: "reply", arg: 2, scope: !505, file: !3, line: 127, type: !11)
!511 = !DILocalVariable(name: "p", scope: !505, file: !3, line: 128, type: !11)
!512 = !DILocation(line: 127, column: 41, scope: !505)
!513 = !DILocation(line: 127, column: 52, scope: !505)
!514 = !DILocation(line: 128, column: 11, scope: !505)
!515 = !DILocation(line: 130, column: 12, scope: !505)
!516 = !DILocation(line: 130, column: 5, scope: !505)
!517 = !DILocalVariable(name: "lua", arg: 1, scope: !518, file: !3, line: 140, type: !74)
!518 = distinct !DISubprogram(name: "redisProtocolToLuaType_Int", scope: !3, file: !3, line: 140, type: !506, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !519)
!519 = !{!517, !520, !521, !522}
!520 = !DILocalVariable(name: "reply", arg: 2, scope: !518, file: !3, line: 140, type: !11)
!521 = !DILocalVariable(name: "p", scope: !518, file: !3, line: 141, type: !11)
!522 = !DILocalVariable(name: "value", scope: !518, file: !3, line: 142, type: !13)
!523 = !DILocation(line: 140, column: 45, scope: !518, inlinedAt: !524)
!524 = distinct !DILocation(line: 131, column: 19, scope: !525)
!525 = distinct !DILexicalBlock(scope: !505, file: !3, line: 130, column: 16)
!526 = !DILocation(line: 140, column: 56, scope: !518, inlinedAt: !524)
!527 = !DILocation(line: 141, column: 27, scope: !518, inlinedAt: !524)
!528 = !DILocation(line: 141, column: 15, scope: !518, inlinedAt: !524)
!529 = !DILocation(line: 141, column: 11, scope: !518, inlinedAt: !524)
!530 = !DILocation(line: 142, column: 5, scope: !518, inlinedAt: !524)
!531 = !DILocation(line: 144, column: 24, scope: !518, inlinedAt: !524)
!532 = !DILocation(line: 144, column: 30, scope: !518, inlinedAt: !524)
!533 = !DILocation(line: 142, column: 15, scope: !518, inlinedAt: !524)
!534 = !DILocation(line: 144, column: 5, scope: !518, inlinedAt: !524)
!535 = !DILocation(line: 145, column: 36, scope: !518, inlinedAt: !524)
!536 = !{!537, !537, i64 0}
!537 = !{!"long long", !486, i64 0}
!538 = !DILocation(line: 145, column: 24, scope: !518, inlinedAt: !524)
!539 = !DILocation(line: 145, column: 5, scope: !518, inlinedAt: !524)
!540 = !DILocation(line: 146, column: 13, scope: !518, inlinedAt: !524)
!541 = !DILocation(line: 147, column: 1, scope: !518, inlinedAt: !524)
!542 = !DILocation(line: 146, column: 5, scope: !518, inlinedAt: !524)
!543 = !DILocation(line: 131, column: 58, scope: !525)
!544 = !DILocalVariable(name: "lua", arg: 1, scope: !545, file: !3, line: 149, type: !74)
!545 = distinct !DISubprogram(name: "redisProtocolToLuaType_Bulk", scope: !3, file: !3, line: 149, type: !506, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !546)
!546 = !{!544, !547, !548, !549}
!547 = !DILocalVariable(name: "reply", arg: 2, scope: !545, file: !3, line: 149, type: !11)
!548 = !DILocalVariable(name: "p", scope: !545, file: !3, line: 150, type: !11)
!549 = !DILocalVariable(name: "bulklen", scope: !545, file: !3, line: 151, type: !13)
!550 = !DILocation(line: 149, column: 46, scope: !545, inlinedAt: !551)
!551 = distinct !DILocation(line: 132, column: 19, scope: !525)
!552 = !DILocation(line: 149, column: 57, scope: !545, inlinedAt: !551)
!553 = !DILocation(line: 150, column: 27, scope: !545, inlinedAt: !551)
!554 = !DILocation(line: 150, column: 15, scope: !545, inlinedAt: !551)
!555 = !DILocation(line: 150, column: 11, scope: !545, inlinedAt: !551)
!556 = !DILocation(line: 151, column: 5, scope: !545, inlinedAt: !551)
!557 = !DILocation(line: 153, column: 24, scope: !545, inlinedAt: !551)
!558 = !DILocation(line: 153, column: 30, scope: !545, inlinedAt: !551)
!559 = !DILocation(line: 151, column: 15, scope: !545, inlinedAt: !551)
!560 = !DILocation(line: 153, column: 5, scope: !545, inlinedAt: !551)
!561 = !DILocation(line: 154, column: 9, scope: !562, inlinedAt: !551)
!562 = distinct !DILexicalBlock(scope: !545, file: !3, line: 154, column: 9)
!563 = !DILocation(line: 154, column: 17, scope: !562, inlinedAt: !551)
!564 = !DILocation(line: 154, column: 9, scope: !545, inlinedAt: !551)
!565 = !DILocation(line: 155, column: 9, scope: !566, inlinedAt: !551)
!566 = distinct !DILexicalBlock(scope: !562, file: !3, line: 154, column: 24)
!567 = !DILocation(line: 156, column: 9, scope: !566, inlinedAt: !551)
!568 = !DILocation(line: 158, column: 30, scope: !569, inlinedAt: !551)
!569 = distinct !DILexicalBlock(scope: !562, file: !3, line: 157, column: 12)
!570 = !DILocation(line: 158, column: 9, scope: !569, inlinedAt: !551)
!571 = !DILocation(line: 159, column: 20, scope: !569, inlinedAt: !551)
!572 = !DILocation(line: 159, column: 19, scope: !569, inlinedAt: !551)
!573 = !DILocation(line: 159, column: 9, scope: !569, inlinedAt: !551)
!574 = !DILocation(line: 0, scope: !569, inlinedAt: !551)
!575 = !DILocation(line: 161, column: 1, scope: !545, inlinedAt: !551)
!576 = !DILocation(line: 132, column: 59, scope: !525)
!577 = !DILocalVariable(name: "lua", arg: 1, scope: !578, file: !3, line: 163, type: !74)
!578 = distinct !DISubprogram(name: "redisProtocolToLuaType_Status", scope: !3, file: !3, line: 163, type: !506, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !579)
!579 = !{!577, !580, !581}
!580 = !DILocalVariable(name: "reply", arg: 2, scope: !578, file: !3, line: 163, type: !11)
!581 = !DILocalVariable(name: "p", scope: !578, file: !3, line: 164, type: !11)
!582 = !DILocation(line: 163, column: 48, scope: !578, inlinedAt: !583)
!583 = distinct !DILocation(line: 133, column: 19, scope: !525)
!584 = !DILocation(line: 163, column: 59, scope: !578, inlinedAt: !583)
!585 = !DILocation(line: 164, column: 27, scope: !578, inlinedAt: !583)
!586 = !DILocation(line: 164, column: 15, scope: !578, inlinedAt: !583)
!587 = !DILocation(line: 164, column: 11, scope: !578, inlinedAt: !583)
!588 = !DILocation(line: 166, column: 5, scope: !578, inlinedAt: !583)
!589 = !DILocation(line: 167, column: 5, scope: !578, inlinedAt: !583)
!590 = !DILocation(line: 168, column: 34, scope: !578, inlinedAt: !583)
!591 = !DILocation(line: 168, column: 40, scope: !578, inlinedAt: !583)
!592 = !DILocation(line: 168, column: 5, scope: !578, inlinedAt: !583)
!593 = !DILocation(line: 169, column: 5, scope: !578, inlinedAt: !583)
!594 = !DILocation(line: 170, column: 13, scope: !578, inlinedAt: !583)
!595 = !DILocation(line: 170, column: 5, scope: !578, inlinedAt: !583)
!596 = !DILocation(line: 133, column: 61, scope: !525)
!597 = !DILocalVariable(name: "lua", arg: 1, scope: !598, file: !3, line: 173, type: !74)
!598 = distinct !DISubprogram(name: "redisProtocolToLuaType_Error", scope: !3, file: !3, line: 173, type: !506, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !599)
!599 = !{!597, !600, !601}
!600 = !DILocalVariable(name: "reply", arg: 2, scope: !598, file: !3, line: 173, type: !11)
!601 = !DILocalVariable(name: "p", scope: !598, file: !3, line: 174, type: !11)
!602 = !DILocation(line: 173, column: 47, scope: !598, inlinedAt: !603)
!603 = distinct !DILocation(line: 134, column: 19, scope: !525)
!604 = !DILocation(line: 173, column: 58, scope: !598, inlinedAt: !603)
!605 = !DILocation(line: 174, column: 27, scope: !598, inlinedAt: !603)
!606 = !DILocation(line: 174, column: 15, scope: !598, inlinedAt: !603)
!607 = !DILocation(line: 174, column: 11, scope: !598, inlinedAt: !603)
!608 = !DILocation(line: 176, column: 5, scope: !598, inlinedAt: !603)
!609 = !DILocation(line: 177, column: 5, scope: !598, inlinedAt: !603)
!610 = !DILocation(line: 178, column: 34, scope: !598, inlinedAt: !603)
!611 = !DILocation(line: 178, column: 40, scope: !598, inlinedAt: !603)
!612 = !DILocation(line: 178, column: 5, scope: !598, inlinedAt: !603)
!613 = !DILocation(line: 179, column: 5, scope: !598, inlinedAt: !603)
!614 = !DILocation(line: 180, column: 13, scope: !598, inlinedAt: !603)
!615 = !DILocation(line: 180, column: 5, scope: !598, inlinedAt: !603)
!616 = !DILocation(line: 134, column: 60, scope: !525)
!617 = !DILocation(line: 135, column: 19, scope: !525)
!618 = !DILocation(line: 135, column: 64, scope: !525)
!619 = !DILocation(line: 0, scope: !525)
!620 = !DILocation(line: 137, column: 5, scope: !505)
!621 = !DILocation(line: 140, column: 45, scope: !518)
!622 = !DILocation(line: 140, column: 56, scope: !518)
!623 = !DILocation(line: 141, column: 27, scope: !518)
!624 = !DILocation(line: 141, column: 15, scope: !518)
!625 = !DILocation(line: 141, column: 11, scope: !518)
!626 = !DILocation(line: 142, column: 5, scope: !518)
!627 = !DILocation(line: 144, column: 24, scope: !518)
!628 = !DILocation(line: 144, column: 30, scope: !518)
!629 = !DILocation(line: 142, column: 15, scope: !518)
!630 = !DILocation(line: 144, column: 5, scope: !518)
!631 = !DILocation(line: 145, column: 36, scope: !518)
!632 = !DILocation(line: 145, column: 24, scope: !518)
!633 = !DILocation(line: 145, column: 5, scope: !518)
!634 = !DILocation(line: 146, column: 13, scope: !518)
!635 = !DILocation(line: 147, column: 1, scope: !518)
!636 = !DILocation(line: 146, column: 5, scope: !518)
!637 = !DILocation(line: 149, column: 46, scope: !545)
!638 = !DILocation(line: 149, column: 57, scope: !545)
!639 = !DILocation(line: 150, column: 27, scope: !545)
!640 = !DILocation(line: 150, column: 15, scope: !545)
!641 = !DILocation(line: 150, column: 11, scope: !545)
!642 = !DILocation(line: 151, column: 5, scope: !545)
!643 = !DILocation(line: 153, column: 24, scope: !545)
!644 = !DILocation(line: 153, column: 30, scope: !545)
!645 = !DILocation(line: 151, column: 15, scope: !545)
!646 = !DILocation(line: 153, column: 5, scope: !545)
!647 = !DILocation(line: 154, column: 9, scope: !562)
!648 = !DILocation(line: 154, column: 17, scope: !562)
!649 = !DILocation(line: 154, column: 9, scope: !545)
!650 = !DILocation(line: 155, column: 9, scope: !566)
!651 = !DILocation(line: 156, column: 9, scope: !566)
!652 = !DILocation(line: 158, column: 30, scope: !569)
!653 = !DILocation(line: 158, column: 9, scope: !569)
!654 = !DILocation(line: 159, column: 20, scope: !569)
!655 = !DILocation(line: 159, column: 19, scope: !569)
!656 = !DILocation(line: 159, column: 9, scope: !569)
!657 = !DILocation(line: 0, scope: !569)
!658 = !DILocation(line: 161, column: 1, scope: !545)
!659 = !DILocation(line: 163, column: 48, scope: !578)
!660 = !DILocation(line: 163, column: 59, scope: !578)
!661 = !DILocation(line: 164, column: 27, scope: !578)
!662 = !DILocation(line: 164, column: 15, scope: !578)
!663 = !DILocation(line: 164, column: 11, scope: !578)
!664 = !DILocation(line: 166, column: 5, scope: !578)
!665 = !DILocation(line: 167, column: 5, scope: !578)
!666 = !DILocation(line: 168, column: 34, scope: !578)
!667 = !DILocation(line: 168, column: 40, scope: !578)
!668 = !DILocation(line: 168, column: 5, scope: !578)
!669 = !DILocation(line: 169, column: 5, scope: !578)
!670 = !DILocation(line: 170, column: 13, scope: !578)
!671 = !DILocation(line: 170, column: 5, scope: !578)
!672 = !DILocation(line: 173, column: 47, scope: !598)
!673 = !DILocation(line: 173, column: 58, scope: !598)
!674 = !DILocation(line: 174, column: 27, scope: !598)
!675 = !DILocation(line: 174, column: 15, scope: !598)
!676 = !DILocation(line: 174, column: 11, scope: !598)
!677 = !DILocation(line: 176, column: 5, scope: !598)
!678 = !DILocation(line: 177, column: 5, scope: !598)
!679 = !DILocation(line: 178, column: 34, scope: !598)
!680 = !DILocation(line: 178, column: 40, scope: !598)
!681 = !DILocation(line: 178, column: 5, scope: !598)
!682 = !DILocation(line: 179, column: 5, scope: !598)
!683 = !DILocation(line: 180, column: 13, scope: !598)
!684 = !DILocation(line: 180, column: 5, scope: !598)
!685 = distinct !DISubprogram(name: "redisProtocolToLuaType_MultiBulk", scope: !3, file: !3, line: 183, type: !506, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !686)
!686 = !{!687, !688, !689, !690, !691}
!687 = !DILocalVariable(name: "lua", arg: 1, scope: !685, file: !3, line: 183, type: !74)
!688 = !DILocalVariable(name: "reply", arg: 2, scope: !685, file: !3, line: 183, type: !11)
!689 = !DILocalVariable(name: "p", scope: !685, file: !3, line: 184, type: !11)
!690 = !DILocalVariable(name: "mbulklen", scope: !685, file: !3, line: 185, type: !13)
!691 = !DILocalVariable(name: "j", scope: !685, file: !3, line: 186, type: !15)
!692 = !DILocation(line: 183, column: 51, scope: !685)
!693 = !DILocation(line: 183, column: 62, scope: !685)
!694 = !DILocation(line: 184, column: 27, scope: !685)
!695 = !DILocation(line: 184, column: 15, scope: !685)
!696 = !DILocation(line: 184, column: 11, scope: !685)
!697 = !DILocation(line: 185, column: 5, scope: !685)
!698 = !DILocation(line: 186, column: 9, scope: !685)
!699 = !DILocation(line: 188, column: 24, scope: !685)
!700 = !DILocation(line: 188, column: 30, scope: !685)
!701 = !DILocation(line: 185, column: 15, scope: !685)
!702 = !DILocation(line: 188, column: 5, scope: !685)
!703 = !DILocation(line: 189, column: 7, scope: !685)
!704 = !DILocation(line: 190, column: 9, scope: !705)
!705 = distinct !DILexicalBlock(scope: !685, file: !3, line: 190, column: 9)
!706 = !DILocation(line: 190, column: 18, scope: !705)
!707 = !DILocation(line: 190, column: 9, scope: !685)
!708 = !DILocation(line: 191, column: 9, scope: !709)
!709 = distinct !DILexicalBlock(scope: !705, file: !3, line: 190, column: 25)
!710 = !DILocation(line: 192, column: 9, scope: !709)
!711 = !DILocation(line: 194, column: 5, scope: !685)
!712 = !DILocation(line: 195, column: 21, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 195, column: 5)
!714 = distinct !DILexicalBlock(scope: !685, file: !3, line: 195, column: 5)
!715 = !DILocation(line: 195, column: 19, scope: !713)
!716 = !DILocation(line: 195, column: 5, scope: !714)
!717 = !DILocation(line: 196, column: 29, scope: !718)
!718 = distinct !DILexicalBlock(scope: !713, file: !3, line: 195, column: 36)
!719 = !DILocation(line: 196, column: 28, scope: !718)
!720 = !DILocation(line: 196, column: 9, scope: !718)
!721 = !DILocation(line: 197, column: 13, scope: !718)
!722 = !DILocation(line: 198, column: 9, scope: !718)
!723 = distinct !{!723, !716, !724}
!724 = !DILocation(line: 199, column: 5, scope: !714)
!725 = !DILocation(line: 0, scope: !685)
!726 = !DILocation(line: 201, column: 1, scope: !685)
!727 = distinct !DISubprogram(name: "luaPushError", scope: !3, file: !3, line: 208, type: !728, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !730)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !74, !11}
!730 = !{!731, !732, !733, !753}
!731 = !DILocalVariable(name: "lua", arg: 1, scope: !727, file: !3, line: 208, type: !74)
!732 = !DILocalVariable(name: "error", arg: 2, scope: !727, file: !3, line: 208, type: !11)
!733 = !DILocalVariable(name: "dbg", scope: !727, file: !3, line: 209, type: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !9, line: 326, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !9, line: 346, size: 960, elements: !736)
!736 = !{!737, !738, !741, !742, !743, !744, !745, !746, !747, !748, !752}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !735, file: !9, line: 347, baseType: !15, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !735, file: !9, line: 348, baseType: !739, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !735, file: !9, line: 349, baseType: !739, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !735, file: !9, line: 350, baseType: !739, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !735, file: !9, line: 351, baseType: !739, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !735, file: !9, line: 352, baseType: !15, size: 32, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !735, file: !9, line: 353, baseType: !15, size: 32, offset: 352)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !735, file: !9, line: 354, baseType: !15, size: 32, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !735, file: !9, line: 355, baseType: !15, size: 32, offset: 416)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !735, file: !9, line: 356, baseType: !749, size: 480, offset: 448)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 480, elements: !750)
!750 = !{!751}
!751 = !DISubrange(count: 60)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !735, file: !9, line: 358, baseType: !15, size: 32, offset: 928)
!753 = !DILocalVariable(name: "msg", scope: !754, file: !3, line: 222, type: !209)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 221, column: 69)
!755 = distinct !DILexicalBlock(scope: !727, file: !3, line: 221, column: 8)
!756 = !DILocation(line: 208, column: 30, scope: !727)
!757 = !DILocation(line: 208, column: 41, scope: !727)
!758 = !DILocation(line: 209, column: 5, scope: !727)
!759 = !DILocation(line: 213, column: 13, scope: !760)
!760 = distinct !DILexicalBlock(scope: !727, file: !3, line: 213, column: 9)
!761 = !{!762, !763, i64 4}
!762 = !{!"ldbState", !763, i64 0, !763, i64 4, !763, i64 8, !764, i64 16, !764, i64 24, !764, i64 32, !486, i64 40, !763, i64 296, !763, i64 300, !763, i64 304, !764, i64 312, !763, i64 320, !763, i64 324, !764, i64 328, !765, i64 336, !763, i64 344}
!763 = !{!"int", !486, i64 0}
!764 = !{!"any pointer", !486, i64 0}
!765 = !{!"long", !486, i64 0}
!766 = !DILocation(line: 213, column: 9, scope: !760)
!767 = !DILocation(line: 213, column: 27, scope: !760)
!768 = !DILocation(line: 213, column: 23, scope: !760)
!769 = !DILocation(line: 213, column: 20, scope: !760)
!770 = !DILocation(line: 214, column: 29, scope: !771)
!771 = distinct !DILexicalBlock(scope: !760, file: !3, line: 213, column: 33)
!772 = !DILocation(line: 214, column: 16, scope: !771)
!773 = !DILocalVariable(name: "entry", arg: 1, scope: !774, file: !3, line: 1602, type: !209)
!774 = distinct !DISubprogram(name: "ldbLog", scope: !3, file: !3, line: 1602, type: !775, isLocal: false, isDefinition: true, scopeLine: 1602, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !777)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !209}
!777 = !{!773}
!778 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !779)
!779 = distinct !DILocation(line: 214, column: 9, scope: !771)
!780 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !779)
!781 = !{!762, !764, i64 16}
!782 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !779)
!783 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !779)
!784 = !DILocation(line: 215, column: 5, scope: !771)
!785 = !DILocation(line: 217, column: 5, scope: !727)
!786 = !DILocation(line: 218, column: 5, scope: !727)
!787 = !DILocation(line: 209, column: 15, scope: !727)
!788 = !DILocation(line: 221, column: 8, scope: !755)
!789 = !DILocation(line: 221, column: 35, scope: !755)
!790 = !DILocation(line: 221, column: 38, scope: !755)
!791 = !DILocation(line: 221, column: 8, scope: !727)
!792 = !DILocation(line: 222, column: 32, scope: !754)
!793 = !DILocation(line: 223, column: 17, scope: !754)
!794 = !{!795, !764, i64 32}
!795 = !{!"lua_Debug", !763, i64 0, !764, i64 8, !764, i64 16, !764, i64 24, !764, i64 32, !763, i64 40, !763, i64 44, !763, i64 48, !763, i64 52, !486, i64 56, !763, i64 116}
!796 = !DILocation(line: 223, column: 29, scope: !754)
!797 = !{!795, !763, i64 40}
!798 = !DILocation(line: 222, column: 19, scope: !754)
!799 = !DILocation(line: 222, column: 13, scope: !754)
!800 = !DILocation(line: 224, column: 9, scope: !754)
!801 = !DILocation(line: 225, column: 9, scope: !754)
!802 = !DILocation(line: 226, column: 5, scope: !754)
!803 = !DILocation(line: 227, column: 9, scope: !804)
!804 = distinct !DILexicalBlock(scope: !755, file: !3, line: 226, column: 12)
!805 = !DILocation(line: 229, column: 5, scope: !727)
!806 = !DILocation(line: 230, column: 1, scope: !727)
!807 = !DILocation(line: 1602, column: 17, scope: !774)
!808 = !DILocation(line: 1603, column: 25, scope: !774)
!809 = !DILocation(line: 1603, column: 5, scope: !774)
!810 = !DILocation(line: 1604, column: 1, scope: !774)
!811 = distinct !DISubprogram(name: "luaRaiseError", scope: !3, file: !3, line: 236, type: !812, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{!15, !74}
!814 = !{!815}
!815 = !DILocalVariable(name: "lua", arg: 1, scope: !811, file: !3, line: 236, type: !74)
!816 = !DILocation(line: 236, column: 30, scope: !811)
!817 = !DILocation(line: 237, column: 5, scope: !811)
!818 = !DILocation(line: 238, column: 5, scope: !811)
!819 = !DILocation(line: 239, column: 12, scope: !811)
!820 = !DILocation(line: 239, column: 5, scope: !811)
!821 = distinct !DISubprogram(name: "luaSortArray", scope: !3, file: !3, line: 248, type: !822, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !824)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !74}
!824 = !{!825}
!825 = !DILocalVariable(name: "lua", arg: 1, scope: !821, file: !3, line: 248, type: !74)
!826 = !DILocation(line: 248, column: 30, scope: !821)
!827 = !DILocation(line: 250, column: 5, scope: !821)
!828 = !DILocation(line: 251, column: 5, scope: !821)
!829 = !DILocation(line: 252, column: 5, scope: !821)
!830 = !DILocation(line: 253, column: 5, scope: !821)
!831 = !DILocation(line: 254, column: 9, scope: !832)
!832 = distinct !DILexicalBlock(scope: !821, file: !3, line: 254, column: 9)
!833 = !DILocation(line: 254, column: 9, scope: !821)
!834 = !DILocation(line: 261, column: 9, scope: !835)
!835 = distinct !DILexicalBlock(scope: !832, file: !3, line: 254, column: 31)
!836 = !DILocation(line: 262, column: 9, scope: !835)
!837 = !DILocation(line: 263, column: 9, scope: !835)
!838 = !DILocation(line: 264, column: 9, scope: !835)
!839 = !DILocation(line: 265, column: 9, scope: !835)
!840 = !DILocation(line: 267, column: 9, scope: !835)
!841 = !DILocation(line: 268, column: 5, scope: !835)
!842 = !DILocation(line: 270, column: 5, scope: !821)
!843 = !DILocation(line: 271, column: 1, scope: !821)
!844 = distinct !DISubprogram(name: "luaReplyToRedisReply", scope: !3, file: !3, line: 277, type: !845, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !847)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !93, !74}
!847 = !{!848, !849, !850, !851, !855, !858, !860, !861}
!848 = !DILocalVariable(name: "c", arg: 1, scope: !844, file: !3, line: 277, type: !93)
!849 = !DILocalVariable(name: "lua", arg: 2, scope: !844, file: !3, line: 277, type: !74)
!850 = !DILocalVariable(name: "t", scope: !844, file: !3, line: 278, type: !15)
!851 = !DILocalVariable(name: "err", scope: !852, file: !3, line: 299, type: !209)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 298, column: 31)
!853 = distinct !DILexicalBlock(scope: !854, file: !3, line: 298, column: 13)
!854 = distinct !DILexicalBlock(scope: !844, file: !3, line: 280, column: 15)
!855 = !DILocalVariable(name: "ok", scope: !856, file: !3, line: 312, type: !209)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 311, column: 31)
!857 = distinct !DILexicalBlock(scope: !854, file: !3, line: 311, column: 13)
!858 = !DILocalVariable(name: "replylen", scope: !859, file: !3, line: 318, type: !14)
!859 = distinct !DILexicalBlock(scope: !857, file: !3, line: 317, column: 16)
!860 = !DILocalVariable(name: "j", scope: !859, file: !3, line: 319, type: !15)
!861 = !DILocalVariable(name: "mbulklen", scope: !859, file: !3, line: 319, type: !15)
!862 = !DILocation(line: 277, column: 35, scope: !844)
!863 = !DILocation(line: 277, column: 49, scope: !844)
!864 = !DILocation(line: 278, column: 13, scope: !844)
!865 = !DILocation(line: 278, column: 9, scope: !844)
!866 = !DILocation(line: 280, column: 5, scope: !844)
!867 = !DILocation(line: 282, column: 38, scope: !854)
!868 = !DILocation(line: 282, column: 59, scope: !854)
!869 = !DILocation(line: 282, column: 9, scope: !854)
!870 = !DILocation(line: 283, column: 9, scope: !854)
!871 = !DILocation(line: 285, column: 20, scope: !854)
!872 = !DILocation(line: 285, column: 51, scope: !854)
!873 = !DILocation(line: 285, column: 65, scope: !854)
!874 = !DILocation(line: 285, column: 9, scope: !854)
!875 = !DILocation(line: 286, column: 9, scope: !854)
!876 = !DILocation(line: 288, column: 39, scope: !854)
!877 = !DILocation(line: 288, column: 28, scope: !854)
!878 = !DILocation(line: 288, column: 9, scope: !854)
!879 = !DILocation(line: 289, column: 9, scope: !854)
!880 = !DILocation(line: 295, column: 9, scope: !854)
!881 = !DILocation(line: 296, column: 9, scope: !854)
!882 = !DILocation(line: 297, column: 13, scope: !854)
!883 = !DILocation(line: 298, column: 15, scope: !853)
!884 = !DILocation(line: 298, column: 13, scope: !854)
!885 = !DILocation(line: 299, column: 30, scope: !852)
!886 = !DILocation(line: 299, column: 23, scope: !852)
!887 = !DILocation(line: 299, column: 17, scope: !852)
!888 = !DILocation(line: 300, column: 13, scope: !852)
!889 = !DILocation(line: 301, column: 40, scope: !852)
!890 = !DILocation(line: 301, column: 27, scope: !852)
!891 = !DILocation(line: 301, column: 13, scope: !852)
!892 = !DILocation(line: 302, column: 13, scope: !852)
!893 = !DILocation(line: 303, column: 13, scope: !852)
!894 = !DILocation(line: 307, column: 9, scope: !854)
!895 = !DILocation(line: 308, column: 9, scope: !854)
!896 = !DILocation(line: 309, column: 9, scope: !854)
!897 = !DILocation(line: 310, column: 13, scope: !854)
!898 = !DILocation(line: 311, column: 15, scope: !857)
!899 = !DILocation(line: 311, column: 13, scope: !854)
!900 = !DILocation(line: 312, column: 29, scope: !856)
!901 = !DILocation(line: 312, column: 22, scope: !856)
!902 = !DILocation(line: 312, column: 17, scope: !856)
!903 = !DILocation(line: 313, column: 13, scope: !856)
!904 = !DILocation(line: 314, column: 40, scope: !856)
!905 = !DILocation(line: 314, column: 27, scope: !856)
!906 = !DILocation(line: 314, column: 13, scope: !856)
!907 = !DILocation(line: 315, column: 13, scope: !856)
!908 = !DILocation(line: 316, column: 13, scope: !856)
!909 = !DILocation(line: 317, column: 9, scope: !856)
!910 = !DILocation(line: 318, column: 30, scope: !859)
!911 = !DILocation(line: 318, column: 19, scope: !859)
!912 = !DILocation(line: 319, column: 17, scope: !859)
!913 = !DILocation(line: 319, column: 24, scope: !859)
!914 = !DILocation(line: 321, column: 13, scope: !859)
!915 = !DILocation(line: 323, column: 17, scope: !916)
!916 = distinct !DILexicalBlock(scope: !859, file: !3, line: 322, column: 22)
!917 = !DILocation(line: 324, column: 17, scope: !916)
!918 = !DILocation(line: 325, column: 21, scope: !916)
!919 = !DILocation(line: 326, column: 23, scope: !920)
!920 = distinct !DILexicalBlock(scope: !916, file: !3, line: 326, column: 21)
!921 = !DILocation(line: 326, column: 21, scope: !916)
!922 = !DILocation(line: 327, column: 21, scope: !923)
!923 = distinct !DILexicalBlock(scope: !920, file: !3, line: 326, column: 36)
!924 = !DILocation(line: 333, column: 13, scope: !859)
!925 = !DILocation(line: 323, column: 37, scope: !916)
!926 = !DILocation(line: 330, column: 17, scope: !916)
!927 = !DILocation(line: 331, column: 25, scope: !916)
!928 = !DILocation(line: 323, column: 36, scope: !916)
!929 = distinct !{!929, !930, !931}
!930 = !DILocation(line: 322, column: 13, scope: !859)
!931 = !DILocation(line: 332, column: 13, scope: !859)
!932 = !DILocation(line: 337, column: 27, scope: !854)
!933 = !{!934, !764, i64 80}
!934 = !{!"sharedObjectsStruct", !764, i64 0, !764, i64 8, !764, i64 16, !764, i64 24, !764, i64 32, !764, i64 40, !764, i64 48, !764, i64 56, !764, i64 64, !764, i64 72, !764, i64 80, !764, i64 88, !764, i64 96, !764, i64 104, !764, i64 112, !764, i64 120, !764, i64 128, !764, i64 136, !764, i64 144, !764, i64 152, !764, i64 160, !764, i64 168, !764, i64 176, !764, i64 184, !764, i64 192, !764, i64 200, !764, i64 208, !764, i64 216, !764, i64 224, !764, i64 232, !764, i64 240, !764, i64 248, !764, i64 256, !764, i64 264, !764, i64 272, !764, i64 280, !764, i64 288, !764, i64 296, !764, i64 304, !764, i64 312, !764, i64 320, !764, i64 328, !764, i64 336, !764, i64 344, !764, i64 352, !764, i64 360, !486, i64 368, !486, i64 448, !486, i64 80448, !486, i64 80704, !764, i64 80960, !764, i64 80968}
!935 = !DILocation(line: 337, column: 9, scope: !854)
!936 = !DILocation(line: 338, column: 5, scope: !854)
!937 = !DILocation(line: 339, column: 5, scope: !844)
!938 = !DILocation(line: 340, column: 1, scope: !844)
!939 = !DILocation(line: 348, column: 39, scope: !71)
!940 = !DILocation(line: 348, column: 48, scope: !71)
!941 = !DILocation(line: 349, column: 19, scope: !71)
!942 = !DILocation(line: 349, column: 12, scope: !71)
!943 = !DILocation(line: 351, column: 24, scope: !71)
!944 = !{!945, !764, i64 3000}
!945 = !{!"redisServer", !763, i64 0, !764, i64 8, !764, i64 16, !764, i64 24, !763, i64 32, !763, i64 36, !763, i64 40, !764, i64 48, !764, i64 56, !764, i64 64, !764, i64 72, !763, i64 80, !763, i64 84, !763, i64 88, !763, i64 92, !764, i64 96, !764, i64 104, !763, i64 112, !763, i64 116, !486, i64 120, !763, i64 164, !765, i64 168, !763, i64 176, !764, i64 184, !764, i64 192, !764, i64 200, !486, i64 208, !763, i64 216, !763, i64 220, !486, i64 224, !763, i64 352, !764, i64 360, !763, i64 368, !486, i64 372, !763, i64 436, !763, i64 440, !486, i64 444, !763, i64 508, !764, i64 512, !764, i64 520, !764, i64 528, !764, i64 536, !764, i64 544, !764, i64 552, !764, i64 560, !763, i64 568, !537, i64 576, !486, i64 584, !764, i64 840, !765, i64 848, !763, i64 856, !763, i64 860, !765, i64 864, !765, i64 872, !765, i64 880, !765, i64 888, !764, i64 896, !764, i64 904, !764, i64 912, !764, i64 920, !764, i64 928, !764, i64 936, !764, i64 944, !764, i64 952, !764, i64 960, !764, i64 968, !764, i64 976, !764, i64 984, !764, i64 992, !765, i64 1000, !537, i64 1008, !537, i64 1016, !537, i64 1024, !946, i64 1032, !537, i64 1040, !537, i64 1048, !537, i64 1056, !537, i64 1064, !537, i64 1072, !537, i64 1080, !537, i64 1088, !537, i64 1096, !537, i64 1104, !765, i64 1112, !537, i64 1120, !946, i64 1128, !537, i64 1136, !537, i64 1144, !537, i64 1152, !537, i64 1160, !764, i64 1168, !537, i64 1176, !537, i64 1184, !765, i64 1192, !947, i64 1200, !537, i64 1240, !537, i64 1248, !765, i64 1256, !765, i64 1264, !486, i64 1272, !763, i64 1728, !763, i64 1732, !763, i64 1736, !763, i64 1740, !763, i64 1744, !765, i64 1752, !763, i64 1760, !763, i64 1764, !763, i64 1768, !763, i64 1772, !765, i64 1776, !765, i64 1784, !763, i64 1792, !763, i64 1796, !763, i64 1800, !763, i64 1804, !486, i64 1808, !763, i64 1880, !763, i64 1884, !764, i64 1888, !763, i64 1896, !763, i64 1900, !765, i64 1904, !765, i64 1912, !765, i64 1920, !765, i64 1928, !763, i64 1936, !763, i64 1940, !764, i64 1944, !764, i64 1952, !763, i64 1960, !763, i64 1964, !765, i64 1968, !765, i64 1976, !765, i64 1984, !765, i64 1992, !763, i64 2000, !765, i64 2008, !763, i64 2016, !763, i64 2020, !763, i64 2024, !763, i64 2028, !763, i64 2032, !763, i64 2036, !763, i64 2040, !763, i64 2044, !763, i64 2048, !763, i64 2052, !763, i64 2056, !763, i64 2060, !763, i64 2064, !764, i64 2072, !537, i64 2080, !537, i64 2088, !763, i64 2096, !764, i64 2104, !763, i64 2112, !764, i64 2120, !763, i64 2128, !763, i64 2132, !765, i64 2136, !765, i64 2144, !765, i64 2152, !765, i64 2160, !763, i64 2168, !763, i64 2172, !763, i64 2176, !763, i64 2180, !763, i64 2184, !763, i64 2188, !486, i64 2192, !948, i64 2200, !949, i64 2224, !764, i64 2240, !763, i64 2248, !764, i64 2256, !763, i64 2264, !486, i64 2268, !486, i64 2309, !537, i64 2352, !537, i64 2360, !763, i64 2368, !763, i64 2372, !764, i64 2376, !537, i64 2384, !537, i64 2392, !537, i64 2400, !537, i64 2408, !765, i64 2416, !765, i64 2424, !763, i64 2432, !763, i64 2436, !763, i64 2440, !763, i64 2444, !763, i64 2448, !764, i64 2456, !764, i64 2464, !763, i64 2472, !763, i64 2476, !764, i64 2480, !764, i64 2488, !763, i64 2496, !763, i64 2500, !765, i64 2504, !765, i64 2512, !765, i64 2520, !763, i64 2528, !763, i64 2532, !764, i64 2536, !765, i64 2544, !763, i64 2552, !763, i64 2556, !763, i64 2560, !765, i64 2568, !763, i64 2576, !763, i64 2580, !763, i64 2584, !764, i64 2592, !486, i64 2600, !537, i64 2648, !763, i64 2656, !764, i64 2664, !764, i64 2672, !763, i64 2680, !764, i64 2688, !763, i64 2696, !763, i64 2700, !537, i64 2704, !763, i64 2712, !763, i64 2716, !763, i64 2720, !763, i64 2724, !537, i64 2728, !763, i64 2736, !486, i64 2740, !764, i64 2768, !764, i64 2776, !763, i64 2784, !763, i64 2788, !763, i64 2792, !763, i64 2796, !765, i64 2800, !765, i64 2808, !765, i64 2816, !765, i64 2824, !765, i64 2832, !765, i64 2840, !765, i64 2848, !765, i64 2856, !763, i64 2864, !763, i64 2868, !765, i64 2872, !765, i64 2880, !763, i64 2888, !537, i64 2896, !764, i64 2904, !764, i64 2912, !763, i64 2920, !763, i64 2924, !537, i64 2928, !764, i64 2936, !764, i64 2944, !763, i64 2952, !763, i64 2956, !763, i64 2960, !763, i64 2964, !764, i64 2968, !763, i64 2976, !763, i64 2980, !763, i64 2984, !764, i64 2992, !764, i64 3000, !764, i64 3008, !764, i64 3016, !537, i64 3024, !537, i64 3032, !537, i64 3040, !763, i64 3048, !763, i64 3052, !763, i64 3056, !763, i64 3060, !763, i64 3064, !763, i64 3068, !763, i64 3072, !763, i64 3076, !763, i64 3080, !763, i64 3084, !763, i64 3088, !537, i64 3096, !764, i64 3104, !764, i64 3112, !764, i64 3120, !763, i64 3128, !763, i64 3132, !763, i64 3136, !765, i64 3144, !764, i64 3152, !764, i64 3160, !764, i64 3168}
!946 = !{!"double", !486, i64 0}
!947 = !{!"malloc_stats", !765, i64 0, !765, i64 8, !765, i64 16, !765, i64 24, !765, i64 32}
!948 = !{!"", !763, i64 0, !765, i64 8, !537, i64 16}
!949 = !{!"redisOpArray", !764, i64 0, !763, i64 8}
!950 = !DILocation(line: 351, column: 13, scope: !71)
!951 = !DILocation(line: 362, column: 16, scope: !952)
!952 = distinct !DILexicalBlock(scope: !71, file: !3, line: 362, column: 9)
!953 = !{!945, !763, i64 3060}
!954 = !DILocation(line: 362, column: 9, scope: !952)
!955 = !DILocation(line: 362, column: 34, scope: !952)
!956 = !DILocation(line: 362, column: 45, scope: !952)
!957 = !{!945, !764, i64 3008}
!958 = !DILocation(line: 362, column: 57, scope: !952)
!959 = !{!960, !763, i64 160}
!960 = !{!"client", !765, i64 0, !763, i64 8, !764, i64 16, !764, i64 24, !764, i64 32, !765, i64 40, !764, i64 48, !765, i64 56, !763, i64 64, !764, i64 72, !764, i64 80, !764, i64 88, !763, i64 96, !763, i64 100, !765, i64 104, !764, i64 112, !537, i64 120, !765, i64 128, !765, i64 136, !765, i64 144, !765, i64 152, !763, i64 160, !763, i64 164, !763, i64 168, !763, i64 172, !763, i64 176, !765, i64 184, !765, i64 192, !764, i64 200, !537, i64 208, !537, i64 216, !537, i64 224, !537, i64 232, !537, i64 240, !486, i64 248, !763, i64 292, !486, i64 296, !763, i64 344, !961, i64 352, !763, i64 384, !962, i64 392, !537, i64 480, !764, i64 488, !764, i64 496, !764, i64 504, !764, i64 512, !764, i64 520, !763, i64 528, !486, i64 532}
!961 = !{!"multiState", !764, i64 0, !763, i64 8, !763, i64 12, !763, i64 16, !765, i64 24}
!962 = !{!"blockingState", !537, i64 0, !764, i64 8, !764, i64 16, !765, i64 24, !764, i64 32, !764, i64 40, !537, i64 48, !537, i64 56, !763, i64 64, !763, i64 68, !537, i64 72, !764, i64 80}
!963 = !DILocation(line: 362, column: 63, scope: !952)
!964 = !DILocation(line: 362, column: 9, scope: !71)
!965 = !DILocation(line: 363, column: 12, scope: !966)
!966 = distinct !DILexicalBlock(scope: !952, file: !3, line: 362, column: 80)
!967 = !DILocation(line: 363, column: 18, scope: !966)
!968 = !DILocation(line: 364, column: 5, scope: !966)
!969 = !DILocation(line: 365, column: 12, scope: !970)
!970 = distinct !DILexicalBlock(scope: !952, file: !3, line: 364, column: 12)
!971 = !DILocation(line: 365, column: 18, scope: !970)
!972 = !DILocation(line: 372, column: 9, scope: !324)
!973 = !{!763, !763, i64 0}
!974 = !DILocation(line: 372, column: 9, scope: !71)
!975 = !DILocation(line: 376, column: 9, scope: !323)
!976 = !DILocation(line: 377, column: 9, scope: !323)
!977 = !DILocation(line: 380, column: 10, scope: !71)
!978 = !DILocation(line: 383, column: 14, scope: !979)
!979 = distinct !DILexicalBlock(scope: !71, file: !3, line: 383, column: 9)
!980 = !DILocation(line: 383, column: 9, scope: !71)
!981 = !DILocation(line: 384, column: 9, scope: !982)
!982 = distinct !DILexicalBlock(scope: !979, file: !3, line: 383, column: 20)
!983 = !DILocation(line: 386, column: 14, scope: !982)
!984 = !DILocation(line: 387, column: 16, scope: !982)
!985 = !DILocation(line: 236, column: 30, scope: !811, inlinedAt: !986)
!986 = distinct !DILocation(line: 387, column: 30, scope: !982)
!987 = !DILocation(line: 237, column: 5, scope: !811, inlinedAt: !986)
!988 = !DILocation(line: 238, column: 5, scope: !811, inlinedAt: !986)
!989 = !DILocation(line: 239, column: 12, scope: !811, inlinedAt: !986)
!990 = !DILocation(line: 239, column: 5, scope: !811, inlinedAt: !986)
!991 = !DILocation(line: 391, column: 9, scope: !992)
!992 = distinct !DILexicalBlock(scope: !71, file: !3, line: 391, column: 9)
!993 = !DILocation(line: 391, column: 19, scope: !992)
!994 = !DILocation(line: 391, column: 9, scope: !71)
!995 = !DILocation(line: 392, column: 25, scope: !996)
!996 = distinct !DILexicalBlock(scope: !992, file: !3, line: 391, column: 27)
!997 = !{!764, !764, i64 0}
!998 = !DILocation(line: 392, column: 44, scope: !996)
!999 = !DILocation(line: 392, column: 43, scope: !996)
!1000 = !DILocation(line: 392, column: 16, scope: !996)
!1001 = !DILocation(line: 392, column: 14, scope: !996)
!1002 = !DILocation(line: 393, column: 19, scope: !996)
!1003 = !DILocation(line: 394, column: 5, scope: !996)
!1004 = !DILocation(line: 349, column: 9, scope: !71)
!1005 = !DILocation(line: 396, column: 19, scope: !327)
!1006 = !DILocation(line: 396, column: 5, scope: !328)
!1007 = !DILocation(line: 398, column: 9, scope: !326)
!1008 = !DILocation(line: 399, column: 9, scope: !326)
!1009 = !DILocation(line: 399, column: 14, scope: !326)
!1010 = !DILocation(line: 401, column: 27, scope: !336)
!1011 = !DILocation(line: 401, column: 13, scope: !336)
!1012 = !DILocation(line: 401, column: 31, scope: !336)
!1013 = !DILocation(line: 401, column: 13, scope: !326)
!1014 = !DILocation(line: 404, column: 30, scope: !335)
!1015 = !DILocation(line: 404, column: 24, scope: !335)
!1016 = !DILocation(line: 406, column: 23, scope: !335)
!1017 = !DILocation(line: 398, column: 16, scope: !326)
!1018 = !DILocation(line: 406, column: 21, scope: !335)
!1019 = !{!765, !765, i64 0}
!1020 = !DILocation(line: 397, column: 15, scope: !326)
!1021 = !DILocation(line: 408, column: 9, scope: !335)
!1022 = !DILocation(line: 409, column: 28, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !336, file: !3, line: 408, column: 16)
!1024 = !DILocation(line: 410, column: 23, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 410, column: 17)
!1026 = !DILocation(line: 410, column: 17, scope: !1023)
!1027 = !DILocation(line: 0, scope: !1023)
!1028 = !DILocation(line: 414, column: 15, scope: !339)
!1029 = !DILocation(line: 414, column: 39, scope: !339)
!1030 = !DILocation(line: 414, column: 42, scope: !339)
!1031 = !DILocation(line: 414, column: 60, scope: !339)
!1032 = !DILocation(line: 415, column: 13, scope: !339)
!1033 = !DILocation(line: 415, column: 38, scope: !339)
!1034 = !DILocation(line: 415, column: 35, scope: !339)
!1035 = !DILocation(line: 414, column: 13, scope: !326)
!1036 = !DILocation(line: 417, column: 40, scope: !338)
!1037 = !{!1038, !764, i64 8}
!1038 = !{!"redisObject", !763, i64 0, !763, i64 0, !763, i64 1, !763, i64 4, !764, i64 8}
!1039 = !DILocation(line: 417, column: 17, scope: !338)
!1040 = !DILocation(line: 418, column: 13, scope: !338)
!1041 = !DILocation(line: 418, column: 21, scope: !338)
!1042 = !DILocation(line: 419, column: 31, scope: !338)
!1043 = !DILocation(line: 420, column: 35, scope: !338)
!1044 = !DILocation(line: 420, column: 13, scope: !338)
!1045 = !DILocation(line: 421, column: 26, scope: !338)
!1046 = !DILocalVariable(name: "s", arg: 1, scope: !1047, file: !26, line: 130, type: !209)
!1047 = distinct !DISubprogram(name: "sdssetlen", scope: !26, file: !26, line: 130, type: !1048, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1052)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !209, !1050}
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1051, line: 58, baseType: !22)
!1051 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!1052 = !{!1046, !1053, !1054, !1055}
!1053 = !DILocalVariable(name: "newlen", arg: 2, scope: !1047, file: !26, line: 130, type: !1050)
!1054 = !DILocalVariable(name: "flags", scope: !1047, file: !26, line: 131, type: !7)
!1055 = !DILocalVariable(name: "fp", scope: !1056, file: !26, line: 135, type: !6)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !26, line: 134, column: 13)
!1057 = distinct !DILexicalBlock(scope: !1047, file: !26, line: 132, column: 33)
!1058 = !DILocation(line: 130, column: 34, scope: !1047, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 421, column: 13, scope: !338)
!1060 = !DILocation(line: 130, column: 44, scope: !1047, inlinedAt: !1059)
!1061 = !DILocation(line: 131, column: 27, scope: !1047, inlinedAt: !1059)
!1062 = !DILocation(line: 131, column: 19, scope: !1047, inlinedAt: !1059)
!1063 = !DILocation(line: 132, column: 5, scope: !1047, inlinedAt: !1059)
!1064 = !DILocation(line: 135, column: 32, scope: !1056, inlinedAt: !1059)
!1065 = !DILocation(line: 136, column: 23, scope: !1056, inlinedAt: !1059)
!1066 = !DILocation(line: 136, column: 21, scope: !1056, inlinedAt: !1059)
!1067 = !DILocation(line: 138, column: 13, scope: !1057, inlinedAt: !1059)
!1068 = !DILocation(line: 140, column: 33, scope: !1057, inlinedAt: !1059)
!1069 = !DILocation(line: 140, column: 13, scope: !1057, inlinedAt: !1059)
!1070 = !DILocation(line: 140, column: 31, scope: !1057, inlinedAt: !1059)
!1071 = !DILocation(line: 141, column: 13, scope: !1057, inlinedAt: !1059)
!1072 = !DILocation(line: 143, column: 34, scope: !1057, inlinedAt: !1059)
!1073 = !DILocation(line: 143, column: 13, scope: !1057, inlinedAt: !1059)
!1074 = !DILocation(line: 143, column: 28, scope: !1057, inlinedAt: !1059)
!1075 = !DILocation(line: 143, column: 32, scope: !1057, inlinedAt: !1059)
!1076 = !{!1077, !1077, i64 0}
!1077 = !{!"short", !486, i64 0}
!1078 = !DILocation(line: 144, column: 13, scope: !1057, inlinedAt: !1059)
!1079 = !DILocation(line: 146, column: 34, scope: !1057, inlinedAt: !1059)
!1080 = !DILocation(line: 146, column: 13, scope: !1057, inlinedAt: !1059)
!1081 = !DILocation(line: 146, column: 28, scope: !1057, inlinedAt: !1059)
!1082 = !DILocation(line: 146, column: 32, scope: !1057, inlinedAt: !1059)
!1083 = !DILocation(line: 147, column: 13, scope: !1057, inlinedAt: !1059)
!1084 = !DILocation(line: 149, column: 13, scope: !1057, inlinedAt: !1059)
!1085 = !DILocation(line: 149, column: 28, scope: !1057, inlinedAt: !1059)
!1086 = !DILocation(line: 149, column: 32, scope: !1057, inlinedAt: !1059)
!1087 = !DILocation(line: 150, column: 13, scope: !1057, inlinedAt: !1059)
!1088 = !DILocation(line: 152, column: 1, scope: !1047, inlinedAt: !1059)
!1089 = !DILocation(line: 422, column: 9, scope: !338)
!1090 = !DILocation(line: 423, column: 49, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !339, file: !3, line: 422, column: 16)
!1092 = !DILocation(line: 423, column: 23, scope: !1091)
!1093 = !DILocation(line: 423, column: 13, scope: !1091)
!1094 = !DILocation(line: 423, column: 21, scope: !1091)
!1095 = !DILocation(line: 425, column: 5, scope: !327)
!1096 = distinct !{!1096, !1006, !1097}
!1097 = !DILocation(line: 425, column: 5, scope: !328)
!1098 = !DILocation(line: 430, column: 11, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !71, file: !3, line: 430, column: 9)
!1100 = !DILocation(line: 430, column: 9, scope: !71)
!1101 = !DILocation(line: 432, column: 18, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 430, column: 20)
!1103 = !DILocation(line: 432, column: 9, scope: !1102)
!1104 = !DILocation(line: 0, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 432, column: 24)
!1106 = !DILocation(line: 433, column: 26, scope: !1105)
!1107 = !DILocation(line: 433, column: 13, scope: !1105)
!1108 = distinct !{!1108, !1103, !1109}
!1109 = !DILocation(line: 435, column: 9, scope: !1102)
!1110 = !DILocation(line: 436, column: 9, scope: !1102)
!1111 = !DILocation(line: 438, column: 14, scope: !1102)
!1112 = !DILocation(line: 439, column: 16, scope: !1102)
!1113 = !DILocation(line: 236, column: 30, scope: !811, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 439, column: 30, scope: !1102)
!1115 = !DILocation(line: 237, column: 5, scope: !811, inlinedAt: !1114)
!1116 = !DILocation(line: 238, column: 5, scope: !811, inlinedAt: !1114)
!1117 = !DILocation(line: 239, column: 12, scope: !811, inlinedAt: !1114)
!1118 = !DILocation(line: 239, column: 5, scope: !811, inlinedAt: !1114)
!1119 = !DILocation(line: 443, column: 15, scope: !71)
!1120 = !DILocation(line: 443, column: 8, scope: !71)
!1121 = !DILocation(line: 443, column: 13, scope: !71)
!1122 = !{!960, !764, i64 72}
!1123 = !DILocation(line: 444, column: 8, scope: !71)
!1124 = !DILocation(line: 444, column: 13, scope: !71)
!1125 = !{!960, !763, i64 64}
!1126 = !DILocation(line: 447, column: 5, scope: !71)
!1127 = !DILocation(line: 448, column: 15, scope: !71)
!1128 = !DILocation(line: 448, column: 10, scope: !71)
!1129 = !DILocation(line: 449, column: 15, scope: !71)
!1130 = !DILocation(line: 452, column: 13, scope: !342)
!1131 = !DILocation(line: 452, column: 9, scope: !342)
!1132 = !DILocation(line: 452, column: 27, scope: !342)
!1133 = !DILocation(line: 452, column: 23, scope: !342)
!1134 = !DILocation(line: 452, column: 20, scope: !342)
!1135 = !DILocation(line: 453, column: 22, scope: !341)
!1136 = !DILocation(line: 453, column: 13, scope: !341)
!1137 = !DILocation(line: 454, column: 28, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 454, column: 9)
!1139 = distinct !DILexicalBlock(scope: !341, file: !3, line: 454, column: 9)
!1140 = !DILocation(line: 454, column: 23, scope: !1138)
!1141 = !DILocation(line: 454, column: 9, scope: !1139)
!1142 = !DILocation(line: 460, column: 26, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 459, column: 20)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 455, column: 17)
!1145 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 454, column: 39)
!1146 = !DILocation(line: 461, column: 46, scope: !1143)
!1147 = !DILocation(line: 461, column: 43, scope: !1143)
!1148 = !DILocation(line: 461, column: 55, scope: !1143)
!1149 = !DILocation(line: 461, column: 26, scope: !1143)
!1150 = distinct !{!1150, !1141, !1151}
!1151 = !DILocation(line: 463, column: 9, scope: !1139)
!1152 = !DILocation(line: 0, scope: !341)
!1153 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 464, column: 9, scope: !341)
!1155 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !1154)
!1156 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !1154)
!1157 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !1154)
!1158 = !DILocation(line: 468, column: 25, scope: !71)
!1159 = !DILocation(line: 465, column: 5, scope: !341)
!1160 = !DILocation(line: 468, column: 34, scope: !71)
!1161 = !DILocation(line: 468, column: 11, scope: !71)
!1162 = !DILocation(line: 350, column: 26, scope: !71)
!1163 = !DILocation(line: 469, column: 10, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !71, file: !3, line: 469, column: 9)
!1165 = !DILocation(line: 469, column: 14, scope: !1164)
!1166 = !DILocation(line: 469, column: 24, scope: !1164)
!1167 = !{!1168, !763, i64 16}
!1168 = !{!"redisCommand", !764, i64 0, !764, i64 8, !763, i64 16, !764, i64 24, !763, i64 32, !764, i64 40, !763, i64 48, !763, i64 52, !763, i64 56, !537, i64 64, !537, i64 72}
!1169 = !DILocation(line: 469, column: 30, scope: !1164)
!1170 = !DILocation(line: 469, column: 48, scope: !1164)
!1171 = !DILocation(line: 469, column: 34, scope: !1164)
!1172 = !DILocation(line: 470, column: 28, scope: !1164)
!1173 = !DILocation(line: 470, column: 26, scope: !1164)
!1174 = !DILocation(line: 473, column: 13, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 472, column: 13)
!1176 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 471, column: 5)
!1177 = !DILocation(line: 476, column: 13, scope: !1175)
!1178 = !DILocation(line: 479, column: 17, scope: !71)
!1179 = !DILocation(line: 479, column: 25, scope: !71)
!1180 = !{!960, !764, i64 88}
!1181 = !DILocation(line: 479, column: 8, scope: !71)
!1182 = !DILocation(line: 479, column: 12, scope: !71)
!1183 = !{!960, !764, i64 80}
!1184 = !DILocation(line: 482, column: 14, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !71, file: !3, line: 482, column: 9)
!1186 = !{!1168, !763, i64 32}
!1187 = !DILocation(line: 482, column: 20, scope: !1185)
!1188 = !DILocation(line: 482, column: 9, scope: !71)
!1189 = !DILocation(line: 483, column: 9, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 482, column: 36)
!1191 = !DILocation(line: 484, column: 9, scope: !1190)
!1192 = !DILocation(line: 490, column: 20, scope: !345)
!1193 = !DILocation(line: 490, column: 9, scope: !71)
!1194 = !DILocation(line: 521, column: 17, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !71, file: !3, line: 520, column: 9)
!1196 = !DILocation(line: 522, column: 17, scope: !1195)
!1197 = !DILocation(line: 491, column: 31, scope: !344)
!1198 = !DILocation(line: 491, column: 13, scope: !344)
!1199 = !DILocation(line: 492, column: 20, scope: !352)
!1200 = !{!945, !763, i64 3052}
!1201 = !DILocation(line: 492, column: 13, scope: !352)
!1202 = !DILocation(line: 492, column: 48, scope: !352)
!1203 = !DILocation(line: 492, column: 41, scope: !352)
!1204 = !DILocation(line: 492, column: 37, scope: !352)
!1205 = !DILocation(line: 493, column: 13, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !352, file: !3, line: 492, column: 72)
!1207 = !DILocation(line: 495, column: 13, scope: !1206)
!1208 = !DILocation(line: 496, column: 27, scope: !351)
!1209 = !{!945, !764, i64 2464}
!1210 = !DILocation(line: 496, column: 20, scope: !351)
!1211 = !DILocation(line: 496, column: 48, scope: !351)
!1212 = !DILocation(line: 496, column: 41, scope: !351)
!1213 = !DILocation(line: 496, column: 38, scope: !351)
!1214 = !DILocation(line: 497, column: 28, scope: !351)
!1215 = !DILocation(line: 497, column: 21, scope: !351)
!1216 = !DILocation(line: 498, column: 29, scope: !351)
!1217 = !DILocation(line: 498, column: 41, scope: !351)
!1218 = !DILocation(line: 498, column: 47, scope: !351)
!1219 = !DILocation(line: 496, column: 20, scope: !352)
!1220 = !DILocation(line: 500, column: 38, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !351, file: !3, line: 499, column: 9)
!1222 = !{!934, !764, i64 192}
!1223 = !DILocation(line: 500, column: 50, scope: !1221)
!1224 = !DILocation(line: 500, column: 13, scope: !1221)
!1225 = !DILocation(line: 501, column: 13, scope: !1221)
!1226 = !DILocation(line: 502, column: 20, scope: !351)
!1227 = !DILocation(line: 504, column: 42, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !348, file: !3, line: 503, column: 57)
!1229 = !{!934, !764, i64 176}
!1230 = !DILocation(line: 504, column: 53, scope: !1228)
!1231 = !DILocation(line: 504, column: 17, scope: !1228)
!1232 = !DILocation(line: 505, column: 13, scope: !1228)
!1233 = !DILocation(line: 506, column: 47, scope: !347)
!1234 = !DILocation(line: 508, column: 37, scope: !347)
!1235 = !{!945, !763, i64 2028}
!1236 = !DILocation(line: 508, column: 21, scope: !347)
!1237 = !DILocation(line: 506, column: 37, scope: !347)
!1238 = !DILocation(line: 506, column: 21, scope: !347)
!1239 = !DILocation(line: 509, column: 17, scope: !347)
!1240 = !DILocation(line: 510, column: 17, scope: !347)
!1241 = !DILocation(line: 520, column: 16, scope: !1195)
!1242 = !{!945, !537, i64 2704}
!1243 = !DILocation(line: 520, column: 9, scope: !1195)
!1244 = !DILocation(line: 521, column: 10, scope: !1195)
!1245 = !DILocation(line: 520, column: 26, scope: !1195)
!1246 = !DILocation(line: 522, column: 10, scope: !1195)
!1247 = !DILocation(line: 523, column: 16, scope: !1195)
!1248 = !DILocation(line: 523, column: 32, scope: !1195)
!1249 = !DILocation(line: 524, column: 15, scope: !1195)
!1250 = !DILocation(line: 524, column: 21, scope: !1195)
!1251 = !DILocation(line: 520, column: 9, scope: !71)
!1252 = !DILocation(line: 526, column: 13, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 526, column: 13)
!1254 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 525, column: 5)
!1255 = !DILocation(line: 526, column: 52, scope: !1253)
!1256 = !DILocation(line: 526, column: 13, scope: !1254)
!1257 = !DILocation(line: 527, column: 38, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 526, column: 61)
!1259 = !{!934, !764, i64 232}
!1260 = !DILocation(line: 527, column: 46, scope: !1258)
!1261 = !DILocation(line: 527, column: 13, scope: !1258)
!1262 = !DILocation(line: 528, column: 13, scope: !1258)
!1263 = !DILocation(line: 532, column: 14, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !71, file: !3, line: 532, column: 9)
!1265 = !DILocation(line: 532, column: 20, scope: !1264)
!1266 = !DILocation(line: 532, column: 9, scope: !71)
!1267 = !DILocation(line: 532, column: 58, scope: !1264)
!1268 = !DILocation(line: 532, column: 34, scope: !1264)
!1269 = !DILocation(line: 533, column: 20, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !71, file: !3, line: 533, column: 9)
!1271 = !DILocation(line: 533, column: 9, scope: !71)
!1272 = !DILocation(line: 533, column: 56, scope: !1270)
!1273 = !{!945, !763, i64 3048}
!1274 = !DILocation(line: 533, column: 33, scope: !1270)
!1275 = !DILocation(line: 538, column: 16, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !71, file: !3, line: 538, column: 9)
!1277 = !{!945, !763, i64 2924}
!1278 = !DILocation(line: 538, column: 9, scope: !1276)
!1279 = !DILocation(line: 538, column: 43, scope: !1276)
!1280 = !DILocation(line: 538, column: 36, scope: !1276)
!1281 = !DILocation(line: 538, column: 32, scope: !1276)
!1282 = !DILocation(line: 539, column: 18, scope: !1276)
!1283 = !DILocation(line: 539, column: 30, scope: !1276)
!1284 = !DILocation(line: 539, column: 36, scope: !1276)
!1285 = !DILocation(line: 538, column: 9, scope: !71)
!1286 = !DILocation(line: 542, column: 12, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 540, column: 5)
!1288 = !DILocation(line: 542, column: 18, scope: !1287)
!1289 = !DILocation(line: 543, column: 40, scope: !1287)
!1290 = !DILocation(line: 543, column: 46, scope: !1287)
!1291 = !DILocation(line: 543, column: 18, scope: !1287)
!1292 = !DILocation(line: 544, column: 33, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 544, column: 13)
!1294 = !DILocation(line: 544, column: 40, scope: !1293)
!1295 = !DILocation(line: 544, column: 48, scope: !1293)
!1296 = !DILocation(line: 544, column: 13, scope: !1293)
!1297 = !DILocation(line: 545, column: 35, scope: !1293)
!1298 = !{!945, !764, i64 2944}
!1299 = !DILocation(line: 545, column: 44, scope: !1293)
!1300 = !{!1301, !764, i64 0}
!1301 = !{!"clusterState", !764, i64 0, !765, i64 8, !763, i64 16, !763, i64 20, !764, i64 24, !764, i64 32, !486, i64 40, !486, i64 131112, !486, i64 262184, !486, i64 393256, !764, i64 524328, !537, i64 524336, !763, i64 524344, !763, i64 524348, !763, i64 524352, !765, i64 524360, !763, i64 524368, !537, i64 524376, !764, i64 524384, !537, i64 524392, !763, i64 524400, !765, i64 524408, !763, i64 524416, !486, i64 524424, !486, i64 524504, !537, i64 524584}
!1302 = !DILocation(line: 544, column: 64, scope: !1293)
!1303 = !DILocation(line: 544, column: 13, scope: !1287)
!1304 = !DILocation(line: 547, column: 13, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 546, column: 9)
!1306 = !DILocation(line: 550, column: 13, scope: !1305)
!1307 = !DILocation(line: 557, column: 16, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !71, file: !3, line: 557, column: 9)
!1309 = !{!945, !763, i64 3056}
!1310 = !DILocation(line: 557, column: 9, scope: !1308)
!1311 = !DILocation(line: 558, column: 17, scope: !1308)
!1312 = !DILocation(line: 558, column: 10, scope: !1308)
!1313 = !DILocation(line: 557, column: 39, scope: !1308)
!1314 = !DILocation(line: 559, column: 18, scope: !1308)
!1315 = !DILocation(line: 559, column: 30, scope: !1308)
!1316 = !DILocation(line: 559, column: 36, scope: !1308)
!1317 = !DILocation(line: 560, column: 16, scope: !1308)
!1318 = !DILocation(line: 560, column: 9, scope: !1308)
!1319 = !DILocation(line: 559, column: 52, scope: !1308)
!1320 = !DILocation(line: 561, column: 16, scope: !1308)
!1321 = !DILocation(line: 561, column: 25, scope: !1308)
!1322 = !DILocation(line: 563, column: 9, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 562, column: 5)
!1324 = !DILocation(line: 564, column: 34, scope: !1323)
!1325 = !DILocation(line: 569, column: 16, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !71, file: !3, line: 569, column: 9)
!1327 = !DILocation(line: 565, column: 5, scope: !1323)
!1328 = !DILocation(line: 568, column: 9, scope: !71)
!1329 = !DILocation(line: 569, column: 9, scope: !1326)
!1330 = !DILocation(line: 569, column: 9, scope: !71)
!1331 = !DILocation(line: 571, column: 20, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 571, column: 13)
!1333 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 569, column: 40)
!1334 = !{!945, !763, i64 3064}
!1335 = !DILocation(line: 571, column: 29, scope: !1332)
!1336 = !DILocation(line: 571, column: 13, scope: !1333)
!1337 = !DILocation(line: 573, column: 13, scope: !1333)
!1338 = !DILocation(line: 0, scope: !71)
!1339 = !DILocation(line: 576, column: 5, scope: !71)
!1340 = !DILocation(line: 581, column: 9, scope: !357)
!1341 = !{!960, !764, i64 112}
!1342 = !{!1343, !765, i64 40}
!1343 = !{!"list", !764, i64 0, !764, i64 8, !764, i64 16, !764, i64 24, !764, i64 32, !765, i64 40}
!1344 = !DILocation(line: 581, column: 30, scope: !357)
!1345 = !DILocation(line: 0, scope: !356)
!1346 = !{!960, !763, i64 528}
!1347 = !DILocation(line: 581, column: 48, scope: !357)
!1348 = !DILocation(line: 581, column: 35, scope: !357)
!1349 = !DILocation(line: 585, column: 9, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !357, file: !3, line: 581, column: 75)
!1351 = !DILocation(line: 585, column: 27, scope: !1350)
!1352 = !DILocation(line: 586, column: 17, scope: !1350)
!1353 = !DILocation(line: 352, column: 9, scope: !71)
!1354 = !DILocation(line: 587, column: 19, scope: !1350)
!1355 = !DILocation(line: 588, column: 5, scope: !1350)
!1356 = !DILocation(line: 589, column: 27, scope: !356)
!1357 = !DILocation(line: 589, column: 34, scope: !356)
!1358 = !DILocation(line: 589, column: 17, scope: !356)
!1359 = !DILocation(line: 590, column: 19, scope: !356)
!1360 = !DILocation(line: 591, column: 15, scope: !356)
!1361 = !DILocation(line: 591, column: 9, scope: !356)
!1362 = !DILocation(line: 592, column: 35, scope: !355)
!1363 = !{!1343, !764, i64 0}
!1364 = !{!1365, !764, i64 16}
!1365 = !{!"listNode", !764, i64 0, !764, i64 8, !764, i64 16}
!1366 = !DILocation(line: 592, column: 31, scope: !355)
!1367 = !DILocation(line: 594, column: 37, scope: !355)
!1368 = !DILocation(line: 594, column: 47, scope: !355)
!1369 = !DILocation(line: 594, column: 21, scope: !355)
!1370 = !DILocation(line: 595, column: 28, scope: !355)
!1371 = !DILocation(line: 595, column: 34, scope: !355)
!1372 = !DILocation(line: 595, column: 13, scope: !355)
!1373 = distinct !{!1373, !1361, !1374}
!1374 = !DILocation(line: 596, column: 9, scope: !356)
!1375 = !DILocation(line: 598, column: 9, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !71, file: !3, line: 598, column: 9)
!1377 = !DILocation(line: 598, column: 21, scope: !1376)
!1378 = !DILocation(line: 598, column: 24, scope: !1376)
!1379 = !DILocation(line: 598, column: 33, scope: !1376)
!1380 = !DILocation(line: 598, column: 9, scope: !71)
!1381 = !DILocation(line: 599, column: 5, scope: !71)
!1382 = !DILocation(line: 602, column: 13, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !71, file: !3, line: 602, column: 9)
!1384 = !DILocation(line: 602, column: 9, scope: !1383)
!1385 = !DILocation(line: 602, column: 27, scope: !1383)
!1386 = !DILocation(line: 602, column: 23, scope: !1383)
!1387 = !DILocation(line: 602, column: 20, scope: !1383)
!1388 = !DILocalVariable(name: "reply", arg: 1, scope: !1389, file: !3, line: 2093, type: !11)
!1389 = distinct !DISubprogram(name: "ldbLogRedisReply", scope: !3, file: !3, line: 2093, type: !1390, isLocal: false, isDefinition: true, scopeLine: 2093, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1392)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{null, !11}
!1392 = !{!1388, !1393}
!1393 = !DILocalVariable(name: "log", scope: !1389, file: !3, line: 2094, type: !209)
!1394 = !DILocation(line: 2093, column: 29, scope: !1389, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 603, column: 9, scope: !1383)
!1396 = !DILocation(line: 2094, column: 5, scope: !1389, inlinedAt: !1395)
!1397 = !DILocation(line: 2094, column: 15, scope: !1389, inlinedAt: !1395)
!1398 = !DILocation(line: 2094, column: 9, scope: !1389, inlinedAt: !1395)
!1399 = !DILocation(line: 2095, column: 5, scope: !1389, inlinedAt: !1395)
!1400 = !DILocation(line: 2096, column: 22, scope: !1389, inlinedAt: !1395)
!1401 = !DILocation(line: 2096, column: 5, scope: !1389, inlinedAt: !1395)
!1402 = !DILocation(line: 2097, column: 1, scope: !1389, inlinedAt: !1395)
!1403 = !DILocation(line: 603, column: 9, scope: !1383)
!1404 = !DILocation(line: 607, column: 15, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !71, file: !3, line: 607, column: 9)
!1406 = !DILocation(line: 607, column: 21, scope: !1405)
!1407 = !DILocation(line: 608, column: 17, scope: !1405)
!1408 = !DILocation(line: 608, column: 40, scope: !1405)
!1409 = !DILocation(line: 607, column: 44, scope: !1405)
!1410 = !DILocation(line: 609, column: 10, scope: !1405)
!1411 = !DILocation(line: 609, column: 19, scope: !1405)
!1412 = !DILocation(line: 609, column: 26, scope: !1405)
!1413 = !DILocation(line: 609, column: 29, scope: !1405)
!1414 = !DILocation(line: 609, column: 38, scope: !1405)
!1415 = !DILocation(line: 607, column: 9, scope: !71)
!1416 = !DILocation(line: 610, column: 13, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 609, column: 47)
!1418 = !DILocation(line: 611, column: 5, scope: !1417)
!1419 = !DILocation(line: 612, column: 18, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !71, file: !3, line: 612, column: 9)
!1421 = !DILocation(line: 612, column: 15, scope: !1420)
!1422 = !DILocation(line: 612, column: 9, scope: !71)
!1423 = !DILocation(line: 612, column: 26, scope: !1420)
!1424 = !DILocation(line: 613, column: 8, scope: !71)
!1425 = !DILocation(line: 613, column: 20, scope: !71)
!1426 = !{!960, !537, i64 120}
!1427 = !DILocation(line: 613, column: 5, scope: !71)
!1428 = !DILocation(line: 618, column: 24, scope: !367)
!1429 = !DILocation(line: 618, column: 19, scope: !367)
!1430 = !DILocation(line: 0, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !71, file: !3, line: 639, column: 9)
!1432 = !DILocation(line: 618, column: 5, scope: !368)
!1433 = !DILocation(line: 619, column: 19, scope: !366)
!1434 = !DILocation(line: 619, column: 15, scope: !366)
!1435 = !DILocation(line: 624, column: 15, scope: !371)
!1436 = !DILocation(line: 624, column: 39, scope: !371)
!1437 = !DILocation(line: 625, column: 16, scope: !371)
!1438 = !{!1038, !763, i64 4}
!1439 = !DILocation(line: 625, column: 25, scope: !371)
!1440 = !DILocation(line: 625, column: 30, scope: !371)
!1441 = !DILocation(line: 626, column: 17, scope: !371)
!1442 = !DILocation(line: 626, column: 46, scope: !371)
!1443 = !DILocation(line: 628, column: 23, scope: !371)
!1444 = !DILocalVariable(name: "s", arg: 1, scope: !1445, file: !26, line: 87, type: !1448)
!1445 = distinct !DISubprogram(name: "sdslen", scope: !26, file: !26, line: 87, type: !1446, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1449)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!1050, !1448}
!1448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!1449 = !{!1444, !1450}
!1450 = !DILocalVariable(name: "flags", scope: !1445, file: !26, line: 88, type: !7)
!1451 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 628, column: 13, scope: !371)
!1453 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !1452)
!1454 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !1452)
!1455 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !1452)
!1456 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !1452)
!1457 = distinct !DILexicalBlock(scope: !1445, file: !26, line: 89, column: 33)
!1458 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !1452)
!1459 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !1452)
!1460 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !1452)
!1461 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !1452)
!1462 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !1452)
!1463 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !1452)
!1464 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !1452)
!1465 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !1452)
!1466 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !1452)
!1467 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !1452)
!1468 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !1452)
!1469 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !1452)
!1470 = !DILocation(line: 624, column: 13, scope: !366)
!1471 = !DILocation(line: 0, scope: !1457, inlinedAt: !1452)
!1472 = !DILocation(line: 628, column: 28, scope: !371)
!1473 = !DILocation(line: 630, column: 17, scope: !370)
!1474 = !DILocation(line: 631, column: 17, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !370, file: !3, line: 631, column: 17)
!1476 = !DILocation(line: 631, column: 17, scope: !370)
!1477 = !DILocation(line: 631, column: 36, scope: !1475)
!1478 = !DILocation(line: 632, column: 31, scope: !370)
!1479 = !DILocalVariable(name: "s", arg: 1, scope: !1480, file: !26, line: 180, type: !1448)
!1480 = distinct !DISubprogram(name: "sdsalloc", scope: !26, file: !26, line: 180, type: !1446, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1481)
!1481 = !{!1479, !1482}
!1482 = !DILocalVariable(name: "flags", scope: !1480, file: !26, line: 181, type: !7)
!1483 = !DILocation(line: 180, column: 41, scope: !1480, inlinedAt: !1484)
!1484 = distinct !DILocation(line: 633, column: 37, scope: !370)
!1485 = !DILocation(line: 181, column: 27, scope: !1480, inlinedAt: !1484)
!1486 = !DILocation(line: 181, column: 19, scope: !1480, inlinedAt: !1484)
!1487 = !DILocation(line: 182, column: 5, scope: !1480, inlinedAt: !1484)
!1488 = !DILocation(line: 184, column: 20, scope: !1489, inlinedAt: !1484)
!1489 = distinct !DILexicalBlock(scope: !1480, file: !26, line: 182, column: 33)
!1490 = !DILocation(line: 184, column: 13, scope: !1489, inlinedAt: !1484)
!1491 = !DILocation(line: 186, column: 34, scope: !1489, inlinedAt: !1484)
!1492 = !DILocation(line: 186, column: 20, scope: !1489, inlinedAt: !1484)
!1493 = !DILocation(line: 186, column: 13, scope: !1489, inlinedAt: !1484)
!1494 = !DILocation(line: 188, column: 35, scope: !1489, inlinedAt: !1484)
!1495 = !DILocation(line: 188, column: 20, scope: !1489, inlinedAt: !1484)
!1496 = !DILocation(line: 188, column: 13, scope: !1489, inlinedAt: !1484)
!1497 = !DILocation(line: 190, column: 35, scope: !1489, inlinedAt: !1484)
!1498 = !DILocation(line: 190, column: 20, scope: !1489, inlinedAt: !1484)
!1499 = !DILocation(line: 190, column: 13, scope: !1489, inlinedAt: !1484)
!1500 = !DILocation(line: 192, column: 35, scope: !1489, inlinedAt: !1484)
!1501 = !DILocation(line: 192, column: 13, scope: !1489, inlinedAt: !1484)
!1502 = !DILocation(line: 0, scope: !1489, inlinedAt: !1484)
!1503 = !DILocation(line: 195, column: 1, scope: !1480, inlinedAt: !1484)
!1504 = !DILocation(line: 633, column: 13, scope: !370)
!1505 = !DILocation(line: 633, column: 35, scope: !370)
!1506 = !DILocation(line: 634, column: 9, scope: !370)
!1507 = !DILocation(line: 635, column: 13, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !371, file: !3, line: 634, column: 16)
!1509 = !DILocation(line: 618, column: 31, scope: !367)
!1510 = distinct !{!1510, !1432, !1511}
!1511 = !DILocation(line: 637, column: 5, scope: !368)
!1512 = !DILocation(line: 639, column: 20, scope: !1431)
!1513 = !DILocation(line: 639, column: 17, scope: !1431)
!1514 = !DILocation(line: 639, column: 9, scope: !71)
!1515 = !DILocation(line: 640, column: 15, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 639, column: 26)
!1517 = !DILocation(line: 640, column: 9, scope: !1516)
!1518 = !DILocation(line: 641, column: 14, scope: !1516)
!1519 = !DILocation(line: 642, column: 19, scope: !1516)
!1520 = !DILocation(line: 643, column: 5, scope: !1516)
!1521 = !DILocation(line: 645, column: 9, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !71, file: !3, line: 645, column: 9)
!1523 = !DILocation(line: 645, column: 9, scope: !71)
!1524 = !DILocation(line: 236, column: 30, scope: !811, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 650, column: 16, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1522, file: !3, line: 645, column: 22)
!1527 = !DILocation(line: 237, column: 5, scope: !811, inlinedAt: !1525)
!1528 = !DILocation(line: 238, column: 5, scope: !811, inlinedAt: !1525)
!1529 = !DILocation(line: 239, column: 12, scope: !811, inlinedAt: !1525)
!1530 = !DILocation(line: 239, column: 5, scope: !811, inlinedAt: !1525)
!1531 = !DILocation(line: 650, column: 9, scope: !1526)
!1532 = !DILocation(line: 654, column: 1, scope: !71)
!1533 = !DILocation(line: 457, column: 30, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 455, column: 26)
!1535 = !DILocation(line: 456, column: 26, scope: !1534)
!1536 = !DILocation(line: 458, column: 17, scope: !1534)
!1537 = !DILocation(line: 2093, column: 29, scope: !1389)
!1538 = !DILocation(line: 2094, column: 5, scope: !1389)
!1539 = !DILocation(line: 2094, column: 15, scope: !1389)
!1540 = !DILocation(line: 2094, column: 9, scope: !1389)
!1541 = !DILocation(line: 2095, column: 5, scope: !1389)
!1542 = !DILocation(line: 2096, column: 22, scope: !1389)
!1543 = !DILocation(line: 2096, column: 5, scope: !1389)
!1544 = !DILocation(line: 2097, column: 1, scope: !1389)
!1545 = distinct !DISubprogram(name: "luaRedisCallCommand", scope: !3, file: !3, line: 657, type: !812, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1546)
!1546 = !{!1547}
!1547 = !DILocalVariable(name: "lua", arg: 1, scope: !1545, file: !3, line: 657, type: !74)
!1548 = !DILocation(line: 657, column: 36, scope: !1545)
!1549 = !DILocation(line: 658, column: 12, scope: !1545)
!1550 = !DILocation(line: 658, column: 5, scope: !1545)
!1551 = distinct !DISubprogram(name: "luaRedisPCallCommand", scope: !3, file: !3, line: 662, type: !812, isLocal: false, isDefinition: true, scopeLine: 662, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1552)
!1552 = !{!1553}
!1553 = !DILocalVariable(name: "lua", arg: 1, scope: !1551, file: !3, line: 662, type: !74)
!1554 = !DILocation(line: 662, column: 37, scope: !1551)
!1555 = !DILocation(line: 663, column: 12, scope: !1551)
!1556 = !DILocation(line: 663, column: 5, scope: !1551)
!1557 = distinct !DISubprogram(name: "luaRedisSha1hexCommand", scope: !3, file: !3, line: 668, type: !812, isLocal: false, isDefinition: true, scopeLine: 668, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1558)
!1558 = !{!1559, !1560, !1561, !1562, !1563}
!1559 = !DILocalVariable(name: "lua", arg: 1, scope: !1557, file: !3, line: 668, type: !74)
!1560 = !DILocalVariable(name: "argc", scope: !1557, file: !3, line: 669, type: !15)
!1561 = !DILocalVariable(name: "digest", scope: !1557, file: !3, line: 670, type: !252)
!1562 = !DILocalVariable(name: "len", scope: !1557, file: !3, line: 671, type: !211)
!1563 = !DILocalVariable(name: "s", scope: !1557, file: !3, line: 672, type: !11)
!1564 = !DILocation(line: 91, column: 19, scope: !442, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 680, column: 5, scope: !1557)
!1566 = !DILocation(line: 668, column: 39, scope: !1557)
!1567 = !DILocation(line: 669, column: 16, scope: !1557)
!1568 = !DILocation(line: 669, column: 9, scope: !1557)
!1569 = !DILocation(line: 670, column: 5, scope: !1557)
!1570 = !DILocation(line: 670, column: 10, scope: !1557)
!1571 = !DILocation(line: 671, column: 5, scope: !1557)
!1572 = !DILocation(line: 674, column: 14, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 674, column: 9)
!1574 = !DILocation(line: 674, column: 9, scope: !1557)
!1575 = !DILocation(line: 675, column: 9, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 674, column: 20)
!1577 = !DILocation(line: 676, column: 16, scope: !1576)
!1578 = !DILocation(line: 676, column: 9, scope: !1576)
!1579 = !DILocation(line: 671, column: 12, scope: !1557)
!1580 = !DILocation(line: 679, column: 16, scope: !1557)
!1581 = !DILocation(line: 672, column: 11, scope: !1557)
!1582 = !DILocation(line: 680, column: 22, scope: !1557)
!1583 = !DILocation(line: 89, column: 20, scope: !442, inlinedAt: !1565)
!1584 = !DILocation(line: 89, column: 34, scope: !442, inlinedAt: !1565)
!1585 = !DILocation(line: 89, column: 49, scope: !442, inlinedAt: !1565)
!1586 = !DILocation(line: 90, column: 5, scope: !442, inlinedAt: !1565)
!1587 = !DILocation(line: 91, column: 5, scope: !442, inlinedAt: !1565)
!1588 = !DILocation(line: 90, column: 14, scope: !442, inlinedAt: !1565)
!1589 = !DILocation(line: 95, column: 5, scope: !442, inlinedAt: !1565)
!1590 = !DILocation(line: 96, column: 44, scope: !442, inlinedAt: !1565)
!1591 = !DILocation(line: 96, column: 5, scope: !442, inlinedAt: !1565)
!1592 = !DILocation(line: 97, column: 5, scope: !442, inlinedAt: !1565)
!1593 = !DILocation(line: 93, column: 9, scope: !442, inlinedAt: !1565)
!1594 = !DILocation(line: 99, column: 5, scope: !481, inlinedAt: !1565)
!1595 = !DILocation(line: 100, column: 30, scope: !483, inlinedAt: !1565)
!1596 = !DILocation(line: 100, column: 43, scope: !483, inlinedAt: !1565)
!1597 = !DILocation(line: 100, column: 23, scope: !483, inlinedAt: !1565)
!1598 = !DILocation(line: 100, column: 17, scope: !483, inlinedAt: !1565)
!1599 = !DILocation(line: 100, column: 9, scope: !483, inlinedAt: !1565)
!1600 = !DILocation(line: 100, column: 21, scope: !483, inlinedAt: !1565)
!1601 = !DILocation(line: 101, column: 38, scope: !483, inlinedAt: !1565)
!1602 = !DILocation(line: 101, column: 25, scope: !483, inlinedAt: !1565)
!1603 = !DILocation(line: 101, column: 19, scope: !483, inlinedAt: !1565)
!1604 = !DILocation(line: 101, column: 9, scope: !483, inlinedAt: !1565)
!1605 = !DILocation(line: 101, column: 23, scope: !483, inlinedAt: !1565)
!1606 = !DILocation(line: 99, column: 26, scope: !484, inlinedAt: !1565)
!1607 = !DILocation(line: 99, column: 19, scope: !484, inlinedAt: !1565)
!1608 = !DILocation(line: 103, column: 5, scope: !442, inlinedAt: !1565)
!1609 = !DILocation(line: 103, column: 16, scope: !442, inlinedAt: !1565)
!1610 = !DILocation(line: 104, column: 1, scope: !442, inlinedAt: !1565)
!1611 = !DILocation(line: 681, column: 5, scope: !1557)
!1612 = !DILocation(line: 682, column: 5, scope: !1557)
!1613 = !DILocation(line: 0, scope: !1557)
!1614 = !DILocation(line: 683, column: 1, scope: !1557)
!1615 = distinct !DISubprogram(name: "luaRedisReturnSingleFieldTable", scope: !3, file: !3, line: 692, type: !1616, isLocal: false, isDefinition: true, scopeLine: 692, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1618)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!15, !74, !11}
!1618 = !{!1619, !1620}
!1619 = !DILocalVariable(name: "lua", arg: 1, scope: !1615, file: !3, line: 692, type: !74)
!1620 = !DILocalVariable(name: "field", arg: 2, scope: !1615, file: !3, line: 692, type: !11)
!1621 = !DILocation(line: 692, column: 47, scope: !1615)
!1622 = !DILocation(line: 692, column: 58, scope: !1615)
!1623 = !DILocation(line: 693, column: 9, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 693, column: 9)
!1625 = !DILocation(line: 693, column: 25, scope: !1624)
!1626 = !DILocation(line: 693, column: 30, scope: !1624)
!1627 = !DILocation(line: 693, column: 33, scope: !1624)
!1628 = !DILocation(line: 693, column: 50, scope: !1624)
!1629 = !DILocation(line: 693, column: 9, scope: !1615)
!1630 = !DILocation(line: 694, column: 9, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 693, column: 66)
!1632 = !DILocation(line: 695, column: 9, scope: !1631)
!1633 = !DILocation(line: 698, column: 5, scope: !1615)
!1634 = !DILocation(line: 699, column: 5, scope: !1615)
!1635 = !DILocation(line: 700, column: 5, scope: !1615)
!1636 = !DILocation(line: 701, column: 5, scope: !1615)
!1637 = !DILocation(line: 702, column: 5, scope: !1615)
!1638 = !DILocation(line: 703, column: 1, scope: !1615)
!1639 = distinct !DISubprogram(name: "luaRedisErrorReplyCommand", scope: !3, file: !3, line: 706, type: !812, isLocal: false, isDefinition: true, scopeLine: 706, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1640)
!1640 = !{!1641}
!1641 = !DILocalVariable(name: "lua", arg: 1, scope: !1639, file: !3, line: 706, type: !74)
!1642 = !DILocation(line: 706, column: 42, scope: !1639)
!1643 = !DILocation(line: 707, column: 12, scope: !1639)
!1644 = !DILocation(line: 707, column: 5, scope: !1639)
!1645 = distinct !DISubprogram(name: "luaRedisStatusReplyCommand", scope: !3, file: !3, line: 711, type: !812, isLocal: false, isDefinition: true, scopeLine: 711, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1646)
!1646 = !{!1647}
!1647 = !DILocalVariable(name: "lua", arg: 1, scope: !1645, file: !3, line: 711, type: !74)
!1648 = !DILocation(line: 711, column: 43, scope: !1645)
!1649 = !DILocation(line: 712, column: 12, scope: !1645)
!1650 = !DILocation(line: 712, column: 5, scope: !1645)
!1651 = distinct !DISubprogram(name: "luaRedisReplicateCommandsCommand", scope: !3, file: !3, line: 721, type: !812, isLocal: false, isDefinition: true, scopeLine: 721, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1652)
!1652 = !{!1653}
!1653 = !DILocalVariable(name: "lua", arg: 1, scope: !1651, file: !3, line: 721, type: !74)
!1654 = !DILocation(line: 721, column: 49, scope: !1651)
!1655 = !DILocation(line: 722, column: 16, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 722, column: 9)
!1657 = !DILocation(line: 722, column: 9, scope: !1656)
!1658 = !DILocation(line: 722, column: 9, scope: !1651)
!1659 = !DILocation(line: 723, column: 9, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 722, column: 33)
!1661 = !DILocation(line: 724, column: 5, scope: !1660)
!1662 = !DILocation(line: 725, column: 39, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 724, column: 12)
!1664 = !DILocation(line: 729, column: 22, scope: !1663)
!1665 = !DILocation(line: 729, column: 9, scope: !1663)
!1666 = !DILocation(line: 730, column: 9, scope: !1663)
!1667 = !DILocation(line: 732, column: 5, scope: !1651)
!1668 = distinct !DISubprogram(name: "luaRedisBreakpointCommand", scope: !3, file: !3, line: 740, type: !812, isLocal: false, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1669)
!1669 = !{!1670}
!1670 = !DILocalVariable(name: "lua", arg: 1, scope: !1668, file: !3, line: 740, type: !74)
!1671 = !DILocation(line: 740, column: 42, scope: !1668)
!1672 = !DILocation(line: 741, column: 13, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 741, column: 9)
!1674 = !DILocation(line: 741, column: 9, scope: !1673)
!1675 = !DILocation(line: 741, column: 9, scope: !1668)
!1676 = !DILocation(line: 742, column: 19, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 741, column: 21)
!1678 = !{!762, !763, i64 304}
!1679 = !DILocation(line: 743, column: 9, scope: !1677)
!1680 = !DILocation(line: 744, column: 5, scope: !1677)
!1681 = !DILocation(line: 745, column: 9, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 744, column: 12)
!1683 = !DILocation(line: 747, column: 5, scope: !1668)
!1684 = distinct !DISubprogram(name: "luaRedisDebugCommand", scope: !3, file: !3, line: 755, type: !812, isLocal: false, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1685)
!1685 = !{!1686, !1687, !1688}
!1686 = !DILocalVariable(name: "lua", arg: 1, scope: !1684, file: !3, line: 755, type: !74)
!1687 = !DILocalVariable(name: "argc", scope: !1684, file: !3, line: 757, type: !15)
!1688 = !DILocalVariable(name: "log", scope: !1684, file: !3, line: 758, type: !209)
!1689 = !DILocation(line: 755, column: 37, scope: !1684)
!1690 = !DILocation(line: 756, column: 14, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 756, column: 9)
!1692 = !DILocation(line: 756, column: 10, scope: !1691)
!1693 = !DILocation(line: 756, column: 9, scope: !1684)
!1694 = !DILocation(line: 757, column: 16, scope: !1684)
!1695 = !DILocation(line: 757, column: 9, scope: !1684)
!1696 = !DILocation(line: 758, column: 28, scope: !1684)
!1697 = !DILocation(line: 758, column: 64, scope: !1684)
!1698 = !{!762, !763, i64 324}
!1699 = !DILocation(line: 758, column: 15, scope: !1684)
!1700 = !DILocation(line: 758, column: 9, scope: !1684)
!1701 = !DILocation(line: 759, column: 5, scope: !1684)
!1702 = !DILocation(line: 759, column: 15, scope: !1684)
!1703 = !DILocation(line: 760, column: 43, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 759, column: 19)
!1705 = !DILocalVariable(name: "s", arg: 1, scope: !1706, file: !3, line: 2005, type: !209)
!1706 = distinct !DISubprogram(name: "ldbCatStackValue", scope: !3, file: !3, line: 2005, type: !1707, isLocal: false, isDefinition: true, scopeLine: 2005, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1709)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!209, !209, !74, !15}
!1709 = !{!1705, !1710, !1711}
!1710 = !DILocalVariable(name: "lua", arg: 2, scope: !1706, file: !3, line: 2005, type: !74)
!1711 = !DILocalVariable(name: "idx", arg: 3, scope: !1706, file: !3, line: 2005, type: !15)
!1712 = !DILocation(line: 2005, column: 26, scope: !1706, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 760, column: 15, scope: !1704)
!1714 = !DILocation(line: 2005, column: 40, scope: !1706, inlinedAt: !1713)
!1715 = !DILocation(line: 2005, column: 49, scope: !1706, inlinedAt: !1713)
!1716 = !DILocation(line: 2006, column: 12, scope: !1706, inlinedAt: !1713)
!1717 = !DILocation(line: 2006, column: 5, scope: !1706, inlinedAt: !1713)
!1718 = !DILocation(line: 761, column: 18, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 761, column: 13)
!1720 = !DILocation(line: 761, column: 13, scope: !1704)
!1721 = !DILocation(line: 761, column: 30, scope: !1719)
!1722 = !DILocation(line: 0, scope: !1719)
!1723 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 763, column: 5, scope: !1684)
!1725 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !1724)
!1726 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !1724)
!1727 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !1724)
!1728 = !DILocation(line: 765, column: 1, scope: !1684)
!1729 = !DILocation(line: 2005, column: 26, scope: !1706)
!1730 = !DILocation(line: 2005, column: 40, scope: !1706)
!1731 = !DILocation(line: 2005, column: 49, scope: !1706)
!1732 = !DILocation(line: 2006, column: 12, scope: !1706)
!1733 = !DILocation(line: 2006, column: 5, scope: !1706)
!1734 = distinct !DISubprogram(name: "luaRedisSetReplCommand", scope: !3, file: !3, line: 771, type: !812, isLocal: false, isDefinition: true, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1735)
!1735 = !{!1736, !1737, !1738}
!1736 = !DILocalVariable(name: "lua", arg: 1, scope: !1734, file: !3, line: 771, type: !74)
!1737 = !DILocalVariable(name: "argc", scope: !1734, file: !3, line: 772, type: !15)
!1738 = !DILocalVariable(name: "flags", scope: !1734, file: !3, line: 773, type: !15)
!1739 = !DILocation(line: 771, column: 39, scope: !1734)
!1740 = !DILocation(line: 772, column: 16, scope: !1734)
!1741 = !DILocation(line: 772, column: 9, scope: !1734)
!1742 = !DILocation(line: 775, column: 16, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 775, column: 9)
!1744 = !DILocation(line: 775, column: 39, scope: !1743)
!1745 = !DILocation(line: 775, column: 9, scope: !1734)
!1746 = !DILocation(line: 776, column: 9, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1743, file: !3, line: 775, column: 45)
!1748 = !DILocation(line: 777, column: 16, scope: !1747)
!1749 = !DILocation(line: 777, column: 9, scope: !1747)
!1750 = !DILocation(line: 778, column: 21, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1743, file: !3, line: 778, column: 16)
!1752 = !DILocation(line: 778, column: 16, scope: !1743)
!1753 = !DILocation(line: 779, column: 9, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 778, column: 27)
!1755 = !DILocation(line: 780, column: 16, scope: !1754)
!1756 = !DILocation(line: 780, column: 9, scope: !1754)
!1757 = !DILocation(line: 783, column: 13, scope: !1734)
!1758 = !DILocation(line: 773, column: 9, scope: !1734)
!1759 = !DILocation(line: 784, column: 51, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 784, column: 9)
!1761 = !DILocation(line: 784, column: 9, scope: !1734)
!1762 = !DILocation(line: 785, column: 9, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 784, column: 57)
!1764 = !DILocation(line: 786, column: 16, scope: !1763)
!1765 = !DILocation(line: 786, column: 9, scope: !1763)
!1766 = !DILocation(line: 788, column: 21, scope: !1734)
!1767 = !DILocation(line: 789, column: 5, scope: !1734)
!1768 = !DILocation(line: 0, scope: !1734)
!1769 = !DILocation(line: 790, column: 1, scope: !1734)
!1770 = distinct !DISubprogram(name: "luaLogCommand", scope: !3, file: !3, line: 793, type: !812, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1771)
!1771 = !{!1772, !1773, !1774, !1775, !1776, !1777, !1781}
!1772 = !DILocalVariable(name: "lua", arg: 1, scope: !1770, file: !3, line: 793, type: !74)
!1773 = !DILocalVariable(name: "j", scope: !1770, file: !3, line: 794, type: !15)
!1774 = !DILocalVariable(name: "argc", scope: !1770, file: !3, line: 794, type: !15)
!1775 = !DILocalVariable(name: "level", scope: !1770, file: !3, line: 795, type: !15)
!1776 = !DILocalVariable(name: "log", scope: !1770, file: !3, line: 796, type: !209)
!1777 = !DILocalVariable(name: "len", scope: !1778, file: !3, line: 814, type: !211)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 813, column: 32)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 813, column: 5)
!1780 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 813, column: 5)
!1781 = !DILocalVariable(name: "s", scope: !1778, file: !3, line: 815, type: !11)
!1782 = !DILocation(line: 793, column: 30, scope: !1770)
!1783 = !DILocation(line: 794, column: 19, scope: !1770)
!1784 = !DILocation(line: 794, column: 12, scope: !1770)
!1785 = !DILocation(line: 798, column: 14, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 798, column: 9)
!1787 = !DILocation(line: 798, column: 9, scope: !1770)
!1788 = !DILocation(line: 799, column: 9, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 798, column: 19)
!1790 = !DILocation(line: 800, column: 16, scope: !1789)
!1791 = !DILocation(line: 800, column: 9, scope: !1789)
!1792 = !DILocation(line: 801, column: 34, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 801, column: 16)
!1794 = !DILocation(line: 801, column: 17, scope: !1793)
!1795 = !DILocation(line: 801, column: 16, scope: !1786)
!1796 = !DILocation(line: 802, column: 9, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1793, file: !3, line: 801, column: 42)
!1798 = !DILocation(line: 803, column: 16, scope: !1797)
!1799 = !DILocation(line: 803, column: 9, scope: !1797)
!1800 = !DILocation(line: 805, column: 13, scope: !1770)
!1801 = !DILocation(line: 795, column: 9, scope: !1770)
!1802 = !DILocation(line: 806, column: 26, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 806, column: 9)
!1804 = !DILocation(line: 807, column: 9, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 806, column: 49)
!1806 = !DILocation(line: 808, column: 16, scope: !1805)
!1807 = !DILocation(line: 808, column: 9, scope: !1805)
!1808 = !DILocation(line: 812, column: 11, scope: !1770)
!1809 = !DILocation(line: 796, column: 9, scope: !1770)
!1810 = !DILocation(line: 794, column: 9, scope: !1770)
!1811 = !DILocation(line: 813, column: 5, scope: !1780)
!1812 = !DILocation(line: 814, column: 9, scope: !1778)
!1813 = !DILocation(line: 817, column: 45, scope: !1778)
!1814 = !DILocation(line: 814, column: 16, scope: !1778)
!1815 = !DILocation(line: 817, column: 20, scope: !1778)
!1816 = !DILocation(line: 815, column: 15, scope: !1778)
!1817 = !DILocation(line: 818, column: 13, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1778, file: !3, line: 818, column: 13)
!1819 = !DILocation(line: 818, column: 13, scope: !1778)
!1820 = !DILocation(line: 819, column: 19, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 819, column: 17)
!1822 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 818, column: 16)
!1823 = !DILocation(line: 819, column: 17, scope: !1822)
!1824 = !DILocation(line: 819, column: 31, scope: !1821)
!1825 = !DILocation(line: 819, column: 25, scope: !1821)
!1826 = !DILocation(line: 0, scope: !1770)
!1827 = !DILocation(line: 820, column: 35, scope: !1822)
!1828 = !DILocation(line: 820, column: 19, scope: !1822)
!1829 = !DILocation(line: 821, column: 9, scope: !1822)
!1830 = !DILocation(line: 822, column: 5, scope: !1779)
!1831 = !DILocation(line: 813, column: 28, scope: !1779)
!1832 = !DILocation(line: 813, column: 19, scope: !1779)
!1833 = distinct !{!1833, !1811, !1834}
!1834 = !DILocation(line: 822, column: 5, scope: !1780)
!1835 = !DILocation(line: 823, column: 5, scope: !1770)
!1836 = !DILocation(line: 824, column: 5, scope: !1770)
!1837 = !DILocation(line: 825, column: 5, scope: !1770)
!1838 = !DILocation(line: 0, scope: !1797)
!1839 = !DILocation(line: 826, column: 1, scope: !1770)
!1840 = distinct !DISubprogram(name: "luaLoadLib", scope: !3, file: !3, line: 832, type: !1841, isLocal: false, isDefinition: true, scopeLine: 832, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1845)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null, !74, !739, !1843}
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !9, line: 52, baseType: !1844)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!1845 = !{!1846, !1847, !1848}
!1846 = !DILocalVariable(name: "lua", arg: 1, scope: !1840, file: !3, line: 832, type: !74)
!1847 = !DILocalVariable(name: "libname", arg: 2, scope: !1840, file: !3, line: 832, type: !739)
!1848 = !DILocalVariable(name: "luafunc", arg: 3, scope: !1840, file: !3, line: 832, type: !1843)
!1849 = !DILocation(line: 832, column: 28, scope: !1840)
!1850 = !DILocation(line: 832, column: 45, scope: !1840)
!1851 = !DILocation(line: 832, column: 68, scope: !1840)
!1852 = !DILocation(line: 833, column: 3, scope: !1840)
!1853 = !DILocation(line: 834, column: 3, scope: !1840)
!1854 = !DILocation(line: 835, column: 3, scope: !1840)
!1855 = !DILocation(line: 836, column: 1, scope: !1840)
!1856 = distinct !DISubprogram(name: "luaLoadLibraries", scope: !3, file: !3, line: 843, type: !822, isLocal: false, isDefinition: true, scopeLine: 843, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1857)
!1857 = !{!1858}
!1858 = !DILocalVariable(name: "lua", arg: 1, scope: !1856, file: !3, line: 843, type: !74)
!1859 = !DILocation(line: 843, column: 34, scope: !1856)
!1860 = !DILocation(line: 832, column: 28, scope: !1840, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 844, column: 5, scope: !1856)
!1862 = !DILocation(line: 832, column: 45, scope: !1840, inlinedAt: !1861)
!1863 = !DILocation(line: 832, column: 68, scope: !1840, inlinedAt: !1861)
!1864 = !DILocation(line: 833, column: 3, scope: !1840, inlinedAt: !1861)
!1865 = !DILocation(line: 834, column: 3, scope: !1840, inlinedAt: !1861)
!1866 = !DILocation(line: 835, column: 3, scope: !1840, inlinedAt: !1861)
!1867 = !DILocation(line: 836, column: 1, scope: !1840, inlinedAt: !1861)
!1868 = !DILocation(line: 832, column: 28, scope: !1840, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 845, column: 5, scope: !1856)
!1870 = !DILocation(line: 832, column: 45, scope: !1840, inlinedAt: !1869)
!1871 = !DILocation(line: 832, column: 68, scope: !1840, inlinedAt: !1869)
!1872 = !DILocation(line: 833, column: 3, scope: !1840, inlinedAt: !1869)
!1873 = !DILocation(line: 834, column: 3, scope: !1840, inlinedAt: !1869)
!1874 = !DILocation(line: 835, column: 3, scope: !1840, inlinedAt: !1869)
!1875 = !DILocation(line: 836, column: 1, scope: !1840, inlinedAt: !1869)
!1876 = !DILocation(line: 832, column: 28, scope: !1840, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 846, column: 5, scope: !1856)
!1878 = !DILocation(line: 832, column: 45, scope: !1840, inlinedAt: !1877)
!1879 = !DILocation(line: 832, column: 68, scope: !1840, inlinedAt: !1877)
!1880 = !DILocation(line: 833, column: 3, scope: !1840, inlinedAt: !1877)
!1881 = !DILocation(line: 834, column: 3, scope: !1840, inlinedAt: !1877)
!1882 = !DILocation(line: 835, column: 3, scope: !1840, inlinedAt: !1877)
!1883 = !DILocation(line: 836, column: 1, scope: !1840, inlinedAt: !1877)
!1884 = !DILocation(line: 832, column: 28, scope: !1840, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 847, column: 5, scope: !1856)
!1886 = !DILocation(line: 832, column: 45, scope: !1840, inlinedAt: !1885)
!1887 = !DILocation(line: 832, column: 68, scope: !1840, inlinedAt: !1885)
!1888 = !DILocation(line: 833, column: 3, scope: !1840, inlinedAt: !1885)
!1889 = !DILocation(line: 834, column: 3, scope: !1840, inlinedAt: !1885)
!1890 = !DILocation(line: 835, column: 3, scope: !1840, inlinedAt: !1885)
!1891 = !DILocation(line: 836, column: 1, scope: !1840, inlinedAt: !1885)
!1892 = !DILocation(line: 832, column: 28, scope: !1840, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 848, column: 5, scope: !1856)
!1894 = !DILocation(line: 832, column: 45, scope: !1840, inlinedAt: !1893)
!1895 = !DILocation(line: 832, column: 68, scope: !1840, inlinedAt: !1893)
!1896 = !DILocation(line: 833, column: 3, scope: !1840, inlinedAt: !1893)
!1897 = !DILocation(line: 834, column: 3, scope: !1840, inlinedAt: !1893)
!1898 = !DILocation(line: 835, column: 3, scope: !1840, inlinedAt: !1893)
!1899 = !DILocation(line: 836, column: 1, scope: !1840, inlinedAt: !1893)
!1900 = !DILocation(line: 832, column: 28, scope: !1840, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 849, column: 5, scope: !1856)
!1902 = !DILocation(line: 832, column: 45, scope: !1840, inlinedAt: !1901)
!1903 = !DILocation(line: 832, column: 68, scope: !1840, inlinedAt: !1901)
!1904 = !DILocation(line: 833, column: 3, scope: !1840, inlinedAt: !1901)
!1905 = !DILocation(line: 834, column: 3, scope: !1840, inlinedAt: !1901)
!1906 = !DILocation(line: 835, column: 3, scope: !1840, inlinedAt: !1901)
!1907 = !DILocation(line: 836, column: 1, scope: !1840, inlinedAt: !1901)
!1908 = !DILocation(line: 832, column: 28, scope: !1840, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 850, column: 5, scope: !1856)
!1910 = !DILocation(line: 832, column: 45, scope: !1840, inlinedAt: !1909)
!1911 = !DILocation(line: 832, column: 68, scope: !1840, inlinedAt: !1909)
!1912 = !DILocation(line: 833, column: 3, scope: !1840, inlinedAt: !1909)
!1913 = !DILocation(line: 834, column: 3, scope: !1840, inlinedAt: !1909)
!1914 = !DILocation(line: 835, column: 3, scope: !1840, inlinedAt: !1909)
!1915 = !DILocation(line: 836, column: 1, scope: !1840, inlinedAt: !1909)
!1916 = !DILocation(line: 832, column: 28, scope: !1840, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 851, column: 5, scope: !1856)
!1918 = !DILocation(line: 832, column: 45, scope: !1840, inlinedAt: !1917)
!1919 = !DILocation(line: 832, column: 68, scope: !1840, inlinedAt: !1917)
!1920 = !DILocation(line: 833, column: 3, scope: !1840, inlinedAt: !1917)
!1921 = !DILocation(line: 834, column: 3, scope: !1840, inlinedAt: !1917)
!1922 = !DILocation(line: 835, column: 3, scope: !1840, inlinedAt: !1917)
!1923 = !DILocation(line: 836, column: 1, scope: !1840, inlinedAt: !1917)
!1924 = !DILocation(line: 832, column: 28, scope: !1840, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 852, column: 5, scope: !1856)
!1926 = !DILocation(line: 832, column: 45, scope: !1840, inlinedAt: !1925)
!1927 = !DILocation(line: 832, column: 68, scope: !1840, inlinedAt: !1925)
!1928 = !DILocation(line: 833, column: 3, scope: !1840, inlinedAt: !1925)
!1929 = !DILocation(line: 834, column: 3, scope: !1840, inlinedAt: !1925)
!1930 = !DILocation(line: 835, column: 3, scope: !1840, inlinedAt: !1925)
!1931 = !DILocation(line: 836, column: 1, scope: !1840, inlinedAt: !1925)
!1932 = !DILocation(line: 858, column: 1, scope: !1856)
!1933 = distinct !DISubprogram(name: "luaRemoveUnsupportedFunctions", scope: !3, file: !3, line: 862, type: !822, isLocal: false, isDefinition: true, scopeLine: 862, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1934)
!1934 = !{!1935}
!1935 = !DILocalVariable(name: "lua", arg: 1, scope: !1933, file: !3, line: 862, type: !74)
!1936 = !DILocation(line: 862, column: 47, scope: !1933)
!1937 = !DILocation(line: 863, column: 5, scope: !1933)
!1938 = !DILocation(line: 864, column: 5, scope: !1933)
!1939 = !DILocation(line: 865, column: 5, scope: !1933)
!1940 = !DILocation(line: 866, column: 5, scope: !1933)
!1941 = !DILocation(line: 867, column: 1, scope: !1933)
!1942 = distinct !DISubprogram(name: "scriptingEnableGlobalsProtection", scope: !3, file: !3, line: 874, type: !822, isLocal: false, isDefinition: true, scopeLine: 874, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1943)
!1943 = !{!1944, !1945, !1947, !1948}
!1944 = !DILocalVariable(name: "lua", arg: 1, scope: !1942, file: !3, line: 874, type: !74)
!1945 = !DILocalVariable(name: "s", scope: !1942, file: !3, line: 875, type: !1946)
!1946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !377)
!1947 = !DILocalVariable(name: "code", scope: !1942, file: !3, line: 876, type: !209)
!1948 = !DILocalVariable(name: "j", scope: !1942, file: !3, line: 877, type: !15)
!1949 = !DILocation(line: 874, column: 50, scope: !1942)
!1950 = !DILocation(line: 875, column: 5, scope: !1942)
!1951 = !DILocation(line: 875, column: 11, scope: !1942)
!1952 = !DILocation(line: 876, column: 16, scope: !1942)
!1953 = !DILocation(line: 876, column: 9, scope: !1942)
!1954 = !DILocation(line: 877, column: 9, scope: !1942)
!1955 = !DILocation(line: 881, column: 11, scope: !1942)
!1956 = !DILocation(line: 883, column: 5, scope: !1942)
!1957 = !DILocation(line: 883, column: 11, scope: !1942)
!1958 = !DILocation(line: 885, column: 5, scope: !1942)
!1959 = !DILocation(line: 885, column: 11, scope: !1942)
!1960 = !DILocation(line: 887, column: 5, scope: !1942)
!1961 = !DILocation(line: 887, column: 11, scope: !1942)
!1962 = !DILocation(line: 889, column: 5, scope: !1942)
!1963 = !DILocation(line: 889, column: 11, scope: !1942)
!1964 = !DILocation(line: 891, column: 5, scope: !1942)
!1965 = !DILocation(line: 891, column: 11, scope: !1942)
!1966 = !DILocation(line: 893, column: 5, scope: !1942)
!1967 = !DILocation(line: 893, column: 11, scope: !1942)
!1968 = !DILocation(line: 895, column: 5, scope: !1942)
!1969 = !DILocation(line: 895, column: 11, scope: !1942)
!1970 = !DILocation(line: 897, column: 5, scope: !1942)
!1971 = !DILocation(line: 897, column: 11, scope: !1942)
!1972 = !DILocation(line: 899, column: 5, scope: !1942)
!1973 = !DILocation(line: 899, column: 11, scope: !1942)
!1974 = !DILocation(line: 902, column: 63, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !3, line: 902, column: 5)
!1976 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 902, column: 5)
!1977 = !DILocation(line: 902, column: 43, scope: !1975)
!1978 = !DILocation(line: 902, column: 32, scope: !1975)
!1979 = !DILocation(line: 902, column: 17, scope: !1975)
!1980 = !DILocation(line: 902, column: 22, scope: !1975)
!1981 = !DILocation(line: 902, column: 5, scope: !1976)
!1982 = distinct !{!1982, !1981, !1983}
!1983 = !DILocation(line: 902, column: 75, scope: !1976)
!1984 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 903, column: 30, scope: !1942)
!1986 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !1985)
!1987 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !1985)
!1988 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !1985)
!1989 = !DILocation(line: 91, column: 20, scope: !1457, inlinedAt: !1985)
!1990 = !DILocation(line: 91, column: 13, scope: !1457, inlinedAt: !1985)
!1991 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !1985)
!1992 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !1985)
!1993 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !1985)
!1994 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !1985)
!1995 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !1985)
!1996 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !1985)
!1997 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !1985)
!1998 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !1985)
!1999 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !1985)
!2000 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !1985)
!2001 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !1985)
!2002 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !1985)
!2003 = !DILocation(line: 0, scope: !1457, inlinedAt: !1985)
!2004 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !1985)
!2005 = !DILocation(line: 903, column: 5, scope: !1942)
!2006 = !DILocation(line: 904, column: 5, scope: !1942)
!2007 = !DILocation(line: 905, column: 5, scope: !1942)
!2008 = !DILocation(line: 906, column: 1, scope: !1942)
!2009 = distinct !DISubprogram(name: "scriptingInit", scope: !3, file: !3, line: 918, type: !20, isLocal: false, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2010)
!2010 = !{!2011, !2012, !2013, !2015}
!2011 = !DILocalVariable(name: "setup", arg: 1, scope: !2009, file: !3, line: 918, type: !15)
!2012 = !DILocalVariable(name: "lua", scope: !2009, file: !3, line: 919, type: !74)
!2013 = !DILocalVariable(name: "compare_func", scope: !2014, file: !3, line: 1043, type: !11)
!2014 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 1042, column: 5)
!2015 = !DILocalVariable(name: "errh_func", scope: !2016, file: !3, line: 1057, type: !11)
!2016 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 1056, column: 5)
!2017 = !DILocation(line: 918, column: 24, scope: !2009)
!2018 = !DILocation(line: 919, column: 22, scope: !2009)
!2019 = !DILocation(line: 919, column: 16, scope: !2009)
!2020 = !DILocation(line: 921, column: 9, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 921, column: 9)
!2022 = !DILocation(line: 921, column: 9, scope: !2009)
!2023 = !DILocation(line: 922, column: 27, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2021, file: !3, line: 921, column: 16)
!2025 = !DILocation(line: 924, column: 29, scope: !2024)
!2026 = !{!945, !763, i64 3068}
!2027 = !DILocation(line: 1562, column: 12, scope: !2028, inlinedAt: !2031)
!2028 = distinct !DISubprogram(name: "ldbInit", scope: !3, file: !3, line: 1561, type: !2029, isLocal: false, isDefinition: true, scopeLine: 1561, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{null}
!2031 = distinct !DILocation(line: 925, column: 9, scope: !2024)
!2032 = !{!762, !763, i64 0}
!2033 = !DILocation(line: 1563, column: 16, scope: !2028, inlinedAt: !2031)
!2034 = !DILocation(line: 1564, column: 16, scope: !2028, inlinedAt: !2031)
!2035 = !DILocation(line: 1564, column: 14, scope: !2028, inlinedAt: !2031)
!2036 = !DILocation(line: 1565, column: 5, scope: !2028, inlinedAt: !2031)
!2037 = !{!1343, !764, i64 24}
!2038 = !DILocation(line: 1566, column: 20, scope: !2028, inlinedAt: !2031)
!2039 = !DILocation(line: 1566, column: 18, scope: !2028, inlinedAt: !2031)
!2040 = !{!762, !764, i64 32}
!2041 = !DILocation(line: 1567, column: 13, scope: !2028, inlinedAt: !2031)
!2042 = !{!762, !764, i64 312}
!2043 = !DILocation(line: 1568, column: 15, scope: !2028, inlinedAt: !2031)
!2044 = !{!762, !763, i64 320}
!2045 = !DILocation(line: 1569, column: 16, scope: !2028, inlinedAt: !2031)
!2046 = !DILocation(line: 1569, column: 14, scope: !2028, inlinedAt: !2031)
!2047 = !{!762, !764, i64 328}
!2048 = !DILocation(line: 1570, column: 1, scope: !2028, inlinedAt: !2031)
!2049 = !DILocation(line: 926, column: 5, scope: !2024)
!2050 = !DILocation(line: 928, column: 5, scope: !2009)
!2051 = !DILocation(line: 862, column: 47, scope: !1933, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 929, column: 5, scope: !2009)
!2053 = !DILocation(line: 863, column: 5, scope: !1933, inlinedAt: !2052)
!2054 = !DILocation(line: 864, column: 5, scope: !1933, inlinedAt: !2052)
!2055 = !DILocation(line: 865, column: 5, scope: !1933, inlinedAt: !2052)
!2056 = !DILocation(line: 866, column: 5, scope: !1933, inlinedAt: !2052)
!2057 = !DILocation(line: 867, column: 1, scope: !1933, inlinedAt: !2052)
!2058 = !DILocation(line: 934, column: 26, scope: !2009)
!2059 = !DILocation(line: 934, column: 24, scope: !2009)
!2060 = !{!945, !764, i64 3016}
!2061 = !DILocation(line: 935, column: 28, scope: !2009)
!2062 = !{!945, !537, i64 3024}
!2063 = !DILocation(line: 938, column: 5, scope: !2009)
!2064 = !DILocation(line: 941, column: 5, scope: !2009)
!2065 = !DILocation(line: 942, column: 5, scope: !2009)
!2066 = !DILocation(line: 943, column: 5, scope: !2009)
!2067 = !DILocation(line: 946, column: 5, scope: !2009)
!2068 = !DILocation(line: 947, column: 5, scope: !2009)
!2069 = !DILocation(line: 948, column: 5, scope: !2009)
!2070 = !DILocation(line: 951, column: 5, scope: !2009)
!2071 = !DILocation(line: 952, column: 5, scope: !2009)
!2072 = !DILocation(line: 953, column: 5, scope: !2009)
!2073 = !DILocation(line: 955, column: 5, scope: !2009)
!2074 = !DILocation(line: 956, column: 5, scope: !2009)
!2075 = !DILocation(line: 957, column: 5, scope: !2009)
!2076 = !DILocation(line: 959, column: 5, scope: !2009)
!2077 = !DILocation(line: 960, column: 5, scope: !2009)
!2078 = !DILocation(line: 961, column: 5, scope: !2009)
!2079 = !DILocation(line: 963, column: 5, scope: !2009)
!2080 = !DILocation(line: 964, column: 5, scope: !2009)
!2081 = !DILocation(line: 965, column: 5, scope: !2009)
!2082 = !DILocation(line: 967, column: 5, scope: !2009)
!2083 = !DILocation(line: 968, column: 5, scope: !2009)
!2084 = !DILocation(line: 969, column: 5, scope: !2009)
!2085 = !DILocation(line: 972, column: 5, scope: !2009)
!2086 = !DILocation(line: 973, column: 5, scope: !2009)
!2087 = !DILocation(line: 974, column: 5, scope: !2009)
!2088 = !DILocation(line: 977, column: 5, scope: !2009)
!2089 = !DILocation(line: 978, column: 5, scope: !2009)
!2090 = !DILocation(line: 979, column: 5, scope: !2009)
!2091 = !DILocation(line: 980, column: 5, scope: !2009)
!2092 = !DILocation(line: 981, column: 5, scope: !2009)
!2093 = !DILocation(line: 982, column: 5, scope: !2009)
!2094 = !DILocation(line: 985, column: 5, scope: !2009)
!2095 = !DILocation(line: 986, column: 5, scope: !2009)
!2096 = !DILocation(line: 987, column: 5, scope: !2009)
!2097 = !DILocation(line: 990, column: 5, scope: !2009)
!2098 = !DILocation(line: 991, column: 5, scope: !2009)
!2099 = !DILocation(line: 992, column: 5, scope: !2009)
!2100 = !DILocation(line: 994, column: 5, scope: !2009)
!2101 = !DILocation(line: 995, column: 5, scope: !2009)
!2102 = !DILocation(line: 996, column: 5, scope: !2009)
!2103 = !DILocation(line: 998, column: 5, scope: !2009)
!2104 = !DILocation(line: 999, column: 5, scope: !2009)
!2105 = !DILocation(line: 1000, column: 5, scope: !2009)
!2106 = !DILocation(line: 1002, column: 5, scope: !2009)
!2107 = !DILocation(line: 1003, column: 5, scope: !2009)
!2108 = !DILocation(line: 1004, column: 5, scope: !2009)
!2109 = !DILocation(line: 1006, column: 5, scope: !2009)
!2110 = !DILocation(line: 1007, column: 5, scope: !2009)
!2111 = !DILocation(line: 1008, column: 5, scope: !2009)
!2112 = !DILocation(line: 1010, column: 5, scope: !2009)
!2113 = !DILocation(line: 1011, column: 5, scope: !2009)
!2114 = !DILocation(line: 1012, column: 5, scope: !2009)
!2115 = !DILocation(line: 1015, column: 5, scope: !2009)
!2116 = !DILocation(line: 1016, column: 5, scope: !2009)
!2117 = !DILocation(line: 1017, column: 5, scope: !2009)
!2118 = !DILocation(line: 1020, column: 5, scope: !2009)
!2119 = !DILocation(line: 1021, column: 5, scope: !2009)
!2120 = !DILocation(line: 1022, column: 5, scope: !2009)
!2121 = !DILocation(line: 1025, column: 5, scope: !2009)
!2122 = !DILocation(line: 1028, column: 5, scope: !2009)
!2123 = !DILocation(line: 1030, column: 5, scope: !2009)
!2124 = !DILocation(line: 1031, column: 5, scope: !2009)
!2125 = !DILocation(line: 1032, column: 5, scope: !2009)
!2126 = !DILocation(line: 1034, column: 5, scope: !2009)
!2127 = !DILocation(line: 1035, column: 5, scope: !2009)
!2128 = !DILocation(line: 1036, column: 5, scope: !2009)
!2129 = !DILocation(line: 1038, column: 5, scope: !2009)
!2130 = !DILocation(line: 1048, column: 42, scope: !2014)
!2131 = !DILocation(line: 1048, column: 9, scope: !2014)
!2132 = !DILocation(line: 1049, column: 9, scope: !2014)
!2133 = !DILocation(line: 1069, column: 39, scope: !2016)
!2134 = !DILocation(line: 1069, column: 9, scope: !2016)
!2135 = !DILocation(line: 1070, column: 9, scope: !2016)
!2136 = !DILocation(line: 1077, column: 16, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2009, file: !3, line: 1077, column: 9)
!2138 = !DILocation(line: 1077, column: 27, scope: !2137)
!2139 = !DILocation(line: 1077, column: 9, scope: !2009)
!2140 = !DILocation(line: 1078, column: 29, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 1077, column: 36)
!2142 = !DILocation(line: 1078, column: 27, scope: !2141)
!2143 = !DILocation(line: 1079, column: 28, scope: !2141)
!2144 = !DILocation(line: 1079, column: 34, scope: !2141)
!2145 = !DILocation(line: 1080, column: 5, scope: !2141)
!2146 = !DILocation(line: 1085, column: 5, scope: !2009)
!2147 = !DILocation(line: 1087, column: 16, scope: !2009)
!2148 = !{!945, !764, i64 2992}
!2149 = !DILocation(line: 1088, column: 1, scope: !2009)
!2150 = !DILocation(line: 1562, column: 12, scope: !2028)
!2151 = !DILocation(line: 1563, column: 16, scope: !2028)
!2152 = !DILocation(line: 1564, column: 16, scope: !2028)
!2153 = !DILocation(line: 1564, column: 14, scope: !2028)
!2154 = !DILocation(line: 1565, column: 5, scope: !2028)
!2155 = !DILocation(line: 1566, column: 20, scope: !2028)
!2156 = !DILocation(line: 1566, column: 18, scope: !2028)
!2157 = !DILocation(line: 1567, column: 13, scope: !2028)
!2158 = !DILocation(line: 1568, column: 15, scope: !2028)
!2159 = !DILocation(line: 1569, column: 16, scope: !2028)
!2160 = !DILocation(line: 1569, column: 14, scope: !2028)
!2161 = !DILocation(line: 1570, column: 1, scope: !2028)
!2162 = distinct !DISubprogram(name: "redis_math_random", scope: !3, file: !3, line: 1126, type: !812, isLocal: false, isDefinition: true, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2163)
!2163 = !{!2164, !2165, !2166, !2169, !2171}
!2164 = !DILocalVariable(name: "L", arg: 1, scope: !2162, file: !3, line: 1126, type: !74)
!2165 = !DILocalVariable(name: "r", scope: !2162, file: !3, line: 1129, type: !8)
!2166 = !DILocalVariable(name: "u", scope: !2167, file: !3, line: 1137, type: !15)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 1136, column: 13)
!2168 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 1131, column: 26)
!2169 = !DILocalVariable(name: "l", scope: !2170, file: !3, line: 1143, type: !15)
!2170 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 1142, column: 13)
!2171 = !DILocalVariable(name: "u", scope: !2170, file: !3, line: 1144, type: !15)
!2172 = !DILocation(line: 1126, column: 35, scope: !2162)
!2173 = !DILocation(line: 1129, column: 31, scope: !2162)
!2174 = !DILocation(line: 1129, column: 45, scope: !2162)
!2175 = !DILocation(line: 1129, column: 18, scope: !2162)
!2176 = !DILocation(line: 1129, column: 65, scope: !2162)
!2177 = !DILocation(line: 1129, column: 14, scope: !2162)
!2178 = !DILocation(line: 1131, column: 11, scope: !2162)
!2179 = !DILocation(line: 1131, column: 3, scope: !2162)
!2180 = !DILocation(line: 1133, column: 7, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2168, file: !3, line: 1132, column: 13)
!2182 = !DILocation(line: 1134, column: 7, scope: !2181)
!2183 = !DILocation(line: 1137, column: 15, scope: !2167)
!2184 = !DILocation(line: 1137, column: 11, scope: !2167)
!2185 = !DILocation(line: 1138, column: 7, scope: !2167)
!2186 = !DILocation(line: 1139, column: 33, scope: !2167)
!2187 = !DILocation(line: 1139, column: 32, scope: !2167)
!2188 = !DILocation(line: 1139, column: 25, scope: !2167)
!2189 = !DILocation(line: 1139, column: 35, scope: !2167)
!2190 = !DILocation(line: 1139, column: 7, scope: !2167)
!2191 = !DILocation(line: 1143, column: 15, scope: !2170)
!2192 = !DILocation(line: 1143, column: 11, scope: !2170)
!2193 = !DILocation(line: 1144, column: 15, scope: !2170)
!2194 = !DILocation(line: 1144, column: 11, scope: !2170)
!2195 = !DILocation(line: 1145, column: 7, scope: !2170)
!2196 = !DILocation(line: 1146, column: 35, scope: !2170)
!2197 = !DILocation(line: 1146, column: 37, scope: !2170)
!2198 = !DILocation(line: 1146, column: 33, scope: !2170)
!2199 = !DILocation(line: 1146, column: 32, scope: !2170)
!2200 = !DILocation(line: 1146, column: 25, scope: !2170)
!2201 = !DILocation(line: 1146, column: 42, scope: !2170)
!2202 = !DILocation(line: 1146, column: 41, scope: !2170)
!2203 = !DILocation(line: 1146, column: 7, scope: !2170)
!2204 = !DILocation(line: 1149, column: 21, scope: !2168)
!2205 = !DILocation(line: 1149, column: 14, scope: !2168)
!2206 = !DILocation(line: 0, scope: !2162)
!2207 = !DILocation(line: 1152, column: 1, scope: !2162)
!2208 = distinct !DISubprogram(name: "redis_math_randomseed", scope: !3, file: !3, line: 1154, type: !812, isLocal: false, isDefinition: true, scopeLine: 1154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2209)
!2209 = !{!2210}
!2210 = !DILocalVariable(name: "L", arg: 1, scope: !2208, file: !3, line: 1154, type: !74)
!2211 = !DILocation(line: 1154, column: 39, scope: !2208)
!2212 = !DILocation(line: 1155, column: 16, scope: !2208)
!2213 = !DILocation(line: 1155, column: 3, scope: !2208)
!2214 = !DILocation(line: 1156, column: 3, scope: !2208)
!2215 = distinct !DISubprogram(name: "scriptingRelease", scope: !3, file: !3, line: 1092, type: !2029, isLocal: false, isDefinition: true, scopeLine: 1092, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!2216 = !DILocation(line: 1093, column: 24, scope: !2215)
!2217 = !DILocation(line: 1093, column: 5, scope: !2215)
!2218 = !DILocation(line: 1094, column: 28, scope: !2215)
!2219 = !DILocation(line: 1095, column: 22, scope: !2215)
!2220 = !DILocation(line: 1095, column: 5, scope: !2215)
!2221 = !DILocation(line: 1096, column: 1, scope: !2215)
!2222 = distinct !DISubprogram(name: "scriptingReset", scope: !3, file: !3, line: 1098, type: !2029, isLocal: false, isDefinition: true, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!2223 = !DILocation(line: 1093, column: 24, scope: !2215, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 1099, column: 5, scope: !2222)
!2225 = !DILocation(line: 1093, column: 5, scope: !2215, inlinedAt: !2224)
!2226 = !DILocation(line: 1094, column: 28, scope: !2215, inlinedAt: !2224)
!2227 = !DILocation(line: 1095, column: 22, scope: !2215, inlinedAt: !2224)
!2228 = !DILocation(line: 1095, column: 5, scope: !2215, inlinedAt: !2224)
!2229 = !DILocation(line: 1096, column: 1, scope: !2215, inlinedAt: !2224)
!2230 = !DILocation(line: 1100, column: 5, scope: !2222)
!2231 = !DILocation(line: 1101, column: 1, scope: !2222)
!2232 = distinct !DISubprogram(name: "luaSetGlobalArray", scope: !3, file: !3, line: 1105, type: !2233, isLocal: false, isDefinition: true, scopeLine: 1105, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2235)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{null, !74, !11, !219, !15}
!2235 = !{!2236, !2237, !2238, !2239, !2240}
!2236 = !DILocalVariable(name: "lua", arg: 1, scope: !2232, file: !3, line: 1105, type: !74)
!2237 = !DILocalVariable(name: "var", arg: 2, scope: !2232, file: !3, line: 1105, type: !11)
!2238 = !DILocalVariable(name: "elev", arg: 3, scope: !2232, file: !3, line: 1105, type: !219)
!2239 = !DILocalVariable(name: "elec", arg: 4, scope: !2232, file: !3, line: 1105, type: !15)
!2240 = !DILocalVariable(name: "j", scope: !2232, file: !3, line: 1106, type: !15)
!2241 = !DILocation(line: 1105, column: 35, scope: !2232)
!2242 = !DILocation(line: 1105, column: 46, scope: !2232)
!2243 = !DILocation(line: 1105, column: 58, scope: !2232)
!2244 = !DILocation(line: 1105, column: 68, scope: !2232)
!2245 = !DILocation(line: 1108, column: 5, scope: !2232)
!2246 = !DILocation(line: 1106, column: 9, scope: !2232)
!2247 = !DILocation(line: 1109, column: 19, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 1109, column: 5)
!2249 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 1109, column: 5)
!2250 = !DILocation(line: 1109, column: 5, scope: !2249)
!2251 = !DILocation(line: 1110, column: 36, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 1109, column: 32)
!2253 = !DILocation(line: 1110, column: 45, scope: !2252)
!2254 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 1110, column: 49, scope: !2252)
!2256 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !2255)
!2257 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !2255)
!2258 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !2255)
!2259 = !DILocation(line: 91, column: 20, scope: !1457, inlinedAt: !2255)
!2260 = !DILocation(line: 91, column: 13, scope: !1457, inlinedAt: !2255)
!2261 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !2255)
!2262 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !2255)
!2263 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !2255)
!2264 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !2255)
!2265 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !2255)
!2266 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !2255)
!2267 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !2255)
!2268 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !2255)
!2269 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !2255)
!2270 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !2255)
!2271 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !2255)
!2272 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !2255)
!2273 = !DILocation(line: 0, scope: !1457, inlinedAt: !2255)
!2274 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !2255)
!2275 = !DILocation(line: 1110, column: 9, scope: !2252)
!2276 = !DILocation(line: 1111, column: 29, scope: !2252)
!2277 = !DILocation(line: 1111, column: 9, scope: !2252)
!2278 = distinct !{!2278, !2250, !2279}
!2279 = !DILocation(line: 1112, column: 5, scope: !2249)
!2280 = !DILocation(line: 1113, column: 5, scope: !2232)
!2281 = !DILocation(line: 1114, column: 1, scope: !2232)
!2282 = distinct !DISubprogram(name: "luaCreateFunction", scope: !3, file: !3, line: 1180, type: !2283, isLocal: false, isDefinition: true, scopeLine: 1180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2285)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!209, !93, !74, !199}
!2285 = !{!2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293}
!2286 = !DILocalVariable(name: "c", arg: 1, scope: !2282, file: !3, line: 1180, type: !93)
!2287 = !DILocalVariable(name: "lua", arg: 2, scope: !2282, file: !3, line: 1180, type: !74)
!2288 = !DILocalVariable(name: "body", arg: 3, scope: !2282, file: !3, line: 1180, type: !199)
!2289 = !DILocalVariable(name: "funcname", scope: !2282, file: !3, line: 1181, type: !394)
!2290 = !DILocalVariable(name: "de", scope: !2282, file: !3, line: 1182, type: !143)
!2291 = !DILocalVariable(name: "sha", scope: !2282, file: !3, line: 1188, type: !209)
!2292 = !DILocalVariable(name: "funcdef", scope: !2282, file: !3, line: 1194, type: !209)
!2293 = !DILocalVariable(name: "retval", scope: !2282, file: !3, line: 1227, type: !15)
!2294 = !DILocation(line: 91, column: 19, scope: !442, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 1186, column: 5, scope: !2282)
!2296 = !DILocation(line: 1180, column: 31, scope: !2282)
!2297 = !DILocation(line: 1180, column: 45, scope: !2282)
!2298 = !DILocation(line: 1180, column: 56, scope: !2282)
!2299 = !DILocation(line: 1181, column: 5, scope: !2282)
!2300 = !DILocation(line: 1181, column: 10, scope: !2282)
!2301 = !DILocation(line: 1184, column: 17, scope: !2282)
!2302 = !DILocation(line: 1185, column: 5, scope: !2282)
!2303 = !DILocation(line: 1185, column: 17, scope: !2282)
!2304 = !DILocation(line: 1186, column: 21, scope: !2282)
!2305 = !DILocation(line: 1186, column: 30, scope: !2282)
!2306 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !2307)
!2307 = distinct !DILocation(line: 1186, column: 34, scope: !2282)
!2308 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !2307)
!2309 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !2307)
!2310 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !2307)
!2311 = !DILocation(line: 91, column: 20, scope: !1457, inlinedAt: !2307)
!2312 = !DILocation(line: 91, column: 13, scope: !1457, inlinedAt: !2307)
!2313 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !2307)
!2314 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !2307)
!2315 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !2307)
!2316 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !2307)
!2317 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !2307)
!2318 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !2307)
!2319 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !2307)
!2320 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !2307)
!2321 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !2307)
!2322 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !2307)
!2323 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !2307)
!2324 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !2307)
!2325 = !DILocation(line: 0, scope: !1457, inlinedAt: !2307)
!2326 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !2307)
!2327 = !DILocation(line: 89, column: 20, scope: !442, inlinedAt: !2295)
!2328 = !DILocation(line: 89, column: 34, scope: !442, inlinedAt: !2295)
!2329 = !DILocation(line: 89, column: 49, scope: !442, inlinedAt: !2295)
!2330 = !DILocation(line: 90, column: 5, scope: !442, inlinedAt: !2295)
!2331 = !DILocation(line: 91, column: 5, scope: !442, inlinedAt: !2295)
!2332 = !DILocation(line: 90, column: 14, scope: !442, inlinedAt: !2295)
!2333 = !DILocation(line: 95, column: 5, scope: !442, inlinedAt: !2295)
!2334 = !DILocation(line: 96, column: 44, scope: !442, inlinedAt: !2295)
!2335 = !DILocation(line: 96, column: 5, scope: !442, inlinedAt: !2295)
!2336 = !DILocation(line: 97, column: 5, scope: !442, inlinedAt: !2295)
!2337 = !DILocation(line: 93, column: 9, scope: !442, inlinedAt: !2295)
!2338 = !DILocation(line: 99, column: 5, scope: !481, inlinedAt: !2295)
!2339 = !DILocation(line: 100, column: 30, scope: !483, inlinedAt: !2295)
!2340 = !DILocation(line: 100, column: 43, scope: !483, inlinedAt: !2295)
!2341 = !DILocation(line: 100, column: 23, scope: !483, inlinedAt: !2295)
!2342 = !DILocation(line: 100, column: 17, scope: !483, inlinedAt: !2295)
!2343 = !DILocation(line: 100, column: 9, scope: !483, inlinedAt: !2295)
!2344 = !DILocation(line: 100, column: 21, scope: !483, inlinedAt: !2295)
!2345 = !DILocation(line: 101, column: 38, scope: !483, inlinedAt: !2295)
!2346 = !DILocation(line: 101, column: 25, scope: !483, inlinedAt: !2295)
!2347 = !DILocation(line: 101, column: 19, scope: !483, inlinedAt: !2295)
!2348 = !DILocation(line: 101, column: 9, scope: !483, inlinedAt: !2295)
!2349 = !DILocation(line: 101, column: 23, scope: !483, inlinedAt: !2295)
!2350 = !DILocation(line: 99, column: 26, scope: !484, inlinedAt: !2295)
!2351 = !DILocation(line: 99, column: 19, scope: !484, inlinedAt: !2295)
!2352 = !DILocation(line: 103, column: 5, scope: !442, inlinedAt: !2295)
!2353 = !DILocation(line: 103, column: 16, scope: !442, inlinedAt: !2295)
!2354 = !DILocation(line: 104, column: 1, scope: !442, inlinedAt: !2295)
!2355 = !DILocation(line: 1188, column: 15, scope: !2282)
!2356 = !DILocation(line: 1188, column: 9, scope: !2282)
!2357 = !DILocation(line: 1189, column: 31, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 1189, column: 9)
!2359 = !DILocation(line: 1189, column: 15, scope: !2358)
!2360 = !DILocation(line: 1182, column: 16, scope: !2282)
!2361 = !DILocation(line: 1189, column: 49, scope: !2358)
!2362 = !DILocation(line: 1189, column: 9, scope: !2282)
!2363 = !DILocation(line: 1190, column: 9, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2358, file: !3, line: 1189, column: 58)
!2365 = !DILocation(line: 1191, column: 16, scope: !2364)
!2366 = !{!2367, !764, i64 0}
!2367 = !{!"dictEntry", !764, i64 0, !486, i64 8, !764, i64 16}
!2368 = !DILocation(line: 1191, column: 9, scope: !2364)
!2369 = !DILocation(line: 1194, column: 19, scope: !2282)
!2370 = !DILocation(line: 1194, column: 9, scope: !2282)
!2371 = !DILocation(line: 1195, column: 15, scope: !2282)
!2372 = !DILocation(line: 1196, column: 15, scope: !2282)
!2373 = !DILocation(line: 1197, column: 15, scope: !2282)
!2374 = !DILocation(line: 1198, column: 39, scope: !2282)
!2375 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 1198, column: 43, scope: !2282)
!2377 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !2376)
!2378 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !2376)
!2379 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !2376)
!2380 = !DILocation(line: 91, column: 20, scope: !1457, inlinedAt: !2376)
!2381 = !DILocation(line: 91, column: 13, scope: !1457, inlinedAt: !2376)
!2382 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !2376)
!2383 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !2376)
!2384 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !2376)
!2385 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !2376)
!2386 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !2376)
!2387 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !2376)
!2388 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !2376)
!2389 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !2376)
!2390 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !2376)
!2391 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !2376)
!2392 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !2376)
!2393 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !2376)
!2394 = !DILocation(line: 0, scope: !1457, inlinedAt: !2376)
!2395 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !2376)
!2396 = !DILocation(line: 1198, column: 15, scope: !2282)
!2397 = !DILocation(line: 1199, column: 15, scope: !2282)
!2398 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 1201, column: 37, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 1201, column: 9)
!2401 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !2399)
!2402 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !2399)
!2403 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !2399)
!2404 = !DILocation(line: 91, column: 20, scope: !1457, inlinedAt: !2399)
!2405 = !DILocation(line: 91, column: 13, scope: !1457, inlinedAt: !2399)
!2406 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !2399)
!2407 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !2399)
!2408 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !2399)
!2409 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !2399)
!2410 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !2399)
!2411 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !2399)
!2412 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !2399)
!2413 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !2399)
!2414 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !2399)
!2415 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !2399)
!2416 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !2399)
!2417 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !2399)
!2418 = !DILocation(line: 0, scope: !1457, inlinedAt: !2399)
!2419 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !2399)
!2420 = !DILocation(line: 1201, column: 9, scope: !2400)
!2421 = !DILocation(line: 1201, column: 9, scope: !2282)
!2422 = !DILocation(line: 1202, column: 15, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 1202, column: 13)
!2424 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 1201, column: 70)
!2425 = !DILocation(line: 1202, column: 13, scope: !2424)
!2426 = !DILocation(line: 1205, column: 17, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 1202, column: 24)
!2428 = !DILocation(line: 1203, column: 13, scope: !2427)
!2429 = !DILocation(line: 1206, column: 9, scope: !2427)
!2430 = !DILocation(line: 1207, column: 9, scope: !2424)
!2431 = !DILocation(line: 1208, column: 9, scope: !2424)
!2432 = !DILocation(line: 1209, column: 9, scope: !2424)
!2433 = !DILocation(line: 1210, column: 9, scope: !2424)
!2434 = !DILocation(line: 1212, column: 5, scope: !2282)
!2435 = !DILocation(line: 1214, column: 9, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 1214, column: 9)
!2437 = !DILocation(line: 1214, column: 9, scope: !2282)
!2438 = !DILocation(line: 1215, column: 15, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !3, line: 1215, column: 13)
!2440 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 1214, column: 31)
!2441 = !DILocation(line: 1215, column: 13, scope: !2440)
!2442 = !DILocation(line: 1217, column: 17, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 1215, column: 24)
!2444 = !DILocation(line: 1216, column: 13, scope: !2443)
!2445 = !DILocation(line: 1218, column: 9, scope: !2443)
!2446 = !DILocation(line: 1219, column: 9, scope: !2440)
!2447 = !DILocation(line: 1220, column: 9, scope: !2440)
!2448 = !DILocation(line: 1221, column: 9, scope: !2440)
!2449 = !DILocation(line: 1227, column: 33, scope: !2282)
!2450 = !DILocation(line: 1227, column: 49, scope: !2282)
!2451 = !DILocation(line: 1227, column: 18, scope: !2282)
!2452 = !DILocation(line: 1227, column: 9, scope: !2282)
!2453 = !DILocation(line: 1228, column: 5, scope: !2282)
!2454 = !DILocation(line: 1229, column: 31, scope: !2282)
!2455 = !DILocation(line: 1229, column: 53, scope: !2282)
!2456 = !DILocation(line: 1229, column: 51, scope: !2282)
!2457 = !DILocation(line: 1229, column: 28, scope: !2282)
!2458 = !DILocation(line: 1230, column: 5, scope: !2282)
!2459 = !DILocation(line: 0, scope: !2424)
!2460 = !DILocation(line: 1232, column: 1, scope: !2282)
!2461 = distinct !DISubprogram(name: "luaMaskCountHook", scope: !3, file: !3, line: 1235, type: !2462, isLocal: false, isDefinition: true, scopeLine: 1235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2465)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{null, !74, !2464}
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!2465 = !{!2466, !2467, !2468}
!2466 = !DILocalVariable(name: "lua", arg: 1, scope: !2461, file: !3, line: 1235, type: !74)
!2467 = !DILocalVariable(name: "ar", arg: 2, scope: !2461, file: !3, line: 1235, type: !2464)
!2468 = !DILocalVariable(name: "elapsed", scope: !2461, file: !3, line: 1236, type: !13)
!2469 = !DILocation(line: 1235, column: 34, scope: !2461)
!2470 = !DILocation(line: 1235, column: 50, scope: !2461)
!2471 = !DILocation(line: 1236, column: 25, scope: !2461)
!2472 = !DILocation(line: 1236, column: 43, scope: !2461)
!2473 = !{!945, !537, i64 3040}
!2474 = !DILocation(line: 1236, column: 34, scope: !2461)
!2475 = !DILocation(line: 1236, column: 15, scope: !2461)
!2476 = !DILocation(line: 1242, column: 27, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 1242, column: 9)
!2478 = !{!945, !537, i64 3032}
!2479 = !DILocation(line: 1242, column: 17, scope: !2477)
!2480 = !DILocation(line: 1242, column: 52, scope: !2477)
!2481 = !DILocation(line: 1242, column: 65, scope: !2477)
!2482 = !DILocation(line: 1242, column: 42, scope: !2477)
!2483 = !DILocation(line: 1243, column: 9, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1242, column: 71)
!2485 = !DILocation(line: 1244, column: 29, scope: !2484)
!2486 = !DILocation(line: 1250, column: 30, scope: !2484)
!2487 = !DILocation(line: 1250, column: 9, scope: !2484)
!2488 = !DILocation(line: 1252, column: 16, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 1252, column: 9)
!2490 = !DILocation(line: 1251, column: 5, scope: !2484)
!2491 = !DILocation(line: 1252, column: 9, scope: !2489)
!2492 = !DILocation(line: 1252, column: 9, scope: !2461)
!2493 = !DILocation(line: 1252, column: 30, scope: !2489)
!2494 = !DILocation(line: 1253, column: 16, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 1253, column: 9)
!2496 = !{!945, !763, i64 3072}
!2497 = !DILocation(line: 1253, column: 9, scope: !2495)
!2498 = !DILocation(line: 1253, column: 9, scope: !2461)
!2499 = !DILocation(line: 1254, column: 9, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 1253, column: 26)
!2501 = !DILocation(line: 1255, column: 9, scope: !2500)
!2502 = !DILocation(line: 1256, column: 9, scope: !2500)
!2503 = !DILocation(line: 1257, column: 5, scope: !2500)
!2504 = !DILocation(line: 1258, column: 1, scope: !2461)
!2505 = !DILocation(line: 91, column: 19, scope: !442, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 1302, column: 9, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !403, file: !3, line: 1300, column: 19)
!2508 = !DILocation(line: 1260, column: 33, scope: !386)
!2509 = !DILocation(line: 1260, column: 40, scope: !386)
!2510 = !DILocation(line: 1261, column: 29, scope: !386)
!2511 = !DILocation(line: 1261, column: 16, scope: !386)
!2512 = !DILocation(line: 1262, column: 5, scope: !386)
!2513 = !DILocation(line: 1262, column: 10, scope: !386)
!2514 = !DILocation(line: 1263, column: 5, scope: !386)
!2515 = !DILocation(line: 1264, column: 45, scope: !386)
!2516 = !{!945, !537, i64 2080}
!2517 = !DILocation(line: 1264, column: 15, scope: !386)
!2518 = !DILocation(line: 1265, column: 9, scope: !386)
!2519 = !DILocation(line: 1269, column: 5, scope: !386)
!2520 = !DILocation(line: 1279, column: 29, scope: !386)
!2521 = !DILocation(line: 1280, column: 28, scope: !386)
!2522 = !DILocation(line: 1281, column: 44, scope: !386)
!2523 = !{!945, !763, i64 3076}
!2524 = !DILocation(line: 1281, column: 35, scope: !386)
!2525 = !DILocation(line: 1282, column: 30, scope: !386)
!2526 = !DILocation(line: 1283, column: 21, scope: !386)
!2527 = !DILocation(line: 1286, column: 43, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1286, column: 9)
!2529 = !DILocation(line: 1286, column: 40, scope: !2528)
!2530 = !DILocation(line: 1263, column: 15, scope: !386)
!2531 = !DILocation(line: 1286, column: 9, scope: !2528)
!2532 = !DILocation(line: 1286, column: 66, scope: !2528)
!2533 = !DILocation(line: 1286, column: 9, scope: !386)
!2534 = !DILocation(line: 1288, column: 9, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1288, column: 9)
!2536 = !DILocation(line: 1288, column: 23, scope: !2535)
!2537 = !DILocation(line: 1288, column: 28, scope: !2535)
!2538 = !DILocation(line: 1288, column: 19, scope: !2535)
!2539 = !DILocation(line: 1288, column: 17, scope: !2535)
!2540 = !DILocation(line: 1288, column: 9, scope: !386)
!2541 = !DILocation(line: 1289, column: 9, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1288, column: 34)
!2543 = !DILocation(line: 1290, column: 9, scope: !2542)
!2544 = !DILocation(line: 1291, column: 24, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2535, file: !3, line: 1291, column: 16)
!2546 = !DILocation(line: 1291, column: 16, scope: !2535)
!2547 = !DILocation(line: 1292, column: 9, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2545, file: !3, line: 1291, column: 29)
!2549 = !DILocation(line: 1293, column: 9, scope: !2548)
!2550 = !DILocation(line: 1298, column: 17, scope: !386)
!2551 = !DILocation(line: 1299, column: 5, scope: !386)
!2552 = !DILocation(line: 1299, column: 17, scope: !386)
!2553 = !DILocation(line: 1300, column: 10, scope: !403)
!2554 = !DILocation(line: 1300, column: 9, scope: !386)
!2555 = !DILocation(line: 1302, column: 25, scope: !2507)
!2556 = !DILocation(line: 1302, column: 31, scope: !2507)
!2557 = !DILocation(line: 1302, column: 28, scope: !2507)
!2558 = !DILocation(line: 1302, column: 40, scope: !2507)
!2559 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 1302, column: 44, scope: !2507)
!2561 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !2560)
!2562 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !2560)
!2563 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !2560)
!2564 = !DILocation(line: 91, column: 20, scope: !1457, inlinedAt: !2560)
!2565 = !DILocation(line: 91, column: 13, scope: !1457, inlinedAt: !2560)
!2566 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !2560)
!2567 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !2560)
!2568 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !2560)
!2569 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !2560)
!2570 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !2560)
!2571 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !2560)
!2572 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !2560)
!2573 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !2560)
!2574 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !2560)
!2575 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !2560)
!2576 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !2560)
!2577 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !2560)
!2578 = !DILocation(line: 0, scope: !1457, inlinedAt: !2560)
!2579 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !2560)
!2580 = !DILocation(line: 89, column: 20, scope: !442, inlinedAt: !2506)
!2581 = !DILocation(line: 89, column: 34, scope: !442, inlinedAt: !2506)
!2582 = !DILocation(line: 89, column: 49, scope: !442, inlinedAt: !2506)
!2583 = !DILocation(line: 90, column: 5, scope: !442, inlinedAt: !2506)
!2584 = !DILocation(line: 91, column: 5, scope: !442, inlinedAt: !2506)
!2585 = !DILocation(line: 90, column: 14, scope: !442, inlinedAt: !2506)
!2586 = !DILocation(line: 95, column: 5, scope: !442, inlinedAt: !2506)
!2587 = !DILocation(line: 96, column: 44, scope: !442, inlinedAt: !2506)
!2588 = !DILocation(line: 96, column: 5, scope: !442, inlinedAt: !2506)
!2589 = !DILocation(line: 97, column: 5, scope: !442, inlinedAt: !2506)
!2590 = !DILocation(line: 93, column: 9, scope: !442, inlinedAt: !2506)
!2591 = !DILocation(line: 99, column: 5, scope: !481, inlinedAt: !2506)
!2592 = !DILocation(line: 100, column: 30, scope: !483, inlinedAt: !2506)
!2593 = !DILocation(line: 100, column: 43, scope: !483, inlinedAt: !2506)
!2594 = !DILocation(line: 100, column: 23, scope: !483, inlinedAt: !2506)
!2595 = !DILocation(line: 100, column: 17, scope: !483, inlinedAt: !2506)
!2596 = !DILocation(line: 100, column: 9, scope: !483, inlinedAt: !2506)
!2597 = !DILocation(line: 100, column: 21, scope: !483, inlinedAt: !2506)
!2598 = !DILocation(line: 101, column: 38, scope: !483, inlinedAt: !2506)
!2599 = !DILocation(line: 101, column: 25, scope: !483, inlinedAt: !2506)
!2600 = !DILocation(line: 101, column: 19, scope: !483, inlinedAt: !2506)
!2601 = !DILocation(line: 101, column: 9, scope: !483, inlinedAt: !2506)
!2602 = !DILocation(line: 101, column: 23, scope: !483, inlinedAt: !2506)
!2603 = !DILocation(line: 99, column: 26, scope: !484, inlinedAt: !2506)
!2604 = !DILocation(line: 99, column: 19, scope: !484, inlinedAt: !2506)
!2605 = !DILocation(line: 103, column: 5, scope: !442, inlinedAt: !2506)
!2606 = !DILocation(line: 103, column: 16, scope: !442, inlinedAt: !2506)
!2607 = !DILocation(line: 104, column: 1, scope: !442, inlinedAt: !2506)
!2608 = !DILocation(line: 1303, column: 5, scope: !2507)
!2609 = !DILocation(line: 1306, column: 24, scope: !402)
!2610 = !DILocation(line: 1306, column: 21, scope: !402)
!2611 = !DILocation(line: 1306, column: 33, scope: !402)
!2612 = !DILocation(line: 1306, column: 15, scope: !402)
!2613 = !DILocation(line: 1305, column: 13, scope: !402)
!2614 = !DILocation(line: 1311, column: 9, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !402, file: !3, line: 1311, column: 9)
!2616 = !DILocation(line: 1312, column: 30, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 1311, column: 9)
!2618 = !{!2619}
!2619 = distinct !{!2619, !2620}
!2620 = distinct !{!2620, !"LVerDomain"}
!2621 = !DILocation(line: 1312, column: 44, scope: !2617)
!2622 = !DILocation(line: 1313, column: 23, scope: !2617)
!2623 = !DILocation(line: 1312, column: 13, scope: !2617)
!2624 = !DILocation(line: 1312, column: 27, scope: !2617)
!2625 = !{!2626}
!2626 = distinct !{!2626, !2620}
!2627 = !DILocation(line: 1312, column: 23, scope: !2617)
!2628 = !DILocation(line: 1311, column: 30, scope: !2617)
!2629 = !DILocation(line: 1311, column: 23, scope: !2617)
!2630 = distinct !{!2630, !2614, !2631, !2632}
!2631 = !DILocation(line: 1313, column: 41, scope: !2615)
!2632 = !{!"llvm.loop.isvectorized", i32 1}
!2633 = !DILocation(line: 1314, column: 9, scope: !402)
!2634 = !DILocation(line: 1314, column: 22, scope: !402)
!2635 = !DILocation(line: 1318, column: 5, scope: !386)
!2636 = !DILocation(line: 1321, column: 5, scope: !386)
!2637 = !DILocation(line: 1322, column: 9, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1322, column: 9)
!2639 = !DILocation(line: 1322, column: 9, scope: !386)
!2640 = !DILocation(line: 1323, column: 9, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 1322, column: 28)
!2642 = !DILocation(line: 1327, column: 13, scope: !2641)
!2643 = !DILocation(line: 1328, column: 13, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 1327, column: 22)
!2645 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 1327, column: 13)
!2646 = !DILocation(line: 1329, column: 32, scope: !2644)
!2647 = !{!934, !764, i64 152}
!2648 = !DILocation(line: 1329, column: 13, scope: !2644)
!2649 = !DILocation(line: 1330, column: 13, scope: !2644)
!2650 = !DILocation(line: 1332, column: 40, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 1332, column: 13)
!2652 = !DILocation(line: 1332, column: 37, scope: !2651)
!2653 = !DILocation(line: 1332, column: 13, scope: !2651)
!2654 = !DILocation(line: 1332, column: 49, scope: !2651)
!2655 = !DILocation(line: 1332, column: 13, scope: !2641)
!2656 = !DILocation(line: 1333, column: 13, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2651, file: !3, line: 1332, column: 58)
!2658 = !DILocation(line: 1336, column: 13, scope: !2657)
!2659 = !DILocation(line: 1339, column: 9, scope: !2641)
!2660 = !DILocation(line: 1340, column: 9, scope: !2641)
!2661 = !DILocation(line: 1345, column: 37, scope: !386)
!2662 = !DILocation(line: 1345, column: 41, scope: !386)
!2663 = !DILocation(line: 1345, column: 44, scope: !386)
!2664 = !DILocation(line: 1345, column: 5, scope: !386)
!2665 = !DILocation(line: 1346, column: 37, scope: !386)
!2666 = !DILocation(line: 1346, column: 41, scope: !386)
!2667 = !DILocation(line: 1346, column: 44, scope: !386)
!2668 = !DILocation(line: 1346, column: 43, scope: !386)
!2669 = !DILocation(line: 1346, column: 55, scope: !386)
!2670 = !DILocation(line: 1346, column: 59, scope: !386)
!2671 = !DILocation(line: 1346, column: 52, scope: !386)
!2672 = !DILocation(line: 1346, column: 5, scope: !386)
!2673 = !DILocation(line: 1349, column: 21, scope: !386)
!2674 = !DILocation(line: 1349, column: 35, scope: !386)
!2675 = !{!960, !764, i64 16}
!2676 = !DILocation(line: 1349, column: 39, scope: !386)
!2677 = !{!2678, !763, i64 40}
!2678 = !{!"redisDb", !764, i64 0, !764, i64 8, !764, i64 16, !764, i64 24, !764, i64 32, !763, i64 40, !537, i64 48, !764, i64 56}
!2679 = !DILocation(line: 1349, column: 5, scope: !386)
!2680 = !DILocation(line: 1358, column: 23, scope: !386)
!2681 = !DILocation(line: 1359, column: 29, scope: !386)
!2682 = !DILocation(line: 1359, column: 27, scope: !386)
!2683 = !DILocation(line: 1360, column: 21, scope: !386)
!2684 = !DILocation(line: 1361, column: 16, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1361, column: 9)
!2686 = !DILocation(line: 1361, column: 31, scope: !2685)
!2687 = !DILocation(line: 1361, column: 42, scope: !2685)
!2688 = !DILocation(line: 1361, column: 49, scope: !2685)
!2689 = !DILocation(line: 1361, column: 35, scope: !2685)
!2690 = !DILocation(line: 1362, column: 9, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 1361, column: 55)
!2692 = !DILocation(line: 1364, column: 5, scope: !2691)
!2693 = !DILocation(line: 1364, column: 16, scope: !2685)
!2694 = !DILocation(line: 1365, column: 28, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 1364, column: 28)
!2696 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 1364, column: 16)
!2697 = !DILocation(line: 1365, column: 9, scope: !2695)
!2698 = !DILocation(line: 1367, column: 5, scope: !2695)
!2699 = !DILocation(line: 1372, column: 11, scope: !386)
!2700 = !DILocation(line: 1265, column: 22, scope: !386)
!2701 = !DILocation(line: 1375, column: 9, scope: !386)
!2702 = !DILocation(line: 1375, column: 18, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1375, column: 9)
!2704 = !DILocation(line: 1376, column: 16, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1376, column: 9)
!2706 = !DILocation(line: 1376, column: 9, scope: !2705)
!2707 = !DILocation(line: 1376, column: 9, scope: !386)
!2708 = !DILocation(line: 1377, column: 29, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 1376, column: 30)
!2710 = !DILocation(line: 1380, column: 9, scope: !2709)
!2711 = !DILocation(line: 1381, column: 20, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 1381, column: 13)
!2713 = !DILocation(line: 1381, column: 13, scope: !2712)
!2714 = !DILocation(line: 1381, column: 41, scope: !2712)
!2715 = !DILocation(line: 1381, column: 34, scope: !2712)
!2716 = !DILocation(line: 1381, column: 31, scope: !2712)
!2717 = !DILocation(line: 1382, column: 13, scope: !2712)
!2718 = !DILocation(line: 1384, column: 23, scope: !386)
!2719 = !DILocation(line: 1396, column: 17, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1393, column: 5)
!2721 = !DILocation(line: 1397, column: 22, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2720, file: !3, line: 1397, column: 13)
!2723 = !DILocation(line: 1397, column: 13, scope: !2720)
!2724 = !DILocation(line: 1398, column: 13, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2722, file: !3, line: 1397, column: 46)
!2726 = !DILocation(line: 1399, column: 22, scope: !2725)
!2727 = !DILocation(line: 1400, column: 9, scope: !2725)
!2728 = !DILocation(line: 1403, column: 9, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1403, column: 9)
!2730 = !DILocation(line: 1403, column: 9, scope: !386)
!2731 = !DILocation(line: 1405, column: 23, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 1403, column: 14)
!2733 = !DILocation(line: 1404, column: 9, scope: !2732)
!2734 = !DILocation(line: 1406, column: 9, scope: !2732)
!2735 = !DILocation(line: 1407, column: 5, scope: !2732)
!2736 = !DILocation(line: 1410, column: 9, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 1407, column: 12)
!2738 = !DILocation(line: 1411, column: 9, scope: !2737)
!2739 = !DILocation(line: 1416, column: 16, scope: !409)
!2740 = !DILocation(line: 1416, column: 9, scope: !409)
!2741 = !DILocation(line: 1416, column: 9, scope: !386)
!2742 = !DILocation(line: 1417, column: 9, scope: !408)
!2743 = !DILocation(line: 1418, column: 20, scope: !407)
!2744 = !DILocation(line: 1418, column: 13, scope: !407)
!2745 = !DILocation(line: 1418, column: 13, scope: !408)
!2746 = !DILocation(line: 1419, column: 13, scope: !406)
!2747 = !DILocation(line: 1419, column: 19, scope: !406)
!2748 = !DILocation(line: 1420, column: 27, scope: !406)
!2749 = !DILocation(line: 1420, column: 13, scope: !406)
!2750 = !DILocation(line: 1420, column: 25, scope: !406)
!2751 = !DILocation(line: 1421, column: 34, scope: !406)
!2752 = !{!945, !764, i64 960}
!2753 = !DILocation(line: 1421, column: 49, scope: !406)
!2754 = !DILocation(line: 1421, column: 53, scope: !406)
!2755 = !DILocation(line: 1421, column: 13, scope: !406)
!2756 = !DILocation(line: 1423, column: 26, scope: !406)
!2757 = !DILocation(line: 1423, column: 13, scope: !406)
!2758 = !DILocation(line: 1424, column: 9, scope: !407)
!2759 = !DILocation(line: 1424, column: 9, scope: !406)
!2760 = !DILocation(line: 1437, column: 9, scope: !417)
!2761 = !DILocation(line: 1437, column: 28, scope: !417)
!2762 = !DILocation(line: 1437, column: 21, scope: !417)
!2763 = !DILocation(line: 1437, column: 17, scope: !417)
!2764 = !DILocation(line: 1438, column: 46, scope: !415)
!2765 = !DILocation(line: 1438, column: 43, scope: !415)
!2766 = !DILocation(line: 1438, column: 55, scope: !415)
!2767 = !DILocation(line: 1438, column: 14, scope: !415)
!2768 = !DILocation(line: 1438, column: 13, scope: !416)
!2769 = !DILocation(line: 1442, column: 50, scope: !414)
!2770 = !DILocation(line: 1442, column: 65, scope: !414)
!2771 = !DILocation(line: 1442, column: 62, scope: !414)
!2772 = !DILocation(line: 1442, column: 74, scope: !414)
!2773 = !DILocation(line: 1442, column: 28, scope: !414)
!2774 = !DILocation(line: 1442, column: 19, scope: !414)
!2775 = !DILocation(line: 1444, column: 42, scope: !414)
!2776 = !DILocation(line: 1444, column: 39, scope: !414)
!2777 = !DILocation(line: 1444, column: 51, scope: !414)
!2778 = !DILocation(line: 1444, column: 13, scope: !414)
!2779 = !DILocation(line: 1445, column: 13, scope: !414)
!2780 = !DILocation(line: 1451, column: 24, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !414, file: !3, line: 1451, column: 17)
!2782 = !DILocation(line: 1451, column: 30, scope: !2781)
!2783 = !DILocation(line: 1451, column: 17, scope: !414)
!2784 = !DILocation(line: 1453, column: 35, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 1451, column: 55)
!2786 = !DILocation(line: 1453, column: 21, scope: !2785)
!2787 = !DILocation(line: 1454, column: 35, scope: !2785)
!2788 = !DILocation(line: 1454, column: 21, scope: !2785)
!2789 = !DILocation(line: 1452, column: 17, scope: !2785)
!2790 = !DILocation(line: 1456, column: 13, scope: !2785)
!2791 = !DILocation(line: 1458, column: 35, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 1456, column: 20)
!2793 = !DILocation(line: 1458, column: 21, scope: !2792)
!2794 = !DILocation(line: 1457, column: 17, scope: !2792)
!2795 = !DILocation(line: 1459, column: 17, scope: !2792)
!2796 = !DILocation(line: 1461, column: 13, scope: !414)
!2797 = !DILocation(line: 1462, column: 9, scope: !414)
!2798 = !DILocation(line: 1464, column: 1, scope: !386)
!2799 = distinct !DISubprogram(name: "luaLdbLineHook", scope: !3, file: !3, line: 2409, type: !2462, isLocal: false, isDefinition: true, scopeLine: 2409, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2800)
!2800 = !{!2801, !2802, !2803, !2804, !2805, !2808, !2809}
!2801 = !DILocalVariable(name: "lua", arg: 1, scope: !2799, file: !3, line: 2409, type: !74)
!2802 = !DILocalVariable(name: "ar", arg: 2, scope: !2799, file: !3, line: 2409, type: !2464)
!2803 = !DILocalVariable(name: "bp", scope: !2799, file: !3, line: 2414, type: !15)
!2804 = !DILocalVariable(name: "timeout", scope: !2799, file: !3, line: 2415, type: !15)
!2805 = !DILocalVariable(name: "elapsed", scope: !2806, file: !3, line: 2422, type: !283)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 2421, column: 65)
!2807 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 2421, column: 9)
!2808 = !DILocalVariable(name: "timelimit", scope: !2806, file: !3, line: 2423, type: !283)
!2809 = !DILocalVariable(name: "reason", scope: !2810, file: !3, line: 2434, type: !11)
!2810 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 2433, column: 25)
!2811 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 2433, column: 9)
!2812 = !DILocation(line: 2409, column: 32, scope: !2799)
!2813 = !DILocation(line: 2409, column: 48, scope: !2799)
!2814 = !DILocation(line: 2410, column: 5, scope: !2799)
!2815 = !DILocation(line: 2411, column: 5, scope: !2799)
!2816 = !DILocation(line: 2412, column: 27, scope: !2799)
!2817 = !DILocation(line: 2412, column: 21, scope: !2799)
!2818 = !DILocalVariable(name: "line", arg: 1, scope: !2819, file: !3, line: 1795, type: !15)
!2819 = distinct !DISubprogram(name: "ldbIsBreakpoint", scope: !3, file: !3, line: 1795, type: !2820, isLocal: false, isDefinition: true, scopeLine: 1795, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2822)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!15, !15}
!2822 = !{!2818, !2823}
!2823 = !DILocalVariable(name: "j", scope: !2819, file: !3, line: 1796, type: !15)
!2824 = !DILocation(line: 1795, column: 25, scope: !2819, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 2414, column: 14, scope: !2799)
!2826 = !DILocation(line: 1796, column: 9, scope: !2819, inlinedAt: !2825)
!2827 = !DILocation(line: 1798, column: 25, scope: !2828, inlinedAt: !2825)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 1798, column: 5)
!2829 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 1798, column: 5)
!2830 = !{!762, !763, i64 296}
!2831 = !DILocation(line: 1798, column: 19, scope: !2828, inlinedAt: !2825)
!2832 = !DILocation(line: 1798, column: 5, scope: !2829, inlinedAt: !2825)
!2833 = distinct !{!2833, !2834, !2835}
!2834 = !DILocation(line: 1798, column: 5, scope: !2829)
!2835 = !DILocation(line: 1799, column: 39, scope: !2829)
!2836 = !DILocation(line: 1799, column: 13, scope: !2837, inlinedAt: !2825)
!2837 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 1799, column: 13)
!2838 = !DILocation(line: 1799, column: 23, scope: !2837, inlinedAt: !2825)
!2839 = !DILocation(line: 1798, column: 35, scope: !2828, inlinedAt: !2825)
!2840 = !DILocation(line: 1799, column: 13, scope: !2828, inlinedAt: !2825)
!2841 = !DILocation(line: 0, scope: !2819, inlinedAt: !2825)
!2842 = !DILocation(line: 1801, column: 1, scope: !2819, inlinedAt: !2825)
!2843 = !DILocation(line: 2414, column: 54, scope: !2799)
!2844 = !DILocation(line: 2414, column: 47, scope: !2799)
!2845 = !DILocation(line: 2415, column: 9, scope: !2799)
!2846 = !DILocation(line: 2418, column: 15, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 2418, column: 8)
!2848 = !DILocation(line: 2418, column: 8, scope: !2847)
!2849 = !DILocation(line: 2418, column: 44, scope: !2847)
!2850 = !DILocation(line: 2418, column: 8, scope: !2799)
!2851 = !DILocation(line: 2421, column: 13, scope: !2807)
!2852 = !{!795, !763, i64 0}
!2853 = !DILocation(line: 2421, column: 19, scope: !2807)
!2854 = !DILocation(line: 2421, column: 43, scope: !2807)
!2855 = !DILocation(line: 2421, column: 48, scope: !2807)
!2856 = !DILocation(line: 2421, column: 36, scope: !2807)
!2857 = !DILocation(line: 2421, column: 59, scope: !2807)
!2858 = !DILocation(line: 2422, column: 28, scope: !2806)
!2859 = !DILocation(line: 2422, column: 46, scope: !2806)
!2860 = !DILocation(line: 2422, column: 37, scope: !2806)
!2861 = !DILocation(line: 2422, column: 18, scope: !2806)
!2862 = !DILocation(line: 2423, column: 37, scope: !2806)
!2863 = !DILocation(line: 2423, column: 30, scope: !2806)
!2864 = !DILocation(line: 2423, column: 18, scope: !2806)
!2865 = !DILocation(line: 2425, column: 21, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2806, file: !3, line: 2425, column: 13)
!2867 = !DILocation(line: 2425, column: 13, scope: !2806)
!2868 = !DILocation(line: 2427, column: 22, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 2425, column: 35)
!2870 = !{!762, !763, i64 300}
!2871 = !DILocation(line: 2433, column: 13, scope: !2811)
!2872 = !DILocation(line: 0, scope: !2799)
!2873 = !DILocation(line: 2433, column: 18, scope: !2811)
!2874 = !DILocation(line: 2435, column: 13, scope: !2810)
!2875 = !DILocation(line: 2435, column: 30, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 2435, column: 13)
!2877 = !DILocation(line: 2435, column: 26, scope: !2876)
!2878 = !DILocation(line: 2434, column: 15, scope: !2810)
!2879 = !DILocation(line: 2435, column: 17, scope: !2876)
!2880 = !DILocation(line: 2437, column: 18, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 2437, column: 18)
!2882 = !DILocation(line: 2437, column: 18, scope: !2876)
!2883 = !DILocation(line: 0, scope: !2810)
!2884 = !DILocation(line: 2438, column: 18, scope: !2810)
!2885 = !DILocation(line: 2439, column: 19, scope: !2810)
!2886 = !DILocation(line: 2440, column: 29, scope: !2810)
!2887 = !DILocation(line: 2442, column: 17, scope: !2810)
!2888 = !DILocation(line: 2440, column: 16, scope: !2810)
!2889 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 2440, column: 9, scope: !2810)
!2891 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !2890)
!2892 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !2890)
!2893 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !2890)
!2894 = !DILocation(line: 2443, column: 30, scope: !2810)
!2895 = !DILocation(line: 2443, column: 9, scope: !2810)
!2896 = !DILocation(line: 2444, column: 9, scope: !2810)
!2897 = !DILocation(line: 2445, column: 13, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 2445, column: 13)
!2899 = !DILocation(line: 2445, column: 26, scope: !2898)
!2900 = !DILocation(line: 2445, column: 38, scope: !2898)
!2901 = !DILocation(line: 2445, column: 35, scope: !2898)
!2902 = !DILocation(line: 2449, column: 13, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 2445, column: 47)
!2904 = !DILocation(line: 2450, column: 13, scope: !2903)
!2905 = !DILocation(line: 2451, column: 9, scope: !2903)
!2906 = !DILocation(line: 2452, column: 33, scope: !2810)
!2907 = !DILocation(line: 2452, column: 31, scope: !2810)
!2908 = !DILocation(line: 2453, column: 5, scope: !2810)
!2909 = !DILocation(line: 2454, column: 1, scope: !2799)
!2910 = distinct !DISubprogram(name: "evalCommand", scope: !3, file: !3, line: 1466, type: !91, isLocal: false, isDefinition: true, scopeLine: 1466, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2911)
!2911 = !{!2912}
!2912 = !DILocalVariable(name: "c", arg: 1, scope: !2910, file: !3, line: 1466, type: !93)
!2913 = !DILocation(line: 1466, column: 26, scope: !2910)
!2914 = !DILocation(line: 1467, column: 14, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 1467, column: 9)
!2916 = !DILocation(line: 1467, column: 20, scope: !2915)
!2917 = !DILocation(line: 1467, column: 9, scope: !2910)
!2918 = !DILocation(line: 1468, column: 9, scope: !2915)
!2919 = !DILocalVariable(name: "c", arg: 1, scope: !2920, file: !3, line: 1777, type: !93)
!2920 = distinct !DISubprogram(name: "evalGenericCommandWithDebugging", scope: !3, file: !3, line: 1777, type: !387, isLocal: false, isDefinition: true, scopeLine: 1777, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2921)
!2921 = !{!2919, !2922}
!2922 = !DILocalVariable(name: "evalsha", arg: 2, scope: !2920, file: !3, line: 1777, type: !15)
!2923 = !DILocation(line: 1777, column: 46, scope: !2920, inlinedAt: !2924)
!2924 = distinct !DILocation(line: 1470, column: 9, scope: !2915)
!2925 = !DILocation(line: 1777, column: 53, scope: !2920, inlinedAt: !2924)
!2926 = !DILocation(line: 1778, column: 9, scope: !2927, inlinedAt: !2924)
!2927 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 1778, column: 9)
!2928 = !DILocation(line: 1778, column: 9, scope: !2920, inlinedAt: !2924)
!2929 = !DILocation(line: 1779, column: 9, scope: !2930, inlinedAt: !2924)
!2930 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 1778, column: 29)
!2931 = !DILocation(line: 1780, column: 9, scope: !2930, inlinedAt: !2924)
!2932 = !DILocation(line: 1781, column: 5, scope: !2930, inlinedAt: !2924)
!2933 = !DILocalVariable(name: "c", arg: 1, scope: !2934, file: !3, line: 1597, type: !93)
!2934 = distinct !DISubprogram(name: "ldbDisable", scope: !3, file: !3, line: 1597, type: !91, isLocal: false, isDefinition: true, scopeLine: 1597, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2935)
!2935 = !{!2933}
!2936 = !DILocation(line: 1597, column: 25, scope: !2934, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 1782, column: 9, scope: !2938, inlinedAt: !2924)
!2938 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 1781, column: 12)
!2939 = !DILocation(line: 1598, column: 14, scope: !2934, inlinedAt: !2937)
!2940 = !DILocation(line: 1599, column: 1, scope: !2934, inlinedAt: !2937)
!2941 = !DILocation(line: 1784, column: 1, scope: !2920, inlinedAt: !2924)
!2942 = !DILocation(line: 1471, column: 1, scope: !2910)
!2943 = !DILocation(line: 1777, column: 46, scope: !2920)
!2944 = !DILocation(line: 1777, column: 53, scope: !2920)
!2945 = !DILocation(line: 1778, column: 9, scope: !2927)
!2946 = !DILocation(line: 1778, column: 9, scope: !2920)
!2947 = !DILocation(line: 1779, column: 9, scope: !2930)
!2948 = !DILocation(line: 1780, column: 9, scope: !2930)
!2949 = !DILocation(line: 1781, column: 5, scope: !2930)
!2950 = !DILocation(line: 1597, column: 25, scope: !2934, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 1782, column: 9, scope: !2938)
!2952 = !DILocation(line: 1598, column: 8, scope: !2934, inlinedAt: !2951)
!2953 = !DILocation(line: 1598, column: 14, scope: !2934, inlinedAt: !2951)
!2954 = !DILocation(line: 1599, column: 1, scope: !2934, inlinedAt: !2951)
!2955 = !DILocation(line: 1784, column: 1, scope: !2920)
!2956 = distinct !DISubprogram(name: "evalShaCommand", scope: !3, file: !3, line: 1473, type: !91, isLocal: false, isDefinition: true, scopeLine: 1473, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2957)
!2957 = !{!2958}
!2958 = !DILocalVariable(name: "c", arg: 1, scope: !2956, file: !3, line: 1473, type: !93)
!2959 = !DILocation(line: 1473, column: 29, scope: !2956)
!2960 = !DILocation(line: 1474, column: 19, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 1474, column: 9)
!2962 = !DILocation(line: 1474, column: 16, scope: !2961)
!2963 = !DILocation(line: 1474, column: 28, scope: !2961)
!2964 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 1474, column: 9, scope: !2961)
!2966 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !2965)
!2967 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !2965)
!2968 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !2965)
!2969 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !2965)
!2970 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !2965)
!2971 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !2965)
!2972 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !2965)
!2973 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !2965)
!2974 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !2965)
!2975 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !2965)
!2976 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !2965)
!2977 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !2965)
!2978 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !2965)
!2979 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !2965)
!2980 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !2965)
!2981 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !2965)
!2982 = !DILocation(line: 1474, column: 9, scope: !2956)
!2983 = !DILocation(line: 0, scope: !1457, inlinedAt: !2965)
!2984 = !DILocation(line: 1474, column: 33, scope: !2961)
!2985 = !DILocation(line: 1479, column: 28, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 1474, column: 40)
!2987 = !DILocation(line: 1479, column: 9, scope: !2986)
!2988 = !DILocation(line: 1480, column: 9, scope: !2986)
!2989 = !DILocation(line: 1482, column: 14, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 1482, column: 9)
!2991 = !DILocation(line: 1482, column: 20, scope: !2990)
!2992 = !DILocation(line: 1482, column: 9, scope: !2956)
!2993 = !DILocation(line: 1483, column: 9, scope: !2990)
!2994 = !DILocation(line: 1485, column: 9, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 1484, column: 10)
!2996 = !DILocation(line: 1486, column: 9, scope: !2995)
!2997 = !DILocation(line: 1488, column: 1, scope: !2956)
!2998 = distinct !DISubprogram(name: "scriptCommand", scope: !3, file: !3, line: 1490, type: !91, isLocal: false, isDefinition: true, scopeLine: 1490, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2999)
!2999 = !{!3000, !3001, !3007, !3011}
!3000 = !DILocalVariable(name: "c", arg: 1, scope: !2998, file: !3, line: 1490, type: !93)
!3001 = !DILocalVariable(name: "help", scope: !3002, file: !3, line: 1492, type: !3004)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 1491, column: 62)
!3003 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 1491, column: 9)
!3004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 384, elements: !3005)
!3005 = !{!3006}
!3006 = !DISubrange(count: 6)
!3007 = !DILocalVariable(name: "j", scope: !3008, file: !3, line: 1507, type: !15)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 1506, column: 71)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 1506, column: 16)
!3010 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 1501, column: 16)
!3011 = !DILocalVariable(name: "sha", scope: !3012, file: !3, line: 1517, type: !209)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 1516, column: 69)
!3013 = distinct !DILexicalBlock(scope: !3009, file: !3, line: 1516, column: 16)
!3014 = !DILocation(line: 1490, column: 28, scope: !2998)
!3015 = !DILocation(line: 1491, column: 12, scope: !3003)
!3016 = !DILocation(line: 1491, column: 17, scope: !3003)
!3017 = !DILocation(line: 1491, column: 22, scope: !3003)
!3018 = !DILocation(line: 1491, column: 40, scope: !3003)
!3019 = !DILocation(line: 1491, column: 37, scope: !3003)
!3020 = !DILocation(line: 1491, column: 49, scope: !3003)
!3021 = !DILocation(line: 1491, column: 26, scope: !3003)
!3022 = !DILocation(line: 1491, column: 9, scope: !2998)
!3023 = !DILocation(line: 1492, column: 9, scope: !3002)
!3024 = !DILocation(line: 1492, column: 21, scope: !3002)
!3025 = !DILocation(line: 1500, column: 9, scope: !3002)
!3026 = !DILocation(line: 1501, column: 5, scope: !3003)
!3027 = !DILocation(line: 1501, column: 5, scope: !3002)
!3028 = !DILocation(line: 1501, column: 33, scope: !3010)
!3029 = !DILocation(line: 1501, column: 16, scope: !3003)
!3030 = !DILocation(line: 1093, column: 24, scope: !2215, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 1099, column: 5, scope: !2222, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 1502, column: 9, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3010, file: !3, line: 1501, column: 70)
!3034 = !DILocation(line: 1093, column: 5, scope: !2215, inlinedAt: !3031)
!3035 = !DILocation(line: 1094, column: 28, scope: !2215, inlinedAt: !3031)
!3036 = !DILocation(line: 1095, column: 22, scope: !2215, inlinedAt: !3031)
!3037 = !DILocation(line: 1095, column: 5, scope: !2215, inlinedAt: !3031)
!3038 = !DILocation(line: 1096, column: 1, scope: !2215, inlinedAt: !3031)
!3039 = !DILocation(line: 1100, column: 5, scope: !2222, inlinedAt: !3032)
!3040 = !DILocation(line: 1101, column: 1, scope: !2222, inlinedAt: !3032)
!3041 = !DILocation(line: 1503, column: 27, scope: !3033)
!3042 = !{!934, !764, i64 8}
!3043 = !DILocation(line: 1503, column: 9, scope: !3033)
!3044 = !DILocation(line: 1504, column: 9, scope: !3033)
!3045 = !DILocation(line: 1505, column: 21, scope: !3033)
!3046 = !DILocation(line: 1506, column: 5, scope: !3033)
!3047 = !DILocation(line: 1506, column: 24, scope: !3009)
!3048 = !DILocation(line: 1506, column: 29, scope: !3009)
!3049 = !DILocation(line: 1506, column: 47, scope: !3009)
!3050 = !DILocation(line: 1506, column: 44, scope: !3009)
!3051 = !DILocation(line: 1506, column: 56, scope: !3009)
!3052 = !DILocation(line: 1506, column: 33, scope: !3009)
!3053 = !DILocation(line: 1506, column: 16, scope: !3010)
!3054 = !DILocation(line: 1509, column: 40, scope: !3008)
!3055 = !DILocation(line: 1509, column: 33, scope: !3008)
!3056 = !DILocation(line: 1509, column: 9, scope: !3008)
!3057 = !DILocation(line: 1507, column: 13, scope: !3008)
!3058 = !DILocation(line: 1510, column: 28, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 1510, column: 9)
!3060 = distinct !DILexicalBlock(scope: !3008, file: !3, line: 1510, column: 9)
!3061 = !DILocation(line: 1510, column: 23, scope: !3059)
!3062 = !DILocation(line: 1510, column: 9, scope: !3060)
!3063 = !DILocation(line: 1511, column: 33, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 1511, column: 17)
!3065 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 1510, column: 39)
!3066 = !DILocation(line: 1511, column: 48, scope: !3064)
!3067 = !DILocation(line: 1511, column: 45, scope: !3064)
!3068 = !DILocation(line: 1511, column: 57, scope: !3064)
!3069 = !DILocation(line: 1511, column: 17, scope: !3064)
!3070 = !DILocation(line: 1511, column: 17, scope: !3065)
!3071 = !DILocation(line: 1512, column: 35, scope: !3064)
!3072 = !{!934, !764, i64 40}
!3073 = !DILocation(line: 1512, column: 17, scope: !3064)
!3074 = !DILocation(line: 1514, column: 35, scope: !3064)
!3075 = !{!934, !764, i64 32}
!3076 = !DILocation(line: 1514, column: 17, scope: !3064)
!3077 = !DILocation(line: 1510, column: 35, scope: !3059)
!3078 = distinct !{!3078, !3062, !3079}
!3079 = !DILocation(line: 1515, column: 9, scope: !3060)
!3080 = !DILocation(line: 1516, column: 24, scope: !3013)
!3081 = !DILocation(line: 1516, column: 29, scope: !3013)
!3082 = !DILocation(line: 1516, column: 33, scope: !3013)
!3083 = !DILocation(line: 1516, column: 16, scope: !3009)
!3084 = !DILocation(line: 1517, column: 46, scope: !3012)
!3085 = !DILocation(line: 1517, column: 50, scope: !3012)
!3086 = !DILocation(line: 1517, column: 19, scope: !3012)
!3087 = !DILocation(line: 1517, column: 13, scope: !3012)
!3088 = !DILocation(line: 1518, column: 17, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 1518, column: 13)
!3090 = !DILocation(line: 1518, column: 13, scope: !3012)
!3091 = !DILocation(line: 1519, column: 9, scope: !3012)
!3092 = !DILocation(line: 1520, column: 9, scope: !3012)
!3093 = !DILocation(line: 1521, column: 5, scope: !3013)
!3094 = !DILocation(line: 1521, column: 29, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3013, file: !3, line: 1521, column: 16)
!3096 = !DILocation(line: 1521, column: 33, scope: !3095)
!3097 = !DILocation(line: 1521, column: 16, scope: !3013)
!3098 = !DILocation(line: 1522, column: 20, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 1522, column: 13)
!3100 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 1521, column: 69)
!3101 = !DILocation(line: 1522, column: 31, scope: !3099)
!3102 = !DILocation(line: 1522, column: 13, scope: !3100)
!3103 = !DILocation(line: 1523, column: 27, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 1522, column: 40)
!3105 = !DILocation(line: 1523, column: 13, scope: !3104)
!3106 = !DILocation(line: 1524, column: 9, scope: !3104)
!3107 = !DILocation(line: 1524, column: 39, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 1524, column: 20)
!3109 = !DILocation(line: 1524, column: 45, scope: !3108)
!3110 = !DILocation(line: 1524, column: 20, scope: !3099)
!3111 = !DILocation(line: 1525, column: 27, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 1524, column: 62)
!3113 = !DILocation(line: 1525, column: 13, scope: !3112)
!3114 = !DILocation(line: 1526, column: 9, scope: !3112)
!3115 = !DILocation(line: 1526, column: 27, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 1526, column: 20)
!3117 = !DILocation(line: 1526, column: 20, scope: !3116)
!3118 = !DILocation(line: 1526, column: 20, scope: !3108)
!3119 = !DILocation(line: 1527, column: 27, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 1526, column: 44)
!3121 = !DILocation(line: 1527, column: 13, scope: !3120)
!3122 = !DILocation(line: 1528, column: 9, scope: !3120)
!3123 = !DILocation(line: 1529, column: 29, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 1528, column: 16)
!3125 = !DILocation(line: 1530, column: 31, scope: !3124)
!3126 = !DILocation(line: 1530, column: 13, scope: !3124)
!3127 = !DILocation(line: 1532, column: 29, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 1532, column: 16)
!3129 = !DILocation(line: 1532, column: 33, scope: !3128)
!3130 = !DILocation(line: 1532, column: 16, scope: !3095)
!3131 = !DILocation(line: 1533, column: 13, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 1533, column: 13)
!3133 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 1532, column: 70)
!3134 = !DILocation(line: 1533, column: 13, scope: !3133)
!3135 = !DILocation(line: 1534, column: 13, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3132, file: !3, line: 1533, column: 41)
!3137 = !DILocation(line: 1535, column: 13, scope: !3136)
!3138 = !DILocation(line: 1537, column: 28, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 1537, column: 13)
!3140 = !DILocation(line: 1537, column: 25, scope: !3139)
!3141 = !DILocation(line: 1537, column: 37, scope: !3139)
!3142 = !DILocation(line: 1537, column: 14, scope: !3139)
!3143 = !DILocation(line: 1537, column: 13, scope: !3133)
!3144 = !DILocation(line: 1597, column: 25, scope: !2934, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 1538, column: 13, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 1537, column: 48)
!3147 = !DILocation(line: 1598, column: 8, scope: !2934, inlinedAt: !3145)
!3148 = !DILocation(line: 1598, column: 14, scope: !2934, inlinedAt: !3145)
!3149 = !DILocation(line: 1599, column: 1, scope: !2934, inlinedAt: !3145)
!3150 = !DILocation(line: 1539, column: 31, scope: !3146)
!3151 = !DILocation(line: 1539, column: 13, scope: !3146)
!3152 = !DILocation(line: 1540, column: 9, scope: !3146)
!3153 = !DILocation(line: 1540, column: 21, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 1540, column: 20)
!3155 = !DILocation(line: 1540, column: 20, scope: !3139)
!3156 = !DILocalVariable(name: "c", arg: 1, scope: !3157, file: !3, line: 1581, type: !93)
!3157 = distinct !DISubprogram(name: "ldbEnable", scope: !3, file: !3, line: 1581, type: !91, isLocal: false, isDefinition: true, scopeLine: 1581, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3158)
!3158 = !{!3156}
!3159 = !DILocation(line: 1581, column: 24, scope: !3157, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 1541, column: 13, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3154, file: !3, line: 1540, column: 56)
!3162 = !DILocation(line: 1582, column: 8, scope: !3157, inlinedAt: !3160)
!3163 = !DILocation(line: 1582, column: 14, scope: !3157, inlinedAt: !3160)
!3164 = !DILocation(line: 1583, column: 21, scope: !3157, inlinedAt: !3160)
!3165 = !DILocalVariable(name: "log", arg: 1, scope: !3166, file: !3, line: 1573, type: !173)
!3166 = distinct !DISubprogram(name: "ldbFlushLog", scope: !3, file: !3, line: 1573, type: !3167, isLocal: false, isDefinition: true, scopeLine: 1573, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3169)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{null, !173}
!3169 = !{!3165, !3170}
!3170 = !DILocalVariable(name: "ln", scope: !3166, file: !3, line: 1574, type: !179)
!3171 = !DILocation(line: 1573, column: 24, scope: !3166, inlinedAt: !3172)
!3172 = distinct !DILocation(line: 1583, column: 5, scope: !3157, inlinedAt: !3160)
!3173 = !DILocation(line: 1576, column: 17, scope: !3166, inlinedAt: !3172)
!3174 = !DILocation(line: 1574, column: 15, scope: !3166, inlinedAt: !3172)
!3175 = !DILocation(line: 1576, column: 33, scope: !3166, inlinedAt: !3172)
!3176 = !DILocation(line: 1576, column: 5, scope: !3166, inlinedAt: !3172)
!3177 = !DILocation(line: 1577, column: 9, scope: !3166, inlinedAt: !3172)
!3178 = distinct !{!3178, !3179, !3180}
!3179 = !DILocation(line: 1576, column: 5, scope: !3166)
!3180 = !DILocation(line: 1577, column: 27, scope: !3166)
!3181 = !DILocation(line: 1578, column: 1, scope: !3166, inlinedAt: !3172)
!3182 = !DILocation(line: 1584, column: 17, scope: !3157, inlinedAt: !3160)
!3183 = !{!960, !763, i64 8}
!3184 = !DILocation(line: 1584, column: 12, scope: !3157, inlinedAt: !3160)
!3185 = !DILocation(line: 1585, column: 14, scope: !3157, inlinedAt: !3160)
!3186 = !DILocation(line: 1586, column: 17, scope: !3157, inlinedAt: !3160)
!3187 = !DILocation(line: 1587, column: 15, scope: !3157, inlinedAt: !3160)
!3188 = !DILocation(line: 1588, column: 17, scope: !3157, inlinedAt: !3160)
!3189 = !DILocation(line: 1588, column: 5, scope: !3157, inlinedAt: !3160)
!3190 = !DILocation(line: 1589, column: 16, scope: !3157, inlinedAt: !3160)
!3191 = !DILocation(line: 1589, column: 14, scope: !3157, inlinedAt: !3160)
!3192 = !DILocation(line: 1590, column: 16, scope: !3157, inlinedAt: !3160)
!3193 = !{!762, !765, i64 336}
!3194 = !DILocation(line: 1591, column: 26, scope: !3157, inlinedAt: !3160)
!3195 = !{!762, !763, i64 344}
!3196 = !DILocation(line: 1592, column: 1, scope: !3157, inlinedAt: !3160)
!3197 = !DILocation(line: 1542, column: 31, scope: !3161)
!3198 = !DILocation(line: 1542, column: 13, scope: !3161)
!3199 = !DILocation(line: 1543, column: 9, scope: !3161)
!3200 = !DILocation(line: 1543, column: 21, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3154, file: !3, line: 1543, column: 20)
!3202 = !DILocation(line: 1543, column: 20, scope: !3154)
!3203 = !DILocation(line: 1581, column: 24, scope: !3157, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 1544, column: 13, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 1543, column: 57)
!3206 = !DILocation(line: 1582, column: 8, scope: !3157, inlinedAt: !3204)
!3207 = !DILocation(line: 1582, column: 14, scope: !3157, inlinedAt: !3204)
!3208 = !DILocation(line: 1583, column: 21, scope: !3157, inlinedAt: !3204)
!3209 = !DILocation(line: 1573, column: 24, scope: !3166, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 1583, column: 5, scope: !3157, inlinedAt: !3204)
!3211 = !DILocation(line: 1576, column: 17, scope: !3166, inlinedAt: !3210)
!3212 = !DILocation(line: 1574, column: 15, scope: !3166, inlinedAt: !3210)
!3213 = !DILocation(line: 1576, column: 33, scope: !3166, inlinedAt: !3210)
!3214 = !DILocation(line: 1576, column: 5, scope: !3166, inlinedAt: !3210)
!3215 = !DILocation(line: 1577, column: 9, scope: !3166, inlinedAt: !3210)
!3216 = !DILocation(line: 1578, column: 1, scope: !3166, inlinedAt: !3210)
!3217 = !DILocation(line: 1584, column: 17, scope: !3157, inlinedAt: !3204)
!3218 = !DILocation(line: 1584, column: 12, scope: !3157, inlinedAt: !3204)
!3219 = !DILocation(line: 1585, column: 14, scope: !3157, inlinedAt: !3204)
!3220 = !DILocation(line: 1586, column: 17, scope: !3157, inlinedAt: !3204)
!3221 = !DILocation(line: 1587, column: 15, scope: !3157, inlinedAt: !3204)
!3222 = !DILocation(line: 1588, column: 17, scope: !3157, inlinedAt: !3204)
!3223 = !DILocation(line: 1588, column: 5, scope: !3157, inlinedAt: !3204)
!3224 = !DILocation(line: 1589, column: 16, scope: !3157, inlinedAt: !3204)
!3225 = !DILocation(line: 1589, column: 14, scope: !3157, inlinedAt: !3204)
!3226 = !DILocation(line: 1590, column: 16, scope: !3157, inlinedAt: !3204)
!3227 = !DILocation(line: 1591, column: 26, scope: !3157, inlinedAt: !3204)
!3228 = !DILocation(line: 1592, column: 1, scope: !3157, inlinedAt: !3204)
!3229 = !DILocation(line: 1545, column: 31, scope: !3205)
!3230 = !DILocation(line: 1545, column: 13, scope: !3205)
!3231 = !DILocation(line: 1546, column: 22, scope: !3205)
!3232 = !DILocation(line: 1548, column: 13, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 1547, column: 16)
!3234 = !DILocation(line: 1549, column: 13, scope: !3233)
!3235 = !DILocation(line: 1552, column: 9, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 1551, column: 12)
!3237 = !DILocation(line: 1554, column: 1, scope: !2998)
!3238 = !DILocation(line: 1597, column: 25, scope: !2934)
!3239 = !DILocation(line: 1598, column: 8, scope: !2934)
!3240 = !DILocation(line: 1598, column: 14, scope: !2934)
!3241 = !DILocation(line: 1599, column: 1, scope: !2934)
!3242 = !DILocation(line: 1581, column: 24, scope: !3157)
!3243 = !DILocation(line: 1582, column: 8, scope: !3157)
!3244 = !DILocation(line: 1582, column: 14, scope: !3157)
!3245 = !DILocation(line: 1583, column: 21, scope: !3157)
!3246 = !DILocation(line: 1573, column: 24, scope: !3166, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 1583, column: 5, scope: !3157)
!3248 = !DILocation(line: 1576, column: 17, scope: !3166, inlinedAt: !3247)
!3249 = !DILocation(line: 1574, column: 15, scope: !3166, inlinedAt: !3247)
!3250 = !DILocation(line: 1576, column: 33, scope: !3166, inlinedAt: !3247)
!3251 = !DILocation(line: 1576, column: 5, scope: !3166, inlinedAt: !3247)
!3252 = !DILocation(line: 1577, column: 9, scope: !3166, inlinedAt: !3247)
!3253 = !DILocation(line: 1578, column: 1, scope: !3166, inlinedAt: !3247)
!3254 = !DILocation(line: 1584, column: 17, scope: !3157)
!3255 = !DILocation(line: 1584, column: 12, scope: !3157)
!3256 = !DILocation(line: 1585, column: 14, scope: !3157)
!3257 = !DILocation(line: 1586, column: 17, scope: !3157)
!3258 = !DILocation(line: 1587, column: 15, scope: !3157)
!3259 = !DILocation(line: 1588, column: 17, scope: !3157)
!3260 = !DILocation(line: 1588, column: 5, scope: !3157)
!3261 = !DILocation(line: 1589, column: 16, scope: !3157)
!3262 = !DILocation(line: 1589, column: 14, scope: !3157)
!3263 = !DILocation(line: 1590, column: 16, scope: !3157)
!3264 = !DILocation(line: 1591, column: 26, scope: !3157)
!3265 = !DILocation(line: 1592, column: 1, scope: !3157)
!3266 = !DILocation(line: 1573, column: 24, scope: !3166)
!3267 = !DILocation(line: 1576, column: 17, scope: !3166)
!3268 = !DILocation(line: 1574, column: 15, scope: !3166)
!3269 = !DILocation(line: 1576, column: 33, scope: !3166)
!3270 = !DILocation(line: 1577, column: 9, scope: !3166)
!3271 = !DILocation(line: 1578, column: 1, scope: !3166)
!3272 = distinct !DISubprogram(name: "ldbLogWithMaxLen", scope: !3, file: !3, line: 1610, type: !775, isLocal: false, isDefinition: true, scopeLine: 1610, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3273)
!3273 = !{!3274, !3275}
!3274 = !DILocalVariable(name: "entry", arg: 1, scope: !3272, file: !3, line: 1610, type: !209)
!3275 = !DILocalVariable(name: "trimmed", scope: !3272, file: !3, line: 1611, type: !15)
!3276 = !DILocation(line: 1610, column: 27, scope: !3272)
!3277 = !DILocation(line: 1611, column: 9, scope: !3272)
!3278 = !DILocation(line: 1612, column: 13, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 1612, column: 9)
!3280 = !DILocation(line: 1612, column: 9, scope: !3279)
!3281 = !DILocation(line: 1612, column: 20, scope: !3279)
!3282 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 1612, column: 23, scope: !3279)
!3284 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !3283)
!3285 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !3283)
!3286 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !3283)
!3287 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !3283)
!3288 = !DILocation(line: 1612, column: 9, scope: !3272)
!3289 = !DILocation(line: 91, column: 20, scope: !1457, inlinedAt: !3283)
!3290 = !DILocation(line: 91, column: 13, scope: !1457, inlinedAt: !3283)
!3291 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !3283)
!3292 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !3283)
!3293 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !3283)
!3294 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !3283)
!3295 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !3283)
!3296 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !3283)
!3297 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !3283)
!3298 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !3283)
!3299 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !3283)
!3300 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !3283)
!3301 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !3283)
!3302 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !3283)
!3303 = !DILocation(line: 0, scope: !1457, inlinedAt: !3283)
!3304 = !DILocation(line: 1612, column: 37, scope: !3279)
!3305 = !DILocation(line: 1613, column: 36, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 1612, column: 51)
!3307 = !DILocation(line: 1613, column: 9, scope: !3306)
!3308 = !DILocation(line: 1614, column: 17, scope: !3306)
!3309 = !DILocation(line: 1616, column: 5, scope: !3306)
!3310 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 1617, column: 5, scope: !3272)
!3312 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !3311)
!3313 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !3311)
!3314 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !3311)
!3315 = !DILocation(line: 1618, column: 24, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 1618, column: 9)
!3317 = !DILocation(line: 1618, column: 41, scope: !3316)
!3318 = !DILocation(line: 1618, column: 17, scope: !3316)
!3319 = !DILocation(line: 1619, column: 30, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3316, file: !3, line: 1618, column: 47)
!3321 = !DILocation(line: 1620, column: 16, scope: !3320)
!3322 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 1620, column: 9, scope: !3320)
!3324 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !3323)
!3325 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !3323)
!3326 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !3323)
!3327 = !DILocation(line: 1622, column: 5, scope: !3320)
!3328 = !DILocation(line: 1623, column: 1, scope: !3272)
!3329 = distinct !DISubprogram(name: "ldbSendLogs", scope: !3, file: !3, line: 1628, type: !2029, isLocal: false, isDefinition: true, scopeLine: 1628, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3330)
!3330 = !{!3331, !3332}
!3331 = !DILocalVariable(name: "proto", scope: !3329, file: !3, line: 1629, type: !209)
!3332 = !DILocalVariable(name: "ln", scope: !3333, file: !3, line: 1632, type: !179)
!3333 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1631, column: 33)
!3334 = !DILocation(line: 1629, column: 17, scope: !3329)
!3335 = !DILocation(line: 1629, column: 9, scope: !3329)
!3336 = !DILocation(line: 1630, column: 45, scope: !3329)
!3337 = !DILocation(line: 1630, column: 40, scope: !3329)
!3338 = !DILocation(line: 1630, column: 13, scope: !3329)
!3339 = !DILocation(line: 1631, column: 11, scope: !3329)
!3340 = !DILocation(line: 1631, column: 5, scope: !3329)
!3341 = !DILocation(line: 1632, column: 24, scope: !3333)
!3342 = !DILocation(line: 1632, column: 19, scope: !3333)
!3343 = !DILocation(line: 1633, column: 17, scope: !3333)
!3344 = !DILocation(line: 1634, column: 25, scope: !3333)
!3345 = !DILocation(line: 1634, column: 9, scope: !3333)
!3346 = !DILocation(line: 1635, column: 37, scope: !3333)
!3347 = !DILocation(line: 1635, column: 17, scope: !3333)
!3348 = !DILocation(line: 1636, column: 17, scope: !3333)
!3349 = !DILocation(line: 1637, column: 25, scope: !3333)
!3350 = !DILocation(line: 1637, column: 9, scope: !3333)
!3351 = distinct !{!3351, !3340, !3352}
!3352 = !DILocation(line: 1638, column: 5, scope: !3329)
!3353 = !DILocation(line: 0, scope: !3333)
!3354 = !DILocation(line: 1639, column: 19, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3329, file: !3, line: 1639, column: 9)
!3356 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 1639, column: 28, scope: !3355)
!3358 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !3357)
!3359 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !3357)
!3360 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !3357)
!3361 = !DILocation(line: 91, column: 20, scope: !1457, inlinedAt: !3357)
!3362 = !DILocation(line: 91, column: 13, scope: !1457, inlinedAt: !3357)
!3363 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !3357)
!3364 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !3357)
!3365 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !3357)
!3366 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !3357)
!3367 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !3357)
!3368 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !3357)
!3369 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !3357)
!3370 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !3357)
!3371 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !3357)
!3372 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !3357)
!3373 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !3357)
!3374 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !3357)
!3375 = !DILocation(line: 0, scope: !1457, inlinedAt: !3357)
!3376 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !3357)
!3377 = !DILocation(line: 1639, column: 9, scope: !3355)
!3378 = !DILocation(line: 1644, column: 5, scope: !3329)
!3379 = !DILocation(line: 1645, column: 1, scope: !3329)
!3380 = distinct !DISubprogram(name: "ldbStartSession", scope: !3, file: !3, line: 1659, type: !3381, isLocal: false, isDefinition: true, scopeLine: 1659, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3383)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!15, !93}
!3383 = !{!3384, !3385, !3390, !3417, !3418}
!3384 = !DILocalVariable(name: "c", arg: 1, scope: !3380, file: !3, line: 1659, type: !93)
!3385 = !DILocalVariable(name: "cp", scope: !3386, file: !3, line: 1662, type: !3388)
!3386 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 1661, column: 21)
!3387 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 1661, column: 9)
!3388 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !3389, line: 61, baseType: !15)
!3389 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!3390 = !DILocalVariable(name: "act", scope: !3391, file: !3, line: 1668, type: !3394)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 1666, column: 29)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 1666, column: 20)
!3393 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 1663, column: 13)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3389, line: 74, size: 256, elements: !3395)
!3395 = !{!3396, !3411, !3414, !3415}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "__sa_handler", scope: !3394, file: !3389, line: 78, baseType: !3397, size: 64)
!3397 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3394, file: !3389, line: 75, size: 64, elements: !3398)
!3398 = !{!3399, !3400}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3397, file: !3389, line: 76, baseType: !19, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !3397, file: !3389, line: 77, baseType: !3401, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{null, !15, !3404, !14}
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !3389, line: 72, baseType: !3406)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3389, line: 68, size: 96, elements: !3407)
!3407 = !{!3408, !3409, !3410}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3406, file: !3389, line: 69, baseType: !15, size: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3406, file: !3389, line: 70, baseType: !15, size: 32, offset: 32)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !3406, file: !3389, line: 71, baseType: !3388, size: 32, offset: 64)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3394, file: !3389, line: 79, baseType: !3412, size: 64, offset: 64)
!3412 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3389, line: 64, baseType: !3413)
!3413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !3389, line: 63, baseType: !22)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3394, file: !3389, line: 80, baseType: !15, size: 32, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3394, file: !3389, line: 81, baseType: !3416, size: 64, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!3417 = !DILocalVariable(name: "srcstring", scope: !3380, file: !3, line: 1698, type: !209)
!3418 = !DILocalVariable(name: "srclen", scope: !3380, file: !3, line: 1699, type: !211)
!3419 = !DILocation(line: 1659, column: 29, scope: !3380)
!3420 = !DILocation(line: 1660, column: 22, scope: !3380)
!3421 = !DILocation(line: 1660, column: 28, scope: !3380)
!3422 = !DILocation(line: 1660, column: 53, scope: !3380)
!3423 = !DILocation(line: 1660, column: 16, scope: !3380)
!3424 = !{!762, !763, i64 8}
!3425 = !DILocation(line: 1661, column: 9, scope: !3380)
!3426 = !DILocation(line: 1662, column: 20, scope: !3386)
!3427 = !DILocation(line: 1662, column: 15, scope: !3386)
!3428 = !DILocation(line: 1663, column: 13, scope: !3386)
!3429 = !DILocation(line: 1664, column: 13, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 1663, column: 23)
!3431 = !DILocation(line: 1668, column: 13, scope: !3391)
!3432 = !DILocation(line: 1669, column: 30, scope: !3391)
!3433 = !DILocation(line: 1669, column: 13, scope: !3391)
!3434 = !DILocation(line: 1670, column: 17, scope: !3391)
!3435 = !DILocation(line: 1670, column: 26, scope: !3391)
!3436 = !{!3437, !763, i64 16}
!3437 = !{!"sigaction", !486, i64 0, !765, i64 8, !763, i64 16, !764, i64 24}
!3438 = !DILocation(line: 1671, column: 17, scope: !3391)
!3439 = !DILocation(line: 1671, column: 28, scope: !3391)
!3440 = !DILocation(line: 1668, column: 30, scope: !3391)
!3441 = !DILocation(line: 1672, column: 13, scope: !3391)
!3442 = !DILocation(line: 1673, column: 13, scope: !3391)
!3443 = !DILocation(line: 1678, column: 13, scope: !3391)
!3444 = !DILocation(line: 1679, column: 13, scope: !3391)
!3445 = !DILocation(line: 1680, column: 9, scope: !3392)
!3446 = !DILocation(line: 1682, column: 33, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 1680, column: 16)
!3448 = !DILocation(line: 1682, column: 49, scope: !3447)
!3449 = !DILocation(line: 1682, column: 42, scope: !3447)
!3450 = !DILocation(line: 1682, column: 13, scope: !3447)
!3451 = !DILocation(line: 1683, column: 13, scope: !3447)
!3452 = !DILocation(line: 1687, column: 9, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 1686, column: 12)
!3454 = !DILocation(line: 1692, column: 24, scope: !3380)
!3455 = !DILocation(line: 1692, column: 5, scope: !3380)
!3456 = !DILocation(line: 1693, column: 30, scope: !3380)
!3457 = !DILocation(line: 1693, column: 5, scope: !3380)
!3458 = !DILocation(line: 1694, column: 16, scope: !3380)
!3459 = !DILocation(line: 1698, column: 31, scope: !3380)
!3460 = !DILocation(line: 1698, column: 28, scope: !3380)
!3461 = !DILocation(line: 1698, column: 40, scope: !3380)
!3462 = !DILocation(line: 1698, column: 21, scope: !3380)
!3463 = !DILocation(line: 1698, column: 9, scope: !3380)
!3464 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 1699, column: 21, scope: !3380)
!3466 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !3465)
!3467 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !3465)
!3468 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !3465)
!3469 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !3465)
!3470 = !DILocation(line: 1699, column: 12, scope: !3380)
!3471 = !DILocation(line: 1700, column: 18, scope: !3380)
!3472 = !DILocation(line: 91, column: 20, scope: !1457, inlinedAt: !3465)
!3473 = !DILocation(line: 91, column: 13, scope: !1457, inlinedAt: !3465)
!3474 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !3465)
!3475 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !3465)
!3476 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !3465)
!3477 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !3465)
!3478 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !3465)
!3479 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !3465)
!3480 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !3465)
!3481 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !3465)
!3482 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !3465)
!3483 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !3465)
!3484 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !3465)
!3485 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !3465)
!3486 = !DILocation(line: 0, scope: !1457, inlinedAt: !3465)
!3487 = !DILocation(line: 1700, column: 11, scope: !3380)
!3488 = !DILocation(line: 1700, column: 38, scope: !3380)
!3489 = !DILocation(line: 1700, column: 22, scope: !3380)
!3490 = !DILocation(line: 1700, column: 5, scope: !3380)
!3491 = !DILocation(line: 1703, column: 29, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 1702, column: 5)
!3493 = distinct !{!3493, !3490, !3494}
!3494 = !DILocation(line: 1704, column: 5, scope: !3380)
!3495 = !DILocation(line: 131, column: 27, scope: !1047, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 1705, column: 5, scope: !3380)
!3497 = !DILocation(line: 0, scope: !3492)
!3498 = !DILocation(line: 130, column: 34, scope: !1047, inlinedAt: !3496)
!3499 = !DILocation(line: 130, column: 44, scope: !1047, inlinedAt: !3496)
!3500 = !DILocation(line: 131, column: 19, scope: !1047, inlinedAt: !3496)
!3501 = !DILocation(line: 132, column: 5, scope: !1047, inlinedAt: !3496)
!3502 = !DILocation(line: 135, column: 32, scope: !1056, inlinedAt: !3496)
!3503 = !DILocation(line: 136, column: 23, scope: !1056, inlinedAt: !3496)
!3504 = !DILocation(line: 136, column: 21, scope: !1056, inlinedAt: !3496)
!3505 = !DILocation(line: 138, column: 13, scope: !1057, inlinedAt: !3496)
!3506 = !DILocation(line: 140, column: 33, scope: !1057, inlinedAt: !3496)
!3507 = !DILocation(line: 140, column: 13, scope: !1057, inlinedAt: !3496)
!3508 = !DILocation(line: 140, column: 31, scope: !1057, inlinedAt: !3496)
!3509 = !DILocation(line: 141, column: 13, scope: !1057, inlinedAt: !3496)
!3510 = !DILocation(line: 143, column: 34, scope: !1057, inlinedAt: !3496)
!3511 = !DILocation(line: 143, column: 13, scope: !1057, inlinedAt: !3496)
!3512 = !DILocation(line: 143, column: 28, scope: !1057, inlinedAt: !3496)
!3513 = !DILocation(line: 143, column: 32, scope: !1057, inlinedAt: !3496)
!3514 = !DILocation(line: 144, column: 13, scope: !1057, inlinedAt: !3496)
!3515 = !DILocation(line: 146, column: 34, scope: !1057, inlinedAt: !3496)
!3516 = !DILocation(line: 146, column: 13, scope: !1057, inlinedAt: !3496)
!3517 = !DILocation(line: 146, column: 28, scope: !1057, inlinedAt: !3496)
!3518 = !DILocation(line: 146, column: 32, scope: !1057, inlinedAt: !3496)
!3519 = !DILocation(line: 147, column: 13, scope: !1057, inlinedAt: !3496)
!3520 = !DILocation(line: 149, column: 13, scope: !1057, inlinedAt: !3496)
!3521 = !DILocation(line: 149, column: 28, scope: !1057, inlinedAt: !3496)
!3522 = !DILocation(line: 149, column: 32, scope: !1057, inlinedAt: !3496)
!3523 = !DILocation(line: 150, column: 13, scope: !1057, inlinedAt: !3496)
!3524 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !3525)
!3525 = distinct !DILocation(line: 1706, column: 37, scope: !3380)
!3526 = !DILocation(line: 152, column: 1, scope: !1047, inlinedAt: !3496)
!3527 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !3525)
!3528 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !3525)
!3529 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !3525)
!3530 = !DILocation(line: 91, column: 20, scope: !1457, inlinedAt: !3525)
!3531 = !DILocation(line: 91, column: 13, scope: !1457, inlinedAt: !3525)
!3532 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !3525)
!3533 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !3525)
!3534 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !3525)
!3535 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !3525)
!3536 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !3525)
!3537 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !3525)
!3538 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !3525)
!3539 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !3525)
!3540 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !3525)
!3541 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !3525)
!3542 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !3525)
!3543 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !3525)
!3544 = !DILocation(line: 0, scope: !1457, inlinedAt: !3525)
!3545 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !3525)
!3546 = !DILocation(line: 1706, column: 15, scope: !3380)
!3547 = !DILocation(line: 1706, column: 13, scope: !3380)
!3548 = !DILocation(line: 1707, column: 5, scope: !3380)
!3549 = !DILocation(line: 0, scope: !3430)
!3550 = !DILocation(line: 1709, column: 1, scope: !3380)
!3551 = distinct !DISubprogram(name: "ldbEndSession", scope: !3, file: !3, line: 1713, type: !91, isLocal: false, isDefinition: true, scopeLine: 1713, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3552)
!3552 = !{!3553}
!3553 = !DILocalVariable(name: "c", arg: 1, scope: !3551, file: !3, line: 1713, type: !93)
!3554 = !DILocation(line: 1713, column: 28, scope: !3551)
!3555 = !DILocation(line: 1715, column: 12, scope: !3551)
!3556 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 1715, column: 5, scope: !3551)
!3558 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !3557)
!3559 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !3557)
!3560 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !3557)
!3561 = !DILocation(line: 1716, column: 5, scope: !3551)
!3562 = !DILocation(line: 1719, column: 13, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 1719, column: 9)
!3564 = !DILocation(line: 1719, column: 9, scope: !3563)
!3565 = !DILocation(line: 1719, column: 9, scope: !3551)
!3566 = !DILocation(line: 1720, column: 26, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 1719, column: 21)
!3568 = !DILocation(line: 1720, column: 9, scope: !3567)
!3569 = !DILocation(line: 1721, column: 9, scope: !3567)
!3570 = !DILocation(line: 1722, column: 9, scope: !3567)
!3571 = !DILocation(line: 1723, column: 5, scope: !3567)
!3572 = !DILocation(line: 1724, column: 9, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3563, file: !3, line: 1723, column: 12)
!3574 = !DILocation(line: 1729, column: 27, scope: !3551)
!3575 = !DILocation(line: 1729, column: 5, scope: !3551)
!3576 = !DILocation(line: 1730, column: 30, scope: !3551)
!3577 = !DILocation(line: 1730, column: 5, scope: !3551)
!3578 = !DILocation(line: 1734, column: 8, scope: !3551)
!3579 = !DILocation(line: 1734, column: 14, scope: !3551)
!3580 = !DILocation(line: 1737, column: 25, scope: !3551)
!3581 = !DILocation(line: 1737, column: 33, scope: !3551)
!3582 = !DILocation(line: 1737, column: 5, scope: !3551)
!3583 = !DILocation(line: 1738, column: 15, scope: !3551)
!3584 = !DILocation(line: 1739, column: 16, scope: !3551)
!3585 = !DILocation(line: 1740, column: 1, scope: !3551)
!3586 = distinct !DISubprogram(name: "ldbRemoveChild", scope: !3, file: !3, line: 1745, type: !3587, isLocal: false, isDefinition: true, scopeLine: 1745, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3589)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!15, !3388}
!3589 = !{!3590, !3591}
!3590 = !DILocalVariable(name: "pid", arg: 1, scope: !3586, file: !3, line: 1745, type: !3388)
!3591 = !DILocalVariable(name: "ln", scope: !3586, file: !3, line: 1746, type: !179)
!3592 = !DILocation(line: 1745, column: 26, scope: !3586)
!3593 = !DILocation(line: 1746, column: 38, scope: !3586)
!3594 = !DILocation(line: 1746, column: 54, scope: !3586)
!3595 = !DILocation(line: 1746, column: 47, scope: !3586)
!3596 = !DILocation(line: 1746, column: 20, scope: !3586)
!3597 = !DILocation(line: 1746, column: 15, scope: !3586)
!3598 = !DILocation(line: 1747, column: 9, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3586, file: !3, line: 1747, column: 9)
!3600 = !DILocation(line: 1747, column: 9, scope: !3586)
!3601 = !DILocation(line: 1748, column: 25, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 1747, column: 13)
!3603 = !DILocation(line: 1748, column: 9, scope: !3602)
!3604 = !DILocation(line: 1749, column: 9, scope: !3602)
!3605 = !DILocation(line: 0, scope: !3586)
!3606 = !DILocation(line: 1752, column: 1, scope: !3586)
!3607 = distinct !DISubprogram(name: "ldbPendingChildren", scope: !3, file: !3, line: 1756, type: !3608, isLocal: false, isDefinition: true, scopeLine: 1756, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!15}
!3610 = !DILocation(line: 1757, column: 12, scope: !3607)
!3611 = !DILocation(line: 1757, column: 5, scope: !3607)
!3612 = distinct !DISubprogram(name: "ldbKillForkedSessions", scope: !3, file: !3, line: 1761, type: !2029, isLocal: false, isDefinition: true, scopeLine: 1761, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3613)
!3613 = !{!3614, !3620, !3621}
!3614 = !DILocalVariable(name: "li", scope: !3612, file: !3, line: 1762, type: !3615)
!3615 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !175, line: 45, baseType: !3616)
!3616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !175, line: 42, size: 128, elements: !3617)
!3617 = !{!3618, !3619}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3616, file: !175, line: 43, baseType: !179, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !3616, file: !175, line: 44, baseType: !15, size: 32, offset: 64)
!3620 = !DILocalVariable(name: "ln", scope: !3612, file: !3, line: 1763, type: !179)
!3621 = !DILocalVariable(name: "pid", scope: !3622, file: !3, line: 1767, type: !3388)
!3622 = distinct !DILexicalBlock(scope: !3612, file: !3, line: 1766, column: 33)
!3623 = !DILocation(line: 1762, column: 5, scope: !3612)
!3624 = !DILocation(line: 1765, column: 20, scope: !3612)
!3625 = !DILocation(line: 1762, column: 14, scope: !3612)
!3626 = !DILocation(line: 1765, column: 5, scope: !3612)
!3627 = !DILocation(line: 1766, column: 17, scope: !3612)
!3628 = !DILocation(line: 1763, column: 15, scope: !3612)
!3629 = !DILocation(line: 1766, column: 5, scope: !3612)
!3630 = !DILocation(line: 1767, column: 41, scope: !3622)
!3631 = !DILocation(line: 1767, column: 21, scope: !3622)
!3632 = !DILocation(line: 1767, column: 15, scope: !3622)
!3633 = !DILocation(line: 1768, column: 62, scope: !3622)
!3634 = !DILocation(line: 1768, column: 9, scope: !3622)
!3635 = !DILocation(line: 1769, column: 9, scope: !3622)
!3636 = distinct !{!3636, !3629, !3637}
!3637 = !DILocation(line: 1770, column: 5, scope: !3612)
!3638 = !DILocation(line: 1771, column: 21, scope: !3612)
!3639 = !DILocation(line: 1771, column: 5, scope: !3612)
!3640 = !DILocation(line: 1772, column: 20, scope: !3612)
!3641 = !DILocation(line: 1772, column: 18, scope: !3612)
!3642 = !DILocation(line: 1773, column: 1, scope: !3612)
!3643 = distinct !DISubprogram(name: "ldbGetSourceLine", scope: !3, file: !3, line: 1788, type: !3644, isLocal: false, isDefinition: true, scopeLine: 1788, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3646)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!11, !15}
!3646 = !{!3647, !3648}
!3647 = !DILocalVariable(name: "line", arg: 1, scope: !3643, file: !3, line: 1788, type: !15)
!3648 = !DILocalVariable(name: "idx", scope: !3643, file: !3, line: 1789, type: !15)
!3649 = !DILocation(line: 1788, column: 28, scope: !3643)
!3650 = !DILocation(line: 1790, column: 13, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1790, column: 9)
!3652 = !DILocation(line: 1790, column: 31, scope: !3651)
!3653 = !DILocation(line: 1790, column: 24, scope: !3651)
!3654 = !DILocation(line: 1790, column: 17, scope: !3651)
!3655 = !DILocation(line: 1789, column: 19, scope: !3643)
!3656 = !DILocation(line: 1789, column: 9, scope: !3643)
!3657 = !DILocation(line: 1791, column: 16, scope: !3643)
!3658 = !DILocation(line: 1791, column: 12, scope: !3643)
!3659 = !DILocation(line: 1791, column: 5, scope: !3643)
!3660 = !DILocation(line: 0, scope: !3643)
!3661 = !DILocation(line: 1792, column: 1, scope: !3643)
!3662 = !DILocation(line: 1795, column: 25, scope: !2819)
!3663 = !DILocation(line: 1796, column: 9, scope: !2819)
!3664 = !DILocation(line: 1798, column: 25, scope: !2828)
!3665 = !DILocation(line: 1798, column: 19, scope: !2828)
!3666 = !DILocation(line: 1799, column: 13, scope: !2837)
!3667 = !DILocation(line: 1799, column: 23, scope: !2837)
!3668 = !DILocation(line: 1798, column: 35, scope: !2828)
!3669 = !DILocation(line: 1799, column: 13, scope: !2828)
!3670 = !DILocation(line: 0, scope: !2819)
!3671 = !DILocation(line: 1801, column: 1, scope: !2819)
!3672 = distinct !DISubprogram(name: "ldbAddBreakpoint", scope: !3, file: !3, line: 1806, type: !2820, isLocal: false, isDefinition: true, scopeLine: 1806, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3673)
!3673 = !{!3674}
!3674 = !DILocalVariable(name: "line", arg: 1, scope: !3672, file: !3, line: 1806, type: !15)
!3675 = !DILocation(line: 1806, column: 26, scope: !3672)
!3676 = !DILocation(line: 1807, column: 14, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 1807, column: 9)
!3678 = !DILocation(line: 1807, column: 33, scope: !3677)
!3679 = !DILocation(line: 1807, column: 27, scope: !3677)
!3680 = !DILocation(line: 1807, column: 19, scope: !3677)
!3681 = !DILocation(line: 1795, column: 25, scope: !2819, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 1808, column: 10, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3672, file: !3, line: 1808, column: 9)
!3684 = !DILocation(line: 1796, column: 9, scope: !2819, inlinedAt: !3682)
!3685 = !DILocation(line: 1798, column: 25, scope: !2828, inlinedAt: !3682)
!3686 = !DILocation(line: 1798, column: 19, scope: !2828, inlinedAt: !3682)
!3687 = !DILocation(line: 1798, column: 5, scope: !2829, inlinedAt: !3682)
!3688 = !DILocation(line: 1801, column: 1, scope: !2819, inlinedAt: !3682)
!3689 = !DILocation(line: 1808, column: 32, scope: !3683)
!3690 = !DILocation(line: 1799, column: 13, scope: !2837, inlinedAt: !3682)
!3691 = !DILocation(line: 1799, column: 23, scope: !2837, inlinedAt: !3682)
!3692 = !DILocation(line: 1798, column: 35, scope: !2828, inlinedAt: !3682)
!3693 = !DILocation(line: 1799, column: 13, scope: !2828, inlinedAt: !3682)
!3694 = !DILocation(line: 1808, column: 47, scope: !3683)
!3695 = !DILocation(line: 1809, column: 27, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3683, file: !3, line: 1808, column: 71)
!3697 = !DILocation(line: 1809, column: 9, scope: !3696)
!3698 = !DILocation(line: 1809, column: 31, scope: !3696)
!3699 = !DILocation(line: 1810, column: 9, scope: !3696)
!3700 = !DILocation(line: 0, scope: !3672)
!3701 = !DILocation(line: 1813, column: 1, scope: !3672)
!3702 = distinct !DISubprogram(name: "ldbDelBreakpoint", scope: !3, file: !3, line: 1817, type: !2820, isLocal: false, isDefinition: true, scopeLine: 1817, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3703)
!3703 = !{!3704, !3705}
!3704 = !DILocalVariable(name: "line", arg: 1, scope: !3702, file: !3, line: 1817, type: !15)
!3705 = !DILocalVariable(name: "j", scope: !3702, file: !3, line: 1818, type: !15)
!3706 = !DILocation(line: 1817, column: 26, scope: !3702)
!3707 = !DILocation(line: 1818, column: 9, scope: !3702)
!3708 = !DILocation(line: 1820, column: 25, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 1820, column: 5)
!3710 = distinct !DILexicalBlock(scope: !3702, file: !3, line: 1820, column: 5)
!3711 = !DILocation(line: 1820, column: 19, scope: !3709)
!3712 = !DILocation(line: 1820, column: 5, scope: !3710)
!3713 = !DILocation(line: 1821, column: 13, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 1821, column: 13)
!3715 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 1820, column: 39)
!3716 = !DILocation(line: 1821, column: 23, scope: !3714)
!3717 = !DILocation(line: 1821, column: 13, scope: !3715)
!3718 = !DILocation(line: 1822, column: 24, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 1821, column: 32)
!3720 = !DILocation(line: 1823, column: 21, scope: !3719)
!3721 = !DILocation(line: 1823, column: 38, scope: !3719)
!3722 = !DILocation(line: 1823, column: 30, scope: !3719)
!3723 = !DILocation(line: 1823, column: 52, scope: !3719)
!3724 = !DILocation(line: 1823, column: 41, scope: !3719)
!3725 = !DILocation(line: 1823, column: 13, scope: !3719)
!3726 = !DILocation(line: 1824, column: 13, scope: !3719)
!3727 = !DILocation(line: 1820, column: 35, scope: !3709)
!3728 = distinct !{!3728, !3712, !3729}
!3729 = !DILocation(line: 1826, column: 5, scope: !3710)
!3730 = !DILocation(line: 0, scope: !3702)
!3731 = !DILocation(line: 1828, column: 1, scope: !3702)
!3732 = distinct !DISubprogram(name: "ldbReplParseCommand", scope: !3, file: !3, line: 1833, type: !3733, isLocal: false, isDefinition: true, scopeLine: 1833, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3735)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!432, !314}
!3735 = !{!3736, !3737, !3738, !3739, !3740, !3741, !3742}
!3736 = !DILocalVariable(name: "argcp", arg: 1, scope: !3732, file: !3, line: 1833, type: !314)
!3737 = !DILocalVariable(name: "argv", scope: !3732, file: !3, line: 1834, type: !432)
!3738 = !DILocalVariable(name: "argc", scope: !3732, file: !3, line: 1835, type: !15)
!3739 = !DILocalVariable(name: "copy", scope: !3732, file: !3, line: 1840, type: !209)
!3740 = !DILocalVariable(name: "p", scope: !3732, file: !3, line: 1841, type: !11)
!3741 = !DILocalVariable(name: "plen", scope: !3732, file: !3, line: 1849, type: !11)
!3742 = !DILocalVariable(name: "slen", scope: !3743, file: !3, line: 1863, type: !15)
!3743 = distinct !DILexicalBlock(scope: !3732, file: !3, line: 1858, column: 26)
!3744 = !DILocation(line: 1833, column: 31, scope: !3732)
!3745 = !DILocation(line: 1834, column: 10, scope: !3732)
!3746 = !DILocation(line: 1835, column: 9, scope: !3732)
!3747 = !DILocation(line: 1836, column: 20, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3732, file: !3, line: 1836, column: 9)
!3749 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 1836, column: 9, scope: !3748)
!3751 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !3750)
!3752 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !3750)
!3753 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !3750)
!3754 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !3750)
!3755 = !DILocation(line: 1836, column: 9, scope: !3732)
!3756 = !DILocation(line: 91, column: 20, scope: !1457, inlinedAt: !3750)
!3757 = !DILocation(line: 91, column: 13, scope: !1457, inlinedAt: !3750)
!3758 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !3750)
!3759 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !3750)
!3760 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !3750)
!3761 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !3750)
!3762 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !3750)
!3763 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !3750)
!3764 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !3750)
!3765 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !3750)
!3766 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !3750)
!3767 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !3750)
!3768 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !3750)
!3769 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !3750)
!3770 = !DILocation(line: 0, scope: !1457, inlinedAt: !3750)
!3771 = !DILocation(line: 1836, column: 26, scope: !3748)
!3772 = !DILocation(line: 1840, column: 16, scope: !3732)
!3773 = !DILocation(line: 1840, column: 9, scope: !3732)
!3774 = !DILocation(line: 1841, column: 11, scope: !3732)
!3775 = !DILocation(line: 1848, column: 9, scope: !3732)
!3776 = !DILocation(line: 1848, column: 29, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3732, file: !3, line: 1848, column: 28)
!3778 = !DILocation(line: 1848, column: 28, scope: !3732)
!3779 = !DILocation(line: 1850, column: 9, scope: !3732)
!3780 = !DILocation(line: 1850, column: 32, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3732, file: !3, line: 1850, column: 31)
!3782 = !DILocation(line: 1850, column: 31, scope: !3732)
!3783 = !DILocation(line: 1849, column: 19, scope: !3732)
!3784 = !DILocation(line: 1849, column: 11, scope: !3732)
!3785 = !DILocation(line: 1851, column: 8, scope: !3732)
!3786 = !DILocation(line: 1852, column: 14, scope: !3732)
!3787 = !DILocation(line: 1852, column: 12, scope: !3732)
!3788 = !DILocation(line: 1853, column: 21, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3732, file: !3, line: 1853, column: 9)
!3790 = !DILocation(line: 1856, column: 32, scope: !3732)
!3791 = !DILocation(line: 1856, column: 31, scope: !3732)
!3792 = !DILocation(line: 1856, column: 12, scope: !3732)
!3793 = !DILocation(line: 1858, column: 5, scope: !3732)
!3794 = !DILocation(line: 1857, column: 10, scope: !3732)
!3795 = !DILocation(line: 0, scope: !3743)
!3796 = !DILocation(line: 1858, column: 18, scope: !3732)
!3797 = !DILocation(line: 1858, column: 16, scope: !3732)
!3798 = !DILocation(line: 1859, column: 13, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 1859, column: 13)
!3800 = !DILocation(line: 1859, column: 16, scope: !3799)
!3801 = !DILocation(line: 1859, column: 13, scope: !3743)
!3802 = !DILocation(line: 1861, column: 13, scope: !3743)
!3803 = !DILocation(line: 1861, column: 36, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 1861, column: 35)
!3805 = !DILocation(line: 1861, column: 35, scope: !3743)
!3806 = !DILocation(line: 1860, column: 17, scope: !3743)
!3807 = !DILocation(line: 1862, column: 12, scope: !3743)
!3808 = !DILocation(line: 1862, column: 22, scope: !3743)
!3809 = !DILocation(line: 1863, column: 20, scope: !3743)
!3810 = !DILocation(line: 1863, column: 13, scope: !3743)
!3811 = !DILocation(line: 1864, column: 23, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 1864, column: 13)
!3813 = !DILocation(line: 1865, column: 36, scope: !3743)
!3814 = !DILocation(line: 1865, column: 24, scope: !3743)
!3815 = !DILocation(line: 1865, column: 18, scope: !3743)
!3816 = !DILocation(line: 1865, column: 9, scope: !3743)
!3817 = !DILocation(line: 1865, column: 22, scope: !3743)
!3818 = !DILocation(line: 1866, column: 11, scope: !3743)
!3819 = !DILocation(line: 1867, column: 13, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 1867, column: 13)
!3821 = !DILocation(line: 1867, column: 18, scope: !3820)
!3822 = !DILocation(line: 1867, column: 26, scope: !3820)
!3823 = !DILocation(line: 1867, column: 29, scope: !3820)
!3824 = !DILocation(line: 1867, column: 34, scope: !3820)
!3825 = !DILocation(line: 1870, column: 5, scope: !3732)
!3826 = !DILocation(line: 1871, column: 5, scope: !3732)
!3827 = !DILocation(line: 1874, column: 5, scope: !3732)
!3828 = !DILocation(line: 0, scope: !3732)
!3829 = !DILocation(line: 1875, column: 5, scope: !3732)
!3830 = !DILocation(line: 1876, column: 5, scope: !3732)
!3831 = !DILocation(line: 1877, column: 1, scope: !3732)
!3832 = distinct !DISubprogram(name: "ldbLogSourceLine", scope: !3, file: !3, line: 1880, type: !20, isLocal: false, isDefinition: true, scopeLine: 1880, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3833)
!3833 = !{!3834, !3835, !3836, !3837, !3838, !3839}
!3834 = !DILocalVariable(name: "lnum", arg: 1, scope: !3832, file: !3, line: 1880, type: !15)
!3835 = !DILocalVariable(name: "line", scope: !3832, file: !3, line: 1881, type: !11)
!3836 = !DILocalVariable(name: "prefix", scope: !3832, file: !3, line: 1882, type: !11)
!3837 = !DILocalVariable(name: "bp", scope: !3832, file: !3, line: 1883, type: !15)
!3838 = !DILocalVariable(name: "current", scope: !3832, file: !3, line: 1884, type: !15)
!3839 = !DILocalVariable(name: "thisline", scope: !3832, file: !3, line: 1894, type: !209)
!3840 = !DILocation(line: 1880, column: 27, scope: !3832)
!3841 = !DILocation(line: 1788, column: 28, scope: !3643, inlinedAt: !3842)
!3842 = distinct !DILocation(line: 1881, column: 18, scope: !3832)
!3843 = !DILocation(line: 1790, column: 13, scope: !3651, inlinedAt: !3842)
!3844 = !DILocation(line: 1790, column: 31, scope: !3651, inlinedAt: !3842)
!3845 = !DILocation(line: 1790, column: 24, scope: !3651, inlinedAt: !3842)
!3846 = !DILocation(line: 1790, column: 17, scope: !3651, inlinedAt: !3842)
!3847 = !DILocation(line: 1789, column: 19, scope: !3643, inlinedAt: !3842)
!3848 = !DILocation(line: 1789, column: 9, scope: !3643, inlinedAt: !3842)
!3849 = !DILocation(line: 1791, column: 16, scope: !3643, inlinedAt: !3842)
!3850 = !DILocation(line: 1791, column: 12, scope: !3643, inlinedAt: !3842)
!3851 = !DILocation(line: 1791, column: 5, scope: !3643, inlinedAt: !3842)
!3852 = !DILocation(line: 0, scope: !3643, inlinedAt: !3842)
!3853 = !DILocation(line: 1792, column: 1, scope: !3643, inlinedAt: !3842)
!3854 = !DILocation(line: 1881, column: 11, scope: !3832)
!3855 = !DILocation(line: 1795, column: 25, scope: !2819, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 1883, column: 14, scope: !3832)
!3857 = !DILocation(line: 1796, column: 9, scope: !2819, inlinedAt: !3856)
!3858 = !DILocation(line: 1798, column: 25, scope: !2828, inlinedAt: !3856)
!3859 = !DILocation(line: 1798, column: 19, scope: !2828, inlinedAt: !3856)
!3860 = !DILocation(line: 1798, column: 5, scope: !2829, inlinedAt: !3856)
!3861 = !DILocation(line: 1799, column: 13, scope: !2837, inlinedAt: !3856)
!3862 = !DILocation(line: 1799, column: 23, scope: !2837, inlinedAt: !3856)
!3863 = !DILocation(line: 1798, column: 35, scope: !2828, inlinedAt: !3856)
!3864 = !DILocation(line: 1799, column: 13, scope: !2828, inlinedAt: !3856)
!3865 = !DILocation(line: 1801, column: 1, scope: !2819, inlinedAt: !3856)
!3866 = !DILocation(line: 1884, column: 23, scope: !3832)
!3867 = !DILocation(line: 1884, column: 35, scope: !3832)
!3868 = !DILocation(line: 1891, column: 9, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !3, line: 1890, column: 14)
!3870 = distinct !DILexicalBlock(scope: !3871, file: !3, line: 1888, column: 14)
!3871 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 1886, column: 9)
!3872 = !DILocation(line: 1886, column: 17, scope: !3871)
!3873 = !DILocation(line: 1882, column: 11, scope: !3832)
!3874 = !DILocation(line: 1894, column: 33, scope: !3832)
!3875 = !DILocation(line: 1894, column: 20, scope: !3832)
!3876 = !DILocation(line: 1894, column: 9, scope: !3832)
!3877 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !3878)
!3878 = distinct !DILocation(line: 1895, column: 5, scope: !3832)
!3879 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !3878)
!3880 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !3878)
!3881 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !3878)
!3882 = !DILocation(line: 1896, column: 1, scope: !3832)
!3883 = distinct !DISubprogram(name: "ldbList", scope: !3, file: !3, line: 1903, type: !3884, isLocal: false, isDefinition: true, scopeLine: 1903, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3886)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{null, !15, !15}
!3886 = !{!3887, !3888, !3889}
!3887 = !DILocalVariable(name: "around", arg: 1, scope: !3883, file: !3, line: 1903, type: !15)
!3888 = !DILocalVariable(name: "context", arg: 2, scope: !3883, file: !3, line: 1903, type: !15)
!3889 = !DILocalVariable(name: "j", scope: !3883, file: !3, line: 1904, type: !15)
!3890 = !DILocation(line: 1903, column: 18, scope: !3883)
!3891 = !DILocation(line: 1903, column: 30, scope: !3883)
!3892 = !DILocation(line: 1904, column: 9, scope: !3883)
!3893 = !DILocation(line: 1906, column: 26, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 1906, column: 5)
!3895 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 1906, column: 5)
!3896 = !DILocation(line: 1906, column: 19, scope: !3894)
!3897 = !DILocation(line: 1906, column: 5, scope: !3895)
!3898 = !DILocation(line: 1907, column: 25, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 1907, column: 13)
!3900 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 1906, column: 38)
!3901 = !DILocation(line: 1907, column: 38, scope: !3899)
!3902 = !DILocation(line: 1907, column: 28, scope: !3899)
!3903 = !DILocation(line: 1907, column: 42, scope: !3899)
!3904 = !DILocation(line: 1907, column: 13, scope: !3900)
!3905 = !DILocation(line: 1908, column: 9, scope: !3900)
!3906 = !DILocation(line: 1909, column: 5, scope: !3900)
!3907 = !DILocation(line: 1906, column: 34, scope: !3894)
!3908 = distinct !{!3908, !3897, !3909}
!3909 = !DILocation(line: 1909, column: 5, scope: !3895)
!3910 = !DILocation(line: 1910, column: 1, scope: !3883)
!3911 = distinct !DISubprogram(name: "ldbCatStackValueRec", scope: !3, file: !3, line: 1920, type: !3912, isLocal: false, isDefinition: true, scopeLine: 1920, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3914)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!209, !209, !74, !15, !15}
!3914 = !{!3915, !3916, !3917, !3918, !3919, !3920, !3923, !3924, !3926, !3927, !3928, !3929, !3931}
!3915 = !DILocalVariable(name: "s", arg: 1, scope: !3911, file: !3, line: 1920, type: !209)
!3916 = !DILocalVariable(name: "lua", arg: 2, scope: !3911, file: !3, line: 1920, type: !74)
!3917 = !DILocalVariable(name: "idx", arg: 3, scope: !3911, file: !3, line: 1920, type: !15)
!3918 = !DILocalVariable(name: "level", arg: 4, scope: !3911, file: !3, line: 1920, type: !15)
!3919 = !DILocalVariable(name: "t", scope: !3911, file: !3, line: 1921, type: !15)
!3920 = !DILocalVariable(name: "strl", scope: !3921, file: !3, line: 1929, type: !211)
!3921 = distinct !DILexicalBlock(scope: !3922, file: !3, line: 1928, column: 9)
!3922 = distinct !DILexicalBlock(scope: !3911, file: !3, line: 1926, column: 15)
!3923 = !DILocalVariable(name: "strp", scope: !3921, file: !3, line: 1930, type: !11)
!3924 = !DILocalVariable(name: "expected_index", scope: !3925, file: !3, line: 1945, type: !15)
!3925 = distinct !DILexicalBlock(scope: !3922, file: !3, line: 1944, column: 9)
!3926 = !DILocalVariable(name: "is_array", scope: !3925, file: !3, line: 1946, type: !15)
!3927 = !DILocalVariable(name: "repr1", scope: !3925, file: !3, line: 1950, type: !209)
!3928 = !DILocalVariable(name: "repr2", scope: !3925, file: !3, line: 1951, type: !209)
!3929 = !DILocalVariable(name: "p", scope: !3930, file: !3, line: 1987, type: !119)
!3930 = distinct !DILexicalBlock(scope: !3922, file: !3, line: 1986, column: 9)
!3931 = !DILocalVariable(name: "typename", scope: !3930, file: !3, line: 1988, type: !11)
!3932 = !DILocation(line: 1920, column: 29, scope: !3911)
!3933 = !DILocation(line: 1920, column: 43, scope: !3911)
!3934 = !DILocation(line: 1920, column: 52, scope: !3911)
!3935 = !DILocation(line: 1920, column: 61, scope: !3911)
!3936 = !DILocation(line: 1921, column: 13, scope: !3911)
!3937 = !DILocation(line: 1921, column: 9, scope: !3911)
!3938 = !DILocation(line: 1923, column: 14, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3911, file: !3, line: 1923, column: 9)
!3940 = !DILocation(line: 1923, column: 17, scope: !3939)
!3941 = !DILocation(line: 1923, column: 9, scope: !3911)
!3942 = !DILocation(line: 1924, column: 16, scope: !3939)
!3943 = !DILocation(line: 1924, column: 9, scope: !3939)
!3944 = !DILocation(line: 1926, column: 5, scope: !3911)
!3945 = !DILocation(line: 1929, column: 9, scope: !3921)
!3946 = !DILocation(line: 1929, column: 16, scope: !3921)
!3947 = !DILocation(line: 1930, column: 29, scope: !3921)
!3948 = !DILocation(line: 1930, column: 15, scope: !3921)
!3949 = !DILocation(line: 1931, column: 31, scope: !3921)
!3950 = !DILocation(line: 1931, column: 13, scope: !3921)
!3951 = !DILocation(line: 1932, column: 9, scope: !3922)
!3952 = !DILocation(line: 1933, column: 9, scope: !3922)
!3953 = !DILocation(line: 1935, column: 22, scope: !3922)
!3954 = !DILocation(line: 1935, column: 13, scope: !3922)
!3955 = !DILocation(line: 1936, column: 9, scope: !3922)
!3956 = !DILocation(line: 1938, column: 41, scope: !3922)
!3957 = !DILocation(line: 1938, column: 13, scope: !3922)
!3958 = !DILocation(line: 1939, column: 9, scope: !3922)
!3959 = !DILocation(line: 1941, column: 13, scope: !3922)
!3960 = !DILocation(line: 1942, column: 9, scope: !3922)
!3961 = !DILocation(line: 1945, column: 13, scope: !3925)
!3962 = !DILocation(line: 1946, column: 13, scope: !3925)
!3963 = !DILocation(line: 1950, column: 21, scope: !3925)
!3964 = !DILocation(line: 1950, column: 13, scope: !3925)
!3965 = !DILocation(line: 1951, column: 21, scope: !3925)
!3966 = !DILocation(line: 1951, column: 13, scope: !3925)
!3967 = !DILocation(line: 1952, column: 9, scope: !3925)
!3968 = !DILocation(line: 1953, column: 32, scope: !3925)
!3969 = !DILocation(line: 1953, column: 16, scope: !3925)
!3970 = !DILocation(line: 1953, column: 9, scope: !3925)
!3971 = !DILocation(line: 1955, column: 17, scope: !3972)
!3972 = distinct !DILexicalBlock(scope: !3973, file: !3, line: 1955, column: 17)
!3973 = distinct !DILexicalBlock(scope: !3925, file: !3, line: 1953, column: 37)
!3974 = !DILocation(line: 1955, column: 26, scope: !3972)
!3975 = !DILocation(line: 1956, column: 18, scope: !3972)
!3976 = !DILocation(line: 1956, column: 35, scope: !3972)
!3977 = !DILocation(line: 1956, column: 50, scope: !3972)
!3978 = !DILocation(line: 1957, column: 18, scope: !3972)
!3979 = !DILocation(line: 1957, column: 42, scope: !3972)
!3980 = !DILocation(line: 1957, column: 39, scope: !3972)
!3981 = !DILocation(line: 1955, column: 17, scope: !3973)
!3982 = !DILocation(line: 1957, column: 59, scope: !3972)
!3983 = !DILocation(line: 0, scope: !3925)
!3984 = !DILocation(line: 1960, column: 21, scope: !3973)
!3985 = !DILocation(line: 1961, column: 21, scope: !3973)
!3986 = !DILocation(line: 1963, column: 21, scope: !3973)
!3987 = !DILocation(line: 1964, column: 21, scope: !3973)
!3988 = !DILocation(line: 1965, column: 21, scope: !3973)
!3989 = !DILocation(line: 1966, column: 21, scope: !3973)
!3990 = !DILocation(line: 1967, column: 21, scope: !3973)
!3991 = !DILocation(line: 1968, column: 13, scope: !3973)
!3992 = !DILocation(line: 1969, column: 27, scope: !3973)
!3993 = distinct !{!3993, !3970, !3994}
!3994 = !DILocation(line: 1970, column: 9, scope: !3925)
!3995 = !DILocation(line: 0, scope: !3972)
!3996 = !DILocation(line: 0, scope: !3973)
!3997 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 1972, column: 13, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3925, file: !3, line: 1972, column: 13)
!4000 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !3998)
!4001 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !3998)
!4002 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !3998)
!4003 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !3998)
!4004 = !DILocation(line: 1972, column: 13, scope: !3925)
!4005 = !DILocation(line: 91, column: 20, scope: !1457, inlinedAt: !3998)
!4006 = !DILocation(line: 91, column: 13, scope: !1457, inlinedAt: !3998)
!4007 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !3998)
!4008 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !3998)
!4009 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !3998)
!4010 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !3998)
!4011 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !3998)
!4012 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !3998)
!4013 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !3998)
!4014 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !3998)
!4015 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !3998)
!4016 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !3998)
!4017 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !3998)
!4018 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !3998)
!4019 = !DILocation(line: 0, scope: !1457, inlinedAt: !3998)
!4020 = !DILocation(line: 1972, column: 13, scope: !3999)
!4021 = !DILocation(line: 1972, column: 28, scope: !3999)
!4022 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 1973, column: 13, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !3925, file: !3, line: 1973, column: 13)
!4025 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !4023)
!4026 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !4023)
!4027 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !4023)
!4028 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !4023)
!4029 = !DILocation(line: 1973, column: 13, scope: !3925)
!4030 = !DILocation(line: 91, column: 20, scope: !1457, inlinedAt: !4023)
!4031 = !DILocation(line: 91, column: 13, scope: !1457, inlinedAt: !4023)
!4032 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !4023)
!4033 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !4023)
!4034 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !4023)
!4035 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !4023)
!4036 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !4023)
!4037 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !4023)
!4038 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !4023)
!4039 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !4023)
!4040 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !4023)
!4041 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !4023)
!4042 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !4023)
!4043 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !4023)
!4044 = !DILocation(line: 0, scope: !1457, inlinedAt: !4023)
!4045 = !DILocation(line: 1973, column: 13, scope: !4024)
!4046 = !DILocation(line: 1973, column: 28, scope: !4024)
!4047 = !DILocation(line: 1975, column: 13, scope: !3925)
!4048 = !DILocation(line: 1976, column: 25, scope: !3925)
!4049 = !DILocation(line: 1976, column: 13, scope: !3925)
!4050 = !DILocation(line: 1977, column: 13, scope: !3925)
!4051 = !DILocation(line: 1978, column: 9, scope: !3925)
!4052 = !DILocation(line: 1979, column: 9, scope: !3925)
!4053 = !DILocation(line: 1981, column: 9, scope: !3922)
!4054 = !DILocation(line: 1987, column: 25, scope: !3930)
!4055 = !DILocation(line: 1987, column: 21, scope: !3930)
!4056 = !DILocation(line: 1989, column: 13, scope: !3930)
!4057 = !DILocation(line: 0, scope: !3930)
!4058 = !DILocation(line: 1988, column: 15, scope: !3930)
!4059 = !DILocation(line: 1993, column: 13, scope: !3930)
!4060 = !DILocation(line: 1995, column: 9, scope: !3922)
!4061 = !DILocation(line: 1997, column: 13, scope: !3922)
!4062 = !DILocation(line: 1998, column: 9, scope: !3922)
!4063 = !DILocation(line: 0, scope: !3911)
!4064 = !DILocation(line: 2001, column: 1, scope: !3911)
!4065 = distinct !DISubprogram(name: "ldbLogStackValue", scope: !3, file: !3, line: 2012, type: !728, isLocal: false, isDefinition: true, scopeLine: 2012, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4066)
!4066 = !{!4067, !4068, !4069}
!4067 = !DILocalVariable(name: "lua", arg: 1, scope: !4065, file: !3, line: 2012, type: !74)
!4068 = !DILocalVariable(name: "prefix", arg: 2, scope: !4065, file: !3, line: 2012, type: !11)
!4069 = !DILocalVariable(name: "s", scope: !4065, file: !3, line: 2013, type: !209)
!4070 = !DILocation(line: 2012, column: 34, scope: !4065)
!4071 = !DILocation(line: 2012, column: 45, scope: !4065)
!4072 = !DILocation(line: 2013, column: 13, scope: !4065)
!4073 = !DILocation(line: 2013, column: 9, scope: !4065)
!4074 = !DILocation(line: 2005, column: 26, scope: !1706, inlinedAt: !4075)
!4075 = distinct !DILocation(line: 2014, column: 9, scope: !4065)
!4076 = !DILocation(line: 2005, column: 40, scope: !1706, inlinedAt: !4075)
!4077 = !DILocation(line: 2005, column: 49, scope: !1706, inlinedAt: !4075)
!4078 = !DILocation(line: 2006, column: 12, scope: !1706, inlinedAt: !4075)
!4079 = !DILocation(line: 2006, column: 5, scope: !1706, inlinedAt: !4075)
!4080 = !DILocation(line: 2015, column: 5, scope: !4065)
!4081 = !DILocation(line: 2016, column: 1, scope: !4065)
!4082 = distinct !DISubprogram(name: "ldbRedisProtocolToHuman", scope: !3, file: !3, line: 2028, type: !4083, isLocal: false, isDefinition: true, scopeLine: 2028, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4085)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!11, !432, !11}
!4085 = !{!4086, !4087, !4088}
!4086 = !DILocalVariable(name: "o", arg: 1, scope: !4082, file: !3, line: 2028, type: !432)
!4087 = !DILocalVariable(name: "reply", arg: 2, scope: !4082, file: !3, line: 2028, type: !11)
!4088 = !DILocalVariable(name: "p", scope: !4082, file: !3, line: 2029, type: !11)
!4089 = !DILocation(line: 2028, column: 36, scope: !4082)
!4090 = !DILocation(line: 2028, column: 45, scope: !4082)
!4091 = !DILocation(line: 2029, column: 11, scope: !4082)
!4092 = !DILocation(line: 2030, column: 12, scope: !4082)
!4093 = !DILocation(line: 2030, column: 5, scope: !4082)
!4094 = !DILocalVariable(name: "o", arg: 1, scope: !4095, file: !3, line: 2043, type: !432)
!4095 = distinct !DISubprogram(name: "ldbRedisProtocolToHuman_Int", scope: !3, file: !3, line: 2043, type: !4083, isLocal: false, isDefinition: true, scopeLine: 2043, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4096)
!4096 = !{!4094, !4097, !4098}
!4097 = !DILocalVariable(name: "reply", arg: 2, scope: !4095, file: !3, line: 2043, type: !11)
!4098 = !DILocalVariable(name: "p", scope: !4095, file: !3, line: 2044, type: !11)
!4099 = !DILocation(line: 2043, column: 40, scope: !4095, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 2031, column: 19, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4082, file: !3, line: 2030, column: 16)
!4102 = !DILocation(line: 2043, column: 49, scope: !4095, inlinedAt: !4100)
!4103 = !DILocation(line: 2044, column: 27, scope: !4095, inlinedAt: !4100)
!4104 = !DILocation(line: 2044, column: 15, scope: !4095, inlinedAt: !4100)
!4105 = !DILocation(line: 2044, column: 11, scope: !4095, inlinedAt: !4100)
!4106 = !DILocation(line: 2045, column: 20, scope: !4095, inlinedAt: !4100)
!4107 = !DILocation(line: 2045, column: 32, scope: !4095, inlinedAt: !4100)
!4108 = !DILocation(line: 2045, column: 38, scope: !4095, inlinedAt: !4100)
!4109 = !DILocation(line: 2045, column: 10, scope: !4095, inlinedAt: !4100)
!4110 = !DILocation(line: 2045, column: 8, scope: !4095, inlinedAt: !4100)
!4111 = !DILocation(line: 2046, column: 13, scope: !4095, inlinedAt: !4100)
!4112 = !DILocation(line: 2046, column: 5, scope: !4095, inlinedAt: !4100)
!4113 = !DILocation(line: 2031, column: 57, scope: !4101)
!4114 = !DILocalVariable(name: "o", arg: 1, scope: !4115, file: !3, line: 2049, type: !432)
!4115 = distinct !DISubprogram(name: "ldbRedisProtocolToHuman_Bulk", scope: !3, file: !3, line: 2049, type: !4083, isLocal: false, isDefinition: true, scopeLine: 2049, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4116)
!4116 = !{!4114, !4117, !4118, !4119}
!4117 = !DILocalVariable(name: "reply", arg: 2, scope: !4115, file: !3, line: 2049, type: !11)
!4118 = !DILocalVariable(name: "p", scope: !4115, file: !3, line: 2050, type: !11)
!4119 = !DILocalVariable(name: "bulklen", scope: !4115, file: !3, line: 2051, type: !13)
!4120 = !DILocation(line: 2049, column: 41, scope: !4115, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 2032, column: 19, scope: !4101)
!4122 = !DILocation(line: 2049, column: 50, scope: !4115, inlinedAt: !4121)
!4123 = !DILocation(line: 2050, column: 27, scope: !4115, inlinedAt: !4121)
!4124 = !DILocation(line: 2050, column: 15, scope: !4115, inlinedAt: !4121)
!4125 = !DILocation(line: 2050, column: 11, scope: !4115, inlinedAt: !4121)
!4126 = !DILocation(line: 2051, column: 5, scope: !4115, inlinedAt: !4121)
!4127 = !DILocation(line: 2053, column: 24, scope: !4115, inlinedAt: !4121)
!4128 = !DILocation(line: 2053, column: 30, scope: !4115, inlinedAt: !4121)
!4129 = !DILocation(line: 2051, column: 15, scope: !4115, inlinedAt: !4121)
!4130 = !DILocation(line: 2053, column: 5, scope: !4115, inlinedAt: !4121)
!4131 = !DILocation(line: 2054, column: 9, scope: !4132, inlinedAt: !4121)
!4132 = distinct !DILexicalBlock(scope: !4115, file: !3, line: 2054, column: 9)
!4133 = !DILocation(line: 2054, column: 17, scope: !4132, inlinedAt: !4121)
!4134 = !DILocation(line: 0, scope: !4135, inlinedAt: !4121)
!4135 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 2057, column: 12)
!4136 = !DILocation(line: 2054, column: 9, scope: !4115, inlinedAt: !4121)
!4137 = !DILocation(line: 2055, column: 14, scope: !4138, inlinedAt: !4121)
!4138 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 2054, column: 24)
!4139 = !DILocation(line: 2055, column: 12, scope: !4138, inlinedAt: !4121)
!4140 = !DILocation(line: 2056, column: 9, scope: !4138, inlinedAt: !4121)
!4141 = !DILocation(line: 2058, column: 29, scope: !4135, inlinedAt: !4121)
!4142 = !DILocation(line: 2058, column: 14, scope: !4135, inlinedAt: !4121)
!4143 = !DILocation(line: 2058, column: 12, scope: !4135, inlinedAt: !4121)
!4144 = !DILocation(line: 2059, column: 20, scope: !4135, inlinedAt: !4121)
!4145 = !DILocation(line: 2059, column: 19, scope: !4135, inlinedAt: !4121)
!4146 = !DILocation(line: 2059, column: 9, scope: !4135, inlinedAt: !4121)
!4147 = !DILocation(line: 2061, column: 1, scope: !4115, inlinedAt: !4121)
!4148 = !DILocation(line: 2032, column: 58, scope: !4101)
!4149 = !DILocalVariable(name: "o", arg: 1, scope: !4150, file: !3, line: 2063, type: !432)
!4150 = distinct !DISubprogram(name: "ldbRedisProtocolToHuman_Status", scope: !3, file: !3, line: 2063, type: !4083, isLocal: false, isDefinition: true, scopeLine: 2063, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4151)
!4151 = !{!4149, !4152, !4153}
!4152 = !DILocalVariable(name: "reply", arg: 2, scope: !4150, file: !3, line: 2063, type: !11)
!4153 = !DILocalVariable(name: "p", scope: !4150, file: !3, line: 2064, type: !11)
!4154 = !DILocation(line: 2063, column: 43, scope: !4150, inlinedAt: !4155)
!4155 = distinct !DILocation(line: 2033, column: 19, scope: !4101)
!4156 = !DILocation(line: 2063, column: 52, scope: !4150, inlinedAt: !4155)
!4157 = !DILocation(line: 2064, column: 27, scope: !4150, inlinedAt: !4155)
!4158 = !DILocation(line: 2064, column: 15, scope: !4150, inlinedAt: !4155)
!4159 = !DILocation(line: 2064, column: 11, scope: !4150, inlinedAt: !4155)
!4160 = !DILocation(line: 2066, column: 21, scope: !4150, inlinedAt: !4155)
!4161 = !DILocation(line: 2066, column: 31, scope: !4150, inlinedAt: !4155)
!4162 = !DILocation(line: 2066, column: 10, scope: !4150, inlinedAt: !4155)
!4163 = !DILocation(line: 2066, column: 8, scope: !4150, inlinedAt: !4155)
!4164 = !DILocation(line: 2067, column: 13, scope: !4150, inlinedAt: !4155)
!4165 = !DILocation(line: 2067, column: 5, scope: !4150, inlinedAt: !4155)
!4166 = !DILocation(line: 2033, column: 60, scope: !4101)
!4167 = !DILocation(line: 2063, column: 43, scope: !4150, inlinedAt: !4168)
!4168 = distinct !DILocation(line: 2034, column: 19, scope: !4101)
!4169 = !DILocation(line: 2063, column: 52, scope: !4150, inlinedAt: !4168)
!4170 = !DILocation(line: 2064, column: 27, scope: !4150, inlinedAt: !4168)
!4171 = !DILocation(line: 2064, column: 15, scope: !4150, inlinedAt: !4168)
!4172 = !DILocation(line: 2064, column: 11, scope: !4150, inlinedAt: !4168)
!4173 = !DILocation(line: 2066, column: 21, scope: !4150, inlinedAt: !4168)
!4174 = !DILocation(line: 2066, column: 31, scope: !4150, inlinedAt: !4168)
!4175 = !DILocation(line: 2066, column: 10, scope: !4150, inlinedAt: !4168)
!4176 = !DILocation(line: 2066, column: 8, scope: !4150, inlinedAt: !4168)
!4177 = !DILocation(line: 2067, column: 13, scope: !4150, inlinedAt: !4168)
!4178 = !DILocation(line: 2067, column: 5, scope: !4150, inlinedAt: !4168)
!4179 = !DILocation(line: 2034, column: 60, scope: !4101)
!4180 = !DILocation(line: 2035, column: 19, scope: !4101)
!4181 = !DILocation(line: 2035, column: 63, scope: !4101)
!4182 = !DILocation(line: 0, scope: !4101)
!4183 = !DILocation(line: 2037, column: 5, scope: !4082)
!4184 = !DILocation(line: 2043, column: 40, scope: !4095)
!4185 = !DILocation(line: 2043, column: 49, scope: !4095)
!4186 = !DILocation(line: 2044, column: 27, scope: !4095)
!4187 = !DILocation(line: 2044, column: 15, scope: !4095)
!4188 = !DILocation(line: 2044, column: 11, scope: !4095)
!4189 = !DILocation(line: 2045, column: 20, scope: !4095)
!4190 = !DILocation(line: 2045, column: 32, scope: !4095)
!4191 = !DILocation(line: 2045, column: 38, scope: !4095)
!4192 = !DILocation(line: 2045, column: 10, scope: !4095)
!4193 = !DILocation(line: 2045, column: 8, scope: !4095)
!4194 = !DILocation(line: 2046, column: 13, scope: !4095)
!4195 = !DILocation(line: 2046, column: 5, scope: !4095)
!4196 = !DILocation(line: 2049, column: 41, scope: !4115)
!4197 = !DILocation(line: 2049, column: 50, scope: !4115)
!4198 = !DILocation(line: 2050, column: 27, scope: !4115)
!4199 = !DILocation(line: 2050, column: 15, scope: !4115)
!4200 = !DILocation(line: 2050, column: 11, scope: !4115)
!4201 = !DILocation(line: 2051, column: 5, scope: !4115)
!4202 = !DILocation(line: 2053, column: 24, scope: !4115)
!4203 = !DILocation(line: 2053, column: 30, scope: !4115)
!4204 = !DILocation(line: 2051, column: 15, scope: !4115)
!4205 = !DILocation(line: 2053, column: 5, scope: !4115)
!4206 = !DILocation(line: 2054, column: 9, scope: !4132)
!4207 = !DILocation(line: 2054, column: 17, scope: !4132)
!4208 = !DILocation(line: 0, scope: !4135)
!4209 = !DILocation(line: 2054, column: 9, scope: !4115)
!4210 = !DILocation(line: 2055, column: 14, scope: !4138)
!4211 = !DILocation(line: 2055, column: 12, scope: !4138)
!4212 = !DILocation(line: 2056, column: 9, scope: !4138)
!4213 = !DILocation(line: 2058, column: 29, scope: !4135)
!4214 = !DILocation(line: 2058, column: 14, scope: !4135)
!4215 = !DILocation(line: 2058, column: 12, scope: !4135)
!4216 = !DILocation(line: 2059, column: 20, scope: !4135)
!4217 = !DILocation(line: 2059, column: 19, scope: !4135)
!4218 = !DILocation(line: 2059, column: 9, scope: !4135)
!4219 = !DILocation(line: 2061, column: 1, scope: !4115)
!4220 = !DILocation(line: 2063, column: 43, scope: !4150)
!4221 = !DILocation(line: 2063, column: 52, scope: !4150)
!4222 = !DILocation(line: 2064, column: 27, scope: !4150)
!4223 = !DILocation(line: 2064, column: 15, scope: !4150)
!4224 = !DILocation(line: 2064, column: 11, scope: !4150)
!4225 = !DILocation(line: 2066, column: 21, scope: !4150)
!4226 = !DILocation(line: 2066, column: 31, scope: !4150)
!4227 = !DILocation(line: 2066, column: 10, scope: !4150)
!4228 = !DILocation(line: 2066, column: 8, scope: !4150)
!4229 = !DILocation(line: 2067, column: 13, scope: !4150)
!4230 = !DILocation(line: 2067, column: 5, scope: !4150)
!4231 = distinct !DISubprogram(name: "ldbRedisProtocolToHuman_MultiBulk", scope: !3, file: !3, line: 2070, type: !4083, isLocal: false, isDefinition: true, scopeLine: 2070, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4232)
!4232 = !{!4233, !4234, !4235, !4236, !4237}
!4233 = !DILocalVariable(name: "o", arg: 1, scope: !4231, file: !3, line: 2070, type: !432)
!4234 = !DILocalVariable(name: "reply", arg: 2, scope: !4231, file: !3, line: 2070, type: !11)
!4235 = !DILocalVariable(name: "p", scope: !4231, file: !3, line: 2071, type: !11)
!4236 = !DILocalVariable(name: "mbulklen", scope: !4231, file: !3, line: 2072, type: !13)
!4237 = !DILocalVariable(name: "j", scope: !4231, file: !3, line: 2073, type: !15)
!4238 = !DILocation(line: 2070, column: 46, scope: !4231)
!4239 = !DILocation(line: 2070, column: 55, scope: !4231)
!4240 = !DILocation(line: 2071, column: 27, scope: !4231)
!4241 = !DILocation(line: 2071, column: 15, scope: !4231)
!4242 = !DILocation(line: 2071, column: 11, scope: !4231)
!4243 = !DILocation(line: 2072, column: 5, scope: !4231)
!4244 = !DILocation(line: 2073, column: 9, scope: !4231)
!4245 = !DILocation(line: 2075, column: 24, scope: !4231)
!4246 = !DILocation(line: 2075, column: 30, scope: !4231)
!4247 = !DILocation(line: 2072, column: 15, scope: !4231)
!4248 = !DILocation(line: 2075, column: 5, scope: !4231)
!4249 = !DILocation(line: 2076, column: 7, scope: !4231)
!4250 = !DILocation(line: 2077, column: 9, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4231, file: !3, line: 2077, column: 9)
!4252 = !DILocation(line: 2077, column: 18, scope: !4251)
!4253 = !DILocation(line: 0, scope: !4231)
!4254 = !DILocation(line: 2077, column: 9, scope: !4231)
!4255 = !DILocation(line: 2078, column: 14, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 2077, column: 25)
!4257 = !DILocation(line: 2079, column: 9, scope: !4256)
!4258 = !DILocation(line: 2081, column: 10, scope: !4231)
!4259 = !DILocation(line: 2081, column: 8, scope: !4231)
!4260 = !DILocation(line: 2082, column: 21, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 2082, column: 5)
!4262 = distinct !DILexicalBlock(scope: !4231, file: !3, line: 2082, column: 5)
!4263 = !DILocation(line: 2082, column: 19, scope: !4261)
!4264 = !DILocation(line: 2082, column: 5, scope: !4262)
!4265 = !DILocation(line: 2083, column: 13, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4261, file: !3, line: 2082, column: 36)
!4267 = !DILocation(line: 2084, column: 18, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4266, file: !3, line: 2084, column: 13)
!4269 = !DILocation(line: 2084, column: 26, scope: !4268)
!4270 = !DILocation(line: 2084, column: 15, scope: !4268)
!4271 = !DILocation(line: 2084, column: 13, scope: !4266)
!4272 = !DILocation(line: 2084, column: 45, scope: !4268)
!4273 = !DILocation(line: 2084, column: 35, scope: !4268)
!4274 = !DILocation(line: 2084, column: 33, scope: !4268)
!4275 = !DILocation(line: 2084, column: 30, scope: !4268)
!4276 = !DILocation(line: 2082, column: 32, scope: !4261)
!4277 = distinct !{!4277, !4264, !4278}
!4278 = !DILocation(line: 2085, column: 5, scope: !4262)
!4279 = !DILocation(line: 2086, column: 20, scope: !4231)
!4280 = !DILocation(line: 0, scope: !4266)
!4281 = !DILocation(line: 2086, column: 10, scope: !4231)
!4282 = !DILocation(line: 2087, column: 5, scope: !4231)
!4283 = !DILocation(line: 0, scope: !4256)
!4284 = !DILocation(line: 2088, column: 1, scope: !4231)
!4285 = distinct !DISubprogram(name: "ldbPrint", scope: !3, file: !3, line: 2102, type: !728, isLocal: false, isDefinition: true, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4286)
!4286 = !{!4287, !4288, !4289, !4290, !4291, !4293}
!4287 = !DILocalVariable(name: "lua", arg: 1, scope: !4285, file: !3, line: 2102, type: !74)
!4288 = !DILocalVariable(name: "varname", arg: 2, scope: !4285, file: !3, line: 2102, type: !11)
!4289 = !DILocalVariable(name: "ar", scope: !4285, file: !3, line: 2103, type: !734)
!4290 = !DILocalVariable(name: "l", scope: !4285, file: !3, line: 2105, type: !15)
!4291 = !DILocalVariable(name: "name", scope: !4292, file: !3, line: 2108, type: !739)
!4292 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 2106, column: 42)
!4293 = !DILocalVariable(name: "i", scope: !4292, file: !3, line: 2109, type: !15)
!4294 = !DILocation(line: 2102, column: 26, scope: !4285)
!4295 = !DILocation(line: 2102, column: 37, scope: !4285)
!4296 = !DILocation(line: 2103, column: 5, scope: !4285)
!4297 = !DILocation(line: 2105, column: 9, scope: !4285)
!4298 = !DILocation(line: 2103, column: 15, scope: !4285)
!4299 = !DILocation(line: 2106, column: 12, scope: !4285)
!4300 = !DILocation(line: 2106, column: 36, scope: !4285)
!4301 = !DILocation(line: 2106, column: 5, scope: !4285)
!4302 = !DILocation(line: 2107, column: 10, scope: !4292)
!4303 = !DILocation(line: 2109, column: 13, scope: !4292)
!4304 = !DILocation(line: 2110, column: 23, scope: !4292)
!4305 = !DILocation(line: 2108, column: 21, scope: !4292)
!4306 = !DILocation(line: 2110, column: 48, scope: !4292)
!4307 = !DILocation(line: 2110, column: 9, scope: !4292)
!4308 = !DILocation(line: 2112, column: 17, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 2112, column: 17)
!4310 = distinct !DILexicalBlock(scope: !4292, file: !3, line: 2110, column: 57)
!4311 = !DILocation(line: 2112, column: 38, scope: !4309)
!4312 = !DILocation(line: 2112, column: 17, scope: !4310)
!4313 = !DILocation(line: 2012, column: 34, scope: !4065, inlinedAt: !4314)
!4314 = distinct !DILocation(line: 2113, column: 17, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 2112, column: 44)
!4316 = !DILocation(line: 2012, column: 45, scope: !4065, inlinedAt: !4314)
!4317 = !DILocation(line: 2013, column: 13, scope: !4065, inlinedAt: !4314)
!4318 = !DILocation(line: 2013, column: 9, scope: !4065, inlinedAt: !4314)
!4319 = !DILocation(line: 2005, column: 26, scope: !1706, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 2014, column: 9, scope: !4065, inlinedAt: !4314)
!4321 = !DILocation(line: 2005, column: 40, scope: !1706, inlinedAt: !4320)
!4322 = !DILocation(line: 2005, column: 49, scope: !1706, inlinedAt: !4320)
!4323 = !DILocation(line: 2006, column: 12, scope: !1706, inlinedAt: !4320)
!4324 = !DILocation(line: 2006, column: 5, scope: !1706, inlinedAt: !4320)
!4325 = !DILocation(line: 2015, column: 5, scope: !4065, inlinedAt: !4314)
!4326 = !DILocation(line: 2016, column: 1, scope: !4065, inlinedAt: !4314)
!4327 = !DILocation(line: 2114, column: 17, scope: !4315)
!4328 = !DILocation(line: 2111, column: 14, scope: !4310)
!4329 = !DILocation(line: 2117, column: 17, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 2116, column: 20)
!4331 = distinct !{!4331, !4307, !4332}
!4332 = !DILocation(line: 2119, column: 9, scope: !4292)
!4333 = !DILocation(line: 2123, column: 10, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 2123, column: 9)
!4335 = !DILocation(line: 2123, column: 33, scope: !4334)
!4336 = !DILocation(line: 2123, column: 37, scope: !4334)
!4337 = !DILocation(line: 2123, column: 9, scope: !4285)
!4338 = !DILocation(line: 2124, column: 9, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 2123, column: 61)
!4340 = !DILocation(line: 2012, column: 34, scope: !4065, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 2125, column: 9, scope: !4339)
!4342 = !DILocation(line: 2012, column: 45, scope: !4065, inlinedAt: !4341)
!4343 = !DILocation(line: 2013, column: 13, scope: !4065, inlinedAt: !4341)
!4344 = !DILocation(line: 2013, column: 9, scope: !4065, inlinedAt: !4341)
!4345 = !DILocation(line: 2005, column: 26, scope: !1706, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 2014, column: 9, scope: !4065, inlinedAt: !4341)
!4347 = !DILocation(line: 2005, column: 40, scope: !1706, inlinedAt: !4346)
!4348 = !DILocation(line: 2005, column: 49, scope: !1706, inlinedAt: !4346)
!4349 = !DILocation(line: 2006, column: 12, scope: !1706, inlinedAt: !4346)
!4350 = !DILocation(line: 2006, column: 5, scope: !1706, inlinedAt: !4346)
!4351 = !DILocation(line: 2015, column: 5, scope: !4065, inlinedAt: !4341)
!4352 = !DILocation(line: 2016, column: 1, scope: !4065, inlinedAt: !4341)
!4353 = !DILocation(line: 2126, column: 9, scope: !4339)
!4354 = !DILocation(line: 2127, column: 5, scope: !4339)
!4355 = !DILocation(line: 2128, column: 16, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4334, file: !3, line: 2127, column: 12)
!4357 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4358)
!4358 = distinct !DILocation(line: 2128, column: 9, scope: !4356)
!4359 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4358)
!4360 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4358)
!4361 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !4358)
!4362 = !DILocation(line: 2130, column: 1, scope: !4285)
!4363 = distinct !DISubprogram(name: "ldbPrintAll", scope: !3, file: !3, line: 2134, type: !822, isLocal: false, isDefinition: true, scopeLine: 2134, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4364)
!4364 = !{!4365, !4366, !4367, !4368, !4371, !4372}
!4365 = !DILocalVariable(name: "lua", arg: 1, scope: !4363, file: !3, line: 2134, type: !74)
!4366 = !DILocalVariable(name: "ar", scope: !4363, file: !3, line: 2135, type: !734)
!4367 = !DILocalVariable(name: "vars", scope: !4363, file: !3, line: 2136, type: !15)
!4368 = !DILocalVariable(name: "name", scope: !4369, file: !3, line: 2139, type: !739)
!4369 = distinct !DILexicalBlock(scope: !4370, file: !3, line: 2138, column: 39)
!4370 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 2138, column: 9)
!4371 = !DILocalVariable(name: "i", scope: !4369, file: !3, line: 2140, type: !15)
!4372 = !DILocalVariable(name: "prefix", scope: !4373, file: !3, line: 2144, type: !209)
!4373 = distinct !DILexicalBlock(scope: !4374, file: !3, line: 2143, column: 47)
!4374 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 2143, column: 17)
!4375 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 2141, column: 57)
!4376 = !DILocation(line: 2134, column: 29, scope: !4363)
!4377 = !DILocation(line: 2135, column: 5, scope: !4363)
!4378 = !DILocation(line: 2136, column: 9, scope: !4363)
!4379 = !DILocation(line: 2135, column: 15, scope: !4363)
!4380 = !DILocation(line: 2138, column: 9, scope: !4370)
!4381 = !DILocation(line: 2138, column: 33, scope: !4370)
!4382 = !DILocation(line: 2138, column: 9, scope: !4363)
!4383 = !DILocation(line: 2140, column: 13, scope: !4369)
!4384 = !DILocation(line: 2141, column: 23, scope: !4369)
!4385 = !DILocation(line: 2139, column: 21, scope: !4369)
!4386 = !DILocation(line: 2141, column: 48, scope: !4369)
!4387 = !DILocation(line: 2141, column: 9, scope: !4369)
!4388 = !DILocation(line: 2142, column: 14, scope: !4375)
!4389 = !DILocation(line: 2143, column: 18, scope: !4374)
!4390 = !DILocation(line: 2143, column: 17, scope: !4375)
!4391 = !DILocation(line: 2144, column: 43, scope: !4373)
!4392 = !DILocation(line: 2144, column: 30, scope: !4373)
!4393 = !DILocation(line: 2144, column: 21, scope: !4373)
!4394 = !DILocation(line: 2012, column: 34, scope: !4065, inlinedAt: !4395)
!4395 = distinct !DILocation(line: 2145, column: 17, scope: !4373)
!4396 = !DILocation(line: 2012, column: 45, scope: !4065, inlinedAt: !4395)
!4397 = !DILocation(line: 2013, column: 13, scope: !4065, inlinedAt: !4395)
!4398 = !DILocation(line: 2013, column: 9, scope: !4065, inlinedAt: !4395)
!4399 = !DILocation(line: 2005, column: 26, scope: !1706, inlinedAt: !4400)
!4400 = distinct !DILocation(line: 2014, column: 9, scope: !4065, inlinedAt: !4395)
!4401 = !DILocation(line: 2005, column: 40, scope: !1706, inlinedAt: !4400)
!4402 = !DILocation(line: 2005, column: 49, scope: !1706, inlinedAt: !4400)
!4403 = !DILocation(line: 2006, column: 12, scope: !1706, inlinedAt: !4400)
!4404 = !DILocation(line: 2006, column: 5, scope: !1706, inlinedAt: !4400)
!4405 = !DILocation(line: 2015, column: 5, scope: !4065, inlinedAt: !4395)
!4406 = !DILocation(line: 2016, column: 1, scope: !4065, inlinedAt: !4395)
!4407 = !DILocation(line: 2146, column: 17, scope: !4373)
!4408 = !DILocation(line: 2147, column: 21, scope: !4373)
!4409 = !DILocation(line: 2148, column: 13, scope: !4373)
!4410 = !DILocation(line: 0, scope: !4373)
!4411 = !DILocation(line: 2149, column: 13, scope: !4375)
!4412 = distinct !{!4412, !4387, !4413}
!4413 = !DILocation(line: 2150, column: 9, scope: !4369)
!4414 = !DILocation(line: 2153, column: 14, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 2153, column: 9)
!4416 = !DILocation(line: 2153, column: 9, scope: !4363)
!4417 = !DILocation(line: 2154, column: 16, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4415, file: !3, line: 2153, column: 20)
!4419 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4420)
!4420 = distinct !DILocation(line: 2154, column: 9, scope: !4418)
!4421 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4420)
!4422 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4420)
!4423 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !4420)
!4424 = !DILocation(line: 2155, column: 5, scope: !4418)
!4425 = !DILocation(line: 2156, column: 1, scope: !4363)
!4426 = distinct !DISubprogram(name: "ldbBreak", scope: !3, file: !3, line: 2159, type: !4427, isLocal: false, isDefinition: true, scopeLine: 2159, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4429)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{null, !432, !15}
!4429 = !{!4430, !4431, !4432, !4437, !4439, !4443}
!4430 = !DILocalVariable(name: "argv", arg: 1, scope: !4426, file: !3, line: 2159, type: !432)
!4431 = !DILocalVariable(name: "argc", arg: 2, scope: !4426, file: !3, line: 2159, type: !15)
!4432 = !DILocalVariable(name: "j", scope: !4433, file: !3, line: 2166, type: !15)
!4433 = distinct !DILexicalBlock(scope: !4434, file: !3, line: 2164, column: 16)
!4434 = distinct !DILexicalBlock(scope: !4435, file: !3, line: 2161, column: 13)
!4435 = distinct !DILexicalBlock(scope: !4436, file: !3, line: 2160, column: 20)
!4436 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 2160, column: 9)
!4437 = !DILocalVariable(name: "j", scope: !4438, file: !3, line: 2171, type: !15)
!4438 = distinct !DILexicalBlock(scope: !4436, file: !3, line: 2170, column: 12)
!4439 = !DILocalVariable(name: "arg", scope: !4440, file: !3, line: 2173, type: !11)
!4440 = distinct !DILexicalBlock(scope: !4441, file: !3, line: 2172, column: 36)
!4441 = distinct !DILexicalBlock(scope: !4442, file: !3, line: 2172, column: 9)
!4442 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 2172, column: 9)
!4443 = !DILocalVariable(name: "line", scope: !4440, file: !3, line: 2174, type: !23)
!4444 = !DILocation(line: 2159, column: 20, scope: !4426)
!4445 = !DILocation(line: 2159, column: 30, scope: !4426)
!4446 = !DILocation(line: 2160, column: 14, scope: !4436)
!4447 = !DILocation(line: 2160, column: 9, scope: !4426)
!4448 = !DILocation(line: 2171, column: 13, scope: !4438)
!4449 = !DILocation(line: 2172, column: 23, scope: !4441)
!4450 = !DILocation(line: 2172, column: 9, scope: !4442)
!4451 = !DILocation(line: 2161, column: 17, scope: !4434)
!4452 = !DILocation(line: 2161, column: 25, scope: !4434)
!4453 = !DILocation(line: 2161, column: 13, scope: !4435)
!4454 = !DILocation(line: 2162, column: 20, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4434, file: !3, line: 2161, column: 31)
!4456 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4457)
!4457 = distinct !DILocation(line: 2162, column: 13, scope: !4455)
!4458 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4457)
!4459 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4457)
!4460 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !4457)
!4461 = !DILocation(line: 2163, column: 13, scope: !4455)
!4462 = !DILocation(line: 2165, column: 30, scope: !4433)
!4463 = !DILocation(line: 2165, column: 67, scope: !4433)
!4464 = !DILocation(line: 2165, column: 20, scope: !4433)
!4465 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 2165, column: 13, scope: !4433)
!4467 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4466)
!4468 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4466)
!4469 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !4466)
!4470 = !DILocation(line: 2166, column: 17, scope: !4433)
!4471 = !DILocation(line: 2167, column: 33, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 2167, column: 13)
!4473 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 2167, column: 13)
!4474 = !DILocation(line: 2167, column: 27, scope: !4472)
!4475 = !DILocation(line: 2167, column: 13, scope: !4473)
!4476 = !DILocation(line: 2168, column: 34, scope: !4472)
!4477 = !DILocation(line: 2168, column: 17, scope: !4472)
!4478 = !DILocation(line: 2167, column: 43, scope: !4472)
!4479 = distinct !{!4479, !4475, !4480}
!4480 = !DILocation(line: 2168, column: 43, scope: !4473)
!4481 = !DILocation(line: 2173, column: 25, scope: !4440)
!4482 = !DILocation(line: 2173, column: 19, scope: !4440)
!4483 = !DILocation(line: 2174, column: 13, scope: !4440)
!4484 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !4485)
!4485 = distinct !DILocation(line: 2175, column: 31, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 2175, column: 17)
!4487 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !4485)
!4488 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !4485)
!4489 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !4485)
!4490 = !DILocation(line: 91, column: 20, scope: !1457, inlinedAt: !4485)
!4491 = !DILocation(line: 91, column: 13, scope: !1457, inlinedAt: !4485)
!4492 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !4485)
!4493 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !4485)
!4494 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !4485)
!4495 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !4485)
!4496 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !4485)
!4497 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !4485)
!4498 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !4485)
!4499 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !4485)
!4500 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !4485)
!4501 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !4485)
!4502 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !4485)
!4503 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !4485)
!4504 = !DILocation(line: 0, scope: !1457, inlinedAt: !4485)
!4505 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !4485)
!4506 = !DILocation(line: 2174, column: 18, scope: !4440)
!4507 = !DILocation(line: 2175, column: 18, scope: !4486)
!4508 = !DILocation(line: 2175, column: 17, scope: !4440)
!4509 = !DILocation(line: 2176, column: 34, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 2175, column: 51)
!4511 = !DILocation(line: 2176, column: 24, scope: !4510)
!4512 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4513)
!4513 = distinct !DILocation(line: 2176, column: 17, scope: !4510)
!4514 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4513)
!4515 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4513)
!4516 = !DILocation(line: 2177, column: 13, scope: !4510)
!4517 = !DILocation(line: 2178, column: 21, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 2178, column: 21)
!4519 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 2177, column: 20)
!4520 = !DILocation(line: 2178, column: 26, scope: !4518)
!4521 = !DILocation(line: 2178, column: 21, scope: !4519)
!4522 = !DILocation(line: 2179, column: 33, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 2178, column: 32)
!4524 = !DILocation(line: 2180, column: 28, scope: !4523)
!4525 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4526)
!4526 = distinct !DILocation(line: 2180, column: 21, scope: !4523)
!4527 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4526)
!4528 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4526)
!4529 = !DILocation(line: 2181, column: 17, scope: !4523)
!4530 = !DILocation(line: 2181, column: 33, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 2181, column: 28)
!4532 = !DILocation(line: 2181, column: 28, scope: !4518)
!4533 = !DILocation(line: 2182, column: 29, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4535, file: !3, line: 2182, column: 25)
!4535 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 2181, column: 38)
!4536 = !DILocation(line: 2182, column: 37, scope: !4534)
!4537 = !DILocation(line: 2182, column: 25, scope: !4535)
!4538 = !DILocation(line: 2183, column: 32, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 2182, column: 61)
!4540 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 2183, column: 25, scope: !4539)
!4542 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4541)
!4543 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4541)
!4544 = !DILocation(line: 2184, column: 21, scope: !4539)
!4545 = !DILocation(line: 2184, column: 49, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 2184, column: 32)
!4547 = !DILocation(line: 1806, column: 26, scope: !3672, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 2184, column: 32, scope: !4546)
!4549 = !DILocation(line: 1807, column: 14, scope: !3677, inlinedAt: !4548)
!4550 = !DILocation(line: 1807, column: 33, scope: !3677, inlinedAt: !4548)
!4551 = !DILocation(line: 1807, column: 27, scope: !3677, inlinedAt: !4548)
!4552 = !DILocation(line: 1807, column: 19, scope: !3677, inlinedAt: !4548)
!4553 = !DILocation(line: 1795, column: 25, scope: !2819, inlinedAt: !4554)
!4554 = distinct !DILocation(line: 1808, column: 10, scope: !3683, inlinedAt: !4548)
!4555 = !DILocation(line: 1796, column: 9, scope: !2819, inlinedAt: !4554)
!4556 = !DILocation(line: 1798, column: 19, scope: !2828, inlinedAt: !4554)
!4557 = !DILocation(line: 1798, column: 5, scope: !2829, inlinedAt: !4554)
!4558 = !DILocation(line: 1801, column: 1, scope: !2819, inlinedAt: !4554)
!4559 = !DILocation(line: 1809, column: 9, scope: !3696, inlinedAt: !4548)
!4560 = !DILocation(line: 1808, column: 32, scope: !3683, inlinedAt: !4548)
!4561 = !DILocation(line: 1799, column: 13, scope: !2837, inlinedAt: !4554)
!4562 = !DILocation(line: 1799, column: 23, scope: !2837, inlinedAt: !4554)
!4563 = !DILocation(line: 1798, column: 35, scope: !2828, inlinedAt: !4554)
!4564 = !DILocation(line: 1799, column: 13, scope: !2828, inlinedAt: !4554)
!4565 = !DILocation(line: 1809, column: 27, scope: !3696, inlinedAt: !4548)
!4566 = !DILocation(line: 1809, column: 31, scope: !3696, inlinedAt: !4548)
!4567 = !DILocation(line: 1813, column: 1, scope: !3672, inlinedAt: !4548)
!4568 = !DILocation(line: 1903, column: 18, scope: !3883, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 2185, column: 25, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 2184, column: 56)
!4571 = !DILocation(line: 1903, column: 30, scope: !3883, inlinedAt: !4569)
!4572 = !DILocation(line: 1904, column: 9, scope: !3883, inlinedAt: !4569)
!4573 = !DILocation(line: 1906, column: 26, scope: !3894, inlinedAt: !4569)
!4574 = !DILocation(line: 1906, column: 19, scope: !3894, inlinedAt: !4569)
!4575 = !DILocation(line: 1906, column: 5, scope: !3895, inlinedAt: !4569)
!4576 = !DILocation(line: 1907, column: 25, scope: !3899, inlinedAt: !4569)
!4577 = !DILocation(line: 1907, column: 38, scope: !3899, inlinedAt: !4569)
!4578 = !DILocation(line: 1907, column: 28, scope: !3899, inlinedAt: !4569)
!4579 = !DILocation(line: 1907, column: 42, scope: !3899, inlinedAt: !4569)
!4580 = !DILocation(line: 1907, column: 13, scope: !3900, inlinedAt: !4569)
!4581 = !DILocation(line: 1908, column: 9, scope: !3900, inlinedAt: !4569)
!4582 = !DILocation(line: 1909, column: 5, scope: !3900, inlinedAt: !4569)
!4583 = !DILocation(line: 1906, column: 34, scope: !3894, inlinedAt: !4569)
!4584 = !DILocation(line: 2187, column: 32, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 2186, column: 28)
!4586 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 2187, column: 25, scope: !4585)
!4588 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4587)
!4589 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4587)
!4590 = !DILocation(line: 2190, column: 42, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 2190, column: 25)
!4592 = distinct !DILexicalBlock(scope: !4593, file: !3, line: 2189, column: 38)
!4593 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 2189, column: 28)
!4594 = !DILocation(line: 1817, column: 26, scope: !3702, inlinedAt: !4595)
!4595 = distinct !DILocation(line: 2190, column: 25, scope: !4591)
!4596 = !DILocation(line: 1818, column: 9, scope: !3702, inlinedAt: !4595)
!4597 = !DILocation(line: 1820, column: 25, scope: !3709, inlinedAt: !4595)
!4598 = !DILocation(line: 1820, column: 19, scope: !3709, inlinedAt: !4595)
!4599 = !DILocation(line: 1820, column: 5, scope: !3710, inlinedAt: !4595)
!4600 = !DILocation(line: 1821, column: 13, scope: !3714, inlinedAt: !4595)
!4601 = !DILocation(line: 1821, column: 23, scope: !3714, inlinedAt: !4595)
!4602 = !DILocation(line: 1821, column: 13, scope: !3715, inlinedAt: !4595)
!4603 = !DILocation(line: 1820, column: 35, scope: !3709, inlinedAt: !4595)
!4604 = !DILocation(line: 1822, column: 24, scope: !3719, inlinedAt: !4595)
!4605 = !DILocation(line: 1823, column: 21, scope: !3719, inlinedAt: !4595)
!4606 = !DILocation(line: 1823, column: 38, scope: !3719, inlinedAt: !4595)
!4607 = !DILocation(line: 1823, column: 30, scope: !3719, inlinedAt: !4595)
!4608 = !DILocation(line: 1823, column: 52, scope: !3719, inlinedAt: !4595)
!4609 = !DILocation(line: 1823, column: 41, scope: !3719, inlinedAt: !4595)
!4610 = !DILocation(line: 1823, column: 13, scope: !3719, inlinedAt: !4595)
!4611 = !DILocation(line: 1828, column: 1, scope: !3702, inlinedAt: !4595)
!4612 = !DILocation(line: 2191, column: 32, scope: !4591)
!4613 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4614)
!4614 = distinct !DILocation(line: 2191, column: 25, scope: !4591)
!4615 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4614)
!4616 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4614)
!4617 = !DILocation(line: 2191, column: 25, scope: !4591)
!4618 = !DILocation(line: 2193, column: 32, scope: !4591)
!4619 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4620)
!4620 = distinct !DILocation(line: 2193, column: 25, scope: !4591)
!4621 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4620)
!4622 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4620)
!4623 = !DILocation(line: 0, scope: !4510)
!4624 = !DILocation(line: 2196, column: 9, scope: !4441)
!4625 = !DILocation(line: 2172, column: 32, scope: !4441)
!4626 = distinct !{!4626, !4450, !4627}
!4627 = !DILocation(line: 2196, column: 9, scope: !4442)
!4628 = !DILocation(line: 2198, column: 1, scope: !4426)
!4629 = distinct !DISubprogram(name: "ldbEval", scope: !3, file: !3, line: 2203, type: !4630, isLocal: false, isDefinition: true, scopeLine: 2203, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4632)
!4630 = !DISubroutineType(types: !4631)
!4631 = !{null, !74, !432, !15}
!4632 = !{!4633, !4634, !4635, !4636, !4637}
!4633 = !DILocalVariable(name: "lua", arg: 1, scope: !4629, file: !3, line: 2203, type: !74)
!4634 = !DILocalVariable(name: "argv", arg: 2, scope: !4629, file: !3, line: 2203, type: !432)
!4635 = !DILocalVariable(name: "argc", arg: 3, scope: !4629, file: !3, line: 2203, type: !15)
!4636 = !DILocalVariable(name: "code", scope: !4629, file: !3, line: 2205, type: !209)
!4637 = !DILocalVariable(name: "expr", scope: !4629, file: !3, line: 2206, type: !209)
!4638 = !DILocation(line: 2203, column: 25, scope: !4629)
!4639 = !DILocation(line: 2203, column: 35, scope: !4629)
!4640 = !DILocation(line: 2203, column: 45, scope: !4629)
!4641 = !DILocation(line: 2205, column: 31, scope: !4629)
!4642 = !DILocation(line: 2205, column: 38, scope: !4629)
!4643 = !DILocation(line: 2205, column: 16, scope: !4629)
!4644 = !DILocation(line: 2205, column: 9, scope: !4629)
!4645 = !DILocation(line: 2206, column: 26, scope: !4629)
!4646 = !DILocation(line: 2206, column: 16, scope: !4629)
!4647 = !DILocation(line: 2206, column: 9, scope: !4629)
!4648 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !4649)
!4649 = distinct !DILocation(line: 2209, column: 34, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 2209, column: 9)
!4651 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !4649)
!4652 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !4649)
!4653 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !4649)
!4654 = !DILocation(line: 91, column: 20, scope: !1457, inlinedAt: !4649)
!4655 = !DILocation(line: 91, column: 13, scope: !1457, inlinedAt: !4649)
!4656 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !4649)
!4657 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !4649)
!4658 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !4649)
!4659 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !4649)
!4660 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !4649)
!4661 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !4649)
!4662 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !4649)
!4663 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !4649)
!4664 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !4649)
!4665 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !4649)
!4666 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !4649)
!4667 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !4649)
!4668 = !DILocation(line: 0, scope: !1457, inlinedAt: !4649)
!4669 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !4649)
!4670 = !DILocation(line: 2209, column: 9, scope: !4650)
!4671 = !DILocation(line: 2209, column: 9, scope: !4629)
!4672 = !DILocation(line: 2210, column: 9, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4650, file: !3, line: 2209, column: 61)
!4674 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 2212, column: 38, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4673, file: !3, line: 2212, column: 13)
!4677 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !4675)
!4678 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !4675)
!4679 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !4675)
!4680 = !DILocation(line: 91, column: 20, scope: !1457, inlinedAt: !4675)
!4681 = !DILocation(line: 91, column: 13, scope: !1457, inlinedAt: !4675)
!4682 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !4675)
!4683 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !4675)
!4684 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !4675)
!4685 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !4675)
!4686 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !4675)
!4687 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !4675)
!4688 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !4675)
!4689 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !4675)
!4690 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !4675)
!4691 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !4675)
!4692 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !4675)
!4693 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !4675)
!4694 = !DILocation(line: 0, scope: !1457, inlinedAt: !4675)
!4695 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !4675)
!4696 = !DILocation(line: 2212, column: 13, scope: !4676)
!4697 = !DILocation(line: 2212, column: 13, scope: !4673)
!4698 = !DILocation(line: 2213, column: 30, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4676, file: !3, line: 2212, column: 65)
!4700 = !DILocation(line: 2213, column: 54, scope: !4699)
!4701 = !DILocation(line: 2213, column: 20, scope: !4699)
!4702 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4703)
!4703 = distinct !DILocation(line: 2213, column: 13, scope: !4699)
!4704 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4703)
!4705 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4703)
!4706 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !4703)
!4707 = !DILocation(line: 2214, column: 13, scope: !4699)
!4708 = !DILocation(line: 2215, column: 13, scope: !4699)
!4709 = !DILocation(line: 2216, column: 13, scope: !4699)
!4710 = !DILocation(line: 2221, column: 5, scope: !4629)
!4711 = !DILocation(line: 2222, column: 5, scope: !4629)
!4712 = !DILocation(line: 2223, column: 9, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 2223, column: 9)
!4714 = !DILocation(line: 2223, column: 9, scope: !4629)
!4715 = !DILocation(line: 2224, column: 26, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4713, file: !3, line: 2223, column: 31)
!4717 = !DILocation(line: 2224, column: 50, scope: !4716)
!4718 = !DILocation(line: 2224, column: 16, scope: !4716)
!4719 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4720)
!4720 = distinct !DILocation(line: 2224, column: 9, scope: !4716)
!4721 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4720)
!4722 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4720)
!4723 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !4720)
!4724 = !DILocation(line: 2225, column: 9, scope: !4716)
!4725 = !DILocation(line: 2226, column: 9, scope: !4716)
!4726 = !DILocation(line: 2012, column: 34, scope: !4065, inlinedAt: !4727)
!4727 = distinct !DILocation(line: 2228, column: 5, scope: !4629)
!4728 = !DILocation(line: 2012, column: 45, scope: !4065, inlinedAt: !4727)
!4729 = !DILocation(line: 2013, column: 13, scope: !4065, inlinedAt: !4727)
!4730 = !DILocation(line: 2013, column: 9, scope: !4065, inlinedAt: !4727)
!4731 = !DILocation(line: 2005, column: 26, scope: !1706, inlinedAt: !4732)
!4732 = distinct !DILocation(line: 2014, column: 9, scope: !4065, inlinedAt: !4727)
!4733 = !DILocation(line: 2005, column: 40, scope: !1706, inlinedAt: !4732)
!4734 = !DILocation(line: 2005, column: 49, scope: !1706, inlinedAt: !4732)
!4735 = !DILocation(line: 2006, column: 12, scope: !1706, inlinedAt: !4732)
!4736 = !DILocation(line: 2006, column: 5, scope: !1706, inlinedAt: !4732)
!4737 = !DILocation(line: 2015, column: 5, scope: !4065, inlinedAt: !4727)
!4738 = !DILocation(line: 2016, column: 1, scope: !4065, inlinedAt: !4727)
!4739 = !DILocation(line: 2229, column: 5, scope: !4629)
!4740 = !DILocation(line: 2230, column: 1, scope: !4629)
!4741 = distinct !DISubprogram(name: "ldbRedis", scope: !3, file: !3, line: 2236, type: !4630, isLocal: false, isDefinition: true, scopeLine: 2236, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4742)
!4742 = !{!4743, !4744, !4745, !4746, !4747}
!4743 = !DILocalVariable(name: "lua", arg: 1, scope: !4741, file: !3, line: 2236, type: !74)
!4744 = !DILocalVariable(name: "argv", arg: 2, scope: !4741, file: !3, line: 2236, type: !432)
!4745 = !DILocalVariable(name: "argc", arg: 3, scope: !4741, file: !3, line: 2236, type: !15)
!4746 = !DILocalVariable(name: "j", scope: !4741, file: !3, line: 2237, type: !15)
!4747 = !DILocalVariable(name: "saved_rc", scope: !4741, file: !3, line: 2237, type: !15)
!4748 = !DILocation(line: 2236, column: 26, scope: !4741)
!4749 = !DILocation(line: 2236, column: 36, scope: !4741)
!4750 = !DILocation(line: 2236, column: 46, scope: !4741)
!4751 = !DILocation(line: 2237, column: 30, scope: !4741)
!4752 = !DILocation(line: 2237, column: 12, scope: !4741)
!4753 = !DILocation(line: 2239, column: 5, scope: !4741)
!4754 = !DILocation(line: 2240, column: 5, scope: !4741)
!4755 = !DILocation(line: 2241, column: 5, scope: !4741)
!4756 = !DILocation(line: 2237, column: 9, scope: !4741)
!4757 = !DILocation(line: 2242, column: 19, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 2242, column: 5)
!4759 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 2242, column: 5)
!4760 = !DILocation(line: 2242, column: 5, scope: !4759)
!4761 = !DILocation(line: 2243, column: 29, scope: !4758)
!4762 = !DILocation(line: 87, column: 39, scope: !1445, inlinedAt: !4763)
!4763 = distinct !DILocation(line: 2243, column: 37, scope: !4758)
!4764 = !DILocation(line: 88, column: 27, scope: !1445, inlinedAt: !4763)
!4765 = !DILocation(line: 88, column: 19, scope: !1445, inlinedAt: !4763)
!4766 = !DILocation(line: 89, column: 5, scope: !1445, inlinedAt: !4763)
!4767 = !DILocation(line: 91, column: 20, scope: !1457, inlinedAt: !4763)
!4768 = !DILocation(line: 91, column: 13, scope: !1457, inlinedAt: !4763)
!4769 = !DILocation(line: 93, column: 20, scope: !1457, inlinedAt: !4763)
!4770 = !DILocation(line: 93, column: 34, scope: !1457, inlinedAt: !4763)
!4771 = !DILocation(line: 93, column: 13, scope: !1457, inlinedAt: !4763)
!4772 = !DILocation(line: 95, column: 20, scope: !1457, inlinedAt: !4763)
!4773 = !DILocation(line: 95, column: 35, scope: !1457, inlinedAt: !4763)
!4774 = !DILocation(line: 95, column: 13, scope: !1457, inlinedAt: !4763)
!4775 = !DILocation(line: 97, column: 20, scope: !1457, inlinedAt: !4763)
!4776 = !DILocation(line: 97, column: 35, scope: !1457, inlinedAt: !4763)
!4777 = !DILocation(line: 97, column: 13, scope: !1457, inlinedAt: !4763)
!4778 = !DILocation(line: 99, column: 20, scope: !1457, inlinedAt: !4763)
!4779 = !DILocation(line: 99, column: 35, scope: !1457, inlinedAt: !4763)
!4780 = !DILocation(line: 99, column: 13, scope: !1457, inlinedAt: !4763)
!4781 = !DILocation(line: 0, scope: !1457, inlinedAt: !4763)
!4782 = !DILocation(line: 102, column: 1, scope: !1445, inlinedAt: !4763)
!4783 = !DILocation(line: 2243, column: 9, scope: !4758)
!4784 = !DILocation(line: 2242, column: 28, scope: !4758)
!4785 = distinct !{!4785, !4760, !4786}
!4786 = !DILocation(line: 2243, column: 52, scope: !4759)
!4787 = !DILocation(line: 2244, column: 14, scope: !4741)
!4788 = !DILocation(line: 2245, column: 35, scope: !4741)
!4789 = !DILocation(line: 2246, column: 23, scope: !4741)
!4790 = !DILocation(line: 2246, column: 5, scope: !4741)
!4791 = !DILocation(line: 2247, column: 14, scope: !4741)
!4792 = !DILocation(line: 2248, column: 35, scope: !4741)
!4793 = !DILocation(line: 2249, column: 5, scope: !4741)
!4794 = !DILocation(line: 2250, column: 1, scope: !4741)
!4795 = distinct !DISubprogram(name: "ldbTrace", scope: !3, file: !3, line: 2254, type: !822, isLocal: false, isDefinition: true, scopeLine: 2254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4796)
!4796 = !{!4797, !4798, !4799}
!4797 = !DILocalVariable(name: "lua", arg: 1, scope: !4795, file: !3, line: 2254, type: !74)
!4798 = !DILocalVariable(name: "ar", scope: !4795, file: !3, line: 2255, type: !734)
!4799 = !DILocalVariable(name: "level", scope: !4795, file: !3, line: 2256, type: !15)
!4800 = !DILocation(line: 2254, column: 26, scope: !4795)
!4801 = !DILocation(line: 2255, column: 5, scope: !4795)
!4802 = !DILocation(line: 2256, column: 9, scope: !4795)
!4803 = !DILocation(line: 2255, column: 15, scope: !4795)
!4804 = !DILocation(line: 2258, column: 11, scope: !4795)
!4805 = !DILocation(line: 2258, column: 5, scope: !4795)
!4806 = !DILocation(line: 2259, column: 9, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 2258, column: 40)
!4808 = !DILocation(line: 2260, column: 12, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4807, file: !3, line: 2260, column: 12)
!4810 = !DILocation(line: 2260, column: 47, scope: !4809)
!4811 = !DILocation(line: 2260, column: 12, scope: !4807)
!4812 = !DILocation(line: 2261, column: 33, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 2260, column: 56)
!4814 = !DILocation(line: 2262, column: 24, scope: !4813)
!4815 = !DILocation(line: 2262, column: 17, scope: !4813)
!4816 = !DILocation(line: 2263, column: 20, scope: !4813)
!4817 = !{!795, !764, i64 8}
!4818 = !DILocation(line: 2263, column: 17, scope: !4813)
!4819 = !DILocation(line: 2261, column: 20, scope: !4813)
!4820 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4821)
!4821 = distinct !DILocation(line: 2261, column: 13, scope: !4813)
!4822 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4821)
!4823 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4821)
!4824 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !4821)
!4825 = !DILocation(line: 2264, column: 33, scope: !4813)
!4826 = !DILocation(line: 2264, column: 13, scope: !4813)
!4827 = !DILocation(line: 2265, column: 9, scope: !4813)
!4828 = !DILocation(line: 2266, column: 14, scope: !4807)
!4829 = distinct !{!4829, !4805, !4830}
!4830 = !DILocation(line: 2267, column: 5, scope: !4795)
!4831 = !DILocation(line: 2269, column: 16, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4833, file: !3, line: 2268, column: 21)
!4833 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 2268, column: 9)
!4834 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4835)
!4835 = distinct !DILocation(line: 2269, column: 9, scope: !4832)
!4836 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4835)
!4837 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4835)
!4838 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !4835)
!4839 = !DILocation(line: 2270, column: 5, scope: !4832)
!4840 = !DILocation(line: 2271, column: 1, scope: !4795)
!4841 = distinct !DISubprogram(name: "ldbMaxlen", scope: !3, file: !3, line: 2275, type: !4427, isLocal: false, isDefinition: true, scopeLine: 2275, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4842)
!4842 = !{!4843, !4844, !4845}
!4843 = !DILocalVariable(name: "argv", arg: 1, scope: !4841, file: !3, line: 2275, type: !432)
!4844 = !DILocalVariable(name: "argc", arg: 2, scope: !4841, file: !3, line: 2275, type: !15)
!4845 = !DILocalVariable(name: "newval", scope: !4846, file: !3, line: 2277, type: !15)
!4846 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 2276, column: 20)
!4847 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 2276, column: 9)
!4848 = !DILocation(line: 2275, column: 21, scope: !4841)
!4849 = !DILocation(line: 2275, column: 31, scope: !4841)
!4850 = !DILocation(line: 2276, column: 14, scope: !4847)
!4851 = !DILocation(line: 2276, column: 9, scope: !4841)
!4852 = !DILocation(line: 2277, column: 27, scope: !4846)
!4853 = !DILocation(line: 2277, column: 22, scope: !4846)
!4854 = !DILocation(line: 2277, column: 13, scope: !4846)
!4855 = !DILocation(line: 2278, column: 30, scope: !4846)
!4856 = !DILocation(line: 2279, column: 20, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4846, file: !3, line: 2279, column: 13)
!4858 = !DILocation(line: 2279, column: 35, scope: !4857)
!4859 = !DILocation(line: 2279, column: 25, scope: !4857)
!4860 = !DILocation(line: 2280, column: 22, scope: !4846)
!4861 = !DILocation(line: 2280, column: 20, scope: !4846)
!4862 = !DILocation(line: 2281, column: 5, scope: !4846)
!4863 = !DILocation(line: 2282, column: 13, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4841, file: !3, line: 2282, column: 9)
!4865 = !DILocation(line: 2282, column: 9, scope: !4864)
!4866 = !DILocation(line: 0, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 2284, column: 12)
!4868 = !DILocation(line: 2282, column: 9, scope: !4841)
!4869 = !DILocation(line: 2283, column: 94, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4864, file: !3, line: 2282, column: 21)
!4871 = !DILocation(line: 2283, column: 85, scope: !4870)
!4872 = !DILocation(line: 2283, column: 16, scope: !4870)
!4873 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4874)
!4874 = distinct !DILocation(line: 2283, column: 9, scope: !4870)
!4875 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4874)
!4876 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4874)
!4877 = !DILocation(line: 2284, column: 5, scope: !4870)
!4878 = !DILocation(line: 2285, column: 16, scope: !4867)
!4879 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4880)
!4880 = distinct !DILocation(line: 2285, column: 9, scope: !4867)
!4881 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4880)
!4882 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4880)
!4883 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !4880)
!4884 = !DILocation(line: 2287, column: 1, scope: !4841)
!4885 = distinct !DISubprogram(name: "ldbRepl", scope: !3, file: !3, line: 2292, type: !812, isLocal: false, isDefinition: true, scopeLine: 2292, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4886)
!4886 = !{!4887, !4888, !4889, !4890, !4896, !4897, !4910, !4911}
!4887 = !DILocalVariable(name: "lua", arg: 1, scope: !4885, file: !3, line: 2292, type: !74)
!4888 = !DILocalVariable(name: "argv", scope: !4885, file: !3, line: 2293, type: !432)
!4889 = !DILocalVariable(name: "argc", scope: !4885, file: !3, line: 2294, type: !15)
!4890 = !DILocalVariable(name: "buf", scope: !4891, file: !3, line: 2300, type: !4893)
!4891 = distinct !DILexicalBlock(scope: !4892, file: !3, line: 2299, column: 60)
!4892 = distinct !DILexicalBlock(scope: !4885, file: !3, line: 2298, column: 14)
!4893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8192, elements: !4894)
!4894 = !{!4895}
!4895 = !DISubrange(count: 1024)
!4896 = !DILocalVariable(name: "nread", scope: !4891, file: !3, line: 2301, type: !15)
!4897 = !DILocalVariable(name: "around", scope: !4898, file: !3, line: 2381, type: !15)
!4898 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 2380, column: 76)
!4899 = distinct !DILexicalBlock(scope: !4900, file: !3, line: 2380, column: 20)
!4900 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 2374, column: 20)
!4901 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 2370, column: 20)
!4902 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 2367, column: 20)
!4903 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 2364, column: 20)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 2361, column: 20)
!4905 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 2358, column: 20)
!4906 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 2355, column: 20)
!4907 = distinct !DILexicalBlock(scope: !4908, file: !3, line: 2353, column: 20)
!4908 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 2349, column: 20)
!4909 = distinct !DILexicalBlock(scope: !4892, file: !3, line: 2317, column: 13)
!4910 = !DILocalVariable(name: "ctx", scope: !4898, file: !3, line: 2381, type: !15)
!4911 = !DILocalVariable(name: "num", scope: !4912, file: !3, line: 2383, type: !15)
!4912 = distinct !DILexicalBlock(scope: !4913, file: !3, line: 2382, column: 27)
!4913 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 2382, column: 17)
!4914 = !DILocation(line: 2292, column: 24, scope: !4885)
!4915 = !DILocation(line: 2294, column: 5, scope: !4885)
!4916 = !DILocation(line: 2298, column: 5, scope: !4885)
!4917 = !DILocation(line: 2294, column: 9, scope: !4885)
!4918 = !DILocation(line: 2299, column: 23, scope: !4892)
!4919 = !DILocation(line: 2293, column: 10, scope: !4885)
!4920 = !DILocation(line: 2299, column: 51, scope: !4892)
!4921 = !DILocation(line: 2299, column: 9, scope: !4892)
!4922 = !DILocation(line: 2300, column: 13, scope: !4891)
!4923 = !DILocation(line: 2300, column: 18, scope: !4891)
!4924 = !DILocation(line: 2301, column: 34, scope: !4891)
!4925 = !DILocation(line: 2301, column: 25, scope: !4891)
!4926 = !DILocation(line: 2301, column: 17, scope: !4891)
!4927 = !DILocation(line: 2302, column: 23, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 2302, column: 17)
!4929 = !DILocation(line: 2302, column: 17, scope: !4891)
!4930 = !DILocation(line: 2305, column: 26, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 2302, column: 29)
!4932 = !DILocation(line: 2306, column: 29, scope: !4931)
!4933 = !DILocation(line: 2310, column: 9, scope: !4892)
!4934 = !DILocation(line: 2309, column: 38, scope: !4891)
!4935 = !DILocation(line: 2309, column: 47, scope: !4891)
!4936 = !DILocation(line: 2309, column: 24, scope: !4891)
!4937 = !DILocation(line: 2309, column: 22, scope: !4891)
!4938 = !DILocation(line: 2313, column: 21, scope: !4892)
!4939 = !DILocation(line: 2313, column: 9, scope: !4892)
!4940 = !DILocation(line: 2314, column: 20, scope: !4892)
!4941 = !DILocation(line: 2314, column: 18, scope: !4892)
!4942 = !DILocation(line: 2317, column: 25, scope: !4909)
!4943 = !DILocation(line: 2317, column: 14, scope: !4909)
!4944 = !DILocation(line: 2317, column: 38, scope: !4909)
!4945 = !DILocation(line: 2317, column: 42, scope: !4909)
!4946 = !DILocation(line: 2317, column: 13, scope: !4892)
!4947 = !DILocation(line: 2318, column: 8, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 2317, column: 70)
!4949 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4950)
!4950 = distinct !DILocation(line: 2318, column: 1, scope: !4948)
!4951 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4950)
!4952 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4950)
!4953 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !4950)
!4954 = !DILocation(line: 2319, column: 8, scope: !4948)
!4955 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4956)
!4956 = distinct !DILocation(line: 2319, column: 1, scope: !4948)
!4957 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4956)
!4958 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4956)
!4959 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !4956)
!4960 = !DILocation(line: 2320, column: 8, scope: !4948)
!4961 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4962)
!4962 = distinct !DILocation(line: 2320, column: 1, scope: !4948)
!4963 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4962)
!4964 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4962)
!4965 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !4962)
!4966 = !DILocation(line: 2321, column: 8, scope: !4948)
!4967 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4968)
!4968 = distinct !DILocation(line: 2321, column: 1, scope: !4948)
!4969 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4968)
!4970 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4968)
!4971 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !4968)
!4972 = !DILocation(line: 2322, column: 8, scope: !4948)
!4973 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4974)
!4974 = distinct !DILocation(line: 2322, column: 1, scope: !4948)
!4975 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4974)
!4976 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4974)
!4977 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !4974)
!4978 = !DILocation(line: 2323, column: 8, scope: !4948)
!4979 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4980)
!4980 = distinct !DILocation(line: 2323, column: 1, scope: !4948)
!4981 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4980)
!4982 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4980)
!4983 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !4980)
!4984 = !DILocation(line: 2324, column: 8, scope: !4948)
!4985 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4986)
!4986 = distinct !DILocation(line: 2324, column: 1, scope: !4948)
!4987 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4986)
!4988 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4986)
!4989 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !4986)
!4990 = !DILocation(line: 2325, column: 8, scope: !4948)
!4991 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4992)
!4992 = distinct !DILocation(line: 2325, column: 1, scope: !4948)
!4993 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4992)
!4994 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4992)
!4995 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !4992)
!4996 = !DILocation(line: 2326, column: 8, scope: !4948)
!4997 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !4998)
!4998 = distinct !DILocation(line: 2326, column: 1, scope: !4948)
!4999 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !4998)
!5000 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !4998)
!5001 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !4998)
!5002 = !DILocation(line: 2327, column: 8, scope: !4948)
!5003 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5004)
!5004 = distinct !DILocation(line: 2327, column: 1, scope: !4948)
!5005 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5004)
!5006 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5004)
!5007 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5004)
!5008 = !DILocation(line: 2328, column: 8, scope: !4948)
!5009 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5010)
!5010 = distinct !DILocation(line: 2328, column: 1, scope: !4948)
!5011 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5010)
!5012 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5010)
!5013 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5010)
!5014 = !DILocation(line: 2329, column: 8, scope: !4948)
!5015 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5016)
!5016 = distinct !DILocation(line: 2329, column: 1, scope: !4948)
!5017 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5016)
!5018 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5016)
!5019 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5016)
!5020 = !DILocation(line: 2330, column: 8, scope: !4948)
!5021 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5022)
!5022 = distinct !DILocation(line: 2330, column: 1, scope: !4948)
!5023 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5022)
!5024 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5022)
!5025 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5022)
!5026 = !DILocation(line: 2331, column: 8, scope: !4948)
!5027 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5028)
!5028 = distinct !DILocation(line: 2331, column: 1, scope: !4948)
!5029 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5028)
!5030 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5028)
!5031 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5028)
!5032 = !DILocation(line: 2332, column: 8, scope: !4948)
!5033 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5034)
!5034 = distinct !DILocation(line: 2332, column: 1, scope: !4948)
!5035 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5034)
!5036 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5034)
!5037 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5034)
!5038 = !DILocation(line: 2333, column: 8, scope: !4948)
!5039 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5040)
!5040 = distinct !DILocation(line: 2333, column: 1, scope: !4948)
!5041 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5040)
!5042 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5040)
!5043 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5040)
!5044 = !DILocation(line: 2334, column: 8, scope: !4948)
!5045 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5046)
!5046 = distinct !DILocation(line: 2334, column: 1, scope: !4948)
!5047 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5046)
!5048 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5046)
!5049 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5046)
!5050 = !DILocation(line: 2335, column: 8, scope: !4948)
!5051 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5052)
!5052 = distinct !DILocation(line: 2335, column: 1, scope: !4948)
!5053 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5052)
!5054 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5052)
!5055 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5052)
!5056 = !DILocation(line: 2336, column: 8, scope: !4948)
!5057 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5058)
!5058 = distinct !DILocation(line: 2336, column: 1, scope: !4948)
!5059 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5058)
!5060 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5058)
!5061 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5058)
!5062 = !DILocation(line: 2337, column: 8, scope: !4948)
!5063 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5064)
!5064 = distinct !DILocation(line: 2337, column: 1, scope: !4948)
!5065 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5064)
!5066 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5064)
!5067 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5064)
!5068 = !DILocation(line: 2338, column: 8, scope: !4948)
!5069 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5070)
!5070 = distinct !DILocation(line: 2338, column: 1, scope: !4948)
!5071 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5070)
!5072 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5070)
!5073 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5070)
!5074 = !DILocation(line: 2339, column: 8, scope: !4948)
!5075 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5076)
!5076 = distinct !DILocation(line: 2339, column: 1, scope: !4948)
!5077 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5076)
!5078 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5076)
!5079 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5076)
!5080 = !DILocation(line: 2340, column: 8, scope: !4948)
!5081 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5082)
!5082 = distinct !DILocation(line: 2340, column: 1, scope: !4948)
!5083 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5082)
!5084 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5082)
!5085 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5082)
!5086 = !DILocation(line: 2341, column: 8, scope: !4948)
!5087 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5088)
!5088 = distinct !DILocation(line: 2341, column: 1, scope: !4948)
!5089 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5088)
!5090 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5088)
!5091 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5088)
!5092 = !DILocation(line: 2342, column: 8, scope: !4948)
!5093 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5094)
!5094 = distinct !DILocation(line: 2342, column: 1, scope: !4948)
!5095 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5094)
!5096 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5094)
!5097 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5094)
!5098 = !DILocation(line: 2343, column: 8, scope: !4948)
!5099 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5100)
!5100 = distinct !DILocation(line: 2343, column: 1, scope: !4948)
!5101 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5100)
!5102 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5100)
!5103 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5100)
!5104 = !DILocation(line: 2344, column: 8, scope: !4948)
!5105 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5106)
!5106 = distinct !DILocation(line: 2344, column: 1, scope: !4948)
!5107 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5106)
!5108 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5106)
!5109 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5106)
!5110 = !DILocation(line: 2345, column: 8, scope: !4948)
!5111 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5112)
!5112 = distinct !DILocation(line: 2345, column: 1, scope: !4948)
!5113 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5112)
!5114 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5112)
!5115 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5112)
!5116 = !DILocation(line: 2346, column: 8, scope: !4948)
!5117 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5118)
!5118 = distinct !DILocation(line: 2346, column: 1, scope: !4948)
!5119 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5118)
!5120 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5118)
!5121 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5118)
!5122 = !DILocation(line: 2347, column: 8, scope: !4948)
!5123 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5124)
!5124 = distinct !DILocation(line: 2347, column: 1, scope: !4948)
!5125 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5124)
!5126 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5124)
!5127 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5124)
!5128 = !DILocation(line: 2348, column: 13, scope: !4948)
!5129 = !DILocation(line: 2349, column: 9, scope: !4948)
!5130 = !DILocation(line: 2349, column: 21, scope: !4908)
!5131 = !DILocation(line: 2349, column: 45, scope: !4908)
!5132 = !DILocation(line: 2349, column: 49, scope: !4908)
!5133 = !DILocation(line: 2349, column: 76, scope: !4908)
!5134 = !DILocation(line: 2350, column: 21, scope: !4908)
!5135 = !DILocation(line: 2350, column: 45, scope: !4908)
!5136 = !DILocation(line: 2350, column: 49, scope: !4908)
!5137 = !DILocation(line: 2349, column: 20, scope: !4909)
!5138 = !DILocation(line: 2351, column: 22, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !4908, file: !3, line: 2350, column: 77)
!5140 = !DILocation(line: 2352, column: 13, scope: !5139)
!5141 = !DILocation(line: 2353, column: 21, scope: !4907)
!5142 = !DILocation(line: 2353, column: 45, scope: !4907)
!5143 = !DILocation(line: 2353, column: 49, scope: !4907)
!5144 = !DILocation(line: 2353, column: 20, scope: !4908)
!5145 = !DILocation(line: 2355, column: 21, scope: !4906)
!5146 = !DILocation(line: 2355, column: 45, scope: !4906)
!5147 = !DILocation(line: 2355, column: 49, scope: !4906)
!5148 = !DILocation(line: 2355, column: 20, scope: !4907)
!5149 = !DILocation(line: 2356, column: 13, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !4906, file: !3, line: 2355, column: 78)
!5151 = !DILocation(line: 2357, column: 13, scope: !5150)
!5152 = !DILocation(line: 2358, column: 9, scope: !5150)
!5153 = !DILocation(line: 2358, column: 21, scope: !4905)
!5154 = !DILocation(line: 2358, column: 45, scope: !4905)
!5155 = !DILocation(line: 2358, column: 49, scope: !4905)
!5156 = !DILocation(line: 2358, column: 20, scope: !4906)
!5157 = !DILocation(line: 2359, column: 28, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 2358, column: 79)
!5159 = !DILocation(line: 2359, column: 13, scope: !5158)
!5160 = !DILocation(line: 2360, column: 13, scope: !5158)
!5161 = !DILocation(line: 2361, column: 9, scope: !5158)
!5162 = !DILocation(line: 2361, column: 21, scope: !4904)
!5163 = !DILocation(line: 2361, column: 45, scope: !4904)
!5164 = !DILocation(line: 2361, column: 49, scope: !4904)
!5165 = !DILocation(line: 2361, column: 20, scope: !4905)
!5166 = !DILocation(line: 2362, column: 27, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 2361, column: 78)
!5168 = !DILocation(line: 2362, column: 13, scope: !5167)
!5169 = !DILocation(line: 2363, column: 13, scope: !5167)
!5170 = !DILocation(line: 2364, column: 9, scope: !5167)
!5171 = !DILocation(line: 2364, column: 21, scope: !4903)
!5172 = !DILocation(line: 2364, column: 45, scope: !4903)
!5173 = !DILocation(line: 2364, column: 49, scope: !4903)
!5174 = !DILocation(line: 2364, column: 20, scope: !4904)
!5175 = !DILocation(line: 2365, column: 30, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 2364, column: 77)
!5177 = !DILocation(line: 2365, column: 13, scope: !5176)
!5178 = !DILocation(line: 2366, column: 13, scope: !5176)
!5179 = !DILocation(line: 2367, column: 9, scope: !5176)
!5180 = !DILocation(line: 2367, column: 21, scope: !4902)
!5181 = !DILocation(line: 2367, column: 45, scope: !4902)
!5182 = !DILocation(line: 2367, column: 49, scope: !4902)
!5183 = !DILocation(line: 2367, column: 20, scope: !4903)
!5184 = !DILocation(line: 2368, column: 13, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !4902, file: !3, line: 2367, column: 78)
!5186 = !DILocation(line: 2369, column: 13, scope: !5185)
!5187 = !DILocation(line: 2370, column: 9, scope: !5185)
!5188 = !DILocation(line: 2370, column: 20, scope: !4901)
!5189 = !DILocation(line: 2370, column: 25, scope: !4901)
!5190 = !DILocation(line: 2370, column: 29, scope: !4901)
!5191 = !DILocation(line: 2371, column: 22, scope: !4901)
!5192 = !DILocation(line: 2371, column: 46, scope: !4901)
!5193 = !DILocation(line: 2371, column: 50, scope: !4901)
!5194 = !DILocation(line: 2370, column: 20, scope: !4902)
!5195 = !DILocation(line: 2372, column: 13, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 2371, column: 80)
!5197 = !DILocation(line: 2373, column: 13, scope: !5196)
!5198 = !DILocation(line: 2374, column: 9, scope: !5196)
!5199 = !DILocation(line: 2374, column: 22, scope: !4900)
!5200 = !DILocation(line: 2374, column: 46, scope: !4900)
!5201 = !DILocation(line: 2374, column: 50, scope: !4900)
!5202 = !DILocation(line: 2374, column: 20, scope: !4901)
!5203 = !DILocation(line: 2375, column: 22, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 2375, column: 17)
!5205 = distinct !DILexicalBlock(scope: !4900, file: !3, line: 2374, column: 80)
!5206 = !DILocation(line: 2375, column: 17, scope: !5205)
!5207 = !DILocation(line: 2376, column: 30, scope: !5204)
!5208 = !DILocation(line: 2376, column: 17, scope: !5204)
!5209 = !DILocation(line: 2378, column: 17, scope: !5204)
!5210 = !DILocation(line: 2379, column: 13, scope: !5205)
!5211 = !DILocation(line: 2380, column: 9, scope: !5205)
!5212 = !DILocation(line: 2380, column: 21, scope: !4899)
!5213 = !DILocation(line: 2380, column: 45, scope: !4899)
!5214 = !DILocation(line: 2380, column: 49, scope: !4899)
!5215 = !DILocation(line: 2380, column: 20, scope: !4900)
!5216 = !DILocation(line: 2381, column: 30, scope: !4898)
!5217 = !DILocation(line: 2381, column: 17, scope: !4898)
!5218 = !DILocation(line: 2381, column: 43, scope: !4898)
!5219 = !DILocation(line: 2382, column: 17, scope: !4898)
!5220 = !DILocation(line: 2383, column: 32, scope: !4912)
!5221 = !DILocation(line: 2383, column: 27, scope: !4912)
!5222 = !DILocation(line: 2383, column: 21, scope: !4912)
!5223 = !DILocation(line: 2384, column: 25, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !4912, file: !3, line: 2384, column: 21)
!5225 = !DILocation(line: 2384, column: 21, scope: !4912)
!5226 = !DILocation(line: 2386, column: 22, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 2386, column: 17)
!5228 = !DILocation(line: 2386, column: 17, scope: !4898)
!5229 = !DILocation(line: 2386, column: 38, scope: !5227)
!5230 = !DILocation(line: 2386, column: 33, scope: !5227)
!5231 = !DILocation(line: 2386, column: 27, scope: !5227)
!5232 = !DILocation(line: 0, scope: !4898)
!5233 = !DILocation(line: 1903, column: 18, scope: !3883, inlinedAt: !5234)
!5234 = distinct !DILocation(line: 2387, column: 13, scope: !4898)
!5235 = !DILocation(line: 1903, column: 30, scope: !3883, inlinedAt: !5234)
!5236 = !DILocation(line: 1904, column: 9, scope: !3883, inlinedAt: !5234)
!5237 = !DILocation(line: 1906, column: 26, scope: !3894, inlinedAt: !5234)
!5238 = !DILocation(line: 1906, column: 19, scope: !3894, inlinedAt: !5234)
!5239 = !DILocation(line: 1906, column: 5, scope: !3895, inlinedAt: !5234)
!5240 = !DILocation(line: 1907, column: 25, scope: !3899, inlinedAt: !5234)
!5241 = !DILocation(line: 1907, column: 38, scope: !3899, inlinedAt: !5234)
!5242 = !DILocation(line: 1907, column: 28, scope: !3899, inlinedAt: !5234)
!5243 = !DILocation(line: 1907, column: 42, scope: !3899, inlinedAt: !5234)
!5244 = !DILocation(line: 1907, column: 13, scope: !3900, inlinedAt: !5234)
!5245 = !DILocation(line: 1908, column: 9, scope: !3900, inlinedAt: !5234)
!5246 = !DILocation(line: 1909, column: 5, scope: !3900, inlinedAt: !5234)
!5247 = !DILocation(line: 1906, column: 34, scope: !3894, inlinedAt: !5234)
!5248 = !DILocation(line: 1910, column: 1, scope: !3883, inlinedAt: !5234)
!5249 = !DILocation(line: 2388, column: 13, scope: !4898)
!5250 = !DILocation(line: 2389, column: 9, scope: !4898)
!5251 = !DILocation(line: 2389, column: 21, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 2389, column: 20)
!5253 = !DILocation(line: 2389, column: 45, scope: !5252)
!5254 = !DILocation(line: 2389, column: 49, scope: !5252)
!5255 = !DILocation(line: 2389, column: 20, scope: !4899)
!5256 = !DILocation(line: 1903, column: 18, scope: !3883, inlinedAt: !5257)
!5257 = distinct !DILocation(line: 2390, column: 13, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5252, file: !3, line: 2389, column: 77)
!5259 = !DILocation(line: 1903, column: 30, scope: !3883, inlinedAt: !5257)
!5260 = !DILocation(line: 1904, column: 9, scope: !3883, inlinedAt: !5257)
!5261 = !DILocation(line: 1906, column: 26, scope: !3894, inlinedAt: !5257)
!5262 = !DILocation(line: 1906, column: 19, scope: !3894, inlinedAt: !5257)
!5263 = !DILocation(line: 1906, column: 5, scope: !3895, inlinedAt: !5257)
!5264 = !DILocation(line: 1907, column: 38, scope: !3899, inlinedAt: !5257)
!5265 = !DILocation(line: 1907, column: 28, scope: !3899, inlinedAt: !5257)
!5266 = !DILocation(line: 1907, column: 42, scope: !3899, inlinedAt: !5257)
!5267 = !DILocation(line: 1907, column: 13, scope: !3900, inlinedAt: !5257)
!5268 = !DILocation(line: 1908, column: 9, scope: !3900, inlinedAt: !5257)
!5269 = !DILocation(line: 1909, column: 5, scope: !3900, inlinedAt: !5257)
!5270 = !DILocation(line: 1906, column: 34, scope: !3894, inlinedAt: !5257)
!5271 = !DILocation(line: 1910, column: 1, scope: !3883, inlinedAt: !5257)
!5272 = !DILocation(line: 2391, column: 13, scope: !5258)
!5273 = !DILocation(line: 2392, column: 9, scope: !5258)
!5274 = !DILocation(line: 2393, column: 20, scope: !5275)
!5275 = distinct !DILexicalBlock(scope: !5252, file: !3, line: 2392, column: 16)
!5276 = !DILocation(line: 1602, column: 17, scope: !774, inlinedAt: !5277)
!5277 = distinct !DILocation(line: 2393, column: 13, scope: !5275)
!5278 = !DILocation(line: 1603, column: 25, scope: !774, inlinedAt: !5277)
!5279 = !DILocation(line: 1603, column: 5, scope: !774, inlinedAt: !5277)
!5280 = !DILocation(line: 1604, column: 1, scope: !774, inlinedAt: !5277)
!5281 = !DILocation(line: 2395, column: 13, scope: !5275)
!5282 = !DILocation(line: 2399, column: 30, scope: !4892)
!5283 = !DILocation(line: 2399, column: 9, scope: !4892)
!5284 = distinct !{!5284, !4916, !5285}
!5285 = !DILocation(line: 2400, column: 5, scope: !4885)
!5286 = !DILocation(line: 2403, column: 26, scope: !4885)
!5287 = !DILocation(line: 2403, column: 5, scope: !4885)
!5288 = !DILocation(line: 2404, column: 5, scope: !4885)
!5289 = !DILocation(line: 0, scope: !4885)
!5290 = !DILocation(line: 2405, column: 1, scope: !4885)
