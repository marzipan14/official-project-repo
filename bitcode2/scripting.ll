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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  br label %9, !dbg !482

; <label>:9:                                      ; preds = %9, %3
  %10 = phi i64 [ 0, %3 ], [ %25, %9 ]
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %10, !dbg !483
  %12 = load i8, i8* %11, align 1, !dbg !483, !tbaa !486
  %13 = lshr i8 %12, 4, !dbg !489
  %14 = zext i8 %13 to i64, !dbg !490
  %15 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %14, !dbg !490
  %16 = load i8, i8* %15, align 1, !dbg !490, !tbaa !486
  %17 = shl nuw nsw i64 %10, 1, !dbg !491
  %18 = getelementptr inbounds i8, i8* %0, i64 %17, !dbg !492
  store i8 %16, i8* %18, align 1, !dbg !493, !tbaa !486
  %19 = and i8 %12, 15, !dbg !494
  %20 = zext i8 %19 to i64, !dbg !495
  %21 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %20, !dbg !495
  %22 = load i8, i8* %21, align 1, !dbg !495, !tbaa !486
  %23 = or i64 %17, 1, !dbg !496
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !497
  store i8 %22, i8* %24, align 1, !dbg !498, !tbaa !486
  %25 = add nuw nsw i64 %10, 1, !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  %26 = icmp eq i64 %25, 20, !dbg !501
  br i1 %26, label %27, label %9, !dbg !482, !llvm.loop !502

; <label>:27:                                     ; preds = %9
  %28 = getelementptr inbounds i8, i8* %0, i64 40, !dbg !504
  store i8 0, i8* %28, align 1, !dbg !505, !tbaa !486
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %7) #7, !dbg !506
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %6) #7, !dbg !506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !506
  ret void, !dbg !506
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
define dso_local i8* @redisProtocolToLuaType(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !507 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i8, i8* %1, align 1, !dbg !517, !tbaa !486
  %6 = sext i8 %5 to i32, !dbg !517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  switch i32 %6, label %58 [
    i32 58, label %7
    i32 36, label %19
    i32 43, label %38
    i32 45, label %46
    i32 42, label %54
  ], !dbg !518

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !529
  %9 = tail call i8* @strchr(i8* nonnull %8, i32 13) #8, !dbg !530
  %10 = bitcast i64* %4 to i8*, !dbg !532
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #7, !dbg !532
  %11 = ptrtoint i8* %9 to i64, !dbg !533
  %12 = ptrtoint i8* %1 to i64, !dbg !533
  %13 = xor i64 %12, -1, !dbg !534
  %14 = add i64 %11, %13, !dbg !534
  %15 = call i32 @string2ll(i8* nonnull %8, i64 %14, i64* nonnull %4) #8, !dbg !536
  %16 = load i64, i64* %4, align 8, !dbg !537, !tbaa !538
  %17 = sitofp i64 %16 to double, !dbg !540
  call void @lua_pushnumber(%struct.lua_State* %0, double %17) #8, !dbg !541
  %18 = getelementptr inbounds i8, i8* %9, i64 2, !dbg !542
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  br label %56, !dbg !545

; <label>:19:                                     ; preds = %2
  %20 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !555
  %21 = tail call i8* @strchr(i8* nonnull %20, i32 13) #8, !dbg !556
  %22 = bitcast i64* %3 to i8*, !dbg !558
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #7, !dbg !558
  %23 = ptrtoint i8* %21 to i64, !dbg !559
  %24 = ptrtoint i8* %1 to i64, !dbg !559
  %25 = xor i64 %24, -1, !dbg !560
  %26 = add i64 %23, %25, !dbg !560
  %27 = call i32 @string2ll(i8* nonnull %20, i64 %26, i64* nonnull %3) #8, !dbg !562
  %28 = load i64, i64* %3, align 8, !dbg !563, !tbaa !538
  %29 = icmp eq i64 %28, -1, !dbg !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  br i1 %29, label %30, label %31, !dbg !566

; <label>:30:                                     ; preds = %19
  call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #8, !dbg !567
  br label %35, !dbg !569

; <label>:31:                                     ; preds = %19
  %32 = getelementptr inbounds i8, i8* %21, i64 2, !dbg !570
  call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %32, i64 %28) #8, !dbg !572
  %33 = load i64, i64* %3, align 8, !dbg !573, !tbaa !538
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !574
  br label %35, !dbg !575

; <label>:35:                                     ; preds = %30, %31
  %36 = phi i8* [ %21, %30 ], [ %34, %31 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  %37 = getelementptr inbounds i8, i8* %36, i64 2, !dbg !577
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #7, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !578
  br label %56, !dbg !579

; <label>:38:                                     ; preds = %2
  %39 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !588
  %40 = tail call i8* @strchr(i8* nonnull %39, i32 13) #8, !dbg !589
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #8, !dbg !591
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !592
  %41 = ptrtoint i8* %40 to i64, !dbg !593
  %42 = ptrtoint i8* %1 to i64, !dbg !593
  %43 = xor i64 %42, -1, !dbg !594
  %44 = add i64 %41, %43, !dbg !594
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %39, i64 %44) #8, !dbg !595
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #8, !dbg !596
  %45 = getelementptr inbounds i8, i8* %40, i64 2, !dbg !597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  br label %56, !dbg !599

; <label>:46:                                     ; preds = %2
  %47 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !608
  %48 = tail call i8* @strchr(i8* nonnull %47, i32 13) #8, !dbg !609
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #8, !dbg !611
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !612
  %49 = ptrtoint i8* %48 to i64, !dbg !613
  %50 = ptrtoint i8* %1 to i64, !dbg !613
  %51 = xor i64 %50, -1, !dbg !614
  %52 = add i64 %49, %51, !dbg !614
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %47, i64 %52) #8, !dbg !615
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #8, !dbg !616
  %53 = getelementptr inbounds i8, i8* %48, i64 2, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  br label %56, !dbg !619

; <label>:54:                                     ; preds = %2
  %55 = tail call i8* @redisProtocolToLuaType_MultiBulk(%struct.lua_State* %0, i8* nonnull %1) #9, !dbg !620
  br label %56, !dbg !621

; <label>:56:                                     ; preds = %7, %35, %38, %46, %54
  %57 = phi i8* [ %18, %7 ], [ %37, %35 ], [ %45, %38 ], [ %53, %46 ], [ %55, %54 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  br label %58, !dbg !622

; <label>:58:                                     ; preds = %56, %2
  %59 = phi i8* [ %1, %2 ], [ %57, %56 ], !dbg !576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  ret i8* %59, !dbg !622
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @redisProtocolToLuaType_Int(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !520 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !625
  %5 = tail call i8* @strchr(i8* nonnull %4, i32 13) #8, !dbg !626
  %6 = bitcast i64* %3 to i8*, !dbg !628
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7, !dbg !628
  %7 = ptrtoint i8* %5 to i64, !dbg !629
  %8 = ptrtoint i8* %1 to i64, !dbg !629
  %9 = xor i64 %8, -1, !dbg !630
  %10 = add i64 %7, %9, !dbg !630
  %11 = call i32 @string2ll(i8* nonnull %4, i64 %10, i64* nonnull %3) #8, !dbg !632
  %12 = load i64, i64* %3, align 8, !dbg !633, !tbaa !538
  %13 = sitofp i64 %12 to double, !dbg !634
  call void @lua_pushnumber(%struct.lua_State* %0, double %13) #8, !dbg !635
  %14 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !636
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  ret i8* %14, !dbg !638
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @redisProtocolToLuaType_Bulk(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !547 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !641
  %5 = tail call i8* @strchr(i8* nonnull %4, i32 13) #8, !dbg !642
  %6 = bitcast i64* %3 to i8*, !dbg !644
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7, !dbg !644
  %7 = ptrtoint i8* %5 to i64, !dbg !645
  %8 = ptrtoint i8* %1 to i64, !dbg !645
  %9 = xor i64 %8, -1, !dbg !646
  %10 = add i64 %7, %9, !dbg !646
  %11 = call i32 @string2ll(i8* nonnull %4, i64 %10, i64* nonnull %3) #8, !dbg !648
  %12 = load i64, i64* %3, align 8, !dbg !649, !tbaa !538
  %13 = icmp eq i64 %12, -1, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  br i1 %13, label %14, label %15, !dbg !651

; <label>:14:                                     ; preds = %2
  call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #8, !dbg !652
  br label %19, !dbg !653

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !654
  call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %16, i64 %12) #8, !dbg !655
  %17 = load i64, i64* %3, align 8, !dbg !656, !tbaa !538
  %18 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !657
  br label %19, !dbg !658

; <label>:19:                                     ; preds = %15, %14
  %20 = phi i8* [ %5, %14 ], [ %18, %15 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  %21 = getelementptr inbounds i8, i8* %20, i64 2, !dbg !660
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7, !dbg !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  ret i8* %21, !dbg !661
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @redisProtocolToLuaType_Status(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !581 {
  %3 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !664
  %4 = tail call i8* @strchr(i8* nonnull %3, i32 13) #8, !dbg !665
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #8, !dbg !667
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !668
  %5 = ptrtoint i8* %4 to i64, !dbg !669
  %6 = ptrtoint i8* %1 to i64, !dbg !669
  %7 = xor i64 %6, -1, !dbg !670
  %8 = add i64 %5, %7, !dbg !670
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %3, i64 %8) #8, !dbg !671
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #8, !dbg !672
  %9 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  ret i8* %9, !dbg !674
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @redisProtocolToLuaType_Error(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !601 {
  %3 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !677
  %4 = tail call i8* @strchr(i8* nonnull %3, i32 13) #8, !dbg !678
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #8, !dbg !680
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !681
  %5 = ptrtoint i8* %4 to i64, !dbg !682
  %6 = ptrtoint i8* %1 to i64, !dbg !682
  %7 = xor i64 %6, -1, !dbg !683
  %8 = add i64 %5, %7, !dbg !683
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %3, i64 %8) #8, !dbg !684
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #8, !dbg !685
  %9 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  ret i8* %9, !dbg !687
}

; Function Attrs: noredzone nounwind
define dso_local i8* @redisProtocolToLuaType_MultiBulk(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !688 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !697
  %5 = tail call i8* @strchr(i8* nonnull %4, i32 13) #8, !dbg !698
  %6 = bitcast i64* %3 to i8*, !dbg !700
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7, !dbg !700
  %7 = ptrtoint i8* %5 to i64, !dbg !702
  %8 = ptrtoint i8* %1 to i64, !dbg !702
  %9 = xor i64 %8, -1, !dbg !703
  %10 = add i64 %7, %9, !dbg !703
  %11 = call i32 @string2ll(i8* nonnull %4, i64 %10, i64* nonnull %3) #8, !dbg !705
  %12 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !706
  %13 = load i64, i64* %3, align 8, !dbg !707, !tbaa !538
  %14 = icmp eq i64 %13, -1, !dbg !709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  br i1 %14, label %15, label %16, !dbg !710

; <label>:15:                                     ; preds = %2
  call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #8, !dbg !711
  br label %28, !dbg !713

; <label>:16:                                     ; preds = %2
  call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #8, !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  %17 = load i64, i64* %3, align 8, !dbg !717, !tbaa !538
  %18 = icmp sgt i64 %17, 0, !dbg !719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  br i1 %18, label %19, label %28, !dbg !720

; <label>:19:                                     ; preds = %16, %19
  %20 = phi i64 [ %22, %19 ], [ 0, %16 ]
  %21 = phi i8* [ %25, %19 ], [ %12, %16 ]
  %22 = add nuw nsw i64 %20, 1, !dbg !721
  %23 = trunc i64 %22 to i32, !dbg !723
  %24 = sitofp i32 %23 to double, !dbg !723
  call void @lua_pushnumber(%struct.lua_State* %0, double %24) #8, !dbg !724
  %25 = call i8* @redisProtocolToLuaType(%struct.lua_State* %0, i8* %21) #9, !dbg !725
  call void @lua_settable(%struct.lua_State* %0, i32 -3) #8, !dbg !726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  %26 = load i64, i64* %3, align 8, !dbg !717, !tbaa !538
  %27 = icmp sgt i64 %26, %22, !dbg !719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  br i1 %27, label %19, label %28, !dbg !720, !llvm.loop !728

; <label>:28:                                     ; preds = %19, %16, %15
  %29 = phi i8* [ %12, %15 ], [ %12, %16 ], [ %25, %19 ], !dbg !730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !731
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7, !dbg !732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  ret i8* %29, !dbg !732
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
define dso_local void @luaPushError(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !733 {
  %3 = alloca %struct.lua_Debug, align 8
  %4 = bitcast %struct.lua_Debug* %3 to i8*, !dbg !764
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %4) #7, !dbg !764
  %5 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !765, !tbaa !767
  %6 = icmp ne i32 %5, 0, !dbg !772
  %7 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !773
  %8 = icmp ne i32 %7, 0, !dbg !774
  %9 = and i1 %6, %8, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  br i1 %9, label %10, label %15, !dbg !775

; <label>:10:                                     ; preds = %2
  %11 = tail call i8* @sdsempty() #8, !dbg !776
  %12 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %1) #8, !dbg !778
  %13 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !786, !tbaa !787
  %14 = tail call %struct.list* @listAddNodeTail(%struct.list* %13, i8* %12) #8, !dbg !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  br label %15, !dbg !790

; <label>:15:                                     ; preds = %10, %2
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #8, !dbg !791
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !792
  %16 = call i32 @lua_getstack(%struct.lua_State* %0, i32 1, %struct.lua_Debug* nonnull %3) #8, !dbg !794
  %17 = icmp eq i32 %16, 0, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !795
  br i1 %17, label %28, label %18, !dbg !795

; <label>:18:                                     ; preds = %15
  %19 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %struct.lua_Debug* nonnull %3) #8, !dbg !796
  %20 = icmp eq i32 %19, 0, !dbg !796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !797
  br i1 %20, label %28, label %21, !dbg !797

; <label>:21:                                     ; preds = %18
  %22 = call i8* @sdsempty() #8, !dbg !798
  %23 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 4, !dbg !799
  %24 = load i8*, i8** %23, align 8, !dbg !799, !tbaa !800
  %25 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 5, !dbg !802
  %26 = load i32, i32* %25, align 8, !dbg !802, !tbaa !803
  %27 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %24, i32 %26, i8* %1) #8, !dbg !804
  call void @lua_pushstring(%struct.lua_State* %0, i8* %27) #8, !dbg !806
  call void @sdsfree(i8* %27) #8, !dbg !807
  br label %29, !dbg !808

; <label>:28:                                     ; preds = %18, %15
  call void @lua_pushstring(%struct.lua_State* %0, i8* %1) #8, !dbg !809
  br label %29

; <label>:29:                                     ; preds = %28, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @lua_settable(%struct.lua_State* %0, i32 -3) #8, !dbg !811
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %4) #7, !dbg !812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !812
  ret void, !dbg !812
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbLog(i8*) local_unnamed_addr #0 !dbg !780 {
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !814, !tbaa !787
  %3 = tail call %struct.list* @listAddNodeTail(%struct.list* %2, i8* %0) #8, !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  ret void, !dbg !816
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
define dso_local i32 @luaRaiseError(%struct.lua_State*) local_unnamed_addr #0 !dbg !817 {
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !823
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -2) #8, !dbg !824
  %2 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !825
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  ret i32 %2, !dbg !826
}

; Function Attrs: noredzone
declare dso_local void @lua_gettable(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_error(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaSortArray(%struct.lua_State*) local_unnamed_addr #0 !dbg !827 {
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !833
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !834
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -2) #8, !dbg !835
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -3) #8, !dbg !836
  %2 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 1, i32 0, i32 0) #8, !dbg !837
  %3 = icmp eq i32 %2, 0, !dbg !837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  br i1 %3, label %5, label %4, !dbg !839

; <label>:4:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !840
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !842
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -2) #8, !dbg !843
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -3) #8, !dbg !844
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #8, !dbg !845
  tail call void @lua_call(%struct.lua_State* %0, i32 2, i32 0) #8, !dbg !846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !847
  br label %5, !dbg !847

; <label>:5:                                      ; preds = %1, %4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !849
  ret void, !dbg !849
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
define dso_local void @luaReplyToRedisReply(%struct.client*, %struct.lua_State*) local_unnamed_addr #0 !dbg !850 {
  %3 = tail call i32 @lua_type(%struct.lua_State* %1, i32 -1) #8, !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  switch i32 %3, label %50 [
    i32 4, label %4
    i32 1, label %7
    i32 3, label %13
    i32 5, label %16
  ], !dbg !872

; <label>:4:                                      ; preds = %2
  %5 = tail call i8* @lua_tolstring(%struct.lua_State* %1, i32 -1, i64* null) #8, !dbg !873
  %6 = tail call i64 @lua_objlen(%struct.lua_State* %1, i32 -1) #8, !dbg !874
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* %5, i64 %6) #8, !dbg !875
  br label %52, !dbg !876

; <label>:7:                                      ; preds = %2
  %8 = tail call i32 @lua_toboolean(%struct.lua_State* %1, i32 -1) #8, !dbg !877
  %9 = icmp eq i32 %8, 0, !dbg !877
  %10 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !878
  %11 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !879
  %12 = select i1 %9, %struct.redisObject* %11, %struct.redisObject* %10, !dbg !877
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %12) #8, !dbg !880
  br label %52, !dbg !881

; <label>:13:                                     ; preds = %2
  %14 = tail call double @lua_tonumber(%struct.lua_State* %1, i32 -1) #8, !dbg !882
  %15 = fptosi double %14 to i64, !dbg !883
  tail call void @addReplyLongLong(%struct.client* %0, i64 %15) #8, !dbg !884
  br label %52, !dbg !885

; <label>:16:                                     ; preds = %2
  tail call void @lua_pushstring(%struct.lua_State* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !886
  tail call void @lua_gettable(%struct.lua_State* %1, i32 -2) #8, !dbg !887
  %17 = tail call i32 @lua_type(%struct.lua_State* %1, i32 -1) #8, !dbg !888
  %18 = icmp eq i32 %17, 4, !dbg !889
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  br i1 %18, label %19, label %25, !dbg !890

; <label>:19:                                     ; preds = %16
  %20 = tail call i8* @lua_tolstring(%struct.lua_State* %1, i32 -1, i64* null) #8, !dbg !891
  %21 = tail call i8* @sdsnew(i8* %20) #8, !dbg !892
  %22 = tail call i8* @sdsmapchars(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2) #8, !dbg !894
  %23 = tail call i8* @sdsempty() #8, !dbg !895
  %24 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %21) #8, !dbg !896
  tail call void @addReplySds(%struct.client* %0, i8* %24) #8, !dbg !897
  tail call void @sdsfree(i8* %21) #8, !dbg !898
  tail call void @lua_settop(%struct.lua_State* %1, i32 -3) #8, !dbg !899
  br label %53

; <label>:25:                                     ; preds = %16
  tail call void @lua_settop(%struct.lua_State* %1, i32 -2) #8, !dbg !900
  tail call void @lua_pushstring(%struct.lua_State* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !901
  tail call void @lua_gettable(%struct.lua_State* %1, i32 -2) #8, !dbg !902
  %26 = tail call i32 @lua_type(%struct.lua_State* %1, i32 -1) #8, !dbg !903
  %27 = icmp eq i32 %26, 4, !dbg !904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  br i1 %27, label %28, label %34, !dbg !905

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @lua_tolstring(%struct.lua_State* %1, i32 -1, i64* null) #8, !dbg !906
  %30 = tail call i8* @sdsnew(i8* %29) #8, !dbg !907
  %31 = tail call i8* @sdsmapchars(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2) #8, !dbg !909
  %32 = tail call i8* @sdsempty() #8, !dbg !910
  %33 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %30) #8, !dbg !911
  tail call void @addReplySds(%struct.client* %0, i8* %33) #8, !dbg !912
  tail call void @sdsfree(i8* %30) #8, !dbg !913
  tail call void @lua_settop(%struct.lua_State* %1, i32 -2) #8, !dbg !914
  br label %52, !dbg !915

; <label>:34:                                     ; preds = %25
  %35 = tail call i8* @addDeferredMultiBulkLength(%struct.client* %0) #8, !dbg !916
  tail call void @lua_settop(%struct.lua_State* %1, i32 -2) #8, !dbg !920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  tail call void @lua_pushnumber(%struct.lua_State* %1, double 1.000000e+00) #8, !dbg !922
  tail call void @lua_gettable(%struct.lua_State* %1, i32 -2) #8, !dbg !924
  %36 = tail call i32 @lua_type(%struct.lua_State* %1, i32 -1) #8, !dbg !925
  %37 = icmp eq i32 %36, 0, !dbg !926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  br i1 %37, label %40, label %42, !dbg !928

; <label>:38:                                     ; preds = %42
  %39 = zext i32 %46 to i64, !dbg !929
  br label %40, !dbg !929

; <label>:40:                                     ; preds = %38, %34
  %41 = phi i64 [ 0, %34 ], [ %39, %38 ]
  tail call void @lua_settop(%struct.lua_State* %1, i32 -2) #8, !dbg !929
  tail call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %35, i64 %41) #8, !dbg !931
  br label %52

; <label>:42:                                     ; preds = %34, %42
  %43 = phi i32 [ %46, %42 ], [ 0, %34 ]
  %44 = phi i32 [ %45, %42 ], [ 1, %34 ]
  %45 = add nuw nsw i32 %44, 1, !dbg !932
  tail call void @luaReplyToRedisReply(%struct.client* %0, %struct.lua_State* %1) #9, !dbg !933
  %46 = add nuw nsw i32 %43, 1, !dbg !934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !921
  %47 = sitofp i32 %45 to double, !dbg !935
  tail call void @lua_pushnumber(%struct.lua_State* %1, double %47) #8, !dbg !922
  tail call void @lua_gettable(%struct.lua_State* %1, i32 -2) #8, !dbg !924
  %48 = tail call i32 @lua_type(%struct.lua_State* %1, i32 -1) #8, !dbg !925
  %49 = icmp eq i32 %48, 0, !dbg !926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  br i1 %49, label %38, label %42, !dbg !928, !llvm.loop !936

; <label>:50:                                     ; preds = %2
  %51 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !938, !tbaa !939
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %51) #8, !dbg !941
  br label %52, !dbg !942

; <label>:52:                                     ; preds = %28, %40, %50, %13, %7, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  tail call void @lua_settop(%struct.lua_State* %1, i32 -2) #8, !dbg !943
  br label %53, !dbg !944

; <label>:53:                                     ; preds = %52, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !944
  ret void, !dbg !944
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
  %6 = tail call i32 @lua_gettop(%struct.lua_State* %0) #8, !dbg !947
  %7 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 271), align 8, !dbg !949, !tbaa !950
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 280), align 4, !dbg !957, !tbaa !959
  %9 = icmp eq i32 %8, 0, !dbg !960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !961
  br i1 %9, label %10, label %16, !dbg !961

; <label>:10:                                     ; preds = %2
  %11 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !962, !tbaa !963
  %12 = getelementptr inbounds %struct.client, %struct.client* %11, i64 0, i32 21, !dbg !964
  %13 = load i32, i32* %12, align 8, !dbg !964, !tbaa !965
  %14 = and i32 %13, 8, !dbg !969
  %15 = icmp eq i32 %14, 0, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !970
  br i1 %15, label %20, label %16, !dbg !970

; <label>:16:                                     ; preds = %10, %2
  %17 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 21, !dbg !971
  %18 = load i32, i32* %17, align 8, !dbg !973, !tbaa !965
  %19 = or i32 %18, 8, !dbg !973
  store i32 %19, i32* %17, align 8, !dbg !973, !tbaa !965
  br label %24, !dbg !974

; <label>:20:                                     ; preds = %10
  %21 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 21, !dbg !975
  %22 = load i32, i32* %21, align 8, !dbg !977, !tbaa !965
  %23 = and i32 %22, -9, !dbg !977
  store i32 %23, i32* %21, align 8, !dbg !977, !tbaa !965
  br label %24

; <label>:24:                                     ; preds = %20, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %25 = load i32, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !978, !tbaa !979
  %26 = icmp eq i32 %25, 0, !dbg !978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !980
  br i1 %26, label %28, label %27, !dbg !980

; <label>:27:                                     ; preds = %24
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.13, i64 0, i64 0)) #8, !dbg !981
  tail call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !982
  br label %534

; <label>:28:                                     ; preds = %24
  store i32 1, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !983, !tbaa !979
  %29 = icmp eq i32 %6, 0, !dbg !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  br i1 %29, label %30, label %36, !dbg !986

; <label>:30:                                     ; preds = %28
  tail call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !987
  %31 = load i32, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !989, !tbaa !979
  %32 = add nsw i32 %31, -1, !dbg !989
  store i32 %32, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !989, !tbaa !979
  %33 = icmp eq i32 %1, 0, !dbg !990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  br i1 %33, label %534, label %34, !dbg !990

; <label>:34:                                     ; preds = %30
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !993
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -2) #8, !dbg !994
  %35 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  br label %534, !dbg !990

; <label>:36:                                     ; preds = %28
  %37 = load i32, i32* @luaRedisGenericCommand.argv_size, align 4, !dbg !997, !tbaa !979
  %38 = icmp slt i32 %37, %6, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1000
  br i1 %38, label %39, label %44, !dbg !1000

; <label>:39:                                     ; preds = %36
  %40 = load i8*, i8** bitcast (%struct.redisObject*** @luaRedisGenericCommand.argv to i8**), align 8, !dbg !1001, !tbaa !1003
  %41 = sext i32 %6 to i64, !dbg !1004
  %42 = shl nsw i64 %41, 3, !dbg !1005
  %43 = tail call i8* @zrealloc(i8* %40, i64 %42) #8, !dbg !1006
  store i8* %43, i8** bitcast (%struct.redisObject*** @luaRedisGenericCommand.argv to i8**), align 8, !dbg !1007, !tbaa !1003
  store i32 %6, i32* @luaRedisGenericCommand.argv_size, align 4, !dbg !1008, !tbaa !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  br label %44, !dbg !1009

; <label>:44:                                     ; preds = %39, %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1011
  %45 = icmp sgt i32 %6, 0, !dbg !1012
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1013
  br i1 %45, label %46, label %116, !dbg !1013

; <label>:46:                                     ; preds = %44
  %47 = bitcast i64* %4 to i8*
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %49 = sext i32 %6 to i64, !dbg !1013
  br label %50, !dbg !1013

; <label>:50:                                     ; preds = %46, %112
  %51 = phi i64 [ 0, %46 ], [ %52, %112 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %47) #7, !dbg !1014
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %48) #7, !dbg !1015
  %52 = add nuw nsw i64 %51, 1, !dbg !1017
  %53 = trunc i64 %52 to i32, !dbg !1018
  %54 = call i32 @lua_type(%struct.lua_State* %0, i32 %53) #8, !dbg !1018
  %55 = icmp eq i32 %54, 3, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  br i1 %55, label %56, label %60, !dbg !1020

; <label>:56:                                     ; preds = %50
  %57 = call double @lua_tonumber(%struct.lua_State* %0, i32 %53) #8, !dbg !1021
  %58 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %48, i64 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), double %57) #8, !dbg !1023
  %59 = sext i32 %58 to i64, !dbg !1023
  store i64 %59, i64* %4, align 8, !dbg !1025, !tbaa !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  br label %65, !dbg !1028

; <label>:60:                                     ; preds = %50
  %61 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %53, i64* nonnull %4) #8, !dbg !1029
  %62 = icmp eq i8* %61, null, !dbg !1031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  br i1 %62, label %63, label %65, !dbg !1033

; <label>:63:                                     ; preds = %60
  %64 = trunc i64 %51 to i32, !dbg !1010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1034
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %48) #7, !dbg !1035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #7, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %116

; <label>:65:                                     ; preds = %60, %56
  %66 = phi i8* [ %48, %56 ], [ %61, %60 ], !dbg !1036
  %67 = icmp ult i64 %51, 32, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  br i1 %67, label %68, label %107, !dbg !1038

; <label>:68:                                     ; preds = %65
  %69 = getelementptr inbounds [32 x %struct.redisObject*], [32 x %struct.redisObject*]* @luaRedisGenericCommand.cached_objects, i64 0, i64 %51, !dbg !1039
  %70 = load %struct.redisObject*, %struct.redisObject** %69, align 8, !dbg !1039, !tbaa !1003
  %71 = icmp eq %struct.redisObject* %70, null, !dbg !1039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  br i1 %71, label %107, label %72, !dbg !1040

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds [32 x i64], [32 x i64]* @luaRedisGenericCommand.cached_objects_len, i64 0, i64 %51, !dbg !1041
  %74 = load i64, i64* %73, align 8, !dbg !1041, !tbaa !1026
  %75 = load i64, i64* %4, align 8, !dbg !1042, !tbaa !1026
  %76 = icmp ult i64 %74, %75, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  br i1 %76, label %107, label %77, !dbg !1044

; <label>:77:                                     ; preds = %72
  %78 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %70, i64 0, i32 2, !dbg !1045
  %79 = load i8*, i8** %78, align 8, !dbg !1045, !tbaa !1046
  %80 = load %struct.redisObject**, %struct.redisObject*** @luaRedisGenericCommand.argv, align 8, !dbg !1049, !tbaa !1003
  %81 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %80, i64 %51, !dbg !1049
  store %struct.redisObject* %70, %struct.redisObject** %81, align 8, !dbg !1050, !tbaa !1003
  store %struct.redisObject* null, %struct.redisObject** %69, align 8, !dbg !1051, !tbaa !1003
  %82 = add i64 %75, 1, !dbg !1052
  %83 = call i8* @memcpy(i8* %79, i8* nonnull %66, i64 %82) #8, !dbg !1053
  %84 = load i64, i64* %4, align 8, !dbg !1054, !tbaa !1026
  %85 = getelementptr inbounds i8, i8* %79, i64 -1, !dbg !1070
  %86 = load i8, i8* %85, align 1, !dbg !1070, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  %87 = trunc i8 %86 to i3, !dbg !1072
  switch i3 %87, label %106 [
    i3 0, label %88
    i3 1, label %91
    i3 2, label %94
    i3 3, label %98
    i3 -4, label %102
  ], !dbg !1072

; <label>:88:                                     ; preds = %77
  %89 = trunc i64 %84 to i8, !dbg !1074
  %90 = shl i8 %89, 3, !dbg !1074
  store i8 %90, i8* %85, align 1, !dbg !1075, !tbaa !486
  br label %105, !dbg !1076

; <label>:91:                                     ; preds = %77
  %92 = trunc i64 %84 to i8, !dbg !1077
  %93 = getelementptr inbounds i8, i8* %79, i64 -3, !dbg !1078
  store i8 %92, i8* %93, align 1, !dbg !1079, !tbaa !486
  br label %105, !dbg !1080

; <label>:94:                                     ; preds = %77
  %95 = trunc i64 %84 to i16, !dbg !1081
  %96 = getelementptr inbounds i8, i8* %79, i64 -5, !dbg !1082
  %97 = bitcast i8* %96 to i16*, !dbg !1083
  store i16 %95, i16* %97, align 1, !dbg !1084, !tbaa !1085
  br label %105, !dbg !1087

; <label>:98:                                     ; preds = %77
  %99 = trunc i64 %84 to i32, !dbg !1088
  %100 = getelementptr inbounds i8, i8* %79, i64 -9, !dbg !1089
  %101 = bitcast i8* %100 to i32*, !dbg !1090
  store i32 %99, i32* %101, align 1, !dbg !1091, !tbaa !979
  br label %105, !dbg !1092

; <label>:102:                                    ; preds = %77
  %103 = getelementptr inbounds i8, i8* %79, i64 -17, !dbg !1093
  %104 = bitcast i8* %103 to i64*, !dbg !1094
  store i64 %84, i64* %104, align 1, !dbg !1095, !tbaa !1026
  br label %105, !dbg !1096

; <label>:105:                                    ; preds = %102, %98, %94, %91, %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1097
  br label %106, !dbg !1098

; <label>:106:                                    ; preds = %105, %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1098
  br label %112, !dbg !1099

; <label>:107:                                    ; preds = %72, %68, %65
  %108 = load i64, i64* %4, align 8, !dbg !1100, !tbaa !1026
  %109 = call %struct.redisObject* @createStringObject(i8* nonnull %66, i64 %108) #8, !dbg !1102
  %110 = load %struct.redisObject**, %struct.redisObject*** @luaRedisGenericCommand.argv, align 8, !dbg !1103, !tbaa !1003
  %111 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %110, i64 %51, !dbg !1103
  store %struct.redisObject* %109, %struct.redisObject** %111, align 8, !dbg !1104, !tbaa !1003
  br label %112

; <label>:112:                                    ; preds = %107, %106
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1035
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %48) #7, !dbg !1035
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #7, !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1105
  %113 = icmp slt i64 %52, %49, !dbg !1012
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1013
  br i1 %113, label %50, label %114, !dbg !1013, !llvm.loop !1106

; <label>:114:                                    ; preds = %112
  %115 = trunc i64 %52 to i32, !dbg !1018
  br label %116, !dbg !1108

; <label>:116:                                    ; preds = %114, %44, %63
  %117 = phi i32 [ %64, %63 ], [ 0, %44 ], [ %115, %114 ]
  %118 = icmp eq i32 %117, %6, !dbg !1108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  br i1 %118, label %136, label %119, !dbg !1110

; <label>:119:                                    ; preds = %116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  %120 = icmp sgt i32 %117, 0, !dbg !1113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  br i1 %120, label %121, label %130, !dbg !1111

; <label>:121:                                    ; preds = %119
  %122 = zext i32 %117 to i64, !dbg !1114
  br label %123, !dbg !1114

; <label>:123:                                    ; preds = %121, %123
  %124 = phi i64 [ %122, %121 ], [ %125, %123 ]
  %125 = add nsw i64 %124, -1, !dbg !1114
  %126 = load %struct.redisObject**, %struct.redisObject*** @luaRedisGenericCommand.argv, align 8, !dbg !1116, !tbaa !1003
  %127 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %126, i64 %125, !dbg !1116
  %128 = load %struct.redisObject*, %struct.redisObject** %127, align 8, !dbg !1116, !tbaa !1003
  call void @decrRefCount(%struct.redisObject* %128) #8, !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  %129 = icmp sgt i64 %124, 1, !dbg !1113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  br i1 %129, label %123, label %130, !dbg !1111, !llvm.loop !1118

; <label>:130:                                    ; preds = %123, %119
  call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !1120
  %131 = load i32, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !1121, !tbaa !979
  %132 = add nsw i32 %131, -1, !dbg !1121
  store i32 %132, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !1121, !tbaa !979
  %133 = icmp eq i32 %1, 0, !dbg !1122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1122
  br i1 %133, label %534, label %134, !dbg !1122

; <label>:134:                                    ; preds = %130
  call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1125
  call void @lua_gettable(%struct.lua_State* %0, i32 -2) #8, !dbg !1126
  %135 = call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !1127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1122
  br label %534, !dbg !1122

; <label>:136:                                    ; preds = %116
  %137 = load i64, i64* bitcast (%struct.redisObject*** @luaRedisGenericCommand.argv to i64*), align 8, !dbg !1129, !tbaa !1003
  %138 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 9, !dbg !1130
  %139 = bitcast %struct.redisObject*** %138 to i64*, !dbg !1131
  store i64 %137, i64* %139, align 8, !dbg !1131, !tbaa !1132
  %140 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 8, !dbg !1133
  store i32 %6, i32* %140, align 8, !dbg !1134, !tbaa !1135
  call void @moduleCallCommandFilters(%struct.client* %7) #8, !dbg !1136
  %141 = load i64, i64* %139, align 8, !dbg !1137, !tbaa !1132
  store i64 %141, i64* bitcast (%struct.redisObject*** @luaRedisGenericCommand.argv to i64*), align 8, !dbg !1138, !tbaa !1003
  %142 = load i32, i32* %140, align 8, !dbg !1139, !tbaa !1135
  %143 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !1140, !tbaa !767
  %144 = icmp ne i32 %143, 0, !dbg !1141
  %145 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !1142
  %146 = icmp ne i32 %145, 0, !dbg !1143
  %147 = and i1 %144, %146, !dbg !1144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1144
  %148 = inttoptr i64 %141 to %struct.redisObject**, !dbg !1144
  br i1 %147, label %149, label %178, !dbg !1144

; <label>:149:                                    ; preds = %136
  %150 = call i8* @sdsnew(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0)) #8, !dbg !1145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1147
  %151 = load i32, i32* %140, align 8, !dbg !1149, !tbaa !1135
  %152 = icmp sgt i32 %151, 0, !dbg !1151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1152
  br i1 %152, label %153, label %173, !dbg !1152

; <label>:153:                                    ; preds = %149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1153
  br label %159, !dbg !1153

; <label>:154:                                    ; preds = %159
  %155 = icmp eq i64 %169, 10, !dbg !1155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1153
  br i1 %155, label %156, label %159, !dbg !1153, !llvm.loop !1157

; <label>:156:                                    ; preds = %154
  %157 = add i32 %170, -11, !dbg !1159
  %158 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %168, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 %157) #8, !dbg !1161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  br label %173, !dbg !1162

; <label>:159:                                    ; preds = %153, %154
  %160 = phi i8* [ %150, %153 ], [ %168, %154 ]
  %161 = phi i64 [ 0, %153 ], [ %169, %154 ]
  %162 = call i8* @sdscatlen(i8* %160, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #8, !dbg !1163
  %163 = load %struct.redisObject**, %struct.redisObject*** %138, align 8, !dbg !1165, !tbaa !1132
  %164 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %163, i64 %161, !dbg !1166
  %165 = load %struct.redisObject*, %struct.redisObject** %164, align 8, !dbg !1166, !tbaa !1003
  %166 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %165, i64 0, i32 2, !dbg !1167
  %167 = load i8*, i8** %166, align 8, !dbg !1167, !tbaa !1046
  %168 = call i8* @sdscatsds(i8* %162, i8* %167) #8, !dbg !1168
  %169 = add nuw nsw i64 %161, 1, !dbg !1169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1170
  %170 = load i32, i32* %140, align 8, !dbg !1149, !tbaa !1135
  %171 = sext i32 %170 to i64, !dbg !1151
  %172 = icmp slt i64 %169, %171, !dbg !1151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1152
  br i1 %172, label %154, label %173, !dbg !1152, !llvm.loop !1157

; <label>:173:                                    ; preds = %159, %149, %156
  %174 = phi i8* [ %158, %156 ], [ %150, %149 ], [ %168, %159 ], !dbg !1171
  %175 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !1174, !tbaa !787
  %176 = call %struct.list* @listAddNodeTail(%struct.list* %175, i8* %174) #8, !dbg !1175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1177
  %177 = load %struct.redisObject**, %struct.redisObject*** @luaRedisGenericCommand.argv, align 8, !dbg !1178, !tbaa !1003
  br label %178, !dbg !1177

; <label>:178:                                    ; preds = %173, %136
  %179 = phi %struct.redisObject** [ %177, %173 ], [ %148, %136 ], !dbg !1178
  %180 = load %struct.redisObject*, %struct.redisObject** %179, align 8, !dbg !1178, !tbaa !1003
  %181 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %180, i64 0, i32 2, !dbg !1179
  %182 = load i8*, i8** %181, align 8, !dbg !1179, !tbaa !1046
  %183 = call %struct.redisCommand* @lookupCommand(i8* %182) #8, !dbg !1180
  %184 = icmp eq %struct.redisCommand* %183, null, !dbg !1182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  br i1 %184, label %195, label %185, !dbg !1184

; <label>:185:                                    ; preds = %178
  %186 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %183, i64 0, i32 2, !dbg !1185
  %187 = load i32, i32* %186, align 8, !dbg !1185, !tbaa !1186
  %188 = icmp sgt i32 %187, 0, !dbg !1188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1189
  br i1 %188, label %189, label %191, !dbg !1189

; <label>:189:                                    ; preds = %185
  %190 = icmp eq i32 %187, %142, !dbg !1190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1191
  br i1 %190, label %191, label %194, !dbg !1191

; <label>:191:                                    ; preds = %189, %185
  %192 = sub nsw i32 0, %187, !dbg !1192
  %193 = icmp slt i32 %142, %192, !dbg !1193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1194
  br i1 %193, label %194, label %196, !dbg !1194

; <label>:194:                                    ; preds = %191, %189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0)) #9, !dbg !1197
  br label %432, !dbg !1197

; <label>:195:                                    ; preds = %178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0)) #9, !dbg !1199
  br label %432

; <label>:196:                                    ; preds = %191
  %197 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 11, !dbg !1200
  store %struct.redisCommand* %183, %struct.redisCommand** %197, align 8, !dbg !1201, !tbaa !1202
  %198 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 10, !dbg !1203
  store %struct.redisCommand* %183, %struct.redisCommand** %198, align 8, !dbg !1204, !tbaa !1205
  %199 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %183, i64 0, i32 4, !dbg !1206
  %200 = load i32, i32* %199, align 8, !dbg !1206, !tbaa !1208
  %201 = and i32 %200, 64, !dbg !1209
  %202 = icmp eq i32 %201, 0, !dbg !1209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  br i1 %202, label %204, label %203, !dbg !1210

; <label>:203:                                    ; preds = %196
  call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !1211
  br label %432, !dbg !1213

; <label>:204:                                    ; preds = %196
  %205 = and i32 %200, 1, !dbg !1214
  %206 = icmp eq i32 %205, 0, !dbg !1214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1215
  br i1 %206, label %207, label %210, !dbg !1215

; <label>:207:                                    ; preds = %204
  %208 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !1216
  %209 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !1218
  br label %253, !dbg !1215

; <label>:210:                                    ; preds = %204
  %211 = call i32 @writeCommandsDeniedByDiskError() #8, !dbg !1219
  %212 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 278), align 4, !dbg !1221, !tbaa !1222
  %213 = icmp eq i32 %212, 0, !dbg !1223
  %214 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !1224
  %215 = icmp ne i32 %214, 0, !dbg !1225
  %216 = or i1 %213, %215, !dbg !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1226
  br i1 %216, label %218, label %217, !dbg !1226

; <label>:217:                                    ; preds = %210
  call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.24, i64 0, i64 0)) #9, !dbg !1227
  br label %251, !dbg !1229

; <label>:218:                                    ; preds = %210
  %219 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !1230, !tbaa !1231
  %220 = icmp eq i8* %219, null, !dbg !1232
  %221 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 211), align 4, !dbg !1233
  %222 = icmp eq i32 %221, 0, !dbg !1234
  %223 = or i1 %220, %222, !dbg !1235
  %224 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !1236
  %225 = icmp ne i32 %224, 0, !dbg !1237
  %226 = or i1 %223, %225, !dbg !1235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1235
  br i1 %226, label %237, label %227, !dbg !1235

; <label>:227:                                    ; preds = %218
  %228 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !1238, !tbaa !963
  %229 = getelementptr inbounds %struct.client, %struct.client* %228, i64 0, i32 21, !dbg !1239
  %230 = load i32, i32* %229, align 8, !dbg !1239, !tbaa !965
  %231 = and i32 %230, 2, !dbg !1240
  %232 = icmp eq i32 %231, 0, !dbg !1240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1241
  br i1 %232, label %233, label %237, !dbg !1241

; <label>:233:                                    ; preds = %227
  %234 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 24), align 8, !dbg !1242, !tbaa !1244
  %235 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %234, i64 0, i32 2, !dbg !1245
  %236 = load i8*, i8** %235, align 8, !dbg !1245, !tbaa !1046
  call void @luaPushError(%struct.lua_State* %0, i8* %236) #9, !dbg !1246
  br label %251, !dbg !1247

; <label>:237:                                    ; preds = %227, %218
  %238 = icmp eq i32 %211, 0, !dbg !1248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1249
  br i1 %238, label %252, label %239, !dbg !1249

; <label>:239:                                    ; preds = %237
  %240 = icmp eq i32 %211, 2, !dbg !1250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  br i1 %240, label %241, label %245, !dbg !1251

; <label>:241:                                    ; preds = %239
  %242 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 22), align 8, !dbg !1252, !tbaa !1254
  %243 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %242, i64 0, i32 2, !dbg !1255
  %244 = load i8*, i8** %243, align 8, !dbg !1255, !tbaa !1046
  call void @luaPushError(%struct.lua_State* %0, i8* %244) #9, !dbg !1256
  br label %250, !dbg !1257

; <label>:245:                                    ; preds = %239
  %246 = call i8* @sdsempty() #8, !dbg !1258
  %247 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 141), align 4, !dbg !1259, !tbaa !1260
  %248 = call i8* @strerror(i32 %247) #8, !dbg !1261
  %249 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %246, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0), i8* %248) #8, !dbg !1262
  call void @luaPushError(%struct.lua_State* %0, i8* %249) #9, !dbg !1264
  call void @sdsfree(i8* %249) #8, !dbg !1265
  br label %250

; <label>:250:                                    ; preds = %245, %241
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %251, !dbg !1266

; <label>:251:                                    ; preds = %250, %233, %217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1267
  br label %432

; <label>:252:                                    ; preds = %237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1268
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %253

; <label>:253:                                    ; preds = %207, %252
  %254 = phi i8* [ %209, %207 ], [ %219, %252 ], !dbg !1218
  %255 = phi i32 [ %208, %207 ], [ %224, %252 ], !dbg !1216
  %256 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !1269, !tbaa !1270
  %257 = icmp eq i64 %256, 0, !dbg !1271
  %258 = icmp ne i32 %255, 0, !dbg !1272
  %259 = or i1 %257, %258, !dbg !1273
  %260 = icmp ne i8* %254, null, !dbg !1274
  %261 = or i1 %259, %260, !dbg !1273
  %262 = xor i1 %261, true, !dbg !1273
  %263 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 277), align 8, !dbg !1275
  %264 = icmp eq i32 %263, 0, !dbg !1276
  %265 = and i1 %264, %262, !dbg !1273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1273
  br i1 %265, label %266, label %277, !dbg !1273

; <label>:266:                                    ; preds = %253
  %267 = load i32, i32* %199, align 8, !dbg !1277, !tbaa !1208
  %268 = and i32 %267, 4, !dbg !1278
  %269 = icmp eq i32 %268, 0, !dbg !1278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1279
  br i1 %269, label %277, label %270, !dbg !1279

; <label>:270:                                    ; preds = %266
  %271 = call i32 @getMaxmemoryState(i64* null, i64* null, i64* null, float* null) #8, !dbg !1280
  %272 = icmp eq i32 %271, 0, !dbg !1283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1284
  br i1 %272, label %277, label %273, !dbg !1284

; <label>:273:                                    ; preds = %270
  %274 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 29), align 8, !dbg !1285, !tbaa !1287
  %275 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %274, i64 0, i32 2, !dbg !1288
  %276 = load i8*, i8** %275, align 8, !dbg !1288, !tbaa !1046
  call void @luaPushError(%struct.lua_State* %0, i8* %276) #9, !dbg !1289
  br label %432, !dbg !1290

; <label>:277:                                    ; preds = %270, %266, %253
  %278 = load i32, i32* %199, align 8, !dbg !1291, !tbaa !1208
  %279 = trunc i32 %278 to i8, !dbg !1293
  %280 = icmp slt i8 %279, 0, !dbg !1293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1294
  br i1 %280, label %281, label %282, !dbg !1294

; <label>:281:                                    ; preds = %277
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 278), align 4, !dbg !1295, !tbaa !1222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1296
  br label %282, !dbg !1296

; <label>:282:                                    ; preds = %281, %277
  %283 = and i32 %278, 1, !dbg !1297
  %284 = icmp eq i32 %283, 0, !dbg !1297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1299
  br i1 %284, label %286, label %285, !dbg !1299

; <label>:285:                                    ; preds = %282
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 277), align 8, !dbg !1300, !tbaa !1301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1302
  br label %286, !dbg !1302

; <label>:286:                                    ; preds = %282, %285
  %287 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !1303, !tbaa !1305
  %288 = icmp eq i32 %287, 0, !dbg !1306
  %289 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !1307
  %290 = icmp ne i32 %289, 0, !dbg !1308
  %291 = or i1 %288, %290, !dbg !1309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  br i1 %291, label %314, label %292, !dbg !1309

; <label>:292:                                    ; preds = %286
  %293 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !1310, !tbaa !963
  %294 = getelementptr inbounds %struct.client, %struct.client* %293, i64 0, i32 21, !dbg !1311
  %295 = load i32, i32* %294, align 8, !dbg !1311, !tbaa !965
  %296 = and i32 %295, 2, !dbg !1312
  %297 = icmp eq i32 %296, 0, !dbg !1312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1313
  br i1 %297, label %298, label %314, !dbg !1313

; <label>:298:                                    ; preds = %292
  %299 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 21, !dbg !1314
  %300 = load i32, i32* %299, align 8, !dbg !1316, !tbaa !965
  %301 = and i32 %300, -131585, !dbg !1316
  store i32 %301, i32* %299, align 8, !dbg !1316, !tbaa !965
  %302 = load i32, i32* %294, align 8, !dbg !1317, !tbaa !965
  %303 = and i32 %302, 131584, !dbg !1318
  %304 = or i32 %303, %301, !dbg !1319
  store i32 %304, i32* %299, align 8, !dbg !1319, !tbaa !965
  %305 = load %struct.redisCommand*, %struct.redisCommand** %198, align 8, !dbg !1320, !tbaa !1205
  %306 = load %struct.redisObject**, %struct.redisObject*** %138, align 8, !dbg !1322, !tbaa !1132
  %307 = load i32, i32* %140, align 8, !dbg !1323, !tbaa !1135
  %308 = call %struct.clusterNode* @getNodeByQuery(%struct.client* nonnull %7, %struct.redisCommand* %305, %struct.redisObject** %306, i32 %307, i32* null, i32* null) #8, !dbg !1324
  %309 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !1325, !tbaa !1326
  %310 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %309, i64 0, i32 0, !dbg !1327
  %311 = load %struct.clusterNode*, %struct.clusterNode** %310, align 8, !dbg !1327, !tbaa !1328
  %312 = icmp eq %struct.clusterNode* %308, %311, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  br i1 %312, label %314, label %313, !dbg !1331

; <label>:313:                                    ; preds = %298
  call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.26, i64 0, i64 0)) #9, !dbg !1332
  br label %432, !dbg !1334

; <label>:314:                                    ; preds = %298, %292, %286
  %315 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !1335, !tbaa !1337
  %316 = icmp eq i32 %315, 0, !dbg !1338
  %317 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 280), align 4, !dbg !1339
  %318 = icmp ne i32 %317, 0, !dbg !1340
  %319 = or i1 %316, %318, !dbg !1341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1341
  br i1 %319, label %335, label %320, !dbg !1341

; <label>:320:                                    ; preds = %314
  %321 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !1342, !tbaa !963
  %322 = getelementptr inbounds %struct.client, %struct.client* %321, i64 0, i32 21, !dbg !1343
  %323 = load i32, i32* %322, align 8, !dbg !1343, !tbaa !965
  %324 = and i32 %323, 8, !dbg !1344
  %325 = icmp eq i32 %324, 0, !dbg !1344
  %326 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 277), align 8, !dbg !1345
  %327 = icmp ne i32 %326, 0, !dbg !1346
  %328 = and i1 %325, %327, !dbg !1347
  %329 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 281), align 8, !dbg !1348
  %330 = icmp ne i32 %329, 0, !dbg !1349
  %331 = and i1 %328, %330, !dbg !1347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1347
  br i1 %331, label %333, label %332, !dbg !1347

; <label>:332:                                    ; preds = %320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1351
  br label %338, !dbg !1351

; <label>:333:                                    ; preds = %320
  call void @execCommandPropagateMulti(%struct.client* %321) #8, !dbg !1352
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 280), align 4, !dbg !1354, !tbaa !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1355
  %334 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !1356, !tbaa !1337
  br label %335, !dbg !1355

; <label>:335:                                    ; preds = %314, %333
  %336 = phi i32 [ %315, %314 ], [ %334, %333 ], !dbg !1356
  %337 = icmp eq i32 %336, 0, !dbg !1358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1351
  br i1 %337, label %349, label %338, !dbg !1351

; <label>:338:                                    ; preds = %332, %335
  %339 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 281), align 8, !dbg !1359, !tbaa !1362
  %340 = and i32 %339, 1, !dbg !1363
  %341 = icmp eq i32 %340, 0, !dbg !1363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1364
  br i1 %341, label %343, label %342, !dbg !1364

; <label>:342:                                    ; preds = %338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1365
  br label %343, !dbg !1365

; <label>:343:                                    ; preds = %338, %342
  %344 = phi i32 [ 7, %342 ], [ 3, %338 ], !dbg !1366
  %345 = and i32 %339, 2, !dbg !1367
  %346 = icmp eq i32 %345, 0, !dbg !1367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1369
  br i1 %346, label %349, label %347, !dbg !1369

; <label>:347:                                    ; preds = %343
  %348 = or i32 %344, 8, !dbg !1370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1371
  br label %349, !dbg !1371

; <label>:349:                                    ; preds = %343, %335, %347
  %350 = phi i32 [ %348, %347 ], [ %344, %343 ], [ 3, %335 ], !dbg !1366
  call void @call(%struct.client* nonnull %7, i32 %350) #8, !dbg !1372
  %351 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 15, !dbg !1373
  %352 = load %struct.list*, %struct.list** %351, align 8, !dbg !1373, !tbaa !1374
  %353 = getelementptr inbounds %struct.list, %struct.list* %352, i64 0, i32 5, !dbg !1373
  %354 = load i64, i64* %353, align 8, !dbg !1373, !tbaa !1375
  %355 = icmp eq i64 %354, 0, !dbg !1377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1378
  %356 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 47
  %357 = load i32, i32* %356, align 8, !dbg !1379, !tbaa !1380
  br i1 %355, label %358, label %364, !dbg !1378

; <label>:358:                                    ; preds = %349
  %359 = icmp slt i32 %357, 16384, !dbg !1381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1382
  br i1 %359, label %360, label %364, !dbg !1382

; <label>:360:                                    ; preds = %358
  %361 = sext i32 %357 to i64, !dbg !1383
  %362 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 48, i64 %361, !dbg !1383
  store i8 0, i8* %362, align 1, !dbg !1385, !tbaa !486
  %363 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 48, i64 0, !dbg !1386
  store i32 0, i32* %356, align 8, !dbg !1388, !tbaa !1380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  br label %391, !dbg !1389

; <label>:364:                                    ; preds = %349, %358
  %365 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 48, i64 0, !dbg !1390
  %366 = sext i32 %357 to i64, !dbg !1391
  %367 = call i8* @sdsnewlen(i8* nonnull %365, i64 %366) #8, !dbg !1392
  store i32 0, i32* %356, align 8, !dbg !1393, !tbaa !1380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  %368 = load %struct.list*, %struct.list** %351, align 8, !dbg !1395, !tbaa !1374
  %369 = getelementptr inbounds %struct.list, %struct.list* %368, i64 0, i32 5, !dbg !1395
  %370 = load i64, i64* %369, align 8, !dbg !1395, !tbaa !1375
  %371 = icmp eq i64 %370, 0, !dbg !1394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  br i1 %371, label %391, label %372, !dbg !1394

; <label>:372:                                    ; preds = %364, %372
  %373 = phi %struct.list* [ %387, %372 ], [ %368, %364 ]
  %374 = phi i8* [ %383, %372 ], [ %367, %364 ]
  %375 = getelementptr inbounds %struct.list, %struct.list* %373, i64 0, i32 0, !dbg !1396
  %376 = load %struct.listNode*, %struct.listNode** %375, align 8, !dbg !1396, !tbaa !1397
  %377 = getelementptr inbounds %struct.listNode, %struct.listNode* %376, i64 0, i32 2, !dbg !1396
  %378 = bitcast i8** %377 to %struct.clientReplyBlock**, !dbg !1396
  %379 = load %struct.clientReplyBlock*, %struct.clientReplyBlock** %378, align 8, !dbg !1396, !tbaa !1398
  %380 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %379, i64 0, i32 2, i64 0, !dbg !1401
  %381 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %379, i64 0, i32 1, !dbg !1402
  %382 = load i64, i64* %381, align 8, !dbg !1402, !tbaa !1026
  %383 = call i8* @sdscatlen(i8* %374, i8* nonnull %380, i64 %382) #8, !dbg !1403
  %384 = load %struct.list*, %struct.list** %351, align 8, !dbg !1404, !tbaa !1374
  %385 = getelementptr inbounds %struct.list, %struct.list* %384, i64 0, i32 0, !dbg !1405
  %386 = load %struct.listNode*, %struct.listNode** %385, align 8, !dbg !1405, !tbaa !1397
  call void @listDelNode(%struct.list* %384, %struct.listNode* %386) #8, !dbg !1406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  %387 = load %struct.list*, %struct.list** %351, align 8, !dbg !1395, !tbaa !1374
  %388 = getelementptr inbounds %struct.list, %struct.list* %387, i64 0, i32 5, !dbg !1395
  %389 = load i64, i64* %388, align 8, !dbg !1395, !tbaa !1375
  %390 = icmp eq i64 %389, 0, !dbg !1394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  br i1 %390, label %391, label %372, !dbg !1394, !llvm.loop !1407

; <label>:391:                                    ; preds = %372, %364, %360
  %392 = phi i8* [ %363, %360 ], [ %367, %364 ], [ %383, %372 ], !dbg !1379
  %393 = icmp eq i32 %1, 0, !dbg !1409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1411
  br i1 %393, label %398, label %394, !dbg !1411

; <label>:394:                                    ; preds = %391
  %395 = load i8, i8* %392, align 1, !dbg !1412, !tbaa !486
  %396 = icmp eq i8 %395, 45, !dbg !1413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1414
  br i1 %396, label %398, label %397, !dbg !1414

; <label>:397:                                    ; preds = %394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1415
  br label %398, !dbg !1415

; <label>:398:                                    ; preds = %394, %391, %397
  %399 = phi i32 [ 0, %397 ], [ %1, %394 ], [ 0, %391 ]
  %400 = call i8* @redisProtocolToLuaType(%struct.lua_State* %0, i8* %392) #9, !dbg !1416
  %401 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !1417, !tbaa !767
  %402 = icmp ne i32 %401, 0, !dbg !1419
  %403 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !1420
  %404 = icmp ne i32 %403, 0, !dbg !1421
  %405 = and i1 %402, %404, !dbg !1422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1422
  br i1 %405, label %406, label %411, !dbg !1422

; <label>:406:                                    ; preds = %398
  %407 = bitcast i8** %3 to i8*, !dbg !1431
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %407) #7, !dbg !1431
  %408 = call i8* @sdsnew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.171, i64 0, i64 0)) #8, !dbg !1432
  store i8* %408, i8** %3, align 8, !dbg !1433, !tbaa !1003
  %409 = call i8* @ldbRedisProtocolToHuman(i8** nonnull %3, i8* %392) #8, !dbg !1434
  %410 = load i8*, i8** %3, align 8, !dbg !1435, !tbaa !1003
  call void @ldbLogWithMaxLen(i8* %410) #8, !dbg !1436
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %407) #7, !dbg !1437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1438
  br label %411, !dbg !1438

; <label>:411:                                    ; preds = %406, %398
  %412 = load i32, i32* %199, align 8, !dbg !1439, !tbaa !1208
  %413 = and i32 %412, 256, !dbg !1441
  %414 = icmp ne i32 %413, 0, !dbg !1441
  %415 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !1442
  %416 = icmp eq i32 %415, 0, !dbg !1443
  %417 = and i1 %414, %416, !dbg !1444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1444
  br i1 %417, label %418, label %426, !dbg !1444

; <label>:418:                                    ; preds = %411
  %419 = load i8, i8* %392, align 1, !dbg !1445, !tbaa !486
  %420 = icmp eq i8 %419, 42, !dbg !1446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1447
  br i1 %420, label %421, label %426, !dbg !1447

; <label>:421:                                    ; preds = %418
  %422 = getelementptr inbounds i8, i8* %392, i64 1, !dbg !1448
  %423 = load i8, i8* %422, align 1, !dbg !1448, !tbaa !486
  %424 = icmp eq i8 %423, 45, !dbg !1449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  br i1 %424, label %426, label %425, !dbg !1450

; <label>:425:                                    ; preds = %421
  call void @luaSortArray(%struct.lua_State* %0) #9, !dbg !1451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  br label %426, !dbg !1453

; <label>:426:                                    ; preds = %421, %425, %418, %411
  %427 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 48, i64 0, !dbg !1454
  %428 = icmp eq i8* %392, %427, !dbg !1456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1457
  br i1 %428, label %430, label %429, !dbg !1457

; <label>:429:                                    ; preds = %426
  call void @sdsfree(i8* %392) #8, !dbg !1458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1458
  br label %430, !dbg !1458

; <label>:430:                                    ; preds = %426, %429
  %431 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 16, !dbg !1459
  store i64 0, i64* %431, align 8, !dbg !1460, !tbaa !1461
  br label %432, !dbg !1462

; <label>:432:                                    ; preds = %251, %194, %195, %430, %313, %273, %203
  %433 = phi i32 [ %1, %194 ], [ %1, %195 ], [ %1, %203 ], [ %1, %273 ], [ %399, %430 ], [ %1, %313 ], [ %1, %251 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1463
  %434 = load i32, i32* %140, align 8, !dbg !1464, !tbaa !1135
  %435 = icmp sgt i32 %434, 0, !dbg !1465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  %436 = load %struct.redisObject**, %struct.redisObject*** %138, align 8, !dbg !1467, !tbaa !1132
  br i1 %435, label %437, label %522, !dbg !1466

; <label>:437:                                    ; preds = %432, %516
  %438 = phi i64 [ %517, %516 ], [ 0, %432 ]
  %439 = phi %struct.redisObject** [ %521, %516 ], [ %436, %432 ]
  %440 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %439, i64 %438, !dbg !1469
  %441 = load %struct.redisObject*, %struct.redisObject** %440, align 8, !dbg !1469, !tbaa !1003
  %442 = icmp ult i64 %438, 32, !dbg !1471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1472
  br i1 %442, label %443, label %515, !dbg !1472

; <label>:443:                                    ; preds = %437
  %444 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %441, i64 0, i32 1, !dbg !1473
  %445 = load i32, i32* %444, align 4, !dbg !1473, !tbaa !1474
  %446 = icmp eq i32 %445, 1, !dbg !1475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1476
  br i1 %446, label %447, label %515, !dbg !1476

; <label>:447:                                    ; preds = %443
  %448 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %441, i64 0, i32 0, !dbg !1477
  %449 = load i32, i32* %448, align 8, !dbg !1477
  %450 = lshr i32 %449, 4, !dbg !1477
  %451 = and i32 %450, 15, !dbg !1477
  %452 = icmp eq i32 %451, 0, !dbg !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1479
  br i1 %452, label %455, label %453, !dbg !1479

; <label>:453:                                    ; preds = %447
  %454 = icmp eq i32 %451, 8, !dbg !1480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1481
  br i1 %454, label %455, label %515, !dbg !1481

; <label>:455:                                    ; preds = %453, %447
  %456 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %441, i64 0, i32 2, !dbg !1482
  %457 = load i8*, i8** %456, align 8, !dbg !1482, !tbaa !1046
  %458 = getelementptr inbounds i8, i8* %457, i64 -1, !dbg !1492
  %459 = load i8, i8* %458, align 1, !dbg !1492, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1494
  %460 = trunc i8 %459 to i3, !dbg !1494
  switch i3 %460, label %479 [
    i3 -4, label %475
    i3 1, label %461
    i3 2, label %465
    i3 3, label %470
  ], !dbg !1494

; <label>:461:                                    ; preds = %455
  %462 = getelementptr inbounds i8, i8* %457, i64 -3, !dbg !1495
  %463 = load i8, i8* %462, align 1, !dbg !1497, !tbaa !486
  %464 = zext i8 %463 to i64, !dbg !1495
  br label %480, !dbg !1498

; <label>:465:                                    ; preds = %455
  %466 = getelementptr inbounds i8, i8* %457, i64 -5, !dbg !1499
  %467 = bitcast i8* %466 to i16*, !dbg !1500
  %468 = load i16, i16* %467, align 1, !dbg !1500, !tbaa !1085
  %469 = zext i16 %468 to i64, !dbg !1499
  br label %480, !dbg !1501

; <label>:470:                                    ; preds = %455
  %471 = getelementptr inbounds i8, i8* %457, i64 -9, !dbg !1502
  %472 = bitcast i8* %471 to i32*, !dbg !1503
  %473 = load i32, i32* %472, align 1, !dbg !1503, !tbaa !979
  %474 = zext i32 %473 to i64, !dbg !1502
  br label %480, !dbg !1504

; <label>:475:                                    ; preds = %455
  %476 = getelementptr inbounds i8, i8* %457, i64 -17, !dbg !1505
  %477 = bitcast i8* %476 to i64*, !dbg !1506
  %478 = load i64, i64* %477, align 1, !dbg !1506, !tbaa !1026
  br label %480, !dbg !1507

; <label>:479:                                    ; preds = %455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1510
  br label %483, !dbg !1510

; <label>:480:                                    ; preds = %461, %465, %470, %475
  %481 = phi i64 [ %478, %475 ], [ %474, %470 ], [ %469, %465 ], [ %464, %461 ], !dbg !1511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1509
  %482 = icmp ult i64 %481, 65, !dbg !1512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1510
  br i1 %482, label %483, label %515, !dbg !1510

; <label>:483:                                    ; preds = %479, %480
  %484 = getelementptr inbounds [32 x %struct.redisObject*], [32 x %struct.redisObject*]* @luaRedisGenericCommand.cached_objects, i64 0, i64 %438, !dbg !1514
  %485 = load %struct.redisObject*, %struct.redisObject** %484, align 8, !dbg !1514, !tbaa !1003
  %486 = icmp eq %struct.redisObject* %485, null, !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1516
  br i1 %486, label %488, label %487, !dbg !1516

; <label>:487:                                    ; preds = %483
  call void @decrRefCount(%struct.redisObject* nonnull %485) #8, !dbg !1517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1517
  br label %488, !dbg !1517

; <label>:488:                                    ; preds = %483, %487
  store %struct.redisObject* %441, %struct.redisObject** %484, align 8, !dbg !1518, !tbaa !1003
  %489 = load i8, i8* %458, align 1, !dbg !1525, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  %490 = trunc i8 %489 to i3, !dbg !1527
  switch i3 %490, label %512 [
    i3 0, label %491
    i3 1, label %494
    i3 2, label %498
    i3 3, label %503
    i3 -4, label %508
  ], !dbg !1527

; <label>:491:                                    ; preds = %488
  %492 = lshr i8 %489, 3, !dbg !1528
  %493 = zext i8 %492 to i64, !dbg !1528
  br label %512, !dbg !1530

; <label>:494:                                    ; preds = %488
  %495 = getelementptr inbounds i8, i8* %457, i64 -2, !dbg !1531
  %496 = load i8, i8* %495, align 1, !dbg !1531, !tbaa !486
  %497 = zext i8 %496 to i64, !dbg !1532
  br label %512, !dbg !1533

; <label>:498:                                    ; preds = %488
  %499 = getelementptr inbounds i8, i8* %457, i64 -3, !dbg !1534
  %500 = bitcast i8* %499 to i16*, !dbg !1534
  %501 = load i16, i16* %500, align 1, !dbg !1534, !tbaa !1085
  %502 = zext i16 %501 to i64, !dbg !1535
  br label %512, !dbg !1536

; <label>:503:                                    ; preds = %488
  %504 = getelementptr inbounds i8, i8* %457, i64 -5, !dbg !1537
  %505 = bitcast i8* %504 to i32*, !dbg !1537
  %506 = load i32, i32* %505, align 1, !dbg !1537, !tbaa !979
  %507 = zext i32 %506 to i64, !dbg !1538
  br label %512, !dbg !1539

; <label>:508:                                    ; preds = %488
  %509 = getelementptr inbounds i8, i8* %457, i64 -9, !dbg !1540
  %510 = bitcast i8* %509 to i64*, !dbg !1540
  %511 = load i64, i64* %510, align 1, !dbg !1540, !tbaa !1026
  br label %512, !dbg !1541

; <label>:512:                                    ; preds = %488, %491, %494, %498, %503, %508
  %513 = phi i64 [ %511, %508 ], [ %507, %503 ], [ %502, %498 ], [ %497, %494 ], [ %493, %491 ], [ 0, %488 ], !dbg !1542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1544
  %514 = getelementptr inbounds [32 x i64], [32 x i64]* @luaRedisGenericCommand.cached_objects_len, i64 0, i64 %438, !dbg !1545
  store i64 %513, i64* %514, align 8, !dbg !1546, !tbaa !1026
  br label %516, !dbg !1547

; <label>:515:                                    ; preds = %480, %453, %443, %437
  call void @decrRefCount(%struct.redisObject* %441) #8, !dbg !1548
  br label %516

; <label>:516:                                    ; preds = %515, %512
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %517 = add nuw nsw i64 %438, 1, !dbg !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1551
  %518 = load i32, i32* %140, align 8, !dbg !1464, !tbaa !1135
  %519 = sext i32 %518 to i64, !dbg !1465
  %520 = icmp slt i64 %517, %519, !dbg !1465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  %521 = load %struct.redisObject**, %struct.redisObject*** %138, align 8, !dbg !1467, !tbaa !1132
  br i1 %520, label %437, label %522, !dbg !1466, !llvm.loop !1552

; <label>:522:                                    ; preds = %516, %432
  %523 = phi %struct.redisObject** [ %436, %432 ], [ %521, %516 ], !dbg !1467
  %524 = load %struct.redisObject**, %struct.redisObject*** @luaRedisGenericCommand.argv, align 8, !dbg !1554, !tbaa !1003
  %525 = icmp eq %struct.redisObject** %523, %524, !dbg !1555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1556
  br i1 %525, label %528, label %526, !dbg !1556

; <label>:526:                                    ; preds = %522
  %527 = bitcast %struct.redisObject** %523 to i8*, !dbg !1557
  call void @zfree(i8* %527) #8, !dbg !1559
  store %struct.redisObject** null, %struct.redisObject*** @luaRedisGenericCommand.argv, align 8, !dbg !1560, !tbaa !1003
  store i32 0, i32* @luaRedisGenericCommand.argv_size, align 4, !dbg !1561, !tbaa !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1562
  br label %528, !dbg !1562

; <label>:528:                                    ; preds = %522, %526
  %529 = icmp eq i32 %433, 0, !dbg !1563
  %530 = load i32, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !1366, !tbaa !979
  %531 = add nsw i32 %530, -1, !dbg !1366
  store i32 %531, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !1366, !tbaa !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  br i1 %529, label %534, label %532, !dbg !1565

; <label>:532:                                    ; preds = %528
  call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1569
  call void @lua_gettable(%struct.lua_State* %0, i32 -2) #8, !dbg !1570
  %533 = call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !1571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1572
  br label %534, !dbg !1573

; <label>:534:                                    ; preds = %528, %134, %130, %34, %30, %532, %27
  %535 = phi i32 [ 1, %27 ], [ %533, %532 ], [ %35, %34 ], [ 1, %30 ], [ %135, %134 ], [ 1, %130 ], [ 1, %528 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1574
  ret i32 %535, !dbg !1574
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
define dso_local void @ldbLogRedisReply(i8*) local_unnamed_addr #0 !dbg !1424 {
  %2 = alloca i8*, align 8
  %3 = bitcast i8** %2 to i8*, !dbg !1576
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #7, !dbg !1576
  %4 = tail call i8* @sdsnew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.171, i64 0, i64 0)) #8, !dbg !1577
  store i8* %4, i8** %2, align 8, !dbg !1578, !tbaa !1003
  %5 = call i8* @ldbRedisProtocolToHuman(i8** nonnull %2, i8* %0) #9, !dbg !1579
  %6 = load i8*, i8** %2, align 8, !dbg !1580, !tbaa !1003
  tail call void @ldbLogWithMaxLen(i8* %6) #9, !dbg !1581
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #7, !dbg !1582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1582
  ret void, !dbg !1582
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisCallCommand(%struct.lua_State*) #0 !dbg !1583 {
  %2 = tail call i32 @luaRedisGenericCommand(%struct.lua_State* %0, i32 1) #9, !dbg !1587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1588
  ret i32 %2, !dbg !1588
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisPCallCommand(%struct.lua_State*) #0 !dbg !1589 {
  %2 = tail call i32 @luaRedisGenericCommand(%struct.lua_State* %0, i32 0) #9, !dbg !1593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1594
  ret i32 %2, !dbg !1594
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisSha1hexCommand(%struct.lua_State*) #0 !dbg !1595 {
  %2 = alloca %struct.SHA1_CTX, align 4
  %3 = alloca [20 x i8], align 16
  %4 = alloca [41 x i8], align 16
  %5 = alloca i64, align 8
  %6 = tail call i32 @lua_gettop(%struct.lua_State* %0) #8, !dbg !1605
  %7 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 0, !dbg !1607
  call void @llvm.lifetime.start.p0i8(i64 41, i8* nonnull %7) #7, !dbg !1607
  %8 = bitcast i64* %5 to i8*, !dbg !1609
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !1609
  %9 = icmp eq i32 %6, 1, !dbg !1610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1612
  br i1 %9, label %12, label %10, !dbg !1612

; <label>:10:                                     ; preds = %1
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !1613
  %11 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !1615
  br label %38, !dbg !1616

; <label>:12:                                     ; preds = %1
  %13 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* nonnull %5) #8, !dbg !1618
  %14 = load i64, i64* %5, align 8, !dbg !1620, !tbaa !1026
  %15 = bitcast %struct.SHA1_CTX* %2 to i8*, !dbg !1624
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %15) #7, !dbg !1624
  %16 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0, !dbg !1625
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %16) #7, !dbg !1625
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %2) #8, !dbg !1627
  %17 = trunc i64 %14 to i32, !dbg !1628
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %2, i8* %13, i32 %17) #8, !dbg !1629
  call void @SHA1Final(i8* nonnull %16, %struct.SHA1_CTX* nonnull %2) #8, !dbg !1630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1633
  br label %18, !dbg !1633

; <label>:18:                                     ; preds = %18, %12
  %19 = phi i64 [ 0, %12 ], [ %34, %18 ]
  %20 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 %19, !dbg !1634
  %21 = load i8, i8* %20, align 1, !dbg !1634, !tbaa !486
  %22 = lshr i8 %21, 4, !dbg !1635
  %23 = zext i8 %22 to i64, !dbg !1636
  %24 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %23, !dbg !1636
  %25 = load i8, i8* %24, align 1, !dbg !1636, !tbaa !486
  %26 = shl nuw nsw i64 %19, 1, !dbg !1637
  %27 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 %26, !dbg !1638
  store i8 %25, i8* %27, align 2, !dbg !1639, !tbaa !486
  %28 = and i8 %21, 15, !dbg !1640
  %29 = zext i8 %28 to i64, !dbg !1641
  %30 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %29, !dbg !1641
  %31 = load i8, i8* %30, align 1, !dbg !1641, !tbaa !486
  %32 = or i64 %26, 1, !dbg !1642
  %33 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 %32, !dbg !1643
  store i8 %31, i8* %33, align 1, !dbg !1644, !tbaa !486
  %34 = add nuw nsw i64 %19, 1, !dbg !1645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1633
  %35 = icmp eq i64 %34, 20, !dbg !1647
  br i1 %35, label %36, label %18, !dbg !1633, !llvm.loop !502

; <label>:36:                                     ; preds = %18
  %37 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 40, !dbg !1648
  store i8 0, i8* %37, align 8, !dbg !1649, !tbaa !486
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %16) #7, !dbg !1650
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %15) #7, !dbg !1650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1650
  call void @lua_pushstring(%struct.lua_State* %0, i8* nonnull %7) #8, !dbg !1651
  br label %38, !dbg !1652

; <label>:38:                                     ; preds = %36, %10
  %39 = phi i32 [ %11, %10 ], [ 1, %36 ], !dbg !1653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1654
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !1655
  call void @llvm.lifetime.end.p0i8(i64 41, i8* nonnull %7) #7, !dbg !1655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1655
  ret i32 %39, !dbg !1655
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisReturnSingleFieldTable(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !1656 {
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #8, !dbg !1664
  %4 = icmp eq i32 %3, 1, !dbg !1666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1667
  br i1 %4, label %5, label %8, !dbg !1667

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #8, !dbg !1668
  %7 = icmp eq i32 %6, 4, !dbg !1669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1670
  br i1 %7, label %9, label %8, !dbg !1670

; <label>:8:                                      ; preds = %5, %2
  tail call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !1671
  br label %10, !dbg !1673

; <label>:9:                                      ; preds = %5
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #8, !dbg !1674
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %1) #8, !dbg !1675
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -3) #8, !dbg !1676
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #8, !dbg !1677
  br label %10, !dbg !1678

; <label>:10:                                     ; preds = %9, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1680
  ret i32 1, !dbg !1680
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisErrorReplyCommand(%struct.lua_State*) #0 !dbg !1681 {
  %2 = tail call i32 @luaRedisReturnSingleFieldTable(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1686
  ret i32 1, !dbg !1686
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisStatusReplyCommand(%struct.lua_State*) #0 !dbg !1687 {
  %2 = tail call i32 @luaRedisReturnSingleFieldTable(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1692
  ret i32 1, !dbg !1692
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisReplicateCommandsCommand(%struct.lua_State*) #0 !dbg !1693 {
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 277), align 8, !dbg !1697, !tbaa !1301
  %3 = icmp eq i32 %2, 0, !dbg !1699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1700
  br i1 %3, label %5, label %4, !dbg !1700

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #8, !dbg !1701
  br label %7, !dbg !1703

; <label>:5:                                      ; preds = %1
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !1704, !tbaa !1337
  %6 = tail call i32 @rand() #8, !dbg !1706
  tail call void @redisSrand48(i32 %6) #8, !dbg !1707
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #8, !dbg !1708
  br label %7

; <label>:7:                                      ; preds = %5, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1709
  ret i32 1, !dbg !1709
}

; Function Attrs: noredzone
declare dso_local void @redisSrand48(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @rand() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisBreakpointCommand(%struct.lua_State*) #0 !dbg !1710 {
  %2 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !1714, !tbaa !767
  %3 = icmp eq i32 %2, 0, !dbg !1716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1717
  br i1 %3, label %5, label %4, !dbg !1717

; <label>:4:                                      ; preds = %1
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !1718, !tbaa !1720
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #8, !dbg !1721
  br label %6, !dbg !1722

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #8, !dbg !1723
  br label %6

; <label>:6:                                      ; preds = %5, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1725
  ret i32 1, !dbg !1725
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisDebugCommand(%struct.lua_State*) #0 !dbg !1726 {
  %2 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !1732, !tbaa !767
  %3 = icmp eq i32 %2, 0, !dbg !1734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1735
  br i1 %3, label %29, label %4, !dbg !1735

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #8, !dbg !1736
  %6 = tail call i8* @sdsempty() #8, !dbg !1738
  %7 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !1739, !tbaa !1740
  %8 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 %7) #8, !dbg !1741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1743
  %9 = icmp eq i32 %5, 0, !dbg !1743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1743
  br i1 %9, label %25, label %10, !dbg !1743

; <label>:10:                                     ; preds = %4
  %11 = add nsw i32 %5, -1, !dbg !1744
  %12 = sub i32 0, %5, !dbg !1745
  %13 = tail call i8* @ldbCatStackValueRec(i8* %8, %struct.lua_State* %0, i32 %12, i32 0) #8, !dbg !1758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1759
  %14 = icmp eq i32 %11, 0, !dbg !1760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1762
  br i1 %14, label %23, label %15, !dbg !1762

; <label>:15:                                     ; preds = %10, %15
  %16 = phi i8* [ %21, %15 ], [ %13, %10 ]
  %17 = phi i32 [ %19, %15 ], [ %11, %10 ]
  %18 = tail call i8* @sdscatlen(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i64 2) #8, !dbg !1763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1743
  %19 = add nsw i32 %17, -1, !dbg !1744
  %20 = sub i32 0, %17, !dbg !1745
  %21 = tail call i8* @ldbCatStackValueRec(i8* %18, %struct.lua_State* %0, i32 %20, i32 0) #8, !dbg !1758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1759
  %22 = icmp eq i32 %19, 0, !dbg !1760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1762
  br i1 %22, label %23, label %15, !dbg !1762

; <label>:23:                                     ; preds = %15, %10
  %24 = phi i8* [ %13, %10 ], [ %21, %15 ], !dbg !1758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1743
  br label %25, !dbg !1765

; <label>:25:                                     ; preds = %23, %4
  %26 = phi i8* [ %8, %4 ], [ %24, %23 ], !dbg !1767
  %27 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !1765, !tbaa !787
  %28 = tail call %struct.list* @listAddNodeTail(%struct.list* %27, i8* %26) #8, !dbg !1769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1770
  br label %29

; <label>:29:                                     ; preds = %1, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1771
  ret i32 0, !dbg !1771
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ldbCatStackValue(i8*, %struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1748 {
  %4 = tail call i8* @ldbCatStackValueRec(i8* %0, %struct.lua_State* %1, i32 %2, i32 0) #9, !dbg !1775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1776
  ret i8* %4, !dbg !1776
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisSetReplCommand(%struct.lua_State*) #0 !dbg !1777 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #8, !dbg !1783
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !1785, !tbaa !1337
  %4 = icmp eq i32 %3, 0, !dbg !1787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1788
  br i1 %4, label %5, label %7, !dbg !1788

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.31, i64 0, i64 0)) #8, !dbg !1789
  %6 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !1791
  br label %18, !dbg !1792

; <label>:7:                                      ; preds = %1
  %8 = icmp eq i32 %2, 1, !dbg !1793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1795
  br i1 %8, label %11, label %9, !dbg !1795

; <label>:9:                                      ; preds = %7
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !1796
  %10 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !1798
  br label %18, !dbg !1799

; <label>:11:                                     ; preds = %7
  %12 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #8, !dbg !1800
  %13 = fptosi double %12 to i32, !dbg !1800
  %14 = icmp ugt i32 %13, 3, !dbg !1802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1804
  br i1 %14, label %15, label %17, !dbg !1804

; <label>:15:                                     ; preds = %11
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.33, i64 0, i64 0)) #8, !dbg !1805
  %16 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !1807
  br label %18, !dbg !1808

; <label>:17:                                     ; preds = %11
  store i32 %13, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 281), align 8, !dbg !1809, !tbaa !1362
  br label %18, !dbg !1810

; <label>:18:                                     ; preds = %17, %15, %9, %5
  %19 = phi i32 [ %6, %5 ], [ %10, %9 ], [ %16, %15 ], [ 0, %17 ], !dbg !1811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1813
  ret i32 %19, !dbg !1813
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaLogCommand(%struct.lua_State*) #0 !dbg !1814 {
  %2 = alloca i64, align 8
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #8, !dbg !1827
  %4 = icmp slt i32 %3, 2, !dbg !1829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1831
  br i1 %4, label %5, label %7, !dbg !1831

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.34, i64 0, i64 0)) #8, !dbg !1832
  %6 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !1834
  br label %41, !dbg !1835

; <label>:7:                                      ; preds = %1
  %8 = sub nsw i32 0, %3, !dbg !1836
  %9 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %8) #8, !dbg !1838
  %10 = icmp eq i32 %9, 0, !dbg !1838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1839
  br i1 %10, label %11, label %13, !dbg !1839

; <label>:11:                                     ; preds = %7
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.35, i64 0, i64 0)) #8, !dbg !1840
  %12 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !1842
  br label %41, !dbg !1843

; <label>:13:                                     ; preds = %7
  %14 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 %8) #8, !dbg !1844
  %15 = fptosi double %14 to i32, !dbg !1844
  %16 = icmp ugt i32 %15, 3, !dbg !1846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1846
  br i1 %16, label %17, label %19, !dbg !1846

; <label>:17:                                     ; preds = %13
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0)) #8, !dbg !1848
  %18 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !1850
  br label %41, !dbg !1851

; <label>:19:                                     ; preds = %13
  %20 = tail call i8* @sdsempty() #8, !dbg !1852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  %21 = bitcast i64* %2 to i8*
  br label %22, !dbg !1856

; <label>:22:                                     ; preds = %36, %19
  %23 = phi i8* [ %20, %19 ], [ %37, %36 ]
  %24 = phi i32 [ 1, %19 ], [ %38, %36 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #7, !dbg !1857
  %25 = sub i32 %24, %3, !dbg !1858
  %26 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %25, i64* nonnull %2) #8, !dbg !1860
  %27 = icmp eq i8* %26, null, !dbg !1862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1864
  br i1 %27, label %36, label %28, !dbg !1864

; <label>:28:                                     ; preds = %22
  %29 = icmp eq i32 %24, 1, !dbg !1865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1868
  br i1 %29, label %32, label %30, !dbg !1868

; <label>:30:                                     ; preds = %28
  %31 = call i8* @sdscatlen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #8, !dbg !1869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  br label %32, !dbg !1870

; <label>:32:                                     ; preds = %28, %30
  %33 = phi i8* [ %31, %30 ], [ %23, %28 ], !dbg !1871
  %34 = load i64, i64* %2, align 8, !dbg !1872, !tbaa !1026
  %35 = call i8* @sdscatlen(i8* %33, i8* nonnull %26, i64 %34) #8, !dbg !1873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1874
  br label %36, !dbg !1874

; <label>:36:                                     ; preds = %22, %32
  %37 = phi i8* [ %35, %32 ], [ %23, %22 ], !dbg !1871
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #7, !dbg !1875
  %38 = add nuw nsw i32 %24, 1, !dbg !1876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  %39 = icmp eq i32 %38, %3, !dbg !1878
  br i1 %39, label %40, label %22, !dbg !1856, !llvm.loop !1879

; <label>:40:                                     ; preds = %36
  call void @serverLogRaw(i32 %15, i8* %37) #8, !dbg !1881
  call void @sdsfree(i8* %37) #8, !dbg !1882
  br label %41, !dbg !1883

; <label>:41:                                     ; preds = %40, %17, %11, %5
  %42 = phi i32 [ %6, %5 ], [ %18, %17 ], [ 0, %40 ], [ %12, %11 ], !dbg !1884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1886
  ret i32 %42, !dbg !1886
}

; Function Attrs: noredzone
declare dso_local i32 @lua_isnumber(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @serverLogRaw(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaLoadLib(%struct.lua_State*, i8*, i32 (%struct.lua_State*)*) local_unnamed_addr #0 !dbg !1887 {
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* %2, i32 0) #8, !dbg !1899
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %1) #8, !dbg !1900
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1902
  ret void, !dbg !1902
}

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaLoadLibraries(%struct.lua_State*) local_unnamed_addr #0 !dbg !1903 {
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_base, i32 0) #8, !dbg !1911
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)) #8, !dbg !1912
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1913
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1914
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_table, i32 0) #8, !dbg !1919
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !1920
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1921
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1922
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_string, i32 0) #8, !dbg !1927
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !1928
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1930
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_math, i32 0) #8, !dbg !1935
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !1936
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1938
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_debug, i32 0) #8, !dbg !1943
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !1944
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1946
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_cjson, i32 0) #8, !dbg !1951
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0)) #8, !dbg !1952
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1954
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_struct, i32 0) #8, !dbg !1959
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0)) #8, !dbg !1960
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1962
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_cmsgpack, i32 0) #8, !dbg !1967
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0)) #8, !dbg !1968
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1970
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_bit, i32 0) #8, !dbg !1975
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0)) #8, !dbg !1976
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #8, !dbg !1977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1979
  ret void, !dbg !1979
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
define dso_local void @luaRemoveUnsupportedFunctions(%struct.lua_State*) local_unnamed_addr #0 !dbg !1980 {
  tail call void @lua_pushnil(%struct.lua_State* %0) #8, !dbg !1984
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0)) #8, !dbg !1985
  tail call void @lua_pushnil(%struct.lua_State* %0) #8, !dbg !1986
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !1987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1988
  ret void, !dbg !1988
}

; Function Attrs: noredzone
declare dso_local void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scriptingEnableGlobalsProtection(%struct.lua_State*) local_unnamed_addr #0 !dbg !1989 {
  %2 = alloca [32 x i8*], align 16
  %3 = bitcast [32 x i8*]* %2 to i8*, !dbg !1997
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #7, !dbg !1997
  %4 = tail call i8* @sdsempty() #8, !dbg !1999
  %5 = bitcast [32 x i8*]* %2 to <2 x i8*>*, !dbg !2002
  store <2 x i8*> <i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0)>, <2 x i8*>* %5, align 16, !dbg !2002, !tbaa !1003
  %6 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 2, !dbg !2003
  %7 = bitcast i8** %6 to <2 x i8*>*, !dbg !2004
  store <2 x i8*> <i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i64 0, i64 0)>, <2 x i8*>* %7, align 16, !dbg !2004, !tbaa !1003
  %8 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 4, !dbg !2005
  %9 = bitcast i8** %8 to <2 x i8*>*, !dbg !2006
  store <2 x i8*> <i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.52, i64 0, i64 0)>, <2 x i8*>* %9, align 16, !dbg !2006, !tbaa !1003
  %10 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 6, !dbg !2007
  %11 = bitcast i8** %10 to <2 x i8*>*, !dbg !2008
  store <2 x i8*> <i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.54, i64 0, i64 0)>, <2 x i8*>* %11, align 16, !dbg !2008, !tbaa !1003
  %12 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 8, !dbg !2009
  %13 = bitcast i8** %12 to <2 x i8*>*, !dbg !2010
  store <2 x i8*> <i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0)>, <2 x i8*>* %13, align 16, !dbg !2010, !tbaa !1003
  %14 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 10, !dbg !2011
  %15 = bitcast i8** %14 to <2 x i8*>*, !dbg !2012
  store <2 x i8*> <i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0)>, <2 x i8*>* %15, align 16, !dbg !2012, !tbaa !1003
  %16 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 12, !dbg !2013
  %17 = bitcast i8** %16 to <2 x i8*>*, !dbg !2014
  store <2 x i8*> <i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.60, i64 0, i64 0)>, <2 x i8*>* %17, align 16, !dbg !2014, !tbaa !1003
  %18 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 14, !dbg !2015
  %19 = bitcast i8** %18 to <2 x i8*>*, !dbg !2016
  store <2 x i8*> <i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0)>, <2 x i8*>* %19, align 16, !dbg !2016, !tbaa !1003
  %20 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 16, !dbg !2017
  %21 = bitcast i8** %20 to <2 x i8*>*, !dbg !2018
  store <2 x i8*> <i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0)>, <2 x i8*>* %21, align 16, !dbg !2018, !tbaa !1003
  %22 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 18, !dbg !2019
  %23 = bitcast i8** %22 to <2 x i8*>*, !dbg !2020
  store <2 x i8*> <i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i64 0, i64 0), i8* null>, <2 x i8*>* %23, align 16, !dbg !2020, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2023
  br label %24, !dbg !2024

; <label>:24:                                     ; preds = %1, %24
  %25 = phi i64 [ 0, %1 ], [ %30, %24 ]
  %26 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), %1 ], [ %32, %24 ]
  %27 = phi i8* [ %4, %1 ], [ %29, %24 ]
  %28 = tail call i64 @strlen(i8* nonnull %26) #8, !dbg !2024
  %29 = tail call i8* @sdscatlen(i8* %27, i8* nonnull %26, i64 %28) #8, !dbg !2026
  %30 = add nuw i64 %25, 1, !dbg !2027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2028
  %31 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 %30, !dbg !2029
  %32 = load i8*, i8** %31, align 8, !dbg !2029, !tbaa !1003
  %33 = icmp eq i8* %32, null, !dbg !2030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2023
  br i1 %33, label %34, label %24, !dbg !2023, !llvm.loop !2031

; <label>:34:                                     ; preds = %24
  %35 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !2035
  %36 = load i8, i8* %35, align 1, !dbg !2035, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2037
  %37 = trunc i8 %36 to i3, !dbg !2037
  switch i3 %37, label %59 [
    i3 0, label %38
    i3 1, label %41
    i3 2, label %45
    i3 3, label %50
    i3 -4, label %55
  ], !dbg !2037

; <label>:38:                                     ; preds = %34
  %39 = lshr i8 %36, 3, !dbg !2038
  %40 = zext i8 %39 to i64, !dbg !2038
  br label %59, !dbg !2039

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds i8, i8* %29, i64 -3, !dbg !2040
  %43 = load i8, i8* %42, align 1, !dbg !2041, !tbaa !486
  %44 = zext i8 %43 to i64, !dbg !2040
  br label %59, !dbg !2042

; <label>:45:                                     ; preds = %34
  %46 = getelementptr inbounds i8, i8* %29, i64 -5, !dbg !2043
  %47 = bitcast i8* %46 to i16*, !dbg !2044
  %48 = load i16, i16* %47, align 1, !dbg !2044, !tbaa !1085
  %49 = zext i16 %48 to i64, !dbg !2043
  br label %59, !dbg !2045

; <label>:50:                                     ; preds = %34
  %51 = getelementptr inbounds i8, i8* %29, i64 -9, !dbg !2046
  %52 = bitcast i8* %51 to i32*, !dbg !2047
  %53 = load i32, i32* %52, align 1, !dbg !2047, !tbaa !979
  %54 = zext i32 %53 to i64, !dbg !2046
  br label %59, !dbg !2048

; <label>:55:                                     ; preds = %34
  %56 = getelementptr inbounds i8, i8* %29, i64 -17, !dbg !2049
  %57 = bitcast i8* %56 to i64*, !dbg !2050
  %58 = load i64, i64* %57, align 1, !dbg !2050, !tbaa !1026
  br label %59, !dbg !2051

; <label>:59:                                     ; preds = %34, %38, %41, %45, %50, %55
  %60 = phi i64 [ %58, %55 ], [ %54, %50 ], [ %49, %45 ], [ %44, %41 ], [ %40, %38 ], [ 0, %34 ], !dbg !2052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2054
  %61 = tail call i32 @luaL_loadbuffer(%struct.lua_State* %0, i8* nonnull %29, i64 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i64 0, i64 0)) #8, !dbg !2055
  %62 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 0, i32 0, i32 0) #8, !dbg !2056
  tail call void @sdsfree(i8* nonnull %29) #8, !dbg !2057
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #7, !dbg !2058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2058
  ret void, !dbg !2058
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @luaL_loadbuffer(%struct.lua_State*, i8*, i64, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scriptingInit(i32) local_unnamed_addr #0 !dbg !2059 {
  %2 = tail call %struct.lua_State* @luaL_newstate() #8, !dbg !2068
  %3 = icmp eq i32 %0, 0, !dbg !2070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2072
  br i1 %3, label %9, label %4, !dbg !2072

; <label>:4:                                      ; preds = %1
  store <2 x %struct.client*> zeroinitializer, <2 x %struct.client*>* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 271) to <2 x %struct.client*>*), align 8, !dbg !2073, !tbaa !1003
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !2075, !tbaa !2076
  store i32 -1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !2077, !tbaa !2082
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !2083, !tbaa !767
  %5 = tail call %struct.list* @listCreate() #8, !dbg !2084
  store %struct.list* %5, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !2085, !tbaa !787
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 3, !dbg !2086
  store void (i8*)* @sdsfree, void (i8*)** %6, align 8, !dbg !2086, !tbaa !2087
  %7 = tail call %struct.list* @listCreate() #8, !dbg !2088
  store %struct.list* %7, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !2089, !tbaa !2090
  store i8** null, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !2091, !tbaa !2092
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !2093, !tbaa !2094
  %8 = tail call i8* @sdsempty() #8, !dbg !2095
  store i8* %8, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !2096, !tbaa !2097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2098
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2099
  br label %9, !dbg !2099

; <label>:9:                                      ; preds = %1, %4
  tail call void @luaLoadLibraries(%struct.lua_State* %2) #9, !dbg !2100
  tail call void @lua_pushnil(%struct.lua_State* %2) #8, !dbg !2103
  tail call void @lua_setfield(%struct.lua_State* %2, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0)) #8, !dbg !2104
  tail call void @lua_pushnil(%struct.lua_State* %2) #8, !dbg !2105
  tail call void @lua_setfield(%struct.lua_State* %2, i32 -10002, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !2106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2107
  %10 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @shaScriptObjectDictType, i8* null) #8, !dbg !2108
  store %struct.dict* %10, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !2109, !tbaa !2110
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !2111, !tbaa !2112
  tail call void @lua_createtable(%struct.lua_State* %2, i32 0, i32 0) #8, !dbg !2113
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0)) #8, !dbg !2114
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisCallCommand, i32 0) #8, !dbg !2115
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2116
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0)) #8, !dbg !2117
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisPCallCommand, i32 0) #8, !dbg !2118
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2119
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0)) #8, !dbg !2120
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaLogCommand, i32 0) #8, !dbg !2121
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2122
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i64 0, i64 0)) #8, !dbg !2123
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 0.000000e+00) #8, !dbg !2124
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2125
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0)) #8, !dbg !2126
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 1.000000e+00) #8, !dbg !2127
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2128
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2129
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 2.000000e+00) #8, !dbg !2130
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2131
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0)) #8, !dbg !2132
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 3.000000e+00) #8, !dbg !2133
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2134
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i64 0, i64 0)) #8, !dbg !2135
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisSha1hexCommand, i32 0) #8, !dbg !2136
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2137
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0)) #8, !dbg !2138
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisErrorReplyCommand, i32 0) #8, !dbg !2139
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2140
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i64 0, i64 0)) #8, !dbg !2141
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisStatusReplyCommand, i32 0) #8, !dbg !2142
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2143
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i64 0, i64 0)) #8, !dbg !2144
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisReplicateCommandsCommand, i32 0) #8, !dbg !2145
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2146
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0)) #8, !dbg !2147
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisSetReplCommand, i32 0) #8, !dbg !2148
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2149
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i64 0, i64 0)) #8, !dbg !2150
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 0.000000e+00) #8, !dbg !2151
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2152
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i64 0, i64 0)) #8, !dbg !2153
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 1.000000e+00) #8, !dbg !2154
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2155
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i64 0, i64 0)) #8, !dbg !2156
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 2.000000e+00) #8, !dbg !2157
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2158
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i64 0, i64 0)) #8, !dbg !2159
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 2.000000e+00) #8, !dbg !2160
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2161
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i64 0, i64 0)) #8, !dbg !2162
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 3.000000e+00) #8, !dbg !2163
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2164
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i64 0, i64 0)) #8, !dbg !2165
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisBreakpointCommand, i32 0) #8, !dbg !2166
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2167
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !2168
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisDebugCommand, i32 0) #8, !dbg !2169
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2170
  tail call void @lua_setfield(%struct.lua_State* %2, i32 -10002, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0)) #8, !dbg !2171
  tail call void @lua_getfield(%struct.lua_State* %2, i32 -10002, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !2172
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0)) #8, !dbg !2173
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @redis_math_random, i32 0) #8, !dbg !2174
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2175
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i64 0, i64 0)) #8, !dbg !2176
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @redis_math_randomseed, i32 0) #8, !dbg !2177
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #8, !dbg !2178
  tail call void @lua_setfield(%struct.lua_State* %2, i32 -10002, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !2179
  %11 = tail call i64 @strlen(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.86, i64 0, i64 0)) #8, !dbg !2180
  %12 = tail call i32 @luaL_loadbuffer(%struct.lua_State* %2, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.86, i64 0, i64 0), i64 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i64 0, i64 0)) #8, !dbg !2181
  %13 = tail call i32 @lua_pcall(%struct.lua_State* %2, i32 0, i32 0, i32 0) #8, !dbg !2182
  %14 = tail call i64 @strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.88, i64 0, i64 0)) #8, !dbg !2183
  %15 = tail call i32 @luaL_loadbuffer(%struct.lua_State* %2, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.88, i64 0, i64 0), i64 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.89, i64 0, i64 0)) #8, !dbg !2184
  %16 = tail call i32 @lua_pcall(%struct.lua_State* %2, i32 0, i32 0, i32 0) #8, !dbg !2185
  %17 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 271), align 8, !dbg !2186, !tbaa !950
  %18 = icmp eq %struct.client* %17, null, !dbg !2188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2189
  br i1 %18, label %19, label %24, !dbg !2189

; <label>:19:                                     ; preds = %9
  %20 = tail call %struct.client* @createClient(i32 -1) #8, !dbg !2190
  store %struct.client* %20, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 271), align 8, !dbg !2192, !tbaa !950
  %21 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 21, !dbg !2193
  %22 = load i32, i32* %21, align 8, !dbg !2194, !tbaa !965
  %23 = or i32 %22, 256, !dbg !2194
  store i32 %23, i32* %21, align 8, !dbg !2194, !tbaa !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2195
  br label %24, !dbg !2195

; <label>:24:                                     ; preds = %19, %9
  tail call void @scriptingEnableGlobalsProtection(%struct.lua_State* %2) #9, !dbg !2196
  store %struct.lua_State* %2, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !2197, !tbaa !2198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2199
  ret void, !dbg !2199
}

; Function Attrs: noredzone
declare dso_local %struct.lua_State* @luaL_newstate() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbInit() local_unnamed_addr #0 !dbg !2078 {
  store i32 -1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !2200, !tbaa !2082
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !2201, !tbaa !767
  %1 = tail call %struct.list* @listCreate() #8, !dbg !2202
  store %struct.list* %1, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !2203, !tbaa !787
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 3, !dbg !2204
  store void (i8*)* @sdsfree, void (i8*)** %2, align 8, !dbg !2204, !tbaa !2087
  %3 = tail call %struct.list* @listCreate() #8, !dbg !2205
  store %struct.list* %3, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !2206, !tbaa !2090
  store i8** null, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !2207, !tbaa !2092
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !2208, !tbaa !2094
  %4 = tail call i8* @sdsempty() #8, !dbg !2209
  store i8* %4, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !2210, !tbaa !2097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2211
  ret void, !dbg !2211
}

; Function Attrs: noredzone
declare dso_local %struct.dict* @dictCreate(%struct.dictType*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redis_math_random(%struct.lua_State*) #0 !dbg !2212 {
  %2 = tail call i32 (...) @redisLrand48() #8, !dbg !2223
  %3 = srem i32 %2, 2147483647, !dbg !2224
  %4 = sitofp i32 %3 to double, !dbg !2225
  %5 = fdiv double %4, 0x41DFFFFFFFC00000, !dbg !2226
  %6 = tail call i32 @lua_gettop(%struct.lua_State* %0) #8, !dbg !2228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2229
  switch i32 %6, label %35 [
    i32 0, label %7
    i32 1, label %8
    i32 2, label %19
  ], !dbg !2229

; <label>:7:                                      ; preds = %1
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %5) #8, !dbg !2230
  br label %37, !dbg !2232

; <label>:8:                                      ; preds = %1
  %9 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #8, !dbg !2233
  %10 = trunc i64 %9 to i32, !dbg !2233
  %11 = icmp sgt i32 %10, 0, !dbg !2235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  br i1 %11, label %14, label %12, !dbg !2235

; <label>:12:                                     ; preds = %8
  %13 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i64 0, i64 0)) #8, !dbg !2235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  br label %14, !dbg !2235

; <label>:14:                                     ; preds = %12, %8
  %15 = sitofp i32 %10 to double, !dbg !2236
  %16 = fmul double %5, %15, !dbg !2237
  %17 = tail call double @floor(double %16) #8, !dbg !2238
  %18 = fadd double %17, 1.000000e+00, !dbg !2239
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %18) #8, !dbg !2240
  br label %37

; <label>:19:                                     ; preds = %1
  %20 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #8, !dbg !2241
  %21 = trunc i64 %20 to i32, !dbg !2241
  %22 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #8, !dbg !2243
  %23 = trunc i64 %22 to i32, !dbg !2243
  %24 = icmp slt i32 %23, %21, !dbg !2245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2245
  br i1 %24, label %25, label %27, !dbg !2245

; <label>:25:                                     ; preds = %19
  %26 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i64 0, i64 0)) #8, !dbg !2245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2245
  br label %27, !dbg !2245

; <label>:27:                                     ; preds = %19, %25
  %28 = sub i32 1, %21, !dbg !2246
  %29 = add i32 %28, %23, !dbg !2247
  %30 = sitofp i32 %29 to double, !dbg !2248
  %31 = fmul double %5, %30, !dbg !2249
  %32 = tail call double @floor(double %31) #8, !dbg !2250
  %33 = sitofp i32 %21 to double, !dbg !2251
  %34 = fadd double %32, %33, !dbg !2252
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %34) #8, !dbg !2253
  br label %37

; <label>:35:                                     ; preds = %1
  %36 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0)) #8, !dbg !2254
  br label %38, !dbg !2255

; <label>:37:                                     ; preds = %27, %14, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %38, !dbg !2256

; <label>:38:                                     ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 1, %37 ], !dbg !2257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2259
  ret i32 %39, !dbg !2259
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redis_math_randomseed(%struct.lua_State*) #0 !dbg !2260 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #8, !dbg !2264
  %3 = trunc i64 %2 to i32, !dbg !2264
  tail call void @redisSrand48(i32 %3) #8, !dbg !2265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2266
  ret i32 0, !dbg !2266
}

; Function Attrs: noredzone
declare dso_local %struct.client* @createClient(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scriptingRelease() local_unnamed_addr #0 !dbg !2267 {
  %1 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !2268, !tbaa !2110
  tail call void @dictRelease(%struct.dict* %1) #8, !dbg !2269
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !2270, !tbaa !2112
  %2 = load %struct.lua_State*, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !2271, !tbaa !2198
  tail call void @lua_close(%struct.lua_State* %2) #8, !dbg !2272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2273
  ret void, !dbg !2273
}

; Function Attrs: noredzone
declare dso_local void @dictRelease(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_close(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scriptingReset() local_unnamed_addr #0 !dbg !2274 {
  %1 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !2275, !tbaa !2110
  tail call void @dictRelease(%struct.dict* %1) #8, !dbg !2277
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !2278, !tbaa !2112
  %2 = load %struct.lua_State*, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !2279, !tbaa !2198
  tail call void @lua_close(%struct.lua_State* %2) #8, !dbg !2280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2281
  tail call void @scriptingInit(i32 0) #9, !dbg !2282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2283
  ret void, !dbg !2283
}

; Function Attrs: noredzone nounwind
define dso_local void @luaSetGlobalArray(%struct.lua_State*, i8*, %struct.redisObject** nocapture readonly, i32) local_unnamed_addr #0 !dbg !2284 {
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #8, !dbg !2297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2299
  %5 = icmp sgt i32 %3, 0, !dbg !2301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2303
  br i1 %5, label %6, label %43, !dbg !2303

; <label>:6:                                      ; preds = %4
  %7 = zext i32 %3 to i64
  br label %8, !dbg !2304

; <label>:8:                                      ; preds = %38, %6
  %9 = phi i64 [ 0, %6 ], [ %40, %38 ]
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %9, !dbg !2304
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !2304, !tbaa !1003
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !2306
  %13 = load i8*, i8** %12, align 8, !dbg !2306, !tbaa !1046
  %14 = getelementptr inbounds i8, i8* %13, i64 -1, !dbg !2309
  %15 = load i8, i8* %14, align 1, !dbg !2309, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2311
  %16 = trunc i8 %15 to i3, !dbg !2311
  switch i3 %16, label %38 [
    i3 0, label %17
    i3 1, label %20
    i3 2, label %24
    i3 3, label %29
    i3 -4, label %34
  ], !dbg !2311

; <label>:17:                                     ; preds = %8
  %18 = lshr i8 %15, 3, !dbg !2312
  %19 = zext i8 %18 to i64, !dbg !2312
  br label %38, !dbg !2313

; <label>:20:                                     ; preds = %8
  %21 = getelementptr inbounds i8, i8* %13, i64 -3, !dbg !2314
  %22 = load i8, i8* %21, align 1, !dbg !2315, !tbaa !486
  %23 = zext i8 %22 to i64, !dbg !2314
  br label %38, !dbg !2316

; <label>:24:                                     ; preds = %8
  %25 = getelementptr inbounds i8, i8* %13, i64 -5, !dbg !2317
  %26 = bitcast i8* %25 to i16*, !dbg !2318
  %27 = load i16, i16* %26, align 1, !dbg !2318, !tbaa !1085
  %28 = zext i16 %27 to i64, !dbg !2317
  br label %38, !dbg !2319

; <label>:29:                                     ; preds = %8
  %30 = getelementptr inbounds i8, i8* %13, i64 -9, !dbg !2320
  %31 = bitcast i8* %30 to i32*, !dbg !2321
  %32 = load i32, i32* %31, align 1, !dbg !2321, !tbaa !979
  %33 = zext i32 %32 to i64, !dbg !2320
  br label %38, !dbg !2322

; <label>:34:                                     ; preds = %8
  %35 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !2323
  %36 = bitcast i8* %35 to i64*, !dbg !2324
  %37 = load i64, i64* %36, align 1, !dbg !2324, !tbaa !1026
  br label %38, !dbg !2325

; <label>:38:                                     ; preds = %8, %17, %20, %24, %29, %34
  %39 = phi i64 [ %37, %34 ], [ %33, %29 ], [ %28, %24 ], [ %23, %20 ], [ %19, %17 ], [ 0, %8 ], !dbg !2326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2328
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %13, i64 %39) #8, !dbg !2329
  %40 = add nuw nsw i64 %9, 1, !dbg !2330
  %41 = trunc i64 %40 to i32, !dbg !2331
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 %41) #8, !dbg !2331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2303
  %42 = icmp eq i64 %40, %7, !dbg !2301
  br i1 %42, label %43, label %8, !dbg !2303, !llvm.loop !2333

; <label>:43:                                     ; preds = %38, %4
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* %1) #8, !dbg !2335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2336
  ret void, !dbg !2336
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
define dso_local i8* @luaCreateFunction(%struct.client*, %struct.lua_State*, %struct.redisObject*) local_unnamed_addr #0 !dbg !2337 {
  %4 = alloca %struct.SHA1_CTX, align 4
  %5 = alloca [20 x i8], align 16
  %6 = alloca [43 x i8], align 16
  %7 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 0, !dbg !2354
  call void @llvm.lifetime.start.p0i8(i64 43, i8* nonnull %7) #7, !dbg !2354
  store i8 102, i8* %7, align 16, !dbg !2356, !tbaa !486
  %8 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 1, !dbg !2357
  store i8 95, i8* %8, align 1, !dbg !2358, !tbaa !486
  %9 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 2, !dbg !2359
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !2360
  %11 = load i8*, i8** %10, align 8, !dbg !2360, !tbaa !1046
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !2363
  %13 = load i8, i8* %12, align 1, !dbg !2363, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2365
  %14 = trunc i8 %13 to i3, !dbg !2365
  switch i3 %14, label %36 [
    i3 0, label %15
    i3 1, label %18
    i3 2, label %22
    i3 3, label %27
    i3 -4, label %32
  ], !dbg !2365

; <label>:15:                                     ; preds = %3
  %16 = lshr i8 %13, 3, !dbg !2366
  %17 = zext i8 %16 to i64, !dbg !2366
  br label %36, !dbg !2367

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !2368
  %20 = load i8, i8* %19, align 1, !dbg !2369, !tbaa !486
  %21 = zext i8 %20 to i64, !dbg !2368
  br label %36, !dbg !2370

; <label>:22:                                     ; preds = %3
  %23 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !2371
  %24 = bitcast i8* %23 to i16*, !dbg !2372
  %25 = load i16, i16* %24, align 1, !dbg !2372, !tbaa !1085
  %26 = zext i16 %25 to i64, !dbg !2371
  br label %36, !dbg !2373

; <label>:27:                                     ; preds = %3
  %28 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !2374
  %29 = bitcast i8* %28 to i32*, !dbg !2375
  %30 = load i32, i32* %29, align 1, !dbg !2375, !tbaa !979
  %31 = zext i32 %30 to i64, !dbg !2374
  br label %36, !dbg !2376

; <label>:32:                                     ; preds = %3
  %33 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !2377
  %34 = bitcast i8* %33 to i64*, !dbg !2378
  %35 = load i64, i64* %34, align 1, !dbg !2378, !tbaa !1026
  br label %36, !dbg !2379

; <label>:36:                                     ; preds = %3, %15, %18, %22, %27, %32
  %37 = phi i64 [ %35, %32 ], [ %31, %27 ], [ %26, %22 ], [ %21, %18 ], [ %17, %15 ], [ 0, %3 ], !dbg !2380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2382
  %38 = bitcast %struct.SHA1_CTX* %4 to i8*, !dbg !2386
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %38) #7, !dbg !2386
  %39 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0, !dbg !2387
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %39) #7, !dbg !2387
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %4) #8, !dbg !2389
  %40 = trunc i64 %37 to i32, !dbg !2390
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %4, i8* %11, i32 %40) #8, !dbg !2391
  call void @SHA1Final(i8* nonnull %39, %struct.SHA1_CTX* nonnull %4) #8, !dbg !2392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2395
  br label %41, !dbg !2395

; <label>:41:                                     ; preds = %41, %36
  %42 = phi i64 [ 0, %36 ], [ %57, %41 ]
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %42, !dbg !2396
  %44 = load i8, i8* %43, align 1, !dbg !2396, !tbaa !486
  %45 = lshr i8 %44, 4, !dbg !2397
  %46 = zext i8 %45 to i64, !dbg !2398
  %47 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %46, !dbg !2398
  %48 = load i8, i8* %47, align 1, !dbg !2398, !tbaa !486
  %49 = shl nuw nsw i64 %42, 1, !dbg !2399
  %50 = getelementptr inbounds i8, i8* %9, i64 %49, !dbg !2400
  store i8 %48, i8* %50, align 2, !dbg !2401, !tbaa !486
  %51 = and i8 %44, 15, !dbg !2402
  %52 = zext i8 %51 to i64, !dbg !2403
  %53 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %52, !dbg !2403
  %54 = load i8, i8* %53, align 1, !dbg !2403, !tbaa !486
  %55 = or i64 %49, 1, !dbg !2404
  %56 = getelementptr inbounds i8, i8* %9, i64 %55, !dbg !2405
  store i8 %54, i8* %56, align 1, !dbg !2406, !tbaa !486
  %57 = add nuw nsw i64 %42, 1, !dbg !2407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2395
  %58 = icmp eq i64 %57, 20, !dbg !2409
  br i1 %58, label %59, label %41, !dbg !2395, !llvm.loop !502

; <label>:59:                                     ; preds = %41
  %60 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 42, !dbg !2410
  store i8 0, i8* %60, align 2, !dbg !2411, !tbaa !486
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %39) #7, !dbg !2412
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %38) #7, !dbg !2412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2412
  %61 = call i8* @sdsnewlen(i8* nonnull %9, i64 40) #8, !dbg !2413
  %62 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !2415, !tbaa !2110
  %63 = call %struct.dictEntry* @dictFind(%struct.dict* %62, i8* %61) #8, !dbg !2417
  %64 = icmp eq %struct.dictEntry* %63, null, !dbg !2419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2420
  br i1 %64, label %68, label %65, !dbg !2420

; <label>:65:                                     ; preds = %59
  call void @sdsfree(i8* %61) #8, !dbg !2421
  %66 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %63, i64 0, i32 0, !dbg !2423
  %67 = load i8*, i8** %66, align 8, !dbg !2423, !tbaa !2424
  br label %160, !dbg !2426

; <label>:68:                                     ; preds = %59
  %69 = call i8* @sdsempty() #8, !dbg !2427
  %70 = call i8* @sdscat(i8* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i64 0, i64 0)) #8, !dbg !2429
  %71 = call i8* @sdscatlen(i8* %70, i8* nonnull %7, i64 42) #8, !dbg !2430
  %72 = call i8* @sdscatlen(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0), i64 3) #8, !dbg !2431
  %73 = load i8*, i8** %10, align 8, !dbg !2432, !tbaa !1046
  %74 = getelementptr inbounds i8, i8* %73, i64 -1, !dbg !2435
  %75 = load i8, i8* %74, align 1, !dbg !2435, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2437
  %76 = trunc i8 %75 to i3, !dbg !2437
  switch i3 %76, label %98 [
    i3 0, label %77
    i3 1, label %80
    i3 2, label %84
    i3 3, label %89
    i3 -4, label %94
  ], !dbg !2437

; <label>:77:                                     ; preds = %68
  %78 = lshr i8 %75, 3, !dbg !2438
  %79 = zext i8 %78 to i64, !dbg !2438
  br label %98, !dbg !2439

; <label>:80:                                     ; preds = %68
  %81 = getelementptr inbounds i8, i8* %73, i64 -3, !dbg !2440
  %82 = load i8, i8* %81, align 1, !dbg !2441, !tbaa !486
  %83 = zext i8 %82 to i64, !dbg !2440
  br label %98, !dbg !2442

; <label>:84:                                     ; preds = %68
  %85 = getelementptr inbounds i8, i8* %73, i64 -5, !dbg !2443
  %86 = bitcast i8* %85 to i16*, !dbg !2444
  %87 = load i16, i16* %86, align 1, !dbg !2444, !tbaa !1085
  %88 = zext i16 %87 to i64, !dbg !2443
  br label %98, !dbg !2445

; <label>:89:                                     ; preds = %68
  %90 = getelementptr inbounds i8, i8* %73, i64 -9, !dbg !2446
  %91 = bitcast i8* %90 to i32*, !dbg !2447
  %92 = load i32, i32* %91, align 1, !dbg !2447, !tbaa !979
  %93 = zext i32 %92 to i64, !dbg !2446
  br label %98, !dbg !2448

; <label>:94:                                     ; preds = %68
  %95 = getelementptr inbounds i8, i8* %73, i64 -17, !dbg !2449
  %96 = bitcast i8* %95 to i64*, !dbg !2450
  %97 = load i64, i64* %96, align 1, !dbg !2450, !tbaa !1026
  br label %98, !dbg !2451

; <label>:98:                                     ; preds = %68, %77, %80, %84, %89, %94
  %99 = phi i64 [ %97, %94 ], [ %93, %89 ], [ %88, %84 ], [ %83, %80 ], [ %79, %77 ], [ 0, %68 ], !dbg !2452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2453
  %100 = call i8* @sdscatlen(i8* %72, i8* %73, i64 %99) #8, !dbg !2454
  %101 = call i8* @sdscatlen(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i64 0, i64 0), i64 4) #8, !dbg !2455
  %102 = getelementptr inbounds i8, i8* %101, i64 -1, !dbg !2459
  %103 = load i8, i8* %102, align 1, !dbg !2459, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2461
  %104 = trunc i8 %103 to i3, !dbg !2461
  switch i3 %104, label %126 [
    i3 0, label %105
    i3 1, label %108
    i3 2, label %112
    i3 3, label %117
    i3 -4, label %122
  ], !dbg !2461

; <label>:105:                                    ; preds = %98
  %106 = lshr i8 %103, 3, !dbg !2462
  %107 = zext i8 %106 to i64, !dbg !2462
  br label %126, !dbg !2463

; <label>:108:                                    ; preds = %98
  %109 = getelementptr inbounds i8, i8* %101, i64 -3, !dbg !2464
  %110 = load i8, i8* %109, align 1, !dbg !2465, !tbaa !486
  %111 = zext i8 %110 to i64, !dbg !2464
  br label %126, !dbg !2466

; <label>:112:                                    ; preds = %98
  %113 = getelementptr inbounds i8, i8* %101, i64 -5, !dbg !2467
  %114 = bitcast i8* %113 to i16*, !dbg !2468
  %115 = load i16, i16* %114, align 1, !dbg !2468, !tbaa !1085
  %116 = zext i16 %115 to i64, !dbg !2467
  br label %126, !dbg !2469

; <label>:117:                                    ; preds = %98
  %118 = getelementptr inbounds i8, i8* %101, i64 -9, !dbg !2470
  %119 = bitcast i8* %118 to i32*, !dbg !2471
  %120 = load i32, i32* %119, align 1, !dbg !2471, !tbaa !979
  %121 = zext i32 %120 to i64, !dbg !2470
  br label %126, !dbg !2472

; <label>:122:                                    ; preds = %98
  %123 = getelementptr inbounds i8, i8* %101, i64 -17, !dbg !2473
  %124 = bitcast i8* %123 to i64*, !dbg !2474
  %125 = load i64, i64* %124, align 1, !dbg !2474, !tbaa !1026
  br label %126, !dbg !2475

; <label>:126:                                    ; preds = %98, %105, %108, %112, %117, %122
  %127 = phi i64 [ %125, %122 ], [ %121, %117 ], [ %116, %112 ], [ %111, %108 ], [ %107, %105 ], [ 0, %98 ], !dbg !2476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2478
  %128 = call i32 @luaL_loadbuffer(%struct.lua_State* %1, i8* %101, i64 %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.94, i64 0, i64 0)) #8, !dbg !2479
  %129 = icmp eq i32 %128, 0, !dbg !2479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2480
  br i1 %129, label %135, label %130, !dbg !2480

; <label>:130:                                    ; preds = %126
  %131 = icmp eq %struct.client* %0, null, !dbg !2481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  br i1 %131, label %134, label %132, !dbg !2484

; <label>:132:                                    ; preds = %130
  %133 = call i8* @lua_tolstring(%struct.lua_State* %1, i32 -1, i64* null) #8, !dbg !2485
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %133) #8, !dbg !2487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2488
  br label %134, !dbg !2488

; <label>:134:                                    ; preds = %130, %132
  call void @lua_settop(%struct.lua_State* %1, i32 -2) #8, !dbg !2489
  call void @sdsfree(i8* %61) #8, !dbg !2490
  call void @sdsfree(i8* %101) #8, !dbg !2491
  br label %158, !dbg !2492

; <label>:135:                                    ; preds = %126
  call void @sdsfree(i8* %101) #8, !dbg !2493
  %136 = call i32 @lua_pcall(%struct.lua_State* %1, i32 0, i32 0, i32 0) #8, !dbg !2494
  %137 = icmp eq i32 %136, 0, !dbg !2494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2496
  br i1 %137, label %143, label %138, !dbg !2496

; <label>:138:                                    ; preds = %135
  %139 = icmp eq %struct.client* %0, null, !dbg !2497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2500
  br i1 %139, label %142, label %140, !dbg !2500

; <label>:140:                                    ; preds = %138
  %141 = call i8* @lua_tolstring(%struct.lua_State* %1, i32 -1, i64* null) #8, !dbg !2501
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.96, i64 0, i64 0), i8* %141) #8, !dbg !2503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2504
  br label %142, !dbg !2504

; <label>:142:                                    ; preds = %138, %140
  call void @lua_settop(%struct.lua_State* %1, i32 -2) #8, !dbg !2505
  call void @sdsfree(i8* %61) #8, !dbg !2506
  br label %158, !dbg !2507

; <label>:143:                                    ; preds = %135
  %144 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !2508, !tbaa !2110
  %145 = bitcast %struct.redisObject* %2 to i8*, !dbg !2509
  %146 = call i32 @dictAdd(%struct.dict* %144, i8* %61, i8* %145) #8, !dbg !2510
  %147 = icmp eq i32 %146, 0, !dbg !2512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2512
  br i1 %147, label %152, label %148, !dbg !2512

; <label>:148:                                    ; preds = %143
  %149 = icmp eq %struct.client* %0, null, !dbg !2512
  %150 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 271), align 8, !dbg !2512
  %151 = select i1 %149, %struct.client* %150, %struct.client* %0, !dbg !2512
  call void @_serverAssertWithInfo(%struct.client* %151, %struct.redisObject* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.97, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.98, i64 0, i64 0), i32 1228) #8, !dbg !2512
  call void @_exit(i32 1) #10, !dbg !2512
  unreachable

; <label>:152:                                    ; preds = %143
  %153 = call i64 @sdsZmallocSize(i8* %61) #8, !dbg !2513
  %154 = call i64 @getStringObjectSdsUsedMemory(%struct.redisObject* nonnull %2) #8, !dbg !2514
  %155 = add i64 %154, %153, !dbg !2515
  %156 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !2516, !tbaa !2112
  %157 = add i64 %155, %156, !dbg !2516
  store i64 %157, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !2516, !tbaa !2112
  call void @incrRefCount(%struct.redisObject* nonnull %2) #8, !dbg !2517
  br label %158

; <label>:158:                                    ; preds = %152, %142, %134
  %159 = phi i8* [ null, %134 ], [ null, %142 ], [ %61, %152 ], !dbg !2381
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %160

; <label>:160:                                    ; preds = %158, %65
  %161 = phi i8* [ %67, %65 ], [ %159, %158 ], !dbg !2518
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 43, i8* nonnull %7) #7, !dbg !2519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2519
  ret i8* %161, !dbg !2519
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
define dso_local void @luaMaskCountHook(%struct.lua_State*, %struct.lua_Debug* nocapture readnone) #0 !dbg !2520 {
  %3 = tail call i64 @mstime() #8, !dbg !2530
  %4 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 276), align 8, !dbg !2531, !tbaa !2532
  %5 = sub nsw i64 %3, %4, !dbg !2533
  %6 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 275), align 8, !dbg !2535, !tbaa !2537
  %7 = icmp sge i64 %5, %6, !dbg !2538
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !2539
  %9 = icmp eq i32 %8, 0, !dbg !2540
  %10 = and i1 %7, %9, !dbg !2541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2541
  br i1 %10, label %11, label %14, !dbg !2541

; <label>:11:                                     ; preds = %2
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.99, i64 0, i64 0), i64 %5) #8, !dbg !2542
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !2544, !tbaa !2076
  %12 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !2545, !tbaa !963
  tail call void @protectClient(%struct.client* %12) #8, !dbg !2546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2547
  %13 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !2548, !tbaa !2076
  br label %14, !dbg !2547

; <label>:14:                                     ; preds = %11, %2
  %15 = phi i32 [ %13, %11 ], [ %8, %2 ], !dbg !2548
  %16 = icmp eq i32 %15, 0, !dbg !2550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2551
  br i1 %16, label %19, label %17, !dbg !2551

; <label>:17:                                     ; preds = %14
  %18 = tail call i32 @processEventsWhileBlocked() #8, !dbg !2552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2552
  br label %19, !dbg !2552

; <label>:19:                                     ; preds = %14, %17
  %20 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 283), align 8, !dbg !2553, !tbaa !2555
  %21 = icmp eq i32 %20, 0, !dbg !2556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2557
  br i1 %21, label %24, label %22, !dbg !2557

; <label>:22:                                     ; preds = %19
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.100, i64 0, i64 0)) #8, !dbg !2558
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.101, i64 0, i64 0)) #8, !dbg !2560
  %23 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !2561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2562
  br label %24, !dbg !2562

; <label>:24:                                     ; preds = %19, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2563
  ret void, !dbg !2563
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
  %8 = load %struct.lua_State*, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !2569, !tbaa !2198
  %9 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 0, !dbg !2571
  call void @llvm.lifetime.start.p0i8(i64 43, i8* nonnull %9) #7, !dbg !2571
  %10 = bitcast i64* %6 to i8*, !dbg !2573
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #7, !dbg !2573
  %11 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2574, !tbaa !2575
  tail call void @redisSrand48(i32 0) #8, !dbg !2578
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 278), align 4, !dbg !2579, !tbaa !1222
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 277), align 8, !dbg !2580, !tbaa !1301
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 284), align 4, !dbg !2581, !tbaa !2582
  store i32 %12, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !2583, !tbaa !1337
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 280), align 4, !dbg !2584, !tbaa !959
  store i32 3, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 281), align 8, !dbg !2585, !tbaa !1362
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2586
  %14 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2586, !tbaa !1132
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 2, !dbg !2588
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !2588, !tbaa !1003
  %17 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %16, i64* nonnull %6, i8* null) #8, !dbg !2590
  %18 = icmp eq i32 %17, 0, !dbg !2591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2592
  br i1 %18, label %19, label %243, !dbg !2592

; <label>:19:                                     ; preds = %2
  %20 = load i64, i64* %6, align 8, !dbg !2593, !tbaa !538
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2595
  %22 = load i32, i32* %21, align 8, !dbg !2595, !tbaa !1135
  %23 = add nsw i32 %22, -3, !dbg !2596
  %24 = sext i32 %23 to i64, !dbg !2597
  %25 = icmp sgt i64 %20, %24, !dbg !2598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2599
  br i1 %25, label %26, label %27, !dbg !2599

; <label>:26:                                     ; preds = %19
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.102, i64 0, i64 0)) #8, !dbg !2600
  br label %243, !dbg !2602

; <label>:27:                                     ; preds = %19
  %28 = icmp slt i64 %20, 0, !dbg !2603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2605
  br i1 %28, label %29, label %30, !dbg !2605

; <label>:29:                                     ; preds = %27
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.103, i64 0, i64 0)) #8, !dbg !2606
  br label %243, !dbg !2608

; <label>:30:                                     ; preds = %27
  store i8 102, i8* %9, align 16, !dbg !2609, !tbaa !486
  %31 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 1, !dbg !2610
  store i8 95, i8* %31, align 1, !dbg !2611, !tbaa !486
  %32 = icmp ne i32 %1, 0, !dbg !2612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2613
  br i1 %32, label %89, label %33, !dbg !2613

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 2, !dbg !2614
  %35 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2615, !tbaa !1132
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 1, !dbg !2616
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !2616, !tbaa !1003
  %38 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 2, !dbg !2617
  %39 = load i8*, i8** %38, align 8, !dbg !2617, !tbaa !1046
  %40 = getelementptr inbounds i8, i8* %39, i64 -1, !dbg !2620
  %41 = load i8, i8* %40, align 1, !dbg !2620, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2622
  %42 = trunc i8 %41 to i3, !dbg !2622
  switch i3 %42, label %64 [
    i3 0, label %43
    i3 1, label %46
    i3 2, label %50
    i3 3, label %55
    i3 -4, label %60
  ], !dbg !2622

; <label>:43:                                     ; preds = %33
  %44 = lshr i8 %41, 3, !dbg !2623
  %45 = zext i8 %44 to i64, !dbg !2623
  br label %64, !dbg !2624

; <label>:46:                                     ; preds = %33
  %47 = getelementptr inbounds i8, i8* %39, i64 -3, !dbg !2625
  %48 = load i8, i8* %47, align 1, !dbg !2626, !tbaa !486
  %49 = zext i8 %48 to i64, !dbg !2625
  br label %64, !dbg !2627

; <label>:50:                                     ; preds = %33
  %51 = getelementptr inbounds i8, i8* %39, i64 -5, !dbg !2628
  %52 = bitcast i8* %51 to i16*, !dbg !2629
  %53 = load i16, i16* %52, align 1, !dbg !2629, !tbaa !1085
  %54 = zext i16 %53 to i64, !dbg !2628
  br label %64, !dbg !2630

; <label>:55:                                     ; preds = %33
  %56 = getelementptr inbounds i8, i8* %39, i64 -9, !dbg !2631
  %57 = bitcast i8* %56 to i32*, !dbg !2632
  %58 = load i32, i32* %57, align 1, !dbg !2632, !tbaa !979
  %59 = zext i32 %58 to i64, !dbg !2631
  br label %64, !dbg !2633

; <label>:60:                                     ; preds = %33
  %61 = getelementptr inbounds i8, i8* %39, i64 -17, !dbg !2634
  %62 = bitcast i8* %61 to i64*, !dbg !2635
  %63 = load i64, i64* %62, align 1, !dbg !2635, !tbaa !1026
  br label %64, !dbg !2636

; <label>:64:                                     ; preds = %33, %43, %46, %50, %55, %60
  %65 = phi i64 [ %63, %60 ], [ %59, %55 ], [ %54, %50 ], [ %49, %46 ], [ %45, %43 ], [ 0, %33 ], !dbg !2637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2639
  %66 = bitcast %struct.SHA1_CTX* %3 to i8*, !dbg !2643
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %66) #7, !dbg !2643
  %67 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2644
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %67) #7, !dbg !2644
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %3) #8, !dbg !2646
  %68 = trunc i64 %65 to i32, !dbg !2647
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %3, i8* %39, i32 %68) #8, !dbg !2648
  call void @SHA1Final(i8* nonnull %67, %struct.SHA1_CTX* nonnull %3) #8, !dbg !2649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2652
  br label %69, !dbg !2652

; <label>:69:                                     ; preds = %69, %64
  %70 = phi i64 [ 0, %64 ], [ %85, %69 ]
  %71 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 %70, !dbg !2653
  %72 = load i8, i8* %71, align 1, !dbg !2653, !tbaa !486
  %73 = lshr i8 %72, 4, !dbg !2654
  %74 = zext i8 %73 to i64, !dbg !2655
  %75 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %74, !dbg !2655
  %76 = load i8, i8* %75, align 1, !dbg !2655, !tbaa !486
  %77 = shl nuw nsw i64 %70, 1, !dbg !2656
  %78 = getelementptr inbounds i8, i8* %34, i64 %77, !dbg !2657
  store i8 %76, i8* %78, align 2, !dbg !2658, !tbaa !486
  %79 = and i8 %72, 15, !dbg !2659
  %80 = zext i8 %79 to i64, !dbg !2660
  %81 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %80, !dbg !2660
  %82 = load i8, i8* %81, align 1, !dbg !2660, !tbaa !486
  %83 = or i64 %77, 1, !dbg !2661
  %84 = getelementptr inbounds i8, i8* %34, i64 %83, !dbg !2662
  store i8 %82, i8* %84, align 1, !dbg !2663, !tbaa !486
  %85 = add nuw nsw i64 %70, 1, !dbg !2664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2652
  %86 = icmp eq i64 %85, 20, !dbg !2666
  br i1 %86, label %87, label %69, !dbg !2652, !llvm.loop !502

; <label>:87:                                     ; preds = %69
  %88 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 42, !dbg !2667
  store i8 0, i8* %88, align 2, !dbg !2668, !tbaa !486
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %67) #7, !dbg !2669
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %66) #7, !dbg !2669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2669
  br label %112, !dbg !2670

; <label>:89:                                     ; preds = %30
  %90 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2671, !tbaa !1132
  %91 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %90, i64 1, !dbg !2672
  %92 = load %struct.redisObject*, %struct.redisObject** %91, align 8, !dbg !2672, !tbaa !1003
  %93 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %92, i64 0, i32 2, !dbg !2673
  %94 = load i8*, i8** %93, align 8, !dbg !2673, !tbaa !1046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2678
  br label %95, !dbg !2678

; <label>:95:                                     ; preds = %104, %89
  %96 = phi i64 [ 0, %89 ], [ %108, %104 ]
  %97 = getelementptr inbounds i8, i8* %94, i64 %96, !dbg !2679
  %98 = load i8, i8* %97, align 1, !dbg !2679, !tbaa !486
  %99 = icmp sgt i8 %98, 64, !dbg !2681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2682
  br i1 %99, label %100, label %104, !dbg !2682

; <label>:100:                                    ; preds = %95
  %101 = icmp slt i8 %98, 91, !dbg !2683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2684
  %102 = add i8 %98, 32, !dbg !2685
  %103 = select i1 %101, i8 %102, i8 %98, !dbg !2684
  br label %104, !dbg !2684

; <label>:104:                                    ; preds = %100, %95
  %105 = phi i8 [ %98, %95 ], [ %103, %100 ], !dbg !2684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2684
  %106 = add nuw nsw i64 %96, 2, !dbg !2686
  %107 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 %106, !dbg !2687
  store i8 %105, i8* %107, align 1, !dbg !2688, !tbaa !486
  %108 = add nuw nsw i64 %96, 1, !dbg !2689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2678
  %109 = icmp eq i64 %108, 40, !dbg !2691
  br i1 %109, label %110, label %95, !dbg !2678, !llvm.loop !2692

; <label>:110:                                    ; preds = %104
  %111 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 42, !dbg !2694
  store i8 0, i8* %111, align 2, !dbg !2695, !tbaa !486
  br label %112

; <label>:112:                                    ; preds = %110, %87
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @lua_getfield(%struct.lua_State* %8, i32 -10002, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.104, i64 0, i64 0)) #8, !dbg !2696
  call void @lua_getfield(%struct.lua_State* %8, i32 -10002, i8* nonnull %9) #8, !dbg !2697
  %113 = call i32 @lua_type(%struct.lua_State* %8, i32 -1) #8, !dbg !2698
  %114 = icmp eq i32 %113, 0, !dbg !2698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2700
  br i1 %114, label %115, label %129, !dbg !2700

; <label>:115:                                    ; preds = %112
  call void @lua_settop(%struct.lua_State* %8, i32 -2) #8, !dbg !2701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2703
  br i1 %32, label %116, label %118, !dbg !2703

; <label>:116:                                    ; preds = %115
  call void @lua_settop(%struct.lua_State* %8, i32 -2) #8, !dbg !2704
  %117 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 19), align 8, !dbg !2707, !tbaa !2708
  call void @addReply(%struct.client* %0, %struct.redisObject* %117) #8, !dbg !2709
  br label %243, !dbg !2710

; <label>:118:                                    ; preds = %115
  %119 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2711, !tbaa !1132
  %120 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %119, i64 1, !dbg !2713
  %121 = load %struct.redisObject*, %struct.redisObject** %120, align 8, !dbg !2713, !tbaa !1003
  %122 = call i8* @luaCreateFunction(%struct.client* %0, %struct.lua_State* %8, %struct.redisObject* %121) #9, !dbg !2714
  %123 = icmp eq i8* %122, null, !dbg !2715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2716
  br i1 %123, label %124, label %125, !dbg !2716

; <label>:124:                                    ; preds = %118
  call void @lua_settop(%struct.lua_State* %8, i32 -2) #8, !dbg !2717
  br label %243, !dbg !2719

; <label>:125:                                    ; preds = %118
  call void @lua_getfield(%struct.lua_State* %8, i32 -10002, i8* nonnull %9) #8, !dbg !2720
  %126 = call i32 @lua_type(%struct.lua_State* %8, i32 -1) #8, !dbg !2721
  %127 = icmp eq i32 %126, 0, !dbg !2721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2721
  br i1 %127, label %128, label %129, !dbg !2721

; <label>:128:                                    ; preds = %125
  call void @_serverAssert(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.105, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.98, i64 0, i64 0), i32 1340) #8, !dbg !2721
  call void @_exit(i32 1) #10, !dbg !2721
  unreachable

; <label>:129:                                    ; preds = %125, %112
  %130 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2722, !tbaa !1132
  %131 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %130, i64 3, !dbg !2723
  %132 = load i64, i64* %6, align 8, !dbg !2724, !tbaa !538
  %133 = trunc i64 %132 to i32, !dbg !2724
  call void @luaSetGlobalArray(%struct.lua_State* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0), %struct.redisObject** nonnull %131, i32 %133) #9, !dbg !2725
  %134 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2726, !tbaa !1132
  %135 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %134, i64 3, !dbg !2727
  %136 = load i64, i64* %6, align 8, !dbg !2728, !tbaa !538
  %137 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %135, i64 %136, !dbg !2729
  %138 = load i32, i32* %21, align 8, !dbg !2730, !tbaa !1135
  %139 = add nsw i32 %138, -3, !dbg !2731
  %140 = trunc i64 %136 to i32, !dbg !2732
  %141 = sub i32 %139, %140, !dbg !2732
  call void @luaSetGlobalArray(%struct.lua_State* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i64 0, i64 0), %struct.redisObject** nonnull %137, i32 %141) #9, !dbg !2733
  %142 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 271), align 8, !dbg !2734, !tbaa !950
  %143 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2735
  %144 = load %struct.redisDb*, %struct.redisDb** %143, align 8, !dbg !2735, !tbaa !2736
  %145 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %144, i64 0, i32 5, !dbg !2737
  %146 = load i32, i32* %145, align 8, !dbg !2737, !tbaa !2738
  %147 = call i32 @selectDb(%struct.client* %142, i32 %146) #8, !dbg !2740
  store %struct.client* %0, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !2741, !tbaa !963
  %148 = call i64 @mstime() #8, !dbg !2742
  store i64 %148, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 276), align 8, !dbg !2743, !tbaa !2532
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 283), align 8, !dbg !2744, !tbaa !2555
  %149 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 275), align 8, !dbg !2745, !tbaa !2537
  %150 = icmp sgt i64 %149, 0, !dbg !2747
  %151 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !2748
  %152 = icmp eq i32 %151, 0, !dbg !2749
  %153 = and i1 %150, %152, !dbg !2750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2750
  br i1 %153, label %154, label %156, !dbg !2750

; <label>:154:                                    ; preds = %129
  %155 = call i32 @lua_sethook(%struct.lua_State* %8, void (%struct.lua_State*, %struct.lua_Debug*)* nonnull @luaMaskCountHook, i32 8, i32 100000) #8, !dbg !2751
  br label %162, !dbg !2753

; <label>:156:                                    ; preds = %129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2754
  br i1 %152, label %160, label %157, !dbg !2754

; <label>:157:                                    ; preds = %156
  %158 = load %struct.lua_State*, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !2755, !tbaa !2198
  %159 = call i32 @lua_sethook(%struct.lua_State* %158, void (%struct.lua_State*, %struct.lua_Debug*)* nonnull @luaLdbLineHook, i32 12, i32 100000) #8, !dbg !2758
  br label %162, !dbg !2759

; <label>:160:                                    ; preds = %156
  %161 = call i32 @lua_pcall(%struct.lua_State* %8, i32 0, i32 1, i32 -2) #8, !dbg !2760
  br label %165, !dbg !2762

; <label>:162:                                    ; preds = %154, %157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2763
  %163 = call i32 @lua_pcall(%struct.lua_State* %8, i32 0, i32 1, i32 -2) #8, !dbg !2760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2762
  %164 = call i32 @lua_sethook(%struct.lua_State* %8, void (%struct.lua_State*, %struct.lua_Debug*)* null, i32 0, i32 0) #8, !dbg !2764
  br label %165, !dbg !2764

; <label>:165:                                    ; preds = %160, %162
  %166 = phi i32 [ %163, %162 ], [ %161, %160 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2766
  %167 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !2767, !tbaa !2076
  %168 = icmp eq i32 %167, 0, !dbg !2769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2770
  br i1 %168, label %176, label %169, !dbg !2770

; <label>:169:                                    ; preds = %165
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !2771, !tbaa !2076
  call void @unprotectClient(%struct.client* nonnull %0) #8, !dbg !2773
  %170 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !2774, !tbaa !1231
  %171 = icmp ne i8* %170, null, !dbg !2776
  %172 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2777
  %173 = icmp ne %struct.client* %172, null, !dbg !2778
  %174 = and i1 %171, %173, !dbg !2779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2779
  br i1 %174, label %175, label %176, !dbg !2779

; <label>:175:                                    ; preds = %169
  call void @queueClientForReprocessing(%struct.client* nonnull %172) #8, !dbg !2780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2780
  br label %176, !dbg !2780

; <label>:176:                                    ; preds = %165, %169, %175
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !2781, !tbaa !963
  %177 = load i64, i64* @evalGenericCommand.gc_count, align 8, !dbg !2782, !tbaa !1026
  %178 = add nsw i64 %177, 1, !dbg !2782
  store i64 %178, i64* @evalGenericCommand.gc_count, align 8, !dbg !2782, !tbaa !1026
  %179 = icmp eq i64 %178, 50, !dbg !2784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2786
  br i1 %179, label %180, label %182, !dbg !2786

; <label>:180:                                    ; preds = %176
  %181 = call i32 @lua_gc(%struct.lua_State* %8, i32 5, i32 50) #8, !dbg !2787
  store i64 0, i64* @evalGenericCommand.gc_count, align 8, !dbg !2789, !tbaa !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2790
  br label %182, !dbg !2790

; <label>:182:                                    ; preds = %180, %176
  %183 = icmp eq i32 %166, 0, !dbg !2791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2793
  br i1 %183, label %186, label %184, !dbg !2793

; <label>:184:                                    ; preds = %182
  %185 = call i8* @lua_tolstring(%struct.lua_State* %8, i32 -1, i64* null) #8, !dbg !2794
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.108, i64 0, i64 0), i8* nonnull %9, i8* %185) #8, !dbg !2796
  call void @lua_settop(%struct.lua_State* %8, i32 -3) #8, !dbg !2797
  br label %187, !dbg !2798

; <label>:186:                                    ; preds = %182
  call void @luaReplyToRedisReply(%struct.client* nonnull %0, %struct.lua_State* %8) #9, !dbg !2799
  call void @lua_settop(%struct.lua_State* %8, i32 -2) #8, !dbg !2801
  br label %187

; <label>:187:                                    ; preds = %186, %184
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %188 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !2802, !tbaa !1337
  %189 = icmp eq i32 %188, 0, !dbg !2803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2804
  br i1 %189, label %202, label %190, !dbg !2804

; <label>:190:                                    ; preds = %187
  call void @preventCommandPropagation(%struct.client* nonnull %0) #8, !dbg !2805
  %191 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 280), align 4, !dbg !2806, !tbaa !959
  %192 = icmp eq i32 %191, 0, !dbg !2807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2808
  br i1 %192, label %202, label %193, !dbg !2808

; <label>:193:                                    ; preds = %190
  %194 = bitcast [1 x %struct.redisObject*]* %7 to i8*, !dbg !2809
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %194) #7, !dbg !2809
  %195 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i64 0, i64 0), i64 4) #8, !dbg !2811
  %196 = getelementptr inbounds [1 x %struct.redisObject*], [1 x %struct.redisObject*]* %7, i64 0, i64 0, !dbg !2812
  store %struct.redisObject* %195, %struct.redisObject** %196, align 8, !dbg !2813, !tbaa !1003
  %197 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 64), align 8, !dbg !2814, !tbaa !2815
  %198 = load %struct.redisDb*, %struct.redisDb** %143, align 8, !dbg !2816, !tbaa !2736
  %199 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %198, i64 0, i32 5, !dbg !2817
  %200 = load i32, i32* %199, align 8, !dbg !2817, !tbaa !2738
  call void @alsoPropagate(%struct.redisCommand* %197, i32 %200, %struct.redisObject** nonnull %196, i32 1, i32 3) #8, !dbg !2818
  %201 = load %struct.redisObject*, %struct.redisObject** %196, align 8, !dbg !2819, !tbaa !1003
  call void @decrRefCount(%struct.redisObject* %201) #8, !dbg !2820
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %194) #7, !dbg !2821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2822
  br label %202, !dbg !2822

; <label>:202:                                    ; preds = %190, %187, %193
  %203 = icmp eq i32 %1, 0, !dbg !2823
  %204 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !2824
  %205 = icmp ne i32 %204, 0, !dbg !2825
  %206 = or i1 %203, %205, !dbg !2826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2826
  br i1 %206, label %243, label %207, !dbg !2826

; <label>:207:                                    ; preds = %202
  %208 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2827, !tbaa !1132
  %209 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %208, i64 1, !dbg !2828
  %210 = load %struct.redisObject*, %struct.redisObject** %209, align 8, !dbg !2828, !tbaa !1003
  %211 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %210, i64 0, i32 2, !dbg !2829
  %212 = load i8*, i8** %211, align 8, !dbg !2829, !tbaa !1046
  %213 = call i32 @replicationScriptCacheExists(i8* %212) #8, !dbg !2830
  %214 = icmp eq i32 %213, 0, !dbg !2830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2831
  br i1 %214, label %215, label %243, !dbg !2831

; <label>:215:                                    ; preds = %207
  %216 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !2832, !tbaa !2110
  %217 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2833, !tbaa !1132
  %218 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %217, i64 1, !dbg !2834
  %219 = load %struct.redisObject*, %struct.redisObject** %218, align 8, !dbg !2834, !tbaa !1003
  %220 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %219, i64 0, i32 2, !dbg !2835
  %221 = load i8*, i8** %220, align 8, !dbg !2835, !tbaa !1046
  %222 = call i8* @dictFetchValue(%struct.dict* %216, i8* %221) #8, !dbg !2836
  %223 = bitcast i8* %222 to %struct.redisObject*, !dbg !2836
  %224 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2838, !tbaa !1132
  %225 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %224, i64 1, !dbg !2839
  %226 = load %struct.redisObject*, %struct.redisObject** %225, align 8, !dbg !2839, !tbaa !1003
  %227 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %226, i64 0, i32 2, !dbg !2840
  %228 = load i8*, i8** %227, align 8, !dbg !2840, !tbaa !1046
  call void @replicationScriptCacheAdd(i8* %228) #8, !dbg !2841
  %229 = icmp eq i8* %222, null, !dbg !2842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2842
  br i1 %229, label %230, label %231, !dbg !2842

; <label>:230:                                    ; preds = %215
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.110, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.98, i64 0, i64 0), i32 1445) #8, !dbg !2842
  call void @_exit(i32 1) #10, !dbg !2842
  unreachable

; <label>:231:                                    ; preds = %215
  %232 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2843, !tbaa !2575
  %233 = icmp eq i64 %232, %11, !dbg !2845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2846
  br i1 %233, label %234, label %239, !dbg !2846

; <label>:234:                                    ; preds = %231
  %235 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i64 0, i64 0), i64 6) #8, !dbg !2847
  %236 = call %struct.redisObject* @resetRefCount(%struct.redisObject* %235) #8, !dbg !2849
  %237 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i64 0, i64 0), i64 4) #8, !dbg !2850
  %238 = call %struct.redisObject* @resetRefCount(%struct.redisObject* %237) #8, !dbg !2851
  call void (%struct.client*, i32, ...) @rewriteClientCommandVector(%struct.client* nonnull %0, i32 3, %struct.redisObject* %236, %struct.redisObject* %238, i8* nonnull %222) #8, !dbg !2852
  br label %242, !dbg !2853

; <label>:239:                                    ; preds = %231
  %240 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i64 0, i64 0), i64 4) #8, !dbg !2854
  %241 = call %struct.redisObject* @resetRefCount(%struct.redisObject* %240) #8, !dbg !2856
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 0, %struct.redisObject* %241) #8, !dbg !2857
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 1, %struct.redisObject* %223) #8, !dbg !2858
  br label %242

; <label>:242:                                    ; preds = %239, %234
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @forceCommandPropagation(%struct.client* nonnull %0, i32 3) #8, !dbg !2859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2860
  br label %243, !dbg !2860

; <label>:243:                                    ; preds = %202, %242, %207, %2, %124, %116, %29, %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2861
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #7, !dbg !2862
  call void @llvm.lifetime.end.p0i8(i64 43, i8* nonnull %9) #7, !dbg !2862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2862
  ret void, !dbg !2862
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
define dso_local void @luaLdbLineHook(%struct.lua_State*, %struct.lua_Debug*) #0 !dbg !2863 {
  %3 = tail call i32 @lua_getstack(%struct.lua_State* %0, i32 0, %struct.lua_Debug* %1) #8, !dbg !2878
  %4 = tail call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.252, i64 0, i64 0), %struct.lua_Debug* %1) #8, !dbg !2879
  %5 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 5, !dbg !2880
  %6 = load i32, i32* %5, align 8, !dbg !2880, !tbaa !803
  store i32 %6, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !2881, !tbaa !1740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2891
  %7 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !2893, !tbaa !2895
  %8 = icmp sgt i32 %7, 0, !dbg !2896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  br i1 %8, label %9, label %19, !dbg !2897

; <label>:9:                                      ; preds = %2
  %10 = sext i32 %7 to i64, !dbg !2897
  br label %11, !dbg !2897

; <label>:11:                                     ; preds = %16, %9
  %12 = phi i64 [ 0, %9 ], [ %17, %16 ]
  %13 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %12, !dbg !2898
  %14 = load i32, i32* %13, align 4, !dbg !2898, !tbaa !979
  %15 = icmp eq i32 %14, %6, !dbg !2900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2901
  br i1 %15, label %19, label %16, !dbg !2901

; <label>:16:                                     ; preds = %11
  %17 = add nuw nsw i64 %12, 1, !dbg !2902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2903
  %18 = icmp slt i64 %17, %10, !dbg !2896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  br i1 %18, label %11, label %19, !dbg !2897, !llvm.loop !2904

; <label>:19:                                     ; preds = %16, %11, %2
  %20 = phi i32 [ 0, %2 ], [ 0, %16 ], [ 1, %11 ], !dbg !2907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2909
  %21 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !2910
  %22 = or i32 %21, %20, !dbg !2911
  %23 = icmp ne i32 %22, 0, !dbg !2911
  %24 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 9, i64 0, !dbg !2913
  %25 = tail call i8* @strstr(i8* nonnull %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.189, i64 0, i64 0)) #8, !dbg !2915
  %26 = icmp eq i8* %25, null, !dbg !2916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2917
  br i1 %26, label %76, label %27, !dbg !2917

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 0, !dbg !2918
  %29 = load i32, i32* %28, align 8, !dbg !2918, !tbaa !2919
  %30 = icmp eq i32 %29, 3, !dbg !2920
  %31 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !2921
  %32 = icmp eq i32 %31, 0, !dbg !2922
  %33 = and i1 %30, %32, !dbg !2923
  %34 = xor i1 %23, true, !dbg !2924
  %35 = and i1 %33, %34, !dbg !2923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2923
  br i1 %35, label %36, label %46, !dbg !2923

; <label>:36:                                     ; preds = %27
  %37 = tail call i64 @mstime() #8, !dbg !2925
  %38 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 276), align 8, !dbg !2926, !tbaa !2532
  %39 = sub nsw i64 %37, %38, !dbg !2927
  %40 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 275), align 8, !dbg !2929, !tbaa !2537
  %41 = icmp eq i64 %40, 0, !dbg !2930
  %42 = select i1 %41, i64 5000, i64 %40, !dbg !2930
  %43 = icmp slt i64 %39, %42, !dbg !2932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  br i1 %43, label %45, label %44, !dbg !2934

; <label>:44:                                     ; preds = %36
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !2935, !tbaa !2937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2938
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %46

; <label>:45:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2939
  br label %76

; <label>:46:                                     ; preds = %44, %27
  %47 = phi i32 [ %31, %27 ], [ 1, %44 ], !dbg !2941
  %48 = phi i32 [ 0, %27 ], [ 1, %44 ], !dbg !2908
  %49 = or i32 %47, %22, !dbg !2942
  %50 = icmp eq i32 %49, 0, !dbg !2942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2942
  br i1 %50, label %76, label %51, !dbg !2942

; <label>:51:                                     ; preds = %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2943
  br i1 %23, label %52, label %56, !dbg !2943

; <label>:52:                                     ; preds = %51
  %53 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !2944, !tbaa !1720
  %54 = icmp eq i32 %53, 0, !dbg !2946
  %55 = select i1 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.255, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i64 0, i64 0), !dbg !2946
  br label %58, !dbg !2948

; <label>:56:                                     ; preds = %51
  %57 = icmp eq i32 %48, 0, !dbg !2949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  br i1 %57, label %60, label %58, !dbg !2951

; <label>:58:                                     ; preds = %56, %52
  %59 = phi i8* [ %55, %52 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.256, i64 0, i64 0), %56 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2952
  br label %60, !dbg !2953

; <label>:60:                                     ; preds = %58, %56
  %61 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.253, i64 0, i64 0), %56 ], [ %59, %58 ], !dbg !2954
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !2953, !tbaa !2937
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !2955, !tbaa !1720
  %62 = tail call i8* @sdsempty() #8, !dbg !2956
  %63 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !2957, !tbaa !1740
  %64 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.257, i64 0, i64 0), i32 %63, i8* %61) #8, !dbg !2958
  %65 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !2961, !tbaa !787
  %66 = tail call %struct.list* @listAddNodeTail(%struct.list* %65, i8* %64) #8, !dbg !2962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2963
  %67 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !2964, !tbaa !1740
  tail call void @ldbLogSourceLine(i32 %67) #9, !dbg !2965
  tail call void @ldbSendLogs() #9, !dbg !2966
  %68 = tail call i32 @ldbRepl(%struct.lua_State* %0) #9, !dbg !2967
  %69 = icmp eq i32 %68, -1, !dbg !2969
  %70 = icmp ne i32 %48, 0, !dbg !2970
  %71 = and i1 %70, %69, !dbg !2971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2971
  br i1 %71, label %72, label %74, !dbg !2971

; <label>:72:                                     ; preds = %60
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.258, i64 0, i64 0)) #8, !dbg !2972
  %73 = tail call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !2974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2975
  br label %74, !dbg !2975

; <label>:74:                                     ; preds = %72, %60
  %75 = tail call i64 @mstime() #8, !dbg !2976
  store i64 %75, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 276), align 8, !dbg !2977, !tbaa !2532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2978
  br label %76, !dbg !2978

; <label>:76:                                     ; preds = %74, %46, %19, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2979
  ret void, !dbg !2979
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
define dso_local void @evalCommand(%struct.client*) local_unnamed_addr #0 !dbg !2980 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2984
  %3 = load i32, i32* %2, align 8, !dbg !2984, !tbaa !965
  %4 = and i32 %3, 33554432, !dbg !2986
  %5 = icmp eq i32 %4, 0, !dbg !2986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2987
  br i1 %5, label %6, label %7, !dbg !2987

; <label>:6:                                      ; preds = %1
  tail call void @evalGenericCommand(%struct.client* nonnull %0, i32 0) #9, !dbg !2988
  br label %15, !dbg !2988

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @ldbStartSession(%struct.client* nonnull %0) #8, !dbg !2996
  %9 = icmp eq i32 %8, 0, !dbg !2996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2998
  br i1 %9, label %11, label %10, !dbg !2998

; <label>:10:                                     ; preds = %7
  tail call void @evalGenericCommand(%struct.client* nonnull %0, i32 0) #8, !dbg !2999
  tail call void @ldbEndSession(%struct.client* nonnull %0) #8, !dbg !3001
  br label %14, !dbg !3002

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %2, align 8, !dbg !3009, !tbaa !965
  %13 = and i32 %12, -100663297, !dbg !3009
  store i32 %13, i32* %2, align 8, !dbg !3009, !tbaa !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3010
  br label %14

; <label>:14:                                     ; preds = %10, %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3011
  br label %15

; <label>:15:                                     ; preds = %14, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3012
  ret void, !dbg !3012
}

; Function Attrs: noredzone nounwind
define dso_local void @evalGenericCommandWithDebugging(%struct.client*, i32) local_unnamed_addr #0 !dbg !2990 {
  %3 = tail call i32 @ldbStartSession(%struct.client* %0) #9, !dbg !3015
  %4 = icmp eq i32 %3, 0, !dbg !3015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3016
  br i1 %4, label %6, label %5, !dbg !3016

; <label>:5:                                      ; preds = %2
  tail call void @evalGenericCommand(%struct.client* %0, i32 %1) #9, !dbg !3017
  tail call void @ldbEndSession(%struct.client* %0) #9, !dbg !3018
  br label %10, !dbg !3019

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3022
  %8 = load i32, i32* %7, align 8, !dbg !3023, !tbaa !965
  %9 = and i32 %8, -100663297, !dbg !3023
  store i32 %9, i32* %7, align 8, !dbg !3023, !tbaa !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3024
  br label %10

; <label>:10:                                     ; preds = %6, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3025
  ret void, !dbg !3025
}

; Function Attrs: noredzone nounwind
define dso_local void @evalShaCommand(%struct.client*) local_unnamed_addr #0 !dbg !3026 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3030
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !3030, !tbaa !1132
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !3032
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !3032, !tbaa !1003
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 2, !dbg !3033
  %7 = load i8*, i8** %6, align 8, !dbg !3033, !tbaa !1046
  %8 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !3036
  %9 = load i8, i8* %8, align 1, !dbg !3036, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3038
  %10 = trunc i8 %9 to i3, !dbg !3038
  switch i3 %10, label %29 [
    i3 -4, label %25
    i3 1, label %11
    i3 2, label %15
    i3 3, label %20
  ], !dbg !3038

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds i8, i8* %7, i64 -3, !dbg !3039
  %13 = load i8, i8* %12, align 1, !dbg !3040, !tbaa !486
  %14 = zext i8 %13 to i64, !dbg !3039
  br label %30, !dbg !3041

; <label>:15:                                     ; preds = %1
  %16 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !3042
  %17 = bitcast i8* %16 to i16*, !dbg !3043
  %18 = load i16, i16* %17, align 1, !dbg !3043, !tbaa !1085
  %19 = zext i16 %18 to i64, !dbg !3042
  br label %30, !dbg !3044

; <label>:20:                                     ; preds = %1
  %21 = getelementptr inbounds i8, i8* %7, i64 -9, !dbg !3045
  %22 = bitcast i8* %21 to i32*, !dbg !3046
  %23 = load i32, i32* %22, align 1, !dbg !3046, !tbaa !979
  %24 = zext i32 %23 to i64, !dbg !3045
  br label %30, !dbg !3047

; <label>:25:                                     ; preds = %1
  %26 = getelementptr inbounds i8, i8* %7, i64 -17, !dbg !3048
  %27 = bitcast i8* %26 to i64*, !dbg !3049
  %28 = load i64, i64* %27, align 1, !dbg !3049, !tbaa !1026
  br label %30, !dbg !3050

; <label>:29:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3053
  br label %33, !dbg !3053

; <label>:30:                                     ; preds = %11, %15, %20, %25
  %31 = phi i64 [ %28, %25 ], [ %24, %20 ], [ %19, %15 ], [ %14, %11 ], !dbg !3054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3052
  %32 = icmp eq i64 %31, 40, !dbg !3055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3053
  br i1 %32, label %35, label %33, !dbg !3053

; <label>:33:                                     ; preds = %29, %30
  %34 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 19), align 8, !dbg !3056, !tbaa !2708
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %34) #8, !dbg !3058
  br label %42, !dbg !3059

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3060
  %37 = load i32, i32* %36, align 8, !dbg !3060, !tbaa !965
  %38 = and i32 %37, 33554432, !dbg !3062
  %39 = icmp eq i32 %38, 0, !dbg !3062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3063
  br i1 %39, label %40, label %41, !dbg !3063

; <label>:40:                                     ; preds = %35
  tail call void @evalGenericCommand(%struct.client* nonnull %0, i32 1) #9, !dbg !3064
  br label %42, !dbg !3064

; <label>:41:                                     ; preds = %35
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.114, i64 0, i64 0)) #8, !dbg !3065
  br label %42, !dbg !3067

; <label>:42:                                     ; preds = %33, %41, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3069
  ret void, !dbg !3069
}

; Function Attrs: noredzone nounwind
define dso_local void @scriptCommand(%struct.client*) local_unnamed_addr #0 !dbg !3070 {
  %2 = alloca [6 x i8*], align 16
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3087
  %4 = load i32, i32* %3, align 8, !dbg !3087, !tbaa !1135
  %5 = icmp eq i32 %4, 2, !dbg !3088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3089
  br i1 %5, label %6, label %32, !dbg !3089

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3090
  %8 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !3090, !tbaa !1132
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 1, !dbg !3091
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !3091, !tbaa !1003
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !3092
  %12 = load i8*, i8** %11, align 8, !dbg !3092, !tbaa !1046
  %13 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i64 0, i64 0)) #11, !dbg !3093
  %14 = icmp eq i32 %13, 0, !dbg !3093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3094
  br i1 %14, label %15, label %22, !dbg !3094

; <label>:15:                                     ; preds = %6
  %16 = bitcast [6 x i8*]* %2 to i8*, !dbg !3095
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %16) #7, !dbg !3095
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %16, i8 0, i64 48, i1 false), !dbg !3096
  %17 = getelementptr inbounds [6 x i8*], [6 x i8*]* %2, i64 0, i64 0, !dbg !3096
  %18 = bitcast [6 x i8*]* %2 to <2 x i8*>*, !dbg !3096
  store <2 x i8*> <i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.116, i64 0, i64 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.117, i64 0, i64 0)>, <2 x i8*>* %18, align 16, !dbg !3096
  %19 = getelementptr inbounds [6 x i8*], [6 x i8*]* %2, i64 0, i64 2, !dbg !3096
  %20 = bitcast i8** %19 to <2 x i8*>*, !dbg !3096
  store <2 x i8*> <i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.118, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.119, i64 0, i64 0)>, <2 x i8*>* %20, align 16, !dbg !3096
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* %2, i64 0, i64 4, !dbg !3096
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.120, i64 0, i64 0), i8** %21, align 16, !dbg !3096
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %17) #8, !dbg !3097
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %16) #7, !dbg !3098
  br label %176, !dbg !3099

; <label>:22:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3100
  %23 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i64 0, i64 0)) #11, !dbg !3101
  %24 = icmp eq i32 %23, 0, !dbg !3101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3102
  br i1 %24, label %26, label %25, !dbg !3102

; <label>:25:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3103
  br label %42, !dbg !3103

; <label>:26:                                     ; preds = %22
  %27 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !3104, !tbaa !2110
  tail call void @dictRelease(%struct.dict* %27) #8, !dbg !3108
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !3109, !tbaa !2112
  %28 = load %struct.lua_State*, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !3110, !tbaa !2198
  tail call void @lua_close(%struct.lua_State* %28) #8, !dbg !3111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3112
  tail call void @scriptingInit(i32 0) #8, !dbg !3113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3114
  %29 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3115, !tbaa !3116
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %29) #8, !dbg !3117
  tail call void @replicationScriptCacheFlush() #8, !dbg !3118
  %30 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3119, !tbaa !2575
  %31 = add nsw i64 %30, 1, !dbg !3119
  store i64 %31, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3119, !tbaa !2575
  br label %176, !dbg !3120

; <label>:32:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3100
  %33 = icmp sgt i32 %4, 1, !dbg !3121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3103
  br i1 %33, label %34, label %41, !dbg !3103

; <label>:34:                                     ; preds = %32
  %35 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %36 = load %struct.redisObject**, %struct.redisObject*** %35, align 8, !dbg !3122, !tbaa !1132
  %37 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %36, i64 1
  %38 = load %struct.redisObject*, %struct.redisObject** %37, align 8, !dbg !3123, !tbaa !1003
  %39 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %38, i64 0, i32 2
  %40 = load i8*, i8** %39, align 8, !dbg !3124, !tbaa !1046
  br label %42, !dbg !3103

; <label>:41:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3128
  br label %175

; <label>:42:                                     ; preds = %34, %25
  %43 = phi %struct.redisObject*** [ %35, %34 ], [ %7, %25 ], !dbg !3122
  %44 = phi i8* [ %40, %34 ], [ %12, %25 ], !dbg !3124
  %45 = phi %struct.redisObject** [ %36, %34 ], [ %8, %25 ], !dbg !3122
  %46 = tail call i32 @strcasecmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.122, i64 0, i64 0)) #11, !dbg !3130
  %47 = icmp eq i32 %46, 0, !dbg !3130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3131
  br i1 %47, label %48, label %72, !dbg !3131

; <label>:48:                                     ; preds = %42
  %49 = add nsw i32 %4, -2, !dbg !3132
  %50 = sext i32 %49 to i64, !dbg !3133
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %50) #8, !dbg !3134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3136
  %51 = load i32, i32* %3, align 8, !dbg !3138, !tbaa !1135
  %52 = icmp sgt i32 %51, 2, !dbg !3140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3141
  br i1 %52, label %53, label %176, !dbg !3141

; <label>:53:                                     ; preds = %48, %67
  %54 = phi i64 [ %68, %67 ], [ 2, %48 ]
  %55 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !3142, !tbaa !2110
  %56 = load %struct.redisObject**, %struct.redisObject*** %43, align 8, !dbg !3145, !tbaa !1132
  %57 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %56, i64 %54, !dbg !3146
  %58 = load %struct.redisObject*, %struct.redisObject** %57, align 8, !dbg !3146, !tbaa !1003
  %59 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %58, i64 0, i32 2, !dbg !3147
  %60 = load i8*, i8** %59, align 8, !dbg !3147, !tbaa !1046
  %61 = tail call %struct.dictEntry* @dictFind(%struct.dict* %55, i8* %60) #8, !dbg !3148
  %62 = icmp eq %struct.dictEntry* %61, null, !dbg !3148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3149
  br i1 %62, label %65, label %63, !dbg !3149

; <label>:63:                                     ; preds = %53
  %64 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !3150, !tbaa !3151
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %64) #8, !dbg !3152
  br label %67, !dbg !3152

; <label>:65:                                     ; preds = %53
  %66 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !3153, !tbaa !3154
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %66) #8, !dbg !3155
  br label %67

; <label>:67:                                     ; preds = %63, %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %68 = add nuw nsw i64 %54, 1, !dbg !3156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3157
  %69 = load i32, i32* %3, align 8, !dbg !3138, !tbaa !1135
  %70 = sext i32 %69 to i64, !dbg !3140
  %71 = icmp slt i64 %68, %70, !dbg !3140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3141
  br i1 %71, label %53, label %176, !dbg !3141, !llvm.loop !3158

; <label>:72:                                     ; preds = %42
  %73 = icmp eq i32 %4, 3, !dbg !3160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3125
  br i1 %73, label %74, label %85, !dbg !3125

; <label>:74:                                     ; preds = %72
  %75 = tail call i32 @strcasecmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i64 0, i64 0)) #11, !dbg !3161
  %76 = icmp eq i32 %75, 0, !dbg !3161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3162
  br i1 %76, label %77, label %85, !dbg !3162

; <label>:77:                                     ; preds = %74
  %78 = load %struct.lua_State*, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !3163, !tbaa !2198
  %79 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %45, i64 2, !dbg !3164
  %80 = load %struct.redisObject*, %struct.redisObject** %79, align 8, !dbg !3164, !tbaa !1003
  %81 = tail call i8* @luaCreateFunction(%struct.client* nonnull %0, %struct.lua_State* %78, %struct.redisObject* %80) #9, !dbg !3165
  %82 = icmp eq i8* %81, null, !dbg !3167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3169
  br i1 %82, label %84, label %83, !dbg !3169

; <label>:83:                                     ; preds = %77
  tail call void @addReplyBulkCBuffer(%struct.client* nonnull %0, i8* nonnull %81, i64 40) #8, !dbg !3170
  tail call void @forceCommandPropagation(%struct.client* nonnull %0, i32 3) #8, !dbg !3171
  br label %84, !dbg !3172

; <label>:84:                                     ; preds = %77, %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3173
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  ret void

; <label>:85:                                     ; preds = %74, %72
  %86 = phi i1 [ true, %74 ], [ false, %72 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3126
  br i1 %5, label %87, label %109, !dbg !3126

; <label>:87:                                     ; preds = %85
  %88 = tail call i32 @strcasecmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.124, i64 0, i64 0)) #11, !dbg !3174
  %89 = icmp eq i32 %88, 0, !dbg !3174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3175
  br i1 %89, label %90, label %109, !dbg !3175

; <label>:90:                                     ; preds = %87
  %91 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !3176, !tbaa !963
  %92 = icmp eq %struct.client* %91, null, !dbg !3179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3180
  br i1 %92, label %93, label %95, !dbg !3180

; <label>:93:                                     ; preds = %90
  %94 = tail call i8* @sdsnew(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.125, i64 0, i64 0)) #8, !dbg !3181
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %94) #8, !dbg !3183
  br label %176, !dbg !3184

; <label>:95:                                     ; preds = %90
  %96 = getelementptr inbounds %struct.client, %struct.client* %91, i64 0, i32 21, !dbg !3185
  %97 = load i32, i32* %96, align 8, !dbg !3185, !tbaa !965
  %98 = and i32 %97, 2, !dbg !3187
  %99 = icmp eq i32 %98, 0, !dbg !3187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3188
  br i1 %99, label %102, label %100, !dbg !3188

; <label>:100:                                    ; preds = %95
  %101 = tail call i8* @sdsnew(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.126, i64 0, i64 0)) #8, !dbg !3189
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %101) #8, !dbg !3191
  br label %176, !dbg !3192

; <label>:102:                                    ; preds = %95
  %103 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 277), align 8, !dbg !3193, !tbaa !1301
  %104 = icmp eq i32 %103, 0, !dbg !3195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3196
  br i1 %104, label %107, label %105, !dbg !3196

; <label>:105:                                    ; preds = %102
  %106 = tail call i8* @sdsnew(i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.127, i64 0, i64 0)) #8, !dbg !3197
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %106) #8, !dbg !3199
  br label %176, !dbg !3200

; <label>:107:                                    ; preds = %102
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 283), align 8, !dbg !3201, !tbaa !2555
  %108 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3203, !tbaa !3116
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %108) #8, !dbg !3204
  br label %176

; <label>:109:                                    ; preds = %87, %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3128
  br i1 %86, label %110, label %175, !dbg !3128

; <label>:110:                                    ; preds = %109
  %111 = tail call i32 @strcasecmp(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #11, !dbg !3205
  %112 = icmp eq i32 %111, 0, !dbg !3205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3206
  br i1 %112, label %113, label %175, !dbg !3206

; <label>:113:                                    ; preds = %110
  %114 = tail call i32 @clientHasPendingReplies(%struct.client* nonnull %0) #8, !dbg !3207
  %115 = icmp eq i32 %114, 0, !dbg !3207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3210
  br i1 %115, label %117, label %116, !dbg !3210

; <label>:116:                                    ; preds = %113
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.128, i64 0, i64 0)) #8, !dbg !3211
  br label %176, !dbg !3213

; <label>:117:                                    ; preds = %113
  %118 = load %struct.redisObject**, %struct.redisObject*** %43, align 8, !dbg !3214, !tbaa !1132
  %119 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %118, i64 2, !dbg !3216
  %120 = load %struct.redisObject*, %struct.redisObject** %119, align 8, !dbg !3216, !tbaa !1003
  %121 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %120, i64 0, i32 2, !dbg !3217
  %122 = load i8*, i8** %121, align 8, !dbg !3217, !tbaa !1046
  %123 = tail call i32 @strcasecmp(i8* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i64 0, i64 0)) #11, !dbg !3218
  %124 = icmp eq i32 %123, 0, !dbg !3218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3219
  br i1 %124, label %125, label %130, !dbg !3219

; <label>:125:                                    ; preds = %117
  %126 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3223
  %127 = load i32, i32* %126, align 8, !dbg !3224, !tbaa !965
  %128 = and i32 %127, -100663297, !dbg !3224
  store i32 %128, i32* %126, align 8, !dbg !3224, !tbaa !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3225
  %129 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3226, !tbaa !3116
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %129) #8, !dbg !3227
  br label %176, !dbg !3228

; <label>:130:                                    ; preds = %117
  %131 = tail call i32 @strcasecmp(i8* %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0)) #11, !dbg !3229
  %132 = icmp eq i32 %131, 0, !dbg !3229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3231
  br i1 %132, label %133, label %151, !dbg !3231

; <label>:133:                                    ; preds = %130
  %134 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3238
  %135 = load i32, i32* %134, align 8, !dbg !3239, !tbaa !965
  %136 = or i32 %135, 33554432, !dbg !3239
  store i32 %136, i32* %134, align 8, !dbg !3239, !tbaa !965
  %137 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3240, !tbaa !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3249
  %138 = getelementptr inbounds %struct.list, %struct.list* %137, i64 0, i32 0, !dbg !3250
  %139 = load %struct.listNode*, %struct.listNode** %138, align 8, !dbg !3250, !tbaa !1397
  %140 = icmp eq %struct.listNode* %139, null, !dbg !3252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3249
  br i1 %140, label %145, label %141, !dbg !3249

; <label>:141:                                    ; preds = %133, %141
  %142 = phi %struct.listNode* [ %143, %141 ], [ %139, %133 ]
  tail call void @listDelNode(%struct.list* nonnull %137, %struct.listNode* nonnull %142) #8, !dbg !3253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3249
  %143 = load %struct.listNode*, %struct.listNode** %138, align 8, !dbg !3250, !tbaa !1397
  %144 = icmp eq %struct.listNode* %143, null, !dbg !3252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3249
  br i1 %144, label %145, label %141, !dbg !3249, !llvm.loop !3254

; <label>:145:                                    ; preds = %141, %133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3257
  %146 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !3258
  %147 = load i32, i32* %146, align 8, !dbg !3258, !tbaa !3259
  store i32 %147, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3260, !tbaa !2082
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !3261, !tbaa !2937
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3262, !tbaa !2895
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !3263, !tbaa !1720
  %148 = load i8*, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3264, !tbaa !2097
  tail call void @sdsfree(i8* %148) #8, !dbg !3265
  %149 = tail call i8* @sdsempty() #8, !dbg !3266
  store i8* %149, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3267, !tbaa !2097
  store i64 256, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !3268, !tbaa !3269
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 15), align 8, !dbg !3270, !tbaa !3271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3272
  %150 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3273, !tbaa !3116
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %150) #8, !dbg !3274
  br label %176, !dbg !3275

; <label>:151:                                    ; preds = %130
  %152 = tail call i32 @strcasecmp(i8* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0)) #11, !dbg !3276
  %153 = icmp eq i32 %152, 0, !dbg !3276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3278
  br i1 %153, label %154, label %174, !dbg !3278

; <label>:154:                                    ; preds = %151
  %155 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3282
  %156 = load i32, i32* %155, align 8, !dbg !3283, !tbaa !965
  %157 = or i32 %156, 33554432, !dbg !3283
  store i32 %157, i32* %155, align 8, !dbg !3283, !tbaa !965
  %158 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3284, !tbaa !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3287
  %159 = getelementptr inbounds %struct.list, %struct.list* %158, i64 0, i32 0, !dbg !3288
  %160 = load %struct.listNode*, %struct.listNode** %159, align 8, !dbg !3288, !tbaa !1397
  %161 = icmp eq %struct.listNode* %160, null, !dbg !3290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3287
  br i1 %161, label %166, label %162, !dbg !3287

; <label>:162:                                    ; preds = %154, %162
  %163 = phi %struct.listNode* [ %164, %162 ], [ %160, %154 ]
  tail call void @listDelNode(%struct.list* nonnull %158, %struct.listNode* nonnull %163) #8, !dbg !3291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3287
  %164 = load %struct.listNode*, %struct.listNode** %159, align 8, !dbg !3288, !tbaa !1397
  %165 = icmp eq %struct.listNode* %164, null, !dbg !3290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3287
  br i1 %165, label %166, label %162, !dbg !3287, !llvm.loop !3254

; <label>:166:                                    ; preds = %162, %154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3292
  %167 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !3293
  %168 = load i32, i32* %167, align 8, !dbg !3293, !tbaa !3259
  store i32 %168, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3294, !tbaa !2082
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !3295, !tbaa !2937
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3296, !tbaa !2895
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !3297, !tbaa !1720
  %169 = load i8*, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3298, !tbaa !2097
  tail call void @sdsfree(i8* %169) #8, !dbg !3299
  %170 = tail call i8* @sdsempty() #8, !dbg !3300
  store i8* %170, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3301, !tbaa !2097
  store i64 256, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !3302, !tbaa !3269
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 15), align 8, !dbg !3303, !tbaa !3271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3304
  %171 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3305, !tbaa !3116
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %171) #8, !dbg !3306
  %172 = load i32, i32* %155, align 8, !dbg !3307, !tbaa !965
  %173 = or i32 %172, 67108864, !dbg !3307
  store i32 %173, i32* %155, align 8, !dbg !3307, !tbaa !965
  br label %176

; <label>:174:                                    ; preds = %151
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.132, i64 0, i64 0)) #8, !dbg !3308
  br label %176, !dbg !3310

; <label>:175:                                    ; preds = %41, %110, %109
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #8, !dbg !3311
  br label %176

; <label>:176:                                    ; preds = %67, %48, %26, %175, %145, %166, %125, %93, %105, %107, %100, %116, %174, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3313
  ret void, !dbg !3313
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
define dso_local void @ldbDisable(%struct.client* nocapture) local_unnamed_addr #0 !dbg !3004 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3315
  %3 = load i32, i32* %2, align 8, !dbg !3316, !tbaa !965
  %4 = and i32 %3, -100663297, !dbg !3316
  store i32 %4, i32* %2, align 8, !dbg !3316, !tbaa !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3317
  ret void, !dbg !3317
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbEnable(%struct.client* nocapture) local_unnamed_addr #0 !dbg !3233 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3319
  %3 = load i32, i32* %2, align 8, !dbg !3320, !tbaa !965
  %4 = or i32 %3, 33554432, !dbg !3320
  store i32 %4, i32* %2, align 8, !dbg !3320, !tbaa !965
  %5 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3321, !tbaa !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3324
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 0, !dbg !3325
  %7 = load %struct.listNode*, %struct.listNode** %6, align 8, !dbg !3325, !tbaa !1397
  %8 = icmp eq %struct.listNode* %7, null, !dbg !3327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3324
  br i1 %8, label %13, label %9, !dbg !3324

; <label>:9:                                      ; preds = %1, %9
  %10 = phi %struct.listNode* [ %11, %9 ], [ %7, %1 ]
  tail call void @listDelNode(%struct.list* nonnull %5, %struct.listNode* nonnull %10) #8, !dbg !3328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3324
  %11 = load %struct.listNode*, %struct.listNode** %6, align 8, !dbg !3325, !tbaa !1397
  %12 = icmp eq %struct.listNode* %11, null, !dbg !3327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3324
  br i1 %12, label %13, label %9, !dbg !3324, !llvm.loop !3254

; <label>:13:                                     ; preds = %9, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !3330
  %15 = load i32, i32* %14, align 8, !dbg !3330, !tbaa !3259
  store i32 %15, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3331, !tbaa !2082
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !3332, !tbaa !2937
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3333, !tbaa !2895
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !3334, !tbaa !1720
  %16 = load i8*, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3335, !tbaa !2097
  tail call void @sdsfree(i8* %16) #8, !dbg !3336
  %17 = tail call i8* @sdsempty() #8, !dbg !3337
  store i8* %17, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3338, !tbaa !2097
  store i64 256, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !3339, !tbaa !3269
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 15), align 8, !dbg !3340, !tbaa !3271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3341
  ret void, !dbg !3341
}

; Function Attrs: noredzone
declare dso_local void @addReplySubcommandSyntaxError(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.list* @listCreate() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbFlushLog(%struct.list*) local_unnamed_addr #0 !dbg !3242 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3255
  %2 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 0, !dbg !3343
  %3 = load %struct.listNode*, %struct.listNode** %2, align 8, !dbg !3343, !tbaa !1397
  %4 = icmp eq %struct.listNode* %3, null, !dbg !3345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3255
  br i1 %4, label %9, label %5, !dbg !3255

; <label>:5:                                      ; preds = %1, %5
  %6 = phi %struct.listNode* [ %7, %5 ], [ %3, %1 ]
  tail call void @listDelNode(%struct.list* nonnull %0, %struct.listNode* nonnull %6) #8, !dbg !3346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3255
  %7 = load %struct.listNode*, %struct.listNode** %2, align 8, !dbg !3343, !tbaa !1397
  %8 = icmp eq %struct.listNode* %7, null, !dbg !3345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3255
  br i1 %8, label %9, label %5, !dbg !3255, !llvm.loop !3254

; <label>:9:                                      ; preds = %5, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3347
  ret void, !dbg !3347
}

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbLogWithMaxLen(i8*) local_unnamed_addr #0 !dbg !3348 {
  %2 = load i64, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !3354, !tbaa !3269
  %3 = icmp eq i64 %2, 0, !dbg !3356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3357
  br i1 %3, label %36, label %4, !dbg !3357

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !3360
  %6 = load i8, i8* %5, align 1, !dbg !3360, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3362
  %7 = trunc i8 %6 to i3, !dbg !3362
  switch i3 %7, label %29 [
    i3 0, label %8
    i3 1, label %11
    i3 2, label %15
    i3 3, label %20
    i3 -4, label %25
  ], !dbg !3362

; <label>:8:                                      ; preds = %4
  %9 = lshr i8 %6, 3, !dbg !3363
  %10 = zext i8 %9 to i64, !dbg !3363
  br label %30, !dbg !3364

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !3365
  %13 = load i8, i8* %12, align 1, !dbg !3366, !tbaa !486
  %14 = zext i8 %13 to i64, !dbg !3365
  br label %30, !dbg !3367

; <label>:15:                                     ; preds = %4
  %16 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !3368
  %17 = bitcast i8* %16 to i16*, !dbg !3369
  %18 = load i16, i16* %17, align 1, !dbg !3369, !tbaa !1085
  %19 = zext i16 %18 to i64, !dbg !3368
  br label %30, !dbg !3370

; <label>:20:                                     ; preds = %4
  %21 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !3371
  %22 = bitcast i8* %21 to i32*, !dbg !3372
  %23 = load i32, i32* %22, align 1, !dbg !3372, !tbaa !979
  %24 = zext i32 %23 to i64, !dbg !3371
  br label %30, !dbg !3373

; <label>:25:                                     ; preds = %4
  %26 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !3374
  %27 = bitcast i8* %26 to i64*, !dbg !3375
  %28 = load i64, i64* %27, align 1, !dbg !3375, !tbaa !1026
  br label %30, !dbg !3376

; <label>:29:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3379
  br label %36, !dbg !3379

; <label>:30:                                     ; preds = %8, %11, %15, %20, %25
  %31 = phi i64 [ %28, %25 ], [ %24, %20 ], [ %19, %15 ], [ %14, %11 ], [ %10, %8 ], !dbg !3380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3378
  %32 = icmp ugt i64 %31, %2, !dbg !3382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3379
  br i1 %32, label %33, label %36, !dbg !3379

; <label>:33:                                     ; preds = %30
  %34 = add i64 %2, -1, !dbg !3383
  tail call void @sdsrange(i8* nonnull %0, i64 0, i64 %34) #8, !dbg !3385
  %35 = tail call i8* @sdscatlen(i8* nonnull %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0), i64 4) #8, !dbg !3386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3387
  br label %36, !dbg !3387

; <label>:36:                                     ; preds = %29, %1, %33, %30
  %37 = phi i8* [ %35, %33 ], [ %0, %30 ], [ %0, %1 ], [ %0, %29 ]
  %38 = phi i1 [ true, %33 ], [ false, %30 ], [ false, %1 ], [ false, %29 ]
  %39 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3390, !tbaa !787
  %40 = tail call %struct.list* @listAddNodeTail(%struct.list* %39, i8* %37) #8, !dbg !3391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3392
  %41 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 15), align 8, !dbg !3393
  %42 = icmp eq i32 %41, 0, !dbg !3395
  %43 = and i1 %38, %42, !dbg !3396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3396
  br i1 %43, label %44, label %48, !dbg !3396

; <label>:44:                                     ; preds = %36
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 15), align 8, !dbg !3397, !tbaa !3271
  %45 = tail call i8* @sdsnew(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.134, i64 0, i64 0)) #8, !dbg !3399
  %46 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3402, !tbaa !787
  %47 = tail call %struct.list* @listAddNodeTail(%struct.list* %46, i8* %45) #8, !dbg !3403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3405
  br label %48, !dbg !3405

; <label>:48:                                     ; preds = %44, %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3406
  ret void, !dbg !3406
}

; Function Attrs: noredzone
declare dso_local void @sdsrange(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbSendLogs() local_unnamed_addr #0 !dbg !3407 {
  %1 = tail call i8* @sdsempty() #8, !dbg !3412
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3414, !tbaa !787
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i64 0, i32 5, !dbg !3414
  %4 = load i64, i64* %3, align 8, !dbg !3414, !tbaa !1375
  %5 = trunc i64 %4 to i32, !dbg !3415
  %6 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i64 0, i64 0), i32 %5) #8, !dbg !3416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3417
  %7 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3418, !tbaa !787
  %8 = getelementptr inbounds %struct.list, %struct.list* %7, i64 0, i32 5, !dbg !3418
  %9 = load i64, i64* %8, align 8, !dbg !3418, !tbaa !1375
  %10 = icmp eq i64 %9, 0, !dbg !3417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3417
  br i1 %10, label %28, label %11, !dbg !3417

; <label>:11:                                     ; preds = %0, %11
  %12 = phi %struct.list* [ %24, %11 ], [ %7, %0 ]
  %13 = phi i8* [ %22, %11 ], [ %6, %0 ]
  %14 = getelementptr inbounds %struct.list, %struct.list* %12, i64 0, i32 0, !dbg !3419
  %15 = load %struct.listNode*, %struct.listNode** %14, align 8, !dbg !3419, !tbaa !1397
  %16 = tail call i8* @sdscatlen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0), i64 1) #8, !dbg !3421
  %17 = getelementptr inbounds %struct.listNode, %struct.listNode* %15, i64 0, i32 2, !dbg !3422
  %18 = load i8*, i8** %17, align 8, !dbg !3422, !tbaa !1398
  %19 = tail call i8* @sdsmapchars(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2) #8, !dbg !3423
  %20 = load i8*, i8** %17, align 8, !dbg !3424, !tbaa !1398
  %21 = tail call i8* @sdscatsds(i8* %16, i8* %20) #8, !dbg !3425
  %22 = tail call i8* @sdscatlen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 2) #8, !dbg !3426
  %23 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3427, !tbaa !787
  tail call void @listDelNode(%struct.list* %23, %struct.listNode* %15) #8, !dbg !3428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3417
  %24 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3418, !tbaa !787
  %25 = getelementptr inbounds %struct.list, %struct.list* %24, i64 0, i32 5, !dbg !3418
  %26 = load i64, i64* %25, align 8, !dbg !3418, !tbaa !1375
  %27 = icmp eq i64 %26, 0, !dbg !3417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3417
  br i1 %27, label %28, label %11, !dbg !3417, !llvm.loop !3429

; <label>:28:                                     ; preds = %11, %0
  %29 = phi i8* [ %6, %0 ], [ %22, %11 ], !dbg !3431
  %30 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3432, !tbaa !2082
  %31 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !3436
  %32 = load i8, i8* %31, align 1, !dbg !3436, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3438
  %33 = trunc i8 %32 to i3, !dbg !3438
  switch i3 %33, label %55 [
    i3 0, label %34
    i3 1, label %37
    i3 2, label %41
    i3 3, label %46
    i3 -4, label %51
  ], !dbg !3438

; <label>:34:                                     ; preds = %28
  %35 = lshr i8 %32, 3, !dbg !3439
  %36 = zext i8 %35 to i64, !dbg !3439
  br label %55, !dbg !3440

; <label>:37:                                     ; preds = %28
  %38 = getelementptr inbounds i8, i8* %29, i64 -3, !dbg !3441
  %39 = load i8, i8* %38, align 1, !dbg !3442, !tbaa !486
  %40 = zext i8 %39 to i64, !dbg !3441
  br label %55, !dbg !3443

; <label>:41:                                     ; preds = %28
  %42 = getelementptr inbounds i8, i8* %29, i64 -5, !dbg !3444
  %43 = bitcast i8* %42 to i16*, !dbg !3445
  %44 = load i16, i16* %43, align 1, !dbg !3445, !tbaa !1085
  %45 = zext i16 %44 to i64, !dbg !3444
  br label %55, !dbg !3446

; <label>:46:                                     ; preds = %28
  %47 = getelementptr inbounds i8, i8* %29, i64 -9, !dbg !3447
  %48 = bitcast i8* %47 to i32*, !dbg !3448
  %49 = load i32, i32* %48, align 1, !dbg !3448, !tbaa !979
  %50 = zext i32 %49 to i64, !dbg !3447
  br label %55, !dbg !3449

; <label>:51:                                     ; preds = %28
  %52 = getelementptr inbounds i8, i8* %29, i64 -17, !dbg !3450
  %53 = bitcast i8* %52 to i64*, !dbg !3451
  %54 = load i64, i64* %53, align 1, !dbg !3451, !tbaa !1026
  br label %55, !dbg !3452

; <label>:55:                                     ; preds = %28, %34, %37, %41, %46, %51
  %56 = phi i64 [ %54, %51 ], [ %50, %46 ], [ %45, %41 ], [ %40, %37 ], [ %36, %34 ], [ 0, %28 ], !dbg !3453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3455
  %57 = tail call i64 @write(i32 %30, i8* nonnull %29, i64 %56) #8, !dbg !3456
  tail call void @sdsfree(i8* nonnull %29) #8, !dbg !3457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3458
  ret void, !dbg !3458
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @ldbStartSession(%struct.client*) local_unnamed_addr #0 !dbg !3459 {
  %2 = alloca %struct.sigaction, align 8
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3499
  %4 = load i32, i32* %3, align 8, !dbg !3499, !tbaa !965
  %5 = and i32 %4, 67108864, !dbg !3500
  %6 = icmp eq i32 %5, 0, !dbg !3501
  %7 = lshr exact i32 %5, 26, !dbg !3501
  %8 = xor i32 %7, 1, !dbg !3501
  store i32 %8, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 2), align 8, !dbg !3502, !tbaa !3503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3504
  br i1 %6, label %9, label %28, !dbg !3504

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @fork() #8, !dbg !3505
  %11 = icmp eq i32 %10, -1, !dbg !3507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3508
  br i1 %11, label %12, label %13, !dbg !3508

; <label>:12:                                     ; preds = %9
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.137, i64 0, i64 0)) #8, !dbg !3509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3511
  br label %131

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i32 %10, 0, !dbg !3512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3513
  br i1 %14, label %15, label %23, !dbg !3513

; <label>:15:                                     ; preds = %13
  %16 = bitcast %struct.sigaction* %2 to i8*, !dbg !3514
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #7, !dbg !3514
  %17 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 1, !dbg !3515
  %18 = call i32 @sigemptyset(i64* nonnull %17) #8, !dbg !3516
  %19 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 2, !dbg !3517
  store i32 0, i32* %19, align 8, !dbg !3518, !tbaa !3519
  %20 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 0, i32 0, !dbg !3521
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %20, align 8, !dbg !3522, !tbaa !486
  %21 = call i32 @sigaction(i32 15, %struct.sigaction* nonnull %2, %struct.sigaction* null) #8, !dbg !3524
  %22 = call i32 @sigaction(i32 2, %struct.sigaction* nonnull %2, %struct.sigaction* null) #8, !dbg !3525
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.138, i64 0, i64 0)) #8, !dbg !3526
  call void @closeListeningSockets(i32 0) #8, !dbg !3527
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #7, !dbg !3528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3529
  br label %29

; <label>:23:                                     ; preds = %13
  %24 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3530, !tbaa !2090
  %25 = sext i32 %10 to i64, !dbg !3532
  %26 = inttoptr i64 %25 to i8*, !dbg !3533
  %27 = tail call %struct.list* @listAddNodeTail(%struct.list* %24, i8* %26) #8, !dbg !3534
  tail call void @freeClientAsync(%struct.client* nonnull %0) #8, !dbg !3535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3536
  br label %131

; <label>:28:                                     ; preds = %1
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.139, i64 0, i64 0)) #8, !dbg !3537
  br label %29

; <label>:29:                                     ; preds = %15, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3539, !tbaa !2082
  %31 = call i32 @anetBlock(i8* null, i32 %30) #8, !dbg !3540
  %32 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3541, !tbaa !2082
  %33 = call i32 @anetSendTimeout(i8* null, i32 %32, i64 5000) #8, !dbg !3542
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !3543, !tbaa !767
  %34 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3544
  %35 = load %struct.redisObject**, %struct.redisObject*** %34, align 8, !dbg !3544, !tbaa !1132
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 1, !dbg !3545
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !3545, !tbaa !1003
  %38 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 2, !dbg !3546
  %39 = load i8*, i8** %38, align 8, !dbg !3546, !tbaa !1046
  %40 = call i8* @sdsdup(i8* %39) #8, !dbg !3547
  %41 = getelementptr inbounds i8, i8* %40, i64 -1, !dbg !3551
  %42 = load i8, i8* %41, align 1, !dbg !3551, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3553
  %43 = trunc i8 %42 to i3, !dbg !3553
  switch i3 %43, label %65 [
    i3 0, label %44
    i3 1, label %47
    i3 2, label %51
    i3 3, label %56
    i3 -4, label %61
  ], !dbg !3553

; <label>:44:                                     ; preds = %29
  %45 = lshr i8 %42, 3, !dbg !3554
  %46 = zext i8 %45 to i64, !dbg !3554
  br label %66, !dbg !3555

; <label>:47:                                     ; preds = %29
  %48 = getelementptr inbounds i8, i8* %40, i64 -3, !dbg !3556
  %49 = load i8, i8* %48, align 1, !dbg !3557, !tbaa !486
  %50 = zext i8 %49 to i64, !dbg !3556
  br label %66, !dbg !3558

; <label>:51:                                     ; preds = %29
  %52 = getelementptr inbounds i8, i8* %40, i64 -5, !dbg !3559
  %53 = bitcast i8* %52 to i16*, !dbg !3560
  %54 = load i16, i16* %53, align 1, !dbg !3560, !tbaa !1085
  %55 = zext i16 %54 to i64, !dbg !3559
  br label %66, !dbg !3561

; <label>:56:                                     ; preds = %29
  %57 = getelementptr inbounds i8, i8* %40, i64 -9, !dbg !3562
  %58 = bitcast i8* %57 to i32*, !dbg !3563
  %59 = load i32, i32* %58, align 1, !dbg !3563, !tbaa !979
  %60 = zext i32 %59 to i64, !dbg !3562
  br label %66, !dbg !3564

; <label>:61:                                     ; preds = %29
  %62 = getelementptr inbounds i8, i8* %40, i64 -17, !dbg !3565
  %63 = bitcast i8* %62 to i64*, !dbg !3566
  %64 = load i64, i64* %63, align 1, !dbg !3566, !tbaa !1026
  br label %66, !dbg !3567

; <label>:65:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3572
  br label %80, !dbg !3572

; <label>:66:                                     ; preds = %44, %47, %51, %56, %61
  %67 = phi i64 [ %64, %61 ], [ %60, %56 ], [ %55, %51 ], [ %50, %47 ], [ %46, %44 ], !dbg !3573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3571
  %68 = icmp eq i64 %67, 0, !dbg !3575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3572
  br i1 %68, label %80, label %69, !dbg !3572

; <label>:69:                                     ; preds = %66, %78
  %70 = phi i64 [ %71, %78 ], [ %67, %66 ]
  %71 = add i64 %70, -1, !dbg !3576
  %72 = getelementptr inbounds i8, i8* %40, i64 %71, !dbg !3577
  %73 = load i8, i8* %72, align 1, !dbg !3577, !tbaa !486
  %74 = icmp eq i8 %73, 10, !dbg !3578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3579
  br i1 %74, label %77, label %75, !dbg !3579

; <label>:75:                                     ; preds = %69
  %76 = icmp eq i8 %73, 13, !dbg !3580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3579
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3571
  br i1 %76, label %78, label %81, !dbg !3571

; <label>:77:                                     ; preds = %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3571
  br label %78

; <label>:78:                                     ; preds = %77, %75
  store i8 0, i8* %72, align 1, !dbg !3581, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3571
  %79 = icmp eq i64 %71, 0, !dbg !3575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3572
  br i1 %79, label %80, label %69, !dbg !3572, !llvm.loop !3583

; <label>:80:                                     ; preds = %78, %65, %66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3571
  br label %81

; <label>:81:                                     ; preds = %75, %80
  %82 = phi i64 [ 0, %80 ], [ %70, %75 ]
  %83 = load i8, i8* %41, align 1, !dbg !3588, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3590
  %84 = trunc i8 %83 to i3, !dbg !3590
  switch i3 %84, label %104 [
    i3 0, label %85
    i3 1, label %88
    i3 2, label %91
    i3 3, label %95
    i3 -4, label %99
  ], !dbg !3590

; <label>:85:                                     ; preds = %81
  %86 = trunc i64 %82 to i8, !dbg !3592
  %87 = shl i8 %86, 3, !dbg !3592
  store i8 %87, i8* %41, align 1, !dbg !3593, !tbaa !486
  br label %102, !dbg !3594

; <label>:88:                                     ; preds = %81
  %89 = trunc i64 %82 to i8, !dbg !3595
  %90 = getelementptr inbounds i8, i8* %40, i64 -3, !dbg !3596
  store i8 %89, i8* %90, align 1, !dbg !3597, !tbaa !486
  br label %102, !dbg !3598

; <label>:91:                                     ; preds = %81
  %92 = trunc i64 %82 to i16, !dbg !3599
  %93 = getelementptr inbounds i8, i8* %40, i64 -5, !dbg !3600
  %94 = bitcast i8* %93 to i16*, !dbg !3601
  store i16 %92, i16* %94, align 1, !dbg !3602, !tbaa !1085
  br label %102, !dbg !3603

; <label>:95:                                     ; preds = %81
  %96 = trunc i64 %82 to i32, !dbg !3604
  %97 = getelementptr inbounds i8, i8* %40, i64 -9, !dbg !3605
  %98 = bitcast i8* %97 to i32*, !dbg !3606
  store i32 %96, i32* %98, align 1, !dbg !3607, !tbaa !979
  br label %102, !dbg !3608

; <label>:99:                                     ; preds = %81
  %100 = getelementptr inbounds i8, i8* %40, i64 -17, !dbg !3609
  %101 = bitcast i8* %100 to i64*, !dbg !3610
  store i64 %82, i64* %101, align 1, !dbg !3611, !tbaa !1026
  br label %102, !dbg !3612

; <label>:102:                                    ; preds = %99, %95, %91, %88, %85
  %103 = phi i8 [ %83, %99 ], [ %83, %95 ], [ %83, %91 ], [ %83, %88 ], [ %87, %85 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3574
  br label %104, !dbg !3613

; <label>:104:                                    ; preds = %102, %81
  %105 = phi i8 [ %83, %81 ], [ %103, %102 ], !dbg !3614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3618
  %106 = trunc i8 %105 to i3, !dbg !3618
  switch i3 %106, label %128 [
    i3 0, label %107
    i3 1, label %110
    i3 2, label %114
    i3 3, label %119
    i3 -4, label %124
  ], !dbg !3618

; <label>:107:                                    ; preds = %104
  %108 = lshr i8 %105, 3, !dbg !3619
  %109 = zext i8 %108 to i64, !dbg !3619
  br label %128, !dbg !3620

; <label>:110:                                    ; preds = %104
  %111 = getelementptr inbounds i8, i8* %40, i64 -3, !dbg !3621
  %112 = load i8, i8* %111, align 1, !dbg !3622, !tbaa !486
  %113 = zext i8 %112 to i64, !dbg !3621
  br label %128, !dbg !3623

; <label>:114:                                    ; preds = %104
  %115 = getelementptr inbounds i8, i8* %40, i64 -5, !dbg !3624
  %116 = bitcast i8* %115 to i16*, !dbg !3625
  %117 = load i16, i16* %116, align 1, !dbg !3625, !tbaa !1085
  %118 = zext i16 %117 to i64, !dbg !3624
  br label %128, !dbg !3626

; <label>:119:                                    ; preds = %104
  %120 = getelementptr inbounds i8, i8* %40, i64 -9, !dbg !3627
  %121 = bitcast i8* %120 to i32*, !dbg !3628
  %122 = load i32, i32* %121, align 1, !dbg !3628, !tbaa !979
  %123 = zext i32 %122 to i64, !dbg !3627
  br label %128, !dbg !3629

; <label>:124:                                    ; preds = %104
  %125 = getelementptr inbounds i8, i8* %40, i64 -17, !dbg !3630
  %126 = bitcast i8* %125 to i64*, !dbg !3631
  %127 = load i64, i64* %126, align 1, !dbg !3631, !tbaa !1026
  br label %128, !dbg !3632

; <label>:128:                                    ; preds = %104, %107, %110, %114, %119, %124
  %129 = phi i64 [ %127, %124 ], [ %123, %119 ], [ %118, %114 ], [ %113, %110 ], [ %109, %107 ], [ 0, %104 ], !dbg !3633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3634
  %130 = call i8** @sdssplitlen(i8* nonnull %40, i64 %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i64 0, i64 0), i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11)) #8, !dbg !3635
  store i8** %130, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !3636, !tbaa !2092
  call void @sdsfree(i8* nonnull %40) #8, !dbg !3637
  br label %131

; <label>:131:                                    ; preds = %23, %12, %128
  %132 = phi i32 [ 1, %128 ], [ 0, %23 ], [ 0, %12 ], !dbg !3638
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3639
  ret i32 %132, !dbg !3639
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
define dso_local void @ldbEndSession(%struct.client*) local_unnamed_addr #0 !dbg !3640 {
  %2 = tail call i8* @sdsnew(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i64 0, i64 0)) #8, !dbg !3644
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3647, !tbaa !787
  %4 = tail call %struct.list* @listAddNodeTail(%struct.list* %3, i8* %2) #8, !dbg !3648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3649
  tail call void @ldbSendLogs() #9, !dbg !3650
  %5 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 2), align 8, !dbg !3651, !tbaa !3503
  %6 = icmp eq i32 %5, 0, !dbg !3653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3654
  br i1 %6, label %11, label %7, !dbg !3654

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !3655
  %9 = load i32, i32* %8, align 8, !dbg !3655, !tbaa !3259
  %10 = tail call i32 @writeToClient(i32 %9, %struct.client* %0, i32 0) #8, !dbg !3657
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.142, i64 0, i64 0)) #8, !dbg !3658
  tail call void @exitFromChild(i32 0) #8, !dbg !3659
  br label %12, !dbg !3660

; <label>:11:                                     ; preds = %1
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.143, i64 0, i64 0)) #8, !dbg !3661
  br label %12

; <label>:12:                                     ; preds = %11, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3663, !tbaa !2082
  %14 = tail call i32 @anetNonBlock(i8* null, i32 %13) #8, !dbg !3664
  %15 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3665, !tbaa !2082
  %16 = tail call i32 @anetSendTimeout(i8* null, i32 %15, i64 0) #8, !dbg !3666
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3667
  %18 = load i32, i32* %17, align 8, !dbg !3668, !tbaa !965
  %19 = or i32 %18, 64, !dbg !3668
  store i32 %19, i32* %17, align 8, !dbg !3668, !tbaa !965
  %20 = load i8**, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !3669, !tbaa !2092
  %21 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3670, !tbaa !2094
  tail call void @sdsfreesplitres(i8** %20, i32 %21) #8, !dbg !3671
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3672, !tbaa !2094
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !3673, !tbaa !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3674
  ret void, !dbg !3674
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
define dso_local i32 @ldbRemoveChild(i32) local_unnamed_addr #0 !dbg !3675 {
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3682, !tbaa !2090
  %3 = sext i32 %0 to i64, !dbg !3683
  %4 = inttoptr i64 %3 to i8*, !dbg !3684
  %5 = tail call %struct.listNode* @listSearchKey(%struct.list* %2, i8* %4) #8, !dbg !3685
  %6 = icmp eq %struct.listNode* %5, null, !dbg !3687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3689
  br i1 %6, label %9, label %7, !dbg !3689

; <label>:7:                                      ; preds = %1
  %8 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3690, !tbaa !2090
  tail call void @listDelNode(%struct.list* %8, %struct.listNode* nonnull %5) #8, !dbg !3692
  br label %9, !dbg !3693

; <label>:9:                                      ; preds = %1, %7
  %10 = phi i32 [ 1, %7 ], [ 0, %1 ], !dbg !3694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3696
  ret i32 %10, !dbg !3696
}

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listSearchKey(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: norecurse noredzone nounwind
define dso_local i32 @ldbPendingChildren() local_unnamed_addr #6 !dbg !3697 {
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3700, !tbaa !2090
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 5, !dbg !3700
  %3 = load i64, i64* %2, align 8, !dbg !3700, !tbaa !1375
  %4 = trunc i64 %3 to i32, !dbg !3700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3701
  ret i32 %4, !dbg !3701
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbKillForkedSessions() local_unnamed_addr #0 !dbg !3702 {
  %1 = alloca %struct.listIter, align 8
  %2 = bitcast %struct.listIter* %1 to i8*, !dbg !3713
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3713
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3714, !tbaa !2090
  call void @listRewind(%struct.list* %3, %struct.listIter* nonnull %1) #8, !dbg !3716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3717
  %4 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !3718
  %5 = icmp eq %struct.listNode* %4, null, !dbg !3717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3717
  br i1 %5, label %17, label %6, !dbg !3717

; <label>:6:                                      ; preds = %0, %6
  %7 = phi %struct.listNode* [ %15, %6 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.listNode, %struct.listNode* %7, i64 0, i32 2, !dbg !3720
  %9 = bitcast i8** %8 to i64*, !dbg !3720
  %10 = load i64, i64* %9, align 8, !dbg !3720, !tbaa !1398
  %11 = trunc i64 %10 to i32, !dbg !3721
  %12 = shl i64 %10, 32, !dbg !3723
  %13 = ashr exact i64 %12, 32, !dbg !3723
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.144, i64 0, i64 0), i64 %13) #8, !dbg !3724
  %14 = call i32 @kill(i32 %11, i32 9) #8, !dbg !3725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3717
  %15 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !3718
  %16 = icmp eq %struct.listNode* %15, null, !dbg !3717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3717
  br i1 %16, label %17, label %6, !dbg !3717, !llvm.loop !3726

; <label>:17:                                     ; preds = %6, %0
  %18 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3728, !tbaa !2090
  call void @listRelease(%struct.list* %18) #8, !dbg !3729
  %19 = call %struct.list* @listCreate() #8, !dbg !3730
  store %struct.list* %19, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3731, !tbaa !2090
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !3732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3732
  ret void, !dbg !3732
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
define dso_local i8* @ldbGetSourceLine(i32) local_unnamed_addr #0 !dbg !3733 {
  %2 = add nsw i32 %0, -1, !dbg !3740
  %3 = icmp slt i32 %0, 1, !dbg !3742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3744
  br i1 %3, label %12, label %4, !dbg !3744

; <label>:4:                                      ; preds = %1
  %5 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3745, !tbaa !2094
  %6 = icmp slt i32 %5, %0, !dbg !3746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3747
  br i1 %6, label %12, label %7, !dbg !3747

; <label>:7:                                      ; preds = %4
  %8 = load i8**, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !3748, !tbaa !2092
  %9 = sext i32 %2 to i64, !dbg !3749
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9, !dbg !3749
  %11 = load i8*, i8** %10, align 8, !dbg !3749, !tbaa !1003
  br label %12, !dbg !3750

; <label>:12:                                     ; preds = %1, %4, %7
  %13 = phi i8* [ %11, %7 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i64 0, i64 0), %4 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i64 0, i64 0), %1 ], !dbg !3751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3753
  ret i8* %13, !dbg !3753
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ldbIsBreakpoint(i32) local_unnamed_addr #0 !dbg !2883 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3756
  %2 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3757, !tbaa !2895
  %3 = icmp sgt i32 %2, 0, !dbg !3758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2905
  br i1 %3, label %4, label %14, !dbg !2905

; <label>:4:                                      ; preds = %1
  %5 = sext i32 %2 to i64, !dbg !2905
  br label %6, !dbg !2905

; <label>:6:                                      ; preds = %4, %11
  %7 = phi i64 [ 0, %4 ], [ %12, %11 ]
  %8 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %7, !dbg !3759
  %9 = load i32, i32* %8, align 4, !dbg !3759, !tbaa !979
  %10 = icmp eq i32 %9, %0, !dbg !3760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  br i1 %10, label %14, label %11, !dbg !3761

; <label>:11:                                     ; preds = %6
  %12 = add nuw nsw i64 %7, 1, !dbg !3762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3763
  %13 = icmp slt i64 %12, %5, !dbg !3758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2905
  br i1 %13, label %6, label %14, !dbg !2905, !llvm.loop !2904

; <label>:14:                                     ; preds = %11, %6, %1
  %15 = phi i32 [ 0, %1 ], [ 0, %11 ], [ 1, %6 ], !dbg !3764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3766
  ret i32 %15, !dbg !3766
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ldbAddBreakpoint(i32) local_unnamed_addr #0 !dbg !3767 {
  %2 = icmp slt i32 %0, 1, !dbg !3771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3773
  br i1 %2, label %27, label %3, !dbg !3773

; <label>:3:                                      ; preds = %1
  %4 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3774, !tbaa !2094
  %5 = icmp slt i32 %4, %0, !dbg !3775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3776
  br i1 %5, label %27, label %6, !dbg !3776

; <label>:6:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3781
  %7 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3782, !tbaa !2895
  %8 = icmp sgt i32 %7, 0, !dbg !3783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3784
  br i1 %8, label %10, label %9, !dbg !3784

; <label>:9:                                      ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3787
  br label %23, !dbg !3787

; <label>:10:                                     ; preds = %6
  %11 = sext i32 %7 to i64, !dbg !3784
  br label %12, !dbg !3784

; <label>:12:                                     ; preds = %18, %10
  %13 = phi i64 [ 0, %10 ], [ %19, %18 ]
  %14 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %13, !dbg !3788
  %15 = load i32, i32* %14, align 4, !dbg !3788, !tbaa !979
  %16 = icmp eq i32 %15, %0, !dbg !3789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3790
  br i1 %16, label %17, label %18, !dbg !3790

; <label>:17:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3787
  br label %27, !dbg !3787

; <label>:18:                                     ; preds = %12
  %19 = add nuw nsw i64 %13, 1, !dbg !3792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3793
  %20 = icmp slt i64 %19, %11, !dbg !3783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3784
  br i1 %20, label %12, label %21, !dbg !3784, !llvm.loop !2904

; <label>:21:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3786
  %22 = icmp eq i32 %7, 64, !dbg !3794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3787
  br i1 %22, label %27, label %23, !dbg !3787

; <label>:23:                                     ; preds = %9, %21
  %24 = add nsw i32 %7, 1, !dbg !3795
  store i32 %24, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3795, !tbaa !2895
  %25 = sext i32 %7 to i64, !dbg !3797
  %26 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %25, !dbg !3797
  store i32 %0, i32* %26, align 4, !dbg !3798, !tbaa !979
  br label %27, !dbg !3799

; <label>:27:                                     ; preds = %17, %21, %1, %3, %23
  %28 = phi i32 [ 1, %23 ], [ 0, %3 ], [ 0, %1 ], [ 0, %21 ], [ 0, %17 ], !dbg !3800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3802
  ret i32 %28, !dbg !3802
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ldbDelBreakpoint(i32) local_unnamed_addr #0 !dbg !3803 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3809
  %2 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3811, !tbaa !2895
  %3 = icmp sgt i32 %2, 0, !dbg !3813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3814
  br i1 %3, label %4, label %25, !dbg !3814

; <label>:4:                                      ; preds = %1
  %5 = sext i32 %2 to i64, !dbg !3814
  br label %6, !dbg !3814

; <label>:6:                                      ; preds = %4, %22
  %7 = phi i64 [ 0, %4 ], [ %23, %22 ]
  %8 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %7, !dbg !3815
  %9 = load i32, i32* %8, align 4, !dbg !3815, !tbaa !979
  %10 = icmp eq i32 %9, %0, !dbg !3818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3819
  br i1 %10, label %11, label %22, !dbg !3819

; <label>:11:                                     ; preds = %6
  %12 = trunc i64 %7 to i32, !dbg !3808
  %13 = and i64 %7, 4294967295, !dbg !3815
  %14 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %13, !dbg !3815
  %15 = add nsw i32 %2, -1, !dbg !3820
  store i32 %15, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3820, !tbaa !2895
  %16 = bitcast i32* %14 to i8*, !dbg !3822
  %17 = getelementptr inbounds i32, i32* %14, i64 1, !dbg !3823
  %18 = bitcast i32* %17 to i8*, !dbg !3824
  %19 = sub nsw i32 %15, %12, !dbg !3825
  %20 = sext i32 %19 to i64, !dbg !3826
  %21 = tail call i8* @memmove(i8* nonnull %16, i8* nonnull %18, i64 %20) #8, !dbg !3827
  br label %25, !dbg !3828

; <label>:22:                                     ; preds = %6
  %23 = add nuw nsw i64 %7, 1, !dbg !3829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3830
  %24 = icmp slt i64 %23, %5, !dbg !3813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3814
  br i1 %24, label %6, label %25, !dbg !3814, !llvm.loop !3831

; <label>:25:                                     ; preds = %22, %1, %11
  %26 = phi i32 [ 1, %11 ], [ 0, %1 ], [ 0, %22 ], !dbg !3833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3835
  ret i32 %26, !dbg !3835
}

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8** @ldbReplParseCommand(i32* nocapture) local_unnamed_addr #0 !dbg !3836 {
  %2 = load i8*, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3851, !tbaa !2097
  %3 = getelementptr inbounds i8, i8* %2, i64 -1, !dbg !3855
  %4 = load i8, i8* %3, align 1, !dbg !3855, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3857
  %5 = trunc i8 %4 to i3, !dbg !3857
  switch i3 %5, label %27 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !3857

; <label>:6:                                      ; preds = %1
  %7 = lshr i8 %4, 3, !dbg !3858
  %8 = zext i8 %7 to i64, !dbg !3858
  br label %28, !dbg !3859

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %2, i64 -3, !dbg !3860
  %11 = load i8, i8* %10, align 1, !dbg !3861, !tbaa !486
  %12 = zext i8 %11 to i64, !dbg !3860
  br label %28, !dbg !3862

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds i8, i8* %2, i64 -5, !dbg !3863
  %15 = bitcast i8* %14 to i16*, !dbg !3864
  %16 = load i16, i16* %15, align 1, !dbg !3864, !tbaa !1085
  %17 = zext i16 %16 to i64, !dbg !3863
  br label %28, !dbg !3865

; <label>:18:                                     ; preds = %1
  %19 = getelementptr inbounds i8, i8* %2, i64 -9, !dbg !3866
  %20 = bitcast i8* %19 to i32*, !dbg !3867
  %21 = load i32, i32* %20, align 1, !dbg !3867, !tbaa !979
  %22 = zext i32 %21 to i64, !dbg !3866
  br label %28, !dbg !3868

; <label>:23:                                     ; preds = %1
  %24 = getelementptr inbounds i8, i8* %2, i64 -17, !dbg !3869
  %25 = bitcast i8* %24 to i64*, !dbg !3870
  %26 = load i64, i64* %25, align 1, !dbg !3870, !tbaa !1026
  br label %28, !dbg !3871

; <label>:27:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3873
  br label %91, !dbg !3874

; <label>:28:                                     ; preds = %6, %9, %13, %18, %23
  %29 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], !dbg !3875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3873
  %30 = icmp eq i64 %29, 0, !dbg !3877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3874
  br i1 %30, label %93, label %31, !dbg !3874

; <label>:31:                                     ; preds = %28
  %32 = tail call i8* @sdsdup(i8* %2) #8, !dbg !3878
  %33 = tail call i8* @strchr(i8* %32, i32 42) #8, !dbg !3881
  %34 = icmp eq i8* %33, null, !dbg !3882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3884
  br i1 %34, label %88, label %35, !dbg !3884

; <label>:35:                                     ; preds = %31
  %36 = tail call i8* @strstr(i8* nonnull %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !3885
  %37 = icmp eq i8* %36, null, !dbg !3886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3888
  br i1 %37, label %88, label %38, !dbg !3888

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !3889
  store i8 0, i8* %36, align 1, !dbg !3891, !tbaa !486
  %40 = tail call i32 @atoi(i8* nonnull %39) #8, !dbg !3892
  store i32 %40, i32* %0, align 4, !dbg !3893, !tbaa !979
  %41 = icmp slt i32 %40, 1, !dbg !3894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3896
  br i1 %41, label %88, label %42, !dbg !3896

; <label>:42:                                     ; preds = %38
  %43 = icmp sgt i32 %40, 1024, !dbg !3897
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3898
  br i1 %43, label %88, label %44, !dbg !3898

; <label>:44:                                     ; preds = %42
  %45 = sext i32 %40 to i64, !dbg !3899
  %46 = shl nsw i64 %45, 3, !dbg !3900
  %47 = tail call i8* @zmalloc(i64 %46) #8, !dbg !3901
  %48 = bitcast i8* %47 to i8**, !dbg !3901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3902
  %49 = load i32, i32* %0, align 4, !dbg !3903, !tbaa !979
  %50 = icmp sgt i32 %49, 0, !dbg !3904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3902
  br i1 %50, label %51, label %85, !dbg !3902

; <label>:51:                                     ; preds = %44, %81
  %52 = phi i64 [ %69, %81 ], [ 0, %44 ]
  %53 = phi i8* [ %71, %81 ], [ %36, %44 ]
  %54 = getelementptr inbounds i8, i8* %53, i64 2, !dbg !3905
  %55 = load i8, i8* %54, align 1, !dbg !3906, !tbaa !486
  %56 = icmp eq i8 %55, 36, !dbg !3908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3909
  br i1 %56, label %57, label %86, !dbg !3909

; <label>:57:                                     ; preds = %51
  %58 = tail call i8* @strstr(i8* nonnull %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !3910
  %59 = icmp eq i8* %58, null, !dbg !3911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3913
  br i1 %59, label %86, label %60, !dbg !3913

; <label>:60:                                     ; preds = %57
  %61 = getelementptr inbounds i8, i8* %53, i64 3, !dbg !3914
  store i8 0, i8* %58, align 1, !dbg !3915, !tbaa !486
  %62 = getelementptr inbounds i8, i8* %58, i64 2, !dbg !3916
  %63 = tail call i32 @atoi(i8* nonnull %61) #8, !dbg !3917
  %64 = add i32 %63, -1, !dbg !3919
  %65 = icmp ugt i32 %64, 1023, !dbg !3919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3919
  br i1 %65, label %78, label %66, !dbg !3919

; <label>:66:                                     ; preds = %60
  %67 = sext i32 %63 to i64, !dbg !3921
  %68 = tail call i8* @sdsnewlen(i8* nonnull %62, i64 %67) #8, !dbg !3922
  %69 = add nuw nsw i64 %52, 1, !dbg !3923
  %70 = getelementptr inbounds i8*, i8** %48, i64 %52, !dbg !3924
  store i8* %68, i8** %70, align 8, !dbg !3925, !tbaa !1003
  %71 = getelementptr inbounds i8, i8* %62, i64 %67, !dbg !3926
  %72 = load i8, i8* %71, align 1, !dbg !3927, !tbaa !486
  %73 = icmp eq i8 %72, 13, !dbg !3929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3930
  br i1 %73, label %74, label %78, !dbg !3930

; <label>:74:                                     ; preds = %66
  %75 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !3931
  %76 = load i8, i8* %75, align 1, !dbg !3931, !tbaa !486
  %77 = icmp eq i8 %76, 10, !dbg !3932
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3933
  br i1 %77, label %81, label %78, !dbg !3933

; <label>:78:                                     ; preds = %66, %74, %60
  %79 = phi i64 [ %52, %60 ], [ %69, %74 ], [ %69, %66 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3934
  %80 = trunc i64 %79 to i32, !dbg !3905
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %88

; <label>:81:                                     ; preds = %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3935
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %82 = load i32, i32* %0, align 4, !dbg !3903, !tbaa !979
  %83 = sext i32 %82 to i64, !dbg !3904
  %84 = icmp slt i64 %69, %83, !dbg !3904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3902
  br i1 %84, label %51, label %85, !dbg !3902

; <label>:85:                                     ; preds = %81, %44
  tail call void @sdsfree(i8* %32) #8, !dbg !3936
  br label %91, !dbg !3937

; <label>:86:                                     ; preds = %51, %57
  %87 = trunc i64 %52 to i32, !dbg !3909
  br label %88, !dbg !3938

; <label>:88:                                     ; preds = %86, %78, %35, %31, %38, %42
  %89 = phi i32 [ 0, %38 ], [ 0, %42 ], [ 0, %35 ], [ 0, %31 ], [ %80, %78 ], [ %87, %86 ], !dbg !3939
  %90 = phi i8** [ null, %38 ], [ null, %42 ], [ null, %35 ], [ null, %31 ], [ %48, %78 ], [ %48, %86 ], !dbg !3939
  tail call void @sdsfreesplitres(i8** %90, i32 %89) #8, !dbg !3938
  tail call void @sdsfree(i8* %32) #8, !dbg !3940
  br label %91, !dbg !3941

; <label>:91:                                     ; preds = %85, %88, %27
  %92 = phi i8** [ null, %27 ], [ null, %88 ], [ %48, %85 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3939
  br label %93

; <label>:93:                                     ; preds = %91, %28
  %94 = phi i8** [ null, %28 ], [ %92, %91 ], !dbg !3939
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3942
  ret i8** %94, !dbg !3942
}

; Function Attrs: noredzone
declare dso_local i8* @strstr(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @atoi(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbLogSourceLine(i32) local_unnamed_addr #0 !dbg !3943 {
  %2 = add nsw i32 %0, -1, !dbg !3954
  %3 = icmp slt i32 %0, 1, !dbg !3956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3957
  br i1 %3, label %12, label %4, !dbg !3957

; <label>:4:                                      ; preds = %1
  %5 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3958, !tbaa !2094
  %6 = icmp slt i32 %5, %0, !dbg !3959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3960
  br i1 %6, label %12, label %7, !dbg !3960

; <label>:7:                                      ; preds = %4
  %8 = load i8**, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !3961, !tbaa !2092
  %9 = sext i32 %2 to i64, !dbg !3962
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9, !dbg !3962
  %11 = load i8*, i8** %10, align 8, !dbg !3962, !tbaa !1003
  br label %12, !dbg !3963

; <label>:12:                                     ; preds = %1, %4, %7
  %13 = phi i8* [ %11, %7 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i64 0, i64 0), %4 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i64 0, i64 0), %1 ], !dbg !3964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3966
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3971
  %14 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3972, !tbaa !2895
  %15 = icmp sgt i32 %14, 0, !dbg !3973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3974
  br i1 %15, label %16, label %26, !dbg !3974

; <label>:16:                                     ; preds = %12
  %17 = sext i32 %14 to i64, !dbg !3974
  br label %18, !dbg !3974

; <label>:18:                                     ; preds = %23, %16
  %19 = phi i64 [ 0, %16 ], [ %24, %23 ]
  %20 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %19, !dbg !3975
  %21 = load i32, i32* %20, align 4, !dbg !3975, !tbaa !979
  %22 = icmp eq i32 %21, %0, !dbg !3976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3977
  br i1 %22, label %29, label %23, !dbg !3977

; <label>:23:                                     ; preds = %18
  %24 = add nuw nsw i64 %19, 1, !dbg !3978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3979
  %25 = icmp slt i64 %24, %17, !dbg !3973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3974
  br i1 %25, label %18, label %26, !dbg !3974, !llvm.loop !2904

; <label>:26:                                     ; preds = %23, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3981
  %27 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !3982, !tbaa !1740
  %28 = icmp eq i32 %27, %0, !dbg !3983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3987
  br i1 %28, label %34, label %33, !dbg !3989

; <label>:29:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3981
  %30 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !3982, !tbaa !1740
  %31 = icmp eq i32 %30, %0, !dbg !3983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3986
  br i1 %31, label %34, label %32, !dbg !3984

; <label>:32:                                     ; preds = %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3987
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %34, !dbg !3991

; <label>:33:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %34, !dbg !3991

; <label>:34:                                     ; preds = %32, %33, %26, %29
  %35 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.146, i64 0, i64 0), %29 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i64 0, i64 0), %26 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148, i64 0, i64 0), %32 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i64 0, i64 0), %33 ], !dbg !3993
  %36 = tail call i8* @sdsempty() #8, !dbg !3995
  %37 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.150, i64 0, i64 0), i8* nonnull %35, i32 %0, i8* %13) #8, !dbg !3996
  %38 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4000, !tbaa !787
  %39 = tail call %struct.list* @listAddNodeTail(%struct.list* %38, i8* %37) #8, !dbg !4001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4003
  ret void, !dbg !4003
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbList(i32, i32) local_unnamed_addr #0 !dbg !4004 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4014
  %3 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !4016, !tbaa !2094
  %4 = icmp slt i32 %3, 1, !dbg !4018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4019
  br i1 %4, label %18, label %5, !dbg !4019

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i32 %0, 0
  br label %7, !dbg !4019

; <label>:7:                                      ; preds = %14, %5
  %8 = phi i32 [ 1, %5 ], [ %15, %14 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4020
  br i1 %6, label %13, label %9, !dbg !4020

; <label>:9:                                      ; preds = %7
  %10 = sub nsw i32 %0, %8, !dbg !4023
  %11 = tail call i32 @abs(i32 %10) #8, !dbg !4024
  %12 = icmp sgt i32 %11, %1, !dbg !4025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4026
  br i1 %12, label %14, label %13, !dbg !4026

; <label>:13:                                     ; preds = %7, %9
  tail call void @ldbLogSourceLine(i32 %8) #9, !dbg !4027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4028
  br label %14, !dbg !4028

; <label>:14:                                     ; preds = %9, %13
  %15 = add nuw nsw i32 %8, 1, !dbg !4029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4030
  %16 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !4016, !tbaa !2094
  %17 = icmp slt i32 %8, %16, !dbg !4018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4019
  br i1 %17, label %7, label %18, !dbg !4019, !llvm.loop !4031

; <label>:18:                                     ; preds = %14, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4033
  ret void, !dbg !4033
}

; Function Attrs: noredzone
declare dso_local i32 @abs(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @ldbCatStackValueRec(i8*, %struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !4034 {
  %5 = alloca i64, align 8
  %6 = tail call i32 @lua_type(%struct.lua_State* %1, i32 %2) #8, !dbg !4059
  %7 = add nsw i32 %3, 1, !dbg !4061
  %8 = icmp eq i32 %3, 10, !dbg !4063
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4064
  br i1 %8, label %9, label %11, !dbg !4064

; <label>:9:                                      ; preds = %4
  %10 = tail call i8* @sdscat(i8* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.151, i64 0, i64 0)) #8, !dbg !4065
  br label %148, !dbg !4066

; <label>:11:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4067
  switch i32 %6, label %144 [
    i32 4, label %12
    i32 1, label %17
    i32 3, label %22
    i32 0, label %25
    i32 5, label %27
    i32 6, label %130
    i32 7, label %130
    i32 8, label %130
    i32 2, label %130
  ], !dbg !4067

; <label>:12:                                     ; preds = %11
  %13 = bitcast i64* %5 to i8*, !dbg !4068
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #7, !dbg !4068
  %14 = call i8* @lua_tolstring(%struct.lua_State* %1, i32 %2, i64* nonnull %5) #8, !dbg !4070
  %15 = load i64, i64* %5, align 8, !dbg !4072, !tbaa !1026
  %16 = call i8* @sdscatrepr(i8* %0, i8* %14, i64 %15) #8, !dbg !4073
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #7, !dbg !4074
  br label %146, !dbg !4075

; <label>:17:                                     ; preds = %11
  %18 = tail call i32 @lua_toboolean(%struct.lua_State* %1, i32 %2) #8, !dbg !4076
  %19 = icmp eq i32 %18, 0, !dbg !4076
  %20 = select i1 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.153, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), !dbg !4076
  %21 = tail call i8* @sdscat(i8* %0, i8* %20) #8, !dbg !4077
  br label %146, !dbg !4078

; <label>:22:                                     ; preds = %11
  %23 = tail call double @lua_tonumber(%struct.lua_State* %1, i32 %2) #8, !dbg !4079
  %24 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.154, i64 0, i64 0), double %23) #8, !dbg !4080
  br label %146, !dbg !4081

; <label>:25:                                     ; preds = %11
  %26 = tail call i8* @sdscatlen(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.155, i64 0, i64 0), i64 3) #8, !dbg !4082
  br label %146, !dbg !4083

; <label>:27:                                     ; preds = %11
  %28 = tail call i8* @sdsempty() #8, !dbg !4086
  %29 = tail call i8* @sdsempty() #8, !dbg !4088
  tail call void @lua_pushnil(%struct.lua_State* %1) #8, !dbg !4090
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4091
  %30 = add nsw i32 %2, -1, !dbg !4092
  %31 = tail call i32 @lua_next(%struct.lua_State* %1, i32 %30) #8, !dbg !4093
  %32 = icmp eq i32 %31, 0, !dbg !4091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4091
  br i1 %32, label %59, label %33, !dbg !4091

; <label>:33:                                     ; preds = %27, %47
  %34 = phi i8* [ %55, %47 ], [ %29, %27 ]
  %35 = phi i8* [ %50, %47 ], [ %28, %27 ]
  %36 = phi i32 [ %48, %47 ], [ 1, %27 ]
  %37 = phi i32 [ %56, %47 ], [ 1, %27 ]
  %38 = icmp eq i32 %36, 0, !dbg !4094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4097
  br i1 %38, label %47, label %39, !dbg !4097

; <label>:39:                                     ; preds = %33
  %40 = tail call i32 @lua_type(%struct.lua_State* %1, i32 -2) #8, !dbg !4098
  %41 = icmp eq i32 %40, 3, !dbg !4099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4100
  br i1 %41, label %42, label %46, !dbg !4100

; <label>:42:                                     ; preds = %39
  %43 = tail call double @lua_tonumber(%struct.lua_State* %1, i32 -2) #8, !dbg !4101
  %44 = sitofp i32 %37 to double, !dbg !4102
  %45 = fcmp une double %43, %44, !dbg !4103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4104
  br i1 %45, label %46, label %47, !dbg !4104

; <label>:46:                                     ; preds = %39, %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4105
  br label %47, !dbg !4105

; <label>:47:                                     ; preds = %33, %46, %42
  %48 = phi i32 [ 0, %46 ], [ %36, %42 ], [ 0, %33 ], !dbg !4106
  %49 = tail call i8* @ldbCatStackValueRec(i8* %35, %struct.lua_State* %1, i32 -1, i32 %7) #9, !dbg !4107
  %50 = tail call i8* @sdscatlen(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i64 0, i64 0), i64 2) #8, !dbg !4108
  %51 = tail call i8* @sdscatlen(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.157, i64 0, i64 0), i64 1) #8, !dbg !4109
  %52 = tail call i8* @ldbCatStackValueRec(i8* %51, %struct.lua_State* %1, i32 -2, i32 %7) #9, !dbg !4110
  %53 = tail call i8* @sdscatlen(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i64 0, i64 0), i64 2) #8, !dbg !4111
  %54 = tail call i8* @ldbCatStackValueRec(i8* %53, %struct.lua_State* %1, i32 -1, i32 %7) #9, !dbg !4112
  %55 = tail call i8* @sdscatlen(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i64 0, i64 0), i64 2) #8, !dbg !4113
  tail call void @lua_settop(%struct.lua_State* %1, i32 -2) #8, !dbg !4114
  %56 = add nuw nsw i32 %37, 1, !dbg !4115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4091
  %57 = tail call i32 @lua_next(%struct.lua_State* %1, i32 %30) #8, !dbg !4093
  %58 = icmp eq i32 %57, 0, !dbg !4091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4091
  br i1 %58, label %59, label %33, !dbg !4091, !llvm.loop !4116

; <label>:59:                                     ; preds = %47, %27
  %60 = phi i32 [ 1, %27 ], [ %48, %47 ], !dbg !4118
  %61 = phi i8* [ %28, %27 ], [ %50, %47 ], !dbg !4119
  %62 = phi i8* [ %29, %27 ], [ %55, %47 ], !dbg !4119
  %63 = getelementptr inbounds i8, i8* %61, i64 -1, !dbg !4123
  %64 = load i8, i8* %63, align 1, !dbg !4123, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4125
  %65 = trunc i8 %64 to i3, !dbg !4125
  switch i3 %65, label %87 [
    i3 0, label %66
    i3 1, label %69
    i3 2, label %73
    i3 3, label %78
    i3 -4, label %83
  ], !dbg !4125

; <label>:66:                                     ; preds = %59
  %67 = lshr i8 %64, 3, !dbg !4126
  %68 = zext i8 %67 to i64, !dbg !4126
  br label %88, !dbg !4127

; <label>:69:                                     ; preds = %59
  %70 = getelementptr inbounds i8, i8* %61, i64 -3, !dbg !4128
  %71 = load i8, i8* %70, align 1, !dbg !4129, !tbaa !486
  %72 = zext i8 %71 to i64, !dbg !4128
  br label %88, !dbg !4130

; <label>:73:                                     ; preds = %59
  %74 = getelementptr inbounds i8, i8* %61, i64 -5, !dbg !4131
  %75 = bitcast i8* %74 to i16*, !dbg !4132
  %76 = load i16, i16* %75, align 1, !dbg !4132, !tbaa !1085
  %77 = zext i16 %76 to i64, !dbg !4131
  br label %88, !dbg !4133

; <label>:78:                                     ; preds = %59
  %79 = getelementptr inbounds i8, i8* %61, i64 -9, !dbg !4134
  %80 = bitcast i8* %79 to i32*, !dbg !4135
  %81 = load i32, i32* %80, align 1, !dbg !4135, !tbaa !979
  %82 = zext i32 %81 to i64, !dbg !4134
  br label %88, !dbg !4136

; <label>:83:                                     ; preds = %59
  %84 = getelementptr inbounds i8, i8* %61, i64 -17, !dbg !4137
  %85 = bitcast i8* %84 to i64*, !dbg !4138
  %86 = load i64, i64* %85, align 1, !dbg !4138, !tbaa !1026
  br label %88, !dbg !4139

; <label>:87:                                     ; preds = %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4141
  br label %92, !dbg !4142

; <label>:88:                                     ; preds = %66, %69, %73, %78, %83
  %89 = phi i64 [ %86, %83 ], [ %82, %78 ], [ %77, %73 ], [ %72, %69 ], [ %68, %66 ], !dbg !4143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4141
  %90 = icmp eq i64 %89, 0, !dbg !4145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4142
  br i1 %90, label %93, label %91, !dbg !4142

; <label>:91:                                     ; preds = %88
  tail call void @sdsrange(i8* nonnull %61, i64 0, i64 -3) #8, !dbg !4146
  br label %92, !dbg !4146

; <label>:92:                                     ; preds = %91, %87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4144
  br label %93, !dbg !4147

; <label>:93:                                     ; preds = %92, %88
  %94 = getelementptr inbounds i8, i8* %62, i64 -1, !dbg !4147
  %95 = load i8, i8* %94, align 1, !dbg !4147, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4152
  %96 = trunc i8 %95 to i3, !dbg !4152
  switch i3 %96, label %118 [
    i3 0, label %97
    i3 1, label %100
    i3 2, label %104
    i3 3, label %109
    i3 -4, label %114
  ], !dbg !4152

; <label>:97:                                     ; preds = %93
  %98 = lshr i8 %95, 3, !dbg !4153
  %99 = zext i8 %98 to i64, !dbg !4153
  br label %119, !dbg !4154

; <label>:100:                                    ; preds = %93
  %101 = getelementptr inbounds i8, i8* %62, i64 -3, !dbg !4155
  %102 = load i8, i8* %101, align 1, !dbg !4156, !tbaa !486
  %103 = zext i8 %102 to i64, !dbg !4155
  br label %119, !dbg !4157

; <label>:104:                                    ; preds = %93
  %105 = getelementptr inbounds i8, i8* %62, i64 -5, !dbg !4158
  %106 = bitcast i8* %105 to i16*, !dbg !4159
  %107 = load i16, i16* %106, align 1, !dbg !4159, !tbaa !1085
  %108 = zext i16 %107 to i64, !dbg !4158
  br label %119, !dbg !4160

; <label>:109:                                    ; preds = %93
  %110 = getelementptr inbounds i8, i8* %62, i64 -9, !dbg !4161
  %111 = bitcast i8* %110 to i32*, !dbg !4162
  %112 = load i32, i32* %111, align 1, !dbg !4162, !tbaa !979
  %113 = zext i32 %112 to i64, !dbg !4161
  br label %119, !dbg !4163

; <label>:114:                                    ; preds = %93
  %115 = getelementptr inbounds i8, i8* %62, i64 -17, !dbg !4164
  %116 = bitcast i8* %115 to i64*, !dbg !4165
  %117 = load i64, i64* %116, align 1, !dbg !4165, !tbaa !1026
  br label %119, !dbg !4166

; <label>:118:                                    ; preds = %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4168
  br label %123, !dbg !4169

; <label>:119:                                    ; preds = %97, %100, %104, %109, %114
  %120 = phi i64 [ %117, %114 ], [ %113, %109 ], [ %108, %104 ], [ %103, %100 ], [ %99, %97 ], !dbg !4170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4168
  %121 = icmp eq i64 %120, 0, !dbg !4172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4169
  br i1 %121, label %124, label %122, !dbg !4169

; <label>:122:                                    ; preds = %119
  tail call void @sdsrange(i8* nonnull %62, i64 0, i64 -3) #8, !dbg !4173
  br label %123, !dbg !4173

; <label>:123:                                    ; preds = %122, %118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4171
  br label %124, !dbg !4174

; <label>:124:                                    ; preds = %123, %119
  %125 = tail call i8* @sdscatlen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.159, i64 0, i64 0), i64 1) #8, !dbg !4174
  %126 = icmp eq i32 %60, 0, !dbg !4175
  %127 = select i1 %126, i8* %62, i8* %61, !dbg !4175
  %128 = tail call i8* @sdscatsds(i8* %125, i8* %127) #8, !dbg !4176
  %129 = tail call i8* @sdscatlen(i8* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i64 0, i64 0), i64 1) #8, !dbg !4177
  tail call void @sdsfree(i8* nonnull %61) #8, !dbg !4178
  tail call void @sdsfree(i8* nonnull %62) #8, !dbg !4179
  br label %146, !dbg !4180

; <label>:130:                                    ; preds = %11, %11, %11, %11
  %131 = tail call i8* @lua_topointer(%struct.lua_State* %1, i32 %2) #8, !dbg !4181
  %132 = icmp eq i32 %6, 6, !dbg !4183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4185
  br i1 %132, label %139, label %133, !dbg !4185

; <label>:133:                                    ; preds = %130
  %134 = icmp eq i32 %6, 7, !dbg !4186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4188
  br i1 %134, label %139, label %135, !dbg !4188

; <label>:135:                                    ; preds = %133
  %136 = icmp eq i32 %6, 8, !dbg !4189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4191
  br i1 %136, label %139, label %137, !dbg !4191

; <label>:137:                                    ; preds = %135
  %138 = icmp eq i32 %6, 2, !dbg !4192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4194
  br i1 %138, label %139, label %141, !dbg !4194

; <label>:139:                                    ; preds = %137, %135, %133, %130
  %140 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.162, i64 0, i64 0), %130 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.163, i64 0, i64 0), %133 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.164, i64 0, i64 0), %135 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.165, i64 0, i64 0), %137 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4195
  br label %141, !dbg !4196

; <label>:141:                                    ; preds = %139, %137
  %142 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i64 0, i64 0), %137 ], [ %140, %139 ], !dbg !4197
  %143 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.166, i64 0, i64 0), i8* nonnull %142, i8* %131) #8, !dbg !4196
  br label %146, !dbg !4199

; <label>:144:                                    ; preds = %11
  %145 = tail call i8* @sdscat(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.167, i64 0, i64 0)) #8, !dbg !4200
  br label %146, !dbg !4201

; <label>:146:                                    ; preds = %144, %141, %124, %25, %22, %17, %12
  %147 = phi i8* [ %145, %144 ], [ %143, %141 ], [ %129, %124 ], [ %26, %25 ], [ %24, %22 ], [ %21, %17 ], [ %16, %12 ], !dbg !4202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4203
  br label %148, !dbg !4204

; <label>:148:                                    ; preds = %146, %9
  %149 = phi i8* [ %10, %9 ], [ %147, %146 ], !dbg !4205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4207
  ret i8* %149, !dbg !4207
}

; Function Attrs: noredzone
declare dso_local i8* @sdscatrepr(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_next(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @lua_topointer(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbLogStackValue(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !4208 {
  %3 = tail call i8* @sdsnew(i8* %1) #8, !dbg !4215
  %4 = tail call i8* @ldbCatStackValueRec(i8* %3, %struct.lua_State* %0, i32 -1, i32 0) #8, !dbg !4221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4222
  tail call void @ldbLogWithMaxLen(i8* %4) #9, !dbg !4223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4224
  ret void, !dbg !4224
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ldbRedisProtocolToHuman(i8** nocapture, i8*) local_unnamed_addr #0 !dbg !4225 {
  %3 = alloca i64, align 8
  %4 = load i8, i8* %1, align 1, !dbg !4235, !tbaa !486
  %5 = sext i8 %4 to i32, !dbg !4235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4236
  switch i32 %5, label %60 [
    i32 58, label %6
    i32 36, label %16
    i32 43, label %38
    i32 45, label %47
    i32 42, label %56
  ], !dbg !4236

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4246
  %8 = tail call i8* @strchr(i8* nonnull %7, i32 13) #8, !dbg !4247
  %9 = load i8*, i8** %0, align 8, !dbg !4249, !tbaa !1003
  %10 = ptrtoint i8* %8 to i64, !dbg !4250
  %11 = ptrtoint i8* %1 to i64, !dbg !4250
  %12 = xor i64 %11, -1, !dbg !4251
  %13 = add i64 %10, %12, !dbg !4251
  %14 = tail call i8* @sdscatlen(i8* %9, i8* nonnull %7, i64 %13) #8, !dbg !4252
  store i8* %14, i8** %0, align 8, !dbg !4253, !tbaa !1003
  %15 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !4254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4255
  br label %58, !dbg !4256

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4266
  %18 = tail call i8* @strchr(i8* nonnull %17, i32 13) #8, !dbg !4267
  %19 = bitcast i64* %3 to i8*, !dbg !4269
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #7, !dbg !4269
  %20 = ptrtoint i8* %18 to i64, !dbg !4270
  %21 = ptrtoint i8* %1 to i64, !dbg !4270
  %22 = xor i64 %21, -1, !dbg !4271
  %23 = add i64 %20, %22, !dbg !4271
  %24 = call i32 @string2ll(i8* nonnull %17, i64 %23, i64* nonnull %3) #8, !dbg !4273
  %25 = load i64, i64* %3, align 8, !dbg !4274, !tbaa !538
  %26 = icmp eq i64 %25, -1, !dbg !4276
  %27 = load i8*, i8** %0, align 8, !dbg !4277, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4279
  br i1 %26, label %28, label %30, !dbg !4279

; <label>:28:                                     ; preds = %16
  %29 = call i8* @sdscatlen(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i64 0, i64 0), i64 4) #8, !dbg !4280
  store i8* %29, i8** %0, align 8, !dbg !4282, !tbaa !1003
  br label %35, !dbg !4283

; <label>:30:                                     ; preds = %16
  %31 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !4284
  %32 = call i8* @sdscatrepr(i8* %27, i8* nonnull %31, i64 %25) #8, !dbg !4285
  store i8* %32, i8** %0, align 8, !dbg !4286, !tbaa !1003
  %33 = load i64, i64* %3, align 8, !dbg !4287, !tbaa !538
  %34 = getelementptr inbounds i8, i8* %31, i64 %33, !dbg !4288
  br label %35, !dbg !4289

; <label>:35:                                     ; preds = %28, %30
  %36 = phi i8* [ %18, %28 ], [ %34, %30 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4290
  %37 = getelementptr inbounds i8, i8* %36, i64 2, !dbg !4277
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #7, !dbg !4291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4291
  br label %58, !dbg !4292

; <label>:38:                                     ; preds = %2
  %39 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4301
  %40 = tail call i8* @strchr(i8* nonnull %39, i32 13) #8, !dbg !4302
  %41 = load i8*, i8** %0, align 8, !dbg !4304, !tbaa !1003
  %42 = ptrtoint i8* %40 to i64, !dbg !4305
  %43 = ptrtoint i8* %1 to i64, !dbg !4305
  %44 = sub i64 %42, %43, !dbg !4305
  %45 = tail call i8* @sdscatrepr(i8* %41, i8* nonnull %1, i64 %44) #8, !dbg !4306
  store i8* %45, i8** %0, align 8, !dbg !4307, !tbaa !1003
  %46 = getelementptr inbounds i8, i8* %40, i64 2, !dbg !4308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4309
  br label %58, !dbg !4310

; <label>:47:                                     ; preds = %2
  %48 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4314
  %49 = tail call i8* @strchr(i8* nonnull %48, i32 13) #8, !dbg !4315
  %50 = load i8*, i8** %0, align 8, !dbg !4317, !tbaa !1003
  %51 = ptrtoint i8* %49 to i64, !dbg !4318
  %52 = ptrtoint i8* %1 to i64, !dbg !4318
  %53 = sub i64 %51, %52, !dbg !4318
  %54 = tail call i8* @sdscatrepr(i8* %50, i8* nonnull %1, i64 %53) #8, !dbg !4319
  store i8* %54, i8** %0, align 8, !dbg !4320, !tbaa !1003
  %55 = getelementptr inbounds i8, i8* %49, i64 2, !dbg !4321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4322
  br label %58, !dbg !4323

; <label>:56:                                     ; preds = %2
  %57 = tail call i8* @ldbRedisProtocolToHuman_MultiBulk(i8** %0, i8* nonnull %1) #9, !dbg !4324
  br label %58, !dbg !4325

; <label>:58:                                     ; preds = %6, %35, %38, %47, %56
  %59 = phi i8* [ %15, %6 ], [ %37, %35 ], [ %46, %38 ], [ %55, %47 ], [ %57, %56 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4290
  br label %60, !dbg !4326

; <label>:60:                                     ; preds = %58, %2
  %61 = phi i8* [ %1, %2 ], [ %59, %58 ], !dbg !4290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4326
  ret i8* %61, !dbg !4326
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @ldbRedisProtocolToHuman_Int(i8** nocapture, i8*) local_unnamed_addr #0 !dbg !4238 {
  %3 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4329
  %4 = tail call i8* @strchr(i8* nonnull %3, i32 13) #8, !dbg !4330
  %5 = load i8*, i8** %0, align 8, !dbg !4332, !tbaa !1003
  %6 = ptrtoint i8* %4 to i64, !dbg !4333
  %7 = ptrtoint i8* %1 to i64, !dbg !4333
  %8 = xor i64 %7, -1, !dbg !4334
  %9 = add i64 %6, %8, !dbg !4334
  %10 = tail call i8* @sdscatlen(i8* %5, i8* nonnull %3, i64 %9) #8, !dbg !4335
  store i8* %10, i8** %0, align 8, !dbg !4336, !tbaa !1003
  %11 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !4337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4338
  ret i8* %11, !dbg !4338
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @ldbRedisProtocolToHuman_Bulk(i8** nocapture, i8*) local_unnamed_addr #0 !dbg !4258 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4341
  %5 = tail call i8* @strchr(i8* nonnull %4, i32 13) #8, !dbg !4342
  %6 = bitcast i64* %3 to i8*, !dbg !4344
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7, !dbg !4344
  %7 = ptrtoint i8* %5 to i64, !dbg !4345
  %8 = ptrtoint i8* %1 to i64, !dbg !4345
  %9 = xor i64 %8, -1, !dbg !4346
  %10 = add i64 %7, %9, !dbg !4346
  %11 = call i32 @string2ll(i8* nonnull %4, i64 %10, i64* nonnull %3) #8, !dbg !4348
  %12 = load i64, i64* %3, align 8, !dbg !4349, !tbaa !538
  %13 = icmp eq i64 %12, -1, !dbg !4350
  %14 = load i8*, i8** %0, align 8, !dbg !4351, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4352
  br i1 %13, label %15, label %17, !dbg !4352

; <label>:15:                                     ; preds = %2
  %16 = call i8* @sdscatlen(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i64 0, i64 0), i64 4) #8, !dbg !4353
  store i8* %16, i8** %0, align 8, !dbg !4354, !tbaa !1003
  br label %22, !dbg !4355

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !4356
  %19 = call i8* @sdscatrepr(i8* %14, i8* nonnull %18, i64 %12) #8, !dbg !4357
  store i8* %19, i8** %0, align 8, !dbg !4358, !tbaa !1003
  %20 = load i64, i64* %3, align 8, !dbg !4359, !tbaa !538
  %21 = getelementptr inbounds i8, i8* %18, i64 %20, !dbg !4360
  br label %22, !dbg !4361

; <label>:22:                                     ; preds = %17, %15
  %23 = phi i8* [ %5, %15 ], [ %21, %17 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4362
  %24 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !4351
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7, !dbg !4363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4363
  ret i8* %24, !dbg !4363
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @ldbRedisProtocolToHuman_Status(i8** nocapture, i8*) local_unnamed_addr #0 !dbg !4294 {
  %3 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4366
  %4 = tail call i8* @strchr(i8* nonnull %3, i32 13) #8, !dbg !4367
  %5 = load i8*, i8** %0, align 8, !dbg !4369, !tbaa !1003
  %6 = ptrtoint i8* %4 to i64, !dbg !4370
  %7 = ptrtoint i8* %1 to i64, !dbg !4370
  %8 = sub i64 %6, %7, !dbg !4370
  %9 = tail call i8* @sdscatrepr(i8* %5, i8* %1, i64 %8) #8, !dbg !4371
  store i8* %9, i8** %0, align 8, !dbg !4372, !tbaa !1003
  %10 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !4373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4374
  ret i8* %10, !dbg !4374
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ldbRedisProtocolToHuman_MultiBulk(i8** nocapture, i8*) local_unnamed_addr #0 !dbg !4375 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4384
  %5 = tail call i8* @strchr(i8* nonnull %4, i32 13) #8, !dbg !4385
  %6 = bitcast i64* %3 to i8*, !dbg !4387
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7, !dbg !4387
  %7 = ptrtoint i8* %5 to i64, !dbg !4389
  %8 = ptrtoint i8* %1 to i64, !dbg !4389
  %9 = xor i64 %8, -1, !dbg !4390
  %10 = add i64 %7, %9, !dbg !4390
  %11 = call i32 @string2ll(i8* nonnull %4, i64 %10, i64* nonnull %3) #8, !dbg !4392
  %12 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !4393
  %13 = load i64, i64* %3, align 8, !dbg !4394, !tbaa !538
  %14 = icmp eq i64 %13, -1, !dbg !4396
  %15 = load i8*, i8** %0, align 8, !dbg !4397, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4398
  br i1 %14, label %16, label %18, !dbg !4398

; <label>:16:                                     ; preds = %2
  %17 = call i8* @sdscatlen(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i64 0, i64 0), i64 4) #8, !dbg !4399
  br label %43, !dbg !4401

; <label>:18:                                     ; preds = %2
  %19 = call i8* @sdscatlen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.157, i64 0, i64 0), i64 1) #8, !dbg !4402
  store i8* %19, i8** %0, align 8, !dbg !4403, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4404
  %20 = load i64, i64* %3, align 8, !dbg !4406, !tbaa !538
  %21 = icmp sgt i64 %20, 0, !dbg !4408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4409
  br i1 %21, label %22, label %39, !dbg !4409

; <label>:22:                                     ; preds = %18, %33
  %23 = phi i64 [ %35, %33 ], [ 0, %18 ]
  %24 = phi i8* [ %25, %33 ], [ %12, %18 ]
  %25 = call i8* @ldbRedisProtocolToHuman(i8** %0, i8* %24) #9, !dbg !4410
  %26 = load i64, i64* %3, align 8, !dbg !4412, !tbaa !538
  %27 = add nsw i64 %26, -1, !dbg !4414
  %28 = icmp eq i64 %27, %23, !dbg !4415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4416
  br i1 %28, label %33, label %29, !dbg !4416

; <label>:29:                                     ; preds = %22
  %30 = load i8*, i8** %0, align 8, !dbg !4417, !tbaa !1003
  %31 = call i8* @sdscatlen(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.169, i64 0, i64 0), i64 1) #8, !dbg !4418
  store i8* %31, i8** %0, align 8, !dbg !4419, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4420
  %32 = load i64, i64* %3, align 8, !dbg !4406, !tbaa !538
  br label %33, !dbg !4420

; <label>:33:                                     ; preds = %22, %29
  %34 = phi i64 [ %26, %22 ], [ %32, %29 ], !dbg !4406
  %35 = add nuw nsw i64 %23, 1, !dbg !4421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4422
  %36 = icmp sgt i64 %34, %35, !dbg !4408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4409
  br i1 %36, label %22, label %37, !dbg !4409, !llvm.loop !4423

; <label>:37:                                     ; preds = %33
  %38 = load i8*, i8** %0, align 8, !dbg !4425, !tbaa !1003
  br label %39, !dbg !4425

; <label>:39:                                     ; preds = %37, %18
  %40 = phi i8* [ %19, %18 ], [ %38, %37 ], !dbg !4425
  %41 = phi i8* [ %12, %18 ], [ %25, %37 ], !dbg !4426
  %42 = call i8* @sdscatlen(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.170, i64 0, i64 0), i64 1) #8, !dbg !4427
  br label %43, !dbg !4428

; <label>:43:                                     ; preds = %39, %16
  %44 = phi i8* [ %42, %39 ], [ %17, %16 ]
  %45 = phi i8* [ %41, %39 ], [ %12, %16 ], !dbg !4397
  store i8* %44, i8** %0, align 8, !dbg !4429, !tbaa !1003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4429
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7, !dbg !4430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4430
  ret i8* %45, !dbg !4430
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbPrint(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !4431 {
  %3 = alloca %struct.lua_Debug, align 8
  %4 = bitcast %struct.lua_Debug* %3 to i8*, !dbg !4442
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %4) #7, !dbg !4442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4444
  %5 = call i32 @lua_getstack(%struct.lua_State* %0, i32 0, %struct.lua_Debug* nonnull %3) #8, !dbg !4446
  %6 = icmp eq i32 %5, 0, !dbg !4447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4444
  br i1 %6, label %27, label %7, !dbg !4444

; <label>:7:                                      ; preds = %2, %24
  %8 = phi i32 [ %9, %24 ], [ 0, %2 ]
  %9 = add nuw nsw i32 %8, 1, !dbg !4448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4450
  %10 = call i8* @lua_getlocal(%struct.lua_State* %0, %struct.lua_Debug* nonnull %3, i32 1) #8, !dbg !4451
  %11 = icmp eq i8* %10, null, !dbg !4453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4450
  br i1 %11, label %24, label %12, !dbg !4450

; <label>:12:                                     ; preds = %7, %20
  %13 = phi i8* [ %22, %20 ], [ %10, %7 ]
  %14 = phi i32 [ %21, %20 ], [ 1, %7 ]
  %15 = call i32 @strcmp(i8* %1, i8* nonnull %13) #8, !dbg !4454
  %16 = icmp eq i32 %15, 0, !dbg !4457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4458
  br i1 %16, label %17, label %20, !dbg !4458

; <label>:17:                                     ; preds = %12
  %18 = call i8* @sdsnew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i64 0, i64 0)) #8, !dbg !4463
  %19 = call i8* @ldbCatStackValueRec(i8* %18, %struct.lua_State* %0, i32 -1, i32 0) #8, !dbg !4469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4470
  call void @ldbLogWithMaxLen(i8* %19) #8, !dbg !4471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4472
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !4473
  br label %40

; <label>:20:                                     ; preds = %12
  %21 = add nuw nsw i32 %14, 1, !dbg !4474
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !4475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4450
  %22 = call i8* @lua_getlocal(%struct.lua_State* %0, %struct.lua_Debug* nonnull %3, i32 %21) #8, !dbg !4451
  %23 = icmp eq i8* %22, null, !dbg !4453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4450
  br i1 %23, label %24, label %12, !dbg !4450, !llvm.loop !4477

; <label>:24:                                     ; preds = %20, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4479
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %25 = call i32 @lua_getstack(%struct.lua_State* %0, i32 %9, %struct.lua_Debug* nonnull %3) #8, !dbg !4446
  %26 = icmp eq i32 %25, 0, !dbg !4447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4444
  br i1 %26, label %27, label %7, !dbg !4444

; <label>:27:                                     ; preds = %24, %2
  %28 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i64 0, i64 0)) #8, !dbg !4480
  %29 = icmp eq i32 %28, 0, !dbg !4480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4482
  br i1 %29, label %33, label %30, !dbg !4482

; <label>:30:                                     ; preds = %27
  %31 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0)) #8, !dbg !4483
  %32 = icmp eq i32 %31, 0, !dbg !4483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4484
  br i1 %32, label %33, label %36, !dbg !4484

; <label>:33:                                     ; preds = %30, %27
  call void @lua_getfield(%struct.lua_State* %0, i32 -10002, i8* %1) #8, !dbg !4485
  %34 = call i8* @sdsnew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i64 0, i64 0)) #8, !dbg !4490
  %35 = call i8* @ldbCatStackValueRec(i8* %34, %struct.lua_State* %0, i32 -1, i32 0) #8, !dbg !4496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4497
  call void @ldbLogWithMaxLen(i8* %35) #8, !dbg !4498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4499
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !4500
  br label %40, !dbg !4501

; <label>:36:                                     ; preds = %30
  %37 = call i8* @sdsnew(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.173, i64 0, i64 0)) #8, !dbg !4502
  %38 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4506, !tbaa !787
  %39 = call %struct.list* @listAddNodeTail(%struct.list* %38, i8* %37) #8, !dbg !4507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4508
  br label %40

; <label>:40:                                     ; preds = %33, %36, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %4) #7, !dbg !4509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4509
  ret void, !dbg !4509
}

; Function Attrs: noredzone
declare dso_local i8* @lua_getlocal(%struct.lua_State*, %struct.lua_Debug*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbPrintAll(%struct.lua_State*) local_unnamed_addr #0 !dbg !4510 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !4524
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %3) #7, !dbg !4524
  %4 = call i32 @lua_getstack(%struct.lua_State* %0, i32 0, %struct.lua_Debug* nonnull %2) #8, !dbg !4527
  %5 = icmp eq i32 %4, 0, !dbg !4528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4530
  br i1 %5, label %29, label %6, !dbg !4529

; <label>:6:                                      ; preds = %1
  %7 = call i8* @lua_getlocal(%struct.lua_State* %0, %struct.lua_Debug* nonnull %2, i32 1) #8, !dbg !4532
  %8 = icmp eq i8* %7, null, !dbg !4534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4535
  br i1 %8, label %9, label %10, !dbg !4535

; <label>:9:                                      ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4537
  br label %29, !dbg !4537

; <label>:10:                                     ; preds = %6, %23
  %11 = phi i8* [ %25, %23 ], [ %7, %6 ]
  %12 = phi i32 [ %24, %23 ], [ 0, %6 ]
  %13 = phi i32 [ %14, %23 ], [ 1, %6 ]
  %14 = add nuw nsw i32 %13, 1, !dbg !4538
  %15 = call i8* @strstr(i8* nonnull %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.174, i64 0, i64 0)) #8, !dbg !4539
  %16 = icmp eq i8* %15, null, !dbg !4539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4540
  br i1 %16, label %17, label %23, !dbg !4540

; <label>:17:                                     ; preds = %10
  %18 = call i8* @sdsempty() #8, !dbg !4541
  %19 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.175, i64 0, i64 0), i8* nonnull %11) #8, !dbg !4542
  %20 = call i8* @sdsnew(i8* %19) #8, !dbg !4547
  %21 = call i8* @ldbCatStackValueRec(i8* %20, %struct.lua_State* %0, i32 -1, i32 0) #8, !dbg !4553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4554
  call void @ldbLogWithMaxLen(i8* %21) #8, !dbg !4555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4556
  call void @sdsfree(i8* %19) #8, !dbg !4557
  %22 = add nsw i32 %12, 1, !dbg !4558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4559
  br label %23, !dbg !4559

; <label>:23:                                     ; preds = %10, %17
  %24 = phi i32 [ %12, %10 ], [ %22, %17 ], !dbg !4560
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !4561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4535
  %25 = call i8* @lua_getlocal(%struct.lua_State* %0, %struct.lua_Debug* nonnull %2, i32 %14) #8, !dbg !4532
  %26 = icmp eq i8* %25, null, !dbg !4534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4535
  br i1 %26, label %27, label %10, !dbg !4535, !llvm.loop !4562

; <label>:27:                                     ; preds = %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4536
  %28 = icmp eq i32 %24, 0, !dbg !4564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4537
  br i1 %28, label %29, label %33, !dbg !4537

; <label>:29:                                     ; preds = %9, %1, %27
  %30 = call i8* @sdsnew(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.176, i64 0, i64 0)) #8, !dbg !4566
  %31 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4570, !tbaa !787
  %32 = call %struct.list* @listAddNodeTail(%struct.list* %31, i8* %30) #8, !dbg !4571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4573
  br label %33, !dbg !4573

; <label>:33:                                     ; preds = %29, %27
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %3) #7, !dbg !4574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4574
  ret void, !dbg !4574
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbBreak(i8** nocapture readonly, i32) local_unnamed_addr #0 !dbg !4575 {
  %3 = alloca i64, align 8
  %4 = icmp eq i32 %1, 1, !dbg !4595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4596
  br i1 %4, label %5, label %28, !dbg !4596

; <label>:5:                                      ; preds = %2
  %6 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4597, !tbaa !2895
  %7 = icmp eq i32 %6, 0, !dbg !4598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4599
  br i1 %7, label %8, label %12, !dbg !4599

; <label>:8:                                      ; preds = %5
  %9 = tail call i8* @sdsnew(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.177, i64 0, i64 0)) #8, !dbg !4600
  %10 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4604, !tbaa !787
  %11 = tail call %struct.list* @listAddNodeTail(%struct.list* %10, i8* %9) #8, !dbg !4605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4606
  br label %167, !dbg !4607

; <label>:12:                                     ; preds = %5
  %13 = tail call i8* @sdsempty() #8, !dbg !4608
  %14 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4609, !tbaa !2895
  %15 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.178, i64 0, i64 0), i32 %14) #8, !dbg !4610
  %16 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4613, !tbaa !787
  %17 = tail call %struct.list* @listAddNodeTail(%struct.list* %16, i8* %15) #8, !dbg !4614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4617
  %18 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4619, !tbaa !2895
  %19 = icmp sgt i32 %18, 0, !dbg !4621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4622
  br i1 %19, label %20, label %167, !dbg !4622

; <label>:20:                                     ; preds = %12, %20
  %21 = phi i64 [ %24, %20 ], [ 0, %12 ]
  %22 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %21, !dbg !4623
  %23 = load i32, i32* %22, align 4, !dbg !4623, !tbaa !979
  tail call void @ldbLogSourceLine(i32 %23) #9, !dbg !4624
  %24 = add nuw nsw i64 %21, 1, !dbg !4625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4626
  %25 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4619, !tbaa !2895
  %26 = sext i32 %25 to i64, !dbg !4621
  %27 = icmp slt i64 %24, %26, !dbg !4621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4622
  br i1 %27, label %20, label %167, !dbg !4622, !llvm.loop !4627

; <label>:28:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4630
  %29 = icmp sgt i32 %1, 1, !dbg !4631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4632
  br i1 %29, label %30, label %167, !dbg !4632

; <label>:30:                                     ; preds = %28
  %31 = bitcast i64* %3 to i8*
  %32 = zext i32 %1 to i64
  br label %33, !dbg !4632

; <label>:33:                                     ; preds = %164, %30
  %34 = phi i64 [ 1, %30 ], [ %165, %164 ]
  %35 = getelementptr inbounds i8*, i8** %0, i64 %34, !dbg !4633
  %36 = load i8*, i8** %35, align 8, !dbg !4633, !tbaa !1003
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %31) #7, !dbg !4635
  %37 = getelementptr inbounds i8, i8* %36, i64 -1, !dbg !4639
  %38 = load i8, i8* %37, align 1, !dbg !4639, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4641
  %39 = trunc i8 %38 to i3, !dbg !4641
  switch i3 %39, label %61 [
    i3 0, label %40
    i3 1, label %43
    i3 2, label %47
    i3 3, label %52
    i3 -4, label %57
  ], !dbg !4641

; <label>:40:                                     ; preds = %33
  %41 = lshr i8 %38, 3, !dbg !4642
  %42 = zext i8 %41 to i64, !dbg !4642
  br label %61, !dbg !4643

; <label>:43:                                     ; preds = %33
  %44 = getelementptr inbounds i8, i8* %36, i64 -3, !dbg !4644
  %45 = load i8, i8* %44, align 1, !dbg !4645, !tbaa !486
  %46 = zext i8 %45 to i64, !dbg !4644
  br label %61, !dbg !4646

; <label>:47:                                     ; preds = %33
  %48 = getelementptr inbounds i8, i8* %36, i64 -5, !dbg !4647
  %49 = bitcast i8* %48 to i16*, !dbg !4648
  %50 = load i16, i16* %49, align 1, !dbg !4648, !tbaa !1085
  %51 = zext i16 %50 to i64, !dbg !4647
  br label %61, !dbg !4649

; <label>:52:                                     ; preds = %33
  %53 = getelementptr inbounds i8, i8* %36, i64 -9, !dbg !4650
  %54 = bitcast i8* %53 to i32*, !dbg !4651
  %55 = load i32, i32* %54, align 1, !dbg !4651, !tbaa !979
  %56 = zext i32 %55 to i64, !dbg !4650
  br label %61, !dbg !4652

; <label>:57:                                     ; preds = %33
  %58 = getelementptr inbounds i8, i8* %36, i64 -17, !dbg !4653
  %59 = bitcast i8* %58 to i64*, !dbg !4654
  %60 = load i64, i64* %59, align 1, !dbg !4654, !tbaa !1026
  br label %61, !dbg !4655

; <label>:61:                                     ; preds = %33, %40, %43, %47, %52, %57
  %62 = phi i64 [ %60, %57 ], [ %56, %52 ], [ %51, %47 ], [ %46, %43 ], [ %42, %40 ], [ 0, %33 ], !dbg !4656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4658
  %63 = call i32 @string2l(i8* %36, i64 %62, i64* nonnull %3) #8, !dbg !4660
  %64 = icmp eq i32 %63, 0, !dbg !4660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4661
  br i1 %64, label %65, label %70, !dbg !4661

; <label>:65:                                     ; preds = %61
  %66 = call i8* @sdsempty() #8, !dbg !4662
  %67 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.179, i64 0, i64 0), i8* %36) #8, !dbg !4664
  %68 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4667, !tbaa !787
  %69 = call %struct.list* @listAddNodeTail(%struct.list* %68, i8* %67) #8, !dbg !4668
  br label %164, !dbg !4669

; <label>:70:                                     ; preds = %61
  %71 = load i64, i64* %3, align 8, !dbg !4670, !tbaa !1026
  %72 = icmp eq i64 %71, 0, !dbg !4673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4674
  br i1 %72, label %73, label %77, !dbg !4674

; <label>:73:                                     ; preds = %70
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4675, !tbaa !2895
  %74 = call i8* @sdsnew(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.180, i64 0, i64 0)) #8, !dbg !4677
  %75 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4680, !tbaa !787
  %76 = call %struct.list* @listAddNodeTail(%struct.list* %75, i8* %74) #8, !dbg !4681
  br label %164, !dbg !4682

; <label>:77:                                     ; preds = %70
  %78 = icmp sgt i64 %71, 0, !dbg !4683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4685
  br i1 %78, label %79, label %131, !dbg !4685

; <label>:79:                                     ; preds = %77
  %80 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4686, !tbaa !2895
  %81 = icmp eq i32 %80, 64, !dbg !4689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4690
  br i1 %81, label %82, label %86, !dbg !4690

; <label>:82:                                     ; preds = %79
  %83 = call i8* @sdsnew(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.181, i64 0, i64 0)) #8, !dbg !4691
  %84 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4695, !tbaa !787
  %85 = call %struct.list* @listAddNodeTail(%struct.list* %84, i8* %83) #8, !dbg !4696
  br label %164, !dbg !4697

; <label>:86:                                     ; preds = %79
  %87 = trunc i64 %71 to i32, !dbg !4698
  %88 = icmp slt i32 %87, 1, !dbg !4702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4703
  br i1 %88, label %127, label %89, !dbg !4703

; <label>:89:                                     ; preds = %86
  %90 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !4704, !tbaa !2094
  %91 = icmp slt i32 %90, %87, !dbg !4705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4706
  br i1 %91, label %127, label %92, !dbg !4706

; <label>:92:                                     ; preds = %89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4710
  %93 = icmp sgt i32 %80, 0, !dbg !4711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4712
  br i1 %93, label %96, label %94, !dbg !4712

; <label>:94:                                     ; preds = %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4715
  %95 = sext i32 %80 to i64, !dbg !4716
  br label %108, !dbg !4715

; <label>:96:                                     ; preds = %92
  %97 = sext i32 %80 to i64, !dbg !4712
  br label %98, !dbg !4712

; <label>:98:                                     ; preds = %103, %96
  %99 = phi i64 [ 0, %96 ], [ %104, %103 ]
  %100 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %99, !dbg !4717
  %101 = load i32, i32* %100, align 4, !dbg !4717, !tbaa !979
  %102 = icmp eq i32 %101, %87, !dbg !4718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4719
  br i1 %102, label %107, label %103, !dbg !4719

; <label>:103:                                    ; preds = %98
  %104 = add nuw nsw i64 %99, 1, !dbg !4720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4721
  %105 = icmp slt i64 %104, %97, !dbg !4711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4712
  br i1 %105, label %98, label %106, !dbg !4712, !llvm.loop !2904

; <label>:106:                                    ; preds = %103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4715
  br label %108, !dbg !4715

; <label>:107:                                    ; preds = %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4715
  br label %127, !dbg !4723

; <label>:108:                                    ; preds = %106, %94
  %109 = phi i64 [ %97, %106 ], [ %95, %94 ], !dbg !4716
  %110 = add nsw i32 %80, 1, !dbg !4724
  store i32 %110, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4724, !tbaa !2895
  %111 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %109, !dbg !4716
  store i32 %87, i32* %111, align 4, !dbg !4725, !tbaa !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4734
  %112 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !4735, !tbaa !2094
  %113 = icmp slt i32 %112, 1, !dbg !4736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4737
  br i1 %113, label %164, label %114, !dbg !4737

; <label>:114:                                    ; preds = %108
  %115 = icmp eq i32 %87, 0
  br label %116, !dbg !4737

; <label>:116:                                    ; preds = %123, %114
  %117 = phi i32 [ 1, %114 ], [ %124, %123 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4738
  br i1 %115, label %122, label %118, !dbg !4738

; <label>:118:                                    ; preds = %116
  %119 = sub nsw i32 %87, %117, !dbg !4739
  %120 = call i32 @abs(i32 %119) #8, !dbg !4740
  %121 = icmp sgt i32 %120, 1, !dbg !4741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4742
  br i1 %121, label %123, label %122, !dbg !4742

; <label>:122:                                    ; preds = %118, %116
  call void @ldbLogSourceLine(i32 %117) #8, !dbg !4743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4744
  br label %123, !dbg !4744

; <label>:123:                                    ; preds = %122, %118
  %124 = add nuw nsw i32 %117, 1, !dbg !4745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4746
  %125 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !4735, !tbaa !2094
  %126 = icmp slt i32 %117, %125, !dbg !4736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4737
  br i1 %126, label %116, label %164, !dbg !4737, !llvm.loop !4031

; <label>:127:                                    ; preds = %86, %89, %107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4728
  %128 = call i8* @sdsnew(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.182, i64 0, i64 0)) #8, !dbg !4748
  %129 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4752, !tbaa !787
  %130 = call %struct.list* @listAddNodeTail(%struct.list* %129, i8* %128) #8, !dbg !4753
  br label %164

; <label>:131:                                    ; preds = %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4754
  %132 = trunc i64 %71 to i32, !dbg !4755
  %133 = sub i32 0, %132, !dbg !4755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4762
  %134 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4763, !tbaa !2895
  %135 = icmp sgt i32 %134, 0, !dbg !4764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4765
  br i1 %135, label %136, label %160, !dbg !4765

; <label>:136:                                    ; preds = %131
  %137 = sext i32 %134 to i64, !dbg !4765
  br label %138, !dbg !4765

; <label>:138:                                    ; preds = %143, %136
  %139 = phi i64 [ 0, %136 ], [ %144, %143 ]
  %140 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %139, !dbg !4766
  %141 = load i32, i32* %140, align 4, !dbg !4766, !tbaa !979
  %142 = icmp eq i32 %141, %133, !dbg !4767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4768
  br i1 %142, label %146, label %143, !dbg !4768

; <label>:143:                                    ; preds = %138
  %144 = add nuw nsw i64 %139, 1, !dbg !4769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4770
  %145 = icmp slt i64 %144, %137, !dbg !4764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4765
  br i1 %145, label %138, label %160, !dbg !4765, !llvm.loop !3831

; <label>:146:                                    ; preds = %138
  %147 = trunc i64 %139 to i32, !dbg !4761
  %148 = and i64 %139, 4294967295, !dbg !4766
  %149 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %148, !dbg !4766
  %150 = add nsw i32 %134, -1, !dbg !4771
  store i32 %150, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4771, !tbaa !2895
  %151 = bitcast i32* %149 to i8*, !dbg !4772
  %152 = getelementptr inbounds i32, i32* %149, i64 1, !dbg !4773
  %153 = bitcast i32* %152 to i8*, !dbg !4774
  %154 = sub nsw i32 %150, %147, !dbg !4775
  %155 = sext i32 %154 to i64, !dbg !4776
  %156 = call i8* @memmove(i8* nonnull %151, i8* nonnull %153, i64 %155) #8, !dbg !4777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4780
  %157 = call i8* @sdsnew(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.183, i64 0, i64 0)) #8, !dbg !4781
  %158 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4784, !tbaa !787
  %159 = call %struct.list* @listAddNodeTail(%struct.list* %158, i8* %157) #8, !dbg !4785
  br label %164, !dbg !4786

; <label>:160:                                    ; preds = %143, %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4780
  %161 = call i8* @sdsnew(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.184, i64 0, i64 0)) #8, !dbg !4788
  %162 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4791, !tbaa !787
  %163 = call %struct.list* @listAddNodeTail(%struct.list* %162, i8* %161) #8, !dbg !4792
  br label %164

; <label>:164:                                    ; preds = %123, %108, %73, %160, %146, %82, %127, %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4793
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %31) #7, !dbg !4794
  %165 = add nuw nsw i64 %34, 1, !dbg !4795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4632
  %166 = icmp eq i64 %165, %32, !dbg !4631
  br i1 %166, label %167, label %33, !dbg !4632, !llvm.loop !4797

; <label>:167:                                    ; preds = %164, %20, %28, %12, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4799
  ret void, !dbg !4799
}

; Function Attrs: noredzone
declare dso_local i32 @string2l(i8*, i64, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbEval(%struct.lua_State*, i8**, i32) local_unnamed_addr #0 !dbg !4800 {
  %4 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !4812
  %5 = add nsw i32 %2, -1, !dbg !4813
  %6 = tail call i8* @sdsjoinsds(i8** nonnull %4, i32 %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #8, !dbg !4814
  %7 = tail call i8* @sdsnew(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.185, i64 0, i64 0)) #8, !dbg !4816
  %8 = tail call i8* @sdscatsds(i8* %7, i8* %6) #8, !dbg !4817
  %9 = getelementptr inbounds i8, i8* %8, i64 -1, !dbg !4822
  %10 = load i8, i8* %9, align 1, !dbg !4822, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4824
  %11 = trunc i8 %10 to i3, !dbg !4824
  switch i3 %11, label %33 [
    i3 0, label %12
    i3 1, label %15
    i3 2, label %19
    i3 3, label %24
    i3 -4, label %29
  ], !dbg !4824

; <label>:12:                                     ; preds = %3
  %13 = lshr i8 %10, 3, !dbg !4825
  %14 = zext i8 %13 to i64, !dbg !4825
  br label %33, !dbg !4826

; <label>:15:                                     ; preds = %3
  %16 = getelementptr inbounds i8, i8* %8, i64 -3, !dbg !4827
  %17 = load i8, i8* %16, align 1, !dbg !4828, !tbaa !486
  %18 = zext i8 %17 to i64, !dbg !4827
  br label %33, !dbg !4829

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds i8, i8* %8, i64 -5, !dbg !4830
  %21 = bitcast i8* %20 to i16*, !dbg !4831
  %22 = load i16, i16* %21, align 1, !dbg !4831, !tbaa !1085
  %23 = zext i16 %22 to i64, !dbg !4830
  br label %33, !dbg !4832

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds i8, i8* %8, i64 -9, !dbg !4833
  %26 = bitcast i8* %25 to i32*, !dbg !4834
  %27 = load i32, i32* %26, align 1, !dbg !4834, !tbaa !979
  %28 = zext i32 %27 to i64, !dbg !4833
  br label %33, !dbg !4835

; <label>:29:                                     ; preds = %3
  %30 = getelementptr inbounds i8, i8* %8, i64 -17, !dbg !4836
  %31 = bitcast i8* %30 to i64*, !dbg !4837
  %32 = load i64, i64* %31, align 1, !dbg !4837, !tbaa !1026
  br label %33, !dbg !4838

; <label>:33:                                     ; preds = %3, %12, %15, %19, %24, %29
  %34 = phi i64 [ %32, %29 ], [ %28, %24 ], [ %23, %19 ], [ %18, %15 ], [ %14, %12 ], [ 0, %3 ], !dbg !4839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4841
  %35 = tail call i32 @luaL_loadbuffer(%struct.lua_State* %0, i8* %8, i64 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.186, i64 0, i64 0)) #8, !dbg !4842
  %36 = icmp eq i32 %35, 0, !dbg !4842
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4843
  br i1 %36, label %72, label %37, !dbg !4843

; <label>:37:                                     ; preds = %33
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !4844
  %38 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !4849
  %39 = load i8, i8* %38, align 1, !dbg !4849, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4851
  %40 = trunc i8 %39 to i3, !dbg !4851
  switch i3 %40, label %62 [
    i3 0, label %41
    i3 1, label %44
    i3 2, label %48
    i3 3, label %53
    i3 -4, label %58
  ], !dbg !4851

; <label>:41:                                     ; preds = %37
  %42 = lshr i8 %39, 3, !dbg !4852
  %43 = zext i8 %42 to i64, !dbg !4852
  br label %62, !dbg !4853

; <label>:44:                                     ; preds = %37
  %45 = getelementptr inbounds i8, i8* %6, i64 -3, !dbg !4854
  %46 = load i8, i8* %45, align 1, !dbg !4855, !tbaa !486
  %47 = zext i8 %46 to i64, !dbg !4854
  br label %62, !dbg !4856

; <label>:48:                                     ; preds = %37
  %49 = getelementptr inbounds i8, i8* %6, i64 -5, !dbg !4857
  %50 = bitcast i8* %49 to i16*, !dbg !4858
  %51 = load i16, i16* %50, align 1, !dbg !4858, !tbaa !1085
  %52 = zext i16 %51 to i64, !dbg !4857
  br label %62, !dbg !4859

; <label>:53:                                     ; preds = %37
  %54 = getelementptr inbounds i8, i8* %6, i64 -9, !dbg !4860
  %55 = bitcast i8* %54 to i32*, !dbg !4861
  %56 = load i32, i32* %55, align 1, !dbg !4861, !tbaa !979
  %57 = zext i32 %56 to i64, !dbg !4860
  br label %62, !dbg !4862

; <label>:58:                                     ; preds = %37
  %59 = getelementptr inbounds i8, i8* %6, i64 -17, !dbg !4863
  %60 = bitcast i8* %59 to i64*, !dbg !4864
  %61 = load i64, i64* %60, align 1, !dbg !4864, !tbaa !1026
  br label %62, !dbg !4865

; <label>:62:                                     ; preds = %37, %41, %44, %48, %53, %58
  %63 = phi i64 [ %61, %58 ], [ %57, %53 ], [ %52, %48 ], [ %47, %44 ], [ %43, %41 ], [ 0, %37 ], !dbg !4866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4868
  %64 = tail call i32 @luaL_loadbuffer(%struct.lua_State* %0, i8* nonnull %6, i64 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.186, i64 0, i64 0)) #8, !dbg !4869
  %65 = icmp eq i32 %64, 0, !dbg !4869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4870
  br i1 %65, label %72, label %66, !dbg !4870

; <label>:66:                                     ; preds = %62
  %67 = tail call i8* @sdsempty() #8, !dbg !4871
  %68 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #8, !dbg !4873
  %69 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %68) #8, !dbg !4874
  %70 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4877, !tbaa !787
  %71 = tail call %struct.list* @listAddNodeTail(%struct.list* %70, i8* %69) #8, !dbg !4878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4879
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !4880
  tail call void @sdsfree(i8* nonnull %6) #8, !dbg !4881
  br label %84, !dbg !4882

; <label>:72:                                     ; preds = %62, %33
  tail call void @sdsfree(i8* %6) #8, !dbg !4883
  tail call void @sdsfree(i8* %8) #8, !dbg !4884
  %73 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 0, i32 1, i32 0) #8, !dbg !4885
  %74 = icmp eq i32 %73, 0, !dbg !4885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4887
  br i1 %74, label %81, label %75, !dbg !4887

; <label>:75:                                     ; preds = %72
  %76 = tail call i8* @sdsempty() #8, !dbg !4888
  %77 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #8, !dbg !4890
  %78 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %77) #8, !dbg !4891
  %79 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4894, !tbaa !787
  %80 = tail call %struct.list* @listAddNodeTail(%struct.list* %79, i8* %78) #8, !dbg !4895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4896
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !4897
  br label %84, !dbg !4898

; <label>:81:                                     ; preds = %72
  %82 = tail call i8* @sdsnew(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.187, i64 0, i64 0)) #8, !dbg !4902
  %83 = tail call i8* @ldbCatStackValueRec(i8* %82, %struct.lua_State* %0, i32 -1, i32 0) #8, !dbg !4908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4909
  tail call void @ldbLogWithMaxLen(i8* %83) #8, !dbg !4910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4911
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #8, !dbg !4912
  br label %84, !dbg !4913

; <label>:84:                                     ; preds = %81, %75, %66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4913
  ret void, !dbg !4913
}

; Function Attrs: noredzone
declare dso_local i8* @sdsjoinsds(i8**, i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbRedis(%struct.lua_State*, i8** nocapture readonly, i32) local_unnamed_addr #0 !dbg !4915 {
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !4925, !tbaa !1337
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0)) #8, !dbg !4927
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0)) #8, !dbg !4928
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -2) #8, !dbg !4929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4931
  %5 = icmp sgt i32 %2, 1, !dbg !4933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4935
  br i1 %5, label %6, label %40, !dbg !4935

; <label>:6:                                      ; preds = %3
  %7 = zext i32 %2 to i64
  br label %8, !dbg !4936

; <label>:8:                                      ; preds = %36, %6
  %9 = phi i64 [ 1, %6 ], [ %38, %36 ]
  %10 = getelementptr inbounds i8*, i8** %1, i64 %9, !dbg !4936
  %11 = load i8*, i8** %10, align 8, !dbg !4936, !tbaa !1003
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !4939
  %13 = load i8, i8* %12, align 1, !dbg !4939, !tbaa !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4941
  %14 = trunc i8 %13 to i3, !dbg !4941
  switch i3 %14, label %36 [
    i3 0, label %15
    i3 1, label %18
    i3 2, label %22
    i3 3, label %27
    i3 -4, label %32
  ], !dbg !4941

; <label>:15:                                     ; preds = %8
  %16 = lshr i8 %13, 3, !dbg !4942
  %17 = zext i8 %16 to i64, !dbg !4942
  br label %36, !dbg !4943

; <label>:18:                                     ; preds = %8
  %19 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !4944
  %20 = load i8, i8* %19, align 1, !dbg !4945, !tbaa !486
  %21 = zext i8 %20 to i64, !dbg !4944
  br label %36, !dbg !4946

; <label>:22:                                     ; preds = %8
  %23 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !4947
  %24 = bitcast i8* %23 to i16*, !dbg !4948
  %25 = load i16, i16* %24, align 1, !dbg !4948, !tbaa !1085
  %26 = zext i16 %25 to i64, !dbg !4947
  br label %36, !dbg !4949

; <label>:27:                                     ; preds = %8
  %28 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !4950
  %29 = bitcast i8* %28 to i32*, !dbg !4951
  %30 = load i32, i32* %29, align 1, !dbg !4951, !tbaa !979
  %31 = zext i32 %30 to i64, !dbg !4950
  br label %36, !dbg !4952

; <label>:32:                                     ; preds = %8
  %33 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !4953
  %34 = bitcast i8* %33 to i64*, !dbg !4954
  %35 = load i64, i64* %34, align 1, !dbg !4954, !tbaa !1026
  br label %36, !dbg !4955

; <label>:36:                                     ; preds = %8, %15, %18, %22, %27, %32
  %37 = phi i64 [ %35, %32 ], [ %31, %27 ], [ %26, %22 ], [ %21, %18 ], [ %17, %15 ], [ 0, %8 ], !dbg !4956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4958
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %11, i64 %37) #8, !dbg !4959
  %38 = add nuw nsw i64 %9, 1, !dbg !4960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4935
  %39 = icmp eq i64 %38, %7, !dbg !4933
  br i1 %39, label %40, label %8, !dbg !4935, !llvm.loop !4962

; <label>:40:                                     ; preds = %36, %3
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !4964, !tbaa !2937
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !4965, !tbaa !1337
  %41 = add nsw i32 %2, -1, !dbg !4966
  %42 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 %41, i32 1, i32 0) #8, !dbg !4967
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !4968, !tbaa !2937
  store i32 %4, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !4969, !tbaa !1337
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #8, !dbg !4970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4971
  ret void, !dbg !4971
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbTrace(%struct.lua_State*) local_unnamed_addr #0 !dbg !4972 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !4978
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %3) #7, !dbg !4978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4980
  %4 = call i32 @lua_getstack(%struct.lua_State* %0, i32 0, %struct.lua_Debug* nonnull %2) #8, !dbg !4982
  %5 = icmp eq i32 %4, 0, !dbg !4980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4980
  br i1 %5, label %30, label %6, !dbg !4980

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9, i64 0
  %8 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1
  %9 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5
  br label %10, !dbg !4980

; <label>:10:                                     ; preds = %6, %26
  %11 = phi i32 [ 0, %6 ], [ %27, %26 ]
  %12 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.188, i64 0, i64 0), %struct.lua_Debug* nonnull %2) #8, !dbg !4983
  %13 = call i8* @strstr(i8* nonnull %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.189, i64 0, i64 0)) #8, !dbg !4985
  %14 = icmp eq i8* %13, null, !dbg !4987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4988
  br i1 %14, label %26, label %15, !dbg !4988

; <label>:15:                                     ; preds = %10
  %16 = call i8* @sdsempty() #8, !dbg !4989
  %17 = icmp eq i32 %11, 0, !dbg !4991
  %18 = select i1 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.191, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.192, i64 0, i64 0), !dbg !4992
  %19 = load i8*, i8** %8, align 8, !dbg !4993, !tbaa !4994
  %20 = icmp eq i8* %19, null, !dbg !4995
  %21 = select i1 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.193, i64 0, i64 0), i8* %19, !dbg !4995
  %22 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.190, i64 0, i64 0), i8* %18, i8* %21) #8, !dbg !4996
  %23 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4999, !tbaa !787
  %24 = call %struct.list* @listAddNodeTail(%struct.list* %23, i8* %22) #8, !dbg !5000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5001
  %25 = load i32, i32* %9, align 8, !dbg !5002, !tbaa !803
  call void @ldbLogSourceLine(i32 %25) #9, !dbg !5003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5004
  br label %26, !dbg !5004

; <label>:26:                                     ; preds = %10, %15
  %27 = add nuw nsw i32 %11, 1, !dbg !5005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4980
  %28 = call i32 @lua_getstack(%struct.lua_State* %0, i32 %27, %struct.lua_Debug* nonnull %2) #8, !dbg !4982
  %29 = icmp eq i32 %28, 0, !dbg !4980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4980
  br i1 %29, label %34, label %10, !dbg !4980, !llvm.loop !5006

; <label>:30:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5008
  %31 = call i8* @sdsnew(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.194, i64 0, i64 0)) #8, !dbg !5009
  %32 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5014, !tbaa !787
  %33 = call %struct.list* @listAddNodeTail(%struct.list* %32, i8* %31) #8, !dbg !5015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5016
  br label %34, !dbg !5017

; <label>:34:                                     ; preds = %26, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5018
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %3) #7, !dbg !5019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5019
  ret void, !dbg !5019
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbMaxlen(i8** nocapture readonly, i32) local_unnamed_addr #0 !dbg !5020 {
  %3 = icmp eq i32 %1, 2, !dbg !5029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5030
  br i1 %3, label %4, label %15, !dbg !5030

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %0, i64 1, !dbg !5031
  %6 = load i8*, i8** %5, align 8, !dbg !5031, !tbaa !1003
  %7 = tail call i32 @atoi(i8* %6) #8, !dbg !5032
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 15), align 8, !dbg !5034, !tbaa !3271
  %8 = icmp ne i32 %7, 0, !dbg !5035
  %9 = icmp slt i32 %7, 61, !dbg !5037
  %10 = and i1 %8, %9, !dbg !5038
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5038
  br i1 %10, label %11, label %12, !dbg !5038

; <label>:11:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5039
  br label %12, !dbg !5039

; <label>:12:                                     ; preds = %11, %4
  %13 = phi i32 [ 60, %11 ], [ %7, %4 ], !dbg !5040
  %14 = sext i32 %13 to i64, !dbg !5041
  store i64 %14, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !5042, !tbaa !3269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5043
  br label %17, !dbg !5043

; <label>:15:                                     ; preds = %2
  %16 = load i64, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !5044, !tbaa !3269
  br label %17, !dbg !5044

; <label>:17:                                     ; preds = %15, %12
  %18 = phi i64 [ %16, %15 ], [ %14, %12 ], !dbg !5044
  %19 = icmp eq i64 %18, 0, !dbg !5046
  %20 = tail call i8* @sdsempty() #8, !dbg !5047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5049
  br i1 %19, label %27, label %21, !dbg !5049

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !5050, !tbaa !3269
  %23 = trunc i64 %22 to i32, !dbg !5052
  %24 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.195, i64 0, i64 0), i32 %23) #8, !dbg !5053
  %25 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5056, !tbaa !787
  %26 = tail call %struct.list* @listAddNodeTail(%struct.list* %25, i8* %24) #8, !dbg !5057
  br label %31, !dbg !5058

; <label>:27:                                     ; preds = %17
  %28 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.196, i64 0, i64 0)) #8, !dbg !5059
  %29 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5062, !tbaa !787
  %30 = tail call %struct.list* @listAddNodeTail(%struct.list* %29, i8* %28) #8, !dbg !5063
  br label %31

; <label>:31:                                     ; preds = %27, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5064
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5065
  ret void, !dbg !5065
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ldbRepl(%struct.lua_State*) local_unnamed_addr #0 !dbg !5066 {
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  %4 = bitcast i32* %2 to i8*, !dbg !5096
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #7, !dbg !5096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5097
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  br label %6, !dbg !5097

; <label>:6:                                      ; preds = %271, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5098
  %7 = call i8** @ldbReplParseCommand(i32* nonnull %2) #9, !dbg !5100
  %8 = icmp eq i8** %7, null, !dbg !5102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5098
  br i1 %8, label %9, label %22, !dbg !5098

; <label>:9:                                      ; preds = %6, %15
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %5) #7, !dbg !5103
  %10 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !5105, !tbaa !2082
  %11 = call i64 @read(i32 %10, i8* nonnull %5, i64 1024) #8, !dbg !5106
  %12 = trunc i64 %11 to i32, !dbg !5106
  %13 = icmp slt i32 %12, 1, !dbg !5108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5110
  br i1 %13, label %14, label %15, !dbg !5110

; <label>:14:                                     ; preds = %9
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !5111, !tbaa !2937
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !5113, !tbaa !2895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5114
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %5) #7, !dbg !5115
  br label %275

; <label>:15:                                     ; preds = %9
  %16 = load i8*, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !5116, !tbaa !2097
  %17 = shl i64 %11, 32, !dbg !5117
  %18 = ashr exact i64 %17, 32, !dbg !5117
  %19 = call i8* @sdscatlen(i8* %16, i8* nonnull %5, i64 %18) #8, !dbg !5118
  store i8* %19, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !5119, !tbaa !2097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5115
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %5) #7, !dbg !5115
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %20 = call i8** @ldbReplParseCommand(i32* nonnull %2) #9, !dbg !5100
  %21 = icmp eq i8** %20, null, !dbg !5102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5098
  br i1 %21, label %9, label %22, !dbg !5098

; <label>:22:                                     ; preds = %15, %6
  %23 = phi i8** [ %7, %6 ], [ %20, %15 ], !dbg !5100
  %24 = load i8*, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !5120, !tbaa !2097
  call void @sdsfree(i8* %24) #8, !dbg !5121
  %25 = call i8* @sdsempty() #8, !dbg !5122
  store i8* %25, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !5123, !tbaa !2097
  %26 = load i8*, i8** %23, align 8, !dbg !5124, !tbaa !1003
  %27 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.197, i64 0, i64 0)) #11, !dbg !5125
  %28 = icmp eq i32 %27, 0, !dbg !5125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5126
  br i1 %28, label %32, label %29, !dbg !5126

; <label>:29:                                     ; preds = %22
  %30 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i64 0, i64 0)) #11, !dbg !5127
  %31 = icmp eq i32 %30, 0, !dbg !5127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5128
  br i1 %31, label %32, label %123, !dbg !5128

; <label>:32:                                     ; preds = %29, %22
  %33 = call i8* @sdsnew(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.198, i64 0, i64 0)) #8, !dbg !5129
  %34 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5133, !tbaa !787
  %35 = call %struct.list* @listAddNodeTail(%struct.list* %34, i8* %33) #8, !dbg !5134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5135
  %36 = call i8* @sdsnew(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.199, i64 0, i64 0)) #8, !dbg !5136
  %37 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5139, !tbaa !787
  %38 = call %struct.list* @listAddNodeTail(%struct.list* %37, i8* %36) #8, !dbg !5140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5141
  %39 = call i8* @sdsnew(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.200, i64 0, i64 0)) #8, !dbg !5142
  %40 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5145, !tbaa !787
  %41 = call %struct.list* @listAddNodeTail(%struct.list* %40, i8* %39) #8, !dbg !5146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5147
  %42 = call i8* @sdsnew(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.201, i64 0, i64 0)) #8, !dbg !5148
  %43 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5151, !tbaa !787
  %44 = call %struct.list* @listAddNodeTail(%struct.list* %43, i8* %42) #8, !dbg !5152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5153
  %45 = call i8* @sdsnew(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.202, i64 0, i64 0)) #8, !dbg !5154
  %46 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5157, !tbaa !787
  %47 = call %struct.list* @listAddNodeTail(%struct.list* %46, i8* %45) #8, !dbg !5158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5159
  %48 = call i8* @sdsnew(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.203, i64 0, i64 0)) #8, !dbg !5160
  %49 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5163, !tbaa !787
  %50 = call %struct.list* @listAddNodeTail(%struct.list* %49, i8* %48) #8, !dbg !5164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5165
  %51 = call i8* @sdsnew(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.204, i64 0, i64 0)) #8, !dbg !5166
  %52 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5169, !tbaa !787
  %53 = call %struct.list* @listAddNodeTail(%struct.list* %52, i8* %51) #8, !dbg !5170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5171
  %54 = call i8* @sdsnew(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.205, i64 0, i64 0)) #8, !dbg !5172
  %55 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5175, !tbaa !787
  %56 = call %struct.list* @listAddNodeTail(%struct.list* %55, i8* %54) #8, !dbg !5176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5177
  %57 = call i8* @sdsnew(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.206, i64 0, i64 0)) #8, !dbg !5178
  %58 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5181, !tbaa !787
  %59 = call %struct.list* @listAddNodeTail(%struct.list* %58, i8* %57) #8, !dbg !5182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5183
  %60 = call i8* @sdsnew(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.207, i64 0, i64 0)) #8, !dbg !5184
  %61 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5187, !tbaa !787
  %62 = call %struct.list* @listAddNodeTail(%struct.list* %61, i8* %60) #8, !dbg !5188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5189
  %63 = call i8* @sdsnew(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.208, i64 0, i64 0)) #8, !dbg !5190
  %64 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5193, !tbaa !787
  %65 = call %struct.list* @listAddNodeTail(%struct.list* %64, i8* %63) #8, !dbg !5194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5195
  %66 = call i8* @sdsnew(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.209, i64 0, i64 0)) #8, !dbg !5196
  %67 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5199, !tbaa !787
  %68 = call %struct.list* @listAddNodeTail(%struct.list* %67, i8* %66) #8, !dbg !5200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5201
  %69 = call i8* @sdsnew(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.210, i64 0, i64 0)) #8, !dbg !5202
  %70 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5205, !tbaa !787
  %71 = call %struct.list* @listAddNodeTail(%struct.list* %70, i8* %69) #8, !dbg !5206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5207
  %72 = call i8* @sdsnew(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.211, i64 0, i64 0)) #8, !dbg !5208
  %73 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5211, !tbaa !787
  %74 = call %struct.list* @listAddNodeTail(%struct.list* %73, i8* %72) #8, !dbg !5212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5213
  %75 = call i8* @sdsnew(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.212, i64 0, i64 0)) #8, !dbg !5214
  %76 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5217, !tbaa !787
  %77 = call %struct.list* @listAddNodeTail(%struct.list* %76, i8* %75) #8, !dbg !5218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5219
  %78 = call i8* @sdsnew(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.213, i64 0, i64 0)) #8, !dbg !5220
  %79 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5223, !tbaa !787
  %80 = call %struct.list* @listAddNodeTail(%struct.list* %79, i8* %78) #8, !dbg !5224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5225
  %81 = call i8* @sdsnew(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.214, i64 0, i64 0)) #8, !dbg !5226
  %82 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5229, !tbaa !787
  %83 = call %struct.list* @listAddNodeTail(%struct.list* %82, i8* %81) #8, !dbg !5230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5231
  %84 = call i8* @sdsnew(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.215, i64 0, i64 0)) #8, !dbg !5232
  %85 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5235, !tbaa !787
  %86 = call %struct.list* @listAddNodeTail(%struct.list* %85, i8* %84) #8, !dbg !5236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5237
  %87 = call i8* @sdsnew(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.216, i64 0, i64 0)) #8, !dbg !5238
  %88 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5241, !tbaa !787
  %89 = call %struct.list* @listAddNodeTail(%struct.list* %88, i8* %87) #8, !dbg !5242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5243
  %90 = call i8* @sdsnew(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.217, i64 0, i64 0)) #8, !dbg !5244
  %91 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5247, !tbaa !787
  %92 = call %struct.list* @listAddNodeTail(%struct.list* %91, i8* %90) #8, !dbg !5248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5249
  %93 = call i8* @sdsnew(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.218, i64 0, i64 0)) #8, !dbg !5250
  %94 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5253, !tbaa !787
  %95 = call %struct.list* @listAddNodeTail(%struct.list* %94, i8* %93) #8, !dbg !5254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5255
  %96 = call i8* @sdsnew(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.219, i64 0, i64 0)) #8, !dbg !5256
  %97 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5259, !tbaa !787
  %98 = call %struct.list* @listAddNodeTail(%struct.list* %97, i8* %96) #8, !dbg !5260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5261
  %99 = call i8* @sdsnew(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.220, i64 0, i64 0)) #8, !dbg !5262
  %100 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5265, !tbaa !787
  %101 = call %struct.list* @listAddNodeTail(%struct.list* %100, i8* %99) #8, !dbg !5266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5267
  %102 = call i8* @sdsnew(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.221, i64 0, i64 0)) #8, !dbg !5268
  %103 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5271, !tbaa !787
  %104 = call %struct.list* @listAddNodeTail(%struct.list* %103, i8* %102) #8, !dbg !5272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5273
  %105 = call i8* @sdsnew(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.222, i64 0, i64 0)) #8, !dbg !5274
  %106 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5277, !tbaa !787
  %107 = call %struct.list* @listAddNodeTail(%struct.list* %106, i8* %105) #8, !dbg !5278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5279
  %108 = call i8* @sdsnew(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)) #8, !dbg !5280
  %109 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5283, !tbaa !787
  %110 = call %struct.list* @listAddNodeTail(%struct.list* %109, i8* %108) #8, !dbg !5284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5285
  %111 = call i8* @sdsnew(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.223, i64 0, i64 0)) #8, !dbg !5286
  %112 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5289, !tbaa !787
  %113 = call %struct.list* @listAddNodeTail(%struct.list* %112, i8* %111) #8, !dbg !5290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5291
  %114 = call i8* @sdsnew(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.224, i64 0, i64 0)) #8, !dbg !5292
  %115 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5295, !tbaa !787
  %116 = call %struct.list* @listAddNodeTail(%struct.list* %115, i8* %114) #8, !dbg !5296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5297
  %117 = call i8* @sdsnew(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.225, i64 0, i64 0)) #8, !dbg !5298
  %118 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5301, !tbaa !787
  %119 = call %struct.list* @listAddNodeTail(%struct.list* %118, i8* %117) #8, !dbg !5302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5303
  %120 = call i8* @sdsnew(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.226, i64 0, i64 0)) #8, !dbg !5304
  %121 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5307, !tbaa !787
  %122 = call %struct.list* @listAddNodeTail(%struct.list* %121, i8* %120) #8, !dbg !5308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5309
  call void @ldbSendLogs() #9, !dbg !5310
  br label %271, !dbg !5311

; <label>:123:                                    ; preds = %29
  %124 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.227, i64 0, i64 0)) #11, !dbg !5312
  %125 = icmp eq i32 %124, 0, !dbg !5312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5313
  br i1 %125, label %135, label %126, !dbg !5313

; <label>:126:                                    ; preds = %123
  %127 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.228, i64 0, i64 0)) #11, !dbg !5314
  %128 = icmp eq i32 %127, 0, !dbg !5314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5315
  br i1 %128, label %135, label %129, !dbg !5315

; <label>:129:                                    ; preds = %126
  %130 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.229, i64 0, i64 0)) #11, !dbg !5316
  %131 = icmp eq i32 %130, 0, !dbg !5316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5317
  br i1 %131, label %135, label %132, !dbg !5317

; <label>:132:                                    ; preds = %129
  %133 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.230, i64 0, i64 0)) #11, !dbg !5318
  %134 = icmp eq i32 %133, 0, !dbg !5318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5319
  br i1 %134, label %135, label %136, !dbg !5319

; <label>:135:                                    ; preds = %132, %129, %126, %123
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !5320, !tbaa !2937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5322
  br label %273, !dbg !5322

; <label>:136:                                    ; preds = %132
  %137 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i64 0, i64 0)) #11, !dbg !5323
  %138 = icmp eq i32 %137, 0, !dbg !5323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5324
  br i1 %138, label %273, label %139, !dbg !5324

; <label>:139:                                    ; preds = %136
  %140 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.232, i64 0, i64 0)) #11, !dbg !5325
  %141 = icmp eq i32 %140, 0, !dbg !5325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5326
  br i1 %141, label %273, label %142, !dbg !5326

; <label>:142:                                    ; preds = %139
  %143 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.233, i64 0, i64 0)) #11, !dbg !5327
  %144 = icmp eq i32 %143, 0, !dbg !5327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5328
  br i1 %144, label %148, label %145, !dbg !5328

; <label>:145:                                    ; preds = %142
  %146 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.234, i64 0, i64 0)) #11, !dbg !5329
  %147 = icmp eq i32 %146, 0, !dbg !5329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5330
  br i1 %147, label %148, label %149, !dbg !5330

; <label>:148:                                    ; preds = %145, %142
  call void @ldbTrace(%struct.lua_State* %0) #9, !dbg !5331
  call void @ldbSendLogs() #9, !dbg !5333
  br label %271, !dbg !5334

; <label>:149:                                    ; preds = %145
  %150 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.235, i64 0, i64 0)) #11, !dbg !5335
  %151 = icmp eq i32 %150, 0, !dbg !5335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5336
  br i1 %151, label %155, label %152, !dbg !5336

; <label>:152:                                    ; preds = %149
  %153 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.236, i64 0, i64 0)) #11, !dbg !5337
  %154 = icmp eq i32 %153, 0, !dbg !5337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5338
  br i1 %154, label %155, label %157, !dbg !5338

; <label>:155:                                    ; preds = %152, %149
  %156 = load i32, i32* %2, align 4, !dbg !5339, !tbaa !979
  call void @ldbMaxlen(i8** nonnull %23, i32 %156) #9, !dbg !5341
  call void @ldbSendLogs() #9, !dbg !5342
  br label %271, !dbg !5343

; <label>:157:                                    ; preds = %152
  %158 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i64 0, i64 0)) #11, !dbg !5344
  %159 = icmp eq i32 %158, 0, !dbg !5344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5345
  br i1 %159, label %163, label %160, !dbg !5345

; <label>:160:                                    ; preds = %157
  %161 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.238, i64 0, i64 0)) #11, !dbg !5346
  %162 = icmp eq i32 %161, 0, !dbg !5346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5347
  br i1 %162, label %163, label %165, !dbg !5347

; <label>:163:                                    ; preds = %160, %157
  %164 = load i32, i32* %2, align 4, !dbg !5348, !tbaa !979
  call void @ldbBreak(i8** nonnull %23, i32 %164) #9, !dbg !5350
  call void @ldbSendLogs() #9, !dbg !5351
  br label %271, !dbg !5352

; <label>:165:                                    ; preds = %160
  %166 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.239, i64 0, i64 0)) #11, !dbg !5353
  %167 = icmp eq i32 %166, 0, !dbg !5353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5354
  br i1 %167, label %171, label %168, !dbg !5354

; <label>:168:                                    ; preds = %165
  %169 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.240, i64 0, i64 0)) #11, !dbg !5355
  %170 = icmp eq i32 %169, 0, !dbg !5355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5356
  br i1 %170, label %171, label %173, !dbg !5356

; <label>:171:                                    ; preds = %168, %165
  %172 = load i32, i32* %2, align 4, !dbg !5357, !tbaa !979
  call void @ldbEval(%struct.lua_State* %0, i8** nonnull %23, i32 %172) #9, !dbg !5359
  call void @ldbSendLogs() #9, !dbg !5360
  br label %271, !dbg !5361

; <label>:173:                                    ; preds = %168
  %174 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.241, i64 0, i64 0)) #11, !dbg !5362
  %175 = icmp eq i32 %174, 0, !dbg !5362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5363
  br i1 %175, label %179, label %176, !dbg !5363

; <label>:176:                                    ; preds = %173
  %177 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.242, i64 0, i64 0)) #11, !dbg !5364
  %178 = icmp eq i32 %177, 0, !dbg !5364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5365
  br i1 %178, label %179, label %181, !dbg !5365

; <label>:179:                                    ; preds = %176, %173
  call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.243, i64 0, i64 0)) #8, !dbg !5366
  %180 = call i32 @lua_error(%struct.lua_State* %0) #8, !dbg !5368
  br label %271, !dbg !5369

; <label>:181:                                    ; preds = %176
  %182 = load i32, i32* %2, align 4, !dbg !5370, !tbaa !979
  %183 = icmp sgt i32 %182, 1, !dbg !5371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5372
  br i1 %183, label %184, label %191, !dbg !5372

; <label>:184:                                    ; preds = %181
  %185 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.244, i64 0, i64 0)) #11, !dbg !5373
  %186 = icmp eq i32 %185, 0, !dbg !5373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5374
  br i1 %186, label %190, label %187, !dbg !5374

; <label>:187:                                    ; preds = %184
  %188 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0)) #11, !dbg !5375
  %189 = icmp eq i32 %188, 0, !dbg !5375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5376
  br i1 %189, label %190, label %191, !dbg !5376

; <label>:190:                                    ; preds = %187, %184
  call void @ldbRedis(%struct.lua_State* %0, i8** nonnull %23, i32 %182) #9, !dbg !5377
  call void @ldbSendLogs() #9, !dbg !5379
  br label %271, !dbg !5380

; <label>:191:                                    ; preds = %187, %181
  %192 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.245, i64 0, i64 0)) #11, !dbg !5381
  %193 = icmp eq i32 %192, 0, !dbg !5381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5382
  br i1 %193, label %197, label %194, !dbg !5382

; <label>:194:                                    ; preds = %191
  %195 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.246, i64 0, i64 0)) #11, !dbg !5383
  %196 = icmp eq i32 %195, 0, !dbg !5383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5384
  br i1 %196, label %197, label %204, !dbg !5384

; <label>:197:                                    ; preds = %194, %191
  %198 = icmp eq i32 %182, 2, !dbg !5385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5388
  br i1 %198, label %199, label %202, !dbg !5388

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8*, i8** %23, i64 1, !dbg !5389
  %201 = load i8*, i8** %200, align 8, !dbg !5389, !tbaa !1003
  call void @ldbPrint(%struct.lua_State* %0, i8* %201) #9, !dbg !5390
  br label %203, !dbg !5390

; <label>:202:                                    ; preds = %197
  call void @ldbPrintAll(%struct.lua_State* %0) #9, !dbg !5391
  br label %203

; <label>:203:                                    ; preds = %202, %199
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @ldbSendLogs() #9, !dbg !5392
  br label %271, !dbg !5393

; <label>:204:                                    ; preds = %194
  %205 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.247, i64 0, i64 0)) #11, !dbg !5394
  %206 = icmp eq i32 %205, 0, !dbg !5394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5395
  br i1 %206, label %210, label %207, !dbg !5395

; <label>:207:                                    ; preds = %204
  %208 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.248, i64 0, i64 0)) #11, !dbg !5396
  %209 = icmp eq i32 %208, 0, !dbg !5396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5397
  br i1 %209, label %210, label %247, !dbg !5397

; <label>:210:                                    ; preds = %207, %204
  %211 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !5398, !tbaa !1740
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5401
  br i1 %183, label %212, label %225, !dbg !5401

; <label>:212:                                    ; preds = %210
  %213 = getelementptr inbounds i8*, i8** %23, i64 1, !dbg !5402
  %214 = load i8*, i8** %213, align 8, !dbg !5402, !tbaa !1003
  %215 = call i32 @atoi(i8* %214) #8, !dbg !5403
  %216 = icmp sgt i32 %215, 0, !dbg !5405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5407
  br i1 %216, label %217, label %218, !dbg !5407

; <label>:217:                                    ; preds = %212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5408
  br label %218, !dbg !5408

; <label>:218:                                    ; preds = %212, %217
  %219 = phi i32 [ %215, %217 ], [ %211, %212 ], !dbg !5409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5410
  %220 = icmp sgt i32 %182, 2, !dbg !5411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5413
  br i1 %220, label %221, label %228, !dbg !5413

; <label>:221:                                    ; preds = %218
  %222 = getelementptr inbounds i8*, i8** %23, i64 2, !dbg !5414
  %223 = load i8*, i8** %222, align 8, !dbg !5414, !tbaa !1003
  %224 = call i32 @atoi(i8* %223) #8, !dbg !5415
  br label %225, !dbg !5416

; <label>:225:                                    ; preds = %210, %221
  %226 = phi i32 [ %219, %221 ], [ %211, %210 ]
  %227 = phi i32 [ %224, %221 ], [ 5, %210 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5417
  br label %228, !dbg !5418

; <label>:228:                                    ; preds = %225, %218
  %229 = phi i32 [ %219, %218 ], [ %226, %225 ]
  %230 = phi i32 [ 5, %218 ], [ %227, %225 ], !dbg !5409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5418
  %231 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !5423, !tbaa !2094
  %232 = icmp slt i32 %231, 1, !dbg !5424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5425
  br i1 %232, label %246, label %233, !dbg !5425

; <label>:233:                                    ; preds = %228
  %234 = icmp eq i32 %229, 0
  br label %235, !dbg !5425

; <label>:235:                                    ; preds = %242, %233
  %236 = phi i32 [ 1, %233 ], [ %243, %242 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5426
  br i1 %234, label %241, label %237, !dbg !5426

; <label>:237:                                    ; preds = %235
  %238 = sub nsw i32 %229, %236, !dbg !5427
  %239 = call i32 @abs(i32 %238) #8, !dbg !5428
  %240 = icmp sgt i32 %239, %230, !dbg !5429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5430
  br i1 %240, label %242, label %241, !dbg !5430

; <label>:241:                                    ; preds = %237, %235
  call void @ldbLogSourceLine(i32 %236) #8, !dbg !5431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5432
  br label %242, !dbg !5432

; <label>:242:                                    ; preds = %241, %237
  %243 = add nuw nsw i32 %236, 1, !dbg !5433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5434
  %244 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !5423, !tbaa !2094
  %245 = icmp slt i32 %236, %244, !dbg !5424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5425
  br i1 %245, label %235, label %246, !dbg !5425, !llvm.loop !4031

; <label>:246:                                    ; preds = %242, %228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5435
  call void @ldbSendLogs() #9, !dbg !5436
  br label %271, !dbg !5437

; <label>:247:                                    ; preds = %207
  %248 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.249, i64 0, i64 0)) #11, !dbg !5438
  %249 = icmp eq i32 %248, 0, !dbg !5438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5440
  br i1 %249, label %253, label %250, !dbg !5440

; <label>:250:                                    ; preds = %247
  %251 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.250, i64 0, i64 0)) #11, !dbg !5441
  %252 = icmp eq i32 %251, 0, !dbg !5441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5442
  br i1 %252, label %253, label %267, !dbg !5442

; <label>:253:                                    ; preds = %250, %247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5448
  %254 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !5449, !tbaa !2094
  %255 = icmp slt i32 %254, 1, !dbg !5450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5451
  br i1 %255, label %266, label %256, !dbg !5451

; <label>:256:                                    ; preds = %253, %262
  %257 = phi i32 [ %263, %262 ], [ 1, %253 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5452
  %258 = sub nsw i32 1, %257, !dbg !5453
  %259 = call i32 @abs(i32 %258) #8, !dbg !5454
  %260 = icmp sgt i32 %259, 1000000, !dbg !5455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5456
  br i1 %260, label %262, label %261, !dbg !5456

; <label>:261:                                    ; preds = %256
  call void @ldbLogSourceLine(i32 %257) #8, !dbg !5457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5458
  br label %262, !dbg !5458

; <label>:262:                                    ; preds = %261, %256
  %263 = add nuw nsw i32 %257, 1, !dbg !5459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5460
  %264 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !5449, !tbaa !2094
  %265 = icmp slt i32 %257, %264, !dbg !5450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5451
  br i1 %265, label %256, label %266, !dbg !5451, !llvm.loop !4031

; <label>:266:                                    ; preds = %262, %253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5461
  call void @ldbSendLogs() #9, !dbg !5462
  br label %271, !dbg !5463

; <label>:267:                                    ; preds = %250
  %268 = call i8* @sdsnew(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.251, i64 0, i64 0)) #8, !dbg !5464
  %269 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5468, !tbaa !787
  %270 = call %struct.list* @listAddNodeTail(%struct.list* %269, i8* %268) #8, !dbg !5469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5470
  call void @ldbSendLogs() #9, !dbg !5471
  br label %271

; <label>:271:                                    ; preds = %148, %163, %179, %203, %266, %267, %246, %190, %171, %155, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %272 = load i32, i32* %2, align 4, !dbg !5472, !tbaa !979
  call void @sdsfreesplitres(i8** nonnull %23, i32 %272) #8, !dbg !5473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5097
  br label %6, !dbg !5097, !llvm.loop !5474

; <label>:273:                                    ; preds = %139, %136, %135
  %274 = load i32, i32* %2, align 4, !dbg !5476, !tbaa !979
  call void @sdsfreesplitres(i8** nonnull %23, i32 %274) #8, !dbg !5477
  br label %275, !dbg !5478

; <label>:275:                                    ; preds = %14, %273
  %276 = phi i32 [ 0, %273 ], [ -1, %14 ], !dbg !5479
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #7, !dbg !5480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5480
  ret i32 %276, !dbg !5480
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
!480 = !DILocation(line: 99, column: 10, scope: !481)
!481 = distinct !DILexicalBlock(scope: !442, file: !3, line: 99, column: 5)
!482 = !DILocation(line: 99, column: 5, scope: !481)
!483 = !DILocation(line: 100, column: 30, scope: !484)
!484 = distinct !DILexicalBlock(scope: !485, file: !3, line: 99, column: 30)
!485 = distinct !DILexicalBlock(scope: !481, file: !3, line: 99, column: 5)
!486 = !{!487, !487, i64 0}
!487 = !{!"omnipotent char", !488, i64 0}
!488 = !{!"Simple C/C++ TBAA"}
!489 = !DILocation(line: 100, column: 43, scope: !484)
!490 = !DILocation(line: 100, column: 23, scope: !484)
!491 = !DILocation(line: 100, column: 17, scope: !484)
!492 = !DILocation(line: 100, column: 9, scope: !484)
!493 = !DILocation(line: 100, column: 21, scope: !484)
!494 = !DILocation(line: 101, column: 38, scope: !484)
!495 = !DILocation(line: 101, column: 25, scope: !484)
!496 = !DILocation(line: 101, column: 19, scope: !484)
!497 = !DILocation(line: 101, column: 9, scope: !484)
!498 = !DILocation(line: 101, column: 23, scope: !484)
!499 = !DILocation(line: 99, column: 26, scope: !485)
!500 = !DILocation(line: 99, column: 5, scope: !485)
!501 = !DILocation(line: 99, column: 19, scope: !485)
!502 = distinct !{!502, !482, !503}
!503 = !DILocation(line: 102, column: 5, scope: !481)
!504 = !DILocation(line: 103, column: 5, scope: !442)
!505 = !DILocation(line: 103, column: 16, scope: !442)
!506 = !DILocation(line: 104, column: 1, scope: !442)
!507 = distinct !DISubprogram(name: "redisProtocolToLuaType", scope: !3, file: !3, line: 127, type: !508, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !510)
!508 = !DISubroutineType(types: !509)
!509 = !{!11, !74, !11}
!510 = !{!511, !512, !513}
!511 = !DILocalVariable(name: "lua", arg: 1, scope: !507, file: !3, line: 127, type: !74)
!512 = !DILocalVariable(name: "reply", arg: 2, scope: !507, file: !3, line: 127, type: !11)
!513 = !DILocalVariable(name: "p", scope: !507, file: !3, line: 128, type: !11)
!514 = !DILocation(line: 127, column: 41, scope: !507)
!515 = !DILocation(line: 127, column: 52, scope: !507)
!516 = !DILocation(line: 128, column: 11, scope: !507)
!517 = !DILocation(line: 130, column: 12, scope: !507)
!518 = !DILocation(line: 130, column: 5, scope: !507)
!519 = !DILocalVariable(name: "lua", arg: 1, scope: !520, file: !3, line: 140, type: !74)
!520 = distinct !DISubprogram(name: "redisProtocolToLuaType_Int", scope: !3, file: !3, line: 140, type: !508, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !521)
!521 = !{!519, !522, !523, !524}
!522 = !DILocalVariable(name: "reply", arg: 2, scope: !520, file: !3, line: 140, type: !11)
!523 = !DILocalVariable(name: "p", scope: !520, file: !3, line: 141, type: !11)
!524 = !DILocalVariable(name: "value", scope: !520, file: !3, line: 142, type: !13)
!525 = !DILocation(line: 140, column: 45, scope: !520, inlinedAt: !526)
!526 = distinct !DILocation(line: 131, column: 19, scope: !527)
!527 = distinct !DILexicalBlock(scope: !507, file: !3, line: 130, column: 16)
!528 = !DILocation(line: 140, column: 56, scope: !520, inlinedAt: !526)
!529 = !DILocation(line: 141, column: 27, scope: !520, inlinedAt: !526)
!530 = !DILocation(line: 141, column: 15, scope: !520, inlinedAt: !526)
!531 = !DILocation(line: 141, column: 11, scope: !520, inlinedAt: !526)
!532 = !DILocation(line: 142, column: 5, scope: !520, inlinedAt: !526)
!533 = !DILocation(line: 144, column: 24, scope: !520, inlinedAt: !526)
!534 = !DILocation(line: 144, column: 30, scope: !520, inlinedAt: !526)
!535 = !DILocation(line: 142, column: 15, scope: !520, inlinedAt: !526)
!536 = !DILocation(line: 144, column: 5, scope: !520, inlinedAt: !526)
!537 = !DILocation(line: 145, column: 36, scope: !520, inlinedAt: !526)
!538 = !{!539, !539, i64 0}
!539 = !{!"long long", !487, i64 0}
!540 = !DILocation(line: 145, column: 24, scope: !520, inlinedAt: !526)
!541 = !DILocation(line: 145, column: 5, scope: !520, inlinedAt: !526)
!542 = !DILocation(line: 146, column: 13, scope: !520, inlinedAt: !526)
!543 = !DILocation(line: 147, column: 1, scope: !520, inlinedAt: !526)
!544 = !DILocation(line: 146, column: 5, scope: !520, inlinedAt: !526)
!545 = !DILocation(line: 131, column: 58, scope: !527)
!546 = !DILocalVariable(name: "lua", arg: 1, scope: !547, file: !3, line: 149, type: !74)
!547 = distinct !DISubprogram(name: "redisProtocolToLuaType_Bulk", scope: !3, file: !3, line: 149, type: !508, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !548)
!548 = !{!546, !549, !550, !551}
!549 = !DILocalVariable(name: "reply", arg: 2, scope: !547, file: !3, line: 149, type: !11)
!550 = !DILocalVariable(name: "p", scope: !547, file: !3, line: 150, type: !11)
!551 = !DILocalVariable(name: "bulklen", scope: !547, file: !3, line: 151, type: !13)
!552 = !DILocation(line: 149, column: 46, scope: !547, inlinedAt: !553)
!553 = distinct !DILocation(line: 132, column: 19, scope: !527)
!554 = !DILocation(line: 149, column: 57, scope: !547, inlinedAt: !553)
!555 = !DILocation(line: 150, column: 27, scope: !547, inlinedAt: !553)
!556 = !DILocation(line: 150, column: 15, scope: !547, inlinedAt: !553)
!557 = !DILocation(line: 150, column: 11, scope: !547, inlinedAt: !553)
!558 = !DILocation(line: 151, column: 5, scope: !547, inlinedAt: !553)
!559 = !DILocation(line: 153, column: 24, scope: !547, inlinedAt: !553)
!560 = !DILocation(line: 153, column: 30, scope: !547, inlinedAt: !553)
!561 = !DILocation(line: 151, column: 15, scope: !547, inlinedAt: !553)
!562 = !DILocation(line: 153, column: 5, scope: !547, inlinedAt: !553)
!563 = !DILocation(line: 154, column: 9, scope: !564, inlinedAt: !553)
!564 = distinct !DILexicalBlock(scope: !547, file: !3, line: 154, column: 9)
!565 = !DILocation(line: 154, column: 17, scope: !564, inlinedAt: !553)
!566 = !DILocation(line: 154, column: 9, scope: !547, inlinedAt: !553)
!567 = !DILocation(line: 155, column: 9, scope: !568, inlinedAt: !553)
!568 = distinct !DILexicalBlock(scope: !564, file: !3, line: 154, column: 24)
!569 = !DILocation(line: 156, column: 9, scope: !568, inlinedAt: !553)
!570 = !DILocation(line: 158, column: 30, scope: !571, inlinedAt: !553)
!571 = distinct !DILexicalBlock(scope: !564, file: !3, line: 157, column: 12)
!572 = !DILocation(line: 158, column: 9, scope: !571, inlinedAt: !553)
!573 = !DILocation(line: 159, column: 20, scope: !571, inlinedAt: !553)
!574 = !DILocation(line: 159, column: 19, scope: !571, inlinedAt: !553)
!575 = !DILocation(line: 159, column: 9, scope: !571, inlinedAt: !553)
!576 = !DILocation(line: 0, scope: !527)
!577 = !DILocation(line: 0, scope: !571, inlinedAt: !553)
!578 = !DILocation(line: 161, column: 1, scope: !547, inlinedAt: !553)
!579 = !DILocation(line: 132, column: 59, scope: !527)
!580 = !DILocalVariable(name: "lua", arg: 1, scope: !581, file: !3, line: 163, type: !74)
!581 = distinct !DISubprogram(name: "redisProtocolToLuaType_Status", scope: !3, file: !3, line: 163, type: !508, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !582)
!582 = !{!580, !583, !584}
!583 = !DILocalVariable(name: "reply", arg: 2, scope: !581, file: !3, line: 163, type: !11)
!584 = !DILocalVariable(name: "p", scope: !581, file: !3, line: 164, type: !11)
!585 = !DILocation(line: 163, column: 48, scope: !581, inlinedAt: !586)
!586 = distinct !DILocation(line: 133, column: 19, scope: !527)
!587 = !DILocation(line: 163, column: 59, scope: !581, inlinedAt: !586)
!588 = !DILocation(line: 164, column: 27, scope: !581, inlinedAt: !586)
!589 = !DILocation(line: 164, column: 15, scope: !581, inlinedAt: !586)
!590 = !DILocation(line: 164, column: 11, scope: !581, inlinedAt: !586)
!591 = !DILocation(line: 166, column: 5, scope: !581, inlinedAt: !586)
!592 = !DILocation(line: 167, column: 5, scope: !581, inlinedAt: !586)
!593 = !DILocation(line: 168, column: 34, scope: !581, inlinedAt: !586)
!594 = !DILocation(line: 168, column: 40, scope: !581, inlinedAt: !586)
!595 = !DILocation(line: 168, column: 5, scope: !581, inlinedAt: !586)
!596 = !DILocation(line: 169, column: 5, scope: !581, inlinedAt: !586)
!597 = !DILocation(line: 170, column: 13, scope: !581, inlinedAt: !586)
!598 = !DILocation(line: 170, column: 5, scope: !581, inlinedAt: !586)
!599 = !DILocation(line: 133, column: 61, scope: !527)
!600 = !DILocalVariable(name: "lua", arg: 1, scope: !601, file: !3, line: 173, type: !74)
!601 = distinct !DISubprogram(name: "redisProtocolToLuaType_Error", scope: !3, file: !3, line: 173, type: !508, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !602)
!602 = !{!600, !603, !604}
!603 = !DILocalVariable(name: "reply", arg: 2, scope: !601, file: !3, line: 173, type: !11)
!604 = !DILocalVariable(name: "p", scope: !601, file: !3, line: 174, type: !11)
!605 = !DILocation(line: 173, column: 47, scope: !601, inlinedAt: !606)
!606 = distinct !DILocation(line: 134, column: 19, scope: !527)
!607 = !DILocation(line: 173, column: 58, scope: !601, inlinedAt: !606)
!608 = !DILocation(line: 174, column: 27, scope: !601, inlinedAt: !606)
!609 = !DILocation(line: 174, column: 15, scope: !601, inlinedAt: !606)
!610 = !DILocation(line: 174, column: 11, scope: !601, inlinedAt: !606)
!611 = !DILocation(line: 176, column: 5, scope: !601, inlinedAt: !606)
!612 = !DILocation(line: 177, column: 5, scope: !601, inlinedAt: !606)
!613 = !DILocation(line: 178, column: 34, scope: !601, inlinedAt: !606)
!614 = !DILocation(line: 178, column: 40, scope: !601, inlinedAt: !606)
!615 = !DILocation(line: 178, column: 5, scope: !601, inlinedAt: !606)
!616 = !DILocation(line: 179, column: 5, scope: !601, inlinedAt: !606)
!617 = !DILocation(line: 180, column: 13, scope: !601, inlinedAt: !606)
!618 = !DILocation(line: 180, column: 5, scope: !601, inlinedAt: !606)
!619 = !DILocation(line: 134, column: 60, scope: !527)
!620 = !DILocation(line: 135, column: 19, scope: !527)
!621 = !DILocation(line: 135, column: 64, scope: !527)
!622 = !DILocation(line: 137, column: 5, scope: !507)
!623 = !DILocation(line: 140, column: 45, scope: !520)
!624 = !DILocation(line: 140, column: 56, scope: !520)
!625 = !DILocation(line: 141, column: 27, scope: !520)
!626 = !DILocation(line: 141, column: 15, scope: !520)
!627 = !DILocation(line: 141, column: 11, scope: !520)
!628 = !DILocation(line: 142, column: 5, scope: !520)
!629 = !DILocation(line: 144, column: 24, scope: !520)
!630 = !DILocation(line: 144, column: 30, scope: !520)
!631 = !DILocation(line: 142, column: 15, scope: !520)
!632 = !DILocation(line: 144, column: 5, scope: !520)
!633 = !DILocation(line: 145, column: 36, scope: !520)
!634 = !DILocation(line: 145, column: 24, scope: !520)
!635 = !DILocation(line: 145, column: 5, scope: !520)
!636 = !DILocation(line: 146, column: 13, scope: !520)
!637 = !DILocation(line: 147, column: 1, scope: !520)
!638 = !DILocation(line: 146, column: 5, scope: !520)
!639 = !DILocation(line: 149, column: 46, scope: !547)
!640 = !DILocation(line: 149, column: 57, scope: !547)
!641 = !DILocation(line: 150, column: 27, scope: !547)
!642 = !DILocation(line: 150, column: 15, scope: !547)
!643 = !DILocation(line: 150, column: 11, scope: !547)
!644 = !DILocation(line: 151, column: 5, scope: !547)
!645 = !DILocation(line: 153, column: 24, scope: !547)
!646 = !DILocation(line: 153, column: 30, scope: !547)
!647 = !DILocation(line: 151, column: 15, scope: !547)
!648 = !DILocation(line: 153, column: 5, scope: !547)
!649 = !DILocation(line: 154, column: 9, scope: !564)
!650 = !DILocation(line: 154, column: 17, scope: !564)
!651 = !DILocation(line: 154, column: 9, scope: !547)
!652 = !DILocation(line: 155, column: 9, scope: !568)
!653 = !DILocation(line: 156, column: 9, scope: !568)
!654 = !DILocation(line: 158, column: 30, scope: !571)
!655 = !DILocation(line: 158, column: 9, scope: !571)
!656 = !DILocation(line: 159, column: 20, scope: !571)
!657 = !DILocation(line: 159, column: 19, scope: !571)
!658 = !DILocation(line: 159, column: 9, scope: !571)
!659 = !DILocation(line: 0, scope: !568)
!660 = !DILocation(line: 0, scope: !571)
!661 = !DILocation(line: 161, column: 1, scope: !547)
!662 = !DILocation(line: 163, column: 48, scope: !581)
!663 = !DILocation(line: 163, column: 59, scope: !581)
!664 = !DILocation(line: 164, column: 27, scope: !581)
!665 = !DILocation(line: 164, column: 15, scope: !581)
!666 = !DILocation(line: 164, column: 11, scope: !581)
!667 = !DILocation(line: 166, column: 5, scope: !581)
!668 = !DILocation(line: 167, column: 5, scope: !581)
!669 = !DILocation(line: 168, column: 34, scope: !581)
!670 = !DILocation(line: 168, column: 40, scope: !581)
!671 = !DILocation(line: 168, column: 5, scope: !581)
!672 = !DILocation(line: 169, column: 5, scope: !581)
!673 = !DILocation(line: 170, column: 13, scope: !581)
!674 = !DILocation(line: 170, column: 5, scope: !581)
!675 = !DILocation(line: 173, column: 47, scope: !601)
!676 = !DILocation(line: 173, column: 58, scope: !601)
!677 = !DILocation(line: 174, column: 27, scope: !601)
!678 = !DILocation(line: 174, column: 15, scope: !601)
!679 = !DILocation(line: 174, column: 11, scope: !601)
!680 = !DILocation(line: 176, column: 5, scope: !601)
!681 = !DILocation(line: 177, column: 5, scope: !601)
!682 = !DILocation(line: 178, column: 34, scope: !601)
!683 = !DILocation(line: 178, column: 40, scope: !601)
!684 = !DILocation(line: 178, column: 5, scope: !601)
!685 = !DILocation(line: 179, column: 5, scope: !601)
!686 = !DILocation(line: 180, column: 13, scope: !601)
!687 = !DILocation(line: 180, column: 5, scope: !601)
!688 = distinct !DISubprogram(name: "redisProtocolToLuaType_MultiBulk", scope: !3, file: !3, line: 183, type: !508, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !689)
!689 = !{!690, !691, !692, !693, !694}
!690 = !DILocalVariable(name: "lua", arg: 1, scope: !688, file: !3, line: 183, type: !74)
!691 = !DILocalVariable(name: "reply", arg: 2, scope: !688, file: !3, line: 183, type: !11)
!692 = !DILocalVariable(name: "p", scope: !688, file: !3, line: 184, type: !11)
!693 = !DILocalVariable(name: "mbulklen", scope: !688, file: !3, line: 185, type: !13)
!694 = !DILocalVariable(name: "j", scope: !688, file: !3, line: 186, type: !15)
!695 = !DILocation(line: 183, column: 51, scope: !688)
!696 = !DILocation(line: 183, column: 62, scope: !688)
!697 = !DILocation(line: 184, column: 27, scope: !688)
!698 = !DILocation(line: 184, column: 15, scope: !688)
!699 = !DILocation(line: 184, column: 11, scope: !688)
!700 = !DILocation(line: 185, column: 5, scope: !688)
!701 = !DILocation(line: 186, column: 9, scope: !688)
!702 = !DILocation(line: 188, column: 24, scope: !688)
!703 = !DILocation(line: 188, column: 30, scope: !688)
!704 = !DILocation(line: 185, column: 15, scope: !688)
!705 = !DILocation(line: 188, column: 5, scope: !688)
!706 = !DILocation(line: 189, column: 7, scope: !688)
!707 = !DILocation(line: 190, column: 9, scope: !708)
!708 = distinct !DILexicalBlock(scope: !688, file: !3, line: 190, column: 9)
!709 = !DILocation(line: 190, column: 18, scope: !708)
!710 = !DILocation(line: 190, column: 9, scope: !688)
!711 = !DILocation(line: 191, column: 9, scope: !712)
!712 = distinct !DILexicalBlock(scope: !708, file: !3, line: 190, column: 25)
!713 = !DILocation(line: 192, column: 9, scope: !712)
!714 = !DILocation(line: 194, column: 5, scope: !688)
!715 = !DILocation(line: 195, column: 10, scope: !716)
!716 = distinct !DILexicalBlock(scope: !688, file: !3, line: 195, column: 5)
!717 = !DILocation(line: 195, column: 21, scope: !718)
!718 = distinct !DILexicalBlock(scope: !716, file: !3, line: 195, column: 5)
!719 = !DILocation(line: 195, column: 19, scope: !718)
!720 = !DILocation(line: 195, column: 5, scope: !716)
!721 = !DILocation(line: 196, column: 29, scope: !722)
!722 = distinct !DILexicalBlock(scope: !718, file: !3, line: 195, column: 36)
!723 = !DILocation(line: 196, column: 28, scope: !722)
!724 = !DILocation(line: 196, column: 9, scope: !722)
!725 = !DILocation(line: 197, column: 13, scope: !722)
!726 = !DILocation(line: 198, column: 9, scope: !722)
!727 = !DILocation(line: 195, column: 5, scope: !718)
!728 = distinct !{!728, !720, !729}
!729 = !DILocation(line: 199, column: 5, scope: !716)
!730 = !DILocation(line: 0, scope: !688)
!731 = !DILocation(line: 0, scope: !712)
!732 = !DILocation(line: 201, column: 1, scope: !688)
!733 = distinct !DISubprogram(name: "luaPushError", scope: !3, file: !3, line: 208, type: !734, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !736)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !74, !11}
!736 = !{!737, !738, !739, !759}
!737 = !DILocalVariable(name: "lua", arg: 1, scope: !733, file: !3, line: 208, type: !74)
!738 = !DILocalVariable(name: "error", arg: 2, scope: !733, file: !3, line: 208, type: !11)
!739 = !DILocalVariable(name: "dbg", scope: !733, file: !3, line: 209, type: !740)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !9, line: 326, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !9, line: 346, size: 960, elements: !742)
!742 = !{!743, !744, !747, !748, !749, !750, !751, !752, !753, !754, !758}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !741, file: !9, line: 347, baseType: !15, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !741, file: !9, line: 348, baseType: !745, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !741, file: !9, line: 349, baseType: !745, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !741, file: !9, line: 350, baseType: !745, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !741, file: !9, line: 351, baseType: !745, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !741, file: !9, line: 352, baseType: !15, size: 32, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !741, file: !9, line: 353, baseType: !15, size: 32, offset: 352)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !741, file: !9, line: 354, baseType: !15, size: 32, offset: 384)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !741, file: !9, line: 355, baseType: !15, size: 32, offset: 416)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !741, file: !9, line: 356, baseType: !755, size: 480, offset: 448)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 480, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 60)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !741, file: !9, line: 358, baseType: !15, size: 32, offset: 928)
!759 = !DILocalVariable(name: "msg", scope: !760, file: !3, line: 222, type: !209)
!760 = distinct !DILexicalBlock(scope: !761, file: !3, line: 221, column: 69)
!761 = distinct !DILexicalBlock(scope: !733, file: !3, line: 221, column: 8)
!762 = !DILocation(line: 208, column: 30, scope: !733)
!763 = !DILocation(line: 208, column: 41, scope: !733)
!764 = !DILocation(line: 209, column: 5, scope: !733)
!765 = !DILocation(line: 213, column: 13, scope: !766)
!766 = distinct !DILexicalBlock(scope: !733, file: !3, line: 213, column: 9)
!767 = !{!768, !769, i64 4}
!768 = !{!"ldbState", !769, i64 0, !769, i64 4, !769, i64 8, !770, i64 16, !770, i64 24, !770, i64 32, !487, i64 40, !769, i64 296, !769, i64 300, !769, i64 304, !770, i64 312, !769, i64 320, !769, i64 324, !770, i64 328, !771, i64 336, !769, i64 344}
!769 = !{!"int", !487, i64 0}
!770 = !{!"any pointer", !487, i64 0}
!771 = !{!"long", !487, i64 0}
!772 = !DILocation(line: 213, column: 9, scope: !766)
!773 = !DILocation(line: 213, column: 27, scope: !766)
!774 = !DILocation(line: 213, column: 23, scope: !766)
!775 = !DILocation(line: 213, column: 20, scope: !766)
!776 = !DILocation(line: 214, column: 29, scope: !777)
!777 = distinct !DILexicalBlock(scope: !766, file: !3, line: 213, column: 33)
!778 = !DILocation(line: 214, column: 16, scope: !777)
!779 = !DILocalVariable(name: "entry", arg: 1, scope: !780, file: !3, line: 1602, type: !209)
!780 = distinct !DISubprogram(name: "ldbLog", scope: !3, file: !3, line: 1602, type: !781, isLocal: false, isDefinition: true, scopeLine: 1602, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !783)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !209}
!783 = !{!779}
!784 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !785)
!785 = distinct !DILocation(line: 214, column: 9, scope: !777)
!786 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !785)
!787 = !{!768, !770, i64 16}
!788 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !785)
!789 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !785)
!790 = !DILocation(line: 215, column: 5, scope: !777)
!791 = !DILocation(line: 217, column: 5, scope: !733)
!792 = !DILocation(line: 218, column: 5, scope: !733)
!793 = !DILocation(line: 209, column: 15, scope: !733)
!794 = !DILocation(line: 221, column: 8, scope: !761)
!795 = !DILocation(line: 221, column: 35, scope: !761)
!796 = !DILocation(line: 221, column: 38, scope: !761)
!797 = !DILocation(line: 221, column: 8, scope: !733)
!798 = !DILocation(line: 222, column: 32, scope: !760)
!799 = !DILocation(line: 223, column: 17, scope: !760)
!800 = !{!801, !770, i64 32}
!801 = !{!"lua_Debug", !769, i64 0, !770, i64 8, !770, i64 16, !770, i64 24, !770, i64 32, !769, i64 40, !769, i64 44, !769, i64 48, !769, i64 52, !487, i64 56, !769, i64 116}
!802 = !DILocation(line: 223, column: 29, scope: !760)
!803 = !{!801, !769, i64 40}
!804 = !DILocation(line: 222, column: 19, scope: !760)
!805 = !DILocation(line: 222, column: 13, scope: !760)
!806 = !DILocation(line: 224, column: 9, scope: !760)
!807 = !DILocation(line: 225, column: 9, scope: !760)
!808 = !DILocation(line: 226, column: 5, scope: !760)
!809 = !DILocation(line: 227, column: 9, scope: !810)
!810 = distinct !DILexicalBlock(scope: !761, file: !3, line: 226, column: 12)
!811 = !DILocation(line: 229, column: 5, scope: !733)
!812 = !DILocation(line: 230, column: 1, scope: !733)
!813 = !DILocation(line: 1602, column: 17, scope: !780)
!814 = !DILocation(line: 1603, column: 25, scope: !780)
!815 = !DILocation(line: 1603, column: 5, scope: !780)
!816 = !DILocation(line: 1604, column: 1, scope: !780)
!817 = distinct !DISubprogram(name: "luaRaiseError", scope: !3, file: !3, line: 236, type: !818, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{!15, !74}
!820 = !{!821}
!821 = !DILocalVariable(name: "lua", arg: 1, scope: !817, file: !3, line: 236, type: !74)
!822 = !DILocation(line: 236, column: 30, scope: !817)
!823 = !DILocation(line: 237, column: 5, scope: !817)
!824 = !DILocation(line: 238, column: 5, scope: !817)
!825 = !DILocation(line: 239, column: 12, scope: !817)
!826 = !DILocation(line: 239, column: 5, scope: !817)
!827 = distinct !DISubprogram(name: "luaSortArray", scope: !3, file: !3, line: 248, type: !828, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !830)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !74}
!830 = !{!831}
!831 = !DILocalVariable(name: "lua", arg: 1, scope: !827, file: !3, line: 248, type: !74)
!832 = !DILocation(line: 248, column: 30, scope: !827)
!833 = !DILocation(line: 250, column: 5, scope: !827)
!834 = !DILocation(line: 251, column: 5, scope: !827)
!835 = !DILocation(line: 252, column: 5, scope: !827)
!836 = !DILocation(line: 253, column: 5, scope: !827)
!837 = !DILocation(line: 254, column: 9, scope: !838)
!838 = distinct !DILexicalBlock(scope: !827, file: !3, line: 254, column: 9)
!839 = !DILocation(line: 254, column: 9, scope: !827)
!840 = !DILocation(line: 261, column: 9, scope: !841)
!841 = distinct !DILexicalBlock(scope: !838, file: !3, line: 254, column: 31)
!842 = !DILocation(line: 262, column: 9, scope: !841)
!843 = !DILocation(line: 263, column: 9, scope: !841)
!844 = !DILocation(line: 264, column: 9, scope: !841)
!845 = !DILocation(line: 265, column: 9, scope: !841)
!846 = !DILocation(line: 267, column: 9, scope: !841)
!847 = !DILocation(line: 268, column: 5, scope: !841)
!848 = !DILocation(line: 270, column: 5, scope: !827)
!849 = !DILocation(line: 271, column: 1, scope: !827)
!850 = distinct !DISubprogram(name: "luaReplyToRedisReply", scope: !3, file: !3, line: 277, type: !851, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !853)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !93, !74}
!853 = !{!854, !855, !856, !857, !861, !864, !866, !867}
!854 = !DILocalVariable(name: "c", arg: 1, scope: !850, file: !3, line: 277, type: !93)
!855 = !DILocalVariable(name: "lua", arg: 2, scope: !850, file: !3, line: 277, type: !74)
!856 = !DILocalVariable(name: "t", scope: !850, file: !3, line: 278, type: !15)
!857 = !DILocalVariable(name: "err", scope: !858, file: !3, line: 299, type: !209)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 298, column: 31)
!859 = distinct !DILexicalBlock(scope: !860, file: !3, line: 298, column: 13)
!860 = distinct !DILexicalBlock(scope: !850, file: !3, line: 280, column: 15)
!861 = !DILocalVariable(name: "ok", scope: !862, file: !3, line: 312, type: !209)
!862 = distinct !DILexicalBlock(scope: !863, file: !3, line: 311, column: 31)
!863 = distinct !DILexicalBlock(scope: !860, file: !3, line: 311, column: 13)
!864 = !DILocalVariable(name: "replylen", scope: !865, file: !3, line: 318, type: !14)
!865 = distinct !DILexicalBlock(scope: !863, file: !3, line: 317, column: 16)
!866 = !DILocalVariable(name: "j", scope: !865, file: !3, line: 319, type: !15)
!867 = !DILocalVariable(name: "mbulklen", scope: !865, file: !3, line: 319, type: !15)
!868 = !DILocation(line: 277, column: 35, scope: !850)
!869 = !DILocation(line: 277, column: 49, scope: !850)
!870 = !DILocation(line: 278, column: 13, scope: !850)
!871 = !DILocation(line: 278, column: 9, scope: !850)
!872 = !DILocation(line: 280, column: 5, scope: !850)
!873 = !DILocation(line: 282, column: 38, scope: !860)
!874 = !DILocation(line: 282, column: 59, scope: !860)
!875 = !DILocation(line: 282, column: 9, scope: !860)
!876 = !DILocation(line: 283, column: 9, scope: !860)
!877 = !DILocation(line: 285, column: 20, scope: !860)
!878 = !DILocation(line: 285, column: 51, scope: !860)
!879 = !DILocation(line: 285, column: 65, scope: !860)
!880 = !DILocation(line: 285, column: 9, scope: !860)
!881 = !DILocation(line: 286, column: 9, scope: !860)
!882 = !DILocation(line: 288, column: 39, scope: !860)
!883 = !DILocation(line: 288, column: 28, scope: !860)
!884 = !DILocation(line: 288, column: 9, scope: !860)
!885 = !DILocation(line: 289, column: 9, scope: !860)
!886 = !DILocation(line: 295, column: 9, scope: !860)
!887 = !DILocation(line: 296, column: 9, scope: !860)
!888 = !DILocation(line: 297, column: 13, scope: !860)
!889 = !DILocation(line: 298, column: 15, scope: !859)
!890 = !DILocation(line: 298, column: 13, scope: !860)
!891 = !DILocation(line: 299, column: 30, scope: !858)
!892 = !DILocation(line: 299, column: 23, scope: !858)
!893 = !DILocation(line: 299, column: 17, scope: !858)
!894 = !DILocation(line: 300, column: 13, scope: !858)
!895 = !DILocation(line: 301, column: 40, scope: !858)
!896 = !DILocation(line: 301, column: 27, scope: !858)
!897 = !DILocation(line: 301, column: 13, scope: !858)
!898 = !DILocation(line: 302, column: 13, scope: !858)
!899 = !DILocation(line: 303, column: 13, scope: !858)
!900 = !DILocation(line: 307, column: 9, scope: !860)
!901 = !DILocation(line: 308, column: 9, scope: !860)
!902 = !DILocation(line: 309, column: 9, scope: !860)
!903 = !DILocation(line: 310, column: 13, scope: !860)
!904 = !DILocation(line: 311, column: 15, scope: !863)
!905 = !DILocation(line: 311, column: 13, scope: !860)
!906 = !DILocation(line: 312, column: 29, scope: !862)
!907 = !DILocation(line: 312, column: 22, scope: !862)
!908 = !DILocation(line: 312, column: 17, scope: !862)
!909 = !DILocation(line: 313, column: 13, scope: !862)
!910 = !DILocation(line: 314, column: 40, scope: !862)
!911 = !DILocation(line: 314, column: 27, scope: !862)
!912 = !DILocation(line: 314, column: 13, scope: !862)
!913 = !DILocation(line: 315, column: 13, scope: !862)
!914 = !DILocation(line: 316, column: 13, scope: !862)
!915 = !DILocation(line: 317, column: 9, scope: !862)
!916 = !DILocation(line: 318, column: 30, scope: !865)
!917 = !DILocation(line: 318, column: 19, scope: !865)
!918 = !DILocation(line: 319, column: 17, scope: !865)
!919 = !DILocation(line: 319, column: 24, scope: !865)
!920 = !DILocation(line: 321, column: 13, scope: !865)
!921 = !DILocation(line: 322, column: 13, scope: !865)
!922 = !DILocation(line: 323, column: 17, scope: !923)
!923 = distinct !DILexicalBlock(scope: !865, file: !3, line: 322, column: 22)
!924 = !DILocation(line: 324, column: 17, scope: !923)
!925 = !DILocation(line: 325, column: 21, scope: !923)
!926 = !DILocation(line: 326, column: 23, scope: !927)
!927 = distinct !DILexicalBlock(scope: !923, file: !3, line: 326, column: 21)
!928 = !DILocation(line: 326, column: 21, scope: !923)
!929 = !DILocation(line: 327, column: 21, scope: !930)
!930 = distinct !DILexicalBlock(scope: !927, file: !3, line: 326, column: 36)
!931 = !DILocation(line: 333, column: 13, scope: !865)
!932 = !DILocation(line: 323, column: 37, scope: !923)
!933 = !DILocation(line: 330, column: 17, scope: !923)
!934 = !DILocation(line: 331, column: 25, scope: !923)
!935 = !DILocation(line: 323, column: 36, scope: !923)
!936 = distinct !{!936, !921, !937}
!937 = !DILocation(line: 332, column: 13, scope: !865)
!938 = !DILocation(line: 337, column: 27, scope: !860)
!939 = !{!940, !770, i64 80}
!940 = !{!"sharedObjectsStruct", !770, i64 0, !770, i64 8, !770, i64 16, !770, i64 24, !770, i64 32, !770, i64 40, !770, i64 48, !770, i64 56, !770, i64 64, !770, i64 72, !770, i64 80, !770, i64 88, !770, i64 96, !770, i64 104, !770, i64 112, !770, i64 120, !770, i64 128, !770, i64 136, !770, i64 144, !770, i64 152, !770, i64 160, !770, i64 168, !770, i64 176, !770, i64 184, !770, i64 192, !770, i64 200, !770, i64 208, !770, i64 216, !770, i64 224, !770, i64 232, !770, i64 240, !770, i64 248, !770, i64 256, !770, i64 264, !770, i64 272, !770, i64 280, !770, i64 288, !770, i64 296, !770, i64 304, !770, i64 312, !770, i64 320, !770, i64 328, !770, i64 336, !770, i64 344, !770, i64 352, !770, i64 360, !487, i64 368, !487, i64 448, !487, i64 80448, !487, i64 80704, !770, i64 80960, !770, i64 80968}
!941 = !DILocation(line: 337, column: 9, scope: !860)
!942 = !DILocation(line: 338, column: 5, scope: !860)
!943 = !DILocation(line: 339, column: 5, scope: !850)
!944 = !DILocation(line: 340, column: 1, scope: !850)
!945 = !DILocation(line: 348, column: 39, scope: !71)
!946 = !DILocation(line: 348, column: 48, scope: !71)
!947 = !DILocation(line: 349, column: 19, scope: !71)
!948 = !DILocation(line: 349, column: 12, scope: !71)
!949 = !DILocation(line: 351, column: 24, scope: !71)
!950 = !{!951, !770, i64 3000}
!951 = !{!"redisServer", !769, i64 0, !770, i64 8, !770, i64 16, !770, i64 24, !769, i64 32, !769, i64 36, !769, i64 40, !770, i64 48, !770, i64 56, !770, i64 64, !770, i64 72, !769, i64 80, !769, i64 84, !769, i64 88, !769, i64 92, !770, i64 96, !770, i64 104, !769, i64 112, !769, i64 116, !487, i64 120, !769, i64 164, !771, i64 168, !769, i64 176, !770, i64 184, !770, i64 192, !770, i64 200, !487, i64 208, !769, i64 216, !769, i64 220, !487, i64 224, !769, i64 352, !770, i64 360, !769, i64 368, !487, i64 372, !769, i64 436, !769, i64 440, !487, i64 444, !769, i64 508, !770, i64 512, !770, i64 520, !770, i64 528, !770, i64 536, !770, i64 544, !770, i64 552, !770, i64 560, !769, i64 568, !539, i64 576, !487, i64 584, !770, i64 840, !771, i64 848, !769, i64 856, !769, i64 860, !771, i64 864, !771, i64 872, !771, i64 880, !771, i64 888, !770, i64 896, !770, i64 904, !770, i64 912, !770, i64 920, !770, i64 928, !770, i64 936, !770, i64 944, !770, i64 952, !770, i64 960, !770, i64 968, !770, i64 976, !770, i64 984, !770, i64 992, !771, i64 1000, !539, i64 1008, !539, i64 1016, !539, i64 1024, !952, i64 1032, !539, i64 1040, !539, i64 1048, !539, i64 1056, !539, i64 1064, !539, i64 1072, !539, i64 1080, !539, i64 1088, !539, i64 1096, !539, i64 1104, !771, i64 1112, !539, i64 1120, !952, i64 1128, !539, i64 1136, !539, i64 1144, !539, i64 1152, !539, i64 1160, !770, i64 1168, !539, i64 1176, !539, i64 1184, !771, i64 1192, !953, i64 1200, !539, i64 1240, !539, i64 1248, !771, i64 1256, !771, i64 1264, !487, i64 1272, !769, i64 1728, !769, i64 1732, !769, i64 1736, !769, i64 1740, !769, i64 1744, !771, i64 1752, !769, i64 1760, !769, i64 1764, !769, i64 1768, !769, i64 1772, !771, i64 1776, !771, i64 1784, !769, i64 1792, !769, i64 1796, !769, i64 1800, !769, i64 1804, !487, i64 1808, !769, i64 1880, !769, i64 1884, !770, i64 1888, !769, i64 1896, !769, i64 1900, !771, i64 1904, !771, i64 1912, !771, i64 1920, !771, i64 1928, !769, i64 1936, !769, i64 1940, !770, i64 1944, !770, i64 1952, !769, i64 1960, !769, i64 1964, !771, i64 1968, !771, i64 1976, !771, i64 1984, !771, i64 1992, !769, i64 2000, !771, i64 2008, !769, i64 2016, !769, i64 2020, !769, i64 2024, !769, i64 2028, !769, i64 2032, !769, i64 2036, !769, i64 2040, !769, i64 2044, !769, i64 2048, !769, i64 2052, !769, i64 2056, !769, i64 2060, !769, i64 2064, !770, i64 2072, !539, i64 2080, !539, i64 2088, !769, i64 2096, !770, i64 2104, !769, i64 2112, !770, i64 2120, !769, i64 2128, !769, i64 2132, !771, i64 2136, !771, i64 2144, !771, i64 2152, !771, i64 2160, !769, i64 2168, !769, i64 2172, !769, i64 2176, !769, i64 2180, !769, i64 2184, !769, i64 2188, !487, i64 2192, !954, i64 2200, !955, i64 2224, !770, i64 2240, !769, i64 2248, !770, i64 2256, !769, i64 2264, !487, i64 2268, !487, i64 2309, !539, i64 2352, !539, i64 2360, !769, i64 2368, !769, i64 2372, !770, i64 2376, !539, i64 2384, !539, i64 2392, !539, i64 2400, !539, i64 2408, !771, i64 2416, !771, i64 2424, !769, i64 2432, !769, i64 2436, !769, i64 2440, !769, i64 2444, !769, i64 2448, !770, i64 2456, !770, i64 2464, !769, i64 2472, !769, i64 2476, !770, i64 2480, !770, i64 2488, !769, i64 2496, !769, i64 2500, !771, i64 2504, !771, i64 2512, !771, i64 2520, !769, i64 2528, !769, i64 2532, !770, i64 2536, !771, i64 2544, !769, i64 2552, !769, i64 2556, !769, i64 2560, !771, i64 2568, !769, i64 2576, !769, i64 2580, !769, i64 2584, !770, i64 2592, !487, i64 2600, !539, i64 2648, !769, i64 2656, !770, i64 2664, !770, i64 2672, !769, i64 2680, !770, i64 2688, !769, i64 2696, !769, i64 2700, !539, i64 2704, !769, i64 2712, !769, i64 2716, !769, i64 2720, !769, i64 2724, !539, i64 2728, !769, i64 2736, !487, i64 2740, !770, i64 2768, !770, i64 2776, !769, i64 2784, !769, i64 2788, !769, i64 2792, !769, i64 2796, !771, i64 2800, !771, i64 2808, !771, i64 2816, !771, i64 2824, !771, i64 2832, !771, i64 2840, !771, i64 2848, !771, i64 2856, !769, i64 2864, !769, i64 2868, !771, i64 2872, !771, i64 2880, !769, i64 2888, !539, i64 2896, !770, i64 2904, !770, i64 2912, !769, i64 2920, !769, i64 2924, !539, i64 2928, !770, i64 2936, !770, i64 2944, !769, i64 2952, !769, i64 2956, !769, i64 2960, !769, i64 2964, !770, i64 2968, !769, i64 2976, !769, i64 2980, !769, i64 2984, !770, i64 2992, !770, i64 3000, !770, i64 3008, !770, i64 3016, !539, i64 3024, !539, i64 3032, !539, i64 3040, !769, i64 3048, !769, i64 3052, !769, i64 3056, !769, i64 3060, !769, i64 3064, !769, i64 3068, !769, i64 3072, !769, i64 3076, !769, i64 3080, !769, i64 3084, !769, i64 3088, !539, i64 3096, !770, i64 3104, !770, i64 3112, !770, i64 3120, !769, i64 3128, !769, i64 3132, !769, i64 3136, !771, i64 3144, !770, i64 3152, !770, i64 3160, !770, i64 3168}
!952 = !{!"double", !487, i64 0}
!953 = !{!"malloc_stats", !771, i64 0, !771, i64 8, !771, i64 16, !771, i64 24, !771, i64 32}
!954 = !{!"", !769, i64 0, !771, i64 8, !539, i64 16}
!955 = !{!"redisOpArray", !770, i64 0, !769, i64 8}
!956 = !DILocation(line: 351, column: 13, scope: !71)
!957 = !DILocation(line: 362, column: 16, scope: !958)
!958 = distinct !DILexicalBlock(scope: !71, file: !3, line: 362, column: 9)
!959 = !{!951, !769, i64 3060}
!960 = !DILocation(line: 362, column: 9, scope: !958)
!961 = !DILocation(line: 362, column: 34, scope: !958)
!962 = !DILocation(line: 362, column: 45, scope: !958)
!963 = !{!951, !770, i64 3008}
!964 = !DILocation(line: 362, column: 57, scope: !958)
!965 = !{!966, !769, i64 160}
!966 = !{!"client", !771, i64 0, !769, i64 8, !770, i64 16, !770, i64 24, !770, i64 32, !771, i64 40, !770, i64 48, !771, i64 56, !769, i64 64, !770, i64 72, !770, i64 80, !770, i64 88, !769, i64 96, !769, i64 100, !771, i64 104, !770, i64 112, !539, i64 120, !771, i64 128, !771, i64 136, !771, i64 144, !771, i64 152, !769, i64 160, !769, i64 164, !769, i64 168, !769, i64 172, !769, i64 176, !771, i64 184, !771, i64 192, !770, i64 200, !539, i64 208, !539, i64 216, !539, i64 224, !539, i64 232, !539, i64 240, !487, i64 248, !769, i64 292, !487, i64 296, !769, i64 344, !967, i64 352, !769, i64 384, !968, i64 392, !539, i64 480, !770, i64 488, !770, i64 496, !770, i64 504, !770, i64 512, !770, i64 520, !769, i64 528, !487, i64 532}
!967 = !{!"multiState", !770, i64 0, !769, i64 8, !769, i64 12, !769, i64 16, !771, i64 24}
!968 = !{!"blockingState", !539, i64 0, !770, i64 8, !770, i64 16, !771, i64 24, !770, i64 32, !770, i64 40, !539, i64 48, !539, i64 56, !769, i64 64, !769, i64 68, !539, i64 72, !770, i64 80}
!969 = !DILocation(line: 362, column: 63, scope: !958)
!970 = !DILocation(line: 362, column: 9, scope: !71)
!971 = !DILocation(line: 363, column: 12, scope: !972)
!972 = distinct !DILexicalBlock(scope: !958, file: !3, line: 362, column: 80)
!973 = !DILocation(line: 363, column: 18, scope: !972)
!974 = !DILocation(line: 364, column: 5, scope: !972)
!975 = !DILocation(line: 365, column: 12, scope: !976)
!976 = distinct !DILexicalBlock(scope: !958, file: !3, line: 364, column: 12)
!977 = !DILocation(line: 365, column: 18, scope: !976)
!978 = !DILocation(line: 372, column: 9, scope: !324)
!979 = !{!769, !769, i64 0}
!980 = !DILocation(line: 372, column: 9, scope: !71)
!981 = !DILocation(line: 376, column: 9, scope: !323)
!982 = !DILocation(line: 377, column: 9, scope: !323)
!983 = !DILocation(line: 380, column: 10, scope: !71)
!984 = !DILocation(line: 383, column: 14, scope: !985)
!985 = distinct !DILexicalBlock(scope: !71, file: !3, line: 383, column: 9)
!986 = !DILocation(line: 383, column: 9, scope: !71)
!987 = !DILocation(line: 384, column: 9, scope: !988)
!988 = distinct !DILexicalBlock(scope: !985, file: !3, line: 383, column: 20)
!989 = !DILocation(line: 386, column: 14, scope: !988)
!990 = !DILocation(line: 387, column: 16, scope: !988)
!991 = !DILocation(line: 236, column: 30, scope: !817, inlinedAt: !992)
!992 = distinct !DILocation(line: 387, column: 30, scope: !988)
!993 = !DILocation(line: 237, column: 5, scope: !817, inlinedAt: !992)
!994 = !DILocation(line: 238, column: 5, scope: !817, inlinedAt: !992)
!995 = !DILocation(line: 239, column: 12, scope: !817, inlinedAt: !992)
!996 = !DILocation(line: 239, column: 5, scope: !817, inlinedAt: !992)
!997 = !DILocation(line: 391, column: 9, scope: !998)
!998 = distinct !DILexicalBlock(scope: !71, file: !3, line: 391, column: 9)
!999 = !DILocation(line: 391, column: 19, scope: !998)
!1000 = !DILocation(line: 391, column: 9, scope: !71)
!1001 = !DILocation(line: 392, column: 25, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !998, file: !3, line: 391, column: 27)
!1003 = !{!770, !770, i64 0}
!1004 = !DILocation(line: 392, column: 44, scope: !1002)
!1005 = !DILocation(line: 392, column: 43, scope: !1002)
!1006 = !DILocation(line: 392, column: 16, scope: !1002)
!1007 = !DILocation(line: 392, column: 14, scope: !1002)
!1008 = !DILocation(line: 393, column: 19, scope: !1002)
!1009 = !DILocation(line: 394, column: 5, scope: !1002)
!1010 = !DILocation(line: 349, column: 9, scope: !71)
!1011 = !DILocation(line: 396, column: 10, scope: !328)
!1012 = !DILocation(line: 396, column: 19, scope: !327)
!1013 = !DILocation(line: 396, column: 5, scope: !328)
!1014 = !DILocation(line: 398, column: 9, scope: !326)
!1015 = !DILocation(line: 399, column: 9, scope: !326)
!1016 = !DILocation(line: 399, column: 14, scope: !326)
!1017 = !DILocation(line: 401, column: 27, scope: !336)
!1018 = !DILocation(line: 401, column: 13, scope: !336)
!1019 = !DILocation(line: 401, column: 31, scope: !336)
!1020 = !DILocation(line: 401, column: 13, scope: !326)
!1021 = !DILocation(line: 404, column: 30, scope: !335)
!1022 = !DILocation(line: 404, column: 24, scope: !335)
!1023 = !DILocation(line: 406, column: 23, scope: !335)
!1024 = !DILocation(line: 398, column: 16, scope: !326)
!1025 = !DILocation(line: 406, column: 21, scope: !335)
!1026 = !{!771, !771, i64 0}
!1027 = !DILocation(line: 397, column: 15, scope: !326)
!1028 = !DILocation(line: 408, column: 9, scope: !335)
!1029 = !DILocation(line: 409, column: 28, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !336, file: !3, line: 408, column: 16)
!1031 = !DILocation(line: 410, column: 23, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 410, column: 17)
!1033 = !DILocation(line: 410, column: 17, scope: !1030)
!1034 = !DILocation(line: 410, column: 32, scope: !1032)
!1035 = !DILocation(line: 425, column: 5, scope: !327)
!1036 = !DILocation(line: 0, scope: !1030)
!1037 = !DILocation(line: 414, column: 15, scope: !339)
!1038 = !DILocation(line: 414, column: 39, scope: !339)
!1039 = !DILocation(line: 414, column: 42, scope: !339)
!1040 = !DILocation(line: 414, column: 60, scope: !339)
!1041 = !DILocation(line: 415, column: 13, scope: !339)
!1042 = !DILocation(line: 415, column: 38, scope: !339)
!1043 = !DILocation(line: 415, column: 35, scope: !339)
!1044 = !DILocation(line: 414, column: 13, scope: !326)
!1045 = !DILocation(line: 417, column: 40, scope: !338)
!1046 = !{!1047, !770, i64 8}
!1047 = !{!"redisObject", !769, i64 0, !769, i64 0, !769, i64 1, !769, i64 4, !770, i64 8}
!1048 = !DILocation(line: 417, column: 17, scope: !338)
!1049 = !DILocation(line: 418, column: 13, scope: !338)
!1050 = !DILocation(line: 418, column: 21, scope: !338)
!1051 = !DILocation(line: 419, column: 31, scope: !338)
!1052 = !DILocation(line: 420, column: 35, scope: !338)
!1053 = !DILocation(line: 420, column: 13, scope: !338)
!1054 = !DILocation(line: 421, column: 26, scope: !338)
!1055 = !DILocalVariable(name: "s", arg: 1, scope: !1056, file: !26, line: 130, type: !209)
!1056 = distinct !DISubprogram(name: "sdssetlen", scope: !26, file: !26, line: 130, type: !1057, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1061)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{null, !209, !1059}
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1060, line: 58, baseType: !22)
!1060 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!1061 = !{!1055, !1062, !1063, !1064}
!1062 = !DILocalVariable(name: "newlen", arg: 2, scope: !1056, file: !26, line: 130, type: !1059)
!1063 = !DILocalVariable(name: "flags", scope: !1056, file: !26, line: 131, type: !7)
!1064 = !DILocalVariable(name: "fp", scope: !1065, file: !26, line: 135, type: !6)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !26, line: 134, column: 13)
!1066 = distinct !DILexicalBlock(scope: !1056, file: !26, line: 132, column: 33)
!1067 = !DILocation(line: 130, column: 34, scope: !1056, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 421, column: 13, scope: !338)
!1069 = !DILocation(line: 130, column: 44, scope: !1056, inlinedAt: !1068)
!1070 = !DILocation(line: 131, column: 27, scope: !1056, inlinedAt: !1068)
!1071 = !DILocation(line: 131, column: 19, scope: !1056, inlinedAt: !1068)
!1072 = !DILocation(line: 132, column: 5, scope: !1056, inlinedAt: !1068)
!1073 = !DILocation(line: 135, column: 32, scope: !1065, inlinedAt: !1068)
!1074 = !DILocation(line: 136, column: 23, scope: !1065, inlinedAt: !1068)
!1075 = !DILocation(line: 136, column: 21, scope: !1065, inlinedAt: !1068)
!1076 = !DILocation(line: 138, column: 13, scope: !1066, inlinedAt: !1068)
!1077 = !DILocation(line: 140, column: 33, scope: !1066, inlinedAt: !1068)
!1078 = !DILocation(line: 140, column: 13, scope: !1066, inlinedAt: !1068)
!1079 = !DILocation(line: 140, column: 31, scope: !1066, inlinedAt: !1068)
!1080 = !DILocation(line: 141, column: 13, scope: !1066, inlinedAt: !1068)
!1081 = !DILocation(line: 143, column: 34, scope: !1066, inlinedAt: !1068)
!1082 = !DILocation(line: 143, column: 13, scope: !1066, inlinedAt: !1068)
!1083 = !DILocation(line: 143, column: 28, scope: !1066, inlinedAt: !1068)
!1084 = !DILocation(line: 143, column: 32, scope: !1066, inlinedAt: !1068)
!1085 = !{!1086, !1086, i64 0}
!1086 = !{!"short", !487, i64 0}
!1087 = !DILocation(line: 144, column: 13, scope: !1066, inlinedAt: !1068)
!1088 = !DILocation(line: 146, column: 34, scope: !1066, inlinedAt: !1068)
!1089 = !DILocation(line: 146, column: 13, scope: !1066, inlinedAt: !1068)
!1090 = !DILocation(line: 146, column: 28, scope: !1066, inlinedAt: !1068)
!1091 = !DILocation(line: 146, column: 32, scope: !1066, inlinedAt: !1068)
!1092 = !DILocation(line: 147, column: 13, scope: !1066, inlinedAt: !1068)
!1093 = !DILocation(line: 149, column: 13, scope: !1066, inlinedAt: !1068)
!1094 = !DILocation(line: 149, column: 28, scope: !1066, inlinedAt: !1068)
!1095 = !DILocation(line: 149, column: 32, scope: !1066, inlinedAt: !1068)
!1096 = !DILocation(line: 150, column: 13, scope: !1066, inlinedAt: !1068)
!1097 = !DILocation(line: 0, scope: !338)
!1098 = !DILocation(line: 152, column: 1, scope: !1056, inlinedAt: !1068)
!1099 = !DILocation(line: 422, column: 9, scope: !338)
!1100 = !DILocation(line: 423, column: 49, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !339, file: !3, line: 422, column: 16)
!1102 = !DILocation(line: 423, column: 23, scope: !1101)
!1103 = !DILocation(line: 423, column: 13, scope: !1101)
!1104 = !DILocation(line: 423, column: 21, scope: !1101)
!1105 = !DILocation(line: 396, column: 5, scope: !327)
!1106 = distinct !{!1106, !1013, !1107}
!1107 = !DILocation(line: 425, column: 5, scope: !328)
!1108 = !DILocation(line: 430, column: 11, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !71, file: !3, line: 430, column: 9)
!1110 = !DILocation(line: 430, column: 9, scope: !71)
!1111 = !DILocation(line: 432, column: 9, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 430, column: 20)
!1113 = !DILocation(line: 432, column: 18, scope: !1112)
!1114 = !DILocation(line: 0, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 432, column: 24)
!1116 = !DILocation(line: 433, column: 26, scope: !1115)
!1117 = !DILocation(line: 433, column: 13, scope: !1115)
!1118 = distinct !{!1118, !1111, !1119}
!1119 = !DILocation(line: 435, column: 9, scope: !1112)
!1120 = !DILocation(line: 436, column: 9, scope: !1112)
!1121 = !DILocation(line: 438, column: 14, scope: !1112)
!1122 = !DILocation(line: 439, column: 16, scope: !1112)
!1123 = !DILocation(line: 236, column: 30, scope: !817, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 439, column: 30, scope: !1112)
!1125 = !DILocation(line: 237, column: 5, scope: !817, inlinedAt: !1124)
!1126 = !DILocation(line: 238, column: 5, scope: !817, inlinedAt: !1124)
!1127 = !DILocation(line: 239, column: 12, scope: !817, inlinedAt: !1124)
!1128 = !DILocation(line: 239, column: 5, scope: !817, inlinedAt: !1124)
!1129 = !DILocation(line: 443, column: 15, scope: !71)
!1130 = !DILocation(line: 443, column: 8, scope: !71)
!1131 = !DILocation(line: 443, column: 13, scope: !71)
!1132 = !{!966, !770, i64 72}
!1133 = !DILocation(line: 444, column: 8, scope: !71)
!1134 = !DILocation(line: 444, column: 13, scope: !71)
!1135 = !{!966, !769, i64 64}
!1136 = !DILocation(line: 447, column: 5, scope: !71)
!1137 = !DILocation(line: 448, column: 15, scope: !71)
!1138 = !DILocation(line: 448, column: 10, scope: !71)
!1139 = !DILocation(line: 449, column: 15, scope: !71)
!1140 = !DILocation(line: 452, column: 13, scope: !342)
!1141 = !DILocation(line: 452, column: 9, scope: !342)
!1142 = !DILocation(line: 452, column: 27, scope: !342)
!1143 = !DILocation(line: 452, column: 23, scope: !342)
!1144 = !DILocation(line: 452, column: 20, scope: !342)
!1145 = !DILocation(line: 453, column: 22, scope: !341)
!1146 = !DILocation(line: 453, column: 13, scope: !341)
!1147 = !DILocation(line: 454, column: 14, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !341, file: !3, line: 454, column: 9)
!1149 = !DILocation(line: 454, column: 28, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 454, column: 9)
!1151 = !DILocation(line: 454, column: 23, scope: !1150)
!1152 = !DILocation(line: 454, column: 9, scope: !1148)
!1153 = !DILocation(line: 455, column: 17, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 454, column: 39)
!1155 = !DILocation(line: 455, column: 19, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 455, column: 17)
!1157 = distinct !{!1157, !1152, !1158}
!1158 = !DILocation(line: 463, column: 9, scope: !1148)
!1159 = !DILocation(line: 457, column: 30, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 455, column: 26)
!1161 = !DILocation(line: 456, column: 26, scope: !1160)
!1162 = !DILocation(line: 458, column: 17, scope: !1160)
!1163 = !DILocation(line: 460, column: 26, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 459, column: 20)
!1165 = !DILocation(line: 461, column: 46, scope: !1164)
!1166 = !DILocation(line: 461, column: 43, scope: !1164)
!1167 = !DILocation(line: 461, column: 55, scope: !1164)
!1168 = !DILocation(line: 461, column: 26, scope: !1164)
!1169 = !DILocation(line: 454, column: 35, scope: !1150)
!1170 = !DILocation(line: 454, column: 9, scope: !1150)
!1171 = !DILocation(line: 0, scope: !341)
!1172 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 464, column: 9, scope: !341)
!1174 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !1173)
!1175 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !1173)
!1176 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !1173)
!1177 = !DILocation(line: 465, column: 5, scope: !341)
!1178 = !DILocation(line: 468, column: 25, scope: !71)
!1179 = !DILocation(line: 468, column: 34, scope: !71)
!1180 = !DILocation(line: 468, column: 11, scope: !71)
!1181 = !DILocation(line: 350, column: 26, scope: !71)
!1182 = !DILocation(line: 469, column: 10, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !71, file: !3, line: 469, column: 9)
!1184 = !DILocation(line: 469, column: 14, scope: !1183)
!1185 = !DILocation(line: 469, column: 24, scope: !1183)
!1186 = !{!1187, !769, i64 16}
!1187 = !{!"redisCommand", !770, i64 0, !770, i64 8, !769, i64 16, !770, i64 24, !769, i64 32, !770, i64 40, !769, i64 48, !769, i64 52, !769, i64 56, !539, i64 64, !539, i64 72}
!1188 = !DILocation(line: 469, column: 30, scope: !1183)
!1189 = !DILocation(line: 469, column: 34, scope: !1183)
!1190 = !DILocation(line: 469, column: 48, scope: !1183)
!1191 = !DILocation(line: 469, column: 57, scope: !1183)
!1192 = !DILocation(line: 470, column: 28, scope: !1183)
!1193 = !DILocation(line: 470, column: 26, scope: !1183)
!1194 = !DILocation(line: 469, column: 9, scope: !71)
!1195 = !DILocation(line: 472, column: 13, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 471, column: 5)
!1197 = !DILocation(line: 473, column: 13, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 472, column: 13)
!1199 = !DILocation(line: 476, column: 13, scope: !1198)
!1200 = !DILocation(line: 479, column: 17, scope: !71)
!1201 = !DILocation(line: 479, column: 25, scope: !71)
!1202 = !{!966, !770, i64 88}
!1203 = !DILocation(line: 479, column: 8, scope: !71)
!1204 = !DILocation(line: 479, column: 12, scope: !71)
!1205 = !{!966, !770, i64 80}
!1206 = !DILocation(line: 482, column: 14, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !71, file: !3, line: 482, column: 9)
!1208 = !{!1187, !769, i64 32}
!1209 = !DILocation(line: 482, column: 20, scope: !1207)
!1210 = !DILocation(line: 482, column: 9, scope: !71)
!1211 = !DILocation(line: 483, column: 9, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 482, column: 36)
!1213 = !DILocation(line: 484, column: 9, scope: !1212)
!1214 = !DILocation(line: 490, column: 20, scope: !345)
!1215 = !DILocation(line: 490, column: 9, scope: !71)
!1216 = !DILocation(line: 521, column: 17, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !71, file: !3, line: 520, column: 9)
!1218 = !DILocation(line: 522, column: 17, scope: !1217)
!1219 = !DILocation(line: 491, column: 31, scope: !344)
!1220 = !DILocation(line: 491, column: 13, scope: !344)
!1221 = !DILocation(line: 492, column: 20, scope: !352)
!1222 = !{!951, !769, i64 3052}
!1223 = !DILocation(line: 492, column: 13, scope: !352)
!1224 = !DILocation(line: 492, column: 48, scope: !352)
!1225 = !DILocation(line: 492, column: 41, scope: !352)
!1226 = !DILocation(line: 492, column: 37, scope: !352)
!1227 = !DILocation(line: 493, column: 13, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !352, file: !3, line: 492, column: 72)
!1229 = !DILocation(line: 495, column: 13, scope: !1228)
!1230 = !DILocation(line: 496, column: 27, scope: !351)
!1231 = !{!951, !770, i64 2464}
!1232 = !DILocation(line: 496, column: 20, scope: !351)
!1233 = !DILocation(line: 496, column: 48, scope: !351)
!1234 = !DILocation(line: 496, column: 41, scope: !351)
!1235 = !DILocation(line: 496, column: 38, scope: !351)
!1236 = !DILocation(line: 497, column: 28, scope: !351)
!1237 = !DILocation(line: 497, column: 21, scope: !351)
!1238 = !DILocation(line: 498, column: 29, scope: !351)
!1239 = !DILocation(line: 498, column: 41, scope: !351)
!1240 = !DILocation(line: 498, column: 47, scope: !351)
!1241 = !DILocation(line: 496, column: 20, scope: !352)
!1242 = !DILocation(line: 500, column: 38, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !351, file: !3, line: 499, column: 9)
!1244 = !{!940, !770, i64 192}
!1245 = !DILocation(line: 500, column: 50, scope: !1243)
!1246 = !DILocation(line: 500, column: 13, scope: !1243)
!1247 = !DILocation(line: 501, column: 13, scope: !1243)
!1248 = !DILocation(line: 502, column: 36, scope: !350)
!1249 = !DILocation(line: 502, column: 20, scope: !351)
!1250 = !DILocation(line: 503, column: 33, scope: !348)
!1251 = !DILocation(line: 503, column: 17, scope: !349)
!1252 = !DILocation(line: 504, column: 42, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !348, file: !3, line: 503, column: 57)
!1254 = !{!940, !770, i64 176}
!1255 = !DILocation(line: 504, column: 53, scope: !1253)
!1256 = !DILocation(line: 504, column: 17, scope: !1253)
!1257 = !DILocation(line: 505, column: 13, scope: !1253)
!1258 = !DILocation(line: 506, column: 47, scope: !347)
!1259 = !DILocation(line: 508, column: 37, scope: !347)
!1260 = !{!951, !769, i64 2028}
!1261 = !DILocation(line: 508, column: 21, scope: !347)
!1262 = !DILocation(line: 506, column: 37, scope: !347)
!1263 = !DILocation(line: 506, column: 21, scope: !347)
!1264 = !DILocation(line: 509, column: 17, scope: !347)
!1265 = !DILocation(line: 510, column: 17, scope: !347)
!1266 = !DILocation(line: 512, column: 13, scope: !349)
!1267 = !DILocation(line: 0, scope: !1228)
!1268 = !DILocation(line: 514, column: 5, scope: !345)
!1269 = !DILocation(line: 520, column: 16, scope: !1217)
!1270 = !{!951, !539, i64 2704}
!1271 = !DILocation(line: 520, column: 9, scope: !1217)
!1272 = !DILocation(line: 521, column: 10, scope: !1217)
!1273 = !DILocation(line: 520, column: 26, scope: !1217)
!1274 = !DILocation(line: 522, column: 10, scope: !1217)
!1275 = !DILocation(line: 523, column: 16, scope: !1217)
!1276 = !DILocation(line: 523, column: 32, scope: !1217)
!1277 = !DILocation(line: 524, column: 15, scope: !1217)
!1278 = !DILocation(line: 524, column: 21, scope: !1217)
!1279 = !DILocation(line: 520, column: 9, scope: !71)
!1280 = !DILocation(line: 526, column: 13, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 526, column: 13)
!1282 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 525, column: 5)
!1283 = !DILocation(line: 526, column: 52, scope: !1281)
!1284 = !DILocation(line: 526, column: 13, scope: !1282)
!1285 = !DILocation(line: 527, column: 38, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 526, column: 61)
!1287 = !{!940, !770, i64 232}
!1288 = !DILocation(line: 527, column: 46, scope: !1286)
!1289 = !DILocation(line: 527, column: 13, scope: !1286)
!1290 = !DILocation(line: 528, column: 13, scope: !1286)
!1291 = !DILocation(line: 532, column: 14, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !71, file: !3, line: 532, column: 9)
!1293 = !DILocation(line: 532, column: 20, scope: !1292)
!1294 = !DILocation(line: 532, column: 9, scope: !71)
!1295 = !DILocation(line: 532, column: 58, scope: !1292)
!1296 = !DILocation(line: 532, column: 34, scope: !1292)
!1297 = !DILocation(line: 533, column: 20, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !71, file: !3, line: 533, column: 9)
!1299 = !DILocation(line: 533, column: 9, scope: !71)
!1300 = !DILocation(line: 533, column: 56, scope: !1298)
!1301 = !{!951, !769, i64 3048}
!1302 = !DILocation(line: 533, column: 33, scope: !1298)
!1303 = !DILocation(line: 538, column: 16, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !71, file: !3, line: 538, column: 9)
!1305 = !{!951, !769, i64 2924}
!1306 = !DILocation(line: 538, column: 9, scope: !1304)
!1307 = !DILocation(line: 538, column: 43, scope: !1304)
!1308 = !DILocation(line: 538, column: 36, scope: !1304)
!1309 = !DILocation(line: 538, column: 32, scope: !1304)
!1310 = !DILocation(line: 539, column: 18, scope: !1304)
!1311 = !DILocation(line: 539, column: 30, scope: !1304)
!1312 = !DILocation(line: 539, column: 36, scope: !1304)
!1313 = !DILocation(line: 538, column: 9, scope: !71)
!1314 = !DILocation(line: 542, column: 12, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 540, column: 5)
!1316 = !DILocation(line: 542, column: 18, scope: !1315)
!1317 = !DILocation(line: 543, column: 40, scope: !1315)
!1318 = !DILocation(line: 543, column: 46, scope: !1315)
!1319 = !DILocation(line: 543, column: 18, scope: !1315)
!1320 = !DILocation(line: 544, column: 33, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 544, column: 13)
!1322 = !DILocation(line: 544, column: 40, scope: !1321)
!1323 = !DILocation(line: 544, column: 48, scope: !1321)
!1324 = !DILocation(line: 544, column: 13, scope: !1321)
!1325 = !DILocation(line: 545, column: 35, scope: !1321)
!1326 = !{!951, !770, i64 2944}
!1327 = !DILocation(line: 545, column: 44, scope: !1321)
!1328 = !{!1329, !770, i64 0}
!1329 = !{!"clusterState", !770, i64 0, !771, i64 8, !769, i64 16, !769, i64 20, !770, i64 24, !770, i64 32, !487, i64 40, !487, i64 131112, !487, i64 262184, !487, i64 393256, !770, i64 524328, !539, i64 524336, !769, i64 524344, !769, i64 524348, !769, i64 524352, !771, i64 524360, !769, i64 524368, !539, i64 524376, !770, i64 524384, !539, i64 524392, !769, i64 524400, !771, i64 524408, !769, i64 524416, !487, i64 524424, !487, i64 524504, !539, i64 524584}
!1330 = !DILocation(line: 544, column: 64, scope: !1321)
!1331 = !DILocation(line: 544, column: 13, scope: !1315)
!1332 = !DILocation(line: 547, column: 13, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 546, column: 9)
!1334 = !DILocation(line: 550, column: 13, scope: !1333)
!1335 = !DILocation(line: 557, column: 16, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !71, file: !3, line: 557, column: 9)
!1337 = !{!951, !769, i64 3056}
!1338 = !DILocation(line: 557, column: 9, scope: !1336)
!1339 = !DILocation(line: 558, column: 17, scope: !1336)
!1340 = !DILocation(line: 558, column: 10, scope: !1336)
!1341 = !DILocation(line: 557, column: 39, scope: !1336)
!1342 = !DILocation(line: 559, column: 18, scope: !1336)
!1343 = !DILocation(line: 559, column: 30, scope: !1336)
!1344 = !DILocation(line: 559, column: 36, scope: !1336)
!1345 = !DILocation(line: 560, column: 16, scope: !1336)
!1346 = !DILocation(line: 560, column: 9, scope: !1336)
!1347 = !DILocation(line: 559, column: 52, scope: !1336)
!1348 = !DILocation(line: 561, column: 16, scope: !1336)
!1349 = !DILocation(line: 561, column: 25, scope: !1336)
!1350 = !DILocation(line: 568, column: 9, scope: !71)
!1351 = !DILocation(line: 569, column: 9, scope: !71)
!1352 = !DILocation(line: 563, column: 9, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 562, column: 5)
!1354 = !DILocation(line: 564, column: 34, scope: !1353)
!1355 = !DILocation(line: 565, column: 5, scope: !1353)
!1356 = !DILocation(line: 569, column: 16, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !71, file: !3, line: 569, column: 9)
!1358 = !DILocation(line: 569, column: 9, scope: !1357)
!1359 = !DILocation(line: 571, column: 20, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 571, column: 13)
!1361 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 569, column: 40)
!1362 = !{!951, !769, i64 3064}
!1363 = !DILocation(line: 571, column: 29, scope: !1360)
!1364 = !DILocation(line: 571, column: 13, scope: !1361)
!1365 = !DILocation(line: 572, column: 13, scope: !1360)
!1366 = !DILocation(line: 0, scope: !71)
!1367 = !DILocation(line: 573, column: 29, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 573, column: 13)
!1369 = !DILocation(line: 573, column: 13, scope: !1361)
!1370 = !DILocation(line: 574, column: 24, scope: !1368)
!1371 = !DILocation(line: 574, column: 13, scope: !1368)
!1372 = !DILocation(line: 576, column: 5, scope: !71)
!1373 = !DILocation(line: 581, column: 9, scope: !357)
!1374 = !{!966, !770, i64 112}
!1375 = !{!1376, !771, i64 40}
!1376 = !{!"list", !770, i64 0, !770, i64 8, !770, i64 16, !770, i64 24, !770, i64 32, !771, i64 40}
!1377 = !DILocation(line: 581, column: 30, scope: !357)
!1378 = !DILocation(line: 581, column: 35, scope: !357)
!1379 = !DILocation(line: 0, scope: !356)
!1380 = !{!966, !769, i64 528}
!1381 = !DILocation(line: 581, column: 48, scope: !357)
!1382 = !DILocation(line: 581, column: 9, scope: !71)
!1383 = !DILocation(line: 585, column: 9, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !357, file: !3, line: 581, column: 75)
!1385 = !DILocation(line: 585, column: 27, scope: !1384)
!1386 = !DILocation(line: 586, column: 17, scope: !1384)
!1387 = !DILocation(line: 352, column: 9, scope: !71)
!1388 = !DILocation(line: 587, column: 19, scope: !1384)
!1389 = !DILocation(line: 588, column: 5, scope: !1384)
!1390 = !DILocation(line: 589, column: 27, scope: !356)
!1391 = !DILocation(line: 589, column: 34, scope: !356)
!1392 = !DILocation(line: 589, column: 17, scope: !356)
!1393 = !DILocation(line: 590, column: 19, scope: !356)
!1394 = !DILocation(line: 591, column: 9, scope: !356)
!1395 = !DILocation(line: 591, column: 15, scope: !356)
!1396 = !DILocation(line: 592, column: 35, scope: !355)
!1397 = !{!1376, !770, i64 0}
!1398 = !{!1399, !770, i64 16}
!1399 = !{!"listNode", !770, i64 0, !770, i64 8, !770, i64 16}
!1400 = !DILocation(line: 592, column: 31, scope: !355)
!1401 = !DILocation(line: 594, column: 37, scope: !355)
!1402 = !DILocation(line: 594, column: 47, scope: !355)
!1403 = !DILocation(line: 594, column: 21, scope: !355)
!1404 = !DILocation(line: 595, column: 28, scope: !355)
!1405 = !DILocation(line: 595, column: 34, scope: !355)
!1406 = !DILocation(line: 595, column: 13, scope: !355)
!1407 = distinct !{!1407, !1394, !1408}
!1408 = !DILocation(line: 596, column: 9, scope: !356)
!1409 = !DILocation(line: 598, column: 9, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !71, file: !3, line: 598, column: 9)
!1411 = !DILocation(line: 598, column: 21, scope: !1410)
!1412 = !DILocation(line: 598, column: 24, scope: !1410)
!1413 = !DILocation(line: 598, column: 33, scope: !1410)
!1414 = !DILocation(line: 598, column: 9, scope: !71)
!1415 = !DILocation(line: 598, column: 41, scope: !1410)
!1416 = !DILocation(line: 599, column: 5, scope: !71)
!1417 = !DILocation(line: 602, column: 13, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !71, file: !3, line: 602, column: 9)
!1419 = !DILocation(line: 602, column: 9, scope: !1418)
!1420 = !DILocation(line: 602, column: 27, scope: !1418)
!1421 = !DILocation(line: 602, column: 23, scope: !1418)
!1422 = !DILocation(line: 602, column: 20, scope: !1418)
!1423 = !DILocalVariable(name: "reply", arg: 1, scope: !1424, file: !3, line: 2093, type: !11)
!1424 = distinct !DISubprogram(name: "ldbLogRedisReply", scope: !3, file: !3, line: 2093, type: !1425, isLocal: false, isDefinition: true, scopeLine: 2093, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null, !11}
!1427 = !{!1423, !1428}
!1428 = !DILocalVariable(name: "log", scope: !1424, file: !3, line: 2094, type: !209)
!1429 = !DILocation(line: 2093, column: 29, scope: !1424, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 603, column: 9, scope: !1418)
!1431 = !DILocation(line: 2094, column: 5, scope: !1424, inlinedAt: !1430)
!1432 = !DILocation(line: 2094, column: 15, scope: !1424, inlinedAt: !1430)
!1433 = !DILocation(line: 2094, column: 9, scope: !1424, inlinedAt: !1430)
!1434 = !DILocation(line: 2095, column: 5, scope: !1424, inlinedAt: !1430)
!1435 = !DILocation(line: 2096, column: 22, scope: !1424, inlinedAt: !1430)
!1436 = !DILocation(line: 2096, column: 5, scope: !1424, inlinedAt: !1430)
!1437 = !DILocation(line: 2097, column: 1, scope: !1424, inlinedAt: !1430)
!1438 = !DILocation(line: 603, column: 9, scope: !1418)
!1439 = !DILocation(line: 607, column: 15, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !71, file: !3, line: 607, column: 9)
!1441 = !DILocation(line: 607, column: 21, scope: !1440)
!1442 = !DILocation(line: 608, column: 17, scope: !1440)
!1443 = !DILocation(line: 608, column: 40, scope: !1440)
!1444 = !DILocation(line: 607, column: 44, scope: !1440)
!1445 = !DILocation(line: 609, column: 10, scope: !1440)
!1446 = !DILocation(line: 609, column: 19, scope: !1440)
!1447 = !DILocation(line: 609, column: 26, scope: !1440)
!1448 = !DILocation(line: 609, column: 29, scope: !1440)
!1449 = !DILocation(line: 609, column: 38, scope: !1440)
!1450 = !DILocation(line: 607, column: 9, scope: !71)
!1451 = !DILocation(line: 610, column: 13, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 609, column: 47)
!1453 = !DILocation(line: 611, column: 5, scope: !1452)
!1454 = !DILocation(line: 612, column: 18, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !71, file: !3, line: 612, column: 9)
!1456 = !DILocation(line: 612, column: 15, scope: !1455)
!1457 = !DILocation(line: 612, column: 9, scope: !71)
!1458 = !DILocation(line: 612, column: 26, scope: !1455)
!1459 = !DILocation(line: 613, column: 8, scope: !71)
!1460 = !DILocation(line: 613, column: 20, scope: !71)
!1461 = !{!966, !539, i64 120}
!1462 = !DILocation(line: 613, column: 5, scope: !71)
!1463 = !DILocation(line: 618, column: 10, scope: !368)
!1464 = !DILocation(line: 618, column: 24, scope: !367)
!1465 = !DILocation(line: 618, column: 19, scope: !367)
!1466 = !DILocation(line: 618, column: 5, scope: !368)
!1467 = !DILocation(line: 0, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !71, file: !3, line: 639, column: 9)
!1469 = !DILocation(line: 619, column: 19, scope: !366)
!1470 = !DILocation(line: 619, column: 15, scope: !366)
!1471 = !DILocation(line: 624, column: 15, scope: !371)
!1472 = !DILocation(line: 624, column: 39, scope: !371)
!1473 = !DILocation(line: 625, column: 16, scope: !371)
!1474 = !{!1047, !769, i64 4}
!1475 = !DILocation(line: 625, column: 25, scope: !371)
!1476 = !DILocation(line: 625, column: 30, scope: !371)
!1477 = !DILocation(line: 626, column: 17, scope: !371)
!1478 = !DILocation(line: 626, column: 26, scope: !371)
!1479 = !DILocation(line: 626, column: 46, scope: !371)
!1480 = !DILocation(line: 627, column: 26, scope: !371)
!1481 = !DILocation(line: 627, column: 50, scope: !371)
!1482 = !DILocation(line: 628, column: 23, scope: !371)
!1483 = !DILocalVariable(name: "s", arg: 1, scope: !1484, file: !26, line: 87, type: !1487)
!1484 = distinct !DISubprogram(name: "sdslen", scope: !26, file: !26, line: 87, type: !1485, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1488)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!1059, !1487}
!1487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!1488 = !{!1483, !1489}
!1489 = !DILocalVariable(name: "flags", scope: !1484, file: !26, line: 88, type: !7)
!1490 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 628, column: 13, scope: !371)
!1492 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !1491)
!1493 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !1491)
!1494 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !1491)
!1495 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !1491)
!1496 = distinct !DILexicalBlock(scope: !1484, file: !26, line: 89, column: 33)
!1497 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !1491)
!1498 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !1491)
!1499 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !1491)
!1500 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !1491)
!1501 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !1491)
!1502 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !1491)
!1503 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !1491)
!1504 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !1491)
!1505 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !1491)
!1506 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !1491)
!1507 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !1491)
!1508 = !DILocation(line: 0, scope: !371)
!1509 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !1491)
!1510 = !DILocation(line: 624, column: 13, scope: !366)
!1511 = !DILocation(line: 0, scope: !1496, inlinedAt: !1491)
!1512 = !DILocation(line: 628, column: 28, scope: !371)
!1513 = !DILocation(line: 630, column: 17, scope: !370)
!1514 = !DILocation(line: 631, column: 17, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !370, file: !3, line: 631, column: 17)
!1516 = !DILocation(line: 631, column: 17, scope: !370)
!1517 = !DILocation(line: 631, column: 36, scope: !1515)
!1518 = !DILocation(line: 632, column: 31, scope: !370)
!1519 = !DILocalVariable(name: "s", arg: 1, scope: !1520, file: !26, line: 180, type: !1487)
!1520 = distinct !DISubprogram(name: "sdsalloc", scope: !26, file: !26, line: 180, type: !1485, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1521)
!1521 = !{!1519, !1522}
!1522 = !DILocalVariable(name: "flags", scope: !1520, file: !26, line: 181, type: !7)
!1523 = !DILocation(line: 180, column: 41, scope: !1520, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 633, column: 37, scope: !370)
!1525 = !DILocation(line: 181, column: 27, scope: !1520, inlinedAt: !1524)
!1526 = !DILocation(line: 181, column: 19, scope: !1520, inlinedAt: !1524)
!1527 = !DILocation(line: 182, column: 5, scope: !1520, inlinedAt: !1524)
!1528 = !DILocation(line: 184, column: 20, scope: !1529, inlinedAt: !1524)
!1529 = distinct !DILexicalBlock(scope: !1520, file: !26, line: 182, column: 33)
!1530 = !DILocation(line: 184, column: 13, scope: !1529, inlinedAt: !1524)
!1531 = !DILocation(line: 186, column: 34, scope: !1529, inlinedAt: !1524)
!1532 = !DILocation(line: 186, column: 20, scope: !1529, inlinedAt: !1524)
!1533 = !DILocation(line: 186, column: 13, scope: !1529, inlinedAt: !1524)
!1534 = !DILocation(line: 188, column: 35, scope: !1529, inlinedAt: !1524)
!1535 = !DILocation(line: 188, column: 20, scope: !1529, inlinedAt: !1524)
!1536 = !DILocation(line: 188, column: 13, scope: !1529, inlinedAt: !1524)
!1537 = !DILocation(line: 190, column: 35, scope: !1529, inlinedAt: !1524)
!1538 = !DILocation(line: 190, column: 20, scope: !1529, inlinedAt: !1524)
!1539 = !DILocation(line: 190, column: 13, scope: !1529, inlinedAt: !1524)
!1540 = !DILocation(line: 192, column: 35, scope: !1529, inlinedAt: !1524)
!1541 = !DILocation(line: 192, column: 13, scope: !1529, inlinedAt: !1524)
!1542 = !DILocation(line: 0, scope: !1529, inlinedAt: !1524)
!1543 = !DILocation(line: 0, scope: !370)
!1544 = !DILocation(line: 195, column: 1, scope: !1520, inlinedAt: !1524)
!1545 = !DILocation(line: 633, column: 13, scope: !370)
!1546 = !DILocation(line: 633, column: 35, scope: !370)
!1547 = !DILocation(line: 634, column: 9, scope: !370)
!1548 = !DILocation(line: 635, column: 13, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !371, file: !3, line: 634, column: 16)
!1550 = !DILocation(line: 618, column: 31, scope: !367)
!1551 = !DILocation(line: 618, column: 5, scope: !367)
!1552 = distinct !{!1552, !1466, !1553}
!1553 = !DILocation(line: 637, column: 5, scope: !368)
!1554 = !DILocation(line: 639, column: 20, scope: !1468)
!1555 = !DILocation(line: 639, column: 17, scope: !1468)
!1556 = !DILocation(line: 639, column: 9, scope: !71)
!1557 = !DILocation(line: 640, column: 15, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 639, column: 26)
!1559 = !DILocation(line: 640, column: 9, scope: !1558)
!1560 = !DILocation(line: 641, column: 14, scope: !1558)
!1561 = !DILocation(line: 642, column: 19, scope: !1558)
!1562 = !DILocation(line: 643, column: 5, scope: !1558)
!1563 = !DILocation(line: 645, column: 9, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !71, file: !3, line: 645, column: 9)
!1565 = !DILocation(line: 645, column: 9, scope: !71)
!1566 = !DILocation(line: 236, column: 30, scope: !817, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 650, column: 16, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 645, column: 22)
!1569 = !DILocation(line: 237, column: 5, scope: !817, inlinedAt: !1567)
!1570 = !DILocation(line: 238, column: 5, scope: !817, inlinedAt: !1567)
!1571 = !DILocation(line: 239, column: 12, scope: !817, inlinedAt: !1567)
!1572 = !DILocation(line: 239, column: 5, scope: !817, inlinedAt: !1567)
!1573 = !DILocation(line: 650, column: 9, scope: !1568)
!1574 = !DILocation(line: 654, column: 1, scope: !71)
!1575 = !DILocation(line: 2093, column: 29, scope: !1424)
!1576 = !DILocation(line: 2094, column: 5, scope: !1424)
!1577 = !DILocation(line: 2094, column: 15, scope: !1424)
!1578 = !DILocation(line: 2094, column: 9, scope: !1424)
!1579 = !DILocation(line: 2095, column: 5, scope: !1424)
!1580 = !DILocation(line: 2096, column: 22, scope: !1424)
!1581 = !DILocation(line: 2096, column: 5, scope: !1424)
!1582 = !DILocation(line: 2097, column: 1, scope: !1424)
!1583 = distinct !DISubprogram(name: "luaRedisCallCommand", scope: !3, file: !3, line: 657, type: !818, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1584)
!1584 = !{!1585}
!1585 = !DILocalVariable(name: "lua", arg: 1, scope: !1583, file: !3, line: 657, type: !74)
!1586 = !DILocation(line: 657, column: 36, scope: !1583)
!1587 = !DILocation(line: 658, column: 12, scope: !1583)
!1588 = !DILocation(line: 658, column: 5, scope: !1583)
!1589 = distinct !DISubprogram(name: "luaRedisPCallCommand", scope: !3, file: !3, line: 662, type: !818, isLocal: false, isDefinition: true, scopeLine: 662, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1590)
!1590 = !{!1591}
!1591 = !DILocalVariable(name: "lua", arg: 1, scope: !1589, file: !3, line: 662, type: !74)
!1592 = !DILocation(line: 662, column: 37, scope: !1589)
!1593 = !DILocation(line: 663, column: 12, scope: !1589)
!1594 = !DILocation(line: 663, column: 5, scope: !1589)
!1595 = distinct !DISubprogram(name: "luaRedisSha1hexCommand", scope: !3, file: !3, line: 668, type: !818, isLocal: false, isDefinition: true, scopeLine: 668, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1596)
!1596 = !{!1597, !1598, !1599, !1600, !1601}
!1597 = !DILocalVariable(name: "lua", arg: 1, scope: !1595, file: !3, line: 668, type: !74)
!1598 = !DILocalVariable(name: "argc", scope: !1595, file: !3, line: 669, type: !15)
!1599 = !DILocalVariable(name: "digest", scope: !1595, file: !3, line: 670, type: !252)
!1600 = !DILocalVariable(name: "len", scope: !1595, file: !3, line: 671, type: !211)
!1601 = !DILocalVariable(name: "s", scope: !1595, file: !3, line: 672, type: !11)
!1602 = !DILocation(line: 91, column: 19, scope: !442, inlinedAt: !1603)
!1603 = distinct !DILocation(line: 680, column: 5, scope: !1595)
!1604 = !DILocation(line: 668, column: 39, scope: !1595)
!1605 = !DILocation(line: 669, column: 16, scope: !1595)
!1606 = !DILocation(line: 669, column: 9, scope: !1595)
!1607 = !DILocation(line: 670, column: 5, scope: !1595)
!1608 = !DILocation(line: 670, column: 10, scope: !1595)
!1609 = !DILocation(line: 671, column: 5, scope: !1595)
!1610 = !DILocation(line: 674, column: 14, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 674, column: 9)
!1612 = !DILocation(line: 674, column: 9, scope: !1595)
!1613 = !DILocation(line: 675, column: 9, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 674, column: 20)
!1615 = !DILocation(line: 676, column: 16, scope: !1614)
!1616 = !DILocation(line: 676, column: 9, scope: !1614)
!1617 = !DILocation(line: 671, column: 12, scope: !1595)
!1618 = !DILocation(line: 679, column: 16, scope: !1595)
!1619 = !DILocation(line: 672, column: 11, scope: !1595)
!1620 = !DILocation(line: 680, column: 22, scope: !1595)
!1621 = !DILocation(line: 89, column: 20, scope: !442, inlinedAt: !1603)
!1622 = !DILocation(line: 89, column: 34, scope: !442, inlinedAt: !1603)
!1623 = !DILocation(line: 89, column: 49, scope: !442, inlinedAt: !1603)
!1624 = !DILocation(line: 90, column: 5, scope: !442, inlinedAt: !1603)
!1625 = !DILocation(line: 91, column: 5, scope: !442, inlinedAt: !1603)
!1626 = !DILocation(line: 90, column: 14, scope: !442, inlinedAt: !1603)
!1627 = !DILocation(line: 95, column: 5, scope: !442, inlinedAt: !1603)
!1628 = !DILocation(line: 96, column: 44, scope: !442, inlinedAt: !1603)
!1629 = !DILocation(line: 96, column: 5, scope: !442, inlinedAt: !1603)
!1630 = !DILocation(line: 97, column: 5, scope: !442, inlinedAt: !1603)
!1631 = !DILocation(line: 93, column: 9, scope: !442, inlinedAt: !1603)
!1632 = !DILocation(line: 99, column: 10, scope: !481, inlinedAt: !1603)
!1633 = !DILocation(line: 99, column: 5, scope: !481, inlinedAt: !1603)
!1634 = !DILocation(line: 100, column: 30, scope: !484, inlinedAt: !1603)
!1635 = !DILocation(line: 100, column: 43, scope: !484, inlinedAt: !1603)
!1636 = !DILocation(line: 100, column: 23, scope: !484, inlinedAt: !1603)
!1637 = !DILocation(line: 100, column: 17, scope: !484, inlinedAt: !1603)
!1638 = !DILocation(line: 100, column: 9, scope: !484, inlinedAt: !1603)
!1639 = !DILocation(line: 100, column: 21, scope: !484, inlinedAt: !1603)
!1640 = !DILocation(line: 101, column: 38, scope: !484, inlinedAt: !1603)
!1641 = !DILocation(line: 101, column: 25, scope: !484, inlinedAt: !1603)
!1642 = !DILocation(line: 101, column: 19, scope: !484, inlinedAt: !1603)
!1643 = !DILocation(line: 101, column: 9, scope: !484, inlinedAt: !1603)
!1644 = !DILocation(line: 101, column: 23, scope: !484, inlinedAt: !1603)
!1645 = !DILocation(line: 99, column: 26, scope: !485, inlinedAt: !1603)
!1646 = !DILocation(line: 99, column: 5, scope: !485, inlinedAt: !1603)
!1647 = !DILocation(line: 99, column: 19, scope: !485, inlinedAt: !1603)
!1648 = !DILocation(line: 103, column: 5, scope: !442, inlinedAt: !1603)
!1649 = !DILocation(line: 103, column: 16, scope: !442, inlinedAt: !1603)
!1650 = !DILocation(line: 104, column: 1, scope: !442, inlinedAt: !1603)
!1651 = !DILocation(line: 681, column: 5, scope: !1595)
!1652 = !DILocation(line: 682, column: 5, scope: !1595)
!1653 = !DILocation(line: 0, scope: !1595)
!1654 = !DILocation(line: 0, scope: !1614)
!1655 = !DILocation(line: 683, column: 1, scope: !1595)
!1656 = distinct !DISubprogram(name: "luaRedisReturnSingleFieldTable", scope: !3, file: !3, line: 692, type: !1657, isLocal: false, isDefinition: true, scopeLine: 692, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1659)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!15, !74, !11}
!1659 = !{!1660, !1661}
!1660 = !DILocalVariable(name: "lua", arg: 1, scope: !1656, file: !3, line: 692, type: !74)
!1661 = !DILocalVariable(name: "field", arg: 2, scope: !1656, file: !3, line: 692, type: !11)
!1662 = !DILocation(line: 692, column: 47, scope: !1656)
!1663 = !DILocation(line: 692, column: 58, scope: !1656)
!1664 = !DILocation(line: 693, column: 9, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 693, column: 9)
!1666 = !DILocation(line: 693, column: 25, scope: !1665)
!1667 = !DILocation(line: 693, column: 30, scope: !1665)
!1668 = !DILocation(line: 693, column: 33, scope: !1665)
!1669 = !DILocation(line: 693, column: 50, scope: !1665)
!1670 = !DILocation(line: 693, column: 9, scope: !1656)
!1671 = !DILocation(line: 694, column: 9, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 693, column: 66)
!1673 = !DILocation(line: 695, column: 9, scope: !1672)
!1674 = !DILocation(line: 698, column: 5, scope: !1656)
!1675 = !DILocation(line: 699, column: 5, scope: !1656)
!1676 = !DILocation(line: 700, column: 5, scope: !1656)
!1677 = !DILocation(line: 701, column: 5, scope: !1656)
!1678 = !DILocation(line: 702, column: 5, scope: !1656)
!1679 = !DILocation(line: 0, scope: !1672)
!1680 = !DILocation(line: 703, column: 1, scope: !1656)
!1681 = distinct !DISubprogram(name: "luaRedisErrorReplyCommand", scope: !3, file: !3, line: 706, type: !818, isLocal: false, isDefinition: true, scopeLine: 706, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1682)
!1682 = !{!1683}
!1683 = !DILocalVariable(name: "lua", arg: 1, scope: !1681, file: !3, line: 706, type: !74)
!1684 = !DILocation(line: 706, column: 42, scope: !1681)
!1685 = !DILocation(line: 707, column: 12, scope: !1681)
!1686 = !DILocation(line: 707, column: 5, scope: !1681)
!1687 = distinct !DISubprogram(name: "luaRedisStatusReplyCommand", scope: !3, file: !3, line: 711, type: !818, isLocal: false, isDefinition: true, scopeLine: 711, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1688)
!1688 = !{!1689}
!1689 = !DILocalVariable(name: "lua", arg: 1, scope: !1687, file: !3, line: 711, type: !74)
!1690 = !DILocation(line: 711, column: 43, scope: !1687)
!1691 = !DILocation(line: 712, column: 12, scope: !1687)
!1692 = !DILocation(line: 712, column: 5, scope: !1687)
!1693 = distinct !DISubprogram(name: "luaRedisReplicateCommandsCommand", scope: !3, file: !3, line: 721, type: !818, isLocal: false, isDefinition: true, scopeLine: 721, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1694)
!1694 = !{!1695}
!1695 = !DILocalVariable(name: "lua", arg: 1, scope: !1693, file: !3, line: 721, type: !74)
!1696 = !DILocation(line: 721, column: 49, scope: !1693)
!1697 = !DILocation(line: 722, column: 16, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 722, column: 9)
!1699 = !DILocation(line: 722, column: 9, scope: !1698)
!1700 = !DILocation(line: 722, column: 9, scope: !1693)
!1701 = !DILocation(line: 723, column: 9, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 722, column: 33)
!1703 = !DILocation(line: 724, column: 5, scope: !1702)
!1704 = !DILocation(line: 725, column: 39, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 724, column: 12)
!1706 = !DILocation(line: 729, column: 22, scope: !1705)
!1707 = !DILocation(line: 729, column: 9, scope: !1705)
!1708 = !DILocation(line: 730, column: 9, scope: !1705)
!1709 = !DILocation(line: 732, column: 5, scope: !1693)
!1710 = distinct !DISubprogram(name: "luaRedisBreakpointCommand", scope: !3, file: !3, line: 740, type: !818, isLocal: false, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1711)
!1711 = !{!1712}
!1712 = !DILocalVariable(name: "lua", arg: 1, scope: !1710, file: !3, line: 740, type: !74)
!1713 = !DILocation(line: 740, column: 42, scope: !1710)
!1714 = !DILocation(line: 741, column: 13, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 741, column: 9)
!1716 = !DILocation(line: 741, column: 9, scope: !1715)
!1717 = !DILocation(line: 741, column: 9, scope: !1710)
!1718 = !DILocation(line: 742, column: 19, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 741, column: 21)
!1720 = !{!768, !769, i64 304}
!1721 = !DILocation(line: 743, column: 9, scope: !1719)
!1722 = !DILocation(line: 744, column: 5, scope: !1719)
!1723 = !DILocation(line: 745, column: 9, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1715, file: !3, line: 744, column: 12)
!1725 = !DILocation(line: 747, column: 5, scope: !1710)
!1726 = distinct !DISubprogram(name: "luaRedisDebugCommand", scope: !3, file: !3, line: 755, type: !818, isLocal: false, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1727)
!1727 = !{!1728, !1729, !1730}
!1728 = !DILocalVariable(name: "lua", arg: 1, scope: !1726, file: !3, line: 755, type: !74)
!1729 = !DILocalVariable(name: "argc", scope: !1726, file: !3, line: 757, type: !15)
!1730 = !DILocalVariable(name: "log", scope: !1726, file: !3, line: 758, type: !209)
!1731 = !DILocation(line: 755, column: 37, scope: !1726)
!1732 = !DILocation(line: 756, column: 14, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 756, column: 9)
!1734 = !DILocation(line: 756, column: 10, scope: !1733)
!1735 = !DILocation(line: 756, column: 9, scope: !1726)
!1736 = !DILocation(line: 757, column: 16, scope: !1726)
!1737 = !DILocation(line: 757, column: 9, scope: !1726)
!1738 = !DILocation(line: 758, column: 28, scope: !1726)
!1739 = !DILocation(line: 758, column: 64, scope: !1726)
!1740 = !{!768, !769, i64 324}
!1741 = !DILocation(line: 758, column: 15, scope: !1726)
!1742 = !DILocation(line: 758, column: 9, scope: !1726)
!1743 = !DILocation(line: 759, column: 5, scope: !1726)
!1744 = !DILocation(line: 759, column: 15, scope: !1726)
!1745 = !DILocation(line: 760, column: 43, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 759, column: 19)
!1747 = !DILocalVariable(name: "s", arg: 1, scope: !1748, file: !3, line: 2005, type: !209)
!1748 = distinct !DISubprogram(name: "ldbCatStackValue", scope: !3, file: !3, line: 2005, type: !1749, isLocal: false, isDefinition: true, scopeLine: 2005, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1751)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!209, !209, !74, !15}
!1751 = !{!1747, !1752, !1753}
!1752 = !DILocalVariable(name: "lua", arg: 2, scope: !1748, file: !3, line: 2005, type: !74)
!1753 = !DILocalVariable(name: "idx", arg: 3, scope: !1748, file: !3, line: 2005, type: !15)
!1754 = !DILocation(line: 2005, column: 26, scope: !1748, inlinedAt: !1755)
!1755 = distinct !DILocation(line: 760, column: 15, scope: !1746)
!1756 = !DILocation(line: 2005, column: 40, scope: !1748, inlinedAt: !1755)
!1757 = !DILocation(line: 2005, column: 49, scope: !1748, inlinedAt: !1755)
!1758 = !DILocation(line: 2006, column: 12, scope: !1748, inlinedAt: !1755)
!1759 = !DILocation(line: 2006, column: 5, scope: !1748, inlinedAt: !1755)
!1760 = !DILocation(line: 761, column: 18, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 761, column: 13)
!1762 = !DILocation(line: 761, column: 13, scope: !1746)
!1763 = !DILocation(line: 761, column: 30, scope: !1761)
!1764 = !DILocation(line: 761, column: 24, scope: !1761)
!1765 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 763, column: 5, scope: !1726)
!1767 = !DILocation(line: 0, scope: !1761)
!1768 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !1766)
!1769 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !1766)
!1770 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !1766)
!1771 = !DILocation(line: 765, column: 1, scope: !1726)
!1772 = !DILocation(line: 2005, column: 26, scope: !1748)
!1773 = !DILocation(line: 2005, column: 40, scope: !1748)
!1774 = !DILocation(line: 2005, column: 49, scope: !1748)
!1775 = !DILocation(line: 2006, column: 12, scope: !1748)
!1776 = !DILocation(line: 2006, column: 5, scope: !1748)
!1777 = distinct !DISubprogram(name: "luaRedisSetReplCommand", scope: !3, file: !3, line: 771, type: !818, isLocal: false, isDefinition: true, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1778)
!1778 = !{!1779, !1780, !1781}
!1779 = !DILocalVariable(name: "lua", arg: 1, scope: !1777, file: !3, line: 771, type: !74)
!1780 = !DILocalVariable(name: "argc", scope: !1777, file: !3, line: 772, type: !15)
!1781 = !DILocalVariable(name: "flags", scope: !1777, file: !3, line: 773, type: !15)
!1782 = !DILocation(line: 771, column: 39, scope: !1777)
!1783 = !DILocation(line: 772, column: 16, scope: !1777)
!1784 = !DILocation(line: 772, column: 9, scope: !1777)
!1785 = !DILocation(line: 775, column: 16, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 775, column: 9)
!1787 = !DILocation(line: 775, column: 39, scope: !1786)
!1788 = !DILocation(line: 775, column: 9, scope: !1777)
!1789 = !DILocation(line: 776, column: 9, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 775, column: 45)
!1791 = !DILocation(line: 777, column: 16, scope: !1790)
!1792 = !DILocation(line: 777, column: 9, scope: !1790)
!1793 = !DILocation(line: 778, column: 21, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1786, file: !3, line: 778, column: 16)
!1795 = !DILocation(line: 778, column: 16, scope: !1786)
!1796 = !DILocation(line: 779, column: 9, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 778, column: 27)
!1798 = !DILocation(line: 780, column: 16, scope: !1797)
!1799 = !DILocation(line: 780, column: 9, scope: !1797)
!1800 = !DILocation(line: 783, column: 13, scope: !1777)
!1801 = !DILocation(line: 773, column: 9, scope: !1777)
!1802 = !DILocation(line: 784, column: 51, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 784, column: 9)
!1804 = !DILocation(line: 784, column: 9, scope: !1777)
!1805 = !DILocation(line: 785, column: 9, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 784, column: 57)
!1807 = !DILocation(line: 786, column: 16, scope: !1806)
!1808 = !DILocation(line: 786, column: 9, scope: !1806)
!1809 = !DILocation(line: 788, column: 21, scope: !1777)
!1810 = !DILocation(line: 789, column: 5, scope: !1777)
!1811 = !DILocation(line: 0, scope: !1777)
!1812 = !DILocation(line: 0, scope: !1790)
!1813 = !DILocation(line: 790, column: 1, scope: !1777)
!1814 = distinct !DISubprogram(name: "luaLogCommand", scope: !3, file: !3, line: 793, type: !818, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1815)
!1815 = !{!1816, !1817, !1818, !1819, !1820, !1821, !1825}
!1816 = !DILocalVariable(name: "lua", arg: 1, scope: !1814, file: !3, line: 793, type: !74)
!1817 = !DILocalVariable(name: "j", scope: !1814, file: !3, line: 794, type: !15)
!1818 = !DILocalVariable(name: "argc", scope: !1814, file: !3, line: 794, type: !15)
!1819 = !DILocalVariable(name: "level", scope: !1814, file: !3, line: 795, type: !15)
!1820 = !DILocalVariable(name: "log", scope: !1814, file: !3, line: 796, type: !209)
!1821 = !DILocalVariable(name: "len", scope: !1822, file: !3, line: 814, type: !211)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !3, line: 813, column: 32)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 813, column: 5)
!1824 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 813, column: 5)
!1825 = !DILocalVariable(name: "s", scope: !1822, file: !3, line: 815, type: !11)
!1826 = !DILocation(line: 793, column: 30, scope: !1814)
!1827 = !DILocation(line: 794, column: 19, scope: !1814)
!1828 = !DILocation(line: 794, column: 12, scope: !1814)
!1829 = !DILocation(line: 798, column: 14, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 798, column: 9)
!1831 = !DILocation(line: 798, column: 9, scope: !1814)
!1832 = !DILocation(line: 799, column: 9, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 798, column: 19)
!1834 = !DILocation(line: 800, column: 16, scope: !1833)
!1835 = !DILocation(line: 800, column: 9, scope: !1833)
!1836 = !DILocation(line: 801, column: 34, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 801, column: 16)
!1838 = !DILocation(line: 801, column: 17, scope: !1837)
!1839 = !DILocation(line: 801, column: 16, scope: !1830)
!1840 = !DILocation(line: 802, column: 9, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1837, file: !3, line: 801, column: 42)
!1842 = !DILocation(line: 803, column: 16, scope: !1841)
!1843 = !DILocation(line: 803, column: 9, scope: !1841)
!1844 = !DILocation(line: 805, column: 13, scope: !1814)
!1845 = !DILocation(line: 795, column: 9, scope: !1814)
!1846 = !DILocation(line: 806, column: 26, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 806, column: 9)
!1848 = !DILocation(line: 807, column: 9, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 806, column: 49)
!1850 = !DILocation(line: 808, column: 16, scope: !1849)
!1851 = !DILocation(line: 808, column: 9, scope: !1849)
!1852 = !DILocation(line: 812, column: 11, scope: !1814)
!1853 = !DILocation(line: 796, column: 9, scope: !1814)
!1854 = !DILocation(line: 794, column: 9, scope: !1814)
!1855 = !DILocation(line: 813, column: 10, scope: !1824)
!1856 = !DILocation(line: 813, column: 5, scope: !1824)
!1857 = !DILocation(line: 814, column: 9, scope: !1822)
!1858 = !DILocation(line: 817, column: 45, scope: !1822)
!1859 = !DILocation(line: 814, column: 16, scope: !1822)
!1860 = !DILocation(line: 817, column: 20, scope: !1822)
!1861 = !DILocation(line: 815, column: 15, scope: !1822)
!1862 = !DILocation(line: 818, column: 13, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 818, column: 13)
!1864 = !DILocation(line: 818, column: 13, scope: !1822)
!1865 = !DILocation(line: 819, column: 19, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 819, column: 17)
!1867 = distinct !DILexicalBlock(scope: !1863, file: !3, line: 818, column: 16)
!1868 = !DILocation(line: 819, column: 17, scope: !1867)
!1869 = !DILocation(line: 819, column: 31, scope: !1866)
!1870 = !DILocation(line: 819, column: 25, scope: !1866)
!1871 = !DILocation(line: 0, scope: !1814)
!1872 = !DILocation(line: 820, column: 35, scope: !1867)
!1873 = !DILocation(line: 820, column: 19, scope: !1867)
!1874 = !DILocation(line: 821, column: 9, scope: !1867)
!1875 = !DILocation(line: 822, column: 5, scope: !1823)
!1876 = !DILocation(line: 813, column: 28, scope: !1823)
!1877 = !DILocation(line: 813, column: 5, scope: !1823)
!1878 = !DILocation(line: 813, column: 19, scope: !1823)
!1879 = distinct !{!1879, !1856, !1880}
!1880 = !DILocation(line: 822, column: 5, scope: !1824)
!1881 = !DILocation(line: 823, column: 5, scope: !1814)
!1882 = !DILocation(line: 824, column: 5, scope: !1814)
!1883 = !DILocation(line: 825, column: 5, scope: !1814)
!1884 = !DILocation(line: 0, scope: !1841)
!1885 = !DILocation(line: 0, scope: !1833)
!1886 = !DILocation(line: 826, column: 1, scope: !1814)
!1887 = distinct !DISubprogram(name: "luaLoadLib", scope: !3, file: !3, line: 832, type: !1888, isLocal: false, isDefinition: true, scopeLine: 832, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1892)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{null, !74, !745, !1890}
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !9, line: 52, baseType: !1891)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!1892 = !{!1893, !1894, !1895}
!1893 = !DILocalVariable(name: "lua", arg: 1, scope: !1887, file: !3, line: 832, type: !74)
!1894 = !DILocalVariable(name: "libname", arg: 2, scope: !1887, file: !3, line: 832, type: !745)
!1895 = !DILocalVariable(name: "luafunc", arg: 3, scope: !1887, file: !3, line: 832, type: !1890)
!1896 = !DILocation(line: 832, column: 28, scope: !1887)
!1897 = !DILocation(line: 832, column: 45, scope: !1887)
!1898 = !DILocation(line: 832, column: 68, scope: !1887)
!1899 = !DILocation(line: 833, column: 3, scope: !1887)
!1900 = !DILocation(line: 834, column: 3, scope: !1887)
!1901 = !DILocation(line: 835, column: 3, scope: !1887)
!1902 = !DILocation(line: 836, column: 1, scope: !1887)
!1903 = distinct !DISubprogram(name: "luaLoadLibraries", scope: !3, file: !3, line: 843, type: !828, isLocal: false, isDefinition: true, scopeLine: 843, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1904)
!1904 = !{!1905}
!1905 = !DILocalVariable(name: "lua", arg: 1, scope: !1903, file: !3, line: 843, type: !74)
!1906 = !DILocation(line: 843, column: 34, scope: !1903)
!1907 = !DILocation(line: 832, column: 28, scope: !1887, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 844, column: 5, scope: !1903)
!1909 = !DILocation(line: 832, column: 45, scope: !1887, inlinedAt: !1908)
!1910 = !DILocation(line: 832, column: 68, scope: !1887, inlinedAt: !1908)
!1911 = !DILocation(line: 833, column: 3, scope: !1887, inlinedAt: !1908)
!1912 = !DILocation(line: 834, column: 3, scope: !1887, inlinedAt: !1908)
!1913 = !DILocation(line: 835, column: 3, scope: !1887, inlinedAt: !1908)
!1914 = !DILocation(line: 836, column: 1, scope: !1887, inlinedAt: !1908)
!1915 = !DILocation(line: 832, column: 28, scope: !1887, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 845, column: 5, scope: !1903)
!1917 = !DILocation(line: 832, column: 45, scope: !1887, inlinedAt: !1916)
!1918 = !DILocation(line: 832, column: 68, scope: !1887, inlinedAt: !1916)
!1919 = !DILocation(line: 833, column: 3, scope: !1887, inlinedAt: !1916)
!1920 = !DILocation(line: 834, column: 3, scope: !1887, inlinedAt: !1916)
!1921 = !DILocation(line: 835, column: 3, scope: !1887, inlinedAt: !1916)
!1922 = !DILocation(line: 836, column: 1, scope: !1887, inlinedAt: !1916)
!1923 = !DILocation(line: 832, column: 28, scope: !1887, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 846, column: 5, scope: !1903)
!1925 = !DILocation(line: 832, column: 45, scope: !1887, inlinedAt: !1924)
!1926 = !DILocation(line: 832, column: 68, scope: !1887, inlinedAt: !1924)
!1927 = !DILocation(line: 833, column: 3, scope: !1887, inlinedAt: !1924)
!1928 = !DILocation(line: 834, column: 3, scope: !1887, inlinedAt: !1924)
!1929 = !DILocation(line: 835, column: 3, scope: !1887, inlinedAt: !1924)
!1930 = !DILocation(line: 836, column: 1, scope: !1887, inlinedAt: !1924)
!1931 = !DILocation(line: 832, column: 28, scope: !1887, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 847, column: 5, scope: !1903)
!1933 = !DILocation(line: 832, column: 45, scope: !1887, inlinedAt: !1932)
!1934 = !DILocation(line: 832, column: 68, scope: !1887, inlinedAt: !1932)
!1935 = !DILocation(line: 833, column: 3, scope: !1887, inlinedAt: !1932)
!1936 = !DILocation(line: 834, column: 3, scope: !1887, inlinedAt: !1932)
!1937 = !DILocation(line: 835, column: 3, scope: !1887, inlinedAt: !1932)
!1938 = !DILocation(line: 836, column: 1, scope: !1887, inlinedAt: !1932)
!1939 = !DILocation(line: 832, column: 28, scope: !1887, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 848, column: 5, scope: !1903)
!1941 = !DILocation(line: 832, column: 45, scope: !1887, inlinedAt: !1940)
!1942 = !DILocation(line: 832, column: 68, scope: !1887, inlinedAt: !1940)
!1943 = !DILocation(line: 833, column: 3, scope: !1887, inlinedAt: !1940)
!1944 = !DILocation(line: 834, column: 3, scope: !1887, inlinedAt: !1940)
!1945 = !DILocation(line: 835, column: 3, scope: !1887, inlinedAt: !1940)
!1946 = !DILocation(line: 836, column: 1, scope: !1887, inlinedAt: !1940)
!1947 = !DILocation(line: 832, column: 28, scope: !1887, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 849, column: 5, scope: !1903)
!1949 = !DILocation(line: 832, column: 45, scope: !1887, inlinedAt: !1948)
!1950 = !DILocation(line: 832, column: 68, scope: !1887, inlinedAt: !1948)
!1951 = !DILocation(line: 833, column: 3, scope: !1887, inlinedAt: !1948)
!1952 = !DILocation(line: 834, column: 3, scope: !1887, inlinedAt: !1948)
!1953 = !DILocation(line: 835, column: 3, scope: !1887, inlinedAt: !1948)
!1954 = !DILocation(line: 836, column: 1, scope: !1887, inlinedAt: !1948)
!1955 = !DILocation(line: 832, column: 28, scope: !1887, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 850, column: 5, scope: !1903)
!1957 = !DILocation(line: 832, column: 45, scope: !1887, inlinedAt: !1956)
!1958 = !DILocation(line: 832, column: 68, scope: !1887, inlinedAt: !1956)
!1959 = !DILocation(line: 833, column: 3, scope: !1887, inlinedAt: !1956)
!1960 = !DILocation(line: 834, column: 3, scope: !1887, inlinedAt: !1956)
!1961 = !DILocation(line: 835, column: 3, scope: !1887, inlinedAt: !1956)
!1962 = !DILocation(line: 836, column: 1, scope: !1887, inlinedAt: !1956)
!1963 = !DILocation(line: 832, column: 28, scope: !1887, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 851, column: 5, scope: !1903)
!1965 = !DILocation(line: 832, column: 45, scope: !1887, inlinedAt: !1964)
!1966 = !DILocation(line: 832, column: 68, scope: !1887, inlinedAt: !1964)
!1967 = !DILocation(line: 833, column: 3, scope: !1887, inlinedAt: !1964)
!1968 = !DILocation(line: 834, column: 3, scope: !1887, inlinedAt: !1964)
!1969 = !DILocation(line: 835, column: 3, scope: !1887, inlinedAt: !1964)
!1970 = !DILocation(line: 836, column: 1, scope: !1887, inlinedAt: !1964)
!1971 = !DILocation(line: 832, column: 28, scope: !1887, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 852, column: 5, scope: !1903)
!1973 = !DILocation(line: 832, column: 45, scope: !1887, inlinedAt: !1972)
!1974 = !DILocation(line: 832, column: 68, scope: !1887, inlinedAt: !1972)
!1975 = !DILocation(line: 833, column: 3, scope: !1887, inlinedAt: !1972)
!1976 = !DILocation(line: 834, column: 3, scope: !1887, inlinedAt: !1972)
!1977 = !DILocation(line: 835, column: 3, scope: !1887, inlinedAt: !1972)
!1978 = !DILocation(line: 836, column: 1, scope: !1887, inlinedAt: !1972)
!1979 = !DILocation(line: 858, column: 1, scope: !1903)
!1980 = distinct !DISubprogram(name: "luaRemoveUnsupportedFunctions", scope: !3, file: !3, line: 862, type: !828, isLocal: false, isDefinition: true, scopeLine: 862, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1981)
!1981 = !{!1982}
!1982 = !DILocalVariable(name: "lua", arg: 1, scope: !1980, file: !3, line: 862, type: !74)
!1983 = !DILocation(line: 862, column: 47, scope: !1980)
!1984 = !DILocation(line: 863, column: 5, scope: !1980)
!1985 = !DILocation(line: 864, column: 5, scope: !1980)
!1986 = !DILocation(line: 865, column: 5, scope: !1980)
!1987 = !DILocation(line: 866, column: 5, scope: !1980)
!1988 = !DILocation(line: 867, column: 1, scope: !1980)
!1989 = distinct !DISubprogram(name: "scriptingEnableGlobalsProtection", scope: !3, file: !3, line: 874, type: !828, isLocal: false, isDefinition: true, scopeLine: 874, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1990)
!1990 = !{!1991, !1992, !1994, !1995}
!1991 = !DILocalVariable(name: "lua", arg: 1, scope: !1989, file: !3, line: 874, type: !74)
!1992 = !DILocalVariable(name: "s", scope: !1989, file: !3, line: 875, type: !1993)
!1993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !377)
!1994 = !DILocalVariable(name: "code", scope: !1989, file: !3, line: 876, type: !209)
!1995 = !DILocalVariable(name: "j", scope: !1989, file: !3, line: 877, type: !15)
!1996 = !DILocation(line: 874, column: 50, scope: !1989)
!1997 = !DILocation(line: 875, column: 5, scope: !1989)
!1998 = !DILocation(line: 875, column: 11, scope: !1989)
!1999 = !DILocation(line: 876, column: 16, scope: !1989)
!2000 = !DILocation(line: 876, column: 9, scope: !1989)
!2001 = !DILocation(line: 877, column: 9, scope: !1989)
!2002 = !DILocation(line: 881, column: 11, scope: !1989)
!2003 = !DILocation(line: 883, column: 5, scope: !1989)
!2004 = !DILocation(line: 883, column: 11, scope: !1989)
!2005 = !DILocation(line: 885, column: 5, scope: !1989)
!2006 = !DILocation(line: 885, column: 11, scope: !1989)
!2007 = !DILocation(line: 887, column: 5, scope: !1989)
!2008 = !DILocation(line: 887, column: 11, scope: !1989)
!2009 = !DILocation(line: 889, column: 5, scope: !1989)
!2010 = !DILocation(line: 889, column: 11, scope: !1989)
!2011 = !DILocation(line: 891, column: 5, scope: !1989)
!2012 = !DILocation(line: 891, column: 11, scope: !1989)
!2013 = !DILocation(line: 893, column: 5, scope: !1989)
!2014 = !DILocation(line: 893, column: 11, scope: !1989)
!2015 = !DILocation(line: 895, column: 5, scope: !1989)
!2016 = !DILocation(line: 895, column: 11, scope: !1989)
!2017 = !DILocation(line: 897, column: 5, scope: !1989)
!2018 = !DILocation(line: 897, column: 11, scope: !1989)
!2019 = !DILocation(line: 899, column: 5, scope: !1989)
!2020 = !DILocation(line: 899, column: 11, scope: !1989)
!2021 = !DILocation(line: 902, column: 10, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 902, column: 5)
!2023 = !DILocation(line: 902, column: 5, scope: !2022)
!2024 = !DILocation(line: 902, column: 63, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 902, column: 5)
!2026 = !DILocation(line: 902, column: 43, scope: !2025)
!2027 = !DILocation(line: 902, column: 32, scope: !2025)
!2028 = !DILocation(line: 902, column: 5, scope: !2025)
!2029 = !DILocation(line: 902, column: 17, scope: !2025)
!2030 = !DILocation(line: 902, column: 22, scope: !2025)
!2031 = distinct !{!2031, !2023, !2032}
!2032 = !DILocation(line: 902, column: 75, scope: !2022)
!2033 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 903, column: 30, scope: !1989)
!2035 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !2034)
!2036 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !2034)
!2037 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !2034)
!2038 = !DILocation(line: 91, column: 20, scope: !1496, inlinedAt: !2034)
!2039 = !DILocation(line: 91, column: 13, scope: !1496, inlinedAt: !2034)
!2040 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !2034)
!2041 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !2034)
!2042 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !2034)
!2043 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !2034)
!2044 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !2034)
!2045 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !2034)
!2046 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !2034)
!2047 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !2034)
!2048 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !2034)
!2049 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !2034)
!2050 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !2034)
!2051 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !2034)
!2052 = !DILocation(line: 0, scope: !1496, inlinedAt: !2034)
!2053 = !DILocation(line: 0, scope: !1989)
!2054 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !2034)
!2055 = !DILocation(line: 903, column: 5, scope: !1989)
!2056 = !DILocation(line: 904, column: 5, scope: !1989)
!2057 = !DILocation(line: 905, column: 5, scope: !1989)
!2058 = !DILocation(line: 906, column: 1, scope: !1989)
!2059 = distinct !DISubprogram(name: "scriptingInit", scope: !3, file: !3, line: 918, type: !20, isLocal: false, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2060)
!2060 = !{!2061, !2062, !2063, !2065}
!2061 = !DILocalVariable(name: "setup", arg: 1, scope: !2059, file: !3, line: 918, type: !15)
!2062 = !DILocalVariable(name: "lua", scope: !2059, file: !3, line: 919, type: !74)
!2063 = !DILocalVariable(name: "compare_func", scope: !2064, file: !3, line: 1043, type: !11)
!2064 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 1042, column: 5)
!2065 = !DILocalVariable(name: "errh_func", scope: !2066, file: !3, line: 1057, type: !11)
!2066 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 1056, column: 5)
!2067 = !DILocation(line: 918, column: 24, scope: !2059)
!2068 = !DILocation(line: 919, column: 22, scope: !2059)
!2069 = !DILocation(line: 919, column: 16, scope: !2059)
!2070 = !DILocation(line: 921, column: 9, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 921, column: 9)
!2072 = !DILocation(line: 921, column: 9, scope: !2059)
!2073 = !DILocation(line: 922, column: 27, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 921, column: 16)
!2075 = !DILocation(line: 924, column: 29, scope: !2074)
!2076 = !{!951, !769, i64 3068}
!2077 = !DILocation(line: 1562, column: 12, scope: !2078, inlinedAt: !2081)
!2078 = distinct !DISubprogram(name: "ldbInit", scope: !3, file: !3, line: 1561, type: !2079, isLocal: false, isDefinition: true, scopeLine: 1561, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{null}
!2081 = distinct !DILocation(line: 925, column: 9, scope: !2074)
!2082 = !{!768, !769, i64 0}
!2083 = !DILocation(line: 1563, column: 16, scope: !2078, inlinedAt: !2081)
!2084 = !DILocation(line: 1564, column: 16, scope: !2078, inlinedAt: !2081)
!2085 = !DILocation(line: 1564, column: 14, scope: !2078, inlinedAt: !2081)
!2086 = !DILocation(line: 1565, column: 5, scope: !2078, inlinedAt: !2081)
!2087 = !{!1376, !770, i64 24}
!2088 = !DILocation(line: 1566, column: 20, scope: !2078, inlinedAt: !2081)
!2089 = !DILocation(line: 1566, column: 18, scope: !2078, inlinedAt: !2081)
!2090 = !{!768, !770, i64 32}
!2091 = !DILocation(line: 1567, column: 13, scope: !2078, inlinedAt: !2081)
!2092 = !{!768, !770, i64 312}
!2093 = !DILocation(line: 1568, column: 15, scope: !2078, inlinedAt: !2081)
!2094 = !{!768, !769, i64 320}
!2095 = !DILocation(line: 1569, column: 16, scope: !2078, inlinedAt: !2081)
!2096 = !DILocation(line: 1569, column: 14, scope: !2078, inlinedAt: !2081)
!2097 = !{!768, !770, i64 328}
!2098 = !DILocation(line: 1570, column: 1, scope: !2078, inlinedAt: !2081)
!2099 = !DILocation(line: 926, column: 5, scope: !2074)
!2100 = !DILocation(line: 928, column: 5, scope: !2059)
!2101 = !DILocation(line: 862, column: 47, scope: !1980, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 929, column: 5, scope: !2059)
!2103 = !DILocation(line: 863, column: 5, scope: !1980, inlinedAt: !2102)
!2104 = !DILocation(line: 864, column: 5, scope: !1980, inlinedAt: !2102)
!2105 = !DILocation(line: 865, column: 5, scope: !1980, inlinedAt: !2102)
!2106 = !DILocation(line: 866, column: 5, scope: !1980, inlinedAt: !2102)
!2107 = !DILocation(line: 867, column: 1, scope: !1980, inlinedAt: !2102)
!2108 = !DILocation(line: 934, column: 26, scope: !2059)
!2109 = !DILocation(line: 934, column: 24, scope: !2059)
!2110 = !{!951, !770, i64 3016}
!2111 = !DILocation(line: 935, column: 28, scope: !2059)
!2112 = !{!951, !539, i64 3024}
!2113 = !DILocation(line: 938, column: 5, scope: !2059)
!2114 = !DILocation(line: 941, column: 5, scope: !2059)
!2115 = !DILocation(line: 942, column: 5, scope: !2059)
!2116 = !DILocation(line: 943, column: 5, scope: !2059)
!2117 = !DILocation(line: 946, column: 5, scope: !2059)
!2118 = !DILocation(line: 947, column: 5, scope: !2059)
!2119 = !DILocation(line: 948, column: 5, scope: !2059)
!2120 = !DILocation(line: 951, column: 5, scope: !2059)
!2121 = !DILocation(line: 952, column: 5, scope: !2059)
!2122 = !DILocation(line: 953, column: 5, scope: !2059)
!2123 = !DILocation(line: 955, column: 5, scope: !2059)
!2124 = !DILocation(line: 956, column: 5, scope: !2059)
!2125 = !DILocation(line: 957, column: 5, scope: !2059)
!2126 = !DILocation(line: 959, column: 5, scope: !2059)
!2127 = !DILocation(line: 960, column: 5, scope: !2059)
!2128 = !DILocation(line: 961, column: 5, scope: !2059)
!2129 = !DILocation(line: 963, column: 5, scope: !2059)
!2130 = !DILocation(line: 964, column: 5, scope: !2059)
!2131 = !DILocation(line: 965, column: 5, scope: !2059)
!2132 = !DILocation(line: 967, column: 5, scope: !2059)
!2133 = !DILocation(line: 968, column: 5, scope: !2059)
!2134 = !DILocation(line: 969, column: 5, scope: !2059)
!2135 = !DILocation(line: 972, column: 5, scope: !2059)
!2136 = !DILocation(line: 973, column: 5, scope: !2059)
!2137 = !DILocation(line: 974, column: 5, scope: !2059)
!2138 = !DILocation(line: 977, column: 5, scope: !2059)
!2139 = !DILocation(line: 978, column: 5, scope: !2059)
!2140 = !DILocation(line: 979, column: 5, scope: !2059)
!2141 = !DILocation(line: 980, column: 5, scope: !2059)
!2142 = !DILocation(line: 981, column: 5, scope: !2059)
!2143 = !DILocation(line: 982, column: 5, scope: !2059)
!2144 = !DILocation(line: 985, column: 5, scope: !2059)
!2145 = !DILocation(line: 986, column: 5, scope: !2059)
!2146 = !DILocation(line: 987, column: 5, scope: !2059)
!2147 = !DILocation(line: 990, column: 5, scope: !2059)
!2148 = !DILocation(line: 991, column: 5, scope: !2059)
!2149 = !DILocation(line: 992, column: 5, scope: !2059)
!2150 = !DILocation(line: 994, column: 5, scope: !2059)
!2151 = !DILocation(line: 995, column: 5, scope: !2059)
!2152 = !DILocation(line: 996, column: 5, scope: !2059)
!2153 = !DILocation(line: 998, column: 5, scope: !2059)
!2154 = !DILocation(line: 999, column: 5, scope: !2059)
!2155 = !DILocation(line: 1000, column: 5, scope: !2059)
!2156 = !DILocation(line: 1002, column: 5, scope: !2059)
!2157 = !DILocation(line: 1003, column: 5, scope: !2059)
!2158 = !DILocation(line: 1004, column: 5, scope: !2059)
!2159 = !DILocation(line: 1006, column: 5, scope: !2059)
!2160 = !DILocation(line: 1007, column: 5, scope: !2059)
!2161 = !DILocation(line: 1008, column: 5, scope: !2059)
!2162 = !DILocation(line: 1010, column: 5, scope: !2059)
!2163 = !DILocation(line: 1011, column: 5, scope: !2059)
!2164 = !DILocation(line: 1012, column: 5, scope: !2059)
!2165 = !DILocation(line: 1015, column: 5, scope: !2059)
!2166 = !DILocation(line: 1016, column: 5, scope: !2059)
!2167 = !DILocation(line: 1017, column: 5, scope: !2059)
!2168 = !DILocation(line: 1020, column: 5, scope: !2059)
!2169 = !DILocation(line: 1021, column: 5, scope: !2059)
!2170 = !DILocation(line: 1022, column: 5, scope: !2059)
!2171 = !DILocation(line: 1025, column: 5, scope: !2059)
!2172 = !DILocation(line: 1028, column: 5, scope: !2059)
!2173 = !DILocation(line: 1030, column: 5, scope: !2059)
!2174 = !DILocation(line: 1031, column: 5, scope: !2059)
!2175 = !DILocation(line: 1032, column: 5, scope: !2059)
!2176 = !DILocation(line: 1034, column: 5, scope: !2059)
!2177 = !DILocation(line: 1035, column: 5, scope: !2059)
!2178 = !DILocation(line: 1036, column: 5, scope: !2059)
!2179 = !DILocation(line: 1038, column: 5, scope: !2059)
!2180 = !DILocation(line: 1048, column: 42, scope: !2064)
!2181 = !DILocation(line: 1048, column: 9, scope: !2064)
!2182 = !DILocation(line: 1049, column: 9, scope: !2064)
!2183 = !DILocation(line: 1069, column: 39, scope: !2066)
!2184 = !DILocation(line: 1069, column: 9, scope: !2066)
!2185 = !DILocation(line: 1070, column: 9, scope: !2066)
!2186 = !DILocation(line: 1077, column: 16, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2059, file: !3, line: 1077, column: 9)
!2188 = !DILocation(line: 1077, column: 27, scope: !2187)
!2189 = !DILocation(line: 1077, column: 9, scope: !2059)
!2190 = !DILocation(line: 1078, column: 29, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 1077, column: 36)
!2192 = !DILocation(line: 1078, column: 27, scope: !2191)
!2193 = !DILocation(line: 1079, column: 28, scope: !2191)
!2194 = !DILocation(line: 1079, column: 34, scope: !2191)
!2195 = !DILocation(line: 1080, column: 5, scope: !2191)
!2196 = !DILocation(line: 1085, column: 5, scope: !2059)
!2197 = !DILocation(line: 1087, column: 16, scope: !2059)
!2198 = !{!951, !770, i64 2992}
!2199 = !DILocation(line: 1088, column: 1, scope: !2059)
!2200 = !DILocation(line: 1562, column: 12, scope: !2078)
!2201 = !DILocation(line: 1563, column: 16, scope: !2078)
!2202 = !DILocation(line: 1564, column: 16, scope: !2078)
!2203 = !DILocation(line: 1564, column: 14, scope: !2078)
!2204 = !DILocation(line: 1565, column: 5, scope: !2078)
!2205 = !DILocation(line: 1566, column: 20, scope: !2078)
!2206 = !DILocation(line: 1566, column: 18, scope: !2078)
!2207 = !DILocation(line: 1567, column: 13, scope: !2078)
!2208 = !DILocation(line: 1568, column: 15, scope: !2078)
!2209 = !DILocation(line: 1569, column: 16, scope: !2078)
!2210 = !DILocation(line: 1569, column: 14, scope: !2078)
!2211 = !DILocation(line: 1570, column: 1, scope: !2078)
!2212 = distinct !DISubprogram(name: "redis_math_random", scope: !3, file: !3, line: 1126, type: !818, isLocal: false, isDefinition: true, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2213)
!2213 = !{!2214, !2215, !2216, !2219, !2221}
!2214 = !DILocalVariable(name: "L", arg: 1, scope: !2212, file: !3, line: 1126, type: !74)
!2215 = !DILocalVariable(name: "r", scope: !2212, file: !3, line: 1129, type: !8)
!2216 = !DILocalVariable(name: "u", scope: !2217, file: !3, line: 1137, type: !15)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 1136, column: 13)
!2218 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 1131, column: 26)
!2219 = !DILocalVariable(name: "l", scope: !2220, file: !3, line: 1143, type: !15)
!2220 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 1142, column: 13)
!2221 = !DILocalVariable(name: "u", scope: !2220, file: !3, line: 1144, type: !15)
!2222 = !DILocation(line: 1126, column: 35, scope: !2212)
!2223 = !DILocation(line: 1129, column: 31, scope: !2212)
!2224 = !DILocation(line: 1129, column: 45, scope: !2212)
!2225 = !DILocation(line: 1129, column: 18, scope: !2212)
!2226 = !DILocation(line: 1129, column: 65, scope: !2212)
!2227 = !DILocation(line: 1129, column: 14, scope: !2212)
!2228 = !DILocation(line: 1131, column: 11, scope: !2212)
!2229 = !DILocation(line: 1131, column: 3, scope: !2212)
!2230 = !DILocation(line: 1133, column: 7, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 1132, column: 13)
!2232 = !DILocation(line: 1134, column: 7, scope: !2231)
!2233 = !DILocation(line: 1137, column: 15, scope: !2217)
!2234 = !DILocation(line: 1137, column: 11, scope: !2217)
!2235 = !DILocation(line: 1138, column: 7, scope: !2217)
!2236 = !DILocation(line: 1139, column: 33, scope: !2217)
!2237 = !DILocation(line: 1139, column: 32, scope: !2217)
!2238 = !DILocation(line: 1139, column: 25, scope: !2217)
!2239 = !DILocation(line: 1139, column: 35, scope: !2217)
!2240 = !DILocation(line: 1139, column: 7, scope: !2217)
!2241 = !DILocation(line: 1143, column: 15, scope: !2220)
!2242 = !DILocation(line: 1143, column: 11, scope: !2220)
!2243 = !DILocation(line: 1144, column: 15, scope: !2220)
!2244 = !DILocation(line: 1144, column: 11, scope: !2220)
!2245 = !DILocation(line: 1145, column: 7, scope: !2220)
!2246 = !DILocation(line: 1146, column: 35, scope: !2220)
!2247 = !DILocation(line: 1146, column: 37, scope: !2220)
!2248 = !DILocation(line: 1146, column: 33, scope: !2220)
!2249 = !DILocation(line: 1146, column: 32, scope: !2220)
!2250 = !DILocation(line: 1146, column: 25, scope: !2220)
!2251 = !DILocation(line: 1146, column: 42, scope: !2220)
!2252 = !DILocation(line: 1146, column: 41, scope: !2220)
!2253 = !DILocation(line: 1146, column: 7, scope: !2220)
!2254 = !DILocation(line: 1149, column: 21, scope: !2218)
!2255 = !DILocation(line: 1149, column: 14, scope: !2218)
!2256 = !DILocation(line: 1151, column: 3, scope: !2212)
!2257 = !DILocation(line: 0, scope: !2212)
!2258 = !DILocation(line: 0, scope: !2218)
!2259 = !DILocation(line: 1152, column: 1, scope: !2212)
!2260 = distinct !DISubprogram(name: "redis_math_randomseed", scope: !3, file: !3, line: 1154, type: !818, isLocal: false, isDefinition: true, scopeLine: 1154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2261)
!2261 = !{!2262}
!2262 = !DILocalVariable(name: "L", arg: 1, scope: !2260, file: !3, line: 1154, type: !74)
!2263 = !DILocation(line: 1154, column: 39, scope: !2260)
!2264 = !DILocation(line: 1155, column: 16, scope: !2260)
!2265 = !DILocation(line: 1155, column: 3, scope: !2260)
!2266 = !DILocation(line: 1156, column: 3, scope: !2260)
!2267 = distinct !DISubprogram(name: "scriptingRelease", scope: !3, file: !3, line: 1092, type: !2079, isLocal: false, isDefinition: true, scopeLine: 1092, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!2268 = !DILocation(line: 1093, column: 24, scope: !2267)
!2269 = !DILocation(line: 1093, column: 5, scope: !2267)
!2270 = !DILocation(line: 1094, column: 28, scope: !2267)
!2271 = !DILocation(line: 1095, column: 22, scope: !2267)
!2272 = !DILocation(line: 1095, column: 5, scope: !2267)
!2273 = !DILocation(line: 1096, column: 1, scope: !2267)
!2274 = distinct !DISubprogram(name: "scriptingReset", scope: !3, file: !3, line: 1098, type: !2079, isLocal: false, isDefinition: true, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!2275 = !DILocation(line: 1093, column: 24, scope: !2267, inlinedAt: !2276)
!2276 = distinct !DILocation(line: 1099, column: 5, scope: !2274)
!2277 = !DILocation(line: 1093, column: 5, scope: !2267, inlinedAt: !2276)
!2278 = !DILocation(line: 1094, column: 28, scope: !2267, inlinedAt: !2276)
!2279 = !DILocation(line: 1095, column: 22, scope: !2267, inlinedAt: !2276)
!2280 = !DILocation(line: 1095, column: 5, scope: !2267, inlinedAt: !2276)
!2281 = !DILocation(line: 1096, column: 1, scope: !2267, inlinedAt: !2276)
!2282 = !DILocation(line: 1100, column: 5, scope: !2274)
!2283 = !DILocation(line: 1101, column: 1, scope: !2274)
!2284 = distinct !DISubprogram(name: "luaSetGlobalArray", scope: !3, file: !3, line: 1105, type: !2285, isLocal: false, isDefinition: true, scopeLine: 1105, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{null, !74, !11, !219, !15}
!2287 = !{!2288, !2289, !2290, !2291, !2292}
!2288 = !DILocalVariable(name: "lua", arg: 1, scope: !2284, file: !3, line: 1105, type: !74)
!2289 = !DILocalVariable(name: "var", arg: 2, scope: !2284, file: !3, line: 1105, type: !11)
!2290 = !DILocalVariable(name: "elev", arg: 3, scope: !2284, file: !3, line: 1105, type: !219)
!2291 = !DILocalVariable(name: "elec", arg: 4, scope: !2284, file: !3, line: 1105, type: !15)
!2292 = !DILocalVariable(name: "j", scope: !2284, file: !3, line: 1106, type: !15)
!2293 = !DILocation(line: 1105, column: 35, scope: !2284)
!2294 = !DILocation(line: 1105, column: 46, scope: !2284)
!2295 = !DILocation(line: 1105, column: 58, scope: !2284)
!2296 = !DILocation(line: 1105, column: 68, scope: !2284)
!2297 = !DILocation(line: 1108, column: 5, scope: !2284)
!2298 = !DILocation(line: 1106, column: 9, scope: !2284)
!2299 = !DILocation(line: 1109, column: 10, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 1109, column: 5)
!2301 = !DILocation(line: 1109, column: 19, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2300, file: !3, line: 1109, column: 5)
!2303 = !DILocation(line: 1109, column: 5, scope: !2300)
!2304 = !DILocation(line: 1110, column: 36, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2302, file: !3, line: 1109, column: 32)
!2306 = !DILocation(line: 1110, column: 45, scope: !2305)
!2307 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 1110, column: 49, scope: !2305)
!2309 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !2308)
!2310 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !2308)
!2311 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !2308)
!2312 = !DILocation(line: 91, column: 20, scope: !1496, inlinedAt: !2308)
!2313 = !DILocation(line: 91, column: 13, scope: !1496, inlinedAt: !2308)
!2314 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !2308)
!2315 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !2308)
!2316 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !2308)
!2317 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !2308)
!2318 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !2308)
!2319 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !2308)
!2320 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !2308)
!2321 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !2308)
!2322 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !2308)
!2323 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !2308)
!2324 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !2308)
!2325 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !2308)
!2326 = !DILocation(line: 0, scope: !1496, inlinedAt: !2308)
!2327 = !DILocation(line: 0, scope: !2305)
!2328 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !2308)
!2329 = !DILocation(line: 1110, column: 9, scope: !2305)
!2330 = !DILocation(line: 1111, column: 29, scope: !2305)
!2331 = !DILocation(line: 1111, column: 9, scope: !2305)
!2332 = !DILocation(line: 1109, column: 5, scope: !2302)
!2333 = distinct !{!2333, !2303, !2334}
!2334 = !DILocation(line: 1112, column: 5, scope: !2300)
!2335 = !DILocation(line: 1113, column: 5, scope: !2284)
!2336 = !DILocation(line: 1114, column: 1, scope: !2284)
!2337 = distinct !DISubprogram(name: "luaCreateFunction", scope: !3, file: !3, line: 1180, type: !2338, isLocal: false, isDefinition: true, scopeLine: 1180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2340)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!209, !93, !74, !199}
!2340 = !{!2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348}
!2341 = !DILocalVariable(name: "c", arg: 1, scope: !2337, file: !3, line: 1180, type: !93)
!2342 = !DILocalVariable(name: "lua", arg: 2, scope: !2337, file: !3, line: 1180, type: !74)
!2343 = !DILocalVariable(name: "body", arg: 3, scope: !2337, file: !3, line: 1180, type: !199)
!2344 = !DILocalVariable(name: "funcname", scope: !2337, file: !3, line: 1181, type: !394)
!2345 = !DILocalVariable(name: "de", scope: !2337, file: !3, line: 1182, type: !143)
!2346 = !DILocalVariable(name: "sha", scope: !2337, file: !3, line: 1188, type: !209)
!2347 = !DILocalVariable(name: "funcdef", scope: !2337, file: !3, line: 1194, type: !209)
!2348 = !DILocalVariable(name: "retval", scope: !2337, file: !3, line: 1227, type: !15)
!2349 = !DILocation(line: 91, column: 19, scope: !442, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 1186, column: 5, scope: !2337)
!2351 = !DILocation(line: 1180, column: 31, scope: !2337)
!2352 = !DILocation(line: 1180, column: 45, scope: !2337)
!2353 = !DILocation(line: 1180, column: 56, scope: !2337)
!2354 = !DILocation(line: 1181, column: 5, scope: !2337)
!2355 = !DILocation(line: 1181, column: 10, scope: !2337)
!2356 = !DILocation(line: 1184, column: 17, scope: !2337)
!2357 = !DILocation(line: 1185, column: 5, scope: !2337)
!2358 = !DILocation(line: 1185, column: 17, scope: !2337)
!2359 = !DILocation(line: 1186, column: 21, scope: !2337)
!2360 = !DILocation(line: 1186, column: 30, scope: !2337)
!2361 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 1186, column: 34, scope: !2337)
!2363 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !2362)
!2364 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !2362)
!2365 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !2362)
!2366 = !DILocation(line: 91, column: 20, scope: !1496, inlinedAt: !2362)
!2367 = !DILocation(line: 91, column: 13, scope: !1496, inlinedAt: !2362)
!2368 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !2362)
!2369 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !2362)
!2370 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !2362)
!2371 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !2362)
!2372 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !2362)
!2373 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !2362)
!2374 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !2362)
!2375 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !2362)
!2376 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !2362)
!2377 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !2362)
!2378 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !2362)
!2379 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !2362)
!2380 = !DILocation(line: 0, scope: !1496, inlinedAt: !2362)
!2381 = !DILocation(line: 0, scope: !2337)
!2382 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !2362)
!2383 = !DILocation(line: 89, column: 20, scope: !442, inlinedAt: !2350)
!2384 = !DILocation(line: 89, column: 34, scope: !442, inlinedAt: !2350)
!2385 = !DILocation(line: 89, column: 49, scope: !442, inlinedAt: !2350)
!2386 = !DILocation(line: 90, column: 5, scope: !442, inlinedAt: !2350)
!2387 = !DILocation(line: 91, column: 5, scope: !442, inlinedAt: !2350)
!2388 = !DILocation(line: 90, column: 14, scope: !442, inlinedAt: !2350)
!2389 = !DILocation(line: 95, column: 5, scope: !442, inlinedAt: !2350)
!2390 = !DILocation(line: 96, column: 44, scope: !442, inlinedAt: !2350)
!2391 = !DILocation(line: 96, column: 5, scope: !442, inlinedAt: !2350)
!2392 = !DILocation(line: 97, column: 5, scope: !442, inlinedAt: !2350)
!2393 = !DILocation(line: 93, column: 9, scope: !442, inlinedAt: !2350)
!2394 = !DILocation(line: 99, column: 10, scope: !481, inlinedAt: !2350)
!2395 = !DILocation(line: 99, column: 5, scope: !481, inlinedAt: !2350)
!2396 = !DILocation(line: 100, column: 30, scope: !484, inlinedAt: !2350)
!2397 = !DILocation(line: 100, column: 43, scope: !484, inlinedAt: !2350)
!2398 = !DILocation(line: 100, column: 23, scope: !484, inlinedAt: !2350)
!2399 = !DILocation(line: 100, column: 17, scope: !484, inlinedAt: !2350)
!2400 = !DILocation(line: 100, column: 9, scope: !484, inlinedAt: !2350)
!2401 = !DILocation(line: 100, column: 21, scope: !484, inlinedAt: !2350)
!2402 = !DILocation(line: 101, column: 38, scope: !484, inlinedAt: !2350)
!2403 = !DILocation(line: 101, column: 25, scope: !484, inlinedAt: !2350)
!2404 = !DILocation(line: 101, column: 19, scope: !484, inlinedAt: !2350)
!2405 = !DILocation(line: 101, column: 9, scope: !484, inlinedAt: !2350)
!2406 = !DILocation(line: 101, column: 23, scope: !484, inlinedAt: !2350)
!2407 = !DILocation(line: 99, column: 26, scope: !485, inlinedAt: !2350)
!2408 = !DILocation(line: 99, column: 5, scope: !485, inlinedAt: !2350)
!2409 = !DILocation(line: 99, column: 19, scope: !485, inlinedAt: !2350)
!2410 = !DILocation(line: 103, column: 5, scope: !442, inlinedAt: !2350)
!2411 = !DILocation(line: 103, column: 16, scope: !442, inlinedAt: !2350)
!2412 = !DILocation(line: 104, column: 1, scope: !442, inlinedAt: !2350)
!2413 = !DILocation(line: 1188, column: 15, scope: !2337)
!2414 = !DILocation(line: 1188, column: 9, scope: !2337)
!2415 = !DILocation(line: 1189, column: 31, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2337, file: !3, line: 1189, column: 9)
!2417 = !DILocation(line: 1189, column: 15, scope: !2416)
!2418 = !DILocation(line: 1182, column: 16, scope: !2337)
!2419 = !DILocation(line: 1189, column: 49, scope: !2416)
!2420 = !DILocation(line: 1189, column: 9, scope: !2337)
!2421 = !DILocation(line: 1190, column: 9, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 1189, column: 58)
!2423 = !DILocation(line: 1191, column: 16, scope: !2422)
!2424 = !{!2425, !770, i64 0}
!2425 = !{!"dictEntry", !770, i64 0, !487, i64 8, !770, i64 16}
!2426 = !DILocation(line: 1191, column: 9, scope: !2422)
!2427 = !DILocation(line: 1194, column: 19, scope: !2337)
!2428 = !DILocation(line: 1194, column: 9, scope: !2337)
!2429 = !DILocation(line: 1195, column: 15, scope: !2337)
!2430 = !DILocation(line: 1196, column: 15, scope: !2337)
!2431 = !DILocation(line: 1197, column: 15, scope: !2337)
!2432 = !DILocation(line: 1198, column: 39, scope: !2337)
!2433 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 1198, column: 43, scope: !2337)
!2435 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !2434)
!2436 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !2434)
!2437 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !2434)
!2438 = !DILocation(line: 91, column: 20, scope: !1496, inlinedAt: !2434)
!2439 = !DILocation(line: 91, column: 13, scope: !1496, inlinedAt: !2434)
!2440 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !2434)
!2441 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !2434)
!2442 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !2434)
!2443 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !2434)
!2444 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !2434)
!2445 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !2434)
!2446 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !2434)
!2447 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !2434)
!2448 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !2434)
!2449 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !2434)
!2450 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !2434)
!2451 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !2434)
!2452 = !DILocation(line: 0, scope: !1496, inlinedAt: !2434)
!2453 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !2434)
!2454 = !DILocation(line: 1198, column: 15, scope: !2337)
!2455 = !DILocation(line: 1199, column: 15, scope: !2337)
!2456 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 1201, column: 37, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2337, file: !3, line: 1201, column: 9)
!2459 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !2457)
!2460 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !2457)
!2461 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !2457)
!2462 = !DILocation(line: 91, column: 20, scope: !1496, inlinedAt: !2457)
!2463 = !DILocation(line: 91, column: 13, scope: !1496, inlinedAt: !2457)
!2464 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !2457)
!2465 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !2457)
!2466 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !2457)
!2467 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !2457)
!2468 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !2457)
!2469 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !2457)
!2470 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !2457)
!2471 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !2457)
!2472 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !2457)
!2473 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !2457)
!2474 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !2457)
!2475 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !2457)
!2476 = !DILocation(line: 0, scope: !1496, inlinedAt: !2457)
!2477 = !DILocation(line: 0, scope: !2458)
!2478 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !2457)
!2479 = !DILocation(line: 1201, column: 9, scope: !2458)
!2480 = !DILocation(line: 1201, column: 9, scope: !2337)
!2481 = !DILocation(line: 1202, column: 15, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 1202, column: 13)
!2483 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 1201, column: 70)
!2484 = !DILocation(line: 1202, column: 13, scope: !2483)
!2485 = !DILocation(line: 1205, column: 17, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1202, column: 24)
!2487 = !DILocation(line: 1203, column: 13, scope: !2486)
!2488 = !DILocation(line: 1206, column: 9, scope: !2486)
!2489 = !DILocation(line: 1207, column: 9, scope: !2483)
!2490 = !DILocation(line: 1208, column: 9, scope: !2483)
!2491 = !DILocation(line: 1209, column: 9, scope: !2483)
!2492 = !DILocation(line: 1210, column: 9, scope: !2483)
!2493 = !DILocation(line: 1212, column: 5, scope: !2337)
!2494 = !DILocation(line: 1214, column: 9, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2337, file: !3, line: 1214, column: 9)
!2496 = !DILocation(line: 1214, column: 9, scope: !2337)
!2497 = !DILocation(line: 1215, column: 15, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !3, line: 1215, column: 13)
!2499 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 1214, column: 31)
!2500 = !DILocation(line: 1215, column: 13, scope: !2499)
!2501 = !DILocation(line: 1217, column: 17, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2498, file: !3, line: 1215, column: 24)
!2503 = !DILocation(line: 1216, column: 13, scope: !2502)
!2504 = !DILocation(line: 1218, column: 9, scope: !2502)
!2505 = !DILocation(line: 1219, column: 9, scope: !2499)
!2506 = !DILocation(line: 1220, column: 9, scope: !2499)
!2507 = !DILocation(line: 1221, column: 9, scope: !2499)
!2508 = !DILocation(line: 1227, column: 33, scope: !2337)
!2509 = !DILocation(line: 1227, column: 49, scope: !2337)
!2510 = !DILocation(line: 1227, column: 18, scope: !2337)
!2511 = !DILocation(line: 1227, column: 9, scope: !2337)
!2512 = !DILocation(line: 1228, column: 5, scope: !2337)
!2513 = !DILocation(line: 1229, column: 31, scope: !2337)
!2514 = !DILocation(line: 1229, column: 53, scope: !2337)
!2515 = !DILocation(line: 1229, column: 51, scope: !2337)
!2516 = !DILocation(line: 1229, column: 28, scope: !2337)
!2517 = !DILocation(line: 1230, column: 5, scope: !2337)
!2518 = !DILocation(line: 0, scope: !2483)
!2519 = !DILocation(line: 1232, column: 1, scope: !2337)
!2520 = distinct !DISubprogram(name: "luaMaskCountHook", scope: !3, file: !3, line: 1235, type: !2521, isLocal: false, isDefinition: true, scopeLine: 1235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2524)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{null, !74, !2523}
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!2524 = !{!2525, !2526, !2527}
!2525 = !DILocalVariable(name: "lua", arg: 1, scope: !2520, file: !3, line: 1235, type: !74)
!2526 = !DILocalVariable(name: "ar", arg: 2, scope: !2520, file: !3, line: 1235, type: !2523)
!2527 = !DILocalVariable(name: "elapsed", scope: !2520, file: !3, line: 1236, type: !13)
!2528 = !DILocation(line: 1235, column: 34, scope: !2520)
!2529 = !DILocation(line: 1235, column: 50, scope: !2520)
!2530 = !DILocation(line: 1236, column: 25, scope: !2520)
!2531 = !DILocation(line: 1236, column: 43, scope: !2520)
!2532 = !{!951, !539, i64 3040}
!2533 = !DILocation(line: 1236, column: 34, scope: !2520)
!2534 = !DILocation(line: 1236, column: 15, scope: !2520)
!2535 = !DILocation(line: 1242, column: 27, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 1242, column: 9)
!2537 = !{!951, !539, i64 3032}
!2538 = !DILocation(line: 1242, column: 17, scope: !2536)
!2539 = !DILocation(line: 1242, column: 52, scope: !2536)
!2540 = !DILocation(line: 1242, column: 65, scope: !2536)
!2541 = !DILocation(line: 1242, column: 42, scope: !2536)
!2542 = !DILocation(line: 1243, column: 9, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 1242, column: 71)
!2544 = !DILocation(line: 1244, column: 29, scope: !2543)
!2545 = !DILocation(line: 1250, column: 30, scope: !2543)
!2546 = !DILocation(line: 1250, column: 9, scope: !2543)
!2547 = !DILocation(line: 1251, column: 5, scope: !2543)
!2548 = !DILocation(line: 1252, column: 16, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 1252, column: 9)
!2550 = !DILocation(line: 1252, column: 9, scope: !2549)
!2551 = !DILocation(line: 1252, column: 9, scope: !2520)
!2552 = !DILocation(line: 1252, column: 30, scope: !2549)
!2553 = !DILocation(line: 1253, column: 16, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2520, file: !3, line: 1253, column: 9)
!2555 = !{!951, !769, i64 3072}
!2556 = !DILocation(line: 1253, column: 9, scope: !2554)
!2557 = !DILocation(line: 1253, column: 9, scope: !2520)
!2558 = !DILocation(line: 1254, column: 9, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 1253, column: 26)
!2560 = !DILocation(line: 1255, column: 9, scope: !2559)
!2561 = !DILocation(line: 1256, column: 9, scope: !2559)
!2562 = !DILocation(line: 1257, column: 5, scope: !2559)
!2563 = !DILocation(line: 1258, column: 1, scope: !2520)
!2564 = !DILocation(line: 91, column: 19, scope: !442, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 1302, column: 9, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !403, file: !3, line: 1300, column: 19)
!2567 = !DILocation(line: 1260, column: 33, scope: !386)
!2568 = !DILocation(line: 1260, column: 40, scope: !386)
!2569 = !DILocation(line: 1261, column: 29, scope: !386)
!2570 = !DILocation(line: 1261, column: 16, scope: !386)
!2571 = !DILocation(line: 1262, column: 5, scope: !386)
!2572 = !DILocation(line: 1262, column: 10, scope: !386)
!2573 = !DILocation(line: 1263, column: 5, scope: !386)
!2574 = !DILocation(line: 1264, column: 45, scope: !386)
!2575 = !{!951, !539, i64 2080}
!2576 = !DILocation(line: 1264, column: 15, scope: !386)
!2577 = !DILocation(line: 1265, column: 9, scope: !386)
!2578 = !DILocation(line: 1269, column: 5, scope: !386)
!2579 = !DILocation(line: 1279, column: 29, scope: !386)
!2580 = !DILocation(line: 1280, column: 28, scope: !386)
!2581 = !DILocation(line: 1281, column: 44, scope: !386)
!2582 = !{!951, !769, i64 3076}
!2583 = !DILocation(line: 1281, column: 35, scope: !386)
!2584 = !DILocation(line: 1282, column: 30, scope: !386)
!2585 = !DILocation(line: 1283, column: 21, scope: !386)
!2586 = !DILocation(line: 1286, column: 43, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1286, column: 9)
!2588 = !DILocation(line: 1286, column: 40, scope: !2587)
!2589 = !DILocation(line: 1263, column: 15, scope: !386)
!2590 = !DILocation(line: 1286, column: 9, scope: !2587)
!2591 = !DILocation(line: 1286, column: 66, scope: !2587)
!2592 = !DILocation(line: 1286, column: 9, scope: !386)
!2593 = !DILocation(line: 1288, column: 9, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1288, column: 9)
!2595 = !DILocation(line: 1288, column: 23, scope: !2594)
!2596 = !DILocation(line: 1288, column: 28, scope: !2594)
!2597 = !DILocation(line: 1288, column: 19, scope: !2594)
!2598 = !DILocation(line: 1288, column: 17, scope: !2594)
!2599 = !DILocation(line: 1288, column: 9, scope: !386)
!2600 = !DILocation(line: 1289, column: 9, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 1288, column: 34)
!2602 = !DILocation(line: 1290, column: 9, scope: !2601)
!2603 = !DILocation(line: 1291, column: 24, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 1291, column: 16)
!2605 = !DILocation(line: 1291, column: 16, scope: !2594)
!2606 = !DILocation(line: 1292, column: 9, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 1291, column: 29)
!2608 = !DILocation(line: 1293, column: 9, scope: !2607)
!2609 = !DILocation(line: 1298, column: 17, scope: !386)
!2610 = !DILocation(line: 1299, column: 5, scope: !386)
!2611 = !DILocation(line: 1299, column: 17, scope: !386)
!2612 = !DILocation(line: 1300, column: 10, scope: !403)
!2613 = !DILocation(line: 1300, column: 9, scope: !386)
!2614 = !DILocation(line: 1302, column: 25, scope: !2566)
!2615 = !DILocation(line: 1302, column: 31, scope: !2566)
!2616 = !DILocation(line: 1302, column: 28, scope: !2566)
!2617 = !DILocation(line: 1302, column: 40, scope: !2566)
!2618 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 1302, column: 44, scope: !2566)
!2620 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !2619)
!2621 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !2619)
!2622 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !2619)
!2623 = !DILocation(line: 91, column: 20, scope: !1496, inlinedAt: !2619)
!2624 = !DILocation(line: 91, column: 13, scope: !1496, inlinedAt: !2619)
!2625 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !2619)
!2626 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !2619)
!2627 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !2619)
!2628 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !2619)
!2629 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !2619)
!2630 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !2619)
!2631 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !2619)
!2632 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !2619)
!2633 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !2619)
!2634 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !2619)
!2635 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !2619)
!2636 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !2619)
!2637 = !DILocation(line: 0, scope: !1496, inlinedAt: !2619)
!2638 = !DILocation(line: 0, scope: !2566)
!2639 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !2619)
!2640 = !DILocation(line: 89, column: 20, scope: !442, inlinedAt: !2565)
!2641 = !DILocation(line: 89, column: 34, scope: !442, inlinedAt: !2565)
!2642 = !DILocation(line: 89, column: 49, scope: !442, inlinedAt: !2565)
!2643 = !DILocation(line: 90, column: 5, scope: !442, inlinedAt: !2565)
!2644 = !DILocation(line: 91, column: 5, scope: !442, inlinedAt: !2565)
!2645 = !DILocation(line: 90, column: 14, scope: !442, inlinedAt: !2565)
!2646 = !DILocation(line: 95, column: 5, scope: !442, inlinedAt: !2565)
!2647 = !DILocation(line: 96, column: 44, scope: !442, inlinedAt: !2565)
!2648 = !DILocation(line: 96, column: 5, scope: !442, inlinedAt: !2565)
!2649 = !DILocation(line: 97, column: 5, scope: !442, inlinedAt: !2565)
!2650 = !DILocation(line: 93, column: 9, scope: !442, inlinedAt: !2565)
!2651 = !DILocation(line: 99, column: 10, scope: !481, inlinedAt: !2565)
!2652 = !DILocation(line: 99, column: 5, scope: !481, inlinedAt: !2565)
!2653 = !DILocation(line: 100, column: 30, scope: !484, inlinedAt: !2565)
!2654 = !DILocation(line: 100, column: 43, scope: !484, inlinedAt: !2565)
!2655 = !DILocation(line: 100, column: 23, scope: !484, inlinedAt: !2565)
!2656 = !DILocation(line: 100, column: 17, scope: !484, inlinedAt: !2565)
!2657 = !DILocation(line: 100, column: 9, scope: !484, inlinedAt: !2565)
!2658 = !DILocation(line: 100, column: 21, scope: !484, inlinedAt: !2565)
!2659 = !DILocation(line: 101, column: 38, scope: !484, inlinedAt: !2565)
!2660 = !DILocation(line: 101, column: 25, scope: !484, inlinedAt: !2565)
!2661 = !DILocation(line: 101, column: 19, scope: !484, inlinedAt: !2565)
!2662 = !DILocation(line: 101, column: 9, scope: !484, inlinedAt: !2565)
!2663 = !DILocation(line: 101, column: 23, scope: !484, inlinedAt: !2565)
!2664 = !DILocation(line: 99, column: 26, scope: !485, inlinedAt: !2565)
!2665 = !DILocation(line: 99, column: 5, scope: !485, inlinedAt: !2565)
!2666 = !DILocation(line: 99, column: 19, scope: !485, inlinedAt: !2565)
!2667 = !DILocation(line: 103, column: 5, scope: !442, inlinedAt: !2565)
!2668 = !DILocation(line: 103, column: 16, scope: !442, inlinedAt: !2565)
!2669 = !DILocation(line: 104, column: 1, scope: !442, inlinedAt: !2565)
!2670 = !DILocation(line: 1303, column: 5, scope: !2566)
!2671 = !DILocation(line: 1306, column: 24, scope: !402)
!2672 = !DILocation(line: 1306, column: 21, scope: !402)
!2673 = !DILocation(line: 1306, column: 33, scope: !402)
!2674 = !DILocation(line: 1306, column: 15, scope: !402)
!2675 = !DILocation(line: 1305, column: 13, scope: !402)
!2676 = !DILocation(line: 1311, column: 14, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !402, file: !3, line: 1311, column: 9)
!2678 = !DILocation(line: 1311, column: 9, scope: !2677)
!2679 = !DILocation(line: 1312, column: 30, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 1311, column: 9)
!2681 = !DILocation(line: 1312, column: 37, scope: !2680)
!2682 = !DILocation(line: 1312, column: 44, scope: !2680)
!2683 = !DILocation(line: 1312, column: 54, scope: !2680)
!2684 = !DILocation(line: 1312, column: 29, scope: !2680)
!2685 = !DILocation(line: 1313, column: 23, scope: !2680)
!2686 = !DILocation(line: 1312, column: 23, scope: !2680)
!2687 = !DILocation(line: 1312, column: 13, scope: !2680)
!2688 = !DILocation(line: 1312, column: 27, scope: !2680)
!2689 = !DILocation(line: 1311, column: 30, scope: !2680)
!2690 = !DILocation(line: 1311, column: 9, scope: !2680)
!2691 = !DILocation(line: 1311, column: 23, scope: !2680)
!2692 = distinct !{!2692, !2678, !2693}
!2693 = !DILocation(line: 1313, column: 41, scope: !2677)
!2694 = !DILocation(line: 1314, column: 9, scope: !402)
!2695 = !DILocation(line: 1314, column: 22, scope: !402)
!2696 = !DILocation(line: 1318, column: 5, scope: !386)
!2697 = !DILocation(line: 1321, column: 5, scope: !386)
!2698 = !DILocation(line: 1322, column: 9, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1322, column: 9)
!2700 = !DILocation(line: 1322, column: 9, scope: !386)
!2701 = !DILocation(line: 1323, column: 9, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 1322, column: 28)
!2703 = !DILocation(line: 1327, column: 13, scope: !2702)
!2704 = !DILocation(line: 1328, column: 13, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 1327, column: 22)
!2706 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 1327, column: 13)
!2707 = !DILocation(line: 1329, column: 32, scope: !2705)
!2708 = !{!940, !770, i64 152}
!2709 = !DILocation(line: 1329, column: 13, scope: !2705)
!2710 = !DILocation(line: 1330, column: 13, scope: !2705)
!2711 = !DILocation(line: 1332, column: 40, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 1332, column: 13)
!2713 = !DILocation(line: 1332, column: 37, scope: !2712)
!2714 = !DILocation(line: 1332, column: 13, scope: !2712)
!2715 = !DILocation(line: 1332, column: 49, scope: !2712)
!2716 = !DILocation(line: 1332, column: 13, scope: !2702)
!2717 = !DILocation(line: 1333, column: 13, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2712, file: !3, line: 1332, column: 58)
!2719 = !DILocation(line: 1336, column: 13, scope: !2718)
!2720 = !DILocation(line: 1339, column: 9, scope: !2702)
!2721 = !DILocation(line: 1340, column: 9, scope: !2702)
!2722 = !DILocation(line: 1345, column: 37, scope: !386)
!2723 = !DILocation(line: 1345, column: 41, scope: !386)
!2724 = !DILocation(line: 1345, column: 44, scope: !386)
!2725 = !DILocation(line: 1345, column: 5, scope: !386)
!2726 = !DILocation(line: 1346, column: 37, scope: !386)
!2727 = !DILocation(line: 1346, column: 41, scope: !386)
!2728 = !DILocation(line: 1346, column: 44, scope: !386)
!2729 = !DILocation(line: 1346, column: 43, scope: !386)
!2730 = !DILocation(line: 1346, column: 55, scope: !386)
!2731 = !DILocation(line: 1346, column: 59, scope: !386)
!2732 = !DILocation(line: 1346, column: 52, scope: !386)
!2733 = !DILocation(line: 1346, column: 5, scope: !386)
!2734 = !DILocation(line: 1349, column: 21, scope: !386)
!2735 = !DILocation(line: 1349, column: 35, scope: !386)
!2736 = !{!966, !770, i64 16}
!2737 = !DILocation(line: 1349, column: 39, scope: !386)
!2738 = !{!2739, !769, i64 40}
!2739 = !{!"redisDb", !770, i64 0, !770, i64 8, !770, i64 16, !770, i64 24, !770, i64 32, !769, i64 40, !539, i64 48, !770, i64 56}
!2740 = !DILocation(line: 1349, column: 5, scope: !386)
!2741 = !DILocation(line: 1358, column: 23, scope: !386)
!2742 = !DILocation(line: 1359, column: 29, scope: !386)
!2743 = !DILocation(line: 1359, column: 27, scope: !386)
!2744 = !DILocation(line: 1360, column: 21, scope: !386)
!2745 = !DILocation(line: 1361, column: 16, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1361, column: 9)
!2747 = !DILocation(line: 1361, column: 31, scope: !2746)
!2748 = !DILocation(line: 1361, column: 42, scope: !2746)
!2749 = !DILocation(line: 1361, column: 49, scope: !2746)
!2750 = !DILocation(line: 1361, column: 35, scope: !2746)
!2751 = !DILocation(line: 1362, column: 9, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 1361, column: 55)
!2753 = !DILocation(line: 1364, column: 5, scope: !2752)
!2754 = !DILocation(line: 1364, column: 16, scope: !2746)
!2755 = !DILocation(line: 1365, column: 28, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 1364, column: 28)
!2757 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 1364, column: 16)
!2758 = !DILocation(line: 1365, column: 9, scope: !2756)
!2759 = !DILocation(line: 1367, column: 5, scope: !2756)
!2760 = !DILocation(line: 1372, column: 11, scope: !386)
!2761 = !DILocation(line: 1265, column: 22, scope: !386)
!2762 = !DILocation(line: 1375, column: 9, scope: !386)
!2763 = !DILocation(line: 0, scope: !2756)
!2764 = !DILocation(line: 1375, column: 18, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1375, column: 9)
!2766 = !DILocation(line: 0, scope: !2765)
!2767 = !DILocation(line: 1376, column: 16, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1376, column: 9)
!2769 = !DILocation(line: 1376, column: 9, scope: !2768)
!2770 = !DILocation(line: 1376, column: 9, scope: !386)
!2771 = !DILocation(line: 1377, column: 29, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2768, file: !3, line: 1376, column: 30)
!2773 = !DILocation(line: 1380, column: 9, scope: !2772)
!2774 = !DILocation(line: 1381, column: 20, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2772, file: !3, line: 1381, column: 13)
!2776 = !DILocation(line: 1381, column: 13, scope: !2775)
!2777 = !DILocation(line: 1381, column: 41, scope: !2775)
!2778 = !DILocation(line: 1381, column: 34, scope: !2775)
!2779 = !DILocation(line: 1381, column: 31, scope: !2775)
!2780 = !DILocation(line: 1382, column: 13, scope: !2775)
!2781 = !DILocation(line: 1384, column: 23, scope: !386)
!2782 = !DILocation(line: 1396, column: 17, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1393, column: 5)
!2784 = !DILocation(line: 1397, column: 22, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2783, file: !3, line: 1397, column: 13)
!2786 = !DILocation(line: 1397, column: 13, scope: !2783)
!2787 = !DILocation(line: 1398, column: 13, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2785, file: !3, line: 1397, column: 46)
!2789 = !DILocation(line: 1399, column: 22, scope: !2788)
!2790 = !DILocation(line: 1400, column: 9, scope: !2788)
!2791 = !DILocation(line: 1403, column: 9, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1403, column: 9)
!2793 = !DILocation(line: 1403, column: 9, scope: !386)
!2794 = !DILocation(line: 1405, column: 23, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 1403, column: 14)
!2796 = !DILocation(line: 1404, column: 9, scope: !2795)
!2797 = !DILocation(line: 1406, column: 9, scope: !2795)
!2798 = !DILocation(line: 1407, column: 5, scope: !2795)
!2799 = !DILocation(line: 1410, column: 9, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2792, file: !3, line: 1407, column: 12)
!2801 = !DILocation(line: 1411, column: 9, scope: !2800)
!2802 = !DILocation(line: 1416, column: 16, scope: !409)
!2803 = !DILocation(line: 1416, column: 9, scope: !409)
!2804 = !DILocation(line: 1416, column: 9, scope: !386)
!2805 = !DILocation(line: 1417, column: 9, scope: !408)
!2806 = !DILocation(line: 1418, column: 20, scope: !407)
!2807 = !DILocation(line: 1418, column: 13, scope: !407)
!2808 = !DILocation(line: 1418, column: 13, scope: !408)
!2809 = !DILocation(line: 1419, column: 13, scope: !406)
!2810 = !DILocation(line: 1419, column: 19, scope: !406)
!2811 = !DILocation(line: 1420, column: 27, scope: !406)
!2812 = !DILocation(line: 1420, column: 13, scope: !406)
!2813 = !DILocation(line: 1420, column: 25, scope: !406)
!2814 = !DILocation(line: 1421, column: 34, scope: !406)
!2815 = !{!951, !770, i64 960}
!2816 = !DILocation(line: 1421, column: 49, scope: !406)
!2817 = !DILocation(line: 1421, column: 53, scope: !406)
!2818 = !DILocation(line: 1421, column: 13, scope: !406)
!2819 = !DILocation(line: 1423, column: 26, scope: !406)
!2820 = !DILocation(line: 1423, column: 13, scope: !406)
!2821 = !DILocation(line: 1424, column: 9, scope: !407)
!2822 = !DILocation(line: 1424, column: 9, scope: !406)
!2823 = !DILocation(line: 1437, column: 9, scope: !417)
!2824 = !DILocation(line: 1437, column: 28, scope: !417)
!2825 = !DILocation(line: 1437, column: 21, scope: !417)
!2826 = !DILocation(line: 1437, column: 17, scope: !417)
!2827 = !DILocation(line: 1438, column: 46, scope: !415)
!2828 = !DILocation(line: 1438, column: 43, scope: !415)
!2829 = !DILocation(line: 1438, column: 55, scope: !415)
!2830 = !DILocation(line: 1438, column: 14, scope: !415)
!2831 = !DILocation(line: 1438, column: 13, scope: !416)
!2832 = !DILocation(line: 1442, column: 50, scope: !414)
!2833 = !DILocation(line: 1442, column: 65, scope: !414)
!2834 = !DILocation(line: 1442, column: 62, scope: !414)
!2835 = !DILocation(line: 1442, column: 74, scope: !414)
!2836 = !DILocation(line: 1442, column: 28, scope: !414)
!2837 = !DILocation(line: 1442, column: 19, scope: !414)
!2838 = !DILocation(line: 1444, column: 42, scope: !414)
!2839 = !DILocation(line: 1444, column: 39, scope: !414)
!2840 = !DILocation(line: 1444, column: 51, scope: !414)
!2841 = !DILocation(line: 1444, column: 13, scope: !414)
!2842 = !DILocation(line: 1445, column: 13, scope: !414)
!2843 = !DILocation(line: 1451, column: 24, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !414, file: !3, line: 1451, column: 17)
!2845 = !DILocation(line: 1451, column: 30, scope: !2844)
!2846 = !DILocation(line: 1451, column: 17, scope: !414)
!2847 = !DILocation(line: 1453, column: 35, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 1451, column: 55)
!2849 = !DILocation(line: 1453, column: 21, scope: !2848)
!2850 = !DILocation(line: 1454, column: 35, scope: !2848)
!2851 = !DILocation(line: 1454, column: 21, scope: !2848)
!2852 = !DILocation(line: 1452, column: 17, scope: !2848)
!2853 = !DILocation(line: 1456, column: 13, scope: !2848)
!2854 = !DILocation(line: 1458, column: 35, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 1456, column: 20)
!2856 = !DILocation(line: 1458, column: 21, scope: !2855)
!2857 = !DILocation(line: 1457, column: 17, scope: !2855)
!2858 = !DILocation(line: 1459, column: 17, scope: !2855)
!2859 = !DILocation(line: 1461, column: 13, scope: !414)
!2860 = !DILocation(line: 1462, column: 9, scope: !414)
!2861 = !DILocation(line: 0, scope: !2587)
!2862 = !DILocation(line: 1464, column: 1, scope: !386)
!2863 = distinct !DISubprogram(name: "luaLdbLineHook", scope: !3, file: !3, line: 2409, type: !2521, isLocal: false, isDefinition: true, scopeLine: 2409, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2864)
!2864 = !{!2865, !2866, !2867, !2868, !2869, !2872, !2873}
!2865 = !DILocalVariable(name: "lua", arg: 1, scope: !2863, file: !3, line: 2409, type: !74)
!2866 = !DILocalVariable(name: "ar", arg: 2, scope: !2863, file: !3, line: 2409, type: !2523)
!2867 = !DILocalVariable(name: "bp", scope: !2863, file: !3, line: 2414, type: !15)
!2868 = !DILocalVariable(name: "timeout", scope: !2863, file: !3, line: 2415, type: !15)
!2869 = !DILocalVariable(name: "elapsed", scope: !2870, file: !3, line: 2422, type: !283)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 2421, column: 65)
!2871 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 2421, column: 9)
!2872 = !DILocalVariable(name: "timelimit", scope: !2870, file: !3, line: 2423, type: !283)
!2873 = !DILocalVariable(name: "reason", scope: !2874, file: !3, line: 2434, type: !11)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 2433, column: 25)
!2875 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 2433, column: 9)
!2876 = !DILocation(line: 2409, column: 32, scope: !2863)
!2877 = !DILocation(line: 2409, column: 48, scope: !2863)
!2878 = !DILocation(line: 2410, column: 5, scope: !2863)
!2879 = !DILocation(line: 2411, column: 5, scope: !2863)
!2880 = !DILocation(line: 2412, column: 27, scope: !2863)
!2881 = !DILocation(line: 2412, column: 21, scope: !2863)
!2882 = !DILocalVariable(name: "line", arg: 1, scope: !2883, file: !3, line: 1795, type: !15)
!2883 = distinct !DISubprogram(name: "ldbIsBreakpoint", scope: !3, file: !3, line: 1795, type: !2884, isLocal: false, isDefinition: true, scopeLine: 1795, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!15, !15}
!2886 = !{!2882, !2887}
!2887 = !DILocalVariable(name: "j", scope: !2883, file: !3, line: 1796, type: !15)
!2888 = !DILocation(line: 1795, column: 25, scope: !2883, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 2414, column: 14, scope: !2863)
!2890 = !DILocation(line: 1796, column: 9, scope: !2883, inlinedAt: !2889)
!2891 = !DILocation(line: 1798, column: 10, scope: !2892, inlinedAt: !2889)
!2892 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 1798, column: 5)
!2893 = !DILocation(line: 1798, column: 25, scope: !2894, inlinedAt: !2889)
!2894 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 1798, column: 5)
!2895 = !{!768, !769, i64 296}
!2896 = !DILocation(line: 1798, column: 19, scope: !2894, inlinedAt: !2889)
!2897 = !DILocation(line: 1798, column: 5, scope: !2892, inlinedAt: !2889)
!2898 = !DILocation(line: 1799, column: 13, scope: !2899, inlinedAt: !2889)
!2899 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 1799, column: 13)
!2900 = !DILocation(line: 1799, column: 23, scope: !2899, inlinedAt: !2889)
!2901 = !DILocation(line: 1799, column: 13, scope: !2894, inlinedAt: !2889)
!2902 = !DILocation(line: 1798, column: 35, scope: !2894, inlinedAt: !2889)
!2903 = !DILocation(line: 1798, column: 5, scope: !2894, inlinedAt: !2889)
!2904 = distinct !{!2904, !2905, !2906}
!2905 = !DILocation(line: 1798, column: 5, scope: !2892)
!2906 = !DILocation(line: 1799, column: 39, scope: !2892)
!2907 = !DILocation(line: 0, scope: !2883, inlinedAt: !2889)
!2908 = !DILocation(line: 0, scope: !2863)
!2909 = !DILocation(line: 1801, column: 1, scope: !2883, inlinedAt: !2889)
!2910 = !DILocation(line: 2414, column: 54, scope: !2863)
!2911 = !DILocation(line: 2414, column: 47, scope: !2863)
!2912 = !DILocation(line: 2415, column: 9, scope: !2863)
!2913 = !DILocation(line: 2418, column: 15, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2863, file: !3, line: 2418, column: 8)
!2915 = !DILocation(line: 2418, column: 8, scope: !2914)
!2916 = !DILocation(line: 2418, column: 44, scope: !2914)
!2917 = !DILocation(line: 2418, column: 8, scope: !2863)
!2918 = !DILocation(line: 2421, column: 13, scope: !2871)
!2919 = !{!801, !769, i64 0}
!2920 = !DILocation(line: 2421, column: 19, scope: !2871)
!2921 = !DILocation(line: 2421, column: 43, scope: !2871)
!2922 = !DILocation(line: 2421, column: 48, scope: !2871)
!2923 = !DILocation(line: 2421, column: 36, scope: !2871)
!2924 = !DILocation(line: 2421, column: 59, scope: !2871)
!2925 = !DILocation(line: 2422, column: 28, scope: !2870)
!2926 = !DILocation(line: 2422, column: 46, scope: !2870)
!2927 = !DILocation(line: 2422, column: 37, scope: !2870)
!2928 = !DILocation(line: 2422, column: 18, scope: !2870)
!2929 = !DILocation(line: 2423, column: 37, scope: !2870)
!2930 = !DILocation(line: 2423, column: 30, scope: !2870)
!2931 = !DILocation(line: 2423, column: 18, scope: !2870)
!2932 = !DILocation(line: 2425, column: 21, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 2425, column: 13)
!2934 = !DILocation(line: 2425, column: 13, scope: !2870)
!2935 = !DILocation(line: 2427, column: 22, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 2425, column: 35)
!2937 = !{!768, !769, i64 300}
!2938 = !DILocation(line: 2431, column: 5, scope: !2871)
!2939 = !DILocation(line: 2429, column: 13, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 2428, column: 16)
!2941 = !DILocation(line: 2433, column: 13, scope: !2875)
!2942 = !DILocation(line: 2433, column: 18, scope: !2875)
!2943 = !DILocation(line: 2435, column: 13, scope: !2874)
!2944 = !DILocation(line: 2435, column: 30, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 2435, column: 13)
!2946 = !DILocation(line: 2435, column: 26, scope: !2945)
!2947 = !DILocation(line: 2434, column: 15, scope: !2874)
!2948 = !DILocation(line: 2435, column: 17, scope: !2945)
!2949 = !DILocation(line: 2437, column: 18, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 2437, column: 18)
!2951 = !DILocation(line: 2437, column: 18, scope: !2945)
!2952 = !DILocation(line: 0, scope: !2945)
!2953 = !DILocation(line: 2438, column: 18, scope: !2874)
!2954 = !DILocation(line: 0, scope: !2874)
!2955 = !DILocation(line: 2439, column: 19, scope: !2874)
!2956 = !DILocation(line: 2440, column: 29, scope: !2874)
!2957 = !DILocation(line: 2442, column: 17, scope: !2874)
!2958 = !DILocation(line: 2440, column: 16, scope: !2874)
!2959 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !2960)
!2960 = distinct !DILocation(line: 2440, column: 9, scope: !2874)
!2961 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !2960)
!2962 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !2960)
!2963 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !2960)
!2964 = !DILocation(line: 2443, column: 30, scope: !2874)
!2965 = !DILocation(line: 2443, column: 9, scope: !2874)
!2966 = !DILocation(line: 2444, column: 9, scope: !2874)
!2967 = !DILocation(line: 2445, column: 13, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 2445, column: 13)
!2969 = !DILocation(line: 2445, column: 26, scope: !2968)
!2970 = !DILocation(line: 2445, column: 38, scope: !2968)
!2971 = !DILocation(line: 2445, column: 35, scope: !2968)
!2972 = !DILocation(line: 2449, column: 13, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 2445, column: 47)
!2974 = !DILocation(line: 2450, column: 13, scope: !2973)
!2975 = !DILocation(line: 2451, column: 9, scope: !2973)
!2976 = !DILocation(line: 2452, column: 33, scope: !2874)
!2977 = !DILocation(line: 2452, column: 31, scope: !2874)
!2978 = !DILocation(line: 2453, column: 5, scope: !2874)
!2979 = !DILocation(line: 2454, column: 1, scope: !2863)
!2980 = distinct !DISubprogram(name: "evalCommand", scope: !3, file: !3, line: 1466, type: !91, isLocal: false, isDefinition: true, scopeLine: 1466, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2981)
!2981 = !{!2982}
!2982 = !DILocalVariable(name: "c", arg: 1, scope: !2980, file: !3, line: 1466, type: !93)
!2983 = !DILocation(line: 1466, column: 26, scope: !2980)
!2984 = !DILocation(line: 1467, column: 14, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 1467, column: 9)
!2986 = !DILocation(line: 1467, column: 20, scope: !2985)
!2987 = !DILocation(line: 1467, column: 9, scope: !2980)
!2988 = !DILocation(line: 1468, column: 9, scope: !2985)
!2989 = !DILocalVariable(name: "c", arg: 1, scope: !2990, file: !3, line: 1777, type: !93)
!2990 = distinct !DISubprogram(name: "evalGenericCommandWithDebugging", scope: !3, file: !3, line: 1777, type: !387, isLocal: false, isDefinition: true, scopeLine: 1777, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2991)
!2991 = !{!2989, !2992}
!2992 = !DILocalVariable(name: "evalsha", arg: 2, scope: !2990, file: !3, line: 1777, type: !15)
!2993 = !DILocation(line: 1777, column: 46, scope: !2990, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 1470, column: 9, scope: !2985)
!2995 = !DILocation(line: 1777, column: 53, scope: !2990, inlinedAt: !2994)
!2996 = !DILocation(line: 1778, column: 9, scope: !2997, inlinedAt: !2994)
!2997 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 1778, column: 9)
!2998 = !DILocation(line: 1778, column: 9, scope: !2990, inlinedAt: !2994)
!2999 = !DILocation(line: 1779, column: 9, scope: !3000, inlinedAt: !2994)
!3000 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 1778, column: 29)
!3001 = !DILocation(line: 1780, column: 9, scope: !3000, inlinedAt: !2994)
!3002 = !DILocation(line: 1781, column: 5, scope: !3000, inlinedAt: !2994)
!3003 = !DILocalVariable(name: "c", arg: 1, scope: !3004, file: !3, line: 1597, type: !93)
!3004 = distinct !DISubprogram(name: "ldbDisable", scope: !3, file: !3, line: 1597, type: !91, isLocal: false, isDefinition: true, scopeLine: 1597, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3005)
!3005 = !{!3003}
!3006 = !DILocation(line: 1597, column: 25, scope: !3004, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 1782, column: 9, scope: !3008, inlinedAt: !2994)
!3008 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 1781, column: 12)
!3009 = !DILocation(line: 1598, column: 14, scope: !3004, inlinedAt: !3007)
!3010 = !DILocation(line: 1599, column: 1, scope: !3004, inlinedAt: !3007)
!3011 = !DILocation(line: 1784, column: 1, scope: !2990, inlinedAt: !2994)
!3012 = !DILocation(line: 1471, column: 1, scope: !2980)
!3013 = !DILocation(line: 1777, column: 46, scope: !2990)
!3014 = !DILocation(line: 1777, column: 53, scope: !2990)
!3015 = !DILocation(line: 1778, column: 9, scope: !2997)
!3016 = !DILocation(line: 1778, column: 9, scope: !2990)
!3017 = !DILocation(line: 1779, column: 9, scope: !3000)
!3018 = !DILocation(line: 1780, column: 9, scope: !3000)
!3019 = !DILocation(line: 1781, column: 5, scope: !3000)
!3020 = !DILocation(line: 1597, column: 25, scope: !3004, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 1782, column: 9, scope: !3008)
!3022 = !DILocation(line: 1598, column: 8, scope: !3004, inlinedAt: !3021)
!3023 = !DILocation(line: 1598, column: 14, scope: !3004, inlinedAt: !3021)
!3024 = !DILocation(line: 1599, column: 1, scope: !3004, inlinedAt: !3021)
!3025 = !DILocation(line: 1784, column: 1, scope: !2990)
!3026 = distinct !DISubprogram(name: "evalShaCommand", scope: !3, file: !3, line: 1473, type: !91, isLocal: false, isDefinition: true, scopeLine: 1473, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3027)
!3027 = !{!3028}
!3028 = !DILocalVariable(name: "c", arg: 1, scope: !3026, file: !3, line: 1473, type: !93)
!3029 = !DILocation(line: 1473, column: 29, scope: !3026)
!3030 = !DILocation(line: 1474, column: 19, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 1474, column: 9)
!3032 = !DILocation(line: 1474, column: 16, scope: !3031)
!3033 = !DILocation(line: 1474, column: 28, scope: !3031)
!3034 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 1474, column: 9, scope: !3031)
!3036 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !3035)
!3037 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !3035)
!3038 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !3035)
!3039 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !3035)
!3040 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !3035)
!3041 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !3035)
!3042 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !3035)
!3043 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !3035)
!3044 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !3035)
!3045 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !3035)
!3046 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !3035)
!3047 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !3035)
!3048 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !3035)
!3049 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !3035)
!3050 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !3035)
!3051 = !DILocation(line: 0, scope: !3031)
!3052 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !3035)
!3053 = !DILocation(line: 1474, column: 9, scope: !3026)
!3054 = !DILocation(line: 0, scope: !1496, inlinedAt: !3035)
!3055 = !DILocation(line: 1474, column: 33, scope: !3031)
!3056 = !DILocation(line: 1479, column: 28, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 1474, column: 40)
!3058 = !DILocation(line: 1479, column: 9, scope: !3057)
!3059 = !DILocation(line: 1480, column: 9, scope: !3057)
!3060 = !DILocation(line: 1482, column: 14, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 1482, column: 9)
!3062 = !DILocation(line: 1482, column: 20, scope: !3061)
!3063 = !DILocation(line: 1482, column: 9, scope: !3026)
!3064 = !DILocation(line: 1483, column: 9, scope: !3061)
!3065 = !DILocation(line: 1485, column: 9, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 1484, column: 10)
!3067 = !DILocation(line: 1486, column: 9, scope: !3066)
!3068 = !DILocation(line: 0, scope: !3061)
!3069 = !DILocation(line: 1488, column: 1, scope: !3026)
!3070 = distinct !DISubprogram(name: "scriptCommand", scope: !3, file: !3, line: 1490, type: !91, isLocal: false, isDefinition: true, scopeLine: 1490, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3071)
!3071 = !{!3072, !3073, !3079, !3083}
!3072 = !DILocalVariable(name: "c", arg: 1, scope: !3070, file: !3, line: 1490, type: !93)
!3073 = !DILocalVariable(name: "help", scope: !3074, file: !3, line: 1492, type: !3076)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 1491, column: 62)
!3075 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 1491, column: 9)
!3076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 384, elements: !3077)
!3077 = !{!3078}
!3078 = !DISubrange(count: 6)
!3079 = !DILocalVariable(name: "j", scope: !3080, file: !3, line: 1507, type: !15)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 1506, column: 71)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 1506, column: 16)
!3082 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 1501, column: 16)
!3083 = !DILocalVariable(name: "sha", scope: !3084, file: !3, line: 1517, type: !209)
!3084 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 1516, column: 69)
!3085 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 1516, column: 16)
!3086 = !DILocation(line: 1490, column: 28, scope: !3070)
!3087 = !DILocation(line: 1491, column: 12, scope: !3075)
!3088 = !DILocation(line: 1491, column: 17, scope: !3075)
!3089 = !DILocation(line: 1491, column: 22, scope: !3075)
!3090 = !DILocation(line: 1491, column: 40, scope: !3075)
!3091 = !DILocation(line: 1491, column: 37, scope: !3075)
!3092 = !DILocation(line: 1491, column: 49, scope: !3075)
!3093 = !DILocation(line: 1491, column: 26, scope: !3075)
!3094 = !DILocation(line: 1491, column: 9, scope: !3070)
!3095 = !DILocation(line: 1492, column: 9, scope: !3074)
!3096 = !DILocation(line: 1492, column: 21, scope: !3074)
!3097 = !DILocation(line: 1500, column: 9, scope: !3074)
!3098 = !DILocation(line: 1501, column: 5, scope: !3075)
!3099 = !DILocation(line: 1501, column: 5, scope: !3074)
!3100 = !DILocation(line: 1501, column: 29, scope: !3082)
!3101 = !DILocation(line: 1501, column: 33, scope: !3082)
!3102 = !DILocation(line: 1501, column: 16, scope: !3075)
!3103 = !DILocation(line: 1506, column: 29, scope: !3081)
!3104 = !DILocation(line: 1093, column: 24, scope: !2267, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 1099, column: 5, scope: !2274, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 1502, column: 9, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 1501, column: 70)
!3108 = !DILocation(line: 1093, column: 5, scope: !2267, inlinedAt: !3105)
!3109 = !DILocation(line: 1094, column: 28, scope: !2267, inlinedAt: !3105)
!3110 = !DILocation(line: 1095, column: 22, scope: !2267, inlinedAt: !3105)
!3111 = !DILocation(line: 1095, column: 5, scope: !2267, inlinedAt: !3105)
!3112 = !DILocation(line: 1096, column: 1, scope: !2267, inlinedAt: !3105)
!3113 = !DILocation(line: 1100, column: 5, scope: !2274, inlinedAt: !3106)
!3114 = !DILocation(line: 1101, column: 1, scope: !2274, inlinedAt: !3106)
!3115 = !DILocation(line: 1503, column: 27, scope: !3107)
!3116 = !{!940, !770, i64 8}
!3117 = !DILocation(line: 1503, column: 9, scope: !3107)
!3118 = !DILocation(line: 1504, column: 9, scope: !3107)
!3119 = !DILocation(line: 1505, column: 21, scope: !3107)
!3120 = !DILocation(line: 1506, column: 5, scope: !3107)
!3121 = !DILocation(line: 1506, column: 24, scope: !3081)
!3122 = !DILocation(line: 1506, column: 47, scope: !3081)
!3123 = !DILocation(line: 1506, column: 44, scope: !3081)
!3124 = !DILocation(line: 1506, column: 56, scope: !3081)
!3125 = !DILocation(line: 1516, column: 29, scope: !3085)
!3126 = !DILocation(line: 1521, column: 29, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3085, file: !3, line: 1521, column: 16)
!3128 = !DILocation(line: 1532, column: 29, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3127, file: !3, line: 1532, column: 16)
!3130 = !DILocation(line: 1506, column: 33, scope: !3081)
!3131 = !DILocation(line: 1506, column: 16, scope: !3082)
!3132 = !DILocation(line: 1509, column: 40, scope: !3080)
!3133 = !DILocation(line: 1509, column: 33, scope: !3080)
!3134 = !DILocation(line: 1509, column: 9, scope: !3080)
!3135 = !DILocation(line: 1507, column: 13, scope: !3080)
!3136 = !DILocation(line: 1510, column: 14, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3080, file: !3, line: 1510, column: 9)
!3138 = !DILocation(line: 1510, column: 28, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 1510, column: 9)
!3140 = !DILocation(line: 1510, column: 23, scope: !3139)
!3141 = !DILocation(line: 1510, column: 9, scope: !3137)
!3142 = !DILocation(line: 1511, column: 33, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1511, column: 17)
!3144 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 1510, column: 39)
!3145 = !DILocation(line: 1511, column: 48, scope: !3143)
!3146 = !DILocation(line: 1511, column: 45, scope: !3143)
!3147 = !DILocation(line: 1511, column: 57, scope: !3143)
!3148 = !DILocation(line: 1511, column: 17, scope: !3143)
!3149 = !DILocation(line: 1511, column: 17, scope: !3144)
!3150 = !DILocation(line: 1512, column: 35, scope: !3143)
!3151 = !{!940, !770, i64 40}
!3152 = !DILocation(line: 1512, column: 17, scope: !3143)
!3153 = !DILocation(line: 1514, column: 35, scope: !3143)
!3154 = !{!940, !770, i64 32}
!3155 = !DILocation(line: 1514, column: 17, scope: !3143)
!3156 = !DILocation(line: 1510, column: 35, scope: !3139)
!3157 = !DILocation(line: 1510, column: 9, scope: !3139)
!3158 = distinct !{!3158, !3141, !3159}
!3159 = !DILocation(line: 1515, column: 9, scope: !3137)
!3160 = !DILocation(line: 1516, column: 24, scope: !3085)
!3161 = !DILocation(line: 1516, column: 33, scope: !3085)
!3162 = !DILocation(line: 1516, column: 16, scope: !3081)
!3163 = !DILocation(line: 1517, column: 46, scope: !3084)
!3164 = !DILocation(line: 1517, column: 50, scope: !3084)
!3165 = !DILocation(line: 1517, column: 19, scope: !3084)
!3166 = !DILocation(line: 1517, column: 13, scope: !3084)
!3167 = !DILocation(line: 1518, column: 17, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 1518, column: 13)
!3169 = !DILocation(line: 1518, column: 13, scope: !3084)
!3170 = !DILocation(line: 1519, column: 9, scope: !3084)
!3171 = !DILocation(line: 1520, column: 9, scope: !3084)
!3172 = !DILocation(line: 1521, column: 5, scope: !3085)
!3173 = !DILocation(line: 0, scope: !3168)
!3174 = !DILocation(line: 1521, column: 33, scope: !3127)
!3175 = !DILocation(line: 1521, column: 16, scope: !3085)
!3176 = !DILocation(line: 1522, column: 20, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 1522, column: 13)
!3178 = distinct !DILexicalBlock(scope: !3127, file: !3, line: 1521, column: 69)
!3179 = !DILocation(line: 1522, column: 31, scope: !3177)
!3180 = !DILocation(line: 1522, column: 13, scope: !3178)
!3181 = !DILocation(line: 1523, column: 27, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 1522, column: 40)
!3183 = !DILocation(line: 1523, column: 13, scope: !3182)
!3184 = !DILocation(line: 1524, column: 9, scope: !3182)
!3185 = !DILocation(line: 1524, column: 39, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3177, file: !3, line: 1524, column: 20)
!3187 = !DILocation(line: 1524, column: 45, scope: !3186)
!3188 = !DILocation(line: 1524, column: 20, scope: !3177)
!3189 = !DILocation(line: 1525, column: 27, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 1524, column: 62)
!3191 = !DILocation(line: 1525, column: 13, scope: !3190)
!3192 = !DILocation(line: 1526, column: 9, scope: !3190)
!3193 = !DILocation(line: 1526, column: 27, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 1526, column: 20)
!3195 = !DILocation(line: 1526, column: 20, scope: !3194)
!3196 = !DILocation(line: 1526, column: 20, scope: !3186)
!3197 = !DILocation(line: 1527, column: 27, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 1526, column: 44)
!3199 = !DILocation(line: 1527, column: 13, scope: !3198)
!3200 = !DILocation(line: 1528, column: 9, scope: !3198)
!3201 = !DILocation(line: 1529, column: 29, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 1528, column: 16)
!3203 = !DILocation(line: 1530, column: 31, scope: !3202)
!3204 = !DILocation(line: 1530, column: 13, scope: !3202)
!3205 = !DILocation(line: 1532, column: 33, scope: !3129)
!3206 = !DILocation(line: 1532, column: 16, scope: !3127)
!3207 = !DILocation(line: 1533, column: 13, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 1533, column: 13)
!3209 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 1532, column: 70)
!3210 = !DILocation(line: 1533, column: 13, scope: !3209)
!3211 = !DILocation(line: 1534, column: 13, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 1533, column: 41)
!3213 = !DILocation(line: 1535, column: 13, scope: !3212)
!3214 = !DILocation(line: 1537, column: 28, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 1537, column: 13)
!3216 = !DILocation(line: 1537, column: 25, scope: !3215)
!3217 = !DILocation(line: 1537, column: 37, scope: !3215)
!3218 = !DILocation(line: 1537, column: 14, scope: !3215)
!3219 = !DILocation(line: 1537, column: 13, scope: !3209)
!3220 = !DILocation(line: 1597, column: 25, scope: !3004, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 1538, column: 13, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 1537, column: 48)
!3223 = !DILocation(line: 1598, column: 8, scope: !3004, inlinedAt: !3221)
!3224 = !DILocation(line: 1598, column: 14, scope: !3004, inlinedAt: !3221)
!3225 = !DILocation(line: 1599, column: 1, scope: !3004, inlinedAt: !3221)
!3226 = !DILocation(line: 1539, column: 31, scope: !3222)
!3227 = !DILocation(line: 1539, column: 13, scope: !3222)
!3228 = !DILocation(line: 1540, column: 9, scope: !3222)
!3229 = !DILocation(line: 1540, column: 21, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 1540, column: 20)
!3231 = !DILocation(line: 1540, column: 20, scope: !3215)
!3232 = !DILocalVariable(name: "c", arg: 1, scope: !3233, file: !3, line: 1581, type: !93)
!3233 = distinct !DISubprogram(name: "ldbEnable", scope: !3, file: !3, line: 1581, type: !91, isLocal: false, isDefinition: true, scopeLine: 1581, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3234)
!3234 = !{!3232}
!3235 = !DILocation(line: 1581, column: 24, scope: !3233, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 1541, column: 13, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 1540, column: 56)
!3238 = !DILocation(line: 1582, column: 8, scope: !3233, inlinedAt: !3236)
!3239 = !DILocation(line: 1582, column: 14, scope: !3233, inlinedAt: !3236)
!3240 = !DILocation(line: 1583, column: 21, scope: !3233, inlinedAt: !3236)
!3241 = !DILocalVariable(name: "log", arg: 1, scope: !3242, file: !3, line: 1573, type: !173)
!3242 = distinct !DISubprogram(name: "ldbFlushLog", scope: !3, file: !3, line: 1573, type: !3243, isLocal: false, isDefinition: true, scopeLine: 1573, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3245)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{null, !173}
!3245 = !{!3241, !3246}
!3246 = !DILocalVariable(name: "ln", scope: !3242, file: !3, line: 1574, type: !179)
!3247 = !DILocation(line: 1573, column: 24, scope: !3242, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 1583, column: 5, scope: !3233, inlinedAt: !3236)
!3249 = !DILocation(line: 1576, column: 5, scope: !3242, inlinedAt: !3248)
!3250 = !DILocation(line: 1576, column: 17, scope: !3242, inlinedAt: !3248)
!3251 = !DILocation(line: 1574, column: 15, scope: !3242, inlinedAt: !3248)
!3252 = !DILocation(line: 1576, column: 33, scope: !3242, inlinedAt: !3248)
!3253 = !DILocation(line: 1577, column: 9, scope: !3242, inlinedAt: !3248)
!3254 = distinct !{!3254, !3255, !3256}
!3255 = !DILocation(line: 1576, column: 5, scope: !3242)
!3256 = !DILocation(line: 1577, column: 27, scope: !3242)
!3257 = !DILocation(line: 1578, column: 1, scope: !3242, inlinedAt: !3248)
!3258 = !DILocation(line: 1584, column: 17, scope: !3233, inlinedAt: !3236)
!3259 = !{!966, !769, i64 8}
!3260 = !DILocation(line: 1584, column: 12, scope: !3233, inlinedAt: !3236)
!3261 = !DILocation(line: 1585, column: 14, scope: !3233, inlinedAt: !3236)
!3262 = !DILocation(line: 1586, column: 17, scope: !3233, inlinedAt: !3236)
!3263 = !DILocation(line: 1587, column: 15, scope: !3233, inlinedAt: !3236)
!3264 = !DILocation(line: 1588, column: 17, scope: !3233, inlinedAt: !3236)
!3265 = !DILocation(line: 1588, column: 5, scope: !3233, inlinedAt: !3236)
!3266 = !DILocation(line: 1589, column: 16, scope: !3233, inlinedAt: !3236)
!3267 = !DILocation(line: 1589, column: 14, scope: !3233, inlinedAt: !3236)
!3268 = !DILocation(line: 1590, column: 16, scope: !3233, inlinedAt: !3236)
!3269 = !{!768, !771, i64 336}
!3270 = !DILocation(line: 1591, column: 26, scope: !3233, inlinedAt: !3236)
!3271 = !{!768, !769, i64 344}
!3272 = !DILocation(line: 1592, column: 1, scope: !3233, inlinedAt: !3236)
!3273 = !DILocation(line: 1542, column: 31, scope: !3237)
!3274 = !DILocation(line: 1542, column: 13, scope: !3237)
!3275 = !DILocation(line: 1543, column: 9, scope: !3237)
!3276 = !DILocation(line: 1543, column: 21, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 1543, column: 20)
!3278 = !DILocation(line: 1543, column: 20, scope: !3230)
!3279 = !DILocation(line: 1581, column: 24, scope: !3233, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 1544, column: 13, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 1543, column: 57)
!3282 = !DILocation(line: 1582, column: 8, scope: !3233, inlinedAt: !3280)
!3283 = !DILocation(line: 1582, column: 14, scope: !3233, inlinedAt: !3280)
!3284 = !DILocation(line: 1583, column: 21, scope: !3233, inlinedAt: !3280)
!3285 = !DILocation(line: 1573, column: 24, scope: !3242, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 1583, column: 5, scope: !3233, inlinedAt: !3280)
!3287 = !DILocation(line: 1576, column: 5, scope: !3242, inlinedAt: !3286)
!3288 = !DILocation(line: 1576, column: 17, scope: !3242, inlinedAt: !3286)
!3289 = !DILocation(line: 1574, column: 15, scope: !3242, inlinedAt: !3286)
!3290 = !DILocation(line: 1576, column: 33, scope: !3242, inlinedAt: !3286)
!3291 = !DILocation(line: 1577, column: 9, scope: !3242, inlinedAt: !3286)
!3292 = !DILocation(line: 1578, column: 1, scope: !3242, inlinedAt: !3286)
!3293 = !DILocation(line: 1584, column: 17, scope: !3233, inlinedAt: !3280)
!3294 = !DILocation(line: 1584, column: 12, scope: !3233, inlinedAt: !3280)
!3295 = !DILocation(line: 1585, column: 14, scope: !3233, inlinedAt: !3280)
!3296 = !DILocation(line: 1586, column: 17, scope: !3233, inlinedAt: !3280)
!3297 = !DILocation(line: 1587, column: 15, scope: !3233, inlinedAt: !3280)
!3298 = !DILocation(line: 1588, column: 17, scope: !3233, inlinedAt: !3280)
!3299 = !DILocation(line: 1588, column: 5, scope: !3233, inlinedAt: !3280)
!3300 = !DILocation(line: 1589, column: 16, scope: !3233, inlinedAt: !3280)
!3301 = !DILocation(line: 1589, column: 14, scope: !3233, inlinedAt: !3280)
!3302 = !DILocation(line: 1590, column: 16, scope: !3233, inlinedAt: !3280)
!3303 = !DILocation(line: 1591, column: 26, scope: !3233, inlinedAt: !3280)
!3304 = !DILocation(line: 1592, column: 1, scope: !3233, inlinedAt: !3280)
!3305 = !DILocation(line: 1545, column: 31, scope: !3281)
!3306 = !DILocation(line: 1545, column: 13, scope: !3281)
!3307 = !DILocation(line: 1546, column: 22, scope: !3281)
!3308 = !DILocation(line: 1548, column: 13, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 1547, column: 16)
!3310 = !DILocation(line: 1549, column: 13, scope: !3309)
!3311 = !DILocation(line: 1552, column: 9, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3129, file: !3, line: 1551, column: 12)
!3313 = !DILocation(line: 1554, column: 1, scope: !3070)
!3314 = !DILocation(line: 1597, column: 25, scope: !3004)
!3315 = !DILocation(line: 1598, column: 8, scope: !3004)
!3316 = !DILocation(line: 1598, column: 14, scope: !3004)
!3317 = !DILocation(line: 1599, column: 1, scope: !3004)
!3318 = !DILocation(line: 1581, column: 24, scope: !3233)
!3319 = !DILocation(line: 1582, column: 8, scope: !3233)
!3320 = !DILocation(line: 1582, column: 14, scope: !3233)
!3321 = !DILocation(line: 1583, column: 21, scope: !3233)
!3322 = !DILocation(line: 1573, column: 24, scope: !3242, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 1583, column: 5, scope: !3233)
!3324 = !DILocation(line: 1576, column: 5, scope: !3242, inlinedAt: !3323)
!3325 = !DILocation(line: 1576, column: 17, scope: !3242, inlinedAt: !3323)
!3326 = !DILocation(line: 1574, column: 15, scope: !3242, inlinedAt: !3323)
!3327 = !DILocation(line: 1576, column: 33, scope: !3242, inlinedAt: !3323)
!3328 = !DILocation(line: 1577, column: 9, scope: !3242, inlinedAt: !3323)
!3329 = !DILocation(line: 1578, column: 1, scope: !3242, inlinedAt: !3323)
!3330 = !DILocation(line: 1584, column: 17, scope: !3233)
!3331 = !DILocation(line: 1584, column: 12, scope: !3233)
!3332 = !DILocation(line: 1585, column: 14, scope: !3233)
!3333 = !DILocation(line: 1586, column: 17, scope: !3233)
!3334 = !DILocation(line: 1587, column: 15, scope: !3233)
!3335 = !DILocation(line: 1588, column: 17, scope: !3233)
!3336 = !DILocation(line: 1588, column: 5, scope: !3233)
!3337 = !DILocation(line: 1589, column: 16, scope: !3233)
!3338 = !DILocation(line: 1589, column: 14, scope: !3233)
!3339 = !DILocation(line: 1590, column: 16, scope: !3233)
!3340 = !DILocation(line: 1591, column: 26, scope: !3233)
!3341 = !DILocation(line: 1592, column: 1, scope: !3233)
!3342 = !DILocation(line: 1573, column: 24, scope: !3242)
!3343 = !DILocation(line: 1576, column: 17, scope: !3242)
!3344 = !DILocation(line: 1574, column: 15, scope: !3242)
!3345 = !DILocation(line: 1576, column: 33, scope: !3242)
!3346 = !DILocation(line: 1577, column: 9, scope: !3242)
!3347 = !DILocation(line: 1578, column: 1, scope: !3242)
!3348 = distinct !DISubprogram(name: "ldbLogWithMaxLen", scope: !3, file: !3, line: 1610, type: !781, isLocal: false, isDefinition: true, scopeLine: 1610, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3349)
!3349 = !{!3350, !3351}
!3350 = !DILocalVariable(name: "entry", arg: 1, scope: !3348, file: !3, line: 1610, type: !209)
!3351 = !DILocalVariable(name: "trimmed", scope: !3348, file: !3, line: 1611, type: !15)
!3352 = !DILocation(line: 1610, column: 27, scope: !3348)
!3353 = !DILocation(line: 1611, column: 9, scope: !3348)
!3354 = !DILocation(line: 1612, column: 13, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 1612, column: 9)
!3356 = !DILocation(line: 1612, column: 9, scope: !3355)
!3357 = !DILocation(line: 1612, column: 20, scope: !3355)
!3358 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 1612, column: 23, scope: !3355)
!3360 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !3359)
!3361 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !3359)
!3362 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !3359)
!3363 = !DILocation(line: 91, column: 20, scope: !1496, inlinedAt: !3359)
!3364 = !DILocation(line: 91, column: 13, scope: !1496, inlinedAt: !3359)
!3365 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !3359)
!3366 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !3359)
!3367 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !3359)
!3368 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !3359)
!3369 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !3359)
!3370 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !3359)
!3371 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !3359)
!3372 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !3359)
!3373 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !3359)
!3374 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !3359)
!3375 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !3359)
!3376 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !3359)
!3377 = !DILocation(line: 101, column: 5, scope: !1484, inlinedAt: !3359)
!3378 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !3359)
!3379 = !DILocation(line: 1612, column: 9, scope: !3348)
!3380 = !DILocation(line: 0, scope: !1496, inlinedAt: !3359)
!3381 = !DILocation(line: 0, scope: !3355)
!3382 = !DILocation(line: 1612, column: 37, scope: !3355)
!3383 = !DILocation(line: 1613, column: 36, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 1612, column: 51)
!3385 = !DILocation(line: 1613, column: 9, scope: !3384)
!3386 = !DILocation(line: 1614, column: 17, scope: !3384)
!3387 = !DILocation(line: 1616, column: 5, scope: !3384)
!3388 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 1617, column: 5, scope: !3348)
!3390 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !3389)
!3391 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !3389)
!3392 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !3389)
!3393 = !DILocation(line: 1618, column: 24, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3348, file: !3, line: 1618, column: 9)
!3395 = !DILocation(line: 1618, column: 41, scope: !3394)
!3396 = !DILocation(line: 1618, column: 17, scope: !3394)
!3397 = !DILocation(line: 1619, column: 30, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3394, file: !3, line: 1618, column: 47)
!3399 = !DILocation(line: 1620, column: 16, scope: !3398)
!3400 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 1620, column: 9, scope: !3398)
!3402 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !3401)
!3403 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !3401)
!3404 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !3401)
!3405 = !DILocation(line: 1622, column: 5, scope: !3398)
!3406 = !DILocation(line: 1623, column: 1, scope: !3348)
!3407 = distinct !DISubprogram(name: "ldbSendLogs", scope: !3, file: !3, line: 1628, type: !2079, isLocal: false, isDefinition: true, scopeLine: 1628, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3408)
!3408 = !{!3409, !3410}
!3409 = !DILocalVariable(name: "proto", scope: !3407, file: !3, line: 1629, type: !209)
!3410 = !DILocalVariable(name: "ln", scope: !3411, file: !3, line: 1632, type: !179)
!3411 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 1631, column: 33)
!3412 = !DILocation(line: 1629, column: 17, scope: !3407)
!3413 = !DILocation(line: 1629, column: 9, scope: !3407)
!3414 = !DILocation(line: 1630, column: 45, scope: !3407)
!3415 = !DILocation(line: 1630, column: 40, scope: !3407)
!3416 = !DILocation(line: 1630, column: 13, scope: !3407)
!3417 = !DILocation(line: 1631, column: 5, scope: !3407)
!3418 = !DILocation(line: 1631, column: 11, scope: !3407)
!3419 = !DILocation(line: 1632, column: 24, scope: !3411)
!3420 = !DILocation(line: 1632, column: 19, scope: !3411)
!3421 = !DILocation(line: 1633, column: 17, scope: !3411)
!3422 = !DILocation(line: 1634, column: 25, scope: !3411)
!3423 = !DILocation(line: 1634, column: 9, scope: !3411)
!3424 = !DILocation(line: 1635, column: 37, scope: !3411)
!3425 = !DILocation(line: 1635, column: 17, scope: !3411)
!3426 = !DILocation(line: 1636, column: 17, scope: !3411)
!3427 = !DILocation(line: 1637, column: 25, scope: !3411)
!3428 = !DILocation(line: 1637, column: 9, scope: !3411)
!3429 = distinct !{!3429, !3417, !3430}
!3430 = !DILocation(line: 1638, column: 5, scope: !3407)
!3431 = !DILocation(line: 0, scope: !3411)
!3432 = !DILocation(line: 1639, column: 19, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 1639, column: 9)
!3434 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 1639, column: 28, scope: !3433)
!3436 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !3435)
!3437 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !3435)
!3438 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !3435)
!3439 = !DILocation(line: 91, column: 20, scope: !1496, inlinedAt: !3435)
!3440 = !DILocation(line: 91, column: 13, scope: !1496, inlinedAt: !3435)
!3441 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !3435)
!3442 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !3435)
!3443 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !3435)
!3444 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !3435)
!3445 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !3435)
!3446 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !3435)
!3447 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !3435)
!3448 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !3435)
!3449 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !3435)
!3450 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !3435)
!3451 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !3435)
!3452 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !3435)
!3453 = !DILocation(line: 0, scope: !1496, inlinedAt: !3435)
!3454 = !DILocation(line: 0, scope: !3433)
!3455 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !3435)
!3456 = !DILocation(line: 1639, column: 9, scope: !3433)
!3457 = !DILocation(line: 1644, column: 5, scope: !3407)
!3458 = !DILocation(line: 1645, column: 1, scope: !3407)
!3459 = distinct !DISubprogram(name: "ldbStartSession", scope: !3, file: !3, line: 1659, type: !3460, isLocal: false, isDefinition: true, scopeLine: 1659, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3462)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!15, !93}
!3462 = !{!3463, !3464, !3469, !3496, !3497}
!3463 = !DILocalVariable(name: "c", arg: 1, scope: !3459, file: !3, line: 1659, type: !93)
!3464 = !DILocalVariable(name: "cp", scope: !3465, file: !3, line: 1662, type: !3467)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 1661, column: 21)
!3466 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 1661, column: 9)
!3467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !3468, line: 61, baseType: !15)
!3468 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!3469 = !DILocalVariable(name: "act", scope: !3470, file: !3, line: 1668, type: !3473)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 1666, column: 29)
!3471 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 1666, column: 20)
!3472 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 1663, column: 13)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3468, line: 74, size: 256, elements: !3474)
!3474 = !{!3475, !3490, !3493, !3494}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "__sa_handler", scope: !3473, file: !3468, line: 78, baseType: !3476, size: 64)
!3476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3473, file: !3468, line: 75, size: 64, elements: !3477)
!3477 = !{!3478, !3479}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3476, file: !3468, line: 76, baseType: !19, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !3476, file: !3468, line: 77, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DISubroutineType(types: !3482)
!3482 = !{null, !15, !3483, !14}
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !3468, line: 72, baseType: !3485)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3468, line: 68, size: 96, elements: !3486)
!3486 = !{!3487, !3488, !3489}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3485, file: !3468, line: 69, baseType: !15, size: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3485, file: !3468, line: 70, baseType: !15, size: 32, offset: 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !3485, file: !3468, line: 71, baseType: !3467, size: 32, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3473, file: !3468, line: 79, baseType: !3491, size: 64, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3468, line: 64, baseType: !3492)
!3492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !3468, line: 63, baseType: !22)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3473, file: !3468, line: 80, baseType: !15, size: 32, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3473, file: !3468, line: 81, baseType: !3495, size: 64, offset: 192)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!3496 = !DILocalVariable(name: "srcstring", scope: !3459, file: !3, line: 1698, type: !209)
!3497 = !DILocalVariable(name: "srclen", scope: !3459, file: !3, line: 1699, type: !211)
!3498 = !DILocation(line: 1659, column: 29, scope: !3459)
!3499 = !DILocation(line: 1660, column: 22, scope: !3459)
!3500 = !DILocation(line: 1660, column: 28, scope: !3459)
!3501 = !DILocation(line: 1660, column: 53, scope: !3459)
!3502 = !DILocation(line: 1660, column: 16, scope: !3459)
!3503 = !{!768, !769, i64 8}
!3504 = !DILocation(line: 1661, column: 9, scope: !3459)
!3505 = !DILocation(line: 1662, column: 20, scope: !3465)
!3506 = !DILocation(line: 1662, column: 15, scope: !3465)
!3507 = !DILocation(line: 1663, column: 16, scope: !3472)
!3508 = !DILocation(line: 1663, column: 13, scope: !3465)
!3509 = !DILocation(line: 1664, column: 13, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 1663, column: 23)
!3511 = !DILocation(line: 1665, column: 13, scope: !3510)
!3512 = !DILocation(line: 1666, column: 23, scope: !3471)
!3513 = !DILocation(line: 1666, column: 20, scope: !3472)
!3514 = !DILocation(line: 1668, column: 13, scope: !3470)
!3515 = !DILocation(line: 1669, column: 30, scope: !3470)
!3516 = !DILocation(line: 1669, column: 13, scope: !3470)
!3517 = !DILocation(line: 1670, column: 17, scope: !3470)
!3518 = !DILocation(line: 1670, column: 26, scope: !3470)
!3519 = !{!3520, !769, i64 16}
!3520 = !{!"sigaction", !487, i64 0, !771, i64 8, !769, i64 16, !770, i64 24}
!3521 = !DILocation(line: 1671, column: 17, scope: !3470)
!3522 = !DILocation(line: 1671, column: 28, scope: !3470)
!3523 = !DILocation(line: 1668, column: 30, scope: !3470)
!3524 = !DILocation(line: 1672, column: 13, scope: !3470)
!3525 = !DILocation(line: 1673, column: 13, scope: !3470)
!3526 = !DILocation(line: 1678, column: 13, scope: !3470)
!3527 = !DILocation(line: 1679, column: 13, scope: !3470)
!3528 = !DILocation(line: 1680, column: 9, scope: !3471)
!3529 = !DILocation(line: 1686, column: 5, scope: !3466)
!3530 = !DILocation(line: 1682, column: 33, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 1680, column: 16)
!3532 = !DILocation(line: 1682, column: 49, scope: !3531)
!3533 = !DILocation(line: 1682, column: 42, scope: !3531)
!3534 = !DILocation(line: 1682, column: 13, scope: !3531)
!3535 = !DILocation(line: 1683, column: 13, scope: !3531)
!3536 = !DILocation(line: 1684, column: 13, scope: !3531)
!3537 = !DILocation(line: 1687, column: 9, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 1686, column: 12)
!3539 = !DILocation(line: 1692, column: 24, scope: !3459)
!3540 = !DILocation(line: 1692, column: 5, scope: !3459)
!3541 = !DILocation(line: 1693, column: 30, scope: !3459)
!3542 = !DILocation(line: 1693, column: 5, scope: !3459)
!3543 = !DILocation(line: 1694, column: 16, scope: !3459)
!3544 = !DILocation(line: 1698, column: 31, scope: !3459)
!3545 = !DILocation(line: 1698, column: 28, scope: !3459)
!3546 = !DILocation(line: 1698, column: 40, scope: !3459)
!3547 = !DILocation(line: 1698, column: 21, scope: !3459)
!3548 = !DILocation(line: 1698, column: 9, scope: !3459)
!3549 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 1699, column: 21, scope: !3459)
!3551 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !3550)
!3552 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !3550)
!3553 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !3550)
!3554 = !DILocation(line: 91, column: 20, scope: !1496, inlinedAt: !3550)
!3555 = !DILocation(line: 91, column: 13, scope: !1496, inlinedAt: !3550)
!3556 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !3550)
!3557 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !3550)
!3558 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !3550)
!3559 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !3550)
!3560 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !3550)
!3561 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !3550)
!3562 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !3550)
!3563 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !3550)
!3564 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !3550)
!3565 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !3550)
!3566 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !3550)
!3567 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !3550)
!3568 = !DILocation(line: 101, column: 5, scope: !1484, inlinedAt: !3550)
!3569 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !3550)
!3570 = !DILocation(line: 1699, column: 12, scope: !3459)
!3571 = !DILocation(line: 1700, column: 5, scope: !3459)
!3572 = !DILocation(line: 1700, column: 18, scope: !3459)
!3573 = !DILocation(line: 0, scope: !1496, inlinedAt: !3550)
!3574 = !DILocation(line: 0, scope: !3459)
!3575 = !DILocation(line: 1700, column: 11, scope: !3459)
!3576 = !DILocation(line: 1700, column: 38, scope: !3459)
!3577 = !DILocation(line: 1700, column: 22, scope: !3459)
!3578 = !DILocation(line: 1700, column: 42, scope: !3459)
!3579 = !DILocation(line: 1700, column: 50, scope: !3459)
!3580 = !DILocation(line: 1701, column: 42, scope: !3459)
!3581 = !DILocation(line: 1703, column: 29, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3459, file: !3, line: 1702, column: 5)
!3583 = distinct !{!3583, !3571, !3584}
!3584 = !DILocation(line: 1704, column: 5, scope: !3459)
!3585 = !DILocation(line: 130, column: 34, scope: !1056, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 1705, column: 5, scope: !3459)
!3587 = !DILocation(line: 130, column: 44, scope: !1056, inlinedAt: !3586)
!3588 = !DILocation(line: 131, column: 27, scope: !1056, inlinedAt: !3586)
!3589 = !DILocation(line: 131, column: 19, scope: !1056, inlinedAt: !3586)
!3590 = !DILocation(line: 132, column: 5, scope: !1056, inlinedAt: !3586)
!3591 = !DILocation(line: 135, column: 32, scope: !1065, inlinedAt: !3586)
!3592 = !DILocation(line: 136, column: 23, scope: !1065, inlinedAt: !3586)
!3593 = !DILocation(line: 136, column: 21, scope: !1065, inlinedAt: !3586)
!3594 = !DILocation(line: 138, column: 13, scope: !1066, inlinedAt: !3586)
!3595 = !DILocation(line: 140, column: 33, scope: !1066, inlinedAt: !3586)
!3596 = !DILocation(line: 140, column: 13, scope: !1066, inlinedAt: !3586)
!3597 = !DILocation(line: 140, column: 31, scope: !1066, inlinedAt: !3586)
!3598 = !DILocation(line: 141, column: 13, scope: !1066, inlinedAt: !3586)
!3599 = !DILocation(line: 143, column: 34, scope: !1066, inlinedAt: !3586)
!3600 = !DILocation(line: 143, column: 13, scope: !1066, inlinedAt: !3586)
!3601 = !DILocation(line: 143, column: 28, scope: !1066, inlinedAt: !3586)
!3602 = !DILocation(line: 143, column: 32, scope: !1066, inlinedAt: !3586)
!3603 = !DILocation(line: 144, column: 13, scope: !1066, inlinedAt: !3586)
!3604 = !DILocation(line: 146, column: 34, scope: !1066, inlinedAt: !3586)
!3605 = !DILocation(line: 146, column: 13, scope: !1066, inlinedAt: !3586)
!3606 = !DILocation(line: 146, column: 28, scope: !1066, inlinedAt: !3586)
!3607 = !DILocation(line: 146, column: 32, scope: !1066, inlinedAt: !3586)
!3608 = !DILocation(line: 147, column: 13, scope: !1066, inlinedAt: !3586)
!3609 = !DILocation(line: 149, column: 13, scope: !1066, inlinedAt: !3586)
!3610 = !DILocation(line: 149, column: 28, scope: !1066, inlinedAt: !3586)
!3611 = !DILocation(line: 149, column: 32, scope: !1066, inlinedAt: !3586)
!3612 = !DILocation(line: 150, column: 13, scope: !1066, inlinedAt: !3586)
!3613 = !DILocation(line: 152, column: 1, scope: !1056, inlinedAt: !3586)
!3614 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !3615)
!3615 = distinct !DILocation(line: 1706, column: 37, scope: !3459)
!3616 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !3615)
!3617 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !3615)
!3618 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !3615)
!3619 = !DILocation(line: 91, column: 20, scope: !1496, inlinedAt: !3615)
!3620 = !DILocation(line: 91, column: 13, scope: !1496, inlinedAt: !3615)
!3621 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !3615)
!3622 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !3615)
!3623 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !3615)
!3624 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !3615)
!3625 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !3615)
!3626 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !3615)
!3627 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !3615)
!3628 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !3615)
!3629 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !3615)
!3630 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !3615)
!3631 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !3615)
!3632 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !3615)
!3633 = !DILocation(line: 0, scope: !1496, inlinedAt: !3615)
!3634 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !3615)
!3635 = !DILocation(line: 1706, column: 15, scope: !3459)
!3636 = !DILocation(line: 1706, column: 13, scope: !3459)
!3637 = !DILocation(line: 1707, column: 5, scope: !3459)
!3638 = !DILocation(line: 0, scope: !3510)
!3639 = !DILocation(line: 1709, column: 1, scope: !3459)
!3640 = distinct !DISubprogram(name: "ldbEndSession", scope: !3, file: !3, line: 1713, type: !91, isLocal: false, isDefinition: true, scopeLine: 1713, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3641)
!3641 = !{!3642}
!3642 = !DILocalVariable(name: "c", arg: 1, scope: !3640, file: !3, line: 1713, type: !93)
!3643 = !DILocation(line: 1713, column: 28, scope: !3640)
!3644 = !DILocation(line: 1715, column: 12, scope: !3640)
!3645 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 1715, column: 5, scope: !3640)
!3647 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !3646)
!3648 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !3646)
!3649 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !3646)
!3650 = !DILocation(line: 1716, column: 5, scope: !3640)
!3651 = !DILocation(line: 1719, column: 13, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 1719, column: 9)
!3653 = !DILocation(line: 1719, column: 9, scope: !3652)
!3654 = !DILocation(line: 1719, column: 9, scope: !3640)
!3655 = !DILocation(line: 1720, column: 26, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 1719, column: 21)
!3657 = !DILocation(line: 1720, column: 9, scope: !3656)
!3658 = !DILocation(line: 1721, column: 9, scope: !3656)
!3659 = !DILocation(line: 1722, column: 9, scope: !3656)
!3660 = !DILocation(line: 1723, column: 5, scope: !3656)
!3661 = !DILocation(line: 1724, column: 9, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 1723, column: 12)
!3663 = !DILocation(line: 1729, column: 27, scope: !3640)
!3664 = !DILocation(line: 1729, column: 5, scope: !3640)
!3665 = !DILocation(line: 1730, column: 30, scope: !3640)
!3666 = !DILocation(line: 1730, column: 5, scope: !3640)
!3667 = !DILocation(line: 1734, column: 8, scope: !3640)
!3668 = !DILocation(line: 1734, column: 14, scope: !3640)
!3669 = !DILocation(line: 1737, column: 25, scope: !3640)
!3670 = !DILocation(line: 1737, column: 33, scope: !3640)
!3671 = !DILocation(line: 1737, column: 5, scope: !3640)
!3672 = !DILocation(line: 1738, column: 15, scope: !3640)
!3673 = !DILocation(line: 1739, column: 16, scope: !3640)
!3674 = !DILocation(line: 1740, column: 1, scope: !3640)
!3675 = distinct !DISubprogram(name: "ldbRemoveChild", scope: !3, file: !3, line: 1745, type: !3676, isLocal: false, isDefinition: true, scopeLine: 1745, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3678)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!15, !3467}
!3678 = !{!3679, !3680}
!3679 = !DILocalVariable(name: "pid", arg: 1, scope: !3675, file: !3, line: 1745, type: !3467)
!3680 = !DILocalVariable(name: "ln", scope: !3675, file: !3, line: 1746, type: !179)
!3681 = !DILocation(line: 1745, column: 26, scope: !3675)
!3682 = !DILocation(line: 1746, column: 38, scope: !3675)
!3683 = !DILocation(line: 1746, column: 54, scope: !3675)
!3684 = !DILocation(line: 1746, column: 47, scope: !3675)
!3685 = !DILocation(line: 1746, column: 20, scope: !3675)
!3686 = !DILocation(line: 1746, column: 15, scope: !3675)
!3687 = !DILocation(line: 1747, column: 9, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 1747, column: 9)
!3689 = !DILocation(line: 1747, column: 9, scope: !3675)
!3690 = !DILocation(line: 1748, column: 25, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 1747, column: 13)
!3692 = !DILocation(line: 1748, column: 9, scope: !3691)
!3693 = !DILocation(line: 1749, column: 9, scope: !3691)
!3694 = !DILocation(line: 0, scope: !3675)
!3695 = !DILocation(line: 0, scope: !3691)
!3696 = !DILocation(line: 1752, column: 1, scope: !3675)
!3697 = distinct !DISubprogram(name: "ldbPendingChildren", scope: !3, file: !3, line: 1756, type: !3698, isLocal: false, isDefinition: true, scopeLine: 1756, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!15}
!3700 = !DILocation(line: 1757, column: 12, scope: !3697)
!3701 = !DILocation(line: 1757, column: 5, scope: !3697)
!3702 = distinct !DISubprogram(name: "ldbKillForkedSessions", scope: !3, file: !3, line: 1761, type: !2079, isLocal: false, isDefinition: true, scopeLine: 1761, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3703)
!3703 = !{!3704, !3710, !3711}
!3704 = !DILocalVariable(name: "li", scope: !3702, file: !3, line: 1762, type: !3705)
!3705 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !175, line: 45, baseType: !3706)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !175, line: 42, size: 128, elements: !3707)
!3707 = !{!3708, !3709}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3706, file: !175, line: 43, baseType: !179, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !3706, file: !175, line: 44, baseType: !15, size: 32, offset: 64)
!3710 = !DILocalVariable(name: "ln", scope: !3702, file: !3, line: 1763, type: !179)
!3711 = !DILocalVariable(name: "pid", scope: !3712, file: !3, line: 1767, type: !3467)
!3712 = distinct !DILexicalBlock(scope: !3702, file: !3, line: 1766, column: 33)
!3713 = !DILocation(line: 1762, column: 5, scope: !3702)
!3714 = !DILocation(line: 1765, column: 20, scope: !3702)
!3715 = !DILocation(line: 1762, column: 14, scope: !3702)
!3716 = !DILocation(line: 1765, column: 5, scope: !3702)
!3717 = !DILocation(line: 1766, column: 5, scope: !3702)
!3718 = !DILocation(line: 1766, column: 17, scope: !3702)
!3719 = !DILocation(line: 1763, column: 15, scope: !3702)
!3720 = !DILocation(line: 1767, column: 41, scope: !3712)
!3721 = !DILocation(line: 1767, column: 21, scope: !3712)
!3722 = !DILocation(line: 1767, column: 15, scope: !3712)
!3723 = !DILocation(line: 1768, column: 62, scope: !3712)
!3724 = !DILocation(line: 1768, column: 9, scope: !3712)
!3725 = !DILocation(line: 1769, column: 9, scope: !3712)
!3726 = distinct !{!3726, !3717, !3727}
!3727 = !DILocation(line: 1770, column: 5, scope: !3702)
!3728 = !DILocation(line: 1771, column: 21, scope: !3702)
!3729 = !DILocation(line: 1771, column: 5, scope: !3702)
!3730 = !DILocation(line: 1772, column: 20, scope: !3702)
!3731 = !DILocation(line: 1772, column: 18, scope: !3702)
!3732 = !DILocation(line: 1773, column: 1, scope: !3702)
!3733 = distinct !DISubprogram(name: "ldbGetSourceLine", scope: !3, file: !3, line: 1788, type: !3734, isLocal: false, isDefinition: true, scopeLine: 1788, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3736)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!11, !15}
!3736 = !{!3737, !3738}
!3737 = !DILocalVariable(name: "line", arg: 1, scope: !3733, file: !3, line: 1788, type: !15)
!3738 = !DILocalVariable(name: "idx", scope: !3733, file: !3, line: 1789, type: !15)
!3739 = !DILocation(line: 1788, column: 28, scope: !3733)
!3740 = !DILocation(line: 1789, column: 19, scope: !3733)
!3741 = !DILocation(line: 1789, column: 9, scope: !3733)
!3742 = !DILocation(line: 1790, column: 13, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3733, file: !3, line: 1790, column: 9)
!3744 = !DILocation(line: 1790, column: 17, scope: !3743)
!3745 = !DILocation(line: 1790, column: 31, scope: !3743)
!3746 = !DILocation(line: 1790, column: 24, scope: !3743)
!3747 = !DILocation(line: 1790, column: 9, scope: !3733)
!3748 = !DILocation(line: 1791, column: 16, scope: !3733)
!3749 = !DILocation(line: 1791, column: 12, scope: !3733)
!3750 = !DILocation(line: 1791, column: 5, scope: !3733)
!3751 = !DILocation(line: 0, scope: !3733)
!3752 = !DILocation(line: 0, scope: !3743)
!3753 = !DILocation(line: 1792, column: 1, scope: !3733)
!3754 = !DILocation(line: 1795, column: 25, scope: !2883)
!3755 = !DILocation(line: 1796, column: 9, scope: !2883)
!3756 = !DILocation(line: 1798, column: 10, scope: !2892)
!3757 = !DILocation(line: 1798, column: 25, scope: !2894)
!3758 = !DILocation(line: 1798, column: 19, scope: !2894)
!3759 = !DILocation(line: 1799, column: 13, scope: !2899)
!3760 = !DILocation(line: 1799, column: 23, scope: !2899)
!3761 = !DILocation(line: 1799, column: 13, scope: !2894)
!3762 = !DILocation(line: 1798, column: 35, scope: !2894)
!3763 = !DILocation(line: 1798, column: 5, scope: !2894)
!3764 = !DILocation(line: 0, scope: !2883)
!3765 = !DILocation(line: 0, scope: !2899)
!3766 = !DILocation(line: 1801, column: 1, scope: !2883)
!3767 = distinct !DISubprogram(name: "ldbAddBreakpoint", scope: !3, file: !3, line: 1806, type: !2884, isLocal: false, isDefinition: true, scopeLine: 1806, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3768)
!3768 = !{!3769}
!3769 = !DILocalVariable(name: "line", arg: 1, scope: !3767, file: !3, line: 1806, type: !15)
!3770 = !DILocation(line: 1806, column: 26, scope: !3767)
!3771 = !DILocation(line: 1807, column: 14, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 1807, column: 9)
!3773 = !DILocation(line: 1807, column: 19, scope: !3772)
!3774 = !DILocation(line: 1807, column: 33, scope: !3772)
!3775 = !DILocation(line: 1807, column: 27, scope: !3772)
!3776 = !DILocation(line: 1807, column: 9, scope: !3767)
!3777 = !DILocation(line: 1795, column: 25, scope: !2883, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 1808, column: 10, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3767, file: !3, line: 1808, column: 9)
!3780 = !DILocation(line: 1796, column: 9, scope: !2883, inlinedAt: !3778)
!3781 = !DILocation(line: 1798, column: 10, scope: !2892, inlinedAt: !3778)
!3782 = !DILocation(line: 1798, column: 25, scope: !2894, inlinedAt: !3778)
!3783 = !DILocation(line: 1798, column: 19, scope: !2894, inlinedAt: !3778)
!3784 = !DILocation(line: 1798, column: 5, scope: !2892, inlinedAt: !3778)
!3785 = !DILocation(line: 1800, column: 5, scope: !2883, inlinedAt: !3778)
!3786 = !DILocation(line: 1801, column: 1, scope: !2883, inlinedAt: !3778)
!3787 = !DILocation(line: 1808, column: 32, scope: !3779)
!3788 = !DILocation(line: 1799, column: 13, scope: !2899, inlinedAt: !3778)
!3789 = !DILocation(line: 1799, column: 23, scope: !2899, inlinedAt: !3778)
!3790 = !DILocation(line: 1799, column: 13, scope: !2894, inlinedAt: !3778)
!3791 = !DILocation(line: 1799, column: 32, scope: !2899, inlinedAt: !3778)
!3792 = !DILocation(line: 1798, column: 35, scope: !2894, inlinedAt: !3778)
!3793 = !DILocation(line: 1798, column: 5, scope: !2894, inlinedAt: !3778)
!3794 = !DILocation(line: 1808, column: 47, scope: !3779)
!3795 = !DILocation(line: 1809, column: 27, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 1808, column: 71)
!3797 = !DILocation(line: 1809, column: 9, scope: !3796)
!3798 = !DILocation(line: 1809, column: 31, scope: !3796)
!3799 = !DILocation(line: 1810, column: 9, scope: !3796)
!3800 = !DILocation(line: 0, scope: !3767)
!3801 = !DILocation(line: 0, scope: !3772)
!3802 = !DILocation(line: 1813, column: 1, scope: !3767)
!3803 = distinct !DISubprogram(name: "ldbDelBreakpoint", scope: !3, file: !3, line: 1817, type: !2884, isLocal: false, isDefinition: true, scopeLine: 1817, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3804)
!3804 = !{!3805, !3806}
!3805 = !DILocalVariable(name: "line", arg: 1, scope: !3803, file: !3, line: 1817, type: !15)
!3806 = !DILocalVariable(name: "j", scope: !3803, file: !3, line: 1818, type: !15)
!3807 = !DILocation(line: 1817, column: 26, scope: !3803)
!3808 = !DILocation(line: 1818, column: 9, scope: !3803)
!3809 = !DILocation(line: 1820, column: 10, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 1820, column: 5)
!3811 = !DILocation(line: 1820, column: 25, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3810, file: !3, line: 1820, column: 5)
!3813 = !DILocation(line: 1820, column: 19, scope: !3812)
!3814 = !DILocation(line: 1820, column: 5, scope: !3810)
!3815 = !DILocation(line: 1821, column: 13, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3817, file: !3, line: 1821, column: 13)
!3817 = distinct !DILexicalBlock(scope: !3812, file: !3, line: 1820, column: 39)
!3818 = !DILocation(line: 1821, column: 23, scope: !3816)
!3819 = !DILocation(line: 1821, column: 13, scope: !3817)
!3820 = !DILocation(line: 1822, column: 24, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3816, file: !3, line: 1821, column: 32)
!3822 = !DILocation(line: 1823, column: 21, scope: !3821)
!3823 = !DILocation(line: 1823, column: 38, scope: !3821)
!3824 = !DILocation(line: 1823, column: 30, scope: !3821)
!3825 = !DILocation(line: 1823, column: 52, scope: !3821)
!3826 = !DILocation(line: 1823, column: 41, scope: !3821)
!3827 = !DILocation(line: 1823, column: 13, scope: !3821)
!3828 = !DILocation(line: 1824, column: 13, scope: !3821)
!3829 = !DILocation(line: 1820, column: 35, scope: !3812)
!3830 = !DILocation(line: 1820, column: 5, scope: !3812)
!3831 = distinct !{!3831, !3814, !3832}
!3832 = !DILocation(line: 1826, column: 5, scope: !3810)
!3833 = !DILocation(line: 0, scope: !3803)
!3834 = !DILocation(line: 0, scope: !3821)
!3835 = !DILocation(line: 1828, column: 1, scope: !3803)
!3836 = distinct !DISubprogram(name: "ldbReplParseCommand", scope: !3, file: !3, line: 1833, type: !3837, isLocal: false, isDefinition: true, scopeLine: 1833, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3839)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!432, !314}
!3839 = !{!3840, !3841, !3842, !3843, !3844, !3845, !3846}
!3840 = !DILocalVariable(name: "argcp", arg: 1, scope: !3836, file: !3, line: 1833, type: !314)
!3841 = !DILocalVariable(name: "argv", scope: !3836, file: !3, line: 1834, type: !432)
!3842 = !DILocalVariable(name: "argc", scope: !3836, file: !3, line: 1835, type: !15)
!3843 = !DILocalVariable(name: "copy", scope: !3836, file: !3, line: 1840, type: !209)
!3844 = !DILocalVariable(name: "p", scope: !3836, file: !3, line: 1841, type: !11)
!3845 = !DILocalVariable(name: "plen", scope: !3836, file: !3, line: 1849, type: !11)
!3846 = !DILocalVariable(name: "slen", scope: !3847, file: !3, line: 1863, type: !15)
!3847 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 1858, column: 26)
!3848 = !DILocation(line: 1833, column: 31, scope: !3836)
!3849 = !DILocation(line: 1834, column: 10, scope: !3836)
!3850 = !DILocation(line: 1835, column: 9, scope: !3836)
!3851 = !DILocation(line: 1836, column: 20, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 1836, column: 9)
!3853 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 1836, column: 9, scope: !3852)
!3855 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !3854)
!3856 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !3854)
!3857 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !3854)
!3858 = !DILocation(line: 91, column: 20, scope: !1496, inlinedAt: !3854)
!3859 = !DILocation(line: 91, column: 13, scope: !1496, inlinedAt: !3854)
!3860 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !3854)
!3861 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !3854)
!3862 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !3854)
!3863 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !3854)
!3864 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !3854)
!3865 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !3854)
!3866 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !3854)
!3867 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !3854)
!3868 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !3854)
!3869 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !3854)
!3870 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !3854)
!3871 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !3854)
!3872 = !DILocation(line: 101, column: 5, scope: !1484, inlinedAt: !3854)
!3873 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !3854)
!3874 = !DILocation(line: 1836, column: 9, scope: !3836)
!3875 = !DILocation(line: 0, scope: !1496, inlinedAt: !3854)
!3876 = !DILocation(line: 0, scope: !3852)
!3877 = !DILocation(line: 1836, column: 26, scope: !3852)
!3878 = !DILocation(line: 1840, column: 16, scope: !3836)
!3879 = !DILocation(line: 1840, column: 9, scope: !3836)
!3880 = !DILocation(line: 1841, column: 11, scope: !3836)
!3881 = !DILocation(line: 1848, column: 9, scope: !3836)
!3882 = !DILocation(line: 1848, column: 29, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 1848, column: 28)
!3884 = !DILocation(line: 1848, column: 28, scope: !3836)
!3885 = !DILocation(line: 1850, column: 9, scope: !3836)
!3886 = !DILocation(line: 1850, column: 32, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 1850, column: 31)
!3888 = !DILocation(line: 1850, column: 31, scope: !3836)
!3889 = !DILocation(line: 1849, column: 19, scope: !3836)
!3890 = !DILocation(line: 1849, column: 11, scope: !3836)
!3891 = !DILocation(line: 1851, column: 8, scope: !3836)
!3892 = !DILocation(line: 1852, column: 14, scope: !3836)
!3893 = !DILocation(line: 1852, column: 12, scope: !3836)
!3894 = !DILocation(line: 1853, column: 16, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 1853, column: 9)
!3896 = !DILocation(line: 1853, column: 21, scope: !3895)
!3897 = !DILocation(line: 1853, column: 31, scope: !3895)
!3898 = !DILocation(line: 1853, column: 9, scope: !3836)
!3899 = !DILocation(line: 1856, column: 32, scope: !3836)
!3900 = !DILocation(line: 1856, column: 31, scope: !3836)
!3901 = !DILocation(line: 1856, column: 12, scope: !3836)
!3902 = !DILocation(line: 1858, column: 5, scope: !3836)
!3903 = !DILocation(line: 1858, column: 18, scope: !3836)
!3904 = !DILocation(line: 1858, column: 16, scope: !3836)
!3905 = !DILocation(line: 0, scope: !3847)
!3906 = !DILocation(line: 1859, column: 13, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 1859, column: 13)
!3908 = !DILocation(line: 1859, column: 16, scope: !3907)
!3909 = !DILocation(line: 1859, column: 13, scope: !3847)
!3910 = !DILocation(line: 1861, column: 13, scope: !3847)
!3911 = !DILocation(line: 1861, column: 36, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 1861, column: 35)
!3913 = !DILocation(line: 1861, column: 35, scope: !3847)
!3914 = !DILocation(line: 1860, column: 17, scope: !3847)
!3915 = !DILocation(line: 1862, column: 12, scope: !3847)
!3916 = !DILocation(line: 1862, column: 22, scope: !3847)
!3917 = !DILocation(line: 1863, column: 20, scope: !3847)
!3918 = !DILocation(line: 1863, column: 13, scope: !3847)
!3919 = !DILocation(line: 1864, column: 23, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 1864, column: 13)
!3921 = !DILocation(line: 1865, column: 36, scope: !3847)
!3922 = !DILocation(line: 1865, column: 24, scope: !3847)
!3923 = !DILocation(line: 1865, column: 18, scope: !3847)
!3924 = !DILocation(line: 1865, column: 9, scope: !3847)
!3925 = !DILocation(line: 1865, column: 22, scope: !3847)
!3926 = !DILocation(line: 1866, column: 11, scope: !3847)
!3927 = !DILocation(line: 1867, column: 13, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3847, file: !3, line: 1867, column: 13)
!3929 = !DILocation(line: 1867, column: 18, scope: !3928)
!3930 = !DILocation(line: 1867, column: 26, scope: !3928)
!3931 = !DILocation(line: 1867, column: 29, scope: !3928)
!3932 = !DILocation(line: 1867, column: 34, scope: !3928)
!3933 = !DILocation(line: 1867, column: 13, scope: !3847)
!3934 = !DILocation(line: 0, scope: !3928)
!3935 = !DILocation(line: 1869, column: 5, scope: !3836)
!3936 = !DILocation(line: 1870, column: 5, scope: !3836)
!3937 = !DILocation(line: 1871, column: 5, scope: !3836)
!3938 = !DILocation(line: 1874, column: 5, scope: !3836)
!3939 = !DILocation(line: 0, scope: !3836)
!3940 = !DILocation(line: 1875, column: 5, scope: !3836)
!3941 = !DILocation(line: 1876, column: 5, scope: !3836)
!3942 = !DILocation(line: 1877, column: 1, scope: !3836)
!3943 = distinct !DISubprogram(name: "ldbLogSourceLine", scope: !3, file: !3, line: 1880, type: !20, isLocal: false, isDefinition: true, scopeLine: 1880, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3944)
!3944 = !{!3945, !3946, !3947, !3948, !3949, !3950}
!3945 = !DILocalVariable(name: "lnum", arg: 1, scope: !3943, file: !3, line: 1880, type: !15)
!3946 = !DILocalVariable(name: "line", scope: !3943, file: !3, line: 1881, type: !11)
!3947 = !DILocalVariable(name: "prefix", scope: !3943, file: !3, line: 1882, type: !11)
!3948 = !DILocalVariable(name: "bp", scope: !3943, file: !3, line: 1883, type: !15)
!3949 = !DILocalVariable(name: "current", scope: !3943, file: !3, line: 1884, type: !15)
!3950 = !DILocalVariable(name: "thisline", scope: !3943, file: !3, line: 1894, type: !209)
!3951 = !DILocation(line: 1880, column: 27, scope: !3943)
!3952 = !DILocation(line: 1788, column: 28, scope: !3733, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 1881, column: 18, scope: !3943)
!3954 = !DILocation(line: 1789, column: 19, scope: !3733, inlinedAt: !3953)
!3955 = !DILocation(line: 1789, column: 9, scope: !3733, inlinedAt: !3953)
!3956 = !DILocation(line: 1790, column: 13, scope: !3743, inlinedAt: !3953)
!3957 = !DILocation(line: 1790, column: 17, scope: !3743, inlinedAt: !3953)
!3958 = !DILocation(line: 1790, column: 31, scope: !3743, inlinedAt: !3953)
!3959 = !DILocation(line: 1790, column: 24, scope: !3743, inlinedAt: !3953)
!3960 = !DILocation(line: 1790, column: 9, scope: !3733, inlinedAt: !3953)
!3961 = !DILocation(line: 1791, column: 16, scope: !3733, inlinedAt: !3953)
!3962 = !DILocation(line: 1791, column: 12, scope: !3733, inlinedAt: !3953)
!3963 = !DILocation(line: 1791, column: 5, scope: !3733, inlinedAt: !3953)
!3964 = !DILocation(line: 0, scope: !3733, inlinedAt: !3953)
!3965 = !DILocation(line: 0, scope: !3943)
!3966 = !DILocation(line: 1792, column: 1, scope: !3733, inlinedAt: !3953)
!3967 = !DILocation(line: 1881, column: 11, scope: !3943)
!3968 = !DILocation(line: 1795, column: 25, scope: !2883, inlinedAt: !3969)
!3969 = distinct !DILocation(line: 1883, column: 14, scope: !3943)
!3970 = !DILocation(line: 1796, column: 9, scope: !2883, inlinedAt: !3969)
!3971 = !DILocation(line: 1798, column: 10, scope: !2892, inlinedAt: !3969)
!3972 = !DILocation(line: 1798, column: 25, scope: !2894, inlinedAt: !3969)
!3973 = !DILocation(line: 1798, column: 19, scope: !2894, inlinedAt: !3969)
!3974 = !DILocation(line: 1798, column: 5, scope: !2892, inlinedAt: !3969)
!3975 = !DILocation(line: 1799, column: 13, scope: !2899, inlinedAt: !3969)
!3976 = !DILocation(line: 1799, column: 23, scope: !2899, inlinedAt: !3969)
!3977 = !DILocation(line: 1799, column: 13, scope: !2894, inlinedAt: !3969)
!3978 = !DILocation(line: 1798, column: 35, scope: !2894, inlinedAt: !3969)
!3979 = !DILocation(line: 1798, column: 5, scope: !2894, inlinedAt: !3969)
!3980 = !DILocation(line: 1800, column: 5, scope: !2883, inlinedAt: !3969)
!3981 = !DILocation(line: 1801, column: 1, scope: !2883, inlinedAt: !3969)
!3982 = !DILocation(line: 1884, column: 23, scope: !3943)
!3983 = !DILocation(line: 1884, column: 35, scope: !3943)
!3984 = !DILocation(line: 1886, column: 17, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3943, file: !3, line: 1886, column: 9)
!3986 = !DILocation(line: 0, scope: !3985)
!3987 = !DILocation(line: 0, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3985, file: !3, line: 1888, column: 14)
!3989 = !DILocation(line: 1888, column: 14, scope: !3985)
!3990 = !DILocation(line: 1799, column: 32, scope: !2899, inlinedAt: !3969)
!3991 = !DILocation(line: 1891, column: 9, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1890, column: 14)
!3993 = !DILocation(line: 0, scope: !3992)
!3994 = !DILocation(line: 1882, column: 11, scope: !3943)
!3995 = !DILocation(line: 1894, column: 33, scope: !3943)
!3996 = !DILocation(line: 1894, column: 20, scope: !3943)
!3997 = !DILocation(line: 1894, column: 9, scope: !3943)
!3998 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !3999)
!3999 = distinct !DILocation(line: 1895, column: 5, scope: !3943)
!4000 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !3999)
!4001 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !3999)
!4002 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !3999)
!4003 = !DILocation(line: 1896, column: 1, scope: !3943)
!4004 = distinct !DISubprogram(name: "ldbList", scope: !3, file: !3, line: 1903, type: !4005, isLocal: false, isDefinition: true, scopeLine: 1903, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4007)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{null, !15, !15}
!4007 = !{!4008, !4009, !4010}
!4008 = !DILocalVariable(name: "around", arg: 1, scope: !4004, file: !3, line: 1903, type: !15)
!4009 = !DILocalVariable(name: "context", arg: 2, scope: !4004, file: !3, line: 1903, type: !15)
!4010 = !DILocalVariable(name: "j", scope: !4004, file: !3, line: 1904, type: !15)
!4011 = !DILocation(line: 1903, column: 18, scope: !4004)
!4012 = !DILocation(line: 1903, column: 30, scope: !4004)
!4013 = !DILocation(line: 1904, column: 9, scope: !4004)
!4014 = !DILocation(line: 1906, column: 10, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4004, file: !3, line: 1906, column: 5)
!4016 = !DILocation(line: 1906, column: 26, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 1906, column: 5)
!4018 = !DILocation(line: 1906, column: 19, scope: !4017)
!4019 = !DILocation(line: 1906, column: 5, scope: !4015)
!4020 = !DILocation(line: 1907, column: 25, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !4022, file: !3, line: 1907, column: 13)
!4022 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 1906, column: 38)
!4023 = !DILocation(line: 1907, column: 38, scope: !4021)
!4024 = !DILocation(line: 1907, column: 28, scope: !4021)
!4025 = !DILocation(line: 1907, column: 42, scope: !4021)
!4026 = !DILocation(line: 1907, column: 13, scope: !4022)
!4027 = !DILocation(line: 1908, column: 9, scope: !4022)
!4028 = !DILocation(line: 1909, column: 5, scope: !4022)
!4029 = !DILocation(line: 1906, column: 34, scope: !4017)
!4030 = !DILocation(line: 1906, column: 5, scope: !4017)
!4031 = distinct !{!4031, !4019, !4032}
!4032 = !DILocation(line: 1909, column: 5, scope: !4015)
!4033 = !DILocation(line: 1910, column: 1, scope: !4004)
!4034 = distinct !DISubprogram(name: "ldbCatStackValueRec", scope: !3, file: !3, line: 1920, type: !4035, isLocal: false, isDefinition: true, scopeLine: 1920, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4037)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!209, !209, !74, !15, !15}
!4037 = !{!4038, !4039, !4040, !4041, !4042, !4043, !4046, !4047, !4049, !4050, !4051, !4052, !4054}
!4038 = !DILocalVariable(name: "s", arg: 1, scope: !4034, file: !3, line: 1920, type: !209)
!4039 = !DILocalVariable(name: "lua", arg: 2, scope: !4034, file: !3, line: 1920, type: !74)
!4040 = !DILocalVariable(name: "idx", arg: 3, scope: !4034, file: !3, line: 1920, type: !15)
!4041 = !DILocalVariable(name: "level", arg: 4, scope: !4034, file: !3, line: 1920, type: !15)
!4042 = !DILocalVariable(name: "t", scope: !4034, file: !3, line: 1921, type: !15)
!4043 = !DILocalVariable(name: "strl", scope: !4044, file: !3, line: 1929, type: !211)
!4044 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 1928, column: 9)
!4045 = distinct !DILexicalBlock(scope: !4034, file: !3, line: 1926, column: 15)
!4046 = !DILocalVariable(name: "strp", scope: !4044, file: !3, line: 1930, type: !11)
!4047 = !DILocalVariable(name: "expected_index", scope: !4048, file: !3, line: 1945, type: !15)
!4048 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 1944, column: 9)
!4049 = !DILocalVariable(name: "is_array", scope: !4048, file: !3, line: 1946, type: !15)
!4050 = !DILocalVariable(name: "repr1", scope: !4048, file: !3, line: 1950, type: !209)
!4051 = !DILocalVariable(name: "repr2", scope: !4048, file: !3, line: 1951, type: !209)
!4052 = !DILocalVariable(name: "p", scope: !4053, file: !3, line: 1987, type: !119)
!4053 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 1986, column: 9)
!4054 = !DILocalVariable(name: "typename", scope: !4053, file: !3, line: 1988, type: !11)
!4055 = !DILocation(line: 1920, column: 29, scope: !4034)
!4056 = !DILocation(line: 1920, column: 43, scope: !4034)
!4057 = !DILocation(line: 1920, column: 52, scope: !4034)
!4058 = !DILocation(line: 1920, column: 61, scope: !4034)
!4059 = !DILocation(line: 1921, column: 13, scope: !4034)
!4060 = !DILocation(line: 1921, column: 9, scope: !4034)
!4061 = !DILocation(line: 1923, column: 14, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !4034, file: !3, line: 1923, column: 9)
!4063 = !DILocation(line: 1923, column: 17, scope: !4062)
!4064 = !DILocation(line: 1923, column: 9, scope: !4034)
!4065 = !DILocation(line: 1924, column: 16, scope: !4062)
!4066 = !DILocation(line: 1924, column: 9, scope: !4062)
!4067 = !DILocation(line: 1926, column: 5, scope: !4034)
!4068 = !DILocation(line: 1929, column: 9, scope: !4044)
!4069 = !DILocation(line: 1929, column: 16, scope: !4044)
!4070 = !DILocation(line: 1930, column: 29, scope: !4044)
!4071 = !DILocation(line: 1930, column: 15, scope: !4044)
!4072 = !DILocation(line: 1931, column: 31, scope: !4044)
!4073 = !DILocation(line: 1931, column: 13, scope: !4044)
!4074 = !DILocation(line: 1932, column: 9, scope: !4045)
!4075 = !DILocation(line: 1933, column: 9, scope: !4045)
!4076 = !DILocation(line: 1935, column: 22, scope: !4045)
!4077 = !DILocation(line: 1935, column: 13, scope: !4045)
!4078 = !DILocation(line: 1936, column: 9, scope: !4045)
!4079 = !DILocation(line: 1938, column: 41, scope: !4045)
!4080 = !DILocation(line: 1938, column: 13, scope: !4045)
!4081 = !DILocation(line: 1939, column: 9, scope: !4045)
!4082 = !DILocation(line: 1941, column: 13, scope: !4045)
!4083 = !DILocation(line: 1942, column: 9, scope: !4045)
!4084 = !DILocation(line: 1945, column: 13, scope: !4048)
!4085 = !DILocation(line: 1946, column: 13, scope: !4048)
!4086 = !DILocation(line: 1950, column: 21, scope: !4048)
!4087 = !DILocation(line: 1950, column: 13, scope: !4048)
!4088 = !DILocation(line: 1951, column: 21, scope: !4048)
!4089 = !DILocation(line: 1951, column: 13, scope: !4048)
!4090 = !DILocation(line: 1952, column: 9, scope: !4048)
!4091 = !DILocation(line: 1953, column: 9, scope: !4048)
!4092 = !DILocation(line: 1953, column: 32, scope: !4048)
!4093 = !DILocation(line: 1953, column: 16, scope: !4048)
!4094 = !DILocation(line: 1955, column: 17, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4096, file: !3, line: 1955, column: 17)
!4096 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 1953, column: 37)
!4097 = !DILocation(line: 1955, column: 26, scope: !4095)
!4098 = !DILocation(line: 1956, column: 18, scope: !4095)
!4099 = !DILocation(line: 1956, column: 35, scope: !4095)
!4100 = !DILocation(line: 1956, column: 50, scope: !4095)
!4101 = !DILocation(line: 1957, column: 18, scope: !4095)
!4102 = !DILocation(line: 1957, column: 42, scope: !4095)
!4103 = !DILocation(line: 1957, column: 39, scope: !4095)
!4104 = !DILocation(line: 1955, column: 17, scope: !4096)
!4105 = !DILocation(line: 1957, column: 59, scope: !4095)
!4106 = !DILocation(line: 0, scope: !4048)
!4107 = !DILocation(line: 1960, column: 21, scope: !4096)
!4108 = !DILocation(line: 1961, column: 21, scope: !4096)
!4109 = !DILocation(line: 1963, column: 21, scope: !4096)
!4110 = !DILocation(line: 1964, column: 21, scope: !4096)
!4111 = !DILocation(line: 1965, column: 21, scope: !4096)
!4112 = !DILocation(line: 1966, column: 21, scope: !4096)
!4113 = !DILocation(line: 1967, column: 21, scope: !4096)
!4114 = !DILocation(line: 1968, column: 13, scope: !4096)
!4115 = !DILocation(line: 1969, column: 27, scope: !4096)
!4116 = distinct !{!4116, !4091, !4117}
!4117 = !DILocation(line: 1970, column: 9, scope: !4048)
!4118 = !DILocation(line: 0, scope: !4095)
!4119 = !DILocation(line: 0, scope: !4096)
!4120 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 1972, column: 13, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 1972, column: 13)
!4123 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !4121)
!4124 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !4121)
!4125 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !4121)
!4126 = !DILocation(line: 91, column: 20, scope: !1496, inlinedAt: !4121)
!4127 = !DILocation(line: 91, column: 13, scope: !1496, inlinedAt: !4121)
!4128 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !4121)
!4129 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !4121)
!4130 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !4121)
!4131 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !4121)
!4132 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !4121)
!4133 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !4121)
!4134 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !4121)
!4135 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !4121)
!4136 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !4121)
!4137 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !4121)
!4138 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !4121)
!4139 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !4121)
!4140 = !DILocation(line: 101, column: 5, scope: !1484, inlinedAt: !4121)
!4141 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !4121)
!4142 = !DILocation(line: 1972, column: 13, scope: !4048)
!4143 = !DILocation(line: 0, scope: !1496, inlinedAt: !4121)
!4144 = !DILocation(line: 0, scope: !4122)
!4145 = !DILocation(line: 1972, column: 13, scope: !4122)
!4146 = !DILocation(line: 1972, column: 28, scope: !4122)
!4147 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !4148)
!4148 = distinct !DILocation(line: 1973, column: 13, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 1973, column: 13)
!4150 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !4148)
!4151 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !4148)
!4152 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !4148)
!4153 = !DILocation(line: 91, column: 20, scope: !1496, inlinedAt: !4148)
!4154 = !DILocation(line: 91, column: 13, scope: !1496, inlinedAt: !4148)
!4155 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !4148)
!4156 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !4148)
!4157 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !4148)
!4158 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !4148)
!4159 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !4148)
!4160 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !4148)
!4161 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !4148)
!4162 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !4148)
!4163 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !4148)
!4164 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !4148)
!4165 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !4148)
!4166 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !4148)
!4167 = !DILocation(line: 101, column: 5, scope: !1484, inlinedAt: !4148)
!4168 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !4148)
!4169 = !DILocation(line: 1973, column: 13, scope: !4048)
!4170 = !DILocation(line: 0, scope: !1496, inlinedAt: !4148)
!4171 = !DILocation(line: 0, scope: !4149)
!4172 = !DILocation(line: 1973, column: 13, scope: !4149)
!4173 = !DILocation(line: 1973, column: 28, scope: !4149)
!4174 = !DILocation(line: 1975, column: 13, scope: !4048)
!4175 = !DILocation(line: 1976, column: 25, scope: !4048)
!4176 = !DILocation(line: 1976, column: 13, scope: !4048)
!4177 = !DILocation(line: 1977, column: 13, scope: !4048)
!4178 = !DILocation(line: 1978, column: 9, scope: !4048)
!4179 = !DILocation(line: 1979, column: 9, scope: !4048)
!4180 = !DILocation(line: 1981, column: 9, scope: !4045)
!4181 = !DILocation(line: 1987, column: 25, scope: !4053)
!4182 = !DILocation(line: 1987, column: 21, scope: !4053)
!4183 = !DILocation(line: 1989, column: 15, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 1989, column: 13)
!4185 = !DILocation(line: 1989, column: 13, scope: !4053)
!4186 = !DILocation(line: 1990, column: 20, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 1990, column: 18)
!4188 = !DILocation(line: 1990, column: 18, scope: !4184)
!4189 = !DILocation(line: 1991, column: 20, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4187, file: !3, line: 1991, column: 18)
!4191 = !DILocation(line: 1991, column: 18, scope: !4187)
!4192 = !DILocation(line: 1992, column: 20, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4190, file: !3, line: 1992, column: 18)
!4194 = !DILocation(line: 1992, column: 18, scope: !4190)
!4195 = !DILocation(line: 0, scope: !4184)
!4196 = !DILocation(line: 1993, column: 13, scope: !4053)
!4197 = !DILocation(line: 0, scope: !4053)
!4198 = !DILocation(line: 1988, column: 15, scope: !4053)
!4199 = !DILocation(line: 1995, column: 9, scope: !4045)
!4200 = !DILocation(line: 1997, column: 13, scope: !4045)
!4201 = !DILocation(line: 1998, column: 9, scope: !4045)
!4202 = !DILocation(line: 0, scope: !4044)
!4203 = !DILocation(line: 0, scope: !4045)
!4204 = !DILocation(line: 2000, column: 5, scope: !4034)
!4205 = !DILocation(line: 0, scope: !4034)
!4206 = !DILocation(line: 0, scope: !4062)
!4207 = !DILocation(line: 2001, column: 1, scope: !4034)
!4208 = distinct !DISubprogram(name: "ldbLogStackValue", scope: !3, file: !3, line: 2012, type: !734, isLocal: false, isDefinition: true, scopeLine: 2012, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4209)
!4209 = !{!4210, !4211, !4212}
!4210 = !DILocalVariable(name: "lua", arg: 1, scope: !4208, file: !3, line: 2012, type: !74)
!4211 = !DILocalVariable(name: "prefix", arg: 2, scope: !4208, file: !3, line: 2012, type: !11)
!4212 = !DILocalVariable(name: "s", scope: !4208, file: !3, line: 2013, type: !209)
!4213 = !DILocation(line: 2012, column: 34, scope: !4208)
!4214 = !DILocation(line: 2012, column: 45, scope: !4208)
!4215 = !DILocation(line: 2013, column: 13, scope: !4208)
!4216 = !DILocation(line: 2013, column: 9, scope: !4208)
!4217 = !DILocation(line: 2005, column: 26, scope: !1748, inlinedAt: !4218)
!4218 = distinct !DILocation(line: 2014, column: 9, scope: !4208)
!4219 = !DILocation(line: 2005, column: 40, scope: !1748, inlinedAt: !4218)
!4220 = !DILocation(line: 2005, column: 49, scope: !1748, inlinedAt: !4218)
!4221 = !DILocation(line: 2006, column: 12, scope: !1748, inlinedAt: !4218)
!4222 = !DILocation(line: 2006, column: 5, scope: !1748, inlinedAt: !4218)
!4223 = !DILocation(line: 2015, column: 5, scope: !4208)
!4224 = !DILocation(line: 2016, column: 1, scope: !4208)
!4225 = distinct !DISubprogram(name: "ldbRedisProtocolToHuman", scope: !3, file: !3, line: 2028, type: !4226, isLocal: false, isDefinition: true, scopeLine: 2028, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4228)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!11, !432, !11}
!4228 = !{!4229, !4230, !4231}
!4229 = !DILocalVariable(name: "o", arg: 1, scope: !4225, file: !3, line: 2028, type: !432)
!4230 = !DILocalVariable(name: "reply", arg: 2, scope: !4225, file: !3, line: 2028, type: !11)
!4231 = !DILocalVariable(name: "p", scope: !4225, file: !3, line: 2029, type: !11)
!4232 = !DILocation(line: 2028, column: 36, scope: !4225)
!4233 = !DILocation(line: 2028, column: 45, scope: !4225)
!4234 = !DILocation(line: 2029, column: 11, scope: !4225)
!4235 = !DILocation(line: 2030, column: 12, scope: !4225)
!4236 = !DILocation(line: 2030, column: 5, scope: !4225)
!4237 = !DILocalVariable(name: "o", arg: 1, scope: !4238, file: !3, line: 2043, type: !432)
!4238 = distinct !DISubprogram(name: "ldbRedisProtocolToHuman_Int", scope: !3, file: !3, line: 2043, type: !4226, isLocal: false, isDefinition: true, scopeLine: 2043, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4239)
!4239 = !{!4237, !4240, !4241}
!4240 = !DILocalVariable(name: "reply", arg: 2, scope: !4238, file: !3, line: 2043, type: !11)
!4241 = !DILocalVariable(name: "p", scope: !4238, file: !3, line: 2044, type: !11)
!4242 = !DILocation(line: 2043, column: 40, scope: !4238, inlinedAt: !4243)
!4243 = distinct !DILocation(line: 2031, column: 19, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 2030, column: 16)
!4245 = !DILocation(line: 2043, column: 49, scope: !4238, inlinedAt: !4243)
!4246 = !DILocation(line: 2044, column: 27, scope: !4238, inlinedAt: !4243)
!4247 = !DILocation(line: 2044, column: 15, scope: !4238, inlinedAt: !4243)
!4248 = !DILocation(line: 2044, column: 11, scope: !4238, inlinedAt: !4243)
!4249 = !DILocation(line: 2045, column: 20, scope: !4238, inlinedAt: !4243)
!4250 = !DILocation(line: 2045, column: 32, scope: !4238, inlinedAt: !4243)
!4251 = !DILocation(line: 2045, column: 38, scope: !4238, inlinedAt: !4243)
!4252 = !DILocation(line: 2045, column: 10, scope: !4238, inlinedAt: !4243)
!4253 = !DILocation(line: 2045, column: 8, scope: !4238, inlinedAt: !4243)
!4254 = !DILocation(line: 2046, column: 13, scope: !4238, inlinedAt: !4243)
!4255 = !DILocation(line: 2046, column: 5, scope: !4238, inlinedAt: !4243)
!4256 = !DILocation(line: 2031, column: 57, scope: !4244)
!4257 = !DILocalVariable(name: "o", arg: 1, scope: !4258, file: !3, line: 2049, type: !432)
!4258 = distinct !DISubprogram(name: "ldbRedisProtocolToHuman_Bulk", scope: !3, file: !3, line: 2049, type: !4226, isLocal: false, isDefinition: true, scopeLine: 2049, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4259)
!4259 = !{!4257, !4260, !4261, !4262}
!4260 = !DILocalVariable(name: "reply", arg: 2, scope: !4258, file: !3, line: 2049, type: !11)
!4261 = !DILocalVariable(name: "p", scope: !4258, file: !3, line: 2050, type: !11)
!4262 = !DILocalVariable(name: "bulklen", scope: !4258, file: !3, line: 2051, type: !13)
!4263 = !DILocation(line: 2049, column: 41, scope: !4258, inlinedAt: !4264)
!4264 = distinct !DILocation(line: 2032, column: 19, scope: !4244)
!4265 = !DILocation(line: 2049, column: 50, scope: !4258, inlinedAt: !4264)
!4266 = !DILocation(line: 2050, column: 27, scope: !4258, inlinedAt: !4264)
!4267 = !DILocation(line: 2050, column: 15, scope: !4258, inlinedAt: !4264)
!4268 = !DILocation(line: 2050, column: 11, scope: !4258, inlinedAt: !4264)
!4269 = !DILocation(line: 2051, column: 5, scope: !4258, inlinedAt: !4264)
!4270 = !DILocation(line: 2053, column: 24, scope: !4258, inlinedAt: !4264)
!4271 = !DILocation(line: 2053, column: 30, scope: !4258, inlinedAt: !4264)
!4272 = !DILocation(line: 2051, column: 15, scope: !4258, inlinedAt: !4264)
!4273 = !DILocation(line: 2053, column: 5, scope: !4258, inlinedAt: !4264)
!4274 = !DILocation(line: 2054, column: 9, scope: !4275, inlinedAt: !4264)
!4275 = distinct !DILexicalBlock(scope: !4258, file: !3, line: 2054, column: 9)
!4276 = !DILocation(line: 2054, column: 17, scope: !4275, inlinedAt: !4264)
!4277 = !DILocation(line: 0, scope: !4278, inlinedAt: !4264)
!4278 = distinct !DILexicalBlock(scope: !4275, file: !3, line: 2057, column: 12)
!4279 = !DILocation(line: 2054, column: 9, scope: !4258, inlinedAt: !4264)
!4280 = !DILocation(line: 2055, column: 14, scope: !4281, inlinedAt: !4264)
!4281 = distinct !DILexicalBlock(scope: !4275, file: !3, line: 2054, column: 24)
!4282 = !DILocation(line: 2055, column: 12, scope: !4281, inlinedAt: !4264)
!4283 = !DILocation(line: 2056, column: 9, scope: !4281, inlinedAt: !4264)
!4284 = !DILocation(line: 2058, column: 29, scope: !4278, inlinedAt: !4264)
!4285 = !DILocation(line: 2058, column: 14, scope: !4278, inlinedAt: !4264)
!4286 = !DILocation(line: 2058, column: 12, scope: !4278, inlinedAt: !4264)
!4287 = !DILocation(line: 2059, column: 20, scope: !4278, inlinedAt: !4264)
!4288 = !DILocation(line: 2059, column: 19, scope: !4278, inlinedAt: !4264)
!4289 = !DILocation(line: 2059, column: 9, scope: !4278, inlinedAt: !4264)
!4290 = !DILocation(line: 0, scope: !4244)
!4291 = !DILocation(line: 2061, column: 1, scope: !4258, inlinedAt: !4264)
!4292 = !DILocation(line: 2032, column: 58, scope: !4244)
!4293 = !DILocalVariable(name: "o", arg: 1, scope: !4294, file: !3, line: 2063, type: !432)
!4294 = distinct !DISubprogram(name: "ldbRedisProtocolToHuman_Status", scope: !3, file: !3, line: 2063, type: !4226, isLocal: false, isDefinition: true, scopeLine: 2063, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4295)
!4295 = !{!4293, !4296, !4297}
!4296 = !DILocalVariable(name: "reply", arg: 2, scope: !4294, file: !3, line: 2063, type: !11)
!4297 = !DILocalVariable(name: "p", scope: !4294, file: !3, line: 2064, type: !11)
!4298 = !DILocation(line: 2063, column: 43, scope: !4294, inlinedAt: !4299)
!4299 = distinct !DILocation(line: 2033, column: 19, scope: !4244)
!4300 = !DILocation(line: 2063, column: 52, scope: !4294, inlinedAt: !4299)
!4301 = !DILocation(line: 2064, column: 27, scope: !4294, inlinedAt: !4299)
!4302 = !DILocation(line: 2064, column: 15, scope: !4294, inlinedAt: !4299)
!4303 = !DILocation(line: 2064, column: 11, scope: !4294, inlinedAt: !4299)
!4304 = !DILocation(line: 2066, column: 21, scope: !4294, inlinedAt: !4299)
!4305 = !DILocation(line: 2066, column: 31, scope: !4294, inlinedAt: !4299)
!4306 = !DILocation(line: 2066, column: 10, scope: !4294, inlinedAt: !4299)
!4307 = !DILocation(line: 2066, column: 8, scope: !4294, inlinedAt: !4299)
!4308 = !DILocation(line: 2067, column: 13, scope: !4294, inlinedAt: !4299)
!4309 = !DILocation(line: 2067, column: 5, scope: !4294, inlinedAt: !4299)
!4310 = !DILocation(line: 2033, column: 60, scope: !4244)
!4311 = !DILocation(line: 2063, column: 43, scope: !4294, inlinedAt: !4312)
!4312 = distinct !DILocation(line: 2034, column: 19, scope: !4244)
!4313 = !DILocation(line: 2063, column: 52, scope: !4294, inlinedAt: !4312)
!4314 = !DILocation(line: 2064, column: 27, scope: !4294, inlinedAt: !4312)
!4315 = !DILocation(line: 2064, column: 15, scope: !4294, inlinedAt: !4312)
!4316 = !DILocation(line: 2064, column: 11, scope: !4294, inlinedAt: !4312)
!4317 = !DILocation(line: 2066, column: 21, scope: !4294, inlinedAt: !4312)
!4318 = !DILocation(line: 2066, column: 31, scope: !4294, inlinedAt: !4312)
!4319 = !DILocation(line: 2066, column: 10, scope: !4294, inlinedAt: !4312)
!4320 = !DILocation(line: 2066, column: 8, scope: !4294, inlinedAt: !4312)
!4321 = !DILocation(line: 2067, column: 13, scope: !4294, inlinedAt: !4312)
!4322 = !DILocation(line: 2067, column: 5, scope: !4294, inlinedAt: !4312)
!4323 = !DILocation(line: 2034, column: 60, scope: !4244)
!4324 = !DILocation(line: 2035, column: 19, scope: !4244)
!4325 = !DILocation(line: 2035, column: 63, scope: !4244)
!4326 = !DILocation(line: 2037, column: 5, scope: !4225)
!4327 = !DILocation(line: 2043, column: 40, scope: !4238)
!4328 = !DILocation(line: 2043, column: 49, scope: !4238)
!4329 = !DILocation(line: 2044, column: 27, scope: !4238)
!4330 = !DILocation(line: 2044, column: 15, scope: !4238)
!4331 = !DILocation(line: 2044, column: 11, scope: !4238)
!4332 = !DILocation(line: 2045, column: 20, scope: !4238)
!4333 = !DILocation(line: 2045, column: 32, scope: !4238)
!4334 = !DILocation(line: 2045, column: 38, scope: !4238)
!4335 = !DILocation(line: 2045, column: 10, scope: !4238)
!4336 = !DILocation(line: 2045, column: 8, scope: !4238)
!4337 = !DILocation(line: 2046, column: 13, scope: !4238)
!4338 = !DILocation(line: 2046, column: 5, scope: !4238)
!4339 = !DILocation(line: 2049, column: 41, scope: !4258)
!4340 = !DILocation(line: 2049, column: 50, scope: !4258)
!4341 = !DILocation(line: 2050, column: 27, scope: !4258)
!4342 = !DILocation(line: 2050, column: 15, scope: !4258)
!4343 = !DILocation(line: 2050, column: 11, scope: !4258)
!4344 = !DILocation(line: 2051, column: 5, scope: !4258)
!4345 = !DILocation(line: 2053, column: 24, scope: !4258)
!4346 = !DILocation(line: 2053, column: 30, scope: !4258)
!4347 = !DILocation(line: 2051, column: 15, scope: !4258)
!4348 = !DILocation(line: 2053, column: 5, scope: !4258)
!4349 = !DILocation(line: 2054, column: 9, scope: !4275)
!4350 = !DILocation(line: 2054, column: 17, scope: !4275)
!4351 = !DILocation(line: 0, scope: !4278)
!4352 = !DILocation(line: 2054, column: 9, scope: !4258)
!4353 = !DILocation(line: 2055, column: 14, scope: !4281)
!4354 = !DILocation(line: 2055, column: 12, scope: !4281)
!4355 = !DILocation(line: 2056, column: 9, scope: !4281)
!4356 = !DILocation(line: 2058, column: 29, scope: !4278)
!4357 = !DILocation(line: 2058, column: 14, scope: !4278)
!4358 = !DILocation(line: 2058, column: 12, scope: !4278)
!4359 = !DILocation(line: 2059, column: 20, scope: !4278)
!4360 = !DILocation(line: 2059, column: 19, scope: !4278)
!4361 = !DILocation(line: 2059, column: 9, scope: !4278)
!4362 = !DILocation(line: 0, scope: !4281)
!4363 = !DILocation(line: 2061, column: 1, scope: !4258)
!4364 = !DILocation(line: 2063, column: 43, scope: !4294)
!4365 = !DILocation(line: 2063, column: 52, scope: !4294)
!4366 = !DILocation(line: 2064, column: 27, scope: !4294)
!4367 = !DILocation(line: 2064, column: 15, scope: !4294)
!4368 = !DILocation(line: 2064, column: 11, scope: !4294)
!4369 = !DILocation(line: 2066, column: 21, scope: !4294)
!4370 = !DILocation(line: 2066, column: 31, scope: !4294)
!4371 = !DILocation(line: 2066, column: 10, scope: !4294)
!4372 = !DILocation(line: 2066, column: 8, scope: !4294)
!4373 = !DILocation(line: 2067, column: 13, scope: !4294)
!4374 = !DILocation(line: 2067, column: 5, scope: !4294)
!4375 = distinct !DISubprogram(name: "ldbRedisProtocolToHuman_MultiBulk", scope: !3, file: !3, line: 2070, type: !4226, isLocal: false, isDefinition: true, scopeLine: 2070, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4376)
!4376 = !{!4377, !4378, !4379, !4380, !4381}
!4377 = !DILocalVariable(name: "o", arg: 1, scope: !4375, file: !3, line: 2070, type: !432)
!4378 = !DILocalVariable(name: "reply", arg: 2, scope: !4375, file: !3, line: 2070, type: !11)
!4379 = !DILocalVariable(name: "p", scope: !4375, file: !3, line: 2071, type: !11)
!4380 = !DILocalVariable(name: "mbulklen", scope: !4375, file: !3, line: 2072, type: !13)
!4381 = !DILocalVariable(name: "j", scope: !4375, file: !3, line: 2073, type: !15)
!4382 = !DILocation(line: 2070, column: 46, scope: !4375)
!4383 = !DILocation(line: 2070, column: 55, scope: !4375)
!4384 = !DILocation(line: 2071, column: 27, scope: !4375)
!4385 = !DILocation(line: 2071, column: 15, scope: !4375)
!4386 = !DILocation(line: 2071, column: 11, scope: !4375)
!4387 = !DILocation(line: 2072, column: 5, scope: !4375)
!4388 = !DILocation(line: 2073, column: 9, scope: !4375)
!4389 = !DILocation(line: 2075, column: 24, scope: !4375)
!4390 = !DILocation(line: 2075, column: 30, scope: !4375)
!4391 = !DILocation(line: 2072, column: 15, scope: !4375)
!4392 = !DILocation(line: 2075, column: 5, scope: !4375)
!4393 = !DILocation(line: 2076, column: 7, scope: !4375)
!4394 = !DILocation(line: 2077, column: 9, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 2077, column: 9)
!4396 = !DILocation(line: 2077, column: 18, scope: !4395)
!4397 = !DILocation(line: 0, scope: !4375)
!4398 = !DILocation(line: 2077, column: 9, scope: !4375)
!4399 = !DILocation(line: 2078, column: 14, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4395, file: !3, line: 2077, column: 25)
!4401 = !DILocation(line: 2079, column: 9, scope: !4400)
!4402 = !DILocation(line: 2081, column: 10, scope: !4375)
!4403 = !DILocation(line: 2081, column: 8, scope: !4375)
!4404 = !DILocation(line: 2082, column: 10, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 2082, column: 5)
!4406 = !DILocation(line: 2082, column: 21, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 2082, column: 5)
!4408 = !DILocation(line: 2082, column: 19, scope: !4407)
!4409 = !DILocation(line: 2082, column: 5, scope: !4405)
!4410 = !DILocation(line: 2083, column: 13, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4407, file: !3, line: 2082, column: 36)
!4412 = !DILocation(line: 2084, column: 18, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4411, file: !3, line: 2084, column: 13)
!4414 = !DILocation(line: 2084, column: 26, scope: !4413)
!4415 = !DILocation(line: 2084, column: 15, scope: !4413)
!4416 = !DILocation(line: 2084, column: 13, scope: !4411)
!4417 = !DILocation(line: 2084, column: 45, scope: !4413)
!4418 = !DILocation(line: 2084, column: 35, scope: !4413)
!4419 = !DILocation(line: 2084, column: 33, scope: !4413)
!4420 = !DILocation(line: 2084, column: 30, scope: !4413)
!4421 = !DILocation(line: 2082, column: 32, scope: !4407)
!4422 = !DILocation(line: 2082, column: 5, scope: !4407)
!4423 = distinct !{!4423, !4409, !4424}
!4424 = !DILocation(line: 2085, column: 5, scope: !4405)
!4425 = !DILocation(line: 2086, column: 20, scope: !4375)
!4426 = !DILocation(line: 0, scope: !4411)
!4427 = !DILocation(line: 2086, column: 10, scope: !4375)
!4428 = !DILocation(line: 2087, column: 5, scope: !4375)
!4429 = !DILocation(line: 0, scope: !4400)
!4430 = !DILocation(line: 2088, column: 1, scope: !4375)
!4431 = distinct !DISubprogram(name: "ldbPrint", scope: !3, file: !3, line: 2102, type: !734, isLocal: false, isDefinition: true, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4432)
!4432 = !{!4433, !4434, !4435, !4436, !4437, !4439}
!4433 = !DILocalVariable(name: "lua", arg: 1, scope: !4431, file: !3, line: 2102, type: !74)
!4434 = !DILocalVariable(name: "varname", arg: 2, scope: !4431, file: !3, line: 2102, type: !11)
!4435 = !DILocalVariable(name: "ar", scope: !4431, file: !3, line: 2103, type: !740)
!4436 = !DILocalVariable(name: "l", scope: !4431, file: !3, line: 2105, type: !15)
!4437 = !DILocalVariable(name: "name", scope: !4438, file: !3, line: 2108, type: !745)
!4438 = distinct !DILexicalBlock(scope: !4431, file: !3, line: 2106, column: 42)
!4439 = !DILocalVariable(name: "i", scope: !4438, file: !3, line: 2109, type: !15)
!4440 = !DILocation(line: 2102, column: 26, scope: !4431)
!4441 = !DILocation(line: 2102, column: 37, scope: !4431)
!4442 = !DILocation(line: 2103, column: 5, scope: !4431)
!4443 = !DILocation(line: 2105, column: 9, scope: !4431)
!4444 = !DILocation(line: 2106, column: 5, scope: !4431)
!4445 = !DILocation(line: 2103, column: 15, scope: !4431)
!4446 = !DILocation(line: 2106, column: 12, scope: !4431)
!4447 = !DILocation(line: 2106, column: 36, scope: !4431)
!4448 = !DILocation(line: 2107, column: 10, scope: !4438)
!4449 = !DILocation(line: 2109, column: 13, scope: !4438)
!4450 = !DILocation(line: 2110, column: 9, scope: !4438)
!4451 = !DILocation(line: 2110, column: 23, scope: !4438)
!4452 = !DILocation(line: 2108, column: 21, scope: !4438)
!4453 = !DILocation(line: 2110, column: 48, scope: !4438)
!4454 = !DILocation(line: 2112, column: 17, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4456, file: !3, line: 2112, column: 17)
!4456 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 2110, column: 57)
!4457 = !DILocation(line: 2112, column: 38, scope: !4455)
!4458 = !DILocation(line: 2112, column: 17, scope: !4456)
!4459 = !DILocation(line: 2012, column: 34, scope: !4208, inlinedAt: !4460)
!4460 = distinct !DILocation(line: 2113, column: 17, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 2112, column: 44)
!4462 = !DILocation(line: 2012, column: 45, scope: !4208, inlinedAt: !4460)
!4463 = !DILocation(line: 2013, column: 13, scope: !4208, inlinedAt: !4460)
!4464 = !DILocation(line: 2013, column: 9, scope: !4208, inlinedAt: !4460)
!4465 = !DILocation(line: 2005, column: 26, scope: !1748, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 2014, column: 9, scope: !4208, inlinedAt: !4460)
!4467 = !DILocation(line: 2005, column: 40, scope: !1748, inlinedAt: !4466)
!4468 = !DILocation(line: 2005, column: 49, scope: !1748, inlinedAt: !4466)
!4469 = !DILocation(line: 2006, column: 12, scope: !1748, inlinedAt: !4466)
!4470 = !DILocation(line: 2006, column: 5, scope: !1748, inlinedAt: !4466)
!4471 = !DILocation(line: 2015, column: 5, scope: !4208, inlinedAt: !4460)
!4472 = !DILocation(line: 2016, column: 1, scope: !4208, inlinedAt: !4460)
!4473 = !DILocation(line: 2114, column: 17, scope: !4461)
!4474 = !DILocation(line: 2111, column: 14, scope: !4456)
!4475 = !DILocation(line: 2117, column: 17, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 2116, column: 20)
!4477 = distinct !{!4477, !4450, !4478}
!4478 = !DILocation(line: 2119, column: 9, scope: !4438)
!4479 = !DILocation(line: 2120, column: 5, scope: !4431)
!4480 = !DILocation(line: 2123, column: 10, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4431, file: !3, line: 2123, column: 9)
!4482 = !DILocation(line: 2123, column: 33, scope: !4481)
!4483 = !DILocation(line: 2123, column: 37, scope: !4481)
!4484 = !DILocation(line: 2123, column: 9, scope: !4431)
!4485 = !DILocation(line: 2124, column: 9, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 2123, column: 61)
!4487 = !DILocation(line: 2012, column: 34, scope: !4208, inlinedAt: !4488)
!4488 = distinct !DILocation(line: 2125, column: 9, scope: !4486)
!4489 = !DILocation(line: 2012, column: 45, scope: !4208, inlinedAt: !4488)
!4490 = !DILocation(line: 2013, column: 13, scope: !4208, inlinedAt: !4488)
!4491 = !DILocation(line: 2013, column: 9, scope: !4208, inlinedAt: !4488)
!4492 = !DILocation(line: 2005, column: 26, scope: !1748, inlinedAt: !4493)
!4493 = distinct !DILocation(line: 2014, column: 9, scope: !4208, inlinedAt: !4488)
!4494 = !DILocation(line: 2005, column: 40, scope: !1748, inlinedAt: !4493)
!4495 = !DILocation(line: 2005, column: 49, scope: !1748, inlinedAt: !4493)
!4496 = !DILocation(line: 2006, column: 12, scope: !1748, inlinedAt: !4493)
!4497 = !DILocation(line: 2006, column: 5, scope: !1748, inlinedAt: !4493)
!4498 = !DILocation(line: 2015, column: 5, scope: !4208, inlinedAt: !4488)
!4499 = !DILocation(line: 2016, column: 1, scope: !4208, inlinedAt: !4488)
!4500 = !DILocation(line: 2126, column: 9, scope: !4486)
!4501 = !DILocation(line: 2127, column: 5, scope: !4486)
!4502 = !DILocation(line: 2128, column: 16, scope: !4503)
!4503 = distinct !DILexicalBlock(scope: !4481, file: !3, line: 2127, column: 12)
!4504 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !4505)
!4505 = distinct !DILocation(line: 2128, column: 9, scope: !4503)
!4506 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !4505)
!4507 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !4505)
!4508 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !4505)
!4509 = !DILocation(line: 2130, column: 1, scope: !4431)
!4510 = distinct !DISubprogram(name: "ldbPrintAll", scope: !3, file: !3, line: 2134, type: !828, isLocal: false, isDefinition: true, scopeLine: 2134, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4511)
!4511 = !{!4512, !4513, !4514, !4515, !4518, !4519}
!4512 = !DILocalVariable(name: "lua", arg: 1, scope: !4510, file: !3, line: 2134, type: !74)
!4513 = !DILocalVariable(name: "ar", scope: !4510, file: !3, line: 2135, type: !740)
!4514 = !DILocalVariable(name: "vars", scope: !4510, file: !3, line: 2136, type: !15)
!4515 = !DILocalVariable(name: "name", scope: !4516, file: !3, line: 2139, type: !745)
!4516 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 2138, column: 39)
!4517 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 2138, column: 9)
!4518 = !DILocalVariable(name: "i", scope: !4516, file: !3, line: 2140, type: !15)
!4519 = !DILocalVariable(name: "prefix", scope: !4520, file: !3, line: 2144, type: !209)
!4520 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 2143, column: 47)
!4521 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 2143, column: 17)
!4522 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 2141, column: 57)
!4523 = !DILocation(line: 2134, column: 29, scope: !4510)
!4524 = !DILocation(line: 2135, column: 5, scope: !4510)
!4525 = !DILocation(line: 2136, column: 9, scope: !4510)
!4526 = !DILocation(line: 2135, column: 15, scope: !4510)
!4527 = !DILocation(line: 2138, column: 9, scope: !4517)
!4528 = !DILocation(line: 2138, column: 33, scope: !4517)
!4529 = !DILocation(line: 2138, column: 9, scope: !4510)
!4530 = !DILocation(line: 0, scope: !4516)
!4531 = !DILocation(line: 2140, column: 13, scope: !4516)
!4532 = !DILocation(line: 2141, column: 23, scope: !4516)
!4533 = !DILocation(line: 2139, column: 21, scope: !4516)
!4534 = !DILocation(line: 2141, column: 48, scope: !4516)
!4535 = !DILocation(line: 2141, column: 9, scope: !4516)
!4536 = !DILocation(line: 2151, column: 5, scope: !4516)
!4537 = !DILocation(line: 2153, column: 9, scope: !4510)
!4538 = !DILocation(line: 2142, column: 14, scope: !4522)
!4539 = !DILocation(line: 2143, column: 18, scope: !4521)
!4540 = !DILocation(line: 2143, column: 17, scope: !4522)
!4541 = !DILocation(line: 2144, column: 43, scope: !4520)
!4542 = !DILocation(line: 2144, column: 30, scope: !4520)
!4543 = !DILocation(line: 2144, column: 21, scope: !4520)
!4544 = !DILocation(line: 2012, column: 34, scope: !4208, inlinedAt: !4545)
!4545 = distinct !DILocation(line: 2145, column: 17, scope: !4520)
!4546 = !DILocation(line: 2012, column: 45, scope: !4208, inlinedAt: !4545)
!4547 = !DILocation(line: 2013, column: 13, scope: !4208, inlinedAt: !4545)
!4548 = !DILocation(line: 2013, column: 9, scope: !4208, inlinedAt: !4545)
!4549 = !DILocation(line: 2005, column: 26, scope: !1748, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 2014, column: 9, scope: !4208, inlinedAt: !4545)
!4551 = !DILocation(line: 2005, column: 40, scope: !1748, inlinedAt: !4550)
!4552 = !DILocation(line: 2005, column: 49, scope: !1748, inlinedAt: !4550)
!4553 = !DILocation(line: 2006, column: 12, scope: !1748, inlinedAt: !4550)
!4554 = !DILocation(line: 2006, column: 5, scope: !1748, inlinedAt: !4550)
!4555 = !DILocation(line: 2015, column: 5, scope: !4208, inlinedAt: !4545)
!4556 = !DILocation(line: 2016, column: 1, scope: !4208, inlinedAt: !4545)
!4557 = !DILocation(line: 2146, column: 17, scope: !4520)
!4558 = !DILocation(line: 2147, column: 21, scope: !4520)
!4559 = !DILocation(line: 2148, column: 13, scope: !4520)
!4560 = !DILocation(line: 0, scope: !4520)
!4561 = !DILocation(line: 2149, column: 13, scope: !4522)
!4562 = distinct !{!4562, !4535, !4563}
!4563 = !DILocation(line: 2150, column: 9, scope: !4516)
!4564 = !DILocation(line: 2153, column: 14, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 2153, column: 9)
!4566 = !DILocation(line: 2154, column: 16, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4565, file: !3, line: 2153, column: 20)
!4568 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 2154, column: 9, scope: !4567)
!4570 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !4569)
!4571 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !4569)
!4572 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !4569)
!4573 = !DILocation(line: 2155, column: 5, scope: !4567)
!4574 = !DILocation(line: 2156, column: 1, scope: !4510)
!4575 = distinct !DISubprogram(name: "ldbBreak", scope: !3, file: !3, line: 2159, type: !4576, isLocal: false, isDefinition: true, scopeLine: 2159, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4578)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{null, !432, !15}
!4578 = !{!4579, !4580, !4581, !4586, !4588, !4592}
!4579 = !DILocalVariable(name: "argv", arg: 1, scope: !4575, file: !3, line: 2159, type: !432)
!4580 = !DILocalVariable(name: "argc", arg: 2, scope: !4575, file: !3, line: 2159, type: !15)
!4581 = !DILocalVariable(name: "j", scope: !4582, file: !3, line: 2166, type: !15)
!4582 = distinct !DILexicalBlock(scope: !4583, file: !3, line: 2164, column: 16)
!4583 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 2161, column: 13)
!4584 = distinct !DILexicalBlock(scope: !4585, file: !3, line: 2160, column: 20)
!4585 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 2160, column: 9)
!4586 = !DILocalVariable(name: "j", scope: !4587, file: !3, line: 2171, type: !15)
!4587 = distinct !DILexicalBlock(scope: !4585, file: !3, line: 2170, column: 12)
!4588 = !DILocalVariable(name: "arg", scope: !4589, file: !3, line: 2173, type: !11)
!4589 = distinct !DILexicalBlock(scope: !4590, file: !3, line: 2172, column: 36)
!4590 = distinct !DILexicalBlock(scope: !4591, file: !3, line: 2172, column: 9)
!4591 = distinct !DILexicalBlock(scope: !4587, file: !3, line: 2172, column: 9)
!4592 = !DILocalVariable(name: "line", scope: !4589, file: !3, line: 2174, type: !23)
!4593 = !DILocation(line: 2159, column: 20, scope: !4575)
!4594 = !DILocation(line: 2159, column: 30, scope: !4575)
!4595 = !DILocation(line: 2160, column: 14, scope: !4585)
!4596 = !DILocation(line: 2160, column: 9, scope: !4575)
!4597 = !DILocation(line: 2161, column: 17, scope: !4583)
!4598 = !DILocation(line: 2161, column: 25, scope: !4583)
!4599 = !DILocation(line: 2161, column: 13, scope: !4584)
!4600 = !DILocation(line: 2162, column: 20, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4583, file: !3, line: 2161, column: 31)
!4602 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !4603)
!4603 = distinct !DILocation(line: 2162, column: 13, scope: !4601)
!4604 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !4603)
!4605 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !4603)
!4606 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !4603)
!4607 = !DILocation(line: 2163, column: 13, scope: !4601)
!4608 = !DILocation(line: 2165, column: 30, scope: !4582)
!4609 = !DILocation(line: 2165, column: 67, scope: !4582)
!4610 = !DILocation(line: 2165, column: 20, scope: !4582)
!4611 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !4612)
!4612 = distinct !DILocation(line: 2165, column: 13, scope: !4582)
!4613 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !4612)
!4614 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !4612)
!4615 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !4612)
!4616 = !DILocation(line: 2166, column: 17, scope: !4582)
!4617 = !DILocation(line: 2167, column: 18, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 2167, column: 13)
!4619 = !DILocation(line: 2167, column: 33, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4618, file: !3, line: 2167, column: 13)
!4621 = !DILocation(line: 2167, column: 27, scope: !4620)
!4622 = !DILocation(line: 2167, column: 13, scope: !4618)
!4623 = !DILocation(line: 2168, column: 34, scope: !4620)
!4624 = !DILocation(line: 2168, column: 17, scope: !4620)
!4625 = !DILocation(line: 2167, column: 43, scope: !4620)
!4626 = !DILocation(line: 2167, column: 13, scope: !4620)
!4627 = distinct !{!4627, !4622, !4628}
!4628 = !DILocation(line: 2168, column: 43, scope: !4618)
!4629 = !DILocation(line: 2171, column: 13, scope: !4587)
!4630 = !DILocation(line: 2172, column: 14, scope: !4591)
!4631 = !DILocation(line: 2172, column: 23, scope: !4590)
!4632 = !DILocation(line: 2172, column: 9, scope: !4591)
!4633 = !DILocation(line: 2173, column: 25, scope: !4589)
!4634 = !DILocation(line: 2173, column: 19, scope: !4589)
!4635 = !DILocation(line: 2174, column: 13, scope: !4589)
!4636 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !4637)
!4637 = distinct !DILocation(line: 2175, column: 31, scope: !4638)
!4638 = distinct !DILexicalBlock(scope: !4589, file: !3, line: 2175, column: 17)
!4639 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !4637)
!4640 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !4637)
!4641 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !4637)
!4642 = !DILocation(line: 91, column: 20, scope: !1496, inlinedAt: !4637)
!4643 = !DILocation(line: 91, column: 13, scope: !1496, inlinedAt: !4637)
!4644 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !4637)
!4645 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !4637)
!4646 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !4637)
!4647 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !4637)
!4648 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !4637)
!4649 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !4637)
!4650 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !4637)
!4651 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !4637)
!4652 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !4637)
!4653 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !4637)
!4654 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !4637)
!4655 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !4637)
!4656 = !DILocation(line: 0, scope: !1496, inlinedAt: !4637)
!4657 = !DILocation(line: 0, scope: !4638)
!4658 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !4637)
!4659 = !DILocation(line: 2174, column: 18, scope: !4589)
!4660 = !DILocation(line: 2175, column: 18, scope: !4638)
!4661 = !DILocation(line: 2175, column: 17, scope: !4589)
!4662 = !DILocation(line: 2176, column: 34, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4638, file: !3, line: 2175, column: 51)
!4664 = !DILocation(line: 2176, column: 24, scope: !4663)
!4665 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !4666)
!4666 = distinct !DILocation(line: 2176, column: 17, scope: !4663)
!4667 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !4666)
!4668 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !4666)
!4669 = !DILocation(line: 2177, column: 13, scope: !4663)
!4670 = !DILocation(line: 2178, column: 21, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 2178, column: 21)
!4672 = distinct !DILexicalBlock(scope: !4638, file: !3, line: 2177, column: 20)
!4673 = !DILocation(line: 2178, column: 26, scope: !4671)
!4674 = !DILocation(line: 2178, column: 21, scope: !4672)
!4675 = !DILocation(line: 2179, column: 33, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 2178, column: 32)
!4677 = !DILocation(line: 2180, column: 28, scope: !4676)
!4678 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !4679)
!4679 = distinct !DILocation(line: 2180, column: 21, scope: !4676)
!4680 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !4679)
!4681 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !4679)
!4682 = !DILocation(line: 2181, column: 17, scope: !4676)
!4683 = !DILocation(line: 2181, column: 33, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 2181, column: 28)
!4685 = !DILocation(line: 2181, column: 28, scope: !4671)
!4686 = !DILocation(line: 2182, column: 29, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 2182, column: 25)
!4688 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 2181, column: 38)
!4689 = !DILocation(line: 2182, column: 37, scope: !4687)
!4690 = !DILocation(line: 2182, column: 25, scope: !4688)
!4691 = !DILocation(line: 2183, column: 32, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 2182, column: 61)
!4693 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !4694)
!4694 = distinct !DILocation(line: 2183, column: 25, scope: !4692)
!4695 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !4694)
!4696 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !4694)
!4697 = !DILocation(line: 2184, column: 21, scope: !4692)
!4698 = !DILocation(line: 2184, column: 49, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 2184, column: 32)
!4700 = !DILocation(line: 1806, column: 26, scope: !3767, inlinedAt: !4701)
!4701 = distinct !DILocation(line: 2184, column: 32, scope: !4699)
!4702 = !DILocation(line: 1807, column: 14, scope: !3772, inlinedAt: !4701)
!4703 = !DILocation(line: 1807, column: 19, scope: !3772, inlinedAt: !4701)
!4704 = !DILocation(line: 1807, column: 33, scope: !3772, inlinedAt: !4701)
!4705 = !DILocation(line: 1807, column: 27, scope: !3772, inlinedAt: !4701)
!4706 = !DILocation(line: 1807, column: 9, scope: !3767, inlinedAt: !4701)
!4707 = !DILocation(line: 1795, column: 25, scope: !2883, inlinedAt: !4708)
!4708 = distinct !DILocation(line: 1808, column: 10, scope: !3779, inlinedAt: !4701)
!4709 = !DILocation(line: 1796, column: 9, scope: !2883, inlinedAt: !4708)
!4710 = !DILocation(line: 1798, column: 10, scope: !2892, inlinedAt: !4708)
!4711 = !DILocation(line: 1798, column: 19, scope: !2894, inlinedAt: !4708)
!4712 = !DILocation(line: 1798, column: 5, scope: !2892, inlinedAt: !4708)
!4713 = !DILocation(line: 1800, column: 5, scope: !2883, inlinedAt: !4708)
!4714 = !DILocation(line: 1801, column: 1, scope: !2883, inlinedAt: !4708)
!4715 = !DILocation(line: 1808, column: 32, scope: !3779, inlinedAt: !4701)
!4716 = !DILocation(line: 1809, column: 9, scope: !3796, inlinedAt: !4701)
!4717 = !DILocation(line: 1799, column: 13, scope: !2899, inlinedAt: !4708)
!4718 = !DILocation(line: 1799, column: 23, scope: !2899, inlinedAt: !4708)
!4719 = !DILocation(line: 1799, column: 13, scope: !2894, inlinedAt: !4708)
!4720 = !DILocation(line: 1798, column: 35, scope: !2894, inlinedAt: !4708)
!4721 = !DILocation(line: 1798, column: 5, scope: !2894, inlinedAt: !4708)
!4722 = !DILocation(line: 1799, column: 32, scope: !2899, inlinedAt: !4708)
!4723 = !DILocation(line: 1812, column: 5, scope: !3767, inlinedAt: !4701)
!4724 = !DILocation(line: 1809, column: 27, scope: !3796, inlinedAt: !4701)
!4725 = !DILocation(line: 1809, column: 31, scope: !3796, inlinedAt: !4701)
!4726 = !DILocation(line: 1810, column: 9, scope: !3796, inlinedAt: !4701)
!4727 = !DILocation(line: 1813, column: 1, scope: !3767, inlinedAt: !4701)
!4728 = !DILocation(line: 2184, column: 32, scope: !4687)
!4729 = !DILocation(line: 1903, column: 18, scope: !4004, inlinedAt: !4730)
!4730 = distinct !DILocation(line: 2185, column: 25, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 2184, column: 56)
!4732 = !DILocation(line: 1903, column: 30, scope: !4004, inlinedAt: !4730)
!4733 = !DILocation(line: 1904, column: 9, scope: !4004, inlinedAt: !4730)
!4734 = !DILocation(line: 1906, column: 10, scope: !4015, inlinedAt: !4730)
!4735 = !DILocation(line: 1906, column: 26, scope: !4017, inlinedAt: !4730)
!4736 = !DILocation(line: 1906, column: 19, scope: !4017, inlinedAt: !4730)
!4737 = !DILocation(line: 1906, column: 5, scope: !4015, inlinedAt: !4730)
!4738 = !DILocation(line: 1907, column: 25, scope: !4021, inlinedAt: !4730)
!4739 = !DILocation(line: 1907, column: 38, scope: !4021, inlinedAt: !4730)
!4740 = !DILocation(line: 1907, column: 28, scope: !4021, inlinedAt: !4730)
!4741 = !DILocation(line: 1907, column: 42, scope: !4021, inlinedAt: !4730)
!4742 = !DILocation(line: 1907, column: 13, scope: !4022, inlinedAt: !4730)
!4743 = !DILocation(line: 1908, column: 9, scope: !4022, inlinedAt: !4730)
!4744 = !DILocation(line: 1909, column: 5, scope: !4022, inlinedAt: !4730)
!4745 = !DILocation(line: 1906, column: 34, scope: !4017, inlinedAt: !4730)
!4746 = !DILocation(line: 1906, column: 5, scope: !4017, inlinedAt: !4730)
!4747 = !DILocation(line: 0, scope: !4699)
!4748 = !DILocation(line: 2187, column: 32, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 2186, column: 28)
!4750 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !4751)
!4751 = distinct !DILocation(line: 2187, column: 25, scope: !4749)
!4752 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !4751)
!4753 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !4751)
!4754 = !DILocation(line: 2189, column: 28, scope: !4684)
!4755 = !DILocation(line: 2190, column: 42, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 2190, column: 25)
!4757 = distinct !DILexicalBlock(scope: !4758, file: !3, line: 2189, column: 38)
!4758 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 2189, column: 28)
!4759 = !DILocation(line: 1817, column: 26, scope: !3803, inlinedAt: !4760)
!4760 = distinct !DILocation(line: 2190, column: 25, scope: !4756)
!4761 = !DILocation(line: 1818, column: 9, scope: !3803, inlinedAt: !4760)
!4762 = !DILocation(line: 1820, column: 10, scope: !3810, inlinedAt: !4760)
!4763 = !DILocation(line: 1820, column: 25, scope: !3812, inlinedAt: !4760)
!4764 = !DILocation(line: 1820, column: 19, scope: !3812, inlinedAt: !4760)
!4765 = !DILocation(line: 1820, column: 5, scope: !3810, inlinedAt: !4760)
!4766 = !DILocation(line: 1821, column: 13, scope: !3816, inlinedAt: !4760)
!4767 = !DILocation(line: 1821, column: 23, scope: !3816, inlinedAt: !4760)
!4768 = !DILocation(line: 1821, column: 13, scope: !3817, inlinedAt: !4760)
!4769 = !DILocation(line: 1820, column: 35, scope: !3812, inlinedAt: !4760)
!4770 = !DILocation(line: 1820, column: 5, scope: !3812, inlinedAt: !4760)
!4771 = !DILocation(line: 1822, column: 24, scope: !3821, inlinedAt: !4760)
!4772 = !DILocation(line: 1823, column: 21, scope: !3821, inlinedAt: !4760)
!4773 = !DILocation(line: 1823, column: 38, scope: !3821, inlinedAt: !4760)
!4774 = !DILocation(line: 1823, column: 30, scope: !3821, inlinedAt: !4760)
!4775 = !DILocation(line: 1823, column: 52, scope: !3821, inlinedAt: !4760)
!4776 = !DILocation(line: 1823, column: 41, scope: !3821, inlinedAt: !4760)
!4777 = !DILocation(line: 1823, column: 13, scope: !3821, inlinedAt: !4760)
!4778 = !DILocation(line: 1824, column: 13, scope: !3821, inlinedAt: !4760)
!4779 = !DILocation(line: 1828, column: 1, scope: !3803, inlinedAt: !4760)
!4780 = !DILocation(line: 2190, column: 25, scope: !4757)
!4781 = !DILocation(line: 2191, column: 32, scope: !4756)
!4782 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !4783)
!4783 = distinct !DILocation(line: 2191, column: 25, scope: !4756)
!4784 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !4783)
!4785 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !4783)
!4786 = !DILocation(line: 2191, column: 25, scope: !4756)
!4787 = !DILocation(line: 1827, column: 5, scope: !3803, inlinedAt: !4760)
!4788 = !DILocation(line: 2193, column: 32, scope: !4756)
!4789 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !4790)
!4790 = distinct !DILocation(line: 2193, column: 25, scope: !4756)
!4791 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !4790)
!4792 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !4790)
!4793 = !DILocation(line: 0, scope: !4663)
!4794 = !DILocation(line: 2196, column: 9, scope: !4590)
!4795 = !DILocation(line: 2172, column: 32, scope: !4590)
!4796 = !DILocation(line: 2172, column: 9, scope: !4590)
!4797 = distinct !{!4797, !4632, !4798}
!4798 = !DILocation(line: 2196, column: 9, scope: !4591)
!4799 = !DILocation(line: 2198, column: 1, scope: !4575)
!4800 = distinct !DISubprogram(name: "ldbEval", scope: !3, file: !3, line: 2203, type: !4801, isLocal: false, isDefinition: true, scopeLine: 2203, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4803)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{null, !74, !432, !15}
!4803 = !{!4804, !4805, !4806, !4807, !4808}
!4804 = !DILocalVariable(name: "lua", arg: 1, scope: !4800, file: !3, line: 2203, type: !74)
!4805 = !DILocalVariable(name: "argv", arg: 2, scope: !4800, file: !3, line: 2203, type: !432)
!4806 = !DILocalVariable(name: "argc", arg: 3, scope: !4800, file: !3, line: 2203, type: !15)
!4807 = !DILocalVariable(name: "code", scope: !4800, file: !3, line: 2205, type: !209)
!4808 = !DILocalVariable(name: "expr", scope: !4800, file: !3, line: 2206, type: !209)
!4809 = !DILocation(line: 2203, column: 25, scope: !4800)
!4810 = !DILocation(line: 2203, column: 35, scope: !4800)
!4811 = !DILocation(line: 2203, column: 45, scope: !4800)
!4812 = !DILocation(line: 2205, column: 31, scope: !4800)
!4813 = !DILocation(line: 2205, column: 38, scope: !4800)
!4814 = !DILocation(line: 2205, column: 16, scope: !4800)
!4815 = !DILocation(line: 2205, column: 9, scope: !4800)
!4816 = !DILocation(line: 2206, column: 26, scope: !4800)
!4817 = !DILocation(line: 2206, column: 16, scope: !4800)
!4818 = !DILocation(line: 2206, column: 9, scope: !4800)
!4819 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !4820)
!4820 = distinct !DILocation(line: 2209, column: 34, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 2209, column: 9)
!4822 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !4820)
!4823 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !4820)
!4824 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !4820)
!4825 = !DILocation(line: 91, column: 20, scope: !1496, inlinedAt: !4820)
!4826 = !DILocation(line: 91, column: 13, scope: !1496, inlinedAt: !4820)
!4827 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !4820)
!4828 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !4820)
!4829 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !4820)
!4830 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !4820)
!4831 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !4820)
!4832 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !4820)
!4833 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !4820)
!4834 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !4820)
!4835 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !4820)
!4836 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !4820)
!4837 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !4820)
!4838 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !4820)
!4839 = !DILocation(line: 0, scope: !1496, inlinedAt: !4820)
!4840 = !DILocation(line: 0, scope: !4821)
!4841 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !4820)
!4842 = !DILocation(line: 2209, column: 9, scope: !4821)
!4843 = !DILocation(line: 2209, column: 9, scope: !4800)
!4844 = !DILocation(line: 2210, column: 9, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 2209, column: 61)
!4846 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !4847)
!4847 = distinct !DILocation(line: 2212, column: 38, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 2212, column: 13)
!4849 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !4847)
!4850 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !4847)
!4851 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !4847)
!4852 = !DILocation(line: 91, column: 20, scope: !1496, inlinedAt: !4847)
!4853 = !DILocation(line: 91, column: 13, scope: !1496, inlinedAt: !4847)
!4854 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !4847)
!4855 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !4847)
!4856 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !4847)
!4857 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !4847)
!4858 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !4847)
!4859 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !4847)
!4860 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !4847)
!4861 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !4847)
!4862 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !4847)
!4863 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !4847)
!4864 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !4847)
!4865 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !4847)
!4866 = !DILocation(line: 0, scope: !1496, inlinedAt: !4847)
!4867 = !DILocation(line: 0, scope: !4848)
!4868 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !4847)
!4869 = !DILocation(line: 2212, column: 13, scope: !4848)
!4870 = !DILocation(line: 2212, column: 13, scope: !4845)
!4871 = !DILocation(line: 2213, column: 30, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4848, file: !3, line: 2212, column: 65)
!4873 = !DILocation(line: 2213, column: 54, scope: !4872)
!4874 = !DILocation(line: 2213, column: 20, scope: !4872)
!4875 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !4876)
!4876 = distinct !DILocation(line: 2213, column: 13, scope: !4872)
!4877 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !4876)
!4878 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !4876)
!4879 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !4876)
!4880 = !DILocation(line: 2214, column: 13, scope: !4872)
!4881 = !DILocation(line: 2215, column: 13, scope: !4872)
!4882 = !DILocation(line: 2216, column: 13, scope: !4872)
!4883 = !DILocation(line: 2221, column: 5, scope: !4800)
!4884 = !DILocation(line: 2222, column: 5, scope: !4800)
!4885 = !DILocation(line: 2223, column: 9, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 2223, column: 9)
!4887 = !DILocation(line: 2223, column: 9, scope: !4800)
!4888 = !DILocation(line: 2224, column: 26, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4886, file: !3, line: 2223, column: 31)
!4890 = !DILocation(line: 2224, column: 50, scope: !4889)
!4891 = !DILocation(line: 2224, column: 16, scope: !4889)
!4892 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !4893)
!4893 = distinct !DILocation(line: 2224, column: 9, scope: !4889)
!4894 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !4893)
!4895 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !4893)
!4896 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !4893)
!4897 = !DILocation(line: 2225, column: 9, scope: !4889)
!4898 = !DILocation(line: 2226, column: 9, scope: !4889)
!4899 = !DILocation(line: 2012, column: 34, scope: !4208, inlinedAt: !4900)
!4900 = distinct !DILocation(line: 2228, column: 5, scope: !4800)
!4901 = !DILocation(line: 2012, column: 45, scope: !4208, inlinedAt: !4900)
!4902 = !DILocation(line: 2013, column: 13, scope: !4208, inlinedAt: !4900)
!4903 = !DILocation(line: 2013, column: 9, scope: !4208, inlinedAt: !4900)
!4904 = !DILocation(line: 2005, column: 26, scope: !1748, inlinedAt: !4905)
!4905 = distinct !DILocation(line: 2014, column: 9, scope: !4208, inlinedAt: !4900)
!4906 = !DILocation(line: 2005, column: 40, scope: !1748, inlinedAt: !4905)
!4907 = !DILocation(line: 2005, column: 49, scope: !1748, inlinedAt: !4905)
!4908 = !DILocation(line: 2006, column: 12, scope: !1748, inlinedAt: !4905)
!4909 = !DILocation(line: 2006, column: 5, scope: !1748, inlinedAt: !4905)
!4910 = !DILocation(line: 2015, column: 5, scope: !4208, inlinedAt: !4900)
!4911 = !DILocation(line: 2016, column: 1, scope: !4208, inlinedAt: !4900)
!4912 = !DILocation(line: 2229, column: 5, scope: !4800)
!4913 = !DILocation(line: 2230, column: 1, scope: !4800)
!4914 = !DILocation(line: 0, scope: !4872)
!4915 = distinct !DISubprogram(name: "ldbRedis", scope: !3, file: !3, line: 2236, type: !4801, isLocal: false, isDefinition: true, scopeLine: 2236, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4916)
!4916 = !{!4917, !4918, !4919, !4920, !4921}
!4917 = !DILocalVariable(name: "lua", arg: 1, scope: !4915, file: !3, line: 2236, type: !74)
!4918 = !DILocalVariable(name: "argv", arg: 2, scope: !4915, file: !3, line: 2236, type: !432)
!4919 = !DILocalVariable(name: "argc", arg: 3, scope: !4915, file: !3, line: 2236, type: !15)
!4920 = !DILocalVariable(name: "j", scope: !4915, file: !3, line: 2237, type: !15)
!4921 = !DILocalVariable(name: "saved_rc", scope: !4915, file: !3, line: 2237, type: !15)
!4922 = !DILocation(line: 2236, column: 26, scope: !4915)
!4923 = !DILocation(line: 2236, column: 36, scope: !4915)
!4924 = !DILocation(line: 2236, column: 46, scope: !4915)
!4925 = !DILocation(line: 2237, column: 30, scope: !4915)
!4926 = !DILocation(line: 2237, column: 12, scope: !4915)
!4927 = !DILocation(line: 2239, column: 5, scope: !4915)
!4928 = !DILocation(line: 2240, column: 5, scope: !4915)
!4929 = !DILocation(line: 2241, column: 5, scope: !4915)
!4930 = !DILocation(line: 2237, column: 9, scope: !4915)
!4931 = !DILocation(line: 2242, column: 10, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 2242, column: 5)
!4933 = !DILocation(line: 2242, column: 19, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 2242, column: 5)
!4935 = !DILocation(line: 2242, column: 5, scope: !4932)
!4936 = !DILocation(line: 2243, column: 29, scope: !4934)
!4937 = !DILocation(line: 87, column: 39, scope: !1484, inlinedAt: !4938)
!4938 = distinct !DILocation(line: 2243, column: 37, scope: !4934)
!4939 = !DILocation(line: 88, column: 27, scope: !1484, inlinedAt: !4938)
!4940 = !DILocation(line: 88, column: 19, scope: !1484, inlinedAt: !4938)
!4941 = !DILocation(line: 89, column: 5, scope: !1484, inlinedAt: !4938)
!4942 = !DILocation(line: 91, column: 20, scope: !1496, inlinedAt: !4938)
!4943 = !DILocation(line: 91, column: 13, scope: !1496, inlinedAt: !4938)
!4944 = !DILocation(line: 93, column: 20, scope: !1496, inlinedAt: !4938)
!4945 = !DILocation(line: 93, column: 34, scope: !1496, inlinedAt: !4938)
!4946 = !DILocation(line: 93, column: 13, scope: !1496, inlinedAt: !4938)
!4947 = !DILocation(line: 95, column: 20, scope: !1496, inlinedAt: !4938)
!4948 = !DILocation(line: 95, column: 35, scope: !1496, inlinedAt: !4938)
!4949 = !DILocation(line: 95, column: 13, scope: !1496, inlinedAt: !4938)
!4950 = !DILocation(line: 97, column: 20, scope: !1496, inlinedAt: !4938)
!4951 = !DILocation(line: 97, column: 35, scope: !1496, inlinedAt: !4938)
!4952 = !DILocation(line: 97, column: 13, scope: !1496, inlinedAt: !4938)
!4953 = !DILocation(line: 99, column: 20, scope: !1496, inlinedAt: !4938)
!4954 = !DILocation(line: 99, column: 35, scope: !1496, inlinedAt: !4938)
!4955 = !DILocation(line: 99, column: 13, scope: !1496, inlinedAt: !4938)
!4956 = !DILocation(line: 0, scope: !1496, inlinedAt: !4938)
!4957 = !DILocation(line: 0, scope: !4934)
!4958 = !DILocation(line: 102, column: 1, scope: !1484, inlinedAt: !4938)
!4959 = !DILocation(line: 2243, column: 9, scope: !4934)
!4960 = !DILocation(line: 2242, column: 28, scope: !4934)
!4961 = !DILocation(line: 2242, column: 5, scope: !4934)
!4962 = distinct !{!4962, !4935, !4963}
!4963 = !DILocation(line: 2243, column: 52, scope: !4932)
!4964 = !DILocation(line: 2244, column: 14, scope: !4915)
!4965 = !DILocation(line: 2245, column: 35, scope: !4915)
!4966 = !DILocation(line: 2246, column: 23, scope: !4915)
!4967 = !DILocation(line: 2246, column: 5, scope: !4915)
!4968 = !DILocation(line: 2247, column: 14, scope: !4915)
!4969 = !DILocation(line: 2248, column: 35, scope: !4915)
!4970 = !DILocation(line: 2249, column: 5, scope: !4915)
!4971 = !DILocation(line: 2250, column: 1, scope: !4915)
!4972 = distinct !DISubprogram(name: "ldbTrace", scope: !3, file: !3, line: 2254, type: !828, isLocal: false, isDefinition: true, scopeLine: 2254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4973)
!4973 = !{!4974, !4975, !4976}
!4974 = !DILocalVariable(name: "lua", arg: 1, scope: !4972, file: !3, line: 2254, type: !74)
!4975 = !DILocalVariable(name: "ar", scope: !4972, file: !3, line: 2255, type: !740)
!4976 = !DILocalVariable(name: "level", scope: !4972, file: !3, line: 2256, type: !15)
!4977 = !DILocation(line: 2254, column: 26, scope: !4972)
!4978 = !DILocation(line: 2255, column: 5, scope: !4972)
!4979 = !DILocation(line: 2256, column: 9, scope: !4972)
!4980 = !DILocation(line: 2258, column: 5, scope: !4972)
!4981 = !DILocation(line: 2255, column: 15, scope: !4972)
!4982 = !DILocation(line: 2258, column: 11, scope: !4972)
!4983 = !DILocation(line: 2259, column: 9, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 2258, column: 40)
!4985 = !DILocation(line: 2260, column: 12, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4984, file: !3, line: 2260, column: 12)
!4987 = !DILocation(line: 2260, column: 47, scope: !4986)
!4988 = !DILocation(line: 2260, column: 12, scope: !4984)
!4989 = !DILocation(line: 2261, column: 33, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 2260, column: 56)
!4991 = !DILocation(line: 2262, column: 24, scope: !4990)
!4992 = !DILocation(line: 2262, column: 17, scope: !4990)
!4993 = !DILocation(line: 2263, column: 20, scope: !4990)
!4994 = !{!801, !770, i64 8}
!4995 = !DILocation(line: 2263, column: 17, scope: !4990)
!4996 = !DILocation(line: 2261, column: 20, scope: !4990)
!4997 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !4998)
!4998 = distinct !DILocation(line: 2261, column: 13, scope: !4990)
!4999 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !4998)
!5000 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !4998)
!5001 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !4998)
!5002 = !DILocation(line: 2264, column: 33, scope: !4990)
!5003 = !DILocation(line: 2264, column: 13, scope: !4990)
!5004 = !DILocation(line: 2265, column: 9, scope: !4990)
!5005 = !DILocation(line: 2266, column: 14, scope: !4984)
!5006 = distinct !{!5006, !4980, !5007}
!5007 = !DILocation(line: 2267, column: 5, scope: !4972)
!5008 = !DILocation(line: 2268, column: 9, scope: !4972)
!5009 = !DILocation(line: 2269, column: 16, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5011, file: !3, line: 2268, column: 21)
!5011 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 2268, column: 9)
!5012 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5013)
!5013 = distinct !DILocation(line: 2269, column: 9, scope: !5010)
!5014 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5013)
!5015 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5013)
!5016 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5013)
!5017 = !DILocation(line: 2270, column: 5, scope: !5010)
!5018 = !DILocation(line: 0, scope: !5010)
!5019 = !DILocation(line: 2271, column: 1, scope: !4972)
!5020 = distinct !DISubprogram(name: "ldbMaxlen", scope: !3, file: !3, line: 2275, type: !4576, isLocal: false, isDefinition: true, scopeLine: 2275, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !5021)
!5021 = !{!5022, !5023, !5024}
!5022 = !DILocalVariable(name: "argv", arg: 1, scope: !5020, file: !3, line: 2275, type: !432)
!5023 = !DILocalVariable(name: "argc", arg: 2, scope: !5020, file: !3, line: 2275, type: !15)
!5024 = !DILocalVariable(name: "newval", scope: !5025, file: !3, line: 2277, type: !15)
!5025 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 2276, column: 20)
!5026 = distinct !DILexicalBlock(scope: !5020, file: !3, line: 2276, column: 9)
!5027 = !DILocation(line: 2275, column: 21, scope: !5020)
!5028 = !DILocation(line: 2275, column: 31, scope: !5020)
!5029 = !DILocation(line: 2276, column: 14, scope: !5026)
!5030 = !DILocation(line: 2276, column: 9, scope: !5020)
!5031 = !DILocation(line: 2277, column: 27, scope: !5025)
!5032 = !DILocation(line: 2277, column: 22, scope: !5025)
!5033 = !DILocation(line: 2277, column: 13, scope: !5025)
!5034 = !DILocation(line: 2278, column: 30, scope: !5025)
!5035 = !DILocation(line: 2279, column: 20, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 2279, column: 13)
!5037 = !DILocation(line: 2279, column: 35, scope: !5036)
!5038 = !DILocation(line: 2279, column: 25, scope: !5036)
!5039 = !DILocation(line: 2279, column: 42, scope: !5036)
!5040 = !DILocation(line: 0, scope: !5025)
!5041 = !DILocation(line: 2280, column: 22, scope: !5025)
!5042 = !DILocation(line: 2280, column: 20, scope: !5025)
!5043 = !DILocation(line: 2281, column: 5, scope: !5025)
!5044 = !DILocation(line: 2282, column: 13, scope: !5045)
!5045 = distinct !DILexicalBlock(scope: !5020, file: !3, line: 2282, column: 9)
!5046 = !DILocation(line: 2282, column: 9, scope: !5045)
!5047 = !DILocation(line: 0, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 2284, column: 12)
!5049 = !DILocation(line: 2282, column: 9, scope: !5020)
!5050 = !DILocation(line: 2283, column: 94, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !5045, file: !3, line: 2282, column: 21)
!5052 = !DILocation(line: 2283, column: 85, scope: !5051)
!5053 = !DILocation(line: 2283, column: 16, scope: !5051)
!5054 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5055)
!5055 = distinct !DILocation(line: 2283, column: 9, scope: !5051)
!5056 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5055)
!5057 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5055)
!5058 = !DILocation(line: 2284, column: 5, scope: !5051)
!5059 = !DILocation(line: 2285, column: 16, scope: !5048)
!5060 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5061)
!5061 = distinct !DILocation(line: 2285, column: 9, scope: !5048)
!5062 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5061)
!5063 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5061)
!5064 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5061)
!5065 = !DILocation(line: 2287, column: 1, scope: !5020)
!5066 = distinct !DISubprogram(name: "ldbRepl", scope: !3, file: !3, line: 2292, type: !818, isLocal: false, isDefinition: true, scopeLine: 2292, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !5067)
!5067 = !{!5068, !5069, !5070, !5071, !5077, !5078, !5091, !5092}
!5068 = !DILocalVariable(name: "lua", arg: 1, scope: !5066, file: !3, line: 2292, type: !74)
!5069 = !DILocalVariable(name: "argv", scope: !5066, file: !3, line: 2293, type: !432)
!5070 = !DILocalVariable(name: "argc", scope: !5066, file: !3, line: 2294, type: !15)
!5071 = !DILocalVariable(name: "buf", scope: !5072, file: !3, line: 2300, type: !5074)
!5072 = distinct !DILexicalBlock(scope: !5073, file: !3, line: 2299, column: 60)
!5073 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 2298, column: 14)
!5074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8192, elements: !5075)
!5075 = !{!5076}
!5076 = !DISubrange(count: 1024)
!5077 = !DILocalVariable(name: "nread", scope: !5072, file: !3, line: 2301, type: !15)
!5078 = !DILocalVariable(name: "around", scope: !5079, file: !3, line: 2381, type: !15)
!5079 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 2380, column: 76)
!5080 = distinct !DILexicalBlock(scope: !5081, file: !3, line: 2380, column: 20)
!5081 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 2374, column: 20)
!5082 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 2370, column: 20)
!5083 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 2367, column: 20)
!5084 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 2364, column: 20)
!5085 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 2361, column: 20)
!5086 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 2358, column: 20)
!5087 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 2355, column: 20)
!5088 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 2353, column: 20)
!5089 = distinct !DILexicalBlock(scope: !5090, file: !3, line: 2349, column: 20)
!5090 = distinct !DILexicalBlock(scope: !5073, file: !3, line: 2317, column: 13)
!5091 = !DILocalVariable(name: "ctx", scope: !5079, file: !3, line: 2381, type: !15)
!5092 = !DILocalVariable(name: "num", scope: !5093, file: !3, line: 2383, type: !15)
!5093 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 2382, column: 27)
!5094 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 2382, column: 17)
!5095 = !DILocation(line: 2292, column: 24, scope: !5066)
!5096 = !DILocation(line: 2294, column: 5, scope: !5066)
!5097 = !DILocation(line: 2298, column: 5, scope: !5066)
!5098 = !DILocation(line: 2299, column: 9, scope: !5073)
!5099 = !DILocation(line: 2294, column: 9, scope: !5066)
!5100 = !DILocation(line: 2299, column: 23, scope: !5073)
!5101 = !DILocation(line: 2293, column: 10, scope: !5066)
!5102 = !DILocation(line: 2299, column: 51, scope: !5073)
!5103 = !DILocation(line: 2300, column: 13, scope: !5072)
!5104 = !DILocation(line: 2300, column: 18, scope: !5072)
!5105 = !DILocation(line: 2301, column: 34, scope: !5072)
!5106 = !DILocation(line: 2301, column: 25, scope: !5072)
!5107 = !DILocation(line: 2301, column: 17, scope: !5072)
!5108 = !DILocation(line: 2302, column: 23, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 2302, column: 17)
!5110 = !DILocation(line: 2302, column: 17, scope: !5072)
!5111 = !DILocation(line: 2305, column: 26, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 2302, column: 29)
!5113 = !DILocation(line: 2306, column: 29, scope: !5112)
!5114 = !DILocation(line: 2307, column: 17, scope: !5112)
!5115 = !DILocation(line: 2310, column: 9, scope: !5073)
!5116 = !DILocation(line: 2309, column: 38, scope: !5072)
!5117 = !DILocation(line: 2309, column: 47, scope: !5072)
!5118 = !DILocation(line: 2309, column: 24, scope: !5072)
!5119 = !DILocation(line: 2309, column: 22, scope: !5072)
!5120 = !DILocation(line: 2313, column: 21, scope: !5073)
!5121 = !DILocation(line: 2313, column: 9, scope: !5073)
!5122 = !DILocation(line: 2314, column: 20, scope: !5073)
!5123 = !DILocation(line: 2314, column: 18, scope: !5073)
!5124 = !DILocation(line: 2317, column: 25, scope: !5090)
!5125 = !DILocation(line: 2317, column: 14, scope: !5090)
!5126 = !DILocation(line: 2317, column: 38, scope: !5090)
!5127 = !DILocation(line: 2317, column: 42, scope: !5090)
!5128 = !DILocation(line: 2317, column: 13, scope: !5073)
!5129 = !DILocation(line: 2318, column: 8, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5090, file: !3, line: 2317, column: 70)
!5131 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5132)
!5132 = distinct !DILocation(line: 2318, column: 1, scope: !5130)
!5133 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5132)
!5134 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5132)
!5135 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5132)
!5136 = !DILocation(line: 2319, column: 8, scope: !5130)
!5137 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5138)
!5138 = distinct !DILocation(line: 2319, column: 1, scope: !5130)
!5139 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5138)
!5140 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5138)
!5141 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5138)
!5142 = !DILocation(line: 2320, column: 8, scope: !5130)
!5143 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5144)
!5144 = distinct !DILocation(line: 2320, column: 1, scope: !5130)
!5145 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5144)
!5146 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5144)
!5147 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5144)
!5148 = !DILocation(line: 2321, column: 8, scope: !5130)
!5149 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5150)
!5150 = distinct !DILocation(line: 2321, column: 1, scope: !5130)
!5151 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5150)
!5152 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5150)
!5153 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5150)
!5154 = !DILocation(line: 2322, column: 8, scope: !5130)
!5155 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5156)
!5156 = distinct !DILocation(line: 2322, column: 1, scope: !5130)
!5157 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5156)
!5158 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5156)
!5159 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5156)
!5160 = !DILocation(line: 2323, column: 8, scope: !5130)
!5161 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5162)
!5162 = distinct !DILocation(line: 2323, column: 1, scope: !5130)
!5163 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5162)
!5164 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5162)
!5165 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5162)
!5166 = !DILocation(line: 2324, column: 8, scope: !5130)
!5167 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5168)
!5168 = distinct !DILocation(line: 2324, column: 1, scope: !5130)
!5169 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5168)
!5170 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5168)
!5171 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5168)
!5172 = !DILocation(line: 2325, column: 8, scope: !5130)
!5173 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5174)
!5174 = distinct !DILocation(line: 2325, column: 1, scope: !5130)
!5175 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5174)
!5176 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5174)
!5177 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5174)
!5178 = !DILocation(line: 2326, column: 8, scope: !5130)
!5179 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5180)
!5180 = distinct !DILocation(line: 2326, column: 1, scope: !5130)
!5181 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5180)
!5182 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5180)
!5183 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5180)
!5184 = !DILocation(line: 2327, column: 8, scope: !5130)
!5185 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5186)
!5186 = distinct !DILocation(line: 2327, column: 1, scope: !5130)
!5187 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5186)
!5188 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5186)
!5189 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5186)
!5190 = !DILocation(line: 2328, column: 8, scope: !5130)
!5191 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5192)
!5192 = distinct !DILocation(line: 2328, column: 1, scope: !5130)
!5193 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5192)
!5194 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5192)
!5195 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5192)
!5196 = !DILocation(line: 2329, column: 8, scope: !5130)
!5197 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5198)
!5198 = distinct !DILocation(line: 2329, column: 1, scope: !5130)
!5199 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5198)
!5200 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5198)
!5201 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5198)
!5202 = !DILocation(line: 2330, column: 8, scope: !5130)
!5203 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5204)
!5204 = distinct !DILocation(line: 2330, column: 1, scope: !5130)
!5205 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5204)
!5206 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5204)
!5207 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5204)
!5208 = !DILocation(line: 2331, column: 8, scope: !5130)
!5209 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5210)
!5210 = distinct !DILocation(line: 2331, column: 1, scope: !5130)
!5211 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5210)
!5212 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5210)
!5213 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5210)
!5214 = !DILocation(line: 2332, column: 8, scope: !5130)
!5215 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5216)
!5216 = distinct !DILocation(line: 2332, column: 1, scope: !5130)
!5217 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5216)
!5218 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5216)
!5219 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5216)
!5220 = !DILocation(line: 2333, column: 8, scope: !5130)
!5221 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5222)
!5222 = distinct !DILocation(line: 2333, column: 1, scope: !5130)
!5223 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5222)
!5224 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5222)
!5225 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5222)
!5226 = !DILocation(line: 2334, column: 8, scope: !5130)
!5227 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5228)
!5228 = distinct !DILocation(line: 2334, column: 1, scope: !5130)
!5229 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5228)
!5230 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5228)
!5231 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5228)
!5232 = !DILocation(line: 2335, column: 8, scope: !5130)
!5233 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5234)
!5234 = distinct !DILocation(line: 2335, column: 1, scope: !5130)
!5235 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5234)
!5236 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5234)
!5237 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5234)
!5238 = !DILocation(line: 2336, column: 8, scope: !5130)
!5239 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5240)
!5240 = distinct !DILocation(line: 2336, column: 1, scope: !5130)
!5241 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5240)
!5242 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5240)
!5243 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5240)
!5244 = !DILocation(line: 2337, column: 8, scope: !5130)
!5245 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5246)
!5246 = distinct !DILocation(line: 2337, column: 1, scope: !5130)
!5247 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5246)
!5248 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5246)
!5249 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5246)
!5250 = !DILocation(line: 2338, column: 8, scope: !5130)
!5251 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5252)
!5252 = distinct !DILocation(line: 2338, column: 1, scope: !5130)
!5253 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5252)
!5254 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5252)
!5255 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5252)
!5256 = !DILocation(line: 2339, column: 8, scope: !5130)
!5257 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5258)
!5258 = distinct !DILocation(line: 2339, column: 1, scope: !5130)
!5259 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5258)
!5260 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5258)
!5261 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5258)
!5262 = !DILocation(line: 2340, column: 8, scope: !5130)
!5263 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5264)
!5264 = distinct !DILocation(line: 2340, column: 1, scope: !5130)
!5265 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5264)
!5266 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5264)
!5267 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5264)
!5268 = !DILocation(line: 2341, column: 8, scope: !5130)
!5269 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5270)
!5270 = distinct !DILocation(line: 2341, column: 1, scope: !5130)
!5271 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5270)
!5272 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5270)
!5273 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5270)
!5274 = !DILocation(line: 2342, column: 8, scope: !5130)
!5275 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5276)
!5276 = distinct !DILocation(line: 2342, column: 1, scope: !5130)
!5277 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5276)
!5278 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5276)
!5279 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5276)
!5280 = !DILocation(line: 2343, column: 8, scope: !5130)
!5281 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5282)
!5282 = distinct !DILocation(line: 2343, column: 1, scope: !5130)
!5283 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5282)
!5284 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5282)
!5285 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5282)
!5286 = !DILocation(line: 2344, column: 8, scope: !5130)
!5287 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5288)
!5288 = distinct !DILocation(line: 2344, column: 1, scope: !5130)
!5289 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5288)
!5290 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5288)
!5291 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5288)
!5292 = !DILocation(line: 2345, column: 8, scope: !5130)
!5293 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5294)
!5294 = distinct !DILocation(line: 2345, column: 1, scope: !5130)
!5295 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5294)
!5296 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5294)
!5297 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5294)
!5298 = !DILocation(line: 2346, column: 8, scope: !5130)
!5299 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5300)
!5300 = distinct !DILocation(line: 2346, column: 1, scope: !5130)
!5301 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5300)
!5302 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5300)
!5303 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5300)
!5304 = !DILocation(line: 2347, column: 8, scope: !5130)
!5305 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5306)
!5306 = distinct !DILocation(line: 2347, column: 1, scope: !5130)
!5307 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5306)
!5308 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5306)
!5309 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5306)
!5310 = !DILocation(line: 2348, column: 13, scope: !5130)
!5311 = !DILocation(line: 2349, column: 9, scope: !5130)
!5312 = !DILocation(line: 2349, column: 21, scope: !5089)
!5313 = !DILocation(line: 2349, column: 45, scope: !5089)
!5314 = !DILocation(line: 2349, column: 49, scope: !5089)
!5315 = !DILocation(line: 2349, column: 76, scope: !5089)
!5316 = !DILocation(line: 2350, column: 21, scope: !5089)
!5317 = !DILocation(line: 2350, column: 45, scope: !5089)
!5318 = !DILocation(line: 2350, column: 49, scope: !5089)
!5319 = !DILocation(line: 2349, column: 20, scope: !5090)
!5320 = !DILocation(line: 2351, column: 22, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 2350, column: 77)
!5322 = !DILocation(line: 2352, column: 13, scope: !5321)
!5323 = !DILocation(line: 2353, column: 21, scope: !5088)
!5324 = !DILocation(line: 2353, column: 45, scope: !5088)
!5325 = !DILocation(line: 2353, column: 49, scope: !5088)
!5326 = !DILocation(line: 2353, column: 20, scope: !5089)
!5327 = !DILocation(line: 2355, column: 21, scope: !5087)
!5328 = !DILocation(line: 2355, column: 45, scope: !5087)
!5329 = !DILocation(line: 2355, column: 49, scope: !5087)
!5330 = !DILocation(line: 2355, column: 20, scope: !5088)
!5331 = !DILocation(line: 2356, column: 13, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 2355, column: 78)
!5333 = !DILocation(line: 2357, column: 13, scope: !5332)
!5334 = !DILocation(line: 2358, column: 9, scope: !5332)
!5335 = !DILocation(line: 2358, column: 21, scope: !5086)
!5336 = !DILocation(line: 2358, column: 45, scope: !5086)
!5337 = !DILocation(line: 2358, column: 49, scope: !5086)
!5338 = !DILocation(line: 2358, column: 20, scope: !5087)
!5339 = !DILocation(line: 2359, column: 28, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5086, file: !3, line: 2358, column: 79)
!5341 = !DILocation(line: 2359, column: 13, scope: !5340)
!5342 = !DILocation(line: 2360, column: 13, scope: !5340)
!5343 = !DILocation(line: 2361, column: 9, scope: !5340)
!5344 = !DILocation(line: 2361, column: 21, scope: !5085)
!5345 = !DILocation(line: 2361, column: 45, scope: !5085)
!5346 = !DILocation(line: 2361, column: 49, scope: !5085)
!5347 = !DILocation(line: 2361, column: 20, scope: !5086)
!5348 = !DILocation(line: 2362, column: 27, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 2361, column: 78)
!5350 = !DILocation(line: 2362, column: 13, scope: !5349)
!5351 = !DILocation(line: 2363, column: 13, scope: !5349)
!5352 = !DILocation(line: 2364, column: 9, scope: !5349)
!5353 = !DILocation(line: 2364, column: 21, scope: !5084)
!5354 = !DILocation(line: 2364, column: 45, scope: !5084)
!5355 = !DILocation(line: 2364, column: 49, scope: !5084)
!5356 = !DILocation(line: 2364, column: 20, scope: !5085)
!5357 = !DILocation(line: 2365, column: 30, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 2364, column: 77)
!5359 = !DILocation(line: 2365, column: 13, scope: !5358)
!5360 = !DILocation(line: 2366, column: 13, scope: !5358)
!5361 = !DILocation(line: 2367, column: 9, scope: !5358)
!5362 = !DILocation(line: 2367, column: 21, scope: !5083)
!5363 = !DILocation(line: 2367, column: 45, scope: !5083)
!5364 = !DILocation(line: 2367, column: 49, scope: !5083)
!5365 = !DILocation(line: 2367, column: 20, scope: !5084)
!5366 = !DILocation(line: 2368, column: 13, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 2367, column: 78)
!5368 = !DILocation(line: 2369, column: 13, scope: !5367)
!5369 = !DILocation(line: 2370, column: 9, scope: !5367)
!5370 = !DILocation(line: 2370, column: 20, scope: !5082)
!5371 = !DILocation(line: 2370, column: 25, scope: !5082)
!5372 = !DILocation(line: 2370, column: 29, scope: !5082)
!5373 = !DILocation(line: 2371, column: 22, scope: !5082)
!5374 = !DILocation(line: 2371, column: 46, scope: !5082)
!5375 = !DILocation(line: 2371, column: 50, scope: !5082)
!5376 = !DILocation(line: 2370, column: 20, scope: !5083)
!5377 = !DILocation(line: 2372, column: 13, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 2371, column: 80)
!5379 = !DILocation(line: 2373, column: 13, scope: !5378)
!5380 = !DILocation(line: 2374, column: 9, scope: !5378)
!5381 = !DILocation(line: 2374, column: 22, scope: !5081)
!5382 = !DILocation(line: 2374, column: 46, scope: !5081)
!5383 = !DILocation(line: 2374, column: 50, scope: !5081)
!5384 = !DILocation(line: 2374, column: 20, scope: !5082)
!5385 = !DILocation(line: 2375, column: 22, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5387, file: !3, line: 2375, column: 17)
!5387 = distinct !DILexicalBlock(scope: !5081, file: !3, line: 2374, column: 80)
!5388 = !DILocation(line: 2375, column: 17, scope: !5387)
!5389 = !DILocation(line: 2376, column: 30, scope: !5386)
!5390 = !DILocation(line: 2376, column: 17, scope: !5386)
!5391 = !DILocation(line: 2378, column: 17, scope: !5386)
!5392 = !DILocation(line: 2379, column: 13, scope: !5387)
!5393 = !DILocation(line: 2380, column: 9, scope: !5387)
!5394 = !DILocation(line: 2380, column: 21, scope: !5080)
!5395 = !DILocation(line: 2380, column: 45, scope: !5080)
!5396 = !DILocation(line: 2380, column: 49, scope: !5080)
!5397 = !DILocation(line: 2380, column: 20, scope: !5081)
!5398 = !DILocation(line: 2381, column: 30, scope: !5079)
!5399 = !DILocation(line: 2381, column: 17, scope: !5079)
!5400 = !DILocation(line: 2381, column: 43, scope: !5079)
!5401 = !DILocation(line: 2382, column: 17, scope: !5079)
!5402 = !DILocation(line: 2383, column: 32, scope: !5093)
!5403 = !DILocation(line: 2383, column: 27, scope: !5093)
!5404 = !DILocation(line: 2383, column: 21, scope: !5093)
!5405 = !DILocation(line: 2384, column: 25, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5093, file: !3, line: 2384, column: 21)
!5407 = !DILocation(line: 2384, column: 21, scope: !5093)
!5408 = !DILocation(line: 2384, column: 30, scope: !5406)
!5409 = !DILocation(line: 0, scope: !5079)
!5410 = !DILocation(line: 2385, column: 13, scope: !5093)
!5411 = !DILocation(line: 2386, column: 22, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5079, file: !3, line: 2386, column: 17)
!5413 = !DILocation(line: 2386, column: 17, scope: !5079)
!5414 = !DILocation(line: 2386, column: 38, scope: !5412)
!5415 = !DILocation(line: 2386, column: 33, scope: !5412)
!5416 = !DILocation(line: 2386, column: 27, scope: !5412)
!5417 = !DILocation(line: 0, scope: !5412)
!5418 = !DILocation(line: 1906, column: 10, scope: !4015, inlinedAt: !5419)
!5419 = distinct !DILocation(line: 2387, column: 13, scope: !5079)
!5420 = !DILocation(line: 1903, column: 18, scope: !4004, inlinedAt: !5419)
!5421 = !DILocation(line: 1903, column: 30, scope: !4004, inlinedAt: !5419)
!5422 = !DILocation(line: 1904, column: 9, scope: !4004, inlinedAt: !5419)
!5423 = !DILocation(line: 1906, column: 26, scope: !4017, inlinedAt: !5419)
!5424 = !DILocation(line: 1906, column: 19, scope: !4017, inlinedAt: !5419)
!5425 = !DILocation(line: 1906, column: 5, scope: !4015, inlinedAt: !5419)
!5426 = !DILocation(line: 1907, column: 25, scope: !4021, inlinedAt: !5419)
!5427 = !DILocation(line: 1907, column: 38, scope: !4021, inlinedAt: !5419)
!5428 = !DILocation(line: 1907, column: 28, scope: !4021, inlinedAt: !5419)
!5429 = !DILocation(line: 1907, column: 42, scope: !4021, inlinedAt: !5419)
!5430 = !DILocation(line: 1907, column: 13, scope: !4022, inlinedAt: !5419)
!5431 = !DILocation(line: 1908, column: 9, scope: !4022, inlinedAt: !5419)
!5432 = !DILocation(line: 1909, column: 5, scope: !4022, inlinedAt: !5419)
!5433 = !DILocation(line: 1906, column: 34, scope: !4017, inlinedAt: !5419)
!5434 = !DILocation(line: 1906, column: 5, scope: !4017, inlinedAt: !5419)
!5435 = !DILocation(line: 1910, column: 1, scope: !4004, inlinedAt: !5419)
!5436 = !DILocation(line: 2388, column: 13, scope: !5079)
!5437 = !DILocation(line: 2389, column: 9, scope: !5079)
!5438 = !DILocation(line: 2389, column: 21, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 2389, column: 20)
!5440 = !DILocation(line: 2389, column: 45, scope: !5439)
!5441 = !DILocation(line: 2389, column: 49, scope: !5439)
!5442 = !DILocation(line: 2389, column: 20, scope: !5080)
!5443 = !DILocation(line: 1903, column: 18, scope: !4004, inlinedAt: !5444)
!5444 = distinct !DILocation(line: 2390, column: 13, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 2389, column: 77)
!5446 = !DILocation(line: 1903, column: 30, scope: !4004, inlinedAt: !5444)
!5447 = !DILocation(line: 1904, column: 9, scope: !4004, inlinedAt: !5444)
!5448 = !DILocation(line: 1906, column: 10, scope: !4015, inlinedAt: !5444)
!5449 = !DILocation(line: 1906, column: 26, scope: !4017, inlinedAt: !5444)
!5450 = !DILocation(line: 1906, column: 19, scope: !4017, inlinedAt: !5444)
!5451 = !DILocation(line: 1906, column: 5, scope: !4015, inlinedAt: !5444)
!5452 = !DILocation(line: 1907, column: 25, scope: !4021, inlinedAt: !5444)
!5453 = !DILocation(line: 1907, column: 38, scope: !4021, inlinedAt: !5444)
!5454 = !DILocation(line: 1907, column: 28, scope: !4021, inlinedAt: !5444)
!5455 = !DILocation(line: 1907, column: 42, scope: !4021, inlinedAt: !5444)
!5456 = !DILocation(line: 1907, column: 13, scope: !4022, inlinedAt: !5444)
!5457 = !DILocation(line: 1908, column: 9, scope: !4022, inlinedAt: !5444)
!5458 = !DILocation(line: 1909, column: 5, scope: !4022, inlinedAt: !5444)
!5459 = !DILocation(line: 1906, column: 34, scope: !4017, inlinedAt: !5444)
!5460 = !DILocation(line: 1906, column: 5, scope: !4017, inlinedAt: !5444)
!5461 = !DILocation(line: 1910, column: 1, scope: !4004, inlinedAt: !5444)
!5462 = !DILocation(line: 2391, column: 13, scope: !5445)
!5463 = !DILocation(line: 2392, column: 9, scope: !5445)
!5464 = !DILocation(line: 2393, column: 20, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 2392, column: 16)
!5466 = !DILocation(line: 1602, column: 17, scope: !780, inlinedAt: !5467)
!5467 = distinct !DILocation(line: 2393, column: 13, scope: !5465)
!5468 = !DILocation(line: 1603, column: 25, scope: !780, inlinedAt: !5467)
!5469 = !DILocation(line: 1603, column: 5, scope: !780, inlinedAt: !5467)
!5470 = !DILocation(line: 1604, column: 1, scope: !780, inlinedAt: !5467)
!5471 = !DILocation(line: 2395, column: 13, scope: !5465)
!5472 = !DILocation(line: 2399, column: 30, scope: !5073)
!5473 = !DILocation(line: 2399, column: 9, scope: !5073)
!5474 = distinct !{!5474, !5097, !5475}
!5475 = !DILocation(line: 2400, column: 5, scope: !5066)
!5476 = !DILocation(line: 2403, column: 26, scope: !5066)
!5477 = !DILocation(line: 2403, column: 5, scope: !5066)
!5478 = !DILocation(line: 2404, column: 5, scope: !5066)
!5479 = !DILocation(line: 0, scope: !5066)
!5480 = !DILocation(line: 2405, column: 1, scope: !5066)
