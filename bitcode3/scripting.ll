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
@switch.table.ldbCatStackValueRec = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.165, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.162, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.163, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.164, i64 0, i64 0)]

; Function Attrs: noredzone nounwind
define dso_local void @sha1hex(i8* nocapture, i8*, i64) local_unnamed_addr #0 !dbg !442 {
  %4 = alloca %struct.SHA1_CTX, align 4
  %5 = alloca [20 x i8], align 16
  %6 = bitcast %struct.SHA1_CTX* %4 to i8*, !dbg !471
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %6) #8, !dbg !471
  %7 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0, !dbg !472
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %7) #8, !dbg !472
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %4) #9, !dbg !475
  %8 = trunc i64 %2 to i32, !dbg !476
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %4, i8* %1, i32 %8) #9, !dbg !477
  call void @SHA1Final(i8* nonnull %7, %struct.SHA1_CTX* nonnull %4) #9, !dbg !478
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
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %7) #8, !dbg !504
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %6) #8, !dbg !504
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
  %9 = tail call i8* @strchr(i8* nonnull %8, i32 13) #9, !dbg !528
  %10 = bitcast i64* %4 to i8*, !dbg !530
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #8, !dbg !530
  %11 = ptrtoint i8* %9 to i64, !dbg !531
  %12 = ptrtoint i8* %1 to i64, !dbg !531
  %13 = xor i64 %12, -1, !dbg !532
  %14 = add i64 %11, %13, !dbg !532
  %15 = call i32 @string2ll(i8* nonnull %8, i64 %14, i64* nonnull %4) #9, !dbg !534
  %16 = load i64, i64* %4, align 8, !dbg !535, !tbaa !536
  %17 = sitofp i64 %16 to double, !dbg !538
  call void @lua_pushnumber(%struct.lua_State* %0, double %17) #9, !dbg !539
  %18 = getelementptr inbounds i8, i8* %9, i64 2, !dbg !540
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #8, !dbg !541
  br label %56, !dbg !542

; <label>:19:                                     ; preds = %2
  %20 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !552
  %21 = tail call i8* @strchr(i8* nonnull %20, i32 13) #9, !dbg !553
  %22 = bitcast i64* %3 to i8*, !dbg !555
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #8, !dbg !555
  %23 = ptrtoint i8* %21 to i64, !dbg !556
  %24 = ptrtoint i8* %1 to i64, !dbg !556
  %25 = xor i64 %24, -1, !dbg !557
  %26 = add i64 %23, %25, !dbg !557
  %27 = call i32 @string2ll(i8* nonnull %20, i64 %26, i64* nonnull %3) #9, !dbg !559
  %28 = load i64, i64* %3, align 8, !dbg !560, !tbaa !536
  %29 = icmp eq i64 %28, -1, !dbg !562
  br i1 %29, label %30, label %31, !dbg !563

; <label>:30:                                     ; preds = %19
  call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #9, !dbg !564
  br label %35, !dbg !566

; <label>:31:                                     ; preds = %19
  %32 = getelementptr inbounds i8, i8* %21, i64 2, !dbg !567
  call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %32, i64 %28) #9, !dbg !569
  %33 = load i64, i64* %3, align 8, !dbg !570, !tbaa !536
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !571
  br label %35, !dbg !572

; <label>:35:                                     ; preds = %30, %31
  %36 = phi i8* [ %21, %30 ], [ %34, %31 ]
  %37 = getelementptr inbounds i8, i8* %36, i64 2, !dbg !573
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #8, !dbg !574
  br label %56, !dbg !575

; <label>:38:                                     ; preds = %2
  %39 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !584
  %40 = tail call i8* @strchr(i8* nonnull %39, i32 13) #9, !dbg !585
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #9, !dbg !587
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !588
  %41 = ptrtoint i8* %40 to i64, !dbg !589
  %42 = ptrtoint i8* %1 to i64, !dbg !589
  %43 = xor i64 %42, -1, !dbg !590
  %44 = add i64 %41, %43, !dbg !590
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %39, i64 %44) #9, !dbg !591
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #9, !dbg !592
  %45 = getelementptr inbounds i8, i8* %40, i64 2, !dbg !593
  br label %56, !dbg !594

; <label>:46:                                     ; preds = %2
  %47 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !603
  %48 = tail call i8* @strchr(i8* nonnull %47, i32 13) #9, !dbg !604
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #9, !dbg !606
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !607
  %49 = ptrtoint i8* %48 to i64, !dbg !608
  %50 = ptrtoint i8* %1 to i64, !dbg !608
  %51 = xor i64 %50, -1, !dbg !609
  %52 = add i64 %49, %51, !dbg !609
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %47, i64 %52) #9, !dbg !610
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #9, !dbg !611
  %53 = getelementptr inbounds i8, i8* %48, i64 2, !dbg !612
  br label %56, !dbg !613

; <label>:54:                                     ; preds = %2
  %55 = tail call i8* @redisProtocolToLuaType_MultiBulk(%struct.lua_State* %0, i8* nonnull %1) #10, !dbg !614
  br label %56, !dbg !615

; <label>:56:                                     ; preds = %2, %54, %46, %38, %35, %7
  %57 = phi i8* [ %1, %2 ], [ %55, %54 ], [ %53, %46 ], [ %45, %38 ], [ %37, %35 ], [ %18, %7 ], !dbg !616
  ret i8* %57, !dbg !617
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @redisProtocolToLuaType_Int(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !518 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !620
  %5 = tail call i8* @strchr(i8* nonnull %4, i32 13) #9, !dbg !621
  %6 = bitcast i64* %3 to i8*, !dbg !623
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !623
  %7 = ptrtoint i8* %5 to i64, !dbg !624
  %8 = ptrtoint i8* %1 to i64, !dbg !624
  %9 = xor i64 %8, -1, !dbg !625
  %10 = add i64 %7, %9, !dbg !625
  %11 = call i32 @string2ll(i8* nonnull %4, i64 %10, i64* nonnull %3) #9, !dbg !627
  %12 = load i64, i64* %3, align 8, !dbg !628, !tbaa !536
  %13 = sitofp i64 %12 to double, !dbg !629
  call void @lua_pushnumber(%struct.lua_State* %0, double %13) #9, !dbg !630
  %14 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !631
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !632
  ret i8* %14, !dbg !633
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @redisProtocolToLuaType_Bulk(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !544 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !636
  %5 = tail call i8* @strchr(i8* nonnull %4, i32 13) #9, !dbg !637
  %6 = bitcast i64* %3 to i8*, !dbg !639
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !639
  %7 = ptrtoint i8* %5 to i64, !dbg !640
  %8 = ptrtoint i8* %1 to i64, !dbg !640
  %9 = xor i64 %8, -1, !dbg !641
  %10 = add i64 %7, %9, !dbg !641
  %11 = call i32 @string2ll(i8* nonnull %4, i64 %10, i64* nonnull %3) #9, !dbg !643
  %12 = load i64, i64* %3, align 8, !dbg !644, !tbaa !536
  %13 = icmp eq i64 %12, -1, !dbg !645
  br i1 %13, label %14, label %15, !dbg !646

; <label>:14:                                     ; preds = %2
  call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #9, !dbg !647
  br label %19, !dbg !648

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !649
  call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %16, i64 %12) #9, !dbg !650
  %17 = load i64, i64* %3, align 8, !dbg !651, !tbaa !536
  %18 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !652
  br label %19, !dbg !653

; <label>:19:                                     ; preds = %15, %14
  %20 = phi i8* [ %5, %14 ], [ %18, %15 ]
  %21 = getelementptr inbounds i8, i8* %20, i64 2, !dbg !654
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !655
  ret i8* %21, !dbg !655
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @redisProtocolToLuaType_Status(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !577 {
  %3 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !658
  %4 = tail call i8* @strchr(i8* nonnull %3, i32 13) #9, !dbg !659
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #9, !dbg !661
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !662
  %5 = ptrtoint i8* %4 to i64, !dbg !663
  %6 = ptrtoint i8* %1 to i64, !dbg !663
  %7 = xor i64 %6, -1, !dbg !664
  %8 = add i64 %5, %7, !dbg !664
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %3, i64 %8) #9, !dbg !665
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #9, !dbg !666
  %9 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !667
  ret i8* %9, !dbg !668
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @redisProtocolToLuaType_Error(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !596 {
  %3 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !671
  %4 = tail call i8* @strchr(i8* nonnull %3, i32 13) #9, !dbg !672
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #9, !dbg !674
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !675
  %5 = ptrtoint i8* %4 to i64, !dbg !676
  %6 = ptrtoint i8* %1 to i64, !dbg !676
  %7 = xor i64 %6, -1, !dbg !677
  %8 = add i64 %5, %7, !dbg !677
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* nonnull %3, i64 %8) #9, !dbg !678
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #9, !dbg !679
  %9 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !680
  ret i8* %9, !dbg !681
}

; Function Attrs: noredzone nounwind
define dso_local i8* @redisProtocolToLuaType_MultiBulk(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !682 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !691
  %5 = tail call i8* @strchr(i8* nonnull %4, i32 13) #9, !dbg !692
  %6 = bitcast i64* %3 to i8*, !dbg !694
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !694
  %7 = ptrtoint i8* %5 to i64, !dbg !696
  %8 = ptrtoint i8* %1 to i64, !dbg !696
  %9 = xor i64 %8, -1, !dbg !697
  %10 = add i64 %7, %9, !dbg !697
  %11 = call i32 @string2ll(i8* nonnull %4, i64 %10, i64* nonnull %3) #9, !dbg !699
  %12 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !700
  %13 = load i64, i64* %3, align 8, !dbg !701, !tbaa !536
  %14 = icmp eq i64 %13, -1, !dbg !703
  br i1 %14, label %15, label %16, !dbg !704

; <label>:15:                                     ; preds = %2
  call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #9, !dbg !705
  br label %28, !dbg !707

; <label>:16:                                     ; preds = %2
  call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #9, !dbg !708
  %17 = load i64, i64* %3, align 8, !dbg !709, !tbaa !536
  %18 = icmp sgt i64 %17, 0, !dbg !712
  br i1 %18, label %19, label %28, !dbg !713

; <label>:19:                                     ; preds = %16, %19
  %20 = phi i64 [ %22, %19 ], [ 0, %16 ]
  %21 = phi i8* [ %25, %19 ], [ %12, %16 ]
  %22 = add nuw nsw i64 %20, 1, !dbg !714
  %23 = trunc i64 %22 to i32, !dbg !716
  %24 = sitofp i32 %23 to double, !dbg !716
  call void @lua_pushnumber(%struct.lua_State* %0, double %24) #9, !dbg !717
  %25 = call i8* @redisProtocolToLuaType(%struct.lua_State* %0, i8* %21) #10, !dbg !718
  call void @lua_settable(%struct.lua_State* %0, i32 -3) #9, !dbg !719
  %26 = load i64, i64* %3, align 8, !dbg !709, !tbaa !536
  %27 = icmp sgt i64 %26, %22, !dbg !712
  br i1 %27, label %19, label %28, !dbg !713, !llvm.loop !720

; <label>:28:                                     ; preds = %19, %16, %15
  %29 = phi i8* [ %12, %15 ], [ %12, %16 ], [ %25, %19 ], !dbg !722
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !723
  ret i8* %29, !dbg !723
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
define dso_local void @luaPushError(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !724 {
  %3 = alloca %struct.lua_Debug, align 8
  %4 = bitcast %struct.lua_Debug* %3 to i8*, !dbg !755
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %4) #8, !dbg !755
  %5 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !756, !tbaa !758
  %6 = icmp ne i32 %5, 0, !dbg !763
  %7 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !764
  %8 = icmp ne i32 %7, 0, !dbg !765
  %9 = and i1 %6, %8, !dbg !766
  br i1 %9, label %10, label %15, !dbg !766

; <label>:10:                                     ; preds = %2
  %11 = tail call i8* @sdsempty() #9, !dbg !767
  %12 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %1) #9, !dbg !769
  %13 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !777, !tbaa !778
  %14 = tail call %struct.list* @listAddNodeTail(%struct.list* %13, i8* %12) #9, !dbg !779
  br label %15, !dbg !780

; <label>:15:                                     ; preds = %10, %2
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #9, !dbg !781
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !782
  %16 = call i32 @lua_getstack(%struct.lua_State* %0, i32 1, %struct.lua_Debug* nonnull %3) #9, !dbg !784
  %17 = icmp eq i32 %16, 0, !dbg !784
  br i1 %17, label %28, label %18, !dbg !785

; <label>:18:                                     ; preds = %15
  %19 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), %struct.lua_Debug* nonnull %3) #9, !dbg !786
  %20 = icmp eq i32 %19, 0, !dbg !786
  br i1 %20, label %28, label %21, !dbg !787

; <label>:21:                                     ; preds = %18
  %22 = call i8* @sdsempty() #9, !dbg !788
  %23 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 4, !dbg !789
  %24 = load i8*, i8** %23, align 8, !dbg !789, !tbaa !790
  %25 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %3, i64 0, i32 5, !dbg !792
  %26 = load i32, i32* %25, align 8, !dbg !792, !tbaa !793
  %27 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %24, i32 %26, i8* %1) #9, !dbg !794
  call void @lua_pushstring(%struct.lua_State* %0, i8* %27) #9, !dbg !796
  call void @sdsfree(i8* %27) #9, !dbg !797
  br label %29, !dbg !798

; <label>:28:                                     ; preds = %18, %15
  call void @lua_pushstring(%struct.lua_State* %0, i8* %1) #9, !dbg !799
  br label %29

; <label>:29:                                     ; preds = %28, %21
  call void @lua_settable(%struct.lua_State* %0, i32 -3) #9, !dbg !801
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %4) #8, !dbg !802
  ret void, !dbg !802
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbLog(i8*) local_unnamed_addr #0 !dbg !771 {
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !804, !tbaa !778
  %3 = tail call %struct.list* @listAddNodeTail(%struct.list* %2, i8* %0) #9, !dbg !805
  ret void, !dbg !806
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
define dso_local i32 @luaRaiseError(%struct.lua_State*) local_unnamed_addr #0 !dbg !807 {
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !813
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -2) #9, !dbg !814
  %2 = tail call i32 @lua_error(%struct.lua_State* %0) #9, !dbg !815
  ret i32 %2, !dbg !816
}

; Function Attrs: noredzone
declare dso_local void @lua_gettable(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_error(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaSortArray(%struct.lua_State*) local_unnamed_addr #0 !dbg !817 {
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !823
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !824
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -2) #9, !dbg !825
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -3) #9, !dbg !826
  %2 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 1, i32 0, i32 0) #9, !dbg !827
  %3 = icmp eq i32 %2, 0, !dbg !827
  br i1 %3, label %5, label %4, !dbg !829

; <label>:4:                                      ; preds = %1
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9, !dbg !830
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !832
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -2) #9, !dbg !833
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -3) #9, !dbg !834
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !835
  tail call void @lua_call(%struct.lua_State* %0, i32 2, i32 0) #9, !dbg !836
  br label %5, !dbg !837

; <label>:5:                                      ; preds = %1, %4
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9, !dbg !838
  ret void, !dbg !839
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
define dso_local void @luaReplyToRedisReply(%struct.client*, %struct.lua_State*) local_unnamed_addr #0 !dbg !840 {
  %3 = tail call i32 @lua_type(%struct.lua_State* %1, i32 -1) #9, !dbg !860
  switch i32 %3, label %50 [
    i32 4, label %4
    i32 1, label %7
    i32 3, label %13
    i32 5, label %16
  ], !dbg !862

; <label>:4:                                      ; preds = %2
  %5 = tail call i8* @lua_tolstring(%struct.lua_State* %1, i32 -1, i64* null) #9, !dbg !863
  %6 = tail call i64 @lua_objlen(%struct.lua_State* %1, i32 -1) #9, !dbg !864
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* %5, i64 %6) #9, !dbg !865
  br label %52, !dbg !866

; <label>:7:                                      ; preds = %2
  %8 = tail call i32 @lua_toboolean(%struct.lua_State* %1, i32 -1) #9, !dbg !867
  %9 = icmp eq i32 %8, 0, !dbg !867
  %10 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !868
  %11 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !869
  %12 = select i1 %9, %struct.redisObject* %11, %struct.redisObject* %10, !dbg !867
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %12) #9, !dbg !870
  br label %52, !dbg !871

; <label>:13:                                     ; preds = %2
  %14 = tail call double @lua_tonumber(%struct.lua_State* %1, i32 -1) #9, !dbg !872
  %15 = fptosi double %14 to i64, !dbg !873
  tail call void @addReplyLongLong(%struct.client* %0, i64 %15) #9, !dbg !874
  br label %52, !dbg !875

; <label>:16:                                     ; preds = %2
  tail call void @lua_pushstring(%struct.lua_State* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !876
  tail call void @lua_gettable(%struct.lua_State* %1, i32 -2) #9, !dbg !877
  %17 = tail call i32 @lua_type(%struct.lua_State* %1, i32 -1) #9, !dbg !878
  %18 = icmp eq i32 %17, 4, !dbg !879
  br i1 %18, label %19, label %25, !dbg !880

; <label>:19:                                     ; preds = %16
  %20 = tail call i8* @lua_tolstring(%struct.lua_State* %1, i32 -1, i64* null) #9, !dbg !881
  %21 = tail call i8* @sdsnew(i8* %20) #9, !dbg !882
  %22 = tail call i8* @sdsmapchars(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2) #9, !dbg !884
  %23 = tail call i8* @sdsempty() #9, !dbg !885
  %24 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %21) #9, !dbg !886
  tail call void @addReplySds(%struct.client* %0, i8* %24) #9, !dbg !887
  tail call void @sdsfree(i8* %21) #9, !dbg !888
  tail call void @lua_settop(%struct.lua_State* %1, i32 -3) #9, !dbg !889
  br label %53

; <label>:25:                                     ; preds = %16
  tail call void @lua_settop(%struct.lua_State* %1, i32 -2) #9, !dbg !890
  tail call void @lua_pushstring(%struct.lua_State* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !891
  tail call void @lua_gettable(%struct.lua_State* %1, i32 -2) #9, !dbg !892
  %26 = tail call i32 @lua_type(%struct.lua_State* %1, i32 -1) #9, !dbg !893
  %27 = icmp eq i32 %26, 4, !dbg !894
  br i1 %27, label %28, label %34, !dbg !895

; <label>:28:                                     ; preds = %25
  %29 = tail call i8* @lua_tolstring(%struct.lua_State* %1, i32 -1, i64* null) #9, !dbg !896
  %30 = tail call i8* @sdsnew(i8* %29) #9, !dbg !897
  %31 = tail call i8* @sdsmapchars(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2) #9, !dbg !899
  %32 = tail call i8* @sdsempty() #9, !dbg !900
  %33 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* %30) #9, !dbg !901
  tail call void @addReplySds(%struct.client* %0, i8* %33) #9, !dbg !902
  tail call void @sdsfree(i8* %30) #9, !dbg !903
  tail call void @lua_settop(%struct.lua_State* %1, i32 -2) #9, !dbg !904
  br label %52, !dbg !905

; <label>:34:                                     ; preds = %25
  %35 = tail call i8* @addDeferredMultiBulkLength(%struct.client* %0) #9, !dbg !906
  tail call void @lua_settop(%struct.lua_State* %1, i32 -2) #9, !dbg !910
  tail call void @lua_pushnumber(%struct.lua_State* %1, double 1.000000e+00) #9, !dbg !911
  tail call void @lua_gettable(%struct.lua_State* %1, i32 -2) #9, !dbg !913
  %36 = tail call i32 @lua_type(%struct.lua_State* %1, i32 -1) #9, !dbg !914
  %37 = icmp eq i32 %36, 0, !dbg !915
  br i1 %37, label %40, label %42, !dbg !917

; <label>:38:                                     ; preds = %42
  %39 = zext i32 %46 to i64, !dbg !918
  br label %40, !dbg !918

; <label>:40:                                     ; preds = %38, %34
  %41 = phi i64 [ 0, %34 ], [ %39, %38 ]
  tail call void @lua_settop(%struct.lua_State* %1, i32 -2) #9, !dbg !918
  tail call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %35, i64 %41) #9, !dbg !920
  br label %52

; <label>:42:                                     ; preds = %34, %42
  %43 = phi i32 [ %46, %42 ], [ 0, %34 ]
  %44 = phi i32 [ %45, %42 ], [ 1, %34 ]
  %45 = add nuw nsw i32 %44, 1, !dbg !921
  tail call void @luaReplyToRedisReply(%struct.client* %0, %struct.lua_State* %1) #10, !dbg !922
  %46 = add nuw nsw i32 %43, 1, !dbg !923
  %47 = sitofp i32 %45 to double, !dbg !924
  tail call void @lua_pushnumber(%struct.lua_State* %1, double %47) #9, !dbg !911
  tail call void @lua_gettable(%struct.lua_State* %1, i32 -2) #9, !dbg !913
  %48 = tail call i32 @lua_type(%struct.lua_State* %1, i32 -1) #9, !dbg !914
  %49 = icmp eq i32 %48, 0, !dbg !915
  br i1 %49, label %38, label %42, !dbg !917, !llvm.loop !925

; <label>:50:                                     ; preds = %2
  %51 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !928, !tbaa !929
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %51) #9, !dbg !931
  br label %52, !dbg !932

; <label>:52:                                     ; preds = %28, %40, %50, %13, %7, %4
  tail call void @lua_settop(%struct.lua_State* %1, i32 -2) #9, !dbg !933
  br label %53, !dbg !934

; <label>:53:                                     ; preds = %52, %19
  ret void, !dbg !934
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
  %6 = tail call i32 @lua_gettop(%struct.lua_State* %0) #9, !dbg !937
  %7 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 271), align 8, !dbg !939, !tbaa !940
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 280), align 4, !dbg !947, !tbaa !949
  %9 = icmp eq i32 %8, 0, !dbg !950
  br i1 %9, label %10, label %16, !dbg !951

; <label>:10:                                     ; preds = %2
  %11 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !952, !tbaa !953
  %12 = getelementptr inbounds %struct.client, %struct.client* %11, i64 0, i32 21, !dbg !954
  %13 = load i32, i32* %12, align 8, !dbg !954, !tbaa !955
  %14 = and i32 %13, 8, !dbg !959
  %15 = icmp eq i32 %14, 0, !dbg !959
  br i1 %15, label %20, label %16, !dbg !960

; <label>:16:                                     ; preds = %10, %2
  %17 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 21, !dbg !961
  %18 = load i32, i32* %17, align 8, !dbg !963, !tbaa !955
  %19 = or i32 %18, 8, !dbg !963
  store i32 %19, i32* %17, align 8, !dbg !963, !tbaa !955
  br label %24, !dbg !964

; <label>:20:                                     ; preds = %10
  %21 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 21, !dbg !965
  %22 = load i32, i32* %21, align 8, !dbg !967, !tbaa !955
  %23 = and i32 %22, -9, !dbg !967
  store i32 %23, i32* %21, align 8, !dbg !967, !tbaa !955
  br label %24

; <label>:24:                                     ; preds = %20, %16
  %25 = load i32, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !968, !tbaa !969
  %26 = icmp eq i32 %25, 0, !dbg !968
  br i1 %26, label %28, label %27, !dbg !970

; <label>:27:                                     ; preds = %24
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !971
  tail call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !972
  br label %517

; <label>:28:                                     ; preds = %24
  store i32 1, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !973, !tbaa !969
  %29 = icmp eq i32 %6, 0, !dbg !974
  br i1 %29, label %30, label %36, !dbg !976

; <label>:30:                                     ; preds = %28
  tail call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !977
  %31 = load i32, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !979, !tbaa !969
  %32 = add nsw i32 %31, -1, !dbg !979
  store i32 %32, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !979, !tbaa !969
  %33 = icmp eq i32 %1, 0, !dbg !980
  br i1 %33, label %517, label %34, !dbg !980

; <label>:34:                                     ; preds = %30
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !983
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -2) #9, !dbg !984
  %35 = tail call i32 @lua_error(%struct.lua_State* %0) #9, !dbg !985
  br label %517, !dbg !980

; <label>:36:                                     ; preds = %28
  %37 = load i32, i32* @luaRedisGenericCommand.argv_size, align 4, !dbg !986, !tbaa !969
  %38 = icmp slt i32 %37, %6, !dbg !988
  br i1 %38, label %39, label %44, !dbg !989

; <label>:39:                                     ; preds = %36
  %40 = load i8*, i8** bitcast (%struct.redisObject*** @luaRedisGenericCommand.argv to i8**), align 8, !dbg !990, !tbaa !992
  %41 = sext i32 %6 to i64, !dbg !993
  %42 = shl nsw i64 %41, 3, !dbg !994
  %43 = tail call i8* @zrealloc(i8* %40, i64 %42) #9, !dbg !995
  store i8* %43, i8** bitcast (%struct.redisObject*** @luaRedisGenericCommand.argv to i8**), align 8, !dbg !996, !tbaa !992
  store i32 %6, i32* @luaRedisGenericCommand.argv_size, align 4, !dbg !997, !tbaa !969
  br label %44, !dbg !998

; <label>:44:                                     ; preds = %39, %36
  %45 = icmp sgt i32 %6, 0, !dbg !1000
  br i1 %45, label %46, label %114, !dbg !1001

; <label>:46:                                     ; preds = %44
  %47 = bitcast i64* %4 to i8*
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %49 = sext i32 %6 to i64, !dbg !1001
  br label %50, !dbg !1001

; <label>:50:                                     ; preds = %46, %108
  %51 = phi i64 [ 0, %46 ], [ %52, %108 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %47) #8, !dbg !1002
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %48) #8, !dbg !1003
  %52 = add nuw nsw i64 %51, 1, !dbg !1005
  %53 = trunc i64 %52 to i32, !dbg !1006
  %54 = call i32 @lua_type(%struct.lua_State* %0, i32 %53) #9, !dbg !1006
  %55 = icmp eq i32 %54, 3, !dbg !1007
  br i1 %55, label %56, label %60, !dbg !1008

; <label>:56:                                     ; preds = %50
  %57 = call double @lua_tonumber(%struct.lua_State* %0, i32 %53) #9, !dbg !1009
  %58 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %48, i64 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), double %57) #9, !dbg !1011
  %59 = sext i32 %58 to i64, !dbg !1011
  store i64 %59, i64* %4, align 8, !dbg !1013, !tbaa !1014
  br label %63, !dbg !1016

; <label>:60:                                     ; preds = %50
  %61 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %53, i64* nonnull %4) #9, !dbg !1017
  %62 = icmp eq i8* %61, null, !dbg !1019
  br i1 %62, label %110, label %63, !dbg !1021

; <label>:63:                                     ; preds = %60, %56
  %64 = phi i8* [ %48, %56 ], [ %61, %60 ], !dbg !1022
  %65 = icmp ult i64 %51, 32, !dbg !1023
  br i1 %65, label %66, label %103, !dbg !1024

; <label>:66:                                     ; preds = %63
  %67 = getelementptr inbounds [32 x %struct.redisObject*], [32 x %struct.redisObject*]* @luaRedisGenericCommand.cached_objects, i64 0, i64 %51, !dbg !1025
  %68 = load %struct.redisObject*, %struct.redisObject** %67, align 8, !dbg !1025, !tbaa !992
  %69 = icmp eq %struct.redisObject* %68, null, !dbg !1025
  br i1 %69, label %103, label %70, !dbg !1026

; <label>:70:                                     ; preds = %66
  %71 = getelementptr inbounds [32 x i64], [32 x i64]* @luaRedisGenericCommand.cached_objects_len, i64 0, i64 %51, !dbg !1027
  %72 = load i64, i64* %71, align 8, !dbg !1027, !tbaa !1014
  %73 = load i64, i64* %4, align 8, !dbg !1028, !tbaa !1014
  %74 = icmp ult i64 %72, %73, !dbg !1029
  br i1 %74, label %103, label %75, !dbg !1030

; <label>:75:                                     ; preds = %70
  %76 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %68, i64 0, i32 2, !dbg !1031
  %77 = load i8*, i8** %76, align 8, !dbg !1031, !tbaa !1032
  %78 = load %struct.redisObject**, %struct.redisObject*** @luaRedisGenericCommand.argv, align 8, !dbg !1035, !tbaa !992
  %79 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %78, i64 %51, !dbg !1035
  store %struct.redisObject* %68, %struct.redisObject** %79, align 8, !dbg !1036, !tbaa !992
  store %struct.redisObject* null, %struct.redisObject** %67, align 8, !dbg !1037, !tbaa !992
  %80 = add i64 %73, 1, !dbg !1038
  %81 = call i8* @memcpy(i8* %77, i8* nonnull %64, i64 %80) #9, !dbg !1039
  %82 = load i64, i64* %4, align 8, !dbg !1040, !tbaa !1014
  %83 = getelementptr inbounds i8, i8* %77, i64 -1, !dbg !1056
  %84 = load i8, i8* %83, align 1, !dbg !1056, !tbaa !485
  %85 = trunc i8 %84 to i3, !dbg !1058
  switch i3 %85, label %108 [
    i3 0, label %86
    i3 1, label %89
    i3 2, label %92
    i3 3, label %96
    i3 -4, label %100
  ], !dbg !1058

; <label>:86:                                     ; preds = %75
  %87 = trunc i64 %82 to i8, !dbg !1060
  %88 = shl i8 %87, 3, !dbg !1060
  store i8 %88, i8* %83, align 1, !dbg !1061, !tbaa !485
  br label %108, !dbg !1062

; <label>:89:                                     ; preds = %75
  %90 = trunc i64 %82 to i8, !dbg !1063
  %91 = getelementptr inbounds i8, i8* %77, i64 -3, !dbg !1064
  store i8 %90, i8* %91, align 1, !dbg !1065, !tbaa !485
  br label %108, !dbg !1066

; <label>:92:                                     ; preds = %75
  %93 = trunc i64 %82 to i16, !dbg !1067
  %94 = getelementptr inbounds i8, i8* %77, i64 -5, !dbg !1068
  %95 = bitcast i8* %94 to i16*, !dbg !1069
  store i16 %93, i16* %95, align 1, !dbg !1070, !tbaa !1071
  br label %108, !dbg !1073

; <label>:96:                                     ; preds = %75
  %97 = trunc i64 %82 to i32, !dbg !1074
  %98 = getelementptr inbounds i8, i8* %77, i64 -9, !dbg !1075
  %99 = bitcast i8* %98 to i32*, !dbg !1076
  store i32 %97, i32* %99, align 1, !dbg !1077, !tbaa !969
  br label %108, !dbg !1078

; <label>:100:                                    ; preds = %75
  %101 = getelementptr inbounds i8, i8* %77, i64 -17, !dbg !1079
  %102 = bitcast i8* %101 to i64*, !dbg !1080
  store i64 %82, i64* %102, align 1, !dbg !1081, !tbaa !1014
  br label %108, !dbg !1082

; <label>:103:                                    ; preds = %70, %66, %63
  %104 = load i64, i64* %4, align 8, !dbg !1083, !tbaa !1014
  %105 = call %struct.redisObject* @createStringObject(i8* nonnull %64, i64 %104) #9, !dbg !1085
  %106 = load %struct.redisObject**, %struct.redisObject*** @luaRedisGenericCommand.argv, align 8, !dbg !1086, !tbaa !992
  %107 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %106, i64 %51, !dbg !1086
  store %struct.redisObject* %105, %struct.redisObject** %107, align 8, !dbg !1087, !tbaa !992
  br label %108

; <label>:108:                                    ; preds = %100, %96, %92, %89, %86, %75, %103
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %48) #8, !dbg !1088
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #8, !dbg !1088
  %109 = icmp slt i64 %52, %49, !dbg !1000
  br i1 %109, label %50, label %112, !dbg !1001, !llvm.loop !1089

; <label>:110:                                    ; preds = %60
  %111 = trunc i64 %51 to i32, !dbg !999
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %48) #8, !dbg !1088
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47) #8, !dbg !1088
  br label %114

; <label>:112:                                    ; preds = %108
  %113 = trunc i64 %52 to i32, !dbg !1006
  br label %114, !dbg !1091

; <label>:114:                                    ; preds = %112, %44, %110
  %115 = phi i32 [ %111, %110 ], [ 0, %44 ], [ %113, %112 ]
  %116 = icmp eq i32 %115, %6, !dbg !1091
  br i1 %116, label %134, label %117, !dbg !1093

; <label>:117:                                    ; preds = %114
  %118 = icmp sgt i32 %115, 0, !dbg !1094
  br i1 %118, label %119, label %128, !dbg !1096

; <label>:119:                                    ; preds = %117
  %120 = zext i32 %115 to i64, !dbg !1097
  br label %121, !dbg !1097

; <label>:121:                                    ; preds = %119, %121
  %122 = phi i64 [ %120, %119 ], [ %123, %121 ]
  %123 = add nsw i64 %122, -1, !dbg !1097
  %124 = load %struct.redisObject**, %struct.redisObject*** @luaRedisGenericCommand.argv, align 8, !dbg !1099, !tbaa !992
  %125 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %124, i64 %123, !dbg !1099
  %126 = load %struct.redisObject*, %struct.redisObject** %125, align 8, !dbg !1099, !tbaa !992
  call void @decrRefCount(%struct.redisObject* %126) #9, !dbg !1100
  %127 = icmp sgt i64 %122, 1, !dbg !1094
  br i1 %127, label %121, label %128, !dbg !1096, !llvm.loop !1101

; <label>:128:                                    ; preds = %121, %117
  call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i64 0, i64 0)) #10, !dbg !1103
  %129 = load i32, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !1104, !tbaa !969
  %130 = add nsw i32 %129, -1, !dbg !1104
  store i32 %130, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !1104, !tbaa !969
  %131 = icmp eq i32 %1, 0, !dbg !1105
  br i1 %131, label %517, label %132, !dbg !1105

; <label>:132:                                    ; preds = %128
  call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1108
  call void @lua_gettable(%struct.lua_State* %0, i32 -2) #9, !dbg !1109
  %133 = call i32 @lua_error(%struct.lua_State* %0) #9, !dbg !1110
  br label %517, !dbg !1105

; <label>:134:                                    ; preds = %114
  %135 = load i64, i64* bitcast (%struct.redisObject*** @luaRedisGenericCommand.argv to i64*), align 8, !dbg !1111, !tbaa !992
  %136 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 9, !dbg !1112
  %137 = bitcast %struct.redisObject*** %136 to i64*, !dbg !1113
  store i64 %135, i64* %137, align 8, !dbg !1113, !tbaa !1114
  %138 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 8, !dbg !1115
  store i32 %6, i32* %138, align 8, !dbg !1116, !tbaa !1117
  call void @moduleCallCommandFilters(%struct.client* %7) #9, !dbg !1118
  %139 = load i64, i64* %137, align 8, !dbg !1119, !tbaa !1114
  store i64 %139, i64* bitcast (%struct.redisObject*** @luaRedisGenericCommand.argv to i64*), align 8, !dbg !1120, !tbaa !992
  %140 = load i32, i32* %138, align 8, !dbg !1121, !tbaa !1117
  %141 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !1122, !tbaa !758
  %142 = icmp ne i32 %141, 0, !dbg !1123
  %143 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !1124
  %144 = icmp ne i32 %143, 0, !dbg !1125
  %145 = and i1 %142, %144, !dbg !1126
  %146 = inttoptr i64 %139 to %struct.redisObject**, !dbg !1126
  br i1 %145, label %147, label %175, !dbg !1126

; <label>:147:                                    ; preds = %134
  %148 = call i8* @sdsnew(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !1127
  %149 = load i32, i32* %138, align 8, !dbg !1129, !tbaa !1117
  %150 = icmp sgt i32 %149, 0, !dbg !1132
  br i1 %150, label %161, label %170, !dbg !1133

; <label>:151:                                    ; preds = %161
  %152 = call i8* @sdscatlen(i8* %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #9, !dbg !1134
  %153 = load %struct.redisObject**, %struct.redisObject*** %136, align 8, !dbg !1138, !tbaa !1114
  %154 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %153, i64 1, !dbg !1139
  %155 = load %struct.redisObject*, %struct.redisObject** %154, align 8, !dbg !1139, !tbaa !992
  %156 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %155, i64 0, i32 2, !dbg !1140
  %157 = load i8*, i8** %156, align 8, !dbg !1140, !tbaa !1032
  %158 = call i8* @sdscatsds(i8* %152, i8* %157) #9, !dbg !1141
  %159 = load i32, i32* %138, align 8, !dbg !1129, !tbaa !1117
  %160 = icmp sgt i32 %159, 2, !dbg !1132
  br i1 %160, label %519, label %170, !dbg !1133, !llvm.loop !1142

; <label>:161:                                    ; preds = %147
  %162 = call i8* @sdscatlen(i8* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #9, !dbg !1134
  %163 = load %struct.redisObject**, %struct.redisObject*** %136, align 8, !dbg !1138, !tbaa !1114
  %164 = load %struct.redisObject*, %struct.redisObject** %163, align 8, !dbg !1139, !tbaa !992
  %165 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %164, i64 0, i32 2, !dbg !1140
  %166 = load i8*, i8** %165, align 8, !dbg !1140, !tbaa !1032
  %167 = call i8* @sdscatsds(i8* %162, i8* %166) #9, !dbg !1141
  %168 = load i32, i32* %138, align 8, !dbg !1129, !tbaa !1117
  %169 = icmp sgt i32 %168, 1, !dbg !1132
  br i1 %169, label %151, label %170, !dbg !1133, !llvm.loop !1142

; <label>:170:                                    ; preds = %161, %151, %519, %529, %539, %549, %559, %569, %579, %589, %147, %599
  %171 = phi i8* [ %601, %599 ], [ %148, %147 ], [ %167, %161 ], [ %158, %151 ], [ %526, %519 ], [ %536, %529 ], [ %546, %539 ], [ %556, %549 ], [ %566, %559 ], [ %576, %569 ], [ %586, %579 ], [ %596, %589 ], !dbg !1144
  %172 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !1147, !tbaa !778
  %173 = call %struct.list* @listAddNodeTail(%struct.list* %172, i8* %171) #9, !dbg !1148
  %174 = load %struct.redisObject**, %struct.redisObject*** @luaRedisGenericCommand.argv, align 8, !dbg !1149, !tbaa !992
  br label %175, !dbg !1150

; <label>:175:                                    ; preds = %170, %134
  %176 = phi %struct.redisObject** [ %174, %170 ], [ %146, %134 ], !dbg !1149
  %177 = load %struct.redisObject*, %struct.redisObject** %176, align 8, !dbg !1149, !tbaa !992
  %178 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %177, i64 0, i32 2, !dbg !1151
  %179 = load i8*, i8** %178, align 8, !dbg !1151, !tbaa !1032
  %180 = call %struct.redisCommand* @lookupCommand(i8* %179) #9, !dbg !1152
  %181 = icmp eq %struct.redisCommand* %180, null, !dbg !1154
  br i1 %181, label %192, label %182, !dbg !1156

; <label>:182:                                    ; preds = %175
  %183 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %180, i64 0, i32 2, !dbg !1157
  %184 = load i32, i32* %183, align 8, !dbg !1157, !tbaa !1158
  %185 = icmp sgt i32 %184, 0, !dbg !1160
  %186 = icmp ne i32 %184, %140, !dbg !1161
  %187 = and i1 %186, %185, !dbg !1162
  %188 = sub nsw i32 0, %184, !dbg !1163
  %189 = icmp slt i32 %140, %188, !dbg !1164
  %190 = or i1 %189, %187, !dbg !1162
  br i1 %190, label %191, label %193, !dbg !1162

; <label>:191:                                    ; preds = %182
  call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !1165
  br label %419, !dbg !1165

; <label>:192:                                    ; preds = %175
  call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !1168
  br label %419

; <label>:193:                                    ; preds = %182
  %194 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 11, !dbg !1169
  store %struct.redisCommand* %180, %struct.redisCommand** %194, align 8, !dbg !1170, !tbaa !1171
  %195 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 10, !dbg !1172
  store %struct.redisCommand* %180, %struct.redisCommand** %195, align 8, !dbg !1173, !tbaa !1174
  %196 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %180, i64 0, i32 4, !dbg !1175
  %197 = load i32, i32* %196, align 8, !dbg !1175, !tbaa !1177
  %198 = and i32 %197, 64, !dbg !1178
  %199 = icmp eq i32 %198, 0, !dbg !1178
  br i1 %199, label %201, label %200, !dbg !1179

; <label>:200:                                    ; preds = %193
  call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !1180
  br label %419, !dbg !1182

; <label>:201:                                    ; preds = %193
  %202 = and i32 %197, 1, !dbg !1183
  %203 = icmp eq i32 %202, 0, !dbg !1183
  br i1 %203, label %204, label %207, !dbg !1184

; <label>:204:                                    ; preds = %201
  %205 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !1185
  %206 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !1187
  br label %244, !dbg !1184

; <label>:207:                                    ; preds = %201
  %208 = call i32 @writeCommandsDeniedByDiskError() #9, !dbg !1188
  %209 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 278), align 4, !dbg !1190, !tbaa !1191
  %210 = icmp eq i32 %209, 0, !dbg !1192
  %211 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !1193
  %212 = icmp ne i32 %211, 0, !dbg !1194
  %213 = or i1 %210, %212, !dbg !1195
  br i1 %213, label %215, label %214, !dbg !1195

; <label>:214:                                    ; preds = %207
  call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !1196
  br label %419, !dbg !1198

; <label>:215:                                    ; preds = %207
  %216 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !1199, !tbaa !1200
  %217 = icmp eq i8* %216, null, !dbg !1201
  %218 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 211), align 4, !dbg !1202
  %219 = icmp eq i32 %218, 0, !dbg !1203
  %220 = or i1 %217, %219, !dbg !1204
  %221 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !1205
  %222 = icmp ne i32 %221, 0, !dbg !1206
  %223 = or i1 %220, %222, !dbg !1204
  br i1 %223, label %234, label %224, !dbg !1204

; <label>:224:                                    ; preds = %215
  %225 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !1207, !tbaa !953
  %226 = getelementptr inbounds %struct.client, %struct.client* %225, i64 0, i32 21, !dbg !1208
  %227 = load i32, i32* %226, align 8, !dbg !1208, !tbaa !955
  %228 = and i32 %227, 2, !dbg !1209
  %229 = icmp eq i32 %228, 0, !dbg !1209
  br i1 %229, label %230, label %234, !dbg !1210

; <label>:230:                                    ; preds = %224
  %231 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 24), align 8, !dbg !1211, !tbaa !1213
  %232 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %231, i64 0, i32 2, !dbg !1214
  %233 = load i8*, i8** %232, align 8, !dbg !1214, !tbaa !1032
  call void @luaPushError(%struct.lua_State* %0, i8* %233) #10, !dbg !1215
  br label %419, !dbg !1216

; <label>:234:                                    ; preds = %224, %215
  switch i32 %208, label %239 [
    i32 0, label %244
    i32 2, label %235
  ], !dbg !1217

; <label>:235:                                    ; preds = %234
  %236 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 22), align 8, !dbg !1218, !tbaa !1220
  %237 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %236, i64 0, i32 2, !dbg !1221
  %238 = load i8*, i8** %237, align 8, !dbg !1221, !tbaa !1032
  call void @luaPushError(%struct.lua_State* %0, i8* %238) #10, !dbg !1222
  br label %419, !dbg !1223

; <label>:239:                                    ; preds = %234
  %240 = call i8* @sdsempty() #9, !dbg !1224
  %241 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 141), align 4, !dbg !1225, !tbaa !1226
  %242 = call i8* @strerror(i32 %241) #9, !dbg !1227
  %243 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %240, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0), i8* %242) #9, !dbg !1228
  call void @luaPushError(%struct.lua_State* %0, i8* %243) #10, !dbg !1230
  call void @sdsfree(i8* %243) #9, !dbg !1231
  br label %419

; <label>:244:                                    ; preds = %204, %234
  %245 = phi i8* [ %206, %204 ], [ %216, %234 ], !dbg !1187
  %246 = phi i32 [ %205, %204 ], [ %221, %234 ], !dbg !1185
  %247 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !1232, !tbaa !1233
  %248 = icmp eq i64 %247, 0, !dbg !1234
  %249 = icmp ne i32 %246, 0, !dbg !1235
  %250 = or i1 %248, %249, !dbg !1236
  %251 = icmp ne i8* %245, null, !dbg !1237
  %252 = or i1 %250, %251, !dbg !1236
  %253 = xor i1 %252, true, !dbg !1236
  %254 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 277), align 8, !dbg !1238
  %255 = icmp eq i32 %254, 0, !dbg !1239
  %256 = and i1 %255, %253, !dbg !1236
  br i1 %256, label %257, label %268, !dbg !1236

; <label>:257:                                    ; preds = %244
  %258 = load i32, i32* %196, align 8, !dbg !1240, !tbaa !1177
  %259 = and i32 %258, 4, !dbg !1241
  %260 = icmp eq i32 %259, 0, !dbg !1241
  br i1 %260, label %268, label %261, !dbg !1242

; <label>:261:                                    ; preds = %257
  %262 = call i32 @getMaxmemoryState(i64* null, i64* null, i64* null, float* null) #9, !dbg !1243
  %263 = icmp eq i32 %262, 0, !dbg !1246
  br i1 %263, label %268, label %264, !dbg !1247

; <label>:264:                                    ; preds = %261
  %265 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 29), align 8, !dbg !1248, !tbaa !1250
  %266 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %265, i64 0, i32 2, !dbg !1251
  %267 = load i8*, i8** %266, align 8, !dbg !1251, !tbaa !1032
  call void @luaPushError(%struct.lua_State* %0, i8* %267) #10, !dbg !1252
  br label %419, !dbg !1253

; <label>:268:                                    ; preds = %261, %257, %244
  %269 = load i32, i32* %196, align 8, !dbg !1254, !tbaa !1177
  %270 = trunc i32 %269 to i8, !dbg !1256
  %271 = icmp slt i8 %270, 0, !dbg !1256
  br i1 %271, label %272, label %273, !dbg !1257

; <label>:272:                                    ; preds = %268
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 278), align 4, !dbg !1258, !tbaa !1191
  br label %273, !dbg !1259

; <label>:273:                                    ; preds = %272, %268
  %274 = and i32 %269, 1, !dbg !1260
  %275 = icmp eq i32 %274, 0, !dbg !1260
  br i1 %275, label %277, label %276, !dbg !1262

; <label>:276:                                    ; preds = %273
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 277), align 8, !dbg !1263, !tbaa !1264
  br label %277, !dbg !1265

; <label>:277:                                    ; preds = %273, %276
  %278 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !1266, !tbaa !1268
  %279 = icmp eq i32 %278, 0, !dbg !1269
  %280 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 51), align 4, !dbg !1270
  %281 = icmp ne i32 %280, 0, !dbg !1271
  %282 = or i1 %279, %281, !dbg !1272
  br i1 %282, label %305, label %283, !dbg !1272

; <label>:283:                                    ; preds = %277
  %284 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !1273, !tbaa !953
  %285 = getelementptr inbounds %struct.client, %struct.client* %284, i64 0, i32 21, !dbg !1274
  %286 = load i32, i32* %285, align 8, !dbg !1274, !tbaa !955
  %287 = and i32 %286, 2, !dbg !1275
  %288 = icmp eq i32 %287, 0, !dbg !1275
  br i1 %288, label %289, label %305, !dbg !1276

; <label>:289:                                    ; preds = %283
  %290 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 21, !dbg !1277
  %291 = load i32, i32* %290, align 8, !dbg !1279, !tbaa !955
  %292 = and i32 %291, -131585, !dbg !1279
  store i32 %292, i32* %290, align 8, !dbg !1279, !tbaa !955
  %293 = load i32, i32* %285, align 8, !dbg !1280, !tbaa !955
  %294 = and i32 %293, 131584, !dbg !1281
  %295 = or i32 %294, %292, !dbg !1282
  store i32 %295, i32* %290, align 8, !dbg !1282, !tbaa !955
  %296 = load %struct.redisCommand*, %struct.redisCommand** %195, align 8, !dbg !1283, !tbaa !1174
  %297 = load %struct.redisObject**, %struct.redisObject*** %136, align 8, !dbg !1285, !tbaa !1114
  %298 = load i32, i32* %138, align 8, !dbg !1286, !tbaa !1117
  %299 = call %struct.clusterNode* @getNodeByQuery(%struct.client* nonnull %7, %struct.redisCommand* %296, %struct.redisObject** %297, i32 %298, i32* null, i32* null) #9, !dbg !1287
  %300 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !1288, !tbaa !1289
  %301 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %300, i64 0, i32 0, !dbg !1290
  %302 = load %struct.clusterNode*, %struct.clusterNode** %301, align 8, !dbg !1290, !tbaa !1291
  %303 = icmp eq %struct.clusterNode* %299, %302, !dbg !1293
  br i1 %303, label %305, label %304, !dbg !1294

; <label>:304:                                    ; preds = %289
  call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !1295
  br label %419, !dbg !1297

; <label>:305:                                    ; preds = %289, %283, %277
  %306 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !1298, !tbaa !1300
  %307 = icmp eq i32 %306, 0, !dbg !1301
  %308 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 280), align 4, !dbg !1302
  %309 = icmp ne i32 %308, 0, !dbg !1303
  %310 = or i1 %307, %309, !dbg !1304
  br i1 %310, label %325, label %311, !dbg !1304

; <label>:311:                                    ; preds = %305
  %312 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !1305, !tbaa !953
  %313 = getelementptr inbounds %struct.client, %struct.client* %312, i64 0, i32 21, !dbg !1306
  %314 = load i32, i32* %313, align 8, !dbg !1306, !tbaa !955
  %315 = and i32 %314, 8, !dbg !1307
  %316 = icmp eq i32 %315, 0, !dbg !1307
  %317 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 277), align 8, !dbg !1308
  %318 = icmp ne i32 %317, 0, !dbg !1309
  %319 = and i1 %316, %318, !dbg !1310
  %320 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 281), align 8, !dbg !1311
  %321 = icmp ne i32 %320, 0, !dbg !1312
  %322 = and i1 %319, %321, !dbg !1310
  br i1 %322, label %323, label %328, !dbg !1310

; <label>:323:                                    ; preds = %311
  call void @execCommandPropagateMulti(%struct.client* %312) #9, !dbg !1313
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 280), align 4, !dbg !1315, !tbaa !949
  %324 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !1316, !tbaa !1300
  br label %325, !dbg !1318

; <label>:325:                                    ; preds = %323, %305
  %326 = phi i32 [ %306, %305 ], [ %324, %323 ], !dbg !1316
  %327 = icmp eq i32 %326, 0, !dbg !1320
  br i1 %327, label %336, label %328, !dbg !1321

; <label>:328:                                    ; preds = %311, %325
  %329 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 281), align 8, !dbg !1322, !tbaa !1325
  %330 = and i32 %329, 1, !dbg !1326
  %331 = icmp eq i32 %330, 0, !dbg !1326
  %332 = select i1 %331, i32 3, i32 7, !dbg !1327
  %333 = shl i32 %329, 2, !dbg !1328
  %334 = and i32 %333, 8, !dbg !1328
  %335 = or i32 %332, %334, !dbg !1328
  br label %336, !dbg !1328

; <label>:336:                                    ; preds = %328, %325
  %337 = phi i32 [ 3, %325 ], [ %335, %328 ], !dbg !1329
  call void @call(%struct.client* nonnull %7, i32 %337) #9, !dbg !1330
  %338 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 15, !dbg !1331
  %339 = load %struct.list*, %struct.list** %338, align 8, !dbg !1331, !tbaa !1332
  %340 = getelementptr inbounds %struct.list, %struct.list* %339, i64 0, i32 5, !dbg !1331
  %341 = load i64, i64* %340, align 8, !dbg !1331, !tbaa !1333
  %342 = icmp eq i64 %341, 0, !dbg !1335
  %343 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 47
  %344 = load i32, i32* %343, align 8, !dbg !1336, !tbaa !1337
  %345 = icmp slt i32 %344, 16384, !dbg !1338
  %346 = and i1 %342, %345, !dbg !1339
  br i1 %346, label %347, label %351, !dbg !1339

; <label>:347:                                    ; preds = %336
  %348 = sext i32 %344 to i64, !dbg !1340
  %349 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 48, i64 %348, !dbg !1340
  store i8 0, i8* %349, align 1, !dbg !1342, !tbaa !485
  %350 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 48, i64 0, !dbg !1343
  store i32 0, i32* %343, align 8, !dbg !1345, !tbaa !1337
  br label %378, !dbg !1346

; <label>:351:                                    ; preds = %336
  %352 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 48, i64 0, !dbg !1347
  %353 = sext i32 %344 to i64, !dbg !1348
  %354 = call i8* @sdsnewlen(i8* nonnull %352, i64 %353) #9, !dbg !1349
  store i32 0, i32* %343, align 8, !dbg !1350, !tbaa !1337
  %355 = load %struct.list*, %struct.list** %338, align 8, !dbg !1351, !tbaa !1332
  %356 = getelementptr inbounds %struct.list, %struct.list* %355, i64 0, i32 5, !dbg !1351
  %357 = load i64, i64* %356, align 8, !dbg !1351, !tbaa !1333
  %358 = icmp eq i64 %357, 0, !dbg !1352
  br i1 %358, label %378, label %359, !dbg !1352

; <label>:359:                                    ; preds = %351, %359
  %360 = phi %struct.list* [ %374, %359 ], [ %355, %351 ]
  %361 = phi i8* [ %370, %359 ], [ %354, %351 ]
  %362 = getelementptr inbounds %struct.list, %struct.list* %360, i64 0, i32 0, !dbg !1353
  %363 = load %struct.listNode*, %struct.listNode** %362, align 8, !dbg !1353, !tbaa !1354
  %364 = getelementptr inbounds %struct.listNode, %struct.listNode* %363, i64 0, i32 2, !dbg !1353
  %365 = bitcast i8** %364 to %struct.clientReplyBlock**, !dbg !1353
  %366 = load %struct.clientReplyBlock*, %struct.clientReplyBlock** %365, align 8, !dbg !1353, !tbaa !1355
  %367 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %366, i64 0, i32 2, i64 0, !dbg !1358
  %368 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %366, i64 0, i32 1, !dbg !1359
  %369 = load i64, i64* %368, align 8, !dbg !1359, !tbaa !1014
  %370 = call i8* @sdscatlen(i8* %361, i8* nonnull %367, i64 %369) #9, !dbg !1360
  %371 = load %struct.list*, %struct.list** %338, align 8, !dbg !1361, !tbaa !1332
  %372 = getelementptr inbounds %struct.list, %struct.list* %371, i64 0, i32 0, !dbg !1362
  %373 = load %struct.listNode*, %struct.listNode** %372, align 8, !dbg !1362, !tbaa !1354
  call void @listDelNode(%struct.list* %371, %struct.listNode* %373) #9, !dbg !1363
  %374 = load %struct.list*, %struct.list** %338, align 8, !dbg !1351, !tbaa !1332
  %375 = getelementptr inbounds %struct.list, %struct.list* %374, i64 0, i32 5, !dbg !1351
  %376 = load i64, i64* %375, align 8, !dbg !1351, !tbaa !1333
  %377 = icmp eq i64 %376, 0, !dbg !1352
  br i1 %377, label %378, label %359, !dbg !1352, !llvm.loop !1364

; <label>:378:                                    ; preds = %359, %351, %347
  %379 = phi i8* [ %350, %347 ], [ %354, %351 ], [ %370, %359 ], !dbg !1336
  %380 = icmp eq i32 %1, 0, !dbg !1366
  br i1 %380, label %385, label %381, !dbg !1368

; <label>:381:                                    ; preds = %378
  %382 = load i8, i8* %379, align 1, !dbg !1369, !tbaa !485
  %383 = icmp eq i8 %382, 45, !dbg !1370
  %384 = select i1 %383, i32 %1, i32 0, !dbg !1371
  br label %385, !dbg !1371

; <label>:385:                                    ; preds = %381, %378
  %386 = phi i32 [ 0, %378 ], [ %384, %381 ]
  %387 = call i8* @redisProtocolToLuaType(%struct.lua_State* %0, i8* %379) #10, !dbg !1372
  %388 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !1373, !tbaa !758
  %389 = icmp ne i32 %388, 0, !dbg !1375
  %390 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !1376
  %391 = icmp ne i32 %390, 0, !dbg !1377
  %392 = and i1 %389, %391, !dbg !1378
  br i1 %392, label %393, label %398, !dbg !1378

; <label>:393:                                    ; preds = %385
  %394 = bitcast i8** %3 to i8*, !dbg !1387
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %394) #8, !dbg !1387
  %395 = call i8* @sdsnew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.171, i64 0, i64 0)) #9, !dbg !1388
  store i8* %395, i8** %3, align 8, !dbg !1389, !tbaa !992
  %396 = call i8* @ldbRedisProtocolToHuman(i8** nonnull %3, i8* %379) #9, !dbg !1390
  %397 = load i8*, i8** %3, align 8, !dbg !1391, !tbaa !992
  call void @ldbLogWithMaxLen(i8* %397) #9, !dbg !1392
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %394) #8, !dbg !1393
  br label %398, !dbg !1394

; <label>:398:                                    ; preds = %393, %385
  %399 = load i32, i32* %196, align 8, !dbg !1395, !tbaa !1177
  %400 = and i32 %399, 256, !dbg !1397
  %401 = icmp ne i32 %400, 0, !dbg !1397
  %402 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !1398
  %403 = icmp eq i32 %402, 0, !dbg !1399
  %404 = and i1 %401, %403, !dbg !1400
  br i1 %404, label %405, label %413, !dbg !1400

; <label>:405:                                    ; preds = %398
  %406 = load i8, i8* %379, align 1, !dbg !1401, !tbaa !485
  %407 = icmp eq i8 %406, 42, !dbg !1402
  br i1 %407, label %408, label %413, !dbg !1403

; <label>:408:                                    ; preds = %405
  %409 = getelementptr inbounds i8, i8* %379, i64 1, !dbg !1404
  %410 = load i8, i8* %409, align 1, !dbg !1404, !tbaa !485
  %411 = icmp eq i8 %410, 45, !dbg !1405
  br i1 %411, label %413, label %412, !dbg !1406

; <label>:412:                                    ; preds = %408
  call void @luaSortArray(%struct.lua_State* %0) #10, !dbg !1407
  br label %413, !dbg !1409

; <label>:413:                                    ; preds = %408, %412, %405, %398
  %414 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 48, i64 0, !dbg !1410
  %415 = icmp eq i8* %379, %414, !dbg !1412
  br i1 %415, label %417, label %416, !dbg !1413

; <label>:416:                                    ; preds = %413
  call void @sdsfree(i8* %379) #9, !dbg !1414
  br label %417, !dbg !1414

; <label>:417:                                    ; preds = %413, %416
  %418 = getelementptr inbounds %struct.client, %struct.client* %7, i64 0, i32 16, !dbg !1415
  store i64 0, i64* %418, align 8, !dbg !1416, !tbaa !1417
  br label %419, !dbg !1418

; <label>:419:                                    ; preds = %235, %239, %214, %230, %191, %192, %417, %304, %264, %200
  %420 = phi i32 [ %1, %191 ], [ %1, %192 ], [ %1, %200 ], [ %1, %264 ], [ %386, %417 ], [ %1, %304 ], [ %1, %230 ], [ %1, %214 ], [ %1, %239 ], [ %1, %235 ]
  %421 = load i32, i32* %138, align 8, !dbg !1419, !tbaa !1117
  %422 = icmp sgt i32 %421, 0, !dbg !1420
  %423 = load %struct.redisObject**, %struct.redisObject*** %136, align 8, !dbg !1421, !tbaa !1114
  br i1 %422, label %424, label %505, !dbg !1423

; <label>:424:                                    ; preds = %419, %499
  %425 = phi i64 [ %500, %499 ], [ 0, %419 ]
  %426 = phi %struct.redisObject** [ %504, %499 ], [ %423, %419 ]
  %427 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %426, i64 %425, !dbg !1424
  %428 = load %struct.redisObject*, %struct.redisObject** %427, align 8, !dbg !1424, !tbaa !992
  %429 = icmp ult i64 %425, 32, !dbg !1426
  br i1 %429, label %430, label %498, !dbg !1427

; <label>:430:                                    ; preds = %424
  %431 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %428, i64 0, i32 1, !dbg !1428
  %432 = load i32, i32* %431, align 4, !dbg !1428, !tbaa !1429
  %433 = icmp eq i32 %432, 1, !dbg !1430
  br i1 %433, label %434, label %498, !dbg !1431

; <label>:434:                                    ; preds = %430
  %435 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %428, i64 0, i32 0, !dbg !1432
  %436 = load i32, i32* %435, align 8, !dbg !1432
  %437 = lshr i32 %436, 4, !dbg !1432
  %438 = trunc i32 %437 to i4, !dbg !1433
  switch i4 %438, label %498 [
    i4 0, label %439
    i4 -8, label %439
  ], !dbg !1433

; <label>:439:                                    ; preds = %434, %434
  %440 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %428, i64 0, i32 2, !dbg !1434
  %441 = load i8*, i8** %440, align 8, !dbg !1434, !tbaa !1032
  %442 = getelementptr inbounds i8, i8* %441, i64 -1, !dbg !1444
  %443 = load i8, i8* %442, align 1, !dbg !1444, !tbaa !485
  %444 = trunc i8 %443 to i3, !dbg !1446
  switch i3 %444, label %466 [
    i3 -4, label %459
    i3 1, label %445
    i3 2, label %449
    i3 3, label %454
  ], !dbg !1446

; <label>:445:                                    ; preds = %439
  %446 = getelementptr inbounds i8, i8* %441, i64 -3, !dbg !1447
  %447 = load i8, i8* %446, align 1, !dbg !1449, !tbaa !485
  %448 = zext i8 %447 to i64, !dbg !1447
  br label %463, !dbg !1450

; <label>:449:                                    ; preds = %439
  %450 = getelementptr inbounds i8, i8* %441, i64 -5, !dbg !1451
  %451 = bitcast i8* %450 to i16*, !dbg !1452
  %452 = load i16, i16* %451, align 1, !dbg !1452, !tbaa !1071
  %453 = zext i16 %452 to i64, !dbg !1451
  br label %463, !dbg !1453

; <label>:454:                                    ; preds = %439
  %455 = getelementptr inbounds i8, i8* %441, i64 -9, !dbg !1454
  %456 = bitcast i8* %455 to i32*, !dbg !1455
  %457 = load i32, i32* %456, align 1, !dbg !1455, !tbaa !969
  %458 = zext i32 %457 to i64, !dbg !1454
  br label %463, !dbg !1456

; <label>:459:                                    ; preds = %439
  %460 = getelementptr inbounds i8, i8* %441, i64 -17, !dbg !1457
  %461 = bitcast i8* %460 to i64*, !dbg !1458
  %462 = load i64, i64* %461, align 1, !dbg !1458, !tbaa !1014
  br label %463, !dbg !1459

; <label>:463:                                    ; preds = %445, %449, %454, %459
  %464 = phi i64 [ %462, %459 ], [ %458, %454 ], [ %453, %449 ], [ %448, %445 ], !dbg !1460
  %465 = icmp ult i64 %464, 65, !dbg !1461
  br i1 %465, label %466, label %498, !dbg !1462

; <label>:466:                                    ; preds = %439, %463
  %467 = getelementptr inbounds [32 x %struct.redisObject*], [32 x %struct.redisObject*]* @luaRedisGenericCommand.cached_objects, i64 0, i64 %425, !dbg !1464
  %468 = load %struct.redisObject*, %struct.redisObject** %467, align 8, !dbg !1464, !tbaa !992
  %469 = icmp eq %struct.redisObject* %468, null, !dbg !1464
  br i1 %469, label %471, label %470, !dbg !1466

; <label>:470:                                    ; preds = %466
  call void @decrRefCount(%struct.redisObject* nonnull %468) #9, !dbg !1467
  br label %471, !dbg !1467

; <label>:471:                                    ; preds = %466, %470
  store %struct.redisObject* %428, %struct.redisObject** %467, align 8, !dbg !1468, !tbaa !992
  %472 = load i8, i8* %442, align 1, !dbg !1475, !tbaa !485
  %473 = trunc i8 %472 to i3, !dbg !1477
  switch i3 %473, label %495 [
    i3 0, label %474
    i3 1, label %477
    i3 2, label %481
    i3 3, label %486
    i3 -4, label %491
  ], !dbg !1477

; <label>:474:                                    ; preds = %471
  %475 = lshr i8 %472, 3, !dbg !1478
  %476 = zext i8 %475 to i64, !dbg !1478
  br label %495, !dbg !1480

; <label>:477:                                    ; preds = %471
  %478 = getelementptr inbounds i8, i8* %441, i64 -2, !dbg !1481
  %479 = load i8, i8* %478, align 1, !dbg !1481, !tbaa !485
  %480 = zext i8 %479 to i64, !dbg !1482
  br label %495, !dbg !1483

; <label>:481:                                    ; preds = %471
  %482 = getelementptr inbounds i8, i8* %441, i64 -3, !dbg !1484
  %483 = bitcast i8* %482 to i16*, !dbg !1484
  %484 = load i16, i16* %483, align 1, !dbg !1484, !tbaa !1071
  %485 = zext i16 %484 to i64, !dbg !1485
  br label %495, !dbg !1486

; <label>:486:                                    ; preds = %471
  %487 = getelementptr inbounds i8, i8* %441, i64 -5, !dbg !1487
  %488 = bitcast i8* %487 to i32*, !dbg !1487
  %489 = load i32, i32* %488, align 1, !dbg !1487, !tbaa !969
  %490 = zext i32 %489 to i64, !dbg !1488
  br label %495, !dbg !1489

; <label>:491:                                    ; preds = %471
  %492 = getelementptr inbounds i8, i8* %441, i64 -9, !dbg !1490
  %493 = bitcast i8* %492 to i64*, !dbg !1490
  %494 = load i64, i64* %493, align 1, !dbg !1490, !tbaa !1014
  br label %495, !dbg !1491

; <label>:495:                                    ; preds = %471, %474, %477, %481, %486, %491
  %496 = phi i64 [ %494, %491 ], [ %490, %486 ], [ %485, %481 ], [ %480, %477 ], [ %476, %474 ], [ 0, %471 ], !dbg !1492
  %497 = getelementptr inbounds [32 x i64], [32 x i64]* @luaRedisGenericCommand.cached_objects_len, i64 0, i64 %425, !dbg !1493
  store i64 %496, i64* %497, align 8, !dbg !1494, !tbaa !1014
  br label %499, !dbg !1495

; <label>:498:                                    ; preds = %434, %463, %430, %424
  call void @decrRefCount(%struct.redisObject* %428) #9, !dbg !1496
  br label %499

; <label>:499:                                    ; preds = %498, %495
  %500 = add nuw nsw i64 %425, 1, !dbg !1498
  %501 = load i32, i32* %138, align 8, !dbg !1419, !tbaa !1117
  %502 = sext i32 %501 to i64, !dbg !1420
  %503 = icmp slt i64 %500, %502, !dbg !1420
  %504 = load %struct.redisObject**, %struct.redisObject*** %136, align 8, !dbg !1421, !tbaa !1114
  br i1 %503, label %424, label %505, !dbg !1423, !llvm.loop !1499

; <label>:505:                                    ; preds = %499, %419
  %506 = phi %struct.redisObject** [ %423, %419 ], [ %504, %499 ], !dbg !1421
  %507 = load %struct.redisObject**, %struct.redisObject*** @luaRedisGenericCommand.argv, align 8, !dbg !1501, !tbaa !992
  %508 = icmp eq %struct.redisObject** %506, %507, !dbg !1502
  br i1 %508, label %511, label %509, !dbg !1503

; <label>:509:                                    ; preds = %505
  %510 = bitcast %struct.redisObject** %506 to i8*, !dbg !1504
  call void @zfree(i8* %510) #9, !dbg !1506
  store %struct.redisObject** null, %struct.redisObject*** @luaRedisGenericCommand.argv, align 8, !dbg !1507, !tbaa !992
  store i32 0, i32* @luaRedisGenericCommand.argv_size, align 4, !dbg !1508, !tbaa !969
  br label %511, !dbg !1509

; <label>:511:                                    ; preds = %505, %509
  %512 = icmp eq i32 %420, 0, !dbg !1510
  %513 = load i32, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !1329, !tbaa !969
  %514 = add nsw i32 %513, -1, !dbg !1329
  store i32 %514, i32* @luaRedisGenericCommand.inuse, align 4, !dbg !1329, !tbaa !969
  br i1 %512, label %517, label %515, !dbg !1512

; <label>:515:                                    ; preds = %511
  call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1516
  call void @lua_gettable(%struct.lua_State* %0, i32 -2) #9, !dbg !1517
  %516 = call i32 @lua_error(%struct.lua_State* %0) #9, !dbg !1518
  br label %517, !dbg !1519

; <label>:517:                                    ; preds = %511, %132, %128, %34, %30, %515, %27
  %518 = phi i32 [ 1, %27 ], [ %516, %515 ], [ %35, %34 ], [ 1, %30 ], [ %133, %132 ], [ 1, %128 ], [ 1, %511 ]
  ret i32 %518, !dbg !1520

; <label>:519:                                    ; preds = %151
  %520 = call i8* @sdscatlen(i8* %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #9, !dbg !1134
  %521 = load %struct.redisObject**, %struct.redisObject*** %136, align 8, !dbg !1138, !tbaa !1114
  %522 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %521, i64 2, !dbg !1139
  %523 = load %struct.redisObject*, %struct.redisObject** %522, align 8, !dbg !1139, !tbaa !992
  %524 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %523, i64 0, i32 2, !dbg !1140
  %525 = load i8*, i8** %524, align 8, !dbg !1140, !tbaa !1032
  %526 = call i8* @sdscatsds(i8* %520, i8* %525) #9, !dbg !1141
  %527 = load i32, i32* %138, align 8, !dbg !1129, !tbaa !1117
  %528 = icmp sgt i32 %527, 3, !dbg !1132
  br i1 %528, label %529, label %170, !dbg !1133, !llvm.loop !1142

; <label>:529:                                    ; preds = %519
  %530 = call i8* @sdscatlen(i8* %526, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #9, !dbg !1134
  %531 = load %struct.redisObject**, %struct.redisObject*** %136, align 8, !dbg !1138, !tbaa !1114
  %532 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %531, i64 3, !dbg !1139
  %533 = load %struct.redisObject*, %struct.redisObject** %532, align 8, !dbg !1139, !tbaa !992
  %534 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %533, i64 0, i32 2, !dbg !1140
  %535 = load i8*, i8** %534, align 8, !dbg !1140, !tbaa !1032
  %536 = call i8* @sdscatsds(i8* %530, i8* %535) #9, !dbg !1141
  %537 = load i32, i32* %138, align 8, !dbg !1129, !tbaa !1117
  %538 = icmp sgt i32 %537, 4, !dbg !1132
  br i1 %538, label %539, label %170, !dbg !1133, !llvm.loop !1142

; <label>:539:                                    ; preds = %529
  %540 = call i8* @sdscatlen(i8* %536, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #9, !dbg !1134
  %541 = load %struct.redisObject**, %struct.redisObject*** %136, align 8, !dbg !1138, !tbaa !1114
  %542 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %541, i64 4, !dbg !1139
  %543 = load %struct.redisObject*, %struct.redisObject** %542, align 8, !dbg !1139, !tbaa !992
  %544 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %543, i64 0, i32 2, !dbg !1140
  %545 = load i8*, i8** %544, align 8, !dbg !1140, !tbaa !1032
  %546 = call i8* @sdscatsds(i8* %540, i8* %545) #9, !dbg !1141
  %547 = load i32, i32* %138, align 8, !dbg !1129, !tbaa !1117
  %548 = icmp sgt i32 %547, 5, !dbg !1132
  br i1 %548, label %549, label %170, !dbg !1133, !llvm.loop !1142

; <label>:549:                                    ; preds = %539
  %550 = call i8* @sdscatlen(i8* %546, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #9, !dbg !1134
  %551 = load %struct.redisObject**, %struct.redisObject*** %136, align 8, !dbg !1138, !tbaa !1114
  %552 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %551, i64 5, !dbg !1139
  %553 = load %struct.redisObject*, %struct.redisObject** %552, align 8, !dbg !1139, !tbaa !992
  %554 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %553, i64 0, i32 2, !dbg !1140
  %555 = load i8*, i8** %554, align 8, !dbg !1140, !tbaa !1032
  %556 = call i8* @sdscatsds(i8* %550, i8* %555) #9, !dbg !1141
  %557 = load i32, i32* %138, align 8, !dbg !1129, !tbaa !1117
  %558 = icmp sgt i32 %557, 6, !dbg !1132
  br i1 %558, label %559, label %170, !dbg !1133, !llvm.loop !1142

; <label>:559:                                    ; preds = %549
  %560 = call i8* @sdscatlen(i8* %556, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #9, !dbg !1134
  %561 = load %struct.redisObject**, %struct.redisObject*** %136, align 8, !dbg !1138, !tbaa !1114
  %562 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %561, i64 6, !dbg !1139
  %563 = load %struct.redisObject*, %struct.redisObject** %562, align 8, !dbg !1139, !tbaa !992
  %564 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %563, i64 0, i32 2, !dbg !1140
  %565 = load i8*, i8** %564, align 8, !dbg !1140, !tbaa !1032
  %566 = call i8* @sdscatsds(i8* %560, i8* %565) #9, !dbg !1141
  %567 = load i32, i32* %138, align 8, !dbg !1129, !tbaa !1117
  %568 = icmp sgt i32 %567, 7, !dbg !1132
  br i1 %568, label %569, label %170, !dbg !1133, !llvm.loop !1142

; <label>:569:                                    ; preds = %559
  %570 = call i8* @sdscatlen(i8* %566, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #9, !dbg !1134
  %571 = load %struct.redisObject**, %struct.redisObject*** %136, align 8, !dbg !1138, !tbaa !1114
  %572 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %571, i64 7, !dbg !1139
  %573 = load %struct.redisObject*, %struct.redisObject** %572, align 8, !dbg !1139, !tbaa !992
  %574 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %573, i64 0, i32 2, !dbg !1140
  %575 = load i8*, i8** %574, align 8, !dbg !1140, !tbaa !1032
  %576 = call i8* @sdscatsds(i8* %570, i8* %575) #9, !dbg !1141
  %577 = load i32, i32* %138, align 8, !dbg !1129, !tbaa !1117
  %578 = icmp sgt i32 %577, 8, !dbg !1132
  br i1 %578, label %579, label %170, !dbg !1133, !llvm.loop !1142

; <label>:579:                                    ; preds = %569
  %580 = call i8* @sdscatlen(i8* %576, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #9, !dbg !1134
  %581 = load %struct.redisObject**, %struct.redisObject*** %136, align 8, !dbg !1138, !tbaa !1114
  %582 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %581, i64 8, !dbg !1139
  %583 = load %struct.redisObject*, %struct.redisObject** %582, align 8, !dbg !1139, !tbaa !992
  %584 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %583, i64 0, i32 2, !dbg !1140
  %585 = load i8*, i8** %584, align 8, !dbg !1140, !tbaa !1032
  %586 = call i8* @sdscatsds(i8* %580, i8* %585) #9, !dbg !1141
  %587 = load i32, i32* %138, align 8, !dbg !1129, !tbaa !1117
  %588 = icmp sgt i32 %587, 9, !dbg !1132
  br i1 %588, label %589, label %170, !dbg !1133, !llvm.loop !1142

; <label>:589:                                    ; preds = %579
  %590 = call i8* @sdscatlen(i8* %586, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #9, !dbg !1134
  %591 = load %struct.redisObject**, %struct.redisObject*** %136, align 8, !dbg !1138, !tbaa !1114
  %592 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %591, i64 9, !dbg !1139
  %593 = load %struct.redisObject*, %struct.redisObject** %592, align 8, !dbg !1139, !tbaa !992
  %594 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %593, i64 0, i32 2, !dbg !1140
  %595 = load i8*, i8** %594, align 8, !dbg !1140, !tbaa !1032
  %596 = call i8* @sdscatsds(i8* %590, i8* %595) #9, !dbg !1141
  %597 = load i32, i32* %138, align 8, !dbg !1129, !tbaa !1117
  %598 = icmp sgt i32 %597, 10, !dbg !1132
  br i1 %598, label %599, label %170, !dbg !1133, !llvm.loop !1142

; <label>:599:                                    ; preds = %589
  %600 = add i32 %597, -11, !dbg !1521
  %601 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %596, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 %600) #9, !dbg !1523
  br label %170, !dbg !1524
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
define dso_local void @ldbLogRedisReply(i8*) local_unnamed_addr #0 !dbg !1380 {
  %2 = alloca i8*, align 8
  %3 = bitcast i8** %2 to i8*, !dbg !1526
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #8, !dbg !1526
  %4 = tail call i8* @sdsnew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.171, i64 0, i64 0)) #9, !dbg !1527
  store i8* %4, i8** %2, align 8, !dbg !1528, !tbaa !992
  %5 = call i8* @ldbRedisProtocolToHuman(i8** nonnull %2, i8* %0) #10, !dbg !1529
  %6 = load i8*, i8** %2, align 8, !dbg !1530, !tbaa !992
  tail call void @ldbLogWithMaxLen(i8* %6) #10, !dbg !1531
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #8, !dbg !1532
  ret void, !dbg !1532
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisCallCommand(%struct.lua_State*) #0 !dbg !1533 {
  %2 = tail call i32 @luaRedisGenericCommand(%struct.lua_State* %0, i32 1) #10, !dbg !1537
  ret i32 %2, !dbg !1538
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisPCallCommand(%struct.lua_State*) #0 !dbg !1539 {
  %2 = tail call i32 @luaRedisGenericCommand(%struct.lua_State* %0, i32 0) #10, !dbg !1543
  ret i32 %2, !dbg !1544
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisSha1hexCommand(%struct.lua_State*) #0 !dbg !1545 {
  %2 = alloca %struct.SHA1_CTX, align 4
  %3 = alloca [20 x i8], align 16
  %4 = alloca [41 x i8], align 16
  %5 = alloca i64, align 8
  %6 = tail call i32 @lua_gettop(%struct.lua_State* %0) #9, !dbg !1555
  %7 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 0, !dbg !1557
  call void @llvm.lifetime.start.p0i8(i64 41, i8* nonnull %7) #8, !dbg !1557
  %8 = bitcast i64* %5 to i8*, !dbg !1559
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1559
  %9 = icmp eq i32 %6, 1, !dbg !1560
  br i1 %9, label %12, label %10, !dbg !1562

; <label>:10:                                     ; preds = %1
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0)) #9, !dbg !1563
  %11 = tail call i32 @lua_error(%struct.lua_State* %0) #9, !dbg !1565
  br label %38, !dbg !1566

; <label>:12:                                     ; preds = %1
  %13 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 1, i64* nonnull %5) #9, !dbg !1568
  %14 = load i64, i64* %5, align 8, !dbg !1570, !tbaa !1014
  %15 = bitcast %struct.SHA1_CTX* %2 to i8*, !dbg !1574
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %15) #8, !dbg !1574
  %16 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0, !dbg !1575
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %16) #8, !dbg !1575
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %2) #9, !dbg !1577
  %17 = trunc i64 %14 to i32, !dbg !1578
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %2, i8* %13, i32 %17) #9, !dbg !1579
  call void @SHA1Final(i8* nonnull %16, %struct.SHA1_CTX* nonnull %2) #9, !dbg !1580
  br label %18, !dbg !1582

; <label>:18:                                     ; preds = %18, %12
  %19 = phi i64 [ 0, %12 ], [ %34, %18 ]
  %20 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 %19, !dbg !1583
  %21 = load i8, i8* %20, align 1, !dbg !1583, !tbaa !485
  %22 = lshr i8 %21, 4, !dbg !1584
  %23 = zext i8 %22 to i64, !dbg !1585
  %24 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %23, !dbg !1585
  %25 = load i8, i8* %24, align 1, !dbg !1585, !tbaa !485
  %26 = shl nuw nsw i64 %19, 1, !dbg !1586
  %27 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 %26, !dbg !1587
  store i8 %25, i8* %27, align 2, !dbg !1588, !tbaa !485
  %28 = and i8 %21, 15, !dbg !1589
  %29 = zext i8 %28 to i64, !dbg !1590
  %30 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %29, !dbg !1590
  %31 = load i8, i8* %30, align 1, !dbg !1590, !tbaa !485
  %32 = or i64 %26, 1, !dbg !1591
  %33 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 %32, !dbg !1592
  store i8 %31, i8* %33, align 1, !dbg !1593, !tbaa !485
  %34 = add nuw nsw i64 %19, 1, !dbg !1594
  %35 = icmp eq i64 %34, 20, !dbg !1595
  br i1 %35, label %36, label %18, !dbg !1582, !llvm.loop !500

; <label>:36:                                     ; preds = %18
  %37 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 40, !dbg !1596
  store i8 0, i8* %37, align 8, !dbg !1597, !tbaa !485
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %16) #8, !dbg !1598
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %15) #8, !dbg !1598
  call void @lua_pushstring(%struct.lua_State* %0, i8* nonnull %7) #9, !dbg !1599
  br label %38, !dbg !1600

; <label>:38:                                     ; preds = %36, %10
  %39 = phi i32 [ %11, %10 ], [ 1, %36 ], !dbg !1601
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !1602
  call void @llvm.lifetime.end.p0i8(i64 41, i8* nonnull %7) #8, !dbg !1602
  ret i32 %39, !dbg !1602
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisReturnSingleFieldTable(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !1603 {
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #9, !dbg !1611
  %4 = icmp eq i32 %3, 1, !dbg !1613
  br i1 %4, label %5, label %8, !dbg !1614

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @lua_type(%struct.lua_State* %0, i32 -1) #9, !dbg !1615
  %7 = icmp eq i32 %6, 4, !dbg !1616
  br i1 %7, label %9, label %8, !dbg !1617

; <label>:8:                                      ; preds = %5, %2
  tail call void @luaPushError(%struct.lua_State* %0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0)) #10, !dbg !1618
  br label %10, !dbg !1620

; <label>:9:                                      ; preds = %5
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #9, !dbg !1621
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %1) #9, !dbg !1622
  tail call void @lua_pushvalue(%struct.lua_State* %0, i32 -3) #9, !dbg !1623
  tail call void @lua_settable(%struct.lua_State* %0, i32 -3) #9, !dbg !1624
  br label %10, !dbg !1625

; <label>:10:                                     ; preds = %9, %8
  ret i32 1, !dbg !1626
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisErrorReplyCommand(%struct.lua_State*) #0 !dbg !1627 {
  %2 = tail call i32 @luaRedisReturnSingleFieldTable(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1631
  ret i32 1, !dbg !1632
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisStatusReplyCommand(%struct.lua_State*) #0 !dbg !1633 {
  %2 = tail call i32 @luaRedisReturnSingleFieldTable(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !1637
  ret i32 1, !dbg !1638
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisReplicateCommandsCommand(%struct.lua_State*) #0 !dbg !1639 {
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 277), align 8, !dbg !1643, !tbaa !1264
  %3 = icmp eq i32 %2, 0, !dbg !1645
  br i1 %3, label %5, label %4, !dbg !1646

; <label>:4:                                      ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #9, !dbg !1647
  br label %7, !dbg !1649

; <label>:5:                                      ; preds = %1
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !1650, !tbaa !1300
  %6 = tail call i32 @rand() #9, !dbg !1652
  tail call void @redisSrand48(i32 %6) #9, !dbg !1653
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #9, !dbg !1654
  br label %7

; <label>:7:                                      ; preds = %5, %4
  ret i32 1, !dbg !1655
}

; Function Attrs: noredzone
declare dso_local void @redisSrand48(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @rand() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisBreakpointCommand(%struct.lua_State*) #0 !dbg !1656 {
  %2 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !1660, !tbaa !758
  %3 = icmp eq i32 %2, 0, !dbg !1662
  br i1 %3, label %5, label %4, !dbg !1663

; <label>:4:                                      ; preds = %1
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !1664, !tbaa !1666
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 1) #9, !dbg !1667
  br label %6, !dbg !1668

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushboolean(%struct.lua_State* %0, i32 0) #9, !dbg !1669
  br label %6

; <label>:6:                                      ; preds = %5, %4
  ret i32 1, !dbg !1671
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisDebugCommand(%struct.lua_State*) #0 !dbg !1672 {
  %2 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !1678, !tbaa !758
  %3 = icmp eq i32 %2, 0, !dbg !1680
  br i1 %3, label %27, label %4, !dbg !1681

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @lua_gettop(%struct.lua_State* %0) #9, !dbg !1682
  %6 = tail call i8* @sdsempty() #9, !dbg !1684
  %7 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !1685, !tbaa !1686
  %8 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 %7) #9, !dbg !1687
  %9 = icmp eq i32 %5, 0, !dbg !1689
  br i1 %9, label %23, label %10, !dbg !1689

; <label>:10:                                     ; preds = %4
  %11 = add nsw i32 %5, -1, !dbg !1690
  %12 = sub i32 0, %5, !dbg !1691
  %13 = tail call i8* @ldbCatStackValueRec(i8* %8, %struct.lua_State* %0, i32 %12, i32 0) #9, !dbg !1704
  %14 = icmp eq i32 %11, 0, !dbg !1705
  br i1 %14, label %23, label %15, !dbg !1707

; <label>:15:                                     ; preds = %10, %15
  %16 = phi i8* [ %21, %15 ], [ %13, %10 ]
  %17 = phi i32 [ %19, %15 ], [ %11, %10 ]
  %18 = tail call i8* @sdscatlen(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i64 2) #9, !dbg !1708
  %19 = add nsw i32 %17, -1, !dbg !1690
  %20 = sub i32 0, %17, !dbg !1691
  %21 = tail call i8* @ldbCatStackValueRec(i8* %18, %struct.lua_State* %0, i32 %20, i32 0) #9, !dbg !1704
  %22 = icmp eq i32 %19, 0, !dbg !1705
  br i1 %22, label %23, label %15, !dbg !1707

; <label>:23:                                     ; preds = %15, %10, %4
  %24 = phi i8* [ %8, %4 ], [ %13, %10 ], [ %21, %15 ], !dbg !1709
  %25 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !1712, !tbaa !778
  %26 = tail call %struct.list* @listAddNodeTail(%struct.list* %25, i8* %24) #9, !dbg !1713
  br label %27

; <label>:27:                                     ; preds = %1, %23
  ret i32 0, !dbg !1714
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ldbCatStackValue(i8*, %struct.lua_State*, i32) local_unnamed_addr #0 !dbg !1694 {
  %4 = tail call i8* @ldbCatStackValueRec(i8* %0, %struct.lua_State* %1, i32 %2, i32 0) #10, !dbg !1718
  ret i8* %4, !dbg !1719
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaRedisSetReplCommand(%struct.lua_State*) #0 !dbg !1720 {
  %2 = tail call i32 @lua_gettop(%struct.lua_State* %0) #9, !dbg !1726
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !1728, !tbaa !1300
  %4 = icmp eq i32 %3, 0, !dbg !1730
  br i1 %4, label %5, label %7, !dbg !1731

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.31, i64 0, i64 0)) #9, !dbg !1732
  %6 = tail call i32 @lua_error(%struct.lua_State* %0) #9, !dbg !1734
  br label %18, !dbg !1735

; <label>:7:                                      ; preds = %1
  %8 = icmp eq i32 %2, 1, !dbg !1736
  br i1 %8, label %11, label %9, !dbg !1738

; <label>:9:                                      ; preds = %7
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i64 0, i64 0)) #9, !dbg !1739
  %10 = tail call i32 @lua_error(%struct.lua_State* %0) #9, !dbg !1741
  br label %18, !dbg !1742

; <label>:11:                                     ; preds = %7
  %12 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 -1) #9, !dbg !1743
  %13 = fptosi double %12 to i32, !dbg !1743
  %14 = icmp ugt i32 %13, 3, !dbg !1745
  br i1 %14, label %15, label %17, !dbg !1747

; <label>:15:                                     ; preds = %11
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.33, i64 0, i64 0)) #9, !dbg !1748
  %16 = tail call i32 @lua_error(%struct.lua_State* %0) #9, !dbg !1750
  br label %18, !dbg !1751

; <label>:17:                                     ; preds = %11
  store i32 %13, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 281), align 8, !dbg !1752, !tbaa !1325
  br label %18, !dbg !1753

; <label>:18:                                     ; preds = %17, %15, %9, %5
  %19 = phi i32 [ %6, %5 ], [ %10, %9 ], [ %16, %15 ], [ 0, %17 ], !dbg !1754
  ret i32 %19, !dbg !1755
}

; Function Attrs: noredzone nounwind
define dso_local i32 @luaLogCommand(%struct.lua_State*) #0 !dbg !1756 {
  %2 = alloca i64, align 8
  %3 = tail call i32 @lua_gettop(%struct.lua_State* %0) #9, !dbg !1769
  %4 = icmp slt i32 %3, 2, !dbg !1771
  br i1 %4, label %5, label %7, !dbg !1773

; <label>:5:                                      ; preds = %1
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.34, i64 0, i64 0)) #9, !dbg !1774
  %6 = tail call i32 @lua_error(%struct.lua_State* %0) #9, !dbg !1776
  br label %41, !dbg !1777

; <label>:7:                                      ; preds = %1
  %8 = sub nsw i32 0, %3, !dbg !1778
  %9 = tail call i32 @lua_isnumber(%struct.lua_State* %0, i32 %8) #9, !dbg !1780
  %10 = icmp eq i32 %9, 0, !dbg !1780
  br i1 %10, label %11, label %13, !dbg !1781

; <label>:11:                                     ; preds = %7
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.35, i64 0, i64 0)) #9, !dbg !1782
  %12 = tail call i32 @lua_error(%struct.lua_State* %0) #9, !dbg !1784
  br label %41, !dbg !1785

; <label>:13:                                     ; preds = %7
  %14 = tail call double @lua_tonumber(%struct.lua_State* %0, i32 %8) #9, !dbg !1786
  %15 = fptosi double %14 to i32, !dbg !1786
  %16 = icmp ugt i32 %15, 3, !dbg !1788
  br i1 %16, label %17, label %19, !dbg !1788

; <label>:17:                                     ; preds = %13
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0)) #9, !dbg !1790
  %18 = tail call i32 @lua_error(%struct.lua_State* %0) #9, !dbg !1792
  br label %41, !dbg !1793

; <label>:19:                                     ; preds = %13
  %20 = tail call i8* @sdsempty() #9, !dbg !1794
  %21 = bitcast i64* %2 to i8*
  br label %22, !dbg !1797

; <label>:22:                                     ; preds = %36, %19
  %23 = phi i8* [ %20, %19 ], [ %37, %36 ]
  %24 = phi i32 [ 1, %19 ], [ %38, %36 ]
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #8, !dbg !1798
  %25 = sub i32 %24, %3, !dbg !1799
  %26 = call i8* @lua_tolstring(%struct.lua_State* %0, i32 %25, i64* nonnull %2) #9, !dbg !1801
  %27 = icmp eq i8* %26, null, !dbg !1803
  br i1 %27, label %36, label %28, !dbg !1805

; <label>:28:                                     ; preds = %22
  %29 = icmp eq i32 %24, 1, !dbg !1806
  br i1 %29, label %32, label %30, !dbg !1809

; <label>:30:                                     ; preds = %28
  %31 = call i8* @sdscatlen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #9, !dbg !1810
  br label %32, !dbg !1811

; <label>:32:                                     ; preds = %28, %30
  %33 = phi i8* [ %31, %30 ], [ %23, %28 ], !dbg !1812
  %34 = load i64, i64* %2, align 8, !dbg !1813, !tbaa !1014
  %35 = call i8* @sdscatlen(i8* %33, i8* nonnull %26, i64 %34) #9, !dbg !1814
  br label %36, !dbg !1815

; <label>:36:                                     ; preds = %22, %32
  %37 = phi i8* [ %35, %32 ], [ %23, %22 ], !dbg !1812
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #8, !dbg !1816
  %38 = add nuw nsw i32 %24, 1, !dbg !1817
  %39 = icmp eq i32 %38, %3, !dbg !1818
  br i1 %39, label %40, label %22, !dbg !1797, !llvm.loop !1819

; <label>:40:                                     ; preds = %36
  call void @serverLogRaw(i32 %15, i8* %37) #9, !dbg !1821
  call void @sdsfree(i8* %37) #9, !dbg !1822
  br label %41, !dbg !1823

; <label>:41:                                     ; preds = %40, %17, %11, %5
  %42 = phi i32 [ %6, %5 ], [ %18, %17 ], [ 0, %40 ], [ %12, %11 ], !dbg !1824
  ret i32 %42, !dbg !1825
}

; Function Attrs: noredzone
declare dso_local i32 @lua_isnumber(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @serverLogRaw(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaLoadLib(%struct.lua_State*, i8*, i32 (%struct.lua_State*)*) local_unnamed_addr #0 !dbg !1826 {
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* %2, i32 0) #9, !dbg !1838
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* %1) #9, !dbg !1839
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #9, !dbg !1840
  ret void, !dbg !1841
}

; Function Attrs: noredzone
declare dso_local void @lua_pushcclosure(%struct.lua_State*, i32 (%struct.lua_State*)*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @luaLoadLibraries(%struct.lua_State*) local_unnamed_addr #0 !dbg !1842 {
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_base, i32 0) #9, !dbg !1850
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)) #9, !dbg !1851
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #9, !dbg !1852
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_table, i32 0) #9, !dbg !1857
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !1858
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #9, !dbg !1859
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_string, i32 0) #9, !dbg !1864
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0)) #9, !dbg !1865
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #9, !dbg !1866
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_math, i32 0) #9, !dbg !1871
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #9, !dbg !1872
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #9, !dbg !1873
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_debug, i32 0) #9, !dbg !1878
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #9, !dbg !1879
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #9, !dbg !1880
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_cjson, i32 0) #9, !dbg !1885
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0)) #9, !dbg !1886
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #9, !dbg !1887
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_struct, i32 0) #9, !dbg !1892
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0)) #9, !dbg !1893
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #9, !dbg !1894
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_cmsgpack, i32 0) #9, !dbg !1899
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0)) #9, !dbg !1900
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #9, !dbg !1901
  tail call void @lua_pushcclosure(%struct.lua_State* %0, i32 (%struct.lua_State*)* nonnull @luaopen_bit, i32 0) #9, !dbg !1906
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0)) #9, !dbg !1907
  tail call void @lua_call(%struct.lua_State* %0, i32 1, i32 0) #9, !dbg !1908
  ret void, !dbg !1909
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
define dso_local void @luaRemoveUnsupportedFunctions(%struct.lua_State*) local_unnamed_addr #0 !dbg !1910 {
  tail call void @lua_pushnil(%struct.lua_State* %0) #9, !dbg !1914
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0)) #9, !dbg !1915
  tail call void @lua_pushnil(%struct.lua_State* %0) #9, !dbg !1916
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)) #9, !dbg !1917
  ret void, !dbg !1918
}

; Function Attrs: noredzone
declare dso_local void @lua_pushnil(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_setfield(%struct.lua_State*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scriptingEnableGlobalsProtection(%struct.lua_State*) local_unnamed_addr #0 !dbg !1919 {
  %2 = alloca [32 x i8*], align 16
  %3 = bitcast [32 x i8*]* %2 to i8*, !dbg !1927
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %3) #8, !dbg !1927
  %4 = tail call i8* @sdsempty() #9, !dbg !1929
  %5 = bitcast [32 x i8*]* %2 to <2 x i8*>*, !dbg !1932
  store <2 x i8*> <i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0)>, <2 x i8*>* %5, align 16, !dbg !1932, !tbaa !992
  %6 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 2, !dbg !1933
  %7 = bitcast i8** %6 to <2 x i8*>*, !dbg !1934
  store <2 x i8*> <i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.50, i64 0, i64 0)>, <2 x i8*>* %7, align 16, !dbg !1934, !tbaa !992
  %8 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 4, !dbg !1935
  %9 = bitcast i8** %8 to <2 x i8*>*, !dbg !1936
  store <2 x i8*> <i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.52, i64 0, i64 0)>, <2 x i8*>* %9, align 16, !dbg !1936, !tbaa !992
  %10 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 6, !dbg !1937
  %11 = bitcast i8** %10 to <2 x i8*>*, !dbg !1938
  store <2 x i8*> <i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.54, i64 0, i64 0)>, <2 x i8*>* %11, align 16, !dbg !1938, !tbaa !992
  %12 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 8, !dbg !1939
  %13 = bitcast i8** %12 to <2 x i8*>*, !dbg !1940
  store <2 x i8*> <i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0)>, <2 x i8*>* %13, align 16, !dbg !1940, !tbaa !992
  %14 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 10, !dbg !1941
  %15 = bitcast i8** %14 to <2 x i8*>*, !dbg !1942
  store <2 x i8*> <i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0)>, <2 x i8*>* %15, align 16, !dbg !1942, !tbaa !992
  %16 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 12, !dbg !1943
  %17 = bitcast i8** %16 to <2 x i8*>*, !dbg !1944
  store <2 x i8*> <i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.60, i64 0, i64 0)>, <2 x i8*>* %17, align 16, !dbg !1944, !tbaa !992
  %18 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 14, !dbg !1945
  %19 = bitcast i8** %18 to <2 x i8*>*, !dbg !1946
  store <2 x i8*> <i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0)>, <2 x i8*>* %19, align 16, !dbg !1946, !tbaa !992
  %20 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 16, !dbg !1947
  %21 = bitcast i8** %20 to <2 x i8*>*, !dbg !1948
  store <2 x i8*> <i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0)>, <2 x i8*>* %21, align 16, !dbg !1948, !tbaa !992
  %22 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 18, !dbg !1949
  %23 = bitcast i8** %22 to <2 x i8*>*, !dbg !1950
  store <2 x i8*> <i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i64 0, i64 0), i8* null>, <2 x i8*>* %23, align 16, !dbg !1950, !tbaa !992
  br label %24, !dbg !1951

; <label>:24:                                     ; preds = %1, %24
  %25 = phi i64 [ 0, %1 ], [ %30, %24 ]
  %26 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), %1 ], [ %32, %24 ]
  %27 = phi i8* [ %4, %1 ], [ %29, %24 ]
  %28 = tail call i64 @strlen(i8* nonnull %26) #9, !dbg !1951
  %29 = tail call i8* @sdscatlen(i8* %27, i8* nonnull %26, i64 %28) #9, !dbg !1954
  %30 = add nuw i64 %25, 1, !dbg !1955
  %31 = getelementptr inbounds [32 x i8*], [32 x i8*]* %2, i64 0, i64 %30, !dbg !1956
  %32 = load i8*, i8** %31, align 8, !dbg !1956, !tbaa !992
  %33 = icmp eq i8* %32, null, !dbg !1957
  br i1 %33, label %34, label %24, !dbg !1958, !llvm.loop !1959

; <label>:34:                                     ; preds = %24
  %35 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !1963
  %36 = load i8, i8* %35, align 1, !dbg !1963, !tbaa !485
  %37 = trunc i8 %36 to i3, !dbg !1965
  switch i3 %37, label %59 [
    i3 0, label %38
    i3 1, label %41
    i3 2, label %45
    i3 3, label %50
    i3 -4, label %55
  ], !dbg !1965

; <label>:38:                                     ; preds = %34
  %39 = lshr i8 %36, 3, !dbg !1966
  %40 = zext i8 %39 to i64, !dbg !1966
  br label %59, !dbg !1967

; <label>:41:                                     ; preds = %34
  %42 = getelementptr inbounds i8, i8* %29, i64 -3, !dbg !1968
  %43 = load i8, i8* %42, align 1, !dbg !1969, !tbaa !485
  %44 = zext i8 %43 to i64, !dbg !1968
  br label %59, !dbg !1970

; <label>:45:                                     ; preds = %34
  %46 = getelementptr inbounds i8, i8* %29, i64 -5, !dbg !1971
  %47 = bitcast i8* %46 to i16*, !dbg !1972
  %48 = load i16, i16* %47, align 1, !dbg !1972, !tbaa !1071
  %49 = zext i16 %48 to i64, !dbg !1971
  br label %59, !dbg !1973

; <label>:50:                                     ; preds = %34
  %51 = getelementptr inbounds i8, i8* %29, i64 -9, !dbg !1974
  %52 = bitcast i8* %51 to i32*, !dbg !1975
  %53 = load i32, i32* %52, align 1, !dbg !1975, !tbaa !969
  %54 = zext i32 %53 to i64, !dbg !1974
  br label %59, !dbg !1976

; <label>:55:                                     ; preds = %34
  %56 = getelementptr inbounds i8, i8* %29, i64 -17, !dbg !1977
  %57 = bitcast i8* %56 to i64*, !dbg !1978
  %58 = load i64, i64* %57, align 1, !dbg !1978, !tbaa !1014
  br label %59, !dbg !1979

; <label>:59:                                     ; preds = %34, %38, %41, %45, %50, %55
  %60 = phi i64 [ %58, %55 ], [ %54, %50 ], [ %49, %45 ], [ %44, %41 ], [ %40, %38 ], [ 0, %34 ], !dbg !1980
  %61 = tail call i32 @luaL_loadbuffer(%struct.lua_State* %0, i8* nonnull %29, i64 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i64 0, i64 0)) #9, !dbg !1981
  %62 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 0, i32 0, i32 0) #9, !dbg !1982
  tail call void @sdsfree(i8* nonnull %29) #9, !dbg !1983
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %3) #8, !dbg !1984
  ret void, !dbg !1984
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @luaL_loadbuffer(%struct.lua_State*, i8*, i64, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scriptingInit(i32) local_unnamed_addr #0 !dbg !1985 {
  %2 = tail call %struct.lua_State* @luaL_newstate() #9, !dbg !1994
  %3 = icmp eq i32 %0, 0, !dbg !1996
  br i1 %3, label %9, label %4, !dbg !1998

; <label>:4:                                      ; preds = %1
  store <2 x %struct.client*> zeroinitializer, <2 x %struct.client*>* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 271) to <2 x %struct.client*>*), align 8, !dbg !1999, !tbaa !992
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !2001, !tbaa !2002
  store i32 -1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !2003, !tbaa !2008
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !2009, !tbaa !758
  %5 = tail call %struct.list* @listCreate() #9, !dbg !2010
  store %struct.list* %5, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !2011, !tbaa !778
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 3, !dbg !2012
  store void (i8*)* @sdsfree, void (i8*)** %6, align 8, !dbg !2012, !tbaa !2013
  %7 = tail call %struct.list* @listCreate() #9, !dbg !2014
  store %struct.list* %7, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !2015, !tbaa !2016
  store i8** null, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !2017, !tbaa !2018
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !2019, !tbaa !2020
  %8 = tail call i8* @sdsempty() #9, !dbg !2021
  store i8* %8, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !2022, !tbaa !2023
  br label %9, !dbg !2024

; <label>:9:                                      ; preds = %1, %4
  tail call void @luaLoadLibraries(%struct.lua_State* %2) #10, !dbg !2025
  tail call void @lua_pushnil(%struct.lua_State* %2) #9, !dbg !2028
  tail call void @lua_setfield(%struct.lua_State* %2, i32 -10002, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0)) #9, !dbg !2029
  tail call void @lua_pushnil(%struct.lua_State* %2) #9, !dbg !2030
  tail call void @lua_setfield(%struct.lua_State* %2, i32 -10002, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0)) #9, !dbg !2031
  %10 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @shaScriptObjectDictType, i8* null) #9, !dbg !2032
  store %struct.dict* %10, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !2033, !tbaa !2034
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !2035, !tbaa !2036
  tail call void @lua_createtable(%struct.lua_State* %2, i32 0, i32 0) #9, !dbg !2037
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0)) #9, !dbg !2038
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisCallCommand, i32 0) #9, !dbg !2039
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2040
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0)) #9, !dbg !2041
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisPCallCommand, i32 0) #9, !dbg !2042
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2043
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.67, i64 0, i64 0)) #9, !dbg !2044
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaLogCommand, i32 0) #9, !dbg !2045
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2046
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i64 0, i64 0)) #9, !dbg !2047
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 0.000000e+00) #9, !dbg !2048
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2049
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0)) #9, !dbg !2050
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 1.000000e+00) #9, !dbg !2051
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2052
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0)) #9, !dbg !2053
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 2.000000e+00) #9, !dbg !2054
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2055
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0)) #9, !dbg !2056
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 3.000000e+00) #9, !dbg !2057
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2058
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i64 0, i64 0)) #9, !dbg !2059
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisSha1hexCommand, i32 0) #9, !dbg !2060
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2061
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0)) #9, !dbg !2062
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisErrorReplyCommand, i32 0) #9, !dbg !2063
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2064
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i64 0, i64 0)) #9, !dbg !2065
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisStatusReplyCommand, i32 0) #9, !dbg !2066
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2067
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i64 0, i64 0)) #9, !dbg !2068
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisReplicateCommandsCommand, i32 0) #9, !dbg !2069
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2070
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.76, i64 0, i64 0)) #9, !dbg !2071
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisSetReplCommand, i32 0) #9, !dbg !2072
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2073
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i64 0, i64 0)) #9, !dbg !2074
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 0.000000e+00) #9, !dbg !2075
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2076
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i64 0, i64 0)) #9, !dbg !2077
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 1.000000e+00) #9, !dbg !2078
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2079
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i64 0, i64 0)) #9, !dbg !2080
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 2.000000e+00) #9, !dbg !2081
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2082
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i64 0, i64 0)) #9, !dbg !2083
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 2.000000e+00) #9, !dbg !2084
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2085
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i64 0, i64 0)) #9, !dbg !2086
  tail call void @lua_pushnumber(%struct.lua_State* %2, double 3.000000e+00) #9, !dbg !2087
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2088
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i64 0, i64 0)) #9, !dbg !2089
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisBreakpointCommand, i32 0) #9, !dbg !2090
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2091
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #9, !dbg !2092
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @luaRedisDebugCommand, i32 0) #9, !dbg !2093
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2094
  tail call void @lua_setfield(%struct.lua_State* %2, i32 -10002, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0)) #9, !dbg !2095
  tail call void @lua_getfield(%struct.lua_State* %2, i32 -10002, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #9, !dbg !2096
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.84, i64 0, i64 0)) #9, !dbg !2097
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @redis_math_random, i32 0) #9, !dbg !2098
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2099
  tail call void @lua_pushstring(%struct.lua_State* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i64 0, i64 0)) #9, !dbg !2100
  tail call void @lua_pushcclosure(%struct.lua_State* %2, i32 (%struct.lua_State*)* nonnull @redis_math_randomseed, i32 0) #9, !dbg !2101
  tail call void @lua_settable(%struct.lua_State* %2, i32 -3) #9, !dbg !2102
  tail call void @lua_setfield(%struct.lua_State* %2, i32 -10002, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0)) #9, !dbg !2103
  %11 = tail call i64 @strlen(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.86, i64 0, i64 0)) #9, !dbg !2104
  %12 = tail call i32 @luaL_loadbuffer(%struct.lua_State* %2, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.86, i64 0, i64 0), i64 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i64 0, i64 0)) #9, !dbg !2105
  %13 = tail call i32 @lua_pcall(%struct.lua_State* %2, i32 0, i32 0, i32 0) #9, !dbg !2106
  %14 = tail call i64 @strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.88, i64 0, i64 0)) #9, !dbg !2107
  %15 = tail call i32 @luaL_loadbuffer(%struct.lua_State* %2, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.88, i64 0, i64 0), i64 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.89, i64 0, i64 0)) #9, !dbg !2108
  %16 = tail call i32 @lua_pcall(%struct.lua_State* %2, i32 0, i32 0, i32 0) #9, !dbg !2109
  %17 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 271), align 8, !dbg !2110, !tbaa !940
  %18 = icmp eq %struct.client* %17, null, !dbg !2112
  br i1 %18, label %19, label %24, !dbg !2113

; <label>:19:                                     ; preds = %9
  %20 = tail call %struct.client* @createClient(i32 -1) #9, !dbg !2114
  store %struct.client* %20, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 271), align 8, !dbg !2116, !tbaa !940
  %21 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 21, !dbg !2117
  %22 = load i32, i32* %21, align 8, !dbg !2118, !tbaa !955
  %23 = or i32 %22, 256, !dbg !2118
  store i32 %23, i32* %21, align 8, !dbg !2118, !tbaa !955
  br label %24, !dbg !2119

; <label>:24:                                     ; preds = %19, %9
  tail call void @scriptingEnableGlobalsProtection(%struct.lua_State* %2) #10, !dbg !2120
  store %struct.lua_State* %2, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !2121, !tbaa !2122
  ret void, !dbg !2123
}

; Function Attrs: noredzone
declare dso_local %struct.lua_State* @luaL_newstate() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbInit() local_unnamed_addr #0 !dbg !2004 {
  store i32 -1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !2124, !tbaa !2008
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !2125, !tbaa !758
  %1 = tail call %struct.list* @listCreate() #9, !dbg !2126
  store %struct.list* %1, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !2127, !tbaa !778
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 3, !dbg !2128
  store void (i8*)* @sdsfree, void (i8*)** %2, align 8, !dbg !2128, !tbaa !2013
  %3 = tail call %struct.list* @listCreate() #9, !dbg !2129
  store %struct.list* %3, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !2130, !tbaa !2016
  store i8** null, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !2131, !tbaa !2018
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !2132, !tbaa !2020
  %4 = tail call i8* @sdsempty() #9, !dbg !2133
  store i8* %4, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !2134, !tbaa !2023
  ret void, !dbg !2135
}

; Function Attrs: noredzone
declare dso_local %struct.dict* @dictCreate(%struct.dictType*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @redis_math_random(%struct.lua_State*) #0 !dbg !2136 {
  %2 = tail call i32 (...) @redisLrand48() #9, !dbg !2147
  %3 = srem i32 %2, 2147483647, !dbg !2148
  %4 = sitofp i32 %3 to double, !dbg !2149
  %5 = fdiv double %4, 0x41DFFFFFFFC00000, !dbg !2150
  %6 = tail call i32 @lua_gettop(%struct.lua_State* %0) #9, !dbg !2152
  switch i32 %6, label %35 [
    i32 0, label %7
    i32 1, label %8
    i32 2, label %19
  ], !dbg !2153

; <label>:7:                                      ; preds = %1
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %5) #9, !dbg !2154
  br label %37, !dbg !2156

; <label>:8:                                      ; preds = %1
  %9 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #9, !dbg !2157
  %10 = trunc i64 %9 to i32, !dbg !2157
  %11 = icmp sgt i32 %10, 0, !dbg !2159
  br i1 %11, label %14, label %12, !dbg !2159

; <label>:12:                                     ; preds = %8
  %13 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i64 0, i64 0)) #9, !dbg !2159
  br label %14, !dbg !2159

; <label>:14:                                     ; preds = %12, %8
  %15 = sitofp i32 %10 to double, !dbg !2160
  %16 = fmul double %5, %15, !dbg !2161
  %17 = tail call double @floor(double %16) #9, !dbg !2162
  %18 = fadd double %17, 1.000000e+00, !dbg !2163
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %18) #9, !dbg !2164
  br label %37

; <label>:19:                                     ; preds = %1
  %20 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #9, !dbg !2165
  %21 = trunc i64 %20 to i32, !dbg !2165
  %22 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 2) #9, !dbg !2167
  %23 = trunc i64 %22 to i32, !dbg !2167
  %24 = icmp slt i32 %23, %21, !dbg !2169
  br i1 %24, label %25, label %27, !dbg !2169

; <label>:25:                                     ; preds = %19
  %26 = tail call i32 @luaL_argerror(%struct.lua_State* %0, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i64 0, i64 0)) #9, !dbg !2169
  br label %27, !dbg !2169

; <label>:27:                                     ; preds = %19, %25
  %28 = sub i32 1, %21, !dbg !2170
  %29 = add i32 %28, %23, !dbg !2171
  %30 = sitofp i32 %29 to double, !dbg !2172
  %31 = fmul double %5, %30, !dbg !2173
  %32 = tail call double @floor(double %31) #9, !dbg !2174
  %33 = sitofp i32 %21 to double, !dbg !2175
  %34 = fadd double %32, %33, !dbg !2176
  tail call void @lua_pushnumber(%struct.lua_State* %0, double %34) #9, !dbg !2177
  br label %37

; <label>:35:                                     ; preds = %1
  %36 = tail call i32 (%struct.lua_State*, i8*, ...) @luaL_error(%struct.lua_State* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0)) #9, !dbg !2178
  br label %37, !dbg !2179

; <label>:37:                                     ; preds = %7, %14, %27, %35
  %38 = phi i32 [ %36, %35 ], [ 1, %27 ], [ 1, %14 ], [ 1, %7 ], !dbg !2180
  ret i32 %38, !dbg !2181
}

; Function Attrs: noredzone nounwind
define dso_local i32 @redis_math_randomseed(%struct.lua_State*) #0 !dbg !2182 {
  %2 = tail call i64 @luaL_checkinteger(%struct.lua_State* %0, i32 1) #9, !dbg !2186
  %3 = trunc i64 %2 to i32, !dbg !2186
  tail call void @redisSrand48(i32 %3) #9, !dbg !2187
  ret i32 0, !dbg !2188
}

; Function Attrs: noredzone
declare dso_local %struct.client* @createClient(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scriptingRelease() local_unnamed_addr #0 !dbg !2189 {
  %1 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !2190, !tbaa !2034
  tail call void @dictRelease(%struct.dict* %1) #9, !dbg !2191
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !2192, !tbaa !2036
  %2 = load %struct.lua_State*, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !2193, !tbaa !2122
  tail call void @lua_close(%struct.lua_State* %2) #9, !dbg !2194
  ret void, !dbg !2195
}

; Function Attrs: noredzone
declare dso_local void @dictRelease(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @lua_close(%struct.lua_State*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @scriptingReset() local_unnamed_addr #0 !dbg !2196 {
  %1 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !2197, !tbaa !2034
  tail call void @dictRelease(%struct.dict* %1) #9, !dbg !2199
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !2200, !tbaa !2036
  %2 = load %struct.lua_State*, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !2201, !tbaa !2122
  tail call void @lua_close(%struct.lua_State* %2) #9, !dbg !2202
  tail call void @scriptingInit(i32 0) #10, !dbg !2203
  ret void, !dbg !2204
}

; Function Attrs: noredzone nounwind
define dso_local void @luaSetGlobalArray(%struct.lua_State*, i8*, %struct.redisObject** nocapture readonly, i32) local_unnamed_addr #0 !dbg !2205 {
  tail call void @lua_createtable(%struct.lua_State* %0, i32 0, i32 0) #9, !dbg !2218
  %5 = icmp sgt i32 %3, 0, !dbg !2220
  br i1 %5, label %6, label %43, !dbg !2223

; <label>:6:                                      ; preds = %4
  %7 = zext i32 %3 to i64
  br label %8, !dbg !2224

; <label>:8:                                      ; preds = %38, %6
  %9 = phi i64 [ 0, %6 ], [ %40, %38 ]
  %10 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %9, !dbg !2224
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !2224, !tbaa !992
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %11, i64 0, i32 2, !dbg !2226
  %13 = load i8*, i8** %12, align 8, !dbg !2226, !tbaa !1032
  %14 = getelementptr inbounds i8, i8* %13, i64 -1, !dbg !2229
  %15 = load i8, i8* %14, align 1, !dbg !2229, !tbaa !485
  %16 = trunc i8 %15 to i3, !dbg !2231
  switch i3 %16, label %38 [
    i3 0, label %17
    i3 1, label %20
    i3 2, label %24
    i3 3, label %29
    i3 -4, label %34
  ], !dbg !2231

; <label>:17:                                     ; preds = %8
  %18 = lshr i8 %15, 3, !dbg !2232
  %19 = zext i8 %18 to i64, !dbg !2232
  br label %38, !dbg !2233

; <label>:20:                                     ; preds = %8
  %21 = getelementptr inbounds i8, i8* %13, i64 -3, !dbg !2234
  %22 = load i8, i8* %21, align 1, !dbg !2235, !tbaa !485
  %23 = zext i8 %22 to i64, !dbg !2234
  br label %38, !dbg !2236

; <label>:24:                                     ; preds = %8
  %25 = getelementptr inbounds i8, i8* %13, i64 -5, !dbg !2237
  %26 = bitcast i8* %25 to i16*, !dbg !2238
  %27 = load i16, i16* %26, align 1, !dbg !2238, !tbaa !1071
  %28 = zext i16 %27 to i64, !dbg !2237
  br label %38, !dbg !2239

; <label>:29:                                     ; preds = %8
  %30 = getelementptr inbounds i8, i8* %13, i64 -9, !dbg !2240
  %31 = bitcast i8* %30 to i32*, !dbg !2241
  %32 = load i32, i32* %31, align 1, !dbg !2241, !tbaa !969
  %33 = zext i32 %32 to i64, !dbg !2240
  br label %38, !dbg !2242

; <label>:34:                                     ; preds = %8
  %35 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !2243
  %36 = bitcast i8* %35 to i64*, !dbg !2244
  %37 = load i64, i64* %36, align 1, !dbg !2244, !tbaa !1014
  br label %38, !dbg !2245

; <label>:38:                                     ; preds = %8, %17, %20, %24, %29, %34
  %39 = phi i64 [ %37, %34 ], [ %33, %29 ], [ %28, %24 ], [ %23, %20 ], [ %19, %17 ], [ 0, %8 ], !dbg !2246
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %13, i64 %39) #9, !dbg !2247
  %40 = add nuw nsw i64 %9, 1, !dbg !2248
  %41 = trunc i64 %40 to i32, !dbg !2249
  tail call void @lua_rawseti(%struct.lua_State* %0, i32 -2, i32 %41) #9, !dbg !2249
  %42 = icmp eq i64 %40, %7, !dbg !2220
  br i1 %42, label %43, label %8, !dbg !2223, !llvm.loop !2250

; <label>:43:                                     ; preds = %38, %4
  tail call void @lua_setfield(%struct.lua_State* %0, i32 -10002, i8* %1) #9, !dbg !2252
  ret void, !dbg !2253
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
define dso_local i8* @luaCreateFunction(%struct.client*, %struct.lua_State*, %struct.redisObject*) local_unnamed_addr #0 !dbg !2254 {
  %4 = alloca %struct.SHA1_CTX, align 4
  %5 = alloca [20 x i8], align 16
  %6 = alloca [43 x i8], align 16
  %7 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 0, !dbg !2271
  call void @llvm.lifetime.start.p0i8(i64 43, i8* nonnull %7) #8, !dbg !2271
  store i8 102, i8* %7, align 16, !dbg !2273, !tbaa !485
  %8 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 1, !dbg !2274
  store i8 95, i8* %8, align 1, !dbg !2275, !tbaa !485
  %9 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 2, !dbg !2276
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %2, i64 0, i32 2, !dbg !2277
  %11 = load i8*, i8** %10, align 8, !dbg !2277, !tbaa !1032
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !2280
  %13 = load i8, i8* %12, align 1, !dbg !2280, !tbaa !485
  %14 = trunc i8 %13 to i3, !dbg !2282
  switch i3 %14, label %36 [
    i3 0, label %15
    i3 1, label %18
    i3 2, label %22
    i3 3, label %27
    i3 -4, label %32
  ], !dbg !2282

; <label>:15:                                     ; preds = %3
  %16 = lshr i8 %13, 3, !dbg !2283
  %17 = zext i8 %16 to i64, !dbg !2283
  br label %36, !dbg !2284

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !2285
  %20 = load i8, i8* %19, align 1, !dbg !2286, !tbaa !485
  %21 = zext i8 %20 to i64, !dbg !2285
  br label %36, !dbg !2287

; <label>:22:                                     ; preds = %3
  %23 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !2288
  %24 = bitcast i8* %23 to i16*, !dbg !2289
  %25 = load i16, i16* %24, align 1, !dbg !2289, !tbaa !1071
  %26 = zext i16 %25 to i64, !dbg !2288
  br label %36, !dbg !2290

; <label>:27:                                     ; preds = %3
  %28 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !2291
  %29 = bitcast i8* %28 to i32*, !dbg !2292
  %30 = load i32, i32* %29, align 1, !dbg !2292, !tbaa !969
  %31 = zext i32 %30 to i64, !dbg !2291
  br label %36, !dbg !2293

; <label>:32:                                     ; preds = %3
  %33 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !2294
  %34 = bitcast i8* %33 to i64*, !dbg !2295
  %35 = load i64, i64* %34, align 1, !dbg !2295, !tbaa !1014
  br label %36, !dbg !2296

; <label>:36:                                     ; preds = %3, %15, %18, %22, %27, %32
  %37 = phi i64 [ %35, %32 ], [ %31, %27 ], [ %26, %22 ], [ %21, %18 ], [ %17, %15 ], [ 0, %3 ], !dbg !2297
  %38 = bitcast %struct.SHA1_CTX* %4 to i8*, !dbg !2301
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %38) #8, !dbg !2301
  %39 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0, !dbg !2302
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %39) #8, !dbg !2302
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %4) #9, !dbg !2304
  %40 = trunc i64 %37 to i32, !dbg !2305
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %4, i8* %11, i32 %40) #9, !dbg !2306
  call void @SHA1Final(i8* nonnull %39, %struct.SHA1_CTX* nonnull %4) #9, !dbg !2307
  br label %41, !dbg !2309

; <label>:41:                                     ; preds = %41, %36
  %42 = phi i64 [ 0, %36 ], [ %57, %41 ]
  %43 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %42, !dbg !2310
  %44 = load i8, i8* %43, align 1, !dbg !2310, !tbaa !485
  %45 = lshr i8 %44, 4, !dbg !2311
  %46 = zext i8 %45 to i64, !dbg !2312
  %47 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %46, !dbg !2312
  %48 = load i8, i8* %47, align 1, !dbg !2312, !tbaa !485
  %49 = shl nuw nsw i64 %42, 1, !dbg !2313
  %50 = getelementptr inbounds i8, i8* %9, i64 %49, !dbg !2314
  store i8 %48, i8* %50, align 2, !dbg !2315, !tbaa !485
  %51 = and i8 %44, 15, !dbg !2316
  %52 = zext i8 %51 to i64, !dbg !2317
  %53 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %52, !dbg !2317
  %54 = load i8, i8* %53, align 1, !dbg !2317, !tbaa !485
  %55 = or i64 %49, 1, !dbg !2318
  %56 = getelementptr inbounds i8, i8* %9, i64 %55, !dbg !2319
  store i8 %54, i8* %56, align 1, !dbg !2320, !tbaa !485
  %57 = add nuw nsw i64 %42, 1, !dbg !2321
  %58 = icmp eq i64 %57, 20, !dbg !2322
  br i1 %58, label %59, label %41, !dbg !2309, !llvm.loop !500

; <label>:59:                                     ; preds = %41
  %60 = getelementptr inbounds [43 x i8], [43 x i8]* %6, i64 0, i64 42, !dbg !2323
  store i8 0, i8* %60, align 2, !dbg !2324, !tbaa !485
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %39) #8, !dbg !2325
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %38) #8, !dbg !2325
  %61 = call i8* @sdsnewlen(i8* nonnull %9, i64 40) #9, !dbg !2326
  %62 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !2328, !tbaa !2034
  %63 = call %struct.dictEntry* @dictFind(%struct.dict* %62, i8* %61) #9, !dbg !2330
  %64 = icmp eq %struct.dictEntry* %63, null, !dbg !2332
  br i1 %64, label %68, label %65, !dbg !2333

; <label>:65:                                     ; preds = %59
  call void @sdsfree(i8* %61) #9, !dbg !2334
  %66 = getelementptr inbounds %struct.dictEntry, %struct.dictEntry* %63, i64 0, i32 0, !dbg !2336
  %67 = load i8*, i8** %66, align 8, !dbg !2336, !tbaa !2337
  br label %158, !dbg !2339

; <label>:68:                                     ; preds = %59
  %69 = call i8* @sdsempty() #9, !dbg !2340
  %70 = call i8* @sdscat(i8* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i64 0, i64 0)) #9, !dbg !2342
  %71 = call i8* @sdscatlen(i8* %70, i8* nonnull %7, i64 42) #9, !dbg !2343
  %72 = call i8* @sdscatlen(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0), i64 3) #9, !dbg !2344
  %73 = load i8*, i8** %10, align 8, !dbg !2345, !tbaa !1032
  %74 = getelementptr inbounds i8, i8* %73, i64 -1, !dbg !2348
  %75 = load i8, i8* %74, align 1, !dbg !2348, !tbaa !485
  %76 = trunc i8 %75 to i3, !dbg !2350
  switch i3 %76, label %98 [
    i3 0, label %77
    i3 1, label %80
    i3 2, label %84
    i3 3, label %89
    i3 -4, label %94
  ], !dbg !2350

; <label>:77:                                     ; preds = %68
  %78 = lshr i8 %75, 3, !dbg !2351
  %79 = zext i8 %78 to i64, !dbg !2351
  br label %98, !dbg !2352

; <label>:80:                                     ; preds = %68
  %81 = getelementptr inbounds i8, i8* %73, i64 -3, !dbg !2353
  %82 = load i8, i8* %81, align 1, !dbg !2354, !tbaa !485
  %83 = zext i8 %82 to i64, !dbg !2353
  br label %98, !dbg !2355

; <label>:84:                                     ; preds = %68
  %85 = getelementptr inbounds i8, i8* %73, i64 -5, !dbg !2356
  %86 = bitcast i8* %85 to i16*, !dbg !2357
  %87 = load i16, i16* %86, align 1, !dbg !2357, !tbaa !1071
  %88 = zext i16 %87 to i64, !dbg !2356
  br label %98, !dbg !2358

; <label>:89:                                     ; preds = %68
  %90 = getelementptr inbounds i8, i8* %73, i64 -9, !dbg !2359
  %91 = bitcast i8* %90 to i32*, !dbg !2360
  %92 = load i32, i32* %91, align 1, !dbg !2360, !tbaa !969
  %93 = zext i32 %92 to i64, !dbg !2359
  br label %98, !dbg !2361

; <label>:94:                                     ; preds = %68
  %95 = getelementptr inbounds i8, i8* %73, i64 -17, !dbg !2362
  %96 = bitcast i8* %95 to i64*, !dbg !2363
  %97 = load i64, i64* %96, align 1, !dbg !2363, !tbaa !1014
  br label %98, !dbg !2364

; <label>:98:                                     ; preds = %68, %77, %80, %84, %89, %94
  %99 = phi i64 [ %97, %94 ], [ %93, %89 ], [ %88, %84 ], [ %83, %80 ], [ %79, %77 ], [ 0, %68 ], !dbg !2365
  %100 = call i8* @sdscatlen(i8* %72, i8* %73, i64 %99) #9, !dbg !2366
  %101 = call i8* @sdscatlen(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i64 0, i64 0), i64 4) #9, !dbg !2367
  %102 = getelementptr inbounds i8, i8* %101, i64 -1, !dbg !2371
  %103 = load i8, i8* %102, align 1, !dbg !2371, !tbaa !485
  %104 = trunc i8 %103 to i3, !dbg !2373
  switch i3 %104, label %126 [
    i3 0, label %105
    i3 1, label %108
    i3 2, label %112
    i3 3, label %117
    i3 -4, label %122
  ], !dbg !2373

; <label>:105:                                    ; preds = %98
  %106 = lshr i8 %103, 3, !dbg !2374
  %107 = zext i8 %106 to i64, !dbg !2374
  br label %126, !dbg !2375

; <label>:108:                                    ; preds = %98
  %109 = getelementptr inbounds i8, i8* %101, i64 -3, !dbg !2376
  %110 = load i8, i8* %109, align 1, !dbg !2377, !tbaa !485
  %111 = zext i8 %110 to i64, !dbg !2376
  br label %126, !dbg !2378

; <label>:112:                                    ; preds = %98
  %113 = getelementptr inbounds i8, i8* %101, i64 -5, !dbg !2379
  %114 = bitcast i8* %113 to i16*, !dbg !2380
  %115 = load i16, i16* %114, align 1, !dbg !2380, !tbaa !1071
  %116 = zext i16 %115 to i64, !dbg !2379
  br label %126, !dbg !2381

; <label>:117:                                    ; preds = %98
  %118 = getelementptr inbounds i8, i8* %101, i64 -9, !dbg !2382
  %119 = bitcast i8* %118 to i32*, !dbg !2383
  %120 = load i32, i32* %119, align 1, !dbg !2383, !tbaa !969
  %121 = zext i32 %120 to i64, !dbg !2382
  br label %126, !dbg !2384

; <label>:122:                                    ; preds = %98
  %123 = getelementptr inbounds i8, i8* %101, i64 -17, !dbg !2385
  %124 = bitcast i8* %123 to i64*, !dbg !2386
  %125 = load i64, i64* %124, align 1, !dbg !2386, !tbaa !1014
  br label %126, !dbg !2387

; <label>:126:                                    ; preds = %98, %105, %108, %112, %117, %122
  %127 = phi i64 [ %125, %122 ], [ %121, %117 ], [ %116, %112 ], [ %111, %108 ], [ %107, %105 ], [ 0, %98 ], !dbg !2388
  %128 = call i32 @luaL_loadbuffer(%struct.lua_State* %1, i8* %101, i64 %127, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.94, i64 0, i64 0)) #9, !dbg !2389
  %129 = icmp eq i32 %128, 0, !dbg !2389
  br i1 %129, label %135, label %130, !dbg !2390

; <label>:130:                                    ; preds = %126
  %131 = icmp eq %struct.client* %0, null, !dbg !2391
  br i1 %131, label %134, label %132, !dbg !2394

; <label>:132:                                    ; preds = %130
  %133 = call i8* @lua_tolstring(%struct.lua_State* %1, i32 -1, i64* null) #9, !dbg !2395
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.95, i64 0, i64 0), i8* %133) #9, !dbg !2397
  br label %134, !dbg !2398

; <label>:134:                                    ; preds = %130, %132
  call void @lua_settop(%struct.lua_State* %1, i32 -2) #9, !dbg !2399
  call void @sdsfree(i8* %61) #9, !dbg !2400
  call void @sdsfree(i8* %101) #9, !dbg !2401
  br label %158, !dbg !2402

; <label>:135:                                    ; preds = %126
  call void @sdsfree(i8* %101) #9, !dbg !2403
  %136 = call i32 @lua_pcall(%struct.lua_State* %1, i32 0, i32 0, i32 0) #9, !dbg !2404
  %137 = icmp eq i32 %136, 0, !dbg !2404
  br i1 %137, label %143, label %138, !dbg !2406

; <label>:138:                                    ; preds = %135
  %139 = icmp eq %struct.client* %0, null, !dbg !2407
  br i1 %139, label %142, label %140, !dbg !2410

; <label>:140:                                    ; preds = %138
  %141 = call i8* @lua_tolstring(%struct.lua_State* %1, i32 -1, i64* null) #9, !dbg !2411
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.96, i64 0, i64 0), i8* %141) #9, !dbg !2413
  br label %142, !dbg !2414

; <label>:142:                                    ; preds = %138, %140
  call void @lua_settop(%struct.lua_State* %1, i32 -2) #9, !dbg !2415
  call void @sdsfree(i8* %61) #9, !dbg !2416
  br label %158, !dbg !2417

; <label>:143:                                    ; preds = %135
  %144 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !2418, !tbaa !2034
  %145 = bitcast %struct.redisObject* %2 to i8*, !dbg !2419
  %146 = call i32 @dictAdd(%struct.dict* %144, i8* %61, i8* %145) #9, !dbg !2420
  %147 = icmp eq i32 %146, 0, !dbg !2422
  br i1 %147, label %152, label %148, !dbg !2422

; <label>:148:                                    ; preds = %143
  %149 = icmp eq %struct.client* %0, null, !dbg !2422
  %150 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 271), align 8, !dbg !2422
  %151 = select i1 %149, %struct.client* %150, %struct.client* %0, !dbg !2422
  call void @_serverAssertWithInfo(%struct.client* %151, %struct.redisObject* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.97, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.98, i64 0, i64 0), i32 1228) #9, !dbg !2422
  call void @_exit(i32 1) #11, !dbg !2422
  unreachable, !dbg !2422

; <label>:152:                                    ; preds = %143
  %153 = call i64 @sdsZmallocSize(i8* %61) #9, !dbg !2423
  %154 = call i64 @getStringObjectSdsUsedMemory(%struct.redisObject* nonnull %2) #9, !dbg !2424
  %155 = add i64 %154, %153, !dbg !2425
  %156 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !2426, !tbaa !2036
  %157 = add i64 %155, %156, !dbg !2426
  store i64 %157, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !2426, !tbaa !2036
  call void @incrRefCount(%struct.redisObject* nonnull %2) #9, !dbg !2427
  br label %158

; <label>:158:                                    ; preds = %134, %142, %152, %65
  %159 = phi i8* [ %67, %65 ], [ null, %134 ], [ null, %142 ], [ %61, %152 ], !dbg !2428
  call void @llvm.lifetime.end.p0i8(i64 43, i8* nonnull %7) #8, !dbg !2429
  ret i8* %159, !dbg !2429
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
define dso_local void @luaMaskCountHook(%struct.lua_State*, %struct.lua_Debug* nocapture readnone) #0 !dbg !2430 {
  %3 = tail call i64 @mstime() #9, !dbg !2440
  %4 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 276), align 8, !dbg !2441, !tbaa !2442
  %5 = sub nsw i64 %3, %4, !dbg !2443
  %6 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 275), align 8, !dbg !2445, !tbaa !2447
  %7 = icmp sge i64 %5, %6, !dbg !2448
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !2449
  %9 = icmp eq i32 %8, 0, !dbg !2450
  %10 = and i1 %7, %9, !dbg !2451
  br i1 %10, label %11, label %14, !dbg !2451

; <label>:11:                                     ; preds = %2
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.99, i64 0, i64 0), i64 %5) #9, !dbg !2452
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !2454, !tbaa !2002
  %12 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !2455, !tbaa !953
  tail call void @protectClient(%struct.client* %12) #9, !dbg !2456
  %13 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !2457, !tbaa !2002
  br label %14, !dbg !2459

; <label>:14:                                     ; preds = %11, %2
  %15 = phi i32 [ %13, %11 ], [ %8, %2 ], !dbg !2457
  %16 = icmp eq i32 %15, 0, !dbg !2460
  br i1 %16, label %19, label %17, !dbg !2461

; <label>:17:                                     ; preds = %14
  %18 = tail call i32 @processEventsWhileBlocked() #9, !dbg !2462
  br label %19, !dbg !2462

; <label>:19:                                     ; preds = %14, %17
  %20 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 283), align 8, !dbg !2463, !tbaa !2465
  %21 = icmp eq i32 %20, 0, !dbg !2466
  br i1 %21, label %24, label %22, !dbg !2467

; <label>:22:                                     ; preds = %19
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.100, i64 0, i64 0)) #9, !dbg !2468
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.101, i64 0, i64 0)) #9, !dbg !2470
  %23 = tail call i32 @lua_error(%struct.lua_State* %0) #9, !dbg !2471
  br label %24, !dbg !2472

; <label>:24:                                     ; preds = %19, %22
  ret void, !dbg !2473
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
  %8 = load %struct.lua_State*, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !2479, !tbaa !2122
  %9 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 0, !dbg !2481
  call void @llvm.lifetime.start.p0i8(i64 43, i8* nonnull %9) #8, !dbg !2481
  %10 = bitcast i64* %6 to i8*, !dbg !2483
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #8, !dbg !2483
  %11 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2484, !tbaa !2485
  tail call void @redisSrand48(i32 0) #9, !dbg !2488
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 278), align 4, !dbg !2489, !tbaa !1191
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 277), align 8, !dbg !2490, !tbaa !1264
  %12 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 284), align 4, !dbg !2491, !tbaa !2492
  store i32 %12, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !2493, !tbaa !1300
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 280), align 4, !dbg !2494, !tbaa !949
  store i32 3, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 281), align 8, !dbg !2495, !tbaa !1325
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2496
  %14 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2496, !tbaa !1114
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 2, !dbg !2498
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !2498, !tbaa !992
  %17 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %16, i64* nonnull %6, i8* null) #9, !dbg !2500
  %18 = icmp eq i32 %17, 0, !dbg !2501
  br i1 %18, label %19, label %275, !dbg !2502

; <label>:19:                                     ; preds = %2
  %20 = load i64, i64* %6, align 8, !dbg !2503, !tbaa !536
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2505
  %22 = load i32, i32* %21, align 8, !dbg !2505, !tbaa !1117
  %23 = add nsw i32 %22, -3, !dbg !2506
  %24 = sext i32 %23 to i64, !dbg !2507
  %25 = icmp sgt i64 %20, %24, !dbg !2508
  br i1 %25, label %26, label %27, !dbg !2509

; <label>:26:                                     ; preds = %19
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.102, i64 0, i64 0)) #9, !dbg !2510
  br label %275, !dbg !2512

; <label>:27:                                     ; preds = %19
  %28 = icmp slt i64 %20, 0, !dbg !2513
  br i1 %28, label %29, label %30, !dbg !2515

; <label>:29:                                     ; preds = %27
  call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.103, i64 0, i64 0)) #9, !dbg !2516
  br label %275, !dbg !2518

; <label>:30:                                     ; preds = %27
  store i8 102, i8* %9, align 16, !dbg !2519, !tbaa !485
  %31 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 1, !dbg !2520
  store i8 95, i8* %31, align 1, !dbg !2521, !tbaa !485
  %32 = icmp ne i32 %1, 0, !dbg !2522
  br i1 %32, label %89, label %33, !dbg !2523

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 2, !dbg !2524
  %35 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2525, !tbaa !1114
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 1, !dbg !2526
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !2526, !tbaa !992
  %38 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 2, !dbg !2527
  %39 = load i8*, i8** %38, align 8, !dbg !2527, !tbaa !1032
  %40 = getelementptr inbounds i8, i8* %39, i64 -1, !dbg !2530
  %41 = load i8, i8* %40, align 1, !dbg !2530, !tbaa !485
  %42 = trunc i8 %41 to i3, !dbg !2532
  switch i3 %42, label %64 [
    i3 0, label %43
    i3 1, label %46
    i3 2, label %50
    i3 3, label %55
    i3 -4, label %60
  ], !dbg !2532

; <label>:43:                                     ; preds = %33
  %44 = lshr i8 %41, 3, !dbg !2533
  %45 = zext i8 %44 to i64, !dbg !2533
  br label %64, !dbg !2534

; <label>:46:                                     ; preds = %33
  %47 = getelementptr inbounds i8, i8* %39, i64 -3, !dbg !2535
  %48 = load i8, i8* %47, align 1, !dbg !2536, !tbaa !485
  %49 = zext i8 %48 to i64, !dbg !2535
  br label %64, !dbg !2537

; <label>:50:                                     ; preds = %33
  %51 = getelementptr inbounds i8, i8* %39, i64 -5, !dbg !2538
  %52 = bitcast i8* %51 to i16*, !dbg !2539
  %53 = load i16, i16* %52, align 1, !dbg !2539, !tbaa !1071
  %54 = zext i16 %53 to i64, !dbg !2538
  br label %64, !dbg !2540

; <label>:55:                                     ; preds = %33
  %56 = getelementptr inbounds i8, i8* %39, i64 -9, !dbg !2541
  %57 = bitcast i8* %56 to i32*, !dbg !2542
  %58 = load i32, i32* %57, align 1, !dbg !2542, !tbaa !969
  %59 = zext i32 %58 to i64, !dbg !2541
  br label %64, !dbg !2543

; <label>:60:                                     ; preds = %33
  %61 = getelementptr inbounds i8, i8* %39, i64 -17, !dbg !2544
  %62 = bitcast i8* %61 to i64*, !dbg !2545
  %63 = load i64, i64* %62, align 1, !dbg !2545, !tbaa !1014
  br label %64, !dbg !2546

; <label>:64:                                     ; preds = %33, %43, %46, %50, %55, %60
  %65 = phi i64 [ %63, %60 ], [ %59, %55 ], [ %54, %50 ], [ %49, %46 ], [ %45, %43 ], [ 0, %33 ], !dbg !2547
  %66 = bitcast %struct.SHA1_CTX* %3 to i8*, !dbg !2551
  call void @llvm.lifetime.start.p0i8(i64 92, i8* nonnull %66) #8, !dbg !2551
  %67 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 0, !dbg !2552
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %67) #8, !dbg !2552
  call void @SHA1Init(%struct.SHA1_CTX* nonnull %3) #9, !dbg !2554
  %68 = trunc i64 %65 to i32, !dbg !2555
  call void @SHA1Update(%struct.SHA1_CTX* nonnull %3, i8* %39, i32 %68) #9, !dbg !2556
  call void @SHA1Final(i8* nonnull %67, %struct.SHA1_CTX* nonnull %3) #9, !dbg !2557
  br label %69, !dbg !2559

; <label>:69:                                     ; preds = %69, %64
  %70 = phi i64 [ 0, %64 ], [ %85, %69 ]
  %71 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i64 0, i64 %70, !dbg !2560
  %72 = load i8, i8* %71, align 1, !dbg !2560, !tbaa !485
  %73 = lshr i8 %72, 4, !dbg !2561
  %74 = zext i8 %73 to i64, !dbg !2562
  %75 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %74, !dbg !2562
  %76 = load i8, i8* %75, align 1, !dbg !2562, !tbaa !485
  %77 = shl nuw nsw i64 %70, 1, !dbg !2563
  %78 = getelementptr inbounds i8, i8* %34, i64 %77, !dbg !2564
  store i8 %76, i8* %78, align 2, !dbg !2565, !tbaa !485
  %79 = and i8 %72, 15, !dbg !2566
  %80 = zext i8 %79 to i64, !dbg !2567
  %81 = getelementptr inbounds [17 x i8], [17 x i8]* @.str, i64 0, i64 %80, !dbg !2567
  %82 = load i8, i8* %81, align 1, !dbg !2567, !tbaa !485
  %83 = or i64 %77, 1, !dbg !2568
  %84 = getelementptr inbounds i8, i8* %34, i64 %83, !dbg !2569
  store i8 %82, i8* %84, align 1, !dbg !2570, !tbaa !485
  %85 = add nuw nsw i64 %70, 1, !dbg !2571
  %86 = icmp eq i64 %85, 20, !dbg !2572
  br i1 %86, label %87, label %69, !dbg !2559, !llvm.loop !500

; <label>:87:                                     ; preds = %69
  %88 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 42, !dbg !2573
  store i8 0, i8* %88, align 2, !dbg !2574, !tbaa !485
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %67) #8, !dbg !2575
  call void @llvm.lifetime.end.p0i8(i64 92, i8* nonnull %66) #8, !dbg !2575
  br label %144, !dbg !2576

; <label>:89:                                     ; preds = %30
  %90 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2577, !tbaa !1114
  %91 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %90, i64 1, !dbg !2578
  %92 = load %struct.redisObject*, %struct.redisObject** %91, align 8, !dbg !2578, !tbaa !992
  %93 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %92, i64 0, i32 2, !dbg !2579
  %94 = load i8*, i8** %93, align 8, !dbg !2579, !tbaa !1032
  %95 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 2, !dbg !2582
  %96 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 42, !dbg !2582
  %97 = getelementptr i8, i8* %94, i64 40, !dbg !2582
  %98 = icmp ult i8* %95, %97, !dbg !2582
  %99 = icmp ult i8* %94, %96, !dbg !2582
  %100 = and i1 %98, %99, !dbg !2582
  br i1 %100, label %119, label %101, !dbg !2582

; <label>:101:                                    ; preds = %89
  %102 = bitcast i8* %94 to <16 x i8>*, !dbg !2584
  %103 = load <16 x i8>, <16 x i8>* %102, align 1, !dbg !2584, !tbaa !485, !alias.scope !2586
  %104 = add <16 x i8> %103, <i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65>, !dbg !2589
  %105 = icmp ult <16 x i8> %104, <i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26>, !dbg !2589
  %106 = add <16 x i8> %103, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, !dbg !2590
  %107 = select <16 x i1> %105, <16 x i8> %106, <16 x i8> %103, !dbg !2589
  %108 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 2, !dbg !2591
  %109 = bitcast i8* %108 to <16 x i8>*, !dbg !2592
  store <16 x i8> %107, <16 x i8>* %109, align 2, !dbg !2592, !tbaa !485, !alias.scope !2593, !noalias !2586
  %110 = getelementptr inbounds i8, i8* %94, i64 16, !dbg !2584
  %111 = bitcast i8* %110 to <16 x i8>*, !dbg !2584
  %112 = load <16 x i8>, <16 x i8>* %111, align 1, !dbg !2584, !tbaa !485, !alias.scope !2586
  %113 = add <16 x i8> %112, <i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65, i8 -65>, !dbg !2589
  %114 = icmp ult <16 x i8> %113, <i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26, i8 26>, !dbg !2589
  %115 = add <16 x i8> %112, <i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32, i8 32>, !dbg !2590
  %116 = select <16 x i1> %114, <16 x i8> %115, <16 x i8> %112, !dbg !2589
  %117 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 18, !dbg !2591
  %118 = bitcast i8* %117 to <16 x i8>*, !dbg !2592
  store <16 x i8> %116, <16 x i8>* %118, align 2, !dbg !2592, !tbaa !485, !alias.scope !2593, !noalias !2586
  br label %119, !dbg !2584

; <label>:119:                                    ; preds = %101, %89
  %120 = phi i64 [ 0, %89 ], [ 32, %101 ]
  br label %121, !dbg !2584

; <label>:121:                                    ; preds = %121, %119
  %122 = phi i64 [ %120, %119 ], [ %140, %121 ]
  %123 = getelementptr inbounds i8, i8* %94, i64 %122, !dbg !2584
  %124 = load i8, i8* %123, align 1, !dbg !2584, !tbaa !485
  %125 = add i8 %124, -65, !dbg !2589
  %126 = icmp ult i8 %125, 26, !dbg !2589
  %127 = add i8 %124, 32, !dbg !2590
  %128 = select i1 %126, i8 %127, i8 %124, !dbg !2589
  %129 = add nuw nsw i64 %122, 2, !dbg !2595
  %130 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 %129, !dbg !2591
  store i8 %128, i8* %130, align 2, !dbg !2592, !tbaa !485
  %131 = or i64 %122, 1, !dbg !2596
  %132 = getelementptr inbounds i8, i8* %94, i64 %131, !dbg !2584
  %133 = load i8, i8* %132, align 1, !dbg !2584, !tbaa !485
  %134 = add i8 %133, -65, !dbg !2589
  %135 = icmp ult i8 %134, 26, !dbg !2589
  %136 = add i8 %133, 32, !dbg !2590
  %137 = select i1 %135, i8 %136, i8 %133, !dbg !2589
  %138 = add nuw nsw i64 %122, 3, !dbg !2595
  %139 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 %138, !dbg !2591
  store i8 %137, i8* %139, align 1, !dbg !2592, !tbaa !485
  %140 = add nuw nsw i64 %122, 2, !dbg !2596
  %141 = icmp eq i64 %140, 40, !dbg !2597
  br i1 %141, label %142, label %121, !dbg !2582, !llvm.loop !2598

; <label>:142:                                    ; preds = %121
  %143 = getelementptr inbounds [43 x i8], [43 x i8]* %5, i64 0, i64 42, !dbg !2601
  store i8 0, i8* %143, align 2, !dbg !2602, !tbaa !485
  br label %144

; <label>:144:                                    ; preds = %142, %87
  call void @lua_getfield(%struct.lua_State* %8, i32 -10002, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.104, i64 0, i64 0)) #9, !dbg !2603
  call void @lua_getfield(%struct.lua_State* %8, i32 -10002, i8* nonnull %9) #9, !dbg !2604
  %145 = call i32 @lua_type(%struct.lua_State* %8, i32 -1) #9, !dbg !2605
  %146 = icmp eq i32 %145, 0, !dbg !2605
  br i1 %146, label %147, label %161, !dbg !2607

; <label>:147:                                    ; preds = %144
  call void @lua_settop(%struct.lua_State* %8, i32 -2) #9, !dbg !2608
  br i1 %32, label %148, label %150, !dbg !2610

; <label>:148:                                    ; preds = %147
  call void @lua_settop(%struct.lua_State* %8, i32 -2) #9, !dbg !2611
  %149 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 19), align 8, !dbg !2614, !tbaa !2615
  call void @addReply(%struct.client* %0, %struct.redisObject* %149) #9, !dbg !2616
  br label %275, !dbg !2617

; <label>:150:                                    ; preds = %147
  %151 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2618, !tbaa !1114
  %152 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %151, i64 1, !dbg !2620
  %153 = load %struct.redisObject*, %struct.redisObject** %152, align 8, !dbg !2620, !tbaa !992
  %154 = call i8* @luaCreateFunction(%struct.client* %0, %struct.lua_State* %8, %struct.redisObject* %153) #10, !dbg !2621
  %155 = icmp eq i8* %154, null, !dbg !2622
  br i1 %155, label %156, label %157, !dbg !2623

; <label>:156:                                    ; preds = %150
  call void @lua_settop(%struct.lua_State* %8, i32 -2) #9, !dbg !2624
  br label %275, !dbg !2626

; <label>:157:                                    ; preds = %150
  call void @lua_getfield(%struct.lua_State* %8, i32 -10002, i8* nonnull %9) #9, !dbg !2627
  %158 = call i32 @lua_type(%struct.lua_State* %8, i32 -1) #9, !dbg !2628
  %159 = icmp eq i32 %158, 0, !dbg !2628
  br i1 %159, label %160, label %161, !dbg !2628

; <label>:160:                                    ; preds = %157
  call void @_serverAssert(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.105, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.98, i64 0, i64 0), i32 1340) #9, !dbg !2628
  call void @_exit(i32 1) #11, !dbg !2628
  unreachable, !dbg !2628

; <label>:161:                                    ; preds = %157, %144
  %162 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2629, !tbaa !1114
  %163 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %162, i64 3, !dbg !2630
  %164 = load i64, i64* %6, align 8, !dbg !2631, !tbaa !536
  %165 = trunc i64 %164 to i32, !dbg !2631
  call void @luaSetGlobalArray(%struct.lua_State* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0), %struct.redisObject** nonnull %163, i32 %165) #10, !dbg !2632
  %166 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2633, !tbaa !1114
  %167 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %166, i64 3, !dbg !2634
  %168 = load i64, i64* %6, align 8, !dbg !2635, !tbaa !536
  %169 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %167, i64 %168, !dbg !2636
  %170 = load i32, i32* %21, align 8, !dbg !2637, !tbaa !1117
  %171 = add nsw i32 %170, -3, !dbg !2638
  %172 = trunc i64 %168 to i32, !dbg !2639
  %173 = sub i32 %171, %172, !dbg !2639
  call void @luaSetGlobalArray(%struct.lua_State* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i64 0, i64 0), %struct.redisObject** nonnull %169, i32 %173) #10, !dbg !2640
  %174 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 271), align 8, !dbg !2641, !tbaa !940
  %175 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 2, !dbg !2642
  %176 = load %struct.redisDb*, %struct.redisDb** %175, align 8, !dbg !2642, !tbaa !2643
  %177 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %176, i64 0, i32 5, !dbg !2644
  %178 = load i32, i32* %177, align 8, !dbg !2644, !tbaa !2645
  %179 = call i32 @selectDb(%struct.client* %174, i32 %178) #9, !dbg !2647
  store %struct.client* %0, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !2648, !tbaa !953
  %180 = call i64 @mstime() #9, !dbg !2649
  store i64 %180, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 276), align 8, !dbg !2650, !tbaa !2442
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 283), align 8, !dbg !2651, !tbaa !2465
  %181 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 275), align 8, !dbg !2652, !tbaa !2447
  %182 = icmp sgt i64 %181, 0, !dbg !2654
  %183 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !2655
  %184 = icmp eq i32 %183, 0, !dbg !2656
  %185 = and i1 %182, %184, !dbg !2657
  br i1 %185, label %186, label %188, !dbg !2657

; <label>:186:                                    ; preds = %161
  %187 = call i32 @lua_sethook(%struct.lua_State* %8, void (%struct.lua_State*, %struct.lua_Debug*)* nonnull @luaMaskCountHook, i32 8, i32 100000) #9, !dbg !2658
  br label %194, !dbg !2660

; <label>:188:                                    ; preds = %161
  br i1 %184, label %192, label %189, !dbg !2661

; <label>:189:                                    ; preds = %188
  %190 = load %struct.lua_State*, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !2662, !tbaa !2122
  %191 = call i32 @lua_sethook(%struct.lua_State* %190, void (%struct.lua_State*, %struct.lua_Debug*)* nonnull @luaLdbLineHook, i32 12, i32 100000) #9, !dbg !2665
  br label %194, !dbg !2666

; <label>:192:                                    ; preds = %188
  %193 = call i32 @lua_pcall(%struct.lua_State* %8, i32 0, i32 1, i32 -2) #9, !dbg !2667
  br label %197, !dbg !2669

; <label>:194:                                    ; preds = %186, %189
  %195 = call i32 @lua_pcall(%struct.lua_State* %8, i32 0, i32 1, i32 -2) #9, !dbg !2667
  %196 = call i32 @lua_sethook(%struct.lua_State* %8, void (%struct.lua_State*, %struct.lua_Debug*)* null, i32 0, i32 0) #9, !dbg !2670
  br label %197, !dbg !2670

; <label>:197:                                    ; preds = %192, %194
  %198 = phi i32 [ %195, %194 ], [ %193, %192 ]
  %199 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !2672, !tbaa !2002
  %200 = icmp eq i32 %199, 0, !dbg !2674
  br i1 %200, label %208, label %201, !dbg !2675

; <label>:201:                                    ; preds = %197
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !2676, !tbaa !2002
  call void @unprotectClient(%struct.client* nonnull %0) #9, !dbg !2678
  %202 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !2679, !tbaa !1200
  %203 = icmp ne i8* %202, null, !dbg !2681
  %204 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2682
  %205 = icmp ne %struct.client* %204, null, !dbg !2683
  %206 = and i1 %203, %205, !dbg !2684
  br i1 %206, label %207, label %208, !dbg !2684

; <label>:207:                                    ; preds = %201
  call void @queueClientForReprocessing(%struct.client* nonnull %204) #9, !dbg !2685
  br label %208, !dbg !2685

; <label>:208:                                    ; preds = %197, %201, %207
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !2686, !tbaa !953
  %209 = load i64, i64* @evalGenericCommand.gc_count, align 8, !dbg !2687, !tbaa !1014
  %210 = add nsw i64 %209, 1, !dbg !2687
  store i64 %210, i64* @evalGenericCommand.gc_count, align 8, !dbg !2687, !tbaa !1014
  %211 = icmp eq i64 %210, 50, !dbg !2689
  br i1 %211, label %212, label %214, !dbg !2691

; <label>:212:                                    ; preds = %208
  %213 = call i32 @lua_gc(%struct.lua_State* %8, i32 5, i32 50) #9, !dbg !2692
  store i64 0, i64* @evalGenericCommand.gc_count, align 8, !dbg !2694, !tbaa !1014
  br label %214, !dbg !2695

; <label>:214:                                    ; preds = %212, %208
  %215 = icmp eq i32 %198, 0, !dbg !2696
  br i1 %215, label %218, label %216, !dbg !2698

; <label>:216:                                    ; preds = %214
  %217 = call i8* @lua_tolstring(%struct.lua_State* %8, i32 -1, i64* null) #9, !dbg !2699
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.108, i64 0, i64 0), i8* nonnull %9, i8* %217) #9, !dbg !2701
  call void @lua_settop(%struct.lua_State* %8, i32 -3) #9, !dbg !2702
  br label %219, !dbg !2703

; <label>:218:                                    ; preds = %214
  call void @luaReplyToRedisReply(%struct.client* nonnull %0, %struct.lua_State* %8) #10, !dbg !2704
  call void @lua_settop(%struct.lua_State* %8, i32 -2) #9, !dbg !2706
  br label %219

; <label>:219:                                    ; preds = %218, %216
  %220 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !2707, !tbaa !1300
  %221 = icmp eq i32 %220, 0, !dbg !2708
  br i1 %221, label %234, label %222, !dbg !2709

; <label>:222:                                    ; preds = %219
  call void @preventCommandPropagation(%struct.client* nonnull %0) #9, !dbg !2710
  %223 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 280), align 4, !dbg !2711, !tbaa !949
  %224 = icmp eq i32 %223, 0, !dbg !2712
  br i1 %224, label %234, label %225, !dbg !2713

; <label>:225:                                    ; preds = %222
  %226 = bitcast [1 x %struct.redisObject*]* %7 to i8*, !dbg !2714
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %226) #8, !dbg !2714
  %227 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i64 0, i64 0), i64 4) #9, !dbg !2716
  %228 = getelementptr inbounds [1 x %struct.redisObject*], [1 x %struct.redisObject*]* %7, i64 0, i64 0, !dbg !2717
  store %struct.redisObject* %227, %struct.redisObject** %228, align 8, !dbg !2718, !tbaa !992
  %229 = load %struct.redisCommand*, %struct.redisCommand** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 64), align 8, !dbg !2719, !tbaa !2720
  %230 = load %struct.redisDb*, %struct.redisDb** %175, align 8, !dbg !2721, !tbaa !2643
  %231 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %230, i64 0, i32 5, !dbg !2722
  %232 = load i32, i32* %231, align 8, !dbg !2722, !tbaa !2645
  call void @alsoPropagate(%struct.redisCommand* %229, i32 %232, %struct.redisObject** nonnull %228, i32 1, i32 3) #9, !dbg !2723
  %233 = load %struct.redisObject*, %struct.redisObject** %228, align 8, !dbg !2724, !tbaa !992
  call void @decrRefCount(%struct.redisObject* %233) #9, !dbg !2725
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %226) #8, !dbg !2726
  br label %234, !dbg !2727

; <label>:234:                                    ; preds = %222, %219, %225
  %235 = icmp eq i32 %1, 0, !dbg !2728
  %236 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !2729
  %237 = icmp ne i32 %236, 0, !dbg !2730
  %238 = or i1 %235, %237, !dbg !2731
  br i1 %238, label %275, label %239, !dbg !2731

; <label>:239:                                    ; preds = %234
  %240 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2732, !tbaa !1114
  %241 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %240, i64 1, !dbg !2733
  %242 = load %struct.redisObject*, %struct.redisObject** %241, align 8, !dbg !2733, !tbaa !992
  %243 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %242, i64 0, i32 2, !dbg !2734
  %244 = load i8*, i8** %243, align 8, !dbg !2734, !tbaa !1032
  %245 = call i32 @replicationScriptCacheExists(i8* %244) #9, !dbg !2735
  %246 = icmp eq i32 %245, 0, !dbg !2735
  br i1 %246, label %247, label %275, !dbg !2736

; <label>:247:                                    ; preds = %239
  %248 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !2737, !tbaa !2034
  %249 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2738, !tbaa !1114
  %250 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %249, i64 1, !dbg !2739
  %251 = load %struct.redisObject*, %struct.redisObject** %250, align 8, !dbg !2739, !tbaa !992
  %252 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %251, i64 0, i32 2, !dbg !2740
  %253 = load i8*, i8** %252, align 8, !dbg !2740, !tbaa !1032
  %254 = call i8* @dictFetchValue(%struct.dict* %248, i8* %253) #9, !dbg !2741
  %255 = bitcast i8* %254 to %struct.redisObject*, !dbg !2741
  %256 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !2743, !tbaa !1114
  %257 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %256, i64 1, !dbg !2744
  %258 = load %struct.redisObject*, %struct.redisObject** %257, align 8, !dbg !2744, !tbaa !992
  %259 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %258, i64 0, i32 2, !dbg !2745
  %260 = load i8*, i8** %259, align 8, !dbg !2745, !tbaa !1032
  call void @replicationScriptCacheAdd(i8* %260) #9, !dbg !2746
  %261 = icmp eq i8* %254, null, !dbg !2747
  br i1 %261, label %262, label %263, !dbg !2747

; <label>:262:                                    ; preds = %247
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.110, i64 0, i64 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.98, i64 0, i64 0), i32 1445) #9, !dbg !2747
  call void @_exit(i32 1) #11, !dbg !2747
  unreachable, !dbg !2747

; <label>:263:                                    ; preds = %247
  %264 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !2748, !tbaa !2485
  %265 = icmp eq i64 %264, %11, !dbg !2750
  br i1 %265, label %266, label %271, !dbg !2751

; <label>:266:                                    ; preds = %263
  %267 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i64 0, i64 0), i64 6) #9, !dbg !2752
  %268 = call %struct.redisObject* @resetRefCount(%struct.redisObject* %267) #9, !dbg !2754
  %269 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i64 0, i64 0), i64 4) #9, !dbg !2755
  %270 = call %struct.redisObject* @resetRefCount(%struct.redisObject* %269) #9, !dbg !2756
  call void (%struct.client*, i32, ...) @rewriteClientCommandVector(%struct.client* nonnull %0, i32 3, %struct.redisObject* %268, %struct.redisObject* %270, i8* nonnull %254) #9, !dbg !2757
  br label %274, !dbg !2758

; <label>:271:                                    ; preds = %263
  %272 = call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.113, i64 0, i64 0), i64 4) #9, !dbg !2759
  %273 = call %struct.redisObject* @resetRefCount(%struct.redisObject* %272) #9, !dbg !2761
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 0, %struct.redisObject* %273) #9, !dbg !2762
  call void @rewriteClientCommandArgument(%struct.client* nonnull %0, i32 1, %struct.redisObject* %255) #9, !dbg !2763
  br label %274

; <label>:274:                                    ; preds = %271, %266
  call void @forceCommandPropagation(%struct.client* nonnull %0, i32 3) #9, !dbg !2764
  br label %275, !dbg !2765

; <label>:275:                                    ; preds = %234, %274, %239, %2, %156, %148, %29, %26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #8, !dbg !2766
  call void @llvm.lifetime.end.p0i8(i64 43, i8* nonnull %9) #8, !dbg !2766
  ret void, !dbg !2766
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
define dso_local void @luaLdbLineHook(%struct.lua_State*, %struct.lua_Debug*) #0 !dbg !2767 {
  %3 = tail call i32 @lua_getstack(%struct.lua_State* %0, i32 0, %struct.lua_Debug* %1) #9, !dbg !2782
  %4 = tail call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.252, i64 0, i64 0), %struct.lua_Debug* %1) #9, !dbg !2783
  %5 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 5, !dbg !2784
  %6 = load i32, i32* %5, align 8, !dbg !2784, !tbaa !793
  store i32 %6, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !2785, !tbaa !1686
  %7 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !2795, !tbaa !2798
  %8 = icmp sgt i32 %7, 0, !dbg !2799
  br i1 %8, label %9, label %19, !dbg !2800

; <label>:9:                                      ; preds = %2
  %10 = sext i32 %7 to i64, !dbg !2800
  br label %13, !dbg !2800

; <label>:11:                                     ; preds = %13
  %12 = icmp slt i64 %18, %10, !dbg !2799
  br i1 %12, label %13, label %19, !dbg !2800, !llvm.loop !2801

; <label>:13:                                     ; preds = %11, %9
  %14 = phi i64 [ 0, %9 ], [ %18, %11 ]
  %15 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %14, !dbg !2804
  %16 = load i32, i32* %15, align 4, !dbg !2804, !tbaa !969
  %17 = icmp eq i32 %16, %6, !dbg !2806
  %18 = add nuw nsw i64 %14, 1, !dbg !2807
  br i1 %17, label %19, label %11, !dbg !2808

; <label>:19:                                     ; preds = %11, %13, %2
  %20 = phi i32 [ 0, %2 ], [ 1, %13 ], [ 0, %11 ], !dbg !2809
  %21 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !2810
  %22 = or i32 %21, %20, !dbg !2811
  %23 = icmp ne i32 %22, 0, !dbg !2811
  %24 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 9, i64 0, !dbg !2813
  %25 = tail call i8* @strstr(i8* nonnull %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.189, i64 0, i64 0)) #9, !dbg !2815
  %26 = icmp eq i8* %25, null, !dbg !2816
  br i1 %26, label %104, label %27, !dbg !2817

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %1, i64 0, i32 0, !dbg !2818
  %29 = load i32, i32* %28, align 8, !dbg !2818, !tbaa !2819
  %30 = icmp eq i32 %29, 3, !dbg !2820
  %31 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !2821
  %32 = icmp eq i32 %31, 0, !dbg !2822
  %33 = and i1 %30, %32, !dbg !2823
  %34 = xor i1 %23, true, !dbg !2824
  %35 = and i1 %33, %34, !dbg !2823
  br i1 %35, label %36, label %45, !dbg !2823

; <label>:36:                                     ; preds = %27
  %37 = tail call i64 @mstime() #9, !dbg !2825
  %38 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 276), align 8, !dbg !2826, !tbaa !2442
  %39 = sub nsw i64 %37, %38, !dbg !2827
  %40 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 275), align 8, !dbg !2829, !tbaa !2447
  %41 = icmp eq i64 %40, 0, !dbg !2830
  %42 = select i1 %41, i64 5000, i64 %40, !dbg !2830
  %43 = icmp slt i64 %39, %42, !dbg !2832
  br i1 %43, label %104, label %44, !dbg !2834

; <label>:44:                                     ; preds = %36
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !2835, !tbaa !2837
  br label %45

; <label>:45:                                     ; preds = %44, %27
  %46 = phi i32 [ %31, %27 ], [ 1, %44 ], !dbg !2838
  %47 = phi i32 [ 0, %27 ], [ 1, %44 ], !dbg !2839
  %48 = or i32 %46, %22, !dbg !2840
  %49 = icmp eq i32 %48, 0, !dbg !2840
  br i1 %49, label %104, label %50, !dbg !2840

; <label>:50:                                     ; preds = %45
  br i1 %23, label %51, label %55, !dbg !2841

; <label>:51:                                     ; preds = %50
  %52 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !2842, !tbaa !1666
  %53 = icmp eq i32 %52, 0, !dbg !2844
  %54 = select i1 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.255, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.254, i64 0, i64 0), !dbg !2844
  br label %58, !dbg !2846

; <label>:55:                                     ; preds = %50
  %56 = icmp eq i32 %47, 0, !dbg !2847
  %57 = select i1 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.253, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.256, i64 0, i64 0), !dbg !2849
  br label %58, !dbg !2849

; <label>:58:                                     ; preds = %55, %51
  %59 = phi i8* [ %54, %51 ], [ %57, %55 ], !dbg !2850
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !2851, !tbaa !2837
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !2852, !tbaa !1666
  %60 = tail call i8* @sdsempty() #9, !dbg !2853
  %61 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !2854, !tbaa !1686
  %62 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.257, i64 0, i64 0), i32 %61, i8* %59) #9, !dbg !2855
  %63 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !2858, !tbaa !778
  %64 = tail call %struct.list* @listAddNodeTail(%struct.list* %63, i8* %62) #9, !dbg !2859
  %65 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !2860, !tbaa !1686
  %66 = icmp slt i32 %65, 1, !dbg !2879
  %67 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !2881
  %68 = icmp slt i32 %67, %65, !dbg !2882
  %69 = or i1 %66, %68, !dbg !2883
  br i1 %69, label %76, label %70, !dbg !2883

; <label>:70:                                     ; preds = %58
  %71 = add nsw i32 %65, -1, !dbg !2884
  %72 = load i8**, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !2886, !tbaa !2018
  %73 = sext i32 %71 to i64, !dbg !2887
  %74 = getelementptr inbounds i8*, i8** %72, i64 %73, !dbg !2887
  %75 = load i8*, i8** %74, align 8, !dbg !2887, !tbaa !992
  br label %76, !dbg !2888

; <label>:76:                                     ; preds = %70, %58
  %77 = phi i8* [ %75, %70 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i64 0, i64 0), %58 ], !dbg !2889
  %78 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !2894, !tbaa !2798
  %79 = icmp sgt i32 %78, 0, !dbg !2895
  br i1 %79, label %80, label %90, !dbg !2896

; <label>:80:                                     ; preds = %76
  %81 = sext i32 %78 to i64, !dbg !2896
  br label %84, !dbg !2896

; <label>:82:                                     ; preds = %84
  %83 = icmp slt i64 %89, %81, !dbg !2895
  br i1 %83, label %84, label %90, !dbg !2896, !llvm.loop !2801

; <label>:84:                                     ; preds = %82, %80
  %85 = phi i64 [ 0, %80 ], [ %89, %82 ]
  %86 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %85, !dbg !2897
  %87 = load i32, i32* %86, align 4, !dbg !2897, !tbaa !969
  %88 = icmp eq i32 %87, %65, !dbg !2898
  %89 = add nuw nsw i64 %85, 1, !dbg !2899
  br i1 %88, label %90, label %82, !dbg !2900

; <label>:90:                                     ; preds = %84, %82, %76
  %91 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i64 0, i64 0), %76 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.146, i64 0, i64 0), %84 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i64 0, i64 0), %82 ]
  %92 = tail call i8* @sdsempty() #9, !dbg !2902
  %93 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.150, i64 0, i64 0), i8* nonnull %91, i32 %65, i8* %77) #9, !dbg !2903
  %94 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !2907, !tbaa !778
  %95 = tail call %struct.list* @listAddNodeTail(%struct.list* %94, i8* %93) #9, !dbg !2908
  tail call void @ldbSendLogs() #10, !dbg !2909
  %96 = tail call i32 @ldbRepl(%struct.lua_State* %0) #10, !dbg !2910
  %97 = icmp eq i32 %96, -1, !dbg !2912
  %98 = icmp ne i32 %47, 0, !dbg !2913
  %99 = and i1 %98, %97, !dbg !2914
  br i1 %99, label %100, label %102, !dbg !2914

; <label>:100:                                    ; preds = %90
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.258, i64 0, i64 0)) #9, !dbg !2915
  %101 = tail call i32 @lua_error(%struct.lua_State* %0) #9, !dbg !2917
  br label %102, !dbg !2918

; <label>:102:                                    ; preds = %100, %90
  %103 = tail call i64 @mstime() #9, !dbg !2919
  store i64 %103, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 276), align 8, !dbg !2920, !tbaa !2442
  br label %104, !dbg !2921

; <label>:104:                                    ; preds = %36, %102, %45, %19
  ret void, !dbg !2922
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
define dso_local void @evalCommand(%struct.client*) local_unnamed_addr #0 !dbg !2923 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2927
  %3 = load i32, i32* %2, align 8, !dbg !2927, !tbaa !955
  %4 = and i32 %3, 33554432, !dbg !2929
  %5 = icmp eq i32 %4, 0, !dbg !2929
  br i1 %5, label %6, label %7, !dbg !2930

; <label>:6:                                      ; preds = %1
  tail call void @evalGenericCommand(%struct.client* nonnull %0, i32 0) #10, !dbg !2931
  br label %14, !dbg !2931

; <label>:7:                                      ; preds = %1
  %8 = tail call i32 @ldbStartSession(%struct.client* nonnull %0) #9, !dbg !2939
  %9 = icmp eq i32 %8, 0, !dbg !2939
  br i1 %9, label %11, label %10, !dbg !2941

; <label>:10:                                     ; preds = %7
  tail call void @evalGenericCommand(%struct.client* nonnull %0, i32 0) #9, !dbg !2942
  tail call void @ldbEndSession(%struct.client* nonnull %0) #9, !dbg !2944
  br label %14, !dbg !2945

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %2, align 8, !dbg !2952, !tbaa !955
  %13 = and i32 %12, -100663297, !dbg !2952
  store i32 %13, i32* %2, align 8, !dbg !2952, !tbaa !955
  br label %14

; <label>:14:                                     ; preds = %11, %10, %6
  ret void, !dbg !2953
}

; Function Attrs: noredzone nounwind
define dso_local void @evalGenericCommandWithDebugging(%struct.client*, i32) local_unnamed_addr #0 !dbg !2933 {
  %3 = tail call i32 @ldbStartSession(%struct.client* %0) #10, !dbg !2956
  %4 = icmp eq i32 %3, 0, !dbg !2956
  br i1 %4, label %6, label %5, !dbg !2957

; <label>:5:                                      ; preds = %2
  tail call void @evalGenericCommand(%struct.client* %0, i32 %1) #10, !dbg !2958
  tail call void @ldbEndSession(%struct.client* %0) #10, !dbg !2959
  br label %10, !dbg !2960

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2963
  %8 = load i32, i32* %7, align 8, !dbg !2964, !tbaa !955
  %9 = and i32 %8, -100663297, !dbg !2964
  store i32 %9, i32* %7, align 8, !dbg !2964, !tbaa !955
  br label %10

; <label>:10:                                     ; preds = %6, %5
  ret void, !dbg !2965
}

; Function Attrs: noredzone nounwind
define dso_local void @evalShaCommand(%struct.client*) local_unnamed_addr #0 !dbg !2966 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2970
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2970, !tbaa !1114
  %4 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 1, !dbg !2972
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2972, !tbaa !992
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 2, !dbg !2973
  %7 = load i8*, i8** %6, align 8, !dbg !2973, !tbaa !1032
  %8 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !2976
  %9 = load i8, i8* %8, align 1, !dbg !2976, !tbaa !485
  %10 = trunc i8 %9 to i3, !dbg !2978
  switch i3 %10, label %32 [
    i3 -4, label %25
    i3 1, label %11
    i3 2, label %15
    i3 3, label %20
  ], !dbg !2978

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds i8, i8* %7, i64 -3, !dbg !2979
  %13 = load i8, i8* %12, align 1, !dbg !2980, !tbaa !485
  %14 = zext i8 %13 to i64, !dbg !2979
  br label %29, !dbg !2981

; <label>:15:                                     ; preds = %1
  %16 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !2982
  %17 = bitcast i8* %16 to i16*, !dbg !2983
  %18 = load i16, i16* %17, align 1, !dbg !2983, !tbaa !1071
  %19 = zext i16 %18 to i64, !dbg !2982
  br label %29, !dbg !2984

; <label>:20:                                     ; preds = %1
  %21 = getelementptr inbounds i8, i8* %7, i64 -9, !dbg !2985
  %22 = bitcast i8* %21 to i32*, !dbg !2986
  %23 = load i32, i32* %22, align 1, !dbg !2986, !tbaa !969
  %24 = zext i32 %23 to i64, !dbg !2985
  br label %29, !dbg !2987

; <label>:25:                                     ; preds = %1
  %26 = getelementptr inbounds i8, i8* %7, i64 -17, !dbg !2988
  %27 = bitcast i8* %26 to i64*, !dbg !2989
  %28 = load i64, i64* %27, align 1, !dbg !2989, !tbaa !1014
  br label %29, !dbg !2990

; <label>:29:                                     ; preds = %11, %15, %20, %25
  %30 = phi i64 [ %28, %25 ], [ %24, %20 ], [ %19, %15 ], [ %14, %11 ], !dbg !2991
  %31 = icmp eq i64 %30, 40, !dbg !2992
  br i1 %31, label %34, label %32, !dbg !2993

; <label>:32:                                     ; preds = %1, %29
  %33 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 19), align 8, !dbg !2994, !tbaa !2615
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %33) #9, !dbg !2996
  br label %41, !dbg !2997

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2998
  %36 = load i32, i32* %35, align 8, !dbg !2998, !tbaa !955
  %37 = and i32 %36, 33554432, !dbg !3000
  %38 = icmp eq i32 %37, 0, !dbg !3000
  br i1 %38, label %39, label %40, !dbg !3001

; <label>:39:                                     ; preds = %34
  tail call void @evalGenericCommand(%struct.client* nonnull %0, i32 1) #10, !dbg !3002
  br label %41, !dbg !3002

; <label>:40:                                     ; preds = %34
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.114, i64 0, i64 0)) #9, !dbg !3003
  br label %41, !dbg !3005

; <label>:41:                                     ; preds = %32, %40, %39
  ret void, !dbg !3006
}

; Function Attrs: noredzone nounwind
define dso_local void @scriptCommand(%struct.client*) local_unnamed_addr #0 !dbg !3007 {
  %2 = alloca [6 x i8*], align 16
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3024
  %4 = load i32, i32* %3, align 8, !dbg !3024, !tbaa !1117
  %5 = icmp eq i32 %4, 2, !dbg !3025
  br i1 %5, label %6, label %31, !dbg !3026

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3027
  %8 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !3027, !tbaa !1114
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 1, !dbg !3028
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !3028, !tbaa !992
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !3029
  %12 = load i8*, i8** %11, align 8, !dbg !3029, !tbaa !1032
  %13 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i64 0, i64 0)) #12, !dbg !3030
  %14 = icmp eq i32 %13, 0, !dbg !3030
  br i1 %14, label %15, label %22, !dbg !3031

; <label>:15:                                     ; preds = %6
  %16 = bitcast [6 x i8*]* %2 to i8*, !dbg !3032
  call void @llvm.lifetime.start.p0i8(i64 48, i8* nonnull %16) #8, !dbg !3032
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %16, i8 0, i64 48, i1 false), !dbg !3033
  %17 = getelementptr inbounds [6 x i8*], [6 x i8*]* %2, i64 0, i64 0, !dbg !3033
  %18 = bitcast [6 x i8*]* %2 to <2 x i8*>*, !dbg !3033
  store <2 x i8*> <i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.116, i64 0, i64 0), i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.117, i64 0, i64 0)>, <2 x i8*>* %18, align 16, !dbg !3033
  %19 = getelementptr inbounds [6 x i8*], [6 x i8*]* %2, i64 0, i64 2, !dbg !3033
  %20 = bitcast i8** %19 to <2 x i8*>*, !dbg !3033
  store <2 x i8*> <i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.118, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.119, i64 0, i64 0)>, <2 x i8*>* %20, align 16, !dbg !3033
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* %2, i64 0, i64 4, !dbg !3033
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.120, i64 0, i64 0), i8** %21, align 16, !dbg !3033
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %17) #9, !dbg !3034
  call void @llvm.lifetime.end.p0i8(i64 48, i8* nonnull %16) #8, !dbg !3035
  br label %82, !dbg !3036

; <label>:22:                                     ; preds = %6
  %23 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i64 0, i64 0)) #12, !dbg !3037
  %24 = icmp eq i32 %23, 0, !dbg !3037
  br i1 %24, label %25, label %40, !dbg !3038

; <label>:25:                                     ; preds = %22
  %26 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !3039, !tbaa !2034
  tail call void @dictRelease(%struct.dict* %26) #9, !dbg !3043
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 274), align 8, !dbg !3044, !tbaa !2036
  %27 = load %struct.lua_State*, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !3045, !tbaa !2122
  tail call void @lua_close(%struct.lua_State* %27) #9, !dbg !3046
  tail call void @scriptingInit(i32 0) #9, !dbg !3047
  %28 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3048, !tbaa !3049
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %28) #9, !dbg !3050
  tail call void @replicationScriptCacheFlush() #9, !dbg !3051
  %29 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3052, !tbaa !2485
  %30 = add nsw i64 %29, 1, !dbg !3052
  store i64 %30, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 152), align 8, !dbg !3052, !tbaa !2485
  br label %82, !dbg !3053

; <label>:31:                                     ; preds = %1
  %32 = icmp sgt i32 %4, 1, !dbg !3054
  br i1 %32, label %33, label %173, !dbg !3055

; <label>:33:                                     ; preds = %31
  %34 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %35 = load %struct.redisObject**, %struct.redisObject*** %34, align 8, !dbg !3056, !tbaa !1114
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %35, i64 1
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !3057, !tbaa !992
  %38 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %37, i64 0, i32 2
  %39 = load i8*, i8** %38, align 8, !dbg !3058, !tbaa !1032
  br label %40, !dbg !3055

; <label>:40:                                     ; preds = %33, %22
  %41 = phi %struct.redisObject*** [ %34, %33 ], [ %7, %22 ], !dbg !3056
  %42 = phi i8* [ %39, %33 ], [ %12, %22 ], !dbg !3058
  %43 = phi %struct.redisObject** [ %35, %33 ], [ %8, %22 ], !dbg !3056
  %44 = tail call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.122, i64 0, i64 0)) #12, !dbg !3059
  %45 = icmp eq i32 %44, 0, !dbg !3059
  br i1 %45, label %46, label %70, !dbg !3060

; <label>:46:                                     ; preds = %40
  %47 = add nsw i32 %4, -2, !dbg !3061
  %48 = sext i32 %47 to i64, !dbg !3062
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %0, i64 %48) #9, !dbg !3063
  %49 = load i32, i32* %3, align 8, !dbg !3065, !tbaa !1117
  %50 = icmp sgt i32 %49, 2, !dbg !3068
  br i1 %50, label %51, label %82, !dbg !3069

; <label>:51:                                     ; preds = %46, %65
  %52 = phi i64 [ %66, %65 ], [ 2, %46 ]
  %53 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 273), align 8, !dbg !3070, !tbaa !2034
  %54 = load %struct.redisObject**, %struct.redisObject*** %41, align 8, !dbg !3073, !tbaa !1114
  %55 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %54, i64 %52, !dbg !3074
  %56 = load %struct.redisObject*, %struct.redisObject** %55, align 8, !dbg !3074, !tbaa !992
  %57 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %56, i64 0, i32 2, !dbg !3075
  %58 = load i8*, i8** %57, align 8, !dbg !3075, !tbaa !1032
  %59 = tail call %struct.dictEntry* @dictFind(%struct.dict* %53, i8* %58) #9, !dbg !3076
  %60 = icmp eq %struct.dictEntry* %59, null, !dbg !3076
  br i1 %60, label %63, label %61, !dbg !3077

; <label>:61:                                     ; preds = %51
  %62 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !3078, !tbaa !3079
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %62) #9, !dbg !3080
  br label %65, !dbg !3080

; <label>:63:                                     ; preds = %51
  %64 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !3081, !tbaa !3082
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %64) #9, !dbg !3083
  br label %65

; <label>:65:                                     ; preds = %61, %63
  %66 = add nuw nsw i64 %52, 1, !dbg !3084
  %67 = load i32, i32* %3, align 8, !dbg !3065, !tbaa !1117
  %68 = sext i32 %67 to i64, !dbg !3068
  %69 = icmp slt i64 %66, %68, !dbg !3068
  br i1 %69, label %51, label %82, !dbg !3069, !llvm.loop !3085

; <label>:70:                                     ; preds = %40
  %71 = icmp eq i32 %4, 3, !dbg !3087
  br i1 %71, label %72, label %83, !dbg !3088

; <label>:72:                                     ; preds = %70
  %73 = tail call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i64 0, i64 0)) #12, !dbg !3089
  %74 = icmp eq i32 %73, 0, !dbg !3089
  br i1 %74, label %75, label %83, !dbg !3090

; <label>:75:                                     ; preds = %72
  %76 = load %struct.lua_State*, %struct.lua_State** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 270), align 8, !dbg !3091, !tbaa !2122
  %77 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %43, i64 2, !dbg !3092
  %78 = load %struct.redisObject*, %struct.redisObject** %77, align 8, !dbg !3092, !tbaa !992
  %79 = tail call i8* @luaCreateFunction(%struct.client* nonnull %0, %struct.lua_State* %76, %struct.redisObject* %78) #10, !dbg !3093
  %80 = icmp eq i8* %79, null, !dbg !3095
  br i1 %80, label %82, label %81, !dbg !3097

; <label>:81:                                     ; preds = %75
  tail call void @addReplyBulkCBuffer(%struct.client* nonnull %0, i8* nonnull %79, i64 40) #9, !dbg !3098
  tail call void @forceCommandPropagation(%struct.client* nonnull %0, i32 3) #9, !dbg !3099
  br label %82, !dbg !3100

; <label>:82:                                     ; preds = %65, %46, %75, %15, %172, %114, %98, %105, %103, %91, %123, %164, %143, %173, %25, %81
  ret void

; <label>:83:                                     ; preds = %72, %70
  %84 = phi i1 [ true, %72 ], [ false, %70 ]
  br i1 %5, label %85, label %107, !dbg !3101

; <label>:85:                                     ; preds = %83
  %86 = tail call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.124, i64 0, i64 0)) #12, !dbg !3103
  %87 = icmp eq i32 %86, 0, !dbg !3103
  br i1 %87, label %88, label %107, !dbg !3104

; <label>:88:                                     ; preds = %85
  %89 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 272), align 8, !dbg !3105, !tbaa !953
  %90 = icmp eq %struct.client* %89, null, !dbg !3108
  br i1 %90, label %91, label %93, !dbg !3109

; <label>:91:                                     ; preds = %88
  %92 = tail call i8* @sdsnew(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.125, i64 0, i64 0)) #9, !dbg !3110
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %92) #9, !dbg !3112
  br label %82, !dbg !3113

; <label>:93:                                     ; preds = %88
  %94 = getelementptr inbounds %struct.client, %struct.client* %89, i64 0, i32 21, !dbg !3114
  %95 = load i32, i32* %94, align 8, !dbg !3114, !tbaa !955
  %96 = and i32 %95, 2, !dbg !3116
  %97 = icmp eq i32 %96, 0, !dbg !3116
  br i1 %97, label %100, label %98, !dbg !3117

; <label>:98:                                     ; preds = %93
  %99 = tail call i8* @sdsnew(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.126, i64 0, i64 0)) #9, !dbg !3118
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %99) #9, !dbg !3120
  br label %82, !dbg !3121

; <label>:100:                                    ; preds = %93
  %101 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 277), align 8, !dbg !3122, !tbaa !1264
  %102 = icmp eq i32 %101, 0, !dbg !3124
  br i1 %102, label %105, label %103, !dbg !3125

; <label>:103:                                    ; preds = %100
  %104 = tail call i8* @sdsnew(i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.127, i64 0, i64 0)) #9, !dbg !3126
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %104) #9, !dbg !3128
  br label %82, !dbg !3129

; <label>:105:                                    ; preds = %100
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 283), align 8, !dbg !3130, !tbaa !2465
  %106 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3132, !tbaa !3049
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %106) #9, !dbg !3133
  br label %82

; <label>:107:                                    ; preds = %85, %83
  br i1 %84, label %108, label %173, !dbg !3134

; <label>:108:                                    ; preds = %107
  %109 = tail call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0)) #12, !dbg !3136
  %110 = icmp eq i32 %109, 0, !dbg !3136
  br i1 %110, label %111, label %173, !dbg !3137

; <label>:111:                                    ; preds = %108
  %112 = tail call i32 @clientHasPendingReplies(%struct.client* nonnull %0) #9, !dbg !3138
  %113 = icmp eq i32 %112, 0, !dbg !3138
  br i1 %113, label %115, label %114, !dbg !3141

; <label>:114:                                    ; preds = %111
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.128, i64 0, i64 0)) #9, !dbg !3142
  br label %82, !dbg !3144

; <label>:115:                                    ; preds = %111
  %116 = load %struct.redisObject**, %struct.redisObject*** %41, align 8, !dbg !3145, !tbaa !1114
  %117 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %116, i64 2, !dbg !3147
  %118 = load %struct.redisObject*, %struct.redisObject** %117, align 8, !dbg !3147, !tbaa !992
  %119 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %118, i64 0, i32 2, !dbg !3148
  %120 = load i8*, i8** %119, align 8, !dbg !3148, !tbaa !1032
  %121 = tail call i32 @strcasecmp(i8* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.129, i64 0, i64 0)) #12, !dbg !3149
  %122 = icmp eq i32 %121, 0, !dbg !3149
  br i1 %122, label %123, label %128, !dbg !3150

; <label>:123:                                    ; preds = %115
  %124 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3154
  %125 = load i32, i32* %124, align 8, !dbg !3155, !tbaa !955
  %126 = and i32 %125, -100663297, !dbg !3155
  store i32 %126, i32* %124, align 8, !dbg !3155, !tbaa !955
  %127 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3156, !tbaa !3049
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %127) #9, !dbg !3157
  br label %82, !dbg !3158

; <label>:128:                                    ; preds = %115
  %129 = tail call i32 @strcasecmp(i8* %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.130, i64 0, i64 0)) #12, !dbg !3159
  %130 = icmp eq i32 %129, 0, !dbg !3159
  br i1 %130, label %131, label %149, !dbg !3161

; <label>:131:                                    ; preds = %128
  %132 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3168
  %133 = load i32, i32* %132, align 8, !dbg !3169, !tbaa !955
  %134 = or i32 %133, 33554432, !dbg !3169
  store i32 %134, i32* %132, align 8, !dbg !3169, !tbaa !955
  %135 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3170, !tbaa !778
  %136 = getelementptr inbounds %struct.list, %struct.list* %135, i64 0, i32 0, !dbg !3179
  %137 = load %struct.listNode*, %struct.listNode** %136, align 8, !dbg !3179, !tbaa !1354
  %138 = icmp eq %struct.listNode* %137, null, !dbg !3181
  br i1 %138, label %143, label %139, !dbg !3182

; <label>:139:                                    ; preds = %131, %139
  %140 = phi %struct.listNode* [ %141, %139 ], [ %137, %131 ]
  tail call void @listDelNode(%struct.list* nonnull %135, %struct.listNode* nonnull %140) #9, !dbg !3183
  %141 = load %struct.listNode*, %struct.listNode** %136, align 8, !dbg !3179, !tbaa !1354
  %142 = icmp eq %struct.listNode* %141, null, !dbg !3181
  br i1 %142, label %143, label %139, !dbg !3182, !llvm.loop !3184

; <label>:143:                                    ; preds = %139, %131
  %144 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !3187
  %145 = load i32, i32* %144, align 8, !dbg !3187, !tbaa !3188
  store i32 %145, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3189, !tbaa !2008
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !3190, !tbaa !2837
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3191, !tbaa !2798
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !3192, !tbaa !1666
  %146 = load i8*, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3193, !tbaa !2023
  tail call void @sdsfree(i8* %146) #9, !dbg !3194
  %147 = tail call i8* @sdsempty() #9, !dbg !3195
  store i8* %147, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3196, !tbaa !2023
  store i64 256, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !3197, !tbaa !3198
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 15), align 8, !dbg !3199, !tbaa !3200
  %148 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3201, !tbaa !3049
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %148) #9, !dbg !3202
  br label %82, !dbg !3203

; <label>:149:                                    ; preds = %128
  %150 = tail call i32 @strcasecmp(i8* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0)) #12, !dbg !3204
  %151 = icmp eq i32 %150, 0, !dbg !3204
  br i1 %151, label %152, label %172, !dbg !3206

; <label>:152:                                    ; preds = %149
  %153 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3210
  %154 = load i32, i32* %153, align 8, !dbg !3211, !tbaa !955
  %155 = or i32 %154, 33554432, !dbg !3211
  store i32 %155, i32* %153, align 8, !dbg !3211, !tbaa !955
  %156 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3212, !tbaa !778
  %157 = getelementptr inbounds %struct.list, %struct.list* %156, i64 0, i32 0, !dbg !3215
  %158 = load %struct.listNode*, %struct.listNode** %157, align 8, !dbg !3215, !tbaa !1354
  %159 = icmp eq %struct.listNode* %158, null, !dbg !3217
  br i1 %159, label %164, label %160, !dbg !3218

; <label>:160:                                    ; preds = %152, %160
  %161 = phi %struct.listNode* [ %162, %160 ], [ %158, %152 ]
  tail call void @listDelNode(%struct.list* nonnull %156, %struct.listNode* nonnull %161) #9, !dbg !3219
  %162 = load %struct.listNode*, %struct.listNode** %157, align 8, !dbg !3215, !tbaa !1354
  %163 = icmp eq %struct.listNode* %162, null, !dbg !3217
  br i1 %163, label %164, label %160, !dbg !3218, !llvm.loop !3184

; <label>:164:                                    ; preds = %160, %152
  %165 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !3220
  %166 = load i32, i32* %165, align 8, !dbg !3220, !tbaa !3188
  store i32 %166, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3221, !tbaa !2008
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !3222, !tbaa !2837
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3223, !tbaa !2798
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !3224, !tbaa !1666
  %167 = load i8*, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3225, !tbaa !2023
  tail call void @sdsfree(i8* %167) #9, !dbg !3226
  %168 = tail call i8* @sdsempty() #9, !dbg !3227
  store i8* %168, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3228, !tbaa !2023
  store i64 256, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !3229, !tbaa !3198
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 15), align 8, !dbg !3230, !tbaa !3200
  %169 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3231, !tbaa !3049
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %169) #9, !dbg !3232
  %170 = load i32, i32* %153, align 8, !dbg !3233, !tbaa !955
  %171 = or i32 %170, 67108864, !dbg !3233
  store i32 %171, i32* %153, align 8, !dbg !3233, !tbaa !955
  br label %82

; <label>:172:                                    ; preds = %149
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.132, i64 0, i64 0)) #9, !dbg !3234
  br label %82, !dbg !3236

; <label>:173:                                    ; preds = %31, %108, %107
  tail call void @addReplySubcommandSyntaxError(%struct.client* nonnull %0) #9, !dbg !3237
  br label %82
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
define dso_local void @ldbDisable(%struct.client* nocapture) local_unnamed_addr #0 !dbg !2947 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3240
  %3 = load i32, i32* %2, align 8, !dbg !3241, !tbaa !955
  %4 = and i32 %3, -100663297, !dbg !3241
  store i32 %4, i32* %2, align 8, !dbg !3241, !tbaa !955
  ret void, !dbg !3242
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbEnable(%struct.client* nocapture) local_unnamed_addr #0 !dbg !3163 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3244
  %3 = load i32, i32* %2, align 8, !dbg !3245, !tbaa !955
  %4 = or i32 %3, 33554432, !dbg !3245
  store i32 %4, i32* %2, align 8, !dbg !3245, !tbaa !955
  %5 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3246, !tbaa !778
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 0, !dbg !3249
  %7 = load %struct.listNode*, %struct.listNode** %6, align 8, !dbg !3249, !tbaa !1354
  %8 = icmp eq %struct.listNode* %7, null, !dbg !3251
  br i1 %8, label %13, label %9, !dbg !3252

; <label>:9:                                      ; preds = %1, %9
  %10 = phi %struct.listNode* [ %11, %9 ], [ %7, %1 ]
  tail call void @listDelNode(%struct.list* nonnull %5, %struct.listNode* nonnull %10) #9, !dbg !3253
  %11 = load %struct.listNode*, %struct.listNode** %6, align 8, !dbg !3249, !tbaa !1354
  %12 = icmp eq %struct.listNode* %11, null, !dbg !3251
  br i1 %12, label %13, label %9, !dbg !3252, !llvm.loop !3184

; <label>:13:                                     ; preds = %9, %1
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !3254
  %15 = load i32, i32* %14, align 8, !dbg !3254, !tbaa !3188
  store i32 %15, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3255, !tbaa !2008
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !3256, !tbaa !2837
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3257, !tbaa !2798
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 9), align 8, !dbg !3258, !tbaa !1666
  %16 = load i8*, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3259, !tbaa !2023
  tail call void @sdsfree(i8* %16) #9, !dbg !3260
  %17 = tail call i8* @sdsempty() #9, !dbg !3261
  store i8* %17, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3262, !tbaa !2023
  store i64 256, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !3263, !tbaa !3198
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 15), align 8, !dbg !3264, !tbaa !3200
  ret void, !dbg !3265
}

; Function Attrs: noredzone
declare dso_local void @addReplySubcommandSyntaxError(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.list* @listCreate() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbFlushLog(%struct.list*) local_unnamed_addr #0 !dbg !3172 {
  %2 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 0, !dbg !3267
  %3 = load %struct.listNode*, %struct.listNode** %2, align 8, !dbg !3267, !tbaa !1354
  %4 = icmp eq %struct.listNode* %3, null, !dbg !3269
  br i1 %4, label %9, label %5, !dbg !3185

; <label>:5:                                      ; preds = %1, %5
  %6 = phi %struct.listNode* [ %7, %5 ], [ %3, %1 ]
  tail call void @listDelNode(%struct.list* nonnull %0, %struct.listNode* nonnull %6) #9, !dbg !3270
  %7 = load %struct.listNode*, %struct.listNode** %2, align 8, !dbg !3267, !tbaa !1354
  %8 = icmp eq %struct.listNode* %7, null, !dbg !3269
  br i1 %8, label %9, label %5, !dbg !3185, !llvm.loop !3184

; <label>:9:                                      ; preds = %5, %1
  ret void, !dbg !3271
}

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbLogWithMaxLen(i8*) local_unnamed_addr #0 !dbg !3272 {
  %2 = load i64, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !3278, !tbaa !3198
  %3 = icmp eq i64 %2, 0, !dbg !3280
  br i1 %3, label %35, label %4, !dbg !3281

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !3284
  %6 = load i8, i8* %5, align 1, !dbg !3284, !tbaa !485
  %7 = trunc i8 %6 to i3, !dbg !3286
  switch i3 %7, label %35 [
    i3 0, label %8
    i3 1, label %11
    i3 2, label %15
    i3 3, label %20
    i3 -4, label %25
  ], !dbg !3286

; <label>:8:                                      ; preds = %4
  %9 = lshr i8 %6, 3, !dbg !3287
  %10 = zext i8 %9 to i64, !dbg !3287
  br label %29, !dbg !3288

; <label>:11:                                     ; preds = %4
  %12 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !3289
  %13 = load i8, i8* %12, align 1, !dbg !3290, !tbaa !485
  %14 = zext i8 %13 to i64, !dbg !3289
  br label %29, !dbg !3291

; <label>:15:                                     ; preds = %4
  %16 = getelementptr inbounds i8, i8* %0, i64 -5, !dbg !3292
  %17 = bitcast i8* %16 to i16*, !dbg !3293
  %18 = load i16, i16* %17, align 1, !dbg !3293, !tbaa !1071
  %19 = zext i16 %18 to i64, !dbg !3292
  br label %29, !dbg !3294

; <label>:20:                                     ; preds = %4
  %21 = getelementptr inbounds i8, i8* %0, i64 -9, !dbg !3295
  %22 = bitcast i8* %21 to i32*, !dbg !3296
  %23 = load i32, i32* %22, align 1, !dbg !3296, !tbaa !969
  %24 = zext i32 %23 to i64, !dbg !3295
  br label %29, !dbg !3297

; <label>:25:                                     ; preds = %4
  %26 = getelementptr inbounds i8, i8* %0, i64 -17, !dbg !3298
  %27 = bitcast i8* %26 to i64*, !dbg !3299
  %28 = load i64, i64* %27, align 1, !dbg !3299, !tbaa !1014
  br label %29, !dbg !3300

; <label>:29:                                     ; preds = %8, %11, %15, %20, %25
  %30 = phi i64 [ %28, %25 ], [ %24, %20 ], [ %19, %15 ], [ %14, %11 ], [ %10, %8 ], !dbg !3301
  %31 = icmp ugt i64 %30, %2, !dbg !3302
  br i1 %31, label %32, label %35, !dbg !3303

; <label>:32:                                     ; preds = %29
  %33 = add i64 %2, -1, !dbg !3304
  tail call void @sdsrange(i8* nonnull %0, i64 0, i64 %33) #9, !dbg !3306
  %34 = tail call i8* @sdscatlen(i8* nonnull %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.133, i64 0, i64 0), i64 4) #9, !dbg !3307
  br label %35, !dbg !3308

; <label>:35:                                     ; preds = %4, %1, %32, %29
  %36 = phi i8* [ %34, %32 ], [ %0, %29 ], [ %0, %1 ], [ %0, %4 ]
  %37 = phi i1 [ true, %32 ], [ false, %29 ], [ false, %1 ], [ false, %4 ]
  %38 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3311, !tbaa !778
  %39 = tail call %struct.list* @listAddNodeTail(%struct.list* %38, i8* %36) #9, !dbg !3312
  %40 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 15), align 8, !dbg !3313
  %41 = icmp eq i32 %40, 0, !dbg !3315
  %42 = and i1 %37, %41, !dbg !3316
  br i1 %42, label %43, label %47, !dbg !3316

; <label>:43:                                     ; preds = %35
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 15), align 8, !dbg !3317, !tbaa !3200
  %44 = tail call i8* @sdsnew(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.134, i64 0, i64 0)) #9, !dbg !3319
  %45 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3322, !tbaa !778
  %46 = tail call %struct.list* @listAddNodeTail(%struct.list* %45, i8* %44) #9, !dbg !3323
  br label %47, !dbg !3324

; <label>:47:                                     ; preds = %43, %35
  ret void, !dbg !3325
}

; Function Attrs: noredzone
declare dso_local void @sdsrange(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbSendLogs() local_unnamed_addr #0 !dbg !3326 {
  %1 = tail call i8* @sdsempty() #9, !dbg !3331
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3333, !tbaa !778
  %3 = getelementptr inbounds %struct.list, %struct.list* %2, i64 0, i32 5, !dbg !3333
  %4 = load i64, i64* %3, align 8, !dbg !3333, !tbaa !1333
  %5 = trunc i64 %4 to i32, !dbg !3334
  %6 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i64 0, i64 0), i32 %5) #9, !dbg !3335
  %7 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3336, !tbaa !778
  %8 = getelementptr inbounds %struct.list, %struct.list* %7, i64 0, i32 5, !dbg !3336
  %9 = load i64, i64* %8, align 8, !dbg !3336, !tbaa !1333
  %10 = icmp eq i64 %9, 0, !dbg !3337
  br i1 %10, label %28, label %11, !dbg !3337

; <label>:11:                                     ; preds = %0, %11
  %12 = phi %struct.list* [ %24, %11 ], [ %7, %0 ]
  %13 = phi i8* [ %22, %11 ], [ %6, %0 ]
  %14 = getelementptr inbounds %struct.list, %struct.list* %12, i64 0, i32 0, !dbg !3338
  %15 = load %struct.listNode*, %struct.listNode** %14, align 8, !dbg !3338, !tbaa !1354
  %16 = tail call i8* @sdscatlen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i64 0, i64 0), i64 1) #9, !dbg !3340
  %17 = getelementptr inbounds %struct.listNode, %struct.listNode* %15, i64 0, i32 2, !dbg !3341
  %18 = load i8*, i8** %17, align 8, !dbg !3341, !tbaa !1355
  %19 = tail call i8* @sdsmapchars(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2) #9, !dbg !3342
  %20 = load i8*, i8** %17, align 8, !dbg !3343, !tbaa !1355
  %21 = tail call i8* @sdscatsds(i8* %16, i8* %20) #9, !dbg !3344
  %22 = tail call i8* @sdscatlen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i64 2) #9, !dbg !3345
  %23 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3346, !tbaa !778
  tail call void @listDelNode(%struct.list* %23, %struct.listNode* %15) #9, !dbg !3347
  %24 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3336, !tbaa !778
  %25 = getelementptr inbounds %struct.list, %struct.list* %24, i64 0, i32 5, !dbg !3336
  %26 = load i64, i64* %25, align 8, !dbg !3336, !tbaa !1333
  %27 = icmp eq i64 %26, 0, !dbg !3337
  br i1 %27, label %28, label %11, !dbg !3337, !llvm.loop !3348

; <label>:28:                                     ; preds = %11, %0
  %29 = phi i8* [ %6, %0 ], [ %22, %11 ], !dbg !3350
  %30 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3351, !tbaa !2008
  %31 = getelementptr inbounds i8, i8* %29, i64 -1, !dbg !3355
  %32 = load i8, i8* %31, align 1, !dbg !3355, !tbaa !485
  %33 = trunc i8 %32 to i3, !dbg !3357
  switch i3 %33, label %55 [
    i3 0, label %34
    i3 1, label %37
    i3 2, label %41
    i3 3, label %46
    i3 -4, label %51
  ], !dbg !3357

; <label>:34:                                     ; preds = %28
  %35 = lshr i8 %32, 3, !dbg !3358
  %36 = zext i8 %35 to i64, !dbg !3358
  br label %55, !dbg !3359

; <label>:37:                                     ; preds = %28
  %38 = getelementptr inbounds i8, i8* %29, i64 -3, !dbg !3360
  %39 = load i8, i8* %38, align 1, !dbg !3361, !tbaa !485
  %40 = zext i8 %39 to i64, !dbg !3360
  br label %55, !dbg !3362

; <label>:41:                                     ; preds = %28
  %42 = getelementptr inbounds i8, i8* %29, i64 -5, !dbg !3363
  %43 = bitcast i8* %42 to i16*, !dbg !3364
  %44 = load i16, i16* %43, align 1, !dbg !3364, !tbaa !1071
  %45 = zext i16 %44 to i64, !dbg !3363
  br label %55, !dbg !3365

; <label>:46:                                     ; preds = %28
  %47 = getelementptr inbounds i8, i8* %29, i64 -9, !dbg !3366
  %48 = bitcast i8* %47 to i32*, !dbg !3367
  %49 = load i32, i32* %48, align 1, !dbg !3367, !tbaa !969
  %50 = zext i32 %49 to i64, !dbg !3366
  br label %55, !dbg !3368

; <label>:51:                                     ; preds = %28
  %52 = getelementptr inbounds i8, i8* %29, i64 -17, !dbg !3369
  %53 = bitcast i8* %52 to i64*, !dbg !3370
  %54 = load i64, i64* %53, align 1, !dbg !3370, !tbaa !1014
  br label %55, !dbg !3371

; <label>:55:                                     ; preds = %28, %34, %37, %41, %46, %51
  %56 = phi i64 [ %54, %51 ], [ %50, %46 ], [ %45, %41 ], [ %40, %37 ], [ %36, %34 ], [ 0, %28 ], !dbg !3372
  %57 = tail call i64 @write(i32 %30, i8* nonnull %29, i64 %56) #9, !dbg !3373
  tail call void @sdsfree(i8* nonnull %29) #9, !dbg !3374
  ret void, !dbg !3375
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @ldbStartSession(%struct.client*) local_unnamed_addr #0 !dbg !3376 {
  %2 = alloca %struct.sigaction, align 8
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3416
  %4 = load i32, i32* %3, align 8, !dbg !3416, !tbaa !955
  %5 = and i32 %4, 67108864, !dbg !3417
  %6 = icmp eq i32 %5, 0, !dbg !3418
  %7 = lshr exact i32 %5, 26, !dbg !3418
  %8 = xor i32 %7, 1, !dbg !3418
  store i32 %8, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 2), align 8, !dbg !3419, !tbaa !3420
  br i1 %6, label %9, label %25, !dbg !3421

; <label>:9:                                      ; preds = %1
  %10 = tail call i32 @fork() #9, !dbg !3422
  switch i32 %10, label %20 [
    i32 -1, label %11
    i32 0, label %12
  ], !dbg !3424

; <label>:11:                                     ; preds = %9
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.137, i64 0, i64 0)) #9, !dbg !3425
  br label %123

; <label>:12:                                     ; preds = %9
  %13 = bitcast %struct.sigaction* %2 to i8*, !dbg !3427
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %13) #8, !dbg !3427
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 1, !dbg !3428
  %15 = call i32 @sigemptyset(i64* nonnull %14) #9, !dbg !3429
  %16 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 2, !dbg !3430
  store i32 0, i32* %16, align 8, !dbg !3431, !tbaa !3432
  %17 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i64 0, i32 0, i32 0, !dbg !3434
  store void (i32)* inttoptr (i64 1 to void (i32)*), void (i32)** %17, align 8, !dbg !3435, !tbaa !485
  %18 = call i32 @sigaction(i32 15, %struct.sigaction* nonnull %2, %struct.sigaction* null) #9, !dbg !3437
  %19 = call i32 @sigaction(i32 2, %struct.sigaction* nonnull %2, %struct.sigaction* null) #9, !dbg !3438
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.138, i64 0, i64 0)) #9, !dbg !3439
  call void @closeListeningSockets(i32 0) #9, !dbg !3440
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %13) #8, !dbg !3441
  br label %26

; <label>:20:                                     ; preds = %9
  %21 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3442, !tbaa !2016
  %22 = sext i32 %10 to i64, !dbg !3444
  %23 = inttoptr i64 %22 to i8*, !dbg !3445
  %24 = tail call %struct.list* @listAddNodeTail(%struct.list* %21, i8* %23) #9, !dbg !3446
  tail call void @freeClientAsync(%struct.client* nonnull %0) #9, !dbg !3447
  br label %123

; <label>:25:                                     ; preds = %1
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.139, i64 0, i64 0)) #9, !dbg !3448
  br label %26

; <label>:26:                                     ; preds = %12, %25
  %27 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3450, !tbaa !2008
  %28 = call i32 @anetBlock(i8* null, i32 %27) #9, !dbg !3451
  %29 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3452, !tbaa !2008
  %30 = call i32 @anetSendTimeout(i8* null, i32 %29, i64 5000) #9, !dbg !3453
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !3454, !tbaa !758
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3455
  %32 = load %struct.redisObject**, %struct.redisObject*** %31, align 8, !dbg !3455, !tbaa !1114
  %33 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %32, i64 1, !dbg !3456
  %34 = load %struct.redisObject*, %struct.redisObject** %33, align 8, !dbg !3456, !tbaa !992
  %35 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %34, i64 0, i32 2, !dbg !3457
  %36 = load i8*, i8** %35, align 8, !dbg !3457, !tbaa !1032
  %37 = call i8* @sdsdup(i8* %36) #9, !dbg !3458
  %38 = getelementptr inbounds i8, i8* %37, i64 -1, !dbg !3462
  %39 = load i8, i8* %38, align 1, !dbg !3462, !tbaa !485
  %40 = trunc i8 %39 to i3, !dbg !3464
  switch i3 %40, label %75 [
    i3 0, label %41
    i3 1, label %44
    i3 2, label %48
    i3 3, label %53
    i3 -4, label %58
  ], !dbg !3464

; <label>:41:                                     ; preds = %26
  %42 = lshr i8 %39, 3, !dbg !3465
  %43 = zext i8 %42 to i64, !dbg !3465
  br label %62, !dbg !3466

; <label>:44:                                     ; preds = %26
  %45 = getelementptr inbounds i8, i8* %37, i64 -3, !dbg !3467
  %46 = load i8, i8* %45, align 1, !dbg !3468, !tbaa !485
  %47 = zext i8 %46 to i64, !dbg !3467
  br label %62, !dbg !3469

; <label>:48:                                     ; preds = %26
  %49 = getelementptr inbounds i8, i8* %37, i64 -5, !dbg !3470
  %50 = bitcast i8* %49 to i16*, !dbg !3471
  %51 = load i16, i16* %50, align 1, !dbg !3471, !tbaa !1071
  %52 = zext i16 %51 to i64, !dbg !3470
  br label %62, !dbg !3472

; <label>:53:                                     ; preds = %26
  %54 = getelementptr inbounds i8, i8* %37, i64 -9, !dbg !3473
  %55 = bitcast i8* %54 to i32*, !dbg !3474
  %56 = load i32, i32* %55, align 1, !dbg !3474, !tbaa !969
  %57 = zext i32 %56 to i64, !dbg !3473
  br label %62, !dbg !3475

; <label>:58:                                     ; preds = %26
  %59 = getelementptr inbounds i8, i8* %37, i64 -17, !dbg !3476
  %60 = bitcast i8* %59 to i64*, !dbg !3477
  %61 = load i64, i64* %60, align 1, !dbg !3477, !tbaa !1014
  br label %62, !dbg !3478

; <label>:62:                                     ; preds = %41, %44, %48, %53, %58
  %63 = phi i64 [ %61, %58 ], [ %57, %53 ], [ %52, %48 ], [ %47, %44 ], [ %43, %41 ], !dbg !3479
  %64 = icmp eq i64 %63, 0, !dbg !3481
  br i1 %64, label %75, label %65, !dbg !3482

; <label>:65:                                     ; preds = %62, %70
  %66 = phi i64 [ %67, %70 ], [ %63, %62 ]
  %67 = add i64 %66, -1, !dbg !3483
  %68 = getelementptr inbounds i8, i8* %37, i64 %67, !dbg !3484
  %69 = load i8, i8* %68, align 1, !dbg !3484, !tbaa !485
  switch i8 %69, label %72 [
    i8 13, label %70
    i8 10, label %70
  ], !dbg !3485

; <label>:70:                                     ; preds = %65, %65
  store i8 0, i8* %68, align 1, !dbg !3486, !tbaa !485
  %71 = icmp eq i64 %67, 0, !dbg !3481
  br i1 %71, label %72, label %65, !dbg !3482, !llvm.loop !3488

; <label>:72:                                     ; preds = %65, %70
  %73 = phi i64 [ 0, %70 ], [ %66, %65 ]
  %74 = load i8, i8* %38, align 1, !dbg !3490, !tbaa !485
  br label %75, !dbg !3490

; <label>:75:                                     ; preds = %26, %72, %62
  %76 = phi i8 [ %39, %62 ], [ %74, %72 ], [ %39, %26 ], !dbg !3490
  %77 = phi i64 [ 0, %62 ], [ %73, %72 ], [ 0, %26 ], !dbg !3492
  %78 = trunc i8 %76 to i3, !dbg !3496
  switch i3 %78, label %96 [
    i3 0, label %79
    i3 1, label %82
    i3 2, label %85
    i3 3, label %89
    i3 -4, label %93
  ], !dbg !3496

; <label>:79:                                     ; preds = %75
  %80 = trunc i64 %77 to i8, !dbg !3498
  %81 = shl i8 %80, 3, !dbg !3498
  store i8 %81, i8* %38, align 1, !dbg !3499, !tbaa !485
  br label %96, !dbg !3500

; <label>:82:                                     ; preds = %75
  %83 = trunc i64 %77 to i8, !dbg !3501
  %84 = getelementptr inbounds i8, i8* %37, i64 -3, !dbg !3502
  store i8 %83, i8* %84, align 1, !dbg !3503, !tbaa !485
  br label %96, !dbg !3504

; <label>:85:                                     ; preds = %75
  %86 = trunc i64 %77 to i16, !dbg !3505
  %87 = getelementptr inbounds i8, i8* %37, i64 -5, !dbg !3506
  %88 = bitcast i8* %87 to i16*, !dbg !3507
  store i16 %86, i16* %88, align 1, !dbg !3508, !tbaa !1071
  br label %96, !dbg !3509

; <label>:89:                                     ; preds = %75
  %90 = trunc i64 %77 to i32, !dbg !3510
  %91 = getelementptr inbounds i8, i8* %37, i64 -9, !dbg !3511
  %92 = bitcast i8* %91 to i32*, !dbg !3512
  store i32 %90, i32* %92, align 1, !dbg !3513, !tbaa !969
  br label %96, !dbg !3514

; <label>:93:                                     ; preds = %75
  %94 = getelementptr inbounds i8, i8* %37, i64 -17, !dbg !3515
  %95 = bitcast i8* %94 to i64*, !dbg !3516
  store i64 %77, i64* %95, align 1, !dbg !3517, !tbaa !1014
  br label %96, !dbg !3518

; <label>:96:                                     ; preds = %75, %79, %82, %85, %89, %93
  %97 = phi i8 [ %76, %75 ], [ %81, %79 ], [ %76, %82 ], [ %76, %85 ], [ %76, %89 ], [ %76, %93 ], !dbg !3519
  %98 = trunc i8 %97 to i3, !dbg !3523
  switch i3 %98, label %120 [
    i3 0, label %99
    i3 1, label %102
    i3 2, label %106
    i3 3, label %111
    i3 -4, label %116
  ], !dbg !3523

; <label>:99:                                     ; preds = %96
  %100 = lshr i8 %97, 3, !dbg !3524
  %101 = zext i8 %100 to i64, !dbg !3524
  br label %120, !dbg !3525

; <label>:102:                                    ; preds = %96
  %103 = getelementptr inbounds i8, i8* %37, i64 -3, !dbg !3526
  %104 = load i8, i8* %103, align 1, !dbg !3527, !tbaa !485
  %105 = zext i8 %104 to i64, !dbg !3526
  br label %120, !dbg !3528

; <label>:106:                                    ; preds = %96
  %107 = getelementptr inbounds i8, i8* %37, i64 -5, !dbg !3529
  %108 = bitcast i8* %107 to i16*, !dbg !3530
  %109 = load i16, i16* %108, align 1, !dbg !3530, !tbaa !1071
  %110 = zext i16 %109 to i64, !dbg !3529
  br label %120, !dbg !3531

; <label>:111:                                    ; preds = %96
  %112 = getelementptr inbounds i8, i8* %37, i64 -9, !dbg !3532
  %113 = bitcast i8* %112 to i32*, !dbg !3533
  %114 = load i32, i32* %113, align 1, !dbg !3533, !tbaa !969
  %115 = zext i32 %114 to i64, !dbg !3532
  br label %120, !dbg !3534

; <label>:116:                                    ; preds = %96
  %117 = getelementptr inbounds i8, i8* %37, i64 -17, !dbg !3535
  %118 = bitcast i8* %117 to i64*, !dbg !3536
  %119 = load i64, i64* %118, align 1, !dbg !3536, !tbaa !1014
  br label %120, !dbg !3537

; <label>:120:                                    ; preds = %96, %99, %102, %106, %111, %116
  %121 = phi i64 [ %119, %116 ], [ %115, %111 ], [ %110, %106 ], [ %105, %102 ], [ %101, %99 ], [ 0, %96 ], !dbg !3538
  %122 = call i8** @sdssplitlen(i8* nonnull %37, i64 %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i64 0, i64 0), i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11)) #9, !dbg !3539
  store i8** %122, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !3540, !tbaa !2018
  call void @sdsfree(i8* nonnull %37) #9, !dbg !3541
  br label %123

; <label>:123:                                    ; preds = %20, %11, %120
  %124 = phi i32 [ 1, %120 ], [ 0, %20 ], [ 0, %11 ], !dbg !3542
  ret i32 %124, !dbg !3543
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
define dso_local void @ldbEndSession(%struct.client*) local_unnamed_addr #0 !dbg !3544 {
  %2 = tail call i8* @sdsnew(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.141, i64 0, i64 0)) #9, !dbg !3548
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3551, !tbaa !778
  %4 = tail call %struct.list* @listAddNodeTail(%struct.list* %3, i8* %2) #9, !dbg !3552
  tail call void @ldbSendLogs() #10, !dbg !3553
  %5 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 2), align 8, !dbg !3554, !tbaa !3420
  %6 = icmp eq i32 %5, 0, !dbg !3556
  br i1 %6, label %11, label %7, !dbg !3557

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !3558
  %9 = load i32, i32* %8, align 8, !dbg !3558, !tbaa !3188
  %10 = tail call i32 @writeToClient(i32 %9, %struct.client* %0, i32 0) #9, !dbg !3560
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.142, i64 0, i64 0)) #9, !dbg !3561
  tail call void @exitFromChild(i32 0) #9, !dbg !3562
  br label %12, !dbg !3563

; <label>:11:                                     ; preds = %1
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.143, i64 0, i64 0)) #9, !dbg !3564
  br label %12

; <label>:12:                                     ; preds = %11, %7
  %13 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3566, !tbaa !2008
  %14 = tail call i32 @anetNonBlock(i8* null, i32 %13) #9, !dbg !3567
  %15 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !3568, !tbaa !2008
  %16 = tail call i32 @anetSendTimeout(i8* null, i32 %15, i64 0) #9, !dbg !3569
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3570
  %18 = load i32, i32* %17, align 8, !dbg !3571, !tbaa !955
  %19 = or i32 %18, 64, !dbg !3571
  store i32 %19, i32* %17, align 8, !dbg !3571, !tbaa !955
  %20 = load i8**, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !3572, !tbaa !2018
  %21 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3573, !tbaa !2020
  tail call void @sdsfreesplitres(i8** %20, i32 %21) #9, !dbg !3574
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3575, !tbaa !2020
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 1), align 4, !dbg !3576, !tbaa !758
  ret void, !dbg !3577
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
define dso_local i32 @ldbRemoveChild(i32) local_unnamed_addr #0 !dbg !3578 {
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3585, !tbaa !2016
  %3 = sext i32 %0 to i64, !dbg !3586
  %4 = inttoptr i64 %3 to i8*, !dbg !3587
  %5 = tail call %struct.listNode* @listSearchKey(%struct.list* %2, i8* %4) #9, !dbg !3588
  %6 = icmp eq %struct.listNode* %5, null, !dbg !3590
  br i1 %6, label %9, label %7, !dbg !3592

; <label>:7:                                      ; preds = %1
  %8 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3593, !tbaa !2016
  tail call void @listDelNode(%struct.list* %8, %struct.listNode* nonnull %5) #9, !dbg !3595
  br label %9, !dbg !3596

; <label>:9:                                      ; preds = %1, %7
  %10 = phi i32 [ 1, %7 ], [ 0, %1 ], !dbg !3597
  ret i32 %10, !dbg !3598
}

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listSearchKey(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: norecurse noredzone nounwind readonly
define dso_local i32 @ldbPendingChildren() local_unnamed_addr #6 !dbg !3599 {
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3602, !tbaa !2016
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 5, !dbg !3602
  %3 = load i64, i64* %2, align 8, !dbg !3602, !tbaa !1333
  %4 = trunc i64 %3 to i32, !dbg !3602
  ret i32 %4, !dbg !3603
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbKillForkedSessions() local_unnamed_addr #0 !dbg !3604 {
  %1 = alloca %struct.listIter, align 8
  %2 = bitcast %struct.listIter* %1 to i8*, !dbg !3615
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3615
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3616, !tbaa !2016
  call void @listRewind(%struct.list* %3, %struct.listIter* nonnull %1) #9, !dbg !3618
  %4 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #9, !dbg !3619
  %5 = icmp eq %struct.listNode* %4, null, !dbg !3621
  br i1 %5, label %17, label %6, !dbg !3621

; <label>:6:                                      ; preds = %0, %6
  %7 = phi %struct.listNode* [ %15, %6 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.listNode, %struct.listNode* %7, i64 0, i32 2, !dbg !3622
  %9 = bitcast i8** %8 to i64*, !dbg !3622
  %10 = load i64, i64* %9, align 8, !dbg !3622, !tbaa !1355
  %11 = trunc i64 %10 to i32, !dbg !3623
  %12 = shl i64 %10, 32, !dbg !3625
  %13 = ashr exact i64 %12, 32, !dbg !3625
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.144, i64 0, i64 0), i64 %13) #9, !dbg !3626
  %14 = call i32 @kill(i32 %11, i32 9) #9, !dbg !3627
  %15 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #9, !dbg !3619
  %16 = icmp eq %struct.listNode* %15, null, !dbg !3621
  br i1 %16, label %17, label %6, !dbg !3621, !llvm.loop !3628

; <label>:17:                                     ; preds = %6, %0
  %18 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3630, !tbaa !2016
  call void @listRelease(%struct.list* %18) #9, !dbg !3631
  %19 = call %struct.list* @listCreate() #9, !dbg !3632
  store %struct.list* %19, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 5), align 8, !dbg !3633, !tbaa !2016
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3634
  ret void, !dbg !3634
}

; Function Attrs: noredzone
declare dso_local void @listRewind(%struct.list*, %struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listNext(%struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @kill(i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listRelease(%struct.list*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind readonly
define dso_local i8* @ldbGetSourceLine(i32) local_unnamed_addr #7 !dbg !2872 {
  %2 = icmp slt i32 %0, 1, !dbg !3636
  %3 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3637
  %4 = icmp slt i32 %3, %0, !dbg !3638
  %5 = or i1 %2, %4, !dbg !3639
  br i1 %5, label %12, label %6, !dbg !3639

; <label>:6:                                      ; preds = %1
  %7 = add nsw i32 %0, -1, !dbg !3640
  %8 = load i8**, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !3642, !tbaa !2018
  %9 = sext i32 %7 to i64, !dbg !3643
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9, !dbg !3643
  %11 = load i8*, i8** %10, align 8, !dbg !3643, !tbaa !992
  br label %12, !dbg !3644

; <label>:12:                                     ; preds = %1, %6
  %13 = phi i8* [ %11, %6 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i64 0, i64 0), %1 ], !dbg !3645
  ret i8* %13, !dbg !3646
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @ldbIsBreakpoint(i32) local_unnamed_addr #7 !dbg !2787 {
  %2 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3649, !tbaa !2798
  %3 = icmp sgt i32 %2, 0, !dbg !3650
  br i1 %3, label %4, label %14, !dbg !2802

; <label>:4:                                      ; preds = %1
  %5 = sext i32 %2 to i64, !dbg !2802
  br label %8, !dbg !2802

; <label>:6:                                      ; preds = %8
  %7 = icmp slt i64 %13, %5, !dbg !3650
  br i1 %7, label %8, label %14, !dbg !2802, !llvm.loop !2801

; <label>:8:                                      ; preds = %4, %6
  %9 = phi i64 [ 0, %4 ], [ %13, %6 ]
  %10 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %9, !dbg !3651
  %11 = load i32, i32* %10, align 4, !dbg !3651, !tbaa !969
  %12 = icmp eq i32 %11, %0, !dbg !3652
  %13 = add nuw nsw i64 %9, 1, !dbg !3653
  br i1 %12, label %14, label %6, !dbg !3654

; <label>:14:                                     ; preds = %8, %6, %1
  %15 = phi i32 [ 0, %1 ], [ 0, %6 ], [ 1, %8 ], !dbg !3655
  ret i32 %15, !dbg !3656
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ldbAddBreakpoint(i32) local_unnamed_addr #0 !dbg !3657 {
  %2 = icmp slt i32 %0, 1, !dbg !3661
  %3 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3663
  %4 = icmp slt i32 %3, %0, !dbg !3664
  %5 = or i1 %2, %4, !dbg !3665
  br i1 %5, label %25, label %6, !dbg !3665

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3670, !tbaa !2798
  %8 = icmp sgt i32 %7, 0, !dbg !3671
  br i1 %8, label %9, label %21, !dbg !3672

; <label>:9:                                      ; preds = %6
  %10 = sext i32 %7 to i64, !dbg !3672
  br label %13, !dbg !3672

; <label>:11:                                     ; preds = %13
  %12 = icmp slt i64 %18, %10, !dbg !3671
  br i1 %12, label %13, label %19, !dbg !3672, !llvm.loop !2801

; <label>:13:                                     ; preds = %11, %9
  %14 = phi i64 [ 0, %9 ], [ %18, %11 ]
  %15 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %14, !dbg !3673
  %16 = load i32, i32* %15, align 4, !dbg !3673, !tbaa !969
  %17 = icmp eq i32 %16, %0, !dbg !3674
  %18 = add nuw nsw i64 %14, 1, !dbg !3675
  br i1 %17, label %25, label %11, !dbg !3676

; <label>:19:                                     ; preds = %11
  %20 = icmp eq i32 %7, 64, !dbg !3677
  br i1 %20, label %25, label %21, !dbg !3678

; <label>:21:                                     ; preds = %6, %19
  %22 = add nsw i32 %7, 1, !dbg !3679
  store i32 %22, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3679, !tbaa !2798
  %23 = sext i32 %7 to i64, !dbg !3681
  %24 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %23, !dbg !3681
  store i32 %0, i32* %24, align 4, !dbg !3682, !tbaa !969
  br label %25, !dbg !3683

; <label>:25:                                     ; preds = %13, %19, %1, %21
  %26 = phi i32 [ 1, %21 ], [ 0, %1 ], [ 0, %19 ], [ 0, %13 ], !dbg !3684
  ret i32 %26, !dbg !3685
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ldbDelBreakpoint(i32) local_unnamed_addr #0 !dbg !3686 {
  %2 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3692, !tbaa !2798
  %3 = icmp sgt i32 %2, 0, !dbg !3695
  br i1 %3, label %4, label %25, !dbg !3696

; <label>:4:                                      ; preds = %1
  %5 = sext i32 %2 to i64, !dbg !3696
  br label %6, !dbg !3696

; <label>:6:                                      ; preds = %4, %22
  %7 = phi i64 [ 0, %4 ], [ %23, %22 ]
  %8 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %7, !dbg !3697
  %9 = load i32, i32* %8, align 4, !dbg !3697, !tbaa !969
  %10 = icmp eq i32 %9, %0, !dbg !3700
  br i1 %10, label %11, label %22, !dbg !3701

; <label>:11:                                     ; preds = %6
  %12 = trunc i64 %7 to i32, !dbg !3691
  %13 = and i64 %7, 4294967295, !dbg !3697
  %14 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %13, !dbg !3697
  %15 = add nsw i32 %2, -1, !dbg !3702
  store i32 %15, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3702, !tbaa !2798
  %16 = bitcast i32* %14 to i8*, !dbg !3704
  %17 = getelementptr inbounds i32, i32* %14, i64 1, !dbg !3705
  %18 = bitcast i32* %17 to i8*, !dbg !3706
  %19 = sub nsw i32 %15, %12, !dbg !3707
  %20 = sext i32 %19 to i64, !dbg !3708
  %21 = tail call i8* @memmove(i8* nonnull %16, i8* nonnull %18, i64 %20) #9, !dbg !3709
  br label %25, !dbg !3710

; <label>:22:                                     ; preds = %6
  %23 = add nuw nsw i64 %7, 1, !dbg !3711
  %24 = icmp slt i64 %23, %5, !dbg !3695
  br i1 %24, label %6, label %25, !dbg !3696, !llvm.loop !3712

; <label>:25:                                     ; preds = %22, %1, %11
  %26 = phi i32 [ 1, %11 ], [ 0, %1 ], [ 0, %22 ], !dbg !3714
  ret i32 %26, !dbg !3715
}

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8** @ldbReplParseCommand(i32* nocapture) local_unnamed_addr #0 !dbg !3716 {
  %2 = load i8*, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !3731, !tbaa !2023
  %3 = getelementptr inbounds i8, i8* %2, i64 -1, !dbg !3735
  %4 = load i8, i8* %3, align 1, !dbg !3735, !tbaa !485
  %5 = trunc i8 %4 to i3, !dbg !3737
  switch i3 %5, label %90 [
    i3 0, label %6
    i3 1, label %9
    i3 2, label %13
    i3 3, label %18
    i3 -4, label %23
  ], !dbg !3737

; <label>:6:                                      ; preds = %1
  %7 = lshr i8 %4, 3, !dbg !3738
  %8 = zext i8 %7 to i64, !dbg !3738
  br label %27, !dbg !3739

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds i8, i8* %2, i64 -3, !dbg !3740
  %11 = load i8, i8* %10, align 1, !dbg !3741, !tbaa !485
  %12 = zext i8 %11 to i64, !dbg !3740
  br label %27, !dbg !3742

; <label>:13:                                     ; preds = %1
  %14 = getelementptr inbounds i8, i8* %2, i64 -5, !dbg !3743
  %15 = bitcast i8* %14 to i16*, !dbg !3744
  %16 = load i16, i16* %15, align 1, !dbg !3744, !tbaa !1071
  %17 = zext i16 %16 to i64, !dbg !3743
  br label %27, !dbg !3745

; <label>:18:                                     ; preds = %1
  %19 = getelementptr inbounds i8, i8* %2, i64 -9, !dbg !3746
  %20 = bitcast i8* %19 to i32*, !dbg !3747
  %21 = load i32, i32* %20, align 1, !dbg !3747, !tbaa !969
  %22 = zext i32 %21 to i64, !dbg !3746
  br label %27, !dbg !3748

; <label>:23:                                     ; preds = %1
  %24 = getelementptr inbounds i8, i8* %2, i64 -17, !dbg !3749
  %25 = bitcast i8* %24 to i64*, !dbg !3750
  %26 = load i64, i64* %25, align 1, !dbg !3750, !tbaa !1014
  br label %27, !dbg !3751

; <label>:27:                                     ; preds = %6, %9, %13, %18, %23
  %28 = phi i64 [ %26, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %9 ], [ %8, %6 ], !dbg !3752
  %29 = icmp eq i64 %28, 0, !dbg !3753
  br i1 %29, label %90, label %30, !dbg !3754

; <label>:30:                                     ; preds = %27
  %31 = tail call i8* @sdsdup(i8* %2) #9, !dbg !3755
  %32 = tail call i8* @strchr(i8* %31, i32 42) #9, !dbg !3758
  %33 = icmp eq i8* %32, null, !dbg !3759
  br i1 %33, label %87, label %34, !dbg !3761

; <label>:34:                                     ; preds = %30
  %35 = tail call i8* @strstr(i8* nonnull %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !3762
  %36 = icmp eq i8* %35, null, !dbg !3763
  br i1 %36, label %87, label %37, !dbg !3765

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !3766
  store i8 0, i8* %35, align 1, !dbg !3768, !tbaa !485
  %39 = tail call i32 @atoi(i8* nonnull %38) #9, !dbg !3769
  store i32 %39, i32* %0, align 4, !dbg !3770, !tbaa !969
  %40 = add i32 %39, -1, !dbg !3771
  %41 = icmp ugt i32 %40, 1023, !dbg !3771
  br i1 %41, label %87, label %42, !dbg !3771

; <label>:42:                                     ; preds = %37
  %43 = sext i32 %39 to i64, !dbg !3773
  %44 = shl nsw i64 %43, 3, !dbg !3774
  %45 = tail call i8* @zmalloc(i64 %44) #9, !dbg !3775
  %46 = bitcast i8* %45 to i8**, !dbg !3775
  br label %47, !dbg !3776

; <label>:47:                                     ; preds = %75, %42
  %48 = phi i64 [ %76, %75 ], [ 0, %42 ], !dbg !3777
  %49 = phi i32 [ %70, %75 ], [ 0, %42 ], !dbg !3777
  %50 = phi i8* [ %72, %75 ], [ %35, %42 ]
  %51 = getelementptr inbounds i8, i8* %50, i64 2, !dbg !3778
  %52 = load i32, i32* %0, align 4, !dbg !3779, !tbaa !969
  %53 = sext i32 %52 to i64, !dbg !3780
  %54 = icmp slt i64 %48, %53, !dbg !3780
  br i1 %54, label %55, label %80, !dbg !3776

; <label>:55:                                     ; preds = %47
  %56 = load i8, i8* %51, align 1, !dbg !3781, !tbaa !485
  %57 = icmp eq i8 %56, 36, !dbg !3783
  br i1 %57, label %58, label %81, !dbg !3784

; <label>:58:                                     ; preds = %55
  %59 = tail call i8* @strstr(i8* nonnull %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !3785
  %60 = icmp eq i8* %59, null, !dbg !3786
  br i1 %60, label %83, label %61, !dbg !3788

; <label>:61:                                     ; preds = %58
  %62 = getelementptr inbounds i8, i8* %50, i64 3, !dbg !3789
  store i8 0, i8* %59, align 1, !dbg !3790, !tbaa !485
  %63 = getelementptr inbounds i8, i8* %59, i64 2, !dbg !3791
  %64 = tail call i32 @atoi(i8* nonnull %62) #9, !dbg !3792
  %65 = add i32 %64, -1, !dbg !3794
  %66 = icmp ugt i32 %65, 1023, !dbg !3794
  br i1 %66, label %85, label %67, !dbg !3794

; <label>:67:                                     ; preds = %61
  %68 = sext i32 %64 to i64, !dbg !3796
  %69 = tail call i8* @sdsnewlen(i8* nonnull %63, i64 %68) #9, !dbg !3797
  %70 = add nuw nsw i32 %49, 1, !dbg !3798
  %71 = getelementptr inbounds i8*, i8** %46, i64 %48, !dbg !3799
  store i8* %69, i8** %71, align 8, !dbg !3800, !tbaa !992
  %72 = getelementptr inbounds i8, i8* %63, i64 %68, !dbg !3801
  %73 = load i8, i8* %72, align 1, !dbg !3802, !tbaa !485
  %74 = icmp eq i8 %73, 13, !dbg !3804
  br i1 %74, label %75, label %87, !dbg !3805

; <label>:75:                                     ; preds = %67
  %76 = add nuw nsw i64 %48, 1, !dbg !3798
  %77 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !3806
  %78 = load i8, i8* %77, align 1, !dbg !3806, !tbaa !485
  %79 = icmp eq i8 %78, 10, !dbg !3807
  br i1 %79, label %47, label %87

; <label>:80:                                     ; preds = %47
  tail call void @sdsfree(i8* %31) #9, !dbg !3808
  br label %90, !dbg !3809

; <label>:81:                                     ; preds = %55
  %82 = trunc i64 %48 to i32, !dbg !3784
  br label %87, !dbg !3810

; <label>:83:                                     ; preds = %58
  %84 = trunc i64 %48 to i32, !dbg !3784
  br label %87, !dbg !3810

; <label>:85:                                     ; preds = %61
  %86 = trunc i64 %48 to i32, !dbg !3784
  br label %87, !dbg !3810

; <label>:87:                                     ; preds = %67, %75, %81, %83, %85, %34, %30, %37
  %88 = phi i32 [ 0, %37 ], [ 0, %34 ], [ 0, %30 ], [ %82, %81 ], [ %84, %83 ], [ %86, %85 ], [ %70, %75 ], [ %70, %67 ], !dbg !3811
  %89 = phi i8** [ null, %37 ], [ null, %34 ], [ null, %30 ], [ %46, %81 ], [ %46, %83 ], [ %46, %85 ], [ %46, %75 ], [ %46, %67 ], !dbg !3811
  tail call void @sdsfreesplitres(i8** %89, i32 %88) #9, !dbg !3810
  tail call void @sdsfree(i8* %31) #9, !dbg !3812
  br label %90, !dbg !3813

; <label>:90:                                     ; preds = %1, %80, %87, %27
  %91 = phi i8** [ null, %27 ], [ null, %87 ], [ %46, %80 ], [ null, %1 ], !dbg !3811
  ret i8** %91, !dbg !3814
}

; Function Attrs: noredzone
declare dso_local i8* @strstr(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @atoi(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbLogSourceLine(i32) local_unnamed_addr #0 !dbg !2862 {
  %2 = icmp slt i32 %0, 1, !dbg !3818
  %3 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3819
  %4 = icmp slt i32 %3, %0, !dbg !3820
  %5 = or i1 %2, %4, !dbg !3821
  br i1 %5, label %12, label %6, !dbg !3821

; <label>:6:                                      ; preds = %1
  %7 = add nsw i32 %0, -1, !dbg !3822
  %8 = load i8**, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !3824, !tbaa !2018
  %9 = sext i32 %7 to i64, !dbg !3825
  %10 = getelementptr inbounds i8*, i8** %8, i64 %9, !dbg !3825
  %11 = load i8*, i8** %10, align 8, !dbg !3825, !tbaa !992
  br label %12, !dbg !3826

; <label>:12:                                     ; preds = %1, %6
  %13 = phi i8* [ %11, %6 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i64 0, i64 0), %1 ], !dbg !3827
  %14 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3832, !tbaa !2798
  %15 = icmp sgt i32 %14, 0, !dbg !3833
  br i1 %15, label %16, label %26, !dbg !3834

; <label>:16:                                     ; preds = %12
  %17 = sext i32 %14 to i64, !dbg !3834
  br label %20, !dbg !3834

; <label>:18:                                     ; preds = %20
  %19 = icmp slt i64 %25, %17, !dbg !3833
  br i1 %19, label %20, label %26, !dbg !3834, !llvm.loop !2801

; <label>:20:                                     ; preds = %18, %16
  %21 = phi i64 [ 0, %16 ], [ %25, %18 ]
  %22 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %21, !dbg !3835
  %23 = load i32, i32* %22, align 4, !dbg !3835, !tbaa !969
  %24 = icmp eq i32 %23, %0, !dbg !3836
  %25 = add nuw nsw i64 %21, 1, !dbg !3837
  br i1 %24, label %29, label %18, !dbg !3838

; <label>:26:                                     ; preds = %18, %12
  %27 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !3839, !tbaa !1686
  %28 = icmp eq i32 %27, %0, !dbg !3840
  br label %33, !dbg !3841

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !3839, !tbaa !1686
  %31 = icmp eq i32 %30, %0, !dbg !3840
  %32 = select i1 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.146, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i64 0, i64 0), !dbg !3845
  br label %33, !dbg !3841

; <label>:33:                                     ; preds = %26, %29
  %34 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i64 0, i64 0), %26 ]
  %35 = phi i1 [ %31, %29 ], [ %28, %26 ]
  %36 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148, i64 0, i64 0), %29 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i64 0, i64 0), %26 ]
  %37 = select i1 %35, i8* %34, i8* %36, !dbg !3845
  %38 = tail call i8* @sdsempty() #9, !dbg !3847
  %39 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.150, i64 0, i64 0), i8* %37, i32 %0, i8* %13) #9, !dbg !3848
  %40 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3852, !tbaa !778
  %41 = tail call %struct.list* @listAddNodeTail(%struct.list* %40, i8* %39) #9, !dbg !3853
  ret void, !dbg !3854
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbList(i32, i32) local_unnamed_addr #0 !dbg !3855 {
  %3 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3865, !tbaa !2020
  %4 = icmp slt i32 %3, 1, !dbg !3868
  br i1 %4, label %65, label %5, !dbg !3869

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i32 %0, 0
  br label %7, !dbg !3869

; <label>:7:                                      ; preds = %60, %5
  %8 = phi i32 [ %62, %60 ], [ %3, %5 ]
  %9 = phi i64 [ %61, %60 ], [ 1, %5 ]
  br i1 %6, label %17, label %10, !dbg !3870

; <label>:10:                                     ; preds = %7
  %11 = trunc i64 %9 to i32, !dbg !3873
  %12 = sub i32 %0, %11, !dbg !3873
  %13 = tail call i32 @abs(i32 %12) #9, !dbg !3873
  %14 = icmp sgt i32 %13, %1, !dbg !3874
  br i1 %14, label %60, label %15, !dbg !3875

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3876
  br label %17, !dbg !3875

; <label>:17:                                     ; preds = %15, %7
  %18 = phi i32 [ %16, %15 ], [ %8, %7 ], !dbg !3876
  %19 = sext i32 %18 to i64, !dbg !3881
  %20 = icmp sgt i64 %9, %19, !dbg !3881
  br i1 %20, label %26, label %21, !dbg !3882

; <label>:21:                                     ; preds = %17
  %22 = add nsw i64 %9, -1, !dbg !3883
  %23 = load i8**, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !3885, !tbaa !2018
  %24 = getelementptr inbounds i8*, i8** %23, i64 %22, !dbg !3886
  %25 = load i8*, i8** %24, align 8, !dbg !3886, !tbaa !992
  br label %26, !dbg !3887

; <label>:26:                                     ; preds = %21, %17
  %27 = phi i8* [ %25, %21 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i64 0, i64 0), %17 ], !dbg !3888
  %28 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !3893, !tbaa !2798
  %29 = icmp sgt i32 %28, 0, !dbg !3894
  br i1 %29, label %30, label %41, !dbg !3895

; <label>:30:                                     ; preds = %26
  %31 = sext i32 %28 to i64, !dbg !3895
  br label %34, !dbg !3895

; <label>:32:                                     ; preds = %34
  %33 = icmp slt i64 %40, %31, !dbg !3894
  br i1 %33, label %34, label %41, !dbg !3895, !llvm.loop !2801

; <label>:34:                                     ; preds = %32, %30
  %35 = phi i64 [ 0, %30 ], [ %40, %32 ]
  %36 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %35, !dbg !3896
  %37 = load i32, i32* %36, align 4, !dbg !3896, !tbaa !969
  %38 = zext i32 %37 to i64, !dbg !3897
  %39 = icmp eq i64 %9, %38, !dbg !3897
  %40 = add nuw nsw i64 %35, 1, !dbg !3898
  br i1 %39, label %45, label %32, !dbg !3899

; <label>:41:                                     ; preds = %32, %26
  %42 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !3900, !tbaa !1686
  %43 = zext i32 %42 to i64, !dbg !3901
  %44 = icmp eq i64 %9, %43, !dbg !3901
  br label %50, !dbg !3902

; <label>:45:                                     ; preds = %34
  %46 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !3900, !tbaa !1686
  %47 = zext i32 %46 to i64, !dbg !3901
  %48 = icmp eq i64 %9, %47, !dbg !3901
  %49 = select i1 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.146, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i64 0, i64 0), !dbg !3903
  br label %50, !dbg !3902

; <label>:50:                                     ; preds = %41, %45
  %51 = phi i8* [ %49, %45 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i64 0, i64 0), %41 ]
  %52 = phi i1 [ %48, %45 ], [ %44, %41 ]
  %53 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148, i64 0, i64 0), %45 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i64 0, i64 0), %41 ]
  %54 = select i1 %52, i8* %51, i8* %53, !dbg !3903
  %55 = tail call i8* @sdsempty() #9, !dbg !3905
  %56 = trunc i64 %9 to i32, !dbg !3906
  %57 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.150, i64 0, i64 0), i8* %54, i32 %56, i8* %27) #9, !dbg !3906
  %58 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !3910, !tbaa !778
  %59 = tail call %struct.list* @listAddNodeTail(%struct.list* %58, i8* %57) #9, !dbg !3911
  br label %60, !dbg !3912

; <label>:60:                                     ; preds = %10, %50
  %61 = add nuw nsw i64 %9, 1, !dbg !3913
  %62 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !3865, !tbaa !2020
  %63 = sext i32 %62 to i64, !dbg !3868
  %64 = icmp slt i64 %9, %63, !dbg !3868
  br i1 %64, label %7, label %65, !dbg !3869, !llvm.loop !3914

; <label>:65:                                     ; preds = %60, %2
  ret void, !dbg !3916
}

; Function Attrs: noredzone
declare dso_local i32 @abs(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @ldbCatStackValueRec(i8*, %struct.lua_State*, i32, i32) local_unnamed_addr #0 !dbg !3917 {
  %5 = alloca i64, align 8
  %6 = tail call i32 @lua_type(%struct.lua_State* %1, i32 %2) #9, !dbg !3942
  %7 = add nsw i32 %3, 1, !dbg !3944
  %8 = icmp eq i32 %3, 10, !dbg !3946
  br i1 %8, label %9, label %11, !dbg !3947

; <label>:9:                                      ; preds = %4
  %10 = tail call i8* @sdscat(i8* %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.151, i64 0, i64 0)) #9, !dbg !3948
  br label %139, !dbg !3949

; <label>:11:                                     ; preds = %4
  switch i32 %6, label %137 [
    i32 4, label %12
    i32 1, label %17
    i32 3, label %22
    i32 0, label %25
    i32 5, label %27
    i32 6, label %126
    i32 7, label %126
    i32 8, label %126
    i32 2, label %126
  ], !dbg !3950

; <label>:12:                                     ; preds = %11
  %13 = bitcast i64* %5 to i8*, !dbg !3951
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #8, !dbg !3951
  %14 = call i8* @lua_tolstring(%struct.lua_State* %1, i32 %2, i64* nonnull %5) #9, !dbg !3953
  %15 = load i64, i64* %5, align 8, !dbg !3955, !tbaa !1014
  %16 = call i8* @sdscatrepr(i8* %0, i8* %14, i64 %15) #9, !dbg !3956
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #8, !dbg !3957
  br label %139, !dbg !3958

; <label>:17:                                     ; preds = %11
  %18 = tail call i32 @lua_toboolean(%struct.lua_State* %1, i32 %2) #9, !dbg !3959
  %19 = icmp eq i32 %18, 0, !dbg !3959
  %20 = select i1 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.153, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), !dbg !3959
  %21 = tail call i8* @sdscat(i8* %0, i8* %20) #9, !dbg !3960
  br label %139, !dbg !3961

; <label>:22:                                     ; preds = %11
  %23 = tail call double @lua_tonumber(%struct.lua_State* %1, i32 %2) #9, !dbg !3962
  %24 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.154, i64 0, i64 0), double %23) #9, !dbg !3963
  br label %139, !dbg !3964

; <label>:25:                                     ; preds = %11
  %26 = tail call i8* @sdscatlen(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.155, i64 0, i64 0), i64 3) #9, !dbg !3965
  br label %139, !dbg !3966

; <label>:27:                                     ; preds = %11
  %28 = tail call i8* @sdsempty() #9, !dbg !3969
  %29 = tail call i8* @sdsempty() #9, !dbg !3971
  tail call void @lua_pushnil(%struct.lua_State* %1) #9, !dbg !3973
  %30 = add nsw i32 %2, -1, !dbg !3974
  %31 = tail call i32 @lua_next(%struct.lua_State* %1, i32 %30) #9, !dbg !3975
  %32 = icmp eq i32 %31, 0, !dbg !3976
  br i1 %32, label %59, label %33, !dbg !3976

; <label>:33:                                     ; preds = %27, %47
  %34 = phi i8* [ %55, %47 ], [ %29, %27 ]
  %35 = phi i8* [ %50, %47 ], [ %28, %27 ]
  %36 = phi i32 [ %48, %47 ], [ 1, %27 ]
  %37 = phi i32 [ %56, %47 ], [ 1, %27 ]
  %38 = icmp eq i32 %36, 0, !dbg !3977
  br i1 %38, label %47, label %39, !dbg !3980

; <label>:39:                                     ; preds = %33
  %40 = tail call i32 @lua_type(%struct.lua_State* %1, i32 -2) #9, !dbg !3981
  %41 = icmp eq i32 %40, 3, !dbg !3982
  br i1 %41, label %42, label %46, !dbg !3983

; <label>:42:                                     ; preds = %39
  %43 = tail call double @lua_tonumber(%struct.lua_State* %1, i32 -2) #9, !dbg !3984
  %44 = sitofp i32 %37 to double, !dbg !3985
  %45 = fcmp une double %43, %44, !dbg !3986
  br i1 %45, label %46, label %47, !dbg !3987

; <label>:46:                                     ; preds = %39, %42
  br label %47, !dbg !3988

; <label>:47:                                     ; preds = %33, %46, %42
  %48 = phi i32 [ 0, %46 ], [ %36, %42 ], [ 0, %33 ], !dbg !3989
  %49 = tail call i8* @ldbCatStackValueRec(i8* %35, %struct.lua_State* %1, i32 -1, i32 %7) #10, !dbg !3990
  %50 = tail call i8* @sdscatlen(i8* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i64 0, i64 0), i64 2) #9, !dbg !3991
  %51 = tail call i8* @sdscatlen(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.157, i64 0, i64 0), i64 1) #9, !dbg !3992
  %52 = tail call i8* @ldbCatStackValueRec(i8* %51, %struct.lua_State* %1, i32 -2, i32 %7) #10, !dbg !3993
  %53 = tail call i8* @sdscatlen(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.158, i64 0, i64 0), i64 2) #9, !dbg !3994
  %54 = tail call i8* @ldbCatStackValueRec(i8* %53, %struct.lua_State* %1, i32 -1, i32 %7) #10, !dbg !3995
  %55 = tail call i8* @sdscatlen(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i64 0, i64 0), i64 2) #9, !dbg !3996
  tail call void @lua_settop(%struct.lua_State* %1, i32 -2) #9, !dbg !3997
  %56 = add nuw nsw i32 %37, 1, !dbg !3998
  %57 = tail call i32 @lua_next(%struct.lua_State* %1, i32 %30) #9, !dbg !3975
  %58 = icmp eq i32 %57, 0, !dbg !3976
  br i1 %58, label %59, label %33, !dbg !3976, !llvm.loop !3999

; <label>:59:                                     ; preds = %47, %27
  %60 = phi i32 [ 1, %27 ], [ %48, %47 ], !dbg !4001
  %61 = phi i8* [ %28, %27 ], [ %50, %47 ], !dbg !4002
  %62 = phi i8* [ %29, %27 ], [ %55, %47 ], !dbg !4002
  %63 = getelementptr inbounds i8, i8* %61, i64 -1, !dbg !4006
  %64 = load i8, i8* %63, align 1, !dbg !4006, !tbaa !485
  %65 = trunc i8 %64 to i3, !dbg !4008
  switch i3 %65, label %91 [
    i3 0, label %66
    i3 1, label %69
    i3 2, label %73
    i3 3, label %78
    i3 -4, label %83
  ], !dbg !4008

; <label>:66:                                     ; preds = %59
  %67 = lshr i8 %64, 3, !dbg !4009
  %68 = zext i8 %67 to i64, !dbg !4009
  br label %87, !dbg !4010

; <label>:69:                                     ; preds = %59
  %70 = getelementptr inbounds i8, i8* %61, i64 -3, !dbg !4011
  %71 = load i8, i8* %70, align 1, !dbg !4012, !tbaa !485
  %72 = zext i8 %71 to i64, !dbg !4011
  br label %87, !dbg !4013

; <label>:73:                                     ; preds = %59
  %74 = getelementptr inbounds i8, i8* %61, i64 -5, !dbg !4014
  %75 = bitcast i8* %74 to i16*, !dbg !4015
  %76 = load i16, i16* %75, align 1, !dbg !4015, !tbaa !1071
  %77 = zext i16 %76 to i64, !dbg !4014
  br label %87, !dbg !4016

; <label>:78:                                     ; preds = %59
  %79 = getelementptr inbounds i8, i8* %61, i64 -9, !dbg !4017
  %80 = bitcast i8* %79 to i32*, !dbg !4018
  %81 = load i32, i32* %80, align 1, !dbg !4018, !tbaa !969
  %82 = zext i32 %81 to i64, !dbg !4017
  br label %87, !dbg !4019

; <label>:83:                                     ; preds = %59
  %84 = getelementptr inbounds i8, i8* %61, i64 -17, !dbg !4020
  %85 = bitcast i8* %84 to i64*, !dbg !4021
  %86 = load i64, i64* %85, align 1, !dbg !4021, !tbaa !1014
  br label %87, !dbg !4022

; <label>:87:                                     ; preds = %66, %69, %73, %78, %83
  %88 = phi i64 [ %86, %83 ], [ %82, %78 ], [ %77, %73 ], [ %72, %69 ], [ %68, %66 ], !dbg !4023
  %89 = icmp eq i64 %88, 0, !dbg !4024
  br i1 %89, label %91, label %90, !dbg !4025

; <label>:90:                                     ; preds = %87
  tail call void @sdsrange(i8* nonnull %61, i64 0, i64 -3) #9, !dbg !4026
  br label %91, !dbg !4026

; <label>:91:                                     ; preds = %59, %87, %90
  %92 = getelementptr inbounds i8, i8* %62, i64 -1, !dbg !4030
  %93 = load i8, i8* %92, align 1, !dbg !4030, !tbaa !485
  %94 = trunc i8 %93 to i3, !dbg !4032
  switch i3 %94, label %120 [
    i3 0, label %95
    i3 1, label %98
    i3 2, label %102
    i3 3, label %107
    i3 -4, label %112
  ], !dbg !4032

; <label>:95:                                     ; preds = %91
  %96 = lshr i8 %93, 3, !dbg !4033
  %97 = zext i8 %96 to i64, !dbg !4033
  br label %116, !dbg !4034

; <label>:98:                                     ; preds = %91
  %99 = getelementptr inbounds i8, i8* %62, i64 -3, !dbg !4035
  %100 = load i8, i8* %99, align 1, !dbg !4036, !tbaa !485
  %101 = zext i8 %100 to i64, !dbg !4035
  br label %116, !dbg !4037

; <label>:102:                                    ; preds = %91
  %103 = getelementptr inbounds i8, i8* %62, i64 -5, !dbg !4038
  %104 = bitcast i8* %103 to i16*, !dbg !4039
  %105 = load i16, i16* %104, align 1, !dbg !4039, !tbaa !1071
  %106 = zext i16 %105 to i64, !dbg !4038
  br label %116, !dbg !4040

; <label>:107:                                    ; preds = %91
  %108 = getelementptr inbounds i8, i8* %62, i64 -9, !dbg !4041
  %109 = bitcast i8* %108 to i32*, !dbg !4042
  %110 = load i32, i32* %109, align 1, !dbg !4042, !tbaa !969
  %111 = zext i32 %110 to i64, !dbg !4041
  br label %116, !dbg !4043

; <label>:112:                                    ; preds = %91
  %113 = getelementptr inbounds i8, i8* %62, i64 -17, !dbg !4044
  %114 = bitcast i8* %113 to i64*, !dbg !4045
  %115 = load i64, i64* %114, align 1, !dbg !4045, !tbaa !1014
  br label %116, !dbg !4046

; <label>:116:                                    ; preds = %95, %98, %102, %107, %112
  %117 = phi i64 [ %115, %112 ], [ %111, %107 ], [ %106, %102 ], [ %101, %98 ], [ %97, %95 ], !dbg !4047
  %118 = icmp eq i64 %117, 0, !dbg !4048
  br i1 %118, label %120, label %119, !dbg !4049

; <label>:119:                                    ; preds = %116
  tail call void @sdsrange(i8* nonnull %62, i64 0, i64 -3) #9, !dbg !4050
  br label %120, !dbg !4050

; <label>:120:                                    ; preds = %91, %116, %119
  %121 = tail call i8* @sdscatlen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.159, i64 0, i64 0), i64 1) #9, !dbg !4051
  %122 = icmp eq i32 %60, 0, !dbg !4052
  %123 = select i1 %122, i8* %62, i8* %61, !dbg !4052
  %124 = tail call i8* @sdscatsds(i8* %121, i8* %123) #9, !dbg !4053
  %125 = tail call i8* @sdscatlen(i8* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.160, i64 0, i64 0), i64 1) #9, !dbg !4054
  tail call void @sdsfree(i8* nonnull %61) #9, !dbg !4055
  tail call void @sdsfree(i8* nonnull %62) #9, !dbg !4056
  br label %139, !dbg !4057

; <label>:126:                                    ; preds = %11, %11, %11, %11
  %127 = tail call i8* @lua_topointer(%struct.lua_State* %1, i32 %2) #9, !dbg !4058
  %128 = add i32 %6, -2, !dbg !4060
  %129 = icmp ult i32 %128, 7, !dbg !4060
  br i1 %129, label %130, label %134, !dbg !4060

; <label>:130:                                    ; preds = %126
  %131 = sext i32 %128 to i64, !dbg !4060
  %132 = getelementptr inbounds [7 x i8*], [7 x i8*]* @switch.table.ldbCatStackValueRec, i64 0, i64 %131, !dbg !4060
  %133 = load i8*, i8** %132, align 8, !dbg !4060
  br label %134, !dbg !4060

; <label>:134:                                    ; preds = %126, %130
  %135 = phi i8* [ %133, %130 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i64 0, i64 0), %126 ], !dbg !4061
  %136 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.166, i64 0, i64 0), i8* nonnull %135, i8* %127) #9, !dbg !4063
  br label %139, !dbg !4064

; <label>:137:                                    ; preds = %11
  %138 = tail call i8* @sdscat(i8* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.167, i64 0, i64 0)) #9, !dbg !4065
  br label %139, !dbg !4066

; <label>:139:                                    ; preds = %12, %17, %22, %25, %120, %134, %137, %9
  %140 = phi i8* [ %10, %9 ], [ %138, %137 ], [ %136, %134 ], [ %125, %120 ], [ %26, %25 ], [ %24, %22 ], [ %21, %17 ], [ %16, %12 ], !dbg !4067
  ret i8* %140, !dbg !4068
}

; Function Attrs: noredzone
declare dso_local i8* @sdscatrepr(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @lua_next(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @lua_topointer(%struct.lua_State*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbLogStackValue(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !4069 {
  %3 = tail call i8* @sdsnew(i8* %1) #9, !dbg !4076
  %4 = tail call i8* @ldbCatStackValueRec(i8* %3, %struct.lua_State* %0, i32 -1, i32 0) #9, !dbg !4082
  tail call void @ldbLogWithMaxLen(i8* %4) #10, !dbg !4083
  ret void, !dbg !4084
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ldbRedisProtocolToHuman(i8** nocapture, i8*) local_unnamed_addr #0 !dbg !4085 {
  %3 = alloca i64, align 8
  %4 = load i8, i8* %1, align 1, !dbg !4095, !tbaa !485
  %5 = sext i8 %4 to i32, !dbg !4095
  switch i32 %5, label %58 [
    i32 58, label %6
    i32 36, label %16
    i32 43, label %38
    i32 45, label %47
    i32 42, label %56
  ], !dbg !4096

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4106
  %8 = tail call i8* @strchr(i8* nonnull %7, i32 13) #9, !dbg !4107
  %9 = load i8*, i8** %0, align 8, !dbg !4109, !tbaa !992
  %10 = ptrtoint i8* %8 to i64, !dbg !4110
  %11 = ptrtoint i8* %1 to i64, !dbg !4110
  %12 = xor i64 %11, -1, !dbg !4111
  %13 = add i64 %10, %12, !dbg !4111
  %14 = tail call i8* @sdscatlen(i8* %9, i8* nonnull %7, i64 %13) #9, !dbg !4112
  store i8* %14, i8** %0, align 8, !dbg !4113, !tbaa !992
  %15 = getelementptr inbounds i8, i8* %8, i64 2, !dbg !4114
  br label %58, !dbg !4115

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4125
  %18 = tail call i8* @strchr(i8* nonnull %17, i32 13) #9, !dbg !4126
  %19 = bitcast i64* %3 to i8*, !dbg !4128
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #8, !dbg !4128
  %20 = ptrtoint i8* %18 to i64, !dbg !4129
  %21 = ptrtoint i8* %1 to i64, !dbg !4129
  %22 = xor i64 %21, -1, !dbg !4130
  %23 = add i64 %20, %22, !dbg !4130
  %24 = call i32 @string2ll(i8* nonnull %17, i64 %23, i64* nonnull %3) #9, !dbg !4132
  %25 = load i64, i64* %3, align 8, !dbg !4133, !tbaa !536
  %26 = icmp eq i64 %25, -1, !dbg !4135
  %27 = load i8*, i8** %0, align 8, !dbg !4136, !tbaa !992
  br i1 %26, label %28, label %30, !dbg !4138

; <label>:28:                                     ; preds = %16
  %29 = call i8* @sdscatlen(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i64 0, i64 0), i64 4) #9, !dbg !4139
  store i8* %29, i8** %0, align 8, !dbg !4141, !tbaa !992
  br label %35, !dbg !4142

; <label>:30:                                     ; preds = %16
  %31 = getelementptr inbounds i8, i8* %18, i64 2, !dbg !4143
  %32 = call i8* @sdscatrepr(i8* %27, i8* nonnull %31, i64 %25) #9, !dbg !4144
  store i8* %32, i8** %0, align 8, !dbg !4145, !tbaa !992
  %33 = load i64, i64* %3, align 8, !dbg !4146, !tbaa !536
  %34 = getelementptr inbounds i8, i8* %31, i64 %33, !dbg !4147
  br label %35, !dbg !4148

; <label>:35:                                     ; preds = %28, %30
  %36 = phi i8* [ %18, %28 ], [ %34, %30 ]
  %37 = getelementptr inbounds i8, i8* %36, i64 2, !dbg !4136
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #8, !dbg !4149
  br label %58, !dbg !4150

; <label>:38:                                     ; preds = %2
  %39 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4159
  %40 = tail call i8* @strchr(i8* nonnull %39, i32 13) #9, !dbg !4160
  %41 = load i8*, i8** %0, align 8, !dbg !4162, !tbaa !992
  %42 = ptrtoint i8* %40 to i64, !dbg !4163
  %43 = ptrtoint i8* %1 to i64, !dbg !4163
  %44 = sub i64 %42, %43, !dbg !4163
  %45 = tail call i8* @sdscatrepr(i8* %41, i8* nonnull %1, i64 %44) #9, !dbg !4164
  store i8* %45, i8** %0, align 8, !dbg !4165, !tbaa !992
  %46 = getelementptr inbounds i8, i8* %40, i64 2, !dbg !4166
  br label %58, !dbg !4167

; <label>:47:                                     ; preds = %2
  %48 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4171
  %49 = tail call i8* @strchr(i8* nonnull %48, i32 13) #9, !dbg !4172
  %50 = load i8*, i8** %0, align 8, !dbg !4174, !tbaa !992
  %51 = ptrtoint i8* %49 to i64, !dbg !4175
  %52 = ptrtoint i8* %1 to i64, !dbg !4175
  %53 = sub i64 %51, %52, !dbg !4175
  %54 = tail call i8* @sdscatrepr(i8* %50, i8* nonnull %1, i64 %53) #9, !dbg !4176
  store i8* %54, i8** %0, align 8, !dbg !4177, !tbaa !992
  %55 = getelementptr inbounds i8, i8* %49, i64 2, !dbg !4178
  br label %58, !dbg !4179

; <label>:56:                                     ; preds = %2
  %57 = tail call i8* @ldbRedisProtocolToHuman_MultiBulk(i8** %0, i8* nonnull %1) #10, !dbg !4180
  br label %58, !dbg !4181

; <label>:58:                                     ; preds = %2, %56, %47, %38, %35, %6
  %59 = phi i8* [ %1, %2 ], [ %57, %56 ], [ %55, %47 ], [ %46, %38 ], [ %37, %35 ], [ %15, %6 ], !dbg !4182
  ret i8* %59, !dbg !4183
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @ldbRedisProtocolToHuman_Int(i8** nocapture, i8*) local_unnamed_addr #0 !dbg !4098 {
  %3 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4186
  %4 = tail call i8* @strchr(i8* nonnull %3, i32 13) #9, !dbg !4187
  %5 = load i8*, i8** %0, align 8, !dbg !4189, !tbaa !992
  %6 = ptrtoint i8* %4 to i64, !dbg !4190
  %7 = ptrtoint i8* %1 to i64, !dbg !4190
  %8 = xor i64 %7, -1, !dbg !4191
  %9 = add i64 %6, %8, !dbg !4191
  %10 = tail call i8* @sdscatlen(i8* %5, i8* nonnull %3, i64 %9) #9, !dbg !4192
  store i8* %10, i8** %0, align 8, !dbg !4193, !tbaa !992
  %11 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !4194
  ret i8* %11, !dbg !4195
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @ldbRedisProtocolToHuman_Bulk(i8** nocapture, i8*) local_unnamed_addr #0 !dbg !4117 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4198
  %5 = tail call i8* @strchr(i8* nonnull %4, i32 13) #9, !dbg !4199
  %6 = bitcast i64* %3 to i8*, !dbg !4201
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !4201
  %7 = ptrtoint i8* %5 to i64, !dbg !4202
  %8 = ptrtoint i8* %1 to i64, !dbg !4202
  %9 = xor i64 %8, -1, !dbg !4203
  %10 = add i64 %7, %9, !dbg !4203
  %11 = call i32 @string2ll(i8* nonnull %4, i64 %10, i64* nonnull %3) #9, !dbg !4205
  %12 = load i64, i64* %3, align 8, !dbg !4206, !tbaa !536
  %13 = icmp eq i64 %12, -1, !dbg !4207
  %14 = load i8*, i8** %0, align 8, !dbg !4208, !tbaa !992
  br i1 %13, label %15, label %17, !dbg !4209

; <label>:15:                                     ; preds = %2
  %16 = call i8* @sdscatlen(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i64 0, i64 0), i64 4) #9, !dbg !4210
  store i8* %16, i8** %0, align 8, !dbg !4211, !tbaa !992
  br label %22, !dbg !4212

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !4213
  %19 = call i8* @sdscatrepr(i8* %14, i8* nonnull %18, i64 %12) #9, !dbg !4214
  store i8* %19, i8** %0, align 8, !dbg !4215, !tbaa !992
  %20 = load i64, i64* %3, align 8, !dbg !4216, !tbaa !536
  %21 = getelementptr inbounds i8, i8* %18, i64 %20, !dbg !4217
  br label %22, !dbg !4218

; <label>:22:                                     ; preds = %17, %15
  %23 = phi i8* [ %5, %15 ], [ %21, %17 ]
  %24 = getelementptr inbounds i8, i8* %23, i64 2, !dbg !4208
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !4219
  ret i8* %24, !dbg !4219
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @ldbRedisProtocolToHuman_Status(i8** nocapture, i8*) local_unnamed_addr #0 !dbg !4152 {
  %3 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4222
  %4 = tail call i8* @strchr(i8* nonnull %3, i32 13) #9, !dbg !4223
  %5 = load i8*, i8** %0, align 8, !dbg !4225, !tbaa !992
  %6 = ptrtoint i8* %4 to i64, !dbg !4226
  %7 = ptrtoint i8* %1 to i64, !dbg !4226
  %8 = sub i64 %6, %7, !dbg !4226
  %9 = tail call i8* @sdscatrepr(i8* %5, i8* %1, i64 %8) #9, !dbg !4227
  store i8* %9, i8** %0, align 8, !dbg !4228, !tbaa !992
  %10 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !4229
  ret i8* %10, !dbg !4230
}

; Function Attrs: noredzone nounwind
define dso_local i8* @ldbRedisProtocolToHuman_MultiBulk(i8** nocapture, i8*) local_unnamed_addr #0 !dbg !4231 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !4240
  %5 = tail call i8* @strchr(i8* nonnull %4, i32 13) #9, !dbg !4241
  %6 = bitcast i64* %3 to i8*, !dbg !4243
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #8, !dbg !4243
  %7 = ptrtoint i8* %5 to i64, !dbg !4245
  %8 = ptrtoint i8* %1 to i64, !dbg !4245
  %9 = xor i64 %8, -1, !dbg !4246
  %10 = add i64 %7, %9, !dbg !4246
  %11 = call i32 @string2ll(i8* nonnull %4, i64 %10, i64* nonnull %3) #9, !dbg !4248
  %12 = getelementptr inbounds i8, i8* %5, i64 2, !dbg !4249
  %13 = load i64, i64* %3, align 8, !dbg !4250, !tbaa !536
  %14 = icmp eq i64 %13, -1, !dbg !4252
  %15 = load i8*, i8** %0, align 8, !dbg !4253, !tbaa !992
  br i1 %14, label %16, label %18, !dbg !4254

; <label>:16:                                     ; preds = %2
  %17 = call i8* @sdscatlen(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.168, i64 0, i64 0), i64 4) #9, !dbg !4255
  br label %43, !dbg !4257

; <label>:18:                                     ; preds = %2
  %19 = call i8* @sdscatlen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.157, i64 0, i64 0), i64 1) #9, !dbg !4258
  store i8* %19, i8** %0, align 8, !dbg !4259, !tbaa !992
  %20 = load i64, i64* %3, align 8, !dbg !4260, !tbaa !536
  %21 = icmp sgt i64 %20, 0, !dbg !4263
  br i1 %21, label %22, label %39, !dbg !4264

; <label>:22:                                     ; preds = %18, %33
  %23 = phi i64 [ %35, %33 ], [ 0, %18 ]
  %24 = phi i8* [ %25, %33 ], [ %12, %18 ]
  %25 = call i8* @ldbRedisProtocolToHuman(i8** %0, i8* %24) #10, !dbg !4265
  %26 = load i64, i64* %3, align 8, !dbg !4267, !tbaa !536
  %27 = add nsw i64 %26, -1, !dbg !4269
  %28 = icmp eq i64 %27, %23, !dbg !4270
  br i1 %28, label %33, label %29, !dbg !4271

; <label>:29:                                     ; preds = %22
  %30 = load i8*, i8** %0, align 8, !dbg !4272, !tbaa !992
  %31 = call i8* @sdscatlen(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.169, i64 0, i64 0), i64 1) #9, !dbg !4273
  store i8* %31, i8** %0, align 8, !dbg !4274, !tbaa !992
  %32 = load i64, i64* %3, align 8, !dbg !4260, !tbaa !536
  br label %33, !dbg !4275

; <label>:33:                                     ; preds = %22, %29
  %34 = phi i64 [ %26, %22 ], [ %32, %29 ], !dbg !4260
  %35 = add nuw nsw i64 %23, 1, !dbg !4276
  %36 = icmp sgt i64 %34, %35, !dbg !4263
  br i1 %36, label %22, label %37, !dbg !4264, !llvm.loop !4277

; <label>:37:                                     ; preds = %33
  %38 = load i8*, i8** %0, align 8, !dbg !4279, !tbaa !992
  br label %39, !dbg !4279

; <label>:39:                                     ; preds = %37, %18
  %40 = phi i8* [ %19, %18 ], [ %38, %37 ], !dbg !4279
  %41 = phi i8* [ %12, %18 ], [ %25, %37 ], !dbg !4280
  %42 = call i8* @sdscatlen(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.170, i64 0, i64 0), i64 1) #9, !dbg !4281
  br label %43, !dbg !4282

; <label>:43:                                     ; preds = %39, %16
  %44 = phi i8* [ %42, %39 ], [ %17, %16 ]
  %45 = phi i8* [ %41, %39 ], [ %12, %16 ], !dbg !4253
  store i8* %44, i8** %0, align 8, !dbg !4283, !tbaa !992
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #8, !dbg !4284
  ret i8* %45, !dbg !4284
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbPrint(%struct.lua_State*, i8*) local_unnamed_addr #0 !dbg !4285 {
  %3 = alloca %struct.lua_Debug, align 8
  %4 = bitcast %struct.lua_Debug* %3 to i8*, !dbg !4296
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %4) #8, !dbg !4296
  %5 = call i32 @lua_getstack(%struct.lua_State* %0, i32 0, %struct.lua_Debug* nonnull %3) #9, !dbg !4299
  %6 = icmp eq i32 %5, 0, !dbg !4300
  br i1 %6, label %27, label %10, !dbg !4301

; <label>:7:                                      ; preds = %23, %10
  %8 = call i32 @lua_getstack(%struct.lua_State* %0, i32 %12, %struct.lua_Debug* nonnull %3) #9, !dbg !4299
  %9 = icmp eq i32 %8, 0, !dbg !4300
  br i1 %9, label %27, label %10, !dbg !4301

; <label>:10:                                     ; preds = %2, %7
  %11 = phi i32 [ %12, %7 ], [ 0, %2 ]
  %12 = add nuw nsw i32 %11, 1, !dbg !4302
  %13 = call i8* @lua_getlocal(%struct.lua_State* %0, %struct.lua_Debug* nonnull %3, i32 1) #9, !dbg !4304
  %14 = icmp eq i8* %13, null, !dbg !4306
  br i1 %14, label %7, label %15, !dbg !4307

; <label>:15:                                     ; preds = %10, %23
  %16 = phi i8* [ %25, %23 ], [ %13, %10 ]
  %17 = phi i32 [ %24, %23 ], [ 1, %10 ]
  %18 = call i32 @strcmp(i8* %1, i8* nonnull %16) #9, !dbg !4308
  %19 = icmp eq i32 %18, 0, !dbg !4311
  br i1 %19, label %20, label %23, !dbg !4312

; <label>:20:                                     ; preds = %15
  %21 = call i8* @sdsnew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i64 0, i64 0)) #9, !dbg !4317
  %22 = call i8* @ldbCatStackValueRec(i8* %21, %struct.lua_State* %0, i32 -1, i32 0) #9, !dbg !4323
  call void @ldbLogWithMaxLen(i8* %22) #9, !dbg !4324
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #9, !dbg !4325
  br label %40

; <label>:23:                                     ; preds = %15
  %24 = add nuw nsw i32 %17, 1, !dbg !4326
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #9, !dbg !4327
  %25 = call i8* @lua_getlocal(%struct.lua_State* %0, %struct.lua_Debug* nonnull %3, i32 %24) #9, !dbg !4304
  %26 = icmp eq i8* %25, null, !dbg !4306
  br i1 %26, label %7, label %15, !dbg !4307, !llvm.loop !4329

; <label>:27:                                     ; preds = %7, %2
  %28 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i64 0, i64 0)) #9, !dbg !4331
  %29 = icmp eq i32 %28, 0, !dbg !4331
  br i1 %29, label %33, label %30, !dbg !4333

; <label>:30:                                     ; preds = %27
  %31 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i64 0, i64 0)) #9, !dbg !4334
  %32 = icmp eq i32 %31, 0, !dbg !4334
  br i1 %32, label %33, label %36, !dbg !4335

; <label>:33:                                     ; preds = %30, %27
  call void @lua_getfield(%struct.lua_State* %0, i32 -10002, i8* %1) #9, !dbg !4336
  %34 = call i8* @sdsnew(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.172, i64 0, i64 0)) #9, !dbg !4341
  %35 = call i8* @ldbCatStackValueRec(i8* %34, %struct.lua_State* %0, i32 -1, i32 0) #9, !dbg !4347
  call void @ldbLogWithMaxLen(i8* %35) #9, !dbg !4348
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #9, !dbg !4349
  br label %40, !dbg !4350

; <label>:36:                                     ; preds = %30
  %37 = call i8* @sdsnew(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.173, i64 0, i64 0)) #9, !dbg !4351
  %38 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4355, !tbaa !778
  %39 = call %struct.list* @listAddNodeTail(%struct.list* %38, i8* %37) #9, !dbg !4356
  br label %40

; <label>:40:                                     ; preds = %33, %36, %20
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %4) #8, !dbg !4357
  ret void, !dbg !4357
}

; Function Attrs: noredzone
declare dso_local i8* @lua_getlocal(%struct.lua_State*, %struct.lua_Debug*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbPrintAll(%struct.lua_State*) local_unnamed_addr #0 !dbg !4358 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !4372
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %3) #8, !dbg !4372
  %4 = call i32 @lua_getstack(%struct.lua_State* %0, i32 0, %struct.lua_Debug* nonnull %2) #9, !dbg !4375
  %5 = icmp eq i32 %4, 0, !dbg !4376
  br i1 %5, label %28, label %6, !dbg !4377

; <label>:6:                                      ; preds = %1
  %7 = call i8* @lua_getlocal(%struct.lua_State* %0, %struct.lua_Debug* nonnull %2, i32 1) #9, !dbg !4379
  %8 = icmp eq i8* %7, null, !dbg !4381
  br i1 %8, label %28, label %9, !dbg !4382

; <label>:9:                                      ; preds = %6, %22
  %10 = phi i8* [ %24, %22 ], [ %7, %6 ]
  %11 = phi i32 [ %23, %22 ], [ 0, %6 ]
  %12 = phi i32 [ %13, %22 ], [ 1, %6 ]
  %13 = add nuw nsw i32 %12, 1, !dbg !4383
  %14 = call i8* @strstr(i8* nonnull %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.174, i64 0, i64 0)) #9, !dbg !4384
  %15 = icmp eq i8* %14, null, !dbg !4384
  br i1 %15, label %16, label %22, !dbg !4385

; <label>:16:                                     ; preds = %9
  %17 = call i8* @sdsempty() #9, !dbg !4386
  %18 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.175, i64 0, i64 0), i8* nonnull %10) #9, !dbg !4387
  %19 = call i8* @sdsnew(i8* %18) #9, !dbg !4392
  %20 = call i8* @ldbCatStackValueRec(i8* %19, %struct.lua_State* %0, i32 -1, i32 0) #9, !dbg !4398
  call void @ldbLogWithMaxLen(i8* %20) #9, !dbg !4399
  call void @sdsfree(i8* %18) #9, !dbg !4400
  %21 = add nsw i32 %11, 1, !dbg !4401
  br label %22, !dbg !4402

; <label>:22:                                     ; preds = %9, %16
  %23 = phi i32 [ %11, %9 ], [ %21, %16 ], !dbg !4403
  call void @lua_settop(%struct.lua_State* %0, i32 -2) #9, !dbg !4404
  %24 = call i8* @lua_getlocal(%struct.lua_State* %0, %struct.lua_Debug* nonnull %2, i32 %13) #9, !dbg !4379
  %25 = icmp eq i8* %24, null, !dbg !4381
  br i1 %25, label %26, label %9, !dbg !4382, !llvm.loop !4405

; <label>:26:                                     ; preds = %22
  %27 = icmp eq i32 %23, 0, !dbg !4407
  br i1 %27, label %28, label %32, !dbg !4409

; <label>:28:                                     ; preds = %6, %1, %26
  %29 = call i8* @sdsnew(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.176, i64 0, i64 0)) #9, !dbg !4410
  %30 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4414, !tbaa !778
  %31 = call %struct.list* @listAddNodeTail(%struct.list* %30, i8* %29) #9, !dbg !4415
  br label %32, !dbg !4416

; <label>:32:                                     ; preds = %28, %26
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %3) #8, !dbg !4417
  ret void, !dbg !4417
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbBreak(i8** nocapture readonly, i32) local_unnamed_addr #0 !dbg !4418 {
  %3 = alloca i64, align 8
  %4 = icmp eq i32 %1, 1, !dbg !4438
  br i1 %4, label %10, label %5, !dbg !4439

; <label>:5:                                      ; preds = %2
  %6 = icmp sgt i32 %1, 1, !dbg !4441
  br i1 %6, label %7, label %186, !dbg !4442

; <label>:7:                                      ; preds = %5
  %8 = bitcast i64* %3 to i8*
  %9 = zext i32 %1 to i64
  br label %73, !dbg !4442

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4443, !tbaa !2798
  %12 = icmp eq i32 %11, 0, !dbg !4444
  br i1 %12, label %13, label %17, !dbg !4445

; <label>:13:                                     ; preds = %10
  %14 = tail call i8* @sdsnew(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.177, i64 0, i64 0)) #9, !dbg !4446
  %15 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4450, !tbaa !778
  %16 = tail call %struct.list* @listAddNodeTail(%struct.list* %15, i8* %14) #9, !dbg !4451
  br label %186, !dbg !4452

; <label>:17:                                     ; preds = %10
  %18 = tail call i8* @sdsempty() #9, !dbg !4453
  %19 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4454, !tbaa !2798
  %20 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.178, i64 0, i64 0), i32 %19) #9, !dbg !4455
  %21 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4458, !tbaa !778
  %22 = tail call %struct.list* @listAddNodeTail(%struct.list* %21, i8* %20) #9, !dbg !4459
  %23 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4461, !tbaa !2798
  %24 = icmp sgt i32 %23, 0, !dbg !4464
  br i1 %24, label %25, label %186, !dbg !4465

; <label>:25:                                     ; preds = %17, %60
  %26 = phi i64 [ %69, %60 ], [ 0, %17 ]
  %27 = phi i32 [ %70, %60 ], [ %23, %17 ]
  %28 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %26, !dbg !4466
  %29 = load i32, i32* %28, align 4, !dbg !4466, !tbaa !969
  %30 = icmp slt i32 %29, 1, !dbg !4471
  %31 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !4472
  %32 = icmp slt i32 %31, %29, !dbg !4473
  %33 = or i1 %30, %32, !dbg !4474
  br i1 %33, label %40, label %34, !dbg !4474

; <label>:34:                                     ; preds = %25
  %35 = add nsw i32 %29, -1, !dbg !4475
  %36 = load i8**, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !4477, !tbaa !2018
  %37 = sext i32 %35 to i64, !dbg !4478
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37, !dbg !4478
  %39 = load i8*, i8** %38, align 8, !dbg !4478, !tbaa !992
  br label %40, !dbg !4479

; <label>:40:                                     ; preds = %34, %25
  %41 = phi i8* [ %39, %34 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i64 0, i64 0), %25 ], !dbg !4480
  %42 = icmp sgt i32 %27, 0, !dbg !4485
  br i1 %42, label %43, label %53, !dbg !4486

; <label>:43:                                     ; preds = %40
  %44 = sext i32 %27 to i64, !dbg !4486
  br label %47, !dbg !4486

; <label>:45:                                     ; preds = %47
  %46 = icmp slt i64 %52, %44, !dbg !4485
  br i1 %46, label %47, label %53, !dbg !4486, !llvm.loop !2801

; <label>:47:                                     ; preds = %45, %43
  %48 = phi i64 [ 0, %43 ], [ %52, %45 ]
  %49 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %48, !dbg !4487
  %50 = load i32, i32* %49, align 4, !dbg !4487, !tbaa !969
  %51 = icmp eq i32 %50, %29, !dbg !4488
  %52 = add nuw nsw i64 %48, 1, !dbg !4489
  br i1 %51, label %56, label %45, !dbg !4490

; <label>:53:                                     ; preds = %45, %40
  %54 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !4491, !tbaa !1686
  %55 = icmp eq i32 %54, %29, !dbg !4492
  br label %60, !dbg !4493

; <label>:56:                                     ; preds = %47
  %57 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !4491, !tbaa !1686
  %58 = icmp eq i32 %57, %29, !dbg !4492
  %59 = select i1 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.146, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i64 0, i64 0), !dbg !4494
  br label %60, !dbg !4493

; <label>:60:                                     ; preds = %53, %56
  %61 = phi i8* [ %59, %56 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i64 0, i64 0), %53 ]
  %62 = phi i1 [ %58, %56 ], [ %55, %53 ]
  %63 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148, i64 0, i64 0), %56 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i64 0, i64 0), %53 ]
  %64 = select i1 %62, i8* %61, i8* %63, !dbg !4494
  %65 = tail call i8* @sdsempty() #9, !dbg !4496
  %66 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.150, i64 0, i64 0), i8* %64, i32 %29, i8* %41) #9, !dbg !4497
  %67 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4501, !tbaa !778
  %68 = tail call %struct.list* @listAddNodeTail(%struct.list* %67, i8* %66) #9, !dbg !4502
  %69 = add nuw nsw i64 %26, 1, !dbg !4503
  %70 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4461, !tbaa !2798
  %71 = sext i32 %70 to i64, !dbg !4464
  %72 = icmp slt i64 %69, %71, !dbg !4464
  br i1 %72, label %25, label %186, !dbg !4465, !llvm.loop !4504

; <label>:73:                                     ; preds = %183, %7
  %74 = phi i64 [ 1, %7 ], [ %184, %183 ]
  %75 = getelementptr inbounds i8*, i8** %0, i64 %74, !dbg !4506
  %76 = load i8*, i8** %75, align 8, !dbg !4506, !tbaa !992
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #8, !dbg !4508
  %77 = getelementptr inbounds i8, i8* %76, i64 -1, !dbg !4512
  %78 = load i8, i8* %77, align 1, !dbg !4512, !tbaa !485
  %79 = trunc i8 %78 to i3, !dbg !4514
  switch i3 %79, label %101 [
    i3 0, label %80
    i3 1, label %83
    i3 2, label %87
    i3 3, label %92
    i3 -4, label %97
  ], !dbg !4514

; <label>:80:                                     ; preds = %73
  %81 = lshr i8 %78, 3, !dbg !4515
  %82 = zext i8 %81 to i64, !dbg !4515
  br label %101, !dbg !4516

; <label>:83:                                     ; preds = %73
  %84 = getelementptr inbounds i8, i8* %76, i64 -3, !dbg !4517
  %85 = load i8, i8* %84, align 1, !dbg !4518, !tbaa !485
  %86 = zext i8 %85 to i64, !dbg !4517
  br label %101, !dbg !4519

; <label>:87:                                     ; preds = %73
  %88 = getelementptr inbounds i8, i8* %76, i64 -5, !dbg !4520
  %89 = bitcast i8* %88 to i16*, !dbg !4521
  %90 = load i16, i16* %89, align 1, !dbg !4521, !tbaa !1071
  %91 = zext i16 %90 to i64, !dbg !4520
  br label %101, !dbg !4522

; <label>:92:                                     ; preds = %73
  %93 = getelementptr inbounds i8, i8* %76, i64 -9, !dbg !4523
  %94 = bitcast i8* %93 to i32*, !dbg !4524
  %95 = load i32, i32* %94, align 1, !dbg !4524, !tbaa !969
  %96 = zext i32 %95 to i64, !dbg !4523
  br label %101, !dbg !4525

; <label>:97:                                     ; preds = %73
  %98 = getelementptr inbounds i8, i8* %76, i64 -17, !dbg !4526
  %99 = bitcast i8* %98 to i64*, !dbg !4527
  %100 = load i64, i64* %99, align 1, !dbg !4527, !tbaa !1014
  br label %101, !dbg !4528

; <label>:101:                                    ; preds = %73, %80, %83, %87, %92, %97
  %102 = phi i64 [ %100, %97 ], [ %96, %92 ], [ %91, %87 ], [ %86, %83 ], [ %82, %80 ], [ 0, %73 ], !dbg !4529
  %103 = call i32 @string2l(i8* %76, i64 %102, i64* nonnull %3) #9, !dbg !4531
  %104 = icmp eq i32 %103, 0, !dbg !4531
  br i1 %104, label %105, label %110, !dbg !4532

; <label>:105:                                    ; preds = %101
  %106 = call i8* @sdsempty() #9, !dbg !4533
  %107 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.179, i64 0, i64 0), i8* %76) #9, !dbg !4535
  %108 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4538, !tbaa !778
  %109 = call %struct.list* @listAddNodeTail(%struct.list* %108, i8* %107) #9, !dbg !4539
  br label %183, !dbg !4540

; <label>:110:                                    ; preds = %101
  %111 = load i64, i64* %3, align 8, !dbg !4541, !tbaa !1014
  %112 = icmp eq i64 %111, 0, !dbg !4544
  br i1 %112, label %113, label %117, !dbg !4545

; <label>:113:                                    ; preds = %110
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4546, !tbaa !2798
  %114 = call i8* @sdsnew(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.180, i64 0, i64 0)) #9, !dbg !4548
  %115 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4551, !tbaa !778
  %116 = call %struct.list* @listAddNodeTail(%struct.list* %115, i8* %114) #9, !dbg !4552
  br label %183, !dbg !4553

; <label>:117:                                    ; preds = %110
  %118 = icmp sgt i64 %111, 0, !dbg !4554
  br i1 %118, label %119, label %150, !dbg !4556

; <label>:119:                                    ; preds = %117
  %120 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4557, !tbaa !2798
  %121 = icmp eq i32 %120, 64, !dbg !4560
  br i1 %121, label %122, label %126, !dbg !4561

; <label>:122:                                    ; preds = %119
  %123 = call i8* @sdsnew(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.181, i64 0, i64 0)) #9, !dbg !4562
  %124 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4566, !tbaa !778
  %125 = call %struct.list* @listAddNodeTail(%struct.list* %124, i8* %123) #9, !dbg !4567
  br label %183, !dbg !4568

; <label>:126:                                    ; preds = %119
  %127 = trunc i64 %111 to i32, !dbg !4569
  %128 = icmp slt i32 %127, 1, !dbg !4573
  %129 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !4574
  %130 = icmp slt i32 %129, %127, !dbg !4575
  %131 = or i1 %128, %130, !dbg !4576
  br i1 %131, label %146, label %132, !dbg !4576

; <label>:132:                                    ; preds = %126
  %133 = icmp sgt i32 %120, 0, !dbg !4580
  %134 = sext i32 %120 to i64, !dbg !4581
  br i1 %133, label %137, label %143, !dbg !4582

; <label>:135:                                    ; preds = %137
  %136 = icmp slt i64 %142, %134, !dbg !4580
  br i1 %136, label %137, label %143, !dbg !4582, !llvm.loop !2801

; <label>:137:                                    ; preds = %132, %135
  %138 = phi i64 [ %142, %135 ], [ 0, %132 ]
  %139 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %138, !dbg !4583
  %140 = load i32, i32* %139, align 4, !dbg !4583, !tbaa !969
  %141 = icmp eq i32 %140, %127, !dbg !4584
  %142 = add nuw nsw i64 %138, 1, !dbg !4585
  br i1 %141, label %146, label %135, !dbg !4586

; <label>:143:                                    ; preds = %135, %132
  %144 = add nsw i32 %120, 1, !dbg !4587
  store i32 %144, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4587, !tbaa !2798
  %145 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %134, !dbg !4588
  store i32 %127, i32* %145, align 4, !dbg !4589, !tbaa !969
  call void @ldbList(i32 %127, i32 1) #10, !dbg !4590
  br label %183, !dbg !4592

; <label>:146:                                    ; preds = %137, %126
  %147 = call i8* @sdsnew(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.182, i64 0, i64 0)) #9, !dbg !4593
  %148 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4597, !tbaa !778
  %149 = call %struct.list* @listAddNodeTail(%struct.list* %148, i8* %147) #9, !dbg !4598
  br label %183

; <label>:150:                                    ; preds = %117
  %151 = trunc i64 %111 to i32, !dbg !4599
  %152 = sub i32 0, %151, !dbg !4599
  %153 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4606, !tbaa !2798
  %154 = icmp sgt i32 %153, 0, !dbg !4607
  br i1 %154, label %155, label %179, !dbg !4608

; <label>:155:                                    ; preds = %150
  %156 = sext i32 %153 to i64, !dbg !4608
  br label %157, !dbg !4608

; <label>:157:                                    ; preds = %162, %155
  %158 = phi i64 [ 0, %155 ], [ %163, %162 ]
  %159 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %158, !dbg !4609
  %160 = load i32, i32* %159, align 4, !dbg !4609, !tbaa !969
  %161 = icmp eq i32 %160, %152, !dbg !4610
  br i1 %161, label %165, label %162, !dbg !4611

; <label>:162:                                    ; preds = %157
  %163 = add nuw nsw i64 %158, 1, !dbg !4612
  %164 = icmp slt i64 %163, %156, !dbg !4607
  br i1 %164, label %157, label %179, !dbg !4608, !llvm.loop !3712

; <label>:165:                                    ; preds = %157
  %166 = trunc i64 %158 to i32, !dbg !4605
  %167 = and i64 %158, 4294967295, !dbg !4609
  %168 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %167, !dbg !4609
  %169 = add nsw i32 %153, -1, !dbg !4613
  store i32 %169, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4613, !tbaa !2798
  %170 = bitcast i32* %168 to i8*, !dbg !4614
  %171 = getelementptr inbounds i32, i32* %168, i64 1, !dbg !4615
  %172 = bitcast i32* %171 to i8*, !dbg !4616
  %173 = sub nsw i32 %169, %166, !dbg !4617
  %174 = sext i32 %173 to i64, !dbg !4618
  %175 = call i8* @memmove(i8* nonnull %170, i8* nonnull %172, i64 %174) #9, !dbg !4619
  %176 = call i8* @sdsnew(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.183, i64 0, i64 0)) #9, !dbg !4620
  %177 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4623, !tbaa !778
  %178 = call %struct.list* @listAddNodeTail(%struct.list* %177, i8* %176) #9, !dbg !4624
  br label %183, !dbg !4625

; <label>:179:                                    ; preds = %162, %150
  %180 = call i8* @sdsnew(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.184, i64 0, i64 0)) #9, !dbg !4626
  %181 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4629, !tbaa !778
  %182 = call %struct.list* @listAddNodeTail(%struct.list* %181, i8* %180) #9, !dbg !4630
  br label %183

; <label>:183:                                    ; preds = %113, %179, %165, %122, %146, %143, %105
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #8, !dbg !4631
  %184 = add nuw nsw i64 %74, 1, !dbg !4632
  %185 = icmp eq i64 %184, %9, !dbg !4441
  br i1 %185, label %186, label %73, !dbg !4442, !llvm.loop !4633

; <label>:186:                                    ; preds = %183, %60, %5, %17, %13
  ret void, !dbg !4635
}

; Function Attrs: noredzone
declare dso_local i32 @string2l(i8*, i64, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbEval(%struct.lua_State*, i8**, i32) local_unnamed_addr #0 !dbg !4636 {
  %4 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !4648
  %5 = add nsw i32 %2, -1, !dbg !4649
  %6 = tail call i8* @sdsjoinsds(i8** nonnull %4, i32 %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1) #9, !dbg !4650
  %7 = tail call i8* @sdsnew(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.185, i64 0, i64 0)) #9, !dbg !4652
  %8 = tail call i8* @sdscatsds(i8* %7, i8* %6) #9, !dbg !4653
  %9 = getelementptr inbounds i8, i8* %8, i64 -1, !dbg !4658
  %10 = load i8, i8* %9, align 1, !dbg !4658, !tbaa !485
  %11 = trunc i8 %10 to i3, !dbg !4660
  switch i3 %11, label %33 [
    i3 0, label %12
    i3 1, label %15
    i3 2, label %19
    i3 3, label %24
    i3 -4, label %29
  ], !dbg !4660

; <label>:12:                                     ; preds = %3
  %13 = lshr i8 %10, 3, !dbg !4661
  %14 = zext i8 %13 to i64, !dbg !4661
  br label %33, !dbg !4662

; <label>:15:                                     ; preds = %3
  %16 = getelementptr inbounds i8, i8* %8, i64 -3, !dbg !4663
  %17 = load i8, i8* %16, align 1, !dbg !4664, !tbaa !485
  %18 = zext i8 %17 to i64, !dbg !4663
  br label %33, !dbg !4665

; <label>:19:                                     ; preds = %3
  %20 = getelementptr inbounds i8, i8* %8, i64 -5, !dbg !4666
  %21 = bitcast i8* %20 to i16*, !dbg !4667
  %22 = load i16, i16* %21, align 1, !dbg !4667, !tbaa !1071
  %23 = zext i16 %22 to i64, !dbg !4666
  br label %33, !dbg !4668

; <label>:24:                                     ; preds = %3
  %25 = getelementptr inbounds i8, i8* %8, i64 -9, !dbg !4669
  %26 = bitcast i8* %25 to i32*, !dbg !4670
  %27 = load i32, i32* %26, align 1, !dbg !4670, !tbaa !969
  %28 = zext i32 %27 to i64, !dbg !4669
  br label %33, !dbg !4671

; <label>:29:                                     ; preds = %3
  %30 = getelementptr inbounds i8, i8* %8, i64 -17, !dbg !4672
  %31 = bitcast i8* %30 to i64*, !dbg !4673
  %32 = load i64, i64* %31, align 1, !dbg !4673, !tbaa !1014
  br label %33, !dbg !4674

; <label>:33:                                     ; preds = %3, %12, %15, %19, %24, %29
  %34 = phi i64 [ %32, %29 ], [ %28, %24 ], [ %23, %19 ], [ %18, %15 ], [ %14, %12 ], [ 0, %3 ], !dbg !4675
  %35 = tail call i32 @luaL_loadbuffer(%struct.lua_State* %0, i8* %8, i64 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.186, i64 0, i64 0)) #9, !dbg !4676
  %36 = icmp eq i32 %35, 0, !dbg !4676
  br i1 %36, label %72, label %37, !dbg !4677

; <label>:37:                                     ; preds = %33
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9, !dbg !4678
  %38 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !4683
  %39 = load i8, i8* %38, align 1, !dbg !4683, !tbaa !485
  %40 = trunc i8 %39 to i3, !dbg !4685
  switch i3 %40, label %62 [
    i3 0, label %41
    i3 1, label %44
    i3 2, label %48
    i3 3, label %53
    i3 -4, label %58
  ], !dbg !4685

; <label>:41:                                     ; preds = %37
  %42 = lshr i8 %39, 3, !dbg !4686
  %43 = zext i8 %42 to i64, !dbg !4686
  br label %62, !dbg !4687

; <label>:44:                                     ; preds = %37
  %45 = getelementptr inbounds i8, i8* %6, i64 -3, !dbg !4688
  %46 = load i8, i8* %45, align 1, !dbg !4689, !tbaa !485
  %47 = zext i8 %46 to i64, !dbg !4688
  br label %62, !dbg !4690

; <label>:48:                                     ; preds = %37
  %49 = getelementptr inbounds i8, i8* %6, i64 -5, !dbg !4691
  %50 = bitcast i8* %49 to i16*, !dbg !4692
  %51 = load i16, i16* %50, align 1, !dbg !4692, !tbaa !1071
  %52 = zext i16 %51 to i64, !dbg !4691
  br label %62, !dbg !4693

; <label>:53:                                     ; preds = %37
  %54 = getelementptr inbounds i8, i8* %6, i64 -9, !dbg !4694
  %55 = bitcast i8* %54 to i32*, !dbg !4695
  %56 = load i32, i32* %55, align 1, !dbg !4695, !tbaa !969
  %57 = zext i32 %56 to i64, !dbg !4694
  br label %62, !dbg !4696

; <label>:58:                                     ; preds = %37
  %59 = getelementptr inbounds i8, i8* %6, i64 -17, !dbg !4697
  %60 = bitcast i8* %59 to i64*, !dbg !4698
  %61 = load i64, i64* %60, align 1, !dbg !4698, !tbaa !1014
  br label %62, !dbg !4699

; <label>:62:                                     ; preds = %37, %41, %44, %48, %53, %58
  %63 = phi i64 [ %61, %58 ], [ %57, %53 ], [ %52, %48 ], [ %47, %44 ], [ %43, %41 ], [ 0, %37 ], !dbg !4700
  %64 = tail call i32 @luaL_loadbuffer(%struct.lua_State* %0, i8* nonnull %6, i64 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.186, i64 0, i64 0)) #9, !dbg !4701
  %65 = icmp eq i32 %64, 0, !dbg !4701
  br i1 %65, label %72, label %66, !dbg !4702

; <label>:66:                                     ; preds = %62
  %67 = tail call i8* @sdsempty() #9, !dbg !4703
  %68 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #9, !dbg !4705
  %69 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %68) #9, !dbg !4706
  %70 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4709, !tbaa !778
  %71 = tail call %struct.list* @listAddNodeTail(%struct.list* %70, i8* %69) #9, !dbg !4710
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9, !dbg !4711
  tail call void @sdsfree(i8* nonnull %6) #9, !dbg !4712
  br label %84, !dbg !4713

; <label>:72:                                     ; preds = %62, %33
  tail call void @sdsfree(i8* %6) #9, !dbg !4714
  tail call void @sdsfree(i8* %8) #9, !dbg !4715
  %73 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 0, i32 1, i32 0) #9, !dbg !4716
  %74 = icmp eq i32 %73, 0, !dbg !4716
  br i1 %74, label %81, label %75, !dbg !4718

; <label>:75:                                     ; preds = %72
  %76 = tail call i8* @sdsempty() #9, !dbg !4719
  %77 = tail call i8* @lua_tolstring(%struct.lua_State* %0, i32 -1, i64* null) #9, !dbg !4721
  %78 = tail call i8* (i8*, i8*, ...) @sdscatfmt(i8* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %77) #9, !dbg !4722
  %79 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4725, !tbaa !778
  %80 = tail call %struct.list* @listAddNodeTail(%struct.list* %79, i8* %78) #9, !dbg !4726
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9, !dbg !4727
  br label %84, !dbg !4728

; <label>:81:                                     ; preds = %72
  %82 = tail call i8* @sdsnew(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.187, i64 0, i64 0)) #9, !dbg !4732
  %83 = tail call i8* @ldbCatStackValueRec(i8* %82, %struct.lua_State* %0, i32 -1, i32 0) #9, !dbg !4738
  tail call void @ldbLogWithMaxLen(i8* %83) #9, !dbg !4739
  tail call void @lua_settop(%struct.lua_State* %0, i32 -2) #9, !dbg !4740
  br label %84, !dbg !4741

; <label>:84:                                     ; preds = %81, %75, %66
  ret void, !dbg !4741
}

; Function Attrs: noredzone
declare dso_local i8* @sdsjoinsds(i8**, i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @ldbRedis(%struct.lua_State*, i8** nocapture readonly, i32) local_unnamed_addr #0 !dbg !4742 {
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !4752, !tbaa !1300
  tail call void @lua_getfield(%struct.lua_State* %0, i32 -10002, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0)) #9, !dbg !4754
  tail call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0)) #9, !dbg !4755
  tail call void @lua_gettable(%struct.lua_State* %0, i32 -2) #9, !dbg !4756
  %5 = icmp sgt i32 %2, 1, !dbg !4758
  br i1 %5, label %6, label %40, !dbg !4761

; <label>:6:                                      ; preds = %3
  %7 = zext i32 %2 to i64
  br label %8, !dbg !4762

; <label>:8:                                      ; preds = %36, %6
  %9 = phi i64 [ 1, %6 ], [ %38, %36 ]
  %10 = getelementptr inbounds i8*, i8** %1, i64 %9, !dbg !4762
  %11 = load i8*, i8** %10, align 8, !dbg !4762, !tbaa !992
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !4765
  %13 = load i8, i8* %12, align 1, !dbg !4765, !tbaa !485
  %14 = trunc i8 %13 to i3, !dbg !4767
  switch i3 %14, label %36 [
    i3 0, label %15
    i3 1, label %18
    i3 2, label %22
    i3 3, label %27
    i3 -4, label %32
  ], !dbg !4767

; <label>:15:                                     ; preds = %8
  %16 = lshr i8 %13, 3, !dbg !4768
  %17 = zext i8 %16 to i64, !dbg !4768
  br label %36, !dbg !4769

; <label>:18:                                     ; preds = %8
  %19 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !4770
  %20 = load i8, i8* %19, align 1, !dbg !4771, !tbaa !485
  %21 = zext i8 %20 to i64, !dbg !4770
  br label %36, !dbg !4772

; <label>:22:                                     ; preds = %8
  %23 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !4773
  %24 = bitcast i8* %23 to i16*, !dbg !4774
  %25 = load i16, i16* %24, align 1, !dbg !4774, !tbaa !1071
  %26 = zext i16 %25 to i64, !dbg !4773
  br label %36, !dbg !4775

; <label>:27:                                     ; preds = %8
  %28 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !4776
  %29 = bitcast i8* %28 to i32*, !dbg !4777
  %30 = load i32, i32* %29, align 1, !dbg !4777, !tbaa !969
  %31 = zext i32 %30 to i64, !dbg !4776
  br label %36, !dbg !4778

; <label>:32:                                     ; preds = %8
  %33 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !4779
  %34 = bitcast i8* %33 to i64*, !dbg !4780
  %35 = load i64, i64* %34, align 1, !dbg !4780, !tbaa !1014
  br label %36, !dbg !4781

; <label>:36:                                     ; preds = %8, %15, %18, %22, %27, %32
  %37 = phi i64 [ %35, %32 ], [ %31, %27 ], [ %26, %22 ], [ %21, %18 ], [ %17, %15 ], [ 0, %8 ], !dbg !4782
  tail call void @lua_pushlstring(%struct.lua_State* %0, i8* %11, i64 %37) #9, !dbg !4783
  %38 = add nuw nsw i64 %9, 1, !dbg !4784
  %39 = icmp eq i64 %38, %7, !dbg !4758
  br i1 %39, label %40, label %8, !dbg !4761, !llvm.loop !4785

; <label>:40:                                     ; preds = %36, %3
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !4787, !tbaa !2837
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !4788, !tbaa !1300
  %41 = add nsw i32 %2, -1, !dbg !4789
  %42 = tail call i32 @lua_pcall(%struct.lua_State* %0, i32 %41, i32 1, i32 0) #9, !dbg !4790
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !4791, !tbaa !2837
  store i32 %4, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 279), align 8, !dbg !4792, !tbaa !1300
  tail call void @lua_settop(%struct.lua_State* %0, i32 -3) #9, !dbg !4793
  ret void, !dbg !4794
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbTrace(%struct.lua_State*) local_unnamed_addr #0 !dbg !4795 {
  %2 = alloca %struct.lua_Debug, align 8
  %3 = bitcast %struct.lua_Debug* %2 to i8*, !dbg !4801
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %3) #8, !dbg !4801
  %4 = call i32 @lua_getstack(%struct.lua_State* %0, i32 0, %struct.lua_Debug* nonnull %2) #9, !dbg !4804
  %5 = icmp eq i32 %4, 0, !dbg !4805
  br i1 %5, label %70, label %6, !dbg !4805

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 9, i64 0
  %8 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 1
  %9 = getelementptr inbounds %struct.lua_Debug, %struct.lua_Debug* %2, i64 0, i32 5
  br label %10, !dbg !4805

; <label>:10:                                     ; preds = %6, %66
  %11 = phi i32 [ 0, %6 ], [ %67, %66 ]
  %12 = call i32 @lua_getinfo(%struct.lua_State* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.188, i64 0, i64 0), %struct.lua_Debug* nonnull %2) #9, !dbg !4806
  %13 = call i8* @strstr(i8* nonnull %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.189, i64 0, i64 0)) #9, !dbg !4808
  %14 = icmp eq i8* %13, null, !dbg !4810
  br i1 %14, label %66, label %15, !dbg !4811

; <label>:15:                                     ; preds = %10
  %16 = call i8* @sdsempty() #9, !dbg !4812
  %17 = icmp eq i32 %11, 0, !dbg !4814
  %18 = select i1 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.191, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.192, i64 0, i64 0), !dbg !4815
  %19 = load i8*, i8** %8, align 8, !dbg !4816, !tbaa !4817
  %20 = icmp eq i8* %19, null, !dbg !4818
  %21 = select i1 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.193, i64 0, i64 0), i8* %19, !dbg !4818
  %22 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.190, i64 0, i64 0), i8* %18, i8* %21) #9, !dbg !4819
  %23 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4822, !tbaa !778
  %24 = call %struct.list* @listAddNodeTail(%struct.list* %23, i8* %22) #9, !dbg !4823
  %25 = load i32, i32* %9, align 8, !dbg !4824, !tbaa !793
  %26 = icmp slt i32 %25, 1, !dbg !4829
  %27 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 11), align 8, !dbg !4830
  %28 = icmp slt i32 %27, %25, !dbg !4831
  %29 = or i1 %26, %28, !dbg !4832
  br i1 %29, label %36, label %30, !dbg !4832

; <label>:30:                                     ; preds = %15
  %31 = add nsw i32 %25, -1, !dbg !4833
  %32 = load i8**, i8*** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 10), align 8, !dbg !4835, !tbaa !2018
  %33 = sext i32 %31 to i64, !dbg !4836
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33, !dbg !4836
  %35 = load i8*, i8** %34, align 8, !dbg !4836, !tbaa !992
  br label %36, !dbg !4837

; <label>:36:                                     ; preds = %30, %15
  %37 = phi i8* [ %35, %30 ], [ getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i64 0, i64 0), %15 ], !dbg !4838
  %38 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4843, !tbaa !2798
  %39 = icmp sgt i32 %38, 0, !dbg !4844
  br i1 %39, label %40, label %50, !dbg !4845

; <label>:40:                                     ; preds = %36
  %41 = sext i32 %38 to i64, !dbg !4845
  br label %44, !dbg !4845

; <label>:42:                                     ; preds = %44
  %43 = icmp slt i64 %49, %41, !dbg !4844
  br i1 %43, label %44, label %50, !dbg !4845, !llvm.loop !2801

; <label>:44:                                     ; preds = %42, %40
  %45 = phi i64 [ 0, %40 ], [ %49, %42 ]
  %46 = getelementptr inbounds %struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 6, i64 %45, !dbg !4846
  %47 = load i32, i32* %46, align 4, !dbg !4846, !tbaa !969
  %48 = icmp eq i32 %47, %25, !dbg !4847
  %49 = add nuw nsw i64 %45, 1, !dbg !4848
  br i1 %48, label %53, label %42, !dbg !4849

; <label>:50:                                     ; preds = %42, %36
  %51 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !4850, !tbaa !1686
  %52 = icmp eq i32 %51, %25, !dbg !4851
  br label %57, !dbg !4852

; <label>:53:                                     ; preds = %44
  %54 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !4850, !tbaa !1686
  %55 = icmp eq i32 %54, %25, !dbg !4851
  %56 = select i1 %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.146, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i64 0, i64 0), !dbg !4853
  br label %57, !dbg !4852

; <label>:57:                                     ; preds = %50, %53
  %58 = phi i8* [ %56, %53 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.147, i64 0, i64 0), %50 ]
  %59 = phi i1 [ %55, %53 ], [ %52, %50 ]
  %60 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.148, i64 0, i64 0), %53 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i64 0, i64 0), %50 ]
  %61 = select i1 %59, i8* %58, i8* %60, !dbg !4853
  %62 = call i8* @sdsempty() #9, !dbg !4855
  %63 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.150, i64 0, i64 0), i8* %61, i32 %25, i8* %37) #9, !dbg !4856
  %64 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4860, !tbaa !778
  %65 = call %struct.list* @listAddNodeTail(%struct.list* %64, i8* %63) #9, !dbg !4861
  br label %66, !dbg !4862

; <label>:66:                                     ; preds = %10, %57
  %67 = add nuw nsw i32 %11, 1, !dbg !4863
  %68 = call i32 @lua_getstack(%struct.lua_State* %0, i32 %67, %struct.lua_Debug* nonnull %2) #9, !dbg !4804
  %69 = icmp eq i32 %68, 0, !dbg !4805
  br i1 %69, label %74, label %10, !dbg !4805, !llvm.loop !4864

; <label>:70:                                     ; preds = %1
  %71 = call i8* @sdsnew(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.194, i64 0, i64 0)) #9, !dbg !4866
  %72 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4871, !tbaa !778
  %73 = call %struct.list* @listAddNodeTail(%struct.list* %72, i8* %71) #9, !dbg !4872
  br label %74, !dbg !4873

; <label>:74:                                     ; preds = %66, %70
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %3) #8, !dbg !4874
  ret void, !dbg !4874
}

; Function Attrs: noredzone nounwind
define dso_local void @ldbMaxlen(i8** nocapture readonly, i32) local_unnamed_addr #0 !dbg !4875 {
  %3 = icmp eq i32 %1, 2, !dbg !4884
  br i1 %3, label %4, label %13, !dbg !4885

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %0, i64 1, !dbg !4886
  %6 = load i8*, i8** %5, align 8, !dbg !4886, !tbaa !992
  %7 = tail call i32 @atoi(i8* %6) #9, !dbg !4887
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 15), align 8, !dbg !4889, !tbaa !3200
  %8 = icmp ne i32 %7, 0, !dbg !4890
  %9 = icmp slt i32 %7, 61, !dbg !4892
  %10 = and i1 %8, %9, !dbg !4893
  %11 = sext i32 %7 to i64, !dbg !4894
  %12 = select i1 %10, i64 60, i64 %11, !dbg !4894
  store i64 %12, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !4895, !tbaa !3198
  br label %15, !dbg !4896

; <label>:13:                                     ; preds = %2
  %14 = load i64, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !4897, !tbaa !3198
  br label %15, !dbg !4897

; <label>:15:                                     ; preds = %13, %4
  %16 = phi i64 [ %14, %13 ], [ %12, %4 ], !dbg !4897
  %17 = icmp eq i64 %16, 0, !dbg !4899
  %18 = tail call i8* @sdsempty() #9, !dbg !4900
  br i1 %17, label %25, label %19, !dbg !4902

; <label>:19:                                     ; preds = %15
  %20 = load i64, i64* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 14), align 8, !dbg !4903, !tbaa !3198
  %21 = trunc i64 %20 to i32, !dbg !4905
  %22 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.195, i64 0, i64 0), i32 %21) #9, !dbg !4906
  %23 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4909, !tbaa !778
  %24 = tail call %struct.list* @listAddNodeTail(%struct.list* %23, i8* %22) #9, !dbg !4910
  br label %29, !dbg !4911

; <label>:25:                                     ; preds = %15
  %26 = tail call i8* (i8*, i8*, ...) @sdscatprintf(i8* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.196, i64 0, i64 0)) #9, !dbg !4912
  %27 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4915, !tbaa !778
  %28 = tail call %struct.list* @listAddNodeTail(%struct.list* %27, i8* %26) #9, !dbg !4916
  br label %29

; <label>:29:                                     ; preds = %25, %19
  ret void, !dbg !4917
}

; Function Attrs: noredzone nounwind
define dso_local i32 @ldbRepl(%struct.lua_State*) local_unnamed_addr #0 !dbg !4918 {
  %2 = alloca i32, align 4
  %3 = alloca [1024 x i8], align 16
  %4 = bitcast i32* %2 to i8*, !dbg !4948
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #8, !dbg !4948
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  br label %6, !dbg !4949

; <label>:6:                                      ; preds = %237, %1
  %7 = call i8** @ldbReplParseCommand(i32* nonnull %2) #10, !dbg !4951
  %8 = icmp eq i8** %7, null, !dbg !4953
  br i1 %8, label %9, label %22, !dbg !4954

; <label>:9:                                      ; preds = %6, %15
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %5) #8, !dbg !4955
  %10 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 0), align 8, !dbg !4957, !tbaa !2008
  %11 = call i64 @read(i32 %10, i8* nonnull %5, i64 1024) #9, !dbg !4958
  %12 = trunc i64 %11 to i32, !dbg !4958
  %13 = icmp slt i32 %12, 1, !dbg !4960
  br i1 %13, label %14, label %15, !dbg !4962

; <label>:14:                                     ; preds = %9
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !4963, !tbaa !2837
  store i32 0, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 7), align 8, !dbg !4965, !tbaa !2798
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %5) #8, !dbg !4966
  br label %241

; <label>:15:                                     ; preds = %9
  %16 = load i8*, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !4967, !tbaa !2023
  %17 = shl i64 %11, 32, !dbg !4968
  %18 = ashr exact i64 %17, 32, !dbg !4968
  %19 = call i8* @sdscatlen(i8* %16, i8* nonnull %5, i64 %18) #9, !dbg !4969
  store i8* %19, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !4970, !tbaa !2023
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %5) #8, !dbg !4966
  %20 = call i8** @ldbReplParseCommand(i32* nonnull %2) #10, !dbg !4951
  %21 = icmp eq i8** %20, null, !dbg !4953
  br i1 %21, label %9, label %22, !dbg !4954

; <label>:22:                                     ; preds = %15, %6
  %23 = phi i8** [ %7, %6 ], [ %20, %15 ], !dbg !4951
  %24 = load i8*, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !4971, !tbaa !2023
  call void @sdsfree(i8* %24) #9, !dbg !4972
  %25 = call i8* @sdsempty() #9, !dbg !4973
  store i8* %25, i8** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 13), align 8, !dbg !4974, !tbaa !2023
  %26 = load i8*, i8** %23, align 8, !dbg !4975, !tbaa !992
  %27 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.197, i64 0, i64 0)) #12, !dbg !4976
  %28 = icmp eq i32 %27, 0, !dbg !4976
  br i1 %28, label %32, label %29, !dbg !4977

; <label>:29:                                     ; preds = %22
  %30 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i64 0, i64 0)) #12, !dbg !4978
  %31 = icmp eq i32 %30, 0, !dbg !4978
  br i1 %31, label %32, label %123, !dbg !4979

; <label>:32:                                     ; preds = %29, %22
  %33 = call i8* @sdsnew(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.198, i64 0, i64 0)) #9, !dbg !4980
  %34 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4984, !tbaa !778
  %35 = call %struct.list* @listAddNodeTail(%struct.list* %34, i8* %33) #9, !dbg !4985
  %36 = call i8* @sdsnew(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.199, i64 0, i64 0)) #9, !dbg !4986
  %37 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4989, !tbaa !778
  %38 = call %struct.list* @listAddNodeTail(%struct.list* %37, i8* %36) #9, !dbg !4990
  %39 = call i8* @sdsnew(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.200, i64 0, i64 0)) #9, !dbg !4991
  %40 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4994, !tbaa !778
  %41 = call %struct.list* @listAddNodeTail(%struct.list* %40, i8* %39) #9, !dbg !4995
  %42 = call i8* @sdsnew(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.201, i64 0, i64 0)) #9, !dbg !4996
  %43 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !4999, !tbaa !778
  %44 = call %struct.list* @listAddNodeTail(%struct.list* %43, i8* %42) #9, !dbg !5000
  %45 = call i8* @sdsnew(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.202, i64 0, i64 0)) #9, !dbg !5001
  %46 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5004, !tbaa !778
  %47 = call %struct.list* @listAddNodeTail(%struct.list* %46, i8* %45) #9, !dbg !5005
  %48 = call i8* @sdsnew(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.203, i64 0, i64 0)) #9, !dbg !5006
  %49 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5009, !tbaa !778
  %50 = call %struct.list* @listAddNodeTail(%struct.list* %49, i8* %48) #9, !dbg !5010
  %51 = call i8* @sdsnew(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.204, i64 0, i64 0)) #9, !dbg !5011
  %52 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5014, !tbaa !778
  %53 = call %struct.list* @listAddNodeTail(%struct.list* %52, i8* %51) #9, !dbg !5015
  %54 = call i8* @sdsnew(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.205, i64 0, i64 0)) #9, !dbg !5016
  %55 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5019, !tbaa !778
  %56 = call %struct.list* @listAddNodeTail(%struct.list* %55, i8* %54) #9, !dbg !5020
  %57 = call i8* @sdsnew(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.206, i64 0, i64 0)) #9, !dbg !5021
  %58 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5024, !tbaa !778
  %59 = call %struct.list* @listAddNodeTail(%struct.list* %58, i8* %57) #9, !dbg !5025
  %60 = call i8* @sdsnew(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.207, i64 0, i64 0)) #9, !dbg !5026
  %61 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5029, !tbaa !778
  %62 = call %struct.list* @listAddNodeTail(%struct.list* %61, i8* %60) #9, !dbg !5030
  %63 = call i8* @sdsnew(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.208, i64 0, i64 0)) #9, !dbg !5031
  %64 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5034, !tbaa !778
  %65 = call %struct.list* @listAddNodeTail(%struct.list* %64, i8* %63) #9, !dbg !5035
  %66 = call i8* @sdsnew(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.209, i64 0, i64 0)) #9, !dbg !5036
  %67 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5039, !tbaa !778
  %68 = call %struct.list* @listAddNodeTail(%struct.list* %67, i8* %66) #9, !dbg !5040
  %69 = call i8* @sdsnew(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.210, i64 0, i64 0)) #9, !dbg !5041
  %70 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5044, !tbaa !778
  %71 = call %struct.list* @listAddNodeTail(%struct.list* %70, i8* %69) #9, !dbg !5045
  %72 = call i8* @sdsnew(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.211, i64 0, i64 0)) #9, !dbg !5046
  %73 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5049, !tbaa !778
  %74 = call %struct.list* @listAddNodeTail(%struct.list* %73, i8* %72) #9, !dbg !5050
  %75 = call i8* @sdsnew(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.212, i64 0, i64 0)) #9, !dbg !5051
  %76 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5054, !tbaa !778
  %77 = call %struct.list* @listAddNodeTail(%struct.list* %76, i8* %75) #9, !dbg !5055
  %78 = call i8* @sdsnew(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.213, i64 0, i64 0)) #9, !dbg !5056
  %79 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5059, !tbaa !778
  %80 = call %struct.list* @listAddNodeTail(%struct.list* %79, i8* %78) #9, !dbg !5060
  %81 = call i8* @sdsnew(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.214, i64 0, i64 0)) #9, !dbg !5061
  %82 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5064, !tbaa !778
  %83 = call %struct.list* @listAddNodeTail(%struct.list* %82, i8* %81) #9, !dbg !5065
  %84 = call i8* @sdsnew(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.215, i64 0, i64 0)) #9, !dbg !5066
  %85 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5069, !tbaa !778
  %86 = call %struct.list* @listAddNodeTail(%struct.list* %85, i8* %84) #9, !dbg !5070
  %87 = call i8* @sdsnew(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.216, i64 0, i64 0)) #9, !dbg !5071
  %88 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5074, !tbaa !778
  %89 = call %struct.list* @listAddNodeTail(%struct.list* %88, i8* %87) #9, !dbg !5075
  %90 = call i8* @sdsnew(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.217, i64 0, i64 0)) #9, !dbg !5076
  %91 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5079, !tbaa !778
  %92 = call %struct.list* @listAddNodeTail(%struct.list* %91, i8* %90) #9, !dbg !5080
  %93 = call i8* @sdsnew(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.218, i64 0, i64 0)) #9, !dbg !5081
  %94 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5084, !tbaa !778
  %95 = call %struct.list* @listAddNodeTail(%struct.list* %94, i8* %93) #9, !dbg !5085
  %96 = call i8* @sdsnew(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.219, i64 0, i64 0)) #9, !dbg !5086
  %97 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5089, !tbaa !778
  %98 = call %struct.list* @listAddNodeTail(%struct.list* %97, i8* %96) #9, !dbg !5090
  %99 = call i8* @sdsnew(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.220, i64 0, i64 0)) #9, !dbg !5091
  %100 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5094, !tbaa !778
  %101 = call %struct.list* @listAddNodeTail(%struct.list* %100, i8* %99) #9, !dbg !5095
  %102 = call i8* @sdsnew(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.221, i64 0, i64 0)) #9, !dbg !5096
  %103 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5099, !tbaa !778
  %104 = call %struct.list* @listAddNodeTail(%struct.list* %103, i8* %102) #9, !dbg !5100
  %105 = call i8* @sdsnew(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.222, i64 0, i64 0)) #9, !dbg !5101
  %106 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5104, !tbaa !778
  %107 = call %struct.list* @listAddNodeTail(%struct.list* %106, i8* %105) #9, !dbg !5105
  %108 = call i8* @sdsnew(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)) #9, !dbg !5106
  %109 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5109, !tbaa !778
  %110 = call %struct.list* @listAddNodeTail(%struct.list* %109, i8* %108) #9, !dbg !5110
  %111 = call i8* @sdsnew(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.223, i64 0, i64 0)) #9, !dbg !5111
  %112 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5114, !tbaa !778
  %113 = call %struct.list* @listAddNodeTail(%struct.list* %112, i8* %111) #9, !dbg !5115
  %114 = call i8* @sdsnew(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.224, i64 0, i64 0)) #9, !dbg !5116
  %115 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5119, !tbaa !778
  %116 = call %struct.list* @listAddNodeTail(%struct.list* %115, i8* %114) #9, !dbg !5120
  %117 = call i8* @sdsnew(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.225, i64 0, i64 0)) #9, !dbg !5121
  %118 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5124, !tbaa !778
  %119 = call %struct.list* @listAddNodeTail(%struct.list* %118, i8* %117) #9, !dbg !5125
  %120 = call i8* @sdsnew(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.226, i64 0, i64 0)) #9, !dbg !5126
  %121 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5129, !tbaa !778
  %122 = call %struct.list* @listAddNodeTail(%struct.list* %121, i8* %120) #9, !dbg !5130
  call void @ldbSendLogs() #10, !dbg !5131
  br label %237, !dbg !5132

; <label>:123:                                    ; preds = %29
  %124 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.227, i64 0, i64 0)) #12, !dbg !5133
  %125 = icmp eq i32 %124, 0, !dbg !5133
  br i1 %125, label %135, label %126, !dbg !5134

; <label>:126:                                    ; preds = %123
  %127 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.228, i64 0, i64 0)) #12, !dbg !5135
  %128 = icmp eq i32 %127, 0, !dbg !5135
  br i1 %128, label %135, label %129, !dbg !5136

; <label>:129:                                    ; preds = %126
  %130 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.229, i64 0, i64 0)) #12, !dbg !5137
  %131 = icmp eq i32 %130, 0, !dbg !5137
  br i1 %131, label %135, label %132, !dbg !5138

; <label>:132:                                    ; preds = %129
  %133 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.230, i64 0, i64 0)) #12, !dbg !5139
  %134 = icmp eq i32 %133, 0, !dbg !5139
  br i1 %134, label %135, label %136, !dbg !5140

; <label>:135:                                    ; preds = %132, %129, %126, %123
  store i32 1, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 8), align 4, !dbg !5141, !tbaa !2837
  br label %239, !dbg !5143

; <label>:136:                                    ; preds = %132
  %137 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.231, i64 0, i64 0)) #12, !dbg !5144
  %138 = icmp eq i32 %137, 0, !dbg !5144
  br i1 %138, label %239, label %139, !dbg !5145

; <label>:139:                                    ; preds = %136
  %140 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.232, i64 0, i64 0)) #12, !dbg !5146
  %141 = icmp eq i32 %140, 0, !dbg !5146
  br i1 %141, label %239, label %142, !dbg !5147

; <label>:142:                                    ; preds = %139
  %143 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.233, i64 0, i64 0)) #12, !dbg !5148
  %144 = icmp eq i32 %143, 0, !dbg !5148
  br i1 %144, label %148, label %145, !dbg !5149

; <label>:145:                                    ; preds = %142
  %146 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.234, i64 0, i64 0)) #12, !dbg !5150
  %147 = icmp eq i32 %146, 0, !dbg !5150
  br i1 %147, label %148, label %149, !dbg !5151

; <label>:148:                                    ; preds = %145, %142
  call void @ldbTrace(%struct.lua_State* %0) #10, !dbg !5152
  call void @ldbSendLogs() #10, !dbg !5154
  br label %237, !dbg !5155

; <label>:149:                                    ; preds = %145
  %150 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.235, i64 0, i64 0)) #12, !dbg !5156
  %151 = icmp eq i32 %150, 0, !dbg !5156
  br i1 %151, label %155, label %152, !dbg !5157

; <label>:152:                                    ; preds = %149
  %153 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.236, i64 0, i64 0)) #12, !dbg !5158
  %154 = icmp eq i32 %153, 0, !dbg !5158
  br i1 %154, label %155, label %157, !dbg !5159

; <label>:155:                                    ; preds = %152, %149
  %156 = load i32, i32* %2, align 4, !dbg !5160, !tbaa !969
  call void @ldbMaxlen(i8** nonnull %23, i32 %156) #10, !dbg !5162
  call void @ldbSendLogs() #10, !dbg !5163
  br label %237, !dbg !5164

; <label>:157:                                    ; preds = %152
  %158 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.237, i64 0, i64 0)) #12, !dbg !5165
  %159 = icmp eq i32 %158, 0, !dbg !5165
  br i1 %159, label %163, label %160, !dbg !5166

; <label>:160:                                    ; preds = %157
  %161 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.238, i64 0, i64 0)) #12, !dbg !5167
  %162 = icmp eq i32 %161, 0, !dbg !5167
  br i1 %162, label %163, label %165, !dbg !5168

; <label>:163:                                    ; preds = %160, %157
  %164 = load i32, i32* %2, align 4, !dbg !5169, !tbaa !969
  call void @ldbBreak(i8** nonnull %23, i32 %164) #10, !dbg !5171
  call void @ldbSendLogs() #10, !dbg !5172
  br label %237, !dbg !5173

; <label>:165:                                    ; preds = %160
  %166 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.239, i64 0, i64 0)) #12, !dbg !5174
  %167 = icmp eq i32 %166, 0, !dbg !5174
  br i1 %167, label %171, label %168, !dbg !5175

; <label>:168:                                    ; preds = %165
  %169 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.240, i64 0, i64 0)) #12, !dbg !5176
  %170 = icmp eq i32 %169, 0, !dbg !5176
  br i1 %170, label %171, label %173, !dbg !5177

; <label>:171:                                    ; preds = %168, %165
  %172 = load i32, i32* %2, align 4, !dbg !5178, !tbaa !969
  call void @ldbEval(%struct.lua_State* %0, i8** nonnull %23, i32 %172) #10, !dbg !5180
  call void @ldbSendLogs() #10, !dbg !5181
  br label %237, !dbg !5182

; <label>:173:                                    ; preds = %168
  %174 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.241, i64 0, i64 0)) #12, !dbg !5183
  %175 = icmp eq i32 %174, 0, !dbg !5183
  br i1 %175, label %179, label %176, !dbg !5184

; <label>:176:                                    ; preds = %173
  %177 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.242, i64 0, i64 0)) #12, !dbg !5185
  %178 = icmp eq i32 %177, 0, !dbg !5185
  br i1 %178, label %179, label %181, !dbg !5186

; <label>:179:                                    ; preds = %176, %173
  call void @lua_pushstring(%struct.lua_State* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.243, i64 0, i64 0)) #9, !dbg !5187
  %180 = call i32 @lua_error(%struct.lua_State* %0) #9, !dbg !5189
  br label %237, !dbg !5190

; <label>:181:                                    ; preds = %176
  %182 = load i32, i32* %2, align 4, !dbg !5191, !tbaa !969
  %183 = icmp sgt i32 %182, 1, !dbg !5192
  br i1 %183, label %184, label %191, !dbg !5193

; <label>:184:                                    ; preds = %181
  %185 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.244, i64 0, i64 0)) #12, !dbg !5194
  %186 = icmp eq i32 %185, 0, !dbg !5194
  br i1 %186, label %190, label %187, !dbg !5195

; <label>:187:                                    ; preds = %184
  %188 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0)) #12, !dbg !5196
  %189 = icmp eq i32 %188, 0, !dbg !5196
  br i1 %189, label %190, label %191, !dbg !5197

; <label>:190:                                    ; preds = %187, %184
  call void @ldbRedis(%struct.lua_State* %0, i8** nonnull %23, i32 %182) #10, !dbg !5198
  call void @ldbSendLogs() #10, !dbg !5200
  br label %237, !dbg !5201

; <label>:191:                                    ; preds = %187, %181
  %192 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.245, i64 0, i64 0)) #12, !dbg !5202
  %193 = icmp eq i32 %192, 0, !dbg !5202
  br i1 %193, label %197, label %194, !dbg !5203

; <label>:194:                                    ; preds = %191
  %195 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.246, i64 0, i64 0)) #12, !dbg !5204
  %196 = icmp eq i32 %195, 0, !dbg !5204
  br i1 %196, label %197, label %204, !dbg !5205

; <label>:197:                                    ; preds = %194, %191
  %198 = icmp eq i32 %182, 2, !dbg !5206
  br i1 %198, label %199, label %202, !dbg !5209

; <label>:199:                                    ; preds = %197
  %200 = getelementptr inbounds i8*, i8** %23, i64 1, !dbg !5210
  %201 = load i8*, i8** %200, align 8, !dbg !5210, !tbaa !992
  call void @ldbPrint(%struct.lua_State* %0, i8* %201) #10, !dbg !5211
  br label %203, !dbg !5211

; <label>:202:                                    ; preds = %197
  call void @ldbPrintAll(%struct.lua_State* %0) #10, !dbg !5212
  br label %203

; <label>:203:                                    ; preds = %202, %199
  call void @ldbSendLogs() #10, !dbg !5213
  br label %237, !dbg !5214

; <label>:204:                                    ; preds = %194
  %205 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.247, i64 0, i64 0)) #12, !dbg !5215
  %206 = icmp eq i32 %205, 0, !dbg !5215
  br i1 %206, label %210, label %207, !dbg !5216

; <label>:207:                                    ; preds = %204
  %208 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.248, i64 0, i64 0)) #12, !dbg !5217
  %209 = icmp eq i32 %208, 0, !dbg !5217
  br i1 %209, label %210, label %226, !dbg !5218

; <label>:210:                                    ; preds = %207, %204
  %211 = load i32, i32* getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 12), align 4, !dbg !5219, !tbaa !1686
  br i1 %183, label %212, label %223, !dbg !5222

; <label>:212:                                    ; preds = %210
  %213 = getelementptr inbounds i8*, i8** %23, i64 1, !dbg !5223
  %214 = load i8*, i8** %213, align 8, !dbg !5223, !tbaa !992
  %215 = call i32 @atoi(i8* %214) #9, !dbg !5224
  %216 = icmp sgt i32 %215, 0, !dbg !5226
  %217 = select i1 %216, i32 %215, i32 %211, !dbg !5228
  %218 = icmp eq i32 %182, 2, !dbg !5229
  br i1 %218, label %223, label %219, !dbg !5231

; <label>:219:                                    ; preds = %212
  %220 = getelementptr inbounds i8*, i8** %23, i64 2, !dbg !5232
  %221 = load i8*, i8** %220, align 8, !dbg !5232, !tbaa !992
  %222 = call i32 @atoi(i8* %221) #9, !dbg !5233
  br label %223, !dbg !5234

; <label>:223:                                    ; preds = %212, %210, %219
  %224 = phi i32 [ %217, %219 ], [ %217, %212 ], [ %211, %210 ]
  %225 = phi i32 [ %222, %219 ], [ 5, %212 ], [ 5, %210 ], !dbg !5235
  call void @ldbList(i32 %224, i32 %225) #10, !dbg !5236
  call void @ldbSendLogs() #10, !dbg !5237
  br label %237, !dbg !5238

; <label>:226:                                    ; preds = %207
  %227 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.249, i64 0, i64 0)) #12, !dbg !5239
  %228 = icmp eq i32 %227, 0, !dbg !5239
  br i1 %228, label %232, label %229, !dbg !5241

; <label>:229:                                    ; preds = %226
  %230 = call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.250, i64 0, i64 0)) #12, !dbg !5242
  %231 = icmp eq i32 %230, 0, !dbg !5242
  br i1 %231, label %232, label %233, !dbg !5243

; <label>:232:                                    ; preds = %229, %226
  call void @ldbList(i32 1, i32 1000000) #10, !dbg !5244
  call void @ldbSendLogs() #10, !dbg !5246
  br label %237, !dbg !5247

; <label>:233:                                    ; preds = %229
  %234 = call i8* @sdsnew(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.251, i64 0, i64 0)) #9, !dbg !5248
  %235 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.ldbState, %struct.ldbState* @ldb, i64 0, i32 3), align 8, !dbg !5252, !tbaa !778
  %236 = call %struct.list* @listAddNodeTail(%struct.list* %235, i8* %234) #9, !dbg !5253
  call void @ldbSendLogs() #10, !dbg !5254
  br label %237

; <label>:237:                                    ; preds = %148, %163, %179, %203, %232, %233, %223, %190, %171, %155, %32
  %238 = load i32, i32* %2, align 4, !dbg !5255, !tbaa !969
  call void @sdsfreesplitres(i8** nonnull %23, i32 %238) #9, !dbg !5256
  br label %6, !dbg !4949, !llvm.loop !5257

; <label>:239:                                    ; preds = %139, %136, %135
  %240 = load i32, i32* %2, align 4, !dbg !5259, !tbaa !969
  call void @sdsfreesplitres(i8** nonnull %23, i32 %240) #9, !dbg !5260
  br label %241, !dbg !5261

; <label>:241:                                    ; preds = %14, %239
  %242 = phi i32 [ 0, %239 ], [ -1, %14 ], !dbg !5262
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #8, !dbg !5263
  ret i32 %242, !dbg !5263
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
attributes #6 = { norecurse noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone nounwind }
attributes #10 = { nobuiltin noredzone }
attributes #11 = { nobuiltin noredzone noreturn nounwind }
attributes #12 = { nobuiltin noredzone nounwind readonly }

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
!542 = !DILocation(line: 131, column: 58, scope: !525)
!543 = !DILocalVariable(name: "lua", arg: 1, scope: !544, file: !3, line: 149, type: !74)
!544 = distinct !DISubprogram(name: "redisProtocolToLuaType_Bulk", scope: !3, file: !3, line: 149, type: !506, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !545)
!545 = !{!543, !546, !547, !548}
!546 = !DILocalVariable(name: "reply", arg: 2, scope: !544, file: !3, line: 149, type: !11)
!547 = !DILocalVariable(name: "p", scope: !544, file: !3, line: 150, type: !11)
!548 = !DILocalVariable(name: "bulklen", scope: !544, file: !3, line: 151, type: !13)
!549 = !DILocation(line: 149, column: 46, scope: !544, inlinedAt: !550)
!550 = distinct !DILocation(line: 132, column: 19, scope: !525)
!551 = !DILocation(line: 149, column: 57, scope: !544, inlinedAt: !550)
!552 = !DILocation(line: 150, column: 27, scope: !544, inlinedAt: !550)
!553 = !DILocation(line: 150, column: 15, scope: !544, inlinedAt: !550)
!554 = !DILocation(line: 150, column: 11, scope: !544, inlinedAt: !550)
!555 = !DILocation(line: 151, column: 5, scope: !544, inlinedAt: !550)
!556 = !DILocation(line: 153, column: 24, scope: !544, inlinedAt: !550)
!557 = !DILocation(line: 153, column: 30, scope: !544, inlinedAt: !550)
!558 = !DILocation(line: 151, column: 15, scope: !544, inlinedAt: !550)
!559 = !DILocation(line: 153, column: 5, scope: !544, inlinedAt: !550)
!560 = !DILocation(line: 154, column: 9, scope: !561, inlinedAt: !550)
!561 = distinct !DILexicalBlock(scope: !544, file: !3, line: 154, column: 9)
!562 = !DILocation(line: 154, column: 17, scope: !561, inlinedAt: !550)
!563 = !DILocation(line: 154, column: 9, scope: !544, inlinedAt: !550)
!564 = !DILocation(line: 155, column: 9, scope: !565, inlinedAt: !550)
!565 = distinct !DILexicalBlock(scope: !561, file: !3, line: 154, column: 24)
!566 = !DILocation(line: 156, column: 9, scope: !565, inlinedAt: !550)
!567 = !DILocation(line: 158, column: 30, scope: !568, inlinedAt: !550)
!568 = distinct !DILexicalBlock(scope: !561, file: !3, line: 157, column: 12)
!569 = !DILocation(line: 158, column: 9, scope: !568, inlinedAt: !550)
!570 = !DILocation(line: 159, column: 20, scope: !568, inlinedAt: !550)
!571 = !DILocation(line: 159, column: 19, scope: !568, inlinedAt: !550)
!572 = !DILocation(line: 159, column: 9, scope: !568, inlinedAt: !550)
!573 = !DILocation(line: 0, scope: !568, inlinedAt: !550)
!574 = !DILocation(line: 161, column: 1, scope: !544, inlinedAt: !550)
!575 = !DILocation(line: 132, column: 59, scope: !525)
!576 = !DILocalVariable(name: "lua", arg: 1, scope: !577, file: !3, line: 163, type: !74)
!577 = distinct !DISubprogram(name: "redisProtocolToLuaType_Status", scope: !3, file: !3, line: 163, type: !506, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !578)
!578 = !{!576, !579, !580}
!579 = !DILocalVariable(name: "reply", arg: 2, scope: !577, file: !3, line: 163, type: !11)
!580 = !DILocalVariable(name: "p", scope: !577, file: !3, line: 164, type: !11)
!581 = !DILocation(line: 163, column: 48, scope: !577, inlinedAt: !582)
!582 = distinct !DILocation(line: 133, column: 19, scope: !525)
!583 = !DILocation(line: 163, column: 59, scope: !577, inlinedAt: !582)
!584 = !DILocation(line: 164, column: 27, scope: !577, inlinedAt: !582)
!585 = !DILocation(line: 164, column: 15, scope: !577, inlinedAt: !582)
!586 = !DILocation(line: 164, column: 11, scope: !577, inlinedAt: !582)
!587 = !DILocation(line: 166, column: 5, scope: !577, inlinedAt: !582)
!588 = !DILocation(line: 167, column: 5, scope: !577, inlinedAt: !582)
!589 = !DILocation(line: 168, column: 34, scope: !577, inlinedAt: !582)
!590 = !DILocation(line: 168, column: 40, scope: !577, inlinedAt: !582)
!591 = !DILocation(line: 168, column: 5, scope: !577, inlinedAt: !582)
!592 = !DILocation(line: 169, column: 5, scope: !577, inlinedAt: !582)
!593 = !DILocation(line: 170, column: 13, scope: !577, inlinedAt: !582)
!594 = !DILocation(line: 133, column: 61, scope: !525)
!595 = !DILocalVariable(name: "lua", arg: 1, scope: !596, file: !3, line: 173, type: !74)
!596 = distinct !DISubprogram(name: "redisProtocolToLuaType_Error", scope: !3, file: !3, line: 173, type: !506, isLocal: false, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !597)
!597 = !{!595, !598, !599}
!598 = !DILocalVariable(name: "reply", arg: 2, scope: !596, file: !3, line: 173, type: !11)
!599 = !DILocalVariable(name: "p", scope: !596, file: !3, line: 174, type: !11)
!600 = !DILocation(line: 173, column: 47, scope: !596, inlinedAt: !601)
!601 = distinct !DILocation(line: 134, column: 19, scope: !525)
!602 = !DILocation(line: 173, column: 58, scope: !596, inlinedAt: !601)
!603 = !DILocation(line: 174, column: 27, scope: !596, inlinedAt: !601)
!604 = !DILocation(line: 174, column: 15, scope: !596, inlinedAt: !601)
!605 = !DILocation(line: 174, column: 11, scope: !596, inlinedAt: !601)
!606 = !DILocation(line: 176, column: 5, scope: !596, inlinedAt: !601)
!607 = !DILocation(line: 177, column: 5, scope: !596, inlinedAt: !601)
!608 = !DILocation(line: 178, column: 34, scope: !596, inlinedAt: !601)
!609 = !DILocation(line: 178, column: 40, scope: !596, inlinedAt: !601)
!610 = !DILocation(line: 178, column: 5, scope: !596, inlinedAt: !601)
!611 = !DILocation(line: 179, column: 5, scope: !596, inlinedAt: !601)
!612 = !DILocation(line: 180, column: 13, scope: !596, inlinedAt: !601)
!613 = !DILocation(line: 134, column: 60, scope: !525)
!614 = !DILocation(line: 135, column: 19, scope: !525)
!615 = !DILocation(line: 135, column: 64, scope: !525)
!616 = !DILocation(line: 0, scope: !525)
!617 = !DILocation(line: 137, column: 5, scope: !505)
!618 = !DILocation(line: 140, column: 45, scope: !518)
!619 = !DILocation(line: 140, column: 56, scope: !518)
!620 = !DILocation(line: 141, column: 27, scope: !518)
!621 = !DILocation(line: 141, column: 15, scope: !518)
!622 = !DILocation(line: 141, column: 11, scope: !518)
!623 = !DILocation(line: 142, column: 5, scope: !518)
!624 = !DILocation(line: 144, column: 24, scope: !518)
!625 = !DILocation(line: 144, column: 30, scope: !518)
!626 = !DILocation(line: 142, column: 15, scope: !518)
!627 = !DILocation(line: 144, column: 5, scope: !518)
!628 = !DILocation(line: 145, column: 36, scope: !518)
!629 = !DILocation(line: 145, column: 24, scope: !518)
!630 = !DILocation(line: 145, column: 5, scope: !518)
!631 = !DILocation(line: 146, column: 13, scope: !518)
!632 = !DILocation(line: 147, column: 1, scope: !518)
!633 = !DILocation(line: 146, column: 5, scope: !518)
!634 = !DILocation(line: 149, column: 46, scope: !544)
!635 = !DILocation(line: 149, column: 57, scope: !544)
!636 = !DILocation(line: 150, column: 27, scope: !544)
!637 = !DILocation(line: 150, column: 15, scope: !544)
!638 = !DILocation(line: 150, column: 11, scope: !544)
!639 = !DILocation(line: 151, column: 5, scope: !544)
!640 = !DILocation(line: 153, column: 24, scope: !544)
!641 = !DILocation(line: 153, column: 30, scope: !544)
!642 = !DILocation(line: 151, column: 15, scope: !544)
!643 = !DILocation(line: 153, column: 5, scope: !544)
!644 = !DILocation(line: 154, column: 9, scope: !561)
!645 = !DILocation(line: 154, column: 17, scope: !561)
!646 = !DILocation(line: 154, column: 9, scope: !544)
!647 = !DILocation(line: 155, column: 9, scope: !565)
!648 = !DILocation(line: 156, column: 9, scope: !565)
!649 = !DILocation(line: 158, column: 30, scope: !568)
!650 = !DILocation(line: 158, column: 9, scope: !568)
!651 = !DILocation(line: 159, column: 20, scope: !568)
!652 = !DILocation(line: 159, column: 19, scope: !568)
!653 = !DILocation(line: 159, column: 9, scope: !568)
!654 = !DILocation(line: 0, scope: !568)
!655 = !DILocation(line: 161, column: 1, scope: !544)
!656 = !DILocation(line: 163, column: 48, scope: !577)
!657 = !DILocation(line: 163, column: 59, scope: !577)
!658 = !DILocation(line: 164, column: 27, scope: !577)
!659 = !DILocation(line: 164, column: 15, scope: !577)
!660 = !DILocation(line: 164, column: 11, scope: !577)
!661 = !DILocation(line: 166, column: 5, scope: !577)
!662 = !DILocation(line: 167, column: 5, scope: !577)
!663 = !DILocation(line: 168, column: 34, scope: !577)
!664 = !DILocation(line: 168, column: 40, scope: !577)
!665 = !DILocation(line: 168, column: 5, scope: !577)
!666 = !DILocation(line: 169, column: 5, scope: !577)
!667 = !DILocation(line: 170, column: 13, scope: !577)
!668 = !DILocation(line: 170, column: 5, scope: !577)
!669 = !DILocation(line: 173, column: 47, scope: !596)
!670 = !DILocation(line: 173, column: 58, scope: !596)
!671 = !DILocation(line: 174, column: 27, scope: !596)
!672 = !DILocation(line: 174, column: 15, scope: !596)
!673 = !DILocation(line: 174, column: 11, scope: !596)
!674 = !DILocation(line: 176, column: 5, scope: !596)
!675 = !DILocation(line: 177, column: 5, scope: !596)
!676 = !DILocation(line: 178, column: 34, scope: !596)
!677 = !DILocation(line: 178, column: 40, scope: !596)
!678 = !DILocation(line: 178, column: 5, scope: !596)
!679 = !DILocation(line: 179, column: 5, scope: !596)
!680 = !DILocation(line: 180, column: 13, scope: !596)
!681 = !DILocation(line: 180, column: 5, scope: !596)
!682 = distinct !DISubprogram(name: "redisProtocolToLuaType_MultiBulk", scope: !3, file: !3, line: 183, type: !506, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !683)
!683 = !{!684, !685, !686, !687, !688}
!684 = !DILocalVariable(name: "lua", arg: 1, scope: !682, file: !3, line: 183, type: !74)
!685 = !DILocalVariable(name: "reply", arg: 2, scope: !682, file: !3, line: 183, type: !11)
!686 = !DILocalVariable(name: "p", scope: !682, file: !3, line: 184, type: !11)
!687 = !DILocalVariable(name: "mbulklen", scope: !682, file: !3, line: 185, type: !13)
!688 = !DILocalVariable(name: "j", scope: !682, file: !3, line: 186, type: !15)
!689 = !DILocation(line: 183, column: 51, scope: !682)
!690 = !DILocation(line: 183, column: 62, scope: !682)
!691 = !DILocation(line: 184, column: 27, scope: !682)
!692 = !DILocation(line: 184, column: 15, scope: !682)
!693 = !DILocation(line: 184, column: 11, scope: !682)
!694 = !DILocation(line: 185, column: 5, scope: !682)
!695 = !DILocation(line: 186, column: 9, scope: !682)
!696 = !DILocation(line: 188, column: 24, scope: !682)
!697 = !DILocation(line: 188, column: 30, scope: !682)
!698 = !DILocation(line: 185, column: 15, scope: !682)
!699 = !DILocation(line: 188, column: 5, scope: !682)
!700 = !DILocation(line: 189, column: 7, scope: !682)
!701 = !DILocation(line: 190, column: 9, scope: !702)
!702 = distinct !DILexicalBlock(scope: !682, file: !3, line: 190, column: 9)
!703 = !DILocation(line: 190, column: 18, scope: !702)
!704 = !DILocation(line: 190, column: 9, scope: !682)
!705 = !DILocation(line: 191, column: 9, scope: !706)
!706 = distinct !DILexicalBlock(scope: !702, file: !3, line: 190, column: 25)
!707 = !DILocation(line: 192, column: 9, scope: !706)
!708 = !DILocation(line: 194, column: 5, scope: !682)
!709 = !DILocation(line: 195, column: 21, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !3, line: 195, column: 5)
!711 = distinct !DILexicalBlock(scope: !682, file: !3, line: 195, column: 5)
!712 = !DILocation(line: 195, column: 19, scope: !710)
!713 = !DILocation(line: 195, column: 5, scope: !711)
!714 = !DILocation(line: 196, column: 29, scope: !715)
!715 = distinct !DILexicalBlock(scope: !710, file: !3, line: 195, column: 36)
!716 = !DILocation(line: 196, column: 28, scope: !715)
!717 = !DILocation(line: 196, column: 9, scope: !715)
!718 = !DILocation(line: 197, column: 13, scope: !715)
!719 = !DILocation(line: 198, column: 9, scope: !715)
!720 = distinct !{!720, !713, !721}
!721 = !DILocation(line: 199, column: 5, scope: !711)
!722 = !DILocation(line: 0, scope: !682)
!723 = !DILocation(line: 201, column: 1, scope: !682)
!724 = distinct !DISubprogram(name: "luaPushError", scope: !3, file: !3, line: 208, type: !725, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !727)
!725 = !DISubroutineType(types: !726)
!726 = !{null, !74, !11}
!727 = !{!728, !729, !730, !750}
!728 = !DILocalVariable(name: "lua", arg: 1, scope: !724, file: !3, line: 208, type: !74)
!729 = !DILocalVariable(name: "error", arg: 2, scope: !724, file: !3, line: 208, type: !11)
!730 = !DILocalVariable(name: "dbg", scope: !724, file: !3, line: 209, type: !731)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_Debug", file: !9, line: 326, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lua_Debug", file: !9, line: 346, size: 960, elements: !733)
!733 = !{!734, !735, !738, !739, !740, !741, !742, !743, !744, !745, !749}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !732, file: !9, line: 347, baseType: !15, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !732, file: !9, line: 348, baseType: !736, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "namewhat", scope: !732, file: !9, line: 349, baseType: !736, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "what", scope: !732, file: !9, line: 350, baseType: !736, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !732, file: !9, line: 351, baseType: !736, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "currentline", scope: !732, file: !9, line: 352, baseType: !15, size: 32, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nups", scope: !732, file: !9, line: 353, baseType: !15, size: 32, offset: 352)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "linedefined", scope: !732, file: !9, line: 354, baseType: !15, size: 32, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "lastlinedefined", scope: !732, file: !9, line: 355, baseType: !15, size: 32, offset: 416)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "short_src", scope: !732, file: !9, line: 356, baseType: !746, size: 480, offset: 448)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 480, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 60)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_ci", scope: !732, file: !9, line: 358, baseType: !15, size: 32, offset: 928)
!750 = !DILocalVariable(name: "msg", scope: !751, file: !3, line: 222, type: !209)
!751 = distinct !DILexicalBlock(scope: !752, file: !3, line: 221, column: 69)
!752 = distinct !DILexicalBlock(scope: !724, file: !3, line: 221, column: 8)
!753 = !DILocation(line: 208, column: 30, scope: !724)
!754 = !DILocation(line: 208, column: 41, scope: !724)
!755 = !DILocation(line: 209, column: 5, scope: !724)
!756 = !DILocation(line: 213, column: 13, scope: !757)
!757 = distinct !DILexicalBlock(scope: !724, file: !3, line: 213, column: 9)
!758 = !{!759, !760, i64 4}
!759 = !{!"ldbState", !760, i64 0, !760, i64 4, !760, i64 8, !761, i64 16, !761, i64 24, !761, i64 32, !486, i64 40, !760, i64 296, !760, i64 300, !760, i64 304, !761, i64 312, !760, i64 320, !760, i64 324, !761, i64 328, !762, i64 336, !760, i64 344}
!760 = !{!"int", !486, i64 0}
!761 = !{!"any pointer", !486, i64 0}
!762 = !{!"long", !486, i64 0}
!763 = !DILocation(line: 213, column: 9, scope: !757)
!764 = !DILocation(line: 213, column: 27, scope: !757)
!765 = !DILocation(line: 213, column: 23, scope: !757)
!766 = !DILocation(line: 213, column: 20, scope: !757)
!767 = !DILocation(line: 214, column: 29, scope: !768)
!768 = distinct !DILexicalBlock(scope: !757, file: !3, line: 213, column: 33)
!769 = !DILocation(line: 214, column: 16, scope: !768)
!770 = !DILocalVariable(name: "entry", arg: 1, scope: !771, file: !3, line: 1602, type: !209)
!771 = distinct !DISubprogram(name: "ldbLog", scope: !3, file: !3, line: 1602, type: !772, isLocal: false, isDefinition: true, scopeLine: 1602, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !774)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !209}
!774 = !{!770}
!775 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !776)
!776 = distinct !DILocation(line: 214, column: 9, scope: !768)
!777 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !776)
!778 = !{!759, !761, i64 16}
!779 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !776)
!780 = !DILocation(line: 215, column: 5, scope: !768)
!781 = !DILocation(line: 217, column: 5, scope: !724)
!782 = !DILocation(line: 218, column: 5, scope: !724)
!783 = !DILocation(line: 209, column: 15, scope: !724)
!784 = !DILocation(line: 221, column: 8, scope: !752)
!785 = !DILocation(line: 221, column: 35, scope: !752)
!786 = !DILocation(line: 221, column: 38, scope: !752)
!787 = !DILocation(line: 221, column: 8, scope: !724)
!788 = !DILocation(line: 222, column: 32, scope: !751)
!789 = !DILocation(line: 223, column: 17, scope: !751)
!790 = !{!791, !761, i64 32}
!791 = !{!"lua_Debug", !760, i64 0, !761, i64 8, !761, i64 16, !761, i64 24, !761, i64 32, !760, i64 40, !760, i64 44, !760, i64 48, !760, i64 52, !486, i64 56, !760, i64 116}
!792 = !DILocation(line: 223, column: 29, scope: !751)
!793 = !{!791, !760, i64 40}
!794 = !DILocation(line: 222, column: 19, scope: !751)
!795 = !DILocation(line: 222, column: 13, scope: !751)
!796 = !DILocation(line: 224, column: 9, scope: !751)
!797 = !DILocation(line: 225, column: 9, scope: !751)
!798 = !DILocation(line: 226, column: 5, scope: !751)
!799 = !DILocation(line: 227, column: 9, scope: !800)
!800 = distinct !DILexicalBlock(scope: !752, file: !3, line: 226, column: 12)
!801 = !DILocation(line: 229, column: 5, scope: !724)
!802 = !DILocation(line: 230, column: 1, scope: !724)
!803 = !DILocation(line: 1602, column: 17, scope: !771)
!804 = !DILocation(line: 1603, column: 25, scope: !771)
!805 = !DILocation(line: 1603, column: 5, scope: !771)
!806 = !DILocation(line: 1604, column: 1, scope: !771)
!807 = distinct !DISubprogram(name: "luaRaiseError", scope: !3, file: !3, line: 236, type: !808, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !810)
!808 = !DISubroutineType(types: !809)
!809 = !{!15, !74}
!810 = !{!811}
!811 = !DILocalVariable(name: "lua", arg: 1, scope: !807, file: !3, line: 236, type: !74)
!812 = !DILocation(line: 236, column: 30, scope: !807)
!813 = !DILocation(line: 237, column: 5, scope: !807)
!814 = !DILocation(line: 238, column: 5, scope: !807)
!815 = !DILocation(line: 239, column: 12, scope: !807)
!816 = !DILocation(line: 239, column: 5, scope: !807)
!817 = distinct !DISubprogram(name: "luaSortArray", scope: !3, file: !3, line: 248, type: !818, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !74}
!820 = !{!821}
!821 = !DILocalVariable(name: "lua", arg: 1, scope: !817, file: !3, line: 248, type: !74)
!822 = !DILocation(line: 248, column: 30, scope: !817)
!823 = !DILocation(line: 250, column: 5, scope: !817)
!824 = !DILocation(line: 251, column: 5, scope: !817)
!825 = !DILocation(line: 252, column: 5, scope: !817)
!826 = !DILocation(line: 253, column: 5, scope: !817)
!827 = !DILocation(line: 254, column: 9, scope: !828)
!828 = distinct !DILexicalBlock(scope: !817, file: !3, line: 254, column: 9)
!829 = !DILocation(line: 254, column: 9, scope: !817)
!830 = !DILocation(line: 261, column: 9, scope: !831)
!831 = distinct !DILexicalBlock(scope: !828, file: !3, line: 254, column: 31)
!832 = !DILocation(line: 262, column: 9, scope: !831)
!833 = !DILocation(line: 263, column: 9, scope: !831)
!834 = !DILocation(line: 264, column: 9, scope: !831)
!835 = !DILocation(line: 265, column: 9, scope: !831)
!836 = !DILocation(line: 267, column: 9, scope: !831)
!837 = !DILocation(line: 268, column: 5, scope: !831)
!838 = !DILocation(line: 270, column: 5, scope: !817)
!839 = !DILocation(line: 271, column: 1, scope: !817)
!840 = distinct !DISubprogram(name: "luaReplyToRedisReply", scope: !3, file: !3, line: 277, type: !841, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !843)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !93, !74}
!843 = !{!844, !845, !846, !847, !851, !854, !856, !857}
!844 = !DILocalVariable(name: "c", arg: 1, scope: !840, file: !3, line: 277, type: !93)
!845 = !DILocalVariable(name: "lua", arg: 2, scope: !840, file: !3, line: 277, type: !74)
!846 = !DILocalVariable(name: "t", scope: !840, file: !3, line: 278, type: !15)
!847 = !DILocalVariable(name: "err", scope: !848, file: !3, line: 299, type: !209)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 298, column: 31)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 298, column: 13)
!850 = distinct !DILexicalBlock(scope: !840, file: !3, line: 280, column: 15)
!851 = !DILocalVariable(name: "ok", scope: !852, file: !3, line: 312, type: !209)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 311, column: 31)
!853 = distinct !DILexicalBlock(scope: !850, file: !3, line: 311, column: 13)
!854 = !DILocalVariable(name: "replylen", scope: !855, file: !3, line: 318, type: !14)
!855 = distinct !DILexicalBlock(scope: !853, file: !3, line: 317, column: 16)
!856 = !DILocalVariable(name: "j", scope: !855, file: !3, line: 319, type: !15)
!857 = !DILocalVariable(name: "mbulklen", scope: !855, file: !3, line: 319, type: !15)
!858 = !DILocation(line: 277, column: 35, scope: !840)
!859 = !DILocation(line: 277, column: 49, scope: !840)
!860 = !DILocation(line: 278, column: 13, scope: !840)
!861 = !DILocation(line: 278, column: 9, scope: !840)
!862 = !DILocation(line: 280, column: 5, scope: !840)
!863 = !DILocation(line: 282, column: 38, scope: !850)
!864 = !DILocation(line: 282, column: 59, scope: !850)
!865 = !DILocation(line: 282, column: 9, scope: !850)
!866 = !DILocation(line: 283, column: 9, scope: !850)
!867 = !DILocation(line: 285, column: 20, scope: !850)
!868 = !DILocation(line: 285, column: 51, scope: !850)
!869 = !DILocation(line: 285, column: 65, scope: !850)
!870 = !DILocation(line: 285, column: 9, scope: !850)
!871 = !DILocation(line: 286, column: 9, scope: !850)
!872 = !DILocation(line: 288, column: 39, scope: !850)
!873 = !DILocation(line: 288, column: 28, scope: !850)
!874 = !DILocation(line: 288, column: 9, scope: !850)
!875 = !DILocation(line: 289, column: 9, scope: !850)
!876 = !DILocation(line: 295, column: 9, scope: !850)
!877 = !DILocation(line: 296, column: 9, scope: !850)
!878 = !DILocation(line: 297, column: 13, scope: !850)
!879 = !DILocation(line: 298, column: 15, scope: !849)
!880 = !DILocation(line: 298, column: 13, scope: !850)
!881 = !DILocation(line: 299, column: 30, scope: !848)
!882 = !DILocation(line: 299, column: 23, scope: !848)
!883 = !DILocation(line: 299, column: 17, scope: !848)
!884 = !DILocation(line: 300, column: 13, scope: !848)
!885 = !DILocation(line: 301, column: 40, scope: !848)
!886 = !DILocation(line: 301, column: 27, scope: !848)
!887 = !DILocation(line: 301, column: 13, scope: !848)
!888 = !DILocation(line: 302, column: 13, scope: !848)
!889 = !DILocation(line: 303, column: 13, scope: !848)
!890 = !DILocation(line: 307, column: 9, scope: !850)
!891 = !DILocation(line: 308, column: 9, scope: !850)
!892 = !DILocation(line: 309, column: 9, scope: !850)
!893 = !DILocation(line: 310, column: 13, scope: !850)
!894 = !DILocation(line: 311, column: 15, scope: !853)
!895 = !DILocation(line: 311, column: 13, scope: !850)
!896 = !DILocation(line: 312, column: 29, scope: !852)
!897 = !DILocation(line: 312, column: 22, scope: !852)
!898 = !DILocation(line: 312, column: 17, scope: !852)
!899 = !DILocation(line: 313, column: 13, scope: !852)
!900 = !DILocation(line: 314, column: 40, scope: !852)
!901 = !DILocation(line: 314, column: 27, scope: !852)
!902 = !DILocation(line: 314, column: 13, scope: !852)
!903 = !DILocation(line: 315, column: 13, scope: !852)
!904 = !DILocation(line: 316, column: 13, scope: !852)
!905 = !DILocation(line: 317, column: 9, scope: !852)
!906 = !DILocation(line: 318, column: 30, scope: !855)
!907 = !DILocation(line: 318, column: 19, scope: !855)
!908 = !DILocation(line: 319, column: 17, scope: !855)
!909 = !DILocation(line: 319, column: 24, scope: !855)
!910 = !DILocation(line: 321, column: 13, scope: !855)
!911 = !DILocation(line: 323, column: 17, scope: !912)
!912 = distinct !DILexicalBlock(scope: !855, file: !3, line: 322, column: 22)
!913 = !DILocation(line: 324, column: 17, scope: !912)
!914 = !DILocation(line: 325, column: 21, scope: !912)
!915 = !DILocation(line: 326, column: 23, scope: !916)
!916 = distinct !DILexicalBlock(scope: !912, file: !3, line: 326, column: 21)
!917 = !DILocation(line: 326, column: 21, scope: !912)
!918 = !DILocation(line: 327, column: 21, scope: !919)
!919 = distinct !DILexicalBlock(scope: !916, file: !3, line: 326, column: 36)
!920 = !DILocation(line: 333, column: 13, scope: !855)
!921 = !DILocation(line: 323, column: 37, scope: !912)
!922 = !DILocation(line: 330, column: 17, scope: !912)
!923 = !DILocation(line: 331, column: 25, scope: !912)
!924 = !DILocation(line: 323, column: 36, scope: !912)
!925 = distinct !{!925, !926, !927}
!926 = !DILocation(line: 322, column: 13, scope: !855)
!927 = !DILocation(line: 332, column: 13, scope: !855)
!928 = !DILocation(line: 337, column: 27, scope: !850)
!929 = !{!930, !761, i64 80}
!930 = !{!"sharedObjectsStruct", !761, i64 0, !761, i64 8, !761, i64 16, !761, i64 24, !761, i64 32, !761, i64 40, !761, i64 48, !761, i64 56, !761, i64 64, !761, i64 72, !761, i64 80, !761, i64 88, !761, i64 96, !761, i64 104, !761, i64 112, !761, i64 120, !761, i64 128, !761, i64 136, !761, i64 144, !761, i64 152, !761, i64 160, !761, i64 168, !761, i64 176, !761, i64 184, !761, i64 192, !761, i64 200, !761, i64 208, !761, i64 216, !761, i64 224, !761, i64 232, !761, i64 240, !761, i64 248, !761, i64 256, !761, i64 264, !761, i64 272, !761, i64 280, !761, i64 288, !761, i64 296, !761, i64 304, !761, i64 312, !761, i64 320, !761, i64 328, !761, i64 336, !761, i64 344, !761, i64 352, !761, i64 360, !486, i64 368, !486, i64 448, !486, i64 80448, !486, i64 80704, !761, i64 80960, !761, i64 80968}
!931 = !DILocation(line: 337, column: 9, scope: !850)
!932 = !DILocation(line: 338, column: 5, scope: !850)
!933 = !DILocation(line: 339, column: 5, scope: !840)
!934 = !DILocation(line: 340, column: 1, scope: !840)
!935 = !DILocation(line: 348, column: 39, scope: !71)
!936 = !DILocation(line: 348, column: 48, scope: !71)
!937 = !DILocation(line: 349, column: 19, scope: !71)
!938 = !DILocation(line: 349, column: 12, scope: !71)
!939 = !DILocation(line: 351, column: 24, scope: !71)
!940 = !{!941, !761, i64 3000}
!941 = !{!"redisServer", !760, i64 0, !761, i64 8, !761, i64 16, !761, i64 24, !760, i64 32, !760, i64 36, !760, i64 40, !761, i64 48, !761, i64 56, !761, i64 64, !761, i64 72, !760, i64 80, !760, i64 84, !760, i64 88, !760, i64 92, !761, i64 96, !761, i64 104, !760, i64 112, !760, i64 116, !486, i64 120, !760, i64 164, !762, i64 168, !760, i64 176, !761, i64 184, !761, i64 192, !761, i64 200, !486, i64 208, !760, i64 216, !760, i64 220, !486, i64 224, !760, i64 352, !761, i64 360, !760, i64 368, !486, i64 372, !760, i64 436, !760, i64 440, !486, i64 444, !760, i64 508, !761, i64 512, !761, i64 520, !761, i64 528, !761, i64 536, !761, i64 544, !761, i64 552, !761, i64 560, !760, i64 568, !537, i64 576, !486, i64 584, !761, i64 840, !762, i64 848, !760, i64 856, !760, i64 860, !762, i64 864, !762, i64 872, !762, i64 880, !762, i64 888, !761, i64 896, !761, i64 904, !761, i64 912, !761, i64 920, !761, i64 928, !761, i64 936, !761, i64 944, !761, i64 952, !761, i64 960, !761, i64 968, !761, i64 976, !761, i64 984, !761, i64 992, !762, i64 1000, !537, i64 1008, !537, i64 1016, !537, i64 1024, !942, i64 1032, !537, i64 1040, !537, i64 1048, !537, i64 1056, !537, i64 1064, !537, i64 1072, !537, i64 1080, !537, i64 1088, !537, i64 1096, !537, i64 1104, !762, i64 1112, !537, i64 1120, !942, i64 1128, !537, i64 1136, !537, i64 1144, !537, i64 1152, !537, i64 1160, !761, i64 1168, !537, i64 1176, !537, i64 1184, !762, i64 1192, !943, i64 1200, !537, i64 1240, !537, i64 1248, !762, i64 1256, !762, i64 1264, !486, i64 1272, !760, i64 1728, !760, i64 1732, !760, i64 1736, !760, i64 1740, !760, i64 1744, !762, i64 1752, !760, i64 1760, !760, i64 1764, !760, i64 1768, !760, i64 1772, !762, i64 1776, !762, i64 1784, !760, i64 1792, !760, i64 1796, !760, i64 1800, !760, i64 1804, !486, i64 1808, !760, i64 1880, !760, i64 1884, !761, i64 1888, !760, i64 1896, !760, i64 1900, !762, i64 1904, !762, i64 1912, !762, i64 1920, !762, i64 1928, !760, i64 1936, !760, i64 1940, !761, i64 1944, !761, i64 1952, !760, i64 1960, !760, i64 1964, !762, i64 1968, !762, i64 1976, !762, i64 1984, !762, i64 1992, !760, i64 2000, !762, i64 2008, !760, i64 2016, !760, i64 2020, !760, i64 2024, !760, i64 2028, !760, i64 2032, !760, i64 2036, !760, i64 2040, !760, i64 2044, !760, i64 2048, !760, i64 2052, !760, i64 2056, !760, i64 2060, !760, i64 2064, !761, i64 2072, !537, i64 2080, !537, i64 2088, !760, i64 2096, !761, i64 2104, !760, i64 2112, !761, i64 2120, !760, i64 2128, !760, i64 2132, !762, i64 2136, !762, i64 2144, !762, i64 2152, !762, i64 2160, !760, i64 2168, !760, i64 2172, !760, i64 2176, !760, i64 2180, !760, i64 2184, !760, i64 2188, !486, i64 2192, !944, i64 2200, !945, i64 2224, !761, i64 2240, !760, i64 2248, !761, i64 2256, !760, i64 2264, !486, i64 2268, !486, i64 2309, !537, i64 2352, !537, i64 2360, !760, i64 2368, !760, i64 2372, !761, i64 2376, !537, i64 2384, !537, i64 2392, !537, i64 2400, !537, i64 2408, !762, i64 2416, !762, i64 2424, !760, i64 2432, !760, i64 2436, !760, i64 2440, !760, i64 2444, !760, i64 2448, !761, i64 2456, !761, i64 2464, !760, i64 2472, !760, i64 2476, !761, i64 2480, !761, i64 2488, !760, i64 2496, !760, i64 2500, !762, i64 2504, !762, i64 2512, !762, i64 2520, !760, i64 2528, !760, i64 2532, !761, i64 2536, !762, i64 2544, !760, i64 2552, !760, i64 2556, !760, i64 2560, !762, i64 2568, !760, i64 2576, !760, i64 2580, !760, i64 2584, !761, i64 2592, !486, i64 2600, !537, i64 2648, !760, i64 2656, !761, i64 2664, !761, i64 2672, !760, i64 2680, !761, i64 2688, !760, i64 2696, !760, i64 2700, !537, i64 2704, !760, i64 2712, !760, i64 2716, !760, i64 2720, !760, i64 2724, !537, i64 2728, !760, i64 2736, !486, i64 2740, !761, i64 2768, !761, i64 2776, !760, i64 2784, !760, i64 2788, !760, i64 2792, !760, i64 2796, !762, i64 2800, !762, i64 2808, !762, i64 2816, !762, i64 2824, !762, i64 2832, !762, i64 2840, !762, i64 2848, !762, i64 2856, !760, i64 2864, !760, i64 2868, !762, i64 2872, !762, i64 2880, !760, i64 2888, !537, i64 2896, !761, i64 2904, !761, i64 2912, !760, i64 2920, !760, i64 2924, !537, i64 2928, !761, i64 2936, !761, i64 2944, !760, i64 2952, !760, i64 2956, !760, i64 2960, !760, i64 2964, !761, i64 2968, !760, i64 2976, !760, i64 2980, !760, i64 2984, !761, i64 2992, !761, i64 3000, !761, i64 3008, !761, i64 3016, !537, i64 3024, !537, i64 3032, !537, i64 3040, !760, i64 3048, !760, i64 3052, !760, i64 3056, !760, i64 3060, !760, i64 3064, !760, i64 3068, !760, i64 3072, !760, i64 3076, !760, i64 3080, !760, i64 3084, !760, i64 3088, !537, i64 3096, !761, i64 3104, !761, i64 3112, !761, i64 3120, !760, i64 3128, !760, i64 3132, !760, i64 3136, !762, i64 3144, !761, i64 3152, !761, i64 3160, !761, i64 3168}
!942 = !{!"double", !486, i64 0}
!943 = !{!"malloc_stats", !762, i64 0, !762, i64 8, !762, i64 16, !762, i64 24, !762, i64 32}
!944 = !{!"", !760, i64 0, !762, i64 8, !537, i64 16}
!945 = !{!"redisOpArray", !761, i64 0, !760, i64 8}
!946 = !DILocation(line: 351, column: 13, scope: !71)
!947 = !DILocation(line: 362, column: 16, scope: !948)
!948 = distinct !DILexicalBlock(scope: !71, file: !3, line: 362, column: 9)
!949 = !{!941, !760, i64 3060}
!950 = !DILocation(line: 362, column: 9, scope: !948)
!951 = !DILocation(line: 362, column: 34, scope: !948)
!952 = !DILocation(line: 362, column: 45, scope: !948)
!953 = !{!941, !761, i64 3008}
!954 = !DILocation(line: 362, column: 57, scope: !948)
!955 = !{!956, !760, i64 160}
!956 = !{!"client", !762, i64 0, !760, i64 8, !761, i64 16, !761, i64 24, !761, i64 32, !762, i64 40, !761, i64 48, !762, i64 56, !760, i64 64, !761, i64 72, !761, i64 80, !761, i64 88, !760, i64 96, !760, i64 100, !762, i64 104, !761, i64 112, !537, i64 120, !762, i64 128, !762, i64 136, !762, i64 144, !762, i64 152, !760, i64 160, !760, i64 164, !760, i64 168, !760, i64 172, !760, i64 176, !762, i64 184, !762, i64 192, !761, i64 200, !537, i64 208, !537, i64 216, !537, i64 224, !537, i64 232, !537, i64 240, !486, i64 248, !760, i64 292, !486, i64 296, !760, i64 344, !957, i64 352, !760, i64 384, !958, i64 392, !537, i64 480, !761, i64 488, !761, i64 496, !761, i64 504, !761, i64 512, !761, i64 520, !760, i64 528, !486, i64 532}
!957 = !{!"multiState", !761, i64 0, !760, i64 8, !760, i64 12, !760, i64 16, !762, i64 24}
!958 = !{!"blockingState", !537, i64 0, !761, i64 8, !761, i64 16, !762, i64 24, !761, i64 32, !761, i64 40, !537, i64 48, !537, i64 56, !760, i64 64, !760, i64 68, !537, i64 72, !761, i64 80}
!959 = !DILocation(line: 362, column: 63, scope: !948)
!960 = !DILocation(line: 362, column: 9, scope: !71)
!961 = !DILocation(line: 363, column: 12, scope: !962)
!962 = distinct !DILexicalBlock(scope: !948, file: !3, line: 362, column: 80)
!963 = !DILocation(line: 363, column: 18, scope: !962)
!964 = !DILocation(line: 364, column: 5, scope: !962)
!965 = !DILocation(line: 365, column: 12, scope: !966)
!966 = distinct !DILexicalBlock(scope: !948, file: !3, line: 364, column: 12)
!967 = !DILocation(line: 365, column: 18, scope: !966)
!968 = !DILocation(line: 372, column: 9, scope: !324)
!969 = !{!760, !760, i64 0}
!970 = !DILocation(line: 372, column: 9, scope: !71)
!971 = !DILocation(line: 376, column: 9, scope: !323)
!972 = !DILocation(line: 377, column: 9, scope: !323)
!973 = !DILocation(line: 380, column: 10, scope: !71)
!974 = !DILocation(line: 383, column: 14, scope: !975)
!975 = distinct !DILexicalBlock(scope: !71, file: !3, line: 383, column: 9)
!976 = !DILocation(line: 383, column: 9, scope: !71)
!977 = !DILocation(line: 384, column: 9, scope: !978)
!978 = distinct !DILexicalBlock(scope: !975, file: !3, line: 383, column: 20)
!979 = !DILocation(line: 386, column: 14, scope: !978)
!980 = !DILocation(line: 387, column: 16, scope: !978)
!981 = !DILocation(line: 236, column: 30, scope: !807, inlinedAt: !982)
!982 = distinct !DILocation(line: 387, column: 30, scope: !978)
!983 = !DILocation(line: 237, column: 5, scope: !807, inlinedAt: !982)
!984 = !DILocation(line: 238, column: 5, scope: !807, inlinedAt: !982)
!985 = !DILocation(line: 239, column: 12, scope: !807, inlinedAt: !982)
!986 = !DILocation(line: 391, column: 9, scope: !987)
!987 = distinct !DILexicalBlock(scope: !71, file: !3, line: 391, column: 9)
!988 = !DILocation(line: 391, column: 19, scope: !987)
!989 = !DILocation(line: 391, column: 9, scope: !71)
!990 = !DILocation(line: 392, column: 25, scope: !991)
!991 = distinct !DILexicalBlock(scope: !987, file: !3, line: 391, column: 27)
!992 = !{!761, !761, i64 0}
!993 = !DILocation(line: 392, column: 44, scope: !991)
!994 = !DILocation(line: 392, column: 43, scope: !991)
!995 = !DILocation(line: 392, column: 16, scope: !991)
!996 = !DILocation(line: 392, column: 14, scope: !991)
!997 = !DILocation(line: 393, column: 19, scope: !991)
!998 = !DILocation(line: 394, column: 5, scope: !991)
!999 = !DILocation(line: 349, column: 9, scope: !71)
!1000 = !DILocation(line: 396, column: 19, scope: !327)
!1001 = !DILocation(line: 396, column: 5, scope: !328)
!1002 = !DILocation(line: 398, column: 9, scope: !326)
!1003 = !DILocation(line: 399, column: 9, scope: !326)
!1004 = !DILocation(line: 399, column: 14, scope: !326)
!1005 = !DILocation(line: 401, column: 27, scope: !336)
!1006 = !DILocation(line: 401, column: 13, scope: !336)
!1007 = !DILocation(line: 401, column: 31, scope: !336)
!1008 = !DILocation(line: 401, column: 13, scope: !326)
!1009 = !DILocation(line: 404, column: 30, scope: !335)
!1010 = !DILocation(line: 404, column: 24, scope: !335)
!1011 = !DILocation(line: 406, column: 23, scope: !335)
!1012 = !DILocation(line: 398, column: 16, scope: !326)
!1013 = !DILocation(line: 406, column: 21, scope: !335)
!1014 = !{!762, !762, i64 0}
!1015 = !DILocation(line: 397, column: 15, scope: !326)
!1016 = !DILocation(line: 408, column: 9, scope: !335)
!1017 = !DILocation(line: 409, column: 28, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !336, file: !3, line: 408, column: 16)
!1019 = !DILocation(line: 410, column: 23, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 410, column: 17)
!1021 = !DILocation(line: 410, column: 17, scope: !1018)
!1022 = !DILocation(line: 0, scope: !1018)
!1023 = !DILocation(line: 414, column: 15, scope: !339)
!1024 = !DILocation(line: 414, column: 39, scope: !339)
!1025 = !DILocation(line: 414, column: 42, scope: !339)
!1026 = !DILocation(line: 414, column: 60, scope: !339)
!1027 = !DILocation(line: 415, column: 13, scope: !339)
!1028 = !DILocation(line: 415, column: 38, scope: !339)
!1029 = !DILocation(line: 415, column: 35, scope: !339)
!1030 = !DILocation(line: 414, column: 13, scope: !326)
!1031 = !DILocation(line: 417, column: 40, scope: !338)
!1032 = !{!1033, !761, i64 8}
!1033 = !{!"redisObject", !760, i64 0, !760, i64 0, !760, i64 1, !760, i64 4, !761, i64 8}
!1034 = !DILocation(line: 417, column: 17, scope: !338)
!1035 = !DILocation(line: 418, column: 13, scope: !338)
!1036 = !DILocation(line: 418, column: 21, scope: !338)
!1037 = !DILocation(line: 419, column: 31, scope: !338)
!1038 = !DILocation(line: 420, column: 35, scope: !338)
!1039 = !DILocation(line: 420, column: 13, scope: !338)
!1040 = !DILocation(line: 421, column: 26, scope: !338)
!1041 = !DILocalVariable(name: "s", arg: 1, scope: !1042, file: !26, line: 130, type: !209)
!1042 = distinct !DISubprogram(name: "sdssetlen", scope: !26, file: !26, line: 130, type: !1043, isLocal: true, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1047)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !209, !1045}
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1046, line: 58, baseType: !22)
!1046 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!1047 = !{!1041, !1048, !1049, !1050}
!1048 = !DILocalVariable(name: "newlen", arg: 2, scope: !1042, file: !26, line: 130, type: !1045)
!1049 = !DILocalVariable(name: "flags", scope: !1042, file: !26, line: 131, type: !7)
!1050 = !DILocalVariable(name: "fp", scope: !1051, file: !26, line: 135, type: !6)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !26, line: 134, column: 13)
!1052 = distinct !DILexicalBlock(scope: !1042, file: !26, line: 132, column: 33)
!1053 = !DILocation(line: 130, column: 34, scope: !1042, inlinedAt: !1054)
!1054 = distinct !DILocation(line: 421, column: 13, scope: !338)
!1055 = !DILocation(line: 130, column: 44, scope: !1042, inlinedAt: !1054)
!1056 = !DILocation(line: 131, column: 27, scope: !1042, inlinedAt: !1054)
!1057 = !DILocation(line: 131, column: 19, scope: !1042, inlinedAt: !1054)
!1058 = !DILocation(line: 132, column: 5, scope: !1042, inlinedAt: !1054)
!1059 = !DILocation(line: 135, column: 32, scope: !1051, inlinedAt: !1054)
!1060 = !DILocation(line: 136, column: 23, scope: !1051, inlinedAt: !1054)
!1061 = !DILocation(line: 136, column: 21, scope: !1051, inlinedAt: !1054)
!1062 = !DILocation(line: 138, column: 13, scope: !1052, inlinedAt: !1054)
!1063 = !DILocation(line: 140, column: 33, scope: !1052, inlinedAt: !1054)
!1064 = !DILocation(line: 140, column: 13, scope: !1052, inlinedAt: !1054)
!1065 = !DILocation(line: 140, column: 31, scope: !1052, inlinedAt: !1054)
!1066 = !DILocation(line: 141, column: 13, scope: !1052, inlinedAt: !1054)
!1067 = !DILocation(line: 143, column: 34, scope: !1052, inlinedAt: !1054)
!1068 = !DILocation(line: 143, column: 13, scope: !1052, inlinedAt: !1054)
!1069 = !DILocation(line: 143, column: 28, scope: !1052, inlinedAt: !1054)
!1070 = !DILocation(line: 143, column: 32, scope: !1052, inlinedAt: !1054)
!1071 = !{!1072, !1072, i64 0}
!1072 = !{!"short", !486, i64 0}
!1073 = !DILocation(line: 144, column: 13, scope: !1052, inlinedAt: !1054)
!1074 = !DILocation(line: 146, column: 34, scope: !1052, inlinedAt: !1054)
!1075 = !DILocation(line: 146, column: 13, scope: !1052, inlinedAt: !1054)
!1076 = !DILocation(line: 146, column: 28, scope: !1052, inlinedAt: !1054)
!1077 = !DILocation(line: 146, column: 32, scope: !1052, inlinedAt: !1054)
!1078 = !DILocation(line: 147, column: 13, scope: !1052, inlinedAt: !1054)
!1079 = !DILocation(line: 149, column: 13, scope: !1052, inlinedAt: !1054)
!1080 = !DILocation(line: 149, column: 28, scope: !1052, inlinedAt: !1054)
!1081 = !DILocation(line: 149, column: 32, scope: !1052, inlinedAt: !1054)
!1082 = !DILocation(line: 150, column: 13, scope: !1052, inlinedAt: !1054)
!1083 = !DILocation(line: 423, column: 49, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !339, file: !3, line: 422, column: 16)
!1085 = !DILocation(line: 423, column: 23, scope: !1084)
!1086 = !DILocation(line: 423, column: 13, scope: !1084)
!1087 = !DILocation(line: 423, column: 21, scope: !1084)
!1088 = !DILocation(line: 425, column: 5, scope: !327)
!1089 = distinct !{!1089, !1001, !1090}
!1090 = !DILocation(line: 425, column: 5, scope: !328)
!1091 = !DILocation(line: 430, column: 11, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !71, file: !3, line: 430, column: 9)
!1093 = !DILocation(line: 430, column: 9, scope: !71)
!1094 = !DILocation(line: 432, column: 18, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 430, column: 20)
!1096 = !DILocation(line: 432, column: 9, scope: !1095)
!1097 = !DILocation(line: 0, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 432, column: 24)
!1099 = !DILocation(line: 433, column: 26, scope: !1098)
!1100 = !DILocation(line: 433, column: 13, scope: !1098)
!1101 = distinct !{!1101, !1096, !1102}
!1102 = !DILocation(line: 435, column: 9, scope: !1095)
!1103 = !DILocation(line: 436, column: 9, scope: !1095)
!1104 = !DILocation(line: 438, column: 14, scope: !1095)
!1105 = !DILocation(line: 439, column: 16, scope: !1095)
!1106 = !DILocation(line: 236, column: 30, scope: !807, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 439, column: 30, scope: !1095)
!1108 = !DILocation(line: 237, column: 5, scope: !807, inlinedAt: !1107)
!1109 = !DILocation(line: 238, column: 5, scope: !807, inlinedAt: !1107)
!1110 = !DILocation(line: 239, column: 12, scope: !807, inlinedAt: !1107)
!1111 = !DILocation(line: 443, column: 15, scope: !71)
!1112 = !DILocation(line: 443, column: 8, scope: !71)
!1113 = !DILocation(line: 443, column: 13, scope: !71)
!1114 = !{!956, !761, i64 72}
!1115 = !DILocation(line: 444, column: 8, scope: !71)
!1116 = !DILocation(line: 444, column: 13, scope: !71)
!1117 = !{!956, !760, i64 64}
!1118 = !DILocation(line: 447, column: 5, scope: !71)
!1119 = !DILocation(line: 448, column: 15, scope: !71)
!1120 = !DILocation(line: 448, column: 10, scope: !71)
!1121 = !DILocation(line: 449, column: 15, scope: !71)
!1122 = !DILocation(line: 452, column: 13, scope: !342)
!1123 = !DILocation(line: 452, column: 9, scope: !342)
!1124 = !DILocation(line: 452, column: 27, scope: !342)
!1125 = !DILocation(line: 452, column: 23, scope: !342)
!1126 = !DILocation(line: 452, column: 20, scope: !342)
!1127 = !DILocation(line: 453, column: 22, scope: !341)
!1128 = !DILocation(line: 453, column: 13, scope: !341)
!1129 = !DILocation(line: 454, column: 28, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 454, column: 9)
!1131 = distinct !DILexicalBlock(scope: !341, file: !3, line: 454, column: 9)
!1132 = !DILocation(line: 454, column: 23, scope: !1130)
!1133 = !DILocation(line: 454, column: 9, scope: !1131)
!1134 = !DILocation(line: 460, column: 26, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 459, column: 20)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 455, column: 17)
!1137 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 454, column: 39)
!1138 = !DILocation(line: 461, column: 46, scope: !1135)
!1139 = !DILocation(line: 461, column: 43, scope: !1135)
!1140 = !DILocation(line: 461, column: 55, scope: !1135)
!1141 = !DILocation(line: 461, column: 26, scope: !1135)
!1142 = distinct !{!1142, !1133, !1143}
!1143 = !DILocation(line: 463, column: 9, scope: !1131)
!1144 = !DILocation(line: 0, scope: !341)
!1145 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 464, column: 9, scope: !341)
!1147 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !1146)
!1148 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !1146)
!1149 = !DILocation(line: 468, column: 25, scope: !71)
!1150 = !DILocation(line: 465, column: 5, scope: !341)
!1151 = !DILocation(line: 468, column: 34, scope: !71)
!1152 = !DILocation(line: 468, column: 11, scope: !71)
!1153 = !DILocation(line: 350, column: 26, scope: !71)
!1154 = !DILocation(line: 469, column: 10, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !71, file: !3, line: 469, column: 9)
!1156 = !DILocation(line: 469, column: 14, scope: !1155)
!1157 = !DILocation(line: 469, column: 24, scope: !1155)
!1158 = !{!1159, !760, i64 16}
!1159 = !{!"redisCommand", !761, i64 0, !761, i64 8, !760, i64 16, !761, i64 24, !760, i64 32, !761, i64 40, !760, i64 48, !760, i64 52, !760, i64 56, !537, i64 64, !537, i64 72}
!1160 = !DILocation(line: 469, column: 30, scope: !1155)
!1161 = !DILocation(line: 469, column: 48, scope: !1155)
!1162 = !DILocation(line: 469, column: 34, scope: !1155)
!1163 = !DILocation(line: 470, column: 28, scope: !1155)
!1164 = !DILocation(line: 470, column: 26, scope: !1155)
!1165 = !DILocation(line: 473, column: 13, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 472, column: 13)
!1167 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 471, column: 5)
!1168 = !DILocation(line: 476, column: 13, scope: !1166)
!1169 = !DILocation(line: 479, column: 17, scope: !71)
!1170 = !DILocation(line: 479, column: 25, scope: !71)
!1171 = !{!956, !761, i64 88}
!1172 = !DILocation(line: 479, column: 8, scope: !71)
!1173 = !DILocation(line: 479, column: 12, scope: !71)
!1174 = !{!956, !761, i64 80}
!1175 = !DILocation(line: 482, column: 14, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !71, file: !3, line: 482, column: 9)
!1177 = !{!1159, !760, i64 32}
!1178 = !DILocation(line: 482, column: 20, scope: !1176)
!1179 = !DILocation(line: 482, column: 9, scope: !71)
!1180 = !DILocation(line: 483, column: 9, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 482, column: 36)
!1182 = !DILocation(line: 484, column: 9, scope: !1181)
!1183 = !DILocation(line: 490, column: 20, scope: !345)
!1184 = !DILocation(line: 490, column: 9, scope: !71)
!1185 = !DILocation(line: 521, column: 17, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !71, file: !3, line: 520, column: 9)
!1187 = !DILocation(line: 522, column: 17, scope: !1186)
!1188 = !DILocation(line: 491, column: 31, scope: !344)
!1189 = !DILocation(line: 491, column: 13, scope: !344)
!1190 = !DILocation(line: 492, column: 20, scope: !352)
!1191 = !{!941, !760, i64 3052}
!1192 = !DILocation(line: 492, column: 13, scope: !352)
!1193 = !DILocation(line: 492, column: 48, scope: !352)
!1194 = !DILocation(line: 492, column: 41, scope: !352)
!1195 = !DILocation(line: 492, column: 37, scope: !352)
!1196 = !DILocation(line: 493, column: 13, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !352, file: !3, line: 492, column: 72)
!1198 = !DILocation(line: 495, column: 13, scope: !1197)
!1199 = !DILocation(line: 496, column: 27, scope: !351)
!1200 = !{!941, !761, i64 2464}
!1201 = !DILocation(line: 496, column: 20, scope: !351)
!1202 = !DILocation(line: 496, column: 48, scope: !351)
!1203 = !DILocation(line: 496, column: 41, scope: !351)
!1204 = !DILocation(line: 496, column: 38, scope: !351)
!1205 = !DILocation(line: 497, column: 28, scope: !351)
!1206 = !DILocation(line: 497, column: 21, scope: !351)
!1207 = !DILocation(line: 498, column: 29, scope: !351)
!1208 = !DILocation(line: 498, column: 41, scope: !351)
!1209 = !DILocation(line: 498, column: 47, scope: !351)
!1210 = !DILocation(line: 496, column: 20, scope: !352)
!1211 = !DILocation(line: 500, column: 38, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !351, file: !3, line: 499, column: 9)
!1213 = !{!930, !761, i64 192}
!1214 = !DILocation(line: 500, column: 50, scope: !1212)
!1215 = !DILocation(line: 500, column: 13, scope: !1212)
!1216 = !DILocation(line: 501, column: 13, scope: !1212)
!1217 = !DILocation(line: 502, column: 20, scope: !351)
!1218 = !DILocation(line: 504, column: 42, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !348, file: !3, line: 503, column: 57)
!1220 = !{!930, !761, i64 176}
!1221 = !DILocation(line: 504, column: 53, scope: !1219)
!1222 = !DILocation(line: 504, column: 17, scope: !1219)
!1223 = !DILocation(line: 505, column: 13, scope: !1219)
!1224 = !DILocation(line: 506, column: 47, scope: !347)
!1225 = !DILocation(line: 508, column: 37, scope: !347)
!1226 = !{!941, !760, i64 2028}
!1227 = !DILocation(line: 508, column: 21, scope: !347)
!1228 = !DILocation(line: 506, column: 37, scope: !347)
!1229 = !DILocation(line: 506, column: 21, scope: !347)
!1230 = !DILocation(line: 509, column: 17, scope: !347)
!1231 = !DILocation(line: 510, column: 17, scope: !347)
!1232 = !DILocation(line: 520, column: 16, scope: !1186)
!1233 = !{!941, !537, i64 2704}
!1234 = !DILocation(line: 520, column: 9, scope: !1186)
!1235 = !DILocation(line: 521, column: 10, scope: !1186)
!1236 = !DILocation(line: 520, column: 26, scope: !1186)
!1237 = !DILocation(line: 522, column: 10, scope: !1186)
!1238 = !DILocation(line: 523, column: 16, scope: !1186)
!1239 = !DILocation(line: 523, column: 32, scope: !1186)
!1240 = !DILocation(line: 524, column: 15, scope: !1186)
!1241 = !DILocation(line: 524, column: 21, scope: !1186)
!1242 = !DILocation(line: 520, column: 9, scope: !71)
!1243 = !DILocation(line: 526, column: 13, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 526, column: 13)
!1245 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 525, column: 5)
!1246 = !DILocation(line: 526, column: 52, scope: !1244)
!1247 = !DILocation(line: 526, column: 13, scope: !1245)
!1248 = !DILocation(line: 527, column: 38, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 526, column: 61)
!1250 = !{!930, !761, i64 232}
!1251 = !DILocation(line: 527, column: 46, scope: !1249)
!1252 = !DILocation(line: 527, column: 13, scope: !1249)
!1253 = !DILocation(line: 528, column: 13, scope: !1249)
!1254 = !DILocation(line: 532, column: 14, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !71, file: !3, line: 532, column: 9)
!1256 = !DILocation(line: 532, column: 20, scope: !1255)
!1257 = !DILocation(line: 532, column: 9, scope: !71)
!1258 = !DILocation(line: 532, column: 58, scope: !1255)
!1259 = !DILocation(line: 532, column: 34, scope: !1255)
!1260 = !DILocation(line: 533, column: 20, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !71, file: !3, line: 533, column: 9)
!1262 = !DILocation(line: 533, column: 9, scope: !71)
!1263 = !DILocation(line: 533, column: 56, scope: !1261)
!1264 = !{!941, !760, i64 3048}
!1265 = !DILocation(line: 533, column: 33, scope: !1261)
!1266 = !DILocation(line: 538, column: 16, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !71, file: !3, line: 538, column: 9)
!1268 = !{!941, !760, i64 2924}
!1269 = !DILocation(line: 538, column: 9, scope: !1267)
!1270 = !DILocation(line: 538, column: 43, scope: !1267)
!1271 = !DILocation(line: 538, column: 36, scope: !1267)
!1272 = !DILocation(line: 538, column: 32, scope: !1267)
!1273 = !DILocation(line: 539, column: 18, scope: !1267)
!1274 = !DILocation(line: 539, column: 30, scope: !1267)
!1275 = !DILocation(line: 539, column: 36, scope: !1267)
!1276 = !DILocation(line: 538, column: 9, scope: !71)
!1277 = !DILocation(line: 542, column: 12, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 540, column: 5)
!1279 = !DILocation(line: 542, column: 18, scope: !1278)
!1280 = !DILocation(line: 543, column: 40, scope: !1278)
!1281 = !DILocation(line: 543, column: 46, scope: !1278)
!1282 = !DILocation(line: 543, column: 18, scope: !1278)
!1283 = !DILocation(line: 544, column: 33, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 544, column: 13)
!1285 = !DILocation(line: 544, column: 40, scope: !1284)
!1286 = !DILocation(line: 544, column: 48, scope: !1284)
!1287 = !DILocation(line: 544, column: 13, scope: !1284)
!1288 = !DILocation(line: 545, column: 35, scope: !1284)
!1289 = !{!941, !761, i64 2944}
!1290 = !DILocation(line: 545, column: 44, scope: !1284)
!1291 = !{!1292, !761, i64 0}
!1292 = !{!"clusterState", !761, i64 0, !762, i64 8, !760, i64 16, !760, i64 20, !761, i64 24, !761, i64 32, !486, i64 40, !486, i64 131112, !486, i64 262184, !486, i64 393256, !761, i64 524328, !537, i64 524336, !760, i64 524344, !760, i64 524348, !760, i64 524352, !762, i64 524360, !760, i64 524368, !537, i64 524376, !761, i64 524384, !537, i64 524392, !760, i64 524400, !762, i64 524408, !760, i64 524416, !486, i64 524424, !486, i64 524504, !537, i64 524584}
!1293 = !DILocation(line: 544, column: 64, scope: !1284)
!1294 = !DILocation(line: 544, column: 13, scope: !1278)
!1295 = !DILocation(line: 547, column: 13, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 546, column: 9)
!1297 = !DILocation(line: 550, column: 13, scope: !1296)
!1298 = !DILocation(line: 557, column: 16, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !71, file: !3, line: 557, column: 9)
!1300 = !{!941, !760, i64 3056}
!1301 = !DILocation(line: 557, column: 9, scope: !1299)
!1302 = !DILocation(line: 558, column: 17, scope: !1299)
!1303 = !DILocation(line: 558, column: 10, scope: !1299)
!1304 = !DILocation(line: 557, column: 39, scope: !1299)
!1305 = !DILocation(line: 559, column: 18, scope: !1299)
!1306 = !DILocation(line: 559, column: 30, scope: !1299)
!1307 = !DILocation(line: 559, column: 36, scope: !1299)
!1308 = !DILocation(line: 560, column: 16, scope: !1299)
!1309 = !DILocation(line: 560, column: 9, scope: !1299)
!1310 = !DILocation(line: 559, column: 52, scope: !1299)
!1311 = !DILocation(line: 561, column: 16, scope: !1299)
!1312 = !DILocation(line: 561, column: 25, scope: !1299)
!1313 = !DILocation(line: 563, column: 9, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 562, column: 5)
!1315 = !DILocation(line: 564, column: 34, scope: !1314)
!1316 = !DILocation(line: 569, column: 16, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !71, file: !3, line: 569, column: 9)
!1318 = !DILocation(line: 565, column: 5, scope: !1314)
!1319 = !DILocation(line: 568, column: 9, scope: !71)
!1320 = !DILocation(line: 569, column: 9, scope: !1317)
!1321 = !DILocation(line: 569, column: 9, scope: !71)
!1322 = !DILocation(line: 571, column: 20, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 571, column: 13)
!1324 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 569, column: 40)
!1325 = !{!941, !760, i64 3064}
!1326 = !DILocation(line: 571, column: 29, scope: !1323)
!1327 = !DILocation(line: 571, column: 13, scope: !1324)
!1328 = !DILocation(line: 573, column: 13, scope: !1324)
!1329 = !DILocation(line: 0, scope: !71)
!1330 = !DILocation(line: 576, column: 5, scope: !71)
!1331 = !DILocation(line: 581, column: 9, scope: !357)
!1332 = !{!956, !761, i64 112}
!1333 = !{!1334, !762, i64 40}
!1334 = !{!"list", !761, i64 0, !761, i64 8, !761, i64 16, !761, i64 24, !761, i64 32, !762, i64 40}
!1335 = !DILocation(line: 581, column: 30, scope: !357)
!1336 = !DILocation(line: 0, scope: !356)
!1337 = !{!956, !760, i64 528}
!1338 = !DILocation(line: 581, column: 48, scope: !357)
!1339 = !DILocation(line: 581, column: 35, scope: !357)
!1340 = !DILocation(line: 585, column: 9, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !357, file: !3, line: 581, column: 75)
!1342 = !DILocation(line: 585, column: 27, scope: !1341)
!1343 = !DILocation(line: 586, column: 17, scope: !1341)
!1344 = !DILocation(line: 352, column: 9, scope: !71)
!1345 = !DILocation(line: 587, column: 19, scope: !1341)
!1346 = !DILocation(line: 588, column: 5, scope: !1341)
!1347 = !DILocation(line: 589, column: 27, scope: !356)
!1348 = !DILocation(line: 589, column: 34, scope: !356)
!1349 = !DILocation(line: 589, column: 17, scope: !356)
!1350 = !DILocation(line: 590, column: 19, scope: !356)
!1351 = !DILocation(line: 591, column: 15, scope: !356)
!1352 = !DILocation(line: 591, column: 9, scope: !356)
!1353 = !DILocation(line: 592, column: 35, scope: !355)
!1354 = !{!1334, !761, i64 0}
!1355 = !{!1356, !761, i64 16}
!1356 = !{!"listNode", !761, i64 0, !761, i64 8, !761, i64 16}
!1357 = !DILocation(line: 592, column: 31, scope: !355)
!1358 = !DILocation(line: 594, column: 37, scope: !355)
!1359 = !DILocation(line: 594, column: 47, scope: !355)
!1360 = !DILocation(line: 594, column: 21, scope: !355)
!1361 = !DILocation(line: 595, column: 28, scope: !355)
!1362 = !DILocation(line: 595, column: 34, scope: !355)
!1363 = !DILocation(line: 595, column: 13, scope: !355)
!1364 = distinct !{!1364, !1352, !1365}
!1365 = !DILocation(line: 596, column: 9, scope: !356)
!1366 = !DILocation(line: 598, column: 9, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !71, file: !3, line: 598, column: 9)
!1368 = !DILocation(line: 598, column: 21, scope: !1367)
!1369 = !DILocation(line: 598, column: 24, scope: !1367)
!1370 = !DILocation(line: 598, column: 33, scope: !1367)
!1371 = !DILocation(line: 598, column: 9, scope: !71)
!1372 = !DILocation(line: 599, column: 5, scope: !71)
!1373 = !DILocation(line: 602, column: 13, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !71, file: !3, line: 602, column: 9)
!1375 = !DILocation(line: 602, column: 9, scope: !1374)
!1376 = !DILocation(line: 602, column: 27, scope: !1374)
!1377 = !DILocation(line: 602, column: 23, scope: !1374)
!1378 = !DILocation(line: 602, column: 20, scope: !1374)
!1379 = !DILocalVariable(name: "reply", arg: 1, scope: !1380, file: !3, line: 2093, type: !11)
!1380 = distinct !DISubprogram(name: "ldbLogRedisReply", scope: !3, file: !3, line: 2093, type: !1381, isLocal: false, isDefinition: true, scopeLine: 2093, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1383)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !11}
!1383 = !{!1379, !1384}
!1384 = !DILocalVariable(name: "log", scope: !1380, file: !3, line: 2094, type: !209)
!1385 = !DILocation(line: 2093, column: 29, scope: !1380, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 603, column: 9, scope: !1374)
!1387 = !DILocation(line: 2094, column: 5, scope: !1380, inlinedAt: !1386)
!1388 = !DILocation(line: 2094, column: 15, scope: !1380, inlinedAt: !1386)
!1389 = !DILocation(line: 2094, column: 9, scope: !1380, inlinedAt: !1386)
!1390 = !DILocation(line: 2095, column: 5, scope: !1380, inlinedAt: !1386)
!1391 = !DILocation(line: 2096, column: 22, scope: !1380, inlinedAt: !1386)
!1392 = !DILocation(line: 2096, column: 5, scope: !1380, inlinedAt: !1386)
!1393 = !DILocation(line: 2097, column: 1, scope: !1380, inlinedAt: !1386)
!1394 = !DILocation(line: 603, column: 9, scope: !1374)
!1395 = !DILocation(line: 607, column: 15, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !71, file: !3, line: 607, column: 9)
!1397 = !DILocation(line: 607, column: 21, scope: !1396)
!1398 = !DILocation(line: 608, column: 17, scope: !1396)
!1399 = !DILocation(line: 608, column: 40, scope: !1396)
!1400 = !DILocation(line: 607, column: 44, scope: !1396)
!1401 = !DILocation(line: 609, column: 10, scope: !1396)
!1402 = !DILocation(line: 609, column: 19, scope: !1396)
!1403 = !DILocation(line: 609, column: 26, scope: !1396)
!1404 = !DILocation(line: 609, column: 29, scope: !1396)
!1405 = !DILocation(line: 609, column: 38, scope: !1396)
!1406 = !DILocation(line: 607, column: 9, scope: !71)
!1407 = !DILocation(line: 610, column: 13, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 609, column: 47)
!1409 = !DILocation(line: 611, column: 5, scope: !1408)
!1410 = !DILocation(line: 612, column: 18, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !71, file: !3, line: 612, column: 9)
!1412 = !DILocation(line: 612, column: 15, scope: !1411)
!1413 = !DILocation(line: 612, column: 9, scope: !71)
!1414 = !DILocation(line: 612, column: 26, scope: !1411)
!1415 = !DILocation(line: 613, column: 8, scope: !71)
!1416 = !DILocation(line: 613, column: 20, scope: !71)
!1417 = !{!956, !537, i64 120}
!1418 = !DILocation(line: 613, column: 5, scope: !71)
!1419 = !DILocation(line: 618, column: 24, scope: !367)
!1420 = !DILocation(line: 618, column: 19, scope: !367)
!1421 = !DILocation(line: 0, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !71, file: !3, line: 639, column: 9)
!1423 = !DILocation(line: 618, column: 5, scope: !368)
!1424 = !DILocation(line: 619, column: 19, scope: !366)
!1425 = !DILocation(line: 619, column: 15, scope: !366)
!1426 = !DILocation(line: 624, column: 15, scope: !371)
!1427 = !DILocation(line: 624, column: 39, scope: !371)
!1428 = !DILocation(line: 625, column: 16, scope: !371)
!1429 = !{!1033, !760, i64 4}
!1430 = !DILocation(line: 625, column: 25, scope: !371)
!1431 = !DILocation(line: 625, column: 30, scope: !371)
!1432 = !DILocation(line: 626, column: 17, scope: !371)
!1433 = !DILocation(line: 626, column: 46, scope: !371)
!1434 = !DILocation(line: 628, column: 23, scope: !371)
!1435 = !DILocalVariable(name: "s", arg: 1, scope: !1436, file: !26, line: 87, type: !1439)
!1436 = distinct !DISubprogram(name: "sdslen", scope: !26, file: !26, line: 87, type: !1437, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1440)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!1045, !1439}
!1439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!1440 = !{!1435, !1441}
!1441 = !DILocalVariable(name: "flags", scope: !1436, file: !26, line: 88, type: !7)
!1442 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 628, column: 13, scope: !371)
!1444 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !1443)
!1445 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !1443)
!1446 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !1443)
!1447 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !1443)
!1448 = distinct !DILexicalBlock(scope: !1436, file: !26, line: 89, column: 33)
!1449 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !1443)
!1450 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !1443)
!1451 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !1443)
!1452 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !1443)
!1453 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !1443)
!1454 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !1443)
!1455 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !1443)
!1456 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !1443)
!1457 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !1443)
!1458 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !1443)
!1459 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !1443)
!1460 = !DILocation(line: 0, scope: !1448, inlinedAt: !1443)
!1461 = !DILocation(line: 628, column: 28, scope: !371)
!1462 = !DILocation(line: 624, column: 13, scope: !366)
!1463 = !DILocation(line: 630, column: 17, scope: !370)
!1464 = !DILocation(line: 631, column: 17, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !370, file: !3, line: 631, column: 17)
!1466 = !DILocation(line: 631, column: 17, scope: !370)
!1467 = !DILocation(line: 631, column: 36, scope: !1465)
!1468 = !DILocation(line: 632, column: 31, scope: !370)
!1469 = !DILocalVariable(name: "s", arg: 1, scope: !1470, file: !26, line: 180, type: !1439)
!1470 = distinct !DISubprogram(name: "sdsalloc", scope: !26, file: !26, line: 180, type: !1437, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1471)
!1471 = !{!1469, !1472}
!1472 = !DILocalVariable(name: "flags", scope: !1470, file: !26, line: 181, type: !7)
!1473 = !DILocation(line: 180, column: 41, scope: !1470, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 633, column: 37, scope: !370)
!1475 = !DILocation(line: 181, column: 27, scope: !1470, inlinedAt: !1474)
!1476 = !DILocation(line: 181, column: 19, scope: !1470, inlinedAt: !1474)
!1477 = !DILocation(line: 182, column: 5, scope: !1470, inlinedAt: !1474)
!1478 = !DILocation(line: 184, column: 20, scope: !1479, inlinedAt: !1474)
!1479 = distinct !DILexicalBlock(scope: !1470, file: !26, line: 182, column: 33)
!1480 = !DILocation(line: 184, column: 13, scope: !1479, inlinedAt: !1474)
!1481 = !DILocation(line: 186, column: 34, scope: !1479, inlinedAt: !1474)
!1482 = !DILocation(line: 186, column: 20, scope: !1479, inlinedAt: !1474)
!1483 = !DILocation(line: 186, column: 13, scope: !1479, inlinedAt: !1474)
!1484 = !DILocation(line: 188, column: 35, scope: !1479, inlinedAt: !1474)
!1485 = !DILocation(line: 188, column: 20, scope: !1479, inlinedAt: !1474)
!1486 = !DILocation(line: 188, column: 13, scope: !1479, inlinedAt: !1474)
!1487 = !DILocation(line: 190, column: 35, scope: !1479, inlinedAt: !1474)
!1488 = !DILocation(line: 190, column: 20, scope: !1479, inlinedAt: !1474)
!1489 = !DILocation(line: 190, column: 13, scope: !1479, inlinedAt: !1474)
!1490 = !DILocation(line: 192, column: 35, scope: !1479, inlinedAt: !1474)
!1491 = !DILocation(line: 192, column: 13, scope: !1479, inlinedAt: !1474)
!1492 = !DILocation(line: 0, scope: !1479, inlinedAt: !1474)
!1493 = !DILocation(line: 633, column: 13, scope: !370)
!1494 = !DILocation(line: 633, column: 35, scope: !370)
!1495 = !DILocation(line: 634, column: 9, scope: !370)
!1496 = !DILocation(line: 635, column: 13, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !371, file: !3, line: 634, column: 16)
!1498 = !DILocation(line: 618, column: 31, scope: !367)
!1499 = distinct !{!1499, !1423, !1500}
!1500 = !DILocation(line: 637, column: 5, scope: !368)
!1501 = !DILocation(line: 639, column: 20, scope: !1422)
!1502 = !DILocation(line: 639, column: 17, scope: !1422)
!1503 = !DILocation(line: 639, column: 9, scope: !71)
!1504 = !DILocation(line: 640, column: 15, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 639, column: 26)
!1506 = !DILocation(line: 640, column: 9, scope: !1505)
!1507 = !DILocation(line: 641, column: 14, scope: !1505)
!1508 = !DILocation(line: 642, column: 19, scope: !1505)
!1509 = !DILocation(line: 643, column: 5, scope: !1505)
!1510 = !DILocation(line: 645, column: 9, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !71, file: !3, line: 645, column: 9)
!1512 = !DILocation(line: 645, column: 9, scope: !71)
!1513 = !DILocation(line: 236, column: 30, scope: !807, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 650, column: 16, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 645, column: 22)
!1516 = !DILocation(line: 237, column: 5, scope: !807, inlinedAt: !1514)
!1517 = !DILocation(line: 238, column: 5, scope: !807, inlinedAt: !1514)
!1518 = !DILocation(line: 239, column: 12, scope: !807, inlinedAt: !1514)
!1519 = !DILocation(line: 650, column: 9, scope: !1515)
!1520 = !DILocation(line: 654, column: 1, scope: !71)
!1521 = !DILocation(line: 457, column: 30, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 455, column: 26)
!1523 = !DILocation(line: 456, column: 26, scope: !1522)
!1524 = !DILocation(line: 458, column: 17, scope: !1522)
!1525 = !DILocation(line: 2093, column: 29, scope: !1380)
!1526 = !DILocation(line: 2094, column: 5, scope: !1380)
!1527 = !DILocation(line: 2094, column: 15, scope: !1380)
!1528 = !DILocation(line: 2094, column: 9, scope: !1380)
!1529 = !DILocation(line: 2095, column: 5, scope: !1380)
!1530 = !DILocation(line: 2096, column: 22, scope: !1380)
!1531 = !DILocation(line: 2096, column: 5, scope: !1380)
!1532 = !DILocation(line: 2097, column: 1, scope: !1380)
!1533 = distinct !DISubprogram(name: "luaRedisCallCommand", scope: !3, file: !3, line: 657, type: !808, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1534)
!1534 = !{!1535}
!1535 = !DILocalVariable(name: "lua", arg: 1, scope: !1533, file: !3, line: 657, type: !74)
!1536 = !DILocation(line: 657, column: 36, scope: !1533)
!1537 = !DILocation(line: 658, column: 12, scope: !1533)
!1538 = !DILocation(line: 658, column: 5, scope: !1533)
!1539 = distinct !DISubprogram(name: "luaRedisPCallCommand", scope: !3, file: !3, line: 662, type: !808, isLocal: false, isDefinition: true, scopeLine: 662, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1540)
!1540 = !{!1541}
!1541 = !DILocalVariable(name: "lua", arg: 1, scope: !1539, file: !3, line: 662, type: !74)
!1542 = !DILocation(line: 662, column: 37, scope: !1539)
!1543 = !DILocation(line: 663, column: 12, scope: !1539)
!1544 = !DILocation(line: 663, column: 5, scope: !1539)
!1545 = distinct !DISubprogram(name: "luaRedisSha1hexCommand", scope: !3, file: !3, line: 668, type: !808, isLocal: false, isDefinition: true, scopeLine: 668, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1546)
!1546 = !{!1547, !1548, !1549, !1550, !1551}
!1547 = !DILocalVariable(name: "lua", arg: 1, scope: !1545, file: !3, line: 668, type: !74)
!1548 = !DILocalVariable(name: "argc", scope: !1545, file: !3, line: 669, type: !15)
!1549 = !DILocalVariable(name: "digest", scope: !1545, file: !3, line: 670, type: !252)
!1550 = !DILocalVariable(name: "len", scope: !1545, file: !3, line: 671, type: !211)
!1551 = !DILocalVariable(name: "s", scope: !1545, file: !3, line: 672, type: !11)
!1552 = !DILocation(line: 91, column: 19, scope: !442, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 680, column: 5, scope: !1545)
!1554 = !DILocation(line: 668, column: 39, scope: !1545)
!1555 = !DILocation(line: 669, column: 16, scope: !1545)
!1556 = !DILocation(line: 669, column: 9, scope: !1545)
!1557 = !DILocation(line: 670, column: 5, scope: !1545)
!1558 = !DILocation(line: 670, column: 10, scope: !1545)
!1559 = !DILocation(line: 671, column: 5, scope: !1545)
!1560 = !DILocation(line: 674, column: 14, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 674, column: 9)
!1562 = !DILocation(line: 674, column: 9, scope: !1545)
!1563 = !DILocation(line: 675, column: 9, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1561, file: !3, line: 674, column: 20)
!1565 = !DILocation(line: 676, column: 16, scope: !1564)
!1566 = !DILocation(line: 676, column: 9, scope: !1564)
!1567 = !DILocation(line: 671, column: 12, scope: !1545)
!1568 = !DILocation(line: 679, column: 16, scope: !1545)
!1569 = !DILocation(line: 672, column: 11, scope: !1545)
!1570 = !DILocation(line: 680, column: 22, scope: !1545)
!1571 = !DILocation(line: 89, column: 20, scope: !442, inlinedAt: !1553)
!1572 = !DILocation(line: 89, column: 34, scope: !442, inlinedAt: !1553)
!1573 = !DILocation(line: 89, column: 49, scope: !442, inlinedAt: !1553)
!1574 = !DILocation(line: 90, column: 5, scope: !442, inlinedAt: !1553)
!1575 = !DILocation(line: 91, column: 5, scope: !442, inlinedAt: !1553)
!1576 = !DILocation(line: 90, column: 14, scope: !442, inlinedAt: !1553)
!1577 = !DILocation(line: 95, column: 5, scope: !442, inlinedAt: !1553)
!1578 = !DILocation(line: 96, column: 44, scope: !442, inlinedAt: !1553)
!1579 = !DILocation(line: 96, column: 5, scope: !442, inlinedAt: !1553)
!1580 = !DILocation(line: 97, column: 5, scope: !442, inlinedAt: !1553)
!1581 = !DILocation(line: 93, column: 9, scope: !442, inlinedAt: !1553)
!1582 = !DILocation(line: 99, column: 5, scope: !481, inlinedAt: !1553)
!1583 = !DILocation(line: 100, column: 30, scope: !483, inlinedAt: !1553)
!1584 = !DILocation(line: 100, column: 43, scope: !483, inlinedAt: !1553)
!1585 = !DILocation(line: 100, column: 23, scope: !483, inlinedAt: !1553)
!1586 = !DILocation(line: 100, column: 17, scope: !483, inlinedAt: !1553)
!1587 = !DILocation(line: 100, column: 9, scope: !483, inlinedAt: !1553)
!1588 = !DILocation(line: 100, column: 21, scope: !483, inlinedAt: !1553)
!1589 = !DILocation(line: 101, column: 38, scope: !483, inlinedAt: !1553)
!1590 = !DILocation(line: 101, column: 25, scope: !483, inlinedAt: !1553)
!1591 = !DILocation(line: 101, column: 19, scope: !483, inlinedAt: !1553)
!1592 = !DILocation(line: 101, column: 9, scope: !483, inlinedAt: !1553)
!1593 = !DILocation(line: 101, column: 23, scope: !483, inlinedAt: !1553)
!1594 = !DILocation(line: 99, column: 26, scope: !484, inlinedAt: !1553)
!1595 = !DILocation(line: 99, column: 19, scope: !484, inlinedAt: !1553)
!1596 = !DILocation(line: 103, column: 5, scope: !442, inlinedAt: !1553)
!1597 = !DILocation(line: 103, column: 16, scope: !442, inlinedAt: !1553)
!1598 = !DILocation(line: 104, column: 1, scope: !442, inlinedAt: !1553)
!1599 = !DILocation(line: 681, column: 5, scope: !1545)
!1600 = !DILocation(line: 682, column: 5, scope: !1545)
!1601 = !DILocation(line: 0, scope: !1545)
!1602 = !DILocation(line: 683, column: 1, scope: !1545)
!1603 = distinct !DISubprogram(name: "luaRedisReturnSingleFieldTable", scope: !3, file: !3, line: 692, type: !1604, isLocal: false, isDefinition: true, scopeLine: 692, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1606)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!15, !74, !11}
!1606 = !{!1607, !1608}
!1607 = !DILocalVariable(name: "lua", arg: 1, scope: !1603, file: !3, line: 692, type: !74)
!1608 = !DILocalVariable(name: "field", arg: 2, scope: !1603, file: !3, line: 692, type: !11)
!1609 = !DILocation(line: 692, column: 47, scope: !1603)
!1610 = !DILocation(line: 692, column: 58, scope: !1603)
!1611 = !DILocation(line: 693, column: 9, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 693, column: 9)
!1613 = !DILocation(line: 693, column: 25, scope: !1612)
!1614 = !DILocation(line: 693, column: 30, scope: !1612)
!1615 = !DILocation(line: 693, column: 33, scope: !1612)
!1616 = !DILocation(line: 693, column: 50, scope: !1612)
!1617 = !DILocation(line: 693, column: 9, scope: !1603)
!1618 = !DILocation(line: 694, column: 9, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 693, column: 66)
!1620 = !DILocation(line: 695, column: 9, scope: !1619)
!1621 = !DILocation(line: 698, column: 5, scope: !1603)
!1622 = !DILocation(line: 699, column: 5, scope: !1603)
!1623 = !DILocation(line: 700, column: 5, scope: !1603)
!1624 = !DILocation(line: 701, column: 5, scope: !1603)
!1625 = !DILocation(line: 702, column: 5, scope: !1603)
!1626 = !DILocation(line: 703, column: 1, scope: !1603)
!1627 = distinct !DISubprogram(name: "luaRedisErrorReplyCommand", scope: !3, file: !3, line: 706, type: !808, isLocal: false, isDefinition: true, scopeLine: 706, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1628)
!1628 = !{!1629}
!1629 = !DILocalVariable(name: "lua", arg: 1, scope: !1627, file: !3, line: 706, type: !74)
!1630 = !DILocation(line: 706, column: 42, scope: !1627)
!1631 = !DILocation(line: 707, column: 12, scope: !1627)
!1632 = !DILocation(line: 707, column: 5, scope: !1627)
!1633 = distinct !DISubprogram(name: "luaRedisStatusReplyCommand", scope: !3, file: !3, line: 711, type: !808, isLocal: false, isDefinition: true, scopeLine: 711, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1634)
!1634 = !{!1635}
!1635 = !DILocalVariable(name: "lua", arg: 1, scope: !1633, file: !3, line: 711, type: !74)
!1636 = !DILocation(line: 711, column: 43, scope: !1633)
!1637 = !DILocation(line: 712, column: 12, scope: !1633)
!1638 = !DILocation(line: 712, column: 5, scope: !1633)
!1639 = distinct !DISubprogram(name: "luaRedisReplicateCommandsCommand", scope: !3, file: !3, line: 721, type: !808, isLocal: false, isDefinition: true, scopeLine: 721, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1640)
!1640 = !{!1641}
!1641 = !DILocalVariable(name: "lua", arg: 1, scope: !1639, file: !3, line: 721, type: !74)
!1642 = !DILocation(line: 721, column: 49, scope: !1639)
!1643 = !DILocation(line: 722, column: 16, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 722, column: 9)
!1645 = !DILocation(line: 722, column: 9, scope: !1644)
!1646 = !DILocation(line: 722, column: 9, scope: !1639)
!1647 = !DILocation(line: 723, column: 9, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 722, column: 33)
!1649 = !DILocation(line: 724, column: 5, scope: !1648)
!1650 = !DILocation(line: 725, column: 39, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 724, column: 12)
!1652 = !DILocation(line: 729, column: 22, scope: !1651)
!1653 = !DILocation(line: 729, column: 9, scope: !1651)
!1654 = !DILocation(line: 730, column: 9, scope: !1651)
!1655 = !DILocation(line: 732, column: 5, scope: !1639)
!1656 = distinct !DISubprogram(name: "luaRedisBreakpointCommand", scope: !3, file: !3, line: 740, type: !808, isLocal: false, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1657)
!1657 = !{!1658}
!1658 = !DILocalVariable(name: "lua", arg: 1, scope: !1656, file: !3, line: 740, type: !74)
!1659 = !DILocation(line: 740, column: 42, scope: !1656)
!1660 = !DILocation(line: 741, column: 13, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 741, column: 9)
!1662 = !DILocation(line: 741, column: 9, scope: !1661)
!1663 = !DILocation(line: 741, column: 9, scope: !1656)
!1664 = !DILocation(line: 742, column: 19, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 741, column: 21)
!1666 = !{!759, !760, i64 304}
!1667 = !DILocation(line: 743, column: 9, scope: !1665)
!1668 = !DILocation(line: 744, column: 5, scope: !1665)
!1669 = !DILocation(line: 745, column: 9, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 744, column: 12)
!1671 = !DILocation(line: 747, column: 5, scope: !1656)
!1672 = distinct !DISubprogram(name: "luaRedisDebugCommand", scope: !3, file: !3, line: 755, type: !808, isLocal: false, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1673)
!1673 = !{!1674, !1675, !1676}
!1674 = !DILocalVariable(name: "lua", arg: 1, scope: !1672, file: !3, line: 755, type: !74)
!1675 = !DILocalVariable(name: "argc", scope: !1672, file: !3, line: 757, type: !15)
!1676 = !DILocalVariable(name: "log", scope: !1672, file: !3, line: 758, type: !209)
!1677 = !DILocation(line: 755, column: 37, scope: !1672)
!1678 = !DILocation(line: 756, column: 14, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 756, column: 9)
!1680 = !DILocation(line: 756, column: 10, scope: !1679)
!1681 = !DILocation(line: 756, column: 9, scope: !1672)
!1682 = !DILocation(line: 757, column: 16, scope: !1672)
!1683 = !DILocation(line: 757, column: 9, scope: !1672)
!1684 = !DILocation(line: 758, column: 28, scope: !1672)
!1685 = !DILocation(line: 758, column: 64, scope: !1672)
!1686 = !{!759, !760, i64 324}
!1687 = !DILocation(line: 758, column: 15, scope: !1672)
!1688 = !DILocation(line: 758, column: 9, scope: !1672)
!1689 = !DILocation(line: 759, column: 5, scope: !1672)
!1690 = !DILocation(line: 759, column: 15, scope: !1672)
!1691 = !DILocation(line: 760, column: 43, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 759, column: 19)
!1693 = !DILocalVariable(name: "s", arg: 1, scope: !1694, file: !3, line: 2005, type: !209)
!1694 = distinct !DISubprogram(name: "ldbCatStackValue", scope: !3, file: !3, line: 2005, type: !1695, isLocal: false, isDefinition: true, scopeLine: 2005, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1697)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!209, !209, !74, !15}
!1697 = !{!1693, !1698, !1699}
!1698 = !DILocalVariable(name: "lua", arg: 2, scope: !1694, file: !3, line: 2005, type: !74)
!1699 = !DILocalVariable(name: "idx", arg: 3, scope: !1694, file: !3, line: 2005, type: !15)
!1700 = !DILocation(line: 2005, column: 26, scope: !1694, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 760, column: 15, scope: !1692)
!1702 = !DILocation(line: 2005, column: 40, scope: !1694, inlinedAt: !1701)
!1703 = !DILocation(line: 2005, column: 49, scope: !1694, inlinedAt: !1701)
!1704 = !DILocation(line: 2006, column: 12, scope: !1694, inlinedAt: !1701)
!1705 = !DILocation(line: 761, column: 18, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 761, column: 13)
!1707 = !DILocation(line: 761, column: 13, scope: !1692)
!1708 = !DILocation(line: 761, column: 30, scope: !1706)
!1709 = !DILocation(line: 0, scope: !1706)
!1710 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 763, column: 5, scope: !1672)
!1712 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !1711)
!1713 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !1711)
!1714 = !DILocation(line: 765, column: 1, scope: !1672)
!1715 = !DILocation(line: 2005, column: 26, scope: !1694)
!1716 = !DILocation(line: 2005, column: 40, scope: !1694)
!1717 = !DILocation(line: 2005, column: 49, scope: !1694)
!1718 = !DILocation(line: 2006, column: 12, scope: !1694)
!1719 = !DILocation(line: 2006, column: 5, scope: !1694)
!1720 = distinct !DISubprogram(name: "luaRedisSetReplCommand", scope: !3, file: !3, line: 771, type: !808, isLocal: false, isDefinition: true, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1721)
!1721 = !{!1722, !1723, !1724}
!1722 = !DILocalVariable(name: "lua", arg: 1, scope: !1720, file: !3, line: 771, type: !74)
!1723 = !DILocalVariable(name: "argc", scope: !1720, file: !3, line: 772, type: !15)
!1724 = !DILocalVariable(name: "flags", scope: !1720, file: !3, line: 773, type: !15)
!1725 = !DILocation(line: 771, column: 39, scope: !1720)
!1726 = !DILocation(line: 772, column: 16, scope: !1720)
!1727 = !DILocation(line: 772, column: 9, scope: !1720)
!1728 = !DILocation(line: 775, column: 16, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 775, column: 9)
!1730 = !DILocation(line: 775, column: 39, scope: !1729)
!1731 = !DILocation(line: 775, column: 9, scope: !1720)
!1732 = !DILocation(line: 776, column: 9, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 775, column: 45)
!1734 = !DILocation(line: 777, column: 16, scope: !1733)
!1735 = !DILocation(line: 777, column: 9, scope: !1733)
!1736 = !DILocation(line: 778, column: 21, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 778, column: 16)
!1738 = !DILocation(line: 778, column: 16, scope: !1729)
!1739 = !DILocation(line: 779, column: 9, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 778, column: 27)
!1741 = !DILocation(line: 780, column: 16, scope: !1740)
!1742 = !DILocation(line: 780, column: 9, scope: !1740)
!1743 = !DILocation(line: 783, column: 13, scope: !1720)
!1744 = !DILocation(line: 773, column: 9, scope: !1720)
!1745 = !DILocation(line: 784, column: 51, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 784, column: 9)
!1747 = !DILocation(line: 784, column: 9, scope: !1720)
!1748 = !DILocation(line: 785, column: 9, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 784, column: 57)
!1750 = !DILocation(line: 786, column: 16, scope: !1749)
!1751 = !DILocation(line: 786, column: 9, scope: !1749)
!1752 = !DILocation(line: 788, column: 21, scope: !1720)
!1753 = !DILocation(line: 789, column: 5, scope: !1720)
!1754 = !DILocation(line: 0, scope: !1720)
!1755 = !DILocation(line: 790, column: 1, scope: !1720)
!1756 = distinct !DISubprogram(name: "luaLogCommand", scope: !3, file: !3, line: 793, type: !808, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1757)
!1757 = !{!1758, !1759, !1760, !1761, !1762, !1763, !1767}
!1758 = !DILocalVariable(name: "lua", arg: 1, scope: !1756, file: !3, line: 793, type: !74)
!1759 = !DILocalVariable(name: "j", scope: !1756, file: !3, line: 794, type: !15)
!1760 = !DILocalVariable(name: "argc", scope: !1756, file: !3, line: 794, type: !15)
!1761 = !DILocalVariable(name: "level", scope: !1756, file: !3, line: 795, type: !15)
!1762 = !DILocalVariable(name: "log", scope: !1756, file: !3, line: 796, type: !209)
!1763 = !DILocalVariable(name: "len", scope: !1764, file: !3, line: 814, type: !211)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 813, column: 32)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !3, line: 813, column: 5)
!1766 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 813, column: 5)
!1767 = !DILocalVariable(name: "s", scope: !1764, file: !3, line: 815, type: !11)
!1768 = !DILocation(line: 793, column: 30, scope: !1756)
!1769 = !DILocation(line: 794, column: 19, scope: !1756)
!1770 = !DILocation(line: 794, column: 12, scope: !1756)
!1771 = !DILocation(line: 798, column: 14, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 798, column: 9)
!1773 = !DILocation(line: 798, column: 9, scope: !1756)
!1774 = !DILocation(line: 799, column: 9, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 798, column: 19)
!1776 = !DILocation(line: 800, column: 16, scope: !1775)
!1777 = !DILocation(line: 800, column: 9, scope: !1775)
!1778 = !DILocation(line: 801, column: 34, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 801, column: 16)
!1780 = !DILocation(line: 801, column: 17, scope: !1779)
!1781 = !DILocation(line: 801, column: 16, scope: !1772)
!1782 = !DILocation(line: 802, column: 9, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1779, file: !3, line: 801, column: 42)
!1784 = !DILocation(line: 803, column: 16, scope: !1783)
!1785 = !DILocation(line: 803, column: 9, scope: !1783)
!1786 = !DILocation(line: 805, column: 13, scope: !1756)
!1787 = !DILocation(line: 795, column: 9, scope: !1756)
!1788 = !DILocation(line: 806, column: 26, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1756, file: !3, line: 806, column: 9)
!1790 = !DILocation(line: 807, column: 9, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1789, file: !3, line: 806, column: 49)
!1792 = !DILocation(line: 808, column: 16, scope: !1791)
!1793 = !DILocation(line: 808, column: 9, scope: !1791)
!1794 = !DILocation(line: 812, column: 11, scope: !1756)
!1795 = !DILocation(line: 796, column: 9, scope: !1756)
!1796 = !DILocation(line: 794, column: 9, scope: !1756)
!1797 = !DILocation(line: 813, column: 5, scope: !1766)
!1798 = !DILocation(line: 814, column: 9, scope: !1764)
!1799 = !DILocation(line: 817, column: 45, scope: !1764)
!1800 = !DILocation(line: 814, column: 16, scope: !1764)
!1801 = !DILocation(line: 817, column: 20, scope: !1764)
!1802 = !DILocation(line: 815, column: 15, scope: !1764)
!1803 = !DILocation(line: 818, column: 13, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 818, column: 13)
!1805 = !DILocation(line: 818, column: 13, scope: !1764)
!1806 = !DILocation(line: 819, column: 19, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !3, line: 819, column: 17)
!1808 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 818, column: 16)
!1809 = !DILocation(line: 819, column: 17, scope: !1808)
!1810 = !DILocation(line: 819, column: 31, scope: !1807)
!1811 = !DILocation(line: 819, column: 25, scope: !1807)
!1812 = !DILocation(line: 0, scope: !1756)
!1813 = !DILocation(line: 820, column: 35, scope: !1808)
!1814 = !DILocation(line: 820, column: 19, scope: !1808)
!1815 = !DILocation(line: 821, column: 9, scope: !1808)
!1816 = !DILocation(line: 822, column: 5, scope: !1765)
!1817 = !DILocation(line: 813, column: 28, scope: !1765)
!1818 = !DILocation(line: 813, column: 19, scope: !1765)
!1819 = distinct !{!1819, !1797, !1820}
!1820 = !DILocation(line: 822, column: 5, scope: !1766)
!1821 = !DILocation(line: 823, column: 5, scope: !1756)
!1822 = !DILocation(line: 824, column: 5, scope: !1756)
!1823 = !DILocation(line: 825, column: 5, scope: !1756)
!1824 = !DILocation(line: 0, scope: !1783)
!1825 = !DILocation(line: 826, column: 1, scope: !1756)
!1826 = distinct !DISubprogram(name: "luaLoadLib", scope: !3, file: !3, line: 832, type: !1827, isLocal: false, isDefinition: true, scopeLine: 832, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1831)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null, !74, !736, !1829}
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "lua_CFunction", file: !9, line: 52, baseType: !1830)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!1831 = !{!1832, !1833, !1834}
!1832 = !DILocalVariable(name: "lua", arg: 1, scope: !1826, file: !3, line: 832, type: !74)
!1833 = !DILocalVariable(name: "libname", arg: 2, scope: !1826, file: !3, line: 832, type: !736)
!1834 = !DILocalVariable(name: "luafunc", arg: 3, scope: !1826, file: !3, line: 832, type: !1829)
!1835 = !DILocation(line: 832, column: 28, scope: !1826)
!1836 = !DILocation(line: 832, column: 45, scope: !1826)
!1837 = !DILocation(line: 832, column: 68, scope: !1826)
!1838 = !DILocation(line: 833, column: 3, scope: !1826)
!1839 = !DILocation(line: 834, column: 3, scope: !1826)
!1840 = !DILocation(line: 835, column: 3, scope: !1826)
!1841 = !DILocation(line: 836, column: 1, scope: !1826)
!1842 = distinct !DISubprogram(name: "luaLoadLibraries", scope: !3, file: !3, line: 843, type: !818, isLocal: false, isDefinition: true, scopeLine: 843, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1843)
!1843 = !{!1844}
!1844 = !DILocalVariable(name: "lua", arg: 1, scope: !1842, file: !3, line: 843, type: !74)
!1845 = !DILocation(line: 843, column: 34, scope: !1842)
!1846 = !DILocation(line: 832, column: 28, scope: !1826, inlinedAt: !1847)
!1847 = distinct !DILocation(line: 844, column: 5, scope: !1842)
!1848 = !DILocation(line: 832, column: 45, scope: !1826, inlinedAt: !1847)
!1849 = !DILocation(line: 832, column: 68, scope: !1826, inlinedAt: !1847)
!1850 = !DILocation(line: 833, column: 3, scope: !1826, inlinedAt: !1847)
!1851 = !DILocation(line: 834, column: 3, scope: !1826, inlinedAt: !1847)
!1852 = !DILocation(line: 835, column: 3, scope: !1826, inlinedAt: !1847)
!1853 = !DILocation(line: 832, column: 28, scope: !1826, inlinedAt: !1854)
!1854 = distinct !DILocation(line: 845, column: 5, scope: !1842)
!1855 = !DILocation(line: 832, column: 45, scope: !1826, inlinedAt: !1854)
!1856 = !DILocation(line: 832, column: 68, scope: !1826, inlinedAt: !1854)
!1857 = !DILocation(line: 833, column: 3, scope: !1826, inlinedAt: !1854)
!1858 = !DILocation(line: 834, column: 3, scope: !1826, inlinedAt: !1854)
!1859 = !DILocation(line: 835, column: 3, scope: !1826, inlinedAt: !1854)
!1860 = !DILocation(line: 832, column: 28, scope: !1826, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 846, column: 5, scope: !1842)
!1862 = !DILocation(line: 832, column: 45, scope: !1826, inlinedAt: !1861)
!1863 = !DILocation(line: 832, column: 68, scope: !1826, inlinedAt: !1861)
!1864 = !DILocation(line: 833, column: 3, scope: !1826, inlinedAt: !1861)
!1865 = !DILocation(line: 834, column: 3, scope: !1826, inlinedAt: !1861)
!1866 = !DILocation(line: 835, column: 3, scope: !1826, inlinedAt: !1861)
!1867 = !DILocation(line: 832, column: 28, scope: !1826, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 847, column: 5, scope: !1842)
!1869 = !DILocation(line: 832, column: 45, scope: !1826, inlinedAt: !1868)
!1870 = !DILocation(line: 832, column: 68, scope: !1826, inlinedAt: !1868)
!1871 = !DILocation(line: 833, column: 3, scope: !1826, inlinedAt: !1868)
!1872 = !DILocation(line: 834, column: 3, scope: !1826, inlinedAt: !1868)
!1873 = !DILocation(line: 835, column: 3, scope: !1826, inlinedAt: !1868)
!1874 = !DILocation(line: 832, column: 28, scope: !1826, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 848, column: 5, scope: !1842)
!1876 = !DILocation(line: 832, column: 45, scope: !1826, inlinedAt: !1875)
!1877 = !DILocation(line: 832, column: 68, scope: !1826, inlinedAt: !1875)
!1878 = !DILocation(line: 833, column: 3, scope: !1826, inlinedAt: !1875)
!1879 = !DILocation(line: 834, column: 3, scope: !1826, inlinedAt: !1875)
!1880 = !DILocation(line: 835, column: 3, scope: !1826, inlinedAt: !1875)
!1881 = !DILocation(line: 832, column: 28, scope: !1826, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 849, column: 5, scope: !1842)
!1883 = !DILocation(line: 832, column: 45, scope: !1826, inlinedAt: !1882)
!1884 = !DILocation(line: 832, column: 68, scope: !1826, inlinedAt: !1882)
!1885 = !DILocation(line: 833, column: 3, scope: !1826, inlinedAt: !1882)
!1886 = !DILocation(line: 834, column: 3, scope: !1826, inlinedAt: !1882)
!1887 = !DILocation(line: 835, column: 3, scope: !1826, inlinedAt: !1882)
!1888 = !DILocation(line: 832, column: 28, scope: !1826, inlinedAt: !1889)
!1889 = distinct !DILocation(line: 850, column: 5, scope: !1842)
!1890 = !DILocation(line: 832, column: 45, scope: !1826, inlinedAt: !1889)
!1891 = !DILocation(line: 832, column: 68, scope: !1826, inlinedAt: !1889)
!1892 = !DILocation(line: 833, column: 3, scope: !1826, inlinedAt: !1889)
!1893 = !DILocation(line: 834, column: 3, scope: !1826, inlinedAt: !1889)
!1894 = !DILocation(line: 835, column: 3, scope: !1826, inlinedAt: !1889)
!1895 = !DILocation(line: 832, column: 28, scope: !1826, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 851, column: 5, scope: !1842)
!1897 = !DILocation(line: 832, column: 45, scope: !1826, inlinedAt: !1896)
!1898 = !DILocation(line: 832, column: 68, scope: !1826, inlinedAt: !1896)
!1899 = !DILocation(line: 833, column: 3, scope: !1826, inlinedAt: !1896)
!1900 = !DILocation(line: 834, column: 3, scope: !1826, inlinedAt: !1896)
!1901 = !DILocation(line: 835, column: 3, scope: !1826, inlinedAt: !1896)
!1902 = !DILocation(line: 832, column: 28, scope: !1826, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 852, column: 5, scope: !1842)
!1904 = !DILocation(line: 832, column: 45, scope: !1826, inlinedAt: !1903)
!1905 = !DILocation(line: 832, column: 68, scope: !1826, inlinedAt: !1903)
!1906 = !DILocation(line: 833, column: 3, scope: !1826, inlinedAt: !1903)
!1907 = !DILocation(line: 834, column: 3, scope: !1826, inlinedAt: !1903)
!1908 = !DILocation(line: 835, column: 3, scope: !1826, inlinedAt: !1903)
!1909 = !DILocation(line: 858, column: 1, scope: !1842)
!1910 = distinct !DISubprogram(name: "luaRemoveUnsupportedFunctions", scope: !3, file: !3, line: 862, type: !818, isLocal: false, isDefinition: true, scopeLine: 862, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1911)
!1911 = !{!1912}
!1912 = !DILocalVariable(name: "lua", arg: 1, scope: !1910, file: !3, line: 862, type: !74)
!1913 = !DILocation(line: 862, column: 47, scope: !1910)
!1914 = !DILocation(line: 863, column: 5, scope: !1910)
!1915 = !DILocation(line: 864, column: 5, scope: !1910)
!1916 = !DILocation(line: 865, column: 5, scope: !1910)
!1917 = !DILocation(line: 866, column: 5, scope: !1910)
!1918 = !DILocation(line: 867, column: 1, scope: !1910)
!1919 = distinct !DISubprogram(name: "scriptingEnableGlobalsProtection", scope: !3, file: !3, line: 874, type: !818, isLocal: false, isDefinition: true, scopeLine: 874, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1920)
!1920 = !{!1921, !1922, !1924, !1925}
!1921 = !DILocalVariable(name: "lua", arg: 1, scope: !1919, file: !3, line: 874, type: !74)
!1922 = !DILocalVariable(name: "s", scope: !1919, file: !3, line: 875, type: !1923)
!1923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !377)
!1924 = !DILocalVariable(name: "code", scope: !1919, file: !3, line: 876, type: !209)
!1925 = !DILocalVariable(name: "j", scope: !1919, file: !3, line: 877, type: !15)
!1926 = !DILocation(line: 874, column: 50, scope: !1919)
!1927 = !DILocation(line: 875, column: 5, scope: !1919)
!1928 = !DILocation(line: 875, column: 11, scope: !1919)
!1929 = !DILocation(line: 876, column: 16, scope: !1919)
!1930 = !DILocation(line: 876, column: 9, scope: !1919)
!1931 = !DILocation(line: 877, column: 9, scope: !1919)
!1932 = !DILocation(line: 881, column: 11, scope: !1919)
!1933 = !DILocation(line: 883, column: 5, scope: !1919)
!1934 = !DILocation(line: 883, column: 11, scope: !1919)
!1935 = !DILocation(line: 885, column: 5, scope: !1919)
!1936 = !DILocation(line: 885, column: 11, scope: !1919)
!1937 = !DILocation(line: 887, column: 5, scope: !1919)
!1938 = !DILocation(line: 887, column: 11, scope: !1919)
!1939 = !DILocation(line: 889, column: 5, scope: !1919)
!1940 = !DILocation(line: 889, column: 11, scope: !1919)
!1941 = !DILocation(line: 891, column: 5, scope: !1919)
!1942 = !DILocation(line: 891, column: 11, scope: !1919)
!1943 = !DILocation(line: 893, column: 5, scope: !1919)
!1944 = !DILocation(line: 893, column: 11, scope: !1919)
!1945 = !DILocation(line: 895, column: 5, scope: !1919)
!1946 = !DILocation(line: 895, column: 11, scope: !1919)
!1947 = !DILocation(line: 897, column: 5, scope: !1919)
!1948 = !DILocation(line: 897, column: 11, scope: !1919)
!1949 = !DILocation(line: 899, column: 5, scope: !1919)
!1950 = !DILocation(line: 899, column: 11, scope: !1919)
!1951 = !DILocation(line: 902, column: 63, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 902, column: 5)
!1953 = distinct !DILexicalBlock(scope: !1919, file: !3, line: 902, column: 5)
!1954 = !DILocation(line: 902, column: 43, scope: !1952)
!1955 = !DILocation(line: 902, column: 32, scope: !1952)
!1956 = !DILocation(line: 902, column: 17, scope: !1952)
!1957 = !DILocation(line: 902, column: 22, scope: !1952)
!1958 = !DILocation(line: 902, column: 5, scope: !1953)
!1959 = distinct !{!1959, !1958, !1960}
!1960 = !DILocation(line: 902, column: 75, scope: !1953)
!1961 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 903, column: 30, scope: !1919)
!1963 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !1962)
!1964 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !1962)
!1965 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !1962)
!1966 = !DILocation(line: 91, column: 20, scope: !1448, inlinedAt: !1962)
!1967 = !DILocation(line: 91, column: 13, scope: !1448, inlinedAt: !1962)
!1968 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !1962)
!1969 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !1962)
!1970 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !1962)
!1971 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !1962)
!1972 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !1962)
!1973 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !1962)
!1974 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !1962)
!1975 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !1962)
!1976 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !1962)
!1977 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !1962)
!1978 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !1962)
!1979 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !1962)
!1980 = !DILocation(line: 0, scope: !1448, inlinedAt: !1962)
!1981 = !DILocation(line: 903, column: 5, scope: !1919)
!1982 = !DILocation(line: 904, column: 5, scope: !1919)
!1983 = !DILocation(line: 905, column: 5, scope: !1919)
!1984 = !DILocation(line: 906, column: 1, scope: !1919)
!1985 = distinct !DISubprogram(name: "scriptingInit", scope: !3, file: !3, line: 918, type: !20, isLocal: false, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1986)
!1986 = !{!1987, !1988, !1989, !1991}
!1987 = !DILocalVariable(name: "setup", arg: 1, scope: !1985, file: !3, line: 918, type: !15)
!1988 = !DILocalVariable(name: "lua", scope: !1985, file: !3, line: 919, type: !74)
!1989 = !DILocalVariable(name: "compare_func", scope: !1990, file: !3, line: 1043, type: !11)
!1990 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 1042, column: 5)
!1991 = !DILocalVariable(name: "errh_func", scope: !1992, file: !3, line: 1057, type: !11)
!1992 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 1056, column: 5)
!1993 = !DILocation(line: 918, column: 24, scope: !1985)
!1994 = !DILocation(line: 919, column: 22, scope: !1985)
!1995 = !DILocation(line: 919, column: 16, scope: !1985)
!1996 = !DILocation(line: 921, column: 9, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 921, column: 9)
!1998 = !DILocation(line: 921, column: 9, scope: !1985)
!1999 = !DILocation(line: 922, column: 27, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !1997, file: !3, line: 921, column: 16)
!2001 = !DILocation(line: 924, column: 29, scope: !2000)
!2002 = !{!941, !760, i64 3068}
!2003 = !DILocation(line: 1562, column: 12, scope: !2004, inlinedAt: !2007)
!2004 = distinct !DISubprogram(name: "ldbInit", scope: !3, file: !3, line: 1561, type: !2005, isLocal: false, isDefinition: true, scopeLine: 1561, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{null}
!2007 = distinct !DILocation(line: 925, column: 9, scope: !2000)
!2008 = !{!759, !760, i64 0}
!2009 = !DILocation(line: 1563, column: 16, scope: !2004, inlinedAt: !2007)
!2010 = !DILocation(line: 1564, column: 16, scope: !2004, inlinedAt: !2007)
!2011 = !DILocation(line: 1564, column: 14, scope: !2004, inlinedAt: !2007)
!2012 = !DILocation(line: 1565, column: 5, scope: !2004, inlinedAt: !2007)
!2013 = !{!1334, !761, i64 24}
!2014 = !DILocation(line: 1566, column: 20, scope: !2004, inlinedAt: !2007)
!2015 = !DILocation(line: 1566, column: 18, scope: !2004, inlinedAt: !2007)
!2016 = !{!759, !761, i64 32}
!2017 = !DILocation(line: 1567, column: 13, scope: !2004, inlinedAt: !2007)
!2018 = !{!759, !761, i64 312}
!2019 = !DILocation(line: 1568, column: 15, scope: !2004, inlinedAt: !2007)
!2020 = !{!759, !760, i64 320}
!2021 = !DILocation(line: 1569, column: 16, scope: !2004, inlinedAt: !2007)
!2022 = !DILocation(line: 1569, column: 14, scope: !2004, inlinedAt: !2007)
!2023 = !{!759, !761, i64 328}
!2024 = !DILocation(line: 926, column: 5, scope: !2000)
!2025 = !DILocation(line: 928, column: 5, scope: !1985)
!2026 = !DILocation(line: 862, column: 47, scope: !1910, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 929, column: 5, scope: !1985)
!2028 = !DILocation(line: 863, column: 5, scope: !1910, inlinedAt: !2027)
!2029 = !DILocation(line: 864, column: 5, scope: !1910, inlinedAt: !2027)
!2030 = !DILocation(line: 865, column: 5, scope: !1910, inlinedAt: !2027)
!2031 = !DILocation(line: 866, column: 5, scope: !1910, inlinedAt: !2027)
!2032 = !DILocation(line: 934, column: 26, scope: !1985)
!2033 = !DILocation(line: 934, column: 24, scope: !1985)
!2034 = !{!941, !761, i64 3016}
!2035 = !DILocation(line: 935, column: 28, scope: !1985)
!2036 = !{!941, !537, i64 3024}
!2037 = !DILocation(line: 938, column: 5, scope: !1985)
!2038 = !DILocation(line: 941, column: 5, scope: !1985)
!2039 = !DILocation(line: 942, column: 5, scope: !1985)
!2040 = !DILocation(line: 943, column: 5, scope: !1985)
!2041 = !DILocation(line: 946, column: 5, scope: !1985)
!2042 = !DILocation(line: 947, column: 5, scope: !1985)
!2043 = !DILocation(line: 948, column: 5, scope: !1985)
!2044 = !DILocation(line: 951, column: 5, scope: !1985)
!2045 = !DILocation(line: 952, column: 5, scope: !1985)
!2046 = !DILocation(line: 953, column: 5, scope: !1985)
!2047 = !DILocation(line: 955, column: 5, scope: !1985)
!2048 = !DILocation(line: 956, column: 5, scope: !1985)
!2049 = !DILocation(line: 957, column: 5, scope: !1985)
!2050 = !DILocation(line: 959, column: 5, scope: !1985)
!2051 = !DILocation(line: 960, column: 5, scope: !1985)
!2052 = !DILocation(line: 961, column: 5, scope: !1985)
!2053 = !DILocation(line: 963, column: 5, scope: !1985)
!2054 = !DILocation(line: 964, column: 5, scope: !1985)
!2055 = !DILocation(line: 965, column: 5, scope: !1985)
!2056 = !DILocation(line: 967, column: 5, scope: !1985)
!2057 = !DILocation(line: 968, column: 5, scope: !1985)
!2058 = !DILocation(line: 969, column: 5, scope: !1985)
!2059 = !DILocation(line: 972, column: 5, scope: !1985)
!2060 = !DILocation(line: 973, column: 5, scope: !1985)
!2061 = !DILocation(line: 974, column: 5, scope: !1985)
!2062 = !DILocation(line: 977, column: 5, scope: !1985)
!2063 = !DILocation(line: 978, column: 5, scope: !1985)
!2064 = !DILocation(line: 979, column: 5, scope: !1985)
!2065 = !DILocation(line: 980, column: 5, scope: !1985)
!2066 = !DILocation(line: 981, column: 5, scope: !1985)
!2067 = !DILocation(line: 982, column: 5, scope: !1985)
!2068 = !DILocation(line: 985, column: 5, scope: !1985)
!2069 = !DILocation(line: 986, column: 5, scope: !1985)
!2070 = !DILocation(line: 987, column: 5, scope: !1985)
!2071 = !DILocation(line: 990, column: 5, scope: !1985)
!2072 = !DILocation(line: 991, column: 5, scope: !1985)
!2073 = !DILocation(line: 992, column: 5, scope: !1985)
!2074 = !DILocation(line: 994, column: 5, scope: !1985)
!2075 = !DILocation(line: 995, column: 5, scope: !1985)
!2076 = !DILocation(line: 996, column: 5, scope: !1985)
!2077 = !DILocation(line: 998, column: 5, scope: !1985)
!2078 = !DILocation(line: 999, column: 5, scope: !1985)
!2079 = !DILocation(line: 1000, column: 5, scope: !1985)
!2080 = !DILocation(line: 1002, column: 5, scope: !1985)
!2081 = !DILocation(line: 1003, column: 5, scope: !1985)
!2082 = !DILocation(line: 1004, column: 5, scope: !1985)
!2083 = !DILocation(line: 1006, column: 5, scope: !1985)
!2084 = !DILocation(line: 1007, column: 5, scope: !1985)
!2085 = !DILocation(line: 1008, column: 5, scope: !1985)
!2086 = !DILocation(line: 1010, column: 5, scope: !1985)
!2087 = !DILocation(line: 1011, column: 5, scope: !1985)
!2088 = !DILocation(line: 1012, column: 5, scope: !1985)
!2089 = !DILocation(line: 1015, column: 5, scope: !1985)
!2090 = !DILocation(line: 1016, column: 5, scope: !1985)
!2091 = !DILocation(line: 1017, column: 5, scope: !1985)
!2092 = !DILocation(line: 1020, column: 5, scope: !1985)
!2093 = !DILocation(line: 1021, column: 5, scope: !1985)
!2094 = !DILocation(line: 1022, column: 5, scope: !1985)
!2095 = !DILocation(line: 1025, column: 5, scope: !1985)
!2096 = !DILocation(line: 1028, column: 5, scope: !1985)
!2097 = !DILocation(line: 1030, column: 5, scope: !1985)
!2098 = !DILocation(line: 1031, column: 5, scope: !1985)
!2099 = !DILocation(line: 1032, column: 5, scope: !1985)
!2100 = !DILocation(line: 1034, column: 5, scope: !1985)
!2101 = !DILocation(line: 1035, column: 5, scope: !1985)
!2102 = !DILocation(line: 1036, column: 5, scope: !1985)
!2103 = !DILocation(line: 1038, column: 5, scope: !1985)
!2104 = !DILocation(line: 1048, column: 42, scope: !1990)
!2105 = !DILocation(line: 1048, column: 9, scope: !1990)
!2106 = !DILocation(line: 1049, column: 9, scope: !1990)
!2107 = !DILocation(line: 1069, column: 39, scope: !1992)
!2108 = !DILocation(line: 1069, column: 9, scope: !1992)
!2109 = !DILocation(line: 1070, column: 9, scope: !1992)
!2110 = !DILocation(line: 1077, column: 16, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !1985, file: !3, line: 1077, column: 9)
!2112 = !DILocation(line: 1077, column: 27, scope: !2111)
!2113 = !DILocation(line: 1077, column: 9, scope: !1985)
!2114 = !DILocation(line: 1078, column: 29, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2111, file: !3, line: 1077, column: 36)
!2116 = !DILocation(line: 1078, column: 27, scope: !2115)
!2117 = !DILocation(line: 1079, column: 28, scope: !2115)
!2118 = !DILocation(line: 1079, column: 34, scope: !2115)
!2119 = !DILocation(line: 1080, column: 5, scope: !2115)
!2120 = !DILocation(line: 1085, column: 5, scope: !1985)
!2121 = !DILocation(line: 1087, column: 16, scope: !1985)
!2122 = !{!941, !761, i64 2992}
!2123 = !DILocation(line: 1088, column: 1, scope: !1985)
!2124 = !DILocation(line: 1562, column: 12, scope: !2004)
!2125 = !DILocation(line: 1563, column: 16, scope: !2004)
!2126 = !DILocation(line: 1564, column: 16, scope: !2004)
!2127 = !DILocation(line: 1564, column: 14, scope: !2004)
!2128 = !DILocation(line: 1565, column: 5, scope: !2004)
!2129 = !DILocation(line: 1566, column: 20, scope: !2004)
!2130 = !DILocation(line: 1566, column: 18, scope: !2004)
!2131 = !DILocation(line: 1567, column: 13, scope: !2004)
!2132 = !DILocation(line: 1568, column: 15, scope: !2004)
!2133 = !DILocation(line: 1569, column: 16, scope: !2004)
!2134 = !DILocation(line: 1569, column: 14, scope: !2004)
!2135 = !DILocation(line: 1570, column: 1, scope: !2004)
!2136 = distinct !DISubprogram(name: "redis_math_random", scope: !3, file: !3, line: 1126, type: !808, isLocal: false, isDefinition: true, scopeLine: 1126, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2137)
!2137 = !{!2138, !2139, !2140, !2143, !2145}
!2138 = !DILocalVariable(name: "L", arg: 1, scope: !2136, file: !3, line: 1126, type: !74)
!2139 = !DILocalVariable(name: "r", scope: !2136, file: !3, line: 1129, type: !8)
!2140 = !DILocalVariable(name: "u", scope: !2141, file: !3, line: 1137, type: !15)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1136, column: 13)
!2142 = distinct !DILexicalBlock(scope: !2136, file: !3, line: 1131, column: 26)
!2143 = !DILocalVariable(name: "l", scope: !2144, file: !3, line: 1143, type: !15)
!2144 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1142, column: 13)
!2145 = !DILocalVariable(name: "u", scope: !2144, file: !3, line: 1144, type: !15)
!2146 = !DILocation(line: 1126, column: 35, scope: !2136)
!2147 = !DILocation(line: 1129, column: 31, scope: !2136)
!2148 = !DILocation(line: 1129, column: 45, scope: !2136)
!2149 = !DILocation(line: 1129, column: 18, scope: !2136)
!2150 = !DILocation(line: 1129, column: 65, scope: !2136)
!2151 = !DILocation(line: 1129, column: 14, scope: !2136)
!2152 = !DILocation(line: 1131, column: 11, scope: !2136)
!2153 = !DILocation(line: 1131, column: 3, scope: !2136)
!2154 = !DILocation(line: 1133, column: 7, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1132, column: 13)
!2156 = !DILocation(line: 1134, column: 7, scope: !2155)
!2157 = !DILocation(line: 1137, column: 15, scope: !2141)
!2158 = !DILocation(line: 1137, column: 11, scope: !2141)
!2159 = !DILocation(line: 1138, column: 7, scope: !2141)
!2160 = !DILocation(line: 1139, column: 33, scope: !2141)
!2161 = !DILocation(line: 1139, column: 32, scope: !2141)
!2162 = !DILocation(line: 1139, column: 25, scope: !2141)
!2163 = !DILocation(line: 1139, column: 35, scope: !2141)
!2164 = !DILocation(line: 1139, column: 7, scope: !2141)
!2165 = !DILocation(line: 1143, column: 15, scope: !2144)
!2166 = !DILocation(line: 1143, column: 11, scope: !2144)
!2167 = !DILocation(line: 1144, column: 15, scope: !2144)
!2168 = !DILocation(line: 1144, column: 11, scope: !2144)
!2169 = !DILocation(line: 1145, column: 7, scope: !2144)
!2170 = !DILocation(line: 1146, column: 35, scope: !2144)
!2171 = !DILocation(line: 1146, column: 37, scope: !2144)
!2172 = !DILocation(line: 1146, column: 33, scope: !2144)
!2173 = !DILocation(line: 1146, column: 32, scope: !2144)
!2174 = !DILocation(line: 1146, column: 25, scope: !2144)
!2175 = !DILocation(line: 1146, column: 42, scope: !2144)
!2176 = !DILocation(line: 1146, column: 41, scope: !2144)
!2177 = !DILocation(line: 1146, column: 7, scope: !2144)
!2178 = !DILocation(line: 1149, column: 21, scope: !2142)
!2179 = !DILocation(line: 1149, column: 14, scope: !2142)
!2180 = !DILocation(line: 0, scope: !2136)
!2181 = !DILocation(line: 1152, column: 1, scope: !2136)
!2182 = distinct !DISubprogram(name: "redis_math_randomseed", scope: !3, file: !3, line: 1154, type: !808, isLocal: false, isDefinition: true, scopeLine: 1154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2183)
!2183 = !{!2184}
!2184 = !DILocalVariable(name: "L", arg: 1, scope: !2182, file: !3, line: 1154, type: !74)
!2185 = !DILocation(line: 1154, column: 39, scope: !2182)
!2186 = !DILocation(line: 1155, column: 16, scope: !2182)
!2187 = !DILocation(line: 1155, column: 3, scope: !2182)
!2188 = !DILocation(line: 1156, column: 3, scope: !2182)
!2189 = distinct !DISubprogram(name: "scriptingRelease", scope: !3, file: !3, line: 1092, type: !2005, isLocal: false, isDefinition: true, scopeLine: 1092, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!2190 = !DILocation(line: 1093, column: 24, scope: !2189)
!2191 = !DILocation(line: 1093, column: 5, scope: !2189)
!2192 = !DILocation(line: 1094, column: 28, scope: !2189)
!2193 = !DILocation(line: 1095, column: 22, scope: !2189)
!2194 = !DILocation(line: 1095, column: 5, scope: !2189)
!2195 = !DILocation(line: 1096, column: 1, scope: !2189)
!2196 = distinct !DISubprogram(name: "scriptingReset", scope: !3, file: !3, line: 1098, type: !2005, isLocal: false, isDefinition: true, scopeLine: 1098, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!2197 = !DILocation(line: 1093, column: 24, scope: !2189, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 1099, column: 5, scope: !2196)
!2199 = !DILocation(line: 1093, column: 5, scope: !2189, inlinedAt: !2198)
!2200 = !DILocation(line: 1094, column: 28, scope: !2189, inlinedAt: !2198)
!2201 = !DILocation(line: 1095, column: 22, scope: !2189, inlinedAt: !2198)
!2202 = !DILocation(line: 1095, column: 5, scope: !2189, inlinedAt: !2198)
!2203 = !DILocation(line: 1100, column: 5, scope: !2196)
!2204 = !DILocation(line: 1101, column: 1, scope: !2196)
!2205 = distinct !DISubprogram(name: "luaSetGlobalArray", scope: !3, file: !3, line: 1105, type: !2206, isLocal: false, isDefinition: true, scopeLine: 1105, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2208)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{null, !74, !11, !219, !15}
!2208 = !{!2209, !2210, !2211, !2212, !2213}
!2209 = !DILocalVariable(name: "lua", arg: 1, scope: !2205, file: !3, line: 1105, type: !74)
!2210 = !DILocalVariable(name: "var", arg: 2, scope: !2205, file: !3, line: 1105, type: !11)
!2211 = !DILocalVariable(name: "elev", arg: 3, scope: !2205, file: !3, line: 1105, type: !219)
!2212 = !DILocalVariable(name: "elec", arg: 4, scope: !2205, file: !3, line: 1105, type: !15)
!2213 = !DILocalVariable(name: "j", scope: !2205, file: !3, line: 1106, type: !15)
!2214 = !DILocation(line: 1105, column: 35, scope: !2205)
!2215 = !DILocation(line: 1105, column: 46, scope: !2205)
!2216 = !DILocation(line: 1105, column: 58, scope: !2205)
!2217 = !DILocation(line: 1105, column: 68, scope: !2205)
!2218 = !DILocation(line: 1108, column: 5, scope: !2205)
!2219 = !DILocation(line: 1106, column: 9, scope: !2205)
!2220 = !DILocation(line: 1109, column: 19, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 1109, column: 5)
!2222 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 1109, column: 5)
!2223 = !DILocation(line: 1109, column: 5, scope: !2222)
!2224 = !DILocation(line: 1110, column: 36, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2221, file: !3, line: 1109, column: 32)
!2226 = !DILocation(line: 1110, column: 45, scope: !2225)
!2227 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 1110, column: 49, scope: !2225)
!2229 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !2228)
!2230 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !2228)
!2231 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !2228)
!2232 = !DILocation(line: 91, column: 20, scope: !1448, inlinedAt: !2228)
!2233 = !DILocation(line: 91, column: 13, scope: !1448, inlinedAt: !2228)
!2234 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !2228)
!2235 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !2228)
!2236 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !2228)
!2237 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !2228)
!2238 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !2228)
!2239 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !2228)
!2240 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !2228)
!2241 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !2228)
!2242 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !2228)
!2243 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !2228)
!2244 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !2228)
!2245 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !2228)
!2246 = !DILocation(line: 0, scope: !1448, inlinedAt: !2228)
!2247 = !DILocation(line: 1110, column: 9, scope: !2225)
!2248 = !DILocation(line: 1111, column: 29, scope: !2225)
!2249 = !DILocation(line: 1111, column: 9, scope: !2225)
!2250 = distinct !{!2250, !2223, !2251}
!2251 = !DILocation(line: 1112, column: 5, scope: !2222)
!2252 = !DILocation(line: 1113, column: 5, scope: !2205)
!2253 = !DILocation(line: 1114, column: 1, scope: !2205)
!2254 = distinct !DISubprogram(name: "luaCreateFunction", scope: !3, file: !3, line: 1180, type: !2255, isLocal: false, isDefinition: true, scopeLine: 1180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2257)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!209, !93, !74, !199}
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265}
!2258 = !DILocalVariable(name: "c", arg: 1, scope: !2254, file: !3, line: 1180, type: !93)
!2259 = !DILocalVariable(name: "lua", arg: 2, scope: !2254, file: !3, line: 1180, type: !74)
!2260 = !DILocalVariable(name: "body", arg: 3, scope: !2254, file: !3, line: 1180, type: !199)
!2261 = !DILocalVariable(name: "funcname", scope: !2254, file: !3, line: 1181, type: !394)
!2262 = !DILocalVariable(name: "de", scope: !2254, file: !3, line: 1182, type: !143)
!2263 = !DILocalVariable(name: "sha", scope: !2254, file: !3, line: 1188, type: !209)
!2264 = !DILocalVariable(name: "funcdef", scope: !2254, file: !3, line: 1194, type: !209)
!2265 = !DILocalVariable(name: "retval", scope: !2254, file: !3, line: 1227, type: !15)
!2266 = !DILocation(line: 91, column: 19, scope: !442, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 1186, column: 5, scope: !2254)
!2268 = !DILocation(line: 1180, column: 31, scope: !2254)
!2269 = !DILocation(line: 1180, column: 45, scope: !2254)
!2270 = !DILocation(line: 1180, column: 56, scope: !2254)
!2271 = !DILocation(line: 1181, column: 5, scope: !2254)
!2272 = !DILocation(line: 1181, column: 10, scope: !2254)
!2273 = !DILocation(line: 1184, column: 17, scope: !2254)
!2274 = !DILocation(line: 1185, column: 5, scope: !2254)
!2275 = !DILocation(line: 1185, column: 17, scope: !2254)
!2276 = !DILocation(line: 1186, column: 21, scope: !2254)
!2277 = !DILocation(line: 1186, column: 30, scope: !2254)
!2278 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 1186, column: 34, scope: !2254)
!2280 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !2279)
!2281 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !2279)
!2282 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !2279)
!2283 = !DILocation(line: 91, column: 20, scope: !1448, inlinedAt: !2279)
!2284 = !DILocation(line: 91, column: 13, scope: !1448, inlinedAt: !2279)
!2285 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !2279)
!2286 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !2279)
!2287 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !2279)
!2288 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !2279)
!2289 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !2279)
!2290 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !2279)
!2291 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !2279)
!2292 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !2279)
!2293 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !2279)
!2294 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !2279)
!2295 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !2279)
!2296 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !2279)
!2297 = !DILocation(line: 0, scope: !1448, inlinedAt: !2279)
!2298 = !DILocation(line: 89, column: 20, scope: !442, inlinedAt: !2267)
!2299 = !DILocation(line: 89, column: 34, scope: !442, inlinedAt: !2267)
!2300 = !DILocation(line: 89, column: 49, scope: !442, inlinedAt: !2267)
!2301 = !DILocation(line: 90, column: 5, scope: !442, inlinedAt: !2267)
!2302 = !DILocation(line: 91, column: 5, scope: !442, inlinedAt: !2267)
!2303 = !DILocation(line: 90, column: 14, scope: !442, inlinedAt: !2267)
!2304 = !DILocation(line: 95, column: 5, scope: !442, inlinedAt: !2267)
!2305 = !DILocation(line: 96, column: 44, scope: !442, inlinedAt: !2267)
!2306 = !DILocation(line: 96, column: 5, scope: !442, inlinedAt: !2267)
!2307 = !DILocation(line: 97, column: 5, scope: !442, inlinedAt: !2267)
!2308 = !DILocation(line: 93, column: 9, scope: !442, inlinedAt: !2267)
!2309 = !DILocation(line: 99, column: 5, scope: !481, inlinedAt: !2267)
!2310 = !DILocation(line: 100, column: 30, scope: !483, inlinedAt: !2267)
!2311 = !DILocation(line: 100, column: 43, scope: !483, inlinedAt: !2267)
!2312 = !DILocation(line: 100, column: 23, scope: !483, inlinedAt: !2267)
!2313 = !DILocation(line: 100, column: 17, scope: !483, inlinedAt: !2267)
!2314 = !DILocation(line: 100, column: 9, scope: !483, inlinedAt: !2267)
!2315 = !DILocation(line: 100, column: 21, scope: !483, inlinedAt: !2267)
!2316 = !DILocation(line: 101, column: 38, scope: !483, inlinedAt: !2267)
!2317 = !DILocation(line: 101, column: 25, scope: !483, inlinedAt: !2267)
!2318 = !DILocation(line: 101, column: 19, scope: !483, inlinedAt: !2267)
!2319 = !DILocation(line: 101, column: 9, scope: !483, inlinedAt: !2267)
!2320 = !DILocation(line: 101, column: 23, scope: !483, inlinedAt: !2267)
!2321 = !DILocation(line: 99, column: 26, scope: !484, inlinedAt: !2267)
!2322 = !DILocation(line: 99, column: 19, scope: !484, inlinedAt: !2267)
!2323 = !DILocation(line: 103, column: 5, scope: !442, inlinedAt: !2267)
!2324 = !DILocation(line: 103, column: 16, scope: !442, inlinedAt: !2267)
!2325 = !DILocation(line: 104, column: 1, scope: !442, inlinedAt: !2267)
!2326 = !DILocation(line: 1188, column: 15, scope: !2254)
!2327 = !DILocation(line: 1188, column: 9, scope: !2254)
!2328 = !DILocation(line: 1189, column: 31, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 1189, column: 9)
!2330 = !DILocation(line: 1189, column: 15, scope: !2329)
!2331 = !DILocation(line: 1182, column: 16, scope: !2254)
!2332 = !DILocation(line: 1189, column: 49, scope: !2329)
!2333 = !DILocation(line: 1189, column: 9, scope: !2254)
!2334 = !DILocation(line: 1190, column: 9, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 1189, column: 58)
!2336 = !DILocation(line: 1191, column: 16, scope: !2335)
!2337 = !{!2338, !761, i64 0}
!2338 = !{!"dictEntry", !761, i64 0, !486, i64 8, !761, i64 16}
!2339 = !DILocation(line: 1191, column: 9, scope: !2335)
!2340 = !DILocation(line: 1194, column: 19, scope: !2254)
!2341 = !DILocation(line: 1194, column: 9, scope: !2254)
!2342 = !DILocation(line: 1195, column: 15, scope: !2254)
!2343 = !DILocation(line: 1196, column: 15, scope: !2254)
!2344 = !DILocation(line: 1197, column: 15, scope: !2254)
!2345 = !DILocation(line: 1198, column: 39, scope: !2254)
!2346 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 1198, column: 43, scope: !2254)
!2348 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !2347)
!2349 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !2347)
!2350 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !2347)
!2351 = !DILocation(line: 91, column: 20, scope: !1448, inlinedAt: !2347)
!2352 = !DILocation(line: 91, column: 13, scope: !1448, inlinedAt: !2347)
!2353 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !2347)
!2354 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !2347)
!2355 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !2347)
!2356 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !2347)
!2357 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !2347)
!2358 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !2347)
!2359 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !2347)
!2360 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !2347)
!2361 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !2347)
!2362 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !2347)
!2363 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !2347)
!2364 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !2347)
!2365 = !DILocation(line: 0, scope: !1448, inlinedAt: !2347)
!2366 = !DILocation(line: 1198, column: 15, scope: !2254)
!2367 = !DILocation(line: 1199, column: 15, scope: !2254)
!2368 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !2369)
!2369 = distinct !DILocation(line: 1201, column: 37, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 1201, column: 9)
!2371 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !2369)
!2372 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !2369)
!2373 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !2369)
!2374 = !DILocation(line: 91, column: 20, scope: !1448, inlinedAt: !2369)
!2375 = !DILocation(line: 91, column: 13, scope: !1448, inlinedAt: !2369)
!2376 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !2369)
!2377 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !2369)
!2378 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !2369)
!2379 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !2369)
!2380 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !2369)
!2381 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !2369)
!2382 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !2369)
!2383 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !2369)
!2384 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !2369)
!2385 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !2369)
!2386 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !2369)
!2387 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !2369)
!2388 = !DILocation(line: 0, scope: !1448, inlinedAt: !2369)
!2389 = !DILocation(line: 1201, column: 9, scope: !2370)
!2390 = !DILocation(line: 1201, column: 9, scope: !2254)
!2391 = !DILocation(line: 1202, column: 15, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !3, line: 1202, column: 13)
!2393 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 1201, column: 70)
!2394 = !DILocation(line: 1202, column: 13, scope: !2393)
!2395 = !DILocation(line: 1205, column: 17, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 1202, column: 24)
!2397 = !DILocation(line: 1203, column: 13, scope: !2396)
!2398 = !DILocation(line: 1206, column: 9, scope: !2396)
!2399 = !DILocation(line: 1207, column: 9, scope: !2393)
!2400 = !DILocation(line: 1208, column: 9, scope: !2393)
!2401 = !DILocation(line: 1209, column: 9, scope: !2393)
!2402 = !DILocation(line: 1210, column: 9, scope: !2393)
!2403 = !DILocation(line: 1212, column: 5, scope: !2254)
!2404 = !DILocation(line: 1214, column: 9, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2254, file: !3, line: 1214, column: 9)
!2406 = !DILocation(line: 1214, column: 9, scope: !2254)
!2407 = !DILocation(line: 1215, column: 15, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 1215, column: 13)
!2409 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 1214, column: 31)
!2410 = !DILocation(line: 1215, column: 13, scope: !2409)
!2411 = !DILocation(line: 1217, column: 17, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 1215, column: 24)
!2413 = !DILocation(line: 1216, column: 13, scope: !2412)
!2414 = !DILocation(line: 1218, column: 9, scope: !2412)
!2415 = !DILocation(line: 1219, column: 9, scope: !2409)
!2416 = !DILocation(line: 1220, column: 9, scope: !2409)
!2417 = !DILocation(line: 1221, column: 9, scope: !2409)
!2418 = !DILocation(line: 1227, column: 33, scope: !2254)
!2419 = !DILocation(line: 1227, column: 49, scope: !2254)
!2420 = !DILocation(line: 1227, column: 18, scope: !2254)
!2421 = !DILocation(line: 1227, column: 9, scope: !2254)
!2422 = !DILocation(line: 1228, column: 5, scope: !2254)
!2423 = !DILocation(line: 1229, column: 31, scope: !2254)
!2424 = !DILocation(line: 1229, column: 53, scope: !2254)
!2425 = !DILocation(line: 1229, column: 51, scope: !2254)
!2426 = !DILocation(line: 1229, column: 28, scope: !2254)
!2427 = !DILocation(line: 1230, column: 5, scope: !2254)
!2428 = !DILocation(line: 0, scope: !2393)
!2429 = !DILocation(line: 1232, column: 1, scope: !2254)
!2430 = distinct !DISubprogram(name: "luaMaskCountHook", scope: !3, file: !3, line: 1235, type: !2431, isLocal: false, isDefinition: true, scopeLine: 1235, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2434)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{null, !74, !2433}
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!2434 = !{!2435, !2436, !2437}
!2435 = !DILocalVariable(name: "lua", arg: 1, scope: !2430, file: !3, line: 1235, type: !74)
!2436 = !DILocalVariable(name: "ar", arg: 2, scope: !2430, file: !3, line: 1235, type: !2433)
!2437 = !DILocalVariable(name: "elapsed", scope: !2430, file: !3, line: 1236, type: !13)
!2438 = !DILocation(line: 1235, column: 34, scope: !2430)
!2439 = !DILocation(line: 1235, column: 50, scope: !2430)
!2440 = !DILocation(line: 1236, column: 25, scope: !2430)
!2441 = !DILocation(line: 1236, column: 43, scope: !2430)
!2442 = !{!941, !537, i64 3040}
!2443 = !DILocation(line: 1236, column: 34, scope: !2430)
!2444 = !DILocation(line: 1236, column: 15, scope: !2430)
!2445 = !DILocation(line: 1242, column: 27, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 1242, column: 9)
!2447 = !{!941, !537, i64 3032}
!2448 = !DILocation(line: 1242, column: 17, scope: !2446)
!2449 = !DILocation(line: 1242, column: 52, scope: !2446)
!2450 = !DILocation(line: 1242, column: 65, scope: !2446)
!2451 = !DILocation(line: 1242, column: 42, scope: !2446)
!2452 = !DILocation(line: 1243, column: 9, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 1242, column: 71)
!2454 = !DILocation(line: 1244, column: 29, scope: !2453)
!2455 = !DILocation(line: 1250, column: 30, scope: !2453)
!2456 = !DILocation(line: 1250, column: 9, scope: !2453)
!2457 = !DILocation(line: 1252, column: 16, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 1252, column: 9)
!2459 = !DILocation(line: 1251, column: 5, scope: !2453)
!2460 = !DILocation(line: 1252, column: 9, scope: !2458)
!2461 = !DILocation(line: 1252, column: 9, scope: !2430)
!2462 = !DILocation(line: 1252, column: 30, scope: !2458)
!2463 = !DILocation(line: 1253, column: 16, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 1253, column: 9)
!2465 = !{!941, !760, i64 3072}
!2466 = !DILocation(line: 1253, column: 9, scope: !2464)
!2467 = !DILocation(line: 1253, column: 9, scope: !2430)
!2468 = !DILocation(line: 1254, column: 9, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 1253, column: 26)
!2470 = !DILocation(line: 1255, column: 9, scope: !2469)
!2471 = !DILocation(line: 1256, column: 9, scope: !2469)
!2472 = !DILocation(line: 1257, column: 5, scope: !2469)
!2473 = !DILocation(line: 1258, column: 1, scope: !2430)
!2474 = !DILocation(line: 91, column: 19, scope: !442, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 1302, column: 9, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !403, file: !3, line: 1300, column: 19)
!2477 = !DILocation(line: 1260, column: 33, scope: !386)
!2478 = !DILocation(line: 1260, column: 40, scope: !386)
!2479 = !DILocation(line: 1261, column: 29, scope: !386)
!2480 = !DILocation(line: 1261, column: 16, scope: !386)
!2481 = !DILocation(line: 1262, column: 5, scope: !386)
!2482 = !DILocation(line: 1262, column: 10, scope: !386)
!2483 = !DILocation(line: 1263, column: 5, scope: !386)
!2484 = !DILocation(line: 1264, column: 45, scope: !386)
!2485 = !{!941, !537, i64 2080}
!2486 = !DILocation(line: 1264, column: 15, scope: !386)
!2487 = !DILocation(line: 1265, column: 9, scope: !386)
!2488 = !DILocation(line: 1269, column: 5, scope: !386)
!2489 = !DILocation(line: 1279, column: 29, scope: !386)
!2490 = !DILocation(line: 1280, column: 28, scope: !386)
!2491 = !DILocation(line: 1281, column: 44, scope: !386)
!2492 = !{!941, !760, i64 3076}
!2493 = !DILocation(line: 1281, column: 35, scope: !386)
!2494 = !DILocation(line: 1282, column: 30, scope: !386)
!2495 = !DILocation(line: 1283, column: 21, scope: !386)
!2496 = !DILocation(line: 1286, column: 43, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1286, column: 9)
!2498 = !DILocation(line: 1286, column: 40, scope: !2497)
!2499 = !DILocation(line: 1263, column: 15, scope: !386)
!2500 = !DILocation(line: 1286, column: 9, scope: !2497)
!2501 = !DILocation(line: 1286, column: 66, scope: !2497)
!2502 = !DILocation(line: 1286, column: 9, scope: !386)
!2503 = !DILocation(line: 1288, column: 9, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1288, column: 9)
!2505 = !DILocation(line: 1288, column: 23, scope: !2504)
!2506 = !DILocation(line: 1288, column: 28, scope: !2504)
!2507 = !DILocation(line: 1288, column: 19, scope: !2504)
!2508 = !DILocation(line: 1288, column: 17, scope: !2504)
!2509 = !DILocation(line: 1288, column: 9, scope: !386)
!2510 = !DILocation(line: 1289, column: 9, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 1288, column: 34)
!2512 = !DILocation(line: 1290, column: 9, scope: !2511)
!2513 = !DILocation(line: 1291, column: 24, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 1291, column: 16)
!2515 = !DILocation(line: 1291, column: 16, scope: !2504)
!2516 = !DILocation(line: 1292, column: 9, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 1291, column: 29)
!2518 = !DILocation(line: 1293, column: 9, scope: !2517)
!2519 = !DILocation(line: 1298, column: 17, scope: !386)
!2520 = !DILocation(line: 1299, column: 5, scope: !386)
!2521 = !DILocation(line: 1299, column: 17, scope: !386)
!2522 = !DILocation(line: 1300, column: 10, scope: !403)
!2523 = !DILocation(line: 1300, column: 9, scope: !386)
!2524 = !DILocation(line: 1302, column: 25, scope: !2476)
!2525 = !DILocation(line: 1302, column: 31, scope: !2476)
!2526 = !DILocation(line: 1302, column: 28, scope: !2476)
!2527 = !DILocation(line: 1302, column: 40, scope: !2476)
!2528 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 1302, column: 44, scope: !2476)
!2530 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !2529)
!2531 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !2529)
!2532 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !2529)
!2533 = !DILocation(line: 91, column: 20, scope: !1448, inlinedAt: !2529)
!2534 = !DILocation(line: 91, column: 13, scope: !1448, inlinedAt: !2529)
!2535 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !2529)
!2536 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !2529)
!2537 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !2529)
!2538 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !2529)
!2539 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !2529)
!2540 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !2529)
!2541 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !2529)
!2542 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !2529)
!2543 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !2529)
!2544 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !2529)
!2545 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !2529)
!2546 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !2529)
!2547 = !DILocation(line: 0, scope: !1448, inlinedAt: !2529)
!2548 = !DILocation(line: 89, column: 20, scope: !442, inlinedAt: !2475)
!2549 = !DILocation(line: 89, column: 34, scope: !442, inlinedAt: !2475)
!2550 = !DILocation(line: 89, column: 49, scope: !442, inlinedAt: !2475)
!2551 = !DILocation(line: 90, column: 5, scope: !442, inlinedAt: !2475)
!2552 = !DILocation(line: 91, column: 5, scope: !442, inlinedAt: !2475)
!2553 = !DILocation(line: 90, column: 14, scope: !442, inlinedAt: !2475)
!2554 = !DILocation(line: 95, column: 5, scope: !442, inlinedAt: !2475)
!2555 = !DILocation(line: 96, column: 44, scope: !442, inlinedAt: !2475)
!2556 = !DILocation(line: 96, column: 5, scope: !442, inlinedAt: !2475)
!2557 = !DILocation(line: 97, column: 5, scope: !442, inlinedAt: !2475)
!2558 = !DILocation(line: 93, column: 9, scope: !442, inlinedAt: !2475)
!2559 = !DILocation(line: 99, column: 5, scope: !481, inlinedAt: !2475)
!2560 = !DILocation(line: 100, column: 30, scope: !483, inlinedAt: !2475)
!2561 = !DILocation(line: 100, column: 43, scope: !483, inlinedAt: !2475)
!2562 = !DILocation(line: 100, column: 23, scope: !483, inlinedAt: !2475)
!2563 = !DILocation(line: 100, column: 17, scope: !483, inlinedAt: !2475)
!2564 = !DILocation(line: 100, column: 9, scope: !483, inlinedAt: !2475)
!2565 = !DILocation(line: 100, column: 21, scope: !483, inlinedAt: !2475)
!2566 = !DILocation(line: 101, column: 38, scope: !483, inlinedAt: !2475)
!2567 = !DILocation(line: 101, column: 25, scope: !483, inlinedAt: !2475)
!2568 = !DILocation(line: 101, column: 19, scope: !483, inlinedAt: !2475)
!2569 = !DILocation(line: 101, column: 9, scope: !483, inlinedAt: !2475)
!2570 = !DILocation(line: 101, column: 23, scope: !483, inlinedAt: !2475)
!2571 = !DILocation(line: 99, column: 26, scope: !484, inlinedAt: !2475)
!2572 = !DILocation(line: 99, column: 19, scope: !484, inlinedAt: !2475)
!2573 = !DILocation(line: 103, column: 5, scope: !442, inlinedAt: !2475)
!2574 = !DILocation(line: 103, column: 16, scope: !442, inlinedAt: !2475)
!2575 = !DILocation(line: 104, column: 1, scope: !442, inlinedAt: !2475)
!2576 = !DILocation(line: 1303, column: 5, scope: !2476)
!2577 = !DILocation(line: 1306, column: 24, scope: !402)
!2578 = !DILocation(line: 1306, column: 21, scope: !402)
!2579 = !DILocation(line: 1306, column: 33, scope: !402)
!2580 = !DILocation(line: 1306, column: 15, scope: !402)
!2581 = !DILocation(line: 1305, column: 13, scope: !402)
!2582 = !DILocation(line: 1311, column: 9, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !402, file: !3, line: 1311, column: 9)
!2584 = !DILocation(line: 1312, column: 30, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 1311, column: 9)
!2586 = !{!2587}
!2587 = distinct !{!2587, !2588}
!2588 = distinct !{!2588, !"LVerDomain"}
!2589 = !DILocation(line: 1312, column: 44, scope: !2585)
!2590 = !DILocation(line: 1313, column: 23, scope: !2585)
!2591 = !DILocation(line: 1312, column: 13, scope: !2585)
!2592 = !DILocation(line: 1312, column: 27, scope: !2585)
!2593 = !{!2594}
!2594 = distinct !{!2594, !2588}
!2595 = !DILocation(line: 1312, column: 23, scope: !2585)
!2596 = !DILocation(line: 1311, column: 30, scope: !2585)
!2597 = !DILocation(line: 1311, column: 23, scope: !2585)
!2598 = distinct !{!2598, !2582, !2599, !2600}
!2599 = !DILocation(line: 1313, column: 41, scope: !2583)
!2600 = !{!"llvm.loop.isvectorized", i32 1}
!2601 = !DILocation(line: 1314, column: 9, scope: !402)
!2602 = !DILocation(line: 1314, column: 22, scope: !402)
!2603 = !DILocation(line: 1318, column: 5, scope: !386)
!2604 = !DILocation(line: 1321, column: 5, scope: !386)
!2605 = !DILocation(line: 1322, column: 9, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1322, column: 9)
!2607 = !DILocation(line: 1322, column: 9, scope: !386)
!2608 = !DILocation(line: 1323, column: 9, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 1322, column: 28)
!2610 = !DILocation(line: 1327, column: 13, scope: !2609)
!2611 = !DILocation(line: 1328, column: 13, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 1327, column: 22)
!2613 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 1327, column: 13)
!2614 = !DILocation(line: 1329, column: 32, scope: !2612)
!2615 = !{!930, !761, i64 152}
!2616 = !DILocation(line: 1329, column: 13, scope: !2612)
!2617 = !DILocation(line: 1330, column: 13, scope: !2612)
!2618 = !DILocation(line: 1332, column: 40, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 1332, column: 13)
!2620 = !DILocation(line: 1332, column: 37, scope: !2619)
!2621 = !DILocation(line: 1332, column: 13, scope: !2619)
!2622 = !DILocation(line: 1332, column: 49, scope: !2619)
!2623 = !DILocation(line: 1332, column: 13, scope: !2609)
!2624 = !DILocation(line: 1333, column: 13, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 1332, column: 58)
!2626 = !DILocation(line: 1336, column: 13, scope: !2625)
!2627 = !DILocation(line: 1339, column: 9, scope: !2609)
!2628 = !DILocation(line: 1340, column: 9, scope: !2609)
!2629 = !DILocation(line: 1345, column: 37, scope: !386)
!2630 = !DILocation(line: 1345, column: 41, scope: !386)
!2631 = !DILocation(line: 1345, column: 44, scope: !386)
!2632 = !DILocation(line: 1345, column: 5, scope: !386)
!2633 = !DILocation(line: 1346, column: 37, scope: !386)
!2634 = !DILocation(line: 1346, column: 41, scope: !386)
!2635 = !DILocation(line: 1346, column: 44, scope: !386)
!2636 = !DILocation(line: 1346, column: 43, scope: !386)
!2637 = !DILocation(line: 1346, column: 55, scope: !386)
!2638 = !DILocation(line: 1346, column: 59, scope: !386)
!2639 = !DILocation(line: 1346, column: 52, scope: !386)
!2640 = !DILocation(line: 1346, column: 5, scope: !386)
!2641 = !DILocation(line: 1349, column: 21, scope: !386)
!2642 = !DILocation(line: 1349, column: 35, scope: !386)
!2643 = !{!956, !761, i64 16}
!2644 = !DILocation(line: 1349, column: 39, scope: !386)
!2645 = !{!2646, !760, i64 40}
!2646 = !{!"redisDb", !761, i64 0, !761, i64 8, !761, i64 16, !761, i64 24, !761, i64 32, !760, i64 40, !537, i64 48, !761, i64 56}
!2647 = !DILocation(line: 1349, column: 5, scope: !386)
!2648 = !DILocation(line: 1358, column: 23, scope: !386)
!2649 = !DILocation(line: 1359, column: 29, scope: !386)
!2650 = !DILocation(line: 1359, column: 27, scope: !386)
!2651 = !DILocation(line: 1360, column: 21, scope: !386)
!2652 = !DILocation(line: 1361, column: 16, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1361, column: 9)
!2654 = !DILocation(line: 1361, column: 31, scope: !2653)
!2655 = !DILocation(line: 1361, column: 42, scope: !2653)
!2656 = !DILocation(line: 1361, column: 49, scope: !2653)
!2657 = !DILocation(line: 1361, column: 35, scope: !2653)
!2658 = !DILocation(line: 1362, column: 9, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 1361, column: 55)
!2660 = !DILocation(line: 1364, column: 5, scope: !2659)
!2661 = !DILocation(line: 1364, column: 16, scope: !2653)
!2662 = !DILocation(line: 1365, column: 28, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !3, line: 1364, column: 28)
!2664 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 1364, column: 16)
!2665 = !DILocation(line: 1365, column: 9, scope: !2663)
!2666 = !DILocation(line: 1367, column: 5, scope: !2663)
!2667 = !DILocation(line: 1372, column: 11, scope: !386)
!2668 = !DILocation(line: 1265, column: 22, scope: !386)
!2669 = !DILocation(line: 1375, column: 9, scope: !386)
!2670 = !DILocation(line: 1375, column: 18, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1375, column: 9)
!2672 = !DILocation(line: 1376, column: 16, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1376, column: 9)
!2674 = !DILocation(line: 1376, column: 9, scope: !2673)
!2675 = !DILocation(line: 1376, column: 9, scope: !386)
!2676 = !DILocation(line: 1377, column: 29, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 1376, column: 30)
!2678 = !DILocation(line: 1380, column: 9, scope: !2677)
!2679 = !DILocation(line: 1381, column: 20, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 1381, column: 13)
!2681 = !DILocation(line: 1381, column: 13, scope: !2680)
!2682 = !DILocation(line: 1381, column: 41, scope: !2680)
!2683 = !DILocation(line: 1381, column: 34, scope: !2680)
!2684 = !DILocation(line: 1381, column: 31, scope: !2680)
!2685 = !DILocation(line: 1382, column: 13, scope: !2680)
!2686 = !DILocation(line: 1384, column: 23, scope: !386)
!2687 = !DILocation(line: 1396, column: 17, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1393, column: 5)
!2689 = !DILocation(line: 1397, column: 22, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 1397, column: 13)
!2691 = !DILocation(line: 1397, column: 13, scope: !2688)
!2692 = !DILocation(line: 1398, column: 13, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2690, file: !3, line: 1397, column: 46)
!2694 = !DILocation(line: 1399, column: 22, scope: !2693)
!2695 = !DILocation(line: 1400, column: 9, scope: !2693)
!2696 = !DILocation(line: 1403, column: 9, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1403, column: 9)
!2698 = !DILocation(line: 1403, column: 9, scope: !386)
!2699 = !DILocation(line: 1405, column: 23, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1403, column: 14)
!2701 = !DILocation(line: 1404, column: 9, scope: !2700)
!2702 = !DILocation(line: 1406, column: 9, scope: !2700)
!2703 = !DILocation(line: 1407, column: 5, scope: !2700)
!2704 = !DILocation(line: 1410, column: 9, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 1407, column: 12)
!2706 = !DILocation(line: 1411, column: 9, scope: !2705)
!2707 = !DILocation(line: 1416, column: 16, scope: !409)
!2708 = !DILocation(line: 1416, column: 9, scope: !409)
!2709 = !DILocation(line: 1416, column: 9, scope: !386)
!2710 = !DILocation(line: 1417, column: 9, scope: !408)
!2711 = !DILocation(line: 1418, column: 20, scope: !407)
!2712 = !DILocation(line: 1418, column: 13, scope: !407)
!2713 = !DILocation(line: 1418, column: 13, scope: !408)
!2714 = !DILocation(line: 1419, column: 13, scope: !406)
!2715 = !DILocation(line: 1419, column: 19, scope: !406)
!2716 = !DILocation(line: 1420, column: 27, scope: !406)
!2717 = !DILocation(line: 1420, column: 13, scope: !406)
!2718 = !DILocation(line: 1420, column: 25, scope: !406)
!2719 = !DILocation(line: 1421, column: 34, scope: !406)
!2720 = !{!941, !761, i64 960}
!2721 = !DILocation(line: 1421, column: 49, scope: !406)
!2722 = !DILocation(line: 1421, column: 53, scope: !406)
!2723 = !DILocation(line: 1421, column: 13, scope: !406)
!2724 = !DILocation(line: 1423, column: 26, scope: !406)
!2725 = !DILocation(line: 1423, column: 13, scope: !406)
!2726 = !DILocation(line: 1424, column: 9, scope: !407)
!2727 = !DILocation(line: 1424, column: 9, scope: !406)
!2728 = !DILocation(line: 1437, column: 9, scope: !417)
!2729 = !DILocation(line: 1437, column: 28, scope: !417)
!2730 = !DILocation(line: 1437, column: 21, scope: !417)
!2731 = !DILocation(line: 1437, column: 17, scope: !417)
!2732 = !DILocation(line: 1438, column: 46, scope: !415)
!2733 = !DILocation(line: 1438, column: 43, scope: !415)
!2734 = !DILocation(line: 1438, column: 55, scope: !415)
!2735 = !DILocation(line: 1438, column: 14, scope: !415)
!2736 = !DILocation(line: 1438, column: 13, scope: !416)
!2737 = !DILocation(line: 1442, column: 50, scope: !414)
!2738 = !DILocation(line: 1442, column: 65, scope: !414)
!2739 = !DILocation(line: 1442, column: 62, scope: !414)
!2740 = !DILocation(line: 1442, column: 74, scope: !414)
!2741 = !DILocation(line: 1442, column: 28, scope: !414)
!2742 = !DILocation(line: 1442, column: 19, scope: !414)
!2743 = !DILocation(line: 1444, column: 42, scope: !414)
!2744 = !DILocation(line: 1444, column: 39, scope: !414)
!2745 = !DILocation(line: 1444, column: 51, scope: !414)
!2746 = !DILocation(line: 1444, column: 13, scope: !414)
!2747 = !DILocation(line: 1445, column: 13, scope: !414)
!2748 = !DILocation(line: 1451, column: 24, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !414, file: !3, line: 1451, column: 17)
!2750 = !DILocation(line: 1451, column: 30, scope: !2749)
!2751 = !DILocation(line: 1451, column: 17, scope: !414)
!2752 = !DILocation(line: 1453, column: 35, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 1451, column: 55)
!2754 = !DILocation(line: 1453, column: 21, scope: !2753)
!2755 = !DILocation(line: 1454, column: 35, scope: !2753)
!2756 = !DILocation(line: 1454, column: 21, scope: !2753)
!2757 = !DILocation(line: 1452, column: 17, scope: !2753)
!2758 = !DILocation(line: 1456, column: 13, scope: !2753)
!2759 = !DILocation(line: 1458, column: 35, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 1456, column: 20)
!2761 = !DILocation(line: 1458, column: 21, scope: !2760)
!2762 = !DILocation(line: 1457, column: 17, scope: !2760)
!2763 = !DILocation(line: 1459, column: 17, scope: !2760)
!2764 = !DILocation(line: 1461, column: 13, scope: !414)
!2765 = !DILocation(line: 1462, column: 9, scope: !414)
!2766 = !DILocation(line: 1464, column: 1, scope: !386)
!2767 = distinct !DISubprogram(name: "luaLdbLineHook", scope: !3, file: !3, line: 2409, type: !2431, isLocal: false, isDefinition: true, scopeLine: 2409, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2768)
!2768 = !{!2769, !2770, !2771, !2772, !2773, !2776, !2777}
!2769 = !DILocalVariable(name: "lua", arg: 1, scope: !2767, file: !3, line: 2409, type: !74)
!2770 = !DILocalVariable(name: "ar", arg: 2, scope: !2767, file: !3, line: 2409, type: !2433)
!2771 = !DILocalVariable(name: "bp", scope: !2767, file: !3, line: 2414, type: !15)
!2772 = !DILocalVariable(name: "timeout", scope: !2767, file: !3, line: 2415, type: !15)
!2773 = !DILocalVariable(name: "elapsed", scope: !2774, file: !3, line: 2422, type: !283)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !3, line: 2421, column: 65)
!2775 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 2421, column: 9)
!2776 = !DILocalVariable(name: "timelimit", scope: !2774, file: !3, line: 2423, type: !283)
!2777 = !DILocalVariable(name: "reason", scope: !2778, file: !3, line: 2434, type: !11)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 2433, column: 25)
!2779 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 2433, column: 9)
!2780 = !DILocation(line: 2409, column: 32, scope: !2767)
!2781 = !DILocation(line: 2409, column: 48, scope: !2767)
!2782 = !DILocation(line: 2410, column: 5, scope: !2767)
!2783 = !DILocation(line: 2411, column: 5, scope: !2767)
!2784 = !DILocation(line: 2412, column: 27, scope: !2767)
!2785 = !DILocation(line: 2412, column: 21, scope: !2767)
!2786 = !DILocalVariable(name: "line", arg: 1, scope: !2787, file: !3, line: 1795, type: !15)
!2787 = distinct !DISubprogram(name: "ldbIsBreakpoint", scope: !3, file: !3, line: 1795, type: !2788, isLocal: false, isDefinition: true, scopeLine: 1795, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2790)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!15, !15}
!2790 = !{!2786, !2791}
!2791 = !DILocalVariable(name: "j", scope: !2787, file: !3, line: 1796, type: !15)
!2792 = !DILocation(line: 1795, column: 25, scope: !2787, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 2414, column: 14, scope: !2767)
!2794 = !DILocation(line: 1796, column: 9, scope: !2787, inlinedAt: !2793)
!2795 = !DILocation(line: 1798, column: 25, scope: !2796, inlinedAt: !2793)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 1798, column: 5)
!2797 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 1798, column: 5)
!2798 = !{!759, !760, i64 296}
!2799 = !DILocation(line: 1798, column: 19, scope: !2796, inlinedAt: !2793)
!2800 = !DILocation(line: 1798, column: 5, scope: !2797, inlinedAt: !2793)
!2801 = distinct !{!2801, !2802, !2803}
!2802 = !DILocation(line: 1798, column: 5, scope: !2797)
!2803 = !DILocation(line: 1799, column: 39, scope: !2797)
!2804 = !DILocation(line: 1799, column: 13, scope: !2805, inlinedAt: !2793)
!2805 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 1799, column: 13)
!2806 = !DILocation(line: 1799, column: 23, scope: !2805, inlinedAt: !2793)
!2807 = !DILocation(line: 1798, column: 35, scope: !2796, inlinedAt: !2793)
!2808 = !DILocation(line: 1799, column: 13, scope: !2796, inlinedAt: !2793)
!2809 = !DILocation(line: 0, scope: !2787, inlinedAt: !2793)
!2810 = !DILocation(line: 2414, column: 54, scope: !2767)
!2811 = !DILocation(line: 2414, column: 47, scope: !2767)
!2812 = !DILocation(line: 2415, column: 9, scope: !2767)
!2813 = !DILocation(line: 2418, column: 15, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 2418, column: 8)
!2815 = !DILocation(line: 2418, column: 8, scope: !2814)
!2816 = !DILocation(line: 2418, column: 44, scope: !2814)
!2817 = !DILocation(line: 2418, column: 8, scope: !2767)
!2818 = !DILocation(line: 2421, column: 13, scope: !2775)
!2819 = !{!791, !760, i64 0}
!2820 = !DILocation(line: 2421, column: 19, scope: !2775)
!2821 = !DILocation(line: 2421, column: 43, scope: !2775)
!2822 = !DILocation(line: 2421, column: 48, scope: !2775)
!2823 = !DILocation(line: 2421, column: 36, scope: !2775)
!2824 = !DILocation(line: 2421, column: 59, scope: !2775)
!2825 = !DILocation(line: 2422, column: 28, scope: !2774)
!2826 = !DILocation(line: 2422, column: 46, scope: !2774)
!2827 = !DILocation(line: 2422, column: 37, scope: !2774)
!2828 = !DILocation(line: 2422, column: 18, scope: !2774)
!2829 = !DILocation(line: 2423, column: 37, scope: !2774)
!2830 = !DILocation(line: 2423, column: 30, scope: !2774)
!2831 = !DILocation(line: 2423, column: 18, scope: !2774)
!2832 = !DILocation(line: 2425, column: 21, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 2425, column: 13)
!2834 = !DILocation(line: 2425, column: 13, scope: !2774)
!2835 = !DILocation(line: 2427, column: 22, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 2425, column: 35)
!2837 = !{!759, !760, i64 300}
!2838 = !DILocation(line: 2433, column: 13, scope: !2779)
!2839 = !DILocation(line: 0, scope: !2767)
!2840 = !DILocation(line: 2433, column: 18, scope: !2779)
!2841 = !DILocation(line: 2435, column: 13, scope: !2778)
!2842 = !DILocation(line: 2435, column: 30, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 2435, column: 13)
!2844 = !DILocation(line: 2435, column: 26, scope: !2843)
!2845 = !DILocation(line: 2434, column: 15, scope: !2778)
!2846 = !DILocation(line: 2435, column: 17, scope: !2843)
!2847 = !DILocation(line: 2437, column: 18, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2843, file: !3, line: 2437, column: 18)
!2849 = !DILocation(line: 2437, column: 18, scope: !2843)
!2850 = !DILocation(line: 0, scope: !2778)
!2851 = !DILocation(line: 2438, column: 18, scope: !2778)
!2852 = !DILocation(line: 2439, column: 19, scope: !2778)
!2853 = !DILocation(line: 2440, column: 29, scope: !2778)
!2854 = !DILocation(line: 2442, column: 17, scope: !2778)
!2855 = !DILocation(line: 2440, column: 16, scope: !2778)
!2856 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !2857)
!2857 = distinct !DILocation(line: 2440, column: 9, scope: !2778)
!2858 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !2857)
!2859 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !2857)
!2860 = !DILocation(line: 2443, column: 30, scope: !2778)
!2861 = !DILocalVariable(name: "lnum", arg: 1, scope: !2862, file: !3, line: 1880, type: !15)
!2862 = distinct !DISubprogram(name: "ldbLogSourceLine", scope: !3, file: !3, line: 1880, type: !20, isLocal: false, isDefinition: true, scopeLine: 1880, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2863)
!2863 = !{!2861, !2864, !2865, !2866, !2867, !2868}
!2864 = !DILocalVariable(name: "line", scope: !2862, file: !3, line: 1881, type: !11)
!2865 = !DILocalVariable(name: "prefix", scope: !2862, file: !3, line: 1882, type: !11)
!2866 = !DILocalVariable(name: "bp", scope: !2862, file: !3, line: 1883, type: !15)
!2867 = !DILocalVariable(name: "current", scope: !2862, file: !3, line: 1884, type: !15)
!2868 = !DILocalVariable(name: "thisline", scope: !2862, file: !3, line: 1894, type: !209)
!2869 = !DILocation(line: 1880, column: 27, scope: !2862, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 2443, column: 9, scope: !2778)
!2871 = !DILocalVariable(name: "line", arg: 1, scope: !2872, file: !3, line: 1788, type: !15)
!2872 = distinct !DISubprogram(name: "ldbGetSourceLine", scope: !3, file: !3, line: 1788, type: !2873, isLocal: false, isDefinition: true, scopeLine: 1788, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2875)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!11, !15}
!2875 = !{!2871, !2876}
!2876 = !DILocalVariable(name: "idx", scope: !2872, file: !3, line: 1789, type: !15)
!2877 = !DILocation(line: 1788, column: 28, scope: !2872, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 1881, column: 18, scope: !2862, inlinedAt: !2870)
!2879 = !DILocation(line: 1790, column: 13, scope: !2880, inlinedAt: !2878)
!2880 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 1790, column: 9)
!2881 = !DILocation(line: 1790, column: 31, scope: !2880, inlinedAt: !2878)
!2882 = !DILocation(line: 1790, column: 24, scope: !2880, inlinedAt: !2878)
!2883 = !DILocation(line: 1790, column: 17, scope: !2880, inlinedAt: !2878)
!2884 = !DILocation(line: 1789, column: 19, scope: !2872, inlinedAt: !2878)
!2885 = !DILocation(line: 1789, column: 9, scope: !2872, inlinedAt: !2878)
!2886 = !DILocation(line: 1791, column: 16, scope: !2872, inlinedAt: !2878)
!2887 = !DILocation(line: 1791, column: 12, scope: !2872, inlinedAt: !2878)
!2888 = !DILocation(line: 1791, column: 5, scope: !2872, inlinedAt: !2878)
!2889 = !DILocation(line: 0, scope: !2872, inlinedAt: !2878)
!2890 = !DILocation(line: 1881, column: 11, scope: !2862, inlinedAt: !2870)
!2891 = !DILocation(line: 1795, column: 25, scope: !2787, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 1883, column: 14, scope: !2862, inlinedAt: !2870)
!2893 = !DILocation(line: 1796, column: 9, scope: !2787, inlinedAt: !2892)
!2894 = !DILocation(line: 1798, column: 25, scope: !2796, inlinedAt: !2892)
!2895 = !DILocation(line: 1798, column: 19, scope: !2796, inlinedAt: !2892)
!2896 = !DILocation(line: 1798, column: 5, scope: !2797, inlinedAt: !2892)
!2897 = !DILocation(line: 1799, column: 13, scope: !2805, inlinedAt: !2892)
!2898 = !DILocation(line: 1799, column: 23, scope: !2805, inlinedAt: !2892)
!2899 = !DILocation(line: 1798, column: 35, scope: !2796, inlinedAt: !2892)
!2900 = !DILocation(line: 1799, column: 13, scope: !2796, inlinedAt: !2892)
!2901 = !DILocation(line: 1882, column: 11, scope: !2862, inlinedAt: !2870)
!2902 = !DILocation(line: 1894, column: 33, scope: !2862, inlinedAt: !2870)
!2903 = !DILocation(line: 1894, column: 20, scope: !2862, inlinedAt: !2870)
!2904 = !DILocation(line: 1894, column: 9, scope: !2862, inlinedAt: !2870)
!2905 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !2906)
!2906 = distinct !DILocation(line: 1895, column: 5, scope: !2862, inlinedAt: !2870)
!2907 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !2906)
!2908 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !2906)
!2909 = !DILocation(line: 2444, column: 9, scope: !2778)
!2910 = !DILocation(line: 2445, column: 13, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 2445, column: 13)
!2912 = !DILocation(line: 2445, column: 26, scope: !2911)
!2913 = !DILocation(line: 2445, column: 38, scope: !2911)
!2914 = !DILocation(line: 2445, column: 35, scope: !2911)
!2915 = !DILocation(line: 2449, column: 13, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 2445, column: 47)
!2917 = !DILocation(line: 2450, column: 13, scope: !2916)
!2918 = !DILocation(line: 2451, column: 9, scope: !2916)
!2919 = !DILocation(line: 2452, column: 33, scope: !2778)
!2920 = !DILocation(line: 2452, column: 31, scope: !2778)
!2921 = !DILocation(line: 2453, column: 5, scope: !2778)
!2922 = !DILocation(line: 2454, column: 1, scope: !2767)
!2923 = distinct !DISubprogram(name: "evalCommand", scope: !3, file: !3, line: 1466, type: !91, isLocal: false, isDefinition: true, scopeLine: 1466, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2924)
!2924 = !{!2925}
!2925 = !DILocalVariable(name: "c", arg: 1, scope: !2923, file: !3, line: 1466, type: !93)
!2926 = !DILocation(line: 1466, column: 26, scope: !2923)
!2927 = !DILocation(line: 1467, column: 14, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 1467, column: 9)
!2929 = !DILocation(line: 1467, column: 20, scope: !2928)
!2930 = !DILocation(line: 1467, column: 9, scope: !2923)
!2931 = !DILocation(line: 1468, column: 9, scope: !2928)
!2932 = !DILocalVariable(name: "c", arg: 1, scope: !2933, file: !3, line: 1777, type: !93)
!2933 = distinct !DISubprogram(name: "evalGenericCommandWithDebugging", scope: !3, file: !3, line: 1777, type: !387, isLocal: false, isDefinition: true, scopeLine: 1777, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2934)
!2934 = !{!2932, !2935}
!2935 = !DILocalVariable(name: "evalsha", arg: 2, scope: !2933, file: !3, line: 1777, type: !15)
!2936 = !DILocation(line: 1777, column: 46, scope: !2933, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 1470, column: 9, scope: !2928)
!2938 = !DILocation(line: 1777, column: 53, scope: !2933, inlinedAt: !2937)
!2939 = !DILocation(line: 1778, column: 9, scope: !2940, inlinedAt: !2937)
!2940 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 1778, column: 9)
!2941 = !DILocation(line: 1778, column: 9, scope: !2933, inlinedAt: !2937)
!2942 = !DILocation(line: 1779, column: 9, scope: !2943, inlinedAt: !2937)
!2943 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 1778, column: 29)
!2944 = !DILocation(line: 1780, column: 9, scope: !2943, inlinedAt: !2937)
!2945 = !DILocation(line: 1781, column: 5, scope: !2943, inlinedAt: !2937)
!2946 = !DILocalVariable(name: "c", arg: 1, scope: !2947, file: !3, line: 1597, type: !93)
!2947 = distinct !DISubprogram(name: "ldbDisable", scope: !3, file: !3, line: 1597, type: !91, isLocal: false, isDefinition: true, scopeLine: 1597, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2948)
!2948 = !{!2946}
!2949 = !DILocation(line: 1597, column: 25, scope: !2947, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 1782, column: 9, scope: !2951, inlinedAt: !2937)
!2951 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 1781, column: 12)
!2952 = !DILocation(line: 1598, column: 14, scope: !2947, inlinedAt: !2950)
!2953 = !DILocation(line: 1471, column: 1, scope: !2923)
!2954 = !DILocation(line: 1777, column: 46, scope: !2933)
!2955 = !DILocation(line: 1777, column: 53, scope: !2933)
!2956 = !DILocation(line: 1778, column: 9, scope: !2940)
!2957 = !DILocation(line: 1778, column: 9, scope: !2933)
!2958 = !DILocation(line: 1779, column: 9, scope: !2943)
!2959 = !DILocation(line: 1780, column: 9, scope: !2943)
!2960 = !DILocation(line: 1781, column: 5, scope: !2943)
!2961 = !DILocation(line: 1597, column: 25, scope: !2947, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 1782, column: 9, scope: !2951)
!2963 = !DILocation(line: 1598, column: 8, scope: !2947, inlinedAt: !2962)
!2964 = !DILocation(line: 1598, column: 14, scope: !2947, inlinedAt: !2962)
!2965 = !DILocation(line: 1784, column: 1, scope: !2933)
!2966 = distinct !DISubprogram(name: "evalShaCommand", scope: !3, file: !3, line: 1473, type: !91, isLocal: false, isDefinition: true, scopeLine: 1473, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2967)
!2967 = !{!2968}
!2968 = !DILocalVariable(name: "c", arg: 1, scope: !2966, file: !3, line: 1473, type: !93)
!2969 = !DILocation(line: 1473, column: 29, scope: !2966)
!2970 = !DILocation(line: 1474, column: 19, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 1474, column: 9)
!2972 = !DILocation(line: 1474, column: 16, scope: !2971)
!2973 = !DILocation(line: 1474, column: 28, scope: !2971)
!2974 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 1474, column: 9, scope: !2971)
!2976 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !2975)
!2977 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !2975)
!2978 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !2975)
!2979 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !2975)
!2980 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !2975)
!2981 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !2975)
!2982 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !2975)
!2983 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !2975)
!2984 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !2975)
!2985 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !2975)
!2986 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !2975)
!2987 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !2975)
!2988 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !2975)
!2989 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !2975)
!2990 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !2975)
!2991 = !DILocation(line: 0, scope: !1448, inlinedAt: !2975)
!2992 = !DILocation(line: 1474, column: 33, scope: !2971)
!2993 = !DILocation(line: 1474, column: 9, scope: !2966)
!2994 = !DILocation(line: 1479, column: 28, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 1474, column: 40)
!2996 = !DILocation(line: 1479, column: 9, scope: !2995)
!2997 = !DILocation(line: 1480, column: 9, scope: !2995)
!2998 = !DILocation(line: 1482, column: 14, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 1482, column: 9)
!3000 = !DILocation(line: 1482, column: 20, scope: !2999)
!3001 = !DILocation(line: 1482, column: 9, scope: !2966)
!3002 = !DILocation(line: 1483, column: 9, scope: !2999)
!3003 = !DILocation(line: 1485, column: 9, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 1484, column: 10)
!3005 = !DILocation(line: 1486, column: 9, scope: !3004)
!3006 = !DILocation(line: 1488, column: 1, scope: !2966)
!3007 = distinct !DISubprogram(name: "scriptCommand", scope: !3, file: !3, line: 1490, type: !91, isLocal: false, isDefinition: true, scopeLine: 1490, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3008)
!3008 = !{!3009, !3010, !3016, !3020}
!3009 = !DILocalVariable(name: "c", arg: 1, scope: !3007, file: !3, line: 1490, type: !93)
!3010 = !DILocalVariable(name: "help", scope: !3011, file: !3, line: 1492, type: !3013)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 1491, column: 62)
!3012 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 1491, column: 9)
!3013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 384, elements: !3014)
!3014 = !{!3015}
!3015 = !DISubrange(count: 6)
!3016 = !DILocalVariable(name: "j", scope: !3017, file: !3, line: 1507, type: !15)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 1506, column: 71)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 1506, column: 16)
!3019 = distinct !DILexicalBlock(scope: !3012, file: !3, line: 1501, column: 16)
!3020 = !DILocalVariable(name: "sha", scope: !3021, file: !3, line: 1517, type: !209)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 1516, column: 69)
!3022 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 1516, column: 16)
!3023 = !DILocation(line: 1490, column: 28, scope: !3007)
!3024 = !DILocation(line: 1491, column: 12, scope: !3012)
!3025 = !DILocation(line: 1491, column: 17, scope: !3012)
!3026 = !DILocation(line: 1491, column: 22, scope: !3012)
!3027 = !DILocation(line: 1491, column: 40, scope: !3012)
!3028 = !DILocation(line: 1491, column: 37, scope: !3012)
!3029 = !DILocation(line: 1491, column: 49, scope: !3012)
!3030 = !DILocation(line: 1491, column: 26, scope: !3012)
!3031 = !DILocation(line: 1491, column: 9, scope: !3007)
!3032 = !DILocation(line: 1492, column: 9, scope: !3011)
!3033 = !DILocation(line: 1492, column: 21, scope: !3011)
!3034 = !DILocation(line: 1500, column: 9, scope: !3011)
!3035 = !DILocation(line: 1501, column: 5, scope: !3012)
!3036 = !DILocation(line: 1501, column: 5, scope: !3011)
!3037 = !DILocation(line: 1501, column: 33, scope: !3019)
!3038 = !DILocation(line: 1501, column: 16, scope: !3012)
!3039 = !DILocation(line: 1093, column: 24, scope: !2189, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 1099, column: 5, scope: !2196, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 1502, column: 9, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 1501, column: 70)
!3043 = !DILocation(line: 1093, column: 5, scope: !2189, inlinedAt: !3040)
!3044 = !DILocation(line: 1094, column: 28, scope: !2189, inlinedAt: !3040)
!3045 = !DILocation(line: 1095, column: 22, scope: !2189, inlinedAt: !3040)
!3046 = !DILocation(line: 1095, column: 5, scope: !2189, inlinedAt: !3040)
!3047 = !DILocation(line: 1100, column: 5, scope: !2196, inlinedAt: !3041)
!3048 = !DILocation(line: 1503, column: 27, scope: !3042)
!3049 = !{!930, !761, i64 8}
!3050 = !DILocation(line: 1503, column: 9, scope: !3042)
!3051 = !DILocation(line: 1504, column: 9, scope: !3042)
!3052 = !DILocation(line: 1505, column: 21, scope: !3042)
!3053 = !DILocation(line: 1506, column: 5, scope: !3042)
!3054 = !DILocation(line: 1506, column: 24, scope: !3018)
!3055 = !DILocation(line: 1506, column: 29, scope: !3018)
!3056 = !DILocation(line: 1506, column: 47, scope: !3018)
!3057 = !DILocation(line: 1506, column: 44, scope: !3018)
!3058 = !DILocation(line: 1506, column: 56, scope: !3018)
!3059 = !DILocation(line: 1506, column: 33, scope: !3018)
!3060 = !DILocation(line: 1506, column: 16, scope: !3019)
!3061 = !DILocation(line: 1509, column: 40, scope: !3017)
!3062 = !DILocation(line: 1509, column: 33, scope: !3017)
!3063 = !DILocation(line: 1509, column: 9, scope: !3017)
!3064 = !DILocation(line: 1507, column: 13, scope: !3017)
!3065 = !DILocation(line: 1510, column: 28, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1510, column: 9)
!3067 = distinct !DILexicalBlock(scope: !3017, file: !3, line: 1510, column: 9)
!3068 = !DILocation(line: 1510, column: 23, scope: !3066)
!3069 = !DILocation(line: 1510, column: 9, scope: !3067)
!3070 = !DILocation(line: 1511, column: 33, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 1511, column: 17)
!3072 = distinct !DILexicalBlock(scope: !3066, file: !3, line: 1510, column: 39)
!3073 = !DILocation(line: 1511, column: 48, scope: !3071)
!3074 = !DILocation(line: 1511, column: 45, scope: !3071)
!3075 = !DILocation(line: 1511, column: 57, scope: !3071)
!3076 = !DILocation(line: 1511, column: 17, scope: !3071)
!3077 = !DILocation(line: 1511, column: 17, scope: !3072)
!3078 = !DILocation(line: 1512, column: 35, scope: !3071)
!3079 = !{!930, !761, i64 40}
!3080 = !DILocation(line: 1512, column: 17, scope: !3071)
!3081 = !DILocation(line: 1514, column: 35, scope: !3071)
!3082 = !{!930, !761, i64 32}
!3083 = !DILocation(line: 1514, column: 17, scope: !3071)
!3084 = !DILocation(line: 1510, column: 35, scope: !3066)
!3085 = distinct !{!3085, !3069, !3086}
!3086 = !DILocation(line: 1515, column: 9, scope: !3067)
!3087 = !DILocation(line: 1516, column: 24, scope: !3022)
!3088 = !DILocation(line: 1516, column: 29, scope: !3022)
!3089 = !DILocation(line: 1516, column: 33, scope: !3022)
!3090 = !DILocation(line: 1516, column: 16, scope: !3018)
!3091 = !DILocation(line: 1517, column: 46, scope: !3021)
!3092 = !DILocation(line: 1517, column: 50, scope: !3021)
!3093 = !DILocation(line: 1517, column: 19, scope: !3021)
!3094 = !DILocation(line: 1517, column: 13, scope: !3021)
!3095 = !DILocation(line: 1518, column: 17, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 1518, column: 13)
!3097 = !DILocation(line: 1518, column: 13, scope: !3021)
!3098 = !DILocation(line: 1519, column: 9, scope: !3021)
!3099 = !DILocation(line: 1520, column: 9, scope: !3021)
!3100 = !DILocation(line: 1521, column: 5, scope: !3022)
!3101 = !DILocation(line: 1521, column: 29, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 1521, column: 16)
!3103 = !DILocation(line: 1521, column: 33, scope: !3102)
!3104 = !DILocation(line: 1521, column: 16, scope: !3022)
!3105 = !DILocation(line: 1522, column: 20, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1522, column: 13)
!3107 = distinct !DILexicalBlock(scope: !3102, file: !3, line: 1521, column: 69)
!3108 = !DILocation(line: 1522, column: 31, scope: !3106)
!3109 = !DILocation(line: 1522, column: 13, scope: !3107)
!3110 = !DILocation(line: 1523, column: 27, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 1522, column: 40)
!3112 = !DILocation(line: 1523, column: 13, scope: !3111)
!3113 = !DILocation(line: 1524, column: 9, scope: !3111)
!3114 = !DILocation(line: 1524, column: 39, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 1524, column: 20)
!3116 = !DILocation(line: 1524, column: 45, scope: !3115)
!3117 = !DILocation(line: 1524, column: 20, scope: !3106)
!3118 = !DILocation(line: 1525, column: 27, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 1524, column: 62)
!3120 = !DILocation(line: 1525, column: 13, scope: !3119)
!3121 = !DILocation(line: 1526, column: 9, scope: !3119)
!3122 = !DILocation(line: 1526, column: 27, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 1526, column: 20)
!3124 = !DILocation(line: 1526, column: 20, scope: !3123)
!3125 = !DILocation(line: 1526, column: 20, scope: !3115)
!3126 = !DILocation(line: 1527, column: 27, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 1526, column: 44)
!3128 = !DILocation(line: 1527, column: 13, scope: !3127)
!3129 = !DILocation(line: 1528, column: 9, scope: !3127)
!3130 = !DILocation(line: 1529, column: 29, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 1528, column: 16)
!3132 = !DILocation(line: 1530, column: 31, scope: !3131)
!3133 = !DILocation(line: 1530, column: 13, scope: !3131)
!3134 = !DILocation(line: 1532, column: 29, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3102, file: !3, line: 1532, column: 16)
!3136 = !DILocation(line: 1532, column: 33, scope: !3135)
!3137 = !DILocation(line: 1532, column: 16, scope: !3102)
!3138 = !DILocation(line: 1533, column: 13, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 1533, column: 13)
!3140 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 1532, column: 70)
!3141 = !DILocation(line: 1533, column: 13, scope: !3140)
!3142 = !DILocation(line: 1534, column: 13, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 1533, column: 41)
!3144 = !DILocation(line: 1535, column: 13, scope: !3143)
!3145 = !DILocation(line: 1537, column: 28, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 1537, column: 13)
!3147 = !DILocation(line: 1537, column: 25, scope: !3146)
!3148 = !DILocation(line: 1537, column: 37, scope: !3146)
!3149 = !DILocation(line: 1537, column: 14, scope: !3146)
!3150 = !DILocation(line: 1537, column: 13, scope: !3140)
!3151 = !DILocation(line: 1597, column: 25, scope: !2947, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 1538, column: 13, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 1537, column: 48)
!3154 = !DILocation(line: 1598, column: 8, scope: !2947, inlinedAt: !3152)
!3155 = !DILocation(line: 1598, column: 14, scope: !2947, inlinedAt: !3152)
!3156 = !DILocation(line: 1539, column: 31, scope: !3153)
!3157 = !DILocation(line: 1539, column: 13, scope: !3153)
!3158 = !DILocation(line: 1540, column: 9, scope: !3153)
!3159 = !DILocation(line: 1540, column: 21, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 1540, column: 20)
!3161 = !DILocation(line: 1540, column: 20, scope: !3146)
!3162 = !DILocalVariable(name: "c", arg: 1, scope: !3163, file: !3, line: 1581, type: !93)
!3163 = distinct !DISubprogram(name: "ldbEnable", scope: !3, file: !3, line: 1581, type: !91, isLocal: false, isDefinition: true, scopeLine: 1581, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3164)
!3164 = !{!3162}
!3165 = !DILocation(line: 1581, column: 24, scope: !3163, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 1541, column: 13, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 1540, column: 56)
!3168 = !DILocation(line: 1582, column: 8, scope: !3163, inlinedAt: !3166)
!3169 = !DILocation(line: 1582, column: 14, scope: !3163, inlinedAt: !3166)
!3170 = !DILocation(line: 1583, column: 21, scope: !3163, inlinedAt: !3166)
!3171 = !DILocalVariable(name: "log", arg: 1, scope: !3172, file: !3, line: 1573, type: !173)
!3172 = distinct !DISubprogram(name: "ldbFlushLog", scope: !3, file: !3, line: 1573, type: !3173, isLocal: false, isDefinition: true, scopeLine: 1573, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3175)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{null, !173}
!3175 = !{!3171, !3176}
!3176 = !DILocalVariable(name: "ln", scope: !3172, file: !3, line: 1574, type: !179)
!3177 = !DILocation(line: 1573, column: 24, scope: !3172, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 1583, column: 5, scope: !3163, inlinedAt: !3166)
!3179 = !DILocation(line: 1576, column: 17, scope: !3172, inlinedAt: !3178)
!3180 = !DILocation(line: 1574, column: 15, scope: !3172, inlinedAt: !3178)
!3181 = !DILocation(line: 1576, column: 33, scope: !3172, inlinedAt: !3178)
!3182 = !DILocation(line: 1576, column: 5, scope: !3172, inlinedAt: !3178)
!3183 = !DILocation(line: 1577, column: 9, scope: !3172, inlinedAt: !3178)
!3184 = distinct !{!3184, !3185, !3186}
!3185 = !DILocation(line: 1576, column: 5, scope: !3172)
!3186 = !DILocation(line: 1577, column: 27, scope: !3172)
!3187 = !DILocation(line: 1584, column: 17, scope: !3163, inlinedAt: !3166)
!3188 = !{!956, !760, i64 8}
!3189 = !DILocation(line: 1584, column: 12, scope: !3163, inlinedAt: !3166)
!3190 = !DILocation(line: 1585, column: 14, scope: !3163, inlinedAt: !3166)
!3191 = !DILocation(line: 1586, column: 17, scope: !3163, inlinedAt: !3166)
!3192 = !DILocation(line: 1587, column: 15, scope: !3163, inlinedAt: !3166)
!3193 = !DILocation(line: 1588, column: 17, scope: !3163, inlinedAt: !3166)
!3194 = !DILocation(line: 1588, column: 5, scope: !3163, inlinedAt: !3166)
!3195 = !DILocation(line: 1589, column: 16, scope: !3163, inlinedAt: !3166)
!3196 = !DILocation(line: 1589, column: 14, scope: !3163, inlinedAt: !3166)
!3197 = !DILocation(line: 1590, column: 16, scope: !3163, inlinedAt: !3166)
!3198 = !{!759, !762, i64 336}
!3199 = !DILocation(line: 1591, column: 26, scope: !3163, inlinedAt: !3166)
!3200 = !{!759, !760, i64 344}
!3201 = !DILocation(line: 1542, column: 31, scope: !3167)
!3202 = !DILocation(line: 1542, column: 13, scope: !3167)
!3203 = !DILocation(line: 1543, column: 9, scope: !3167)
!3204 = !DILocation(line: 1543, column: 21, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 1543, column: 20)
!3206 = !DILocation(line: 1543, column: 20, scope: !3160)
!3207 = !DILocation(line: 1581, column: 24, scope: !3163, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 1544, column: 13, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 1543, column: 57)
!3210 = !DILocation(line: 1582, column: 8, scope: !3163, inlinedAt: !3208)
!3211 = !DILocation(line: 1582, column: 14, scope: !3163, inlinedAt: !3208)
!3212 = !DILocation(line: 1583, column: 21, scope: !3163, inlinedAt: !3208)
!3213 = !DILocation(line: 1573, column: 24, scope: !3172, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 1583, column: 5, scope: !3163, inlinedAt: !3208)
!3215 = !DILocation(line: 1576, column: 17, scope: !3172, inlinedAt: !3214)
!3216 = !DILocation(line: 1574, column: 15, scope: !3172, inlinedAt: !3214)
!3217 = !DILocation(line: 1576, column: 33, scope: !3172, inlinedAt: !3214)
!3218 = !DILocation(line: 1576, column: 5, scope: !3172, inlinedAt: !3214)
!3219 = !DILocation(line: 1577, column: 9, scope: !3172, inlinedAt: !3214)
!3220 = !DILocation(line: 1584, column: 17, scope: !3163, inlinedAt: !3208)
!3221 = !DILocation(line: 1584, column: 12, scope: !3163, inlinedAt: !3208)
!3222 = !DILocation(line: 1585, column: 14, scope: !3163, inlinedAt: !3208)
!3223 = !DILocation(line: 1586, column: 17, scope: !3163, inlinedAt: !3208)
!3224 = !DILocation(line: 1587, column: 15, scope: !3163, inlinedAt: !3208)
!3225 = !DILocation(line: 1588, column: 17, scope: !3163, inlinedAt: !3208)
!3226 = !DILocation(line: 1588, column: 5, scope: !3163, inlinedAt: !3208)
!3227 = !DILocation(line: 1589, column: 16, scope: !3163, inlinedAt: !3208)
!3228 = !DILocation(line: 1589, column: 14, scope: !3163, inlinedAt: !3208)
!3229 = !DILocation(line: 1590, column: 16, scope: !3163, inlinedAt: !3208)
!3230 = !DILocation(line: 1591, column: 26, scope: !3163, inlinedAt: !3208)
!3231 = !DILocation(line: 1545, column: 31, scope: !3209)
!3232 = !DILocation(line: 1545, column: 13, scope: !3209)
!3233 = !DILocation(line: 1546, column: 22, scope: !3209)
!3234 = !DILocation(line: 1548, column: 13, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 1547, column: 16)
!3236 = !DILocation(line: 1549, column: 13, scope: !3235)
!3237 = !DILocation(line: 1552, column: 9, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 1551, column: 12)
!3239 = !DILocation(line: 1597, column: 25, scope: !2947)
!3240 = !DILocation(line: 1598, column: 8, scope: !2947)
!3241 = !DILocation(line: 1598, column: 14, scope: !2947)
!3242 = !DILocation(line: 1599, column: 1, scope: !2947)
!3243 = !DILocation(line: 1581, column: 24, scope: !3163)
!3244 = !DILocation(line: 1582, column: 8, scope: !3163)
!3245 = !DILocation(line: 1582, column: 14, scope: !3163)
!3246 = !DILocation(line: 1583, column: 21, scope: !3163)
!3247 = !DILocation(line: 1573, column: 24, scope: !3172, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 1583, column: 5, scope: !3163)
!3249 = !DILocation(line: 1576, column: 17, scope: !3172, inlinedAt: !3248)
!3250 = !DILocation(line: 1574, column: 15, scope: !3172, inlinedAt: !3248)
!3251 = !DILocation(line: 1576, column: 33, scope: !3172, inlinedAt: !3248)
!3252 = !DILocation(line: 1576, column: 5, scope: !3172, inlinedAt: !3248)
!3253 = !DILocation(line: 1577, column: 9, scope: !3172, inlinedAt: !3248)
!3254 = !DILocation(line: 1584, column: 17, scope: !3163)
!3255 = !DILocation(line: 1584, column: 12, scope: !3163)
!3256 = !DILocation(line: 1585, column: 14, scope: !3163)
!3257 = !DILocation(line: 1586, column: 17, scope: !3163)
!3258 = !DILocation(line: 1587, column: 15, scope: !3163)
!3259 = !DILocation(line: 1588, column: 17, scope: !3163)
!3260 = !DILocation(line: 1588, column: 5, scope: !3163)
!3261 = !DILocation(line: 1589, column: 16, scope: !3163)
!3262 = !DILocation(line: 1589, column: 14, scope: !3163)
!3263 = !DILocation(line: 1590, column: 16, scope: !3163)
!3264 = !DILocation(line: 1591, column: 26, scope: !3163)
!3265 = !DILocation(line: 1592, column: 1, scope: !3163)
!3266 = !DILocation(line: 1573, column: 24, scope: !3172)
!3267 = !DILocation(line: 1576, column: 17, scope: !3172)
!3268 = !DILocation(line: 1574, column: 15, scope: !3172)
!3269 = !DILocation(line: 1576, column: 33, scope: !3172)
!3270 = !DILocation(line: 1577, column: 9, scope: !3172)
!3271 = !DILocation(line: 1578, column: 1, scope: !3172)
!3272 = distinct !DISubprogram(name: "ldbLogWithMaxLen", scope: !3, file: !3, line: 1610, type: !772, isLocal: false, isDefinition: true, scopeLine: 1610, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3273)
!3273 = !{!3274, !3275}
!3274 = !DILocalVariable(name: "entry", arg: 1, scope: !3272, file: !3, line: 1610, type: !209)
!3275 = !DILocalVariable(name: "trimmed", scope: !3272, file: !3, line: 1611, type: !15)
!3276 = !DILocation(line: 1610, column: 27, scope: !3272)
!3277 = !DILocation(line: 1611, column: 9, scope: !3272)
!3278 = !DILocation(line: 1612, column: 13, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 1612, column: 9)
!3280 = !DILocation(line: 1612, column: 9, scope: !3279)
!3281 = !DILocation(line: 1612, column: 20, scope: !3279)
!3282 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 1612, column: 23, scope: !3279)
!3284 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !3283)
!3285 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !3283)
!3286 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !3283)
!3287 = !DILocation(line: 91, column: 20, scope: !1448, inlinedAt: !3283)
!3288 = !DILocation(line: 91, column: 13, scope: !1448, inlinedAt: !3283)
!3289 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !3283)
!3290 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !3283)
!3291 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !3283)
!3292 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !3283)
!3293 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !3283)
!3294 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !3283)
!3295 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !3283)
!3296 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !3283)
!3297 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !3283)
!3298 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !3283)
!3299 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !3283)
!3300 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !3283)
!3301 = !DILocation(line: 0, scope: !1448, inlinedAt: !3283)
!3302 = !DILocation(line: 1612, column: 37, scope: !3279)
!3303 = !DILocation(line: 1612, column: 9, scope: !3272)
!3304 = !DILocation(line: 1613, column: 36, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3279, file: !3, line: 1612, column: 51)
!3306 = !DILocation(line: 1613, column: 9, scope: !3305)
!3307 = !DILocation(line: 1614, column: 17, scope: !3305)
!3308 = !DILocation(line: 1616, column: 5, scope: !3305)
!3309 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 1617, column: 5, scope: !3272)
!3311 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !3310)
!3312 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !3310)
!3313 = !DILocation(line: 1618, column: 24, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 1618, column: 9)
!3315 = !DILocation(line: 1618, column: 41, scope: !3314)
!3316 = !DILocation(line: 1618, column: 17, scope: !3314)
!3317 = !DILocation(line: 1619, column: 30, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 1618, column: 47)
!3319 = !DILocation(line: 1620, column: 16, scope: !3318)
!3320 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 1620, column: 9, scope: !3318)
!3322 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !3321)
!3323 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !3321)
!3324 = !DILocation(line: 1622, column: 5, scope: !3318)
!3325 = !DILocation(line: 1623, column: 1, scope: !3272)
!3326 = distinct !DISubprogram(name: "ldbSendLogs", scope: !3, file: !3, line: 1628, type: !2005, isLocal: false, isDefinition: true, scopeLine: 1628, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3327)
!3327 = !{!3328, !3329}
!3328 = !DILocalVariable(name: "proto", scope: !3326, file: !3, line: 1629, type: !209)
!3329 = !DILocalVariable(name: "ln", scope: !3330, file: !3, line: 1632, type: !179)
!3330 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 1631, column: 33)
!3331 = !DILocation(line: 1629, column: 17, scope: !3326)
!3332 = !DILocation(line: 1629, column: 9, scope: !3326)
!3333 = !DILocation(line: 1630, column: 45, scope: !3326)
!3334 = !DILocation(line: 1630, column: 40, scope: !3326)
!3335 = !DILocation(line: 1630, column: 13, scope: !3326)
!3336 = !DILocation(line: 1631, column: 11, scope: !3326)
!3337 = !DILocation(line: 1631, column: 5, scope: !3326)
!3338 = !DILocation(line: 1632, column: 24, scope: !3330)
!3339 = !DILocation(line: 1632, column: 19, scope: !3330)
!3340 = !DILocation(line: 1633, column: 17, scope: !3330)
!3341 = !DILocation(line: 1634, column: 25, scope: !3330)
!3342 = !DILocation(line: 1634, column: 9, scope: !3330)
!3343 = !DILocation(line: 1635, column: 37, scope: !3330)
!3344 = !DILocation(line: 1635, column: 17, scope: !3330)
!3345 = !DILocation(line: 1636, column: 17, scope: !3330)
!3346 = !DILocation(line: 1637, column: 25, scope: !3330)
!3347 = !DILocation(line: 1637, column: 9, scope: !3330)
!3348 = distinct !{!3348, !3337, !3349}
!3349 = !DILocation(line: 1638, column: 5, scope: !3326)
!3350 = !DILocation(line: 0, scope: !3330)
!3351 = !DILocation(line: 1639, column: 19, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 1639, column: 9)
!3353 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 1639, column: 28, scope: !3352)
!3355 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !3354)
!3356 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !3354)
!3357 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !3354)
!3358 = !DILocation(line: 91, column: 20, scope: !1448, inlinedAt: !3354)
!3359 = !DILocation(line: 91, column: 13, scope: !1448, inlinedAt: !3354)
!3360 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !3354)
!3361 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !3354)
!3362 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !3354)
!3363 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !3354)
!3364 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !3354)
!3365 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !3354)
!3366 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !3354)
!3367 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !3354)
!3368 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !3354)
!3369 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !3354)
!3370 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !3354)
!3371 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !3354)
!3372 = !DILocation(line: 0, scope: !1448, inlinedAt: !3354)
!3373 = !DILocation(line: 1639, column: 9, scope: !3352)
!3374 = !DILocation(line: 1644, column: 5, scope: !3326)
!3375 = !DILocation(line: 1645, column: 1, scope: !3326)
!3376 = distinct !DISubprogram(name: "ldbStartSession", scope: !3, file: !3, line: 1659, type: !3377, isLocal: false, isDefinition: true, scopeLine: 1659, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3379)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!15, !93}
!3379 = !{!3380, !3381, !3386, !3413, !3414}
!3380 = !DILocalVariable(name: "c", arg: 1, scope: !3376, file: !3, line: 1659, type: !93)
!3381 = !DILocalVariable(name: "cp", scope: !3382, file: !3, line: 1662, type: !3384)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 1661, column: 21)
!3383 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 1661, column: 9)
!3384 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !3385, line: 61, baseType: !15)
!3385 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!3386 = !DILocalVariable(name: "act", scope: !3387, file: !3, line: 1668, type: !3390)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1666, column: 29)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1666, column: 20)
!3389 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 1663, column: 13)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3385, line: 74, size: 256, elements: !3391)
!3391 = !{!3392, !3407, !3410, !3411}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "__sa_handler", scope: !3390, file: !3385, line: 78, baseType: !3393, size: 64)
!3393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3390, file: !3385, line: 75, size: 64, elements: !3394)
!3394 = !{!3395, !3396}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3393, file: !3385, line: 76, baseType: !19, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "sa_sigaction", scope: !3393, file: !3385, line: 77, baseType: !3397, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{null, !15, !3400, !14}
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !3385, line: 72, baseType: !3402)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3385, line: 68, size: 96, elements: !3403)
!3403 = !{!3404, !3405, !3406}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3402, file: !3385, line: 69, baseType: !15, size: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3402, file: !3385, line: 70, baseType: !15, size: 32, offset: 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !3402, file: !3385, line: 71, baseType: !3384, size: 32, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3390, file: !3385, line: 79, baseType: !3408, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3385, line: 64, baseType: !3409)
!3409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !3385, line: 63, baseType: !22)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3390, file: !3385, line: 80, baseType: !15, size: 32, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3390, file: !3385, line: 81, baseType: !3412, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!3413 = !DILocalVariable(name: "srcstring", scope: !3376, file: !3, line: 1698, type: !209)
!3414 = !DILocalVariable(name: "srclen", scope: !3376, file: !3, line: 1699, type: !211)
!3415 = !DILocation(line: 1659, column: 29, scope: !3376)
!3416 = !DILocation(line: 1660, column: 22, scope: !3376)
!3417 = !DILocation(line: 1660, column: 28, scope: !3376)
!3418 = !DILocation(line: 1660, column: 53, scope: !3376)
!3419 = !DILocation(line: 1660, column: 16, scope: !3376)
!3420 = !{!759, !760, i64 8}
!3421 = !DILocation(line: 1661, column: 9, scope: !3376)
!3422 = !DILocation(line: 1662, column: 20, scope: !3382)
!3423 = !DILocation(line: 1662, column: 15, scope: !3382)
!3424 = !DILocation(line: 1663, column: 13, scope: !3382)
!3425 = !DILocation(line: 1664, column: 13, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 1663, column: 23)
!3427 = !DILocation(line: 1668, column: 13, scope: !3387)
!3428 = !DILocation(line: 1669, column: 30, scope: !3387)
!3429 = !DILocation(line: 1669, column: 13, scope: !3387)
!3430 = !DILocation(line: 1670, column: 17, scope: !3387)
!3431 = !DILocation(line: 1670, column: 26, scope: !3387)
!3432 = !{!3433, !760, i64 16}
!3433 = !{!"sigaction", !486, i64 0, !762, i64 8, !760, i64 16, !761, i64 24}
!3434 = !DILocation(line: 1671, column: 17, scope: !3387)
!3435 = !DILocation(line: 1671, column: 28, scope: !3387)
!3436 = !DILocation(line: 1668, column: 30, scope: !3387)
!3437 = !DILocation(line: 1672, column: 13, scope: !3387)
!3438 = !DILocation(line: 1673, column: 13, scope: !3387)
!3439 = !DILocation(line: 1678, column: 13, scope: !3387)
!3440 = !DILocation(line: 1679, column: 13, scope: !3387)
!3441 = !DILocation(line: 1680, column: 9, scope: !3388)
!3442 = !DILocation(line: 1682, column: 33, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1680, column: 16)
!3444 = !DILocation(line: 1682, column: 49, scope: !3443)
!3445 = !DILocation(line: 1682, column: 42, scope: !3443)
!3446 = !DILocation(line: 1682, column: 13, scope: !3443)
!3447 = !DILocation(line: 1683, column: 13, scope: !3443)
!3448 = !DILocation(line: 1687, column: 9, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3383, file: !3, line: 1686, column: 12)
!3450 = !DILocation(line: 1692, column: 24, scope: !3376)
!3451 = !DILocation(line: 1692, column: 5, scope: !3376)
!3452 = !DILocation(line: 1693, column: 30, scope: !3376)
!3453 = !DILocation(line: 1693, column: 5, scope: !3376)
!3454 = !DILocation(line: 1694, column: 16, scope: !3376)
!3455 = !DILocation(line: 1698, column: 31, scope: !3376)
!3456 = !DILocation(line: 1698, column: 28, scope: !3376)
!3457 = !DILocation(line: 1698, column: 40, scope: !3376)
!3458 = !DILocation(line: 1698, column: 21, scope: !3376)
!3459 = !DILocation(line: 1698, column: 9, scope: !3376)
!3460 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 1699, column: 21, scope: !3376)
!3462 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !3461)
!3463 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !3461)
!3464 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !3461)
!3465 = !DILocation(line: 91, column: 20, scope: !1448, inlinedAt: !3461)
!3466 = !DILocation(line: 91, column: 13, scope: !1448, inlinedAt: !3461)
!3467 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !3461)
!3468 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !3461)
!3469 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !3461)
!3470 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !3461)
!3471 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !3461)
!3472 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !3461)
!3473 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !3461)
!3474 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !3461)
!3475 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !3461)
!3476 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !3461)
!3477 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !3461)
!3478 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !3461)
!3479 = !DILocation(line: 0, scope: !1448, inlinedAt: !3461)
!3480 = !DILocation(line: 1699, column: 12, scope: !3376)
!3481 = !DILocation(line: 1700, column: 11, scope: !3376)
!3482 = !DILocation(line: 1700, column: 18, scope: !3376)
!3483 = !DILocation(line: 1700, column: 38, scope: !3376)
!3484 = !DILocation(line: 1700, column: 22, scope: !3376)
!3485 = !DILocation(line: 1700, column: 5, scope: !3376)
!3486 = !DILocation(line: 1703, column: 29, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 1702, column: 5)
!3488 = distinct !{!3488, !3485, !3489}
!3489 = !DILocation(line: 1704, column: 5, scope: !3376)
!3490 = !DILocation(line: 131, column: 27, scope: !1042, inlinedAt: !3491)
!3491 = distinct !DILocation(line: 1705, column: 5, scope: !3376)
!3492 = !DILocation(line: 0, scope: !3487)
!3493 = !DILocation(line: 130, column: 34, scope: !1042, inlinedAt: !3491)
!3494 = !DILocation(line: 130, column: 44, scope: !1042, inlinedAt: !3491)
!3495 = !DILocation(line: 131, column: 19, scope: !1042, inlinedAt: !3491)
!3496 = !DILocation(line: 132, column: 5, scope: !1042, inlinedAt: !3491)
!3497 = !DILocation(line: 135, column: 32, scope: !1051, inlinedAt: !3491)
!3498 = !DILocation(line: 136, column: 23, scope: !1051, inlinedAt: !3491)
!3499 = !DILocation(line: 136, column: 21, scope: !1051, inlinedAt: !3491)
!3500 = !DILocation(line: 138, column: 13, scope: !1052, inlinedAt: !3491)
!3501 = !DILocation(line: 140, column: 33, scope: !1052, inlinedAt: !3491)
!3502 = !DILocation(line: 140, column: 13, scope: !1052, inlinedAt: !3491)
!3503 = !DILocation(line: 140, column: 31, scope: !1052, inlinedAt: !3491)
!3504 = !DILocation(line: 141, column: 13, scope: !1052, inlinedAt: !3491)
!3505 = !DILocation(line: 143, column: 34, scope: !1052, inlinedAt: !3491)
!3506 = !DILocation(line: 143, column: 13, scope: !1052, inlinedAt: !3491)
!3507 = !DILocation(line: 143, column: 28, scope: !1052, inlinedAt: !3491)
!3508 = !DILocation(line: 143, column: 32, scope: !1052, inlinedAt: !3491)
!3509 = !DILocation(line: 144, column: 13, scope: !1052, inlinedAt: !3491)
!3510 = !DILocation(line: 146, column: 34, scope: !1052, inlinedAt: !3491)
!3511 = !DILocation(line: 146, column: 13, scope: !1052, inlinedAt: !3491)
!3512 = !DILocation(line: 146, column: 28, scope: !1052, inlinedAt: !3491)
!3513 = !DILocation(line: 146, column: 32, scope: !1052, inlinedAt: !3491)
!3514 = !DILocation(line: 147, column: 13, scope: !1052, inlinedAt: !3491)
!3515 = !DILocation(line: 149, column: 13, scope: !1052, inlinedAt: !3491)
!3516 = !DILocation(line: 149, column: 28, scope: !1052, inlinedAt: !3491)
!3517 = !DILocation(line: 149, column: 32, scope: !1052, inlinedAt: !3491)
!3518 = !DILocation(line: 150, column: 13, scope: !1052, inlinedAt: !3491)
!3519 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 1706, column: 37, scope: !3376)
!3521 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !3520)
!3522 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !3520)
!3523 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !3520)
!3524 = !DILocation(line: 91, column: 20, scope: !1448, inlinedAt: !3520)
!3525 = !DILocation(line: 91, column: 13, scope: !1448, inlinedAt: !3520)
!3526 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !3520)
!3527 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !3520)
!3528 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !3520)
!3529 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !3520)
!3530 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !3520)
!3531 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !3520)
!3532 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !3520)
!3533 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !3520)
!3534 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !3520)
!3535 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !3520)
!3536 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !3520)
!3537 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !3520)
!3538 = !DILocation(line: 0, scope: !1448, inlinedAt: !3520)
!3539 = !DILocation(line: 1706, column: 15, scope: !3376)
!3540 = !DILocation(line: 1706, column: 13, scope: !3376)
!3541 = !DILocation(line: 1707, column: 5, scope: !3376)
!3542 = !DILocation(line: 0, scope: !3426)
!3543 = !DILocation(line: 1709, column: 1, scope: !3376)
!3544 = distinct !DISubprogram(name: "ldbEndSession", scope: !3, file: !3, line: 1713, type: !91, isLocal: false, isDefinition: true, scopeLine: 1713, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3545)
!3545 = !{!3546}
!3546 = !DILocalVariable(name: "c", arg: 1, scope: !3544, file: !3, line: 1713, type: !93)
!3547 = !DILocation(line: 1713, column: 28, scope: !3544)
!3548 = !DILocation(line: 1715, column: 12, scope: !3544)
!3549 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 1715, column: 5, scope: !3544)
!3551 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !3550)
!3552 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !3550)
!3553 = !DILocation(line: 1716, column: 5, scope: !3544)
!3554 = !DILocation(line: 1719, column: 13, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 1719, column: 9)
!3556 = !DILocation(line: 1719, column: 9, scope: !3555)
!3557 = !DILocation(line: 1719, column: 9, scope: !3544)
!3558 = !DILocation(line: 1720, column: 26, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 1719, column: 21)
!3560 = !DILocation(line: 1720, column: 9, scope: !3559)
!3561 = !DILocation(line: 1721, column: 9, scope: !3559)
!3562 = !DILocation(line: 1722, column: 9, scope: !3559)
!3563 = !DILocation(line: 1723, column: 5, scope: !3559)
!3564 = !DILocation(line: 1724, column: 9, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 1723, column: 12)
!3566 = !DILocation(line: 1729, column: 27, scope: !3544)
!3567 = !DILocation(line: 1729, column: 5, scope: !3544)
!3568 = !DILocation(line: 1730, column: 30, scope: !3544)
!3569 = !DILocation(line: 1730, column: 5, scope: !3544)
!3570 = !DILocation(line: 1734, column: 8, scope: !3544)
!3571 = !DILocation(line: 1734, column: 14, scope: !3544)
!3572 = !DILocation(line: 1737, column: 25, scope: !3544)
!3573 = !DILocation(line: 1737, column: 33, scope: !3544)
!3574 = !DILocation(line: 1737, column: 5, scope: !3544)
!3575 = !DILocation(line: 1738, column: 15, scope: !3544)
!3576 = !DILocation(line: 1739, column: 16, scope: !3544)
!3577 = !DILocation(line: 1740, column: 1, scope: !3544)
!3578 = distinct !DISubprogram(name: "ldbRemoveChild", scope: !3, file: !3, line: 1745, type: !3579, isLocal: false, isDefinition: true, scopeLine: 1745, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3581)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!15, !3384}
!3581 = !{!3582, !3583}
!3582 = !DILocalVariable(name: "pid", arg: 1, scope: !3578, file: !3, line: 1745, type: !3384)
!3583 = !DILocalVariable(name: "ln", scope: !3578, file: !3, line: 1746, type: !179)
!3584 = !DILocation(line: 1745, column: 26, scope: !3578)
!3585 = !DILocation(line: 1746, column: 38, scope: !3578)
!3586 = !DILocation(line: 1746, column: 54, scope: !3578)
!3587 = !DILocation(line: 1746, column: 47, scope: !3578)
!3588 = !DILocation(line: 1746, column: 20, scope: !3578)
!3589 = !DILocation(line: 1746, column: 15, scope: !3578)
!3590 = !DILocation(line: 1747, column: 9, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3578, file: !3, line: 1747, column: 9)
!3592 = !DILocation(line: 1747, column: 9, scope: !3578)
!3593 = !DILocation(line: 1748, column: 25, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 1747, column: 13)
!3595 = !DILocation(line: 1748, column: 9, scope: !3594)
!3596 = !DILocation(line: 1749, column: 9, scope: !3594)
!3597 = !DILocation(line: 0, scope: !3578)
!3598 = !DILocation(line: 1752, column: 1, scope: !3578)
!3599 = distinct !DISubprogram(name: "ldbPendingChildren", scope: !3, file: !3, line: 1756, type: !3600, isLocal: false, isDefinition: true, scopeLine: 1756, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!15}
!3602 = !DILocation(line: 1757, column: 12, scope: !3599)
!3603 = !DILocation(line: 1757, column: 5, scope: !3599)
!3604 = distinct !DISubprogram(name: "ldbKillForkedSessions", scope: !3, file: !3, line: 1761, type: !2005, isLocal: false, isDefinition: true, scopeLine: 1761, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3605)
!3605 = !{!3606, !3612, !3613}
!3606 = !DILocalVariable(name: "li", scope: !3604, file: !3, line: 1762, type: !3607)
!3607 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !175, line: 45, baseType: !3608)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !175, line: 42, size: 128, elements: !3609)
!3609 = !{!3610, !3611}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3608, file: !175, line: 43, baseType: !179, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !3608, file: !175, line: 44, baseType: !15, size: 32, offset: 64)
!3612 = !DILocalVariable(name: "ln", scope: !3604, file: !3, line: 1763, type: !179)
!3613 = !DILocalVariable(name: "pid", scope: !3614, file: !3, line: 1767, type: !3384)
!3614 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 1766, column: 33)
!3615 = !DILocation(line: 1762, column: 5, scope: !3604)
!3616 = !DILocation(line: 1765, column: 20, scope: !3604)
!3617 = !DILocation(line: 1762, column: 14, scope: !3604)
!3618 = !DILocation(line: 1765, column: 5, scope: !3604)
!3619 = !DILocation(line: 1766, column: 17, scope: !3604)
!3620 = !DILocation(line: 1763, column: 15, scope: !3604)
!3621 = !DILocation(line: 1766, column: 5, scope: !3604)
!3622 = !DILocation(line: 1767, column: 41, scope: !3614)
!3623 = !DILocation(line: 1767, column: 21, scope: !3614)
!3624 = !DILocation(line: 1767, column: 15, scope: !3614)
!3625 = !DILocation(line: 1768, column: 62, scope: !3614)
!3626 = !DILocation(line: 1768, column: 9, scope: !3614)
!3627 = !DILocation(line: 1769, column: 9, scope: !3614)
!3628 = distinct !{!3628, !3621, !3629}
!3629 = !DILocation(line: 1770, column: 5, scope: !3604)
!3630 = !DILocation(line: 1771, column: 21, scope: !3604)
!3631 = !DILocation(line: 1771, column: 5, scope: !3604)
!3632 = !DILocation(line: 1772, column: 20, scope: !3604)
!3633 = !DILocation(line: 1772, column: 18, scope: !3604)
!3634 = !DILocation(line: 1773, column: 1, scope: !3604)
!3635 = !DILocation(line: 1788, column: 28, scope: !2872)
!3636 = !DILocation(line: 1790, column: 13, scope: !2880)
!3637 = !DILocation(line: 1790, column: 31, scope: !2880)
!3638 = !DILocation(line: 1790, column: 24, scope: !2880)
!3639 = !DILocation(line: 1790, column: 17, scope: !2880)
!3640 = !DILocation(line: 1789, column: 19, scope: !2872)
!3641 = !DILocation(line: 1789, column: 9, scope: !2872)
!3642 = !DILocation(line: 1791, column: 16, scope: !2872)
!3643 = !DILocation(line: 1791, column: 12, scope: !2872)
!3644 = !DILocation(line: 1791, column: 5, scope: !2872)
!3645 = !DILocation(line: 0, scope: !2872)
!3646 = !DILocation(line: 1792, column: 1, scope: !2872)
!3647 = !DILocation(line: 1795, column: 25, scope: !2787)
!3648 = !DILocation(line: 1796, column: 9, scope: !2787)
!3649 = !DILocation(line: 1798, column: 25, scope: !2796)
!3650 = !DILocation(line: 1798, column: 19, scope: !2796)
!3651 = !DILocation(line: 1799, column: 13, scope: !2805)
!3652 = !DILocation(line: 1799, column: 23, scope: !2805)
!3653 = !DILocation(line: 1798, column: 35, scope: !2796)
!3654 = !DILocation(line: 1799, column: 13, scope: !2796)
!3655 = !DILocation(line: 0, scope: !2787)
!3656 = !DILocation(line: 1801, column: 1, scope: !2787)
!3657 = distinct !DISubprogram(name: "ldbAddBreakpoint", scope: !3, file: !3, line: 1806, type: !2788, isLocal: false, isDefinition: true, scopeLine: 1806, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3658)
!3658 = !{!3659}
!3659 = !DILocalVariable(name: "line", arg: 1, scope: !3657, file: !3, line: 1806, type: !15)
!3660 = !DILocation(line: 1806, column: 26, scope: !3657)
!3661 = !DILocation(line: 1807, column: 14, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 1807, column: 9)
!3663 = !DILocation(line: 1807, column: 33, scope: !3662)
!3664 = !DILocation(line: 1807, column: 27, scope: !3662)
!3665 = !DILocation(line: 1807, column: 19, scope: !3662)
!3666 = !DILocation(line: 1795, column: 25, scope: !2787, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 1808, column: 10, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 1808, column: 9)
!3669 = !DILocation(line: 1796, column: 9, scope: !2787, inlinedAt: !3667)
!3670 = !DILocation(line: 1798, column: 25, scope: !2796, inlinedAt: !3667)
!3671 = !DILocation(line: 1798, column: 19, scope: !2796, inlinedAt: !3667)
!3672 = !DILocation(line: 1798, column: 5, scope: !2797, inlinedAt: !3667)
!3673 = !DILocation(line: 1799, column: 13, scope: !2805, inlinedAt: !3667)
!3674 = !DILocation(line: 1799, column: 23, scope: !2805, inlinedAt: !3667)
!3675 = !DILocation(line: 1798, column: 35, scope: !2796, inlinedAt: !3667)
!3676 = !DILocation(line: 1799, column: 13, scope: !2796, inlinedAt: !3667)
!3677 = !DILocation(line: 1808, column: 47, scope: !3668)
!3678 = !DILocation(line: 1808, column: 32, scope: !3668)
!3679 = !DILocation(line: 1809, column: 27, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 1808, column: 71)
!3681 = !DILocation(line: 1809, column: 9, scope: !3680)
!3682 = !DILocation(line: 1809, column: 31, scope: !3680)
!3683 = !DILocation(line: 1810, column: 9, scope: !3680)
!3684 = !DILocation(line: 0, scope: !3657)
!3685 = !DILocation(line: 1813, column: 1, scope: !3657)
!3686 = distinct !DISubprogram(name: "ldbDelBreakpoint", scope: !3, file: !3, line: 1817, type: !2788, isLocal: false, isDefinition: true, scopeLine: 1817, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3687)
!3687 = !{!3688, !3689}
!3688 = !DILocalVariable(name: "line", arg: 1, scope: !3686, file: !3, line: 1817, type: !15)
!3689 = !DILocalVariable(name: "j", scope: !3686, file: !3, line: 1818, type: !15)
!3690 = !DILocation(line: 1817, column: 26, scope: !3686)
!3691 = !DILocation(line: 1818, column: 9, scope: !3686)
!3692 = !DILocation(line: 1820, column: 25, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3694, file: !3, line: 1820, column: 5)
!3694 = distinct !DILexicalBlock(scope: !3686, file: !3, line: 1820, column: 5)
!3695 = !DILocation(line: 1820, column: 19, scope: !3693)
!3696 = !DILocation(line: 1820, column: 5, scope: !3694)
!3697 = !DILocation(line: 1821, column: 13, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3699, file: !3, line: 1821, column: 13)
!3699 = distinct !DILexicalBlock(scope: !3693, file: !3, line: 1820, column: 39)
!3700 = !DILocation(line: 1821, column: 23, scope: !3698)
!3701 = !DILocation(line: 1821, column: 13, scope: !3699)
!3702 = !DILocation(line: 1822, column: 24, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 1821, column: 32)
!3704 = !DILocation(line: 1823, column: 21, scope: !3703)
!3705 = !DILocation(line: 1823, column: 38, scope: !3703)
!3706 = !DILocation(line: 1823, column: 30, scope: !3703)
!3707 = !DILocation(line: 1823, column: 52, scope: !3703)
!3708 = !DILocation(line: 1823, column: 41, scope: !3703)
!3709 = !DILocation(line: 1823, column: 13, scope: !3703)
!3710 = !DILocation(line: 1824, column: 13, scope: !3703)
!3711 = !DILocation(line: 1820, column: 35, scope: !3693)
!3712 = distinct !{!3712, !3696, !3713}
!3713 = !DILocation(line: 1826, column: 5, scope: !3694)
!3714 = !DILocation(line: 0, scope: !3686)
!3715 = !DILocation(line: 1828, column: 1, scope: !3686)
!3716 = distinct !DISubprogram(name: "ldbReplParseCommand", scope: !3, file: !3, line: 1833, type: !3717, isLocal: false, isDefinition: true, scopeLine: 1833, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3719)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!432, !314}
!3719 = !{!3720, !3721, !3722, !3723, !3724, !3725, !3726}
!3720 = !DILocalVariable(name: "argcp", arg: 1, scope: !3716, file: !3, line: 1833, type: !314)
!3721 = !DILocalVariable(name: "argv", scope: !3716, file: !3, line: 1834, type: !432)
!3722 = !DILocalVariable(name: "argc", scope: !3716, file: !3, line: 1835, type: !15)
!3723 = !DILocalVariable(name: "copy", scope: !3716, file: !3, line: 1840, type: !209)
!3724 = !DILocalVariable(name: "p", scope: !3716, file: !3, line: 1841, type: !11)
!3725 = !DILocalVariable(name: "plen", scope: !3716, file: !3, line: 1849, type: !11)
!3726 = !DILocalVariable(name: "slen", scope: !3727, file: !3, line: 1863, type: !15)
!3727 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 1858, column: 26)
!3728 = !DILocation(line: 1833, column: 31, scope: !3716)
!3729 = !DILocation(line: 1834, column: 10, scope: !3716)
!3730 = !DILocation(line: 1835, column: 9, scope: !3716)
!3731 = !DILocation(line: 1836, column: 20, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 1836, column: 9)
!3733 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !3734)
!3734 = distinct !DILocation(line: 1836, column: 9, scope: !3732)
!3735 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !3734)
!3736 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !3734)
!3737 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !3734)
!3738 = !DILocation(line: 91, column: 20, scope: !1448, inlinedAt: !3734)
!3739 = !DILocation(line: 91, column: 13, scope: !1448, inlinedAt: !3734)
!3740 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !3734)
!3741 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !3734)
!3742 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !3734)
!3743 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !3734)
!3744 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !3734)
!3745 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !3734)
!3746 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !3734)
!3747 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !3734)
!3748 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !3734)
!3749 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !3734)
!3750 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !3734)
!3751 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !3734)
!3752 = !DILocation(line: 0, scope: !1448, inlinedAt: !3734)
!3753 = !DILocation(line: 1836, column: 26, scope: !3732)
!3754 = !DILocation(line: 1836, column: 9, scope: !3716)
!3755 = !DILocation(line: 1840, column: 16, scope: !3716)
!3756 = !DILocation(line: 1840, column: 9, scope: !3716)
!3757 = !DILocation(line: 1841, column: 11, scope: !3716)
!3758 = !DILocation(line: 1848, column: 9, scope: !3716)
!3759 = !DILocation(line: 1848, column: 29, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 1848, column: 28)
!3761 = !DILocation(line: 1848, column: 28, scope: !3716)
!3762 = !DILocation(line: 1850, column: 9, scope: !3716)
!3763 = !DILocation(line: 1850, column: 32, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 1850, column: 31)
!3765 = !DILocation(line: 1850, column: 31, scope: !3716)
!3766 = !DILocation(line: 1849, column: 19, scope: !3716)
!3767 = !DILocation(line: 1849, column: 11, scope: !3716)
!3768 = !DILocation(line: 1851, column: 8, scope: !3716)
!3769 = !DILocation(line: 1852, column: 14, scope: !3716)
!3770 = !DILocation(line: 1852, column: 12, scope: !3716)
!3771 = !DILocation(line: 1853, column: 21, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3716, file: !3, line: 1853, column: 9)
!3773 = !DILocation(line: 1856, column: 32, scope: !3716)
!3774 = !DILocation(line: 1856, column: 31, scope: !3716)
!3775 = !DILocation(line: 1856, column: 12, scope: !3716)
!3776 = !DILocation(line: 1858, column: 5, scope: !3716)
!3777 = !DILocation(line: 1857, column: 10, scope: !3716)
!3778 = !DILocation(line: 0, scope: !3727)
!3779 = !DILocation(line: 1858, column: 18, scope: !3716)
!3780 = !DILocation(line: 1858, column: 16, scope: !3716)
!3781 = !DILocation(line: 1859, column: 13, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 1859, column: 13)
!3783 = !DILocation(line: 1859, column: 16, scope: !3782)
!3784 = !DILocation(line: 1859, column: 13, scope: !3727)
!3785 = !DILocation(line: 1861, column: 13, scope: !3727)
!3786 = !DILocation(line: 1861, column: 36, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 1861, column: 35)
!3788 = !DILocation(line: 1861, column: 35, scope: !3727)
!3789 = !DILocation(line: 1860, column: 17, scope: !3727)
!3790 = !DILocation(line: 1862, column: 12, scope: !3727)
!3791 = !DILocation(line: 1862, column: 22, scope: !3727)
!3792 = !DILocation(line: 1863, column: 20, scope: !3727)
!3793 = !DILocation(line: 1863, column: 13, scope: !3727)
!3794 = !DILocation(line: 1864, column: 23, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 1864, column: 13)
!3796 = !DILocation(line: 1865, column: 36, scope: !3727)
!3797 = !DILocation(line: 1865, column: 24, scope: !3727)
!3798 = !DILocation(line: 1865, column: 18, scope: !3727)
!3799 = !DILocation(line: 1865, column: 9, scope: !3727)
!3800 = !DILocation(line: 1865, column: 22, scope: !3727)
!3801 = !DILocation(line: 1866, column: 11, scope: !3727)
!3802 = !DILocation(line: 1867, column: 13, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 1867, column: 13)
!3804 = !DILocation(line: 1867, column: 18, scope: !3803)
!3805 = !DILocation(line: 1867, column: 26, scope: !3803)
!3806 = !DILocation(line: 1867, column: 29, scope: !3803)
!3807 = !DILocation(line: 1867, column: 34, scope: !3803)
!3808 = !DILocation(line: 1870, column: 5, scope: !3716)
!3809 = !DILocation(line: 1871, column: 5, scope: !3716)
!3810 = !DILocation(line: 1874, column: 5, scope: !3716)
!3811 = !DILocation(line: 0, scope: !3716)
!3812 = !DILocation(line: 1875, column: 5, scope: !3716)
!3813 = !DILocation(line: 1876, column: 5, scope: !3716)
!3814 = !DILocation(line: 1877, column: 1, scope: !3716)
!3815 = !DILocation(line: 1880, column: 27, scope: !2862)
!3816 = !DILocation(line: 1788, column: 28, scope: !2872, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 1881, column: 18, scope: !2862)
!3818 = !DILocation(line: 1790, column: 13, scope: !2880, inlinedAt: !3817)
!3819 = !DILocation(line: 1790, column: 31, scope: !2880, inlinedAt: !3817)
!3820 = !DILocation(line: 1790, column: 24, scope: !2880, inlinedAt: !3817)
!3821 = !DILocation(line: 1790, column: 17, scope: !2880, inlinedAt: !3817)
!3822 = !DILocation(line: 1789, column: 19, scope: !2872, inlinedAt: !3817)
!3823 = !DILocation(line: 1789, column: 9, scope: !2872, inlinedAt: !3817)
!3824 = !DILocation(line: 1791, column: 16, scope: !2872, inlinedAt: !3817)
!3825 = !DILocation(line: 1791, column: 12, scope: !2872, inlinedAt: !3817)
!3826 = !DILocation(line: 1791, column: 5, scope: !2872, inlinedAt: !3817)
!3827 = !DILocation(line: 0, scope: !2872, inlinedAt: !3817)
!3828 = !DILocation(line: 1881, column: 11, scope: !2862)
!3829 = !DILocation(line: 1795, column: 25, scope: !2787, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 1883, column: 14, scope: !2862)
!3831 = !DILocation(line: 1796, column: 9, scope: !2787, inlinedAt: !3830)
!3832 = !DILocation(line: 1798, column: 25, scope: !2796, inlinedAt: !3830)
!3833 = !DILocation(line: 1798, column: 19, scope: !2796, inlinedAt: !3830)
!3834 = !DILocation(line: 1798, column: 5, scope: !2797, inlinedAt: !3830)
!3835 = !DILocation(line: 1799, column: 13, scope: !2805, inlinedAt: !3830)
!3836 = !DILocation(line: 1799, column: 23, scope: !2805, inlinedAt: !3830)
!3837 = !DILocation(line: 1798, column: 35, scope: !2796, inlinedAt: !3830)
!3838 = !DILocation(line: 1799, column: 13, scope: !2796, inlinedAt: !3830)
!3839 = !DILocation(line: 1884, column: 23, scope: !2862)
!3840 = !DILocation(line: 1884, column: 35, scope: !2862)
!3841 = !DILocation(line: 1891, column: 9, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 1890, column: 14)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !3, line: 1888, column: 14)
!3844 = distinct !DILexicalBlock(scope: !2862, file: !3, line: 1886, column: 9)
!3845 = !DILocation(line: 1886, column: 17, scope: !3844)
!3846 = !DILocation(line: 1882, column: 11, scope: !2862)
!3847 = !DILocation(line: 1894, column: 33, scope: !2862)
!3848 = !DILocation(line: 1894, column: 20, scope: !2862)
!3849 = !DILocation(line: 1894, column: 9, scope: !2862)
!3850 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 1895, column: 5, scope: !2862)
!3852 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !3851)
!3853 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !3851)
!3854 = !DILocation(line: 1896, column: 1, scope: !2862)
!3855 = distinct !DISubprogram(name: "ldbList", scope: !3, file: !3, line: 1903, type: !3856, isLocal: false, isDefinition: true, scopeLine: 1903, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3858)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{null, !15, !15}
!3858 = !{!3859, !3860, !3861}
!3859 = !DILocalVariable(name: "around", arg: 1, scope: !3855, file: !3, line: 1903, type: !15)
!3860 = !DILocalVariable(name: "context", arg: 2, scope: !3855, file: !3, line: 1903, type: !15)
!3861 = !DILocalVariable(name: "j", scope: !3855, file: !3, line: 1904, type: !15)
!3862 = !DILocation(line: 1903, column: 18, scope: !3855)
!3863 = !DILocation(line: 1903, column: 30, scope: !3855)
!3864 = !DILocation(line: 1904, column: 9, scope: !3855)
!3865 = !DILocation(line: 1906, column: 26, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3867, file: !3, line: 1906, column: 5)
!3867 = distinct !DILexicalBlock(scope: !3855, file: !3, line: 1906, column: 5)
!3868 = !DILocation(line: 1906, column: 19, scope: !3866)
!3869 = !DILocation(line: 1906, column: 5, scope: !3867)
!3870 = !DILocation(line: 1907, column: 25, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 1907, column: 13)
!3872 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 1906, column: 38)
!3873 = !DILocation(line: 1907, column: 28, scope: !3871)
!3874 = !DILocation(line: 1907, column: 42, scope: !3871)
!3875 = !DILocation(line: 1907, column: 13, scope: !3872)
!3876 = !DILocation(line: 1790, column: 31, scope: !2880, inlinedAt: !3877)
!3877 = distinct !DILocation(line: 1881, column: 18, scope: !2862, inlinedAt: !3878)
!3878 = distinct !DILocation(line: 1908, column: 9, scope: !3872)
!3879 = !DILocation(line: 1880, column: 27, scope: !2862, inlinedAt: !3878)
!3880 = !DILocation(line: 1788, column: 28, scope: !2872, inlinedAt: !3877)
!3881 = !DILocation(line: 1790, column: 24, scope: !2880, inlinedAt: !3877)
!3882 = !DILocation(line: 1790, column: 17, scope: !2880, inlinedAt: !3877)
!3883 = !DILocation(line: 1789, column: 19, scope: !2872, inlinedAt: !3877)
!3884 = !DILocation(line: 1789, column: 9, scope: !2872, inlinedAt: !3877)
!3885 = !DILocation(line: 1791, column: 16, scope: !2872, inlinedAt: !3877)
!3886 = !DILocation(line: 1791, column: 12, scope: !2872, inlinedAt: !3877)
!3887 = !DILocation(line: 1791, column: 5, scope: !2872, inlinedAt: !3877)
!3888 = !DILocation(line: 0, scope: !2872, inlinedAt: !3877)
!3889 = !DILocation(line: 1881, column: 11, scope: !2862, inlinedAt: !3878)
!3890 = !DILocation(line: 1795, column: 25, scope: !2787, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 1883, column: 14, scope: !2862, inlinedAt: !3878)
!3892 = !DILocation(line: 1796, column: 9, scope: !2787, inlinedAt: !3891)
!3893 = !DILocation(line: 1798, column: 25, scope: !2796, inlinedAt: !3891)
!3894 = !DILocation(line: 1798, column: 19, scope: !2796, inlinedAt: !3891)
!3895 = !DILocation(line: 1798, column: 5, scope: !2797, inlinedAt: !3891)
!3896 = !DILocation(line: 1799, column: 13, scope: !2805, inlinedAt: !3891)
!3897 = !DILocation(line: 1799, column: 23, scope: !2805, inlinedAt: !3891)
!3898 = !DILocation(line: 1798, column: 35, scope: !2796, inlinedAt: !3891)
!3899 = !DILocation(line: 1799, column: 13, scope: !2796, inlinedAt: !3891)
!3900 = !DILocation(line: 1884, column: 23, scope: !2862, inlinedAt: !3878)
!3901 = !DILocation(line: 1884, column: 35, scope: !2862, inlinedAt: !3878)
!3902 = !DILocation(line: 1891, column: 9, scope: !3842, inlinedAt: !3878)
!3903 = !DILocation(line: 1886, column: 17, scope: !3844, inlinedAt: !3878)
!3904 = !DILocation(line: 1882, column: 11, scope: !2862, inlinedAt: !3878)
!3905 = !DILocation(line: 1894, column: 33, scope: !2862, inlinedAt: !3878)
!3906 = !DILocation(line: 1894, column: 20, scope: !2862, inlinedAt: !3878)
!3907 = !DILocation(line: 1894, column: 9, scope: !2862, inlinedAt: !3878)
!3908 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 1895, column: 5, scope: !2862, inlinedAt: !3878)
!3910 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !3909)
!3911 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !3909)
!3912 = !DILocation(line: 1909, column: 5, scope: !3872)
!3913 = !DILocation(line: 1906, column: 34, scope: !3866)
!3914 = distinct !{!3914, !3869, !3915}
!3915 = !DILocation(line: 1909, column: 5, scope: !3867)
!3916 = !DILocation(line: 1910, column: 1, scope: !3855)
!3917 = distinct !DISubprogram(name: "ldbCatStackValueRec", scope: !3, file: !3, line: 1920, type: !3918, isLocal: false, isDefinition: true, scopeLine: 1920, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3920)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!209, !209, !74, !15, !15}
!3920 = !{!3921, !3922, !3923, !3924, !3925, !3926, !3929, !3930, !3932, !3933, !3934, !3935, !3937}
!3921 = !DILocalVariable(name: "s", arg: 1, scope: !3917, file: !3, line: 1920, type: !209)
!3922 = !DILocalVariable(name: "lua", arg: 2, scope: !3917, file: !3, line: 1920, type: !74)
!3923 = !DILocalVariable(name: "idx", arg: 3, scope: !3917, file: !3, line: 1920, type: !15)
!3924 = !DILocalVariable(name: "level", arg: 4, scope: !3917, file: !3, line: 1920, type: !15)
!3925 = !DILocalVariable(name: "t", scope: !3917, file: !3, line: 1921, type: !15)
!3926 = !DILocalVariable(name: "strl", scope: !3927, file: !3, line: 1929, type: !211)
!3927 = distinct !DILexicalBlock(scope: !3928, file: !3, line: 1928, column: 9)
!3928 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 1926, column: 15)
!3929 = !DILocalVariable(name: "strp", scope: !3927, file: !3, line: 1930, type: !11)
!3930 = !DILocalVariable(name: "expected_index", scope: !3931, file: !3, line: 1945, type: !15)
!3931 = distinct !DILexicalBlock(scope: !3928, file: !3, line: 1944, column: 9)
!3932 = !DILocalVariable(name: "is_array", scope: !3931, file: !3, line: 1946, type: !15)
!3933 = !DILocalVariable(name: "repr1", scope: !3931, file: !3, line: 1950, type: !209)
!3934 = !DILocalVariable(name: "repr2", scope: !3931, file: !3, line: 1951, type: !209)
!3935 = !DILocalVariable(name: "p", scope: !3936, file: !3, line: 1987, type: !119)
!3936 = distinct !DILexicalBlock(scope: !3928, file: !3, line: 1986, column: 9)
!3937 = !DILocalVariable(name: "typename", scope: !3936, file: !3, line: 1988, type: !11)
!3938 = !DILocation(line: 1920, column: 29, scope: !3917)
!3939 = !DILocation(line: 1920, column: 43, scope: !3917)
!3940 = !DILocation(line: 1920, column: 52, scope: !3917)
!3941 = !DILocation(line: 1920, column: 61, scope: !3917)
!3942 = !DILocation(line: 1921, column: 13, scope: !3917)
!3943 = !DILocation(line: 1921, column: 9, scope: !3917)
!3944 = !DILocation(line: 1923, column: 14, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 1923, column: 9)
!3946 = !DILocation(line: 1923, column: 17, scope: !3945)
!3947 = !DILocation(line: 1923, column: 9, scope: !3917)
!3948 = !DILocation(line: 1924, column: 16, scope: !3945)
!3949 = !DILocation(line: 1924, column: 9, scope: !3945)
!3950 = !DILocation(line: 1926, column: 5, scope: !3917)
!3951 = !DILocation(line: 1929, column: 9, scope: !3927)
!3952 = !DILocation(line: 1929, column: 16, scope: !3927)
!3953 = !DILocation(line: 1930, column: 29, scope: !3927)
!3954 = !DILocation(line: 1930, column: 15, scope: !3927)
!3955 = !DILocation(line: 1931, column: 31, scope: !3927)
!3956 = !DILocation(line: 1931, column: 13, scope: !3927)
!3957 = !DILocation(line: 1932, column: 9, scope: !3928)
!3958 = !DILocation(line: 1933, column: 9, scope: !3928)
!3959 = !DILocation(line: 1935, column: 22, scope: !3928)
!3960 = !DILocation(line: 1935, column: 13, scope: !3928)
!3961 = !DILocation(line: 1936, column: 9, scope: !3928)
!3962 = !DILocation(line: 1938, column: 41, scope: !3928)
!3963 = !DILocation(line: 1938, column: 13, scope: !3928)
!3964 = !DILocation(line: 1939, column: 9, scope: !3928)
!3965 = !DILocation(line: 1941, column: 13, scope: !3928)
!3966 = !DILocation(line: 1942, column: 9, scope: !3928)
!3967 = !DILocation(line: 1945, column: 13, scope: !3931)
!3968 = !DILocation(line: 1946, column: 13, scope: !3931)
!3969 = !DILocation(line: 1950, column: 21, scope: !3931)
!3970 = !DILocation(line: 1950, column: 13, scope: !3931)
!3971 = !DILocation(line: 1951, column: 21, scope: !3931)
!3972 = !DILocation(line: 1951, column: 13, scope: !3931)
!3973 = !DILocation(line: 1952, column: 9, scope: !3931)
!3974 = !DILocation(line: 1953, column: 32, scope: !3931)
!3975 = !DILocation(line: 1953, column: 16, scope: !3931)
!3976 = !DILocation(line: 1953, column: 9, scope: !3931)
!3977 = !DILocation(line: 1955, column: 17, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3979, file: !3, line: 1955, column: 17)
!3979 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 1953, column: 37)
!3980 = !DILocation(line: 1955, column: 26, scope: !3978)
!3981 = !DILocation(line: 1956, column: 18, scope: !3978)
!3982 = !DILocation(line: 1956, column: 35, scope: !3978)
!3983 = !DILocation(line: 1956, column: 50, scope: !3978)
!3984 = !DILocation(line: 1957, column: 18, scope: !3978)
!3985 = !DILocation(line: 1957, column: 42, scope: !3978)
!3986 = !DILocation(line: 1957, column: 39, scope: !3978)
!3987 = !DILocation(line: 1955, column: 17, scope: !3979)
!3988 = !DILocation(line: 1957, column: 59, scope: !3978)
!3989 = !DILocation(line: 0, scope: !3931)
!3990 = !DILocation(line: 1960, column: 21, scope: !3979)
!3991 = !DILocation(line: 1961, column: 21, scope: !3979)
!3992 = !DILocation(line: 1963, column: 21, scope: !3979)
!3993 = !DILocation(line: 1964, column: 21, scope: !3979)
!3994 = !DILocation(line: 1965, column: 21, scope: !3979)
!3995 = !DILocation(line: 1966, column: 21, scope: !3979)
!3996 = !DILocation(line: 1967, column: 21, scope: !3979)
!3997 = !DILocation(line: 1968, column: 13, scope: !3979)
!3998 = !DILocation(line: 1969, column: 27, scope: !3979)
!3999 = distinct !{!3999, !3976, !4000}
!4000 = !DILocation(line: 1970, column: 9, scope: !3931)
!4001 = !DILocation(line: 0, scope: !3978)
!4002 = !DILocation(line: 0, scope: !3979)
!4003 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 1972, column: 13, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 1972, column: 13)
!4006 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !4004)
!4007 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !4004)
!4008 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !4004)
!4009 = !DILocation(line: 91, column: 20, scope: !1448, inlinedAt: !4004)
!4010 = !DILocation(line: 91, column: 13, scope: !1448, inlinedAt: !4004)
!4011 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !4004)
!4012 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !4004)
!4013 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !4004)
!4014 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !4004)
!4015 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !4004)
!4016 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !4004)
!4017 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !4004)
!4018 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !4004)
!4019 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !4004)
!4020 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !4004)
!4021 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !4004)
!4022 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !4004)
!4023 = !DILocation(line: 0, scope: !1448, inlinedAt: !4004)
!4024 = !DILocation(line: 1972, column: 13, scope: !4005)
!4025 = !DILocation(line: 1972, column: 13, scope: !3931)
!4026 = !DILocation(line: 1972, column: 28, scope: !4005)
!4027 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 1973, column: 13, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 1973, column: 13)
!4030 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !4028)
!4031 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !4028)
!4032 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !4028)
!4033 = !DILocation(line: 91, column: 20, scope: !1448, inlinedAt: !4028)
!4034 = !DILocation(line: 91, column: 13, scope: !1448, inlinedAt: !4028)
!4035 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !4028)
!4036 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !4028)
!4037 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !4028)
!4038 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !4028)
!4039 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !4028)
!4040 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !4028)
!4041 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !4028)
!4042 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !4028)
!4043 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !4028)
!4044 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !4028)
!4045 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !4028)
!4046 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !4028)
!4047 = !DILocation(line: 0, scope: !1448, inlinedAt: !4028)
!4048 = !DILocation(line: 1973, column: 13, scope: !4029)
!4049 = !DILocation(line: 1973, column: 13, scope: !3931)
!4050 = !DILocation(line: 1973, column: 28, scope: !4029)
!4051 = !DILocation(line: 1975, column: 13, scope: !3931)
!4052 = !DILocation(line: 1976, column: 25, scope: !3931)
!4053 = !DILocation(line: 1976, column: 13, scope: !3931)
!4054 = !DILocation(line: 1977, column: 13, scope: !3931)
!4055 = !DILocation(line: 1978, column: 9, scope: !3931)
!4056 = !DILocation(line: 1979, column: 9, scope: !3931)
!4057 = !DILocation(line: 1981, column: 9, scope: !3928)
!4058 = !DILocation(line: 1987, column: 25, scope: !3936)
!4059 = !DILocation(line: 1987, column: 21, scope: !3936)
!4060 = !DILocation(line: 1989, column: 13, scope: !3936)
!4061 = !DILocation(line: 0, scope: !3936)
!4062 = !DILocation(line: 1988, column: 15, scope: !3936)
!4063 = !DILocation(line: 1993, column: 13, scope: !3936)
!4064 = !DILocation(line: 1995, column: 9, scope: !3928)
!4065 = !DILocation(line: 1997, column: 13, scope: !3928)
!4066 = !DILocation(line: 1998, column: 9, scope: !3928)
!4067 = !DILocation(line: 0, scope: !3917)
!4068 = !DILocation(line: 2001, column: 1, scope: !3917)
!4069 = distinct !DISubprogram(name: "ldbLogStackValue", scope: !3, file: !3, line: 2012, type: !725, isLocal: false, isDefinition: true, scopeLine: 2012, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4070)
!4070 = !{!4071, !4072, !4073}
!4071 = !DILocalVariable(name: "lua", arg: 1, scope: !4069, file: !3, line: 2012, type: !74)
!4072 = !DILocalVariable(name: "prefix", arg: 2, scope: !4069, file: !3, line: 2012, type: !11)
!4073 = !DILocalVariable(name: "s", scope: !4069, file: !3, line: 2013, type: !209)
!4074 = !DILocation(line: 2012, column: 34, scope: !4069)
!4075 = !DILocation(line: 2012, column: 45, scope: !4069)
!4076 = !DILocation(line: 2013, column: 13, scope: !4069)
!4077 = !DILocation(line: 2013, column: 9, scope: !4069)
!4078 = !DILocation(line: 2005, column: 26, scope: !1694, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 2014, column: 9, scope: !4069)
!4080 = !DILocation(line: 2005, column: 40, scope: !1694, inlinedAt: !4079)
!4081 = !DILocation(line: 2005, column: 49, scope: !1694, inlinedAt: !4079)
!4082 = !DILocation(line: 2006, column: 12, scope: !1694, inlinedAt: !4079)
!4083 = !DILocation(line: 2015, column: 5, scope: !4069)
!4084 = !DILocation(line: 2016, column: 1, scope: !4069)
!4085 = distinct !DISubprogram(name: "ldbRedisProtocolToHuman", scope: !3, file: !3, line: 2028, type: !4086, isLocal: false, isDefinition: true, scopeLine: 2028, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4088)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!11, !432, !11}
!4088 = !{!4089, !4090, !4091}
!4089 = !DILocalVariable(name: "o", arg: 1, scope: !4085, file: !3, line: 2028, type: !432)
!4090 = !DILocalVariable(name: "reply", arg: 2, scope: !4085, file: !3, line: 2028, type: !11)
!4091 = !DILocalVariable(name: "p", scope: !4085, file: !3, line: 2029, type: !11)
!4092 = !DILocation(line: 2028, column: 36, scope: !4085)
!4093 = !DILocation(line: 2028, column: 45, scope: !4085)
!4094 = !DILocation(line: 2029, column: 11, scope: !4085)
!4095 = !DILocation(line: 2030, column: 12, scope: !4085)
!4096 = !DILocation(line: 2030, column: 5, scope: !4085)
!4097 = !DILocalVariable(name: "o", arg: 1, scope: !4098, file: !3, line: 2043, type: !432)
!4098 = distinct !DISubprogram(name: "ldbRedisProtocolToHuman_Int", scope: !3, file: !3, line: 2043, type: !4086, isLocal: false, isDefinition: true, scopeLine: 2043, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4099)
!4099 = !{!4097, !4100, !4101}
!4100 = !DILocalVariable(name: "reply", arg: 2, scope: !4098, file: !3, line: 2043, type: !11)
!4101 = !DILocalVariable(name: "p", scope: !4098, file: !3, line: 2044, type: !11)
!4102 = !DILocation(line: 2043, column: 40, scope: !4098, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 2031, column: 19, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4085, file: !3, line: 2030, column: 16)
!4105 = !DILocation(line: 2043, column: 49, scope: !4098, inlinedAt: !4103)
!4106 = !DILocation(line: 2044, column: 27, scope: !4098, inlinedAt: !4103)
!4107 = !DILocation(line: 2044, column: 15, scope: !4098, inlinedAt: !4103)
!4108 = !DILocation(line: 2044, column: 11, scope: !4098, inlinedAt: !4103)
!4109 = !DILocation(line: 2045, column: 20, scope: !4098, inlinedAt: !4103)
!4110 = !DILocation(line: 2045, column: 32, scope: !4098, inlinedAt: !4103)
!4111 = !DILocation(line: 2045, column: 38, scope: !4098, inlinedAt: !4103)
!4112 = !DILocation(line: 2045, column: 10, scope: !4098, inlinedAt: !4103)
!4113 = !DILocation(line: 2045, column: 8, scope: !4098, inlinedAt: !4103)
!4114 = !DILocation(line: 2046, column: 13, scope: !4098, inlinedAt: !4103)
!4115 = !DILocation(line: 2031, column: 57, scope: !4104)
!4116 = !DILocalVariable(name: "o", arg: 1, scope: !4117, file: !3, line: 2049, type: !432)
!4117 = distinct !DISubprogram(name: "ldbRedisProtocolToHuman_Bulk", scope: !3, file: !3, line: 2049, type: !4086, isLocal: false, isDefinition: true, scopeLine: 2049, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4118)
!4118 = !{!4116, !4119, !4120, !4121}
!4119 = !DILocalVariable(name: "reply", arg: 2, scope: !4117, file: !3, line: 2049, type: !11)
!4120 = !DILocalVariable(name: "p", scope: !4117, file: !3, line: 2050, type: !11)
!4121 = !DILocalVariable(name: "bulklen", scope: !4117, file: !3, line: 2051, type: !13)
!4122 = !DILocation(line: 2049, column: 41, scope: !4117, inlinedAt: !4123)
!4123 = distinct !DILocation(line: 2032, column: 19, scope: !4104)
!4124 = !DILocation(line: 2049, column: 50, scope: !4117, inlinedAt: !4123)
!4125 = !DILocation(line: 2050, column: 27, scope: !4117, inlinedAt: !4123)
!4126 = !DILocation(line: 2050, column: 15, scope: !4117, inlinedAt: !4123)
!4127 = !DILocation(line: 2050, column: 11, scope: !4117, inlinedAt: !4123)
!4128 = !DILocation(line: 2051, column: 5, scope: !4117, inlinedAt: !4123)
!4129 = !DILocation(line: 2053, column: 24, scope: !4117, inlinedAt: !4123)
!4130 = !DILocation(line: 2053, column: 30, scope: !4117, inlinedAt: !4123)
!4131 = !DILocation(line: 2051, column: 15, scope: !4117, inlinedAt: !4123)
!4132 = !DILocation(line: 2053, column: 5, scope: !4117, inlinedAt: !4123)
!4133 = !DILocation(line: 2054, column: 9, scope: !4134, inlinedAt: !4123)
!4134 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 2054, column: 9)
!4135 = !DILocation(line: 2054, column: 17, scope: !4134, inlinedAt: !4123)
!4136 = !DILocation(line: 0, scope: !4137, inlinedAt: !4123)
!4137 = distinct !DILexicalBlock(scope: !4134, file: !3, line: 2057, column: 12)
!4138 = !DILocation(line: 2054, column: 9, scope: !4117, inlinedAt: !4123)
!4139 = !DILocation(line: 2055, column: 14, scope: !4140, inlinedAt: !4123)
!4140 = distinct !DILexicalBlock(scope: !4134, file: !3, line: 2054, column: 24)
!4141 = !DILocation(line: 2055, column: 12, scope: !4140, inlinedAt: !4123)
!4142 = !DILocation(line: 2056, column: 9, scope: !4140, inlinedAt: !4123)
!4143 = !DILocation(line: 2058, column: 29, scope: !4137, inlinedAt: !4123)
!4144 = !DILocation(line: 2058, column: 14, scope: !4137, inlinedAt: !4123)
!4145 = !DILocation(line: 2058, column: 12, scope: !4137, inlinedAt: !4123)
!4146 = !DILocation(line: 2059, column: 20, scope: !4137, inlinedAt: !4123)
!4147 = !DILocation(line: 2059, column: 19, scope: !4137, inlinedAt: !4123)
!4148 = !DILocation(line: 2059, column: 9, scope: !4137, inlinedAt: !4123)
!4149 = !DILocation(line: 2061, column: 1, scope: !4117, inlinedAt: !4123)
!4150 = !DILocation(line: 2032, column: 58, scope: !4104)
!4151 = !DILocalVariable(name: "o", arg: 1, scope: !4152, file: !3, line: 2063, type: !432)
!4152 = distinct !DISubprogram(name: "ldbRedisProtocolToHuman_Status", scope: !3, file: !3, line: 2063, type: !4086, isLocal: false, isDefinition: true, scopeLine: 2063, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4153)
!4153 = !{!4151, !4154, !4155}
!4154 = !DILocalVariable(name: "reply", arg: 2, scope: !4152, file: !3, line: 2063, type: !11)
!4155 = !DILocalVariable(name: "p", scope: !4152, file: !3, line: 2064, type: !11)
!4156 = !DILocation(line: 2063, column: 43, scope: !4152, inlinedAt: !4157)
!4157 = distinct !DILocation(line: 2033, column: 19, scope: !4104)
!4158 = !DILocation(line: 2063, column: 52, scope: !4152, inlinedAt: !4157)
!4159 = !DILocation(line: 2064, column: 27, scope: !4152, inlinedAt: !4157)
!4160 = !DILocation(line: 2064, column: 15, scope: !4152, inlinedAt: !4157)
!4161 = !DILocation(line: 2064, column: 11, scope: !4152, inlinedAt: !4157)
!4162 = !DILocation(line: 2066, column: 21, scope: !4152, inlinedAt: !4157)
!4163 = !DILocation(line: 2066, column: 31, scope: !4152, inlinedAt: !4157)
!4164 = !DILocation(line: 2066, column: 10, scope: !4152, inlinedAt: !4157)
!4165 = !DILocation(line: 2066, column: 8, scope: !4152, inlinedAt: !4157)
!4166 = !DILocation(line: 2067, column: 13, scope: !4152, inlinedAt: !4157)
!4167 = !DILocation(line: 2033, column: 60, scope: !4104)
!4168 = !DILocation(line: 2063, column: 43, scope: !4152, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 2034, column: 19, scope: !4104)
!4170 = !DILocation(line: 2063, column: 52, scope: !4152, inlinedAt: !4169)
!4171 = !DILocation(line: 2064, column: 27, scope: !4152, inlinedAt: !4169)
!4172 = !DILocation(line: 2064, column: 15, scope: !4152, inlinedAt: !4169)
!4173 = !DILocation(line: 2064, column: 11, scope: !4152, inlinedAt: !4169)
!4174 = !DILocation(line: 2066, column: 21, scope: !4152, inlinedAt: !4169)
!4175 = !DILocation(line: 2066, column: 31, scope: !4152, inlinedAt: !4169)
!4176 = !DILocation(line: 2066, column: 10, scope: !4152, inlinedAt: !4169)
!4177 = !DILocation(line: 2066, column: 8, scope: !4152, inlinedAt: !4169)
!4178 = !DILocation(line: 2067, column: 13, scope: !4152, inlinedAt: !4169)
!4179 = !DILocation(line: 2034, column: 60, scope: !4104)
!4180 = !DILocation(line: 2035, column: 19, scope: !4104)
!4181 = !DILocation(line: 2035, column: 63, scope: !4104)
!4182 = !DILocation(line: 0, scope: !4104)
!4183 = !DILocation(line: 2037, column: 5, scope: !4085)
!4184 = !DILocation(line: 2043, column: 40, scope: !4098)
!4185 = !DILocation(line: 2043, column: 49, scope: !4098)
!4186 = !DILocation(line: 2044, column: 27, scope: !4098)
!4187 = !DILocation(line: 2044, column: 15, scope: !4098)
!4188 = !DILocation(line: 2044, column: 11, scope: !4098)
!4189 = !DILocation(line: 2045, column: 20, scope: !4098)
!4190 = !DILocation(line: 2045, column: 32, scope: !4098)
!4191 = !DILocation(line: 2045, column: 38, scope: !4098)
!4192 = !DILocation(line: 2045, column: 10, scope: !4098)
!4193 = !DILocation(line: 2045, column: 8, scope: !4098)
!4194 = !DILocation(line: 2046, column: 13, scope: !4098)
!4195 = !DILocation(line: 2046, column: 5, scope: !4098)
!4196 = !DILocation(line: 2049, column: 41, scope: !4117)
!4197 = !DILocation(line: 2049, column: 50, scope: !4117)
!4198 = !DILocation(line: 2050, column: 27, scope: !4117)
!4199 = !DILocation(line: 2050, column: 15, scope: !4117)
!4200 = !DILocation(line: 2050, column: 11, scope: !4117)
!4201 = !DILocation(line: 2051, column: 5, scope: !4117)
!4202 = !DILocation(line: 2053, column: 24, scope: !4117)
!4203 = !DILocation(line: 2053, column: 30, scope: !4117)
!4204 = !DILocation(line: 2051, column: 15, scope: !4117)
!4205 = !DILocation(line: 2053, column: 5, scope: !4117)
!4206 = !DILocation(line: 2054, column: 9, scope: !4134)
!4207 = !DILocation(line: 2054, column: 17, scope: !4134)
!4208 = !DILocation(line: 0, scope: !4137)
!4209 = !DILocation(line: 2054, column: 9, scope: !4117)
!4210 = !DILocation(line: 2055, column: 14, scope: !4140)
!4211 = !DILocation(line: 2055, column: 12, scope: !4140)
!4212 = !DILocation(line: 2056, column: 9, scope: !4140)
!4213 = !DILocation(line: 2058, column: 29, scope: !4137)
!4214 = !DILocation(line: 2058, column: 14, scope: !4137)
!4215 = !DILocation(line: 2058, column: 12, scope: !4137)
!4216 = !DILocation(line: 2059, column: 20, scope: !4137)
!4217 = !DILocation(line: 2059, column: 19, scope: !4137)
!4218 = !DILocation(line: 2059, column: 9, scope: !4137)
!4219 = !DILocation(line: 2061, column: 1, scope: !4117)
!4220 = !DILocation(line: 2063, column: 43, scope: !4152)
!4221 = !DILocation(line: 2063, column: 52, scope: !4152)
!4222 = !DILocation(line: 2064, column: 27, scope: !4152)
!4223 = !DILocation(line: 2064, column: 15, scope: !4152)
!4224 = !DILocation(line: 2064, column: 11, scope: !4152)
!4225 = !DILocation(line: 2066, column: 21, scope: !4152)
!4226 = !DILocation(line: 2066, column: 31, scope: !4152)
!4227 = !DILocation(line: 2066, column: 10, scope: !4152)
!4228 = !DILocation(line: 2066, column: 8, scope: !4152)
!4229 = !DILocation(line: 2067, column: 13, scope: !4152)
!4230 = !DILocation(line: 2067, column: 5, scope: !4152)
!4231 = distinct !DISubprogram(name: "ldbRedisProtocolToHuman_MultiBulk", scope: !3, file: !3, line: 2070, type: !4086, isLocal: false, isDefinition: true, scopeLine: 2070, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4232)
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
!4285 = distinct !DISubprogram(name: "ldbPrint", scope: !3, file: !3, line: 2102, type: !725, isLocal: false, isDefinition: true, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4286)
!4286 = !{!4287, !4288, !4289, !4290, !4291, !4293}
!4287 = !DILocalVariable(name: "lua", arg: 1, scope: !4285, file: !3, line: 2102, type: !74)
!4288 = !DILocalVariable(name: "varname", arg: 2, scope: !4285, file: !3, line: 2102, type: !11)
!4289 = !DILocalVariable(name: "ar", scope: !4285, file: !3, line: 2103, type: !731)
!4290 = !DILocalVariable(name: "l", scope: !4285, file: !3, line: 2105, type: !15)
!4291 = !DILocalVariable(name: "name", scope: !4292, file: !3, line: 2108, type: !736)
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
!4313 = !DILocation(line: 2012, column: 34, scope: !4069, inlinedAt: !4314)
!4314 = distinct !DILocation(line: 2113, column: 17, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 2112, column: 44)
!4316 = !DILocation(line: 2012, column: 45, scope: !4069, inlinedAt: !4314)
!4317 = !DILocation(line: 2013, column: 13, scope: !4069, inlinedAt: !4314)
!4318 = !DILocation(line: 2013, column: 9, scope: !4069, inlinedAt: !4314)
!4319 = !DILocation(line: 2005, column: 26, scope: !1694, inlinedAt: !4320)
!4320 = distinct !DILocation(line: 2014, column: 9, scope: !4069, inlinedAt: !4314)
!4321 = !DILocation(line: 2005, column: 40, scope: !1694, inlinedAt: !4320)
!4322 = !DILocation(line: 2005, column: 49, scope: !1694, inlinedAt: !4320)
!4323 = !DILocation(line: 2006, column: 12, scope: !1694, inlinedAt: !4320)
!4324 = !DILocation(line: 2015, column: 5, scope: !4069, inlinedAt: !4314)
!4325 = !DILocation(line: 2114, column: 17, scope: !4315)
!4326 = !DILocation(line: 2111, column: 14, scope: !4310)
!4327 = !DILocation(line: 2117, column: 17, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 2116, column: 20)
!4329 = distinct !{!4329, !4307, !4330}
!4330 = !DILocation(line: 2119, column: 9, scope: !4292)
!4331 = !DILocation(line: 2123, column: 10, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 2123, column: 9)
!4333 = !DILocation(line: 2123, column: 33, scope: !4332)
!4334 = !DILocation(line: 2123, column: 37, scope: !4332)
!4335 = !DILocation(line: 2123, column: 9, scope: !4285)
!4336 = !DILocation(line: 2124, column: 9, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 2123, column: 61)
!4338 = !DILocation(line: 2012, column: 34, scope: !4069, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 2125, column: 9, scope: !4337)
!4340 = !DILocation(line: 2012, column: 45, scope: !4069, inlinedAt: !4339)
!4341 = !DILocation(line: 2013, column: 13, scope: !4069, inlinedAt: !4339)
!4342 = !DILocation(line: 2013, column: 9, scope: !4069, inlinedAt: !4339)
!4343 = !DILocation(line: 2005, column: 26, scope: !1694, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 2014, column: 9, scope: !4069, inlinedAt: !4339)
!4345 = !DILocation(line: 2005, column: 40, scope: !1694, inlinedAt: !4344)
!4346 = !DILocation(line: 2005, column: 49, scope: !1694, inlinedAt: !4344)
!4347 = !DILocation(line: 2006, column: 12, scope: !1694, inlinedAt: !4344)
!4348 = !DILocation(line: 2015, column: 5, scope: !4069, inlinedAt: !4339)
!4349 = !DILocation(line: 2126, column: 9, scope: !4337)
!4350 = !DILocation(line: 2127, column: 5, scope: !4337)
!4351 = !DILocation(line: 2128, column: 16, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 2127, column: 12)
!4353 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 2128, column: 9, scope: !4352)
!4355 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4354)
!4356 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4354)
!4357 = !DILocation(line: 2130, column: 1, scope: !4285)
!4358 = distinct !DISubprogram(name: "ldbPrintAll", scope: !3, file: !3, line: 2134, type: !818, isLocal: false, isDefinition: true, scopeLine: 2134, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4359)
!4359 = !{!4360, !4361, !4362, !4363, !4366, !4367}
!4360 = !DILocalVariable(name: "lua", arg: 1, scope: !4358, file: !3, line: 2134, type: !74)
!4361 = !DILocalVariable(name: "ar", scope: !4358, file: !3, line: 2135, type: !731)
!4362 = !DILocalVariable(name: "vars", scope: !4358, file: !3, line: 2136, type: !15)
!4363 = !DILocalVariable(name: "name", scope: !4364, file: !3, line: 2139, type: !736)
!4364 = distinct !DILexicalBlock(scope: !4365, file: !3, line: 2138, column: 39)
!4365 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 2138, column: 9)
!4366 = !DILocalVariable(name: "i", scope: !4364, file: !3, line: 2140, type: !15)
!4367 = !DILocalVariable(name: "prefix", scope: !4368, file: !3, line: 2144, type: !209)
!4368 = distinct !DILexicalBlock(scope: !4369, file: !3, line: 2143, column: 47)
!4369 = distinct !DILexicalBlock(scope: !4370, file: !3, line: 2143, column: 17)
!4370 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 2141, column: 57)
!4371 = !DILocation(line: 2134, column: 29, scope: !4358)
!4372 = !DILocation(line: 2135, column: 5, scope: !4358)
!4373 = !DILocation(line: 2136, column: 9, scope: !4358)
!4374 = !DILocation(line: 2135, column: 15, scope: !4358)
!4375 = !DILocation(line: 2138, column: 9, scope: !4365)
!4376 = !DILocation(line: 2138, column: 33, scope: !4365)
!4377 = !DILocation(line: 2138, column: 9, scope: !4358)
!4378 = !DILocation(line: 2140, column: 13, scope: !4364)
!4379 = !DILocation(line: 2141, column: 23, scope: !4364)
!4380 = !DILocation(line: 2139, column: 21, scope: !4364)
!4381 = !DILocation(line: 2141, column: 48, scope: !4364)
!4382 = !DILocation(line: 2141, column: 9, scope: !4364)
!4383 = !DILocation(line: 2142, column: 14, scope: !4370)
!4384 = !DILocation(line: 2143, column: 18, scope: !4369)
!4385 = !DILocation(line: 2143, column: 17, scope: !4370)
!4386 = !DILocation(line: 2144, column: 43, scope: !4368)
!4387 = !DILocation(line: 2144, column: 30, scope: !4368)
!4388 = !DILocation(line: 2144, column: 21, scope: !4368)
!4389 = !DILocation(line: 2012, column: 34, scope: !4069, inlinedAt: !4390)
!4390 = distinct !DILocation(line: 2145, column: 17, scope: !4368)
!4391 = !DILocation(line: 2012, column: 45, scope: !4069, inlinedAt: !4390)
!4392 = !DILocation(line: 2013, column: 13, scope: !4069, inlinedAt: !4390)
!4393 = !DILocation(line: 2013, column: 9, scope: !4069, inlinedAt: !4390)
!4394 = !DILocation(line: 2005, column: 26, scope: !1694, inlinedAt: !4395)
!4395 = distinct !DILocation(line: 2014, column: 9, scope: !4069, inlinedAt: !4390)
!4396 = !DILocation(line: 2005, column: 40, scope: !1694, inlinedAt: !4395)
!4397 = !DILocation(line: 2005, column: 49, scope: !1694, inlinedAt: !4395)
!4398 = !DILocation(line: 2006, column: 12, scope: !1694, inlinedAt: !4395)
!4399 = !DILocation(line: 2015, column: 5, scope: !4069, inlinedAt: !4390)
!4400 = !DILocation(line: 2146, column: 17, scope: !4368)
!4401 = !DILocation(line: 2147, column: 21, scope: !4368)
!4402 = !DILocation(line: 2148, column: 13, scope: !4368)
!4403 = !DILocation(line: 0, scope: !4368)
!4404 = !DILocation(line: 2149, column: 13, scope: !4370)
!4405 = distinct !{!4405, !4382, !4406}
!4406 = !DILocation(line: 2150, column: 9, scope: !4364)
!4407 = !DILocation(line: 2153, column: 14, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 2153, column: 9)
!4409 = !DILocation(line: 2153, column: 9, scope: !4358)
!4410 = !DILocation(line: 2154, column: 16, scope: !4411)
!4411 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 2153, column: 20)
!4412 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4413)
!4413 = distinct !DILocation(line: 2154, column: 9, scope: !4411)
!4414 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4413)
!4415 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4413)
!4416 = !DILocation(line: 2155, column: 5, scope: !4411)
!4417 = !DILocation(line: 2156, column: 1, scope: !4358)
!4418 = distinct !DISubprogram(name: "ldbBreak", scope: !3, file: !3, line: 2159, type: !4419, isLocal: false, isDefinition: true, scopeLine: 2159, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4421)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{null, !432, !15}
!4421 = !{!4422, !4423, !4424, !4429, !4431, !4435}
!4422 = !DILocalVariable(name: "argv", arg: 1, scope: !4418, file: !3, line: 2159, type: !432)
!4423 = !DILocalVariable(name: "argc", arg: 2, scope: !4418, file: !3, line: 2159, type: !15)
!4424 = !DILocalVariable(name: "j", scope: !4425, file: !3, line: 2166, type: !15)
!4425 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 2164, column: 16)
!4426 = distinct !DILexicalBlock(scope: !4427, file: !3, line: 2161, column: 13)
!4427 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 2160, column: 20)
!4428 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 2160, column: 9)
!4429 = !DILocalVariable(name: "j", scope: !4430, file: !3, line: 2171, type: !15)
!4430 = distinct !DILexicalBlock(scope: !4428, file: !3, line: 2170, column: 12)
!4431 = !DILocalVariable(name: "arg", scope: !4432, file: !3, line: 2173, type: !11)
!4432 = distinct !DILexicalBlock(scope: !4433, file: !3, line: 2172, column: 36)
!4433 = distinct !DILexicalBlock(scope: !4434, file: !3, line: 2172, column: 9)
!4434 = distinct !DILexicalBlock(scope: !4430, file: !3, line: 2172, column: 9)
!4435 = !DILocalVariable(name: "line", scope: !4432, file: !3, line: 2174, type: !23)
!4436 = !DILocation(line: 2159, column: 20, scope: !4418)
!4437 = !DILocation(line: 2159, column: 30, scope: !4418)
!4438 = !DILocation(line: 2160, column: 14, scope: !4428)
!4439 = !DILocation(line: 2160, column: 9, scope: !4418)
!4440 = !DILocation(line: 2171, column: 13, scope: !4430)
!4441 = !DILocation(line: 2172, column: 23, scope: !4433)
!4442 = !DILocation(line: 2172, column: 9, scope: !4434)
!4443 = !DILocation(line: 2161, column: 17, scope: !4426)
!4444 = !DILocation(line: 2161, column: 25, scope: !4426)
!4445 = !DILocation(line: 2161, column: 13, scope: !4427)
!4446 = !DILocation(line: 2162, column: 20, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 2161, column: 31)
!4448 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4449)
!4449 = distinct !DILocation(line: 2162, column: 13, scope: !4447)
!4450 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4449)
!4451 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4449)
!4452 = !DILocation(line: 2163, column: 13, scope: !4447)
!4453 = !DILocation(line: 2165, column: 30, scope: !4425)
!4454 = !DILocation(line: 2165, column: 67, scope: !4425)
!4455 = !DILocation(line: 2165, column: 20, scope: !4425)
!4456 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4457)
!4457 = distinct !DILocation(line: 2165, column: 13, scope: !4425)
!4458 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4457)
!4459 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4457)
!4460 = !DILocation(line: 2166, column: 17, scope: !4425)
!4461 = !DILocation(line: 2167, column: 33, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4463, file: !3, line: 2167, column: 13)
!4463 = distinct !DILexicalBlock(scope: !4425, file: !3, line: 2167, column: 13)
!4464 = !DILocation(line: 2167, column: 27, scope: !4462)
!4465 = !DILocation(line: 2167, column: 13, scope: !4463)
!4466 = !DILocation(line: 2168, column: 34, scope: !4462)
!4467 = !DILocation(line: 1880, column: 27, scope: !2862, inlinedAt: !4468)
!4468 = distinct !DILocation(line: 2168, column: 17, scope: !4462)
!4469 = !DILocation(line: 1788, column: 28, scope: !2872, inlinedAt: !4470)
!4470 = distinct !DILocation(line: 1881, column: 18, scope: !2862, inlinedAt: !4468)
!4471 = !DILocation(line: 1790, column: 13, scope: !2880, inlinedAt: !4470)
!4472 = !DILocation(line: 1790, column: 31, scope: !2880, inlinedAt: !4470)
!4473 = !DILocation(line: 1790, column: 24, scope: !2880, inlinedAt: !4470)
!4474 = !DILocation(line: 1790, column: 17, scope: !2880, inlinedAt: !4470)
!4475 = !DILocation(line: 1789, column: 19, scope: !2872, inlinedAt: !4470)
!4476 = !DILocation(line: 1789, column: 9, scope: !2872, inlinedAt: !4470)
!4477 = !DILocation(line: 1791, column: 16, scope: !2872, inlinedAt: !4470)
!4478 = !DILocation(line: 1791, column: 12, scope: !2872, inlinedAt: !4470)
!4479 = !DILocation(line: 1791, column: 5, scope: !2872, inlinedAt: !4470)
!4480 = !DILocation(line: 0, scope: !2872, inlinedAt: !4470)
!4481 = !DILocation(line: 1881, column: 11, scope: !2862, inlinedAt: !4468)
!4482 = !DILocation(line: 1795, column: 25, scope: !2787, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 1883, column: 14, scope: !2862, inlinedAt: !4468)
!4484 = !DILocation(line: 1796, column: 9, scope: !2787, inlinedAt: !4483)
!4485 = !DILocation(line: 1798, column: 19, scope: !2796, inlinedAt: !4483)
!4486 = !DILocation(line: 1798, column: 5, scope: !2797, inlinedAt: !4483)
!4487 = !DILocation(line: 1799, column: 13, scope: !2805, inlinedAt: !4483)
!4488 = !DILocation(line: 1799, column: 23, scope: !2805, inlinedAt: !4483)
!4489 = !DILocation(line: 1798, column: 35, scope: !2796, inlinedAt: !4483)
!4490 = !DILocation(line: 1799, column: 13, scope: !2796, inlinedAt: !4483)
!4491 = !DILocation(line: 1884, column: 23, scope: !2862, inlinedAt: !4468)
!4492 = !DILocation(line: 1884, column: 35, scope: !2862, inlinedAt: !4468)
!4493 = !DILocation(line: 1891, column: 9, scope: !3842, inlinedAt: !4468)
!4494 = !DILocation(line: 1886, column: 17, scope: !3844, inlinedAt: !4468)
!4495 = !DILocation(line: 1882, column: 11, scope: !2862, inlinedAt: !4468)
!4496 = !DILocation(line: 1894, column: 33, scope: !2862, inlinedAt: !4468)
!4497 = !DILocation(line: 1894, column: 20, scope: !2862, inlinedAt: !4468)
!4498 = !DILocation(line: 1894, column: 9, scope: !2862, inlinedAt: !4468)
!4499 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4500)
!4500 = distinct !DILocation(line: 1895, column: 5, scope: !2862, inlinedAt: !4468)
!4501 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4500)
!4502 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4500)
!4503 = !DILocation(line: 2167, column: 43, scope: !4462)
!4504 = distinct !{!4504, !4465, !4505}
!4505 = !DILocation(line: 2168, column: 43, scope: !4463)
!4506 = !DILocation(line: 2173, column: 25, scope: !4432)
!4507 = !DILocation(line: 2173, column: 19, scope: !4432)
!4508 = !DILocation(line: 2174, column: 13, scope: !4432)
!4509 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !4510)
!4510 = distinct !DILocation(line: 2175, column: 31, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4432, file: !3, line: 2175, column: 17)
!4512 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !4510)
!4513 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !4510)
!4514 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !4510)
!4515 = !DILocation(line: 91, column: 20, scope: !1448, inlinedAt: !4510)
!4516 = !DILocation(line: 91, column: 13, scope: !1448, inlinedAt: !4510)
!4517 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !4510)
!4518 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !4510)
!4519 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !4510)
!4520 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !4510)
!4521 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !4510)
!4522 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !4510)
!4523 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !4510)
!4524 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !4510)
!4525 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !4510)
!4526 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !4510)
!4527 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !4510)
!4528 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !4510)
!4529 = !DILocation(line: 0, scope: !1448, inlinedAt: !4510)
!4530 = !DILocation(line: 2174, column: 18, scope: !4432)
!4531 = !DILocation(line: 2175, column: 18, scope: !4511)
!4532 = !DILocation(line: 2175, column: 17, scope: !4432)
!4533 = !DILocation(line: 2176, column: 34, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 2175, column: 51)
!4535 = !DILocation(line: 2176, column: 24, scope: !4534)
!4536 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4537)
!4537 = distinct !DILocation(line: 2176, column: 17, scope: !4534)
!4538 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4537)
!4539 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4537)
!4540 = !DILocation(line: 2177, column: 13, scope: !4534)
!4541 = !DILocation(line: 2178, column: 21, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 2178, column: 21)
!4543 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 2177, column: 20)
!4544 = !DILocation(line: 2178, column: 26, scope: !4542)
!4545 = !DILocation(line: 2178, column: 21, scope: !4543)
!4546 = !DILocation(line: 2179, column: 33, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4542, file: !3, line: 2178, column: 32)
!4548 = !DILocation(line: 2180, column: 28, scope: !4547)
!4549 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 2180, column: 21, scope: !4547)
!4551 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4550)
!4552 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4550)
!4553 = !DILocation(line: 2181, column: 17, scope: !4547)
!4554 = !DILocation(line: 2181, column: 33, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4542, file: !3, line: 2181, column: 28)
!4556 = !DILocation(line: 2181, column: 28, scope: !4542)
!4557 = !DILocation(line: 2182, column: 29, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 2182, column: 25)
!4559 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 2181, column: 38)
!4560 = !DILocation(line: 2182, column: 37, scope: !4558)
!4561 = !DILocation(line: 2182, column: 25, scope: !4559)
!4562 = !DILocation(line: 2183, column: 32, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 2182, column: 61)
!4564 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4565)
!4565 = distinct !DILocation(line: 2183, column: 25, scope: !4563)
!4566 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4565)
!4567 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4565)
!4568 = !DILocation(line: 2184, column: 21, scope: !4563)
!4569 = !DILocation(line: 2184, column: 49, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 2184, column: 32)
!4571 = !DILocation(line: 1806, column: 26, scope: !3657, inlinedAt: !4572)
!4572 = distinct !DILocation(line: 2184, column: 32, scope: !4570)
!4573 = !DILocation(line: 1807, column: 14, scope: !3662, inlinedAt: !4572)
!4574 = !DILocation(line: 1807, column: 33, scope: !3662, inlinedAt: !4572)
!4575 = !DILocation(line: 1807, column: 27, scope: !3662, inlinedAt: !4572)
!4576 = !DILocation(line: 1807, column: 19, scope: !3662, inlinedAt: !4572)
!4577 = !DILocation(line: 1795, column: 25, scope: !2787, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 1808, column: 10, scope: !3668, inlinedAt: !4572)
!4579 = !DILocation(line: 1796, column: 9, scope: !2787, inlinedAt: !4578)
!4580 = !DILocation(line: 1798, column: 19, scope: !2796, inlinedAt: !4578)
!4581 = !DILocation(line: 0, scope: !4570)
!4582 = !DILocation(line: 1798, column: 5, scope: !2797, inlinedAt: !4578)
!4583 = !DILocation(line: 1799, column: 13, scope: !2805, inlinedAt: !4578)
!4584 = !DILocation(line: 1799, column: 23, scope: !2805, inlinedAt: !4578)
!4585 = !DILocation(line: 1798, column: 35, scope: !2796, inlinedAt: !4578)
!4586 = !DILocation(line: 1799, column: 13, scope: !2796, inlinedAt: !4578)
!4587 = !DILocation(line: 1809, column: 27, scope: !3680, inlinedAt: !4572)
!4588 = !DILocation(line: 1809, column: 9, scope: !3680, inlinedAt: !4572)
!4589 = !DILocation(line: 1809, column: 31, scope: !3680, inlinedAt: !4572)
!4590 = !DILocation(line: 2185, column: 25, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 2184, column: 56)
!4592 = !DILocation(line: 2186, column: 21, scope: !4591)
!4593 = !DILocation(line: 2187, column: 32, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 2186, column: 28)
!4595 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4596)
!4596 = distinct !DILocation(line: 2187, column: 25, scope: !4594)
!4597 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4596)
!4598 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4596)
!4599 = !DILocation(line: 2190, column: 42, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 2190, column: 25)
!4601 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 2189, column: 38)
!4602 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 2189, column: 28)
!4603 = !DILocation(line: 1817, column: 26, scope: !3686, inlinedAt: !4604)
!4604 = distinct !DILocation(line: 2190, column: 25, scope: !4600)
!4605 = !DILocation(line: 1818, column: 9, scope: !3686, inlinedAt: !4604)
!4606 = !DILocation(line: 1820, column: 25, scope: !3693, inlinedAt: !4604)
!4607 = !DILocation(line: 1820, column: 19, scope: !3693, inlinedAt: !4604)
!4608 = !DILocation(line: 1820, column: 5, scope: !3694, inlinedAt: !4604)
!4609 = !DILocation(line: 1821, column: 13, scope: !3698, inlinedAt: !4604)
!4610 = !DILocation(line: 1821, column: 23, scope: !3698, inlinedAt: !4604)
!4611 = !DILocation(line: 1821, column: 13, scope: !3699, inlinedAt: !4604)
!4612 = !DILocation(line: 1820, column: 35, scope: !3693, inlinedAt: !4604)
!4613 = !DILocation(line: 1822, column: 24, scope: !3703, inlinedAt: !4604)
!4614 = !DILocation(line: 1823, column: 21, scope: !3703, inlinedAt: !4604)
!4615 = !DILocation(line: 1823, column: 38, scope: !3703, inlinedAt: !4604)
!4616 = !DILocation(line: 1823, column: 30, scope: !3703, inlinedAt: !4604)
!4617 = !DILocation(line: 1823, column: 52, scope: !3703, inlinedAt: !4604)
!4618 = !DILocation(line: 1823, column: 41, scope: !3703, inlinedAt: !4604)
!4619 = !DILocation(line: 1823, column: 13, scope: !3703, inlinedAt: !4604)
!4620 = !DILocation(line: 2191, column: 32, scope: !4600)
!4621 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4622)
!4622 = distinct !DILocation(line: 2191, column: 25, scope: !4600)
!4623 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4622)
!4624 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4622)
!4625 = !DILocation(line: 2191, column: 25, scope: !4600)
!4626 = !DILocation(line: 2193, column: 32, scope: !4600)
!4627 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 2193, column: 25, scope: !4600)
!4629 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4628)
!4630 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4628)
!4631 = !DILocation(line: 2196, column: 9, scope: !4433)
!4632 = !DILocation(line: 2172, column: 32, scope: !4433)
!4633 = distinct !{!4633, !4442, !4634}
!4634 = !DILocation(line: 2196, column: 9, scope: !4434)
!4635 = !DILocation(line: 2198, column: 1, scope: !4418)
!4636 = distinct !DISubprogram(name: "ldbEval", scope: !3, file: !3, line: 2203, type: !4637, isLocal: false, isDefinition: true, scopeLine: 2203, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4639)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{null, !74, !432, !15}
!4639 = !{!4640, !4641, !4642, !4643, !4644}
!4640 = !DILocalVariable(name: "lua", arg: 1, scope: !4636, file: !3, line: 2203, type: !74)
!4641 = !DILocalVariable(name: "argv", arg: 2, scope: !4636, file: !3, line: 2203, type: !432)
!4642 = !DILocalVariable(name: "argc", arg: 3, scope: !4636, file: !3, line: 2203, type: !15)
!4643 = !DILocalVariable(name: "code", scope: !4636, file: !3, line: 2205, type: !209)
!4644 = !DILocalVariable(name: "expr", scope: !4636, file: !3, line: 2206, type: !209)
!4645 = !DILocation(line: 2203, column: 25, scope: !4636)
!4646 = !DILocation(line: 2203, column: 35, scope: !4636)
!4647 = !DILocation(line: 2203, column: 45, scope: !4636)
!4648 = !DILocation(line: 2205, column: 31, scope: !4636)
!4649 = !DILocation(line: 2205, column: 38, scope: !4636)
!4650 = !DILocation(line: 2205, column: 16, scope: !4636)
!4651 = !DILocation(line: 2205, column: 9, scope: !4636)
!4652 = !DILocation(line: 2206, column: 26, scope: !4636)
!4653 = !DILocation(line: 2206, column: 16, scope: !4636)
!4654 = !DILocation(line: 2206, column: 9, scope: !4636)
!4655 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !4656)
!4656 = distinct !DILocation(line: 2209, column: 34, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 2209, column: 9)
!4658 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !4656)
!4659 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !4656)
!4660 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !4656)
!4661 = !DILocation(line: 91, column: 20, scope: !1448, inlinedAt: !4656)
!4662 = !DILocation(line: 91, column: 13, scope: !1448, inlinedAt: !4656)
!4663 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !4656)
!4664 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !4656)
!4665 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !4656)
!4666 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !4656)
!4667 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !4656)
!4668 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !4656)
!4669 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !4656)
!4670 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !4656)
!4671 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !4656)
!4672 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !4656)
!4673 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !4656)
!4674 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !4656)
!4675 = !DILocation(line: 0, scope: !1448, inlinedAt: !4656)
!4676 = !DILocation(line: 2209, column: 9, scope: !4657)
!4677 = !DILocation(line: 2209, column: 9, scope: !4636)
!4678 = !DILocation(line: 2210, column: 9, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4657, file: !3, line: 2209, column: 61)
!4680 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !4681)
!4681 = distinct !DILocation(line: 2212, column: 38, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4679, file: !3, line: 2212, column: 13)
!4683 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !4681)
!4684 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !4681)
!4685 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !4681)
!4686 = !DILocation(line: 91, column: 20, scope: !1448, inlinedAt: !4681)
!4687 = !DILocation(line: 91, column: 13, scope: !1448, inlinedAt: !4681)
!4688 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !4681)
!4689 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !4681)
!4690 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !4681)
!4691 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !4681)
!4692 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !4681)
!4693 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !4681)
!4694 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !4681)
!4695 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !4681)
!4696 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !4681)
!4697 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !4681)
!4698 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !4681)
!4699 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !4681)
!4700 = !DILocation(line: 0, scope: !1448, inlinedAt: !4681)
!4701 = !DILocation(line: 2212, column: 13, scope: !4682)
!4702 = !DILocation(line: 2212, column: 13, scope: !4679)
!4703 = !DILocation(line: 2213, column: 30, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4682, file: !3, line: 2212, column: 65)
!4705 = !DILocation(line: 2213, column: 54, scope: !4704)
!4706 = !DILocation(line: 2213, column: 20, scope: !4704)
!4707 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4708)
!4708 = distinct !DILocation(line: 2213, column: 13, scope: !4704)
!4709 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4708)
!4710 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4708)
!4711 = !DILocation(line: 2214, column: 13, scope: !4704)
!4712 = !DILocation(line: 2215, column: 13, scope: !4704)
!4713 = !DILocation(line: 2216, column: 13, scope: !4704)
!4714 = !DILocation(line: 2221, column: 5, scope: !4636)
!4715 = !DILocation(line: 2222, column: 5, scope: !4636)
!4716 = !DILocation(line: 2223, column: 9, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 2223, column: 9)
!4718 = !DILocation(line: 2223, column: 9, scope: !4636)
!4719 = !DILocation(line: 2224, column: 26, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4717, file: !3, line: 2223, column: 31)
!4721 = !DILocation(line: 2224, column: 50, scope: !4720)
!4722 = !DILocation(line: 2224, column: 16, scope: !4720)
!4723 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4724)
!4724 = distinct !DILocation(line: 2224, column: 9, scope: !4720)
!4725 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4724)
!4726 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4724)
!4727 = !DILocation(line: 2225, column: 9, scope: !4720)
!4728 = !DILocation(line: 2226, column: 9, scope: !4720)
!4729 = !DILocation(line: 2012, column: 34, scope: !4069, inlinedAt: !4730)
!4730 = distinct !DILocation(line: 2228, column: 5, scope: !4636)
!4731 = !DILocation(line: 2012, column: 45, scope: !4069, inlinedAt: !4730)
!4732 = !DILocation(line: 2013, column: 13, scope: !4069, inlinedAt: !4730)
!4733 = !DILocation(line: 2013, column: 9, scope: !4069, inlinedAt: !4730)
!4734 = !DILocation(line: 2005, column: 26, scope: !1694, inlinedAt: !4735)
!4735 = distinct !DILocation(line: 2014, column: 9, scope: !4069, inlinedAt: !4730)
!4736 = !DILocation(line: 2005, column: 40, scope: !1694, inlinedAt: !4735)
!4737 = !DILocation(line: 2005, column: 49, scope: !1694, inlinedAt: !4735)
!4738 = !DILocation(line: 2006, column: 12, scope: !1694, inlinedAt: !4735)
!4739 = !DILocation(line: 2015, column: 5, scope: !4069, inlinedAt: !4730)
!4740 = !DILocation(line: 2229, column: 5, scope: !4636)
!4741 = !DILocation(line: 2230, column: 1, scope: !4636)
!4742 = distinct !DISubprogram(name: "ldbRedis", scope: !3, file: !3, line: 2236, type: !4637, isLocal: false, isDefinition: true, scopeLine: 2236, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4743)
!4743 = !{!4744, !4745, !4746, !4747, !4748}
!4744 = !DILocalVariable(name: "lua", arg: 1, scope: !4742, file: !3, line: 2236, type: !74)
!4745 = !DILocalVariable(name: "argv", arg: 2, scope: !4742, file: !3, line: 2236, type: !432)
!4746 = !DILocalVariable(name: "argc", arg: 3, scope: !4742, file: !3, line: 2236, type: !15)
!4747 = !DILocalVariable(name: "j", scope: !4742, file: !3, line: 2237, type: !15)
!4748 = !DILocalVariable(name: "saved_rc", scope: !4742, file: !3, line: 2237, type: !15)
!4749 = !DILocation(line: 2236, column: 26, scope: !4742)
!4750 = !DILocation(line: 2236, column: 36, scope: !4742)
!4751 = !DILocation(line: 2236, column: 46, scope: !4742)
!4752 = !DILocation(line: 2237, column: 30, scope: !4742)
!4753 = !DILocation(line: 2237, column: 12, scope: !4742)
!4754 = !DILocation(line: 2239, column: 5, scope: !4742)
!4755 = !DILocation(line: 2240, column: 5, scope: !4742)
!4756 = !DILocation(line: 2241, column: 5, scope: !4742)
!4757 = !DILocation(line: 2237, column: 9, scope: !4742)
!4758 = !DILocation(line: 2242, column: 19, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 2242, column: 5)
!4760 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 2242, column: 5)
!4761 = !DILocation(line: 2242, column: 5, scope: !4760)
!4762 = !DILocation(line: 2243, column: 29, scope: !4759)
!4763 = !DILocation(line: 87, column: 39, scope: !1436, inlinedAt: !4764)
!4764 = distinct !DILocation(line: 2243, column: 37, scope: !4759)
!4765 = !DILocation(line: 88, column: 27, scope: !1436, inlinedAt: !4764)
!4766 = !DILocation(line: 88, column: 19, scope: !1436, inlinedAt: !4764)
!4767 = !DILocation(line: 89, column: 5, scope: !1436, inlinedAt: !4764)
!4768 = !DILocation(line: 91, column: 20, scope: !1448, inlinedAt: !4764)
!4769 = !DILocation(line: 91, column: 13, scope: !1448, inlinedAt: !4764)
!4770 = !DILocation(line: 93, column: 20, scope: !1448, inlinedAt: !4764)
!4771 = !DILocation(line: 93, column: 34, scope: !1448, inlinedAt: !4764)
!4772 = !DILocation(line: 93, column: 13, scope: !1448, inlinedAt: !4764)
!4773 = !DILocation(line: 95, column: 20, scope: !1448, inlinedAt: !4764)
!4774 = !DILocation(line: 95, column: 35, scope: !1448, inlinedAt: !4764)
!4775 = !DILocation(line: 95, column: 13, scope: !1448, inlinedAt: !4764)
!4776 = !DILocation(line: 97, column: 20, scope: !1448, inlinedAt: !4764)
!4777 = !DILocation(line: 97, column: 35, scope: !1448, inlinedAt: !4764)
!4778 = !DILocation(line: 97, column: 13, scope: !1448, inlinedAt: !4764)
!4779 = !DILocation(line: 99, column: 20, scope: !1448, inlinedAt: !4764)
!4780 = !DILocation(line: 99, column: 35, scope: !1448, inlinedAt: !4764)
!4781 = !DILocation(line: 99, column: 13, scope: !1448, inlinedAt: !4764)
!4782 = !DILocation(line: 0, scope: !1448, inlinedAt: !4764)
!4783 = !DILocation(line: 2243, column: 9, scope: !4759)
!4784 = !DILocation(line: 2242, column: 28, scope: !4759)
!4785 = distinct !{!4785, !4761, !4786}
!4786 = !DILocation(line: 2243, column: 52, scope: !4760)
!4787 = !DILocation(line: 2244, column: 14, scope: !4742)
!4788 = !DILocation(line: 2245, column: 35, scope: !4742)
!4789 = !DILocation(line: 2246, column: 23, scope: !4742)
!4790 = !DILocation(line: 2246, column: 5, scope: !4742)
!4791 = !DILocation(line: 2247, column: 14, scope: !4742)
!4792 = !DILocation(line: 2248, column: 35, scope: !4742)
!4793 = !DILocation(line: 2249, column: 5, scope: !4742)
!4794 = !DILocation(line: 2250, column: 1, scope: !4742)
!4795 = distinct !DISubprogram(name: "ldbTrace", scope: !3, file: !3, line: 2254, type: !818, isLocal: false, isDefinition: true, scopeLine: 2254, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4796)
!4796 = !{!4797, !4798, !4799}
!4797 = !DILocalVariable(name: "lua", arg: 1, scope: !4795, file: !3, line: 2254, type: !74)
!4798 = !DILocalVariable(name: "ar", scope: !4795, file: !3, line: 2255, type: !731)
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
!4817 = !{!791, !761, i64 8}
!4818 = !DILocation(line: 2263, column: 17, scope: !4813)
!4819 = !DILocation(line: 2261, column: 20, scope: !4813)
!4820 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4821)
!4821 = distinct !DILocation(line: 2261, column: 13, scope: !4813)
!4822 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4821)
!4823 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4821)
!4824 = !DILocation(line: 2264, column: 33, scope: !4813)
!4825 = !DILocation(line: 1880, column: 27, scope: !2862, inlinedAt: !4826)
!4826 = distinct !DILocation(line: 2264, column: 13, scope: !4813)
!4827 = !DILocation(line: 1788, column: 28, scope: !2872, inlinedAt: !4828)
!4828 = distinct !DILocation(line: 1881, column: 18, scope: !2862, inlinedAt: !4826)
!4829 = !DILocation(line: 1790, column: 13, scope: !2880, inlinedAt: !4828)
!4830 = !DILocation(line: 1790, column: 31, scope: !2880, inlinedAt: !4828)
!4831 = !DILocation(line: 1790, column: 24, scope: !2880, inlinedAt: !4828)
!4832 = !DILocation(line: 1790, column: 17, scope: !2880, inlinedAt: !4828)
!4833 = !DILocation(line: 1789, column: 19, scope: !2872, inlinedAt: !4828)
!4834 = !DILocation(line: 1789, column: 9, scope: !2872, inlinedAt: !4828)
!4835 = !DILocation(line: 1791, column: 16, scope: !2872, inlinedAt: !4828)
!4836 = !DILocation(line: 1791, column: 12, scope: !2872, inlinedAt: !4828)
!4837 = !DILocation(line: 1791, column: 5, scope: !2872, inlinedAt: !4828)
!4838 = !DILocation(line: 0, scope: !2872, inlinedAt: !4828)
!4839 = !DILocation(line: 1881, column: 11, scope: !2862, inlinedAt: !4826)
!4840 = !DILocation(line: 1795, column: 25, scope: !2787, inlinedAt: !4841)
!4841 = distinct !DILocation(line: 1883, column: 14, scope: !2862, inlinedAt: !4826)
!4842 = !DILocation(line: 1796, column: 9, scope: !2787, inlinedAt: !4841)
!4843 = !DILocation(line: 1798, column: 25, scope: !2796, inlinedAt: !4841)
!4844 = !DILocation(line: 1798, column: 19, scope: !2796, inlinedAt: !4841)
!4845 = !DILocation(line: 1798, column: 5, scope: !2797, inlinedAt: !4841)
!4846 = !DILocation(line: 1799, column: 13, scope: !2805, inlinedAt: !4841)
!4847 = !DILocation(line: 1799, column: 23, scope: !2805, inlinedAt: !4841)
!4848 = !DILocation(line: 1798, column: 35, scope: !2796, inlinedAt: !4841)
!4849 = !DILocation(line: 1799, column: 13, scope: !2796, inlinedAt: !4841)
!4850 = !DILocation(line: 1884, column: 23, scope: !2862, inlinedAt: !4826)
!4851 = !DILocation(line: 1884, column: 35, scope: !2862, inlinedAt: !4826)
!4852 = !DILocation(line: 1891, column: 9, scope: !3842, inlinedAt: !4826)
!4853 = !DILocation(line: 1886, column: 17, scope: !3844, inlinedAt: !4826)
!4854 = !DILocation(line: 1882, column: 11, scope: !2862, inlinedAt: !4826)
!4855 = !DILocation(line: 1894, column: 33, scope: !2862, inlinedAt: !4826)
!4856 = !DILocation(line: 1894, column: 20, scope: !2862, inlinedAt: !4826)
!4857 = !DILocation(line: 1894, column: 9, scope: !2862, inlinedAt: !4826)
!4858 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4859)
!4859 = distinct !DILocation(line: 1895, column: 5, scope: !2862, inlinedAt: !4826)
!4860 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4859)
!4861 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4859)
!4862 = !DILocation(line: 2265, column: 9, scope: !4813)
!4863 = !DILocation(line: 2266, column: 14, scope: !4807)
!4864 = distinct !{!4864, !4805, !4865}
!4865 = !DILocation(line: 2267, column: 5, scope: !4795)
!4866 = !DILocation(line: 2269, column: 16, scope: !4867)
!4867 = distinct !DILexicalBlock(scope: !4868, file: !3, line: 2268, column: 21)
!4868 = distinct !DILexicalBlock(scope: !4795, file: !3, line: 2268, column: 9)
!4869 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4870)
!4870 = distinct !DILocation(line: 2269, column: 9, scope: !4867)
!4871 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4870)
!4872 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4870)
!4873 = !DILocation(line: 2270, column: 5, scope: !4867)
!4874 = !DILocation(line: 2271, column: 1, scope: !4795)
!4875 = distinct !DISubprogram(name: "ldbMaxlen", scope: !3, file: !3, line: 2275, type: !4419, isLocal: false, isDefinition: true, scopeLine: 2275, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4876)
!4876 = !{!4877, !4878, !4879}
!4877 = !DILocalVariable(name: "argv", arg: 1, scope: !4875, file: !3, line: 2275, type: !432)
!4878 = !DILocalVariable(name: "argc", arg: 2, scope: !4875, file: !3, line: 2275, type: !15)
!4879 = !DILocalVariable(name: "newval", scope: !4880, file: !3, line: 2277, type: !15)
!4880 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 2276, column: 20)
!4881 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 2276, column: 9)
!4882 = !DILocation(line: 2275, column: 21, scope: !4875)
!4883 = !DILocation(line: 2275, column: 31, scope: !4875)
!4884 = !DILocation(line: 2276, column: 14, scope: !4881)
!4885 = !DILocation(line: 2276, column: 9, scope: !4875)
!4886 = !DILocation(line: 2277, column: 27, scope: !4880)
!4887 = !DILocation(line: 2277, column: 22, scope: !4880)
!4888 = !DILocation(line: 2277, column: 13, scope: !4880)
!4889 = !DILocation(line: 2278, column: 30, scope: !4880)
!4890 = !DILocation(line: 2279, column: 20, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 2279, column: 13)
!4892 = !DILocation(line: 2279, column: 35, scope: !4891)
!4893 = !DILocation(line: 2279, column: 25, scope: !4891)
!4894 = !DILocation(line: 2280, column: 22, scope: !4880)
!4895 = !DILocation(line: 2280, column: 20, scope: !4880)
!4896 = !DILocation(line: 2281, column: 5, scope: !4880)
!4897 = !DILocation(line: 2282, column: 13, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4875, file: !3, line: 2282, column: 9)
!4899 = !DILocation(line: 2282, column: 9, scope: !4898)
!4900 = !DILocation(line: 0, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 2284, column: 12)
!4902 = !DILocation(line: 2282, column: 9, scope: !4875)
!4903 = !DILocation(line: 2283, column: 94, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 2282, column: 21)
!4905 = !DILocation(line: 2283, column: 85, scope: !4904)
!4906 = !DILocation(line: 2283, column: 16, scope: !4904)
!4907 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4908)
!4908 = distinct !DILocation(line: 2283, column: 9, scope: !4904)
!4909 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4908)
!4910 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4908)
!4911 = !DILocation(line: 2284, column: 5, scope: !4904)
!4912 = !DILocation(line: 2285, column: 16, scope: !4901)
!4913 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4914)
!4914 = distinct !DILocation(line: 2285, column: 9, scope: !4901)
!4915 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4914)
!4916 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4914)
!4917 = !DILocation(line: 2287, column: 1, scope: !4875)
!4918 = distinct !DISubprogram(name: "ldbRepl", scope: !3, file: !3, line: 2292, type: !808, isLocal: false, isDefinition: true, scopeLine: 2292, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !4919)
!4919 = !{!4920, !4921, !4922, !4923, !4929, !4930, !4943, !4944}
!4920 = !DILocalVariable(name: "lua", arg: 1, scope: !4918, file: !3, line: 2292, type: !74)
!4921 = !DILocalVariable(name: "argv", scope: !4918, file: !3, line: 2293, type: !432)
!4922 = !DILocalVariable(name: "argc", scope: !4918, file: !3, line: 2294, type: !15)
!4923 = !DILocalVariable(name: "buf", scope: !4924, file: !3, line: 2300, type: !4926)
!4924 = distinct !DILexicalBlock(scope: !4925, file: !3, line: 2299, column: 60)
!4925 = distinct !DILexicalBlock(scope: !4918, file: !3, line: 2298, column: 14)
!4926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8192, elements: !4927)
!4927 = !{!4928}
!4928 = !DISubrange(count: 1024)
!4929 = !DILocalVariable(name: "nread", scope: !4924, file: !3, line: 2301, type: !15)
!4930 = !DILocalVariable(name: "around", scope: !4931, file: !3, line: 2381, type: !15)
!4931 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 2380, column: 76)
!4932 = distinct !DILexicalBlock(scope: !4933, file: !3, line: 2380, column: 20)
!4933 = distinct !DILexicalBlock(scope: !4934, file: !3, line: 2374, column: 20)
!4934 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 2370, column: 20)
!4935 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 2367, column: 20)
!4936 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 2364, column: 20)
!4937 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 2361, column: 20)
!4938 = distinct !DILexicalBlock(scope: !4939, file: !3, line: 2358, column: 20)
!4939 = distinct !DILexicalBlock(scope: !4940, file: !3, line: 2355, column: 20)
!4940 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 2353, column: 20)
!4941 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 2349, column: 20)
!4942 = distinct !DILexicalBlock(scope: !4925, file: !3, line: 2317, column: 13)
!4943 = !DILocalVariable(name: "ctx", scope: !4931, file: !3, line: 2381, type: !15)
!4944 = !DILocalVariable(name: "num", scope: !4945, file: !3, line: 2383, type: !15)
!4945 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 2382, column: 27)
!4946 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 2382, column: 17)
!4947 = !DILocation(line: 2292, column: 24, scope: !4918)
!4948 = !DILocation(line: 2294, column: 5, scope: !4918)
!4949 = !DILocation(line: 2298, column: 5, scope: !4918)
!4950 = !DILocation(line: 2294, column: 9, scope: !4918)
!4951 = !DILocation(line: 2299, column: 23, scope: !4925)
!4952 = !DILocation(line: 2293, column: 10, scope: !4918)
!4953 = !DILocation(line: 2299, column: 51, scope: !4925)
!4954 = !DILocation(line: 2299, column: 9, scope: !4925)
!4955 = !DILocation(line: 2300, column: 13, scope: !4924)
!4956 = !DILocation(line: 2300, column: 18, scope: !4924)
!4957 = !DILocation(line: 2301, column: 34, scope: !4924)
!4958 = !DILocation(line: 2301, column: 25, scope: !4924)
!4959 = !DILocation(line: 2301, column: 17, scope: !4924)
!4960 = !DILocation(line: 2302, column: 23, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4924, file: !3, line: 2302, column: 17)
!4962 = !DILocation(line: 2302, column: 17, scope: !4924)
!4963 = !DILocation(line: 2305, column: 26, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 2302, column: 29)
!4965 = !DILocation(line: 2306, column: 29, scope: !4964)
!4966 = !DILocation(line: 2310, column: 9, scope: !4925)
!4967 = !DILocation(line: 2309, column: 38, scope: !4924)
!4968 = !DILocation(line: 2309, column: 47, scope: !4924)
!4969 = !DILocation(line: 2309, column: 24, scope: !4924)
!4970 = !DILocation(line: 2309, column: 22, scope: !4924)
!4971 = !DILocation(line: 2313, column: 21, scope: !4925)
!4972 = !DILocation(line: 2313, column: 9, scope: !4925)
!4973 = !DILocation(line: 2314, column: 20, scope: !4925)
!4974 = !DILocation(line: 2314, column: 18, scope: !4925)
!4975 = !DILocation(line: 2317, column: 25, scope: !4942)
!4976 = !DILocation(line: 2317, column: 14, scope: !4942)
!4977 = !DILocation(line: 2317, column: 38, scope: !4942)
!4978 = !DILocation(line: 2317, column: 42, scope: !4942)
!4979 = !DILocation(line: 2317, column: 13, scope: !4925)
!4980 = !DILocation(line: 2318, column: 8, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 2317, column: 70)
!4982 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4983)
!4983 = distinct !DILocation(line: 2318, column: 1, scope: !4981)
!4984 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4983)
!4985 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4983)
!4986 = !DILocation(line: 2319, column: 8, scope: !4981)
!4987 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4988)
!4988 = distinct !DILocation(line: 2319, column: 1, scope: !4981)
!4989 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4988)
!4990 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4988)
!4991 = !DILocation(line: 2320, column: 8, scope: !4981)
!4992 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4993)
!4993 = distinct !DILocation(line: 2320, column: 1, scope: !4981)
!4994 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4993)
!4995 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4993)
!4996 = !DILocation(line: 2321, column: 8, scope: !4981)
!4997 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !4998)
!4998 = distinct !DILocation(line: 2321, column: 1, scope: !4981)
!4999 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !4998)
!5000 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !4998)
!5001 = !DILocation(line: 2322, column: 8, scope: !4981)
!5002 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5003)
!5003 = distinct !DILocation(line: 2322, column: 1, scope: !4981)
!5004 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5003)
!5005 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5003)
!5006 = !DILocation(line: 2323, column: 8, scope: !4981)
!5007 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5008)
!5008 = distinct !DILocation(line: 2323, column: 1, scope: !4981)
!5009 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5008)
!5010 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5008)
!5011 = !DILocation(line: 2324, column: 8, scope: !4981)
!5012 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5013)
!5013 = distinct !DILocation(line: 2324, column: 1, scope: !4981)
!5014 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5013)
!5015 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5013)
!5016 = !DILocation(line: 2325, column: 8, scope: !4981)
!5017 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5018)
!5018 = distinct !DILocation(line: 2325, column: 1, scope: !4981)
!5019 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5018)
!5020 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5018)
!5021 = !DILocation(line: 2326, column: 8, scope: !4981)
!5022 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5023)
!5023 = distinct !DILocation(line: 2326, column: 1, scope: !4981)
!5024 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5023)
!5025 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5023)
!5026 = !DILocation(line: 2327, column: 8, scope: !4981)
!5027 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5028)
!5028 = distinct !DILocation(line: 2327, column: 1, scope: !4981)
!5029 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5028)
!5030 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5028)
!5031 = !DILocation(line: 2328, column: 8, scope: !4981)
!5032 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5033)
!5033 = distinct !DILocation(line: 2328, column: 1, scope: !4981)
!5034 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5033)
!5035 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5033)
!5036 = !DILocation(line: 2329, column: 8, scope: !4981)
!5037 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5038)
!5038 = distinct !DILocation(line: 2329, column: 1, scope: !4981)
!5039 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5038)
!5040 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5038)
!5041 = !DILocation(line: 2330, column: 8, scope: !4981)
!5042 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5043)
!5043 = distinct !DILocation(line: 2330, column: 1, scope: !4981)
!5044 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5043)
!5045 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5043)
!5046 = !DILocation(line: 2331, column: 8, scope: !4981)
!5047 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5048)
!5048 = distinct !DILocation(line: 2331, column: 1, scope: !4981)
!5049 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5048)
!5050 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5048)
!5051 = !DILocation(line: 2332, column: 8, scope: !4981)
!5052 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5053)
!5053 = distinct !DILocation(line: 2332, column: 1, scope: !4981)
!5054 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5053)
!5055 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5053)
!5056 = !DILocation(line: 2333, column: 8, scope: !4981)
!5057 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5058)
!5058 = distinct !DILocation(line: 2333, column: 1, scope: !4981)
!5059 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5058)
!5060 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5058)
!5061 = !DILocation(line: 2334, column: 8, scope: !4981)
!5062 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5063)
!5063 = distinct !DILocation(line: 2334, column: 1, scope: !4981)
!5064 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5063)
!5065 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5063)
!5066 = !DILocation(line: 2335, column: 8, scope: !4981)
!5067 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5068)
!5068 = distinct !DILocation(line: 2335, column: 1, scope: !4981)
!5069 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5068)
!5070 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5068)
!5071 = !DILocation(line: 2336, column: 8, scope: !4981)
!5072 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5073)
!5073 = distinct !DILocation(line: 2336, column: 1, scope: !4981)
!5074 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5073)
!5075 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5073)
!5076 = !DILocation(line: 2337, column: 8, scope: !4981)
!5077 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5078)
!5078 = distinct !DILocation(line: 2337, column: 1, scope: !4981)
!5079 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5078)
!5080 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5078)
!5081 = !DILocation(line: 2338, column: 8, scope: !4981)
!5082 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5083)
!5083 = distinct !DILocation(line: 2338, column: 1, scope: !4981)
!5084 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5083)
!5085 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5083)
!5086 = !DILocation(line: 2339, column: 8, scope: !4981)
!5087 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5088)
!5088 = distinct !DILocation(line: 2339, column: 1, scope: !4981)
!5089 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5088)
!5090 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5088)
!5091 = !DILocation(line: 2340, column: 8, scope: !4981)
!5092 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5093)
!5093 = distinct !DILocation(line: 2340, column: 1, scope: !4981)
!5094 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5093)
!5095 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5093)
!5096 = !DILocation(line: 2341, column: 8, scope: !4981)
!5097 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5098)
!5098 = distinct !DILocation(line: 2341, column: 1, scope: !4981)
!5099 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5098)
!5100 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5098)
!5101 = !DILocation(line: 2342, column: 8, scope: !4981)
!5102 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5103)
!5103 = distinct !DILocation(line: 2342, column: 1, scope: !4981)
!5104 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5103)
!5105 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5103)
!5106 = !DILocation(line: 2343, column: 8, scope: !4981)
!5107 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5108)
!5108 = distinct !DILocation(line: 2343, column: 1, scope: !4981)
!5109 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5108)
!5110 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5108)
!5111 = !DILocation(line: 2344, column: 8, scope: !4981)
!5112 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5113)
!5113 = distinct !DILocation(line: 2344, column: 1, scope: !4981)
!5114 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5113)
!5115 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5113)
!5116 = !DILocation(line: 2345, column: 8, scope: !4981)
!5117 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5118)
!5118 = distinct !DILocation(line: 2345, column: 1, scope: !4981)
!5119 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5118)
!5120 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5118)
!5121 = !DILocation(line: 2346, column: 8, scope: !4981)
!5122 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5123)
!5123 = distinct !DILocation(line: 2346, column: 1, scope: !4981)
!5124 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5123)
!5125 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5123)
!5126 = !DILocation(line: 2347, column: 8, scope: !4981)
!5127 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5128)
!5128 = distinct !DILocation(line: 2347, column: 1, scope: !4981)
!5129 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5128)
!5130 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5128)
!5131 = !DILocation(line: 2348, column: 13, scope: !4981)
!5132 = !DILocation(line: 2349, column: 9, scope: !4981)
!5133 = !DILocation(line: 2349, column: 21, scope: !4941)
!5134 = !DILocation(line: 2349, column: 45, scope: !4941)
!5135 = !DILocation(line: 2349, column: 49, scope: !4941)
!5136 = !DILocation(line: 2349, column: 76, scope: !4941)
!5137 = !DILocation(line: 2350, column: 21, scope: !4941)
!5138 = !DILocation(line: 2350, column: 45, scope: !4941)
!5139 = !DILocation(line: 2350, column: 49, scope: !4941)
!5140 = !DILocation(line: 2349, column: 20, scope: !4942)
!5141 = !DILocation(line: 2351, column: 22, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 2350, column: 77)
!5143 = !DILocation(line: 2352, column: 13, scope: !5142)
!5144 = !DILocation(line: 2353, column: 21, scope: !4940)
!5145 = !DILocation(line: 2353, column: 45, scope: !4940)
!5146 = !DILocation(line: 2353, column: 49, scope: !4940)
!5147 = !DILocation(line: 2353, column: 20, scope: !4941)
!5148 = !DILocation(line: 2355, column: 21, scope: !4939)
!5149 = !DILocation(line: 2355, column: 45, scope: !4939)
!5150 = !DILocation(line: 2355, column: 49, scope: !4939)
!5151 = !DILocation(line: 2355, column: 20, scope: !4940)
!5152 = !DILocation(line: 2356, column: 13, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !4939, file: !3, line: 2355, column: 78)
!5154 = !DILocation(line: 2357, column: 13, scope: !5153)
!5155 = !DILocation(line: 2358, column: 9, scope: !5153)
!5156 = !DILocation(line: 2358, column: 21, scope: !4938)
!5157 = !DILocation(line: 2358, column: 45, scope: !4938)
!5158 = !DILocation(line: 2358, column: 49, scope: !4938)
!5159 = !DILocation(line: 2358, column: 20, scope: !4939)
!5160 = !DILocation(line: 2359, column: 28, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 2358, column: 79)
!5162 = !DILocation(line: 2359, column: 13, scope: !5161)
!5163 = !DILocation(line: 2360, column: 13, scope: !5161)
!5164 = !DILocation(line: 2361, column: 9, scope: !5161)
!5165 = !DILocation(line: 2361, column: 21, scope: !4937)
!5166 = !DILocation(line: 2361, column: 45, scope: !4937)
!5167 = !DILocation(line: 2361, column: 49, scope: !4937)
!5168 = !DILocation(line: 2361, column: 20, scope: !4938)
!5169 = !DILocation(line: 2362, column: 27, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 2361, column: 78)
!5171 = !DILocation(line: 2362, column: 13, scope: !5170)
!5172 = !DILocation(line: 2363, column: 13, scope: !5170)
!5173 = !DILocation(line: 2364, column: 9, scope: !5170)
!5174 = !DILocation(line: 2364, column: 21, scope: !4936)
!5175 = !DILocation(line: 2364, column: 45, scope: !4936)
!5176 = !DILocation(line: 2364, column: 49, scope: !4936)
!5177 = !DILocation(line: 2364, column: 20, scope: !4937)
!5178 = !DILocation(line: 2365, column: 30, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 2364, column: 77)
!5180 = !DILocation(line: 2365, column: 13, scope: !5179)
!5181 = !DILocation(line: 2366, column: 13, scope: !5179)
!5182 = !DILocation(line: 2367, column: 9, scope: !5179)
!5183 = !DILocation(line: 2367, column: 21, scope: !4935)
!5184 = !DILocation(line: 2367, column: 45, scope: !4935)
!5185 = !DILocation(line: 2367, column: 49, scope: !4935)
!5186 = !DILocation(line: 2367, column: 20, scope: !4936)
!5187 = !DILocation(line: 2368, column: 13, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 2367, column: 78)
!5189 = !DILocation(line: 2369, column: 13, scope: !5188)
!5190 = !DILocation(line: 2370, column: 9, scope: !5188)
!5191 = !DILocation(line: 2370, column: 20, scope: !4934)
!5192 = !DILocation(line: 2370, column: 25, scope: !4934)
!5193 = !DILocation(line: 2370, column: 29, scope: !4934)
!5194 = !DILocation(line: 2371, column: 22, scope: !4934)
!5195 = !DILocation(line: 2371, column: 46, scope: !4934)
!5196 = !DILocation(line: 2371, column: 50, scope: !4934)
!5197 = !DILocation(line: 2370, column: 20, scope: !4935)
!5198 = !DILocation(line: 2372, column: 13, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !4934, file: !3, line: 2371, column: 80)
!5200 = !DILocation(line: 2373, column: 13, scope: !5199)
!5201 = !DILocation(line: 2374, column: 9, scope: !5199)
!5202 = !DILocation(line: 2374, column: 22, scope: !4933)
!5203 = !DILocation(line: 2374, column: 46, scope: !4933)
!5204 = !DILocation(line: 2374, column: 50, scope: !4933)
!5205 = !DILocation(line: 2374, column: 20, scope: !4934)
!5206 = !DILocation(line: 2375, column: 22, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 2375, column: 17)
!5208 = distinct !DILexicalBlock(scope: !4933, file: !3, line: 2374, column: 80)
!5209 = !DILocation(line: 2375, column: 17, scope: !5208)
!5210 = !DILocation(line: 2376, column: 30, scope: !5207)
!5211 = !DILocation(line: 2376, column: 17, scope: !5207)
!5212 = !DILocation(line: 2378, column: 17, scope: !5207)
!5213 = !DILocation(line: 2379, column: 13, scope: !5208)
!5214 = !DILocation(line: 2380, column: 9, scope: !5208)
!5215 = !DILocation(line: 2380, column: 21, scope: !4932)
!5216 = !DILocation(line: 2380, column: 45, scope: !4932)
!5217 = !DILocation(line: 2380, column: 49, scope: !4932)
!5218 = !DILocation(line: 2380, column: 20, scope: !4933)
!5219 = !DILocation(line: 2381, column: 30, scope: !4931)
!5220 = !DILocation(line: 2381, column: 17, scope: !4931)
!5221 = !DILocation(line: 2381, column: 43, scope: !4931)
!5222 = !DILocation(line: 2382, column: 17, scope: !4931)
!5223 = !DILocation(line: 2383, column: 32, scope: !4945)
!5224 = !DILocation(line: 2383, column: 27, scope: !4945)
!5225 = !DILocation(line: 2383, column: 21, scope: !4945)
!5226 = !DILocation(line: 2384, column: 25, scope: !5227)
!5227 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 2384, column: 21)
!5228 = !DILocation(line: 2384, column: 21, scope: !4945)
!5229 = !DILocation(line: 2386, column: 22, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 2386, column: 17)
!5231 = !DILocation(line: 2386, column: 17, scope: !4931)
!5232 = !DILocation(line: 2386, column: 38, scope: !5230)
!5233 = !DILocation(line: 2386, column: 33, scope: !5230)
!5234 = !DILocation(line: 2386, column: 27, scope: !5230)
!5235 = !DILocation(line: 0, scope: !4931)
!5236 = !DILocation(line: 2387, column: 13, scope: !4931)
!5237 = !DILocation(line: 2388, column: 13, scope: !4931)
!5238 = !DILocation(line: 2389, column: 9, scope: !4931)
!5239 = !DILocation(line: 2389, column: 21, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 2389, column: 20)
!5241 = !DILocation(line: 2389, column: 45, scope: !5240)
!5242 = !DILocation(line: 2389, column: 49, scope: !5240)
!5243 = !DILocation(line: 2389, column: 20, scope: !4932)
!5244 = !DILocation(line: 2390, column: 13, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 2389, column: 77)
!5246 = !DILocation(line: 2391, column: 13, scope: !5245)
!5247 = !DILocation(line: 2392, column: 9, scope: !5245)
!5248 = !DILocation(line: 2393, column: 20, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 2392, column: 16)
!5250 = !DILocation(line: 1602, column: 17, scope: !771, inlinedAt: !5251)
!5251 = distinct !DILocation(line: 2393, column: 13, scope: !5249)
!5252 = !DILocation(line: 1603, column: 25, scope: !771, inlinedAt: !5251)
!5253 = !DILocation(line: 1603, column: 5, scope: !771, inlinedAt: !5251)
!5254 = !DILocation(line: 2395, column: 13, scope: !5249)
!5255 = !DILocation(line: 2399, column: 30, scope: !4925)
!5256 = !DILocation(line: 2399, column: 9, scope: !4925)
!5257 = distinct !{!5257, !4949, !5258}
!5258 = !DILocation(line: 2400, column: 5, scope: !4918)
!5259 = !DILocation(line: 2403, column: 26, scope: !4918)
!5260 = !DILocation(line: 2403, column: 5, scope: !4918)
!5261 = !DILocation(line: 2404, column: 5, scope: !4918)
!5262 = !DILocation(line: 0, scope: !4918)
!5263 = !DILocation(line: 2405, column: 1, scope: !4918)
