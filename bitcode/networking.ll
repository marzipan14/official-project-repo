; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/networking.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/networking.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.redisServer = type { i32, i8*, i8*, i8**, i32, i32, i32, %struct.redisDb*, %struct.dict*, %struct.dict*, %struct.aeEventLoop*, i32, i32, i32, i32, i8*, i8*, i32, i32, [41 x i8], i32, i64, i32, %struct.dict*, %struct.dict*, %struct.list*, [2 x i32], i32, i32, [16 x i8*], i32, i8*, i32, [16 x i32], i32, i32, [16 x i32], i32, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.list*, %struct.client*, %struct.rax*, i32, i64, [256 x i8], %struct.dict*, i64, i32, i32, i64, i64, i64, i64, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, %struct.redisCommand*, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, %struct.list*, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, [3 x %struct.anon], i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, [3 x %struct.clientBufferLimitsConfig], i32, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, %struct.list*, i8*, i32, i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, i32, %struct.saveparam*, i32, i8*, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, [2 x i32], %struct.anon.0, %struct.redisOpArray, i8*, i32, i8*, i32, [41 x i8], [41 x i8], i64, i64, i32, i32, i8*, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, %struct.client*, %struct.client*, i32, i32, i64, i64, i64, i32, i32, i8*, i64, i32, i32, i32, i64, i32, i32, i32, i8*, [41 x i8], i64, i32, %struct.dict*, %struct.list*, i32, %struct.list*, i32, i32, i64, i32, i32, i32, i32, i64, i32, [6 x i32], %struct.list*, %struct.list*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, %struct.dict*, %struct.list*, i32, i32, i64, i8*, %struct.clusterState*, i32, i32, i32, i32, i8*, i32, i32, i32, %struct.lua_State*, %struct.client*, %struct.client*, %struct.dict*, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.dict*, i8*, i8*, i32, i32, i32, i64, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_*, %struct.pthread_mutex_t_* }
%struct.redisDb = type { %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, %struct.dict*, i32, i64, %struct.list* }
%struct.aeEventLoop = type { i32, i32, i64, i64, %struct.aeFileEvent*, %struct.aeFiredEvent*, %struct.aeTimeEvent*, i32, i8*, void (%struct.aeEventLoop*)*, void (%struct.aeEventLoop*)* }
%struct.aeFileEvent = type { i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8* }
%struct.aeFiredEvent = type { i32, i32 }
%struct.aeTimeEvent = type { i64, i64, i64, i32 (%struct.aeEventLoop*, i64, i8*)*, void (%struct.aeEventLoop*, i8*)*, i8*, %struct.aeTimeEvent*, %struct.aeTimeEvent* }
%struct.rax = type { %struct.raxNode*, i64, i64 }
%struct.raxNode = type { i32, [0 x i8] }
%struct.redisCommand = type { i8*, void (%struct.client*)*, i32, i8*, i32, i32* (%struct.redisCommand*, %struct.redisObject**, i32, i32*)*, i32, i32, i32, i64, i64 }
%struct.redisObject = type { i32, i32, i8* }
%struct.malloc_stats = type { i64, i64, i64, i64, i64 }
%struct.anon = type { i64, i64, [16 x i64], i32 }
%struct.clientBufferLimitsConfig = type { i64, i64, i64 }
%struct.saveparam = type { i64, i32 }
%struct.anon.0 = type { i32, i64, i64 }
%struct.redisOpArray = type { %struct.redisOp*, i32 }
%struct.redisOp = type { %struct.redisObject**, i32, i32, i32, %struct.redisCommand* }
%struct.list = type { %struct.listNode*, %struct.listNode*, i8* (i8*)*, void (i8*)*, i32 (i8*, i8*)*, i64 }
%struct.listNode = type { %struct.listNode*, %struct.listNode*, i8* }
%struct.clusterState = type opaque
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
%struct.uk_alloc = type { {}*, i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8**, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)*, {}*, {}*, void (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8*, i64)*, i64, %struct.uk_alloc*, [0 x i8] }
%struct.sharedObjectsStruct = type { %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [10 x %struct.redisObject*], [10000 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], i8*, i8* }
%struct.clientReplyBlock = type { i64, i64, [0 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.listIter = type { %struct.listNode*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"o->type == OBJ_STRING\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/networking.c\00", align 1
@server = external dso_local global %struct.redisServer, align 8
@flexos_shared_alloc = external dso_local local_unnamed_addr global %struct.uk_alloc*, align 8
@objectKeyHeapPointerValueDictType = external dso_local global %struct.dictType, align 8
@objectKeyPointerValueDictType = external dso_local global %struct.dictType, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Wrong obj->encoding in addReply()\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"-ERR \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"replica\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.8 = private unnamed_addr constant [93 x i8] c"== CRITICAL == This %s is sending an error to its %s: '%s' after processing the command '%s'\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"*%ld\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"!listNodeValue(ln)\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"-inf\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%.17g\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"$%d\0D\0A%s\0D\0A\00", align 1
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.16 = private unnamed_addr constant [50 x i8] c"%s <subcommand> arg arg ... arg. Subcommands are:\00", align 1
@.str.17 = private unnamed_addr constant [71 x i8] c"Unknown subcommand or wrong number of arguments for '%s'. Try %s HELP.\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"Accepting client connection: %s\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"Accepted %s:%d\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Accepted connection to %s\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"ln != NULL\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Connection with master lost.\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"Connection with replica %s lost.\00", align 1
@raxNotFound = external dso_local local_unnamed_addr global i8*, align 8
@.str.24 = private unnamed_addr constant [20 x i8] c"c->reply_bytes == 0\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Error writing to client: %s\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"Protocol error: too big inline request\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"too big inline request\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"Protocol error: unbalanced quotes in request\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"unbalanced quotes in inline request\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"c->argc == 0\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"Protocol error: too big mbulk count string\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"too big mbulk count string\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"c->querybuf[c->qb_pos] == '*'\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"Protocol error: invalid multibulk length\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"invalid mbulk count\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"c->multibulklen > 0\00", align 1
@.str.37 = private unnamed_addr constant [42 x i8] c"Protocol error: too big bulk count string\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"too big bulk count string\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"Protocol error: expected '$', got '%c'\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"expected $ but got something else\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"Protocol error: invalid bulk length\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"invalid bulk length\00", align 1
@SDS_NOINIT = external dso_local local_unnamed_addr global i8*, align 8
@.str.43 = private unnamed_addr constant [21 x i8] c"Unknown request type\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"Reading from client: %s\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"Client closed connection\00", align 1
@.str.46 = private unnamed_addr constant [81 x i8] c"Closing client that reached max query buffer length: %s (qbuf initial bytes: %s)\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"%s:0\00", align 1
@.str.48 = private unnamed_addr constant [142 x i8] c"id=%U addr=%s fd=%i name=%s age=%I idle=%I flags=%s db=%i sub=%i psub=%i multi=%i qbuf=%U qbuf-free=%U obl=%U oll=%U omem=%U events=%s cmd=%s\00", align 1
@.str.49 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.53 = private unnamed_addr constant [67 x i8] c"id                     -- Return the ID of the current connection.\00", align 1
@.str.54 = private unnamed_addr constant [69 x i8] c"getname                -- Return the name of the current connection.\00", align 1
@.str.55 = private unnamed_addr constant [63 x i8] c"kill <ip:port>         -- Kill connection made from <ip:port>.\00", align 1
@.str.56 = private unnamed_addr constant [75 x i8] c"kill <option> <value> [option value ...] -- Kill connections. Options are:\00", align 1
@.str.57 = private unnamed_addr constant [80 x i8] c"     addr <ip:port>                      -- Kill connection made from <ip:port>\00", align 1
@.str.58 = private unnamed_addr constant [70 x i8] c"     type (normal|master|replica|pubsub) -- Kill connections by type.\00", align 1
@.str.59 = private unnamed_addr constant [74 x i8] c"     skipme (yes|no)   -- Skip killing current connection (default: yes).\00", align 1
@.str.60 = private unnamed_addr constant [80 x i8] c"list [options ...]     -- Return information about client connections. Options:\00", align 1
@.str.61 = private unnamed_addr constant [78 x i8] c"     type (normal|master|replica|pubsub) -- Return clients of specified type.\00", align 1
@.str.62 = private unnamed_addr constant [79 x i8] c"pause <timeout>        -- Suspend all Redis clients for <timout> milliseconds.\00", align 1
@.str.63 = private unnamed_addr constant [78 x i8] c"reply (on|off|skip)    -- Control the replies sent to the current connection.\00", align 1
@.str.64 = private unnamed_addr constant [76 x i8] c"setname <name>         -- Assign the name <name> to the current connection.\00", align 1
@.str.65 = private unnamed_addr constant [76 x i8] c"unblock <clientid> [TIMEOUT|ERROR] -- Unblock the specified blocked client.\00", align 1
@clientCommand.help = private unnamed_addr constant [14 x i8*] [i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.65, i32 0, i32 0), i8* null], align 16
@.str.66 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"Unknown client type '%s'\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"reply\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"skipme\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"No such client\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"unblock\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.83 = private unnamed_addr constant [49 x i8] c"CLIENT UNBLOCK reason should be TIMEOUT or ERROR\00", align 1
@.str.84 = private unnamed_addr constant [47 x i8] c"-UNBLOCKED client unblocked via CLIENT UNBLOCK\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"setname\00", align 1
@.str.86 = private unnamed_addr constant [68 x i8] c"Client names cannot contain spaces, newlines or special characters.\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"getname\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.89 = private unnamed_addr constant [74 x i8] c"Unknown subcommand or wrong number of arguments for '%s'. Try CLIENT HELP\00", align 1
@securityWarningCommand.logged_time = internal unnamed_addr global i64 0, align 8, !dbg !0
@.str.90 = private unnamed_addr constant [234 x i8] c"Possible SECURITY ATTACK detected. It looks like somebody is sending POST or Host: commands to Redis. This is likely due to an attacker attempting to use Cross Protocol Scripting to compromise your Redis instance. Connection aborted.\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"c->cmd != NULL\00", align 1
@.str.92 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"pubsub\00", align 1
@.str.95 = private unnamed_addr constant [36 x i8] c"c->reply_bytes < SIZE_MAX-(1024*64)\00", align 1
@.str.96 = private unnamed_addr constant [78 x i8] c"Client %s scheduled to be closed ASAP for overcoming of output buffer limits.\00", align 1
@.str.97 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.98 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@uk_pr_crit.__str = internal global [16 x i8] c"libredis_server\00", section ".data_shared", align 16, !dbg !311
@uk_pr_crit.__str.99 = internal global [13 x i8] c"networking.c\00", section ".data_shared", align 1, !dbg !337
@.str.100 = private unnamed_addr constant [58 x i8] c"Error registering fd event for the new client: %s (fd=%d)\00", align 1
@.str.101 = private unnamed_addr constant [37 x i8] c"-ERR max number of clients reached\0D\0A\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"::1\00", align 1
@err = internal global [1102 x i8] c"-DENIED Redis is running in protected mode because protected mode is enabled, no bind address was specified, no authentication password is requested to clients. In this mode connections are only accepted from the loopback interface. If you want to connect from external computers to Redis you may adopt one of the following solutions: 1) Just disable protected mode sending the command 'CONFIG SET protected-mode no' from the loopback interface by connecting to Redis from the same host the server is running, however MAKE SURE Redis is not publicly accessible from internet if you do so. Use CONFIG REWRITE to make this change permanent. 2) Alternatively you can just disable the protected mode by editing the Redis configuration file, and setting the protected mode option to 'no', and then restarting the server. 3) If you started the server manually just for testing, restart it with the '--protected-mode no' option. 4) Setup a bind address or an authentication password. NOTE: You only need to do one of the above things in order for the server to start accepting connections from the outside.\0D\0A\00", section ".data_shared", align 16, !dbg !342
@.str.104 = private unnamed_addr constant [41 x i8] c"Query buffer during protocol error: '%s'\00", align 1
@.str.105 = private unnamed_addr constant [75 x i8] c"Query buffer during protocol error: '%.*s' (... more %zu bytes ...) '%.*s'\00", align 1
@.str.106 = private unnamed_addr constant [40 x i8] c"Protocol error (%s) from client: %s. %s\00", align 1
@__A_VARIABLE = internal global i32 0
@switch.table.getClientTypeName = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)]

; Function Attrs: noredzone nounwind
define dso_local i64 @sdsZmallocSize(i8*) local_unnamed_addr #0 !dbg !354 {
  %2 = tail call i8* @sdsAllocPtr(i8* %0) #8, !dbg !361
  %3 = tail call i64 @zmalloc_size(i8* %2) #8, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  ret i64 %3, !dbg !364
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @sdsAllocPtr(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @zmalloc_size(i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i64 @getStringObjectSdsUsedMemory(%struct.redisObject*) local_unnamed_addr #0 !dbg !365 {
  %2 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !371
  %3 = load i32, i32* %2, align 8, !dbg !371
  %4 = and i32 %3, 15, !dbg !371
  %5 = icmp eq i32 %4, 0, !dbg !371
  br i1 %5, label %7, label %6, !dbg !371

; <label>:6:                                      ; preds = %1
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 52) #8, !dbg !371
  tail call void @_exit(i32 1) #9, !dbg !371
  unreachable, !dbg !371

; <label>:7:                                      ; preds = %1
  %8 = lshr i32 %3, 4, !dbg !372
  %9 = trunc i32 %8 to i4, !dbg !373
  switch i4 %9, label %19 [
    i4 0, label %10
    i4 -8, label %15
  ], !dbg !373

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !374
  %12 = load i8*, i8** %11, align 8, !dbg !374, !tbaa !376
  %13 = tail call i8* @sdsAllocPtr(i8* %12) #8, !dbg !384
  %14 = tail call i64 @zmalloc_size(i8* %13) #8, !dbg !386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  br label %19, !dbg !388

; <label>:15:                                     ; preds = %7
  %16 = bitcast %struct.redisObject* %0 to i8*, !dbg !389
  %17 = tail call i64 @zmalloc_size(i8* %16) #8, !dbg !390
  %18 = add i64 %17, -16, !dbg !391
  br label %19, !dbg !392

; <label>:19:                                     ; preds = %7, %15, %10
  %20 = phi i64 [ %18, %15 ], [ %14, %10 ], [ 0, %7 ], !dbg !393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  ret i64 %20, !dbg !394
}

; Function Attrs: noredzone
declare dso_local void @_serverAssertWithInfo(%struct.client*, %struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i8* @dupClientReplyValue(i8*) #0 !dbg !395 {
  %2 = bitcast i8* %0 to i64*, !dbg !409
  %3 = load i64, i64* %2, align 8, !dbg !409, !tbaa !410
  %4 = add i64 %3, 16, !dbg !412
  %5 = tail call i8* @zmalloc(i64 %4) #8, !dbg !413
  %6 = load i64, i64* %2, align 8, !dbg !415, !tbaa !410
  %7 = add i64 %6, 16, !dbg !416
  %8 = tail call i8* @memcpy(i8* %5, i8* %0, i64 %7) #8, !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  ret i8* %5, !dbg !418
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @freeClientReplyValue(i8*) #0 !dbg !419 {
  tail call void @zfree(i8* %0) #8, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  ret void, !dbg !424
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @listMatchObjects(i8*, i8*) #0 !dbg !425 {
  %3 = bitcast i8* %0 to %struct.redisObject*, !dbg !431
  %4 = bitcast i8* %1 to %struct.redisObject*, !dbg !432
  %5 = tail call i32 @equalStringObjects(%struct.redisObject* %3, %struct.redisObject* %4) #8, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !434
  ret i32 %5, !dbg !434
}

; Function Attrs: noredzone
declare dso_local i32 @equalStringObjects(%struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @linkClient(%struct.client*) local_unnamed_addr #0 !dbg !435 {
  %2 = alloca i64, align 8
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !440, !tbaa !441
  %4 = bitcast %struct.client* %0 to i8*, !dbg !448
  %5 = tail call %struct.list* @listAddNodeTail(%struct.list* %3, i8* %4) #8, !dbg !449
  %6 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !450, !tbaa !441
  %7 = getelementptr inbounds %struct.list, %struct.list* %6, i64 0, i32 1, !dbg !450
  %8 = bitcast %struct.listNode** %7 to i64*, !dbg !450
  %9 = load i64, i64* %8, align 8, !dbg !450, !tbaa !451
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 46, !dbg !453
  %11 = bitcast %struct.listNode** %10 to i64*, !dbg !454
  store i64 %9, i64* %11, align 8, !dbg !454, !tbaa !455
  %12 = bitcast i64* %2 to i8*, !dbg !459
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5, !dbg !459
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 0, !dbg !460
  %14 = load i64, i64* %13, align 8, !dbg !460, !tbaa !461
  %15 = tail call i64 @intrev64(i64 %14) #8, !dbg !460
  store i64 %15, i64* %2, align 8, !dbg !462, !tbaa !410
  %16 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 44), align 8, !dbg !463, !tbaa !464
  %17 = call i32 @raxInsert(%struct.rax* %16, i8* nonnull %12, i64 8, i8* %4, i8** null) #8, !dbg !465
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5, !dbg !466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !466
  ret void, !dbg !466
}

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @intrev64(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @raxInsert(%struct.rax*, i8*, i64, i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.client* @createClient(i32) local_unnamed_addr #0 !dbg !467 {
  %2 = alloca i64, align 8
  %3 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !475, !tbaa !476
  %4 = icmp eq %struct.uk_alloc* %3, null, !dbg !542
  br i1 %4, label %5, label %7, !dbg !544, !prof !545

; <label>:5:                                      ; preds = %1
  %6 = tail call i32* @__errno() #8, !dbg !546
  store i32 12, i32* %6, align 4, !dbg !548, !tbaa !549
  br label %11, !dbg !550

; <label>:7:                                      ; preds = %1
  %8 = bitcast %struct.uk_alloc* %3 to i8* (%struct.uk_alloc*, i64)**, !dbg !558
  %9 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %8, align 8, !dbg !558, !tbaa !476
  %10 = tail call i8* %9(%struct.uk_alloc* nonnull %3, i64 16920) #8, !dbg !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  br label %11, !dbg !561

; <label>:11:                                     ; preds = %5, %7
  %12 = phi i8* [ null, %5 ], [ %10, %7 ], !dbg !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  %13 = bitcast i8* %12 to %struct.client*, !dbg !564
  %14 = icmp ne i32 %0, -1, !dbg !566
  br i1 %14, label %15, label %28, !dbg !568

; <label>:15:                                     ; preds = %11
  %16 = tail call i32 @anetNonBlock(i8* null, i32 %0) #8, !dbg !569
  %17 = tail call i32 @anetEnableTcpNoDelay(i8* null, i32 %0) #8, !dbg !571
  %18 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 102), align 8, !dbg !572, !tbaa !574
  %19 = icmp eq i32 %18, 0, !dbg !575
  br i1 %19, label %22, label %20, !dbg !576

; <label>:20:                                     ; preds = %15
  %21 = tail call i32 @anetKeepAlive(i8* null, i32 %0, i32 %18) #8, !dbg !577
  br label %22, !dbg !577

; <label>:22:                                     ; preds = %15, %20
  %23 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !578, !tbaa !580
  %24 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* %23, i32 %0, i32 1, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @readQueryFromClient, i8* %12) #8, !dbg !581
  %25 = icmp eq i32 %24, -1, !dbg !582
  br i1 %25, label %26, label %28, !dbg !583

; <label>:26:                                     ; preds = %22
  %27 = tail call i32 @close(i32 %0) #8, !dbg !584
  tail call void @zfree(i8* %12) #8, !dbg !586
  br label %135, !dbg !587

; <label>:28:                                     ; preds = %22, %11
  %29 = tail call i32 @selectDb(%struct.client* %13, i32 0) #8, !dbg !588
  %30 = atomicrmw add i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 49), i64 1 monotonic, !dbg !589
  %31 = bitcast i8* %12 to i64*, !dbg !592
  store i64 %30, i64* %31, align 8, !dbg !593, !tbaa !461
  %32 = getelementptr inbounds i8, i8* %12, i64 8, !dbg !594
  %33 = bitcast i8* %32 to i32*, !dbg !594
  store i32 %0, i32* %33, align 8, !dbg !595, !tbaa !596
  %34 = getelementptr inbounds i8, i8* %12, i64 24, !dbg !597
  %35 = bitcast i8* %34 to %struct.redisObject**, !dbg !597
  store %struct.redisObject* null, %struct.redisObject** %35, align 8, !dbg !598, !tbaa !599
  %36 = getelementptr inbounds i8, i8* %12, i64 528, !dbg !600
  %37 = bitcast i8* %36 to i32*, !dbg !600
  store i32 0, i32* %37, align 8, !dbg !601, !tbaa !602
  %38 = getelementptr inbounds i8, i8* %12, i64 40, !dbg !603
  %39 = bitcast i8* %38 to i64*, !dbg !603
  store i64 0, i64* %39, align 8, !dbg !604, !tbaa !605
  %40 = tail call i8* @sdsempty() #8, !dbg !606
  %41 = getelementptr inbounds i8, i8* %12, i64 32, !dbg !607
  %42 = bitcast i8* %41 to i8**, !dbg !607
  store i8* %40, i8** %42, align 8, !dbg !608, !tbaa !609
  %43 = tail call i8* @sdsempty() #8, !dbg !610
  %44 = getelementptr inbounds i8, i8* %12, i64 48, !dbg !611
  %45 = bitcast i8* %44 to i8**, !dbg !611
  store i8* %43, i8** %45, align 8, !dbg !612, !tbaa !613
  %46 = getelementptr inbounds i8, i8* %12, i64 56, !dbg !614
  %47 = bitcast i8* %46 to i64*, !dbg !614
  store i64 0, i64* %47, align 8, !dbg !615, !tbaa !616
  %48 = getelementptr inbounds i8, i8* %12, i64 96, !dbg !617
  %49 = bitcast i8* %48 to i32*, !dbg !617
  store i32 0, i32* %49, align 8, !dbg !618, !tbaa !619
  %50 = getelementptr inbounds i8, i8* %12, i64 64, !dbg !620
  %51 = bitcast i8* %50 to i32*, !dbg !620
  store i32 0, i32* %51, align 8, !dbg !621, !tbaa !622
  %52 = getelementptr inbounds i8, i8* %12, i64 72, !dbg !623
  %53 = bitcast i8* %52 to %struct.redisObject***, !dbg !623
  store %struct.redisObject** null, %struct.redisObject*** %53, align 8, !dbg !624, !tbaa !625
  %54 = getelementptr inbounds i8, i8* %12, i64 80, !dbg !626
  %55 = bitcast i8* %54 to <2 x %struct.redisCommand*>*, !dbg !627
  store <2 x %struct.redisCommand*> zeroinitializer, <2 x %struct.redisCommand*>* %55, align 8, !dbg !627, !tbaa !476
  %56 = getelementptr inbounds i8, i8* %12, i64 100, !dbg !628
  %57 = bitcast i8* %56 to i32*, !dbg !628
  store i32 0, i32* %57, align 4, !dbg !629, !tbaa !630
  %58 = getelementptr inbounds i8, i8* %12, i64 104, !dbg !631
  %59 = bitcast i8* %58 to i64*, !dbg !631
  store i64 -1, i64* %59, align 8, !dbg !632, !tbaa !633
  %60 = getelementptr inbounds i8, i8* %12, i64 128, !dbg !634
  %61 = bitcast i8* %60 to i64*, !dbg !634
  store i64 0, i64* %61, align 8, !dbg !635, !tbaa !636
  %62 = getelementptr inbounds i8, i8* %12, i64 160, !dbg !637
  %63 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !638, !tbaa !639
  %64 = getelementptr inbounds i8, i8* %12, i64 144, !dbg !640
  %65 = bitcast i8* %64 to i64*, !dbg !640
  store i64 %63, i64* %65, align 8, !dbg !641, !tbaa !642
  %66 = getelementptr inbounds i8, i8* %12, i64 136, !dbg !643
  %67 = bitcast i8* %66 to i64*, !dbg !643
  store i64 %63, i64* %67, align 8, !dbg !644, !tbaa !645
  %68 = bitcast i8* %62 to <4 x i32>*, !dbg !646
  store <4 x i32> zeroinitializer, <4 x i32>* %68, align 8, !dbg !646, !tbaa !549
  %69 = getelementptr inbounds i8, i8* %12, i64 208, !dbg !647
  %70 = bitcast i8* %69 to <2 x i64>*, !dbg !648
  store <2 x i64> zeroinitializer, <2 x i64>* %70, align 8, !dbg !648, !tbaa !649
  %71 = getelementptr inbounds i8, i8* %12, i64 224, !dbg !650
  %72 = bitcast i8* %71 to <2 x i64>*, !dbg !651
  store <2 x i64> zeroinitializer, <2 x i64>* %72, align 8, !dbg !651, !tbaa !649
  %73 = getelementptr inbounds i8, i8* %12, i64 292, !dbg !652
  %74 = bitcast i8* %73 to i32*, !dbg !652
  store i32 0, i32* %74, align 4, !dbg !653, !tbaa !654
  %75 = getelementptr inbounds i8, i8* %12, i64 296, !dbg !655
  store i8 0, i8* %75, align 8, !dbg !656, !tbaa !657
  %76 = getelementptr inbounds i8, i8* %12, i64 344, !dbg !658
  %77 = bitcast i8* %76 to i32*, !dbg !658
  store i32 0, i32* %77, align 8, !dbg !659, !tbaa !660
  %78 = tail call %struct.list* @listCreate() #8, !dbg !661
  %79 = getelementptr inbounds i8, i8* %12, i64 112, !dbg !662
  %80 = bitcast i8* %79 to %struct.list**, !dbg !662
  store %struct.list* %78, %struct.list** %80, align 8, !dbg !663, !tbaa !664
  %81 = getelementptr inbounds i8, i8* %12, i64 120, !dbg !665
  %82 = bitcast i8* %81 to i64*, !dbg !665
  store i64 0, i64* %82, align 8, !dbg !666, !tbaa !667
  %83 = getelementptr inbounds i8, i8* %12, i64 152, !dbg !668
  %84 = bitcast i8* %83 to i64*, !dbg !668
  store i64 0, i64* %84, align 8, !dbg !669, !tbaa !670
  %85 = getelementptr inbounds %struct.list, %struct.list* %78, i64 0, i32 3, !dbg !671
  store void (i8*)* @freeClientReplyValue, void (i8*)** %85, align 8, !dbg !671, !tbaa !672
  %86 = getelementptr inbounds %struct.list, %struct.list* %78, i64 0, i32 2, !dbg !673
  store i8* (i8*)* @dupClientReplyValue, i8* (i8*)** %86, align 8, !dbg !673, !tbaa !674
  %87 = getelementptr inbounds i8, i8* %12, i64 384, !dbg !675
  %88 = bitcast i8* %87 to i32*, !dbg !675
  store i32 0, i32* %88, align 8, !dbg !676, !tbaa !677
  %89 = getelementptr inbounds i8, i8* %12, i64 392, !dbg !678
  %90 = bitcast i8* %89 to i64*, !dbg !679
  store i64 0, i64* %90, align 8, !dbg !680, !tbaa !681
  %91 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @objectKeyHeapPointerValueDictType, i8* null) #8, !dbg !682
  %92 = getelementptr inbounds i8, i8* %12, i64 400, !dbg !683
  %93 = bitcast i8* %92 to %struct.dict**, !dbg !683
  store %struct.dict* %91, %struct.dict** %93, align 8, !dbg !684, !tbaa !685
  %94 = getelementptr inbounds i8, i8* %12, i64 408, !dbg !686
  %95 = bitcast i8* %94 to %struct.redisObject**, !dbg !686
  store %struct.redisObject* null, %struct.redisObject** %95, align 8, !dbg !687, !tbaa !688
  %96 = getelementptr inbounds i8, i8* %12, i64 424, !dbg !689
  %97 = bitcast i8* %96 to <2 x %struct.redisObject*>*, !dbg !690
  store <2 x %struct.redisObject*> zeroinitializer, <2 x %struct.redisObject*>* %97, align 8, !dbg !690, !tbaa !476
  %98 = getelementptr inbounds i8, i8* %12, i64 456, !dbg !691
  %99 = bitcast i8* %98 to i32*, !dbg !691
  store i32 0, i32* %99, align 8, !dbg !692, !tbaa !693
  %100 = getelementptr inbounds i8, i8* %12, i64 460, !dbg !694
  %101 = bitcast i8* %100 to i32*, !dbg !694
  store i32 0, i32* %101, align 4, !dbg !695, !tbaa !696
  %102 = getelementptr inbounds i8, i8* %12, i64 464, !dbg !697
  %103 = bitcast i8* %102 to i64*, !dbg !697
  store i64 0, i64* %103, align 8, !dbg !698, !tbaa !699
  %104 = getelementptr inbounds i8, i8* %12, i64 480, !dbg !700
  %105 = bitcast i8* %104 to i64*, !dbg !700
  store i64 0, i64* %105, align 8, !dbg !701, !tbaa !702
  %106 = tail call %struct.list* @listCreate() #8, !dbg !703
  %107 = getelementptr inbounds i8, i8* %12, i64 488, !dbg !704
  %108 = bitcast i8* %107 to %struct.list**, !dbg !704
  store %struct.list* %106, %struct.list** %108, align 8, !dbg !705, !tbaa !706
  %109 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @objectKeyPointerValueDictType, i8* null) #8, !dbg !707
  %110 = getelementptr inbounds i8, i8* %12, i64 496, !dbg !708
  %111 = bitcast i8* %110 to %struct.dict**, !dbg !708
  store %struct.dict* %109, %struct.dict** %111, align 8, !dbg !709, !tbaa !710
  %112 = tail call %struct.list* @listCreate() #8, !dbg !711
  %113 = getelementptr inbounds i8, i8* %12, i64 504, !dbg !712
  %114 = bitcast i8* %113 to %struct.list**, !dbg !712
  store %struct.list* %112, %struct.list** %114, align 8, !dbg !713, !tbaa !714
  %115 = getelementptr inbounds i8, i8* %12, i64 512, !dbg !715
  %116 = bitcast i8* %115 to i8**, !dbg !715
  store i8* null, i8** %116, align 8, !dbg !716, !tbaa !717
  %117 = getelementptr inbounds i8, i8* %12, i64 520, !dbg !718
  %118 = bitcast i8* %117 to %struct.listNode**, !dbg !718
  store %struct.listNode* null, %struct.listNode** %118, align 8, !dbg !719, !tbaa !455
  %119 = getelementptr inbounds %struct.list, %struct.list* %112, i64 0, i32 3, !dbg !720
  store void (i8*)* @decrRefCountVoid, void (i8*)** %119, align 8, !dbg !720, !tbaa !672
  %120 = getelementptr inbounds %struct.list, %struct.list* %112, i64 0, i32 4, !dbg !721
  store i32 (i8*, i8*)* @listMatchObjects, i32 (i8*, i8*)** %120, align 8, !dbg !721, !tbaa !722
  br i1 %14, label %121, label %134, !dbg !723

; <label>:121:                                    ; preds = %28
  %122 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !727, !tbaa !441
  %123 = tail call %struct.list* @listAddNodeTail(%struct.list* %122, i8* nonnull %12) #8, !dbg !728
  %124 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !729, !tbaa !441
  %125 = getelementptr inbounds %struct.list, %struct.list* %124, i64 0, i32 1, !dbg !729
  %126 = bitcast %struct.listNode** %125 to i64*, !dbg !729
  %127 = load i64, i64* %126, align 8, !dbg !729, !tbaa !451
  %128 = bitcast i8* %117 to i64*, !dbg !730
  store i64 %127, i64* %128, align 8, !dbg !730, !tbaa !455
  %129 = bitcast i64* %2 to i8*, !dbg !731
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %129) #5, !dbg !731
  %130 = load i64, i64* %31, align 8, !dbg !732, !tbaa !461
  %131 = tail call i64 @intrev64(i64 %130) #8, !dbg !732
  store i64 %131, i64* %2, align 8, !dbg !733, !tbaa !410
  %132 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 44), align 8, !dbg !734, !tbaa !464
  %133 = call i32 @raxInsert(%struct.rax* %132, i8* nonnull %129, i64 8, i8* nonnull %12, i8** null) #8, !dbg !735
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %129) #5, !dbg !736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br label %134, !dbg !737

; <label>:134:                                    ; preds = %121, %28
  call void @initClientMultiState(%struct.client* nonnull %13) #8, !dbg !738
  br label %135

; <label>:135:                                    ; preds = %134, %26
  %136 = phi %struct.client* [ null, %26 ], [ %13, %134 ], !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !740
  ret %struct.client* %136, !dbg !740
}

; Function Attrs: noredzone
declare dso_local i32 @anetNonBlock(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @anetEnableTcpNoDelay(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @anetKeepAlive(i8*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @aeCreateFileEvent(%struct.aeEventLoop*, i32, i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @readQueryFromClient(%struct.aeEventLoop* nocapture readnone, i32, i8*, i32) #0 !dbg !741 {
  %5 = bitcast i8* %2 to %struct.client*, !dbg !824
  %6 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !827
  %7 = bitcast i8* %6 to i32*, !dbg !827
  %8 = load i32, i32* %7, align 8, !dbg !827, !tbaa !619
  %9 = icmp eq i32 %8, 2, !dbg !828
  br i1 %9, label %10, label %57, !dbg !829

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds i8, i8* %2, i64 100, !dbg !830
  %12 = bitcast i8* %11 to i32*, !dbg !830
  %13 = load i32, i32* %12, align 4, !dbg !830, !tbaa !630
  %14 = icmp eq i32 %13, 0, !dbg !831
  br i1 %14, label %57, label %15, !dbg !832

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds i8, i8* %2, i64 104, !dbg !833
  %17 = bitcast i8* %16 to i64*, !dbg !833
  %18 = load i64, i64* %17, align 8, !dbg !833, !tbaa !633
  %19 = icmp sgt i64 %18, 32767, !dbg !834
  br i1 %19, label %20, label %57, !dbg !835

; <label>:20:                                     ; preds = %15
  %21 = add nsw i64 %18, 2, !dbg !836
  %22 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !837
  %23 = bitcast i8* %22 to i8**, !dbg !837
  %24 = load i8*, i8** %23, align 8, !dbg !837, !tbaa !609
  %25 = getelementptr inbounds i8, i8* %24, i64 -1, !dbg !847
  %26 = load i8, i8* %25, align 1, !dbg !847, !tbaa !657
  %27 = trunc i8 %26 to i3, !dbg !849
  switch i3 %27, label %49 [
    i3 0, label %28
    i3 1, label %31
    i3 2, label %35
    i3 3, label %40
    i3 -4, label %45
  ], !dbg !849

; <label>:28:                                     ; preds = %20
  %29 = lshr i8 %26, 3, !dbg !850
  %30 = zext i8 %29 to i64, !dbg !850
  br label %49, !dbg !852

; <label>:31:                                     ; preds = %20
  %32 = getelementptr inbounds i8, i8* %24, i64 -3, !dbg !853
  %33 = load i8, i8* %32, align 1, !dbg !854, !tbaa !657
  %34 = zext i8 %33 to i64, !dbg !853
  br label %49, !dbg !855

; <label>:35:                                     ; preds = %20
  %36 = getelementptr inbounds i8, i8* %24, i64 -5, !dbg !856
  %37 = bitcast i8* %36 to i16*, !dbg !857
  %38 = load i16, i16* %37, align 1, !dbg !857, !tbaa !858
  %39 = zext i16 %38 to i64, !dbg !856
  br label %49, !dbg !860

; <label>:40:                                     ; preds = %20
  %41 = getelementptr inbounds i8, i8* %24, i64 -9, !dbg !861
  %42 = bitcast i8* %41 to i32*, !dbg !862
  %43 = load i32, i32* %42, align 1, !dbg !862, !tbaa !549
  %44 = zext i32 %43 to i64, !dbg !861
  br label %49, !dbg !863

; <label>:45:                                     ; preds = %20
  %46 = getelementptr inbounds i8, i8* %24, i64 -17, !dbg !864
  %47 = bitcast i8* %46 to i64*, !dbg !865
  %48 = load i64, i64* %47, align 1, !dbg !865, !tbaa !410
  br label %49, !dbg !866

; <label>:49:                                     ; preds = %20, %28, %31, %35, %40, %45
  %50 = phi i64 [ %48, %45 ], [ %44, %40 ], [ %39, %35 ], [ %34, %31 ], [ %30, %28 ], [ 0, %20 ], !dbg !867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  %51 = sub i64 %21, %50, !dbg !869
  %52 = add i64 %51, -1, !dbg !871
  %53 = icmp ult i64 %52, 16383, !dbg !871
  %54 = shl i64 %51, 32, !dbg !871
  %55 = ashr exact i64 %54, 32, !dbg !871
  %56 = select i1 %53, i64 %55, i64 16384, !dbg !871
  br label %57, !dbg !871

; <label>:57:                                     ; preds = %49, %15, %10, %4
  %58 = phi i64 [ 16384, %15 ], [ 16384, %10 ], [ 16384, %4 ], [ %56, %49 ]
  %59 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !873
  %60 = bitcast i8* %59 to i8**, !dbg !873
  %61 = load i8*, i8** %60, align 8, !dbg !873, !tbaa !609
  %62 = getelementptr inbounds i8, i8* %61, i64 -1, !dbg !876
  %63 = load i8, i8* %62, align 1, !dbg !876, !tbaa !657
  %64 = trunc i8 %63 to i3, !dbg !878
  switch i3 %64, label %65 [
    i3 0, label %66
    i3 1, label %69
    i3 2, label %73
    i3 3, label %78
    i3 -4, label %83
  ], !dbg !878

; <label>:65:                                     ; preds = %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  br label %94, !dbg !881

; <label>:66:                                     ; preds = %57
  %67 = lshr i8 %63, 3, !dbg !882
  %68 = zext i8 %67 to i64, !dbg !882
  br label %87, !dbg !883

; <label>:69:                                     ; preds = %57
  %70 = getelementptr inbounds i8, i8* %61, i64 -3, !dbg !884
  %71 = load i8, i8* %70, align 1, !dbg !885, !tbaa !657
  %72 = zext i8 %71 to i64, !dbg !884
  br label %87, !dbg !886

; <label>:73:                                     ; preds = %57
  %74 = getelementptr inbounds i8, i8* %61, i64 -5, !dbg !887
  %75 = bitcast i8* %74 to i16*, !dbg !888
  %76 = load i16, i16* %75, align 1, !dbg !888, !tbaa !858
  %77 = zext i16 %76 to i64, !dbg !887
  br label %87, !dbg !889

; <label>:78:                                     ; preds = %57
  %79 = getelementptr inbounds i8, i8* %61, i64 -9, !dbg !890
  %80 = bitcast i8* %79 to i32*, !dbg !891
  %81 = load i32, i32* %80, align 1, !dbg !891, !tbaa !549
  %82 = zext i32 %81 to i64, !dbg !890
  br label %87, !dbg !892

; <label>:83:                                     ; preds = %57
  %84 = getelementptr inbounds i8, i8* %61, i64 -17, !dbg !893
  %85 = bitcast i8* %84 to i64*, !dbg !894
  %86 = load i64, i64* %85, align 1, !dbg !894, !tbaa !410
  br label %87, !dbg !895

; <label>:87:                                     ; preds = %66, %69, %73, %78, %83
  %88 = phi i64 [ %86, %83 ], [ %82, %78 ], [ %77, %73 ], [ %72, %69 ], [ %68, %66 ], !dbg !896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  %89 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !897
  %90 = bitcast i8* %89 to i64*, !dbg !897
  %91 = load i64, i64* %90, align 8, !dbg !897, !tbaa !616
  %92 = icmp ult i64 %91, %88, !dbg !899
  br i1 %92, label %93, label %94, !dbg !881

; <label>:93:                                     ; preds = %87
  store i64 %88, i64* %90, align 8, !dbg !900, !tbaa !616
  br label %94, !dbg !901

; <label>:94:                                     ; preds = %65, %93, %87
  %95 = phi i64 [ 0, %65 ], [ %88, %93 ], [ %88, %87 ]
  %96 = tail call i8* @sdsMakeRoomFor(i8* %61, i64 %58) #8, !dbg !902
  store i8* %96, i8** %60, align 8, !dbg !903, !tbaa !609
  %97 = getelementptr inbounds i8, i8* %96, i64 %95, !dbg !904
  %98 = tail call i64 @read(i32 %1, i8* %97, i64 %58) #8, !dbg !905
  %99 = trunc i64 %98 to i32, !dbg !905
  switch i32 %99, label %109 [
    i32 -1, label %100
    i32 0, label %108
  ], !dbg !907

; <label>:100:                                    ; preds = %94
  %101 = tail call i32* @__errno() #8, !dbg !908
  %102 = load i32, i32* %101, align 4, !dbg !908, !tbaa !549
  %103 = icmp eq i32 %102, 11, !dbg !912
  br i1 %103, label %196, label %104, !dbg !913

; <label>:104:                                    ; preds = %100
  %105 = tail call i32* @__errno() #8, !dbg !914
  %106 = load i32, i32* %105, align 4, !dbg !914, !tbaa !549
  %107 = tail call i8* @strerror(i32 %106) #8, !dbg !916
  tail call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i64 0, i64 0), i8* %107) #8, !dbg !917
  tail call void @freeClient(%struct.client* nonnull %5) #10, !dbg !918
  br label %196, !dbg !919

; <label>:108:                                    ; preds = %94
  tail call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i64 0, i64 0)) #8, !dbg !920
  tail call void @freeClient(%struct.client* nonnull %5) #10, !dbg !923
  br label %196, !dbg !924

; <label>:109:                                    ; preds = %94
  %110 = getelementptr inbounds i8, i8* %2, i64 160, !dbg !925
  %111 = bitcast i8* %110 to i32*, !dbg !925
  %112 = load i32, i32* %111, align 8, !dbg !925, !tbaa !927
  %113 = and i32 %112, 2, !dbg !928
  %114 = icmp eq i32 %113, 0, !dbg !928
  br i1 %114, label %115, label %118, !dbg !929

; <label>:115:                                    ; preds = %109
  %116 = shl i64 %98, 32, !dbg !930
  %117 = ashr exact i64 %116, 32, !dbg !930
  br label %127, !dbg !929

; <label>:118:                                    ; preds = %109
  %119 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !931
  %120 = bitcast i8* %119 to i8**, !dbg !931
  %121 = load i8*, i8** %120, align 8, !dbg !931, !tbaa !613
  %122 = load i8*, i8** %60, align 8, !dbg !933, !tbaa !609
  %123 = getelementptr inbounds i8, i8* %122, i64 %95, !dbg !934
  %124 = shl i64 %98, 32, !dbg !935
  %125 = ashr exact i64 %124, 32, !dbg !935
  %126 = tail call i8* @sdscatlen(i8* %121, i8* %123, i64 %125) #8, !dbg !936
  store i8* %126, i8** %120, align 8, !dbg !937, !tbaa !613
  br label %127, !dbg !938

; <label>:127:                                    ; preds = %115, %118
  %128 = phi i64 [ %117, %115 ], [ %125, %118 ], !dbg !930
  %129 = load i8*, i8** %60, align 8, !dbg !939, !tbaa !609
  tail call void @sdsIncrLen(i8* %129, i64 %128) #8, !dbg !940
  %130 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !941, !tbaa !639
  %131 = getelementptr inbounds i8, i8* %2, i64 144, !dbg !942
  %132 = bitcast i8* %131 to i64*, !dbg !942
  store i64 %130, i64* %132, align 8, !dbg !943, !tbaa !642
  %133 = load i32, i32* %111, align 8, !dbg !944, !tbaa !927
  %134 = and i32 %133, 2, !dbg !946
  %135 = icmp eq i32 %134, 0, !dbg !946
  br i1 %135, label %141, label %136, !dbg !947

; <label>:136:                                    ; preds = %127
  %137 = getelementptr inbounds i8, i8* %2, i64 208, !dbg !948
  %138 = bitcast i8* %137 to i64*, !dbg !948
  %139 = load i64, i64* %138, align 8, !dbg !949, !tbaa !950
  %140 = add nsw i64 %139, %128, !dbg !949
  store i64 %140, i64* %138, align 8, !dbg !949, !tbaa !950
  br label %141, !dbg !951

; <label>:141:                                    ; preds = %127, %136
  %142 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 95), align 8, !dbg !952, !tbaa !953
  %143 = add nsw i64 %142, %128, !dbg !952
  store i64 %143, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 95), align 8, !dbg !952, !tbaa !953
  %144 = load i8*, i8** %60, align 8, !dbg !954, !tbaa !609
  %145 = getelementptr inbounds i8, i8* %144, i64 -1, !dbg !957
  %146 = load i8, i8* %145, align 1, !dbg !957, !tbaa !657
  %147 = trunc i8 %146 to i3, !dbg !959
  switch i3 %147, label %148 [
    i3 0, label %149
    i3 1, label %152
    i3 2, label %156
    i3 3, label %161
    i3 -4, label %166
  ], !dbg !959

; <label>:148:                                    ; preds = %141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  br label %180, !dbg !961

; <label>:149:                                    ; preds = %141
  %150 = lshr i8 %146, 3, !dbg !962
  %151 = zext i8 %150 to i64, !dbg !962
  br label %170, !dbg !963

; <label>:152:                                    ; preds = %141
  %153 = getelementptr inbounds i8, i8* %144, i64 -3, !dbg !964
  %154 = load i8, i8* %153, align 1, !dbg !965, !tbaa !657
  %155 = zext i8 %154 to i64, !dbg !964
  br label %170, !dbg !966

; <label>:156:                                    ; preds = %141
  %157 = getelementptr inbounds i8, i8* %144, i64 -5, !dbg !967
  %158 = bitcast i8* %157 to i16*, !dbg !968
  %159 = load i16, i16* %158, align 1, !dbg !968, !tbaa !858
  %160 = zext i16 %159 to i64, !dbg !967
  br label %170, !dbg !969

; <label>:161:                                    ; preds = %141
  %162 = getelementptr inbounds i8, i8* %144, i64 -9, !dbg !970
  %163 = bitcast i8* %162 to i32*, !dbg !971
  %164 = load i32, i32* %163, align 1, !dbg !971, !tbaa !549
  %165 = zext i32 %164 to i64, !dbg !970
  br label %170, !dbg !972

; <label>:166:                                    ; preds = %141
  %167 = getelementptr inbounds i8, i8* %144, i64 -17, !dbg !973
  %168 = bitcast i8* %167 to i64*, !dbg !974
  %169 = load i64, i64* %168, align 1, !dbg !974, !tbaa !410
  br label %170, !dbg !975

; <label>:170:                                    ; preds = %149, %152, %156, %161, %166
  %171 = phi i64 [ %169, %166 ], [ %165, %161 ], [ %160, %156 ], [ %155, %152 ], [ %151, %149 ], !dbg !976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  %172 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 111), align 8, !dbg !977, !tbaa !978
  %173 = icmp ugt i64 %171, %172, !dbg !979
  br i1 %173, label %174, label %180, !dbg !961

; <label>:174:                                    ; preds = %170
  %175 = tail call i8* @sdsempty() #8, !dbg !980
  %176 = tail call i8* @catClientInfoString(i8* %175, %struct.client* nonnull %5) #10, !dbg !981
  %177 = tail call i8* @sdsempty() #8, !dbg !983
  %178 = load i8*, i8** %60, align 8, !dbg !985, !tbaa !609
  %179 = tail call i8* @sdscatrepr(i8* %177, i8* %178, i64 64) #8, !dbg !986
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.46, i64 0, i64 0), i8* %176, i8* %179) #8, !dbg !987
  tail call void @sdsfree(i8* %176) #8, !dbg !988
  tail call void @sdsfree(i8* %179) #8, !dbg !989
  tail call void @freeClient(%struct.client* nonnull %5) #10, !dbg !990
  br label %196

; <label>:180:                                    ; preds = %148, %170
  br i1 %135, label %181, label %182, !dbg !1000

; <label>:181:                                    ; preds = %180
  tail call void @processInputBuffer(%struct.client* nonnull %5) #8, !dbg !1001
  br label %195, !dbg !1003

; <label>:182:                                    ; preds = %180
  %183 = getelementptr inbounds i8, i8* %2, i64 216, !dbg !1004
  %184 = bitcast i8* %183 to i64*, !dbg !1004
  %185 = load i64, i64* %184, align 8, !dbg !1004, !tbaa !1005
  tail call void @processInputBuffer(%struct.client* nonnull %5) #8, !dbg !1007
  %186 = load i64, i64* %184, align 8, !dbg !1008, !tbaa !1005
  %187 = sub i64 %186, %185, !dbg !1009
  %188 = icmp eq i64 %187, 0, !dbg !1011
  br i1 %188, label %195, label %189, !dbg !1013

; <label>:189:                                    ; preds = %182
  %190 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1014, !tbaa !1016
  %191 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !1017
  %192 = bitcast i8* %191 to i8**, !dbg !1017
  %193 = load i8*, i8** %192, align 8, !dbg !1017, !tbaa !613
  tail call void @replicationFeedSlavesFromMasterStream(%struct.list* %190, i8* %193, i64 %187) #8, !dbg !1018
  %194 = load i8*, i8** %192, align 8, !dbg !1019, !tbaa !613
  tail call void @sdsrange(i8* %194, i64 %187, i64 -1) #8, !dbg !1020
  br label %195, !dbg !1021

; <label>:195:                                    ; preds = %181, %182, %189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  br label %196, !dbg !1023

; <label>:196:                                    ; preds = %100, %195, %174, %108, %104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1023
  ret void, !dbg !1023
}

; Function Attrs: noredzone
declare dso_local i32 @close(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @selectDb(%struct.client*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.list* @listCreate() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.dict* @dictCreate(%struct.dictType*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCountVoid(i8*) #3

; Function Attrs: noredzone
declare dso_local void @initClientMultiState(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @clientInstallWriteHandler(%struct.client*) local_unnamed_addr #0 !dbg !1024 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1028
  %3 = load i32, i32* %2, align 8, !dbg !1028, !tbaa !927
  %4 = and i32 %3, 2097152, !dbg !1030
  %5 = icmp eq i32 %4, 0, !dbg !1030
  br i1 %5, label %6, label %18, !dbg !1031

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1032
  %8 = load i32, i32* %7, align 8, !dbg !1032, !tbaa !1033
  switch i32 %8, label %18 [
    i32 0, label %13
    i32 9, label %9
  ], !dbg !1034

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1035
  %11 = load i32, i32* %10, align 4, !dbg !1035, !tbaa !1036
  %12 = icmp eq i32 %11, 0, !dbg !1037
  br i1 %12, label %13, label %18, !dbg !1038

; <label>:13:                                     ; preds = %6, %9
  %14 = or i32 %3, 2097152, !dbg !1039
  store i32 %14, i32* %2, align 8, !dbg !1039, !tbaa !927
  %15 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !1041, !tbaa !1042
  %16 = bitcast %struct.client* %0 to i8*, !dbg !1043
  %17 = tail call %struct.list* @listAddNodeHead(%struct.list* %15, i8* %16) #8, !dbg !1044
  br label %18, !dbg !1045

; <label>:18:                                     ; preds = %6, %9, %1, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  ret void, !dbg !1046
}

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeHead(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @prepareClientToWrite(%struct.client*) local_unnamed_addr #0 !dbg !1047 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1053
  %3 = load i32, i32* %2, align 8, !dbg !1053, !tbaa !927
  %4 = and i32 %3, 134217984, !dbg !1055
  %5 = icmp eq i32 %4, 0, !dbg !1055
  br i1 %5, label %6, label %43, !dbg !1056

; <label>:6:                                      ; preds = %1
  %7 = and i32 %3, 20971520, !dbg !1057
  %8 = icmp ne i32 %7, 0, !dbg !1057
  %9 = and i32 %3, 8194, !dbg !1059
  %10 = icmp eq i32 %9, 2, !dbg !1059
  %11 = or i1 %8, %10, !dbg !1061
  br i1 %11, label %43, label %12, !dbg !1061

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1062
  %14 = load i32, i32* %13, align 8, !dbg !1062, !tbaa !596
  %15 = icmp slt i32 %14, 1, !dbg !1064
  br i1 %15, label %43, label %16, !dbg !1065

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1072
  %18 = load i32, i32* %17, align 8, !dbg !1072, !tbaa !602
  %19 = icmp eq i32 %18, 0, !dbg !1073
  br i1 %19, label %21, label %20, !dbg !1074

; <label>:20:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1075
  br label %43, !dbg !1076

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1077
  %23 = load %struct.list*, %struct.list** %22, align 8, !dbg !1077, !tbaa !664
  %24 = getelementptr inbounds %struct.list, %struct.list* %23, i64 0, i32 5, !dbg !1077
  %25 = load i64, i64* %24, align 8, !dbg !1077, !tbaa !1078
  %26 = icmp eq i64 %25, 0, !dbg !1074
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1075
  br i1 %26, label %27, label %43, !dbg !1076

; <label>:27:                                     ; preds = %21
  %28 = and i32 %3, 2097152, !dbg !1081
  %29 = icmp eq i32 %28, 0, !dbg !1081
  br i1 %29, label %30, label %42, !dbg !1082

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1083
  %32 = load i32, i32* %31, align 8, !dbg !1083, !tbaa !1033
  switch i32 %32, label %42 [
    i32 0, label %37
    i32 9, label %33
  ], !dbg !1084

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1085
  %35 = load i32, i32* %34, align 4, !dbg !1085, !tbaa !1036
  %36 = icmp eq i32 %35, 0, !dbg !1086
  br i1 %36, label %37, label %42, !dbg !1087

; <label>:37:                                     ; preds = %33, %30
  %38 = or i32 %3, 2097152, !dbg !1088
  store i32 %38, i32* %2, align 8, !dbg !1088, !tbaa !927
  %39 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !1089, !tbaa !1042
  %40 = bitcast %struct.client* %0 to i8*, !dbg !1090
  %41 = tail call %struct.list* @listAddNodeHead(%struct.list* %39, i8* %40) #8, !dbg !1091
  br label %42, !dbg !1092

; <label>:42:                                     ; preds = %27, %30, %33, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1093
  br label %43, !dbg !1094

; <label>:43:                                     ; preds = %6, %20, %42, %21, %12, %1
  %44 = phi i32 [ 0, %1 ], [ -1, %6 ], [ -1, %12 ], [ 0, %21 ], [ 0, %42 ], [ 0, %20 ], !dbg !1095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1096
  ret i32 %44, !dbg !1096
}

; Function Attrs: noredzone nounwind
define dso_local i32 @clientHasPendingReplies(%struct.client* nocapture readonly) local_unnamed_addr #0 !dbg !1067 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1098
  %3 = load i32, i32* %2, align 8, !dbg !1098, !tbaa !602
  %4 = icmp eq i32 %3, 0, !dbg !1099
  br i1 %4, label %5, label %12, !dbg !1100

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1101
  %7 = load %struct.list*, %struct.list** %6, align 8, !dbg !1101, !tbaa !664
  %8 = getelementptr inbounds %struct.list, %struct.list* %7, i64 0, i32 5, !dbg !1101
  %9 = load i64, i64* %8, align 8, !dbg !1101, !tbaa !1078
  %10 = icmp ne i64 %9, 0, !dbg !1100
  %11 = zext i1 %10 to i32, !dbg !1100
  br label %12, !dbg !1100

; <label>:12:                                     ; preds = %1, %5
  %13 = phi i32 [ 1, %1 ], [ %11, %5 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1102
  ret i32 %13, !dbg !1102
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_addReplyToBuffer(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !1103 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1114
  %5 = load i32, i32* %4, align 8, !dbg !1114, !tbaa !602
  %6 = sext i32 %5 to i64, !dbg !1115
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1116
  %8 = load i32, i32* %7, align 8, !dbg !1116, !tbaa !927
  %9 = and i32 %8, 64, !dbg !1118
  %10 = icmp eq i32 %9, 0, !dbg !1118
  br i1 %10, label %11, label %26, !dbg !1119

; <label>:11:                                     ; preds = %3
  %12 = sub nsw i64 16384, %6, !dbg !1120
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1122
  %14 = load %struct.list*, %struct.list** %13, align 8, !dbg !1122, !tbaa !664
  %15 = getelementptr inbounds %struct.list, %struct.list* %14, i64 0, i32 5, !dbg !1122
  %16 = load i64, i64* %15, align 8, !dbg !1122, !tbaa !1078
  %17 = icmp ne i64 %16, 0, !dbg !1124
  %18 = icmp ult i64 %12, %2, !dbg !1125
  %19 = or i1 %18, %17, !dbg !1127
  br i1 %19, label %26, label %20, !dbg !1127

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 48, i64 %6, !dbg !1128
  %22 = tail call i8* @memcpy(i8* nonnull %21, i8* %1, i64 %2) #8, !dbg !1129
  %23 = load i32, i32* %4, align 8, !dbg !1130, !tbaa !602
  %24 = trunc i64 %2 to i32, !dbg !1130
  %25 = add i32 %23, %24, !dbg !1130
  store i32 %25, i32* %4, align 8, !dbg !1130, !tbaa !602
  br label %26, !dbg !1131

; <label>:26:                                     ; preds = %11, %3, %20
  %27 = phi i32 [ 0, %20 ], [ 0, %3 ], [ -1, %11 ], !dbg !1132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1133
  ret i32 %27, !dbg !1133
}

; Function Attrs: noredzone nounwind
define dso_local void @_addReplyStringToList(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !1134 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1153
  %5 = load i32, i32* %4, align 8, !dbg !1153, !tbaa !927
  %6 = and i32 %5, 64, !dbg !1155
  %7 = icmp eq i32 %6, 0, !dbg !1155
  br i1 %7, label %8, label %56, !dbg !1156

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1157
  %10 = load %struct.list*, %struct.list** %9, align 8, !dbg !1157, !tbaa !664
  %11 = getelementptr inbounds %struct.list, %struct.list* %10, i64 0, i32 1, !dbg !1157
  %12 = load %struct.listNode*, %struct.listNode** %11, align 8, !dbg !1157, !tbaa !451
  %13 = icmp eq %struct.listNode* %12, null, !dbg !1159
  br i1 %13, label %33, label %14, !dbg !1159

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.listNode, %struct.listNode* %12, i64 0, i32 2, !dbg !1160
  %16 = bitcast i8** %15 to %struct.clientReplyBlock**, !dbg !1160
  %17 = load %struct.clientReplyBlock*, %struct.clientReplyBlock** %16, align 8, !dbg !1160, !tbaa !1161
  %18 = icmp eq %struct.clientReplyBlock* %17, null, !dbg !1164
  br i1 %18, label %33, label %19, !dbg !1165

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %17, i64 0, i32 0, !dbg !1166
  %21 = load i64, i64* %20, align 8, !dbg !1166, !tbaa !410
  %22 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %17, i64 0, i32 1, !dbg !1167
  %23 = load i64, i64* %22, align 8, !dbg !1167, !tbaa !410
  %24 = sub i64 %21, %23, !dbg !1168
  %25 = icmp ult i64 %24, %2, !dbg !1170
  %26 = select i1 %25, i64 %24, i64 %2, !dbg !1171
  %27 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %17, i64 0, i32 2, i64 %23, !dbg !1173
  %28 = tail call i8* @memcpy(i8* nonnull %27, i8* %1, i64 %26) #8, !dbg !1174
  %29 = load i64, i64* %22, align 8, !dbg !1175, !tbaa !410
  %30 = add i64 %26, %29, !dbg !1175
  store i64 %30, i64* %22, align 8, !dbg !1175, !tbaa !410
  %31 = getelementptr inbounds i8, i8* %1, i64 %26, !dbg !1176
  %32 = sub i64 %2, %26, !dbg !1177
  br label %33, !dbg !1178

; <label>:33:                                     ; preds = %8, %14, %19
  %34 = phi i64 [ %32, %19 ], [ %2, %14 ], [ %2, %8 ]
  %35 = phi i8* [ %31, %19 ], [ %1, %14 ], [ %1, %8 ]
  %36 = icmp eq i64 %34, 0, !dbg !1179
  br i1 %36, label %55, label %37, !dbg !1180

; <label>:37:                                     ; preds = %33
  %38 = icmp ugt i64 %34, 16384, !dbg !1181
  %39 = select i1 %38, i64 %34, i64 16384, !dbg !1181
  %40 = add i64 %39, 16, !dbg !1183
  %41 = tail call i8* @zmalloc(i64 %40) #8, !dbg !1184
  %42 = tail call i64 @zmalloc_usable(i8* %41) #8, !dbg !1185
  %43 = add i64 %42, -16, !dbg !1186
  %44 = bitcast i8* %41 to i64*, !dbg !1187
  store i64 %43, i64* %44, align 8, !dbg !1188, !tbaa !410
  %45 = getelementptr inbounds i8, i8* %41, i64 8, !dbg !1189
  %46 = bitcast i8* %45 to i64*, !dbg !1189
  store i64 %34, i64* %46, align 8, !dbg !1190, !tbaa !410
  %47 = getelementptr inbounds i8, i8* %41, i64 16, !dbg !1191
  %48 = tail call i8* @memcpy(i8* nonnull %47, i8* %35, i64 %34) #8, !dbg !1192
  %49 = load %struct.list*, %struct.list** %9, align 8, !dbg !1193, !tbaa !664
  %50 = tail call %struct.list* @listAddNodeTail(%struct.list* %49, i8* %41) #8, !dbg !1194
  %51 = load i64, i64* %44, align 8, !dbg !1195, !tbaa !410
  %52 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !1196
  %53 = load i64, i64* %52, align 8, !dbg !1197, !tbaa !667
  %54 = add i64 %53, %51, !dbg !1197
  store i64 %54, i64* %52, align 8, !dbg !1197, !tbaa !667
  br label %55, !dbg !1198

; <label>:55:                                     ; preds = %33, %37
  tail call void @asyncCloseClientOnOutputBufferLimitReached(%struct.client* nonnull %0) #10, !dbg !1199
  br label %56, !dbg !1200

; <label>:56:                                     ; preds = %3, %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  ret void, !dbg !1200
}

; Function Attrs: noredzone
declare dso_local i64 @zmalloc_usable(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @asyncCloseClientOnOutputBufferLimitReached(%struct.client*) local_unnamed_addr #0 !dbg !1201 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1208
  %3 = load i32, i32* %2, align 8, !dbg !1208, !tbaa !596
  %4 = icmp eq i32 %3, -1, !dbg !1210
  br i1 %4, label %76, label %5, !dbg !1211

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !1212
  %7 = load i64, i64* %6, align 8, !dbg !1212, !tbaa !667
  %8 = icmp ult i64 %7, -65537, !dbg !1212
  br i1 %8, label %10, label %9, !dbg !1212

; <label>:9:                                      ; preds = %5
  tail call void @_serverAssert(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.95, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 2130) #8, !dbg !1212
  tail call void @_exit(i32 1) #9, !dbg !1212
  unreachable, !dbg !1212

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i64 %7, 0, !dbg !1213
  br i1 %11, label %76, label %12, !dbg !1215

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1216
  %14 = load i32, i32* %13, align 8, !dbg !1216, !tbaa !927
  %15 = and i32 %14, 1024, !dbg !1217
  %16 = icmp eq i32 %15, 0, !dbg !1217
  br i1 %16, label %17, label %76, !dbg !1218

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1244
  %19 = load %struct.list*, %struct.list** %18, align 8, !dbg !1244, !tbaa !664
  %20 = getelementptr inbounds %struct.list, %struct.list* %19, i64 0, i32 5, !dbg !1244
  %21 = load i64, i64* %20, align 8, !dbg !1244, !tbaa !1078
  %22 = mul i64 %21, 40, !dbg !1245
  %23 = add i64 %22, %7, !dbg !1246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  %24 = and i32 %14, 2, !dbg !1254
  %25 = icmp eq i32 %24, 0, !dbg !1254
  br i1 %25, label %26, label %33, !dbg !1256

; <label>:26:                                     ; preds = %17
  %27 = and i32 %14, 5, !dbg !1257
  %28 = icmp eq i32 %27, 1, !dbg !1257
  %29 = lshr i32 %14, 17, !dbg !1259
  %30 = and i32 %29, 2, !dbg !1259
  %31 = select i1 %28, i32 1, i32 %30, !dbg !1257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1260
  %32 = zext i32 %31 to i64, !dbg !1262
  br label %34, !dbg !1262

; <label>:33:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1260
  br label %34, !dbg !1262

; <label>:34:                                     ; preds = %33, %26
  %35 = phi i64 [ 0, %33 ], [ %32, %26 ]
  %36 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 116, i64 %35, i32 0, !dbg !1263
  %37 = load i64, i64* %36, align 8, !dbg !1263, !tbaa !1265
  %38 = add i64 %37, -1, !dbg !1267
  %39 = icmp ult i64 %38, %23, !dbg !1267
  %40 = zext i1 %39 to i32, !dbg !1267
  %41 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 116, i64 %35, i32 1, !dbg !1268
  %42 = load i64, i64* %41, align 8, !dbg !1268, !tbaa !1270
  %43 = add i64 %42, -1, !dbg !1271
  %44 = icmp uge i64 %43, %23, !dbg !1271
  %45 = xor i1 %44, true, !dbg !1271
  %46 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 20, !dbg !1272
  br i1 %44, label %59, label %47, !dbg !1274

; <label>:47:                                     ; preds = %34
  %48 = load i64, i64* %46, align 8, !dbg !1275, !tbaa !670
  %49 = icmp eq i64 %48, 0, !dbg !1276
  %50 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !1277, !tbaa !639
  br i1 %49, label %51, label %52, !dbg !1278

; <label>:51:                                     ; preds = %47
  store i64 %50, i64* %46, align 8, !dbg !1279, !tbaa !670
  br label %60, !dbg !1281

; <label>:52:                                     ; preds = %47
  %53 = sub nsw i64 %50, %48, !dbg !1282
  %54 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 116, i64 %35, i32 2, !dbg !1284
  %55 = load i64, i64* %54, align 8, !dbg !1284, !tbaa !1286
  %56 = icmp sgt i64 %53, %55, !dbg !1287
  %57 = and i1 %56, %45, !dbg !1288
  %58 = zext i1 %57 to i32, !dbg !1288
  br label %60

; <label>:59:                                     ; preds = %34
  store i64 0, i64* %46, align 8, !dbg !1289, !tbaa !670
  br label %60

; <label>:60:                                     ; preds = %51, %52, %59
  %61 = phi i32 [ 0, %51 ], [ %58, %52 ], [ 0, %59 ], !dbg !1290
  %62 = or i32 %61, %40, !dbg !1291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1292
  %63 = icmp eq i32 %62, 0, !dbg !1293
  br i1 %63, label %76, label %64, !dbg !1294

; <label>:64:                                     ; preds = %60
  %65 = tail call i8* @sdsempty() #8, !dbg !1295
  %66 = tail call i8* @catClientInfoString(i8* %65, %struct.client* nonnull %0) #10, !dbg !1296
  %67 = load i32, i32* %13, align 8, !dbg !1303, !tbaa !927
  %68 = and i32 %67, 1280, !dbg !1305
  %69 = icmp eq i32 %68, 0, !dbg !1305
  br i1 %69, label %70, label %75, !dbg !1305

; <label>:70:                                     ; preds = %64
  %71 = or i32 %67, 1024, !dbg !1306
  store i32 %71, i32* %13, align 8, !dbg !1306, !tbaa !927
  %72 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !1307, !tbaa !1308
  %73 = bitcast %struct.client* %0 to i8*, !dbg !1309
  %74 = tail call %struct.list* @listAddNodeTail(%struct.list* %72, i8* %73) #8, !dbg !1310
  br label %75, !dbg !1311

; <label>:75:                                     ; preds = %64, %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1311
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.96, i64 0, i64 0), i8* %66) #8, !dbg !1312
  tail call void @sdsfree(i8* %66) #8, !dbg !1313
  br label %76, !dbg !1314

; <label>:76:                                     ; preds = %60, %12, %10, %1, %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1315
  ret void, !dbg !1315
}

; Function Attrs: noredzone nounwind
define dso_local void @addReply(%struct.client*, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1316 {
  %3 = alloca [32 x i8], align 16
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1335
  %5 = load i32, i32* %4, align 8, !dbg !1335, !tbaa !927
  %6 = and i32 %5, 134217984, !dbg !1336
  %7 = icmp eq i32 %6, 0, !dbg !1336
  br i1 %7, label %8, label %46, !dbg !1337

; <label>:8:                                      ; preds = %2
  %9 = and i32 %5, 20971520, !dbg !1338
  %10 = icmp ne i32 %9, 0, !dbg !1338
  %11 = and i32 %5, 8194, !dbg !1339
  %12 = icmp eq i32 %11, 2, !dbg !1339
  %13 = or i1 %10, %12, !dbg !1340
  br i1 %13, label %45, label %14, !dbg !1340

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1341
  %16 = load i32, i32* %15, align 8, !dbg !1341, !tbaa !596
  %17 = icmp slt i32 %16, 1, !dbg !1342
  br i1 %17, label %45, label %18, !dbg !1343

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1346
  %20 = load i32, i32* %19, align 8, !dbg !1346, !tbaa !602
  %21 = icmp eq i32 %20, 0, !dbg !1347
  br i1 %21, label %23, label %22, !dbg !1348

; <label>:22:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  br label %46, !dbg !1350

; <label>:23:                                     ; preds = %18
  %24 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1351
  %25 = load %struct.list*, %struct.list** %24, align 8, !dbg !1351, !tbaa !664
  %26 = getelementptr inbounds %struct.list, %struct.list* %25, i64 0, i32 5, !dbg !1351
  %27 = load i64, i64* %26, align 8, !dbg !1351, !tbaa !1078
  %28 = icmp eq i64 %27, 0, !dbg !1348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  br i1 %28, label %29, label %46, !dbg !1350

; <label>:29:                                     ; preds = %23
  %30 = and i32 %5, 2097152, !dbg !1354
  %31 = icmp eq i32 %30, 0, !dbg !1354
  br i1 %31, label %32, label %44, !dbg !1355

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1356
  %34 = load i32, i32* %33, align 8, !dbg !1356, !tbaa !1033
  switch i32 %34, label %44 [
    i32 0, label %39
    i32 9, label %35
  ], !dbg !1357

; <label>:35:                                     ; preds = %32
  %36 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1358
  %37 = load i32, i32* %36, align 4, !dbg !1358, !tbaa !1036
  %38 = icmp eq i32 %37, 0, !dbg !1359
  br i1 %38, label %39, label %44, !dbg !1360

; <label>:39:                                     ; preds = %35, %32
  %40 = or i32 %5, 2097152, !dbg !1361
  store i32 %40, i32* %4, align 8, !dbg !1361, !tbaa !927
  %41 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !1362, !tbaa !1042
  %42 = bitcast %struct.client* %0 to i8*, !dbg !1363
  %43 = tail call %struct.list* @listAddNodeHead(%struct.list* %41, i8* %42) #8, !dbg !1364
  br label %44, !dbg !1365

; <label>:44:                                     ; preds = %39, %35, %32, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  br label %46, !dbg !1367

; <label>:45:                                     ; preds = %8, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1368
  br label %157

; <label>:46:                                     ; preds = %2, %23, %44, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1368
  %47 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !1369
  %48 = load i32, i32* %47, align 8, !dbg !1369
  %49 = lshr i32 %48, 4, !dbg !1369
  %50 = trunc i32 %49 to i4, !dbg !1369
  switch i4 %50, label %156 [
    i4 0, label %51
    i4 -8, label %51
    i4 1, label %126
  ], !dbg !1369

; <label>:51:                                     ; preds = %46, %46
  %52 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1370
  %53 = load i8*, i8** %52, align 8, !dbg !1370, !tbaa !376
  %54 = getelementptr inbounds i8, i8* %53, i64 -1, !dbg !1375
  %55 = load i8, i8* %54, align 1, !dbg !1375, !tbaa !657
  %56 = trunc i8 %55 to i3, !dbg !1377
  switch i3 %56, label %78 [
    i3 0, label %57
    i3 1, label %60
    i3 2, label %64
    i3 3, label %69
    i3 -4, label %74
  ], !dbg !1377

; <label>:57:                                     ; preds = %51
  %58 = lshr i8 %55, 3, !dbg !1378
  %59 = zext i8 %58 to i64, !dbg !1378
  br label %78, !dbg !1379

; <label>:60:                                     ; preds = %51
  %61 = getelementptr inbounds i8, i8* %53, i64 -3, !dbg !1380
  %62 = load i8, i8* %61, align 1, !dbg !1381, !tbaa !657
  %63 = zext i8 %62 to i64, !dbg !1380
  br label %78, !dbg !1382

; <label>:64:                                     ; preds = %51
  %65 = getelementptr inbounds i8, i8* %53, i64 -5, !dbg !1383
  %66 = bitcast i8* %65 to i16*, !dbg !1384
  %67 = load i16, i16* %66, align 1, !dbg !1384, !tbaa !858
  %68 = zext i16 %67 to i64, !dbg !1383
  br label %78, !dbg !1385

; <label>:69:                                     ; preds = %51
  %70 = getelementptr inbounds i8, i8* %53, i64 -9, !dbg !1386
  %71 = bitcast i8* %70 to i32*, !dbg !1387
  %72 = load i32, i32* %71, align 1, !dbg !1387, !tbaa !549
  %73 = zext i32 %72 to i64, !dbg !1386
  br label %78, !dbg !1388

; <label>:74:                                     ; preds = %51
  %75 = getelementptr inbounds i8, i8* %53, i64 -17, !dbg !1389
  %76 = bitcast i8* %75 to i64*, !dbg !1390
  %77 = load i64, i64* %76, align 1, !dbg !1390, !tbaa !410
  br label %78, !dbg !1391

; <label>:78:                                     ; preds = %51, %57, %60, %64, %69, %74
  %79 = phi i64 [ %77, %74 ], [ %73, %69 ], [ %68, %64 ], [ %63, %60 ], [ %59, %57 ], [ 0, %51 ], !dbg !1392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1393
  %80 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1398
  %81 = load i32, i32* %80, align 8, !dbg !1398, !tbaa !602
  %82 = sext i32 %81 to i64, !dbg !1399
  %83 = load i32, i32* %4, align 8, !dbg !1400, !tbaa !927
  %84 = and i32 %83, 64, !dbg !1401
  %85 = icmp eq i32 %84, 0, !dbg !1401
  br i1 %85, label %86, label %101, !dbg !1402

; <label>:86:                                     ; preds = %78
  %87 = sub nsw i64 16384, %82, !dbg !1403
  %88 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1405
  %89 = load %struct.list*, %struct.list** %88, align 8, !dbg !1405, !tbaa !664
  %90 = getelementptr inbounds %struct.list, %struct.list* %89, i64 0, i32 5, !dbg !1405
  %91 = load i64, i64* %90, align 8, !dbg !1405, !tbaa !1078
  %92 = icmp ne i64 %91, 0, !dbg !1406
  %93 = icmp ult i64 %87, %79, !dbg !1407
  %94 = or i1 %93, %92, !dbg !1408
  br i1 %94, label %102, label %95, !dbg !1408

; <label>:95:                                     ; preds = %86
  %96 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 48, i64 %82, !dbg !1409
  %97 = tail call i8* @memcpy(i8* nonnull %96, i8* %53, i64 %79) #8, !dbg !1410
  %98 = load i32, i32* %80, align 8, !dbg !1411, !tbaa !602
  %99 = trunc i64 %79 to i32, !dbg !1411
  %100 = add i32 %98, %99, !dbg !1411
  store i32 %100, i32* %80, align 8, !dbg !1411, !tbaa !602
  br label %101, !dbg !1412

; <label>:101:                                    ; preds = %95, %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1413
  br label %157, !dbg !1414

; <label>:102:                                    ; preds = %86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1413
  switch i3 %56, label %124 [
    i3 0, label %103
    i3 1, label %106
    i3 2, label %110
    i3 3, label %115
    i3 -4, label %120
  ], !dbg !1418

; <label>:103:                                    ; preds = %102
  %104 = lshr i8 %55, 3, !dbg !1419
  %105 = zext i8 %104 to i64, !dbg !1419
  br label %124, !dbg !1420

; <label>:106:                                    ; preds = %102
  %107 = getelementptr inbounds i8, i8* %53, i64 -3, !dbg !1421
  %108 = load i8, i8* %107, align 1, !dbg !1422, !tbaa !657
  %109 = zext i8 %108 to i64, !dbg !1421
  br label %124, !dbg !1423

; <label>:110:                                    ; preds = %102
  %111 = getelementptr inbounds i8, i8* %53, i64 -5, !dbg !1424
  %112 = bitcast i8* %111 to i16*, !dbg !1425
  %113 = load i16, i16* %112, align 1, !dbg !1425, !tbaa !858
  %114 = zext i16 %113 to i64, !dbg !1424
  br label %124, !dbg !1426

; <label>:115:                                    ; preds = %102
  %116 = getelementptr inbounds i8, i8* %53, i64 -9, !dbg !1427
  %117 = bitcast i8* %116 to i32*, !dbg !1428
  %118 = load i32, i32* %117, align 1, !dbg !1428, !tbaa !549
  %119 = zext i32 %118 to i64, !dbg !1427
  br label %124, !dbg !1429

; <label>:120:                                    ; preds = %102
  %121 = getelementptr inbounds i8, i8* %53, i64 -17, !dbg !1430
  %122 = bitcast i8* %121 to i64*, !dbg !1431
  %123 = load i64, i64* %122, align 1, !dbg !1431, !tbaa !410
  br label %124, !dbg !1432

; <label>:124:                                    ; preds = %102, %103, %106, %110, %115, %120
  %125 = phi i64 [ %123, %120 ], [ %119, %115 ], [ %114, %110 ], [ %109, %106 ], [ %105, %103 ], [ 0, %102 ], !dbg !1433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1434
  tail call void @_addReplyStringToList(%struct.client* nonnull %0, i8* %53, i64 %125) #10, !dbg !1435
  br label %157, !dbg !1435

; <label>:126:                                    ; preds = %46
  %127 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !1436
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %127) #5, !dbg !1436
  %128 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1438
  %129 = bitcast i8** %128 to i64*, !dbg !1438
  %130 = load i64, i64* %129, align 8, !dbg !1438, !tbaa !376
  %131 = call i32 @ll2string(i8* nonnull %127, i64 32, i64 %130) #8, !dbg !1439
  %132 = sext i32 %131 to i64, !dbg !1439
  %133 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1446
  %134 = load i32, i32* %133, align 8, !dbg !1446, !tbaa !602
  %135 = sext i32 %134 to i64, !dbg !1447
  %136 = load i32, i32* %4, align 8, !dbg !1448, !tbaa !927
  %137 = and i32 %136, 64, !dbg !1449
  %138 = icmp eq i32 %137, 0, !dbg !1449
  br i1 %138, label %139, label %153, !dbg !1450

; <label>:139:                                    ; preds = %126
  %140 = sub nsw i64 16384, %135, !dbg !1451
  %141 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1453
  %142 = load %struct.list*, %struct.list** %141, align 8, !dbg !1453, !tbaa !664
  %143 = getelementptr inbounds %struct.list, %struct.list* %142, i64 0, i32 5, !dbg !1453
  %144 = load i64, i64* %143, align 8, !dbg !1453, !tbaa !1078
  %145 = icmp ne i64 %144, 0, !dbg !1454
  %146 = icmp ult i64 %140, %132, !dbg !1455
  %147 = or i1 %146, %145, !dbg !1456
  br i1 %147, label %154, label %148, !dbg !1456

; <label>:148:                                    ; preds = %139
  %149 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 48, i64 %135, !dbg !1457
  %150 = call i8* @memcpy(i8* nonnull %149, i8* nonnull %127, i64 %132) #8, !dbg !1458
  %151 = load i32, i32* %133, align 8, !dbg !1459, !tbaa !602
  %152 = add i32 %151, %131, !dbg !1459
  store i32 %152, i32* %133, align 8, !dbg !1459, !tbaa !602
  br label %153, !dbg !1460

; <label>:153:                                    ; preds = %148, %126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  br label %155, !dbg !1462

; <label>:154:                                    ; preds = %139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  call void @_addReplyStringToList(%struct.client* nonnull %0, i8* nonnull %127, i64 %132) #10, !dbg !1463
  br label %155, !dbg !1463

; <label>:155:                                    ; preds = %153, %154
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %127) #5, !dbg !1464
  br label %157

; <label>:156:                                    ; preds = %46
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 318, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1465
  tail call void @_exit(i32 1) #9, !dbg !1465
  unreachable, !dbg !1465

; <label>:157:                                    ; preds = %101, %45, %124, %155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  ret void, !dbg !1467
}

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplySds(%struct.client*, i8*) local_unnamed_addr #0 !dbg !1468 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1479
  %4 = load i32, i32* %3, align 8, !dbg !1479, !tbaa !927
  %5 = and i32 %4, 134217984, !dbg !1480
  %6 = icmp eq i32 %5, 0, !dbg !1480
  br i1 %6, label %7, label %45, !dbg !1481

; <label>:7:                                      ; preds = %2
  %8 = and i32 %4, 20971520, !dbg !1482
  %9 = icmp ne i32 %8, 0, !dbg !1482
  %10 = and i32 %4, 8194, !dbg !1483
  %11 = icmp eq i32 %10, 2, !dbg !1483
  %12 = or i1 %9, %11, !dbg !1484
  br i1 %12, label %44, label %13, !dbg !1484

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1485
  %15 = load i32, i32* %14, align 8, !dbg !1485, !tbaa !596
  %16 = icmp slt i32 %15, 1, !dbg !1486
  br i1 %16, label %44, label %17, !dbg !1487

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1490
  %19 = load i32, i32* %18, align 8, !dbg !1490, !tbaa !602
  %20 = icmp eq i32 %19, 0, !dbg !1491
  br i1 %20, label %22, label %21, !dbg !1492

; <label>:21:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  br label %45, !dbg !1494

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1495
  %24 = load %struct.list*, %struct.list** %23, align 8, !dbg !1495, !tbaa !664
  %25 = getelementptr inbounds %struct.list, %struct.list* %24, i64 0, i32 5, !dbg !1495
  %26 = load i64, i64* %25, align 8, !dbg !1495, !tbaa !1078
  %27 = icmp eq i64 %26, 0, !dbg !1492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  br i1 %27, label %28, label %45, !dbg !1494

; <label>:28:                                     ; preds = %22
  %29 = and i32 %4, 2097152, !dbg !1498
  %30 = icmp eq i32 %29, 0, !dbg !1498
  br i1 %30, label %31, label %43, !dbg !1499

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1500
  %33 = load i32, i32* %32, align 8, !dbg !1500, !tbaa !1033
  switch i32 %33, label %43 [
    i32 0, label %38
    i32 9, label %34
  ], !dbg !1501

; <label>:34:                                     ; preds = %31
  %35 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1502
  %36 = load i32, i32* %35, align 4, !dbg !1502, !tbaa !1036
  %37 = icmp eq i32 %36, 0, !dbg !1503
  br i1 %37, label %38, label %43, !dbg !1504

; <label>:38:                                     ; preds = %34, %31
  %39 = or i32 %4, 2097152, !dbg !1505
  store i32 %39, i32* %3, align 8, !dbg !1505, !tbaa !927
  %40 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !1506, !tbaa !1042
  %41 = bitcast %struct.client* %0 to i8*, !dbg !1507
  %42 = tail call %struct.list* @listAddNodeHead(%struct.list* %40, i8* %41) #8, !dbg !1508
  br label %43, !dbg !1509

; <label>:43:                                     ; preds = %38, %34, %31, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1510
  br label %45, !dbg !1511

; <label>:44:                                     ; preds = %13, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  tail call void @sdsfree(i8* %1) #8, !dbg !1513
  br label %119, !dbg !1515

; <label>:45:                                     ; preds = %2, %22, %43, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  %46 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !1519
  %47 = load i8, i8* %46, align 1, !dbg !1519, !tbaa !657
  %48 = trunc i8 %47 to i3, !dbg !1521
  switch i3 %48, label %70 [
    i3 0, label %49
    i3 1, label %52
    i3 2, label %56
    i3 3, label %61
    i3 -4, label %66
  ], !dbg !1521

; <label>:49:                                     ; preds = %45
  %50 = lshr i8 %47, 3, !dbg !1522
  %51 = zext i8 %50 to i64, !dbg !1522
  br label %70, !dbg !1523

; <label>:52:                                     ; preds = %45
  %53 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !1524
  %54 = load i8, i8* %53, align 1, !dbg !1525, !tbaa !657
  %55 = zext i8 %54 to i64, !dbg !1524
  br label %70, !dbg !1526

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !1527
  %58 = bitcast i8* %57 to i16*, !dbg !1528
  %59 = load i16, i16* %58, align 1, !dbg !1528, !tbaa !858
  %60 = zext i16 %59 to i64, !dbg !1527
  br label %70, !dbg !1529

; <label>:61:                                     ; preds = %45
  %62 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !1530
  %63 = bitcast i8* %62 to i32*, !dbg !1531
  %64 = load i32, i32* %63, align 1, !dbg !1531, !tbaa !549
  %65 = zext i32 %64 to i64, !dbg !1530
  br label %70, !dbg !1532

; <label>:66:                                     ; preds = %45
  %67 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !1533
  %68 = bitcast i8* %67 to i64*, !dbg !1534
  %69 = load i64, i64* %68, align 1, !dbg !1534, !tbaa !410
  br label %70, !dbg !1535

; <label>:70:                                     ; preds = %45, %49, %52, %56, %61, %66
  %71 = phi i64 [ %69, %66 ], [ %65, %61 ], [ %60, %56 ], [ %55, %52 ], [ %51, %49 ], [ 0, %45 ], !dbg !1536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  %72 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1542
  %73 = load i32, i32* %72, align 8, !dbg !1542, !tbaa !602
  %74 = sext i32 %73 to i64, !dbg !1543
  %75 = load i32, i32* %3, align 8, !dbg !1544, !tbaa !927
  %76 = and i32 %75, 64, !dbg !1545
  %77 = icmp eq i32 %76, 0, !dbg !1545
  br i1 %77, label %78, label %93, !dbg !1546

; <label>:78:                                     ; preds = %70
  %79 = sub nsw i64 16384, %74, !dbg !1547
  %80 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1549
  %81 = load %struct.list*, %struct.list** %80, align 8, !dbg !1549, !tbaa !664
  %82 = getelementptr inbounds %struct.list, %struct.list* %81, i64 0, i32 5, !dbg !1549
  %83 = load i64, i64* %82, align 8, !dbg !1549, !tbaa !1078
  %84 = icmp ne i64 %83, 0, !dbg !1550
  %85 = icmp ult i64 %79, %71, !dbg !1551
  %86 = or i1 %85, %84, !dbg !1552
  br i1 %86, label %94, label %87, !dbg !1552

; <label>:87:                                     ; preds = %78
  %88 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 48, i64 %74, !dbg !1553
  %89 = tail call i8* @memcpy(i8* nonnull %88, i8* nonnull %1, i64 %71) #8, !dbg !1554
  %90 = load i32, i32* %72, align 8, !dbg !1555, !tbaa !602
  %91 = trunc i64 %71 to i32, !dbg !1555
  %92 = add i32 %90, %91, !dbg !1555
  store i32 %92, i32* %72, align 8, !dbg !1555, !tbaa !602
  br label %93, !dbg !1556

; <label>:93:                                     ; preds = %87, %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1557
  br label %118, !dbg !1558

; <label>:94:                                     ; preds = %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1557
  switch i3 %48, label %116 [
    i3 0, label %95
    i3 1, label %98
    i3 2, label %102
    i3 3, label %107
    i3 -4, label %112
  ], !dbg !1562

; <label>:95:                                     ; preds = %94
  %96 = lshr i8 %47, 3, !dbg !1563
  %97 = zext i8 %96 to i64, !dbg !1563
  br label %116, !dbg !1564

; <label>:98:                                     ; preds = %94
  %99 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !1565
  %100 = load i8, i8* %99, align 1, !dbg !1566, !tbaa !657
  %101 = zext i8 %100 to i64, !dbg !1565
  br label %116, !dbg !1567

; <label>:102:                                    ; preds = %94
  %103 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !1568
  %104 = bitcast i8* %103 to i16*, !dbg !1569
  %105 = load i16, i16* %104, align 1, !dbg !1569, !tbaa !858
  %106 = zext i16 %105 to i64, !dbg !1568
  br label %116, !dbg !1570

; <label>:107:                                    ; preds = %94
  %108 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !1571
  %109 = bitcast i8* %108 to i32*, !dbg !1572
  %110 = load i32, i32* %109, align 1, !dbg !1572, !tbaa !549
  %111 = zext i32 %110 to i64, !dbg !1571
  br label %116, !dbg !1573

; <label>:112:                                    ; preds = %94
  %113 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !1574
  %114 = bitcast i8* %113 to i64*, !dbg !1575
  %115 = load i64, i64* %114, align 1, !dbg !1575, !tbaa !410
  br label %116, !dbg !1576

; <label>:116:                                    ; preds = %94, %95, %98, %102, %107, %112
  %117 = phi i64 [ %115, %112 ], [ %111, %107 ], [ %106, %102 ], [ %101, %98 ], [ %97, %95 ], [ 0, %94 ], !dbg !1577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  tail call void @_addReplyStringToList(%struct.client* nonnull %0, i8* nonnull %1, i64 %117) #10, !dbg !1579
  br label %118, !dbg !1579

; <label>:118:                                    ; preds = %93, %116
  tail call void @sdsfree(i8* nonnull %1) #8, !dbg !1580
  br label %119, !dbg !1581

; <label>:119:                                    ; preds = %118, %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1581
  ret void, !dbg !1581
}

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyString(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !1582 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1593
  %5 = load i32, i32* %4, align 8, !dbg !1593, !tbaa !927
  %6 = and i32 %5, 134217984, !dbg !1594
  %7 = icmp eq i32 %6, 0, !dbg !1594
  br i1 %7, label %10, label %8, !dbg !1595

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1596
  br label %50, !dbg !1595

; <label>:10:                                     ; preds = %3
  %11 = and i32 %5, 20971520, !dbg !1599
  %12 = icmp ne i32 %11, 0, !dbg !1599
  %13 = and i32 %5, 8194, !dbg !1600
  %14 = icmp eq i32 %13, 2, !dbg !1600
  %15 = or i1 %12, %14, !dbg !1601
  br i1 %15, label %49, label %16, !dbg !1601

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1602
  %18 = load i32, i32* %17, align 8, !dbg !1602, !tbaa !596
  %19 = icmp slt i32 %18, 1, !dbg !1603
  br i1 %19, label %49, label %20, !dbg !1604

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1607
  %22 = load i32, i32* %21, align 8, !dbg !1607, !tbaa !602
  %23 = icmp eq i32 %22, 0, !dbg !1608
  br i1 %23, label %25, label %24, !dbg !1609

; <label>:24:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  br label %50, !dbg !1611

; <label>:25:                                     ; preds = %20
  %26 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1612
  %27 = load %struct.list*, %struct.list** %26, align 8, !dbg !1612, !tbaa !664
  %28 = getelementptr inbounds %struct.list, %struct.list* %27, i64 0, i32 5, !dbg !1612
  %29 = load i64, i64* %28, align 8, !dbg !1612, !tbaa !1078
  %30 = icmp eq i64 %29, 0, !dbg !1609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  br i1 %30, label %31, label %50, !dbg !1611

; <label>:31:                                     ; preds = %25
  %32 = and i32 %5, 2097152, !dbg !1615
  %33 = icmp eq i32 %32, 0, !dbg !1615
  br i1 %33, label %34, label %47, !dbg !1616

; <label>:34:                                     ; preds = %31
  %35 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1617
  %36 = load i32, i32* %35, align 8, !dbg !1617, !tbaa !1033
  switch i32 %36, label %47 [
    i32 0, label %41
    i32 9, label %37
  ], !dbg !1618

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1619
  %39 = load i32, i32* %38, align 4, !dbg !1619, !tbaa !1036
  %40 = icmp eq i32 %39, 0, !dbg !1620
  br i1 %40, label %41, label %47, !dbg !1621

; <label>:41:                                     ; preds = %37, %34
  %42 = or i32 %5, 2097152, !dbg !1622
  store i32 %42, i32* %4, align 8, !dbg !1622, !tbaa !927
  %43 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !1623, !tbaa !1042
  %44 = bitcast %struct.client* %0 to i8*, !dbg !1624
  %45 = tail call %struct.list* @listAddNodeHead(%struct.list* %43, i8* %44) #8, !dbg !1625
  %46 = load i32, i32* %4, align 8, !dbg !1626, !tbaa !927
  br label %47, !dbg !1627

; <label>:47:                                     ; preds = %41, %37, %34, %31
  %48 = phi i32 [ %46, %41 ], [ %5, %37 ], [ %5, %34 ], [ %5, %31 ], !dbg !1626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1628
  br label %50, !dbg !1629

; <label>:49:                                     ; preds = %10, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  br label %74

; <label>:50:                                     ; preds = %8, %25, %47, %24
  %51 = phi i32* [ %9, %8 ], [ %21, %25 ], [ %21, %47 ], [ %21, %24 ], !dbg !1596
  %52 = phi i32 [ %5, %8 ], [ %5, %25 ], [ %48, %47 ], [ %5, %24 ], !dbg !1626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  %53 = load i32, i32* %51, align 8, !dbg !1596, !tbaa !602
  %54 = sext i32 %53 to i64, !dbg !1634
  %55 = and i32 %52, 64, !dbg !1635
  %56 = icmp eq i32 %55, 0, !dbg !1635
  br i1 %56, label %57, label %72, !dbg !1636

; <label>:57:                                     ; preds = %50
  %58 = sub nsw i64 16384, %54, !dbg !1637
  %59 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1639
  %60 = load %struct.list*, %struct.list** %59, align 8, !dbg !1639, !tbaa !664
  %61 = getelementptr inbounds %struct.list, %struct.list* %60, i64 0, i32 5, !dbg !1639
  %62 = load i64, i64* %61, align 8, !dbg !1639, !tbaa !1078
  %63 = icmp ne i64 %62, 0, !dbg !1640
  %64 = icmp ult i64 %58, %2, !dbg !1641
  %65 = or i1 %64, %63, !dbg !1642
  br i1 %65, label %73, label %66, !dbg !1642

; <label>:66:                                     ; preds = %57
  %67 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 48, i64 %54, !dbg !1643
  %68 = tail call i8* @memcpy(i8* nonnull %67, i8* %1, i64 %2) #8, !dbg !1644
  %69 = load i32, i32* %51, align 8, !dbg !1645, !tbaa !602
  %70 = trunc i64 %2 to i32, !dbg !1645
  %71 = add i32 %69, %70, !dbg !1645
  store i32 %71, i32* %51, align 8, !dbg !1645, !tbaa !602
  br label %72, !dbg !1646

; <label>:72:                                     ; preds = %66, %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1647
  br label %74, !dbg !1648

; <label>:73:                                     ; preds = %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1647
  tail call void @_addReplyStringToList(%struct.client* nonnull %0, i8* %1, i64 %2) #10, !dbg !1649
  br label %74, !dbg !1649

; <label>:74:                                     ; preds = %72, %49, %73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1650
  ret void, !dbg !1650
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyErrorLength(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !1651 {
  %4 = icmp eq i64 %2, 0, !dbg !1664
  br i1 %4, label %8, label %5, !dbg !1666

; <label>:5:                                      ; preds = %3
  %6 = load i8, i8* %1, align 1, !dbg !1667, !tbaa !657
  %7 = icmp eq i8 %6, 45, !dbg !1668
  br i1 %7, label %9, label %8, !dbg !1669

; <label>:8:                                      ; preds = %5, %3
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 5) #10, !dbg !1670
  br label %9, !dbg !1670

; <label>:9:                                      ; preds = %5, %8
  tail call void @addReplyString(%struct.client* %0, i8* %1, i64 %2) #10, !dbg !1671
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 2) #10, !dbg !1672
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1673
  %11 = load i32, i32* %10, align 8, !dbg !1673, !tbaa !927
  %12 = and i32 %11, 3, !dbg !1674
  %13 = icmp ne i32 %12, 0, !dbg !1674
  %14 = and i32 %11, 4, !dbg !1675
  %15 = icmp eq i32 %14, 0, !dbg !1675
  %16 = and i1 %13, %15, !dbg !1676
  br i1 %16, label %17, label %30, !dbg !1676

; <label>:17:                                     ; preds = %9
  %18 = and i32 %11, 2, !dbg !1677
  %19 = icmp ne i32 %18, 0, !dbg !1678
  %20 = select i1 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), !dbg !1678
  %21 = select i1 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), !dbg !1680
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 11, !dbg !1682
  %23 = load %struct.redisCommand*, %struct.redisCommand** %22, align 8, !dbg !1682, !tbaa !1683
  %24 = icmp eq %struct.redisCommand* %23, null, !dbg !1684
  br i1 %24, label %28, label %25, !dbg !1684

; <label>:25:                                     ; preds = %17
  %26 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %23, i64 0, i32 0, !dbg !1685
  %27 = load i8*, i8** %26, align 8, !dbg !1685, !tbaa !1686
  br label %28, !dbg !1684

; <label>:28:                                     ; preds = %17, %25
  %29 = phi i8* [ %27, %25 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), %17 ], !dbg !1684
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.8, i64 0, i64 0), i8* %21, i8* %20, i8* %1, i8* %29) #8, !dbg !1689
  br label %30, !dbg !1690

; <label>:30:                                     ; preds = %9, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  ret void, !dbg !1691
}

; Function Attrs: noredzone
declare dso_local void @serverLog(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #0 !dbg !1692 {
  %3 = tail call i64 @strlen(i8* %1) #8, !dbg !1700
  tail call void @addReplyErrorLength(%struct.client* %0, i8* %1, i64 %3) #10, !dbg !1701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1702
  ret void, !dbg !1702
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) local_unnamed_addr #0 !dbg !1703 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1718
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #5, !dbg !1718
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1720
  call void @llvm.va_start(i8* nonnull %4), !dbg !1720
  %6 = call i8* @sdsempty() #8, !dbg !1721
  %7 = call i8* @sdscatvprintf(i8* %6, i8* %1, %struct.__va_list_tag* nonnull %5) #8, !dbg !1722
  call void @llvm.va_end(i8* nonnull %4), !dbg !1724
  %8 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !1727
  %9 = load i8, i8* %8, align 1, !dbg !1727, !tbaa !657
  %10 = trunc i8 %9 to i3, !dbg !1729
  switch i3 %10, label %11 [
    i3 0, label %12
    i3 1, label %15
    i3 2, label %19
    i3 3, label %24
    i3 -4, label %29
  ], !dbg !1729

; <label>:11:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1730
  br label %67, !dbg !1733

; <label>:12:                                     ; preds = %2
  %13 = lshr i8 %9, 3, !dbg !1735
  %14 = zext i8 %13 to i64, !dbg !1735
  br label %33, !dbg !1736

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds i8, i8* %7, i64 -3, !dbg !1737
  %17 = load i8, i8* %16, align 1, !dbg !1738, !tbaa !657
  %18 = zext i8 %17 to i64, !dbg !1737
  br label %33, !dbg !1739

; <label>:19:                                     ; preds = %2
  %20 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1740
  %21 = bitcast i8* %20 to i16*, !dbg !1741
  %22 = load i16, i16* %21, align 1, !dbg !1741, !tbaa !858
  %23 = zext i16 %22 to i64, !dbg !1740
  br label %33, !dbg !1742

; <label>:24:                                     ; preds = %2
  %25 = getelementptr inbounds i8, i8* %7, i64 -9, !dbg !1743
  %26 = bitcast i8* %25 to i32*, !dbg !1744
  %27 = load i32, i32* %26, align 1, !dbg !1744, !tbaa !549
  %28 = zext i32 %27 to i64, !dbg !1743
  br label %33, !dbg !1745

; <label>:29:                                     ; preds = %2
  %30 = getelementptr inbounds i8, i8* %7, i64 -17, !dbg !1746
  %31 = bitcast i8* %30 to i64*, !dbg !1747
  %32 = load i64, i64* %31, align 1, !dbg !1747, !tbaa !410
  br label %33, !dbg !1748

; <label>:33:                                     ; preds = %12, %15, %19, %24, %29
  %34 = phi i64 [ %32, %29 ], [ %28, %24 ], [ %23, %19 ], [ %18, %15 ], [ %14, %12 ], !dbg !1749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1730
  %35 = icmp eq i64 %34, 0, !dbg !1750
  br i1 %35, label %67, label %36, !dbg !1733

; <label>:36:                                     ; preds = %33
  %37 = add i64 %34, -1, !dbg !1752
  %38 = and i64 %34, 3, !dbg !1752
  %39 = icmp ult i64 %37, 3, !dbg !1752
  br i1 %39, label %52, label %40, !dbg !1752

; <label>:40:                                     ; preds = %36
  %41 = sub i64 %34, %38, !dbg !1752
  br label %42, !dbg !1752

; <label>:42:                                     ; preds = %104, %40
  %43 = phi i64 [ 0, %40 ], [ %105, %104 ]
  %44 = phi i64 [ %41, %40 ], [ %106, %104 ]
  %45 = getelementptr inbounds i8, i8* %7, i64 %43, !dbg !1752
  %46 = load i8, i8* %45, align 1, !dbg !1752, !tbaa !657
  switch i8 %46, label %48 [
    i8 13, label %47
    i8 10, label %47
  ], !dbg !1755

; <label>:47:                                     ; preds = %42, %42
  store i8 32, i8* %45, align 1, !dbg !1756, !tbaa !657
  br label %48, !dbg !1757

; <label>:48:                                     ; preds = %42, %47
  %49 = or i64 %43, 1, !dbg !1758
  %50 = getelementptr inbounds i8, i8* %7, i64 %49, !dbg !1752
  %51 = load i8, i8* %50, align 1, !dbg !1752, !tbaa !657
  switch i8 %51, label %94 [
    i8 13, label %93
    i8 10, label %93
  ], !dbg !1755

; <label>:52:                                     ; preds = %104, %36
  %53 = phi i64 [ 0, %36 ], [ %105, %104 ]
  %54 = icmp eq i64 %38, 0, !dbg !1755
  br i1 %54, label %65, label %55, !dbg !1755

; <label>:55:                                     ; preds = %52, %61
  %56 = phi i64 [ %62, %61 ], [ %53, %52 ]
  %57 = phi i64 [ %63, %61 ], [ %38, %52 ]
  %58 = getelementptr inbounds i8, i8* %7, i64 %56, !dbg !1752
  %59 = load i8, i8* %58, align 1, !dbg !1752, !tbaa !657
  switch i8 %59, label %61 [
    i8 13, label %60
    i8 10, label %60
  ], !dbg !1755

; <label>:60:                                     ; preds = %55, %55
  store i8 32, i8* %58, align 1, !dbg !1756, !tbaa !657
  br label %61, !dbg !1757

; <label>:61:                                     ; preds = %60, %55
  %62 = add nuw i64 %56, 1, !dbg !1758
  %63 = add i64 %57, -1, !dbg !1733
  %64 = icmp eq i64 %63, 0, !dbg !1733
  br i1 %64, label %65, label %55, !dbg !1733, !llvm.loop !1759

; <label>:65:                                     ; preds = %61, %52
  %66 = load i8, i8* %8, align 1, !dbg !1761, !tbaa !657
  br label %67, !dbg !1761

; <label>:67:                                     ; preds = %11, %65, %33
  %68 = phi i8 [ %66, %65 ], [ %9, %33 ], [ %9, %11 ], !dbg !1761
  %69 = trunc i8 %68 to i3, !dbg !1765
  switch i3 %69, label %91 [
    i3 0, label %70
    i3 1, label %73
    i3 2, label %77
    i3 3, label %82
    i3 -4, label %87
  ], !dbg !1765

; <label>:70:                                     ; preds = %67
  %71 = lshr i8 %68, 3, !dbg !1766
  %72 = zext i8 %71 to i64, !dbg !1766
  br label %91, !dbg !1767

; <label>:73:                                     ; preds = %67
  %74 = getelementptr inbounds i8, i8* %7, i64 -3, !dbg !1768
  %75 = load i8, i8* %74, align 1, !dbg !1769, !tbaa !657
  %76 = zext i8 %75 to i64, !dbg !1768
  br label %91, !dbg !1770

; <label>:77:                                     ; preds = %67
  %78 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1771
  %79 = bitcast i8* %78 to i16*, !dbg !1772
  %80 = load i16, i16* %79, align 1, !dbg !1772, !tbaa !858
  %81 = zext i16 %80 to i64, !dbg !1771
  br label %91, !dbg !1773

; <label>:82:                                     ; preds = %67
  %83 = getelementptr inbounds i8, i8* %7, i64 -9, !dbg !1774
  %84 = bitcast i8* %83 to i32*, !dbg !1775
  %85 = load i32, i32* %84, align 1, !dbg !1775, !tbaa !549
  %86 = zext i32 %85 to i64, !dbg !1774
  br label %91, !dbg !1776

; <label>:87:                                     ; preds = %67
  %88 = getelementptr inbounds i8, i8* %7, i64 -17, !dbg !1777
  %89 = bitcast i8* %88 to i64*, !dbg !1778
  %90 = load i64, i64* %89, align 1, !dbg !1778, !tbaa !410
  br label %91, !dbg !1779

; <label>:91:                                     ; preds = %67, %70, %73, %77, %82, %87
  %92 = phi i64 [ %90, %87 ], [ %86, %82 ], [ %81, %77 ], [ %76, %73 ], [ %72, %70 ], [ 0, %67 ], !dbg !1780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1781
  call void @addReplyErrorLength(%struct.client* %0, i8* nonnull %7, i64 %92) #10, !dbg !1782
  call void @sdsfree(i8* nonnull %7) #8, !dbg !1783
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #5, !dbg !1784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1784
  ret void, !dbg !1784

; <label>:93:                                     ; preds = %48, %48
  store i8 32, i8* %50, align 1, !dbg !1756, !tbaa !657
  br label %94, !dbg !1757

; <label>:94:                                     ; preds = %93, %48
  %95 = or i64 %43, 2, !dbg !1758
  %96 = getelementptr inbounds i8, i8* %7, i64 %95, !dbg !1752
  %97 = load i8, i8* %96, align 1, !dbg !1752, !tbaa !657
  switch i8 %97, label %99 [
    i8 13, label %98
    i8 10, label %98
  ], !dbg !1755

; <label>:98:                                     ; preds = %94, %94
  store i8 32, i8* %96, align 1, !dbg !1756, !tbaa !657
  br label %99, !dbg !1757

; <label>:99:                                     ; preds = %98, %94
  %100 = or i64 %43, 3, !dbg !1758
  %101 = getelementptr inbounds i8, i8* %7, i64 %100, !dbg !1752
  %102 = load i8, i8* %101, align 1, !dbg !1752, !tbaa !657
  switch i8 %102, label %104 [
    i8 13, label %103
    i8 10, label %103
  ], !dbg !1755

; <label>:103:                                    ; preds = %99, %99
  store i8 32, i8* %101, align 1, !dbg !1756, !tbaa !657
  br label %104, !dbg !1757

; <label>:104:                                    ; preds = %103, %99
  %105 = add i64 %43, 4, !dbg !1758
  %106 = add i64 %44, -4, !dbg !1733
  %107 = icmp eq i64 %106, 0, !dbg !1733
  br i1 %107, label %52, label %42, !dbg !1733, !llvm.loop !1785
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: noredzone
declare dso_local i8* @sdscatvprintf(i8*, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noredzone nounwind
define dso_local void @addReplyStatusLength(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !1787 {
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 1) #10, !dbg !1795
  tail call void @addReplyString(%struct.client* %0, i8* %1, i64 %2) #10, !dbg !1796
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 2) #10, !dbg !1797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1798
  ret void, !dbg !1798
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyStatus(%struct.client*, i8*) local_unnamed_addr #0 !dbg !1799 {
  %3 = tail call i64 @strlen(i8* %1) #8, !dbg !1805
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 1) #8, !dbg !1810
  tail call void @addReplyString(%struct.client* %0, i8* %1, i64 %3) #8, !dbg !1811
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 2) #8, !dbg !1812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1814
  ret void, !dbg !1814
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyStatusFormat(%struct.client*, i8*, ...) local_unnamed_addr #0 !dbg !1815 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1823
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #5, !dbg !1823
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1825
  call void @llvm.va_start(i8* nonnull %4), !dbg !1825
  %6 = call i8* @sdsempty() #8, !dbg !1826
  %7 = call i8* @sdscatvprintf(i8* %6, i8* %1, %struct.__va_list_tag* nonnull %5) #8, !dbg !1827
  call void @llvm.va_end(i8* nonnull %4), !dbg !1829
  %8 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !1832
  %9 = load i8, i8* %8, align 1, !dbg !1832, !tbaa !657
  %10 = trunc i8 %9 to i3, !dbg !1834
  switch i3 %10, label %32 [
    i3 0, label %11
    i3 1, label %14
    i3 2, label %18
    i3 3, label %23
    i3 -4, label %28
  ], !dbg !1834

; <label>:11:                                     ; preds = %2
  %12 = lshr i8 %9, 3, !dbg !1835
  %13 = zext i8 %12 to i64, !dbg !1835
  br label %32, !dbg !1836

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds i8, i8* %7, i64 -3, !dbg !1837
  %16 = load i8, i8* %15, align 1, !dbg !1838, !tbaa !657
  %17 = zext i8 %16 to i64, !dbg !1837
  br label %32, !dbg !1839

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1840
  %20 = bitcast i8* %19 to i16*, !dbg !1841
  %21 = load i16, i16* %20, align 1, !dbg !1841, !tbaa !858
  %22 = zext i16 %21 to i64, !dbg !1840
  br label %32, !dbg !1842

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %7, i64 -9, !dbg !1843
  %25 = bitcast i8* %24 to i32*, !dbg !1844
  %26 = load i32, i32* %25, align 1, !dbg !1844, !tbaa !549
  %27 = zext i32 %26 to i64, !dbg !1843
  br label %32, !dbg !1845

; <label>:28:                                     ; preds = %2
  %29 = getelementptr inbounds i8, i8* %7, i64 -17, !dbg !1846
  %30 = bitcast i8* %29 to i64*, !dbg !1847
  %31 = load i64, i64* %30, align 1, !dbg !1847, !tbaa !410
  br label %32, !dbg !1848

; <label>:32:                                     ; preds = %2, %11, %14, %18, %23, %28
  %33 = phi i64 [ %31, %28 ], [ %27, %23 ], [ %22, %18 ], [ %17, %14 ], [ %13, %11 ], [ 0, %2 ], !dbg !1849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1850
  call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 1) #8, !dbg !1855
  call void @addReplyString(%struct.client* %0, i8* %7, i64 %33) #8, !dbg !1856
  call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 2) #8, !dbg !1857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1858
  call void @sdsfree(i8* %7) #8, !dbg !1859
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #5, !dbg !1860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1860
  ret void, !dbg !1860
}

; Function Attrs: noredzone nounwind
define dso_local i8* @addDeferredMultiBulkLength(%struct.client*) local_unnamed_addr #0 !dbg !1861 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1870
  %3 = load i32, i32* %2, align 8, !dbg !1870, !tbaa !927
  %4 = and i32 %3, 134217984, !dbg !1871
  %5 = icmp eq i32 %4, 0, !dbg !1871
  br i1 %5, label %6, label %44, !dbg !1872

; <label>:6:                                      ; preds = %1
  %7 = and i32 %3, 20971520, !dbg !1873
  %8 = icmp ne i32 %7, 0, !dbg !1873
  %9 = and i32 %3, 8194, !dbg !1874
  %10 = icmp eq i32 %9, 2, !dbg !1874
  %11 = or i1 %8, %10, !dbg !1875
  br i1 %11, label %43, label %12, !dbg !1875

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1876
  %14 = load i32, i32* %13, align 8, !dbg !1876, !tbaa !596
  %15 = icmp slt i32 %14, 1, !dbg !1877
  br i1 %15, label %43, label %16, !dbg !1878

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1881
  %18 = load i32, i32* %17, align 8, !dbg !1881, !tbaa !602
  %19 = icmp eq i32 %18, 0, !dbg !1882
  br i1 %19, label %21, label %20, !dbg !1883

; <label>:20:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1884
  br label %44, !dbg !1885

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1886
  %23 = load %struct.list*, %struct.list** %22, align 8, !dbg !1886, !tbaa !664
  %24 = getelementptr inbounds %struct.list, %struct.list* %23, i64 0, i32 5, !dbg !1886
  %25 = load i64, i64* %24, align 8, !dbg !1886, !tbaa !1078
  %26 = icmp eq i64 %25, 0, !dbg !1883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1884
  br i1 %26, label %27, label %44, !dbg !1885

; <label>:27:                                     ; preds = %21
  %28 = and i32 %3, 2097152, !dbg !1889
  %29 = icmp eq i32 %28, 0, !dbg !1889
  br i1 %29, label %30, label %42, !dbg !1890

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1891
  %32 = load i32, i32* %31, align 8, !dbg !1891, !tbaa !1033
  switch i32 %32, label %42 [
    i32 0, label %37
    i32 9, label %33
  ], !dbg !1892

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1893
  %35 = load i32, i32* %34, align 4, !dbg !1893, !tbaa !1036
  %36 = icmp eq i32 %35, 0, !dbg !1894
  br i1 %36, label %37, label %42, !dbg !1895

; <label>:37:                                     ; preds = %33, %30
  %38 = or i32 %3, 2097152, !dbg !1896
  store i32 %38, i32* %2, align 8, !dbg !1896, !tbaa !927
  %39 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !1897, !tbaa !1042
  %40 = bitcast %struct.client* %0 to i8*, !dbg !1898
  %41 = tail call %struct.list* @listAddNodeHead(%struct.list* %39, i8* %40) #8, !dbg !1899
  br label %42, !dbg !1900

; <label>:42:                                     ; preds = %37, %33, %30, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1901
  br label %44, !dbg !1902

; <label>:43:                                     ; preds = %6, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1903
  br label %52

; <label>:44:                                     ; preds = %1, %21, %42, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1903
  %45 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1904
  %46 = load %struct.list*, %struct.list** %45, align 8, !dbg !1904, !tbaa !664
  %47 = tail call %struct.list* @listAddNodeTail(%struct.list* %46, i8* null) #8, !dbg !1905
  %48 = load %struct.list*, %struct.list** %45, align 8, !dbg !1906, !tbaa !664
  %49 = getelementptr inbounds %struct.list, %struct.list* %48, i64 0, i32 1, !dbg !1906
  %50 = bitcast %struct.listNode** %49 to i8**, !dbg !1906
  %51 = load i8*, i8** %50, align 8, !dbg !1906, !tbaa !451
  br label %52, !dbg !1907

; <label>:52:                                     ; preds = %43, %44
  %53 = phi i8* [ %51, %44 ], [ null, %43 ], !dbg !1908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1909
  ret i8* %53, !dbg !1909
}

; Function Attrs: noredzone nounwind
define dso_local void @setDeferredMultiBulkLength(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !1910 {
  %4 = alloca [128 x i8], align 16
  %5 = bitcast i8* %1 to %struct.listNode*, !dbg !1930
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !1932
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #5, !dbg !1932
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 %2) #8, !dbg !1934
  %8 = sext i32 %7 to i64, !dbg !1934
  %9 = icmp eq i8* %1, null, !dbg !1936
  br i1 %9, label %59, label %10, !dbg !1938

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1939
  %12 = bitcast i8* %11 to i8**, !dbg !1939
  %13 = load i8*, i8** %12, align 8, !dbg !1939, !tbaa !1161
  %14 = icmp eq i8* %13, null, !dbg !1939
  br i1 %14, label %16, label %15, !dbg !1939

; <label>:15:                                     ; preds = %10
  call void @_serverAssert(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 444) #8, !dbg !1939
  call void @_exit(i32 1) #9, !dbg !1939
  unreachable, !dbg !1939

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1940
  %18 = bitcast i8* %17 to %struct.listNode**, !dbg !1940
  %19 = load %struct.listNode*, %struct.listNode** %18, align 8, !dbg !1940, !tbaa !1941
  %20 = icmp eq %struct.listNode* %19, null, !dbg !1942
  br i1 %20, label %44, label %21, !dbg !1943

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.listNode, %struct.listNode* %19, i64 0, i32 2, !dbg !1944
  %23 = bitcast i8** %22 to %struct.clientReplyBlock**, !dbg !1944
  %24 = load %struct.clientReplyBlock*, %struct.clientReplyBlock** %23, align 8, !dbg !1944, !tbaa !1161
  %25 = icmp eq %struct.clientReplyBlock* %24, null, !dbg !1946
  br i1 %25, label %44, label %26, !dbg !1947

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %24, i64 0, i32 0, !dbg !1948
  %28 = load i64, i64* %27, align 8, !dbg !1948, !tbaa !410
  %29 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %24, i64 0, i32 1, !dbg !1949
  %30 = load i64, i64* %29, align 8, !dbg !1949, !tbaa !410
  %31 = sub i64 %28, %30, !dbg !1950
  %32 = icmp uge i64 %31, %8, !dbg !1951
  %33 = icmp ult i64 %30, 65536, !dbg !1952
  %34 = and i1 %33, %32, !dbg !1953
  br i1 %34, label %35, label %44, !dbg !1953

; <label>:35:                                     ; preds = %26
  %36 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %24, i64 0, i32 2, i64 0, !dbg !1954
  %37 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %24, i64 0, i32 2, i64 %8, !dbg !1956
  %38 = call i8* @memmove(i8* nonnull %37, i8* nonnull %36, i64 %30) #8, !dbg !1957
  %39 = call i8* @memcpy(i8* nonnull %36, i8* nonnull %6, i64 %8) #8, !dbg !1958
  %40 = load i64, i64* %29, align 8, !dbg !1959, !tbaa !410
  %41 = add i64 %40, %8, !dbg !1959
  store i64 %41, i64* %29, align 8, !dbg !1959, !tbaa !410
  %42 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1960
  %43 = load %struct.list*, %struct.list** %42, align 8, !dbg !1960, !tbaa !664
  call void @listDelNode(%struct.list* %43, %struct.listNode* nonnull %5) #8, !dbg !1961
  br label %58, !dbg !1962

; <label>:44:                                     ; preds = %26, %21, %16
  %45 = add nsw i64 %8, 16, !dbg !1963
  %46 = call i8* @zmalloc(i64 %45) #8, !dbg !1964
  %47 = call i64 @zmalloc_usable(i8* %46) #8, !dbg !1966
  %48 = add i64 %47, -16, !dbg !1967
  %49 = bitcast i8* %46 to i64*, !dbg !1968
  store i64 %48, i64* %49, align 8, !dbg !1969, !tbaa !410
  %50 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !1970
  %51 = bitcast i8* %50 to i64*, !dbg !1970
  store i64 %8, i64* %51, align 8, !dbg !1971, !tbaa !410
  %52 = getelementptr inbounds i8, i8* %46, i64 16, !dbg !1972
  %53 = call i8* @memcpy(i8* nonnull %52, i8* nonnull %6, i64 %8) #8, !dbg !1973
  store i8* %46, i8** %12, align 8, !dbg !1974, !tbaa !1161
  %54 = load i64, i64* %49, align 8, !dbg !1975, !tbaa !410
  %55 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !1976
  %56 = load i64, i64* %55, align 8, !dbg !1977, !tbaa !667
  %57 = add i64 %56, %54, !dbg !1977
  store i64 %57, i64* %55, align 8, !dbg !1977, !tbaa !667
  br label %58

; <label>:58:                                     ; preds = %44, %35
  call void @asyncCloseClientOnOutputBufferLimitReached(%struct.client* nonnull %0) #10, !dbg !1978
  br label %59, !dbg !1979

; <label>:59:                                     ; preds = %3, %58
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #5, !dbg !1979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1979
  ret void, !dbg !1979
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listDelNode(%struct.list*, %struct.listNode*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyDouble(%struct.client*, double) local_unnamed_addr #0 !dbg !1980 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1992
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #5, !dbg !1992
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !1992
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #5, !dbg !1992
  %7 = tail call i32 @__fpclassifyd(double %1) #8, !dbg !1995
  %8 = icmp eq i32 %7, 1, !dbg !1995
  br i1 %8, label %9, label %13, !dbg !1997

; <label>:9:                                      ; preds = %2
  %10 = fcmp ogt double %1, 0.000000e+00, !dbg !1998
  %11 = select i1 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), !dbg !2000
  %12 = tail call i64 @strlen(i8* nonnull %11) #8, !dbg !2008
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %11, i64 %12) #8, !dbg !2011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2012
  br label %17, !dbg !2013

; <label>:13:                                     ; preds = %2
  %14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %5, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), double %1) #8, !dbg !2014
  %15 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %6, i64 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %14, i8* nonnull %5) #8, !dbg !2017
  %16 = sext i32 %15 to i64, !dbg !2019
  call void @addReplyString(%struct.client* %0, i8* nonnull %6, i64 %16) #10, !dbg !2020
  br label %17

; <label>:17:                                     ; preds = %13, %9
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #5, !dbg !2021
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #5, !dbg !2021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2021
  ret void, !dbg !2021
}

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyBulkCString(%struct.client*, i8*) local_unnamed_addr #0 !dbg !2002 {
  %3 = icmp eq i8* %1, null, !dbg !2024
  br i1 %3, label %4, label %6, !dbg !2025

; <label>:4:                                      ; preds = %2
  %5 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !2026, !tbaa !2028
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %5) #10, !dbg !2030
  br label %8, !dbg !2031

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @strlen(i8* nonnull %1) #8, !dbg !2032
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %1, i64 %7) #10, !dbg !2033
  br label %8

; <label>:8:                                      ; preds = %6, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2034
  ret void, !dbg !2034
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyHumanLongDouble(%struct.client*, x86_fp80) local_unnamed_addr #0 !dbg !2035 {
  %3 = tail call %struct.redisObject* @createStringObjectFromLongDouble(x86_fp80 %1, i32 1) #8, !dbg !2045
  tail call void @addReplyBulkLen(%struct.client* %0, %struct.redisObject* %3) #8, !dbg !2054
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %3) #8, !dbg !2055
  %4 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 0), align 8, !dbg !2056, !tbaa !2057
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %4) #8, !dbg !2058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2059
  tail call void @decrRefCount(%struct.redisObject* %3) #8, !dbg !2060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  ret void, !dbg !2061
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongDouble(x86_fp80, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyBulk(%struct.client*, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !2048 {
  tail call void @addReplyBulkLen(%struct.client* %0, %struct.redisObject* %1) #10, !dbg !2064
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %1) #10, !dbg !2065
  %3 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 0), align 8, !dbg !2066, !tbaa !2057
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %3) #10, !dbg !2067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2068
  ret void, !dbg !2068
}

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyLongLongWithPrefix(%struct.client*, i64, i8 signext) local_unnamed_addr #0 !dbg !2069 {
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !2081
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #5, !dbg !2081
  %6 = icmp eq i8 %2, 42, !dbg !2083
  %7 = icmp ult i64 %1, 32, !dbg !2085
  %8 = and i1 %7, %6, !dbg !2085
  br i1 %8, label %9, label %12, !dbg !2085

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 %1, !dbg !2086
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !2086, !tbaa !476
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %11) #10, !dbg !2088
  br label %29, !dbg !2089

; <label>:12:                                     ; preds = %3
  %13 = icmp eq i8 %2, 36, !dbg !2090
  %14 = and i1 %7, %13, !dbg !2092
  br i1 %14, label %15, label %18, !dbg !2092

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 49, i64 %1, !dbg !2093
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !2093, !tbaa !476
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %17) #10, !dbg !2095
  br label %29, !dbg !2096

; <label>:18:                                     ; preds = %12
  store i8 %2, i8* %5, align 16, !dbg !2097, !tbaa !657
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 1, !dbg !2098
  %20 = call i32 @ll2string(i8* nonnull %19, i64 127, i64 %1) #8, !dbg !2099
  %21 = add nsw i32 %20, 1, !dbg !2101
  %22 = sext i32 %21 to i64, !dbg !2102
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %22, !dbg !2102
  store i8 13, i8* %23, align 1, !dbg !2103, !tbaa !657
  %24 = add nsw i32 %20, 2, !dbg !2104
  %25 = sext i32 %24 to i64, !dbg !2105
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %25, !dbg !2105
  store i8 10, i8* %26, align 1, !dbg !2106, !tbaa !657
  %27 = add nsw i32 %20, 3, !dbg !2107
  %28 = sext i32 %27 to i64, !dbg !2108
  call void @addReplyString(%struct.client* %0, i8* nonnull %5, i64 %28) #10, !dbg !2109
  br label %29, !dbg !2110

; <label>:29:                                     ; preds = %18, %15, %9
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #5, !dbg !2110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2110
  ret void, !dbg !2110
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #0 !dbg !2111 {
  %3 = alloca [128 x i8], align 16
  switch i64 %1, label %8 [
    i64 0, label %4
    i64 1, label %6
  ], !dbg !2123

; <label>:4:                                      ; preds = %2
  %5 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2124, !tbaa !2125
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %5) #10, !dbg !2126
  br label %20, !dbg !2126

; <label>:6:                                      ; preds = %2
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !2127, !tbaa !2128
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %7) #10, !dbg !2129
  br label %20, !dbg !2129

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !2133
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #5, !dbg !2133
  store i8 58, i8* %9, align 16, !dbg !2134, !tbaa !657
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 1, !dbg !2135
  %11 = call i32 @ll2string(i8* nonnull %10, i64 127, i64 %1) #8, !dbg !2136
  %12 = add nsw i32 %11, 1, !dbg !2138
  %13 = sext i32 %12 to i64, !dbg !2139
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %13, !dbg !2139
  store i8 13, i8* %14, align 1, !dbg !2140, !tbaa !657
  %15 = add nsw i32 %11, 2, !dbg !2141
  %16 = sext i32 %15 to i64, !dbg !2142
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %16, !dbg !2142
  store i8 10, i8* %17, align 1, !dbg !2143, !tbaa !657
  %18 = add nsw i32 %11, 3, !dbg !2144
  %19 = sext i32 %18 to i64, !dbg !2145
  call void @addReplyString(%struct.client* %0, i8* nonnull %9, i64 %19) #8, !dbg !2146
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #5, !dbg !2147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2147
  br label %20

; <label>:20:                                     ; preds = %6, %8, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2148
  ret void, !dbg !2148
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #0 !dbg !2149 {
  %3 = alloca [128 x i8], align 16
  %4 = icmp slt i64 %1, 32, !dbg !2160
  br i1 %4, label %5, label %8, !dbg !2161

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 %1, !dbg !2162
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !2162, !tbaa !476
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %7) #10, !dbg !2163
  br label %20, !dbg !2163

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !2167
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #5, !dbg !2167
  store i8 42, i8* %9, align 16, !dbg !2168, !tbaa !657
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 1, !dbg !2169
  %11 = call i32 @ll2string(i8* nonnull %10, i64 127, i64 %1) #8, !dbg !2170
  %12 = add nsw i32 %11, 1, !dbg !2172
  %13 = sext i32 %12 to i64, !dbg !2173
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %13, !dbg !2173
  store i8 13, i8* %14, align 1, !dbg !2174, !tbaa !657
  %15 = add nsw i32 %11, 2, !dbg !2175
  %16 = sext i32 %15 to i64, !dbg !2176
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %16, !dbg !2176
  store i8 10, i8* %17, align 1, !dbg !2177, !tbaa !657
  %18 = add nsw i32 %11, 3, !dbg !2178
  %19 = sext i32 %18 to i64, !dbg !2179
  call void @addReplyString(%struct.client* %0, i8* nonnull %9, i64 %19) #8, !dbg !2180
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #5, !dbg !2181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2181
  br label %20

; <label>:20:                                     ; preds = %8, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2182
  ret void, !dbg !2182
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyBulkLen(%struct.client*, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !2183 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !2196
  %5 = load i32, i32* %4, align 8, !dbg !2196
  %6 = lshr i32 %5, 4, !dbg !2196
  %7 = trunc i32 %6 to i4, !dbg !2196
  switch i4 %7, label %37 [
    i4 0, label %8
    i4 -8, label %8
  ], !dbg !2196

; <label>:8:                                      ; preds = %2, %2
  %9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2197
  %10 = load i8*, i8** %9, align 8, !dbg !2197, !tbaa !376
  %11 = getelementptr inbounds i8, i8* %10, i64 -1, !dbg !2201
  %12 = load i8, i8* %11, align 1, !dbg !2201, !tbaa !657
  %13 = trunc i8 %12 to i3, !dbg !2203
  switch i3 %13, label %35 [
    i3 0, label %14
    i3 1, label %17
    i3 2, label %21
    i3 3, label %26
    i3 -4, label %31
  ], !dbg !2203

; <label>:14:                                     ; preds = %8
  %15 = lshr i8 %12, 3, !dbg !2204
  %16 = zext i8 %15 to i64, !dbg !2204
  br label %35, !dbg !2205

; <label>:17:                                     ; preds = %8
  %18 = getelementptr inbounds i8, i8* %10, i64 -3, !dbg !2206
  %19 = load i8, i8* %18, align 1, !dbg !2207, !tbaa !657
  %20 = zext i8 %19 to i64, !dbg !2206
  br label %35, !dbg !2208

; <label>:21:                                     ; preds = %8
  %22 = getelementptr inbounds i8, i8* %10, i64 -5, !dbg !2209
  %23 = bitcast i8* %22 to i16*, !dbg !2210
  %24 = load i16, i16* %23, align 1, !dbg !2210, !tbaa !858
  %25 = zext i16 %24 to i64, !dbg !2209
  br label %35, !dbg !2211

; <label>:26:                                     ; preds = %8
  %27 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !2212
  %28 = bitcast i8* %27 to i32*, !dbg !2213
  %29 = load i32, i32* %28, align 1, !dbg !2213, !tbaa !549
  %30 = zext i32 %29 to i64, !dbg !2212
  br label %35, !dbg !2214

; <label>:31:                                     ; preds = %8
  %32 = getelementptr inbounds i8, i8* %10, i64 -17, !dbg !2215
  %33 = bitcast i8* %32 to i64*, !dbg !2216
  %34 = load i64, i64* %33, align 1, !dbg !2216, !tbaa !410
  br label %35, !dbg !2217

; <label>:35:                                     ; preds = %8, %14, %17, %21, %26, %31
  %36 = phi i64 [ %34, %31 ], [ %30, %26 ], [ %25, %21 ], [ %20, %17 ], [ %16, %14 ], [ 0, %8 ], !dbg !2218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2219
  br label %54, !dbg !2221

; <label>:37:                                     ; preds = %2
  %38 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2222
  %39 = bitcast i8** %38 to i64*, !dbg !2222
  %40 = load i64, i64* %39, align 8, !dbg !2222, !tbaa !376
  %41 = icmp slt i64 %40, 0, !dbg !2224
  %42 = sub nsw i64 0, %40, !dbg !2226
  %43 = select i1 %41, i64 2, i64 1, !dbg !2228
  %44 = select i1 %41, i64 %42, i64 %40, !dbg !2228
  %45 = add nuw i64 %44, 9, !dbg !2229
  %46 = icmp ugt i64 %45, 18, !dbg !2229
  br i1 %46, label %47, label %57, !dbg !2230

; <label>:47:                                     ; preds = %37, %47
  %48 = phi i64 [ %50, %47 ], [ %44, %37 ]
  %49 = phi i64 [ %51, %47 ], [ %43, %37 ]
  %50 = sdiv i64 %48, 10, !dbg !2231
  %51 = add i64 %49, 1, !dbg !2232
  %52 = add nsw i64 %50, 9, !dbg !2229
  %53 = icmp ugt i64 %52, 18, !dbg !2229
  br i1 %53, label %47, label %54, !dbg !2230, !llvm.loop !2234

; <label>:54:                                     ; preds = %47, %35
  %55 = phi i64 [ %36, %35 ], [ %51, %47 ], !dbg !2236
  %56 = icmp ult i64 %55, 32, !dbg !2237
  br i1 %56, label %57, label %61, !dbg !2238

; <label>:57:                                     ; preds = %37, %54
  %58 = phi i64 [ %55, %54 ], [ %43, %37 ]
  %59 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 49, i64 %58, !dbg !2239
  %60 = load %struct.redisObject*, %struct.redisObject** %59, align 8, !dbg !2239, !tbaa !476
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %60) #10, !dbg !2240
  br label %73, !dbg !2240

; <label>:61:                                     ; preds = %54
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !2244
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %62) #5, !dbg !2244
  store i8 36, i8* %62, align 16, !dbg !2245, !tbaa !657
  %63 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 1, !dbg !2246
  %64 = call i32 @ll2string(i8* nonnull %63, i64 127, i64 %55) #8, !dbg !2247
  %65 = add nsw i32 %64, 1, !dbg !2249
  %66 = sext i32 %65 to i64, !dbg !2250
  %67 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %66, !dbg !2250
  store i8 13, i8* %67, align 1, !dbg !2251, !tbaa !657
  %68 = add nsw i32 %64, 2, !dbg !2252
  %69 = sext i32 %68 to i64, !dbg !2253
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %69, !dbg !2253
  store i8 10, i8* %70, align 1, !dbg !2254, !tbaa !657
  %71 = add nsw i32 %64, 3, !dbg !2255
  %72 = sext i32 %71 to i64, !dbg !2256
  call void @addReplyString(%struct.client* %0, i8* nonnull %62, i64 %72) #8, !dbg !2257
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %62) #5, !dbg !2258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2258
  br label %73

; <label>:73:                                     ; preds = %61, %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2259
  ret void, !dbg !2259
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !2260 {
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !2275
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #5, !dbg !2275
  %6 = icmp ult i64 %2, 32, !dbg !2276
  br i1 %6, label %7, label %10, !dbg !2277

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 49, i64 %2, !dbg !2278
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !2278, !tbaa !476
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %9) #8, !dbg !2279
  br label %21, !dbg !2280

; <label>:10:                                     ; preds = %3
  store i8 36, i8* %5, align 16, !dbg !2281, !tbaa !657
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 1, !dbg !2282
  %12 = call i32 @ll2string(i8* nonnull %11, i64 127, i64 %2) #8, !dbg !2283
  %13 = add nsw i32 %12, 1, !dbg !2285
  %14 = sext i32 %13 to i64, !dbg !2286
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %14, !dbg !2286
  store i8 13, i8* %15, align 1, !dbg !2287, !tbaa !657
  %16 = add nsw i32 %12, 2, !dbg !2288
  %17 = sext i32 %16 to i64, !dbg !2289
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %17, !dbg !2289
  store i8 10, i8* %18, align 1, !dbg !2290, !tbaa !657
  %19 = add nsw i32 %12, 3, !dbg !2291
  %20 = sext i32 %19 to i64, !dbg !2292
  call void @addReplyString(%struct.client* %0, i8* nonnull %5, i64 %20) #8, !dbg !2293
  br label %21, !dbg !2294

; <label>:21:                                     ; preds = %7, %10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #5, !dbg !2294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2294
  call void @addReplyString(%struct.client* %0, i8* %1, i64 %2) #10, !dbg !2295
  %22 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 0), align 8, !dbg !2296, !tbaa !2057
  call void @addReply(%struct.client* %0, %struct.redisObject* %22) #10, !dbg !2297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2298
  ret void, !dbg !2298
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyBulkSds(%struct.client*, i8*) local_unnamed_addr #0 !dbg !2299 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !2309
  %5 = load i8, i8* %4, align 1, !dbg !2309, !tbaa !657
  %6 = trunc i8 %5 to i3, !dbg !2311
  switch i3 %6, label %28 [
    i3 0, label %7
    i3 1, label %10
    i3 2, label %14
    i3 3, label %19
    i3 -4, label %24
  ], !dbg !2311

; <label>:7:                                      ; preds = %2
  %8 = lshr i8 %5, 3, !dbg !2312
  %9 = zext i8 %8 to i64, !dbg !2312
  br label %28, !dbg !2313

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !2314
  %12 = load i8, i8* %11, align 1, !dbg !2315, !tbaa !657
  %13 = zext i8 %12 to i64, !dbg !2314
  br label %31, !dbg !2316

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !2317
  %16 = bitcast i8* %15 to i16*, !dbg !2318
  %17 = load i16, i16* %16, align 1, !dbg !2318, !tbaa !858
  %18 = zext i16 %17 to i64, !dbg !2317
  br label %31, !dbg !2319

; <label>:19:                                     ; preds = %2
  %20 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !2320
  %21 = bitcast i8* %20 to i32*, !dbg !2321
  %22 = load i32, i32* %21, align 1, !dbg !2321, !tbaa !549
  %23 = zext i32 %22 to i64, !dbg !2320
  br label %31, !dbg !2322

; <label>:24:                                     ; preds = %2
  %25 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !2323
  %26 = bitcast i8* %25 to i64*, !dbg !2324
  %27 = load i64, i64* %26, align 1, !dbg !2324, !tbaa !410
  br label %31, !dbg !2325

; <label>:28:                                     ; preds = %7, %2
  %29 = phi i64 [ 0, %2 ], [ %9, %7 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2326
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !2330
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %30) #5, !dbg !2330
  br label %35, !dbg !2331

; <label>:31:                                     ; preds = %10, %14, %19, %24
  %32 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ], !dbg !2332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2326
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !2330
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %33) #5, !dbg !2330
  %34 = icmp ult i64 %32, 32, !dbg !2333
  br i1 %34, label %35, label %40, !dbg !2331

; <label>:35:                                     ; preds = %28, %31
  %36 = phi i8* [ %30, %28 ], [ %33, %31 ]
  %37 = phi i64 [ %29, %28 ], [ %32, %31 ]
  %38 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 49, i64 %37, !dbg !2334
  %39 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !2334, !tbaa !476
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %39) #8, !dbg !2335
  br label %51, !dbg !2336

; <label>:40:                                     ; preds = %31
  store i8 36, i8* %33, align 16, !dbg !2337, !tbaa !657
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 1, !dbg !2338
  %42 = call i32 @ll2string(i8* nonnull %41, i64 127, i64 %32) #8, !dbg !2339
  %43 = add nsw i32 %42, 1, !dbg !2341
  %44 = sext i32 %43 to i64, !dbg !2342
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %44, !dbg !2342
  store i8 13, i8* %45, align 1, !dbg !2343, !tbaa !657
  %46 = add nsw i32 %42, 2, !dbg !2344
  %47 = sext i32 %46 to i64, !dbg !2345
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %47, !dbg !2345
  store i8 10, i8* %48, align 1, !dbg !2346, !tbaa !657
  %49 = add nsw i32 %42, 3, !dbg !2347
  %50 = sext i32 %49 to i64, !dbg !2348
  call void @addReplyString(%struct.client* %0, i8* nonnull %33, i64 %50) #8, !dbg !2349
  br label %51, !dbg !2350

; <label>:51:                                     ; preds = %35, %40
  %52 = phi i8* [ %36, %35 ], [ %33, %40 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %52) #5, !dbg !2350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2350
  call void @addReplySds(%struct.client* %0, i8* nonnull %1) #10, !dbg !2351
  %53 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 0), align 8, !dbg !2352, !tbaa !2057
  call void @addReply(%struct.client* %0, %struct.redisObject* %53) #10, !dbg !2353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2354
  ret void, !dbg !2354
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyBulkLongLong(%struct.client*, i64) local_unnamed_addr #0 !dbg !2355 {
  %3 = alloca [64 x i8], align 16
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0, !dbg !2366
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #5, !dbg !2366
  %5 = call i32 @ll2string(i8* nonnull %4, i64 64, i64 %1) #8, !dbg !2368
  %6 = sext i32 %5 to i64, !dbg !2370
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %4, i64 %6) #10, !dbg !2371
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #5, !dbg !2372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2372
  ret void, !dbg !2372
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyHelp(%struct.client*, i8** nocapture readonly) local_unnamed_addr #0 !dbg !2373 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2385
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2385, !tbaa !625
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2386, !tbaa !476
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 2, !dbg !2387
  %7 = load i8*, i8** %6, align 8, !dbg !2387, !tbaa !376
  %8 = tail call i8* @sdsnew(i8* %7) #8, !dbg !2388
  %9 = tail call i8* @addDeferredMultiBulkLength(%struct.client* %0) #10, !dbg !2390
  tail call void @sdstoupper(i8* %8) #8, !dbg !2393
  tail call void (%struct.client*, i8*, ...) @addReplyStatusFormat(%struct.client* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0), i8* %8) #10, !dbg !2394
  tail call void @sdsfree(i8* %8) #8, !dbg !2395
  %10 = load i8*, i8** %1, align 8, !dbg !2396, !tbaa !476
  %11 = icmp eq i8* %10, null, !dbg !2397
  br i1 %11, label %22, label %12, !dbg !2397

; <label>:12:                                     ; preds = %2, %12
  %13 = phi i64 [ %19, %12 ], [ 1, %2 ]
  %14 = phi i8* [ %17, %12 ], [ %10, %2 ]
  %15 = tail call i64 @strlen(i8* nonnull %14) #8, !dbg !2401
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 1) #8, !dbg !2406
  tail call void @addReplyString(%struct.client* %0, i8* nonnull %14, i64 %15) #8, !dbg !2407
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 2) #8, !dbg !2408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2410
  %16 = getelementptr inbounds i8*, i8** %1, i64 %13, !dbg !2396
  %17 = load i8*, i8** %16, align 8, !dbg !2396, !tbaa !476
  %18 = icmp eq i8* %17, null, !dbg !2397
  %19 = add nuw i64 %13, 1, !dbg !2411
  br i1 %18, label %20, label %12, !dbg !2397, !llvm.loop !2412

; <label>:20:                                     ; preds = %12
  %21 = and i64 %19, 4294967295, !dbg !2414
  br label %22, !dbg !2414

; <label>:22:                                     ; preds = %20, %2
  %23 = phi i64 [ 1, %2 ], [ %21, %20 ]
  tail call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %9, i64 %23) #10, !dbg !2415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2416
  ret void, !dbg !2416
}

; Function Attrs: noredzone
declare dso_local i8* @sdsnew(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdstoupper(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplySubcommandSyntaxError(%struct.client*) local_unnamed_addr #0 !dbg !2417 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2422
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2422, !tbaa !625
  %4 = load %struct.redisObject*, %struct.redisObject** %3, align 8, !dbg !2423, !tbaa !476
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %4, i64 0, i32 2, !dbg !2424
  %6 = load i8*, i8** %5, align 8, !dbg !2424, !tbaa !376
  %7 = tail call i8* @sdsnew(i8* %6) #8, !dbg !2425
  tail call void @sdstoupper(i8* %7) #8, !dbg !2427
  %8 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2428, !tbaa !625
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 1, !dbg !2429
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !2429, !tbaa !476
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !2430
  %12 = load i8*, i8** %11, align 8, !dbg !2430, !tbaa !376
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.17, i64 0, i64 0), i8* %12, i8* %7) #10, !dbg !2431
  tail call void @sdsfree(i8* %7) #8, !dbg !2432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2433
  ret void, !dbg !2433
}

; Function Attrs: noredzone nounwind
define dso_local void @AddReplyFromClient(%struct.client*, %struct.client*) local_unnamed_addr #0 !dbg !2434 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2445
  %4 = load i32, i32* %3, align 8, !dbg !2445, !tbaa !927
  %5 = and i32 %4, 134217984, !dbg !2446
  %6 = icmp eq i32 %5, 0, !dbg !2446
  br i1 %6, label %7, label %45, !dbg !2447

; <label>:7:                                      ; preds = %2
  %8 = and i32 %4, 20971520, !dbg !2448
  %9 = icmp ne i32 %8, 0, !dbg !2448
  %10 = and i32 %4, 8194, !dbg !2449
  %11 = icmp eq i32 %10, 2, !dbg !2449
  %12 = or i1 %9, %11, !dbg !2450
  br i1 %12, label %44, label %13, !dbg !2450

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !2451
  %15 = load i32, i32* %14, align 8, !dbg !2451, !tbaa !596
  %16 = icmp slt i32 %15, 1, !dbg !2452
  br i1 %16, label %44, label %17, !dbg !2453

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !2456
  %19 = load i32, i32* %18, align 8, !dbg !2456, !tbaa !602
  %20 = icmp eq i32 %19, 0, !dbg !2457
  br i1 %20, label %22, label %21, !dbg !2458

; <label>:21:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2459
  br label %45, !dbg !2460

; <label>:22:                                     ; preds = %17
  %23 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !2461
  %24 = load %struct.list*, %struct.list** %23, align 8, !dbg !2461, !tbaa !664
  %25 = getelementptr inbounds %struct.list, %struct.list* %24, i64 0, i32 5, !dbg !2461
  %26 = load i64, i64* %25, align 8, !dbg !2461, !tbaa !1078
  %27 = icmp eq i64 %26, 0, !dbg !2458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2459
  br i1 %27, label %28, label %45, !dbg !2460

; <label>:28:                                     ; preds = %22
  %29 = and i32 %4, 2097152, !dbg !2464
  %30 = icmp eq i32 %29, 0, !dbg !2464
  br i1 %30, label %31, label %43, !dbg !2465

; <label>:31:                                     ; preds = %28
  %32 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !2466
  %33 = load i32, i32* %32, align 8, !dbg !2466, !tbaa !1033
  switch i32 %33, label %43 [
    i32 0, label %38
    i32 9, label %34
  ], !dbg !2467

; <label>:34:                                     ; preds = %31
  %35 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !2468
  %36 = load i32, i32* %35, align 4, !dbg !2468, !tbaa !1036
  %37 = icmp eq i32 %36, 0, !dbg !2469
  br i1 %37, label %38, label %43, !dbg !2470

; <label>:38:                                     ; preds = %34, %31
  %39 = or i32 %4, 2097152, !dbg !2471
  store i32 %39, i32* %3, align 8, !dbg !2471, !tbaa !927
  %40 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !2472, !tbaa !1042
  %41 = bitcast %struct.client* %0 to i8*, !dbg !2473
  %42 = tail call %struct.list* @listAddNodeHead(%struct.list* %40, i8* %41) #8, !dbg !2474
  br label %43, !dbg !2475

; <label>:43:                                     ; preds = %38, %34, %31, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2476
  br label %45, !dbg !2477

; <label>:44:                                     ; preds = %7, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2478
  br label %64

; <label>:45:                                     ; preds = %2, %22, %43, %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2478
  %46 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 48, i64 0, !dbg !2479
  %47 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 47, !dbg !2480
  %48 = load i32, i32* %47, align 8, !dbg !2480, !tbaa !602
  %49 = sext i32 %48 to i64, !dbg !2481
  tail call void @addReplyString(%struct.client* nonnull %0, i8* nonnull %46, i64 %49) #10, !dbg !2482
  %50 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 15, !dbg !2483
  %51 = load %struct.list*, %struct.list** %50, align 8, !dbg !2483, !tbaa !664
  %52 = getelementptr inbounds %struct.list, %struct.list* %51, i64 0, i32 5, !dbg !2483
  %53 = load i64, i64* %52, align 8, !dbg !2483, !tbaa !1078
  %54 = icmp eq i64 %53, 0, !dbg !2483
  br i1 %54, label %58, label %55, !dbg !2485

; <label>:55:                                     ; preds = %45
  %56 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !2486
  %57 = load %struct.list*, %struct.list** %56, align 8, !dbg !2486, !tbaa !664
  tail call void @listJoin(%struct.list* %57, %struct.list* %51) #8, !dbg !2487
  br label %58, !dbg !2487

; <label>:58:                                     ; preds = %45, %55
  %59 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 16, !dbg !2488
  %60 = load i64, i64* %59, align 8, !dbg !2488, !tbaa !667
  %61 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !2489
  %62 = load i64, i64* %61, align 8, !dbg !2490, !tbaa !667
  %63 = add i64 %62, %60, !dbg !2490
  store i64 %63, i64* %61, align 8, !dbg !2490, !tbaa !667
  store i64 0, i64* %59, align 8, !dbg !2491, !tbaa !667
  store i32 0, i32* %47, align 8, !dbg !2492, !tbaa !602
  br label %64, !dbg !2493

; <label>:64:                                     ; preds = %44, %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2493
  ret void, !dbg !2493
}

; Function Attrs: noredzone
declare dso_local void @listJoin(%struct.list*, %struct.list*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @copyClientOutputBuffer(%struct.client*, %struct.client*) local_unnamed_addr #0 !dbg !2494 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !2500
  %4 = load %struct.list*, %struct.list** %3, align 8, !dbg !2500, !tbaa !664
  tail call void @listRelease(%struct.list* %4) #8, !dbg !2501
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 17, !dbg !2502
  store i64 0, i64* %5, align 8, !dbg !2503, !tbaa !636
  %6 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 15, !dbg !2504
  %7 = load %struct.list*, %struct.list** %6, align 8, !dbg !2504, !tbaa !664
  %8 = tail call %struct.list* @listDup(%struct.list* %7) #8, !dbg !2505
  store %struct.list* %8, %struct.list** %3, align 8, !dbg !2506, !tbaa !664
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 48, i64 0, !dbg !2507
  %10 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 48, i64 0, !dbg !2508
  %11 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 47, !dbg !2509
  %12 = load i32, i32* %11, align 8, !dbg !2509, !tbaa !602
  %13 = sext i32 %12 to i64, !dbg !2510
  %14 = tail call i8* @memcpy(i8* nonnull %9, i8* nonnull %10, i64 %13) #8, !dbg !2511
  %15 = load i32, i32* %11, align 8, !dbg !2512, !tbaa !602
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !2513
  store i32 %15, i32* %16, align 8, !dbg !2514, !tbaa !602
  %17 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 16, !dbg !2515
  %18 = load i64, i64* %17, align 8, !dbg !2515, !tbaa !667
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !2516
  store i64 %18, i64* %19, align 8, !dbg !2517, !tbaa !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2518
  ret void, !dbg !2518
}

; Function Attrs: noredzone
declare dso_local void @listRelease(%struct.list*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.list* @listDup(%struct.list*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @acceptTcpHandler(%struct.aeEventLoop* nocapture readnone, i32, i8* nocapture readnone, i32) local_unnamed_addr #0 !dbg !2519 {
  %5 = alloca i32, align 4
  %6 = alloca [46 x i8], align 16
  %7 = bitcast i32* %5 to i8*, !dbg !2533
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #5, !dbg !2533
  %8 = getelementptr inbounds [46 x i8], [46 x i8]* %6, i64 0, i64 0, !dbg !2535
  call void @llvm.lifetime.start.p0i8(i64 46, i8* nonnull %8) #5, !dbg !2535
  br label %9, !dbg !2537

; <label>:9:                                      ; preds = %4, %18
  %10 = phi i32 [ 999, %4 ], [ %20, %18 ]
  %11 = call i32 @anetTcpAccept(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 47, i64 0), i32 %1, i8* nonnull %8, i64 46, i32* nonnull %5) #8, !dbg !2539
  %12 = icmp eq i32 %11, -1, !dbg !2542
  br i1 %12, label %13, label %18, !dbg !2544

; <label>:13:                                     ; preds = %9
  %14 = call i32* @__errno() #8, !dbg !2545
  %15 = load i32, i32* %14, align 4, !dbg !2545, !tbaa !549
  %16 = icmp eq i32 %15, 11, !dbg !2548
  br i1 %16, label %22, label %17, !dbg !2549

; <label>:17:                                     ; preds = %13
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 47, i64 0)) #8, !dbg !2550
  br label %22, !dbg !2550

; <label>:18:                                     ; preds = %9
  %19 = load i32, i32* %5, align 4, !dbg !2551, !tbaa !549
  call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* nonnull %8, i32 %19) #8, !dbg !2552
  call fastcc void @acceptCommonHandler(i32 %11, i32 0, i8* nonnull %8) #10, !dbg !2553
  %20 = add nsw i32 %10, -1, !dbg !2554
  %21 = icmp eq i32 %10, 0, !dbg !2537
  br i1 %21, label %22, label %9, !dbg !2537, !llvm.loop !2555

; <label>:22:                                     ; preds = %18, %17, %13
  call void @llvm.lifetime.end.p0i8(i64 46, i8* nonnull %8) #5, !dbg !2557
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #5, !dbg !2557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2557
  ret void, !dbg !2557
}

; Function Attrs: noredzone
declare dso_local i32 @anetTcpAccept(i8*, i32, i8*, i64, i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @acceptCommonHandler(i32, i32, i8*) unnamed_addr #0 !dbg !2558 {
  %4 = tail call %struct.client* @createClient(i32 %0) #10, !dbg !2572
  %5 = icmp eq %struct.client* %4, null, !dbg !2575
  br i1 %5, label %6, label %11, !dbg !2576

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno() #8, !dbg !2577
  %8 = load i32, i32* %7, align 4, !dbg !2577, !tbaa !549
  %9 = tail call i8* @strerror(i32 %8) #8, !dbg !2579
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.100, i64 0, i64 0), i8* %9, i32 %0) #8, !dbg !2580
  %10 = tail call i32 @close(i32 %0) #8, !dbg !2581
  br label %58, !dbg !2582

; <label>:11:                                     ; preds = %3
  %12 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !2583, !tbaa !441
  %13 = getelementptr inbounds %struct.list, %struct.list* %12, i64 0, i32 5, !dbg !2583
  %14 = load i64, i64* %13, align 8, !dbg !2583, !tbaa !1078
  %15 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 226), align 4, !dbg !2584, !tbaa !2585
  %16 = zext i32 %15 to i64, !dbg !2586
  %17 = icmp ugt i64 %14, %16, !dbg !2587
  br i1 %17, label %18, label %25, !dbg !2588

; <label>:18:                                     ; preds = %11
  %19 = getelementptr inbounds %struct.client, %struct.client* %4, i64 0, i32 1, !dbg !2589
  %20 = load i32, i32* %19, align 8, !dbg !2589, !tbaa !596
  %21 = tail call i64 @strlen(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.101, i64 0, i64 0)) #8, !dbg !2591
  %22 = tail call i64 @write(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.101, i64 0, i64 0), i64 %21) #8, !dbg !2592
  %23 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 86), align 8, !dbg !2593, !tbaa !2594
  %24 = add nsw i64 %23, 1, !dbg !2593
  store i64 %24, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 86), align 8, !dbg !2593, !tbaa !2594
  tail call void @freeClient(%struct.client* nonnull %4) #10, !dbg !2595
  br label %58

; <label>:25:                                     ; preds = %11
  %26 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 50), align 8, !dbg !2596, !tbaa !2598
  %27 = icmp ne i32 %26, 0, !dbg !2599
  %28 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 30), align 8, !dbg !2600
  %29 = icmp eq i32 %28, 0, !dbg !2601
  %30 = and i1 %27, %29, !dbg !2602
  %31 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 15), align 8, !dbg !2603
  %32 = icmp eq i8* %31, null, !dbg !2604
  %33 = and i1 %30, %32, !dbg !2602
  br i1 %33, label %34, label %52, !dbg !2602

; <label>:34:                                     ; preds = %25
  %35 = and i32 %1, 2048, !dbg !2605
  %36 = icmp eq i32 %35, 0, !dbg !2605
  %37 = icmp ne i8* %2, null, !dbg !2606
  %38 = and i1 %36, %37, !dbg !2607
  br i1 %38, label %39, label %52, !dbg !2607

; <label>:39:                                     ; preds = %34
  %40 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i64 0, i64 0)) #8, !dbg !2608
  %41 = icmp eq i32 %40, 0, !dbg !2608
  br i1 %41, label %52, label %42, !dbg !2611

; <label>:42:                                     ; preds = %39
  %43 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0)) #8, !dbg !2612
  %44 = icmp eq i32 %43, 0, !dbg !2612
  br i1 %44, label %52, label %45, !dbg !2613

; <label>:45:                                     ; preds = %42
  %46 = getelementptr inbounds %struct.client, %struct.client* %4, i64 0, i32 1, !dbg !2614
  %47 = load i32, i32* %46, align 8, !dbg !2614, !tbaa !596
  %48 = tail call i64 @strlen(i8* getelementptr inbounds ([1102 x i8], [1102 x i8]* @err, i64 0, i64 0)) #8, !dbg !2617
  %49 = tail call i64 @write(i32 %47, i8* getelementptr inbounds ([1102 x i8], [1102 x i8]* @err, i64 0, i64 0), i64 %48) #8, !dbg !2618
  %50 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 86), align 8, !dbg !2619, !tbaa !2594
  %51 = add nsw i64 %50, 1, !dbg !2619
  store i64 %51, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 86), align 8, !dbg !2619, !tbaa !2594
  tail call void @freeClient(%struct.client* nonnull %4) #10, !dbg !2620
  br label %58, !dbg !2621

; <label>:52:                                     ; preds = %42, %39, %34, %25
  %53 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 71), align 8, !dbg !2622, !tbaa !2623
  %54 = add nsw i64 %53, 1, !dbg !2622
  store i64 %54, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 71), align 8, !dbg !2622, !tbaa !2623
  %55 = getelementptr inbounds %struct.client, %struct.client* %4, i64 0, i32 21, !dbg !2624
  %56 = load i32, i32* %55, align 8, !dbg !2625, !tbaa !927
  %57 = or i32 %56, %1, !dbg !2625
  store i32 %57, i32* %55, align 8, !dbg !2625, !tbaa !927
  br label %58, !dbg !2626

; <label>:58:                                     ; preds = %52, %45, %18, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2626
  ret void, !dbg !2626
}

; Function Attrs: noredzone nounwind
define dso_local void @acceptUnixHandler(%struct.aeEventLoop* nocapture readnone, i32, i8* nocapture readnone, i32) local_unnamed_addr #0 !dbg !2627 {
  br label %5, !dbg !2640

; <label>:5:                                      ; preds = %4, %14
  %6 = phi i32 [ 999, %4 ], [ %16, %14 ]
  %7 = tail call i32 @anetUnixAccept(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 47, i64 0), i32 %1) #8, !dbg !2641
  %8 = icmp eq i32 %7, -1, !dbg !2644
  br i1 %8, label %9, label %14, !dbg !2646

; <label>:9:                                      ; preds = %5
  %10 = tail call i32* @__errno() #8, !dbg !2647
  %11 = load i32, i32* %10, align 4, !dbg !2647, !tbaa !549
  %12 = icmp eq i32 %11, 11, !dbg !2650
  br i1 %12, label %18, label %13, !dbg !2651

; <label>:13:                                     ; preds = %9
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 47, i64 0)) #8, !dbg !2652
  br label %18, !dbg !2652

; <label>:14:                                     ; preds = %5
  %15 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 31), align 8, !dbg !2653, !tbaa !2654
  tail call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i8* %15) #8, !dbg !2655
  tail call fastcc void @acceptCommonHandler(i32 %7, i32 2048, i8* null) #10, !dbg !2656
  %16 = add nsw i32 %6, -1, !dbg !2657
  %17 = icmp eq i32 %6, 0, !dbg !2640
  br i1 %17, label %18, label %5, !dbg !2640, !llvm.loop !2658

; <label>:18:                                     ; preds = %14, %13, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2660
  ret void, !dbg !2660
}

; Function Attrs: noredzone
declare dso_local i32 @anetUnixAccept(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @disconnectSlaves() local_unnamed_addr #0 !dbg !2661 {
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !2667, !tbaa !1016
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 5, !dbg !2667
  %3 = load i64, i64* %2, align 8, !dbg !2667, !tbaa !1078
  %4 = icmp eq i64 %3, 0, !dbg !2668
  br i1 %4, label %16, label %5, !dbg !2668

; <label>:5:                                      ; preds = %0, %5
  %6 = phi %struct.list* [ %12, %5 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct.list, %struct.list* %6, i64 0, i32 0, !dbg !2669
  %8 = load %struct.listNode*, %struct.listNode** %7, align 8, !dbg !2669, !tbaa !2670
  %9 = getelementptr inbounds %struct.listNode, %struct.listNode* %8, i64 0, i32 2, !dbg !2672
  %10 = bitcast i8** %9 to %struct.client**, !dbg !2672
  %11 = load %struct.client*, %struct.client** %10, align 8, !dbg !2672, !tbaa !1161
  tail call void @freeClient(%struct.client* %11) #10, !dbg !2673
  %12 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !2667, !tbaa !1016
  %13 = getelementptr inbounds %struct.list, %struct.list* %12, i64 0, i32 5, !dbg !2667
  %14 = load i64, i64* %13, align 8, !dbg !2667, !tbaa !1078
  %15 = icmp eq i64 %14, 0, !dbg !2668
  br i1 %15, label %16, label %5, !dbg !2668, !llvm.loop !2674

; <label>:16:                                     ; preds = %5, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2676
  ret void, !dbg !2676
}

; Function Attrs: noredzone nounwind
define dso_local void @freeClient(%struct.client*) local_unnamed_addr #0 !dbg !2677 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2685
  %3 = load i32, i32* %2, align 8, !dbg !2685, !tbaa !927
  %4 = and i32 %3, 268435456, !dbg !2687
  %5 = icmp eq i32 %4, 0, !dbg !2687
  br i1 %5, label %15, label %6, !dbg !2688

; <label>:6:                                      ; preds = %1
  %7 = and i32 %3, 1280, !dbg !2692
  %8 = icmp eq i32 %7, 0, !dbg !2692
  br i1 %8, label %9, label %14, !dbg !2692

; <label>:9:                                      ; preds = %6
  %10 = or i32 %3, 1024, !dbg !2693
  store i32 %10, i32* %2, align 8, !dbg !2693, !tbaa !927
  %11 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2694, !tbaa !1308
  %12 = bitcast %struct.client* %0 to i8*, !dbg !2695
  %13 = tail call %struct.list* @listAddNodeTail(%struct.list* %11, i8* %12) #8, !dbg !2696
  br label %14, !dbg !2697

; <label>:14:                                     ; preds = %6, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2697
  br label %148, !dbg !2698

; <label>:15:                                     ; preds = %1
  %16 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2699, !tbaa !2701
  %17 = icmp eq %struct.client* %16, null, !dbg !2702
  %18 = and i32 %3, 2, !dbg !2703
  %19 = icmp eq i32 %18, 0, !dbg !2703
  %20 = or i1 %19, %17, !dbg !2704
  br i1 %20, label %26, label %21, !dbg !2704

; <label>:21:                                     ; preds = %15
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !2705
  %22 = load i32, i32* %2, align 8, !dbg !2707, !tbaa !927
  %23 = and i32 %22, 1104, !dbg !2709
  %24 = icmp eq i32 %23, 0, !dbg !2709
  br i1 %24, label %25, label %26, !dbg !2710

; <label>:25:                                     ; preds = %21
  tail call void @replicationCacheMaster(%struct.client* nonnull %0) #8, !dbg !2711
  br label %148, !dbg !2713

; <label>:26:                                     ; preds = %21, %15
  %27 = phi i32 [ %22, %21 ], [ %3, %15 ], !dbg !2714
  %28 = and i32 %27, 5, !dbg !2716
  %29 = icmp eq i32 %28, 1, !dbg !2716
  br i1 %29, label %30, label %32, !dbg !2716

; <label>:30:                                     ; preds = %26
  %31 = tail call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #8, !dbg !2717
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i8* %31) #8, !dbg !2719
  br label %32, !dbg !2720

; <label>:32:                                     ; preds = %26, %30
  %33 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 4, !dbg !2721
  %34 = load i8*, i8** %33, align 8, !dbg !2721, !tbaa !609
  tail call void @sdsfree(i8* %34) #8, !dbg !2722
  %35 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 6, !dbg !2723
  %36 = load i8*, i8** %35, align 8, !dbg !2723, !tbaa !613
  tail call void @sdsfree(i8* %36) #8, !dbg !2724
  store i8* null, i8** %33, align 8, !dbg !2725, !tbaa !609
  %37 = load i32, i32* %2, align 8, !dbg !2726, !tbaa !927
  %38 = and i32 %37, 16, !dbg !2728
  %39 = icmp eq i32 %38, 0, !dbg !2728
  br i1 %39, label %41, label %40, !dbg !2729

; <label>:40:                                     ; preds = %32
  tail call void @unblockClient(%struct.client* nonnull %0) #8, !dbg !2730
  br label %41, !dbg !2730

; <label>:41:                                     ; preds = %32, %40
  %42 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 1, !dbg !2731
  %43 = load %struct.dict*, %struct.dict** %42, align 8, !dbg !2731, !tbaa !685
  tail call void @dictRelease(%struct.dict* %43) #8, !dbg !2732
  tail call void @unwatchAllKeys(%struct.client* nonnull %0) #8, !dbg !2733
  %44 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 42, !dbg !2734
  %45 = load %struct.list*, %struct.list** %44, align 8, !dbg !2734, !tbaa !706
  tail call void @listRelease(%struct.list* %45) #8, !dbg !2735
  %46 = tail call i32 @pubsubUnsubscribeAllChannels(%struct.client* nonnull %0, i32 0) #8, !dbg !2736
  %47 = tail call i32 @pubsubUnsubscribeAllPatterns(%struct.client* nonnull %0, i32 0) #8, !dbg !2737
  %48 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !2738
  %49 = load %struct.dict*, %struct.dict** %48, align 8, !dbg !2738, !tbaa !710
  tail call void @dictRelease(%struct.dict* %49) #8, !dbg !2739
  %50 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !2740
  %51 = load %struct.list*, %struct.list** %50, align 8, !dbg !2740, !tbaa !714
  tail call void @listRelease(%struct.list* %51) #8, !dbg !2741
  %52 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !2742
  %53 = load %struct.list*, %struct.list** %52, align 8, !dbg !2742, !tbaa !664
  tail call void @listRelease(%struct.list* %53) #8, !dbg !2743
  %54 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2751
  %55 = load i32, i32* %54, align 8, !dbg !2751, !tbaa !622
  %56 = icmp sgt i32 %55, 0, !dbg !2754
  br i1 %56, label %57, label %68, !dbg !2755

; <label>:57:                                     ; preds = %41
  %58 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %59, !dbg !2755

; <label>:59:                                     ; preds = %59, %57
  %60 = phi i64 [ 0, %57 ], [ %64, %59 ]
  %61 = load %struct.redisObject**, %struct.redisObject*** %58, align 8, !dbg !2756, !tbaa !625
  %62 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %61, i64 %60, !dbg !2757
  %63 = load %struct.redisObject*, %struct.redisObject** %62, align 8, !dbg !2757, !tbaa !476
  tail call void @decrRefCount(%struct.redisObject* %63) #8, !dbg !2758
  %64 = add nuw nsw i64 %60, 1, !dbg !2759
  %65 = load i32, i32* %54, align 8, !dbg !2751, !tbaa !622
  %66 = sext i32 %65 to i64, !dbg !2754
  %67 = icmp slt i64 %64, %66, !dbg !2754
  br i1 %67, label %59, label %68, !dbg !2755, !llvm.loop !2760

; <label>:68:                                     ; preds = %59, %41
  store i32 0, i32* %54, align 8, !dbg !2763, !tbaa !622
  %69 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !2764
  store %struct.redisCommand* null, %struct.redisCommand** %69, align 8, !dbg !2765, !tbaa !2766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2767
  tail call void @unlinkClient(%struct.client* nonnull %0) #10, !dbg !2768
  %70 = load i32, i32* %2, align 8, !dbg !2769, !tbaa !927
  %71 = and i32 %70, 1, !dbg !2770
  %72 = icmp eq i32 %71, 0, !dbg !2770
  br i1 %72, label %112, label %73, !dbg !2771

; <label>:73:                                     ; preds = %68
  %74 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !2772
  %75 = load i32, i32* %74, align 8, !dbg !2772, !tbaa !1033
  %76 = icmp eq i32 %75, 8, !dbg !2774
  br i1 %76, label %77, label %88, !dbg !2775

; <label>:77:                                     ; preds = %73
  %78 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 25, !dbg !2776
  %79 = load i32, i32* %78, align 8, !dbg !2776, !tbaa !2779
  %80 = icmp eq i32 %79, -1, !dbg !2780
  br i1 %80, label %83, label %81, !dbg !2781

; <label>:81:                                     ; preds = %77
  %82 = tail call i32 @close(i32 %79) #8, !dbg !2782
  br label %83, !dbg !2782

; <label>:83:                                     ; preds = %77, %81
  %84 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 28, !dbg !2783
  %85 = load i8*, i8** %84, align 8, !dbg !2783, !tbaa !2785
  %86 = icmp eq i8* %85, null, !dbg !2786
  br i1 %86, label %88, label %87, !dbg !2787

; <label>:87:                                     ; preds = %83
  tail call void @sdsfree(i8* nonnull %85) #8, !dbg !2788
  br label %88, !dbg !2788

; <label>:88:                                     ; preds = %83, %87, %73
  %89 = load i32, i32* %2, align 8, !dbg !2789, !tbaa !927
  %90 = and i32 %89, 4, !dbg !2790
  %91 = icmp eq i32 %90, 0, !dbg !2790
  %92 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 42), align 8, !dbg !2791
  %93 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !2792
  %94 = select i1 %91, %struct.list* %93, %struct.list* %92, !dbg !2793
  %95 = bitcast %struct.client* %0 to i8*, !dbg !2795
  %96 = tail call %struct.listNode* @listSearchKey(%struct.list* %94, i8* %95) #8, !dbg !2796
  %97 = icmp eq %struct.listNode* %96, null, !dbg !2798
  br i1 %97, label %98, label %99, !dbg !2798

; <label>:98:                                     ; preds = %88
  tail call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 922) #8, !dbg !2798
  tail call void @_exit(i32 1) #9, !dbg !2798
  unreachable, !dbg !2798

; <label>:99:                                     ; preds = %88
  tail call void @listDelNode(%struct.list* %94, %struct.listNode* nonnull %96) #8, !dbg !2799
  %100 = load i32, i32* %2, align 8, !dbg !2800, !tbaa !927
  %101 = and i32 %100, 1, !dbg !2802
  %102 = icmp eq i32 %101, 0, !dbg !2802
  br i1 %102, label %110, label %103, !dbg !2803

; <label>:103:                                    ; preds = %99
  %104 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !2804, !tbaa !1016
  %105 = getelementptr inbounds %struct.list, %struct.list* %104, i64 0, i32 5, !dbg !2804
  %106 = load i64, i64* %105, align 8, !dbg !2804, !tbaa !1078
  %107 = icmp eq i64 %106, 0, !dbg !2805
  br i1 %107, label %108, label %110, !dbg !2806

; <label>:108:                                    ; preds = %103
  %109 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2807, !tbaa !639
  store i64 %109, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 189), align 8, !dbg !2808, !tbaa !2809
  br label %110, !dbg !2810

; <label>:110:                                    ; preds = %99, %108, %103
  tail call void @refreshGoodSlavesCount() #8, !dbg !2811
  %111 = load i32, i32* %2, align 8, !dbg !2812, !tbaa !927
  br label %112, !dbg !2814

; <label>:112:                                    ; preds = %68, %110
  %113 = phi i32 [ %70, %68 ], [ %111, %110 ], !dbg !2812
  %114 = and i32 %113, 2, !dbg !2815
  %115 = icmp eq i32 %114, 0, !dbg !2815
  br i1 %115, label %118, label %116, !dbg !2816

; <label>:116:                                    ; preds = %112
  tail call void @replicationHandleMasterDisconnection() #8, !dbg !2817
  %117 = load i32, i32* %2, align 8, !dbg !2818, !tbaa !927
  br label %118, !dbg !2817

; <label>:118:                                    ; preds = %112, %116
  %119 = phi i32 [ %113, %112 ], [ %117, %116 ], !dbg !2818
  %120 = and i32 %119, 1024, !dbg !2820
  %121 = icmp eq i32 %120, 0, !dbg !2820
  br i1 %121, label %130, label %122, !dbg !2821

; <label>:122:                                    ; preds = %118
  %123 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2822, !tbaa !1308
  %124 = bitcast %struct.client* %0 to i8*, !dbg !2824
  %125 = tail call %struct.listNode* @listSearchKey(%struct.list* %123, i8* %124) #8, !dbg !2825
  %126 = icmp eq %struct.listNode* %125, null, !dbg !2826
  br i1 %126, label %127, label %128, !dbg !2826

; <label>:127:                                    ; preds = %122
  tail call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 940) #8, !dbg !2826
  tail call void @_exit(i32 1) #9, !dbg !2826
  unreachable, !dbg !2826

; <label>:128:                                    ; preds = %122
  %129 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2827, !tbaa !1308
  tail call void @listDelNode(%struct.list* %129, %struct.listNode* nonnull %125) #8, !dbg !2828
  br label %130, !dbg !2829

; <label>:130:                                    ; preds = %118, %128
  %131 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 3, !dbg !2830
  %132 = load %struct.redisObject*, %struct.redisObject** %131, align 8, !dbg !2830, !tbaa !599
  %133 = icmp eq %struct.redisObject* %132, null, !dbg !2832
  br i1 %133, label %135, label %134, !dbg !2833

; <label>:134:                                    ; preds = %130
  tail call void @decrRefCount(%struct.redisObject* nonnull %132) #8, !dbg !2834
  br label %135, !dbg !2834

; <label>:135:                                    ; preds = %130, %134
  %136 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2835
  %137 = bitcast %struct.redisObject*** %136 to i8**, !dbg !2835
  %138 = load i8*, i8** %137, align 8, !dbg !2835, !tbaa !625
  tail call void @zfree(i8* %138) #8, !dbg !2836
  tail call void @freeClientMultiState(%struct.client* nonnull %0) #8, !dbg !2837
  %139 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 45, !dbg !2838
  %140 = load i8*, i8** %139, align 8, !dbg !2838, !tbaa !717
  tail call void @sdsfree(i8* %140) #8, !dbg !2839
  %141 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2840, !tbaa !476
  %142 = icmp eq %struct.uk_alloc* %141, null, !dbg !2853
  br i1 %142, label %143, label %144, !dbg !2856, !prof !545

; <label>:143:                                    ; preds = %135
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i64 0, i64 0)) #8, !dbg !2857
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2857
  unreachable, !dbg !2857

; <label>:144:                                    ; preds = %135
  %145 = bitcast %struct.client* %0 to i8*, !dbg !2859
  %146 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %141, i64 0, i32 5, !dbg !2862
  %147 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %146, align 8, !dbg !2862, !tbaa !476
  tail call void %147(%struct.uk_alloc* nonnull %141, i8* %145) #8, !dbg !2863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2865
  br label %148, !dbg !2866

; <label>:148:                                    ; preds = %144, %25, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2866
  ret void, !dbg !2866
}

; Function Attrs: noredzone nounwind
define dso_local void @unlinkClient(%struct.client*) local_unnamed_addr #0 !dbg !2867 {
  %2 = alloca i64, align 8
  %3 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !2877, !tbaa !2879
  %4 = icmp eq %struct.client* %3, %0, !dbg !2880
  br i1 %4, label %5, label %6, !dbg !2881

; <label>:5:                                      ; preds = %1
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !2882, !tbaa !2879
  br label %6, !dbg !2883

; <label>:6:                                      ; preds = %5, %1
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !2884
  %8 = load i32, i32* %7, align 8, !dbg !2884, !tbaa !596
  %9 = icmp eq i32 %8, -1, !dbg !2885
  br i1 %9, label %10, label %12, !dbg !2886

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2887
  br label %44, !dbg !2886

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 46, !dbg !2889
  %14 = load %struct.listNode*, %struct.listNode** %13, align 8, !dbg !2889, !tbaa !455
  %15 = icmp eq %struct.listNode* %14, null, !dbg !2890
  br i1 %15, label %25, label %16, !dbg !2891

; <label>:16:                                     ; preds = %12
  %17 = bitcast i64* %2 to i8*, !dbg !2892
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #5, !dbg !2892
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 0, !dbg !2893
  %19 = load i64, i64* %18, align 8, !dbg !2893, !tbaa !461
  %20 = tail call i64 @intrev64(i64 %19) #8, !dbg !2893
  store i64 %20, i64* %2, align 8, !dbg !2894, !tbaa !410
  %21 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 44), align 8, !dbg !2895, !tbaa !464
  %22 = call i32 @raxRemove(%struct.rax* %21, i8* nonnull %17, i64 8, i8** null) #8, !dbg !2896
  %23 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !2897, !tbaa !441
  %24 = load %struct.listNode*, %struct.listNode** %13, align 8, !dbg !2898, !tbaa !455
  call void @listDelNode(%struct.list* %23, %struct.listNode* %24) #8, !dbg !2899
  store %struct.listNode* null, %struct.listNode** %13, align 8, !dbg !2900, !tbaa !455
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #5, !dbg !2901
  br label %25, !dbg !2902

; <label>:25:                                     ; preds = %12, %16
  %26 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2903
  %27 = load i32, i32* %26, align 8, !dbg !2903, !tbaa !927
  %28 = and i32 %27, 1, !dbg !2905
  %29 = icmp eq i32 %28, 0, !dbg !2905
  br i1 %29, label %37, label %30, !dbg !2906

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !2907
  %32 = load i32, i32* %31, align 8, !dbg !2907, !tbaa !1033
  %33 = icmp eq i32 %32, 7, !dbg !2908
  br i1 %33, label %34, label %37, !dbg !2909

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* %7, align 8, !dbg !2910, !tbaa !596
  %36 = call i32 @shutdown(i32 %35, i32 2) #8, !dbg !2912
  br label %37, !dbg !2913

; <label>:37:                                     ; preds = %25, %34, %30
  %38 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2914, !tbaa !580
  %39 = load i32, i32* %7, align 8, !dbg !2915, !tbaa !596
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %38, i32 %39, i32 1) #8, !dbg !2916
  %40 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2917, !tbaa !580
  %41 = load i32, i32* %7, align 8, !dbg !2918, !tbaa !596
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %40, i32 %41, i32 2) #8, !dbg !2919
  %42 = load i32, i32* %7, align 8, !dbg !2920, !tbaa !596
  %43 = call i32 @close(i32 %42) #8, !dbg !2921
  store i32 -1, i32* %7, align 8, !dbg !2922, !tbaa !596
  br label %44, !dbg !2923

; <label>:44:                                     ; preds = %10, %37
  %45 = phi i32* [ %11, %10 ], [ %26, %37 ], !dbg !2887
  %46 = load i32, i32* %45, align 8, !dbg !2887, !tbaa !927
  %47 = and i32 %46, 2097152, !dbg !2924
  %48 = icmp eq i32 %47, 0, !dbg !2924
  br i1 %48, label %59, label %49, !dbg !2925

; <label>:49:                                     ; preds = %44
  %50 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !2926, !tbaa !1042
  %51 = bitcast %struct.client* %0 to i8*, !dbg !2928
  %52 = call %struct.listNode* @listSearchKey(%struct.list* %50, i8* %51) #8, !dbg !2929
  %53 = icmp eq %struct.listNode* %52, null, !dbg !2931
  br i1 %53, label %54, label %55, !dbg !2931

; <label>:54:                                     ; preds = %49
  call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 838) #8, !dbg !2931
  call void @_exit(i32 1) #9, !dbg !2931
  unreachable, !dbg !2931

; <label>:55:                                     ; preds = %49
  %56 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !2932, !tbaa !1042
  call void @listDelNode(%struct.list* %56, %struct.listNode* nonnull %52) #8, !dbg !2933
  %57 = load i32, i32* %45, align 8, !dbg !2934, !tbaa !927
  %58 = and i32 %57, -2097153, !dbg !2934
  store i32 %58, i32* %45, align 8, !dbg !2934, !tbaa !927
  br label %59, !dbg !2935

; <label>:59:                                     ; preds = %44, %55
  %60 = phi i32 [ %46, %44 ], [ %58, %55 ], !dbg !2936
  %61 = trunc i32 %60 to i8, !dbg !2938
  %62 = icmp slt i8 %61, 0, !dbg !2938
  br i1 %62, label %63, label %73, !dbg !2939

; <label>:63:                                     ; preds = %59
  %64 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 235), align 8, !dbg !2940, !tbaa !2942
  %65 = bitcast %struct.client* %0 to i8*, !dbg !2943
  %66 = call %struct.listNode* @listSearchKey(%struct.list* %64, i8* %65) #8, !dbg !2944
  %67 = icmp eq %struct.listNode* %66, null, !dbg !2945
  br i1 %67, label %68, label %69, !dbg !2945

; <label>:68:                                     ; preds = %63
  call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 847) #8, !dbg !2945
  call void @_exit(i32 1) #9, !dbg !2945
  unreachable, !dbg !2945

; <label>:69:                                     ; preds = %63
  %70 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 235), align 8, !dbg !2946, !tbaa !2942
  call void @listDelNode(%struct.list* %70, %struct.listNode* nonnull %66) #8, !dbg !2947
  %71 = load i32, i32* %45, align 8, !dbg !2948, !tbaa !927
  %72 = and i32 %71, -129, !dbg !2948
  store i32 %72, i32* %45, align 8, !dbg !2948, !tbaa !927
  br label %73, !dbg !2949

; <label>:73:                                     ; preds = %69, %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2950
  ret void, !dbg !2950
}

; Function Attrs: noredzone
declare dso_local i32 @raxRemove(%struct.rax*, i8*, i64, i8**) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @shutdown(i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @aeDeleteFileEvent(%struct.aeEventLoop*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listSearchKey(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @freeClientAsync(%struct.client*) local_unnamed_addr #0 !dbg !1299 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2952
  %3 = load i32, i32* %2, align 8, !dbg !2952, !tbaa !927
  %4 = and i32 %3, 1280, !dbg !2953
  %5 = icmp eq i32 %4, 0, !dbg !2953
  br i1 %5, label %6, label %11, !dbg !2953

; <label>:6:                                      ; preds = %1
  %7 = or i32 %3, 1024, !dbg !2954
  store i32 %7, i32* %2, align 8, !dbg !2954, !tbaa !927
  %8 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2955, !tbaa !1308
  %9 = bitcast %struct.client* %0 to i8*, !dbg !2956
  %10 = tail call %struct.list* @listAddNodeTail(%struct.list* %8, i8* %9) #8, !dbg !2957
  br label %11, !dbg !2958

; <label>:11:                                     ; preds = %1, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2958
  ret void, !dbg !2958
}

; Function Attrs: noredzone
declare dso_local void @replicationCacheMaster(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @replicationGetSlaveName(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @unblockClient(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dictRelease(%struct.dict*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @unwatchAllKeys(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @pubsubUnsubscribeAllChannels(%struct.client*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @pubsubUnsubscribeAllPatterns(%struct.client*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @refreshGoodSlavesCount() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @replicationHandleMasterDisconnection() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @freeClientMultiState(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @freeClientsInAsyncFreeQueue() local_unnamed_addr #0 !dbg !2959 {
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2964, !tbaa !1308
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 5, !dbg !2964
  %3 = load i64, i64* %2, align 8, !dbg !2964, !tbaa !1078
  %4 = icmp eq i64 %3, 0, !dbg !2965
  br i1 %4, label %20, label %5, !dbg !2965

; <label>:5:                                      ; preds = %0, %5
  %6 = phi %struct.list* [ %16, %5 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct.list, %struct.list* %6, i64 0, i32 0, !dbg !2966
  %8 = load %struct.listNode*, %struct.listNode** %7, align 8, !dbg !2966, !tbaa !2670
  %9 = getelementptr inbounds %struct.listNode, %struct.listNode* %8, i64 0, i32 2, !dbg !2968
  %10 = bitcast i8** %9 to %struct.client**, !dbg !2968
  %11 = load %struct.client*, %struct.client** %10, align 8, !dbg !2968, !tbaa !1161
  %12 = getelementptr inbounds %struct.client, %struct.client* %11, i64 0, i32 21, !dbg !2970
  %13 = load i32, i32* %12, align 8, !dbg !2971, !tbaa !927
  %14 = and i32 %13, -1025, !dbg !2971
  store i32 %14, i32* %12, align 8, !dbg !2971, !tbaa !927
  tail call void @freeClient(%struct.client* %11) #10, !dbg !2972
  %15 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2973, !tbaa !1308
  tail call void @listDelNode(%struct.list* %15, %struct.listNode* %8) #8, !dbg !2974
  %16 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2964, !tbaa !1308
  %17 = getelementptr inbounds %struct.list, %struct.list* %16, i64 0, i32 5, !dbg !2964
  %18 = load i64, i64* %17, align 8, !dbg !2964, !tbaa !1078
  %19 = icmp eq i64 %18, 0, !dbg !2965
  br i1 %19, label %20, label %5, !dbg !2965, !llvm.loop !2975

; <label>:20:                                     ; preds = %5, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2977
  ret void, !dbg !2977
}

; Function Attrs: noredzone nounwind
define dso_local %struct.client* @lookupClientByID(i64) local_unnamed_addr #0 !dbg !2978 {
  %2 = alloca i64, align 8
  %3 = tail call i64 @intrev64(i64 %0) #8, !dbg !2985
  store i64 %3, i64* %2, align 8, !dbg !2986, !tbaa !410
  %4 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 44), align 8, !dbg !2987, !tbaa !464
  %5 = bitcast i64* %2 to i8*, !dbg !2988
  %6 = call i8* @raxFind(%struct.rax* %4, i8* nonnull %5, i64 8) #8, !dbg !2989
  %7 = bitcast i8* %6 to %struct.client*, !dbg !2989
  %8 = load %struct.client*, %struct.client** bitcast (i8** @raxNotFound to %struct.client**), align 8, !dbg !2991, !tbaa !476
  %9 = icmp eq %struct.client* %8, %7, !dbg !2992
  %10 = select i1 %9, %struct.client* null, %struct.client* %7, !dbg !2993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2994
  ret %struct.client* %10, !dbg !2994
}

; Function Attrs: noredzone
declare dso_local i8* @raxFind(%struct.rax*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @writeToClient(i32, %struct.client*, i32) local_unnamed_addr #0 !dbg !2995 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 47
  %5 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 15
  %6 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 16
  %7 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 17
  %8 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 21
  br label %9, !dbg !3011

; <label>:9:                                      ; preds = %96, %3
  %10 = phi i64 [ 0, %3 ], [ %82, %96 ]
  %11 = phi i64 [ 0, %3 ], [ %83, %96 ]
  br label %12, !dbg !3012

; <label>:12:                                     ; preds = %9, %49
  %13 = load i32, i32* %4, align 8, !dbg !3012, !tbaa !602
  %14 = icmp eq i32 %13, 0, !dbg !3015
  br i1 %14, label %15, label %20, !dbg !3016

; <label>:15:                                     ; preds = %12
  %16 = load %struct.list*, %struct.list** %5, align 8, !dbg !3017, !tbaa !664
  %17 = getelementptr inbounds %struct.list, %struct.list* %16, i64 0, i32 5, !dbg !3017
  %18 = load i64, i64* %17, align 8, !dbg !3017, !tbaa !1078
  %19 = icmp eq i64 %18, 0, !dbg !3016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3018
  br i1 %19, label %100, label %39, !dbg !3011

; <label>:20:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3018
  %21 = icmp sgt i32 %13, 0, !dbg !3019
  br i1 %21, label %24, label %22, !dbg !3022

; <label>:22:                                     ; preds = %20
  %23 = load %struct.list*, %struct.list** %5, align 8, !dbg !3023, !tbaa !664
  br label %39, !dbg !3022

; <label>:24:                                     ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !3025, !tbaa !636
  %26 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 48, i64 %25, !dbg !3027
  %27 = sext i32 %13 to i64, !dbg !3028
  %28 = sub i64 %27, %25, !dbg !3029
  %29 = tail call i64 @write(i32 %0, i8* nonnull %26, i64 %28) #8, !dbg !3030
  %30 = icmp slt i64 %29, 1, !dbg !3031
  br i1 %30, label %100, label %31, !dbg !3033

; <label>:31:                                     ; preds = %24
  %32 = load i64, i64* %7, align 8, !dbg !3034, !tbaa !636
  %33 = add i64 %32, %29, !dbg !3034
  store i64 %33, i64* %7, align 8, !dbg !3034, !tbaa !636
  %34 = add nsw i64 %29, %10, !dbg !3035
  %35 = trunc i64 %33 to i32, !dbg !3036
  %36 = load i32, i32* %4, align 8, !dbg !3038, !tbaa !602
  %37 = icmp eq i32 %36, %35, !dbg !3039
  br i1 %37, label %38, label %81, !dbg !3040

; <label>:38:                                     ; preds = %31
  store i32 0, i32* %4, align 8, !dbg !3041, !tbaa !602
  store i64 0, i64* %7, align 8, !dbg !3043, !tbaa !636
  br label %81, !dbg !3044

; <label>:39:                                     ; preds = %22, %15
  %40 = phi %struct.list* [ %23, %22 ], [ %16, %15 ], !dbg !3023
  %41 = getelementptr inbounds %struct.list, %struct.list* %40, i64 0, i32 0, !dbg !3023
  %42 = load %struct.listNode*, %struct.listNode** %41, align 8, !dbg !3023, !tbaa !2670
  %43 = getelementptr inbounds %struct.listNode, %struct.listNode* %42, i64 0, i32 2, !dbg !3023
  %44 = bitcast i8** %43 to %struct.clientReplyBlock**, !dbg !3023
  %45 = load %struct.clientReplyBlock*, %struct.clientReplyBlock** %44, align 8, !dbg !3023, !tbaa !1161
  %46 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %45, i64 0, i32 1, !dbg !3046
  %47 = load i64, i64* %46, align 8, !dbg !3046, !tbaa !410
  %48 = icmp eq i64 %47, 0, !dbg !3048
  br i1 %48, label %49, label %54, !dbg !3050

; <label>:49:                                     ; preds = %39
  %50 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %45, i64 0, i32 0, !dbg !3051
  %51 = load i64, i64* %50, align 8, !dbg !3051, !tbaa !410
  %52 = load i64, i64* %6, align 8, !dbg !3053, !tbaa !667
  %53 = sub i64 %52, %51, !dbg !3053
  store i64 %53, i64* %6, align 8, !dbg !3053, !tbaa !667
  tail call void @listDelNode(%struct.list* %40, %struct.listNode* %42) #8, !dbg !3054
  br label %12, !dbg !3055, !llvm.loop !3056

; <label>:54:                                     ; preds = %39
  %55 = load i64, i64* %7, align 8, !dbg !3058, !tbaa !636
  %56 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %45, i64 0, i32 2, i64 %55, !dbg !3059
  %57 = sub i64 %47, %55, !dbg !3060
  %58 = tail call i64 @write(i32 %0, i8* nonnull %56, i64 %57) #8, !dbg !3061
  %59 = icmp slt i64 %58, 1, !dbg !3062
  br i1 %59, label %100, label %60, !dbg !3064

; <label>:60:                                     ; preds = %54
  %61 = load i64, i64* %7, align 8, !dbg !3065, !tbaa !636
  %62 = add i64 %61, %58, !dbg !3065
  store i64 %62, i64* %7, align 8, !dbg !3065, !tbaa !636
  %63 = add nsw i64 %58, %10, !dbg !3066
  %64 = icmp eq i64 %62, %47, !dbg !3067
  br i1 %64, label %65, label %81, !dbg !3069

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %45, i64 0, i32 0, !dbg !3070
  %67 = load i64, i64* %66, align 8, !dbg !3070, !tbaa !410
  %68 = load i64, i64* %6, align 8, !dbg !3072, !tbaa !667
  %69 = sub i64 %68, %67, !dbg !3072
  store i64 %69, i64* %6, align 8, !dbg !3072, !tbaa !667
  %70 = load %struct.list*, %struct.list** %5, align 8, !dbg !3073, !tbaa !664
  %71 = getelementptr inbounds %struct.list, %struct.list* %70, i64 0, i32 0, !dbg !3074
  %72 = load %struct.listNode*, %struct.listNode** %71, align 8, !dbg !3074, !tbaa !2670
  tail call void @listDelNode(%struct.list* %70, %struct.listNode* %72) #8, !dbg !3075
  store i64 0, i64* %7, align 8, !dbg !3076, !tbaa !636
  %73 = load %struct.list*, %struct.list** %5, align 8, !dbg !3077, !tbaa !664
  %74 = getelementptr inbounds %struct.list, %struct.list* %73, i64 0, i32 5, !dbg !3077
  %75 = load i64, i64* %74, align 8, !dbg !3077, !tbaa !1078
  %76 = icmp eq i64 %75, 0, !dbg !3079
  br i1 %76, label %77, label %81, !dbg !3080

; <label>:77:                                     ; preds = %65
  %78 = load i64, i64* %6, align 8, !dbg !3081, !tbaa !667
  %79 = icmp eq i64 %78, 0, !dbg !3081
  br i1 %79, label %81, label %80, !dbg !3081

; <label>:80:                                     ; preds = %77
  tail call void @_serverAssert(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1026) #8, !dbg !3081
  tail call void @_exit(i32 1) #9, !dbg !3081
  unreachable, !dbg !3081

; <label>:81:                                     ; preds = %60, %77, %65, %31, %38
  %82 = phi i64 [ %34, %38 ], [ %34, %31 ], [ %63, %77 ], [ %63, %65 ], [ %63, %60 ], !dbg !3082
  %83 = phi i64 [ %29, %38 ], [ %29, %31 ], [ %58, %77 ], [ %58, %65 ], [ %58, %60 ], !dbg !3082
  %84 = icmp sgt i64 %82, 65536, !dbg !3083
  br i1 %84, label %85, label %96, !dbg !3085

; <label>:85:                                     ; preds = %81
  %86 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !3086, !tbaa !3087
  %87 = icmp eq i64 %86, 0, !dbg !3088
  br i1 %87, label %92, label %88, !dbg !3089

; <label>:88:                                     ; preds = %85
  %89 = tail call i64 @zmalloc_used_memory() #8, !dbg !3090
  %90 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !3091, !tbaa !3087
  %91 = icmp ult i64 %89, %90, !dbg !3092
  br i1 %91, label %92, label %96, !dbg !3093

; <label>:92:                                     ; preds = %88, %85
  %93 = load i32, i32* %8, align 8, !dbg !3094, !tbaa !927
  %94 = and i32 %93, 1, !dbg !3095
  %95 = icmp eq i32 %94, 0, !dbg !3095
  br i1 %95, label %97, label %96, !dbg !3096

; <label>:96:                                     ; preds = %92, %88, %81
  br label %9, !dbg !3012, !llvm.loop !3056

; <label>:97:                                     ; preds = %92
  %98 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !3097, !tbaa !3098
  %99 = add nsw i64 %98, %82, !dbg !3097
  store i64 %99, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !3097, !tbaa !3098
  br label %117, !dbg !3099

; <label>:100:                                    ; preds = %54, %24, %15
  %101 = phi i64 [ %11, %15 ], [ %29, %24 ], [ %58, %54 ], !dbg !3100
  %102 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !3097, !tbaa !3098
  %103 = add nsw i64 %102, %10, !dbg !3097
  store i64 %103, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !3097, !tbaa !3098
  %104 = icmp eq i64 %101, -1, !dbg !3101
  br i1 %104, label %105, label %113, !dbg !3103

; <label>:105:                                    ; preds = %100
  %106 = tail call i32* @__errno() #8, !dbg !3104
  %107 = load i32, i32* %106, align 4, !dbg !3104, !tbaa !549
  %108 = icmp eq i32 %107, 11, !dbg !3107
  br i1 %108, label %113, label %109, !dbg !3108

; <label>:109:                                    ; preds = %105
  %110 = tail call i32* @__errno() #8, !dbg !3109
  %111 = load i32, i32* %110, align 4, !dbg !3109, !tbaa !549
  %112 = tail call i8* @strerror(i32 %111) #8, !dbg !3111
  tail call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i8* %112) #8, !dbg !3112
  tail call void @freeClient(%struct.client* nonnull %1) #10, !dbg !3113
  br label %144, !dbg !3114

; <label>:113:                                    ; preds = %105, %100
  %114 = icmp sgt i64 %10, 0, !dbg !3115
  br i1 %114, label %115, label %124, !dbg !3099

; <label>:115:                                    ; preds = %113
  %116 = load i32, i32* %8, align 8, !dbg !3117, !tbaa !927
  br label %117, !dbg !3099

; <label>:117:                                    ; preds = %115, %97
  %118 = phi i32 [ %116, %115 ], [ %93, %97 ], !dbg !3117
  %119 = and i32 %118, 2, !dbg !3120
  %120 = icmp eq i32 %119, 0, !dbg !3120
  br i1 %120, label %121, label %124, !dbg !3121

; <label>:121:                                    ; preds = %117
  %122 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3122, !tbaa !639
  %123 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 19, !dbg !3123
  store i64 %122, i64* %123, align 8, !dbg !3124, !tbaa !642
  br label %124, !dbg !3125

; <label>:124:                                    ; preds = %117, %121, %113
  %125 = load i32, i32* %4, align 8, !dbg !3129, !tbaa !602
  %126 = icmp eq i32 %125, 0, !dbg !3130
  br i1 %126, label %128, label %127, !dbg !3131

; <label>:127:                                    ; preds = %124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3132
  br label %144, !dbg !3133

; <label>:128:                                    ; preds = %124
  %129 = load %struct.list*, %struct.list** %5, align 8, !dbg !3134, !tbaa !664
  %130 = getelementptr inbounds %struct.list, %struct.list* %129, i64 0, i32 5, !dbg !3134
  %131 = load i64, i64* %130, align 8, !dbg !3134, !tbaa !1078
  %132 = icmp eq i64 %131, 0, !dbg !3131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3132
  br i1 %132, label %133, label %144, !dbg !3133

; <label>:133:                                    ; preds = %128
  store i64 0, i64* %7, align 8, !dbg !3135, !tbaa !636
  %134 = icmp eq i32 %2, 0, !dbg !3137
  br i1 %134, label %139, label %135, !dbg !3139

; <label>:135:                                    ; preds = %133
  %136 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3140, !tbaa !580
  %137 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 1, !dbg !3141
  %138 = load i32, i32* %137, align 8, !dbg !3141, !tbaa !596
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %136, i32 %138, i32 2) #8, !dbg !3142
  br label %139, !dbg !3142

; <label>:139:                                    ; preds = %133, %135
  %140 = load i32, i32* %8, align 8, !dbg !3143, !tbaa !927
  %141 = and i32 %140, 64, !dbg !3145
  %142 = icmp eq i32 %141, 0, !dbg !3145
  br i1 %142, label %144, label %143, !dbg !3146

; <label>:143:                                    ; preds = %139
  tail call void @freeClient(%struct.client* nonnull %1) #10, !dbg !3147
  br label %144, !dbg !3149

; <label>:144:                                    ; preds = %127, %128, %139, %143, %109
  %145 = phi i32 [ -1, %143 ], [ -1, %109 ], [ 0, %139 ], [ 0, %128 ], [ 0, %127 ], !dbg !3150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3151
  ret i32 %145, !dbg !3151
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @zmalloc_used_memory() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strerror(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @sendReplyToClient(%struct.aeEventLoop* nocapture readnone, i32, i8*, i32) #0 !dbg !3152 {
  %5 = bitcast i8* %2 to %struct.client*, !dbg !3162
  %6 = tail call i32 @writeToClient(i32 %1, %struct.client* %5, i32 1) #10, !dbg !3163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3164
  ret void, !dbg !3164
}

; Function Attrs: noredzone nounwind
define dso_local i32 @handleClientsWithPendingWrites() local_unnamed_addr #0 !dbg !3165 {
  %1 = alloca %struct.listIter, align 8
  %2 = bitcast %struct.listIter* %1 to i8*, !dbg !3182
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #5, !dbg !3182
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !3183, !tbaa !1042
  %4 = getelementptr inbounds %struct.list, %struct.list* %3, i64 0, i32 5, !dbg !3183
  %5 = load i64, i64* %4, align 8, !dbg !3183, !tbaa !1078
  %6 = trunc i64 %5 to i32, !dbg !3183
  call void @listRewind(%struct.list* %3, %struct.listIter* nonnull %1) #8, !dbg !3186
  %7 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !3187
  %8 = icmp eq %struct.listNode* %7, null, !dbg !3189
  br i1 %8, label %64, label %9, !dbg !3189

; <label>:9:                                      ; preds = %0, %61
  %10 = phi %struct.listNode* [ %62, %61 ], [ %7, %0 ]
  %11 = getelementptr inbounds %struct.listNode, %struct.listNode* %10, i64 0, i32 2, !dbg !3190
  %12 = load i8*, i8** %11, align 8, !dbg !3190, !tbaa !1161
  %13 = getelementptr inbounds i8, i8* %12, i64 160, !dbg !3191
  %14 = bitcast i8* %13 to i32*, !dbg !3191
  %15 = load i32, i32* %14, align 8, !dbg !3192, !tbaa !927
  %16 = and i32 %15, -2097153, !dbg !3192
  store i32 %16, i32* %14, align 8, !dbg !3192, !tbaa !927
  %17 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !3193, !tbaa !1042
  call void @listDelNode(%struct.list* %17, %struct.listNode* nonnull %10) #8, !dbg !3194
  %18 = load i32, i32* %14, align 8, !dbg !3195, !tbaa !927
  %19 = and i32 %18, 268435456, !dbg !3197
  %20 = icmp eq i32 %19, 0, !dbg !3197
  br i1 %20, label %21, label %61, !dbg !3198, !llvm.loop !3199

; <label>:21:                                     ; preds = %9
  %22 = bitcast i8* %12 to %struct.client*, !dbg !3190
  %23 = getelementptr inbounds i8, i8* %12, i64 8, !dbg !3202
  %24 = bitcast i8* %23 to i32*, !dbg !3202
  %25 = load i32, i32* %24, align 8, !dbg !3202, !tbaa !596
  %26 = call i32 @writeToClient(i32 %25, %struct.client* %22, i32 0) #10, !dbg !3204
  %27 = icmp eq i32 %26, -1, !dbg !3205
  br i1 %27, label %61, label %28, !dbg !3206, !llvm.loop !3199

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds i8, i8* %12, i64 528, !dbg !3209
  %30 = bitcast i8* %29 to i32*, !dbg !3209
  %31 = load i32, i32* %30, align 8, !dbg !3209, !tbaa !602
  %32 = icmp eq i32 %31, 0, !dbg !3210
  br i1 %32, label %34, label %33, !dbg !3211

; <label>:33:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3212
  br label %41, !dbg !3213

; <label>:34:                                     ; preds = %28
  %35 = getelementptr inbounds i8, i8* %12, i64 112, !dbg !3214
  %36 = bitcast i8* %35 to %struct.list**, !dbg !3214
  %37 = load %struct.list*, %struct.list** %36, align 8, !dbg !3214, !tbaa !664
  %38 = getelementptr inbounds %struct.list, %struct.list* %37, i64 0, i32 5, !dbg !3214
  %39 = load i64, i64* %38, align 8, !dbg !3214, !tbaa !1078
  %40 = icmp eq i64 %39, 0, !dbg !3211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3212
  br i1 %40, label %61, label %41, !dbg !3213

; <label>:41:                                     ; preds = %33, %34
  %42 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !3216, !tbaa !3218
  %43 = icmp eq i32 %42, 1, !dbg !3219
  %44 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !3220
  %45 = icmp eq i32 %44, 1, !dbg !3221
  %46 = and i1 %43, %45, !dbg !3222
  %47 = select i1 %46, i32 6, i32 2, !dbg !3222
  %48 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3223, !tbaa !580
  %49 = load i32, i32* %24, align 8, !dbg !3225, !tbaa !596
  %50 = call i32 @aeCreateFileEvent(%struct.aeEventLoop* %48, i32 %49, i32 %47, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @sendReplyToClient, i8* nonnull %12) #8, !dbg !3226
  %51 = icmp eq i32 %50, -1, !dbg !3227
  br i1 %51, label %52, label %61, !dbg !3228

; <label>:52:                                     ; preds = %41
  %53 = load i32, i32* %14, align 8, !dbg !3232, !tbaa !927
  %54 = and i32 %53, 1280, !dbg !3233
  %55 = icmp eq i32 %54, 0, !dbg !3233
  br i1 %55, label %56, label %60, !dbg !3233

; <label>:56:                                     ; preds = %52
  %57 = or i32 %53, 1024, !dbg !3234
  store i32 %57, i32* %14, align 8, !dbg !3234, !tbaa !927
  %58 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !3235, !tbaa !1308
  %59 = call %struct.list* @listAddNodeTail(%struct.list* %58, i8* nonnull %12) #8, !dbg !3236
  br label %60, !dbg !3237

; <label>:60:                                     ; preds = %52, %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3237
  br label %61, !dbg !3238

; <label>:61:                                     ; preds = %34, %60, %41, %21, %9
  %62 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !3187
  %63 = icmp eq %struct.listNode* %62, null, !dbg !3189
  br i1 %63, label %64, label %9, !dbg !3189

; <label>:64:                                     ; preds = %61, %0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #5, !dbg !3239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3240
  ret i32 %6, !dbg !3240
}

; Function Attrs: noredzone
declare dso_local void @listRewind(%struct.list*, %struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listNext(%struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @resetClient(%struct.client* nocapture) local_unnamed_addr #0 !dbg !3241 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !3246
  %3 = load %struct.redisCommand*, %struct.redisCommand** %2, align 8, !dbg !3246, !tbaa !2766
  %4 = icmp eq %struct.redisCommand* %3, null, !dbg !3247
  br i1 %4, label %9, label %5, !dbg !3247

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %3, i64 0, i32 1, !dbg !3248
  %7 = load void (%struct.client*)*, void (%struct.client*)** %6, align 8, !dbg !3248, !tbaa !3249
  %8 = icmp ne void (%struct.client*)* %7, @askingCommand, !dbg !3247
  br label %9, !dbg !3247

; <label>:9:                                      ; preds = %1, %5
  %10 = phi i1 [ %8, %5 ], [ true, %1 ]
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3253
  %12 = load i32, i32* %11, align 8, !dbg !3253, !tbaa !622
  %13 = icmp sgt i32 %12, 0, !dbg !3254
  br i1 %13, label %14, label %25, !dbg !3255

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %16, !dbg !3255

; <label>:16:                                     ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %21, %16 ]
  %18 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !3256, !tbaa !625
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 %17, !dbg !3257
  %20 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !3257, !tbaa !476
  tail call void @decrRefCount(%struct.redisObject* %20) #8, !dbg !3258
  %21 = add nuw nsw i64 %17, 1, !dbg !3259
  %22 = load i32, i32* %11, align 8, !dbg !3253, !tbaa !622
  %23 = sext i32 %22 to i64, !dbg !3254
  %24 = icmp slt i64 %21, %23, !dbg !3254
  br i1 %24, label %16, label %25, !dbg !3255, !llvm.loop !2760

; <label>:25:                                     ; preds = %16, %9
  store i32 0, i32* %11, align 8, !dbg !3260, !tbaa !622
  store %struct.redisCommand* null, %struct.redisCommand** %2, align 8, !dbg !3261, !tbaa !2766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3262
  %26 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 12, !dbg !3263
  store i32 0, i32* %26, align 8, !dbg !3264, !tbaa !619
  %27 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 13, !dbg !3265
  store i32 0, i32* %27, align 4, !dbg !3266, !tbaa !630
  %28 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 14, !dbg !3267
  store i64 -1, i64* %28, align 8, !dbg !3268, !tbaa !633
  %29 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3269
  %30 = load i32, i32* %29, align 8, !dbg !3269, !tbaa !927
  %31 = and i32 %30, 8, !dbg !3271
  %32 = icmp eq i32 %31, 0, !dbg !3271
  %33 = and i1 %10, %32, !dbg !3272
  br i1 %33, label %34, label %36, !dbg !3272

; <label>:34:                                     ; preds = %25
  %35 = and i32 %30, -513, !dbg !3273
  store i32 %35, i32* %29, align 8, !dbg !3273, !tbaa !927
  br label %36, !dbg !3274

; <label>:36:                                     ; preds = %25, %34
  %37 = phi i32 [ %30, %25 ], [ %35, %34 ], !dbg !3275
  %38 = and i32 %37, -16777217, !dbg !3275
  %39 = and i32 %37, 8388608, !dbg !3276
  %40 = icmp eq i32 %39, 0, !dbg !3276
  %41 = and i32 %37, -25165825, !dbg !3278
  %42 = or i32 %41, 16777216, !dbg !3278
  %43 = select i1 %40, i32 %38, i32 %42, !dbg !3280
  store i32 %43, i32* %29, align 8, !dbg !3281, !tbaa !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3282
  ret void, !dbg !3282
}

; Function Attrs: noredzone
declare dso_local void @askingCommand(%struct.client*) #3

; Function Attrs: noredzone nounwind
define dso_local void @protectClient(%struct.client* nocapture) local_unnamed_addr #0 !dbg !3283 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3287
  %3 = load i32, i32* %2, align 8, !dbg !3288, !tbaa !927
  %4 = or i32 %3, 268435456, !dbg !3288
  store i32 %4, i32* %2, align 8, !dbg !3288, !tbaa !927
  %5 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3289, !tbaa !580
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !3290
  %7 = load i32, i32* %6, align 8, !dbg !3290, !tbaa !596
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %5, i32 %7, i32 1) #8, !dbg !3291
  %8 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3292, !tbaa !580
  %9 = load i32, i32* %6, align 8, !dbg !3293, !tbaa !596
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %8, i32 %9, i32 2) #8, !dbg !3294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3295
  ret void, !dbg !3295
}

; Function Attrs: noredzone nounwind
define dso_local void @unprotectClient(%struct.client*) local_unnamed_addr #0 !dbg !3296 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3300
  %3 = load i32, i32* %2, align 8, !dbg !3300, !tbaa !927
  %4 = and i32 %3, 268435456, !dbg !3302
  %5 = icmp eq i32 %4, 0, !dbg !3302
  br i1 %5, label %39, label %6, !dbg !3303

; <label>:6:                                      ; preds = %1
  %7 = and i32 %3, -268435457, !dbg !3304
  store i32 %7, i32* %2, align 8, !dbg !3304, !tbaa !927
  %8 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3306, !tbaa !580
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !3307
  %10 = load i32, i32* %9, align 8, !dbg !3307, !tbaa !596
  %11 = bitcast %struct.client* %0 to i8*, !dbg !3308
  %12 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* %8, i32 %10, i32 1, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @readQueryFromClient, i8* %11) #8, !dbg !3309
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !3313
  %14 = load i32, i32* %13, align 8, !dbg !3313, !tbaa !602
  %15 = icmp eq i32 %14, 0, !dbg !3314
  br i1 %15, label %17, label %16, !dbg !3315

; <label>:16:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3316
  br label %23, !dbg !3317

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !3318
  %19 = load %struct.list*, %struct.list** %18, align 8, !dbg !3318, !tbaa !664
  %20 = getelementptr inbounds %struct.list, %struct.list* %19, i64 0, i32 5, !dbg !3318
  %21 = load i64, i64* %20, align 8, !dbg !3318, !tbaa !1078
  %22 = icmp eq i64 %21, 0, !dbg !3315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3316
  br i1 %22, label %39, label %23, !dbg !3317

; <label>:23:                                     ; preds = %16, %17
  %24 = load i32, i32* %2, align 8, !dbg !3321, !tbaa !927
  %25 = and i32 %24, 2097152, !dbg !3322
  %26 = icmp eq i32 %25, 0, !dbg !3322
  br i1 %26, label %27, label %38, !dbg !3323

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !3324
  %29 = load i32, i32* %28, align 8, !dbg !3324, !tbaa !1033
  switch i32 %29, label %38 [
    i32 0, label %34
    i32 9, label %30
  ], !dbg !3325

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !3326
  %32 = load i32, i32* %31, align 4, !dbg !3326, !tbaa !1036
  %33 = icmp eq i32 %32, 0, !dbg !3327
  br i1 %33, label %34, label %38, !dbg !3328

; <label>:34:                                     ; preds = %30, %27
  %35 = or i32 %24, 2097152, !dbg !3329
  store i32 %35, i32* %2, align 8, !dbg !3329, !tbaa !927
  %36 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !3330, !tbaa !1042
  %37 = tail call %struct.list* @listAddNodeHead(%struct.list* %36, i8* nonnull %11) #8, !dbg !3331
  br label %38, !dbg !3332

; <label>:38:                                     ; preds = %23, %27, %30, %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3333
  br label %39, !dbg !3334

; <label>:39:                                     ; preds = %17, %1, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3335
  ret void, !dbg !3335
}

; Function Attrs: noredzone nounwind
define dso_local i32 @processInlineBuffer(%struct.client*) local_unnamed_addr #0 !dbg !3336 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !3348
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5, !dbg !3348
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 4, !dbg !3350
  %5 = load i8*, i8** %4, align 8, !dbg !3350, !tbaa !609
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 5, !dbg !3351
  %7 = load i64, i64* %6, align 8, !dbg !3351, !tbaa !605
  %8 = getelementptr inbounds i8, i8* %5, i64 %7, !dbg !3352
  %9 = tail call i8* @strchr(i8* %8, i32 10) #8, !dbg !3353
  %10 = icmp eq i8* %9, null, !dbg !3355
  %11 = load i8*, i8** %4, align 8, !dbg !3357, !tbaa !609
  br i1 %10, label %12, label %44, !dbg !3359

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !3364
  %14 = load i8, i8* %13, align 1, !dbg !3364, !tbaa !657
  %15 = trunc i8 %14 to i3, !dbg !3366
  switch i3 %15, label %37 [
    i3 0, label %16
    i3 1, label %19
    i3 2, label %23
    i3 3, label %28
    i3 -4, label %33
  ], !dbg !3366

; <label>:16:                                     ; preds = %12
  %17 = lshr i8 %14, 3, !dbg !3367
  %18 = zext i8 %17 to i64, !dbg !3367
  br label %37, !dbg !3368

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !3369
  %21 = load i8, i8* %20, align 1, !dbg !3370, !tbaa !657
  %22 = zext i8 %21 to i64, !dbg !3369
  br label %37, !dbg !3371

; <label>:23:                                     ; preds = %12
  %24 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !3372
  %25 = bitcast i8* %24 to i16*, !dbg !3373
  %26 = load i16, i16* %25, align 1, !dbg !3373, !tbaa !858
  %27 = zext i16 %26 to i64, !dbg !3372
  br label %37, !dbg !3374

; <label>:28:                                     ; preds = %12
  %29 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !3375
  %30 = bitcast i8* %29 to i32*, !dbg !3376
  %31 = load i32, i32* %30, align 1, !dbg !3376, !tbaa !549
  %32 = zext i32 %31 to i64, !dbg !3375
  br label %37, !dbg !3377

; <label>:33:                                     ; preds = %12
  %34 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !3378
  %35 = bitcast i8* %34 to i64*, !dbg !3379
  %36 = load i64, i64* %35, align 1, !dbg !3379, !tbaa !410
  br label %37, !dbg !3380

; <label>:37:                                     ; preds = %12, %16, %19, %23, %28, %33
  %38 = phi i64 [ %36, %33 ], [ %32, %28 ], [ %27, %23 ], [ %22, %19 ], [ %18, %16 ], [ 0, %12 ], !dbg !3381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3382
  %39 = load i64, i64* %6, align 8, !dbg !3383, !tbaa !605
  %40 = sub i64 %38, %39, !dbg !3384
  %41 = icmp ugt i64 %40, 65536, !dbg !3385
  br i1 %41, label %42, label %154, !dbg !3386

; <label>:42:                                     ; preds = %37
  %43 = tail call i64 @strlen(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0)) #8, !dbg !3391
  tail call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i64 %43) #8, !dbg !3392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3393
  tail call fastcc void @setProtocolError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0), %struct.client* nonnull %0) #10, !dbg !3394
  br label %154, !dbg !3395

; <label>:44:                                     ; preds = %1
  %45 = load i64, i64* %6, align 8, !dbg !3396, !tbaa !605
  %46 = getelementptr inbounds i8, i8* %11, i64 %45, !dbg !3397
  %47 = icmp eq i8* %9, %46, !dbg !3398
  br i1 %47, label %54, label %48, !dbg !3399

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !3400
  %50 = load i8, i8* %49, align 1, !dbg !3401, !tbaa !657
  %51 = icmp eq i8 %50, 13, !dbg !3402
  %52 = select i1 %51, i64 2, i64 1, !dbg !3403
  %53 = select i1 %51, i8* %49, i8* %9, !dbg !3403
  br label %54, !dbg !3403

; <label>:54:                                     ; preds = %48, %44
  %55 = phi i64 [ 1, %44 ], [ %52, %48 ]
  %56 = phi i8* [ %9, %44 ], [ %53, %48 ], !dbg !3404
  %57 = ptrtoint i8* %56 to i64, !dbg !3405
  %58 = ptrtoint i8* %46 to i64, !dbg !3405
  %59 = sub i64 %57, %58, !dbg !3405
  %60 = tail call i8* @sdsnewlen(i8* %46, i64 %59) #8, !dbg !3407
  %61 = call i8** @sdssplitargs(i8* %60, i32* nonnull %2) #8, !dbg !3410
  call void @sdsfree(i8* %60) #8, !dbg !3412
  %62 = icmp eq i8** %61, null, !dbg !3413
  br i1 %62, label %63, label %65, !dbg !3415

; <label>:63:                                     ; preds = %54
  %64 = call i64 @strlen(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i64 0, i64 0)) #8, !dbg !3420
  call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i64 0, i64 0), i64 %64) #8, !dbg !3421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3422
  call fastcc void @setProtocolError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0), %struct.client* nonnull %0) #10, !dbg !3423
  br label %154, !dbg !3424

; <label>:65:                                     ; preds = %54
  %66 = icmp eq i64 %59, 0, !dbg !3425
  br i1 %66, label %67, label %75, !dbg !3427

; <label>:67:                                     ; preds = %65
  %68 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3428
  %69 = load i32, i32* %68, align 8, !dbg !3428, !tbaa !927
  %70 = and i32 %69, 1, !dbg !3429
  %71 = icmp eq i32 %70, 0, !dbg !3429
  br i1 %71, label %75, label %72, !dbg !3430

; <label>:72:                                     ; preds = %67
  %73 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3431, !tbaa !639
  %74 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 32, !dbg !3432
  store i64 %73, i64* %74, align 8, !dbg !3433, !tbaa !3434
  br label %75, !dbg !3435

; <label>:75:                                     ; preds = %67, %72, %65
  %76 = add i64 %59, %55, !dbg !3436
  %77 = load i64, i64* %6, align 8, !dbg !3437, !tbaa !605
  %78 = add i64 %76, %77, !dbg !3437
  store i64 %78, i64* %6, align 8, !dbg !3437, !tbaa !605
  %79 = load i32, i32* %2, align 4, !dbg !3438, !tbaa !549
  %80 = icmp eq i32 %79, 0, !dbg !3438
  br i1 %80, label %81, label %83, !dbg !3440

; <label>:81:                                     ; preds = %75
  %82 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3441
  store i32 0, i32* %82, align 8, !dbg !3443, !tbaa !622
  br label %146, !dbg !3445

; <label>:83:                                     ; preds = %75
  %84 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3446
  %85 = load %struct.redisObject**, %struct.redisObject*** %84, align 8, !dbg !3446, !tbaa !625
  %86 = icmp eq %struct.redisObject** %85, null, !dbg !3449
  br i1 %86, label %90, label %87, !dbg !3450

; <label>:87:                                     ; preds = %83
  %88 = bitcast %struct.redisObject** %85 to i8*, !dbg !3451
  call void @zfree(i8* %88) #8, !dbg !3452
  %89 = load i32, i32* %2, align 4, !dbg !3453, !tbaa !549
  br label %90, !dbg !3452

; <label>:90:                                     ; preds = %87, %83
  %91 = phi i32 [ %79, %83 ], [ %89, %87 ], !dbg !3453
  %92 = sext i32 %91 to i64, !dbg !3453
  %93 = shl nsw i64 %92, 3, !dbg !3454
  %94 = call i8* @zmalloc(i64 %93) #8, !dbg !3455
  %95 = bitcast %struct.redisObject*** %84 to i8**, !dbg !3456
  store i8* %94, i8** %95, align 8, !dbg !3456, !tbaa !625
  %96 = load i32, i32* %2, align 4, !dbg !3457, !tbaa !549
  %97 = icmp sgt i32 %96, 0, !dbg !3459
  %98 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3441
  store i32 0, i32* %98, align 8, !dbg !3443, !tbaa !622
  br i1 %97, label %99, label %146, !dbg !3445

; <label>:99:                                     ; preds = %90
  %100 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %101, !dbg !3445

; <label>:101:                                    ; preds = %99, %141
  %102 = phi i64 [ 0, %99 ], [ %142, %141 ]
  %103 = getelementptr inbounds i8*, i8** %61, i64 %102, !dbg !3460
  %104 = load i8*, i8** %103, align 8, !dbg !3460, !tbaa !476
  %105 = getelementptr inbounds i8, i8* %104, i64 -1, !dbg !3465
  %106 = load i8, i8* %105, align 1, !dbg !3465, !tbaa !657
  %107 = trunc i8 %106 to i3, !dbg !3467
  switch i3 %107, label %108 [
    i3 0, label %109
    i3 1, label %112
    i3 2, label %116
    i3 3, label %121
    i3 -4, label %126
  ], !dbg !3467

; <label>:108:                                    ; preds = %101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3468
  br label %140, !dbg !3469

; <label>:109:                                    ; preds = %101
  %110 = lshr i8 %106, 3, !dbg !3470
  %111 = zext i8 %110 to i64, !dbg !3470
  br label %130, !dbg !3471

; <label>:112:                                    ; preds = %101
  %113 = getelementptr inbounds i8, i8* %104, i64 -3, !dbg !3472
  %114 = load i8, i8* %113, align 1, !dbg !3473, !tbaa !657
  %115 = zext i8 %114 to i64, !dbg !3472
  br label %130, !dbg !3474

; <label>:116:                                    ; preds = %101
  %117 = getelementptr inbounds i8, i8* %104, i64 -5, !dbg !3475
  %118 = bitcast i8* %117 to i16*, !dbg !3476
  %119 = load i16, i16* %118, align 1, !dbg !3476, !tbaa !858
  %120 = zext i16 %119 to i64, !dbg !3475
  br label %130, !dbg !3477

; <label>:121:                                    ; preds = %101
  %122 = getelementptr inbounds i8, i8* %104, i64 -9, !dbg !3478
  %123 = bitcast i8* %122 to i32*, !dbg !3479
  %124 = load i32, i32* %123, align 1, !dbg !3479, !tbaa !549
  %125 = zext i32 %124 to i64, !dbg !3478
  br label %130, !dbg !3480

; <label>:126:                                    ; preds = %101
  %127 = getelementptr inbounds i8, i8* %104, i64 -17, !dbg !3481
  %128 = bitcast i8* %127 to i64*, !dbg !3482
  %129 = load i64, i64* %128, align 1, !dbg !3482, !tbaa !410
  br label %130, !dbg !3483

; <label>:130:                                    ; preds = %109, %112, %116, %121, %126
  %131 = phi i64 [ %129, %126 ], [ %125, %121 ], [ %120, %116 ], [ %115, %112 ], [ %111, %109 ], !dbg !3484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3468
  %132 = icmp eq i64 %131, 0, !dbg !3485
  br i1 %132, label %140, label %133, !dbg !3469

; <label>:133:                                    ; preds = %130
  %134 = call %struct.redisObject* @createObject(i32 0, i8* %104) #8, !dbg !3486
  %135 = load %struct.redisObject**, %struct.redisObject*** %100, align 8, !dbg !3488, !tbaa !625
  %136 = load i32, i32* %98, align 8, !dbg !3489, !tbaa !622
  %137 = sext i32 %136 to i64, !dbg !3490
  %138 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %135, i64 %137, !dbg !3490
  store %struct.redisObject* %134, %struct.redisObject** %138, align 8, !dbg !3491, !tbaa !476
  %139 = add nsw i32 %136, 1, !dbg !3492
  store i32 %139, i32* %98, align 8, !dbg !3492, !tbaa !622
  br label %141, !dbg !3493

; <label>:140:                                    ; preds = %108, %130
  call void @sdsfree(i8* %104) #8, !dbg !3494
  br label %141

; <label>:141:                                    ; preds = %133, %140
  %142 = add nuw nsw i64 %102, 1, !dbg !3496
  %143 = load i32, i32* %2, align 4, !dbg !3457, !tbaa !549
  %144 = sext i32 %143 to i64, !dbg !3497
  %145 = icmp slt i64 %142, %144, !dbg !3497
  br i1 %145, label %101, label %146, !dbg !3445, !llvm.loop !3498

; <label>:146:                                    ; preds = %141, %81, %90
  %147 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3500, !tbaa !476
  %148 = icmp eq %struct.uk_alloc* %147, null, !dbg !3510
  br i1 %148, label %149, label %150, !dbg !3511, !prof !545

; <label>:149:                                    ; preds = %146
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i64 0, i64 0)) #8, !dbg !3512
  call void @ukplat_terminate(i32 3) #9, !dbg !3512
  unreachable, !dbg !3512

; <label>:150:                                    ; preds = %146
  %151 = bitcast i8** %61 to i8*, !dbg !3513
  %152 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %147, i64 0, i32 5, !dbg !3517
  %153 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %152, align 8, !dbg !3517, !tbaa !476
  call void %153(%struct.uk_alloc* nonnull %147, i8* %151) #8, !dbg !3518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3521
  br label %154, !dbg !3522

; <label>:154:                                    ; preds = %37, %42, %150, %63
  %155 = phi i32 [ -1, %63 ], [ 0, %150 ], [ -1, %42 ], [ -1, %37 ], !dbg !3404
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5, !dbg !3523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3523
  ret i32 %155, !dbg !3523
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @setProtocolError(i8*, %struct.client* nocapture) unnamed_addr #0 !dbg !3524 {
  %3 = alloca [256 x i8], align 16
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 100), align 8, !dbg !3540, !tbaa !3541
  %5 = icmp slt i32 %4, 2, !dbg !3542
  br i1 %5, label %6, label %93, !dbg !3543

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @sdsempty() #8, !dbg !3544
  %8 = tail call i8* @catClientInfoString(i8* %7, %struct.client* %1) #10, !dbg !3545
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !3547
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %9) #5, !dbg !3547
  %10 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 4, !dbg !3549
  %11 = load i8*, i8** %10, align 8, !dbg !3549, !tbaa !609
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !3553
  %13 = load i8, i8* %12, align 1, !dbg !3553, !tbaa !657
  %14 = trunc i8 %13 to i3, !dbg !3555
  switch i3 %14, label %36 [
    i3 0, label %15
    i3 1, label %18
    i3 2, label %22
    i3 3, label %27
    i3 -4, label %32
  ], !dbg !3555

; <label>:15:                                     ; preds = %6
  %16 = lshr i8 %13, 3, !dbg !3556
  %17 = zext i8 %16 to i64, !dbg !3556
  br label %36, !dbg !3557

; <label>:18:                                     ; preds = %6
  %19 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !3558
  %20 = load i8, i8* %19, align 1, !dbg !3559, !tbaa !657
  %21 = zext i8 %20 to i64, !dbg !3558
  br label %36, !dbg !3560

; <label>:22:                                     ; preds = %6
  %23 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !3561
  %24 = bitcast i8* %23 to i16*, !dbg !3562
  %25 = load i16, i16* %24, align 1, !dbg !3562, !tbaa !858
  %26 = zext i16 %25 to i64, !dbg !3561
  br label %36, !dbg !3563

; <label>:27:                                     ; preds = %6
  %28 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !3564
  %29 = bitcast i8* %28 to i32*, !dbg !3565
  %30 = load i32, i32* %29, align 1, !dbg !3565, !tbaa !549
  %31 = zext i32 %30 to i64, !dbg !3564
  br label %36, !dbg !3566

; <label>:32:                                     ; preds = %6
  %33 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !3567
  %34 = bitcast i8* %33 to i64*, !dbg !3568
  %35 = load i64, i64* %34, align 1, !dbg !3568, !tbaa !410
  br label %36, !dbg !3569

; <label>:36:                                     ; preds = %6, %15, %18, %22, %27, %32
  %37 = phi i64 [ %35, %32 ], [ %31, %27 ], [ %26, %22 ], [ %21, %18 ], [ %17, %15 ], [ 0, %6 ], !dbg !3570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3571
  %38 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 5, !dbg !3572
  %39 = load i64, i64* %38, align 8, !dbg !3572, !tbaa !605
  %40 = sub i64 %37, %39, !dbg !3573
  %41 = icmp ult i64 %40, 128, !dbg !3574
  %42 = getelementptr inbounds i8, i8* %11, i64 %39, !dbg !3575
  br i1 %41, label %43, label %45, !dbg !3577

; <label>:43:                                     ; preds = %36
  %44 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %9, i64 256, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.104, i64 0, i64 0), i8* %42) #8, !dbg !3578
  br label %74, !dbg !3580

; <label>:45:                                     ; preds = %36
  switch i3 %14, label %67 [
    i3 0, label %46
    i3 1, label %49
    i3 2, label %53
    i3 3, label %58
    i3 -4, label %63
  ], !dbg !3584

; <label>:46:                                     ; preds = %45
  %47 = lshr i8 %13, 3, !dbg !3585
  %48 = zext i8 %47 to i64, !dbg !3585
  br label %67, !dbg !3589

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !3590
  %51 = load i8, i8* %50, align 1, !dbg !3591, !tbaa !657
  %52 = zext i8 %51 to i64, !dbg !3590
  br label %67, !dbg !3592

; <label>:53:                                     ; preds = %45
  %54 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !3593
  %55 = bitcast i8* %54 to i16*, !dbg !3594
  %56 = load i16, i16* %55, align 1, !dbg !3594, !tbaa !858
  %57 = zext i16 %56 to i64, !dbg !3593
  br label %67, !dbg !3595

; <label>:58:                                     ; preds = %45
  %59 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !3596
  %60 = bitcast i8* %59 to i32*, !dbg !3597
  %61 = load i32, i32* %60, align 1, !dbg !3597, !tbaa !549
  %62 = zext i32 %61 to i64, !dbg !3596
  br label %67, !dbg !3598

; <label>:63:                                     ; preds = %45
  %64 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !3599
  %65 = bitcast i8* %64 to i64*, !dbg !3600
  %66 = load i64, i64* %65, align 1, !dbg !3600, !tbaa !410
  br label %67, !dbg !3601

; <label>:67:                                     ; preds = %45, %46, %49, %53, %58, %63
  %68 = phi i64 [ %66, %63 ], [ %62, %58 ], [ %57, %53 ], [ %52, %49 ], [ %48, %46 ], [ 0, %45 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3602
  %69 = sub i64 -128, %39, !dbg !3603
  %70 = add i64 %69, %68, !dbg !3604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3605
  %71 = getelementptr inbounds i8, i8* %11, i64 %68, !dbg !3606
  %72 = getelementptr inbounds i8, i8* %71, i64 -64, !dbg !3607
  %73 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %9, i64 256, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.105, i64 0, i64 0), i32 64, i8* %42, i64 %70, i32 64, i8* nonnull %72) #8, !dbg !3608
  br label %74

; <label>:74:                                     ; preds = %67, %43
  %75 = load i8, i8* %9, align 16, !dbg !3610, !tbaa !657
  %76 = icmp eq i8 %75, 0, !dbg !3611
  br i1 %76, label %92, label %77, !dbg !3612

; <label>:77:                                     ; preds = %74, %88
  %78 = phi i8* [ %89, %88 ], [ %9, %74 ]
  %79 = call i8* @__locale_ctype_ptr() #8, !dbg !3613
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !3613
  %81 = load i8, i8* %78, align 1, !dbg !3613, !tbaa !657
  %82 = sext i8 %81 to i64, !dbg !3613
  %83 = getelementptr inbounds i8, i8* %80, i64 %82, !dbg !3613
  %84 = load i8, i8* %83, align 1, !dbg !3613, !tbaa !657
  %85 = and i8 %84, -105, !dbg !3613
  %86 = icmp eq i8 %85, 0, !dbg !3613
  br i1 %86, label %87, label %88, !dbg !3616

; <label>:87:                                     ; preds = %77
  store i8 46, i8* %78, align 1, !dbg !3617, !tbaa !657
  br label %88, !dbg !3618

; <label>:88:                                     ; preds = %77, %87
  %89 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !3619
  %90 = load i8, i8* %89, align 1, !dbg !3610, !tbaa !657
  %91 = icmp eq i8 %90, 0, !dbg !3611
  br i1 %91, label %92, label %77, !dbg !3612, !llvm.loop !3620

; <label>:92:                                     ; preds = %88, %74
  call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.106, i64 0, i64 0), i8* %0, i8* %8, i8* nonnull %9) #8, !dbg !3622
  call void @sdsfree(i8* %8) #8, !dbg !3623
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %9) #5, !dbg !3624
  br label %93, !dbg !3625

; <label>:93:                                     ; preds = %92, %2
  %94 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 21, !dbg !3626
  %95 = load i32, i32* %94, align 8, !dbg !3627, !tbaa !927
  %96 = or i32 %95, 64, !dbg !3627
  store i32 %96, i32* %94, align 8, !dbg !3627, !tbaa !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3628
  ret void, !dbg !3628
}

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8** @sdssplitargs(i8*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @processMultibulkBuffer(%struct.client*) local_unnamed_addr #0 !dbg !3629 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !3637
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !3637
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 13, !dbg !3638
  %5 = load i32, i32* %4, align 4, !dbg !3638, !tbaa !630
  %6 = icmp eq i32 %5, 0, !dbg !3640
  br i1 %6, label %7, label %125, !dbg !3641

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3642
  %9 = load i32, i32* %8, align 8, !dbg !3642, !tbaa !622
  %10 = icmp eq i32 %9, 0, !dbg !3642
  br i1 %10, label %12, label %11, !dbg !3642

; <label>:11:                                     ; preds = %7
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1298) #8, !dbg !3642
  tail call void @_exit(i32 1) #9, !dbg !3642
  unreachable, !dbg !3642

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 4, !dbg !3644
  %14 = load i8*, i8** %13, align 8, !dbg !3644, !tbaa !609
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 5, !dbg !3645
  %16 = load i64, i64* %15, align 8, !dbg !3645, !tbaa !605
  %17 = getelementptr inbounds i8, i8* %14, i64 %16, !dbg !3646
  %18 = tail call i8* @strchr(i8* %17, i32 13) #8, !dbg !3647
  %19 = icmp eq i8* %18, null, !dbg !3648
  %20 = load i8*, i8** %13, align 8, !dbg !3650, !tbaa !609
  br i1 %19, label %21, label %53, !dbg !3652

; <label>:21:                                     ; preds = %12
  %22 = getelementptr inbounds i8, i8* %20, i64 -1, !dbg !3657
  %23 = load i8, i8* %22, align 1, !dbg !3657, !tbaa !657
  %24 = trunc i8 %23 to i3, !dbg !3659
  switch i3 %24, label %46 [
    i3 0, label %25
    i3 1, label %28
    i3 2, label %32
    i3 3, label %37
    i3 -4, label %42
  ], !dbg !3659

; <label>:25:                                     ; preds = %21
  %26 = lshr i8 %23, 3, !dbg !3660
  %27 = zext i8 %26 to i64, !dbg !3660
  br label %46, !dbg !3661

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds i8, i8* %20, i64 -3, !dbg !3662
  %30 = load i8, i8* %29, align 1, !dbg !3663, !tbaa !657
  %31 = zext i8 %30 to i64, !dbg !3662
  br label %46, !dbg !3664

; <label>:32:                                     ; preds = %21
  %33 = getelementptr inbounds i8, i8* %20, i64 -5, !dbg !3665
  %34 = bitcast i8* %33 to i16*, !dbg !3666
  %35 = load i16, i16* %34, align 1, !dbg !3666, !tbaa !858
  %36 = zext i16 %35 to i64, !dbg !3665
  br label %46, !dbg !3667

; <label>:37:                                     ; preds = %21
  %38 = getelementptr inbounds i8, i8* %20, i64 -9, !dbg !3668
  %39 = bitcast i8* %38 to i32*, !dbg !3669
  %40 = load i32, i32* %39, align 1, !dbg !3669, !tbaa !549
  %41 = zext i32 %40 to i64, !dbg !3668
  br label %46, !dbg !3670

; <label>:42:                                     ; preds = %21
  %43 = getelementptr inbounds i8, i8* %20, i64 -17, !dbg !3671
  %44 = bitcast i8* %43 to i64*, !dbg !3672
  %45 = load i64, i64* %44, align 1, !dbg !3672, !tbaa !410
  br label %46, !dbg !3673

; <label>:46:                                     ; preds = %21, %25, %28, %32, %37, %42
  %47 = phi i64 [ %45, %42 ], [ %41, %37 ], [ %36, %32 ], [ %31, %28 ], [ %27, %25 ], [ 0, %21 ], !dbg !3674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3675
  %48 = load i64, i64* %15, align 8, !dbg !3676, !tbaa !605
  %49 = sub i64 %47, %48, !dbg !3677
  %50 = icmp ugt i64 %49, 65536, !dbg !3678
  br i1 %50, label %51, label %372, !dbg !3679

; <label>:51:                                     ; preds = %46
  %52 = tail call i64 @strlen(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0)) #8, !dbg !3684
  tail call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0), i64 %52) #8, !dbg !3685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3686
  tail call fastcc void @setProtocolError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), %struct.client* nonnull %0) #10, !dbg !3687
  br label %372, !dbg !3688

; <label>:53:                                     ; preds = %12
  %54 = load i64, i64* %15, align 8, !dbg !3689, !tbaa !605
  %55 = getelementptr inbounds i8, i8* %20, i64 %54, !dbg !3690
  %56 = ptrtoint i8* %18 to i64, !dbg !3691
  %57 = ptrtoint i8* %55 to i64, !dbg !3691
  %58 = sub i64 %56, %57, !dbg !3691
  %59 = getelementptr inbounds i8, i8* %20, i64 -1, !dbg !3694
  %60 = load i8, i8* %59, align 1, !dbg !3694, !tbaa !657
  %61 = trunc i8 %60 to i3, !dbg !3696
  switch i3 %61, label %83 [
    i3 0, label %62
    i3 1, label %65
    i3 2, label %69
    i3 3, label %74
    i3 -4, label %79
  ], !dbg !3696

; <label>:62:                                     ; preds = %53
  %63 = lshr i8 %60, 3, !dbg !3697
  %64 = zext i8 %63 to i64, !dbg !3697
  br label %83, !dbg !3698

; <label>:65:                                     ; preds = %53
  %66 = getelementptr inbounds i8, i8* %20, i64 -3, !dbg !3699
  %67 = load i8, i8* %66, align 1, !dbg !3700, !tbaa !657
  %68 = zext i8 %67 to i64, !dbg !3699
  br label %83, !dbg !3701

; <label>:69:                                     ; preds = %53
  %70 = getelementptr inbounds i8, i8* %20, i64 -5, !dbg !3702
  %71 = bitcast i8* %70 to i16*, !dbg !3703
  %72 = load i16, i16* %71, align 1, !dbg !3703, !tbaa !858
  %73 = zext i16 %72 to i64, !dbg !3702
  br label %83, !dbg !3704

; <label>:74:                                     ; preds = %53
  %75 = getelementptr inbounds i8, i8* %20, i64 -9, !dbg !3705
  %76 = bitcast i8* %75 to i32*, !dbg !3706
  %77 = load i32, i32* %76, align 1, !dbg !3706, !tbaa !549
  %78 = zext i32 %77 to i64, !dbg !3705
  br label %83, !dbg !3707

; <label>:79:                                     ; preds = %53
  %80 = getelementptr inbounds i8, i8* %20, i64 -17, !dbg !3708
  %81 = bitcast i8* %80 to i64*, !dbg !3709
  %82 = load i64, i64* %81, align 1, !dbg !3709, !tbaa !410
  br label %83, !dbg !3710

; <label>:83:                                     ; preds = %53, %62, %65, %69, %74, %79
  %84 = phi i64 [ %82, %79 ], [ %78, %74 ], [ %73, %69 ], [ %68, %65 ], [ %64, %62 ], [ 0, %53 ], !dbg !3711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3712
  %85 = sub i64 -2, %54, !dbg !3713
  %86 = add i64 %85, %84, !dbg !3714
  %87 = icmp sgt i64 %58, %86, !dbg !3715
  br i1 %87, label %372, label %88, !dbg !3716

; <label>:88:                                     ; preds = %83
  %89 = load i8, i8* %55, align 1, !dbg !3717, !tbaa !657
  %90 = icmp eq i8 %89, 42, !dbg !3717
  br i1 %90, label %92, label %91, !dbg !3717

; <label>:91:                                     ; preds = %88
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1316) #8, !dbg !3717
  tail call void @_exit(i32 1) #9, !dbg !3717
  unreachable, !dbg !3717

; <label>:92:                                     ; preds = %88
  %93 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !3718
  %94 = getelementptr inbounds i8, i8* %93, i64 %54, !dbg !3719
  %95 = ptrtoint i8* %94 to i64, !dbg !3720
  %96 = sub i64 %56, %95, !dbg !3720
  %97 = call i32 @string2ll(i8* nonnull %94, i64 %96, i64* nonnull %2) #8, !dbg !3722
  %98 = icmp eq i32 %97, 0, !dbg !3724
  %99 = load i64, i64* %2, align 8, !dbg !3726
  %100 = icmp sgt i64 %99, 1048576, !dbg !3727
  %101 = or i1 %98, %100, !dbg !3728
  br i1 %101, label %102, label %104, !dbg !3728

; <label>:102:                                    ; preds = %92
  %103 = call i64 @strlen(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i64 0, i64 0)) #8, !dbg !3733
  call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i64 0, i64 0), i64 %103) #8, !dbg !3734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3735
  call fastcc void @setProtocolError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), %struct.client* nonnull %0) #10, !dbg !3736
  br label %372, !dbg !3737

; <label>:104:                                    ; preds = %92
  %105 = bitcast i8** %13 to i64*, !dbg !3738
  %106 = load i64, i64* %105, align 8, !dbg !3738, !tbaa !609
  %107 = add i64 %56, 2, !dbg !3739
  %108 = sub i64 %107, %106, !dbg !3740
  store i64 %108, i64* %15, align 8, !dbg !3741, !tbaa !605
  %109 = icmp slt i64 %99, 1, !dbg !3742
  br i1 %109, label %372, label %110, !dbg !3744

; <label>:110:                                    ; preds = %104
  %111 = trunc i64 %99 to i32, !dbg !3745
  store i32 %111, i32* %4, align 4, !dbg !3746, !tbaa !630
  %112 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3747
  %113 = load %struct.redisObject**, %struct.redisObject*** %112, align 8, !dbg !3747, !tbaa !625
  %114 = icmp eq %struct.redisObject** %113, null, !dbg !3749
  br i1 %114, label %118, label %115, !dbg !3750

; <label>:115:                                    ; preds = %110
  %116 = bitcast %struct.redisObject** %113 to i8*, !dbg !3751
  call void @zfree(i8* %116) #8, !dbg !3752
  %117 = load i32, i32* %4, align 4, !dbg !3753, !tbaa !630
  br label %118, !dbg !3752

; <label>:118:                                    ; preds = %110, %115
  %119 = phi i32 [ %111, %110 ], [ %117, %115 ], !dbg !3753
  %120 = sext i32 %119 to i64, !dbg !3754
  %121 = shl nsw i64 %120, 3, !dbg !3755
  %122 = call i8* @zmalloc(i64 %121) #8, !dbg !3756
  %123 = bitcast %struct.redisObject*** %112 to i8**, !dbg !3757
  store i8* %122, i8** %123, align 8, !dbg !3757, !tbaa !625
  %124 = load i32, i32* %4, align 4, !dbg !3758, !tbaa !630
  br label %125, !dbg !3759

; <label>:125:                                    ; preds = %118, %1
  %126 = phi i32 [ %124, %118 ], [ %5, %1 ], !dbg !3758
  %127 = icmp sgt i32 %126, 0, !dbg !3758
  br i1 %127, label %129, label %128, !dbg !3758

; <label>:128:                                    ; preds = %125
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1335) #8, !dbg !3758
  call void @_exit(i32 1) #9, !dbg !3758
  unreachable, !dbg !3758

; <label>:129:                                    ; preds = %125
  %130 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 14
  %131 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 4
  %132 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 5
  %133 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %134 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8
  %135 = bitcast i8** %131 to i64*
  %136 = load i64, i64* %130, align 8, !dbg !3760, !tbaa !633
  br label %137, !dbg !3763

; <label>:137:                                    ; preds = %129, %364
  %138 = phi i64 [ %136, %129 ], [ -1, %364 ], !dbg !3760
  %139 = icmp eq i64 %138, -1, !dbg !3764
  %140 = load i8*, i8** %131, align 8, !dbg !3765, !tbaa !609
  br i1 %139, label %141, label %278, !dbg !3767

; <label>:141:                                    ; preds = %137
  %142 = load i64, i64* %132, align 8, !dbg !3768, !tbaa !605
  %143 = getelementptr inbounds i8, i8* %140, i64 %142, !dbg !3770
  %144 = call i8* @strchr(i8* %143, i32 13) #8, !dbg !3771
  %145 = icmp eq i8* %144, null, !dbg !3772
  %146 = load i8*, i8** %131, align 8, !dbg !3774, !tbaa !609
  br i1 %145, label %147, label %179, !dbg !3776

; <label>:147:                                    ; preds = %141
  %148 = getelementptr inbounds i8, i8* %146, i64 -1, !dbg !3781
  %149 = load i8, i8* %148, align 1, !dbg !3781, !tbaa !657
  %150 = trunc i8 %149 to i3, !dbg !3783
  switch i3 %150, label %172 [
    i3 0, label %151
    i3 1, label %154
    i3 2, label %158
    i3 3, label %163
    i3 -4, label %168
  ], !dbg !3783

; <label>:151:                                    ; preds = %147
  %152 = lshr i8 %149, 3, !dbg !3784
  %153 = zext i8 %152 to i64, !dbg !3784
  br label %172, !dbg !3785

; <label>:154:                                    ; preds = %147
  %155 = getelementptr inbounds i8, i8* %146, i64 -3, !dbg !3786
  %156 = load i8, i8* %155, align 1, !dbg !3787, !tbaa !657
  %157 = zext i8 %156 to i64, !dbg !3786
  br label %172, !dbg !3788

; <label>:158:                                    ; preds = %147
  %159 = getelementptr inbounds i8, i8* %146, i64 -5, !dbg !3789
  %160 = bitcast i8* %159 to i16*, !dbg !3790
  %161 = load i16, i16* %160, align 1, !dbg !3790, !tbaa !858
  %162 = zext i16 %161 to i64, !dbg !3789
  br label %172, !dbg !3791

; <label>:163:                                    ; preds = %147
  %164 = getelementptr inbounds i8, i8* %146, i64 -9, !dbg !3792
  %165 = bitcast i8* %164 to i32*, !dbg !3793
  %166 = load i32, i32* %165, align 1, !dbg !3793, !tbaa !549
  %167 = zext i32 %166 to i64, !dbg !3792
  br label %172, !dbg !3794

; <label>:168:                                    ; preds = %147
  %169 = getelementptr inbounds i8, i8* %146, i64 -17, !dbg !3795
  %170 = bitcast i8* %169 to i64*, !dbg !3796
  %171 = load i64, i64* %170, align 1, !dbg !3796, !tbaa !410
  br label %172, !dbg !3797

; <label>:172:                                    ; preds = %147, %151, %154, %158, %163, %168
  %173 = phi i64 [ %171, %168 ], [ %167, %163 ], [ %162, %158 ], [ %157, %154 ], [ %153, %151 ], [ 0, %147 ], !dbg !3798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3799
  %174 = load i64, i64* %132, align 8, !dbg !3800, !tbaa !605
  %175 = sub i64 %173, %174, !dbg !3801
  %176 = icmp ugt i64 %175, 65536, !dbg !3802
  br i1 %176, label %177, label %368, !dbg !3803

; <label>:177:                                    ; preds = %172
  %178 = call i64 @strlen(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i64 0, i64 0)) #8, !dbg !3808
  call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i64 0, i64 0), i64 %178) #8, !dbg !3809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3810
  call fastcc void @setProtocolError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i64 0, i64 0), %struct.client* nonnull %0) #10, !dbg !3811
  br label %372, !dbg !3812

; <label>:179:                                    ; preds = %141
  %180 = load i64, i64* %132, align 8, !dbg !3813, !tbaa !605
  %181 = getelementptr inbounds i8, i8* %146, i64 %180, !dbg !3814
  %182 = ptrtoint i8* %144 to i64, !dbg !3815
  %183 = ptrtoint i8* %181 to i64, !dbg !3815
  %184 = sub i64 %182, %183, !dbg !3815
  %185 = getelementptr inbounds i8, i8* %146, i64 -1, !dbg !3818
  %186 = load i8, i8* %185, align 1, !dbg !3818, !tbaa !657
  %187 = trunc i8 %186 to i3, !dbg !3820
  switch i3 %187, label %209 [
    i3 0, label %188
    i3 1, label %191
    i3 2, label %195
    i3 3, label %200
    i3 -4, label %205
  ], !dbg !3820

; <label>:188:                                    ; preds = %179
  %189 = lshr i8 %186, 3, !dbg !3821
  %190 = zext i8 %189 to i64, !dbg !3821
  br label %209, !dbg !3822

; <label>:191:                                    ; preds = %179
  %192 = getelementptr inbounds i8, i8* %146, i64 -3, !dbg !3823
  %193 = load i8, i8* %192, align 1, !dbg !3824, !tbaa !657
  %194 = zext i8 %193 to i64, !dbg !3823
  br label %209, !dbg !3825

; <label>:195:                                    ; preds = %179
  %196 = getelementptr inbounds i8, i8* %146, i64 -5, !dbg !3826
  %197 = bitcast i8* %196 to i16*, !dbg !3827
  %198 = load i16, i16* %197, align 1, !dbg !3827, !tbaa !858
  %199 = zext i16 %198 to i64, !dbg !3826
  br label %209, !dbg !3828

; <label>:200:                                    ; preds = %179
  %201 = getelementptr inbounds i8, i8* %146, i64 -9, !dbg !3829
  %202 = bitcast i8* %201 to i32*, !dbg !3830
  %203 = load i32, i32* %202, align 1, !dbg !3830, !tbaa !549
  %204 = zext i32 %203 to i64, !dbg !3829
  br label %209, !dbg !3831

; <label>:205:                                    ; preds = %179
  %206 = getelementptr inbounds i8, i8* %146, i64 -17, !dbg !3832
  %207 = bitcast i8* %206 to i64*, !dbg !3833
  %208 = load i64, i64* %207, align 1, !dbg !3833, !tbaa !410
  br label %209, !dbg !3834

; <label>:209:                                    ; preds = %179, %188, %191, %195, %200, %205
  %210 = phi i64 [ %208, %205 ], [ %204, %200 ], [ %199, %195 ], [ %194, %191 ], [ %190, %188 ], [ 0, %179 ], !dbg !3835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3836
  %211 = sub i64 -2, %180, !dbg !3837
  %212 = add i64 %211, %210, !dbg !3838
  %213 = icmp sgt i64 %184, %212, !dbg !3839
  br i1 %213, label %368, label %214, !dbg !3840

; <label>:214:                                    ; preds = %209
  %215 = load i8, i8* %181, align 1, !dbg !3841, !tbaa !657
  %216 = icmp eq i8 %215, 36, !dbg !3843
  br i1 %216, label %219, label %217, !dbg !3844

; <label>:217:                                    ; preds = %214
  %218 = sext i8 %215 to i32, !dbg !3841
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i32 %218) #10, !dbg !3845
  call fastcc void @setProtocolError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i64 0, i64 0), %struct.client* nonnull %0) #10, !dbg !3847
  br label %372, !dbg !3848

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !3849
  %221 = ptrtoint i8* %220 to i64, !dbg !3850
  %222 = sub i64 %182, %221, !dbg !3850
  %223 = call i32 @string2ll(i8* nonnull %220, i64 %222, i64* nonnull %2) #8, !dbg !3851
  %224 = icmp eq i32 %223, 0, !dbg !3852
  %225 = load i64, i64* %2, align 8, !dbg !3854
  %226 = icmp slt i64 %225, 0, !dbg !3855
  %227 = or i1 %224, %226, !dbg !3856
  %228 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 232), align 8, !dbg !3857
  %229 = icmp sgt i64 %225, %228, !dbg !3858
  %230 = or i1 %227, %229, !dbg !3856
  br i1 %230, label %231, label %233, !dbg !3856

; <label>:231:                                    ; preds = %219
  %232 = call i64 @strlen(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i64 0, i64 0)) #8, !dbg !3863
  call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i64 0, i64 0), i64 %232) #8, !dbg !3864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3865
  call fastcc void @setProtocolError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i64 0, i64 0), %struct.client* nonnull %0) #10, !dbg !3866
  br label %372, !dbg !3867

; <label>:233:                                    ; preds = %219
  %234 = load i64, i64* %135, align 8, !dbg !3868, !tbaa !609
  %235 = sub i64 %182, %234, !dbg !3869
  %236 = add nsw i64 %235, 2, !dbg !3870
  store i64 %236, i64* %132, align 8, !dbg !3871, !tbaa !605
  %237 = icmp sgt i64 %225, 32767, !dbg !3872
  %238 = inttoptr i64 %234 to i8*, !dbg !3874
  br i1 %237, label %239, label %275, !dbg !3874

; <label>:239:                                    ; preds = %233
  %240 = getelementptr inbounds i8, i8* %238, i64 -1, !dbg !3879
  %241 = load i8, i8* %240, align 1, !dbg !3879, !tbaa !657
  %242 = trunc i8 %241 to i3, !dbg !3881
  switch i3 %242, label %264 [
    i3 0, label %243
    i3 1, label %246
    i3 2, label %250
    i3 3, label %255
    i3 -4, label %260
  ], !dbg !3881

; <label>:243:                                    ; preds = %239
  %244 = lshr i8 %241, 3, !dbg !3882
  %245 = zext i8 %244 to i64, !dbg !3882
  br label %264, !dbg !3883

; <label>:246:                                    ; preds = %239
  %247 = getelementptr inbounds i8, i8* %238, i64 -3, !dbg !3884
  %248 = load i8, i8* %247, align 1, !dbg !3885, !tbaa !657
  %249 = zext i8 %248 to i64, !dbg !3884
  br label %264, !dbg !3886

; <label>:250:                                    ; preds = %239
  %251 = getelementptr inbounds i8, i8* %238, i64 -5, !dbg !3887
  %252 = bitcast i8* %251 to i16*, !dbg !3888
  %253 = load i16, i16* %252, align 1, !dbg !3888, !tbaa !858
  %254 = zext i16 %253 to i64, !dbg !3887
  br label %264, !dbg !3889

; <label>:255:                                    ; preds = %239
  %256 = getelementptr inbounds i8, i8* %238, i64 -9, !dbg !3890
  %257 = bitcast i8* %256 to i32*, !dbg !3891
  %258 = load i32, i32* %257, align 1, !dbg !3891, !tbaa !549
  %259 = zext i32 %258 to i64, !dbg !3890
  br label %264, !dbg !3892

; <label>:260:                                    ; preds = %239
  %261 = getelementptr inbounds i8, i8* %238, i64 -17, !dbg !3893
  %262 = bitcast i8* %261 to i64*, !dbg !3894
  %263 = load i64, i64* %262, align 1, !dbg !3894, !tbaa !410
  br label %264, !dbg !3895

; <label>:264:                                    ; preds = %239, %243, %246, %250, %255, %260
  %265 = phi i64 [ %263, %260 ], [ %259, %255 ], [ %254, %250 ], [ %249, %246 ], [ %245, %243 ], [ 0, %239 ], !dbg !3896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3897
  %266 = sub i64 %265, %236, !dbg !3898
  %267 = add i64 %225, 2, !dbg !3899
  %268 = icmp ugt i64 %266, %267, !dbg !3900
  br i1 %268, label %275, label %269, !dbg !3901

; <label>:269:                                    ; preds = %264
  call void @sdsrange(i8* nonnull %238, i64 %236, i64 -1) #8, !dbg !3902
  store i64 0, i64* %132, align 8, !dbg !3904, !tbaa !605
  %270 = load i8*, i8** %131, align 8, !dbg !3905, !tbaa !609
  %271 = load i64, i64* %2, align 8, !dbg !3906, !tbaa !649
  %272 = add nsw i64 %271, 2, !dbg !3907
  %273 = call i8* @sdsMakeRoomFor(i8* %270, i64 %272) #8, !dbg !3908
  store i8* %273, i8** %131, align 8, !dbg !3909, !tbaa !609
  %274 = load i64, i64* %2, align 8, !dbg !3910, !tbaa !649
  br label %275, !dbg !3911

; <label>:275:                                    ; preds = %264, %269, %233
  %276 = phi i8* [ %238, %264 ], [ %273, %269 ], [ %238, %233 ]
  %277 = phi i64 [ %225, %264 ], [ %274, %269 ], [ %225, %233 ], !dbg !3910
  store i64 %277, i64* %130, align 8, !dbg !3912, !tbaa !633
  br label %278, !dbg !3913

; <label>:278:                                    ; preds = %137, %275
  %279 = phi i64 [ %277, %275 ], [ %138, %137 ]
  %280 = phi i8* [ %276, %275 ], [ %140, %137 ], !dbg !3914
  %281 = getelementptr inbounds i8, i8* %280, i64 -1, !dbg !3917
  %282 = load i8, i8* %281, align 1, !dbg !3917, !tbaa !657
  %283 = trunc i8 %282 to i3, !dbg !3919
  switch i3 %283, label %305 [
    i3 0, label %284
    i3 1, label %287
    i3 2, label %291
    i3 3, label %296
    i3 -4, label %301
  ], !dbg !3919

; <label>:284:                                    ; preds = %278
  %285 = lshr i8 %282, 3, !dbg !3920
  %286 = zext i8 %285 to i64, !dbg !3920
  br label %305, !dbg !3921

; <label>:287:                                    ; preds = %278
  %288 = getelementptr inbounds i8, i8* %280, i64 -3, !dbg !3922
  %289 = load i8, i8* %288, align 1, !dbg !3923, !tbaa !657
  %290 = zext i8 %289 to i64, !dbg !3922
  br label %305, !dbg !3924

; <label>:291:                                    ; preds = %278
  %292 = getelementptr inbounds i8, i8* %280, i64 -5, !dbg !3925
  %293 = bitcast i8* %292 to i16*, !dbg !3926
  %294 = load i16, i16* %293, align 1, !dbg !3926, !tbaa !858
  %295 = zext i16 %294 to i64, !dbg !3925
  br label %305, !dbg !3927

; <label>:296:                                    ; preds = %278
  %297 = getelementptr inbounds i8, i8* %280, i64 -9, !dbg !3928
  %298 = bitcast i8* %297 to i32*, !dbg !3929
  %299 = load i32, i32* %298, align 1, !dbg !3929, !tbaa !549
  %300 = zext i32 %299 to i64, !dbg !3928
  br label %305, !dbg !3930

; <label>:301:                                    ; preds = %278
  %302 = getelementptr inbounds i8, i8* %280, i64 -17, !dbg !3931
  %303 = bitcast i8* %302 to i64*, !dbg !3932
  %304 = load i64, i64* %303, align 1, !dbg !3932, !tbaa !410
  br label %305, !dbg !3933

; <label>:305:                                    ; preds = %278, %284, %287, %291, %296, %301
  %306 = phi i64 [ %304, %301 ], [ %300, %296 ], [ %295, %291 ], [ %290, %287 ], [ %286, %284 ], [ 0, %278 ], !dbg !3934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3935
  %307 = load i64, i64* %132, align 8, !dbg !3936, !tbaa !605
  %308 = sub i64 %306, %307, !dbg !3937
  %309 = add nsw i64 %279, 2, !dbg !3938
  %310 = icmp ult i64 %308, %309, !dbg !3939
  br i1 %310, label %368, label %311, !dbg !3940

; <label>:311:                                    ; preds = %305
  %312 = icmp eq i64 %307, 0, !dbg !3941
  %313 = icmp sgt i64 %279, 32767, !dbg !3944
  %314 = and i1 %312, %313, !dbg !3945
  br i1 %314, label %315, label %352, !dbg !3945

; <label>:315:                                    ; preds = %311
  switch i3 %283, label %337 [
    i3 0, label %316
    i3 1, label %319
    i3 2, label %323
    i3 3, label %328
    i3 -4, label %333
  ], !dbg !3949

; <label>:316:                                    ; preds = %315
  %317 = lshr i8 %282, 3, !dbg !3950
  %318 = zext i8 %317 to i64, !dbg !3950
  br label %337, !dbg !3951

; <label>:319:                                    ; preds = %315
  %320 = getelementptr inbounds i8, i8* %280, i64 -3, !dbg !3952
  %321 = load i8, i8* %320, align 1, !dbg !3953, !tbaa !657
  %322 = zext i8 %321 to i64, !dbg !3952
  br label %337, !dbg !3954

; <label>:323:                                    ; preds = %315
  %324 = getelementptr inbounds i8, i8* %280, i64 -5, !dbg !3955
  %325 = bitcast i8* %324 to i16*, !dbg !3956
  %326 = load i16, i16* %325, align 1, !dbg !3956, !tbaa !858
  %327 = zext i16 %326 to i64, !dbg !3955
  br label %337, !dbg !3957

; <label>:328:                                    ; preds = %315
  %329 = getelementptr inbounds i8, i8* %280, i64 -9, !dbg !3958
  %330 = bitcast i8* %329 to i32*, !dbg !3959
  %331 = load i32, i32* %330, align 1, !dbg !3959, !tbaa !549
  %332 = zext i32 %331 to i64, !dbg !3958
  br label %337, !dbg !3960

; <label>:333:                                    ; preds = %315
  %334 = getelementptr inbounds i8, i8* %280, i64 -17, !dbg !3961
  %335 = bitcast i8* %334 to i64*, !dbg !3962
  %336 = load i64, i64* %335, align 1, !dbg !3962, !tbaa !410
  br label %337, !dbg !3963

; <label>:337:                                    ; preds = %315, %316, %319, %323, %328, %333
  %338 = phi i64 [ %336, %333 ], [ %332, %328 ], [ %327, %323 ], [ %322, %319 ], [ %318, %316 ], [ 0, %315 ], !dbg !3964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3965
  %339 = icmp eq i64 %338, %309, !dbg !3966
  br i1 %339, label %340, label %352, !dbg !3967

; <label>:340:                                    ; preds = %337
  %341 = call %struct.redisObject* @createObject(i32 0, i8* %280) #8, !dbg !3968
  %342 = load %struct.redisObject**, %struct.redisObject*** %133, align 8, !dbg !3970, !tbaa !625
  %343 = load i32, i32* %134, align 8, !dbg !3971, !tbaa !622
  %344 = add nsw i32 %343, 1, !dbg !3971
  store i32 %344, i32* %134, align 8, !dbg !3971, !tbaa !622
  %345 = sext i32 %343 to i64, !dbg !3972
  %346 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %342, i64 %345, !dbg !3972
  store %struct.redisObject* %341, %struct.redisObject** %346, align 8, !dbg !3973, !tbaa !476
  %347 = load i8*, i8** %131, align 8, !dbg !3974, !tbaa !609
  call void @sdsIncrLen(i8* %347, i64 -2) #8, !dbg !3975
  %348 = load i8*, i8** @SDS_NOINIT, align 8, !dbg !3976, !tbaa !476
  %349 = load i64, i64* %130, align 8, !dbg !3977, !tbaa !633
  %350 = add nsw i64 %349, 2, !dbg !3978
  %351 = call i8* @sdsnewlen(i8* %348, i64 %350) #8, !dbg !3979
  store i8* %351, i8** %131, align 8, !dbg !3980, !tbaa !609
  call void @sdsclear(i8* %351) #8, !dbg !3981
  br label %364, !dbg !3982

; <label>:352:                                    ; preds = %337, %311
  %353 = getelementptr inbounds i8, i8* %280, i64 %307, !dbg !3983
  %354 = call %struct.redisObject* @createStringObject(i8* %353, i64 %279) #8, !dbg !3985
  %355 = load %struct.redisObject**, %struct.redisObject*** %133, align 8, !dbg !3986, !tbaa !625
  %356 = load i32, i32* %134, align 8, !dbg !3987, !tbaa !622
  %357 = add nsw i32 %356, 1, !dbg !3987
  store i32 %357, i32* %134, align 8, !dbg !3987, !tbaa !622
  %358 = sext i32 %356 to i64, !dbg !3988
  %359 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %355, i64 %358, !dbg !3988
  store %struct.redisObject* %354, %struct.redisObject** %359, align 8, !dbg !3989, !tbaa !476
  %360 = load i64, i64* %130, align 8, !dbg !3990, !tbaa !633
  %361 = add nsw i64 %360, 2, !dbg !3991
  %362 = load i64, i64* %132, align 8, !dbg !3992, !tbaa !605
  %363 = add i64 %361, %362, !dbg !3992
  store i64 %363, i64* %132, align 8, !dbg !3992, !tbaa !605
  br label %364

; <label>:364:                                    ; preds = %352, %340
  store i64 -1, i64* %130, align 8, !dbg !3993, !tbaa !633
  %365 = load i32, i32* %4, align 4, !dbg !3994, !tbaa !630
  %366 = add nsw i32 %365, -1, !dbg !3994
  store i32 %366, i32* %4, align 4, !dbg !3994, !tbaa !630
  %367 = icmp eq i32 %366, 0, !dbg !3763
  br i1 %367, label %368, label %137, !dbg !3763, !llvm.loop !3995

; <label>:368:                                    ; preds = %209, %305, %364, %172
  %369 = load i32, i32* %4, align 4, !dbg !3997, !tbaa !630
  %370 = icmp ne i32 %369, 0, !dbg !3999
  %371 = sext i1 %370 to i32, !dbg !4000
  br label %372, !dbg !4000

; <label>:372:                                    ; preds = %368, %104, %83, %46, %51, %231, %217, %177, %102
  %373 = phi i32 [ -1, %102 ], [ -1, %177 ], [ -1, %217 ], [ -1, %231 ], [ -1, %51 ], [ -1, %46 ], [ -1, %83 ], [ 0, %104 ], [ %371, %368 ], !dbg !4001
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !4002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4002
  ret i32 %373, !dbg !4002
}

; Function Attrs: noredzone
declare dso_local i32 @string2ll(i8*, i64, i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsrange(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsMakeRoomFor(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsIncrLen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsclear(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @processInputBuffer(%struct.client*) local_unnamed_addr #0 !dbg !4003 {
  %2 = alloca %struct.listIter, align 8
  store %struct.client* %0, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !4007, !tbaa !2879
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 5
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 4
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21
  %6 = bitcast %struct.listIter* %2 to i8*
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 12
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 13
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 14
  %12 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 29
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 30
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 39
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %16, !dbg !4008

; <label>:16:                                     ; preds = %223, %1
  %17 = load i64, i64* %3, align 8, !dbg !4009, !tbaa !605
  %18 = load i8*, i8** %4, align 8, !dbg !4010, !tbaa !609
  %19 = getelementptr inbounds i8, i8* %18, i64 -1, !dbg !4013
  %20 = load i8, i8* %19, align 1, !dbg !4013, !tbaa !657
  %21 = trunc i8 %20 to i3, !dbg !4015
  switch i3 %21, label %22 [
    i3 0, label %23
    i3 1, label %26
    i3 2, label %30
    i3 3, label %35
    i3 -4, label %40
  ], !dbg !4015

; <label>:22:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4016
  br label %224, !dbg !4008

; <label>:23:                                     ; preds = %16
  %24 = lshr i8 %20, 3, !dbg !4017
  %25 = zext i8 %24 to i64, !dbg !4017
  br label %44, !dbg !4018

; <label>:26:                                     ; preds = %16
  %27 = getelementptr inbounds i8, i8* %18, i64 -3, !dbg !4019
  %28 = load i8, i8* %27, align 1, !dbg !4020, !tbaa !657
  %29 = zext i8 %28 to i64, !dbg !4019
  br label %44, !dbg !4021

; <label>:30:                                     ; preds = %16
  %31 = getelementptr inbounds i8, i8* %18, i64 -5, !dbg !4022
  %32 = bitcast i8* %31 to i16*, !dbg !4023
  %33 = load i16, i16* %32, align 1, !dbg !4023, !tbaa !858
  %34 = zext i16 %33 to i64, !dbg !4022
  br label %44, !dbg !4024

; <label>:35:                                     ; preds = %16
  %36 = getelementptr inbounds i8, i8* %18, i64 -9, !dbg !4025
  %37 = bitcast i8* %36 to i32*, !dbg !4026
  %38 = load i32, i32* %37, align 1, !dbg !4026, !tbaa !549
  %39 = zext i32 %38 to i64, !dbg !4025
  br label %44, !dbg !4027

; <label>:40:                                     ; preds = %16
  %41 = getelementptr inbounds i8, i8* %18, i64 -17, !dbg !4028
  %42 = bitcast i8* %41 to i64*, !dbg !4029
  %43 = load i64, i64* %42, align 1, !dbg !4029, !tbaa !410
  br label %44, !dbg !4030

; <label>:44:                                     ; preds = %23, %26, %30, %35, %40
  %45 = phi i64 [ %43, %40 ], [ %39, %35 ], [ %34, %30 ], [ %29, %26 ], [ %25, %23 ], !dbg !4031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4016
  %46 = icmp ult i64 %17, %45, !dbg !4032
  br i1 %46, label %47, label %224, !dbg !4008

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* %5, align 8, !dbg !4033, !tbaa !927
  %49 = and i32 %48, 1, !dbg !4036
  %50 = icmp eq i32 %49, 0, !dbg !4036
  br i1 %50, label %51, label %82, !dbg !4037

; <label>:51:                                     ; preds = %47
  %52 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !4038, !tbaa !4047
  %53 = icmp eq i32 %52, 0, !dbg !4048
  br i1 %53, label %54, label %55, !dbg !4049

; <label>:54:                                     ; preds = %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4050
  br label %82, !dbg !4051

; <label>:55:                                     ; preds = %51
  %56 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 46), align 8, !dbg !4052, !tbaa !4053
  %57 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 254), align 8, !dbg !4054, !tbaa !4055
  %58 = icmp slt i64 %56, %57, !dbg !4056
  br i1 %58, label %60, label %59, !dbg !4057

; <label>:59:                                     ; preds = %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4050
  br label %224, !dbg !4051

; <label>:60:                                     ; preds = %55
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #5, !dbg !4058
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !4059, !tbaa !4047
  %61 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !4060, !tbaa !441
  call void @listRewind(%struct.list* %61, %struct.listIter* nonnull %2) #8, !dbg !4062
  %62 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !4063
  %63 = icmp eq %struct.listNode* %62, null, !dbg !4065
  br i1 %63, label %77, label %64, !dbg !4066

; <label>:64:                                     ; preds = %60, %74
  %65 = phi %struct.listNode* [ %75, %74 ], [ %62, %60 ]
  %66 = getelementptr inbounds %struct.listNode, %struct.listNode* %65, i64 0, i32 2, !dbg !4067
  %67 = bitcast i8** %66 to %struct.client**, !dbg !4067
  %68 = load %struct.client*, %struct.client** %67, align 8, !dbg !4067, !tbaa !1161
  %69 = getelementptr inbounds %struct.client, %struct.client* %68, i64 0, i32 21, !dbg !4070
  %70 = load i32, i32* %69, align 8, !dbg !4070, !tbaa !927
  %71 = and i32 %70, 17, !dbg !4072
  %72 = icmp eq i32 %71, 0, !dbg !4072
  br i1 %72, label %73, label %74, !dbg !4073

; <label>:73:                                     ; preds = %64
  call void @queueClientForReprocessing(%struct.client* %68) #8, !dbg !4074
  br label %74, !dbg !4066

; <label>:74:                                     ; preds = %73, %64
  %75 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !4063
  %76 = icmp eq %struct.listNode* %75, null, !dbg !4065
  br i1 %76, label %77, label %64, !dbg !4066, !llvm.loop !4075

; <label>:77:                                     ; preds = %74, %60
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #5, !dbg !4078
  %78 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !4079, !tbaa !4047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4050
  %79 = icmp eq i32 %78, 0, !dbg !4080
  br i1 %79, label %80, label %224, !dbg !4051

; <label>:80:                                     ; preds = %77
  %81 = load i32, i32* %5, align 8, !dbg !4081, !tbaa !927
  br label %82, !dbg !4051

; <label>:82:                                     ; preds = %80, %54, %47
  %83 = phi i32 [ %81, %80 ], [ %48, %54 ], [ %48, %47 ], !dbg !4081
  %84 = and i32 %83, 16, !dbg !4083
  %85 = icmp eq i32 %84, 0, !dbg !4083
  br i1 %85, label %86, label %224, !dbg !4084

; <label>:86:                                     ; preds = %82
  %87 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !4085, !tbaa !4087
  %88 = icmp eq i32 %87, 0, !dbg !4088
  %89 = and i32 %83, 2, !dbg !4089
  %90 = icmp eq i32 %89, 0, !dbg !4089
  %91 = or i1 %90, %88, !dbg !4090
  %92 = and i32 %83, 1088, !dbg !4091
  %93 = icmp eq i32 %92, 0, !dbg !4091
  %94 = and i1 %93, %91, !dbg !4090
  br i1 %94, label %95, label %224, !dbg !4090

; <label>:95:                                     ; preds = %86
  %96 = load i32, i32* %7, align 8, !dbg !4093, !tbaa !619
  switch i32 %96, label %111 [
    i32 0, label %97
    i32 1, label %105
    i32 2, label %108
  ], !dbg !4095

; <label>:97:                                     ; preds = %95
  %98 = load i8*, i8** %4, align 8, !dbg !4096, !tbaa !609
  %99 = load i64, i64* %3, align 8, !dbg !4099, !tbaa !605
  %100 = getelementptr inbounds i8, i8* %98, i64 %99, !dbg !4100
  %101 = load i8, i8* %100, align 1, !dbg !4100, !tbaa !657
  %102 = icmp eq i8 %101, 42, !dbg !4101
  br i1 %102, label %103, label %104, !dbg !4102

; <label>:103:                                    ; preds = %97
  store i32 2, i32* %7, align 8, !dbg !4103, !tbaa !619
  br label %108, !dbg !4105

; <label>:104:                                    ; preds = %97
  store i32 1, i32* %7, align 8, !dbg !4106, !tbaa !619
  br label %105, !dbg !4105

; <label>:105:                                    ; preds = %95, %104
  %106 = call i32 @processInlineBuffer(%struct.client* nonnull %0) #10, !dbg !4108
  %107 = icmp eq i32 %106, 0, !dbg !4112
  br i1 %107, label %112, label %224, !dbg !4113

; <label>:108:                                    ; preds = %95, %103
  %109 = call i32 @processMultibulkBuffer(%struct.client* nonnull %0) #10, !dbg !4114
  %110 = icmp eq i32 %109, 0, !dbg !4118
  br i1 %110, label %112, label %224, !dbg !4119

; <label>:111:                                    ; preds = %95
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1468, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0)) #8, !dbg !4120
  call void @_exit(i32 1) #9, !dbg !4120
  unreachable, !dbg !4120

; <label>:112:                                    ; preds = %105, %108
  %113 = load i32, i32* %8, align 8, !dbg !4122, !tbaa !622
  %114 = icmp eq i32 %113, 0, !dbg !4124
  br i1 %114, label %115, label %138, !dbg !4125

; <label>:115:                                    ; preds = %112
  %116 = load %struct.redisCommand*, %struct.redisCommand** %9, align 8, !dbg !4129, !tbaa !2766
  %117 = icmp eq %struct.redisCommand* %116, null, !dbg !4130
  br i1 %117, label %122, label %118, !dbg !4130

; <label>:118:                                    ; preds = %115
  %119 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %116, i64 0, i32 1, !dbg !4131
  %120 = load void (%struct.client*)*, void (%struct.client*)** %119, align 8, !dbg !4131, !tbaa !3249
  %121 = icmp ne void (%struct.client*)* %120, @askingCommand, !dbg !4130
  br label %122, !dbg !4130

; <label>:122:                                    ; preds = %115, %118
  %123 = phi i1 [ %121, %118 ], [ true, %115 ]
  store i32 0, i32* %8, align 8, !dbg !4135, !tbaa !622
  store %struct.redisCommand* null, %struct.redisCommand** %9, align 8, !dbg !4136, !tbaa !2766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4137
  store i32 0, i32* %7, align 8, !dbg !4138, !tbaa !619
  store i32 0, i32* %10, align 4, !dbg !4139, !tbaa !630
  store i64 -1, i64* %11, align 8, !dbg !4140, !tbaa !633
  %124 = load i32, i32* %5, align 8, !dbg !4141, !tbaa !927
  %125 = and i32 %124, 8, !dbg !4142
  %126 = icmp eq i32 %125, 0, !dbg !4142
  %127 = and i1 %123, %126, !dbg !4143
  br i1 %127, label %128, label %130, !dbg !4143

; <label>:128:                                    ; preds = %122
  %129 = and i32 %124, -513, !dbg !4144
  store i32 %129, i32* %5, align 8, !dbg !4144, !tbaa !927
  br label %130, !dbg !4145

; <label>:130:                                    ; preds = %122, %128
  %131 = phi i32 [ %124, %122 ], [ %129, %128 ], !dbg !4146
  %132 = and i32 %131, -16777217, !dbg !4146
  %133 = and i32 %131, 8388608, !dbg !4147
  %134 = icmp eq i32 %133, 0, !dbg !4147
  %135 = and i32 %131, -25165825, !dbg !4148
  %136 = or i32 %135, 16777216, !dbg !4148
  %137 = select i1 %134, i32 %132, i32 %136, !dbg !4149
  store i32 %137, i32* %5, align 8, !dbg !4150, !tbaa !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4151
  br label %223, !dbg !4152

; <label>:138:                                    ; preds = %112
  %139 = call i32 @processCommand(%struct.client* nonnull %0) #8, !dbg !4153
  %140 = icmp eq i32 %139, 0, !dbg !4156
  br i1 %140, label %141, label %220, !dbg !4157

; <label>:141:                                    ; preds = %138
  %142 = load i32, i32* %5, align 8, !dbg !4158, !tbaa !927
  %143 = and i32 %142, 10, !dbg !4161
  %144 = icmp eq i32 %143, 2, !dbg !4161
  br i1 %144, label %145, label %177, !dbg !4161

; <label>:145:                                    ; preds = %141
  %146 = load i64, i64* %12, align 8, !dbg !4162, !tbaa !950
  %147 = load i8*, i8** %4, align 8, !dbg !4164, !tbaa !609
  %148 = getelementptr inbounds i8, i8* %147, i64 -1, !dbg !4167
  %149 = load i8, i8* %148, align 1, !dbg !4167, !tbaa !657
  %150 = trunc i8 %149 to i3, !dbg !4169
  switch i3 %150, label %172 [
    i3 0, label %151
    i3 1, label %154
    i3 2, label %158
    i3 3, label %163
    i3 -4, label %168
  ], !dbg !4169

; <label>:151:                                    ; preds = %145
  %152 = lshr i8 %149, 3, !dbg !4170
  %153 = zext i8 %152 to i64, !dbg !4170
  br label %172, !dbg !4171

; <label>:154:                                    ; preds = %145
  %155 = getelementptr inbounds i8, i8* %147, i64 -3, !dbg !4172
  %156 = load i8, i8* %155, align 1, !dbg !4173, !tbaa !657
  %157 = zext i8 %156 to i64, !dbg !4172
  br label %172, !dbg !4174

; <label>:158:                                    ; preds = %145
  %159 = getelementptr inbounds i8, i8* %147, i64 -5, !dbg !4175
  %160 = bitcast i8* %159 to i16*, !dbg !4176
  %161 = load i16, i16* %160, align 1, !dbg !4176, !tbaa !858
  %162 = zext i16 %161 to i64, !dbg !4175
  br label %172, !dbg !4177

; <label>:163:                                    ; preds = %145
  %164 = getelementptr inbounds i8, i8* %147, i64 -9, !dbg !4178
  %165 = bitcast i8* %164 to i32*, !dbg !4179
  %166 = load i32, i32* %165, align 1, !dbg !4179, !tbaa !549
  %167 = zext i32 %166 to i64, !dbg !4178
  br label %172, !dbg !4180

; <label>:168:                                    ; preds = %145
  %169 = getelementptr inbounds i8, i8* %147, i64 -17, !dbg !4181
  %170 = bitcast i8* %169 to i64*, !dbg !4182
  %171 = load i64, i64* %170, align 1, !dbg !4182, !tbaa !410
  br label %172, !dbg !4183

; <label>:172:                                    ; preds = %145, %151, %154, %158, %163, %168
  %173 = phi i64 [ %171, %168 ], [ %167, %163 ], [ %162, %158 ], [ %157, %154 ], [ %153, %151 ], [ 0, %145 ], !dbg !4184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4185
  %174 = sub i64 %146, %173, !dbg !4186
  %175 = load i64, i64* %3, align 8, !dbg !4187, !tbaa !605
  %176 = add i64 %174, %175, !dbg !4188
  store i64 %176, i64* %13, align 8, !dbg !4189, !tbaa !1005
  br label %177, !dbg !4190

; <label>:177:                                    ; preds = %141, %172
  %178 = and i32 %142, 16, !dbg !4191
  %179 = icmp eq i32 %178, 0, !dbg !4191
  br i1 %179, label %183, label %180, !dbg !4193

; <label>:180:                                    ; preds = %177
  %181 = load i32, i32* %14, align 8, !dbg !4194, !tbaa !677
  %182 = icmp eq i32 %181, 3, !dbg !4195
  br i1 %182, label %220, label %183, !dbg !4196

; <label>:183:                                    ; preds = %180, %177
  %184 = load %struct.redisCommand*, %struct.redisCommand** %9, align 8, !dbg !4199, !tbaa !2766
  %185 = icmp eq %struct.redisCommand* %184, null, !dbg !4200
  br i1 %185, label %190, label %186, !dbg !4200

; <label>:186:                                    ; preds = %183
  %187 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %184, i64 0, i32 1, !dbg !4201
  %188 = load void (%struct.client*)*, void (%struct.client*)** %187, align 8, !dbg !4201, !tbaa !3249
  %189 = icmp ne void (%struct.client*)* %188, @askingCommand, !dbg !4200
  br label %190, !dbg !4200

; <label>:190:                                    ; preds = %186, %183
  %191 = phi i1 [ %189, %186 ], [ true, %183 ]
  %192 = load i32, i32* %8, align 8, !dbg !4205, !tbaa !622
  %193 = icmp sgt i32 %192, 0, !dbg !4206
  br i1 %193, label %194, label %205, !dbg !4207

; <label>:194:                                    ; preds = %190, %194
  %195 = phi i64 [ %199, %194 ], [ 0, %190 ]
  %196 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4208, !tbaa !625
  %197 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %196, i64 %195, !dbg !4209
  %198 = load %struct.redisObject*, %struct.redisObject** %197, align 8, !dbg !4209, !tbaa !476
  call void @decrRefCount(%struct.redisObject* %198) #8, !dbg !4210
  %199 = add nuw nsw i64 %195, 1, !dbg !4211
  %200 = load i32, i32* %8, align 8, !dbg !4205, !tbaa !622
  %201 = sext i32 %200 to i64, !dbg !4206
  %202 = icmp slt i64 %199, %201, !dbg !4206
  br i1 %202, label %194, label %203, !dbg !4207, !llvm.loop !2760

; <label>:203:                                    ; preds = %194
  %204 = load i32, i32* %5, align 8, !dbg !4212, !tbaa !927
  br label %205, !dbg !4213

; <label>:205:                                    ; preds = %203, %190
  %206 = phi i32 [ %204, %203 ], [ %142, %190 ], !dbg !4212
  store i32 0, i32* %8, align 8, !dbg !4213, !tbaa !622
  store %struct.redisCommand* null, %struct.redisCommand** %9, align 8, !dbg !4214, !tbaa !2766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4215
  store i32 0, i32* %7, align 8, !dbg !4216, !tbaa !619
  store i32 0, i32* %10, align 4, !dbg !4217, !tbaa !630
  store i64 -1, i64* %11, align 8, !dbg !4218, !tbaa !633
  %207 = and i32 %206, 8, !dbg !4219
  %208 = icmp eq i32 %207, 0, !dbg !4219
  %209 = and i1 %191, %208, !dbg !4220
  br i1 %209, label %210, label %212, !dbg !4220

; <label>:210:                                    ; preds = %205
  %211 = and i32 %206, -513, !dbg !4221
  store i32 %211, i32* %5, align 8, !dbg !4221, !tbaa !927
  br label %212, !dbg !4222

; <label>:212:                                    ; preds = %205, %210
  %213 = phi i32 [ %206, %205 ], [ %211, %210 ], !dbg !4223
  %214 = and i32 %213, -16777217, !dbg !4223
  %215 = and i32 %213, 8388608, !dbg !4224
  %216 = icmp eq i32 %215, 0, !dbg !4224
  %217 = and i32 %213, -25165825, !dbg !4225
  %218 = or i32 %217, 16777216, !dbg !4225
  %219 = select i1 %216, i32 %214, i32 %218, !dbg !4226
  store i32 %219, i32* %5, align 8, !dbg !4227, !tbaa !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4228
  br label %220, !dbg !4229

; <label>:220:                                    ; preds = %180, %212, %138
  %221 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !4230, !tbaa !2879
  %222 = icmp eq %struct.client* %221, null, !dbg !4232
  br i1 %222, label %232, label %223, !dbg !4233

; <label>:223:                                    ; preds = %220, %130
  br label %16, !dbg !4009, !llvm.loop !4234

; <label>:224:                                    ; preds = %86, %105, %108, %82, %77, %44, %59, %22
  %225 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !4236, !tbaa !2879
  %226 = icmp eq %struct.client* %225, null, !dbg !4238
  br i1 %226, label %232, label %227, !dbg !4239

; <label>:227:                                    ; preds = %224
  %228 = load i64, i64* %3, align 8, !dbg !4240, !tbaa !605
  %229 = icmp eq i64 %228, 0, !dbg !4241
  br i1 %229, label %232, label %230, !dbg !4242

; <label>:230:                                    ; preds = %227
  %231 = load i8*, i8** %4, align 8, !dbg !4243, !tbaa !609
  call void @sdsrange(i8* %231, i64 %228, i64 -1) #8, !dbg !4245
  store i64 0, i64* %3, align 8, !dbg !4246, !tbaa !605
  br label %232, !dbg !4247

; <label>:232:                                    ; preds = %220, %227, %224, %230
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !4248, !tbaa !2879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4249
  ret void, !dbg !4249
}

; Function Attrs: noredzone nounwind
define dso_local i32 @clientsArePaused() local_unnamed_addr #0 !dbg !4040 {
  %1 = alloca %struct.listIter, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !4250, !tbaa !4047
  %3 = icmp eq i32 %2, 0, !dbg !4251
  br i1 %3, label %28, label %4, !dbg !4252

; <label>:4:                                      ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 46), align 8, !dbg !4253, !tbaa !4053
  %6 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 254), align 8, !dbg !4254, !tbaa !4055
  %7 = icmp slt i64 %5, %6, !dbg !4255
  br i1 %7, label %8, label %28, !dbg !4256

; <label>:8:                                      ; preds = %4
  %9 = bitcast %struct.listIter* %1 to i8*, !dbg !4257
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #5, !dbg !4257
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !4258, !tbaa !4047
  %10 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !4259, !tbaa !441
  call void @listRewind(%struct.list* %10, %struct.listIter* nonnull %1) #8, !dbg !4261
  %11 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !4262
  %12 = icmp eq %struct.listNode* %11, null, !dbg !4264
  br i1 %12, label %26, label %13, !dbg !4076

; <label>:13:                                     ; preds = %8, %23
  %14 = phi %struct.listNode* [ %24, %23 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.listNode, %struct.listNode* %14, i64 0, i32 2, !dbg !4265
  %16 = bitcast i8** %15 to %struct.client**, !dbg !4265
  %17 = load %struct.client*, %struct.client** %16, align 8, !dbg !4265, !tbaa !1161
  %18 = getelementptr inbounds %struct.client, %struct.client* %17, i64 0, i32 21, !dbg !4267
  %19 = load i32, i32* %18, align 8, !dbg !4267, !tbaa !927
  %20 = and i32 %19, 17, !dbg !4268
  %21 = icmp eq i32 %20, 0, !dbg !4268
  br i1 %21, label %22, label %23, !dbg !4269

; <label>:22:                                     ; preds = %13
  call void @queueClientForReprocessing(%struct.client* %17) #8, !dbg !4270
  br label %23, !dbg !4076

; <label>:23:                                     ; preds = %22, %13
  %24 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !4262
  %25 = icmp eq %struct.listNode* %24, null, !dbg !4264
  br i1 %25, label %26, label %13, !dbg !4076, !llvm.loop !4075

; <label>:26:                                     ; preds = %23, %8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #5, !dbg !4271
  %27 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !4272, !tbaa !4047
  br label %28, !dbg !4273

; <label>:28:                                     ; preds = %0, %26, %4
  %29 = phi i32 [ 0, %0 ], [ %27, %26 ], [ %2, %4 ], !dbg !4272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4274
  ret i32 %29, !dbg !4274
}

; Function Attrs: noredzone
declare dso_local i32 @processCommand(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @processInputBufferAndReplicate(%struct.client*) local_unnamed_addr #0 !dbg !992 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4276
  %3 = load i32, i32* %2, align 8, !dbg !4276, !tbaa !927
  %4 = and i32 %3, 2, !dbg !4277
  %5 = icmp eq i32 %4, 0, !dbg !4277
  br i1 %5, label %6, label %7, !dbg !4278

; <label>:6:                                      ; preds = %1
  tail call void @processInputBuffer(%struct.client* nonnull %0) #10, !dbg !4279
  br label %18, !dbg !4280

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 30, !dbg !4281
  %9 = load i64, i64* %8, align 8, !dbg !4281, !tbaa !1005
  tail call void @processInputBuffer(%struct.client* nonnull %0) #10, !dbg !4283
  %10 = load i64, i64* %8, align 8, !dbg !4284, !tbaa !1005
  %11 = sub i64 %10, %9, !dbg !4285
  %12 = icmp eq i64 %11, 0, !dbg !4287
  br i1 %12, label %18, label %13, !dbg !4288

; <label>:13:                                     ; preds = %7
  %14 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4289, !tbaa !1016
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 6, !dbg !4290
  %16 = load i8*, i8** %15, align 8, !dbg !4290, !tbaa !613
  tail call void @replicationFeedSlavesFromMasterStream(%struct.list* %14, i8* %16, i64 %11) #8, !dbg !4291
  %17 = load i8*, i8** %15, align 8, !dbg !4292, !tbaa !613
  tail call void @sdsrange(i8* %17, i64 %11, i64 -1) #8, !dbg !4293
  br label %18, !dbg !4294

; <label>:18:                                     ; preds = %13, %7, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4295
  ret void, !dbg !4295
}

; Function Attrs: noredzone
declare dso_local void @replicationFeedSlavesFromMasterStream(%struct.list*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @catClientInfoString(i8*, %struct.client* nocapture) local_unnamed_addr #0 !dbg !4296 {
  %3 = alloca [78 x i8], align 16
  %4 = alloca [16 x i8], align 16
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0, !dbg !4322
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #5, !dbg !4322
  %7 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0, !dbg !4322
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %7) #5, !dbg !4322
  %8 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 21, !dbg !4326
  %9 = load i32, i32* %8, align 8, !dbg !4326, !tbaa !927
  %10 = and i32 %9, 1, !dbg !4328
  %11 = icmp eq i32 %10, 0, !dbg !4328
  br i1 %11, label %16, label %12, !dbg !4329

; <label>:12:                                     ; preds = %2
  %13 = and i32 %9, 4, !dbg !4330
  %14 = icmp eq i32 %13, 0, !dbg !4330
  %15 = select i1 %14, i8 83, i8 79
  store i8 %15, i8* %6, align 16, !dbg !4333, !tbaa !657
  br label %16, !dbg !4334

; <label>:16:                                     ; preds = %12, %2
  %17 = phi i64 [ 0, %2 ], [ 1, %12 ]
  %18 = and i32 %9, 2, !dbg !4334
  %19 = icmp eq i32 %18, 0, !dbg !4334
  br i1 %19, label %23, label %20, !dbg !4336

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %17, !dbg !4325
  %22 = add nuw nsw i64 %17, 1, !dbg !4337
  store i8 77, i8* %21, align 1, !dbg !4338, !tbaa !657
  br label %23, !dbg !4339

; <label>:23:                                     ; preds = %16, %20
  %24 = phi i64 [ %22, %20 ], [ %17, %16 ]
  %25 = and i32 %9, 262144, !dbg !4340
  %26 = icmp eq i32 %25, 0, !dbg !4340
  br i1 %26, label %30, label %27, !dbg !4342

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %24, !dbg !4325
  %29 = add nsw i64 %24, 1, !dbg !4343
  store i8 80, i8* %28, align 1, !dbg !4344, !tbaa !657
  br label %30, !dbg !4345

; <label>:30:                                     ; preds = %23, %27
  %31 = phi i64 [ %29, %27 ], [ %24, %23 ]
  %32 = and i32 %9, 8, !dbg !4346
  %33 = icmp eq i32 %32, 0, !dbg !4346
  br i1 %33, label %37, label %34, !dbg !4348

; <label>:34:                                     ; preds = %30
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %31, !dbg !4325
  %36 = add nsw i64 %31, 1, !dbg !4349
  store i8 120, i8* %35, align 1, !dbg !4350, !tbaa !657
  br label %37, !dbg !4351

; <label>:37:                                     ; preds = %30, %34
  %38 = phi i64 [ %36, %34 ], [ %31, %30 ]
  %39 = and i32 %9, 16, !dbg !4352
  %40 = icmp eq i32 %39, 0, !dbg !4352
  br i1 %40, label %44, label %41, !dbg !4354

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %38, !dbg !4325
  %43 = add nsw i64 %38, 1, !dbg !4355
  store i8 98, i8* %42, align 1, !dbg !4356, !tbaa !657
  br label %44, !dbg !4357

; <label>:44:                                     ; preds = %37, %41
  %45 = phi i64 [ %43, %41 ], [ %38, %37 ]
  %46 = and i32 %9, 32, !dbg !4358
  %47 = icmp eq i32 %46, 0, !dbg !4358
  br i1 %47, label %51, label %48, !dbg !4360

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %45, !dbg !4325
  %50 = add nsw i64 %45, 1, !dbg !4361
  store i8 100, i8* %49, align 1, !dbg !4362, !tbaa !657
  br label %51, !dbg !4363

; <label>:51:                                     ; preds = %44, %48
  %52 = phi i64 [ %50, %48 ], [ %45, %44 ]
  %53 = and i32 %9, 64, !dbg !4364
  %54 = icmp eq i32 %53, 0, !dbg !4364
  br i1 %54, label %58, label %55, !dbg !4366

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %52, !dbg !4325
  %57 = add nsw i64 %52, 1, !dbg !4367
  store i8 99, i8* %56, align 1, !dbg !4368, !tbaa !657
  br label %58, !dbg !4369

; <label>:58:                                     ; preds = %51, %55
  %59 = phi i64 [ %57, %55 ], [ %52, %51 ]
  %60 = trunc i32 %9 to i8, !dbg !4370
  %61 = icmp slt i8 %60, 0, !dbg !4370
  br i1 %61, label %62, label %65, !dbg !4372

; <label>:62:                                     ; preds = %58
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %59, !dbg !4325
  %64 = add nsw i64 %59, 1, !dbg !4373
  store i8 117, i8* %63, align 1, !dbg !4374, !tbaa !657
  br label %65, !dbg !4375

; <label>:65:                                     ; preds = %62, %58
  %66 = phi i64 [ %64, %62 ], [ %59, %58 ]
  %67 = and i32 %9, 1024, !dbg !4376
  %68 = icmp eq i32 %67, 0, !dbg !4376
  br i1 %68, label %72, label %69, !dbg !4378

; <label>:69:                                     ; preds = %65
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %66, !dbg !4325
  %71 = add nsw i64 %66, 1, !dbg !4379
  store i8 65, i8* %70, align 1, !dbg !4380, !tbaa !657
  br label %72, !dbg !4381

; <label>:72:                                     ; preds = %65, %69
  %73 = phi i64 [ %71, %69 ], [ %66, %65 ]
  %74 = and i32 %9, 2048, !dbg !4382
  %75 = icmp eq i32 %74, 0, !dbg !4382
  br i1 %75, label %79, label %76, !dbg !4384

; <label>:76:                                     ; preds = %72
  %77 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %73, !dbg !4325
  %78 = add nsw i64 %73, 1, !dbg !4385
  store i8 85, i8* %77, align 1, !dbg !4386, !tbaa !657
  br label %79, !dbg !4387

; <label>:79:                                     ; preds = %72, %76
  %80 = phi i64 [ %78, %76 ], [ %73, %72 ]
  %81 = and i32 %9, 131072, !dbg !4388
  %82 = icmp eq i32 %81, 0, !dbg !4388
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %80, !dbg !4325
  br i1 %82, label %87, label %84, !dbg !4390

; <label>:84:                                     ; preds = %79
  %85 = add nsw i64 %80, 1, !dbg !4391
  store i8 114, i8* %83, align 1, !dbg !4392, !tbaa !657
  %86 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %85, !dbg !4325
  br label %91, !dbg !4393

; <label>:87:                                     ; preds = %79
  %88 = icmp eq i64 %80, 0, !dbg !4394
  br i1 %88, label %89, label %91, !dbg !4393

; <label>:89:                                     ; preds = %87
  %90 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !4396
  store i8 78, i8* %83, align 1, !dbg !4397, !tbaa !657
  br label %91, !dbg !4398

; <label>:91:                                     ; preds = %84, %89, %87
  %92 = phi i8* [ %90, %89 ], [ %83, %87 ], [ %86, %84 ], !dbg !4399
  store i8 0, i8* %92, align 1, !dbg !4400, !tbaa !657
  %93 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 1, !dbg !4401
  %94 = load i32, i32* %93, align 8, !dbg !4401, !tbaa !596
  %95 = icmp eq i32 %94, -1, !dbg !4402
  br i1 %95, label %109, label %96, !dbg !4403

; <label>:96:                                     ; preds = %91
  %97 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4404, !tbaa !580
  %98 = tail call i32 @aeGetFileEvents(%struct.aeEventLoop* %97, i32 %94) #8, !dbg !4405
  %99 = and i32 %98, 1, !dbg !4407
  %100 = icmp eq i32 %99, 0, !dbg !4407
  br i1 %100, label %103, label %101, !dbg !4409

; <label>:101:                                    ; preds = %96
  %102 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1, !dbg !4410
  store i8 114, i8* %7, align 1, !dbg !4411, !tbaa !657
  br label %103, !dbg !4412

; <label>:103:                                    ; preds = %96, %101
  %104 = phi i8* [ %102, %101 ], [ %7, %96 ], !dbg !4413
  %105 = and i32 %98, 2, !dbg !4414
  %106 = icmp eq i32 %105, 0, !dbg !4414
  br i1 %106, label %109, label %107, !dbg !4416

; <label>:107:                                    ; preds = %103
  %108 = getelementptr inbounds i8, i8* %104, i64 1, !dbg !4417
  store i8 119, i8* %104, align 1, !dbg !4418, !tbaa !657
  br label %109, !dbg !4419

; <label>:109:                                    ; preds = %91, %103, %107
  %110 = phi i8* [ %108, %107 ], [ %104, %103 ], [ %7, %91 ], !dbg !4420
  store i8 0, i8* %110, align 1, !dbg !4421, !tbaa !657
  %111 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 0, !dbg !4422
  %112 = load i64, i64* %111, align 8, !dbg !4422, !tbaa !461
  %113 = getelementptr inbounds [78 x i8], [78 x i8]* %3, i64 0, i64 0, !dbg !4424
  call void @llvm.lifetime.start.p0i8(i64 78, i8* nonnull %113) #5, !dbg !4424
  %114 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 45, !dbg !4425
  %115 = load i8*, i8** %114, align 8, !dbg !4425, !tbaa !717
  %116 = icmp eq i8* %115, null, !dbg !4427
  br i1 %116, label %117, label %129, !dbg !4428

; <label>:117:                                    ; preds = %109
  %118 = load i32, i32* %8, align 8, !dbg !4441, !tbaa !927
  %119 = and i32 %118, 2048, !dbg !4443
  %120 = icmp eq i32 %119, 0, !dbg !4443
  br i1 %120, label %124, label %121, !dbg !4444

; <label>:121:                                    ; preds = %117
  %122 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 31), align 8, !dbg !4445, !tbaa !2654
  %123 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %113, i64 78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* %122) #8, !dbg !4447
  br label %127, !dbg !4448

; <label>:124:                                    ; preds = %117
  %125 = load i32, i32* %93, align 8, !dbg !4449, !tbaa !596
  %126 = call i32 @anetFormatPeer(i32 %125, i8* nonnull %113, i64 78) #8, !dbg !4451
  br label %127

; <label>:127:                                    ; preds = %124, %121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4452
  %128 = call i8* @sdsnew(i8* nonnull %113) #8, !dbg !4453
  store i8* %128, i8** %114, align 8, !dbg !4454, !tbaa !717
  br label %129, !dbg !4455

; <label>:129:                                    ; preds = %109, %127
  %130 = phi i8* [ %128, %127 ], [ %115, %109 ], !dbg !4456
  call void @llvm.lifetime.end.p0i8(i64 78, i8* nonnull %113) #5, !dbg !4457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4458
  %131 = load i32, i32* %93, align 8, !dbg !4459, !tbaa !596
  %132 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 3, !dbg !4460
  %133 = load %struct.redisObject*, %struct.redisObject** %132, align 8, !dbg !4460, !tbaa !599
  %134 = icmp eq %struct.redisObject* %133, null, !dbg !4461
  br i1 %134, label %138, label %135, !dbg !4461

; <label>:135:                                    ; preds = %129
  %136 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %133, i64 0, i32 2, !dbg !4462
  %137 = load i8*, i8** %136, align 8, !dbg !4462, !tbaa !376
  br label %138, !dbg !4461

; <label>:138:                                    ; preds = %129, %135
  %139 = phi i8* [ %137, %135 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.49, i64 0, i64 0), %129 ], !dbg !4461
  %140 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !4463, !tbaa !639
  %141 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 18, !dbg !4464
  %142 = load i64, i64* %141, align 8, !dbg !4464, !tbaa !645
  %143 = sub nsw i64 %140, %142, !dbg !4465
  %144 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 19, !dbg !4466
  %145 = load i64, i64* %144, align 8, !dbg !4466, !tbaa !642
  %146 = sub nsw i64 %140, %145, !dbg !4467
  %147 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 2, !dbg !4468
  %148 = load %struct.redisDb*, %struct.redisDb** %147, align 8, !dbg !4468, !tbaa !4469
  %149 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %148, i64 0, i32 5, !dbg !4470
  %150 = load i32, i32* %149, align 8, !dbg !4470, !tbaa !4471
  %151 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 43, !dbg !4473
  %152 = load %struct.dict*, %struct.dict** %151, align 8, !dbg !4473, !tbaa !710
  %153 = getelementptr inbounds %struct.dict, %struct.dict* %152, i64 0, i32 2, i64 0, i32 3, !dbg !4473
  %154 = load i64, i64* %153, align 8, !dbg !4473, !tbaa !4474
  %155 = getelementptr inbounds %struct.dict, %struct.dict* %152, i64 0, i32 2, i64 1, i32 3, !dbg !4473
  %156 = load i64, i64* %155, align 8, !dbg !4473, !tbaa !4474
  %157 = add i64 %156, %154, !dbg !4473
  %158 = trunc i64 %157 to i32, !dbg !4476
  %159 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 44, !dbg !4477
  %160 = load %struct.list*, %struct.list** %159, align 8, !dbg !4477, !tbaa !714
  %161 = getelementptr inbounds %struct.list, %struct.list* %160, i64 0, i32 5, !dbg !4477
  %162 = load i64, i64* %161, align 8, !dbg !4477, !tbaa !1078
  %163 = trunc i64 %162 to i32, !dbg !4478
  %164 = load i32, i32* %8, align 8, !dbg !4479, !tbaa !927
  %165 = and i32 %164, 8, !dbg !4480
  %166 = icmp eq i32 %165, 0, !dbg !4480
  br i1 %166, label %170, label %167, !dbg !4481

; <label>:167:                                    ; preds = %138
  %168 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 38, i32 1, !dbg !4482
  %169 = load i32, i32* %168, align 8, !dbg !4482, !tbaa !4483
  br label %170, !dbg !4481

; <label>:170:                                    ; preds = %138, %167
  %171 = phi i32 [ %169, %167 ], [ -1, %138 ], !dbg !4481
  %172 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 4, !dbg !4484
  %173 = load i8*, i8** %172, align 8, !dbg !4484, !tbaa !609
  %174 = getelementptr inbounds i8, i8* %173, i64 -1, !dbg !4487
  %175 = load i8, i8* %174, align 1, !dbg !4487, !tbaa !657
  %176 = trunc i8 %175 to i3, !dbg !4489
  switch i3 %176, label %216 [
    i3 0, label %177
    i3 1, label %180
    i3 2, label %188
    i3 3, label %198
    i3 -4, label %208
  ], !dbg !4489

; <label>:177:                                    ; preds = %170
  %178 = lshr i8 %175, 3, !dbg !4490
  %179 = zext i8 %178 to i64, !dbg !4490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4491
  br label %217, !dbg !4508

; <label>:180:                                    ; preds = %170
  %181 = getelementptr inbounds i8, i8* %173, i64 -3, !dbg !4509
  %182 = load i8, i8* %181, align 1, !dbg !4510, !tbaa !657
  %183 = zext i8 %182 to i64, !dbg !4509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4491
  %184 = getelementptr inbounds i8, i8* %173, i64 -2, !dbg !4512
  %185 = load i8, i8* %184, align 1, !dbg !4512, !tbaa !657
  %186 = zext i8 %185 to i64, !dbg !4513
  %187 = sub nsw i64 %186, %183, !dbg !4514
  br label %217

; <label>:188:                                    ; preds = %170
  %189 = getelementptr inbounds i8, i8* %173, i64 -5, !dbg !4515
  %190 = bitcast i8* %189 to i16*, !dbg !4516
  %191 = load i16, i16* %190, align 1, !dbg !4516, !tbaa !858
  %192 = zext i16 %191 to i64, !dbg !4515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4491
  %193 = getelementptr inbounds i8, i8* %173, i64 -3, !dbg !4518
  %194 = bitcast i8* %193 to i16*, !dbg !4518
  %195 = load i16, i16* %194, align 1, !dbg !4518, !tbaa !858
  %196 = zext i16 %195 to i64, !dbg !4519
  %197 = sub nsw i64 %196, %192, !dbg !4520
  br label %217

; <label>:198:                                    ; preds = %170
  %199 = getelementptr inbounds i8, i8* %173, i64 -9, !dbg !4521
  %200 = bitcast i8* %199 to i32*, !dbg !4522
  %201 = load i32, i32* %200, align 1, !dbg !4522, !tbaa !549
  %202 = zext i32 %201 to i64, !dbg !4521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4491
  %203 = getelementptr inbounds i8, i8* %173, i64 -5, !dbg !4524
  %204 = bitcast i8* %203 to i32*, !dbg !4524
  %205 = load i32, i32* %204, align 1, !dbg !4524, !tbaa !549
  %206 = sub i32 %205, %201, !dbg !4525
  %207 = zext i32 %206 to i64, !dbg !4526
  br label %217

; <label>:208:                                    ; preds = %170
  %209 = getelementptr inbounds i8, i8* %173, i64 -17, !dbg !4527
  %210 = bitcast i8* %209 to i64*, !dbg !4528
  %211 = load i64, i64* %210, align 1, !dbg !4528, !tbaa !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4491
  %212 = getelementptr inbounds i8, i8* %173, i64 -9, !dbg !4530
  %213 = bitcast i8* %212 to i64*, !dbg !4530
  %214 = load i64, i64* %213, align 1, !dbg !4530, !tbaa !410
  %215 = sub i64 %214, %211, !dbg !4531
  br label %217

; <label>:216:                                    ; preds = %170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4491
  br label %217, !dbg !4508

; <label>:217:                                    ; preds = %216, %177, %180, %188, %198, %208
  %218 = phi i64 [ %211, %208 ], [ %202, %198 ], [ %192, %188 ], [ %183, %180 ], [ 0, %216 ], [ %179, %177 ]
  %219 = phi i64 [ %215, %208 ], [ %207, %198 ], [ %197, %188 ], [ %187, %180 ], [ 0, %216 ], [ 0, %177 ], !dbg !4532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4534
  %220 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 47, !dbg !4535
  %221 = load i32, i32* %220, align 8, !dbg !4535, !tbaa !602
  %222 = sext i32 %221 to i64, !dbg !4536
  %223 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 15, !dbg !4537
  %224 = load %struct.list*, %struct.list** %223, align 8, !dbg !4537, !tbaa !664
  %225 = getelementptr inbounds %struct.list, %struct.list* %224, i64 0, i32 5, !dbg !4537
  %226 = load i64, i64* %225, align 8, !dbg !4537, !tbaa !1078
  %227 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 16, !dbg !4541
  %228 = load i64, i64* %227, align 8, !dbg !4541, !tbaa !667
  %229 = mul i64 %226, 40, !dbg !4542
  %230 = add i64 %229, %228, !dbg !4543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4544
  %231 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 11, !dbg !4545
  %232 = load %struct.redisCommand*, %struct.redisCommand** %231, align 8, !dbg !4545, !tbaa !1683
  %233 = icmp eq %struct.redisCommand* %232, null, !dbg !4546
  br i1 %233, label %237, label %234, !dbg !4546

; <label>:234:                                    ; preds = %217
  %235 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %232, i64 0, i32 0, !dbg !4547
  %236 = load i8*, i8** %235, align 8, !dbg !4547, !tbaa !1686
  br label %237, !dbg !4546

; <label>:237:                                    ; preds = %217, %234
  %238 = phi i8* [ %236, %234 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), %217 ], !dbg !4546
  %239 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.48, i64 0, i64 0), i64 %112, i8* %130, i32 %131, i8* %139, i64 %143, i64 %146, i8* nonnull %6, i32 %150, i32 %158, i32 %163, i32 %171, i64 %218, i64 %219, i64 %222, i64 %226, i64 %230, i8* nonnull %7, i8* %238) #8, !dbg !4548
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %7) #5, !dbg !4549
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #5, !dbg !4549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4550
  ret i8* %239, !dbg !4550
}

; Function Attrs: noredzone
declare dso_local i8* @sdscatrepr(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @getClientsMaxBuffers(i64* nocapture, i64* nocapture) local_unnamed_addr #0 !dbg !4551 {
  %3 = alloca %struct.listIter, align 8
  %4 = bitcast %struct.listIter* %3 to i8*, !dbg !4565
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #5, !dbg !4565
  %5 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !4568, !tbaa !441
  call void @listRewind(%struct.list* %5, %struct.listIter* nonnull %3) #8, !dbg !4570
  %6 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !4571
  %7 = icmp eq %struct.listNode* %6, null, !dbg !4573
  br i1 %7, label %78, label %8, !dbg !4574

; <label>:8:                                      ; preds = %2, %74
  %9 = phi %struct.listNode* [ %76, %74 ], [ %6, %2 ]
  %10 = phi i64 [ %75, %74 ], [ 0, %2 ]
  %11 = phi i64 [ %20, %74 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.listNode, %struct.listNode* %9, i64 0, i32 2, !dbg !4575
  %13 = bitcast i8** %12 to %struct.client**, !dbg !4575
  %14 = load %struct.client*, %struct.client** %13, align 8, !dbg !4575, !tbaa !1161
  %15 = getelementptr inbounds %struct.client, %struct.client* %14, i64 0, i32 15, !dbg !4578
  %16 = load %struct.list*, %struct.list** %15, align 8, !dbg !4578, !tbaa !664
  %17 = getelementptr inbounds %struct.list, %struct.list* %16, i64 0, i32 5, !dbg !4578
  %18 = load i64, i64* %17, align 8, !dbg !4578, !tbaa !1078
  %19 = icmp ugt i64 %18, %11, !dbg !4580
  %20 = select i1 %19, i64 %18, i64 %11, !dbg !4581
  %21 = getelementptr inbounds %struct.client, %struct.client* %14, i64 0, i32 4, !dbg !4582
  %22 = load i8*, i8** %21, align 8, !dbg !4582, !tbaa !609
  %23 = getelementptr inbounds i8, i8* %22, i64 -1, !dbg !4586
  %24 = load i8, i8* %23, align 1, !dbg !4586, !tbaa !657
  %25 = trunc i8 %24 to i3, !dbg !4588
  switch i3 %25, label %72 [
    i3 0, label %26
    i3 1, label %29
    i3 2, label %33
    i3 3, label %38
    i3 -4, label %43
  ], !dbg !4588

; <label>:26:                                     ; preds = %8
  %27 = lshr i8 %24, 3, !dbg !4589
  %28 = zext i8 %27 to i64, !dbg !4589
  br label %47, !dbg !4590

; <label>:29:                                     ; preds = %8
  %30 = getelementptr inbounds i8, i8* %22, i64 -3, !dbg !4591
  %31 = load i8, i8* %30, align 1, !dbg !4592, !tbaa !657
  %32 = zext i8 %31 to i64, !dbg !4591
  br label %47, !dbg !4593

; <label>:33:                                     ; preds = %8
  %34 = getelementptr inbounds i8, i8* %22, i64 -5, !dbg !4594
  %35 = bitcast i8* %34 to i16*, !dbg !4595
  %36 = load i16, i16* %35, align 1, !dbg !4595, !tbaa !858
  %37 = zext i16 %36 to i64, !dbg !4594
  br label %47, !dbg !4596

; <label>:38:                                     ; preds = %8
  %39 = getelementptr inbounds i8, i8* %22, i64 -9, !dbg !4597
  %40 = bitcast i8* %39 to i32*, !dbg !4598
  %41 = load i32, i32* %40, align 1, !dbg !4598, !tbaa !549
  %42 = zext i32 %41 to i64, !dbg !4597
  br label %47, !dbg !4599

; <label>:43:                                     ; preds = %8
  %44 = getelementptr inbounds i8, i8* %22, i64 -17, !dbg !4600
  %45 = bitcast i8* %44 to i64*, !dbg !4601
  %46 = load i64, i64* %45, align 1, !dbg !4601, !tbaa !410
  br label %47, !dbg !4602

; <label>:47:                                     ; preds = %26, %29, %33, %38, %43
  %48 = phi i64 [ %46, %43 ], [ %42, %38 ], [ %37, %33 ], [ %32, %29 ], [ %28, %26 ], !dbg !4603
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4604
  %49 = icmp ugt i64 %48, %10, !dbg !4605
  br i1 %49, label %50, label %74, !dbg !4606

; <label>:50:                                     ; preds = %47
  switch i3 %25, label %72 [
    i3 0, label %51
    i3 1, label %54
    i3 2, label %58
    i3 3, label %63
    i3 -4, label %68
  ], !dbg !4610

; <label>:51:                                     ; preds = %50
  %52 = lshr i8 %24, 3, !dbg !4611
  %53 = zext i8 %52 to i64, !dbg !4611
  br label %72, !dbg !4612

; <label>:54:                                     ; preds = %50
  %55 = getelementptr inbounds i8, i8* %22, i64 -3, !dbg !4613
  %56 = load i8, i8* %55, align 1, !dbg !4614, !tbaa !657
  %57 = zext i8 %56 to i64, !dbg !4613
  br label %72, !dbg !4615

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %22, i64 -5, !dbg !4616
  %60 = bitcast i8* %59 to i16*, !dbg !4617
  %61 = load i16, i16* %60, align 1, !dbg !4617, !tbaa !858
  %62 = zext i16 %61 to i64, !dbg !4616
  br label %72, !dbg !4618

; <label>:63:                                     ; preds = %50
  %64 = getelementptr inbounds i8, i8* %22, i64 -9, !dbg !4619
  %65 = bitcast i8* %64 to i32*, !dbg !4620
  %66 = load i32, i32* %65, align 1, !dbg !4620, !tbaa !549
  %67 = zext i32 %66 to i64, !dbg !4619
  br label %72, !dbg !4621

; <label>:68:                                     ; preds = %50
  %69 = getelementptr inbounds i8, i8* %22, i64 -17, !dbg !4622
  %70 = bitcast i8* %69 to i64*, !dbg !4623
  %71 = load i64, i64* %70, align 1, !dbg !4623, !tbaa !410
  br label %72, !dbg !4624

; <label>:72:                                     ; preds = %68, %63, %58, %54, %51, %50, %8
  %73 = phi i64 [ %10, %8 ], [ %71, %68 ], [ %67, %63 ], [ %62, %58 ], [ %57, %54 ], [ %53, %51 ], [ 0, %50 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4604
  br label %74, !dbg !4571

; <label>:74:                                     ; preds = %72, %47
  %75 = phi i64 [ %10, %47 ], [ %73, %72 ], !dbg !4625
  %76 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !4571
  %77 = icmp eq %struct.listNode* %76, null, !dbg !4573
  br i1 %77, label %78, label %8, !dbg !4574, !llvm.loop !4626

; <label>:78:                                     ; preds = %74, %2
  %79 = phi i64 [ 0, %2 ], [ %20, %74 ], !dbg !4628
  %80 = phi i64 [ 0, %2 ], [ %75, %74 ], !dbg !4629
  store i64 %79, i64* %0, align 8, !dbg !4630, !tbaa !410
  store i64 %80, i64* %1, align 8, !dbg !4631, !tbaa !410
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #5, !dbg !4632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4632
  ret void, !dbg !4632
}

; Function Attrs: noredzone nounwind
define dso_local void @genClientPeerId(%struct.client* nocapture readonly, i8*, i64) local_unnamed_addr #0 !dbg !4430 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4636
  %5 = load i32, i32* %4, align 8, !dbg !4636, !tbaa !927
  %6 = and i32 %5, 2048, !dbg !4637
  %7 = icmp eq i32 %6, 0, !dbg !4637
  br i1 %7, label %11, label %8, !dbg !4638

; <label>:8:                                      ; preds = %3
  %9 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 31), align 8, !dbg !4639, !tbaa !2654
  %10 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1, i64 %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* %9) #8, !dbg !4640
  br label %15, !dbg !4641

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !4642
  %13 = load i32, i32* %12, align 8, !dbg !4642, !tbaa !596
  %14 = tail call i32 @anetFormatPeer(i32 %13, i8* %1, i64 %2) #8, !dbg !4643
  br label %15

; <label>:15:                                     ; preds = %11, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4644
  ret void, !dbg !4644
}

; Function Attrs: noredzone
declare dso_local i32 @anetFormatPeer(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @getClientPeerId(%struct.client* nocapture) local_unnamed_addr #0 !dbg !4310 {
  %2 = alloca [78 x i8], align 16
  %3 = getelementptr inbounds [78 x i8], [78 x i8]* %2, i64 0, i64 0, !dbg !4646
  call void @llvm.lifetime.start.p0i8(i64 78, i8* nonnull %3) #5, !dbg !4646
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 45, !dbg !4648
  %5 = load i8*, i8** %4, align 8, !dbg !4648, !tbaa !717
  %6 = icmp eq i8* %5, null, !dbg !4649
  br i1 %6, label %7, label %21, !dbg !4650

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4655
  %9 = load i32, i32* %8, align 8, !dbg !4655, !tbaa !927
  %10 = and i32 %9, 2048, !dbg !4656
  %11 = icmp eq i32 %10, 0, !dbg !4656
  br i1 %11, label %15, label %12, !dbg !4657

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 31), align 8, !dbg !4658, !tbaa !2654
  %14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %3, i64 78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* %13) #8, !dbg !4659
  br label %19, !dbg !4660

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !4661
  %17 = load i32, i32* %16, align 8, !dbg !4661, !tbaa !596
  %18 = call i32 @anetFormatPeer(i32 %17, i8* nonnull %3, i64 78) #8, !dbg !4662
  br label %19

; <label>:19:                                     ; preds = %12, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4663
  %20 = call i8* @sdsnew(i8* nonnull %3) #8, !dbg !4664
  store i8* %20, i8** %4, align 8, !dbg !4665, !tbaa !717
  br label %21, !dbg !4666

; <label>:21:                                     ; preds = %19, %1
  %22 = phi i8* [ %20, %19 ], [ %5, %1 ], !dbg !4667
  call void @llvm.lifetime.end.p0i8(i64 78, i8* nonnull %3) #5, !dbg !4668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4669
  ret i8* %22, !dbg !4669
}

; Function Attrs: noredzone
declare dso_local i32 @aeGetFileEvents(%struct.aeEventLoop*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatfmt(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @getClientOutputBufferMemoryUsage(%struct.client* nocapture readonly) local_unnamed_addr #0 !dbg !1236 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !4672
  %3 = load i64, i64* %2, align 8, !dbg !4672, !tbaa !667
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !4673
  %5 = load %struct.list*, %struct.list** %4, align 8, !dbg !4673, !tbaa !664
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 5, !dbg !4673
  %7 = load i64, i64* %6, align 8, !dbg !4673, !tbaa !1078
  %8 = mul i64 %7, 40, !dbg !4674
  %9 = add i64 %8, %3, !dbg !4675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4676
  ret i64 %9, !dbg !4676
}

; Function Attrs: noredzone nounwind
define dso_local i8* @getAllClientsInfoString(i32) local_unnamed_addr #0 !dbg !4677 {
  %2 = alloca %struct.listIter, align 8
  %3 = bitcast %struct.listIter* %2 to i8*, !dbg !4687
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #5, !dbg !4687
  %4 = load i8*, i8** @SDS_NOINIT, align 8, !dbg !4688, !tbaa !476
  %5 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !4689, !tbaa !441
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 5, !dbg !4689
  %7 = load i64, i64* %6, align 8, !dbg !4689, !tbaa !1078
  %8 = mul i64 %7, 200, !dbg !4690
  %9 = tail call i8* @sdsnewlen(i8* %4, i64 %8) #8, !dbg !4691
  tail call void @sdsclear(i8* %9) #8, !dbg !4693
  %10 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !4694, !tbaa !441
  call void @listRewind(%struct.list* %10, %struct.listIter* nonnull %2) #8, !dbg !4696
  %11 = icmp eq i32 %0, -1
  br label %12, !dbg !4697

; <label>:12:                                     ; preds = %35, %1
  %13 = phi i8* [ %37, %35 ], [ %9, %1 ]
  br label %14, !dbg !4698

; <label>:14:                                     ; preds = %12, %32
  %15 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !4698
  %16 = icmp eq %struct.listNode* %15, null, !dbg !4700
  br i1 %16, label %38, label %17, !dbg !4697

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.listNode, %struct.listNode* %15, i64 0, i32 2, !dbg !4701
  %19 = bitcast i8** %18 to %struct.client**, !dbg !4701
  %20 = load %struct.client*, %struct.client** %19, align 8, !dbg !4701, !tbaa !1161
  br i1 %11, label %35, label %21, !dbg !4704

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 21, !dbg !4708
  %23 = load i32, i32* %22, align 8, !dbg !4708, !tbaa !927
  %24 = and i32 %23, 2, !dbg !4709
  %25 = icmp eq i32 %24, 0, !dbg !4709
  br i1 %25, label %26, label %32, !dbg !4710

; <label>:26:                                     ; preds = %21
  %27 = and i32 %23, 5, !dbg !4711
  %28 = icmp eq i32 %27, 1, !dbg !4711
  br i1 %28, label %32, label %29, !dbg !4711

; <label>:29:                                     ; preds = %26
  %30 = lshr i32 %23, 17, !dbg !4712
  %31 = and i32 %30, 2, !dbg !4712
  br label %32, !dbg !4712

; <label>:32:                                     ; preds = %21, %26, %29
  %33 = phi i32 [ 3, %21 ], [ 1, %26 ], [ %31, %29 ], !dbg !4713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4714
  %34 = icmp eq i32 %33, %0, !dbg !4715
  br i1 %34, label %35, label %14, !dbg !4716, !llvm.loop !4717

; <label>:35:                                     ; preds = %32, %17
  %36 = call i8* @catClientInfoString(i8* %13, %struct.client* %20) #10, !dbg !4719
  %37 = call i8* @sdscatlen(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 1) #8, !dbg !4720
  br label %12, !dbg !4697, !llvm.loop !4717

; <label>:38:                                     ; preds = %14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #5, !dbg !4721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4722
  ret i8* %13, !dbg !4722
}

; Function Attrs: noredzone nounwind
define dso_local i32 @getClientType(%struct.client* nocapture readonly) local_unnamed_addr #0 !dbg !1250 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4724
  %3 = load i32, i32* %2, align 8, !dbg !4724, !tbaa !927
  %4 = and i32 %3, 2, !dbg !4725
  %5 = icmp eq i32 %4, 0, !dbg !4725
  br i1 %5, label %6, label %12, !dbg !4726

; <label>:6:                                      ; preds = %1
  %7 = and i32 %3, 5, !dbg !4727
  %8 = icmp eq i32 %7, 1, !dbg !4727
  br i1 %8, label %12, label %9, !dbg !4727

; <label>:9:                                      ; preds = %6
  %10 = lshr i32 %3, 17, !dbg !4728
  %11 = and i32 %10, 2, !dbg !4728
  br label %12, !dbg !4728

; <label>:12:                                     ; preds = %9, %6, %1
  %13 = phi i32 [ 3, %1 ], [ 1, %6 ], [ %11, %9 ], !dbg !4729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4730
  ret i32 %13, !dbg !4730
}

; Function Attrs: noredzone nounwind
define dso_local void @clientCommand(%struct.client*) local_unnamed_addr #0 !dbg !4731 {
  %2 = alloca i64, align 8
  %3 = alloca [78 x i8], align 16
  %4 = alloca %struct.listIter, align 8
  %5 = alloca [14 x i8*], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = bitcast %struct.listIter* %4 to i8*, !dbg !4786
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #5, !dbg !4786
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4787
  %11 = load i32, i32* %10, align 8, !dbg !4787, !tbaa !622
  %12 = icmp eq i32 %11, 2, !dbg !4788
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %14 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4789, !tbaa !625
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !4789, !tbaa !476
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %16, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8, !dbg !4789, !tbaa !376
  br i1 %12, label %19, label %25, !dbg !4790

; <label>:19:                                     ; preds = %1
  %20 = tail call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #11, !dbg !4791
  %21 = icmp eq i32 %20, 0, !dbg !4791
  br i1 %21, label %22, label %25, !dbg !4792

; <label>:22:                                     ; preds = %19
  %23 = bitcast [14 x i8*]* %5 to i8*, !dbg !4793
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %23) #5, !dbg !4793
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %23, i8* align 16 bitcast ([14 x i8*]* @clientCommand.help to i8*), i64 112, i1 false), !dbg !4794
  %24 = getelementptr inbounds [14 x i8*], [14 x i8*]* %5, i64 0, i64 0, !dbg !4795
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %24) #10, !dbg !4796
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %23) #5, !dbg !4797
  br label %498, !dbg !4798

; <label>:25:                                     ; preds = %1, %19
  %26 = tail call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0)) #11, !dbg !4799
  %27 = icmp ne i32 %26, 0, !dbg !4799
  %28 = xor i1 %12, true, !dbg !4800
  %29 = or i1 %27, %28, !dbg !4800
  br i1 %29, label %33, label %30, !dbg !4800

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 0, !dbg !4801
  %32 = load i64, i64* %31, align 8, !dbg !4801, !tbaa !461
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %32) #10, !dbg !4803
  br label %498, !dbg !4804

; <label>:33:                                     ; preds = %25
  %34 = tail call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i64 0, i64 0)) #11, !dbg !4805
  %35 = icmp eq i32 %34, 0, !dbg !4805
  br i1 %35, label %36, label %99, !dbg !4806

; <label>:36:                                     ; preds = %33
  %37 = icmp eq i32 %11, 4, !dbg !4808
  br i1 %37, label %38, label %67, !dbg !4810

; <label>:38:                                     ; preds = %36
  %39 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 2, !dbg !4811
  %40 = load %struct.redisObject*, %struct.redisObject** %39, align 8, !dbg !4811, !tbaa !476
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %40, i64 0, i32 2, !dbg !4812
  %42 = load i8*, i8** %41, align 8, !dbg !4812, !tbaa !376
  %43 = tail call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0)) #11, !dbg !4813
  %44 = icmp eq i32 %43, 0, !dbg !4813
  br i1 %44, label %45, label %67, !dbg !4814

; <label>:45:                                     ; preds = %38
  %46 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 3, !dbg !4815
  %47 = load %struct.redisObject*, %struct.redisObject** %46, align 8, !dbg !4815, !tbaa !476
  %48 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %47, i64 0, i32 2, !dbg !4817
  %49 = load i8*, i8** %48, align 8, !dbg !4817, !tbaa !376
  %50 = tail call i32 @strcasecmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i64 0, i64 0)) #11, !dbg !4825
  %51 = icmp eq i32 %50, 0, !dbg !4825
  br i1 %51, label %64, label %52, !dbg !4827

; <label>:52:                                     ; preds = %45
  %53 = tail call i32 @strcasecmp(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0)) #11, !dbg !4828
  %54 = icmp eq i32 %53, 0, !dbg !4828
  br i1 %54, label %64, label %55, !dbg !4830

; <label>:55:                                     ; preds = %52
  %56 = tail call i32 @strcasecmp(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !4831
  %57 = icmp eq i32 %56, 0, !dbg !4831
  br i1 %57, label %64, label %58, !dbg !4833

; <label>:58:                                     ; preds = %55
  %59 = tail call i32 @strcasecmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i64 0, i64 0)) #11, !dbg !4834
  %60 = icmp eq i32 %59, 0, !dbg !4834
  br i1 %60, label %64, label %61, !dbg !4836

; <label>:61:                                     ; preds = %58
  %62 = tail call i32 @strcasecmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !4837
  %63 = icmp eq i32 %62, 0, !dbg !4837
  br i1 %63, label %64, label %66

; <label>:64:                                     ; preds = %45, %52, %55, %58, %61
  %65 = phi i32 [ 2, %58 ], [ 1, %55 ], [ 1, %52 ], [ 0, %45 ], [ 3, %61 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4839
  br label %70, !dbg !4840

; <label>:66:                                     ; preds = %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4839
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i64 0, i64 0), i8* %49) #10, !dbg !4841
  br label %498

; <label>:67:                                     ; preds = %38, %36
  br i1 %12, label %70, label %68, !dbg !4844

; <label>:68:                                     ; preds = %67
  %69 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4845, !tbaa !4848
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %69) #10, !dbg !4849
  br label %498

; <label>:70:                                     ; preds = %64, %67
  %71 = phi i32 [ -1, %67 ], [ %65, %64 ], !dbg !4850
  %72 = tail call i8* @getAllClientsInfoString(i32 %71) #10, !dbg !4851
  %73 = getelementptr inbounds i8, i8* %72, i64 -1, !dbg !4855
  %74 = load i8, i8* %73, align 1, !dbg !4855, !tbaa !657
  %75 = trunc i8 %74 to i3, !dbg !4857
  switch i3 %75, label %97 [
    i3 0, label %76
    i3 1, label %79
    i3 2, label %83
    i3 3, label %88
    i3 -4, label %93
  ], !dbg !4857

; <label>:76:                                     ; preds = %70
  %77 = lshr i8 %74, 3, !dbg !4858
  %78 = zext i8 %77 to i64, !dbg !4858
  br label %97, !dbg !4859

; <label>:79:                                     ; preds = %70
  %80 = getelementptr inbounds i8, i8* %72, i64 -3, !dbg !4860
  %81 = load i8, i8* %80, align 1, !dbg !4861, !tbaa !657
  %82 = zext i8 %81 to i64, !dbg !4860
  br label %97, !dbg !4862

; <label>:83:                                     ; preds = %70
  %84 = getelementptr inbounds i8, i8* %72, i64 -5, !dbg !4863
  %85 = bitcast i8* %84 to i16*, !dbg !4864
  %86 = load i16, i16* %85, align 1, !dbg !4864, !tbaa !858
  %87 = zext i16 %86 to i64, !dbg !4863
  br label %97, !dbg !4865

; <label>:88:                                     ; preds = %70
  %89 = getelementptr inbounds i8, i8* %72, i64 -9, !dbg !4866
  %90 = bitcast i8* %89 to i32*, !dbg !4867
  %91 = load i32, i32* %90, align 1, !dbg !4867, !tbaa !549
  %92 = zext i32 %91 to i64, !dbg !4866
  br label %97, !dbg !4868

; <label>:93:                                     ; preds = %70
  %94 = getelementptr inbounds i8, i8* %72, i64 -17, !dbg !4869
  %95 = bitcast i8* %94 to i64*, !dbg !4870
  %96 = load i64, i64* %95, align 1, !dbg !4870, !tbaa !410
  br label %97, !dbg !4871

; <label>:97:                                     ; preds = %70, %76, %79, %83, %88, %93
  %98 = phi i64 [ %96, %93 ], [ %92, %88 ], [ %87, %83 ], [ %82, %79 ], [ %78, %76 ], [ 0, %70 ], !dbg !4872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4873
  tail call void @addReplyBulkCBuffer(%struct.client* nonnull %0, i8* %72, i64 %98) #10, !dbg !4874
  tail call void @sdsfree(i8* %72) #8, !dbg !4875
  br label %498

; <label>:99:                                     ; preds = %33
  %100 = tail call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0)) #11, !dbg !4876
  %101 = icmp eq i32 %100, 0, !dbg !4876
  %102 = icmp eq i32 %11, 3, !dbg !4877
  %103 = and i1 %102, %101, !dbg !4878
  br i1 %103, label %104, label %135, !dbg !4878

; <label>:104:                                    ; preds = %99
  %105 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 2, !dbg !4879
  %106 = load %struct.redisObject*, %struct.redisObject** %105, align 8, !dbg !4879, !tbaa !476
  %107 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %106, i64 0, i32 2, !dbg !4882
  %108 = load i8*, i8** %107, align 8, !dbg !4882, !tbaa !376
  %109 = tail call i32 @strcasecmp(i8* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0)) #11, !dbg !4883
  %110 = icmp eq i32 %109, 0, !dbg !4883
  br i1 %110, label %111, label %116, !dbg !4884

; <label>:111:                                    ; preds = %104
  %112 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4885
  %113 = load i32, i32* %112, align 8, !dbg !4887, !tbaa !927
  %114 = and i32 %113, -20971521, !dbg !4887
  store i32 %114, i32* %112, align 8, !dbg !4887, !tbaa !927
  %115 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !4888, !tbaa !4889
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %115) #10, !dbg !4890
  br label %498, !dbg !4891

; <label>:116:                                    ; preds = %104
  %117 = tail call i32 @strcasecmp(i8* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0)) #11, !dbg !4892
  %118 = icmp eq i32 %117, 0, !dbg !4892
  br i1 %118, label %119, label %123, !dbg !4894

; <label>:119:                                    ; preds = %116
  %120 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4895
  %121 = load i32, i32* %120, align 8, !dbg !4897, !tbaa !927
  %122 = or i32 %121, 4194304, !dbg !4897
  store i32 %122, i32* %120, align 8, !dbg !4897, !tbaa !927
  br label %498, !dbg !4898

; <label>:123:                                    ; preds = %116
  %124 = tail call i32 @strcasecmp(i8* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0)) #11, !dbg !4899
  %125 = icmp eq i32 %124, 0, !dbg !4899
  br i1 %125, label %126, label %133, !dbg !4901

; <label>:126:                                    ; preds = %123
  %127 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4902
  %128 = load i32, i32* %127, align 8, !dbg !4902, !tbaa !927
  %129 = and i32 %128, 4194304, !dbg !4905
  %130 = icmp eq i32 %129, 0, !dbg !4905
  br i1 %130, label %131, label %498, !dbg !4906

; <label>:131:                                    ; preds = %126
  %132 = or i32 %128, 8388608, !dbg !4907
  store i32 %132, i32* %127, align 8, !dbg !4907, !tbaa !927
  br label %498, !dbg !4908

; <label>:133:                                    ; preds = %123
  %134 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4909, !tbaa !4848
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %134) #10, !dbg !4911
  br label %498, !dbg !4912

; <label>:135:                                    ; preds = %99
  %136 = tail call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0)) #11, !dbg !4913
  %137 = icmp eq i32 %136, 0, !dbg !4913
  br i1 %137, label %138, label %336, !dbg !4914

; <label>:138:                                    ; preds = %135
  br i1 %102, label %139, label %144, !dbg !4921

; <label>:139:                                    ; preds = %138
  %140 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 2, !dbg !4922
  %141 = load %struct.redisObject*, %struct.redisObject** %140, align 8, !dbg !4922, !tbaa !476
  %142 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %141, i64 0, i32 2, !dbg !4924
  %143 = load i8*, i8** %142, align 8, !dbg !4924, !tbaa !376
  br label %239, !dbg !4925

; <label>:144:                                    ; preds = %138
  %145 = icmp sgt i32 %11, 3, !dbg !4926
  br i1 %145, label %146, label %237, !dbg !4927

; <label>:146:                                    ; preds = %144
  %147 = bitcast i64* %6 to i8*
  br label %148, !dbg !4929

; <label>:148:                                    ; preds = %146, %229
  %149 = phi i8* [ null, %146 ], [ %233, %229 ]
  %150 = phi i32 [ -1, %146 ], [ %232, %229 ]
  %151 = phi i32 [ 2, %146 ], [ %234, %229 ]
  %152 = phi i32 [ 1, %146 ], [ %231, %229 ]
  %153 = phi i64 [ 0, %146 ], [ %230, %229 ]
  %154 = phi i32 [ %11, %146 ], [ %235, %229 ]
  %155 = or i32 %151, 1, !dbg !4930
  %156 = icmp sgt i32 %154, %155, !dbg !4931
  %157 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4932, !tbaa !625
  %158 = zext i32 %151 to i64, !dbg !4933
  %159 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %157, i64 %158, !dbg !4933
  %160 = load %struct.redisObject*, %struct.redisObject** %159, align 8, !dbg !4933, !tbaa !476
  %161 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %160, i64 0, i32 2, !dbg !4934
  %162 = load i8*, i8** %161, align 8, !dbg !4934, !tbaa !376
  %163 = call i32 @strcasecmp(i8* %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0)) #11, !dbg !4935
  %164 = icmp eq i32 %163, 0, !dbg !4935
  %165 = and i1 %156, %164, !dbg !4936
  br i1 %165, label %166, label %173, !dbg !4936

; <label>:166:                                    ; preds = %148
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %147) #5, !dbg !4937
  %167 = zext i32 %155 to i64, !dbg !4938
  %168 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %157, i64 %167, !dbg !4938
  %169 = load %struct.redisObject*, %struct.redisObject** %168, align 8, !dbg !4938, !tbaa !476
  %170 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %169, i64* nonnull %6, i8* null) #8, !dbg !4941
  %171 = icmp eq i32 %170, 0, !dbg !4942
  %172 = load i64, i64* %6, align 8, !dbg !4943
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %147) #5, !dbg !4944
  br i1 %171, label %229, label %498

; <label>:173:                                    ; preds = %148
  %174 = call i32 @strcasecmp(i8* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0)) #11, !dbg !4945
  %175 = icmp eq i32 %174, 0, !dbg !4945
  %176 = and i1 %156, %175, !dbg !4947
  br i1 %176, label %177, label %200, !dbg !4947

; <label>:177:                                    ; preds = %173
  %178 = zext i32 %155 to i64, !dbg !4948
  %179 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %157, i64 %178, !dbg !4948
  %180 = load %struct.redisObject*, %struct.redisObject** %179, align 8, !dbg !4948, !tbaa !476
  %181 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %180, i64 0, i32 2, !dbg !4950
  %182 = load i8*, i8** %181, align 8, !dbg !4950, !tbaa !376
  %183 = call i32 @strcasecmp(i8* %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i64 0, i64 0)) #11, !dbg !4953
  %184 = icmp eq i32 %183, 0, !dbg !4953
  br i1 %184, label %197, label %185, !dbg !4954

; <label>:185:                                    ; preds = %177
  %186 = call i32 @strcasecmp(i8* %182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0)) #11, !dbg !4955
  %187 = icmp eq i32 %186, 0, !dbg !4955
  br i1 %187, label %197, label %188, !dbg !4956

; <label>:188:                                    ; preds = %185
  %189 = call i32 @strcasecmp(i8* %182, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !4957
  %190 = icmp eq i32 %189, 0, !dbg !4957
  br i1 %190, label %197, label %191, !dbg !4958

; <label>:191:                                    ; preds = %188
  %192 = call i32 @strcasecmp(i8* %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i64 0, i64 0)) #11, !dbg !4959
  %193 = icmp eq i32 %192, 0, !dbg !4959
  br i1 %193, label %197, label %194, !dbg !4960

; <label>:194:                                    ; preds = %191
  %195 = call i32 @strcasecmp(i8* %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !4961
  %196 = icmp eq i32 %195, 0, !dbg !4961
  br i1 %196, label %197, label %199

; <label>:197:                                    ; preds = %177, %185, %188, %191, %194
  %198 = phi i32 [ 2, %191 ], [ 1, %188 ], [ 1, %185 ], [ 0, %177 ], [ 3, %194 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4962
  br label %229, !dbg !4963

; <label>:199:                                    ; preds = %194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4962
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i64 0, i64 0), i8* %182) #10, !dbg !4964
  br label %498, !dbg !4967

; <label>:200:                                    ; preds = %173
  %201 = call i32 @strcasecmp(i8* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0)) #11, !dbg !4968
  %202 = icmp eq i32 %201, 0, !dbg !4968
  %203 = and i1 %156, %202, !dbg !4970
  br i1 %203, label %204, label %210, !dbg !4970

; <label>:204:                                    ; preds = %200
  %205 = zext i32 %155 to i64, !dbg !4971
  %206 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %157, i64 %205, !dbg !4971
  %207 = load %struct.redisObject*, %struct.redisObject** %206, align 8, !dbg !4971, !tbaa !476
  %208 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %207, i64 0, i32 2, !dbg !4973
  %209 = load i8*, i8** %208, align 8, !dbg !4973, !tbaa !376
  br label %229, !dbg !4974

; <label>:210:                                    ; preds = %200
  %211 = call i32 @strcasecmp(i8* %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0)) #11, !dbg !4975
  %212 = icmp eq i32 %211, 0, !dbg !4975
  %213 = and i1 %156, %212, !dbg !4977
  br i1 %213, label %214, label %227, !dbg !4977

; <label>:214:                                    ; preds = %210
  %215 = zext i32 %155 to i64, !dbg !4978
  %216 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %157, i64 %215, !dbg !4978
  %217 = load %struct.redisObject*, %struct.redisObject** %216, align 8, !dbg !4978, !tbaa !476
  %218 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %217, i64 0, i32 2, !dbg !4981
  %219 = load i8*, i8** %218, align 8, !dbg !4981, !tbaa !376
  %220 = call i32 @strcasecmp(i8* %219, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #11, !dbg !4982
  %221 = icmp eq i32 %220, 0, !dbg !4982
  br i1 %221, label %229, label %222, !dbg !4983

; <label>:222:                                    ; preds = %214
  %223 = call i32 @strcasecmp(i8* %219, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0)) #11, !dbg !4984
  %224 = icmp eq i32 %223, 0, !dbg !4984
  br i1 %224, label %229, label %225, !dbg !4986

; <label>:225:                                    ; preds = %222
  %226 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4987, !tbaa !4848
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %226) #10, !dbg !4989
  br label %498, !dbg !4990

; <label>:227:                                    ; preds = %210
  %228 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4991, !tbaa !4848
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %228) #10, !dbg !4993
  br label %498, !dbg !4994

; <label>:229:                                    ; preds = %166, %204, %214, %222, %197
  %230 = phi i64 [ %172, %166 ], [ %153, %204 ], [ %153, %214 ], [ %153, %222 ], [ %153, %197 ], !dbg !4917
  %231 = phi i32 [ %152, %166 ], [ %152, %204 ], [ 1, %214 ], [ 0, %222 ], [ %152, %197 ], !dbg !4995
  %232 = phi i32 [ %150, %166 ], [ %150, %204 ], [ %150, %214 ], [ %150, %222 ], [ %198, %197 ], !dbg !4997
  %233 = phi i8* [ %149, %166 ], [ %209, %204 ], [ %149, %214 ], [ %149, %222 ], [ %149, %197 ], !dbg !4997
  %234 = add nuw nsw i32 %151, 2, !dbg !4998
  %235 = load i32, i32* %10, align 8, !dbg !4999, !tbaa !622
  %236 = icmp slt i32 %234, %235, !dbg !5000
  br i1 %236, label %148, label %239, !dbg !4929

; <label>:237:                                    ; preds = %144
  %238 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !5001, !tbaa !4848
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %238) #10, !dbg !5003
  br label %498, !dbg !5004

; <label>:239:                                    ; preds = %229, %139
  %240 = phi i64 [ 0, %139 ], [ %230, %229 ], !dbg !4917
  %241 = phi i32 [ 0, %139 ], [ %231, %229 ], !dbg !4997
  %242 = phi i32 [ -1, %139 ], [ %232, %229 ], !dbg !4916
  %243 = phi i8* [ %143, %139 ], [ %233, %229 ], !dbg !4997
  %244 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !5005, !tbaa !441
  call void @listRewind(%struct.list* %244, %struct.listIter* nonnull %4) #8, !dbg !5007
  %245 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #8, !dbg !5008
  %246 = icmp eq %struct.listNode* %245, null, !dbg !5010
  br i1 %246, label %317, label %247, !dbg !5011

; <label>:247:                                    ; preds = %239
  %248 = icmp eq i8* %243, null
  %249 = icmp eq i32 %242, -1
  %250 = getelementptr inbounds [78 x i8], [78 x i8]* %3, i64 0, i64 0
  %251 = icmp eq i64 %240, 0
  %252 = icmp ne i32 %241, 0
  br label %253, !dbg !5011

; <label>:253:                                    ; preds = %247, %312
  %254 = phi %struct.listNode* [ %245, %247 ], [ %315, %312 ]
  %255 = phi i32 [ 0, %247 ], [ %313, %312 ]
  %256 = phi i32 [ 0, %247 ], [ %314, %312 ]
  br label %257, !dbg !5011

; <label>:257:                                    ; preds = %253, %307
  %258 = phi %struct.listNode* [ %254, %253 ], [ %308, %307 ]
  %259 = getelementptr inbounds %struct.listNode, %struct.listNode* %258, i64 0, i32 2, !dbg !5012
  %260 = bitcast i8** %259 to %struct.client**, !dbg !5012
  %261 = load %struct.client*, %struct.client** %260, align 8, !dbg !5012, !tbaa !1161
  br i1 %248, label %284, label %262, !dbg !5014

; <label>:262:                                    ; preds = %257
  call void @llvm.lifetime.start.p0i8(i64 78, i8* nonnull %250) #5, !dbg !5016
  %263 = getelementptr inbounds %struct.client, %struct.client* %261, i64 0, i32 45, !dbg !5017
  %264 = load i8*, i8** %263, align 8, !dbg !5017, !tbaa !717
  %265 = icmp eq i8* %264, null, !dbg !5018
  br i1 %265, label %266, label %280, !dbg !5019

; <label>:266:                                    ; preds = %262
  %267 = getelementptr inbounds %struct.client, %struct.client* %261, i64 0, i32 21, !dbg !5024
  %268 = load i32, i32* %267, align 8, !dbg !5024, !tbaa !927
  %269 = and i32 %268, 2048, !dbg !5025
  %270 = icmp eq i32 %269, 0, !dbg !5025
  br i1 %270, label %274, label %271, !dbg !5026

; <label>:271:                                    ; preds = %266
  %272 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 31), align 8, !dbg !5027, !tbaa !2654
  %273 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %250, i64 78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* %272) #8, !dbg !5028
  br label %278, !dbg !5029

; <label>:274:                                    ; preds = %266
  %275 = getelementptr inbounds %struct.client, %struct.client* %261, i64 0, i32 1, !dbg !5030
  %276 = load i32, i32* %275, align 8, !dbg !5030, !tbaa !596
  %277 = call i32 @anetFormatPeer(i32 %276, i8* nonnull %250, i64 78) #8, !dbg !5031
  br label %278

; <label>:278:                                    ; preds = %274, %271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5032
  %279 = call i8* @sdsnew(i8* nonnull %250) #8, !dbg !5033
  store i8* %279, i8** %263, align 8, !dbg !5034, !tbaa !717
  br label %280, !dbg !5035

; <label>:280:                                    ; preds = %262, %278
  %281 = phi i8* [ %279, %278 ], [ %264, %262 ], !dbg !5036
  call void @llvm.lifetime.end.p0i8(i64 78, i8* nonnull %250) #5, !dbg !5037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5038
  %282 = call i32 @strcmp(i8* %281, i8* nonnull %243) #8, !dbg !5039
  %283 = icmp eq i32 %282, 0, !dbg !5040
  br i1 %283, label %284, label %307, !dbg !5041

; <label>:284:                                    ; preds = %280, %257
  br i1 %249, label %299, label %285, !dbg !5042

; <label>:285:                                    ; preds = %284
  %286 = getelementptr inbounds %struct.client, %struct.client* %261, i64 0, i32 21, !dbg !5046
  %287 = load i32, i32* %286, align 8, !dbg !5046, !tbaa !927
  %288 = and i32 %287, 2, !dbg !5047
  %289 = icmp eq i32 %288, 0, !dbg !5047
  br i1 %289, label %290, label %296, !dbg !5048

; <label>:290:                                    ; preds = %285
  %291 = and i32 %287, 5, !dbg !5049
  %292 = icmp eq i32 %291, 1, !dbg !5049
  br i1 %292, label %296, label %293, !dbg !5049

; <label>:293:                                    ; preds = %290
  %294 = lshr i32 %287, 17, !dbg !5050
  %295 = and i32 %294, 2, !dbg !5050
  br label %296, !dbg !5050

; <label>:296:                                    ; preds = %285, %290, %293
  %297 = phi i32 [ 3, %285 ], [ 1, %290 ], [ %295, %293 ], !dbg !5051
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5052
  %298 = icmp eq i32 %297, %242, !dbg !5053
  br i1 %298, label %299, label %307, !dbg !5054

; <label>:299:                                    ; preds = %296, %284
  br i1 %251, label %304, label %300, !dbg !5055

; <label>:300:                                    ; preds = %299
  %301 = getelementptr inbounds %struct.client, %struct.client* %261, i64 0, i32 0, !dbg !5057
  %302 = load i64, i64* %301, align 8, !dbg !5057, !tbaa !461
  %303 = icmp eq i64 %302, %240, !dbg !5058
  br i1 %303, label %304, label %307, !dbg !5059

; <label>:304:                                    ; preds = %300, %299
  %305 = icmp eq %struct.client* %261, %0, !dbg !5060
  %306 = and i1 %252, %305, !dbg !5062
  br i1 %306, label %307, label %310, !dbg !5062

; <label>:307:                                    ; preds = %304, %300, %296, %280
  %308 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #8, !dbg !5008
  %309 = icmp eq %struct.listNode* %308, null, !dbg !5010
  br i1 %309, label %317, label %257, !dbg !5011, !llvm.loop !5063

; <label>:310:                                    ; preds = %304
  br i1 %305, label %312, label %311, !dbg !5065

; <label>:311:                                    ; preds = %310
  call void @freeClient(%struct.client* %261) #10, !dbg !5066
  br label %312

; <label>:312:                                    ; preds = %310, %311
  %313 = phi i32 [ %255, %311 ], [ 1, %310 ], !dbg !4997
  %314 = add nuw nsw i32 %256, 1, !dbg !5069
  %315 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #8, !dbg !5008
  %316 = icmp eq %struct.listNode* %315, null, !dbg !5010
  br i1 %316, label %317, label %253, !dbg !5011, !llvm.loop !5063

; <label>:317:                                    ; preds = %312, %307, %239
  %318 = phi i32 [ 0, %239 ], [ %256, %307 ], [ %314, %312 ]
  %319 = phi i32 [ 0, %239 ], [ %255, %307 ], [ %313, %312 ]
  %320 = load i32, i32* %10, align 8, !dbg !5070, !tbaa !622
  %321 = icmp eq i32 %320, 3, !dbg !5072
  br i1 %321, label %322, label %328, !dbg !5073

; <label>:322:                                    ; preds = %317
  %323 = icmp eq i32 %318, 0, !dbg !5074
  br i1 %323, label %324, label %326, !dbg !5077

; <label>:324:                                    ; preds = %322
  %325 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i64 0, i64 0)) #8, !dbg !5081
  call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i64 0, i64 0), i64 %325) #8, !dbg !5082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5083
  br label %330, !dbg !5084

; <label>:326:                                    ; preds = %322
  %327 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !5085, !tbaa !4889
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %327) #10, !dbg !5086
  br label %330

; <label>:328:                                    ; preds = %317
  %329 = sext i32 %318 to i64, !dbg !5087
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %329) #10, !dbg !5089
  br label %330

; <label>:330:                                    ; preds = %324, %326, %328
  %331 = icmp eq i32 %319, 0, !dbg !5090
  br i1 %331, label %498, label %332, !dbg !5092

; <label>:332:                                    ; preds = %330
  %333 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !5093
  %334 = load i32, i32* %333, align 8, !dbg !5094, !tbaa !927
  %335 = or i32 %334, 64, !dbg !5094
  store i32 %335, i32* %333, align 8, !dbg !5094, !tbaa !927
  br label %498, !dbg !5095

; <label>:336:                                    ; preds = %135
  %337 = tail call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0)) #11, !dbg !5096
  %338 = icmp eq i32 %337, 0, !dbg !5096
  %339 = add i32 %11, -3, !dbg !5097
  %340 = icmp ult i32 %339, 2, !dbg !5097
  %341 = and i1 %340, %338, !dbg !5098
  br i1 %341, label %342, label %390, !dbg !5098

; <label>:342:                                    ; preds = %336
  %343 = bitcast i64* %7 to i8*, !dbg !5099
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %343) #5, !dbg !5099
  %344 = icmp eq i32 %11, 4, !dbg !5101
  br i1 %344, label %345, label %357, !dbg !5103

; <label>:345:                                    ; preds = %342
  %346 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 3, !dbg !5104
  %347 = load %struct.redisObject*, %struct.redisObject** %346, align 8, !dbg !5104, !tbaa !476
  %348 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %347, i64 0, i32 2, !dbg !5107
  %349 = load i8*, i8** %348, align 8, !dbg !5107, !tbaa !376
  %350 = tail call i32 @strcasecmp(i8* %349, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i64 0, i64 0)) #11, !dbg !5108
  %351 = icmp eq i32 %350, 0, !dbg !5108
  br i1 %351, label %357, label %352, !dbg !5109

; <label>:352:                                    ; preds = %345
  %353 = tail call i32 @strcasecmp(i8* %349, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i64 0, i64 0)) #11, !dbg !5110
  %354 = icmp eq i32 %353, 0, !dbg !5110
  br i1 %354, label %357, label %355, !dbg !5112

; <label>:355:                                    ; preds = %352
  %356 = tail call i64 @strlen(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.83, i64 0, i64 0)) #8, !dbg !5117
  tail call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.83, i64 0, i64 0), i64 %356) #8, !dbg !5118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5119
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %343) #5, !dbg !5120
  br label %498

; <label>:357:                                    ; preds = %352, %345, %342
  %358 = phi i32 [ 0, %342 ], [ 0, %345 ], [ 1, %352 ], !dbg !5121
  %359 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 2, !dbg !5122
  %360 = load %struct.redisObject*, %struct.redisObject** %359, align 8, !dbg !5122, !tbaa !476
  %361 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %360, i64* nonnull %7, i8* null) #8, !dbg !5125
  %362 = icmp eq i32 %361, 0, !dbg !5126
  br i1 %362, label %363, label %497, !dbg !5127

; <label>:363:                                    ; preds = %357
  %364 = load i64, i64* %7, align 8, !dbg !5128, !tbaa !649
  %365 = bitcast i64* %2 to i8*, !dbg !5129
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %365), !dbg !5129
  %366 = call i64 @intrev64(i64 %364) #8, !dbg !5131
  store i64 %366, i64* %2, align 8, !dbg !5132, !tbaa !410
  %367 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 44), align 8, !dbg !5133, !tbaa !464
  %368 = call i8* @raxFind(%struct.rax* %367, i8* nonnull %365, i64 8) #8, !dbg !5134
  %369 = bitcast i8* %368 to %struct.client*, !dbg !5134
  %370 = load %struct.client*, %struct.client** bitcast (i8** @raxNotFound to %struct.client**), align 8, !dbg !5136, !tbaa !476
  %371 = icmp eq %struct.client* %370, %369, !dbg !5137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5138
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %365), !dbg !5138
  %372 = icmp eq i8* %368, null, !dbg !5139
  %373 = or i1 %372, %371, !dbg !5139
  br i1 %373, label %387, label %374, !dbg !5141

; <label>:374:                                    ; preds = %363
  %375 = getelementptr inbounds i8, i8* %368, i64 160, !dbg !5142
  %376 = bitcast i8* %375 to i32*, !dbg !5142
  %377 = load i32, i32* %376, align 8, !dbg !5142, !tbaa !927
  %378 = and i32 %377, 16, !dbg !5143
  %379 = icmp eq i32 %378, 0, !dbg !5143
  br i1 %379, label %387, label %380, !dbg !5144

; <label>:380:                                    ; preds = %374
  %381 = icmp eq i32 %358, 0, !dbg !5145
  br i1 %381, label %384, label %382, !dbg !5148

; <label>:382:                                    ; preds = %380
  %383 = call i64 @strlen(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.84, i64 0, i64 0)) #8, !dbg !5151
  call void @addReplyErrorLength(%struct.client* nonnull %369, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.84, i64 0, i64 0), i64 %383) #8, !dbg !5152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5153
  br label %385, !dbg !5154

; <label>:384:                                    ; preds = %380
  call void @replyToBlockedClientTimedOut(%struct.client* nonnull %369) #8, !dbg !5155
  br label %385

; <label>:385:                                    ; preds = %384, %382
  call void @unblockClient(%struct.client* nonnull %369) #8, !dbg !5156
  %386 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !5157, !tbaa !2128
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %386) #10, !dbg !5158
  br label %389, !dbg !5159

; <label>:387:                                    ; preds = %374, %363
  %388 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !5160, !tbaa !2125
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %388) #10, !dbg !5162
  br label %389

; <label>:389:                                    ; preds = %385, %387
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %343) #5, !dbg !5120
  br label %498

; <label>:390:                                    ; preds = %336
  %391 = tail call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i64 0, i64 0)) #11, !dbg !5163
  %392 = icmp eq i32 %391, 0, !dbg !5163
  %393 = and i1 %102, %392, !dbg !5164
  br i1 %393, label %394, label %463, !dbg !5164

; <label>:394:                                    ; preds = %390
  %395 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 2, !dbg !5165
  %396 = load %struct.redisObject*, %struct.redisObject** %395, align 8, !dbg !5165, !tbaa !476
  %397 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %396, i64 0, i32 2, !dbg !5166
  %398 = load i8*, i8** %397, align 8, !dbg !5166, !tbaa !376
  %399 = getelementptr inbounds i8, i8* %398, i64 -1, !dbg !5169
  %400 = load i8, i8* %399, align 1, !dbg !5169, !tbaa !657
  %401 = trunc i8 %400 to i3, !dbg !5171
  switch i3 %401, label %402 [
    i3 0, label %403
    i3 1, label %406
    i3 2, label %410
    i3 3, label %415
    i3 -4, label %420
  ], !dbg !5171

; <label>:402:                                    ; preds = %394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5172
  br label %433, !dbg !5175

; <label>:403:                                    ; preds = %394
  %404 = lshr i8 %400, 3, !dbg !5176
  %405 = zext i8 %404 to i64, !dbg !5176
  br label %424, !dbg !5177

; <label>:406:                                    ; preds = %394
  %407 = getelementptr inbounds i8, i8* %398, i64 -3, !dbg !5178
  %408 = load i8, i8* %407, align 1, !dbg !5179, !tbaa !657
  %409 = zext i8 %408 to i64, !dbg !5178
  br label %424, !dbg !5180

; <label>:410:                                    ; preds = %394
  %411 = getelementptr inbounds i8, i8* %398, i64 -5, !dbg !5181
  %412 = bitcast i8* %411 to i16*, !dbg !5182
  %413 = load i16, i16* %412, align 1, !dbg !5182, !tbaa !858
  %414 = zext i16 %413 to i64, !dbg !5181
  br label %424, !dbg !5183

; <label>:415:                                    ; preds = %394
  %416 = getelementptr inbounds i8, i8* %398, i64 -9, !dbg !5184
  %417 = bitcast i8* %416 to i32*, !dbg !5185
  %418 = load i32, i32* %417, align 1, !dbg !5185, !tbaa !549
  %419 = zext i32 %418 to i64, !dbg !5184
  br label %424, !dbg !5186

; <label>:420:                                    ; preds = %394
  %421 = getelementptr inbounds i8, i8* %398, i64 -17, !dbg !5187
  %422 = bitcast i8* %421 to i64*, !dbg !5188
  %423 = load i64, i64* %422, align 1, !dbg !5188, !tbaa !410
  br label %424, !dbg !5189

; <label>:424:                                    ; preds = %403, %406, %410, %415, %420
  %425 = phi i64 [ %423, %420 ], [ %419, %415 ], [ %414, %410 ], [ %409, %406 ], [ %405, %403 ], !dbg !5190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5172
  %426 = trunc i64 %425 to i32, !dbg !5191
  %427 = icmp eq i32 %426, 0, !dbg !5192
  br i1 %427, label %433, label %428, !dbg !5175

; <label>:428:                                    ; preds = %424
  %429 = icmp sgt i32 %426, 0, !dbg !5195
  br i1 %429, label %430, label %452, !dbg !5198

; <label>:430:                                    ; preds = %428
  %431 = shl i64 %425, 32, !dbg !5199
  %432 = ashr exact i64 %431, 32, !dbg !5199
  br label %442, !dbg !5199

; <label>:433:                                    ; preds = %402, %424
  %434 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 3, !dbg !5202
  %435 = load %struct.redisObject*, %struct.redisObject** %434, align 8, !dbg !5202, !tbaa !599
  %436 = icmp eq %struct.redisObject* %435, null, !dbg !5205
  br i1 %436, label %438, label %437, !dbg !5206

; <label>:437:                                    ; preds = %433
  tail call void @decrRefCount(%struct.redisObject* nonnull %435) #8, !dbg !5207
  br label %438, !dbg !5207

; <label>:438:                                    ; preds = %433, %437
  store %struct.redisObject* null, %struct.redisObject** %434, align 8, !dbg !5208, !tbaa !599
  %439 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !5209, !tbaa !4889
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %439) #10, !dbg !5210
  br label %498

; <label>:440:                                    ; preds = %442
  %441 = icmp slt i64 %449, %432, !dbg !5195
  br i1 %441, label %442, label %452, !dbg !5198, !llvm.loop !5211

; <label>:442:                                    ; preds = %430, %440
  %443 = phi i64 [ 0, %430 ], [ %449, %440 ]
  %444 = getelementptr inbounds i8, i8* %398, i64 %443, !dbg !5199
  %445 = load i8, i8* %444, align 1, !dbg !5199, !tbaa !657
  %446 = icmp slt i8 %445, 33, !dbg !5213
  %447 = icmp eq i8 %445, 127, !dbg !5214
  %448 = or i1 %446, %447, !dbg !5215
  %449 = add nuw nsw i64 %443, 1, !dbg !5216
  br i1 %448, label %450, label %440, !dbg !5215

; <label>:450:                                    ; preds = %442
  %451 = tail call i64 @strlen(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.86, i64 0, i64 0)) #8, !dbg !5221
  tail call void @addReplyErrorLength(%struct.client* %0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.86, i64 0, i64 0), i64 %451) #8, !dbg !5222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5223
  br label %498

; <label>:452:                                    ; preds = %440, %428
  %453 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 3, !dbg !5224
  %454 = load %struct.redisObject*, %struct.redisObject** %453, align 8, !dbg !5224, !tbaa !599
  %455 = icmp eq %struct.redisObject* %454, null, !dbg !5226
  br i1 %455, label %460, label %456, !dbg !5227

; <label>:456:                                    ; preds = %452
  tail call void @decrRefCount(%struct.redisObject* nonnull %454) #8, !dbg !5228
  %457 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !5229, !tbaa !625
  %458 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %457, i64 2
  %459 = load %struct.redisObject*, %struct.redisObject** %458, align 8, !dbg !5230, !tbaa !476
  br label %460, !dbg !5228

; <label>:460:                                    ; preds = %452, %456
  %461 = phi %struct.redisObject* [ %396, %452 ], [ %459, %456 ], !dbg !5230
  store %struct.redisObject* %461, %struct.redisObject** %453, align 8, !dbg !5231, !tbaa !599
  tail call void @incrRefCount(%struct.redisObject* %461) #8, !dbg !5232
  %462 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !5233, !tbaa !4889
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %462) #10, !dbg !5234
  br label %498

; <label>:463:                                    ; preds = %390
  %464 = tail call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i64 0, i64 0)) #11, !dbg !5235
  %465 = icmp ne i32 %464, 0, !dbg !5235
  %466 = or i1 %465, %28, !dbg !5236
  br i1 %466, label %475, label %467, !dbg !5236

; <label>:467:                                    ; preds = %463
  %468 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 3, !dbg !5237
  %469 = load %struct.redisObject*, %struct.redisObject** %468, align 8, !dbg !5237, !tbaa !599
  %470 = icmp eq %struct.redisObject* %469, null, !dbg !5240
  br i1 %470, label %473, label %471, !dbg !5241

; <label>:471:                                    ; preds = %467
  tail call void @addReplyBulkLen(%struct.client* nonnull %0, %struct.redisObject* nonnull %469) #8, !dbg !5245
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* nonnull %469) #8, !dbg !5246
  %472 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 0), align 8, !dbg !5247, !tbaa !2057
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %472) #8, !dbg !5248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5249
  br label %498, !dbg !5250

; <label>:473:                                    ; preds = %467
  %474 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !5251, !tbaa !2028
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %474) #10, !dbg !5252
  br label %498

; <label>:475:                                    ; preds = %463
  %476 = tail call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0)) #11, !dbg !5253
  %477 = icmp eq i32 %476, 0, !dbg !5253
  %478 = and i1 %102, %477, !dbg !5254
  br i1 %478, label %479, label %496, !dbg !5254

; <label>:479:                                    ; preds = %475
  %480 = bitcast i64* %8 to i8*, !dbg !5255
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %480) #5, !dbg !5255
  %481 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 2, !dbg !5256
  %482 = load %struct.redisObject*, %struct.redisObject** %481, align 8, !dbg !5256, !tbaa !476
  %483 = call i32 @getTimeoutFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %482, i64* nonnull %8, i32 1) #8, !dbg !5259
  %484 = icmp eq i32 %483, 0, !dbg !5260
  br i1 %484, label %485, label %495, !dbg !5261

; <label>:485:                                    ; preds = %479
  %486 = load i64, i64* %8, align 8, !dbg !5262, !tbaa !649
  %487 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !5270, !tbaa !4047
  %488 = icmp eq i32 %487, 0, !dbg !5272
  %489 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 46), align 8, !dbg !5273
  %490 = icmp slt i64 %489, %486, !dbg !5274
  %491 = or i1 %488, %490, !dbg !5275
  br i1 %491, label %492, label %493, !dbg !5275

; <label>:492:                                    ; preds = %485
  store i64 %486, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 46), align 8, !dbg !5276, !tbaa !4053
  br label %493, !dbg !5277

; <label>:493:                                    ; preds = %485, %492
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !5278, !tbaa !4047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5279
  %494 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !5280, !tbaa !4889
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %494) #10, !dbg !5281
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %480) #5, !dbg !5282
  br label %498

; <label>:495:                                    ; preds = %479
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %480) #5, !dbg !5282
  br label %498

; <label>:496:                                    ; preds = %475
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.89, i64 0, i64 0), i8* %18) #10, !dbg !5283
  br label %498

; <label>:497:                                    ; preds = %357
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %343) #5, !dbg !5120
  br label %498

; <label>:498:                                    ; preds = %166, %227, %225, %199, %237, %330, %332, %22, %496, %471, %473, %111, %131, %119, %30, %126, %97, %389, %460, %493, %495, %450, %438, %497, %355, %66, %68, %133
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #5, !dbg !5285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5285
  ret void, !dbg !5285
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @getClientTypeByName(i8* readonly) local_unnamed_addr #0 !dbg !4819 {
  %2 = tail call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i64 0, i64 0)) #11, !dbg !5287
  %3 = icmp eq i32 %2, 0, !dbg !5287
  br i1 %3, label %17, label %4, !dbg !5288

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0)) #11, !dbg !5289
  %6 = icmp eq i32 %5, 0, !dbg !5289
  br i1 %6, label %17, label %7, !dbg !5290

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !5291
  %9 = icmp eq i32 %8, 0, !dbg !5291
  br i1 %9, label %17, label %10, !dbg !5292

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i64 0, i64 0)) #11, !dbg !5293
  %12 = icmp eq i32 %11, 0, !dbg !5293
  br i1 %12, label %17, label %13, !dbg !5294

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !5295
  %15 = icmp eq i32 %14, 0, !dbg !5295
  %16 = select i1 %15, i32 3, i32 -1, !dbg !5296
  br label %17, !dbg !5296

; <label>:17:                                     ; preds = %13, %10, %7, %4, %1
  %18 = phi i32 [ 0, %1 ], [ 1, %4 ], [ 1, %7 ], [ 2, %10 ], [ %16, %13 ], !dbg !5297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5298
  ret i32 %18, !dbg !5298
}

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @replyToBlockedClientTimedOut(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @incrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @getTimeoutFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @pauseClients(i64) local_unnamed_addr #0 !dbg !5264 {
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !5300, !tbaa !4047
  %3 = icmp eq i32 %2, 0, !dbg !5301
  %4 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 46), align 8, !dbg !5302
  %5 = icmp slt i64 %4, %0, !dbg !5303
  %6 = or i1 %3, %5, !dbg !5304
  br i1 %6, label %7, label %8, !dbg !5304

; <label>:7:                                      ; preds = %1
  store i64 %0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 46), align 8, !dbg !5305, !tbaa !4053
  br label %8, !dbg !5306

; <label>:8:                                      ; preds = %1, %7
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !5307, !tbaa !4047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5308
  ret void, !dbg !5308
}

; Function Attrs: noredzone nounwind
define dso_local void @securityWarningCommand(%struct.client*) local_unnamed_addr #0 !dbg !2 {
  %2 = tail call i64 @time(i64* null) #8, !dbg !5310
  %3 = load i64, i64* @securityWarningCommand.logged_time, align 8, !dbg !5312, !tbaa !410
  %4 = sub nsw i64 %2, %3, !dbg !5314
  %5 = tail call i64 @labs(i64 %4) #8, !dbg !5315
  %6 = icmp sgt i64 %5, 60, !dbg !5316
  br i1 %6, label %7, label %8, !dbg !5317

; <label>:7:                                      ; preds = %1
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([234 x i8], [234 x i8]* @.str.90, i64 0, i64 0)) #8, !dbg !5318
  store i64 %2, i64* @securityWarningCommand.logged_time, align 8, !dbg !5320, !tbaa !410
  br label %8, !dbg !5321

; <label>:8:                                      ; preds = %7, %1
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !5324
  %10 = load i32, i32* %9, align 8, !dbg !5324, !tbaa !927
  %11 = and i32 %10, 1280, !dbg !5325
  %12 = icmp eq i32 %11, 0, !dbg !5325
  br i1 %12, label %13, label %18, !dbg !5325

; <label>:13:                                     ; preds = %8
  %14 = or i32 %10, 1024, !dbg !5326
  store i32 %14, i32* %9, align 8, !dbg !5326, !tbaa !927
  %15 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !5327, !tbaa !1308
  %16 = bitcast %struct.client* %0 to i8*, !dbg !5328
  %17 = tail call %struct.list* @listAddNodeTail(%struct.list* %15, i8* %16) #8, !dbg !5329
  br label %18, !dbg !5330

; <label>:18:                                     ; preds = %8, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5331
  ret void, !dbg !5331
}

; Function Attrs: noredzone
declare dso_local i64 @time(i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @labs(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @rewriteClientCommandVector(%struct.client*, i32, ...) local_unnamed_addr #0 !dbg !5332 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !5347
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #5, !dbg !5347
  %5 = sext i32 %1 to i64, !dbg !5349
  %6 = shl nsw i64 %5, 3, !dbg !5350
  %7 = tail call i8* @zmalloc(i64 %6) #8, !dbg !5351
  %8 = bitcast i8* %7 to %struct.redisObject**, !dbg !5351
  call void @llvm.va_start(i8* nonnull %4), !dbg !5353
  %9 = icmp sgt i32 %1, 0, !dbg !5355
  br i1 %9, label %10, label %15, !dbg !5356

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %14 = zext i32 %1 to i64
  br label %21, !dbg !5356

; <label>:15:                                     ; preds = %33, %2
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5357
  %17 = load i32, i32* %16, align 8, !dbg !5357, !tbaa !622
  %18 = icmp sgt i32 %17, 0, !dbg !5360
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !5361
  %20 = load %struct.redisObject**, %struct.redisObject*** %19, align 8, !dbg !5361, !tbaa !625
  br i1 %18, label %40, label %50, !dbg !5362

; <label>:21:                                     ; preds = %33, %10
  %22 = phi i64 [ 0, %10 ], [ %38, %33 ]
  %23 = load i32, i32* %11, align 16, !dbg !5363
  %24 = icmp ult i32 %23, 41, !dbg !5363
  br i1 %24, label %25, label %30, !dbg !5363

; <label>:25:                                     ; preds = %21
  %26 = load i8*, i8** %12, align 16, !dbg !5363
  %27 = sext i32 %23 to i64, !dbg !5363
  %28 = getelementptr i8, i8* %26, i64 %27, !dbg !5363
  %29 = add i32 %23, 8, !dbg !5363
  store i32 %29, i32* %11, align 16, !dbg !5363
  br label %33, !dbg !5363

; <label>:30:                                     ; preds = %21
  %31 = load i8*, i8** %13, align 8, !dbg !5363
  %32 = getelementptr i8, i8* %31, i64 8, !dbg !5363
  store i8* %32, i8** %13, align 8, !dbg !5363
  br label %33, !dbg !5363

; <label>:33:                                     ; preds = %30, %25
  %34 = phi i8* [ %28, %25 ], [ %31, %30 ]
  %35 = bitcast i8* %34 to %struct.redisObject**, !dbg !5363
  %36 = load %struct.redisObject*, %struct.redisObject** %35, align 8, !dbg !5363
  %37 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 %22, !dbg !5365
  store %struct.redisObject* %36, %struct.redisObject** %37, align 8, !dbg !5366, !tbaa !476
  call void @incrRefCount(%struct.redisObject* %36) #8, !dbg !5367
  %38 = add nuw nsw i64 %22, 1, !dbg !5368
  %39 = icmp eq i64 %38, %14, !dbg !5355
  br i1 %39, label %15, label %21, !dbg !5356, !llvm.loop !5369

; <label>:40:                                     ; preds = %15, %40
  %41 = phi i64 [ %45, %40 ], [ 0, %15 ]
  %42 = phi %struct.redisObject** [ %49, %40 ], [ %20, %15 ]
  %43 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %42, i64 %41, !dbg !5371
  %44 = load %struct.redisObject*, %struct.redisObject** %43, align 8, !dbg !5371, !tbaa !476
  call void @decrRefCount(%struct.redisObject* %44) #8, !dbg !5372
  %45 = add nuw nsw i64 %41, 1, !dbg !5373
  %46 = load i32, i32* %16, align 8, !dbg !5357, !tbaa !622
  %47 = sext i32 %46 to i64, !dbg !5360
  %48 = icmp slt i64 %45, %47, !dbg !5360
  %49 = load %struct.redisObject**, %struct.redisObject*** %19, align 8, !dbg !5361, !tbaa !625
  br i1 %48, label %40, label %50, !dbg !5362, !llvm.loop !5374

; <label>:50:                                     ; preds = %40, %15
  %51 = phi %struct.redisObject** [ %20, %15 ], [ %49, %40 ], !dbg !5361
  %52 = bitcast %struct.redisObject** %51 to i8*, !dbg !5376
  call void @zfree(i8* %52) #8, !dbg !5377
  %53 = bitcast %struct.redisObject*** %19 to i8**, !dbg !5378
  store i8* %7, i8** %53, align 8, !dbg !5378, !tbaa !625
  store i32 %1, i32* %16, align 8, !dbg !5379, !tbaa !622
  %54 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !5380, !tbaa !476
  %55 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %54, i64 0, i32 2, !dbg !5381
  %56 = load i8*, i8** %55, align 8, !dbg !5381, !tbaa !376
  %57 = call %struct.redisCommand* @lookupCommandOrOriginal(i8* %56) #8, !dbg !5382
  %58 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !5383
  store %struct.redisCommand* %57, %struct.redisCommand** %58, align 8, !dbg !5384, !tbaa !2766
  %59 = icmp eq %struct.redisCommand* %57, null, !dbg !5385
  br i1 %59, label %60, label %61, !dbg !5385

; <label>:60:                                     ; preds = %50
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1985) #8, !dbg !5385
  call void @_exit(i32 1) #9, !dbg !5385
  unreachable, !dbg !5385

; <label>:61:                                     ; preds = %50
  call void @llvm.va_end(i8* nonnull %4), !dbg !5386
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #5, !dbg !5387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5387
  ret void, !dbg !5387
}

; Function Attrs: noredzone
declare dso_local %struct.redisCommand* @lookupCommandOrOriginal(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replaceClientCommandVector(%struct.client*, i32, %struct.redisObject**) local_unnamed_addr #0 !dbg !5388 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5401
  %5 = load i32, i32* %4, align 8, !dbg !5401, !tbaa !622
  %6 = icmp sgt i32 %5, 0, !dbg !5402
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br i1 %6, label %8, label %17, !dbg !5403

; <label>:8:                                      ; preds = %3, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %3 ]
  %10 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !5404, !tbaa !625
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 %9, !dbg !5405
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !5405, !tbaa !476
  tail call void @decrRefCount(%struct.redisObject* %12) #8, !dbg !5406
  %13 = add nuw nsw i64 %9, 1, !dbg !5407
  %14 = load i32, i32* %4, align 8, !dbg !5401, !tbaa !622
  %15 = sext i32 %14 to i64, !dbg !5402
  %16 = icmp slt i64 %13, %15, !dbg !5402
  br i1 %16, label %8, label %17, !dbg !5403, !llvm.loop !2760

; <label>:17:                                     ; preds = %8, %3
  store i32 0, i32* %4, align 8, !dbg !5408, !tbaa !622
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !5409
  store %struct.redisCommand* null, %struct.redisCommand** %18, align 8, !dbg !5410, !tbaa !2766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5411
  %19 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !5412, !tbaa !476
  %20 = icmp eq %struct.uk_alloc* %19, null, !dbg !5418
  br i1 %20, label %21, label %22, !dbg !5419, !prof !545

; <label>:21:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i64 0, i64 0)) #8, !dbg !5420
  tail call void @ukplat_terminate(i32 3) #9, !dbg !5420
  unreachable, !dbg !5420

; <label>:22:                                     ; preds = %17
  %23 = bitcast %struct.redisObject*** %7 to i8**, !dbg !5421
  %24 = load i8*, i8** %23, align 8, !dbg !5421, !tbaa !625
  %25 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %19, i64 0, i32 5, !dbg !5425
  %26 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %25, align 8, !dbg !5425, !tbaa !476
  tail call void %26(%struct.uk_alloc* nonnull %19, i8* %24) #8, !dbg !5426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5429
  store %struct.redisObject** %2, %struct.redisObject*** %7, align 8, !dbg !5430, !tbaa !625
  store i32 %1, i32* %4, align 8, !dbg !5431, !tbaa !622
  %27 = load %struct.redisObject*, %struct.redisObject** %2, align 8, !dbg !5432, !tbaa !476
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %27, i64 0, i32 2, !dbg !5433
  %29 = load i8*, i8** %28, align 8, !dbg !5433, !tbaa !376
  %30 = tail call %struct.redisCommand* @lookupCommandOrOriginal(i8* %29) #8, !dbg !5434
  store %struct.redisCommand* %30, %struct.redisCommand** %18, align 8, !dbg !5435, !tbaa !2766
  %31 = icmp eq %struct.redisCommand* %30, null, !dbg !5436
  br i1 %31, label %32, label %33, !dbg !5436

; <label>:32:                                     ; preds = %22
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1996) #8, !dbg !5436
  tail call void @_exit(i32 1) #9, !dbg !5436
  unreachable, !dbg !5436

; <label>:33:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5437
  ret void, !dbg !5437
}

; Function Attrs: noredzone nounwind
define dso_local void @rewriteClientCommandArgument(%struct.client*, i32, %struct.redisObject*) local_unnamed_addr #0 !dbg !5438 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5449
  %5 = load i32, i32* %4, align 8, !dbg !5449, !tbaa !622
  %6 = icmp sgt i32 %5, %1, !dbg !5451
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !5452
  br i1 %6, label %8, label %10, !dbg !5454

; <label>:8:                                      ; preds = %3
  %9 = sext i32 %1 to i64, !dbg !5455
  br label %20, !dbg !5454

; <label>:10:                                     ; preds = %3
  %11 = bitcast %struct.redisObject*** %7 to i8**, !dbg !5456
  %12 = load i8*, i8** %11, align 8, !dbg !5456, !tbaa !625
  %13 = add nsw i32 %1, 1, !dbg !5457
  %14 = sext i32 %13 to i64, !dbg !5458
  %15 = shl nsw i64 %14, 3, !dbg !5459
  %16 = tail call i8* @zrealloc(i8* %12, i64 %15) #8, !dbg !5460
  store i8* %16, i8** %11, align 8, !dbg !5461, !tbaa !625
  store i32 %13, i32* %4, align 8, !dbg !5462, !tbaa !622
  %17 = bitcast i8* %16 to %struct.redisObject**, !dbg !5463
  %18 = sext i32 %1 to i64, !dbg !5464
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 %18, !dbg !5464
  store %struct.redisObject* null, %struct.redisObject** %19, align 8, !dbg !5465, !tbaa !476
  br label %20, !dbg !5466

; <label>:20:                                     ; preds = %8, %10
  %21 = phi i64 [ %9, %8 ], [ %18, %10 ], !dbg !5455
  %22 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !5467, !tbaa !625
  %23 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %22, i64 %21, !dbg !5455
  %24 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !dbg !5455, !tbaa !476
  store %struct.redisObject* %2, %struct.redisObject** %23, align 8, !dbg !5469, !tbaa !476
  tail call void @incrRefCount(%struct.redisObject* %2) #8, !dbg !5470
  %25 = icmp eq %struct.redisObject* %24, null, !dbg !5471
  br i1 %25, label %27, label %26, !dbg !5473

; <label>:26:                                     ; preds = %20
  tail call void @decrRefCount(%struct.redisObject* nonnull %24) #8, !dbg !5474
  br label %27, !dbg !5474

; <label>:27:                                     ; preds = %20, %26
  %28 = icmp eq i32 %1, 0, !dbg !5475
  br i1 %28, label %29, label %38, !dbg !5477

; <label>:29:                                     ; preds = %27
  %30 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !5478, !tbaa !625
  %31 = load %struct.redisObject*, %struct.redisObject** %30, align 8, !dbg !5480, !tbaa !476
  %32 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %31, i64 0, i32 2, !dbg !5481
  %33 = load i8*, i8** %32, align 8, !dbg !5481, !tbaa !376
  %34 = tail call %struct.redisCommand* @lookupCommandOrOriginal(i8* %33) #8, !dbg !5482
  %35 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !5483
  store %struct.redisCommand* %34, %struct.redisCommand** %35, align 8, !dbg !5484, !tbaa !2766
  %36 = icmp eq %struct.redisCommand* %34, null, !dbg !5485
  br i1 %36, label %37, label %38, !dbg !5485

; <label>:37:                                     ; preds = %29
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 2026) #8, !dbg !5485
  tail call void @_exit(i32 1) #9, !dbg !5485
  unreachable, !dbg !5485

; <label>:38:                                     ; preds = %29, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5486
  ret void, !dbg !5486
}

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @getClientTypeName(i32) local_unnamed_addr #0 !dbg !5487 {
  %2 = icmp ult i32 %0, 4, !dbg !5493
  br i1 %2, label %3, label %7, !dbg !5493

; <label>:3:                                      ; preds = %1
  %4 = sext i32 %0 to i64, !dbg !5493
  %5 = getelementptr inbounds [4 x i8*], [4 x i8*]* @switch.table.getClientTypeName, i64 0, i64 %4, !dbg !5493
  %6 = load i8*, i8** %5, align 8, !dbg !5493
  br label %7, !dbg !5493

; <label>:7:                                      ; preds = %1, %3
  %8 = phi i8* [ %6, %3 ], [ null, %1 ], !dbg !5494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5496
  ret i8* %8, !dbg !5496
}

; Function Attrs: noredzone nounwind
define dso_local i32 @checkClientOutputBufferLimits(%struct.client* nocapture) local_unnamed_addr #0 !dbg !1220 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !5503
  %3 = load i64, i64* %2, align 8, !dbg !5503, !tbaa !667
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !5504
  %5 = load %struct.list*, %struct.list** %4, align 8, !dbg !5504, !tbaa !664
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 5, !dbg !5504
  %7 = load i64, i64* %6, align 8, !dbg !5504, !tbaa !1078
  %8 = mul i64 %7, 40, !dbg !5505
  %9 = add i64 %8, %3, !dbg !5506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5507
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !5511
  %11 = load i32, i32* %10, align 8, !dbg !5511, !tbaa !927
  %12 = and i32 %11, 2, !dbg !5512
  %13 = icmp eq i32 %12, 0, !dbg !5512
  br i1 %13, label %14, label %21, !dbg !5513

; <label>:14:                                     ; preds = %1
  %15 = and i32 %11, 5, !dbg !5514
  %16 = icmp eq i32 %15, 1, !dbg !5514
  %17 = lshr i32 %11, 17, !dbg !5515
  %18 = and i32 %17, 2, !dbg !5515
  %19 = select i1 %16, i32 1, i32 %18, !dbg !5514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5516
  %20 = zext i32 %19 to i64, !dbg !5518
  br label %22, !dbg !5518

; <label>:21:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5516
  br label %22, !dbg !5518

; <label>:22:                                     ; preds = %14, %21
  %23 = phi i64 [ 0, %21 ], [ %20, %14 ]
  %24 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 116, i64 %23, i32 0, !dbg !5519
  %25 = load i64, i64* %24, align 8, !dbg !5519, !tbaa !1265
  %26 = add i64 %25, -1, !dbg !5520
  %27 = icmp ult i64 %26, %9, !dbg !5520
  %28 = zext i1 %27 to i32, !dbg !5520
  %29 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 116, i64 %23, i32 1, !dbg !5521
  %30 = load i64, i64* %29, align 8, !dbg !5521, !tbaa !1270
  %31 = add i64 %30, -1, !dbg !5522
  %32 = icmp uge i64 %31, %9, !dbg !5522
  %33 = xor i1 %32, true, !dbg !5522
  %34 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 20, !dbg !5523
  br i1 %32, label %47, label %35, !dbg !5524

; <label>:35:                                     ; preds = %22
  %36 = load i64, i64* %34, align 8, !dbg !5525, !tbaa !670
  %37 = icmp eq i64 %36, 0, !dbg !5526
  %38 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !5527, !tbaa !639
  br i1 %37, label %39, label %40, !dbg !5528

; <label>:39:                                     ; preds = %35
  store i64 %38, i64* %34, align 8, !dbg !5529, !tbaa !670
  br label %48, !dbg !5530

; <label>:40:                                     ; preds = %35
  %41 = sub nsw i64 %38, %36, !dbg !5531
  %42 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 116, i64 %23, i32 2, !dbg !5533
  %43 = load i64, i64* %42, align 8, !dbg !5533, !tbaa !1286
  %44 = icmp sgt i64 %41, %43, !dbg !5534
  %45 = and i1 %44, %33, !dbg !5535
  %46 = zext i1 %45 to i32, !dbg !5535
  br label %48

; <label>:47:                                     ; preds = %22
  store i64 0, i64* %34, align 8, !dbg !5536, !tbaa !670
  br label %48

; <label>:48:                                     ; preds = %39, %40, %47
  %49 = phi i32 [ 0, %39 ], [ %46, %40 ], [ 0, %47 ], !dbg !5537
  %50 = or i32 %49, %28, !dbg !5538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5539
  ret i32 %50, !dbg !5539
}

; Function Attrs: noredzone nounwind
define dso_local void @flushSlavesOutputBuffers() local_unnamed_addr #0 !dbg !5540 {
  %1 = alloca %struct.listIter, align 8
  %2 = bitcast %struct.listIter* %1 to i8*, !dbg !5548
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #5, !dbg !5548
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !5549, !tbaa !1016
  call void @listRewind(%struct.list* %3, %struct.listIter* nonnull %1) #8, !dbg !5551
  %4 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !5552
  %5 = icmp eq %struct.listNode* %4, null, !dbg !5554
  br i1 %5, label %49, label %6, !dbg !5554

; <label>:6:                                      ; preds = %0, %46
  %7 = phi %struct.listNode* [ %47, %46 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.listNode, %struct.listNode* %7, i64 0, i32 2, !dbg !5555
  %9 = bitcast i8** %8 to %struct.client**, !dbg !5555
  %10 = load %struct.client*, %struct.client** %9, align 8, !dbg !5555, !tbaa !1161
  %11 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !5557, !tbaa !580
  %12 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 1, !dbg !5558
  %13 = load i32, i32* %12, align 8, !dbg !5558, !tbaa !596
  %14 = call i32 @aeGetFileEvents(%struct.aeEventLoop* %11, i32 %13) #8, !dbg !5559
  %15 = and i32 %14, 2, !dbg !5561
  %16 = icmp eq i32 %15, 0, !dbg !5561
  br i1 %16, label %17, label %22, !dbg !5562

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 21, !dbg !5563
  %19 = load i32, i32* %18, align 8, !dbg !5563, !tbaa !927
  %20 = and i32 %19, 2097152, !dbg !5564
  %21 = icmp ne i32 %20, 0, !dbg !5562
  br label %22, !dbg !5562

; <label>:22:                                     ; preds = %6, %17
  %23 = phi i1 [ true, %6 ], [ %21, %17 ]
  %24 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 23, !dbg !5565
  %25 = load i32, i32* %24, align 8, !dbg !5565, !tbaa !1033
  %26 = icmp eq i32 %25, 9, !dbg !5567
  %27 = and i1 %23, %26, !dbg !5568
  br i1 %27, label %28, label %46, !dbg !5568

; <label>:28:                                     ; preds = %22
  %29 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 24, !dbg !5569
  %30 = load i32, i32* %29, align 4, !dbg !5569, !tbaa !1036
  %31 = icmp eq i32 %30, 0, !dbg !5570
  br i1 %31, label %32, label %46, !dbg !5571

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 47, !dbg !5574
  %34 = load i32, i32* %33, align 8, !dbg !5574, !tbaa !602
  %35 = icmp eq i32 %34, 0, !dbg !5575
  br i1 %35, label %37, label %36, !dbg !5576

; <label>:36:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5577
  br label %43, !dbg !5578

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 15, !dbg !5579
  %39 = load %struct.list*, %struct.list** %38, align 8, !dbg !5579, !tbaa !664
  %40 = getelementptr inbounds %struct.list, %struct.list* %39, i64 0, i32 5, !dbg !5579
  %41 = load i64, i64* %40, align 8, !dbg !5579, !tbaa !1078
  %42 = icmp eq i64 %41, 0, !dbg !5576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5577
  br i1 %42, label %46, label %43, !dbg !5578

; <label>:43:                                     ; preds = %36, %37
  %44 = load i32, i32* %12, align 8, !dbg !5580, !tbaa !596
  %45 = call i32 @writeToClient(i32 %44, %struct.client* nonnull %10, i32 0) #10, !dbg !5582
  br label %46, !dbg !5583

; <label>:46:                                     ; preds = %37, %28, %43, %22
  %47 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !5552
  %48 = icmp eq %struct.listNode* %47, null, !dbg !5554
  br i1 %48, label %49, label %6, !dbg !5554, !llvm.loop !5584

; <label>:49:                                     ; preds = %46, %0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #5, !dbg !5586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5586
  ret void, !dbg !5586
}

; Function Attrs: noredzone
declare dso_local void @queueClientForReprocessing(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @processEventsWhileBlocked() local_unnamed_addr #0 !dbg !5587 {
  br label %1, !dbg !5595

; <label>:1:                                      ; preds = %5, %0
  %2 = phi i32 [ 4, %0 ], [ %6, %5 ], !dbg !5596
  %3 = phi i32 [ 0, %0 ], [ %12, %5 ], !dbg !5597
  %4 = icmp eq i32 %2, 0, !dbg !5595
  br i1 %4, label %13, label %5, !dbg !5595

; <label>:5:                                      ; preds = %1
  %6 = add nsw i32 %2, -1, !dbg !5598
  %7 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !5600, !tbaa !580
  %8 = tail call i32 @aeProcessEvents(%struct.aeEventLoop* %7, i32 5) #8, !dbg !5601
  %9 = tail call i32 @handleClientsWithPendingWrites() #10, !dbg !5602
  %10 = add nsw i32 %9, %8, !dbg !5603
  %11 = icmp eq i32 %10, 0, !dbg !5604
  %12 = add nsw i32 %10, %3, !dbg !5606
  br i1 %11, label %13, label %1, !llvm.loop !5607

; <label>:13:                                     ; preds = %5, %1
  %14 = phi i32 [ %12, %5 ], [ %3, %1 ], !dbg !5596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5609
  ret i32 %14, !dbg !5609
}

; Function Attrs: noredzone
declare dso_local i32 @aeProcessEvents(%struct.aeEventLoop*, i32) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #7 !dbg !313 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !5610
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #5, !dbg !5610
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !5612
  call void @llvm.va_start(i8* nonnull %3), !dbg !5612
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @uk_pr_crit.__str.99, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.97, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #8, !dbg !5613
  call void @llvm.va_end(i8* nonnull %3), !dbg !5616
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #5, !dbg !5617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5617
  ret void, !dbg !5617
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nobuiltin noredzone nounwind }
attributes #9 = { nobuiltin noredzone noreturn nounwind }
attributes #10 = { nobuiltin noredzone }
attributes #11 = { nobuiltin noredzone nounwind readonly }

!llvm.module.flags = !{!350, !351, !352}
!llvm.ident = !{!353}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "logged_time", scope: !2, file: !3, line: 1949, type: !182, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "securityWarningCommand", scope: !3, file: !3, line: 1948, type: !4, isLocal: false, isDefinition: true, scopeLine: 1948, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !347)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/networking.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !8, line: 780, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !8, line: 723, size: 135360, elements: !10)
!10 = !{!11, !17, !19, !125, !136, !141, !146, !147, !148, !149, !151, !173, !174, !175, !176, !177, !178, !180, !181, !184, !185, !186, !187, !188, !189, !190, !191, !196, !197, !198, !199, !200, !201, !202, !203, !207, !208, !212, !213, !229, !230, !247, !248, !249, !250, !251, !252, !253, !254}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !9, file: !8, line: 724, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !13, line: 60, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !15, line: 105, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !9, file: !8, line: 725, baseType: !18, size: 32, offset: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !9, file: !8, line: 726, baseType: !20, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !8, line: 656, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !8, line: 647, size: 512, elements: !23)
!23 = !{!24, !89, !90, !91, !92, !93, !94, !96}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !22, file: !8, line: 648, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !27, line: 82, baseType: !28)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !27, line: 76, size: 768, elements: !29)
!29 = !{!30, !56, !57, !87, !88}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !28, file: !27, line: 77, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !27, line: 65, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !27, line: 58, size: 384, elements: !34)
!34 = !{!35, !41, !46, !47, !51, !55}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !33, file: !27, line: 59, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!12, !39}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !33, file: !27, line: 60, baseType: !42, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!45, !45, !39}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !33, file: !27, line: 61, baseType: !42, size: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !33, file: !27, line: 62, baseType: !48, size: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!18, !45, !39, !39}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !33, file: !27, line: 63, baseType: !52, size: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !45, !45}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !33, file: !27, line: 64, baseType: !52, size: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !28, file: !27, line: 78, baseType: !45, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !28, file: !27, line: 79, baseType: !58, size: 512, offset: 128)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 512, elements: !85)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !27, line: 74, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !27, line: 69, size: 256, elements: !61)
!61 = !{!62, !82, !83, !84}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !60, file: !27, line: 70, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !27, line: 56, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !27, line: 47, size: 192, elements: !67)
!67 = !{!68, !69, !80}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !66, file: !27, line: 48, baseType: !45, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !66, file: !27, line: 54, baseType: !70, size: 64, offset: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !66, file: !27, line: 49, size: 64, elements: !71)
!71 = !{!72, !73, !74, !78}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !70, file: !27, line: 50, baseType: !45, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !70, file: !27, line: 51, baseType: !12, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !70, file: !27, line: 52, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !13, line: 56, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !15, line: 103, baseType: !77)
!77 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !70, file: !27, line: 53, baseType: !79, size: 64)
!79 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !66, file: !27, line: 55, baseType: !81, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !60, file: !27, line: 71, baseType: !16, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !60, file: !27, line: 72, baseType: !16, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !60, file: !27, line: 73, baseType: !16, size: 64, offset: 192)
!85 = !{!86}
!86 = !DISubrange(count: 2)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !28, file: !27, line: 80, baseType: !77, size: 64, offset: 640)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !28, file: !27, line: 81, baseType: !16, size: 64, offset: 704)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !22, file: !8, line: 649, baseType: !25, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !22, file: !8, line: 650, baseType: !25, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !22, file: !8, line: 651, baseType: !25, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !22, file: !8, line: 652, baseType: !25, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !22, file: !8, line: 653, baseType: !18, size: 32, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !22, file: !8, line: 654, baseType: !95, size: 64, offset: 384)
!95 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !22, file: !8, line: 655, baseType: !97, size: 64, offset: 448)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !99, line: 54, baseType: !100)
!99 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !99, line: 47, size: 384, elements: !101)
!101 = !{!102, !111, !112, !116, !120, !124}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !100, file: !99, line: 48, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !99, line: 40, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !99, line: 36, size: 192, elements: !106)
!106 = !{!107, !109, !110}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !105, file: !99, line: 37, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !105, file: !99, line: 38, baseType: !108, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !105, file: !99, line: 39, baseType: !45, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !100, file: !99, line: 49, baseType: !103, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !100, file: !99, line: 50, baseType: !113, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!45, !45}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !100, file: !99, line: 51, baseType: !117, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !45}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !100, file: !99, line: 52, baseType: !121, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!18, !45, !45}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !100, file: !99, line: 53, baseType: !16, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !9, file: !8, line: 727, baseType: !126, size: 64, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !8, line: 622, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !8, line: 614, size: 128, elements: !129)
!129 = !{!130, !132, !133, !134, !135}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !128, file: !8, line: 615, baseType: !131, size: 4, flags: DIFlagBitField, extraData: i64 0)
!131 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !128, file: !8, line: 616, baseType: !131, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !128, file: !8, line: 617, baseType: !131, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !128, file: !8, line: 620, baseType: !18, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !128, file: !8, line: 621, baseType: !45, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !9, file: !8, line: 728, baseType: !137, size: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !138, line: 43, baseType: !139)
!138 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !9, file: !8, line: 729, baseType: !142, size: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !143, line: 40, baseType: !144)
!143 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !145, line: 129, baseType: !16)
!145 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!146 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !9, file: !8, line: 730, baseType: !137, size: 64, offset: 384)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !9, file: !8, line: 734, baseType: !142, size: 64, offset: 448)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !9, file: !8, line: 735, baseType: !18, size: 32, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !9, file: !8, line: 736, baseType: !150, size: 64, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !9, file: !8, line: 737, baseType: !152, size: 64, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !8, line: 1307, size: 640, elements: !154)
!154 = !{!155, !156, !159, !160, !161, !162, !168, !169, !170, !171, !172}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !153, file: !8, line: 1308, baseType: !139, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !153, file: !8, line: 1309, baseType: !157, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !8, line: 1305, baseType: !4)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !153, file: !8, line: 1310, baseType: !18, size: 32, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !153, file: !8, line: 1311, baseType: !139, size: 64, offset: 192)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !8, line: 1312, baseType: !18, size: 32, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !153, file: !8, line: 1315, baseType: !163, size: 64, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !8, line: 1306, baseType: !165)
!165 = !DISubroutineType(types: !166)
!166 = !{!167, !152, !150, !18, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !153, file: !8, line: 1317, baseType: !18, size: 32, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !153, file: !8, line: 1318, baseType: !18, size: 32, offset: 416)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !153, file: !8, line: 1319, baseType: !18, size: 32, offset: 448)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !153, file: !8, line: 1320, baseType: !95, size: 64, offset: 512)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !153, file: !8, line: 1320, baseType: !95, size: 64, offset: 576)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !9, file: !8, line: 737, baseType: !152, size: 64, offset: 704)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !9, file: !8, line: 738, baseType: !18, size: 32, offset: 768)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !9, file: !8, line: 739, baseType: !18, size: 32, offset: 800)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !9, file: !8, line: 740, baseType: !77, size: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !9, file: !8, line: 741, baseType: !97, size: 64, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !9, file: !8, line: 742, baseType: !179, size: 64, offset: 960)
!179 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !9, file: !8, line: 743, baseType: !142, size: 64, offset: 1024)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !9, file: !8, line: 745, baseType: !182, size: 64, offset: 1088)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !183, line: 34, baseType: !77)
!183 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!184 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !9, file: !8, line: 746, baseType: !182, size: 64, offset: 1152)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !9, file: !8, line: 747, baseType: !182, size: 64, offset: 1216)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !9, file: !8, line: 748, baseType: !18, size: 32, offset: 1280)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !9, file: !8, line: 749, baseType: !18, size: 32, offset: 1312)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !9, file: !8, line: 750, baseType: !18, size: 32, offset: 1344)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !9, file: !8, line: 751, baseType: !18, size: 32, offset: 1376)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !9, file: !8, line: 752, baseType: !18, size: 32, offset: 1408)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !9, file: !8, line: 753, baseType: !192, size: 64, offset: 1472)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !193, line: 173, baseType: !194)
!193 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !145, line: 100, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !145, line: 44, baseType: !77)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !9, file: !8, line: 754, baseType: !192, size: 64, offset: 1536)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !9, file: !8, line: 755, baseType: !137, size: 64, offset: 1600)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !9, file: !8, line: 756, baseType: !95, size: 64, offset: 1664)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !9, file: !8, line: 757, baseType: !95, size: 64, offset: 1728)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !9, file: !8, line: 758, baseType: !95, size: 64, offset: 1792)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !9, file: !8, line: 759, baseType: !95, size: 64, offset: 1856)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !9, file: !8, line: 760, baseType: !95, size: 64, offset: 1920)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !9, file: !8, line: 763, baseType: !204, size: 328, offset: 1984)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 328, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 41)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !9, file: !8, line: 764, baseType: !18, size: 32, offset: 2336)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !9, file: !8, line: 765, baseType: !209, size: 368, offset: 2368)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 368, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 46)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !9, file: !8, line: 766, baseType: !18, size: 32, offset: 2752)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !9, file: !8, line: 767, baseType: !214, size: 256, offset: 2816)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !8, line: 673, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !8, line: 665, size: 256, elements: !216)
!216 = !{!217, !225, !226, !227, !228}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !215, file: !8, line: 666, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !8, line: 663, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !8, line: 659, size: 192, elements: !221)
!221 = !{!222, !223, !224}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !220, file: !8, line: 660, baseType: !150, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !220, file: !8, line: 661, baseType: !18, size: 32, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !220, file: !8, line: 662, baseType: !152, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !215, file: !8, line: 667, baseType: !18, size: 32, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !215, file: !8, line: 668, baseType: !18, size: 32, offset: 96)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !215, file: !8, line: 671, baseType: !18, size: 32, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !215, file: !8, line: 672, baseType: !182, size: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !9, file: !8, line: 768, baseType: !18, size: 32, offset: 3072)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !9, file: !8, line: 769, baseType: !231, size: 704, offset: 3136)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !8, line: 703, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !8, line: 677, size: 704, elements: !233)
!233 = !{!234, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !232, file: !8, line: 679, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !8, line: 52, baseType: !95)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !232, file: !8, line: 683, baseType: !25, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !232, file: !8, line: 685, baseType: !126, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !232, file: !8, line: 689, baseType: !142, size: 64, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !232, file: !8, line: 690, baseType: !126, size: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !232, file: !8, line: 691, baseType: !126, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !232, file: !8, line: 692, baseType: !235, size: 64, offset: 384)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !232, file: !8, line: 692, baseType: !235, size: 64, offset: 448)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !232, file: !8, line: 693, baseType: !18, size: 32, offset: 512)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !232, file: !8, line: 696, baseType: !18, size: 32, offset: 544)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !232, file: !8, line: 697, baseType: !95, size: 64, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !232, file: !8, line: 700, baseType: !45, size: 64, offset: 640)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !9, file: !8, line: 770, baseType: !95, size: 64, offset: 3840)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !9, file: !8, line: 771, baseType: !97, size: 64, offset: 3904)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !9, file: !8, line: 772, baseType: !25, size: 64, offset: 3968)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !9, file: !8, line: 773, baseType: !97, size: 64, offset: 4032)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !9, file: !8, line: 774, baseType: !137, size: 64, offset: 4096)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !9, file: !8, line: 775, baseType: !103, size: 64, offset: 4160)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !9, file: !8, line: 778, baseType: !18, size: 32, offset: 4224)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !9, file: !8, line: 779, baseType: !255, size: 131072, offset: 4256)
!255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 131072, elements: !256)
!256 = !{!257}
!257 = !DISubrange(count: 16384)
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !259, retainedTypes: !267, globals: !310)
!259 = !{!260}
!260 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !261, line: 68, baseType: !131, size: 32, elements: !262)
!261 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!262 = !{!263, !264, !265, !266}
!263 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!264 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!265 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!266 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!267 = !{!268, !45, !77, !103, !139, !6, !18, !270, !142, !179, !95, !272, !284, !294, !303}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !193, line: 200, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !145, line: 145, baseType: !77)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !138, line: 51, size: 24, elements: !274)
!274 = !{!275, !278, !279, !280}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !273, file: !138, line: 52, baseType: !276, size: 8)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !13, line: 24, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !15, line: 43, baseType: !269)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !273, file: !138, line: 53, baseType: !276, size: 8, offset: 8)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !138, line: 54, baseType: !269, size: 8, offset: 16)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !273, file: !138, line: 55, baseType: !281, offset: 24)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: -1)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !138, line: 57, size: 40, elements: !286)
!286 = !{!287, !291, !292, !293}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !285, file: !138, line: 58, baseType: !288, size: 16)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !13, line: 36, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !15, line: 57, baseType: !290)
!290 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !285, file: !138, line: 59, baseType: !288, size: 16, offset: 16)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !285, file: !138, line: 60, baseType: !269, size: 8, offset: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !285, file: !138, line: 61, baseType: !281, offset: 40)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !138, line: 63, size: 72, elements: !296)
!296 = !{!297, !300, !301, !302}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !295, file: !138, line: 64, baseType: !298, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 48, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !15, line: 79, baseType: !131)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !295, file: !138, line: 65, baseType: !298, size: 32, offset: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !138, line: 66, baseType: !269, size: 8, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !295, file: !138, line: 67, baseType: !281, offset: 72)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !138, line: 69, size: 136, elements: !305)
!305 = !{!306, !307, !308, !309}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !304, file: !138, line: 70, baseType: !12, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !304, file: !138, line: 71, baseType: !12, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !138, line: 72, baseType: !269, size: 8, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !304, file: !138, line: 73, baseType: !281, offset: 136)
!310 = !{!0, !311, !337, !342}
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "__str", scope: !313, file: !314, line: 198, type: !334, isLocal: true, isDefinition: true)
!313 = distinct !DISubprogram(name: "uk_pr_crit", scope: !314, file: !314, line: 194, type: !315, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !319)
!314 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!315 = !DISubroutineType(types: !316)
!316 = !{null, !317, null}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!319 = !{!320, !321}
!320 = !DILocalVariable(name: "fmt", arg: 1, scope: !313, file: !314, line: 194, type: !317)
!321 = !DILocalVariable(name: "argp", scope: !313, file: !314, line: 196, type: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !323, line: 32, baseType: !324)
!323 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 390, baseType: !325)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 192, elements: !332)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 390, size: 192, elements: !327)
!327 = !{!328, !329, !330, !331}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !326, file: !3, line: 390, baseType: !131, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !326, file: !3, line: 390, baseType: !131, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !326, file: !3, line: 390, baseType: !45, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !326, file: !3, line: 390, baseType: !45, size: 64, offset: 128)
!332 = !{!333}
!333 = !DISubrange(count: 1)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 128, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 16)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "__str", scope: !313, file: !314, line: 198, type: !339, isLocal: true, isDefinition: true)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 104, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 13)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(name: "err", scope: !258, file: !3, line: 668, type: !344, isLocal: true, isDefinition: true)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 8816, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 1102)
!347 = !{!348, !349}
!348 = !DILocalVariable(name: "c", arg: 1, scope: !2, file: !3, line: 1948, type: !6)
!349 = !DILocalVariable(name: "now", scope: !2, file: !3, line: 1950, type: !182)
!350 = !{i32 2, !"Dwarf Version", i32 4}
!351 = !{i32 2, !"Debug Info Version", i32 3}
!352 = !{i32 1, !"wchar_size", i32 4}
!353 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!354 = distinct !DISubprogram(name: "sdsZmallocSize", scope: !3, file: !3, line: 44, type: !355, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{!142, !137}
!357 = !{!358, !359}
!358 = !DILocalVariable(name: "s", arg: 1, scope: !354, file: !3, line: 44, type: !137)
!359 = !DILocalVariable(name: "sh", scope: !354, file: !3, line: 45, type: !45)
!360 = !DILocation(line: 44, column: 27, scope: !354)
!361 = !DILocation(line: 45, column: 16, scope: !354)
!362 = !DILocation(line: 45, column: 11, scope: !354)
!363 = !DILocation(line: 46, column: 12, scope: !354)
!364 = !DILocation(line: 46, column: 5, scope: !354)
!365 = distinct !DISubprogram(name: "getStringObjectSdsUsedMemory", scope: !3, file: !3, line: 51, type: !366, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !368)
!366 = !DISubroutineType(types: !367)
!367 = !{!142, !126}
!368 = !{!369}
!369 = !DILocalVariable(name: "o", arg: 1, scope: !365, file: !3, line: 51, type: !126)
!370 = !DILocation(line: 51, column: 43, scope: !365)
!371 = !DILocation(line: 52, column: 5, scope: !365)
!372 = !DILocation(line: 53, column: 15, scope: !365)
!373 = !DILocation(line: 53, column: 5, scope: !365)
!374 = !DILocation(line: 54, column: 53, scope: !375)
!375 = distinct !DILexicalBlock(scope: !365, file: !3, line: 53, column: 25)
!376 = !{!377, !381, i64 8}
!377 = !{!"redisObject", !378, i64 0, !378, i64 0, !378, i64 1, !378, i64 4, !381, i64 8}
!378 = !{!"int", !379, i64 0}
!379 = !{!"omnipotent char", !380, i64 0}
!380 = !{!"Simple C/C++ TBAA"}
!381 = !{!"any pointer", !379, i64 0}
!382 = !DILocation(line: 44, column: 27, scope: !354, inlinedAt: !383)
!383 = distinct !DILocation(line: 54, column: 35, scope: !375)
!384 = !DILocation(line: 45, column: 16, scope: !354, inlinedAt: !383)
!385 = !DILocation(line: 45, column: 11, scope: !354, inlinedAt: !383)
!386 = !DILocation(line: 46, column: 12, scope: !354, inlinedAt: !383)
!387 = !DILocation(line: 46, column: 5, scope: !354, inlinedAt: !383)
!388 = !DILocation(line: 54, column: 28, scope: !375)
!389 = !DILocation(line: 55, column: 51, scope: !375)
!390 = !DILocation(line: 55, column: 38, scope: !375)
!391 = !DILocation(line: 55, column: 53, scope: !375)
!392 = !DILocation(line: 55, column: 31, scope: !375)
!393 = !DILocation(line: 0, scope: !375)
!394 = !DILocation(line: 58, column: 1, scope: !365)
!395 = distinct !DISubprogram(name: "dupClientReplyValue", scope: !3, file: !3, line: 61, type: !114, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !396)
!396 = !{!397, !398, !406}
!397 = !DILocalVariable(name: "o", arg: 1, scope: !395, file: !3, line: 61, type: !45)
!398 = !DILocalVariable(name: "old", scope: !395, file: !3, line: 62, type: !399)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientReplyBlock", file: !8, line: 642, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clientReplyBlock", file: !8, line: 639, size: 128, elements: !402)
!402 = !{!403, !404, !405}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !401, file: !8, line: 640, baseType: !142, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !401, file: !8, line: 640, baseType: !142, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !401, file: !8, line: 641, baseType: !281, offset: 128)
!406 = !DILocalVariable(name: "buf", scope: !395, file: !3, line: 63, type: !399)
!407 = !DILocation(line: 61, column: 33, scope: !395)
!408 = !DILocation(line: 62, column: 23, scope: !395)
!409 = !DILocation(line: 63, column: 69, scope: !395)
!410 = !{!411, !411, i64 0}
!411 = !{!"long", !379, i64 0}
!412 = !DILocation(line: 63, column: 62, scope: !395)
!413 = !DILocation(line: 63, column: 29, scope: !395)
!414 = !DILocation(line: 63, column: 23, scope: !395)
!415 = !DILocation(line: 64, column: 52, scope: !395)
!416 = !DILocation(line: 64, column: 45, scope: !395)
!417 = !DILocation(line: 64, column: 5, scope: !395)
!418 = !DILocation(line: 65, column: 5, scope: !395)
!419 = distinct !DISubprogram(name: "freeClientReplyValue", scope: !3, file: !3, line: 68, type: !118, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !420)
!420 = !{!421}
!421 = !DILocalVariable(name: "o", arg: 1, scope: !419, file: !3, line: 68, type: !45)
!422 = !DILocation(line: 68, column: 33, scope: !419)
!423 = !DILocation(line: 69, column: 5, scope: !419)
!424 = !DILocation(line: 70, column: 1, scope: !419)
!425 = distinct !DISubprogram(name: "listMatchObjects", scope: !3, file: !3, line: 72, type: !122, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !426)
!426 = !{!427, !428}
!427 = !DILocalVariable(name: "a", arg: 1, scope: !425, file: !3, line: 72, type: !45)
!428 = !DILocalVariable(name: "b", arg: 2, scope: !425, file: !3, line: 72, type: !45)
!429 = !DILocation(line: 72, column: 28, scope: !425)
!430 = !DILocation(line: 72, column: 37, scope: !425)
!431 = !DILocation(line: 73, column: 31, scope: !425)
!432 = !DILocation(line: 73, column: 33, scope: !425)
!433 = !DILocation(line: 73, column: 12, scope: !425)
!434 = !DILocation(line: 73, column: 5, scope: !425)
!435 = distinct !DISubprogram(name: "linkClient", scope: !3, file: !3, line: 78, type: !4, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !436)
!436 = !{!437, !438}
!437 = !DILocalVariable(name: "c", arg: 1, scope: !435, file: !3, line: 78, type: !6)
!438 = !DILocalVariable(name: "id", scope: !435, file: !3, line: 84, type: !12)
!439 = !DILocation(line: 78, column: 25, scope: !435)
!440 = !DILocation(line: 79, column: 28, scope: !435)
!441 = !{!442, !381, i64 512}
!442 = !{!"redisServer", !378, i64 0, !381, i64 8, !381, i64 16, !381, i64 24, !378, i64 32, !378, i64 36, !378, i64 40, !381, i64 48, !381, i64 56, !381, i64 64, !381, i64 72, !378, i64 80, !378, i64 84, !378, i64 88, !378, i64 92, !381, i64 96, !381, i64 104, !378, i64 112, !378, i64 116, !379, i64 120, !378, i64 164, !411, i64 168, !378, i64 176, !381, i64 184, !381, i64 192, !381, i64 200, !379, i64 208, !378, i64 216, !378, i64 220, !379, i64 224, !378, i64 352, !381, i64 360, !378, i64 368, !379, i64 372, !378, i64 436, !378, i64 440, !379, i64 444, !378, i64 508, !381, i64 512, !381, i64 520, !381, i64 528, !381, i64 536, !381, i64 544, !381, i64 552, !381, i64 560, !378, i64 568, !443, i64 576, !379, i64 584, !381, i64 840, !411, i64 848, !378, i64 856, !378, i64 860, !411, i64 864, !411, i64 872, !411, i64 880, !411, i64 888, !381, i64 896, !381, i64 904, !381, i64 912, !381, i64 920, !381, i64 928, !381, i64 936, !381, i64 944, !381, i64 952, !381, i64 960, !381, i64 968, !381, i64 976, !381, i64 984, !381, i64 992, !411, i64 1000, !443, i64 1008, !443, i64 1016, !443, i64 1024, !444, i64 1032, !443, i64 1040, !443, i64 1048, !443, i64 1056, !443, i64 1064, !443, i64 1072, !443, i64 1080, !443, i64 1088, !443, i64 1096, !443, i64 1104, !411, i64 1112, !443, i64 1120, !444, i64 1128, !443, i64 1136, !443, i64 1144, !443, i64 1152, !443, i64 1160, !381, i64 1168, !443, i64 1176, !443, i64 1184, !411, i64 1192, !445, i64 1200, !443, i64 1240, !443, i64 1248, !411, i64 1256, !411, i64 1264, !379, i64 1272, !378, i64 1728, !378, i64 1732, !378, i64 1736, !378, i64 1740, !378, i64 1744, !411, i64 1752, !378, i64 1760, !378, i64 1764, !378, i64 1768, !378, i64 1772, !411, i64 1776, !411, i64 1784, !378, i64 1792, !378, i64 1796, !378, i64 1800, !378, i64 1804, !379, i64 1808, !378, i64 1880, !378, i64 1884, !381, i64 1888, !378, i64 1896, !378, i64 1900, !411, i64 1904, !411, i64 1912, !411, i64 1920, !411, i64 1928, !378, i64 1936, !378, i64 1940, !381, i64 1944, !381, i64 1952, !378, i64 1960, !378, i64 1964, !411, i64 1968, !411, i64 1976, !411, i64 1984, !411, i64 1992, !378, i64 2000, !411, i64 2008, !378, i64 2016, !378, i64 2020, !378, i64 2024, !378, i64 2028, !378, i64 2032, !378, i64 2036, !378, i64 2040, !378, i64 2044, !378, i64 2048, !378, i64 2052, !378, i64 2056, !378, i64 2060, !378, i64 2064, !381, i64 2072, !443, i64 2080, !443, i64 2088, !378, i64 2096, !381, i64 2104, !378, i64 2112, !381, i64 2120, !378, i64 2128, !378, i64 2132, !411, i64 2136, !411, i64 2144, !411, i64 2152, !411, i64 2160, !378, i64 2168, !378, i64 2172, !378, i64 2176, !378, i64 2180, !378, i64 2184, !378, i64 2188, !379, i64 2192, !446, i64 2200, !447, i64 2224, !381, i64 2240, !378, i64 2248, !381, i64 2256, !378, i64 2264, !379, i64 2268, !379, i64 2309, !443, i64 2352, !443, i64 2360, !378, i64 2368, !378, i64 2372, !381, i64 2376, !443, i64 2384, !443, i64 2392, !443, i64 2400, !443, i64 2408, !411, i64 2416, !411, i64 2424, !378, i64 2432, !378, i64 2436, !378, i64 2440, !378, i64 2444, !378, i64 2448, !381, i64 2456, !381, i64 2464, !378, i64 2472, !378, i64 2476, !381, i64 2480, !381, i64 2488, !378, i64 2496, !378, i64 2500, !411, i64 2504, !411, i64 2512, !411, i64 2520, !378, i64 2528, !378, i64 2532, !381, i64 2536, !411, i64 2544, !378, i64 2552, !378, i64 2556, !378, i64 2560, !411, i64 2568, !378, i64 2576, !378, i64 2580, !378, i64 2584, !381, i64 2592, !379, i64 2600, !443, i64 2648, !378, i64 2656, !381, i64 2664, !381, i64 2672, !378, i64 2680, !381, i64 2688, !378, i64 2696, !378, i64 2700, !443, i64 2704, !378, i64 2712, !378, i64 2716, !378, i64 2720, !378, i64 2724, !443, i64 2728, !378, i64 2736, !379, i64 2740, !381, i64 2768, !381, i64 2776, !378, i64 2784, !378, i64 2788, !378, i64 2792, !378, i64 2796, !411, i64 2800, !411, i64 2808, !411, i64 2816, !411, i64 2824, !411, i64 2832, !411, i64 2840, !411, i64 2848, !411, i64 2856, !378, i64 2864, !378, i64 2868, !411, i64 2872, !411, i64 2880, !378, i64 2888, !443, i64 2896, !381, i64 2904, !381, i64 2912, !378, i64 2920, !378, i64 2924, !443, i64 2928, !381, i64 2936, !381, i64 2944, !378, i64 2952, !378, i64 2956, !378, i64 2960, !378, i64 2964, !381, i64 2968, !378, i64 2976, !378, i64 2980, !378, i64 2984, !381, i64 2992, !381, i64 3000, !381, i64 3008, !381, i64 3016, !443, i64 3024, !443, i64 3032, !443, i64 3040, !378, i64 3048, !378, i64 3052, !378, i64 3056, !378, i64 3060, !378, i64 3064, !378, i64 3068, !378, i64 3072, !378, i64 3076, !378, i64 3080, !378, i64 3084, !378, i64 3088, !443, i64 3096, !381, i64 3104, !381, i64 3112, !381, i64 3120, !378, i64 3128, !378, i64 3132, !378, i64 3136, !411, i64 3144, !381, i64 3152, !381, i64 3160, !381, i64 3168}
!443 = !{!"long long", !379, i64 0}
!444 = !{!"double", !379, i64 0}
!445 = !{!"malloc_stats", !411, i64 0, !411, i64 8, !411, i64 16, !411, i64 24, !411, i64 32}
!446 = !{!"", !378, i64 0, !411, i64 8, !443, i64 16}
!447 = !{!"redisOpArray", !381, i64 0, !378, i64 8}
!448 = !DILocation(line: 79, column: 36, scope: !435)
!449 = !DILocation(line: 79, column: 5, scope: !435)
!450 = !DILocation(line: 83, column: 27, scope: !435)
!451 = !{!452, !381, i64 8}
!452 = !{!"list", !381, i64 0, !381, i64 8, !381, i64 16, !381, i64 24, !381, i64 32, !411, i64 40}
!453 = !DILocation(line: 83, column: 8, scope: !435)
!454 = !DILocation(line: 83, column: 25, scope: !435)
!455 = !{!456, !381, i64 520}
!456 = !{!"client", !411, i64 0, !378, i64 8, !381, i64 16, !381, i64 24, !381, i64 32, !411, i64 40, !381, i64 48, !411, i64 56, !378, i64 64, !381, i64 72, !381, i64 80, !381, i64 88, !378, i64 96, !378, i64 100, !411, i64 104, !381, i64 112, !443, i64 120, !411, i64 128, !411, i64 136, !411, i64 144, !411, i64 152, !378, i64 160, !378, i64 164, !378, i64 168, !378, i64 172, !378, i64 176, !411, i64 184, !411, i64 192, !381, i64 200, !443, i64 208, !443, i64 216, !443, i64 224, !443, i64 232, !443, i64 240, !379, i64 248, !378, i64 292, !379, i64 296, !378, i64 344, !457, i64 352, !378, i64 384, !458, i64 392, !443, i64 480, !381, i64 488, !381, i64 496, !381, i64 504, !381, i64 512, !381, i64 520, !378, i64 528, !379, i64 532}
!457 = !{!"multiState", !381, i64 0, !378, i64 8, !378, i64 12, !378, i64 16, !411, i64 24}
!458 = !{!"blockingState", !443, i64 0, !381, i64 8, !381, i64 16, !411, i64 24, !381, i64 32, !381, i64 40, !443, i64 48, !443, i64 56, !378, i64 64, !378, i64 68, !443, i64 72, !381, i64 80}
!459 = !DILocation(line: 84, column: 5, scope: !435)
!460 = !DILocation(line: 84, column: 19, scope: !435)
!461 = !{!456, !411, i64 0}
!462 = !DILocation(line: 84, column: 14, scope: !435)
!463 = !DILocation(line: 85, column: 22, scope: !435)
!464 = !{!442, !381, i64 560}
!465 = !DILocation(line: 85, column: 5, scope: !435)
!466 = !DILocation(line: 86, column: 1, scope: !435)
!467 = distinct !DISubprogram(name: "createClient", scope: !3, file: !3, line: 88, type: !468, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{!6, !18}
!470 = !{!471, !472, !473}
!471 = !DILocalVariable(name: "fd", arg: 1, scope: !467, file: !3, line: 88, type: !18)
!472 = !DILocalVariable(name: "c", scope: !467, file: !3, line: 92, type: !6)
!473 = !DILocalVariable(name: "client_id", scope: !467, file: !3, line: 113, type: !12)
!474 = !DILocation(line: 88, column: 26, scope: !467)
!475 = !DILocation(line: 92, column: 27, scope: !467)
!476 = !{!381, !381, i64 0}
!477 = !DILocalVariable(name: "a", arg: 1, scope: !478, file: !479, line: 157, type: !482)
!478 = distinct !DISubprogram(name: "uk_malloc", scope: !479, file: !479, line: 157, type: !480, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !537)
!479 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!480 = !DISubroutineType(types: !481)
!481 = !{!45, !482, !493}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !479, line: 77, size: 832, elements: !484)
!484 = !{!485, !488, !495, !500, !506, !508, !513, !514, !515, !520, !525, !530, !531, !532}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !483, file: !479, line: 79, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !479, line: 54, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !483, file: !479, line: 80, baseType: !489, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !479, line: 56, baseType: !490)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!45, !482, !493, !493}
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !494, line: 58, baseType: !16)
!494 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!495 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !483, file: !479, line: 81, baseType: !496, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !479, line: 62, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!45, !482, !45, !493}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !483, file: !479, line: 82, baseType: !501, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !479, line: 58, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!18, !482, !505, !493, !493}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !483, file: !479, line: 83, baseType: !507, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !479, line: 60, baseType: !490)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !483, file: !479, line: 84, baseType: !509, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !479, line: 64, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !482, !45}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !483, file: !479, line: 87, baseType: !509, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !483, file: !479, line: 88, baseType: !486, size: 64, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !483, file: !479, line: 92, baseType: !516, size: 64, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !479, line: 66, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!45, !482, !16}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !483, file: !479, line: 93, baseType: !521, size: 64, offset: 576)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !479, line: 68, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !482, !45, !16}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !483, file: !479, line: 99, baseType: !526, size: 64, offset: 640)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !479, line: 70, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!18, !482, !45, !493}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !483, file: !479, line: 100, baseType: !493, size: 64, offset: 704)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !483, file: !479, line: 103, baseType: !482, size: 64, offset: 768)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !483, file: !479, line: 104, baseType: !533, offset: 832)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, elements: !282)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !13, line: 20, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !15, line: 41, baseType: !536)
!536 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!537 = !{!477, !538}
!538 = !DILocalVariable(name: "size", arg: 2, scope: !478, file: !479, line: 157, type: !493)
!539 = !DILocation(line: 157, column: 48, scope: !478, inlinedAt: !540)
!540 = distinct !DILocation(line: 92, column: 17, scope: !467)
!541 = !DILocation(line: 157, column: 58, scope: !478, inlinedAt: !540)
!542 = !DILocation(line: 159, column: 6, scope: !543, inlinedAt: !540)
!543 = distinct !DILexicalBlock(scope: !478, file: !479, line: 159, column: 6)
!544 = !DILocation(line: 159, column: 6, scope: !478, inlinedAt: !540)
!545 = !{!"branch_weights", i32 1, i32 2000}
!546 = !DILocation(line: 160, column: 3, scope: !547, inlinedAt: !540)
!547 = distinct !DILexicalBlock(scope: !543, file: !479, line: 159, column: 20)
!548 = !DILocation(line: 160, column: 9, scope: !547, inlinedAt: !540)
!549 = !{!378, !378, i64 0}
!550 = !DILocation(line: 161, column: 3, scope: !547, inlinedAt: !540)
!551 = !DILocalVariable(name: "a", arg: 1, scope: !552, file: !479, line: 151, type: !482)
!552 = distinct !DISubprogram(name: "uk_do_malloc", scope: !479, file: !479, line: 151, type: !480, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !553)
!553 = !{!551, !554}
!554 = !DILocalVariable(name: "size", arg: 2, scope: !552, file: !479, line: 151, type: !493)
!555 = !DILocation(line: 151, column: 51, scope: !552, inlinedAt: !556)
!556 = distinct !DILocation(line: 163, column: 9, scope: !478, inlinedAt: !540)
!557 = !DILocation(line: 151, column: 61, scope: !552, inlinedAt: !556)
!558 = !DILocation(line: 154, column: 12, scope: !552, inlinedAt: !556)
!559 = !DILocation(line: 154, column: 9, scope: !552, inlinedAt: !556)
!560 = !DILocation(line: 154, column: 2, scope: !552, inlinedAt: !556)
!561 = !DILocation(line: 163, column: 2, scope: !478, inlinedAt: !540)
!562 = !DILocation(line: 0, scope: !478, inlinedAt: !540)
!563 = !DILocation(line: 164, column: 1, scope: !478, inlinedAt: !540)
!564 = !DILocation(line: 92, column: 17, scope: !467)
!565 = !DILocation(line: 92, column: 13, scope: !467)
!566 = !DILocation(line: 98, column: 12, scope: !567)
!567 = distinct !DILexicalBlock(scope: !467, file: !3, line: 98, column: 9)
!568 = !DILocation(line: 98, column: 9, scope: !467)
!569 = !DILocation(line: 99, column: 9, scope: !570)
!570 = distinct !DILexicalBlock(scope: !567, file: !3, line: 98, column: 19)
!571 = !DILocation(line: 100, column: 9, scope: !570)
!572 = !DILocation(line: 101, column: 20, scope: !573)
!573 = distinct !DILexicalBlock(scope: !570, file: !3, line: 101, column: 13)
!574 = !{!442, !378, i64 1736}
!575 = !DILocation(line: 101, column: 13, scope: !573)
!576 = !DILocation(line: 101, column: 13, scope: !570)
!577 = !DILocation(line: 102, column: 13, scope: !573)
!578 = !DILocation(line: 103, column: 38, scope: !579)
!579 = distinct !DILexicalBlock(scope: !570, file: !3, line: 103, column: 13)
!580 = !{!442, !381, i64 72}
!581 = !DILocation(line: 103, column: 13, scope: !579)
!582 = !DILocation(line: 104, column: 37, scope: !579)
!583 = !DILocation(line: 103, column: 13, scope: !570)
!584 = !DILocation(line: 106, column: 13, scope: !585)
!585 = distinct !DILexicalBlock(scope: !579, file: !3, line: 105, column: 9)
!586 = !DILocation(line: 107, column: 13, scope: !585)
!587 = !DILocation(line: 108, column: 13, scope: !585)
!588 = !DILocation(line: 112, column: 5, scope: !467)
!589 = !DILocation(line: 114, column: 5, scope: !590)
!590 = distinct !DILexicalBlock(scope: !467, file: !3, line: 114, column: 5)
!591 = !DILocation(line: 113, column: 14, scope: !467)
!592 = !DILocation(line: 115, column: 8, scope: !467)
!593 = !DILocation(line: 115, column: 11, scope: !467)
!594 = !DILocation(line: 116, column: 8, scope: !467)
!595 = !DILocation(line: 116, column: 11, scope: !467)
!596 = !{!456, !378, i64 8}
!597 = !DILocation(line: 117, column: 8, scope: !467)
!598 = !DILocation(line: 117, column: 13, scope: !467)
!599 = !{!456, !381, i64 24}
!600 = !DILocation(line: 118, column: 8, scope: !467)
!601 = !DILocation(line: 118, column: 15, scope: !467)
!602 = !{!456, !378, i64 528}
!603 = !DILocation(line: 119, column: 8, scope: !467)
!604 = !DILocation(line: 119, column: 15, scope: !467)
!605 = !{!456, !411, i64 40}
!606 = !DILocation(line: 120, column: 19, scope: !467)
!607 = !DILocation(line: 120, column: 8, scope: !467)
!608 = !DILocation(line: 120, column: 17, scope: !467)
!609 = !{!456, !381, i64 32}
!610 = !DILocation(line: 121, column: 27, scope: !467)
!611 = !DILocation(line: 121, column: 8, scope: !467)
!612 = !DILocation(line: 121, column: 25, scope: !467)
!613 = !{!456, !381, i64 48}
!614 = !DILocation(line: 122, column: 8, scope: !467)
!615 = !DILocation(line: 122, column: 22, scope: !467)
!616 = !{!456, !411, i64 56}
!617 = !DILocation(line: 123, column: 8, scope: !467)
!618 = !DILocation(line: 123, column: 16, scope: !467)
!619 = !{!456, !378, i64 96}
!620 = !DILocation(line: 124, column: 8, scope: !467)
!621 = !DILocation(line: 124, column: 13, scope: !467)
!622 = !{!456, !378, i64 64}
!623 = !DILocation(line: 125, column: 8, scope: !467)
!624 = !DILocation(line: 125, column: 13, scope: !467)
!625 = !{!456, !381, i64 72}
!626 = !DILocation(line: 126, column: 8, scope: !467)
!627 = !DILocation(line: 126, column: 12, scope: !467)
!628 = !DILocation(line: 127, column: 8, scope: !467)
!629 = !DILocation(line: 127, column: 21, scope: !467)
!630 = !{!456, !378, i64 100}
!631 = !DILocation(line: 128, column: 8, scope: !467)
!632 = !DILocation(line: 128, column: 16, scope: !467)
!633 = !{!456, !411, i64 104}
!634 = !DILocation(line: 129, column: 8, scope: !467)
!635 = !DILocation(line: 129, column: 16, scope: !467)
!636 = !{!456, !411, i64 128}
!637 = !DILocation(line: 130, column: 8, scope: !467)
!638 = !DILocation(line: 131, column: 44, scope: !467)
!639 = !{!442, !411, i64 2872}
!640 = !DILocation(line: 131, column: 19, scope: !467)
!641 = !DILocation(line: 131, column: 35, scope: !467)
!642 = !{!456, !411, i64 144}
!643 = !DILocation(line: 131, column: 8, scope: !467)
!644 = !DILocation(line: 131, column: 14, scope: !467)
!645 = !{!456, !411, i64 136}
!646 = !DILocation(line: 130, column: 14, scope: !467)
!647 = !DILocation(line: 136, column: 8, scope: !467)
!648 = !DILocation(line: 136, column: 21, scope: !467)
!649 = !{!443, !443, i64 0}
!650 = !DILocation(line: 137, column: 8, scope: !467)
!651 = !DILocation(line: 137, column: 21, scope: !467)
!652 = !DILocation(line: 139, column: 8, scope: !467)
!653 = !DILocation(line: 139, column: 29, scope: !467)
!654 = !{!456, !378, i64 292}
!655 = !DILocation(line: 140, column: 8, scope: !467)
!656 = !DILocation(line: 140, column: 20, scope: !467)
!657 = !{!379, !379, i64 0}
!658 = !DILocation(line: 141, column: 8, scope: !467)
!659 = !DILocation(line: 141, column: 19, scope: !467)
!660 = !{!456, !378, i64 344}
!661 = !DILocation(line: 142, column: 16, scope: !467)
!662 = !DILocation(line: 142, column: 8, scope: !467)
!663 = !DILocation(line: 142, column: 14, scope: !467)
!664 = !{!456, !381, i64 112}
!665 = !DILocation(line: 143, column: 8, scope: !467)
!666 = !DILocation(line: 143, column: 20, scope: !467)
!667 = !{!456, !443, i64 120}
!668 = !DILocation(line: 144, column: 8, scope: !467)
!669 = !DILocation(line: 144, column: 37, scope: !467)
!670 = !{!456, !411, i64 152}
!671 = !DILocation(line: 145, column: 5, scope: !467)
!672 = !{!452, !381, i64 24}
!673 = !DILocation(line: 146, column: 5, scope: !467)
!674 = !{!452, !381, i64 16}
!675 = !DILocation(line: 147, column: 8, scope: !467)
!676 = !DILocation(line: 147, column: 14, scope: !467)
!677 = !{!456, !378, i64 384}
!678 = !DILocation(line: 148, column: 8, scope: !467)
!679 = !DILocation(line: 148, column: 13, scope: !467)
!680 = !DILocation(line: 148, column: 21, scope: !467)
!681 = !{!456, !443, i64 392}
!682 = !DILocation(line: 149, column: 20, scope: !467)
!683 = !DILocation(line: 149, column: 13, scope: !467)
!684 = !DILocation(line: 149, column: 18, scope: !467)
!685 = !{!456, !381, i64 400}
!686 = !DILocation(line: 150, column: 13, scope: !467)
!687 = !DILocation(line: 150, column: 20, scope: !467)
!688 = !{!456, !381, i64 408}
!689 = !DILocation(line: 151, column: 13, scope: !467)
!690 = !DILocation(line: 151, column: 25, scope: !467)
!691 = !DILocation(line: 153, column: 13, scope: !467)
!692 = !DILocation(line: 153, column: 31, scope: !467)
!693 = !{!456, !378, i64 456}
!694 = !DILocation(line: 154, column: 13, scope: !467)
!695 = !DILocation(line: 154, column: 25, scope: !467)
!696 = !{!456, !378, i64 460}
!697 = !DILocation(line: 155, column: 13, scope: !467)
!698 = !DILocation(line: 155, column: 24, scope: !467)
!699 = !{!456, !443, i64 464}
!700 = !DILocation(line: 156, column: 8, scope: !467)
!701 = !DILocation(line: 156, column: 13, scope: !467)
!702 = !{!456, !443, i64 480}
!703 = !DILocation(line: 157, column: 23, scope: !467)
!704 = !DILocation(line: 157, column: 8, scope: !467)
!705 = !DILocation(line: 157, column: 21, scope: !467)
!706 = !{!456, !381, i64 488}
!707 = !DILocation(line: 158, column: 26, scope: !467)
!708 = !DILocation(line: 158, column: 8, scope: !467)
!709 = !DILocation(line: 158, column: 24, scope: !467)
!710 = !{!456, !381, i64 496}
!711 = !DILocation(line: 159, column: 26, scope: !467)
!712 = !DILocation(line: 159, column: 8, scope: !467)
!713 = !DILocation(line: 159, column: 24, scope: !467)
!714 = !{!456, !381, i64 504}
!715 = !DILocation(line: 160, column: 8, scope: !467)
!716 = !DILocation(line: 160, column: 15, scope: !467)
!717 = !{!456, !381, i64 512}
!718 = !DILocation(line: 161, column: 8, scope: !467)
!719 = !DILocation(line: 161, column: 25, scope: !467)
!720 = !DILocation(line: 162, column: 5, scope: !467)
!721 = !DILocation(line: 163, column: 5, scope: !467)
!722 = !{!452, !381, i64 32}
!723 = !DILocation(line: 164, column: 9, scope: !467)
!724 = !DILocation(line: 78, column: 25, scope: !435, inlinedAt: !725)
!725 = distinct !DILocation(line: 164, column: 19, scope: !726)
!726 = distinct !DILexicalBlock(scope: !467, file: !3, line: 164, column: 9)
!727 = !DILocation(line: 79, column: 28, scope: !435, inlinedAt: !725)
!728 = !DILocation(line: 79, column: 5, scope: !435, inlinedAt: !725)
!729 = !DILocation(line: 83, column: 27, scope: !435, inlinedAt: !725)
!730 = !DILocation(line: 83, column: 25, scope: !435, inlinedAt: !725)
!731 = !DILocation(line: 84, column: 5, scope: !435, inlinedAt: !725)
!732 = !DILocation(line: 84, column: 19, scope: !435, inlinedAt: !725)
!733 = !DILocation(line: 84, column: 14, scope: !435, inlinedAt: !725)
!734 = !DILocation(line: 85, column: 22, scope: !435, inlinedAt: !725)
!735 = !DILocation(line: 85, column: 5, scope: !435, inlinedAt: !725)
!736 = !DILocation(line: 86, column: 1, scope: !435, inlinedAt: !725)
!737 = !DILocation(line: 164, column: 19, scope: !726)
!738 = !DILocation(line: 165, column: 5, scope: !467)
!739 = !DILocation(line: 0, scope: !467)
!740 = !DILocation(line: 167, column: 1, scope: !467)
!741 = distinct !DISubprogram(name: "readQueryFromClient", scope: !3, file: !3, line: 1524, type: !742, isLocal: false, isDefinition: true, scopeLine: 1524, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !804)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !744, !18, !45, !18}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventLoop", file: !746, line: 109, baseType: !747)
!746 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/ae.h", directory: "/root/.unikraft/apps/redis/build")
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !746, line: 97, size: 640, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !767, !774, !796, !797, !798, !803}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !747, file: !746, line: 98, baseType: !18, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !747, file: !746, line: 99, baseType: !18, size: 32, offset: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !747, file: !746, line: 100, baseType: !95, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "lastTime", scope: !747, file: !746, line: 101, baseType: !182, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !747, file: !746, line: 102, baseType: !754, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !746, line: 76, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !746, line: 71, size: 256, elements: !757)
!757 = !{!758, !759, !765, !766}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !756, file: !746, line: 72, baseType: !18, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !756, file: !746, line: 73, baseType: !760, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !746, line: 65, baseType: !762)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !764, !18, !45, !18}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !756, file: !746, line: 74, baseType: !760, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !756, file: !746, line: 75, baseType: !45, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !747, file: !746, line: 103, baseType: !768, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !746, line: 94, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !746, line: 91, size: 64, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !770, file: !746, line: 92, baseType: !18, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !770, file: !746, line: 93, baseType: !18, size: 32, offset: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !747, file: !746, line: 104, baseType: !775, size: 64, offset: 320)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !746, line: 88, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !746, line: 79, size: 512, elements: !778)
!778 = !{!779, !780, !781, !782, !787, !792, !793, !795}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !777, file: !746, line: 80, baseType: !95, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "when_sec", scope: !777, file: !746, line: 81, baseType: !77, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "when_ms", scope: !777, file: !746, line: 82, baseType: !77, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !777, file: !746, line: 83, baseType: !783, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !746, line: 66, baseType: !785)
!785 = !DISubroutineType(types: !786)
!786 = !{!18, !764, !95, !45}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !777, file: !746, line: 84, baseType: !788, size: 64, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !746, line: 67, baseType: !790)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !764, !45}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !777, file: !746, line: 85, baseType: !45, size: 64, offset: 320)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !777, file: !746, line: 86, baseType: !794, size: 64, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !777, file: !746, line: 87, baseType: !794, size: 64, offset: 448)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !747, file: !746, line: 105, baseType: !18, size: 32, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !747, file: !746, line: 106, baseType: !45, size: 64, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !747, file: !746, line: 107, baseType: !799, size: 64, offset: 512)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !746, line: 68, baseType: !801)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !764}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !747, file: !746, line: 108, baseType: !799, size: 64, offset: 576)
!804 = !{!805, !806, !807, !808, !809, !810, !811, !812, !813, !816, !819}
!805 = !DILocalVariable(name: "el", arg: 1, scope: !741, file: !3, line: 1524, type: !744)
!806 = !DILocalVariable(name: "fd", arg: 2, scope: !741, file: !3, line: 1524, type: !18)
!807 = !DILocalVariable(name: "privdata", arg: 3, scope: !741, file: !3, line: 1524, type: !45)
!808 = !DILocalVariable(name: "mask", arg: 4, scope: !741, file: !3, line: 1524, type: !18)
!809 = !DILocalVariable(name: "c", scope: !741, file: !3, line: 1525, type: !6)
!810 = !DILocalVariable(name: "nread", scope: !741, file: !3, line: 1526, type: !18)
!811 = !DILocalVariable(name: "readlen", scope: !741, file: !3, line: 1526, type: !18)
!812 = !DILocalVariable(name: "qblen", scope: !741, file: !3, line: 1527, type: !142)
!813 = !DILocalVariable(name: "remaining", scope: !814, file: !3, line: 1541, type: !270)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 1540, column: 5)
!815 = distinct !DILexicalBlock(scope: !741, file: !3, line: 1538, column: 9)
!816 = !DILocalVariable(name: "ci", scope: !817, file: !3, line: 1577, type: !137)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 1576, column: 63)
!818 = distinct !DILexicalBlock(scope: !741, file: !3, line: 1576, column: 9)
!819 = !DILocalVariable(name: "bytes", scope: !817, file: !3, line: 1577, type: !137)
!820 = !DILocation(line: 1524, column: 39, scope: !741)
!821 = !DILocation(line: 1524, column: 47, scope: !741)
!822 = !DILocation(line: 1524, column: 57, scope: !741)
!823 = !DILocation(line: 1524, column: 71, scope: !741)
!824 = !DILocation(line: 1525, column: 17, scope: !741)
!825 = !DILocation(line: 1525, column: 13, scope: !741)
!826 = !DILocation(line: 1526, column: 16, scope: !741)
!827 = !DILocation(line: 1538, column: 12, scope: !815)
!828 = !DILocation(line: 1538, column: 20, scope: !815)
!829 = !DILocation(line: 1538, column: 43, scope: !815)
!830 = !DILocation(line: 1538, column: 49, scope: !815)
!831 = !DILocation(line: 1538, column: 46, scope: !815)
!832 = !DILocation(line: 1538, column: 62, scope: !815)
!833 = !DILocation(line: 1538, column: 68, scope: !815)
!834 = !DILocation(line: 1539, column: 23, scope: !815)
!835 = !DILocation(line: 1539, column: 9, scope: !815)
!836 = !DILocation(line: 1541, column: 48, scope: !814)
!837 = !DILocation(line: 1541, column: 62, scope: !814)
!838 = !DILocalVariable(name: "s", arg: 1, scope: !839, file: !138, line: 87, type: !842)
!839 = distinct !DISubprogram(name: "sdslen", scope: !138, file: !138, line: 87, type: !840, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !843)
!840 = !DISubroutineType(types: !841)
!841 = !{!142, !842}
!842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!843 = !{!838, !844}
!844 = !DILocalVariable(name: "flags", scope: !839, file: !138, line: 88, type: !269)
!845 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !846)
!846 = distinct !DILocation(line: 1541, column: 52, scope: !814)
!847 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !846)
!848 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !846)
!849 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !846)
!850 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !846)
!851 = distinct !DILexicalBlock(scope: !839, file: !138, line: 89, column: 33)
!852 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !846)
!853 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !846)
!854 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !846)
!855 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !846)
!856 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !846)
!857 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !846)
!858 = !{!859, !859, i64 0}
!859 = !{!"short", !379, i64 0}
!860 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !846)
!861 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !846)
!862 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !846)
!863 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !846)
!864 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !846)
!865 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !846)
!866 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !846)
!867 = !DILocation(line: 0, scope: !851, inlinedAt: !846)
!868 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !846)
!869 = !DILocation(line: 1541, column: 51, scope: !814)
!870 = !DILocation(line: 1541, column: 17, scope: !814)
!871 = !DILocation(line: 1545, column: 27, scope: !872)
!872 = distinct !DILexicalBlock(scope: !814, file: !3, line: 1545, column: 13)
!873 = !DILocation(line: 1548, column: 23, scope: !741)
!874 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !875)
!875 = distinct !DILocation(line: 1548, column: 13, scope: !741)
!876 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !875)
!877 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !875)
!878 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !875)
!879 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !875)
!880 = !DILocation(line: 1527, column: 12, scope: !741)
!881 = !DILocation(line: 1549, column: 9, scope: !741)
!882 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !875)
!883 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !875)
!884 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !875)
!885 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !875)
!886 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !875)
!887 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !875)
!888 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !875)
!889 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !875)
!890 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !875)
!891 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !875)
!892 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !875)
!893 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !875)
!894 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !875)
!895 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !875)
!896 = !DILocation(line: 0, scope: !851, inlinedAt: !875)
!897 = !DILocation(line: 1549, column: 12, scope: !898)
!898 = distinct !DILexicalBlock(scope: !741, file: !3, line: 1549, column: 9)
!899 = !DILocation(line: 1549, column: 26, scope: !898)
!900 = !DILocation(line: 1549, column: 52, scope: !898)
!901 = !DILocation(line: 1549, column: 35, scope: !898)
!902 = !DILocation(line: 1550, column: 19, scope: !741)
!903 = !DILocation(line: 1550, column: 17, scope: !741)
!904 = !DILocation(line: 1551, column: 33, scope: !741)
!905 = !DILocation(line: 1551, column: 13, scope: !741)
!906 = !DILocation(line: 1526, column: 9, scope: !741)
!907 = !DILocation(line: 1552, column: 9, scope: !741)
!908 = !DILocation(line: 1553, column: 13, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1553, column: 13)
!910 = distinct !DILexicalBlock(scope: !911, file: !3, line: 1552, column: 22)
!911 = distinct !DILexicalBlock(scope: !741, file: !3, line: 1552, column: 9)
!912 = !DILocation(line: 1553, column: 19, scope: !909)
!913 = !DILocation(line: 1553, column: 13, scope: !910)
!914 = !DILocation(line: 1556, column: 70, scope: !915)
!915 = distinct !DILexicalBlock(scope: !909, file: !3, line: 1555, column: 16)
!916 = !DILocation(line: 1556, column: 61, scope: !915)
!917 = !DILocation(line: 1556, column: 13, scope: !915)
!918 = !DILocation(line: 1557, column: 13, scope: !915)
!919 = !DILocation(line: 1558, column: 13, scope: !915)
!920 = !DILocation(line: 1561, column: 9, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !3, line: 1560, column: 28)
!922 = distinct !DILexicalBlock(scope: !911, file: !3, line: 1560, column: 16)
!923 = !DILocation(line: 1562, column: 9, scope: !921)
!924 = !DILocation(line: 1563, column: 9, scope: !921)
!925 = !DILocation(line: 1564, column: 19, scope: !926)
!926 = distinct !DILexicalBlock(scope: !922, file: !3, line: 1564, column: 16)
!927 = !{!456, !378, i64 160}
!928 = !DILocation(line: 1564, column: 25, scope: !926)
!929 = !DILocation(line: 1564, column: 16, scope: !922)
!930 = !DILocation(line: 1572, column: 28, scope: !741)
!931 = !DILocation(line: 1568, column: 44, scope: !932)
!932 = distinct !DILexicalBlock(scope: !926, file: !3, line: 1564, column: 42)
!933 = !DILocation(line: 1569, column: 44, scope: !932)
!934 = !DILocation(line: 1569, column: 52, scope: !932)
!935 = !DILocation(line: 1569, column: 59, scope: !932)
!936 = !DILocation(line: 1568, column: 31, scope: !932)
!937 = !DILocation(line: 1568, column: 29, scope: !932)
!938 = !DILocation(line: 1570, column: 5, scope: !932)
!939 = !DILocation(line: 1572, column: 19, scope: !741)
!940 = !DILocation(line: 1572, column: 5, scope: !741)
!941 = !DILocation(line: 1573, column: 33, scope: !741)
!942 = !DILocation(line: 1573, column: 8, scope: !741)
!943 = !DILocation(line: 1573, column: 24, scope: !741)
!944 = !DILocation(line: 1574, column: 12, scope: !945)
!945 = distinct !DILexicalBlock(scope: !741, file: !3, line: 1574, column: 9)
!946 = !DILocation(line: 1574, column: 18, scope: !945)
!947 = !DILocation(line: 1574, column: 9, scope: !741)
!948 = !DILocation(line: 1574, column: 38, scope: !945)
!949 = !DILocation(line: 1574, column: 51, scope: !945)
!950 = !{!456, !443, i64 208}
!951 = !DILocation(line: 1574, column: 35, scope: !945)
!952 = !DILocation(line: 1575, column: 33, scope: !741)
!953 = !{!442, !443, i64 1240}
!954 = !DILocation(line: 1576, column: 19, scope: !818)
!955 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !956)
!956 = distinct !DILocation(line: 1576, column: 9, scope: !818)
!957 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !956)
!958 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !956)
!959 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !956)
!960 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !956)
!961 = !DILocation(line: 1576, column: 9, scope: !741)
!962 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !956)
!963 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !956)
!964 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !956)
!965 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !956)
!966 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !956)
!967 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !956)
!968 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !956)
!969 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !956)
!970 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !956)
!971 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !956)
!972 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !956)
!973 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !956)
!974 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !956)
!975 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !956)
!976 = !DILocation(line: 0, scope: !851, inlinedAt: !956)
!977 = !DILocation(line: 1576, column: 38, scope: !818)
!978 = !{!442, !411, i64 1784}
!979 = !DILocation(line: 1576, column: 29, scope: !818)
!980 = !DILocation(line: 1577, column: 38, scope: !817)
!981 = !DILocation(line: 1577, column: 18, scope: !817)
!982 = !DILocation(line: 1577, column: 13, scope: !817)
!983 = !DILocation(line: 1577, column: 61, scope: !817)
!984 = !DILocation(line: 1577, column: 53, scope: !817)
!985 = !DILocation(line: 1579, column: 37, scope: !817)
!986 = !DILocation(line: 1579, column: 17, scope: !817)
!987 = !DILocation(line: 1580, column: 9, scope: !817)
!988 = !DILocation(line: 1581, column: 9, scope: !817)
!989 = !DILocation(line: 1582, column: 9, scope: !817)
!990 = !DILocation(line: 1583, column: 9, scope: !817)
!991 = !DILocalVariable(name: "c", arg: 1, scope: !992, file: !3, line: 1509, type: !6)
!992 = distinct !DISubprogram(name: "processInputBufferAndReplicate", scope: !3, file: !3, line: 1509, type: !4, isLocal: false, isDefinition: true, scopeLine: 1509, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !993)
!993 = !{!991, !994, !997}
!994 = !DILocalVariable(name: "prev_offset", scope: !995, file: !3, line: 1513, type: !142)
!995 = distinct !DILexicalBlock(scope: !996, file: !3, line: 1512, column: 12)
!996 = distinct !DILexicalBlock(scope: !992, file: !3, line: 1510, column: 9)
!997 = !DILocalVariable(name: "applied", scope: !995, file: !3, line: 1515, type: !142)
!998 = !DILocation(line: 1509, column: 45, scope: !992, inlinedAt: !999)
!999 = distinct !DILocation(line: 1593, column: 5, scope: !741)
!1000 = !DILocation(line: 1510, column: 9, scope: !992, inlinedAt: !999)
!1001 = !DILocation(line: 1511, column: 9, scope: !1002, inlinedAt: !999)
!1002 = distinct !DILexicalBlock(scope: !996, file: !3, line: 1510, column: 38)
!1003 = !DILocation(line: 1512, column: 5, scope: !1002, inlinedAt: !999)
!1004 = !DILocation(line: 1513, column: 33, scope: !995, inlinedAt: !999)
!1005 = !{!456, !443, i64 216}
!1006 = !DILocation(line: 1513, column: 16, scope: !995, inlinedAt: !999)
!1007 = !DILocation(line: 1514, column: 9, scope: !995, inlinedAt: !999)
!1008 = !DILocation(line: 1515, column: 29, scope: !995, inlinedAt: !999)
!1009 = !DILocation(line: 1515, column: 37, scope: !995, inlinedAt: !999)
!1010 = !DILocation(line: 1515, column: 16, scope: !995, inlinedAt: !999)
!1011 = !DILocation(line: 1516, column: 13, scope: !1012, inlinedAt: !999)
!1012 = distinct !DILexicalBlock(scope: !995, file: !3, line: 1516, column: 13)
!1013 = !DILocation(line: 1516, column: 13, scope: !995, inlinedAt: !999)
!1014 = !DILocation(line: 1517, column: 58, scope: !1015, inlinedAt: !999)
!1015 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 1516, column: 22)
!1016 = !{!442, !381, i64 536}
!1017 = !DILocation(line: 1518, column: 24, scope: !1015, inlinedAt: !999)
!1018 = !DILocation(line: 1517, column: 13, scope: !1015, inlinedAt: !999)
!1019 = !DILocation(line: 1519, column: 25, scope: !1015, inlinedAt: !999)
!1020 = !DILocation(line: 1519, column: 13, scope: !1015, inlinedAt: !999)
!1021 = !DILocation(line: 1520, column: 9, scope: !1015, inlinedAt: !999)
!1022 = !DILocation(line: 1522, column: 1, scope: !992, inlinedAt: !999)
!1023 = !DILocation(line: 1594, column: 1, scope: !741)
!1024 = distinct !DISubprogram(name: "clientInstallWriteHandler", scope: !3, file: !3, line: 176, type: !4, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1025)
!1025 = !{!1026}
!1026 = !DILocalVariable(name: "c", arg: 1, scope: !1024, file: !3, line: 176, type: !6)
!1027 = !DILocation(line: 176, column: 40, scope: !1024)
!1028 = !DILocation(line: 180, column: 14, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 180, column: 9)
!1030 = !DILocation(line: 180, column: 20, scope: !1029)
!1031 = !DILocation(line: 180, column: 44, scope: !1029)
!1032 = !DILocation(line: 181, column: 13, scope: !1029)
!1033 = !{!456, !378, i64 168}
!1034 = !DILocation(line: 181, column: 42, scope: !1029)
!1035 = !DILocation(line: 182, column: 53, scope: !1029)
!1036 = !{!456, !378, i64 172}
!1037 = !DILocation(line: 182, column: 50, scope: !1029)
!1038 = !DILocation(line: 180, column: 9, scope: !1024)
!1039 = !DILocation(line: 190, column: 18, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 183, column: 5)
!1041 = !DILocation(line: 191, column: 32, scope: !1040)
!1042 = !{!442, !381, i64 528}
!1043 = !DILocation(line: 191, column: 54, scope: !1040)
!1044 = !DILocation(line: 191, column: 9, scope: !1040)
!1045 = !DILocation(line: 192, column: 5, scope: !1040)
!1046 = !DILocation(line: 193, column: 1, scope: !1024)
!1047 = distinct !DISubprogram(name: "prepareClientToWrite", scope: !3, file: !3, line: 217, type: !1048, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1050)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!18, !6}
!1050 = !{!1051}
!1051 = !DILocalVariable(name: "c", arg: 1, scope: !1047, file: !3, line: 217, type: !6)
!1052 = !DILocation(line: 217, column: 34, scope: !1047)
!1053 = !DILocation(line: 220, column: 12, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 220, column: 9)
!1055 = !DILocation(line: 220, column: 18, scope: !1054)
!1056 = !DILocation(line: 220, column: 9, scope: !1047)
!1057 = !DILocation(line: 223, column: 18, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 223, column: 9)
!1059 = !DILocation(line: 227, column: 36, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 227, column: 9)
!1061 = !DILocation(line: 223, column: 9, scope: !1047)
!1062 = !DILocation(line: 230, column: 12, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 230, column: 9)
!1064 = !DILocation(line: 230, column: 15, scope: !1063)
!1065 = !DILocation(line: 230, column: 9, scope: !1047)
!1066 = !DILocalVariable(name: "c", arg: 1, scope: !1067, file: !3, line: 664, type: !6)
!1067 = distinct !DISubprogram(name: "clientHasPendingReplies", scope: !3, file: !3, line: 664, type: !1048, isLocal: false, isDefinition: true, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1068)
!1068 = !{!1066}
!1069 = !DILocation(line: 664, column: 37, scope: !1067, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 234, column: 10, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 234, column: 9)
!1072 = !DILocation(line: 665, column: 15, scope: !1067, inlinedAt: !1070)
!1073 = !DILocation(line: 665, column: 12, scope: !1067, inlinedAt: !1070)
!1074 = !DILocation(line: 665, column: 22, scope: !1067, inlinedAt: !1070)
!1075 = !DILocation(line: 665, column: 5, scope: !1067, inlinedAt: !1070)
!1076 = !DILocation(line: 234, column: 9, scope: !1047)
!1077 = !DILocation(line: 665, column: 25, scope: !1067, inlinedAt: !1070)
!1078 = !{!452, !411, i64 40}
!1079 = !DILocation(line: 176, column: 40, scope: !1024, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 234, column: 38, scope: !1071)
!1081 = !DILocation(line: 180, column: 20, scope: !1029, inlinedAt: !1080)
!1082 = !DILocation(line: 180, column: 44, scope: !1029, inlinedAt: !1080)
!1083 = !DILocation(line: 181, column: 13, scope: !1029, inlinedAt: !1080)
!1084 = !DILocation(line: 181, column: 42, scope: !1029, inlinedAt: !1080)
!1085 = !DILocation(line: 182, column: 53, scope: !1029, inlinedAt: !1080)
!1086 = !DILocation(line: 182, column: 50, scope: !1029, inlinedAt: !1080)
!1087 = !DILocation(line: 180, column: 9, scope: !1024, inlinedAt: !1080)
!1088 = !DILocation(line: 190, column: 18, scope: !1040, inlinedAt: !1080)
!1089 = !DILocation(line: 191, column: 32, scope: !1040, inlinedAt: !1080)
!1090 = !DILocation(line: 191, column: 54, scope: !1040, inlinedAt: !1080)
!1091 = !DILocation(line: 191, column: 9, scope: !1040, inlinedAt: !1080)
!1092 = !DILocation(line: 192, column: 5, scope: !1040, inlinedAt: !1080)
!1093 = !DILocation(line: 193, column: 1, scope: !1024, inlinedAt: !1080)
!1094 = !DILocation(line: 234, column: 38, scope: !1071)
!1095 = !DILocation(line: 0, scope: !1060)
!1096 = !DILocation(line: 238, column: 1, scope: !1047)
!1097 = !DILocation(line: 664, column: 37, scope: !1067)
!1098 = !DILocation(line: 665, column: 15, scope: !1067)
!1099 = !DILocation(line: 665, column: 12, scope: !1067)
!1100 = !DILocation(line: 665, column: 22, scope: !1067)
!1101 = !DILocation(line: 665, column: 25, scope: !1067)
!1102 = !DILocation(line: 665, column: 5, scope: !1067)
!1103 = distinct !DISubprogram(name: "_addReplyToBuffer", scope: !3, file: !3, line: 244, type: !1104, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1106)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!18, !6, !317, !142}
!1106 = !{!1107, !1108, !1109, !1110}
!1107 = !DILocalVariable(name: "c", arg: 1, scope: !1103, file: !3, line: 244, type: !6)
!1108 = !DILocalVariable(name: "s", arg: 2, scope: !1103, file: !3, line: 244, type: !317)
!1109 = !DILocalVariable(name: "len", arg: 3, scope: !1103, file: !3, line: 244, type: !142)
!1110 = !DILocalVariable(name: "available", scope: !1103, file: !3, line: 245, type: !142)
!1111 = !DILocation(line: 244, column: 31, scope: !1103)
!1112 = !DILocation(line: 244, column: 46, scope: !1103)
!1113 = !DILocation(line: 244, column: 56, scope: !1103)
!1114 = !DILocation(line: 245, column: 42, scope: !1103)
!1115 = !DILocation(line: 245, column: 39, scope: !1103)
!1116 = !DILocation(line: 247, column: 12, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 247, column: 9)
!1118 = !DILocation(line: 247, column: 18, scope: !1117)
!1119 = !DILocation(line: 247, column: 9, scope: !1103)
!1120 = !DILocation(line: 245, column: 38, scope: !1103)
!1121 = !DILocation(line: 245, column: 12, scope: !1103)
!1122 = !DILocation(line: 251, column: 9, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 251, column: 9)
!1124 = !DILocation(line: 251, column: 30, scope: !1123)
!1125 = !DILocation(line: 254, column: 13, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 254, column: 9)
!1127 = !DILocation(line: 251, column: 9, scope: !1103)
!1128 = !DILocation(line: 256, column: 18, scope: !1103)
!1129 = !DILocation(line: 256, column: 5, scope: !1103)
!1130 = !DILocation(line: 257, column: 14, scope: !1103)
!1131 = !DILocation(line: 258, column: 5, scope: !1103)
!1132 = !DILocation(line: 0, scope: !1103)
!1133 = !DILocation(line: 259, column: 1, scope: !1103)
!1134 = distinct !DISubprogram(name: "_addReplyStringToList", scope: !3, file: !3, line: 261, type: !1135, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1137)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !6, !317, !142}
!1137 = !{!1138, !1139, !1140, !1141, !1142, !1143, !1146, !1147}
!1138 = !DILocalVariable(name: "c", arg: 1, scope: !1134, file: !3, line: 261, type: !6)
!1139 = !DILocalVariable(name: "s", arg: 2, scope: !1134, file: !3, line: 261, type: !317)
!1140 = !DILocalVariable(name: "len", arg: 3, scope: !1134, file: !3, line: 261, type: !142)
!1141 = !DILocalVariable(name: "ln", scope: !1134, file: !3, line: 264, type: !103)
!1142 = !DILocalVariable(name: "tail", scope: !1134, file: !3, line: 265, type: !399)
!1143 = !DILocalVariable(name: "avail", scope: !1144, file: !3, line: 275, type: !142)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 272, column: 15)
!1145 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 272, column: 9)
!1146 = !DILocalVariable(name: "copy", scope: !1144, file: !3, line: 276, type: !142)
!1147 = !DILocalVariable(name: "size", scope: !1148, file: !3, line: 285, type: !142)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 282, column: 14)
!1149 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 282, column: 9)
!1150 = !DILocation(line: 261, column: 36, scope: !1134)
!1151 = !DILocation(line: 261, column: 51, scope: !1134)
!1152 = !DILocation(line: 261, column: 61, scope: !1134)
!1153 = !DILocation(line: 262, column: 12, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 262, column: 9)
!1155 = !DILocation(line: 262, column: 18, scope: !1154)
!1156 = !DILocation(line: 262, column: 9, scope: !1134)
!1157 = !DILocation(line: 264, column: 20, scope: !1134)
!1158 = !DILocation(line: 264, column: 15, scope: !1134)
!1159 = !DILocation(line: 265, column: 30, scope: !1134)
!1160 = !DILocation(line: 265, column: 34, scope: !1134)
!1161 = !{!1162, !381, i64 16}
!1162 = !{!"listNode", !381, i64 0, !381, i64 8, !381, i64 16}
!1163 = !DILocation(line: 265, column: 23, scope: !1134)
!1164 = !DILocation(line: 272, column: 9, scope: !1145)
!1165 = !DILocation(line: 272, column: 9, scope: !1134)
!1166 = !DILocation(line: 275, column: 30, scope: !1144)
!1167 = !DILocation(line: 275, column: 43, scope: !1144)
!1168 = !DILocation(line: 275, column: 35, scope: !1144)
!1169 = !DILocation(line: 275, column: 16, scope: !1144)
!1170 = !DILocation(line: 276, column: 29, scope: !1144)
!1171 = !DILocation(line: 276, column: 23, scope: !1144)
!1172 = !DILocation(line: 276, column: 16, scope: !1144)
!1173 = !DILocation(line: 277, column: 26, scope: !1144)
!1174 = !DILocation(line: 277, column: 9, scope: !1144)
!1175 = !DILocation(line: 278, column: 20, scope: !1144)
!1176 = !DILocation(line: 279, column: 11, scope: !1144)
!1177 = !DILocation(line: 280, column: 13, scope: !1144)
!1178 = !DILocation(line: 281, column: 5, scope: !1144)
!1179 = !DILocation(line: 282, column: 9, scope: !1149)
!1180 = !DILocation(line: 282, column: 9, scope: !1134)
!1181 = !DILocation(line: 285, column: 23, scope: !1148)
!1182 = !DILocation(line: 285, column: 16, scope: !1148)
!1183 = !DILocation(line: 286, column: 29, scope: !1148)
!1184 = !DILocation(line: 286, column: 16, scope: !1148)
!1185 = !DILocation(line: 288, column: 22, scope: !1148)
!1186 = !DILocation(line: 288, column: 43, scope: !1148)
!1187 = !DILocation(line: 288, column: 15, scope: !1148)
!1188 = !DILocation(line: 288, column: 20, scope: !1148)
!1189 = !DILocation(line: 289, column: 15, scope: !1148)
!1190 = !DILocation(line: 289, column: 20, scope: !1148)
!1191 = !DILocation(line: 290, column: 22, scope: !1148)
!1192 = !DILocation(line: 290, column: 9, scope: !1148)
!1193 = !DILocation(line: 291, column: 28, scope: !1148)
!1194 = !DILocation(line: 291, column: 9, scope: !1148)
!1195 = !DILocation(line: 292, column: 33, scope: !1148)
!1196 = !DILocation(line: 292, column: 12, scope: !1148)
!1197 = !DILocation(line: 292, column: 24, scope: !1148)
!1198 = !DILocation(line: 293, column: 5, scope: !1148)
!1199 = !DILocation(line: 294, column: 5, scope: !1134)
!1200 = !DILocation(line: 295, column: 1, scope: !1134)
!1201 = distinct !DISubprogram(name: "asyncCloseClientOnOutputBufferLimitReached", scope: !3, file: !3, line: 2128, type: !4, isLocal: false, isDefinition: true, scopeLine: 2128, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1202)
!1202 = !{!1203, !1204}
!1203 = !DILocalVariable(name: "c", arg: 1, scope: !1201, file: !3, line: 2128, type: !6)
!1204 = !DILocalVariable(name: "client", scope: !1205, file: !3, line: 2133, type: !137)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 2132, column: 43)
!1206 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 2132, column: 9)
!1207 = !DILocation(line: 2128, column: 57, scope: !1201)
!1208 = !DILocation(line: 2129, column: 12, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 2129, column: 9)
!1210 = !DILocation(line: 2129, column: 15, scope: !1209)
!1211 = !DILocation(line: 2129, column: 9, scope: !1201)
!1212 = !DILocation(line: 2130, column: 5, scope: !1201)
!1213 = !DILocation(line: 2131, column: 24, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 2131, column: 9)
!1215 = !DILocation(line: 2131, column: 29, scope: !1214)
!1216 = !DILocation(line: 2131, column: 35, scope: !1214)
!1217 = !DILocation(line: 2131, column: 41, scope: !1214)
!1218 = !DILocation(line: 2131, column: 9, scope: !1201)
!1219 = !DILocalVariable(name: "c", arg: 1, scope: !1220, file: !3, line: 2083, type: !6)
!1220 = distinct !DISubprogram(name: "checkClientOutputBufferLimits", scope: !3, file: !3, line: 2083, type: !1048, isLocal: false, isDefinition: true, scopeLine: 2083, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1221)
!1221 = !{!1219, !1222, !1223, !1224, !1225, !1226}
!1222 = !DILocalVariable(name: "soft", scope: !1220, file: !3, line: 2084, type: !18)
!1223 = !DILocalVariable(name: "hard", scope: !1220, file: !3, line: 2084, type: !18)
!1224 = !DILocalVariable(name: "class", scope: !1220, file: !3, line: 2084, type: !18)
!1225 = !DILocalVariable(name: "used_mem", scope: !1220, file: !3, line: 2085, type: !16)
!1226 = !DILocalVariable(name: "elapsed", scope: !1227, file: !3, line: 2106, type: !182)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 2105, column: 16)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 2102, column: 13)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 2101, column: 15)
!1230 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 2101, column: 9)
!1231 = !DILocation(line: 2083, column: 43, scope: !1220, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 2132, column: 9, scope: !1206)
!1233 = !DILocation(line: 2084, column: 9, scope: !1220, inlinedAt: !1232)
!1234 = !DILocation(line: 2084, column: 19, scope: !1220, inlinedAt: !1232)
!1235 = !DILocalVariable(name: "c", arg: 1, scope: !1236, file: !3, line: 2036, type: !6)
!1236 = distinct !DISubprogram(name: "getClientOutputBufferMemoryUsage", scope: !3, file: !3, line: 2036, type: !1237, isLocal: false, isDefinition: true, scopeLine: 2036, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1239)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!16, !6}
!1239 = !{!1235, !1240}
!1240 = !DILocalVariable(name: "list_item_size", scope: !1236, file: !3, line: 2037, type: !16)
!1241 = !DILocation(line: 2036, column: 56, scope: !1236, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 2085, column: 30, scope: !1220, inlinedAt: !1232)
!1243 = !DILocation(line: 2037, column: 19, scope: !1236, inlinedAt: !1242)
!1244 = !DILocation(line: 2038, column: 45, scope: !1236, inlinedAt: !1242)
!1245 = !DILocation(line: 2038, column: 44, scope: !1236, inlinedAt: !1242)
!1246 = !DILocation(line: 2038, column: 27, scope: !1236, inlinedAt: !1242)
!1247 = !DILocation(line: 2038, column: 5, scope: !1236, inlinedAt: !1242)
!1248 = !DILocation(line: 2085, column: 19, scope: !1220, inlinedAt: !1232)
!1249 = !DILocalVariable(name: "c", arg: 1, scope: !1250, file: !3, line: 2050, type: !6)
!1250 = distinct !DISubprogram(name: "getClientType", scope: !3, file: !3, line: 2050, type: !1048, isLocal: false, isDefinition: true, scopeLine: 2050, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1251)
!1251 = !{!1249}
!1252 = !DILocation(line: 2050, column: 27, scope: !1250, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 2087, column: 13, scope: !1220, inlinedAt: !1232)
!1254 = !DILocation(line: 2051, column: 18, scope: !1255, inlinedAt: !1253)
!1255 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 2051, column: 9)
!1256 = !DILocation(line: 2051, column: 9, scope: !1250, inlinedAt: !1253)
!1257 = !DILocation(line: 2052, column: 35, scope: !1258, inlinedAt: !1253)
!1258 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 2052, column: 9)
!1259 = !DILocation(line: 2055, column: 5, scope: !1250, inlinedAt: !1253)
!1260 = !DILocation(line: 2056, column: 1, scope: !1250, inlinedAt: !1253)
!1261 = !DILocation(line: 2084, column: 29, scope: !1220, inlinedAt: !1232)
!1262 = !DILocation(line: 2090, column: 9, scope: !1220, inlinedAt: !1232)
!1263 = !DILocation(line: 2092, column: 42, scope: !1264, inlinedAt: !1232)
!1264 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 2092, column: 9)
!1265 = !{!1266, !443, i64 0}
!1266 = !{!"clientBufferLimitsConfig", !443, i64 0, !443, i64 8, !411, i64 16}
!1267 = !DILocation(line: 2092, column: 59, scope: !1264, inlinedAt: !1232)
!1268 = !DILocation(line: 2095, column: 42, scope: !1269, inlinedAt: !1232)
!1269 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 2095, column: 9)
!1270 = !{!1266, !443, i64 8}
!1271 = !DILocation(line: 2095, column: 59, scope: !1269, inlinedAt: !1232)
!1272 = !DILocation(line: 0, scope: !1273, inlinedAt: !1232)
!1273 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 2115, column: 12)
!1274 = !DILocation(line: 2101, column: 9, scope: !1220, inlinedAt: !1232)
!1275 = !DILocation(line: 2102, column: 16, scope: !1228, inlinedAt: !1232)
!1276 = !DILocation(line: 2102, column: 45, scope: !1228, inlinedAt: !1232)
!1277 = !DILocation(line: 0, scope: !1227, inlinedAt: !1232)
!1278 = !DILocation(line: 2102, column: 13, scope: !1229, inlinedAt: !1232)
!1279 = !DILocation(line: 2103, column: 45, scope: !1280, inlinedAt: !1232)
!1280 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 2102, column: 51)
!1281 = !DILocation(line: 2105, column: 9, scope: !1280, inlinedAt: !1232)
!1282 = !DILocation(line: 2106, column: 46, scope: !1227, inlinedAt: !1232)
!1283 = !DILocation(line: 2106, column: 20, scope: !1227, inlinedAt: !1232)
!1284 = !DILocation(line: 2109, column: 50, scope: !1285, inlinedAt: !1232)
!1285 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 2108, column: 17)
!1286 = !{!1266, !411, i64 16}
!1287 = !DILocation(line: 2108, column: 25, scope: !1285, inlinedAt: !1232)
!1288 = !DILocation(line: 2108, column: 17, scope: !1227, inlinedAt: !1232)
!1289 = !DILocation(line: 2116, column: 41, scope: !1273, inlinedAt: !1232)
!1290 = !DILocation(line: 0, scope: !1269, inlinedAt: !1232)
!1291 = !DILocation(line: 2118, column: 17, scope: !1220, inlinedAt: !1232)
!1292 = !DILocation(line: 2118, column: 5, scope: !1220, inlinedAt: !1232)
!1293 = !DILocation(line: 2132, column: 9, scope: !1206)
!1294 = !DILocation(line: 2132, column: 9, scope: !1201)
!1295 = !DILocation(line: 2133, column: 42, scope: !1205)
!1296 = !DILocation(line: 2133, column: 22, scope: !1205)
!1297 = !DILocation(line: 2133, column: 13, scope: !1205)
!1298 = !DILocalVariable(name: "c", arg: 1, scope: !1299, file: !3, line: 957, type: !6)
!1299 = distinct !DISubprogram(name: "freeClientAsync", scope: !3, file: !3, line: 957, type: !4, isLocal: false, isDefinition: true, scopeLine: 957, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1300)
!1300 = !{!1298}
!1301 = !DILocation(line: 957, column: 30, scope: !1299, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 2135, column: 9, scope: !1205)
!1303 = !DILocation(line: 958, column: 12, scope: !1304, inlinedAt: !1302)
!1304 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 958, column: 9)
!1305 = !DILocation(line: 958, column: 38, scope: !1304, inlinedAt: !1302)
!1306 = !DILocation(line: 959, column: 14, scope: !1299, inlinedAt: !1302)
!1307 = !DILocation(line: 960, column: 28, scope: !1299, inlinedAt: !1302)
!1308 = !{!442, !381, i64 520}
!1309 = !DILocation(line: 960, column: 45, scope: !1299, inlinedAt: !1302)
!1310 = !DILocation(line: 960, column: 5, scope: !1299, inlinedAt: !1302)
!1311 = !DILocation(line: 961, column: 1, scope: !1299, inlinedAt: !1302)
!1312 = !DILocation(line: 2136, column: 9, scope: !1205)
!1313 = !DILocation(line: 2137, column: 9, scope: !1205)
!1314 = !DILocation(line: 2138, column: 5, scope: !1205)
!1315 = !DILocation(line: 2139, column: 1, scope: !1201)
!1316 = distinct !DISubprogram(name: "addReply", scope: !3, file: !3, line: 303, type: !1317, isLocal: false, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1319)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !6, !126}
!1319 = !{!1320, !1321, !1322, !1329}
!1320 = !DILocalVariable(name: "c", arg: 1, scope: !1316, file: !3, line: 303, type: !6)
!1321 = !DILocalVariable(name: "obj", arg: 2, scope: !1316, file: !3, line: 303, type: !126)
!1322 = !DILocalVariable(name: "buf", scope: !1323, file: !3, line: 313, type: !1326)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 309, column: 51)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 309, column: 16)
!1325 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 306, column: 9)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 256, elements: !1327)
!1327 = !{!1328}
!1328 = !DISubrange(count: 32)
!1329 = !DILocalVariable(name: "len", scope: !1323, file: !3, line: 314, type: !142)
!1330 = !DILocation(line: 303, column: 23, scope: !1316)
!1331 = !DILocation(line: 303, column: 32, scope: !1316)
!1332 = !DILocation(line: 217, column: 34, scope: !1047, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 304, column: 9, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 304, column: 9)
!1335 = !DILocation(line: 220, column: 12, scope: !1054, inlinedAt: !1333)
!1336 = !DILocation(line: 220, column: 18, scope: !1054, inlinedAt: !1333)
!1337 = !DILocation(line: 220, column: 9, scope: !1047, inlinedAt: !1333)
!1338 = !DILocation(line: 223, column: 18, scope: !1058, inlinedAt: !1333)
!1339 = !DILocation(line: 227, column: 36, scope: !1060, inlinedAt: !1333)
!1340 = !DILocation(line: 223, column: 9, scope: !1047, inlinedAt: !1333)
!1341 = !DILocation(line: 230, column: 12, scope: !1063, inlinedAt: !1333)
!1342 = !DILocation(line: 230, column: 15, scope: !1063, inlinedAt: !1333)
!1343 = !DILocation(line: 230, column: 9, scope: !1047, inlinedAt: !1333)
!1344 = !DILocation(line: 664, column: 37, scope: !1067, inlinedAt: !1345)
!1345 = distinct !DILocation(line: 234, column: 10, scope: !1071, inlinedAt: !1333)
!1346 = !DILocation(line: 665, column: 15, scope: !1067, inlinedAt: !1345)
!1347 = !DILocation(line: 665, column: 12, scope: !1067, inlinedAt: !1345)
!1348 = !DILocation(line: 665, column: 22, scope: !1067, inlinedAt: !1345)
!1349 = !DILocation(line: 665, column: 5, scope: !1067, inlinedAt: !1345)
!1350 = !DILocation(line: 234, column: 9, scope: !1047, inlinedAt: !1333)
!1351 = !DILocation(line: 665, column: 25, scope: !1067, inlinedAt: !1345)
!1352 = !DILocation(line: 176, column: 40, scope: !1024, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 234, column: 38, scope: !1071, inlinedAt: !1333)
!1354 = !DILocation(line: 180, column: 20, scope: !1029, inlinedAt: !1353)
!1355 = !DILocation(line: 180, column: 44, scope: !1029, inlinedAt: !1353)
!1356 = !DILocation(line: 181, column: 13, scope: !1029, inlinedAt: !1353)
!1357 = !DILocation(line: 181, column: 42, scope: !1029, inlinedAt: !1353)
!1358 = !DILocation(line: 182, column: 53, scope: !1029, inlinedAt: !1353)
!1359 = !DILocation(line: 182, column: 50, scope: !1029, inlinedAt: !1353)
!1360 = !DILocation(line: 180, column: 9, scope: !1024, inlinedAt: !1353)
!1361 = !DILocation(line: 190, column: 18, scope: !1040, inlinedAt: !1353)
!1362 = !DILocation(line: 191, column: 32, scope: !1040, inlinedAt: !1353)
!1363 = !DILocation(line: 191, column: 54, scope: !1040, inlinedAt: !1353)
!1364 = !DILocation(line: 191, column: 9, scope: !1040, inlinedAt: !1353)
!1365 = !DILocation(line: 192, column: 5, scope: !1040, inlinedAt: !1353)
!1366 = !DILocation(line: 193, column: 1, scope: !1024, inlinedAt: !1353)
!1367 = !DILocation(line: 234, column: 38, scope: !1071, inlinedAt: !1333)
!1368 = !DILocation(line: 238, column: 1, scope: !1047, inlinedAt: !1333)
!1369 = !DILocation(line: 306, column: 9, scope: !1325)
!1370 = !DILocation(line: 307, column: 38, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 307, column: 13)
!1372 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 306, column: 32)
!1373 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 307, column: 42, scope: !1371)
!1375 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !1374)
!1376 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !1374)
!1377 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !1374)
!1378 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !1374)
!1379 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !1374)
!1380 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !1374)
!1381 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !1374)
!1382 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !1374)
!1383 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !1374)
!1384 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !1374)
!1385 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !1374)
!1386 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !1374)
!1387 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !1374)
!1388 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !1374)
!1389 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !1374)
!1390 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !1374)
!1391 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !1374)
!1392 = !DILocation(line: 0, scope: !851, inlinedAt: !1374)
!1393 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !1374)
!1394 = !DILocation(line: 244, column: 31, scope: !1103, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 307, column: 13, scope: !1371)
!1396 = !DILocation(line: 244, column: 46, scope: !1103, inlinedAt: !1395)
!1397 = !DILocation(line: 244, column: 56, scope: !1103, inlinedAt: !1395)
!1398 = !DILocation(line: 245, column: 42, scope: !1103, inlinedAt: !1395)
!1399 = !DILocation(line: 245, column: 39, scope: !1103, inlinedAt: !1395)
!1400 = !DILocation(line: 247, column: 12, scope: !1117, inlinedAt: !1395)
!1401 = !DILocation(line: 247, column: 18, scope: !1117, inlinedAt: !1395)
!1402 = !DILocation(line: 247, column: 9, scope: !1103, inlinedAt: !1395)
!1403 = !DILocation(line: 245, column: 38, scope: !1103, inlinedAt: !1395)
!1404 = !DILocation(line: 245, column: 12, scope: !1103, inlinedAt: !1395)
!1405 = !DILocation(line: 251, column: 9, scope: !1123, inlinedAt: !1395)
!1406 = !DILocation(line: 251, column: 30, scope: !1123, inlinedAt: !1395)
!1407 = !DILocation(line: 254, column: 13, scope: !1126, inlinedAt: !1395)
!1408 = !DILocation(line: 251, column: 9, scope: !1103, inlinedAt: !1395)
!1409 = !DILocation(line: 256, column: 18, scope: !1103, inlinedAt: !1395)
!1410 = !DILocation(line: 256, column: 5, scope: !1103, inlinedAt: !1395)
!1411 = !DILocation(line: 257, column: 14, scope: !1103, inlinedAt: !1395)
!1412 = !DILocation(line: 258, column: 5, scope: !1103, inlinedAt: !1395)
!1413 = !DILocation(line: 259, column: 1, scope: !1103, inlinedAt: !1395)
!1414 = !DILocation(line: 307, column: 13, scope: !1372)
!1415 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 308, column: 46, scope: !1371)
!1417 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !1416)
!1418 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !1416)
!1419 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !1416)
!1420 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !1416)
!1421 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !1416)
!1422 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !1416)
!1423 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !1416)
!1424 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !1416)
!1425 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !1416)
!1426 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !1416)
!1427 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !1416)
!1428 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !1416)
!1429 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !1416)
!1430 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !1416)
!1431 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !1416)
!1432 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !1416)
!1433 = !DILocation(line: 0, scope: !851, inlinedAt: !1416)
!1434 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !1416)
!1435 = !DILocation(line: 308, column: 13, scope: !1371)
!1436 = !DILocation(line: 313, column: 9, scope: !1323)
!1437 = !DILocation(line: 313, column: 14, scope: !1323)
!1438 = !DILocation(line: 314, column: 59, scope: !1323)
!1439 = !DILocation(line: 314, column: 22, scope: !1323)
!1440 = !DILocation(line: 314, column: 16, scope: !1323)
!1441 = !DILocation(line: 244, column: 31, scope: !1103, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 315, column: 13, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 315, column: 13)
!1444 = !DILocation(line: 244, column: 46, scope: !1103, inlinedAt: !1442)
!1445 = !DILocation(line: 244, column: 56, scope: !1103, inlinedAt: !1442)
!1446 = !DILocation(line: 245, column: 42, scope: !1103, inlinedAt: !1442)
!1447 = !DILocation(line: 245, column: 39, scope: !1103, inlinedAt: !1442)
!1448 = !DILocation(line: 247, column: 12, scope: !1117, inlinedAt: !1442)
!1449 = !DILocation(line: 247, column: 18, scope: !1117, inlinedAt: !1442)
!1450 = !DILocation(line: 247, column: 9, scope: !1103, inlinedAt: !1442)
!1451 = !DILocation(line: 245, column: 38, scope: !1103, inlinedAt: !1442)
!1452 = !DILocation(line: 245, column: 12, scope: !1103, inlinedAt: !1442)
!1453 = !DILocation(line: 251, column: 9, scope: !1123, inlinedAt: !1442)
!1454 = !DILocation(line: 251, column: 30, scope: !1123, inlinedAt: !1442)
!1455 = !DILocation(line: 254, column: 13, scope: !1126, inlinedAt: !1442)
!1456 = !DILocation(line: 251, column: 9, scope: !1103, inlinedAt: !1442)
!1457 = !DILocation(line: 256, column: 18, scope: !1103, inlinedAt: !1442)
!1458 = !DILocation(line: 256, column: 5, scope: !1103, inlinedAt: !1442)
!1459 = !DILocation(line: 257, column: 14, scope: !1103, inlinedAt: !1442)
!1460 = !DILocation(line: 258, column: 5, scope: !1103, inlinedAt: !1442)
!1461 = !DILocation(line: 259, column: 1, scope: !1103, inlinedAt: !1442)
!1462 = !DILocation(line: 315, column: 13, scope: !1323)
!1463 = !DILocation(line: 316, column: 13, scope: !1443)
!1464 = !DILocation(line: 317, column: 5, scope: !1324)
!1465 = !DILocation(line: 318, column: 9, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 317, column: 12)
!1467 = !DILocation(line: 320, column: 1, scope: !1316)
!1468 = distinct !DISubprogram(name: "addReplySds", scope: !3, file: !3, line: 324, type: !1469, isLocal: false, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1471)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{null, !6, !137}
!1471 = !{!1472, !1473}
!1472 = !DILocalVariable(name: "c", arg: 1, scope: !1468, file: !3, line: 324, type: !6)
!1473 = !DILocalVariable(name: "s", arg: 2, scope: !1468, file: !3, line: 324, type: !137)
!1474 = !DILocation(line: 324, column: 26, scope: !1468)
!1475 = !DILocation(line: 324, column: 33, scope: !1468)
!1476 = !DILocation(line: 217, column: 34, scope: !1047, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 325, column: 9, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 325, column: 9)
!1479 = !DILocation(line: 220, column: 12, scope: !1054, inlinedAt: !1477)
!1480 = !DILocation(line: 220, column: 18, scope: !1054, inlinedAt: !1477)
!1481 = !DILocation(line: 220, column: 9, scope: !1047, inlinedAt: !1477)
!1482 = !DILocation(line: 223, column: 18, scope: !1058, inlinedAt: !1477)
!1483 = !DILocation(line: 227, column: 36, scope: !1060, inlinedAt: !1477)
!1484 = !DILocation(line: 223, column: 9, scope: !1047, inlinedAt: !1477)
!1485 = !DILocation(line: 230, column: 12, scope: !1063, inlinedAt: !1477)
!1486 = !DILocation(line: 230, column: 15, scope: !1063, inlinedAt: !1477)
!1487 = !DILocation(line: 230, column: 9, scope: !1047, inlinedAt: !1477)
!1488 = !DILocation(line: 664, column: 37, scope: !1067, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 234, column: 10, scope: !1071, inlinedAt: !1477)
!1490 = !DILocation(line: 665, column: 15, scope: !1067, inlinedAt: !1489)
!1491 = !DILocation(line: 665, column: 12, scope: !1067, inlinedAt: !1489)
!1492 = !DILocation(line: 665, column: 22, scope: !1067, inlinedAt: !1489)
!1493 = !DILocation(line: 665, column: 5, scope: !1067, inlinedAt: !1489)
!1494 = !DILocation(line: 234, column: 9, scope: !1047, inlinedAt: !1477)
!1495 = !DILocation(line: 665, column: 25, scope: !1067, inlinedAt: !1489)
!1496 = !DILocation(line: 176, column: 40, scope: !1024, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 234, column: 38, scope: !1071, inlinedAt: !1477)
!1498 = !DILocation(line: 180, column: 20, scope: !1029, inlinedAt: !1497)
!1499 = !DILocation(line: 180, column: 44, scope: !1029, inlinedAt: !1497)
!1500 = !DILocation(line: 181, column: 13, scope: !1029, inlinedAt: !1497)
!1501 = !DILocation(line: 181, column: 42, scope: !1029, inlinedAt: !1497)
!1502 = !DILocation(line: 182, column: 53, scope: !1029, inlinedAt: !1497)
!1503 = !DILocation(line: 182, column: 50, scope: !1029, inlinedAt: !1497)
!1504 = !DILocation(line: 180, column: 9, scope: !1024, inlinedAt: !1497)
!1505 = !DILocation(line: 190, column: 18, scope: !1040, inlinedAt: !1497)
!1506 = !DILocation(line: 191, column: 32, scope: !1040, inlinedAt: !1497)
!1507 = !DILocation(line: 191, column: 54, scope: !1040, inlinedAt: !1497)
!1508 = !DILocation(line: 191, column: 9, scope: !1040, inlinedAt: !1497)
!1509 = !DILocation(line: 192, column: 5, scope: !1040, inlinedAt: !1497)
!1510 = !DILocation(line: 193, column: 1, scope: !1024, inlinedAt: !1497)
!1511 = !DILocation(line: 234, column: 38, scope: !1071, inlinedAt: !1477)
!1512 = !DILocation(line: 238, column: 1, scope: !1047, inlinedAt: !1477)
!1513 = !DILocation(line: 327, column: 9, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1478, file: !3, line: 325, column: 42)
!1515 = !DILocation(line: 328, column: 9, scope: !1514)
!1516 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !1517)
!1517 = distinct !DILocation(line: 330, column: 31, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1468, file: !3, line: 330, column: 9)
!1519 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !1517)
!1520 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !1517)
!1521 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !1517)
!1522 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !1517)
!1523 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !1517)
!1524 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !1517)
!1525 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !1517)
!1526 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !1517)
!1527 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !1517)
!1528 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !1517)
!1529 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !1517)
!1530 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !1517)
!1531 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !1517)
!1532 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !1517)
!1533 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !1517)
!1534 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !1517)
!1535 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !1517)
!1536 = !DILocation(line: 0, scope: !851, inlinedAt: !1517)
!1537 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !1517)
!1538 = !DILocation(line: 244, column: 31, scope: !1103, inlinedAt: !1539)
!1539 = distinct !DILocation(line: 330, column: 9, scope: !1518)
!1540 = !DILocation(line: 244, column: 46, scope: !1103, inlinedAt: !1539)
!1541 = !DILocation(line: 244, column: 56, scope: !1103, inlinedAt: !1539)
!1542 = !DILocation(line: 245, column: 42, scope: !1103, inlinedAt: !1539)
!1543 = !DILocation(line: 245, column: 39, scope: !1103, inlinedAt: !1539)
!1544 = !DILocation(line: 247, column: 12, scope: !1117, inlinedAt: !1539)
!1545 = !DILocation(line: 247, column: 18, scope: !1117, inlinedAt: !1539)
!1546 = !DILocation(line: 247, column: 9, scope: !1103, inlinedAt: !1539)
!1547 = !DILocation(line: 245, column: 38, scope: !1103, inlinedAt: !1539)
!1548 = !DILocation(line: 245, column: 12, scope: !1103, inlinedAt: !1539)
!1549 = !DILocation(line: 251, column: 9, scope: !1123, inlinedAt: !1539)
!1550 = !DILocation(line: 251, column: 30, scope: !1123, inlinedAt: !1539)
!1551 = !DILocation(line: 254, column: 13, scope: !1126, inlinedAt: !1539)
!1552 = !DILocation(line: 251, column: 9, scope: !1103, inlinedAt: !1539)
!1553 = !DILocation(line: 256, column: 18, scope: !1103, inlinedAt: !1539)
!1554 = !DILocation(line: 256, column: 5, scope: !1103, inlinedAt: !1539)
!1555 = !DILocation(line: 257, column: 14, scope: !1103, inlinedAt: !1539)
!1556 = !DILocation(line: 258, column: 5, scope: !1103, inlinedAt: !1539)
!1557 = !DILocation(line: 259, column: 1, scope: !1103, inlinedAt: !1539)
!1558 = !DILocation(line: 330, column: 9, scope: !1468)
!1559 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 331, column: 35, scope: !1518)
!1561 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !1560)
!1562 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !1560)
!1563 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !1560)
!1564 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !1560)
!1565 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !1560)
!1566 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !1560)
!1567 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !1560)
!1568 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !1560)
!1569 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !1560)
!1570 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !1560)
!1571 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !1560)
!1572 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !1560)
!1573 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !1560)
!1574 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !1560)
!1575 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !1560)
!1576 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !1560)
!1577 = !DILocation(line: 0, scope: !851, inlinedAt: !1560)
!1578 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !1560)
!1579 = !DILocation(line: 331, column: 9, scope: !1518)
!1580 = !DILocation(line: 332, column: 5, scope: !1468)
!1581 = !DILocation(line: 333, column: 1, scope: !1468)
!1582 = distinct !DISubprogram(name: "addReplyString", scope: !3, file: !3, line: 343, type: !1135, isLocal: false, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1583)
!1583 = !{!1584, !1585, !1586}
!1584 = !DILocalVariable(name: "c", arg: 1, scope: !1582, file: !3, line: 343, type: !6)
!1585 = !DILocalVariable(name: "s", arg: 2, scope: !1582, file: !3, line: 343, type: !317)
!1586 = !DILocalVariable(name: "len", arg: 3, scope: !1582, file: !3, line: 343, type: !142)
!1587 = !DILocation(line: 343, column: 29, scope: !1582)
!1588 = !DILocation(line: 343, column: 44, scope: !1582)
!1589 = !DILocation(line: 343, column: 54, scope: !1582)
!1590 = !DILocation(line: 217, column: 34, scope: !1047, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 344, column: 9, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 344, column: 9)
!1593 = !DILocation(line: 220, column: 12, scope: !1054, inlinedAt: !1591)
!1594 = !DILocation(line: 220, column: 18, scope: !1054, inlinedAt: !1591)
!1595 = !DILocation(line: 220, column: 9, scope: !1047, inlinedAt: !1591)
!1596 = !DILocation(line: 245, column: 42, scope: !1103, inlinedAt: !1597)
!1597 = distinct !DILocation(line: 345, column: 9, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 345, column: 9)
!1599 = !DILocation(line: 223, column: 18, scope: !1058, inlinedAt: !1591)
!1600 = !DILocation(line: 227, column: 36, scope: !1060, inlinedAt: !1591)
!1601 = !DILocation(line: 223, column: 9, scope: !1047, inlinedAt: !1591)
!1602 = !DILocation(line: 230, column: 12, scope: !1063, inlinedAt: !1591)
!1603 = !DILocation(line: 230, column: 15, scope: !1063, inlinedAt: !1591)
!1604 = !DILocation(line: 230, column: 9, scope: !1047, inlinedAt: !1591)
!1605 = !DILocation(line: 664, column: 37, scope: !1067, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 234, column: 10, scope: !1071, inlinedAt: !1591)
!1607 = !DILocation(line: 665, column: 15, scope: !1067, inlinedAt: !1606)
!1608 = !DILocation(line: 665, column: 12, scope: !1067, inlinedAt: !1606)
!1609 = !DILocation(line: 665, column: 22, scope: !1067, inlinedAt: !1606)
!1610 = !DILocation(line: 665, column: 5, scope: !1067, inlinedAt: !1606)
!1611 = !DILocation(line: 234, column: 9, scope: !1047, inlinedAt: !1591)
!1612 = !DILocation(line: 665, column: 25, scope: !1067, inlinedAt: !1606)
!1613 = !DILocation(line: 176, column: 40, scope: !1024, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 234, column: 38, scope: !1071, inlinedAt: !1591)
!1615 = !DILocation(line: 180, column: 20, scope: !1029, inlinedAt: !1614)
!1616 = !DILocation(line: 180, column: 44, scope: !1029, inlinedAt: !1614)
!1617 = !DILocation(line: 181, column: 13, scope: !1029, inlinedAt: !1614)
!1618 = !DILocation(line: 181, column: 42, scope: !1029, inlinedAt: !1614)
!1619 = !DILocation(line: 182, column: 53, scope: !1029, inlinedAt: !1614)
!1620 = !DILocation(line: 182, column: 50, scope: !1029, inlinedAt: !1614)
!1621 = !DILocation(line: 180, column: 9, scope: !1024, inlinedAt: !1614)
!1622 = !DILocation(line: 190, column: 18, scope: !1040, inlinedAt: !1614)
!1623 = !DILocation(line: 191, column: 32, scope: !1040, inlinedAt: !1614)
!1624 = !DILocation(line: 191, column: 54, scope: !1040, inlinedAt: !1614)
!1625 = !DILocation(line: 191, column: 9, scope: !1040, inlinedAt: !1614)
!1626 = !DILocation(line: 247, column: 12, scope: !1117, inlinedAt: !1597)
!1627 = !DILocation(line: 192, column: 5, scope: !1040, inlinedAt: !1614)
!1628 = !DILocation(line: 193, column: 1, scope: !1024, inlinedAt: !1614)
!1629 = !DILocation(line: 234, column: 38, scope: !1071, inlinedAt: !1591)
!1630 = !DILocation(line: 238, column: 1, scope: !1047, inlinedAt: !1591)
!1631 = !DILocation(line: 244, column: 31, scope: !1103, inlinedAt: !1597)
!1632 = !DILocation(line: 244, column: 46, scope: !1103, inlinedAt: !1597)
!1633 = !DILocation(line: 244, column: 56, scope: !1103, inlinedAt: !1597)
!1634 = !DILocation(line: 245, column: 39, scope: !1103, inlinedAt: !1597)
!1635 = !DILocation(line: 247, column: 18, scope: !1117, inlinedAt: !1597)
!1636 = !DILocation(line: 247, column: 9, scope: !1103, inlinedAt: !1597)
!1637 = !DILocation(line: 245, column: 38, scope: !1103, inlinedAt: !1597)
!1638 = !DILocation(line: 245, column: 12, scope: !1103, inlinedAt: !1597)
!1639 = !DILocation(line: 251, column: 9, scope: !1123, inlinedAt: !1597)
!1640 = !DILocation(line: 251, column: 30, scope: !1123, inlinedAt: !1597)
!1641 = !DILocation(line: 254, column: 13, scope: !1126, inlinedAt: !1597)
!1642 = !DILocation(line: 251, column: 9, scope: !1103, inlinedAt: !1597)
!1643 = !DILocation(line: 256, column: 18, scope: !1103, inlinedAt: !1597)
!1644 = !DILocation(line: 256, column: 5, scope: !1103, inlinedAt: !1597)
!1645 = !DILocation(line: 257, column: 14, scope: !1103, inlinedAt: !1597)
!1646 = !DILocation(line: 258, column: 5, scope: !1103, inlinedAt: !1597)
!1647 = !DILocation(line: 259, column: 1, scope: !1103, inlinedAt: !1597)
!1648 = !DILocation(line: 345, column: 9, scope: !1582)
!1649 = !DILocation(line: 346, column: 9, scope: !1598)
!1650 = !DILocation(line: 347, column: 1, scope: !1582)
!1651 = distinct !DISubprogram(name: "addReplyErrorLength", scope: !3, file: !3, line: 357, type: !1135, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1652)
!1652 = !{!1653, !1654, !1655, !1656, !1659, !1660}
!1653 = !DILocalVariable(name: "c", arg: 1, scope: !1651, file: !3, line: 357, type: !6)
!1654 = !DILocalVariable(name: "s", arg: 2, scope: !1651, file: !3, line: 357, type: !317)
!1655 = !DILocalVariable(name: "len", arg: 3, scope: !1651, file: !3, line: 357, type: !142)
!1656 = !DILocalVariable(name: "to", scope: !1657, file: !3, line: 375, type: !139)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 374, column: 82)
!1658 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 374, column: 9)
!1659 = !DILocalVariable(name: "from", scope: !1657, file: !3, line: 376, type: !139)
!1660 = !DILocalVariable(name: "cmdname", scope: !1657, file: !3, line: 377, type: !139)
!1661 = !DILocation(line: 357, column: 34, scope: !1651)
!1662 = !DILocation(line: 357, column: 49, scope: !1651)
!1663 = !DILocation(line: 357, column: 59, scope: !1651)
!1664 = !DILocation(line: 360, column: 10, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 360, column: 9)
!1666 = !DILocation(line: 360, column: 14, scope: !1665)
!1667 = !DILocation(line: 360, column: 17, scope: !1665)
!1668 = !DILocation(line: 360, column: 22, scope: !1665)
!1669 = !DILocation(line: 360, column: 9, scope: !1651)
!1670 = !DILocation(line: 360, column: 30, scope: !1665)
!1671 = !DILocation(line: 361, column: 5, scope: !1651)
!1672 = !DILocation(line: 362, column: 5, scope: !1651)
!1673 = !DILocation(line: 374, column: 12, scope: !1658)
!1674 = !DILocation(line: 374, column: 18, scope: !1658)
!1675 = !DILocation(line: 374, column: 63, scope: !1658)
!1676 = !DILocation(line: 374, column: 49, scope: !1658)
!1677 = !DILocation(line: 375, column: 29, scope: !1657)
!1678 = !DILocation(line: 375, column: 20, scope: !1657)
!1679 = !DILocation(line: 375, column: 15, scope: !1657)
!1680 = !DILocation(line: 376, column: 22, scope: !1657)
!1681 = !DILocation(line: 376, column: 15, scope: !1657)
!1682 = !DILocation(line: 377, column: 28, scope: !1657)
!1683 = !{!456, !381, i64 88}
!1684 = !DILocation(line: 377, column: 25, scope: !1657)
!1685 = !DILocation(line: 377, column: 50, scope: !1657)
!1686 = !{!1687, !381, i64 0}
!1687 = !{!"redisCommand", !381, i64 0, !381, i64 8, !378, i64 16, !381, i64 24, !378, i64 32, !381, i64 40, !378, i64 48, !378, i64 52, !378, i64 56, !443, i64 64, !443, i64 72}
!1688 = !DILocation(line: 377, column: 15, scope: !1657)
!1689 = !DILocation(line: 378, column: 9, scope: !1657)
!1690 = !DILocation(line: 381, column: 5, scope: !1657)
!1691 = !DILocation(line: 382, column: 1, scope: !1651)
!1692 = distinct !DISubprogram(name: "addReplyError", scope: !3, file: !3, line: 384, type: !1693, isLocal: false, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1695)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{null, !6, !317}
!1695 = !{!1696, !1697}
!1696 = !DILocalVariable(name: "c", arg: 1, scope: !1692, file: !3, line: 384, type: !6)
!1697 = !DILocalVariable(name: "err", arg: 2, scope: !1692, file: !3, line: 384, type: !317)
!1698 = !DILocation(line: 384, column: 28, scope: !1692)
!1699 = !DILocation(line: 384, column: 43, scope: !1692)
!1700 = !DILocation(line: 385, column: 31, scope: !1692)
!1701 = !DILocation(line: 385, column: 5, scope: !1692)
!1702 = !DILocation(line: 386, column: 1, scope: !1692)
!1703 = distinct !DISubprogram(name: "addReplyErrorFormat", scope: !3, file: !3, line: 388, type: !1704, isLocal: false, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1706)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{null, !6, !317, null}
!1706 = !{!1707, !1708, !1709, !1710, !1711, !1715}
!1707 = !DILocalVariable(name: "c", arg: 1, scope: !1703, file: !3, line: 388, type: !6)
!1708 = !DILocalVariable(name: "fmt", arg: 2, scope: !1703, file: !3, line: 388, type: !317)
!1709 = !DILocalVariable(name: "l", scope: !1703, file: !3, line: 389, type: !142)
!1710 = !DILocalVariable(name: "j", scope: !1703, file: !3, line: 389, type: !142)
!1711 = !DILocalVariable(name: "ap", scope: !1703, file: !3, line: 390, type: !1712)
!1712 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1713, line: 46, baseType: !1714)
!1713 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !323, line: 51, baseType: !324)
!1715 = !DILocalVariable(name: "s", scope: !1703, file: !3, line: 392, type: !137)
!1716 = !DILocation(line: 388, column: 34, scope: !1703)
!1717 = !DILocation(line: 388, column: 49, scope: !1703)
!1718 = !DILocation(line: 390, column: 5, scope: !1703)
!1719 = !DILocation(line: 390, column: 13, scope: !1703)
!1720 = !DILocation(line: 391, column: 5, scope: !1703)
!1721 = !DILocation(line: 392, column: 27, scope: !1703)
!1722 = !DILocation(line: 392, column: 13, scope: !1703)
!1723 = !DILocation(line: 392, column: 9, scope: !1703)
!1724 = !DILocation(line: 393, column: 5, scope: !1703)
!1725 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 396, column: 9, scope: !1703)
!1727 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !1726)
!1728 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !1726)
!1729 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !1726)
!1730 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !1726)
!1731 = !DILocation(line: 389, column: 12, scope: !1703)
!1732 = !DILocation(line: 389, column: 15, scope: !1703)
!1733 = !DILocation(line: 397, column: 5, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 397, column: 5)
!1735 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !1726)
!1736 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !1726)
!1737 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !1726)
!1738 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !1726)
!1739 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !1726)
!1740 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !1726)
!1741 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !1726)
!1742 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !1726)
!1743 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !1726)
!1744 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !1726)
!1745 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !1726)
!1746 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !1726)
!1747 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !1726)
!1748 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !1726)
!1749 = !DILocation(line: 0, scope: !851, inlinedAt: !1726)
!1750 = !DILocation(line: 397, column: 19, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1734, file: !3, line: 397, column: 5)
!1752 = !DILocation(line: 398, column: 13, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 398, column: 13)
!1754 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 397, column: 29)
!1755 = !DILocation(line: 398, column: 26, scope: !1753)
!1756 = !DILocation(line: 398, column: 48, scope: !1753)
!1757 = !DILocation(line: 398, column: 43, scope: !1753)
!1758 = !DILocation(line: 397, column: 25, scope: !1751)
!1759 = distinct !{!1759, !1760}
!1760 = !{!"llvm.loop.unroll.disable"}
!1761 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 400, column: 29, scope: !1703)
!1763 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !1762)
!1764 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !1762)
!1765 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !1762)
!1766 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !1762)
!1767 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !1762)
!1768 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !1762)
!1769 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !1762)
!1770 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !1762)
!1771 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !1762)
!1772 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !1762)
!1773 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !1762)
!1774 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !1762)
!1775 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !1762)
!1776 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !1762)
!1777 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !1762)
!1778 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !1762)
!1779 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !1762)
!1780 = !DILocation(line: 0, scope: !851, inlinedAt: !1762)
!1781 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !1762)
!1782 = !DILocation(line: 400, column: 5, scope: !1703)
!1783 = !DILocation(line: 401, column: 5, scope: !1703)
!1784 = !DILocation(line: 402, column: 1, scope: !1703)
!1785 = distinct !{!1785, !1733, !1786}
!1786 = !DILocation(line: 399, column: 5, scope: !1734)
!1787 = distinct !DISubprogram(name: "addReplyStatusLength", scope: !3, file: !3, line: 404, type: !1135, isLocal: false, isDefinition: true, scopeLine: 404, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1788)
!1788 = !{!1789, !1790, !1791}
!1789 = !DILocalVariable(name: "c", arg: 1, scope: !1787, file: !3, line: 404, type: !6)
!1790 = !DILocalVariable(name: "s", arg: 2, scope: !1787, file: !3, line: 404, type: !317)
!1791 = !DILocalVariable(name: "len", arg: 3, scope: !1787, file: !3, line: 404, type: !142)
!1792 = !DILocation(line: 404, column: 35, scope: !1787)
!1793 = !DILocation(line: 404, column: 50, scope: !1787)
!1794 = !DILocation(line: 404, column: 60, scope: !1787)
!1795 = !DILocation(line: 405, column: 5, scope: !1787)
!1796 = !DILocation(line: 406, column: 5, scope: !1787)
!1797 = !DILocation(line: 407, column: 5, scope: !1787)
!1798 = !DILocation(line: 408, column: 1, scope: !1787)
!1799 = distinct !DISubprogram(name: "addReplyStatus", scope: !3, file: !3, line: 410, type: !1693, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1800)
!1800 = !{!1801, !1802}
!1801 = !DILocalVariable(name: "c", arg: 1, scope: !1799, file: !3, line: 410, type: !6)
!1802 = !DILocalVariable(name: "status", arg: 2, scope: !1799, file: !3, line: 410, type: !317)
!1803 = !DILocation(line: 410, column: 29, scope: !1799)
!1804 = !DILocation(line: 410, column: 44, scope: !1799)
!1805 = !DILocation(line: 411, column: 35, scope: !1799)
!1806 = !DILocation(line: 404, column: 35, scope: !1787, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 411, column: 5, scope: !1799)
!1808 = !DILocation(line: 404, column: 50, scope: !1787, inlinedAt: !1807)
!1809 = !DILocation(line: 404, column: 60, scope: !1787, inlinedAt: !1807)
!1810 = !DILocation(line: 405, column: 5, scope: !1787, inlinedAt: !1807)
!1811 = !DILocation(line: 406, column: 5, scope: !1787, inlinedAt: !1807)
!1812 = !DILocation(line: 407, column: 5, scope: !1787, inlinedAt: !1807)
!1813 = !DILocation(line: 408, column: 1, scope: !1787, inlinedAt: !1807)
!1814 = !DILocation(line: 412, column: 1, scope: !1799)
!1815 = distinct !DISubprogram(name: "addReplyStatusFormat", scope: !3, file: !3, line: 414, type: !1704, isLocal: false, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1816)
!1816 = !{!1817, !1818, !1819, !1820}
!1817 = !DILocalVariable(name: "c", arg: 1, scope: !1815, file: !3, line: 414, type: !6)
!1818 = !DILocalVariable(name: "fmt", arg: 2, scope: !1815, file: !3, line: 414, type: !317)
!1819 = !DILocalVariable(name: "ap", scope: !1815, file: !3, line: 415, type: !1712)
!1820 = !DILocalVariable(name: "s", scope: !1815, file: !3, line: 417, type: !137)
!1821 = !DILocation(line: 414, column: 35, scope: !1815)
!1822 = !DILocation(line: 414, column: 50, scope: !1815)
!1823 = !DILocation(line: 415, column: 5, scope: !1815)
!1824 = !DILocation(line: 415, column: 13, scope: !1815)
!1825 = !DILocation(line: 416, column: 5, scope: !1815)
!1826 = !DILocation(line: 417, column: 27, scope: !1815)
!1827 = !DILocation(line: 417, column: 13, scope: !1815)
!1828 = !DILocation(line: 417, column: 9, scope: !1815)
!1829 = !DILocation(line: 418, column: 5, scope: !1815)
!1830 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 419, column: 30, scope: !1815)
!1832 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !1831)
!1833 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !1831)
!1834 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !1831)
!1835 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !1831)
!1836 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !1831)
!1837 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !1831)
!1838 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !1831)
!1839 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !1831)
!1840 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !1831)
!1841 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !1831)
!1842 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !1831)
!1843 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !1831)
!1844 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !1831)
!1845 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !1831)
!1846 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !1831)
!1847 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !1831)
!1848 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !1831)
!1849 = !DILocation(line: 0, scope: !851, inlinedAt: !1831)
!1850 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !1831)
!1851 = !DILocation(line: 404, column: 35, scope: !1787, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 419, column: 5, scope: !1815)
!1853 = !DILocation(line: 404, column: 50, scope: !1787, inlinedAt: !1852)
!1854 = !DILocation(line: 404, column: 60, scope: !1787, inlinedAt: !1852)
!1855 = !DILocation(line: 405, column: 5, scope: !1787, inlinedAt: !1852)
!1856 = !DILocation(line: 406, column: 5, scope: !1787, inlinedAt: !1852)
!1857 = !DILocation(line: 407, column: 5, scope: !1787, inlinedAt: !1852)
!1858 = !DILocation(line: 408, column: 1, scope: !1787, inlinedAt: !1852)
!1859 = !DILocation(line: 420, column: 5, scope: !1815)
!1860 = !DILocation(line: 421, column: 1, scope: !1815)
!1861 = distinct !DISubprogram(name: "addDeferredMultiBulkLength", scope: !3, file: !3, line: 425, type: !1862, isLocal: false, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1864)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!45, !6}
!1864 = !{!1865}
!1865 = !DILocalVariable(name: "c", arg: 1, scope: !1861, file: !3, line: 425, type: !6)
!1866 = !DILocation(line: 425, column: 42, scope: !1861)
!1867 = !DILocation(line: 217, column: 34, scope: !1047, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 429, column: 9, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1861, file: !3, line: 429, column: 9)
!1870 = !DILocation(line: 220, column: 12, scope: !1054, inlinedAt: !1868)
!1871 = !DILocation(line: 220, column: 18, scope: !1054, inlinedAt: !1868)
!1872 = !DILocation(line: 220, column: 9, scope: !1047, inlinedAt: !1868)
!1873 = !DILocation(line: 223, column: 18, scope: !1058, inlinedAt: !1868)
!1874 = !DILocation(line: 227, column: 36, scope: !1060, inlinedAt: !1868)
!1875 = !DILocation(line: 223, column: 9, scope: !1047, inlinedAt: !1868)
!1876 = !DILocation(line: 230, column: 12, scope: !1063, inlinedAt: !1868)
!1877 = !DILocation(line: 230, column: 15, scope: !1063, inlinedAt: !1868)
!1878 = !DILocation(line: 230, column: 9, scope: !1047, inlinedAt: !1868)
!1879 = !DILocation(line: 664, column: 37, scope: !1067, inlinedAt: !1880)
!1880 = distinct !DILocation(line: 234, column: 10, scope: !1071, inlinedAt: !1868)
!1881 = !DILocation(line: 665, column: 15, scope: !1067, inlinedAt: !1880)
!1882 = !DILocation(line: 665, column: 12, scope: !1067, inlinedAt: !1880)
!1883 = !DILocation(line: 665, column: 22, scope: !1067, inlinedAt: !1880)
!1884 = !DILocation(line: 665, column: 5, scope: !1067, inlinedAt: !1880)
!1885 = !DILocation(line: 234, column: 9, scope: !1047, inlinedAt: !1868)
!1886 = !DILocation(line: 665, column: 25, scope: !1067, inlinedAt: !1880)
!1887 = !DILocation(line: 176, column: 40, scope: !1024, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 234, column: 38, scope: !1071, inlinedAt: !1868)
!1889 = !DILocation(line: 180, column: 20, scope: !1029, inlinedAt: !1888)
!1890 = !DILocation(line: 180, column: 44, scope: !1029, inlinedAt: !1888)
!1891 = !DILocation(line: 181, column: 13, scope: !1029, inlinedAt: !1888)
!1892 = !DILocation(line: 181, column: 42, scope: !1029, inlinedAt: !1888)
!1893 = !DILocation(line: 182, column: 53, scope: !1029, inlinedAt: !1888)
!1894 = !DILocation(line: 182, column: 50, scope: !1029, inlinedAt: !1888)
!1895 = !DILocation(line: 180, column: 9, scope: !1024, inlinedAt: !1888)
!1896 = !DILocation(line: 190, column: 18, scope: !1040, inlinedAt: !1888)
!1897 = !DILocation(line: 191, column: 32, scope: !1040, inlinedAt: !1888)
!1898 = !DILocation(line: 191, column: 54, scope: !1040, inlinedAt: !1888)
!1899 = !DILocation(line: 191, column: 9, scope: !1040, inlinedAt: !1888)
!1900 = !DILocation(line: 192, column: 5, scope: !1040, inlinedAt: !1888)
!1901 = !DILocation(line: 193, column: 1, scope: !1024, inlinedAt: !1888)
!1902 = !DILocation(line: 234, column: 38, scope: !1071, inlinedAt: !1868)
!1903 = !DILocation(line: 238, column: 1, scope: !1047, inlinedAt: !1868)
!1904 = !DILocation(line: 430, column: 24, scope: !1861)
!1905 = !DILocation(line: 430, column: 5, scope: !1861)
!1906 = !DILocation(line: 431, column: 12, scope: !1861)
!1907 = !DILocation(line: 431, column: 5, scope: !1861)
!1908 = !DILocation(line: 0, scope: !1861)
!1909 = !DILocation(line: 432, column: 1, scope: !1861)
!1910 = distinct !DISubprogram(name: "setDeferredMultiBulkLength", scope: !3, file: !3, line: 435, type: !1911, isLocal: false, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{null, !6, !45, !77}
!1913 = !{!1914, !1915, !1916, !1917, !1918, !1919, !1923, !1924}
!1914 = !DILocalVariable(name: "c", arg: 1, scope: !1910, file: !3, line: 435, type: !6)
!1915 = !DILocalVariable(name: "node", arg: 2, scope: !1910, file: !3, line: 435, type: !45)
!1916 = !DILocalVariable(name: "length", arg: 3, scope: !1910, file: !3, line: 435, type: !77)
!1917 = !DILocalVariable(name: "ln", scope: !1910, file: !3, line: 436, type: !103)
!1918 = !DILocalVariable(name: "next", scope: !1910, file: !3, line: 437, type: !399)
!1919 = !DILocalVariable(name: "lenstr", scope: !1910, file: !3, line: 438, type: !1920)
!1920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 1024, elements: !1921)
!1921 = !{!1922}
!1922 = !DISubrange(count: 128)
!1923 = !DILocalVariable(name: "lenstr_len", scope: !1910, file: !3, line: 439, type: !142)
!1924 = !DILocalVariable(name: "buf", scope: !1925, file: !3, line: 465, type: !399)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 463, column: 12)
!1926 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 456, column: 9)
!1927 = !DILocation(line: 435, column: 41, scope: !1910)
!1928 = !DILocation(line: 435, column: 50, scope: !1910)
!1929 = !DILocation(line: 435, column: 61, scope: !1910)
!1930 = !DILocation(line: 436, column: 20, scope: !1910)
!1931 = !DILocation(line: 436, column: 15, scope: !1910)
!1932 = !DILocation(line: 438, column: 5, scope: !1910)
!1933 = !DILocation(line: 438, column: 10, scope: !1910)
!1934 = !DILocation(line: 439, column: 25, scope: !1910)
!1935 = !DILocation(line: 439, column: 12, scope: !1910)
!1936 = !DILocation(line: 443, column: 14, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1910, file: !3, line: 443, column: 9)
!1938 = !DILocation(line: 443, column: 9, scope: !1910)
!1939 = !DILocation(line: 444, column: 5, scope: !1910)
!1940 = !DILocation(line: 456, column: 13, scope: !1926)
!1941 = !{!1162, !381, i64 8}
!1942 = !DILocation(line: 456, column: 18, scope: !1926)
!1943 = !DILocation(line: 456, column: 26, scope: !1926)
!1944 = !DILocation(line: 456, column: 37, scope: !1926)
!1945 = !DILocation(line: 437, column: 23, scope: !1910)
!1946 = !DILocation(line: 456, column: 35, scope: !1926)
!1947 = !DILocation(line: 456, column: 62, scope: !1926)
!1948 = !DILocation(line: 457, column: 15, scope: !1926)
!1949 = !DILocation(line: 457, column: 28, scope: !1926)
!1950 = !DILocation(line: 457, column: 20, scope: !1926)
!1951 = !DILocation(line: 457, column: 33, scope: !1926)
!1952 = !DILocation(line: 458, column: 20, scope: !1926)
!1953 = !DILocation(line: 457, column: 47, scope: !1926)
!1954 = !DILocation(line: 459, column: 17, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1926, file: !3, line: 458, column: 51)
!1956 = !DILocation(line: 459, column: 27, scope: !1955)
!1957 = !DILocation(line: 459, column: 9, scope: !1955)
!1958 = !DILocation(line: 460, column: 9, scope: !1955)
!1959 = !DILocation(line: 461, column: 20, scope: !1955)
!1960 = !DILocation(line: 462, column: 24, scope: !1955)
!1961 = !DILocation(line: 462, column: 9, scope: !1955)
!1962 = !DILocation(line: 463, column: 5, scope: !1955)
!1963 = !DILocation(line: 465, column: 52, scope: !1925)
!1964 = !DILocation(line: 465, column: 33, scope: !1925)
!1965 = !DILocation(line: 465, column: 27, scope: !1925)
!1966 = !DILocation(line: 467, column: 21, scope: !1925)
!1967 = !DILocation(line: 467, column: 41, scope: !1925)
!1968 = !DILocation(line: 467, column: 14, scope: !1925)
!1969 = !DILocation(line: 467, column: 19, scope: !1925)
!1970 = !DILocation(line: 468, column: 14, scope: !1925)
!1971 = !DILocation(line: 468, column: 19, scope: !1925)
!1972 = !DILocation(line: 469, column: 21, scope: !1925)
!1973 = !DILocation(line: 469, column: 9, scope: !1925)
!1974 = !DILocation(line: 470, column: 27, scope: !1925)
!1975 = !DILocation(line: 471, column: 32, scope: !1925)
!1976 = !DILocation(line: 471, column: 12, scope: !1925)
!1977 = !DILocation(line: 471, column: 24, scope: !1925)
!1978 = !DILocation(line: 473, column: 5, scope: !1910)
!1979 = !DILocation(line: 474, column: 1, scope: !1910)
!1980 = distinct !DISubprogram(name: "addReplyDouble", scope: !3, file: !3, line: 477, type: !1981, isLocal: false, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1983)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !6, !79}
!1983 = !{!1984, !1985, !1986, !1987, !1988, !1989}
!1984 = !DILocalVariable(name: "c", arg: 1, scope: !1980, file: !3, line: 477, type: !6)
!1985 = !DILocalVariable(name: "d", arg: 2, scope: !1980, file: !3, line: 477, type: !79)
!1986 = !DILocalVariable(name: "dbuf", scope: !1980, file: !3, line: 478, type: !1920)
!1987 = !DILocalVariable(name: "sbuf", scope: !1980, file: !3, line: 478, type: !1920)
!1988 = !DILocalVariable(name: "dlen", scope: !1980, file: !3, line: 479, type: !18)
!1989 = !DILocalVariable(name: "slen", scope: !1980, file: !3, line: 479, type: !18)
!1990 = !DILocation(line: 477, column: 29, scope: !1980)
!1991 = !DILocation(line: 477, column: 39, scope: !1980)
!1992 = !DILocation(line: 478, column: 5, scope: !1980)
!1993 = !DILocation(line: 478, column: 10, scope: !1980)
!1994 = !DILocation(line: 478, column: 21, scope: !1980)
!1995 = !DILocation(line: 480, column: 9, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 480, column: 9)
!1997 = !DILocation(line: 480, column: 9, scope: !1980)
!1998 = !DILocation(line: 483, column: 34, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 480, column: 19)
!2000 = !DILocation(line: 483, column: 32, scope: !1999)
!2001 = !DILocalVariable(name: "c", arg: 1, scope: !2002, file: !3, line: 588, type: !6)
!2002 = distinct !DISubprogram(name: "addReplyBulkCString", scope: !3, file: !3, line: 588, type: !1693, isLocal: false, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2003)
!2003 = !{!2001, !2004}
!2004 = !DILocalVariable(name: "s", arg: 2, scope: !2002, file: !3, line: 588, type: !317)
!2005 = !DILocation(line: 588, column: 34, scope: !2002, inlinedAt: !2006)
!2006 = distinct !DILocation(line: 483, column: 9, scope: !1999)
!2007 = !DILocation(line: 588, column: 49, scope: !2002, inlinedAt: !2006)
!2008 = !DILocation(line: 592, column: 33, scope: !2009, inlinedAt: !2006)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 591, column: 12)
!2010 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 589, column: 9)
!2011 = !DILocation(line: 592, column: 9, scope: !2009, inlinedAt: !2006)
!2012 = !DILocation(line: 594, column: 1, scope: !2002, inlinedAt: !2006)
!2013 = !DILocation(line: 484, column: 5, scope: !1999)
!2014 = !DILocation(line: 485, column: 16, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1996, file: !3, line: 484, column: 12)
!2016 = !DILocation(line: 479, column: 9, scope: !1980)
!2017 = !DILocation(line: 486, column: 16, scope: !2015)
!2018 = !DILocation(line: 479, column: 15, scope: !1980)
!2019 = !DILocation(line: 487, column: 31, scope: !2015)
!2020 = !DILocation(line: 487, column: 9, scope: !2015)
!2021 = !DILocation(line: 489, column: 1, scope: !1980)
!2022 = !DILocation(line: 588, column: 34, scope: !2002)
!2023 = !DILocation(line: 588, column: 49, scope: !2002)
!2024 = !DILocation(line: 589, column: 11, scope: !2010)
!2025 = !DILocation(line: 589, column: 9, scope: !2002)
!2026 = !DILocation(line: 590, column: 27, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 589, column: 20)
!2028 = !{!2029, !381, i64 80}
!2029 = !{!"sharedObjectsStruct", !381, i64 0, !381, i64 8, !381, i64 16, !381, i64 24, !381, i64 32, !381, i64 40, !381, i64 48, !381, i64 56, !381, i64 64, !381, i64 72, !381, i64 80, !381, i64 88, !381, i64 96, !381, i64 104, !381, i64 112, !381, i64 120, !381, i64 128, !381, i64 136, !381, i64 144, !381, i64 152, !381, i64 160, !381, i64 168, !381, i64 176, !381, i64 184, !381, i64 192, !381, i64 200, !381, i64 208, !381, i64 216, !381, i64 224, !381, i64 232, !381, i64 240, !381, i64 248, !381, i64 256, !381, i64 264, !381, i64 272, !381, i64 280, !381, i64 288, !381, i64 296, !381, i64 304, !381, i64 312, !381, i64 320, !381, i64 328, !381, i64 336, !381, i64 344, !381, i64 352, !381, i64 360, !379, i64 368, !379, i64 448, !379, i64 80448, !379, i64 80704, !381, i64 80960, !381, i64 80968}
!2030 = !DILocation(line: 590, column: 9, scope: !2027)
!2031 = !DILocation(line: 591, column: 5, scope: !2027)
!2032 = !DILocation(line: 592, column: 33, scope: !2009)
!2033 = !DILocation(line: 592, column: 9, scope: !2009)
!2034 = !DILocation(line: 594, column: 1, scope: !2002)
!2035 = distinct !DISubprogram(name: "addReplyHumanLongDouble", scope: !3, file: !3, line: 494, type: !2036, isLocal: false, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2039)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{null, !6, !2038}
!2038 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!2039 = !{!2040, !2041, !2042}
!2040 = !DILocalVariable(name: "c", arg: 1, scope: !2035, file: !3, line: 494, type: !6)
!2041 = !DILocalVariable(name: "d", arg: 2, scope: !2035, file: !3, line: 494, type: !2038)
!2042 = !DILocalVariable(name: "o", scope: !2035, file: !3, line: 495, type: !126)
!2043 = !DILocation(line: 494, column: 38, scope: !2035)
!2044 = !DILocation(line: 494, column: 53, scope: !2035)
!2045 = !DILocation(line: 495, column: 15, scope: !2035)
!2046 = !DILocation(line: 495, column: 11, scope: !2035)
!2047 = !DILocalVariable(name: "c", arg: 1, scope: !2048, file: !3, line: 567, type: !6)
!2048 = distinct !DISubprogram(name: "addReplyBulk", scope: !3, file: !3, line: 567, type: !1317, isLocal: false, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2049)
!2049 = !{!2047, !2050}
!2050 = !DILocalVariable(name: "obj", arg: 2, scope: !2048, file: !3, line: 567, type: !126)
!2051 = !DILocation(line: 567, column: 27, scope: !2048, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 496, column: 5, scope: !2035)
!2053 = !DILocation(line: 567, column: 36, scope: !2048, inlinedAt: !2052)
!2054 = !DILocation(line: 568, column: 5, scope: !2048, inlinedAt: !2052)
!2055 = !DILocation(line: 569, column: 5, scope: !2048, inlinedAt: !2052)
!2056 = !DILocation(line: 570, column: 23, scope: !2048, inlinedAt: !2052)
!2057 = !{!2029, !381, i64 0}
!2058 = !DILocation(line: 570, column: 5, scope: !2048, inlinedAt: !2052)
!2059 = !DILocation(line: 571, column: 1, scope: !2048, inlinedAt: !2052)
!2060 = !DILocation(line: 497, column: 5, scope: !2035)
!2061 = !DILocation(line: 498, column: 1, scope: !2035)
!2062 = !DILocation(line: 567, column: 27, scope: !2048)
!2063 = !DILocation(line: 567, column: 36, scope: !2048)
!2064 = !DILocation(line: 568, column: 5, scope: !2048)
!2065 = !DILocation(line: 569, column: 5, scope: !2048)
!2066 = !DILocation(line: 570, column: 23, scope: !2048)
!2067 = !DILocation(line: 570, column: 5, scope: !2048)
!2068 = !DILocation(line: 571, column: 1, scope: !2048)
!2069 = distinct !DISubprogram(name: "addReplyLongLongWithPrefix", scope: !3, file: !3, line: 502, type: !2070, isLocal: false, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2072)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{null, !6, !95, !140}
!2072 = !{!2073, !2074, !2075, !2076, !2077}
!2073 = !DILocalVariable(name: "c", arg: 1, scope: !2069, file: !3, line: 502, type: !6)
!2074 = !DILocalVariable(name: "ll", arg: 2, scope: !2069, file: !3, line: 502, type: !95)
!2075 = !DILocalVariable(name: "prefix", arg: 3, scope: !2069, file: !3, line: 502, type: !140)
!2076 = !DILocalVariable(name: "buf", scope: !2069, file: !3, line: 503, type: !1920)
!2077 = !DILocalVariable(name: "len", scope: !2069, file: !3, line: 504, type: !18)
!2078 = !DILocation(line: 502, column: 41, scope: !2069)
!2079 = !DILocation(line: 502, column: 54, scope: !2069)
!2080 = !DILocation(line: 502, column: 63, scope: !2069)
!2081 = !DILocation(line: 503, column: 5, scope: !2069)
!2082 = !DILocation(line: 503, column: 10, scope: !2069)
!2083 = !DILocation(line: 509, column: 16, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 509, column: 9)
!2085 = !DILocation(line: 509, column: 23, scope: !2084)
!2086 = !DILocation(line: 510, column: 20, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 509, column: 66)
!2088 = !DILocation(line: 510, column: 9, scope: !2087)
!2089 = !DILocation(line: 511, column: 9, scope: !2087)
!2090 = !DILocation(line: 512, column: 23, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2084, file: !3, line: 512, column: 16)
!2092 = !DILocation(line: 512, column: 30, scope: !2091)
!2093 = !DILocation(line: 513, column: 20, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 512, column: 73)
!2095 = !DILocation(line: 513, column: 9, scope: !2094)
!2096 = !DILocation(line: 514, column: 9, scope: !2094)
!2097 = !DILocation(line: 517, column: 12, scope: !2069)
!2098 = !DILocation(line: 518, column: 24, scope: !2069)
!2099 = !DILocation(line: 518, column: 11, scope: !2069)
!2100 = !DILocation(line: 504, column: 9, scope: !2069)
!2101 = !DILocation(line: 519, column: 12, scope: !2069)
!2102 = !DILocation(line: 519, column: 5, scope: !2069)
!2103 = !DILocation(line: 519, column: 16, scope: !2069)
!2104 = !DILocation(line: 520, column: 12, scope: !2069)
!2105 = !DILocation(line: 520, column: 5, scope: !2069)
!2106 = !DILocation(line: 520, column: 16, scope: !2069)
!2107 = !DILocation(line: 521, column: 29, scope: !2069)
!2108 = !DILocation(line: 521, column: 26, scope: !2069)
!2109 = !DILocation(line: 521, column: 5, scope: !2069)
!2110 = !DILocation(line: 522, column: 1, scope: !2069)
!2111 = distinct !DISubprogram(name: "addReplyLongLong", scope: !3, file: !3, line: 524, type: !2112, isLocal: false, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2114)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{null, !6, !95}
!2114 = !{!2115, !2116}
!2115 = !DILocalVariable(name: "c", arg: 1, scope: !2111, file: !3, line: 524, type: !6)
!2116 = !DILocalVariable(name: "ll", arg: 2, scope: !2111, file: !3, line: 524, type: !95)
!2117 = !DILocation(line: 503, column: 10, scope: !2069, inlinedAt: !2118)
!2118 = distinct !DILocation(line: 530, column: 9, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 527, column: 14)
!2120 = distinct !DILexicalBlock(scope: !2111, file: !3, line: 525, column: 9)
!2121 = !DILocation(line: 524, column: 31, scope: !2111)
!2122 = !DILocation(line: 524, column: 44, scope: !2111)
!2123 = !DILocation(line: 525, column: 9, scope: !2111)
!2124 = !DILocation(line: 526, column: 27, scope: !2120)
!2125 = !{!2029, !381, i64 32}
!2126 = !DILocation(line: 526, column: 9, scope: !2120)
!2127 = !DILocation(line: 528, column: 27, scope: !2119)
!2128 = !{!2029, !381, i64 40}
!2129 = !DILocation(line: 528, column: 9, scope: !2119)
!2130 = !DILocation(line: 502, column: 41, scope: !2069, inlinedAt: !2118)
!2131 = !DILocation(line: 502, column: 54, scope: !2069, inlinedAt: !2118)
!2132 = !DILocation(line: 502, column: 63, scope: !2069, inlinedAt: !2118)
!2133 = !DILocation(line: 503, column: 5, scope: !2069, inlinedAt: !2118)
!2134 = !DILocation(line: 517, column: 12, scope: !2069, inlinedAt: !2118)
!2135 = !DILocation(line: 518, column: 24, scope: !2069, inlinedAt: !2118)
!2136 = !DILocation(line: 518, column: 11, scope: !2069, inlinedAt: !2118)
!2137 = !DILocation(line: 504, column: 9, scope: !2069, inlinedAt: !2118)
!2138 = !DILocation(line: 519, column: 12, scope: !2069, inlinedAt: !2118)
!2139 = !DILocation(line: 519, column: 5, scope: !2069, inlinedAt: !2118)
!2140 = !DILocation(line: 519, column: 16, scope: !2069, inlinedAt: !2118)
!2141 = !DILocation(line: 520, column: 12, scope: !2069, inlinedAt: !2118)
!2142 = !DILocation(line: 520, column: 5, scope: !2069, inlinedAt: !2118)
!2143 = !DILocation(line: 520, column: 16, scope: !2069, inlinedAt: !2118)
!2144 = !DILocation(line: 521, column: 29, scope: !2069, inlinedAt: !2118)
!2145 = !DILocation(line: 521, column: 26, scope: !2069, inlinedAt: !2118)
!2146 = !DILocation(line: 521, column: 5, scope: !2069, inlinedAt: !2118)
!2147 = !DILocation(line: 522, column: 1, scope: !2069, inlinedAt: !2118)
!2148 = !DILocation(line: 531, column: 1, scope: !2111)
!2149 = distinct !DISubprogram(name: "addReplyMultiBulkLen", scope: !3, file: !3, line: 533, type: !2150, isLocal: false, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2152)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{null, !6, !77}
!2152 = !{!2153, !2154}
!2153 = !DILocalVariable(name: "c", arg: 1, scope: !2149, file: !3, line: 533, type: !6)
!2154 = !DILocalVariable(name: "length", arg: 2, scope: !2149, file: !3, line: 533, type: !77)
!2155 = !DILocation(line: 503, column: 10, scope: !2069, inlinedAt: !2156)
!2156 = distinct !DILocation(line: 537, column: 9, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 534, column: 9)
!2158 = !DILocation(line: 533, column: 35, scope: !2149)
!2159 = !DILocation(line: 533, column: 43, scope: !2149)
!2160 = !DILocation(line: 534, column: 16, scope: !2157)
!2161 = !DILocation(line: 534, column: 9, scope: !2149)
!2162 = !DILocation(line: 535, column: 20, scope: !2157)
!2163 = !DILocation(line: 535, column: 9, scope: !2157)
!2164 = !DILocation(line: 502, column: 41, scope: !2069, inlinedAt: !2156)
!2165 = !DILocation(line: 502, column: 54, scope: !2069, inlinedAt: !2156)
!2166 = !DILocation(line: 502, column: 63, scope: !2069, inlinedAt: !2156)
!2167 = !DILocation(line: 503, column: 5, scope: !2069, inlinedAt: !2156)
!2168 = !DILocation(line: 517, column: 12, scope: !2069, inlinedAt: !2156)
!2169 = !DILocation(line: 518, column: 24, scope: !2069, inlinedAt: !2156)
!2170 = !DILocation(line: 518, column: 11, scope: !2069, inlinedAt: !2156)
!2171 = !DILocation(line: 504, column: 9, scope: !2069, inlinedAt: !2156)
!2172 = !DILocation(line: 519, column: 12, scope: !2069, inlinedAt: !2156)
!2173 = !DILocation(line: 519, column: 5, scope: !2069, inlinedAt: !2156)
!2174 = !DILocation(line: 519, column: 16, scope: !2069, inlinedAt: !2156)
!2175 = !DILocation(line: 520, column: 12, scope: !2069, inlinedAt: !2156)
!2176 = !DILocation(line: 520, column: 5, scope: !2069, inlinedAt: !2156)
!2177 = !DILocation(line: 520, column: 16, scope: !2069, inlinedAt: !2156)
!2178 = !DILocation(line: 521, column: 29, scope: !2069, inlinedAt: !2156)
!2179 = !DILocation(line: 521, column: 26, scope: !2069, inlinedAt: !2156)
!2180 = !DILocation(line: 521, column: 5, scope: !2069, inlinedAt: !2156)
!2181 = !DILocation(line: 522, column: 1, scope: !2069, inlinedAt: !2156)
!2182 = !DILocation(line: 538, column: 1, scope: !2149)
!2183 = distinct !DISubprogram(name: "addReplyBulkLen", scope: !3, file: !3, line: 541, type: !1317, isLocal: false, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2184)
!2184 = !{!2185, !2186, !2187, !2188}
!2185 = !DILocalVariable(name: "c", arg: 1, scope: !2183, file: !3, line: 541, type: !6)
!2186 = !DILocalVariable(name: "obj", arg: 2, scope: !2183, file: !3, line: 541, type: !126)
!2187 = !DILocalVariable(name: "len", scope: !2183, file: !3, line: 542, type: !142)
!2188 = !DILocalVariable(name: "n", scope: !2189, file: !3, line: 547, type: !77)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 546, column: 12)
!2190 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 544, column: 9)
!2191 = !DILocation(line: 503, column: 10, scope: !2069, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 563, column: 9, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 560, column: 9)
!2194 = !DILocation(line: 541, column: 30, scope: !2183)
!2195 = !DILocation(line: 541, column: 39, scope: !2183)
!2196 = !DILocation(line: 544, column: 9, scope: !2190)
!2197 = !DILocation(line: 545, column: 27, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 544, column: 32)
!2199 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !2200)
!2200 = distinct !DILocation(line: 545, column: 15, scope: !2198)
!2201 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !2200)
!2202 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !2200)
!2203 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !2200)
!2204 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !2200)
!2205 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !2200)
!2206 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !2200)
!2207 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !2200)
!2208 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !2200)
!2209 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !2200)
!2210 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !2200)
!2211 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !2200)
!2212 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !2200)
!2213 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !2200)
!2214 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !2200)
!2215 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !2200)
!2216 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !2200)
!2217 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !2200)
!2218 = !DILocation(line: 0, scope: !851, inlinedAt: !2200)
!2219 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !2200)
!2220 = !DILocation(line: 542, column: 12, scope: !2183)
!2221 = !DILocation(line: 546, column: 5, scope: !2198)
!2222 = !DILocation(line: 547, column: 29, scope: !2189)
!2223 = !DILocation(line: 547, column: 14, scope: !2189)
!2224 = !DILocation(line: 551, column: 15, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 551, column: 13)
!2226 = !DILocation(line: 553, column: 17, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 551, column: 20)
!2228 = !DILocation(line: 551, column: 13, scope: !2189)
!2229 = !DILocation(line: 555, column: 26, scope: !2189)
!2230 = !DILocation(line: 555, column: 9, scope: !2189)
!2231 = !DILocation(line: 555, column: 21, scope: !2189)
!2232 = !DILocation(line: 556, column: 16, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 555, column: 32)
!2234 = distinct !{!2234, !2230, !2235}
!2235 = !DILocation(line: 557, column: 9, scope: !2189)
!2236 = !DILocation(line: 0, scope: !2227)
!2237 = !DILocation(line: 560, column: 13, scope: !2193)
!2238 = !DILocation(line: 560, column: 9, scope: !2183)
!2239 = !DILocation(line: 561, column: 20, scope: !2193)
!2240 = !DILocation(line: 561, column: 9, scope: !2193)
!2241 = !DILocation(line: 502, column: 41, scope: !2069, inlinedAt: !2192)
!2242 = !DILocation(line: 502, column: 54, scope: !2069, inlinedAt: !2192)
!2243 = !DILocation(line: 502, column: 63, scope: !2069, inlinedAt: !2192)
!2244 = !DILocation(line: 503, column: 5, scope: !2069, inlinedAt: !2192)
!2245 = !DILocation(line: 517, column: 12, scope: !2069, inlinedAt: !2192)
!2246 = !DILocation(line: 518, column: 24, scope: !2069, inlinedAt: !2192)
!2247 = !DILocation(line: 518, column: 11, scope: !2069, inlinedAt: !2192)
!2248 = !DILocation(line: 504, column: 9, scope: !2069, inlinedAt: !2192)
!2249 = !DILocation(line: 519, column: 12, scope: !2069, inlinedAt: !2192)
!2250 = !DILocation(line: 519, column: 5, scope: !2069, inlinedAt: !2192)
!2251 = !DILocation(line: 519, column: 16, scope: !2069, inlinedAt: !2192)
!2252 = !DILocation(line: 520, column: 12, scope: !2069, inlinedAt: !2192)
!2253 = !DILocation(line: 520, column: 5, scope: !2069, inlinedAt: !2192)
!2254 = !DILocation(line: 520, column: 16, scope: !2069, inlinedAt: !2192)
!2255 = !DILocation(line: 521, column: 29, scope: !2069, inlinedAt: !2192)
!2256 = !DILocation(line: 521, column: 26, scope: !2069, inlinedAt: !2192)
!2257 = !DILocation(line: 521, column: 5, scope: !2069, inlinedAt: !2192)
!2258 = !DILocation(line: 522, column: 1, scope: !2069, inlinedAt: !2192)
!2259 = !DILocation(line: 564, column: 1, scope: !2183)
!2260 = distinct !DISubprogram(name: "addReplyBulkCBuffer", scope: !3, file: !3, line: 574, type: !2261, isLocal: false, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2263)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{null, !6, !39, !142}
!2263 = !{!2264, !2265, !2266}
!2264 = !DILocalVariable(name: "c", arg: 1, scope: !2260, file: !3, line: 574, type: !6)
!2265 = !DILocalVariable(name: "p", arg: 2, scope: !2260, file: !3, line: 574, type: !39)
!2266 = !DILocalVariable(name: "len", arg: 3, scope: !2260, file: !3, line: 574, type: !142)
!2267 = !DILocation(line: 503, column: 10, scope: !2069, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 575, column: 5, scope: !2260)
!2269 = !DILocation(line: 574, column: 34, scope: !2260)
!2270 = !DILocation(line: 574, column: 49, scope: !2260)
!2271 = !DILocation(line: 574, column: 59, scope: !2260)
!2272 = !DILocation(line: 502, column: 41, scope: !2069, inlinedAt: !2268)
!2273 = !DILocation(line: 502, column: 54, scope: !2069, inlinedAt: !2268)
!2274 = !DILocation(line: 502, column: 63, scope: !2069, inlinedAt: !2268)
!2275 = !DILocation(line: 503, column: 5, scope: !2069, inlinedAt: !2268)
!2276 = !DILocation(line: 509, column: 23, scope: !2084, inlinedAt: !2268)
!2277 = !DILocation(line: 512, column: 30, scope: !2091, inlinedAt: !2268)
!2278 = !DILocation(line: 513, column: 20, scope: !2094, inlinedAt: !2268)
!2279 = !DILocation(line: 513, column: 9, scope: !2094, inlinedAt: !2268)
!2280 = !DILocation(line: 514, column: 9, scope: !2094, inlinedAt: !2268)
!2281 = !DILocation(line: 517, column: 12, scope: !2069, inlinedAt: !2268)
!2282 = !DILocation(line: 518, column: 24, scope: !2069, inlinedAt: !2268)
!2283 = !DILocation(line: 518, column: 11, scope: !2069, inlinedAt: !2268)
!2284 = !DILocation(line: 504, column: 9, scope: !2069, inlinedAt: !2268)
!2285 = !DILocation(line: 519, column: 12, scope: !2069, inlinedAt: !2268)
!2286 = !DILocation(line: 519, column: 5, scope: !2069, inlinedAt: !2268)
!2287 = !DILocation(line: 519, column: 16, scope: !2069, inlinedAt: !2268)
!2288 = !DILocation(line: 520, column: 12, scope: !2069, inlinedAt: !2268)
!2289 = !DILocation(line: 520, column: 5, scope: !2069, inlinedAt: !2268)
!2290 = !DILocation(line: 520, column: 16, scope: !2069, inlinedAt: !2268)
!2291 = !DILocation(line: 521, column: 29, scope: !2069, inlinedAt: !2268)
!2292 = !DILocation(line: 521, column: 26, scope: !2069, inlinedAt: !2268)
!2293 = !DILocation(line: 521, column: 5, scope: !2069, inlinedAt: !2268)
!2294 = !DILocation(line: 522, column: 1, scope: !2069, inlinedAt: !2268)
!2295 = !DILocation(line: 576, column: 5, scope: !2260)
!2296 = !DILocation(line: 577, column: 23, scope: !2260)
!2297 = !DILocation(line: 577, column: 5, scope: !2260)
!2298 = !DILocation(line: 578, column: 1, scope: !2260)
!2299 = distinct !DISubprogram(name: "addReplyBulkSds", scope: !3, file: !3, line: 581, type: !1469, isLocal: false, isDefinition: true, scopeLine: 581, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2300)
!2300 = !{!2301, !2302}
!2301 = !DILocalVariable(name: "c", arg: 1, scope: !2299, file: !3, line: 581, type: !6)
!2302 = !DILocalVariable(name: "s", arg: 2, scope: !2299, file: !3, line: 581, type: !137)
!2303 = !DILocation(line: 503, column: 10, scope: !2069, inlinedAt: !2304)
!2304 = distinct !DILocation(line: 582, column: 5, scope: !2299)
!2305 = !DILocation(line: 581, column: 30, scope: !2299)
!2306 = !DILocation(line: 581, column: 37, scope: !2299)
!2307 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 582, column: 34, scope: !2299)
!2309 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !2308)
!2310 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !2308)
!2311 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !2308)
!2312 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !2308)
!2313 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !2308)
!2314 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !2308)
!2315 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !2308)
!2316 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !2308)
!2317 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !2308)
!2318 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !2308)
!2319 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !2308)
!2320 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !2308)
!2321 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !2308)
!2322 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !2308)
!2323 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !2308)
!2324 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !2308)
!2325 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !2308)
!2326 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !2308)
!2327 = !DILocation(line: 502, column: 41, scope: !2069, inlinedAt: !2304)
!2328 = !DILocation(line: 502, column: 54, scope: !2069, inlinedAt: !2304)
!2329 = !DILocation(line: 502, column: 63, scope: !2069, inlinedAt: !2304)
!2330 = !DILocation(line: 503, column: 5, scope: !2069, inlinedAt: !2304)
!2331 = !DILocation(line: 512, column: 30, scope: !2091, inlinedAt: !2304)
!2332 = !DILocation(line: 0, scope: !851, inlinedAt: !2308)
!2333 = !DILocation(line: 509, column: 23, scope: !2084, inlinedAt: !2304)
!2334 = !DILocation(line: 513, column: 20, scope: !2094, inlinedAt: !2304)
!2335 = !DILocation(line: 513, column: 9, scope: !2094, inlinedAt: !2304)
!2336 = !DILocation(line: 514, column: 9, scope: !2094, inlinedAt: !2304)
!2337 = !DILocation(line: 517, column: 12, scope: !2069, inlinedAt: !2304)
!2338 = !DILocation(line: 518, column: 24, scope: !2069, inlinedAt: !2304)
!2339 = !DILocation(line: 518, column: 11, scope: !2069, inlinedAt: !2304)
!2340 = !DILocation(line: 504, column: 9, scope: !2069, inlinedAt: !2304)
!2341 = !DILocation(line: 519, column: 12, scope: !2069, inlinedAt: !2304)
!2342 = !DILocation(line: 519, column: 5, scope: !2069, inlinedAt: !2304)
!2343 = !DILocation(line: 519, column: 16, scope: !2069, inlinedAt: !2304)
!2344 = !DILocation(line: 520, column: 12, scope: !2069, inlinedAt: !2304)
!2345 = !DILocation(line: 520, column: 5, scope: !2069, inlinedAt: !2304)
!2346 = !DILocation(line: 520, column: 16, scope: !2069, inlinedAt: !2304)
!2347 = !DILocation(line: 521, column: 29, scope: !2069, inlinedAt: !2304)
!2348 = !DILocation(line: 521, column: 26, scope: !2069, inlinedAt: !2304)
!2349 = !DILocation(line: 521, column: 5, scope: !2069, inlinedAt: !2304)
!2350 = !DILocation(line: 522, column: 1, scope: !2069, inlinedAt: !2304)
!2351 = !DILocation(line: 583, column: 5, scope: !2299)
!2352 = !DILocation(line: 584, column: 23, scope: !2299)
!2353 = !DILocation(line: 584, column: 5, scope: !2299)
!2354 = !DILocation(line: 585, column: 1, scope: !2299)
!2355 = distinct !DISubprogram(name: "addReplyBulkLongLong", scope: !3, file: !3, line: 597, type: !2112, isLocal: false, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2356)
!2356 = !{!2357, !2358, !2359, !2363}
!2357 = !DILocalVariable(name: "c", arg: 1, scope: !2355, file: !3, line: 597, type: !6)
!2358 = !DILocalVariable(name: "ll", arg: 2, scope: !2355, file: !3, line: 597, type: !95)
!2359 = !DILocalVariable(name: "buf", scope: !2355, file: !3, line: 598, type: !2360)
!2360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 512, elements: !2361)
!2361 = !{!2362}
!2362 = !DISubrange(count: 64)
!2363 = !DILocalVariable(name: "len", scope: !2355, file: !3, line: 599, type: !18)
!2364 = !DILocation(line: 597, column: 35, scope: !2355)
!2365 = !DILocation(line: 597, column: 48, scope: !2355)
!2366 = !DILocation(line: 598, column: 5, scope: !2355)
!2367 = !DILocation(line: 598, column: 10, scope: !2355)
!2368 = !DILocation(line: 601, column: 11, scope: !2355)
!2369 = !DILocation(line: 599, column: 9, scope: !2355)
!2370 = !DILocation(line: 602, column: 31, scope: !2355)
!2371 = !DILocation(line: 602, column: 5, scope: !2355)
!2372 = !DILocation(line: 603, column: 1, scope: !2355)
!2373 = distinct !DISubprogram(name: "addReplyHelp", scope: !3, file: !3, line: 609, type: !2374, isLocal: false, isDefinition: true, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2377)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !6, !2376}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!2377 = !{!2378, !2379, !2380, !2381, !2382}
!2378 = !DILocalVariable(name: "c", arg: 1, scope: !2373, file: !3, line: 609, type: !6)
!2379 = !DILocalVariable(name: "help", arg: 2, scope: !2373, file: !3, line: 609, type: !2376)
!2380 = !DILocalVariable(name: "cmd", scope: !2373, file: !3, line: 610, type: !137)
!2381 = !DILocalVariable(name: "blenp", scope: !2373, file: !3, line: 611, type: !45)
!2382 = !DILocalVariable(name: "blen", scope: !2373, file: !3, line: 612, type: !18)
!2383 = !DILocation(line: 609, column: 27, scope: !2373)
!2384 = !DILocation(line: 609, column: 43, scope: !2373)
!2385 = !DILocation(line: 610, column: 33, scope: !2373)
!2386 = !DILocation(line: 610, column: 30, scope: !2373)
!2387 = !DILocation(line: 610, column: 42, scope: !2373)
!2388 = !DILocation(line: 610, column: 15, scope: !2373)
!2389 = !DILocation(line: 610, column: 9, scope: !2373)
!2390 = !DILocation(line: 611, column: 19, scope: !2373)
!2391 = !DILocation(line: 611, column: 11, scope: !2373)
!2392 = !DILocation(line: 612, column: 9, scope: !2373)
!2393 = !DILocation(line: 614, column: 5, scope: !2373)
!2394 = !DILocation(line: 615, column: 5, scope: !2373)
!2395 = !DILocation(line: 617, column: 5, scope: !2373)
!2396 = !DILocation(line: 619, column: 12, scope: !2373)
!2397 = !DILocation(line: 619, column: 5, scope: !2373)
!2398 = !DILocation(line: 410, column: 29, scope: !1799, inlinedAt: !2399)
!2399 = distinct !DILocation(line: 619, column: 24, scope: !2373)
!2400 = !DILocation(line: 410, column: 44, scope: !1799, inlinedAt: !2399)
!2401 = !DILocation(line: 411, column: 35, scope: !1799, inlinedAt: !2399)
!2402 = !DILocation(line: 404, column: 35, scope: !1787, inlinedAt: !2403)
!2403 = distinct !DILocation(line: 411, column: 5, scope: !1799, inlinedAt: !2399)
!2404 = !DILocation(line: 404, column: 50, scope: !1787, inlinedAt: !2403)
!2405 = !DILocation(line: 404, column: 60, scope: !1787, inlinedAt: !2403)
!2406 = !DILocation(line: 405, column: 5, scope: !1787, inlinedAt: !2403)
!2407 = !DILocation(line: 406, column: 5, scope: !1787, inlinedAt: !2403)
!2408 = !DILocation(line: 407, column: 5, scope: !1787, inlinedAt: !2403)
!2409 = !DILocation(line: 408, column: 1, scope: !1787, inlinedAt: !2403)
!2410 = !DILocation(line: 412, column: 1, scope: !1799, inlinedAt: !2399)
!2411 = !DILocation(line: 0, scope: !2373)
!2412 = distinct !{!2412, !2397, !2413}
!2413 = !DILocation(line: 619, column: 53, scope: !2373)
!2414 = !DILocation(line: 622, column: 40, scope: !2373)
!2415 = !DILocation(line: 622, column: 5, scope: !2373)
!2416 = !DILocation(line: 623, column: 1, scope: !2373)
!2417 = distinct !DISubprogram(name: "addReplySubcommandSyntaxError", scope: !3, file: !3, line: 628, type: !4, isLocal: false, isDefinition: true, scopeLine: 628, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2418)
!2418 = !{!2419, !2420}
!2419 = !DILocalVariable(name: "c", arg: 1, scope: !2417, file: !3, line: 628, type: !6)
!2420 = !DILocalVariable(name: "cmd", scope: !2417, file: !3, line: 629, type: !137)
!2421 = !DILocation(line: 628, column: 44, scope: !2417)
!2422 = !DILocation(line: 629, column: 33, scope: !2417)
!2423 = !DILocation(line: 629, column: 30, scope: !2417)
!2424 = !DILocation(line: 629, column: 42, scope: !2417)
!2425 = !DILocation(line: 629, column: 15, scope: !2417)
!2426 = !DILocation(line: 629, column: 9, scope: !2417)
!2427 = !DILocation(line: 630, column: 5, scope: !2417)
!2428 = !DILocation(line: 633, column: 19, scope: !2417)
!2429 = !DILocation(line: 633, column: 16, scope: !2417)
!2430 = !DILocation(line: 633, column: 28, scope: !2417)
!2431 = !DILocation(line: 631, column: 5, scope: !2417)
!2432 = !DILocation(line: 634, column: 5, scope: !2417)
!2433 = !DILocation(line: 635, column: 1, scope: !2417)
!2434 = distinct !DISubprogram(name: "AddReplyFromClient", scope: !3, file: !3, line: 639, type: !2435, isLocal: false, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2437)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{null, !6, !6}
!2437 = !{!2438, !2439}
!2438 = !DILocalVariable(name: "dst", arg: 1, scope: !2434, file: !3, line: 639, type: !6)
!2439 = !DILocalVariable(name: "src", arg: 2, scope: !2434, file: !3, line: 639, type: !6)
!2440 = !DILocation(line: 639, column: 33, scope: !2434)
!2441 = !DILocation(line: 639, column: 46, scope: !2434)
!2442 = !DILocation(line: 217, column: 34, scope: !1047, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 640, column: 9, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 640, column: 9)
!2445 = !DILocation(line: 220, column: 12, scope: !1054, inlinedAt: !2443)
!2446 = !DILocation(line: 220, column: 18, scope: !1054, inlinedAt: !2443)
!2447 = !DILocation(line: 220, column: 9, scope: !1047, inlinedAt: !2443)
!2448 = !DILocation(line: 223, column: 18, scope: !1058, inlinedAt: !2443)
!2449 = !DILocation(line: 227, column: 36, scope: !1060, inlinedAt: !2443)
!2450 = !DILocation(line: 223, column: 9, scope: !1047, inlinedAt: !2443)
!2451 = !DILocation(line: 230, column: 12, scope: !1063, inlinedAt: !2443)
!2452 = !DILocation(line: 230, column: 15, scope: !1063, inlinedAt: !2443)
!2453 = !DILocation(line: 230, column: 9, scope: !1047, inlinedAt: !2443)
!2454 = !DILocation(line: 664, column: 37, scope: !1067, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 234, column: 10, scope: !1071, inlinedAt: !2443)
!2456 = !DILocation(line: 665, column: 15, scope: !1067, inlinedAt: !2455)
!2457 = !DILocation(line: 665, column: 12, scope: !1067, inlinedAt: !2455)
!2458 = !DILocation(line: 665, column: 22, scope: !1067, inlinedAt: !2455)
!2459 = !DILocation(line: 665, column: 5, scope: !1067, inlinedAt: !2455)
!2460 = !DILocation(line: 234, column: 9, scope: !1047, inlinedAt: !2443)
!2461 = !DILocation(line: 665, column: 25, scope: !1067, inlinedAt: !2455)
!2462 = !DILocation(line: 176, column: 40, scope: !1024, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 234, column: 38, scope: !1071, inlinedAt: !2443)
!2464 = !DILocation(line: 180, column: 20, scope: !1029, inlinedAt: !2463)
!2465 = !DILocation(line: 180, column: 44, scope: !1029, inlinedAt: !2463)
!2466 = !DILocation(line: 181, column: 13, scope: !1029, inlinedAt: !2463)
!2467 = !DILocation(line: 181, column: 42, scope: !1029, inlinedAt: !2463)
!2468 = !DILocation(line: 182, column: 53, scope: !1029, inlinedAt: !2463)
!2469 = !DILocation(line: 182, column: 50, scope: !1029, inlinedAt: !2463)
!2470 = !DILocation(line: 180, column: 9, scope: !1024, inlinedAt: !2463)
!2471 = !DILocation(line: 190, column: 18, scope: !1040, inlinedAt: !2463)
!2472 = !DILocation(line: 191, column: 32, scope: !1040, inlinedAt: !2463)
!2473 = !DILocation(line: 191, column: 54, scope: !1040, inlinedAt: !2463)
!2474 = !DILocation(line: 191, column: 9, scope: !1040, inlinedAt: !2463)
!2475 = !DILocation(line: 192, column: 5, scope: !1040, inlinedAt: !2463)
!2476 = !DILocation(line: 193, column: 1, scope: !1024, inlinedAt: !2463)
!2477 = !DILocation(line: 234, column: 38, scope: !1071, inlinedAt: !2443)
!2478 = !DILocation(line: 238, column: 1, scope: !1047, inlinedAt: !2443)
!2479 = !DILocation(line: 642, column: 24, scope: !2434)
!2480 = !DILocation(line: 642, column: 39, scope: !2434)
!2481 = !DILocation(line: 642, column: 34, scope: !2434)
!2482 = !DILocation(line: 642, column: 5, scope: !2434)
!2483 = !DILocation(line: 643, column: 9, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 643, column: 9)
!2485 = !DILocation(line: 643, column: 9, scope: !2434)
!2486 = !DILocation(line: 644, column: 23, scope: !2484)
!2487 = !DILocation(line: 644, column: 9, scope: !2484)
!2488 = !DILocation(line: 645, column: 30, scope: !2434)
!2489 = !DILocation(line: 645, column: 10, scope: !2434)
!2490 = !DILocation(line: 645, column: 22, scope: !2434)
!2491 = !DILocation(line: 646, column: 22, scope: !2434)
!2492 = !DILocation(line: 647, column: 17, scope: !2434)
!2493 = !DILocation(line: 648, column: 1, scope: !2434)
!2494 = distinct !DISubprogram(name: "copyClientOutputBuffer", scope: !3, file: !3, line: 653, type: !2435, isLocal: false, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2495)
!2495 = !{!2496, !2497}
!2496 = !DILocalVariable(name: "dst", arg: 1, scope: !2494, file: !3, line: 653, type: !6)
!2497 = !DILocalVariable(name: "src", arg: 2, scope: !2494, file: !3, line: 653, type: !6)
!2498 = !DILocation(line: 653, column: 37, scope: !2494)
!2499 = !DILocation(line: 653, column: 50, scope: !2494)
!2500 = !DILocation(line: 654, column: 22, scope: !2494)
!2501 = !DILocation(line: 654, column: 5, scope: !2494)
!2502 = !DILocation(line: 655, column: 10, scope: !2494)
!2503 = !DILocation(line: 655, column: 18, scope: !2494)
!2504 = !DILocation(line: 656, column: 31, scope: !2494)
!2505 = !DILocation(line: 656, column: 18, scope: !2494)
!2506 = !DILocation(line: 656, column: 16, scope: !2494)
!2507 = !DILocation(line: 657, column: 12, scope: !2494)
!2508 = !DILocation(line: 657, column: 21, scope: !2494)
!2509 = !DILocation(line: 657, column: 35, scope: !2494)
!2510 = !DILocation(line: 657, column: 30, scope: !2494)
!2511 = !DILocation(line: 657, column: 5, scope: !2494)
!2512 = !DILocation(line: 658, column: 24, scope: !2494)
!2513 = !DILocation(line: 658, column: 10, scope: !2494)
!2514 = !DILocation(line: 658, column: 17, scope: !2494)
!2515 = !DILocation(line: 659, column: 29, scope: !2494)
!2516 = !DILocation(line: 659, column: 10, scope: !2494)
!2517 = !DILocation(line: 659, column: 22, scope: !2494)
!2518 = !DILocation(line: 660, column: 1, scope: !2494)
!2519 = distinct !DISubprogram(name: "acceptTcpHandler", scope: !3, file: !3, line: 740, type: !742, isLocal: false, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2520)
!2520 = !{!2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528}
!2521 = !DILocalVariable(name: "el", arg: 1, scope: !2519, file: !3, line: 740, type: !744)
!2522 = !DILocalVariable(name: "fd", arg: 2, scope: !2519, file: !3, line: 740, type: !18)
!2523 = !DILocalVariable(name: "privdata", arg: 3, scope: !2519, file: !3, line: 740, type: !45)
!2524 = !DILocalVariable(name: "mask", arg: 4, scope: !2519, file: !3, line: 740, type: !18)
!2525 = !DILocalVariable(name: "cport", scope: !2519, file: !3, line: 741, type: !18)
!2526 = !DILocalVariable(name: "cfd", scope: !2519, file: !3, line: 741, type: !18)
!2527 = !DILocalVariable(name: "max", scope: !2519, file: !3, line: 741, type: !18)
!2528 = !DILocalVariable(name: "cip", scope: !2519, file: !3, line: 742, type: !209)
!2529 = !DILocation(line: 740, column: 36, scope: !2519)
!2530 = !DILocation(line: 740, column: 44, scope: !2519)
!2531 = !DILocation(line: 740, column: 54, scope: !2519)
!2532 = !DILocation(line: 740, column: 68, scope: !2519)
!2533 = !DILocation(line: 741, column: 5, scope: !2519)
!2534 = !DILocation(line: 741, column: 21, scope: !2519)
!2535 = !DILocation(line: 742, column: 5, scope: !2519)
!2536 = !DILocation(line: 742, column: 10, scope: !2519)
!2537 = !DILocation(line: 747, column: 5, scope: !2519)
!2538 = !DILocation(line: 741, column: 9, scope: !2519)
!2539 = !DILocation(line: 748, column: 15, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 747, column: 18)
!2541 = !DILocation(line: 741, column: 16, scope: !2519)
!2542 = !DILocation(line: 749, column: 17, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 749, column: 13)
!2544 = !DILocation(line: 749, column: 13, scope: !2540)
!2545 = !DILocation(line: 750, column: 17, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 750, column: 17)
!2547 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 749, column: 30)
!2548 = !DILocation(line: 750, column: 23, scope: !2546)
!2549 = !DILocation(line: 750, column: 17, scope: !2547)
!2550 = !DILocation(line: 751, column: 17, scope: !2546)
!2551 = !DILocation(line: 755, column: 53, scope: !2540)
!2552 = !DILocation(line: 755, column: 9, scope: !2540)
!2553 = !DILocation(line: 756, column: 9, scope: !2540)
!2554 = !DILocation(line: 747, column: 14, scope: !2519)
!2555 = distinct !{!2555, !2537, !2556}
!2556 = !DILocation(line: 757, column: 5, scope: !2519)
!2557 = !DILocation(line: 758, column: 1, scope: !2519)
!2558 = distinct !DISubprogram(name: "acceptCommonHandler", scope: !3, file: !3, line: 691, type: !2559, isLocal: true, isDefinition: true, scopeLine: 691, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2561)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{null, !18, !18, !139}
!2561 = !{!2562, !2563, !2564, !2565, !2566}
!2562 = !DILocalVariable(name: "fd", arg: 1, scope: !2558, file: !3, line: 691, type: !18)
!2563 = !DILocalVariable(name: "flags", arg: 2, scope: !2558, file: !3, line: 691, type: !18)
!2564 = !DILocalVariable(name: "ip", arg: 3, scope: !2558, file: !3, line: 691, type: !139)
!2565 = !DILocalVariable(name: "c", scope: !2558, file: !3, line: 692, type: !6)
!2566 = !DILocalVariable(name: "err", scope: !2567, file: !3, line: 705, type: !139)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 704, column: 57)
!2568 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 704, column: 9)
!2569 = !DILocation(line: 691, column: 37, scope: !2558)
!2570 = !DILocation(line: 691, column: 45, scope: !2558)
!2571 = !DILocation(line: 691, column: 58, scope: !2558)
!2572 = !DILocation(line: 693, column: 14, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 693, column: 9)
!2574 = !DILocation(line: 692, column: 13, scope: !2558)
!2575 = !DILocation(line: 693, column: 32, scope: !2573)
!2576 = !DILocation(line: 693, column: 9, scope: !2558)
!2577 = !DILocation(line: 696, column: 22, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2573, file: !3, line: 693, column: 41)
!2579 = !DILocation(line: 696, column: 13, scope: !2578)
!2580 = !DILocation(line: 694, column: 9, scope: !2578)
!2581 = !DILocation(line: 697, column: 9, scope: !2578)
!2582 = !DILocation(line: 698, column: 9, scope: !2578)
!2583 = !DILocation(line: 704, column: 9, scope: !2568)
!2584 = !DILocation(line: 704, column: 45, scope: !2568)
!2585 = !{!442, !378, i64 2700}
!2586 = !DILocation(line: 704, column: 38, scope: !2568)
!2587 = !DILocation(line: 704, column: 36, scope: !2568)
!2588 = !DILocation(line: 704, column: 9, scope: !2558)
!2589 = !DILocation(line: 708, column: 22, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 708, column: 13)
!2591 = !DILocation(line: 708, column: 29, scope: !2590)
!2592 = !DILocation(line: 708, column: 13, scope: !2590)
!2593 = !DILocation(line: 711, column: 34, scope: !2567)
!2594 = !{!442, !443, i64 1136}
!2595 = !DILocation(line: 712, column: 9, scope: !2567)
!2596 = !DILocation(line: 720, column: 16, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 720, column: 9)
!2598 = !{!442, !378, i64 856}
!2599 = !DILocation(line: 720, column: 9, scope: !2597)
!2600 = !DILocation(line: 721, column: 16, scope: !2597)
!2601 = !DILocation(line: 721, column: 31, scope: !2597)
!2602 = !DILocation(line: 720, column: 31, scope: !2597)
!2603 = !DILocation(line: 722, column: 16, scope: !2597)
!2604 = !DILocation(line: 722, column: 28, scope: !2597)
!2605 = !DILocation(line: 723, column: 17, scope: !2597)
!2606 = !DILocation(line: 724, column: 12, scope: !2597)
!2607 = !DILocation(line: 723, column: 39, scope: !2597)
!2608 = !DILocation(line: 726, column: 13, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !3, line: 726, column: 13)
!2610 = distinct !DILexicalBlock(scope: !2597, file: !3, line: 725, column: 5)
!2611 = !DILocation(line: 726, column: 36, scope: !2609)
!2612 = !DILocation(line: 726, column: 39, scope: !2609)
!2613 = !DILocation(line: 726, column: 13, scope: !2610)
!2614 = !DILocation(line: 727, column: 26, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 727, column: 17)
!2616 = distinct !DILexicalBlock(scope: !2609, file: !3, line: 726, column: 57)
!2617 = !DILocation(line: 727, column: 33, scope: !2615)
!2618 = !DILocation(line: 727, column: 17, scope: !2615)
!2619 = !DILocation(line: 730, column: 38, scope: !2616)
!2620 = !DILocation(line: 731, column: 13, scope: !2616)
!2621 = !DILocation(line: 732, column: 13, scope: !2616)
!2622 = !DILocation(line: 736, column: 31, scope: !2558)
!2623 = !{!442, !443, i64 1016}
!2624 = !DILocation(line: 737, column: 8, scope: !2558)
!2625 = !DILocation(line: 737, column: 14, scope: !2558)
!2626 = !DILocation(line: 738, column: 1, scope: !2558)
!2627 = distinct !DISubprogram(name: "acceptUnixHandler", scope: !3, file: !3, line: 760, type: !742, isLocal: false, isDefinition: true, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2628)
!2628 = !{!2629, !2630, !2631, !2632, !2633, !2634}
!2629 = !DILocalVariable(name: "el", arg: 1, scope: !2627, file: !3, line: 760, type: !744)
!2630 = !DILocalVariable(name: "fd", arg: 2, scope: !2627, file: !3, line: 760, type: !18)
!2631 = !DILocalVariable(name: "privdata", arg: 3, scope: !2627, file: !3, line: 760, type: !45)
!2632 = !DILocalVariable(name: "mask", arg: 4, scope: !2627, file: !3, line: 760, type: !18)
!2633 = !DILocalVariable(name: "cfd", scope: !2627, file: !3, line: 761, type: !18)
!2634 = !DILocalVariable(name: "max", scope: !2627, file: !3, line: 761, type: !18)
!2635 = !DILocation(line: 760, column: 37, scope: !2627)
!2636 = !DILocation(line: 760, column: 45, scope: !2627)
!2637 = !DILocation(line: 760, column: 55, scope: !2627)
!2638 = !DILocation(line: 760, column: 69, scope: !2627)
!2639 = !DILocation(line: 761, column: 14, scope: !2627)
!2640 = !DILocation(line: 766, column: 5, scope: !2627)
!2641 = !DILocation(line: 767, column: 15, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2627, file: !3, line: 766, column: 18)
!2643 = !DILocation(line: 761, column: 9, scope: !2627)
!2644 = !DILocation(line: 768, column: 17, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2642, file: !3, line: 768, column: 13)
!2646 = !DILocation(line: 768, column: 13, scope: !2642)
!2647 = !DILocation(line: 769, column: 17, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 769, column: 17)
!2649 = distinct !DILexicalBlock(scope: !2645, file: !3, line: 768, column: 30)
!2650 = !DILocation(line: 769, column: 23, scope: !2648)
!2651 = !DILocation(line: 769, column: 17, scope: !2649)
!2652 = !DILocation(line: 770, column: 17, scope: !2648)
!2653 = !DILocation(line: 774, column: 66, scope: !2642)
!2654 = !{!442, !381, i64 360}
!2655 = !DILocation(line: 774, column: 9, scope: !2642)
!2656 = !DILocation(line: 775, column: 9, scope: !2642)
!2657 = !DILocation(line: 766, column: 14, scope: !2627)
!2658 = distinct !{!2658, !2640, !2659}
!2659 = !DILocation(line: 776, column: 5, scope: !2627)
!2660 = !DILocation(line: 777, column: 1, scope: !2627)
!2661 = distinct !DISubprogram(name: "disconnectSlaves", scope: !3, file: !3, line: 790, type: !2662, isLocal: false, isDefinition: true, scopeLine: 790, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2664)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{null}
!2664 = !{!2665}
!2665 = !DILocalVariable(name: "ln", scope: !2666, file: !3, line: 792, type: !103)
!2666 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 791, column: 39)
!2667 = !DILocation(line: 791, column: 12, scope: !2661)
!2668 = !DILocation(line: 791, column: 5, scope: !2661)
!2669 = !DILocation(line: 792, column: 24, scope: !2666)
!2670 = !{!452, !381, i64 0}
!2671 = !DILocation(line: 792, column: 19, scope: !2666)
!2672 = !DILocation(line: 793, column: 33, scope: !2666)
!2673 = !DILocation(line: 793, column: 9, scope: !2666)
!2674 = distinct !{!2674, !2668, !2675}
!2675 = !DILocation(line: 794, column: 5, scope: !2661)
!2676 = !DILocation(line: 795, column: 1, scope: !2661)
!2677 = distinct !DISubprogram(name: "freeClient", scope: !3, file: !3, line: 853, type: !4, isLocal: false, isDefinition: true, scopeLine: 853, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2678)
!2678 = !{!2679, !2680, !2681}
!2679 = !DILocalVariable(name: "c", arg: 1, scope: !2677, file: !3, line: 853, type: !6)
!2680 = !DILocalVariable(name: "ln", scope: !2677, file: !3, line: 854, type: !103)
!2681 = !DILocalVariable(name: "l", scope: !2682, file: !3, line: 920, type: !97)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !3, line: 915, column: 34)
!2683 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 915, column: 9)
!2684 = !DILocation(line: 853, column: 25, scope: !2677)
!2685 = !DILocation(line: 858, column: 12, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 858, column: 9)
!2687 = !DILocation(line: 858, column: 18, scope: !2686)
!2688 = !DILocation(line: 858, column: 9, scope: !2677)
!2689 = !DILocation(line: 957, column: 30, scope: !1299, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 859, column: 9, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 858, column: 38)
!2692 = !DILocation(line: 958, column: 38, scope: !1304, inlinedAt: !2690)
!2693 = !DILocation(line: 959, column: 14, scope: !1299, inlinedAt: !2690)
!2694 = !DILocation(line: 960, column: 28, scope: !1299, inlinedAt: !2690)
!2695 = !DILocation(line: 960, column: 45, scope: !1299, inlinedAt: !2690)
!2696 = !DILocation(line: 960, column: 5, scope: !1299, inlinedAt: !2690)
!2697 = !DILocation(line: 961, column: 1, scope: !1299, inlinedAt: !2690)
!2698 = !DILocation(line: 860, column: 9, scope: !2691)
!2699 = !DILocation(line: 868, column: 16, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 868, column: 9)
!2701 = !{!442, !381, i64 2480}
!2702 = !DILocation(line: 868, column: 9, scope: !2700)
!2703 = !DILocation(line: 868, column: 35, scope: !2700)
!2704 = !DILocation(line: 868, column: 23, scope: !2700)
!2705 = !DILocation(line: 869, column: 9, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2700, file: !3, line: 868, column: 52)
!2707 = !DILocation(line: 870, column: 18, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 870, column: 13)
!2709 = !DILocation(line: 870, column: 24, scope: !2708)
!2710 = !DILocation(line: 870, column: 13, scope: !2706)
!2711 = !DILocation(line: 874, column: 13, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 873, column: 9)
!2713 = !DILocation(line: 875, column: 13, scope: !2712)
!2714 = !DILocation(line: 880, column: 13, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 880, column: 9)
!2716 = !DILocation(line: 880, column: 35, scope: !2715)
!2717 = !DILocation(line: 882, column: 13, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2715, file: !3, line: 880, column: 68)
!2719 = !DILocation(line: 881, column: 9, scope: !2718)
!2720 = !DILocation(line: 883, column: 5, scope: !2718)
!2721 = !DILocation(line: 886, column: 16, scope: !2677)
!2722 = !DILocation(line: 886, column: 5, scope: !2677)
!2723 = !DILocation(line: 887, column: 16, scope: !2677)
!2724 = !DILocation(line: 887, column: 5, scope: !2677)
!2725 = !DILocation(line: 888, column: 17, scope: !2677)
!2726 = !DILocation(line: 891, column: 12, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 891, column: 9)
!2728 = !DILocation(line: 891, column: 18, scope: !2727)
!2729 = !DILocation(line: 891, column: 9, scope: !2677)
!2730 = !DILocation(line: 891, column: 36, scope: !2727)
!2731 = !DILocation(line: 892, column: 25, scope: !2677)
!2732 = !DILocation(line: 892, column: 5, scope: !2677)
!2733 = !DILocation(line: 895, column: 5, scope: !2677)
!2734 = !DILocation(line: 896, column: 20, scope: !2677)
!2735 = !DILocation(line: 896, column: 5, scope: !2677)
!2736 = !DILocation(line: 899, column: 5, scope: !2677)
!2737 = !DILocation(line: 900, column: 5, scope: !2677)
!2738 = !DILocation(line: 901, column: 20, scope: !2677)
!2739 = !DILocation(line: 901, column: 5, scope: !2677)
!2740 = !DILocation(line: 902, column: 20, scope: !2677)
!2741 = !DILocation(line: 902, column: 5, scope: !2677)
!2742 = !DILocation(line: 905, column: 20, scope: !2677)
!2743 = !DILocation(line: 905, column: 5, scope: !2677)
!2744 = !DILocalVariable(name: "c", arg: 1, scope: !2745, file: !3, line: 779, type: !6)
!2745 = distinct !DISubprogram(name: "freeClientArgv", scope: !3, file: !3, line: 779, type: !4, isLocal: true, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2746)
!2746 = !{!2744, !2747}
!2747 = !DILocalVariable(name: "j", scope: !2745, file: !3, line: 780, type: !18)
!2748 = !DILocation(line: 779, column: 36, scope: !2745, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 906, column: 5, scope: !2677)
!2750 = !DILocation(line: 780, column: 9, scope: !2745, inlinedAt: !2749)
!2751 = !DILocation(line: 781, column: 24, scope: !2752, inlinedAt: !2749)
!2752 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 781, column: 5)
!2753 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 781, column: 5)
!2754 = !DILocation(line: 781, column: 19, scope: !2752, inlinedAt: !2749)
!2755 = !DILocation(line: 781, column: 5, scope: !2753, inlinedAt: !2749)
!2756 = !DILocation(line: 782, column: 25, scope: !2752, inlinedAt: !2749)
!2757 = !DILocation(line: 782, column: 22, scope: !2752, inlinedAt: !2749)
!2758 = !DILocation(line: 782, column: 9, scope: !2752, inlinedAt: !2749)
!2759 = !DILocation(line: 781, column: 31, scope: !2752, inlinedAt: !2749)
!2760 = distinct !{!2760, !2761, !2762}
!2761 = !DILocation(line: 781, column: 5, scope: !2753)
!2762 = !DILocation(line: 782, column: 32, scope: !2753)
!2763 = !DILocation(line: 783, column: 13, scope: !2745, inlinedAt: !2749)
!2764 = !DILocation(line: 784, column: 8, scope: !2745, inlinedAt: !2749)
!2765 = !DILocation(line: 784, column: 12, scope: !2745, inlinedAt: !2749)
!2766 = !{!456, !381, i64 80}
!2767 = !DILocation(line: 785, column: 1, scope: !2745, inlinedAt: !2749)
!2768 = !DILocation(line: 911, column: 5, scope: !2677)
!2769 = !DILocation(line: 915, column: 12, scope: !2683)
!2770 = !DILocation(line: 915, column: 18, scope: !2683)
!2771 = !DILocation(line: 915, column: 9, scope: !2677)
!2772 = !DILocation(line: 916, column: 16, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 916, column: 13)
!2774 = !DILocation(line: 916, column: 26, scope: !2773)
!2775 = !DILocation(line: 916, column: 13, scope: !2682)
!2776 = !DILocation(line: 917, column: 20, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 917, column: 17)
!2778 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 916, column: 52)
!2779 = !{!456, !378, i64 176}
!2780 = !DILocation(line: 917, column: 29, scope: !2777)
!2781 = !DILocation(line: 917, column: 17, scope: !2778)
!2782 = !DILocation(line: 917, column: 36, scope: !2777)
!2783 = !DILocation(line: 918, column: 20, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2778, file: !3, line: 918, column: 17)
!2785 = !{!456, !381, i64 200}
!2786 = !DILocation(line: 918, column: 17, scope: !2784)
!2787 = !DILocation(line: 918, column: 17, scope: !2778)
!2788 = !DILocation(line: 918, column: 34, scope: !2784)
!2789 = !DILocation(line: 920, column: 23, scope: !2682)
!2790 = !DILocation(line: 920, column: 29, scope: !2682)
!2791 = !DILocation(line: 920, column: 56, scope: !2682)
!2792 = !DILocation(line: 920, column: 74, scope: !2682)
!2793 = !DILocation(line: 920, column: 19, scope: !2682)
!2794 = !DILocation(line: 920, column: 15, scope: !2682)
!2795 = !DILocation(line: 921, column: 30, scope: !2682)
!2796 = !DILocation(line: 921, column: 14, scope: !2682)
!2797 = !DILocation(line: 854, column: 15, scope: !2677)
!2798 = !DILocation(line: 922, column: 9, scope: !2682)
!2799 = !DILocation(line: 923, column: 9, scope: !2682)
!2800 = !DILocation(line: 927, column: 16, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 927, column: 13)
!2802 = !DILocation(line: 927, column: 22, scope: !2801)
!2803 = !DILocation(line: 927, column: 37, scope: !2801)
!2804 = !DILocation(line: 927, column: 40, scope: !2801)
!2805 = !DILocation(line: 927, column: 66, scope: !2801)
!2806 = !DILocation(line: 927, column: 13, scope: !2682)
!2807 = !DILocation(line: 928, column: 50, scope: !2801)
!2808 = !DILocation(line: 928, column: 41, scope: !2801)
!2809 = !{!442, !411, i64 2424}
!2810 = !DILocation(line: 928, column: 13, scope: !2801)
!2811 = !DILocation(line: 929, column: 9, scope: !2682)
!2812 = !DILocation(line: 934, column: 12, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 934, column: 9)
!2814 = !DILocation(line: 930, column: 5, scope: !2682)
!2815 = !DILocation(line: 934, column: 18, scope: !2813)
!2816 = !DILocation(line: 934, column: 9, scope: !2677)
!2817 = !DILocation(line: 934, column: 35, scope: !2813)
!2818 = !DILocation(line: 938, column: 12, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 938, column: 9)
!2820 = !DILocation(line: 938, column: 18, scope: !2819)
!2821 = !DILocation(line: 938, column: 9, scope: !2677)
!2822 = !DILocation(line: 939, column: 35, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 938, column: 39)
!2824 = !DILocation(line: 939, column: 52, scope: !2823)
!2825 = !DILocation(line: 939, column: 14, scope: !2823)
!2826 = !DILocation(line: 940, column: 9, scope: !2823)
!2827 = !DILocation(line: 941, column: 28, scope: !2823)
!2828 = !DILocation(line: 941, column: 9, scope: !2823)
!2829 = !DILocation(line: 942, column: 5, scope: !2823)
!2830 = !DILocation(line: 946, column: 12, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 946, column: 9)
!2832 = !DILocation(line: 946, column: 9, scope: !2831)
!2833 = !DILocation(line: 946, column: 9, scope: !2677)
!2834 = !DILocation(line: 946, column: 18, scope: !2831)
!2835 = !DILocation(line: 947, column: 14, scope: !2677)
!2836 = !DILocation(line: 947, column: 5, scope: !2677)
!2837 = !DILocation(line: 948, column: 5, scope: !2677)
!2838 = !DILocation(line: 949, column: 16, scope: !2677)
!2839 = !DILocation(line: 949, column: 5, scope: !2677)
!2840 = !DILocation(line: 950, column: 13, scope: !2677)
!2841 = !DILocalVariable(name: "a", arg: 1, scope: !2842, file: !479, line: 237, type: !482)
!2842 = distinct !DISubprogram(name: "uk_free", scope: !479, file: !479, line: 237, type: !511, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2843)
!2843 = !{!2841, !2844}
!2844 = !DILocalVariable(name: "ptr", arg: 2, scope: !2842, file: !479, line: 237, type: !45)
!2845 = !DILocation(line: 237, column: 45, scope: !2842, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 950, column: 5, scope: !2677)
!2847 = !DILocalVariable(name: "a", arg: 1, scope: !2848, file: !479, line: 231, type: !482)
!2848 = distinct !DISubprogram(name: "uk_do_free", scope: !479, file: !479, line: 231, type: !511, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2849)
!2849 = !{!2847, !2850}
!2850 = !DILocalVariable(name: "ptr", arg: 2, scope: !2848, file: !479, line: 231, type: !45)
!2851 = !DILocation(line: 231, column: 48, scope: !2848, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 239, column: 2, scope: !2842, inlinedAt: !2846)
!2853 = !DILocation(line: 233, column: 2, scope: !2854, inlinedAt: !2852)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !479, line: 233, column: 2)
!2855 = distinct !DILexicalBlock(scope: !2848, file: !479, line: 233, column: 2)
!2856 = !DILocation(line: 233, column: 2, scope: !2855, inlinedAt: !2852)
!2857 = !DILocation(line: 233, column: 2, scope: !2858, inlinedAt: !2852)
!2858 = distinct !DILexicalBlock(scope: !2854, file: !479, line: 233, column: 2)
!2859 = !DILocation(line: 950, column: 34, scope: !2677)
!2860 = !DILocation(line: 231, column: 57, scope: !2848, inlinedAt: !2852)
!2861 = !DILocation(line: 237, column: 54, scope: !2842, inlinedAt: !2846)
!2862 = !DILocation(line: 234, column: 5, scope: !2848, inlinedAt: !2852)
!2863 = !DILocation(line: 234, column: 2, scope: !2848, inlinedAt: !2852)
!2864 = !DILocation(line: 235, column: 1, scope: !2848, inlinedAt: !2852)
!2865 = !DILocation(line: 240, column: 1, scope: !2842, inlinedAt: !2846)
!2866 = !DILocation(line: 951, column: 1, scope: !2677)
!2867 = distinct !DISubprogram(name: "unlinkClient", scope: !3, file: !3, line: 800, type: !4, isLocal: false, isDefinition: true, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2868)
!2868 = !{!2869, !2870, !2871}
!2869 = !DILocalVariable(name: "c", arg: 1, scope: !2867, file: !3, line: 800, type: !6)
!2870 = !DILocalVariable(name: "ln", scope: !2867, file: !3, line: 801, type: !103)
!2871 = !DILocalVariable(name: "id", scope: !2872, file: !3, line: 812, type: !12)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 811, column: 34)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 811, column: 13)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 809, column: 22)
!2875 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 809, column: 9)
!2876 = !DILocation(line: 800, column: 27, scope: !2867)
!2877 = !DILocation(line: 804, column: 16, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 804, column: 9)
!2879 = !{!442, !381, i64 552}
!2880 = !DILocation(line: 804, column: 31, scope: !2878)
!2881 = !DILocation(line: 804, column: 9, scope: !2867)
!2882 = !DILocation(line: 804, column: 59, scope: !2878)
!2883 = !DILocation(line: 804, column: 37, scope: !2878)
!2884 = !DILocation(line: 809, column: 12, scope: !2875)
!2885 = !DILocation(line: 809, column: 15, scope: !2875)
!2886 = !DILocation(line: 809, column: 9, scope: !2867)
!2887 = !DILocation(line: 836, column: 12, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 836, column: 9)
!2889 = !DILocation(line: 811, column: 16, scope: !2873)
!2890 = !DILocation(line: 811, column: 13, scope: !2873)
!2891 = !DILocation(line: 811, column: 13, scope: !2874)
!2892 = !DILocation(line: 812, column: 13, scope: !2872)
!2893 = !DILocation(line: 812, column: 27, scope: !2872)
!2894 = !DILocation(line: 812, column: 22, scope: !2872)
!2895 = !DILocation(line: 813, column: 30, scope: !2872)
!2896 = !DILocation(line: 813, column: 13, scope: !2872)
!2897 = !DILocation(line: 814, column: 32, scope: !2872)
!2898 = !DILocation(line: 814, column: 43, scope: !2872)
!2899 = !DILocation(line: 814, column: 13, scope: !2872)
!2900 = !DILocation(line: 815, column: 33, scope: !2872)
!2901 = !DILocation(line: 816, column: 9, scope: !2873)
!2902 = !DILocation(line: 816, column: 9, scope: !2872)
!2903 = !DILocation(line: 823, column: 17, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 823, column: 13)
!2905 = !DILocation(line: 823, column: 23, scope: !2904)
!2906 = !DILocation(line: 823, column: 39, scope: !2904)
!2907 = !DILocation(line: 824, column: 17, scope: !2904)
!2908 = !DILocation(line: 824, column: 27, scope: !2904)
!2909 = !DILocation(line: 823, column: 13, scope: !2874)
!2910 = !DILocation(line: 825, column: 25, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2904, file: !3, line: 824, column: 60)
!2912 = !DILocation(line: 825, column: 13, scope: !2911)
!2913 = !DILocation(line: 826, column: 9, scope: !2911)
!2914 = !DILocation(line: 829, column: 34, scope: !2874)
!2915 = !DILocation(line: 829, column: 40, scope: !2874)
!2916 = !DILocation(line: 829, column: 9, scope: !2874)
!2917 = !DILocation(line: 830, column: 34, scope: !2874)
!2918 = !DILocation(line: 830, column: 40, scope: !2874)
!2919 = !DILocation(line: 830, column: 9, scope: !2874)
!2920 = !DILocation(line: 831, column: 18, scope: !2874)
!2921 = !DILocation(line: 831, column: 9, scope: !2874)
!2922 = !DILocation(line: 832, column: 15, scope: !2874)
!2923 = !DILocation(line: 833, column: 5, scope: !2874)
!2924 = !DILocation(line: 836, column: 18, scope: !2888)
!2925 = !DILocation(line: 836, column: 9, scope: !2867)
!2926 = !DILocation(line: 837, column: 35, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 836, column: 42)
!2928 = !DILocation(line: 837, column: 57, scope: !2927)
!2929 = !DILocation(line: 837, column: 14, scope: !2927)
!2930 = !DILocation(line: 801, column: 15, scope: !2867)
!2931 = !DILocation(line: 838, column: 9, scope: !2927)
!2932 = !DILocation(line: 839, column: 28, scope: !2927)
!2933 = !DILocation(line: 839, column: 9, scope: !2927)
!2934 = !DILocation(line: 840, column: 18, scope: !2927)
!2935 = !DILocation(line: 841, column: 5, scope: !2927)
!2936 = !DILocation(line: 845, column: 12, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 845, column: 9)
!2938 = !DILocation(line: 845, column: 18, scope: !2937)
!2939 = !DILocation(line: 845, column: 9, scope: !2867)
!2940 = !DILocation(line: 846, column: 35, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 845, column: 38)
!2942 = !{!442, !381, i64 2768}
!2943 = !DILocation(line: 846, column: 53, scope: !2941)
!2944 = !DILocation(line: 846, column: 14, scope: !2941)
!2945 = !DILocation(line: 847, column: 9, scope: !2941)
!2946 = !DILocation(line: 848, column: 28, scope: !2941)
!2947 = !DILocation(line: 848, column: 9, scope: !2941)
!2948 = !DILocation(line: 849, column: 18, scope: !2941)
!2949 = !DILocation(line: 850, column: 5, scope: !2941)
!2950 = !DILocation(line: 851, column: 1, scope: !2867)
!2951 = !DILocation(line: 957, column: 30, scope: !1299)
!2952 = !DILocation(line: 958, column: 12, scope: !1304)
!2953 = !DILocation(line: 958, column: 38, scope: !1304)
!2954 = !DILocation(line: 959, column: 14, scope: !1299)
!2955 = !DILocation(line: 960, column: 28, scope: !1299)
!2956 = !DILocation(line: 960, column: 45, scope: !1299)
!2957 = !DILocation(line: 960, column: 5, scope: !1299)
!2958 = !DILocation(line: 961, column: 1, scope: !1299)
!2959 = distinct !DISubprogram(name: "freeClientsInAsyncFreeQueue", scope: !3, file: !3, line: 963, type: !2662, isLocal: false, isDefinition: true, scopeLine: 963, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2960)
!2960 = !{!2961, !2963}
!2961 = !DILocalVariable(name: "ln", scope: !2962, file: !3, line: 965, type: !103)
!2962 = distinct !DILexicalBlock(scope: !2959, file: !3, line: 964, column: 49)
!2963 = !DILocalVariable(name: "c", scope: !2962, file: !3, line: 966, type: !6)
!2964 = !DILocation(line: 964, column: 12, scope: !2959)
!2965 = !DILocation(line: 964, column: 5, scope: !2959)
!2966 = !DILocation(line: 965, column: 24, scope: !2962)
!2967 = !DILocation(line: 965, column: 19, scope: !2962)
!2968 = !DILocation(line: 966, column: 21, scope: !2962)
!2969 = !DILocation(line: 966, column: 17, scope: !2962)
!2970 = !DILocation(line: 968, column: 12, scope: !2962)
!2971 = !DILocation(line: 968, column: 18, scope: !2962)
!2972 = !DILocation(line: 969, column: 9, scope: !2962)
!2973 = !DILocation(line: 970, column: 28, scope: !2962)
!2974 = !DILocation(line: 970, column: 9, scope: !2962)
!2975 = distinct !{!2975, !2965, !2976}
!2976 = !DILocation(line: 971, column: 5, scope: !2959)
!2977 = !DILocation(line: 972, column: 1, scope: !2959)
!2978 = distinct !DISubprogram(name: "lookupClientByID", scope: !3, file: !3, line: 977, type: !2979, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2981)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!6, !12}
!2981 = !{!2982, !2983}
!2982 = !DILocalVariable(name: "id", arg: 1, scope: !2978, file: !3, line: 977, type: !12)
!2983 = !DILocalVariable(name: "c", scope: !2978, file: !3, line: 979, type: !6)
!2984 = !DILocation(line: 977, column: 35, scope: !2978)
!2985 = !DILocation(line: 978, column: 10, scope: !2978)
!2986 = !DILocation(line: 978, column: 8, scope: !2978)
!2987 = !DILocation(line: 979, column: 32, scope: !2978)
!2988 = !DILocation(line: 979, column: 46, scope: !2978)
!2989 = !DILocation(line: 979, column: 17, scope: !2978)
!2990 = !DILocation(line: 979, column: 13, scope: !2978)
!2991 = !DILocation(line: 980, column: 18, scope: !2978)
!2992 = !DILocation(line: 980, column: 15, scope: !2978)
!2993 = !DILocation(line: 980, column: 12, scope: !2978)
!2994 = !DILocation(line: 980, column: 5, scope: !2978)
!2995 = distinct !DISubprogram(name: "writeToClient", scope: !3, file: !3, line: 985, type: !2996, isLocal: false, isDefinition: true, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2998)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!18, !18, !6, !18}
!2998 = !{!2999, !3000, !3001, !3002, !3003, !3004, !3005}
!2999 = !DILocalVariable(name: "fd", arg: 1, scope: !2995, file: !3, line: 985, type: !18)
!3000 = !DILocalVariable(name: "c", arg: 2, scope: !2995, file: !3, line: 985, type: !6)
!3001 = !DILocalVariable(name: "handler_installed", arg: 3, scope: !2995, file: !3, line: 985, type: !18)
!3002 = !DILocalVariable(name: "nwritten", scope: !2995, file: !3, line: 986, type: !270)
!3003 = !DILocalVariable(name: "totwritten", scope: !2995, file: !3, line: 986, type: !270)
!3004 = !DILocalVariable(name: "objlen", scope: !2995, file: !3, line: 987, type: !142)
!3005 = !DILocalVariable(name: "o", scope: !2995, file: !3, line: 988, type: !399)
!3006 = !DILocation(line: 985, column: 23, scope: !2995)
!3007 = !DILocation(line: 985, column: 35, scope: !2995)
!3008 = !DILocation(line: 985, column: 42, scope: !2995)
!3009 = !DILocation(line: 986, column: 13, scope: !2995)
!3010 = !DILocation(line: 986, column: 27, scope: !2995)
!3011 = !DILocation(line: 990, column: 5, scope: !2995)
!3012 = !DILocation(line: 665, column: 15, scope: !1067, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 990, column: 11, scope: !2995)
!3014 = !DILocation(line: 664, column: 37, scope: !1067, inlinedAt: !3013)
!3015 = !DILocation(line: 665, column: 12, scope: !1067, inlinedAt: !3013)
!3016 = !DILocation(line: 665, column: 22, scope: !1067, inlinedAt: !3013)
!3017 = !DILocation(line: 665, column: 25, scope: !1067, inlinedAt: !3013)
!3018 = !DILocation(line: 665, column: 5, scope: !1067, inlinedAt: !3013)
!3019 = !DILocation(line: 991, column: 23, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 991, column: 13)
!3021 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 990, column: 39)
!3022 = !DILocation(line: 991, column: 13, scope: !3021)
!3023 = !DILocation(line: 1004, column: 17, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 1003, column: 16)
!3025 = !DILocation(line: 992, column: 43, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3020, file: !3, line: 991, column: 28)
!3027 = !DILocation(line: 992, column: 39, scope: !3026)
!3028 = !DILocation(line: 992, column: 51, scope: !3026)
!3029 = !DILocation(line: 992, column: 60, scope: !3026)
!3030 = !DILocation(line: 992, column: 24, scope: !3026)
!3031 = !DILocation(line: 993, column: 26, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 993, column: 17)
!3033 = !DILocation(line: 993, column: 17, scope: !3026)
!3034 = !DILocation(line: 994, column: 24, scope: !3026)
!3035 = !DILocation(line: 995, column: 24, scope: !3026)
!3036 = !DILocation(line: 999, column: 17, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 999, column: 17)
!3038 = !DILocation(line: 999, column: 39, scope: !3037)
!3039 = !DILocation(line: 999, column: 33, scope: !3037)
!3040 = !DILocation(line: 999, column: 17, scope: !3026)
!3041 = !DILocation(line: 1000, column: 27, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 999, column: 47)
!3043 = !DILocation(line: 1001, column: 28, scope: !3042)
!3044 = !DILocation(line: 1002, column: 13, scope: !3042)
!3045 = !DILocation(line: 988, column: 23, scope: !2995)
!3046 = !DILocation(line: 1005, column: 25, scope: !3024)
!3047 = !DILocation(line: 987, column: 12, scope: !2995)
!3048 = !DILocation(line: 1007, column: 24, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1007, column: 17)
!3050 = !DILocation(line: 1007, column: 17, scope: !3024)
!3051 = !DILocation(line: 1008, column: 38, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3049, file: !3, line: 1007, column: 30)
!3053 = !DILocation(line: 1008, column: 32, scope: !3052)
!3054 = !DILocation(line: 1009, column: 17, scope: !3052)
!3055 = !DILocation(line: 1010, column: 17, scope: !3052)
!3056 = distinct !{!3056, !3011, !3057}
!3057 = !DILocation(line: 1045, column: 5, scope: !2995)
!3058 = !DILocation(line: 1013, column: 46, scope: !3024)
!3059 = !DILocation(line: 1013, column: 41, scope: !3024)
!3060 = !DILocation(line: 1013, column: 62, scope: !3024)
!3061 = !DILocation(line: 1013, column: 24, scope: !3024)
!3062 = !DILocation(line: 1014, column: 26, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1014, column: 17)
!3064 = !DILocation(line: 1014, column: 17, scope: !3024)
!3065 = !DILocation(line: 1015, column: 24, scope: !3024)
!3066 = !DILocation(line: 1016, column: 24, scope: !3024)
!3067 = !DILocation(line: 1019, column: 28, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 1019, column: 17)
!3069 = !DILocation(line: 1019, column: 17, scope: !3024)
!3070 = !DILocation(line: 1020, column: 38, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3068, file: !3, line: 1019, column: 39)
!3072 = !DILocation(line: 1020, column: 32, scope: !3071)
!3073 = !DILocation(line: 1021, column: 32, scope: !3071)
!3074 = !DILocation(line: 1021, column: 38, scope: !3071)
!3075 = !DILocation(line: 1021, column: 17, scope: !3071)
!3076 = !DILocation(line: 1022, column: 28, scope: !3071)
!3077 = !DILocation(line: 1025, column: 21, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3071, file: !3, line: 1025, column: 21)
!3079 = !DILocation(line: 1025, column: 42, scope: !3078)
!3080 = !DILocation(line: 1025, column: 21, scope: !3071)
!3081 = !DILocation(line: 1026, column: 21, scope: !3078)
!3082 = !DILocation(line: 0, scope: !3024)
!3083 = !DILocation(line: 1041, column: 24, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 1041, column: 13)
!3085 = !DILocation(line: 1041, column: 51, scope: !3084)
!3086 = !DILocation(line: 1042, column: 21, scope: !3084)
!3087 = !{!442, !443, i64 2704}
!3088 = !DILocation(line: 1042, column: 31, scope: !3084)
!3089 = !DILocation(line: 1042, column: 36, scope: !3084)
!3090 = !DILocation(line: 1043, column: 14, scope: !3084)
!3091 = !DILocation(line: 1043, column: 45, scope: !3084)
!3092 = !DILocation(line: 1043, column: 36, scope: !3084)
!3093 = !DILocation(line: 1043, column: 56, scope: !3084)
!3094 = !DILocation(line: 1044, column: 18, scope: !3084)
!3095 = !DILocation(line: 1044, column: 24, scope: !3084)
!3096 = !DILocation(line: 1041, column: 13, scope: !3021)
!3097 = !DILocation(line: 1046, column: 34, scope: !2995)
!3098 = !{!442, !443, i64 1248}
!3099 = !DILocation(line: 1057, column: 9, scope: !2995)
!3100 = !DILocation(line: 0, scope: !2995)
!3101 = !DILocation(line: 1047, column: 18, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 1047, column: 9)
!3103 = !DILocation(line: 1047, column: 9, scope: !2995)
!3104 = !DILocation(line: 1048, column: 13, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 1048, column: 13)
!3106 = distinct !DILexicalBlock(scope: !3102, file: !3, line: 1047, column: 25)
!3107 = !DILocation(line: 1048, column: 19, scope: !3105)
!3108 = !DILocation(line: 1048, column: 13, scope: !3106)
!3109 = !DILocation(line: 1052, column: 57, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 1050, column: 16)
!3111 = !DILocation(line: 1052, column: 48, scope: !3110)
!3112 = !DILocation(line: 1051, column: 13, scope: !3110)
!3113 = !DILocation(line: 1053, column: 13, scope: !3110)
!3114 = !DILocation(line: 1054, column: 13, scope: !3110)
!3115 = !DILocation(line: 1057, column: 20, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 1057, column: 9)
!3117 = !DILocation(line: 1062, column: 18, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 1062, column: 13)
!3119 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 1057, column: 25)
!3120 = !DILocation(line: 1062, column: 24, scope: !3118)
!3121 = !DILocation(line: 1062, column: 13, scope: !3119)
!3122 = !DILocation(line: 1062, column: 70, scope: !3118)
!3123 = !DILocation(line: 1062, column: 45, scope: !3118)
!3124 = !DILocation(line: 1062, column: 61, scope: !3118)
!3125 = !DILocation(line: 1062, column: 42, scope: !3118)
!3126 = !DILocation(line: 664, column: 37, scope: !1067, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 1064, column: 10, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 1064, column: 9)
!3129 = !DILocation(line: 665, column: 15, scope: !1067, inlinedAt: !3127)
!3130 = !DILocation(line: 665, column: 12, scope: !1067, inlinedAt: !3127)
!3131 = !DILocation(line: 665, column: 22, scope: !1067, inlinedAt: !3127)
!3132 = !DILocation(line: 665, column: 5, scope: !1067, inlinedAt: !3127)
!3133 = !DILocation(line: 1064, column: 9, scope: !2995)
!3134 = !DILocation(line: 665, column: 25, scope: !1067, inlinedAt: !3127)
!3135 = !DILocation(line: 1065, column: 20, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 1064, column: 38)
!3137 = !DILocation(line: 1066, column: 13, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 1066, column: 13)
!3139 = !DILocation(line: 1066, column: 13, scope: !3136)
!3140 = !DILocation(line: 1066, column: 57, scope: !3138)
!3141 = !DILocation(line: 1066, column: 63, scope: !3138)
!3142 = !DILocation(line: 1066, column: 32, scope: !3138)
!3143 = !DILocation(line: 1069, column: 16, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 1069, column: 13)
!3145 = !DILocation(line: 1069, column: 22, scope: !3144)
!3146 = !DILocation(line: 1069, column: 13, scope: !3136)
!3147 = !DILocation(line: 1070, column: 13, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 1069, column: 50)
!3149 = !DILocation(line: 1071, column: 13, scope: !3148)
!3150 = !DILocation(line: 0, scope: !3110)
!3151 = !DILocation(line: 1075, column: 1, scope: !2995)
!3152 = distinct !DISubprogram(name: "sendReplyToClient", scope: !3, file: !3, line: 1078, type: !742, isLocal: false, isDefinition: true, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3153)
!3153 = !{!3154, !3155, !3156, !3157}
!3154 = !DILocalVariable(name: "el", arg: 1, scope: !3152, file: !3, line: 1078, type: !744)
!3155 = !DILocalVariable(name: "fd", arg: 2, scope: !3152, file: !3, line: 1078, type: !18)
!3156 = !DILocalVariable(name: "privdata", arg: 3, scope: !3152, file: !3, line: 1078, type: !45)
!3157 = !DILocalVariable(name: "mask", arg: 4, scope: !3152, file: !3, line: 1078, type: !18)
!3158 = !DILocation(line: 1078, column: 37, scope: !3152)
!3159 = !DILocation(line: 1078, column: 45, scope: !3152)
!3160 = !DILocation(line: 1078, column: 55, scope: !3152)
!3161 = !DILocation(line: 1078, column: 69, scope: !3152)
!3162 = !DILocation(line: 1081, column: 22, scope: !3152)
!3163 = !DILocation(line: 1081, column: 5, scope: !3152)
!3164 = !DILocation(line: 1082, column: 1, scope: !3152)
!3165 = distinct !DISubprogram(name: "handleClientsWithPendingWrites", scope: !3, file: !3, line: 1088, type: !3166, isLocal: false, isDefinition: true, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!18}
!3168 = !{!3169, !3175, !3176, !3177, !3179}
!3169 = !DILocalVariable(name: "li", scope: !3165, file: !3, line: 1089, type: !3170)
!3170 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !99, line: 45, baseType: !3171)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !99, line: 42, size: 128, elements: !3172)
!3172 = !{!3173, !3174}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3171, file: !99, line: 43, baseType: !103, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !3171, file: !99, line: 44, baseType: !18, size: 32, offset: 64)
!3175 = !DILocalVariable(name: "ln", scope: !3165, file: !3, line: 1090, type: !103)
!3176 = !DILocalVariable(name: "processed", scope: !3165, file: !3, line: 1091, type: !18)
!3177 = !DILocalVariable(name: "c", scope: !3178, file: !3, line: 1095, type: !6)
!3178 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 1094, column: 33)
!3179 = !DILocalVariable(name: "ae_flags", scope: !3180, file: !3, line: 1109, type: !18)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 1108, column: 41)
!3181 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 1108, column: 13)
!3182 = !DILocation(line: 1089, column: 5, scope: !3165)
!3183 = !DILocation(line: 1091, column: 21, scope: !3165)
!3184 = !DILocation(line: 1091, column: 9, scope: !3165)
!3185 = !DILocation(line: 1089, column: 14, scope: !3165)
!3186 = !DILocation(line: 1093, column: 5, scope: !3165)
!3187 = !DILocation(line: 1094, column: 17, scope: !3165)
!3188 = !DILocation(line: 1090, column: 15, scope: !3165)
!3189 = !DILocation(line: 1094, column: 5, scope: !3165)
!3190 = !DILocation(line: 1095, column: 21, scope: !3178)
!3191 = !DILocation(line: 1096, column: 12, scope: !3178)
!3192 = !DILocation(line: 1096, column: 18, scope: !3178)
!3193 = !DILocation(line: 1097, column: 28, scope: !3178)
!3194 = !DILocation(line: 1097, column: 9, scope: !3178)
!3195 = !DILocation(line: 1101, column: 16, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 1101, column: 13)
!3197 = !DILocation(line: 1101, column: 22, scope: !3196)
!3198 = !DILocation(line: 1101, column: 13, scope: !3178)
!3199 = distinct !{!3199, !3189, !3200}
!3200 = !DILocation(line: 1126, column: 5, scope: !3165)
!3201 = !DILocation(line: 1095, column: 17, scope: !3178)
!3202 = !DILocation(line: 1104, column: 30, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3178, file: !3, line: 1104, column: 13)
!3204 = !DILocation(line: 1104, column: 13, scope: !3203)
!3205 = !DILocation(line: 1104, column: 38, scope: !3203)
!3206 = !DILocation(line: 1104, column: 13, scope: !3178)
!3207 = !DILocation(line: 664, column: 37, scope: !1067, inlinedAt: !3208)
!3208 = distinct !DILocation(line: 1108, column: 13, scope: !3181)
!3209 = !DILocation(line: 665, column: 15, scope: !1067, inlinedAt: !3208)
!3210 = !DILocation(line: 665, column: 12, scope: !1067, inlinedAt: !3208)
!3211 = !DILocation(line: 665, column: 22, scope: !1067, inlinedAt: !3208)
!3212 = !DILocation(line: 665, column: 5, scope: !1067, inlinedAt: !3208)
!3213 = !DILocation(line: 1108, column: 13, scope: !3178)
!3214 = !DILocation(line: 665, column: 25, scope: !1067, inlinedAt: !3208)
!3215 = !DILocation(line: 1109, column: 17, scope: !3180)
!3216 = !DILocation(line: 1115, column: 24, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 1115, column: 17)
!3218 = !{!442, !378, i64 1880}
!3219 = !DILocation(line: 1115, column: 34, scope: !3217)
!3220 = !DILocation(line: 1116, column: 24, scope: !3217)
!3221 = !DILocation(line: 1116, column: 34, scope: !3217)
!3222 = !DILocation(line: 1115, column: 44, scope: !3217)
!3223 = !DILocation(line: 1120, column: 42, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 1120, column: 17)
!3225 = !DILocation(line: 1120, column: 49, scope: !3224)
!3226 = !DILocation(line: 1120, column: 17, scope: !3224)
!3227 = !DILocation(line: 1121, column: 39, scope: !3224)
!3228 = !DILocation(line: 1120, column: 17, scope: !3180)
!3229 = !DILocation(line: 957, column: 30, scope: !1299, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 1123, column: 21, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 1122, column: 13)
!3232 = !DILocation(line: 958, column: 12, scope: !1304, inlinedAt: !3230)
!3233 = !DILocation(line: 958, column: 38, scope: !1304, inlinedAt: !3230)
!3234 = !DILocation(line: 959, column: 14, scope: !1299, inlinedAt: !3230)
!3235 = !DILocation(line: 960, column: 28, scope: !1299, inlinedAt: !3230)
!3236 = !DILocation(line: 960, column: 5, scope: !1299, inlinedAt: !3230)
!3237 = !DILocation(line: 961, column: 1, scope: !1299, inlinedAt: !3230)
!3238 = !DILocation(line: 1124, column: 13, scope: !3231)
!3239 = !DILocation(line: 1128, column: 1, scope: !3165)
!3240 = !DILocation(line: 1127, column: 5, scope: !3165)
!3241 = distinct !DISubprogram(name: "resetClient", scope: !3, file: !3, line: 1131, type: !4, isLocal: false, isDefinition: true, scopeLine: 1131, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3242)
!3242 = !{!3243, !3244}
!3243 = !DILocalVariable(name: "c", arg: 1, scope: !3241, file: !3, line: 1131, type: !6)
!3244 = !DILocalVariable(name: "prevcmd", scope: !3241, file: !3, line: 1132, type: !157)
!3245 = !DILocation(line: 1131, column: 26, scope: !3241)
!3246 = !DILocation(line: 1132, column: 36, scope: !3241)
!3247 = !DILocation(line: 1132, column: 33, scope: !3241)
!3248 = !DILocation(line: 1132, column: 50, scope: !3241)
!3249 = !{!1687, !381, i64 8}
!3250 = !DILocation(line: 779, column: 36, scope: !2745, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 1134, column: 5, scope: !3241)
!3252 = !DILocation(line: 780, column: 9, scope: !2745, inlinedAt: !3251)
!3253 = !DILocation(line: 781, column: 24, scope: !2752, inlinedAt: !3251)
!3254 = !DILocation(line: 781, column: 19, scope: !2752, inlinedAt: !3251)
!3255 = !DILocation(line: 781, column: 5, scope: !2753, inlinedAt: !3251)
!3256 = !DILocation(line: 782, column: 25, scope: !2752, inlinedAt: !3251)
!3257 = !DILocation(line: 782, column: 22, scope: !2752, inlinedAt: !3251)
!3258 = !DILocation(line: 782, column: 9, scope: !2752, inlinedAt: !3251)
!3259 = !DILocation(line: 781, column: 31, scope: !2752, inlinedAt: !3251)
!3260 = !DILocation(line: 783, column: 13, scope: !2745, inlinedAt: !3251)
!3261 = !DILocation(line: 784, column: 12, scope: !2745, inlinedAt: !3251)
!3262 = !DILocation(line: 785, column: 1, scope: !2745, inlinedAt: !3251)
!3263 = !DILocation(line: 1135, column: 8, scope: !3241)
!3264 = !DILocation(line: 1135, column: 16, scope: !3241)
!3265 = !DILocation(line: 1136, column: 8, scope: !3241)
!3266 = !DILocation(line: 1136, column: 21, scope: !3241)
!3267 = !DILocation(line: 1137, column: 8, scope: !3241)
!3268 = !DILocation(line: 1137, column: 16, scope: !3241)
!3269 = !DILocation(line: 1141, column: 14, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 1141, column: 9)
!3271 = !DILocation(line: 1141, column: 20, scope: !3270)
!3272 = !DILocation(line: 1141, column: 36, scope: !3270)
!3273 = !DILocation(line: 1142, column: 18, scope: !3270)
!3274 = !DILocation(line: 1142, column: 9, scope: !3270)
!3275 = !DILocation(line: 1147, column: 14, scope: !3241)
!3276 = !DILocation(line: 1148, column: 18, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3241, file: !3, line: 1148, column: 9)
!3278 = !DILocation(line: 1150, column: 18, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 1148, column: 44)
!3280 = !DILocation(line: 1148, column: 9, scope: !3241)
!3281 = !DILocation(line: 0, scope: !3241)
!3282 = !DILocation(line: 1152, column: 1, scope: !3241)
!3283 = distinct !DISubprogram(name: "protectClient", scope: !3, file: !3, line: 1167, type: !4, isLocal: false, isDefinition: true, scopeLine: 1167, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3284)
!3284 = !{!3285}
!3285 = !DILocalVariable(name: "c", arg: 1, scope: !3283, file: !3, line: 1167, type: !6)
!3286 = !DILocation(line: 1167, column: 28, scope: !3283)
!3287 = !DILocation(line: 1168, column: 8, scope: !3283)
!3288 = !DILocation(line: 1168, column: 14, scope: !3283)
!3289 = !DILocation(line: 1169, column: 30, scope: !3283)
!3290 = !DILocation(line: 1169, column: 36, scope: !3283)
!3291 = !DILocation(line: 1169, column: 5, scope: !3283)
!3292 = !DILocation(line: 1170, column: 30, scope: !3283)
!3293 = !DILocation(line: 1170, column: 36, scope: !3283)
!3294 = !DILocation(line: 1170, column: 5, scope: !3283)
!3295 = !DILocation(line: 1171, column: 1, scope: !3283)
!3296 = distinct !DISubprogram(name: "unprotectClient", scope: !3, file: !3, line: 1174, type: !4, isLocal: false, isDefinition: true, scopeLine: 1174, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3297)
!3297 = !{!3298}
!3298 = !DILocalVariable(name: "c", arg: 1, scope: !3296, file: !3, line: 1174, type: !6)
!3299 = !DILocation(line: 1174, column: 30, scope: !3296)
!3300 = !DILocation(line: 1175, column: 12, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 1175, column: 9)
!3302 = !DILocation(line: 1175, column: 18, scope: !3301)
!3303 = !DILocation(line: 1175, column: 9, scope: !3296)
!3304 = !DILocation(line: 1176, column: 18, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 1175, column: 38)
!3306 = !DILocation(line: 1177, column: 34, scope: !3305)
!3307 = !DILocation(line: 1177, column: 40, scope: !3305)
!3308 = !DILocation(line: 1177, column: 75, scope: !3305)
!3309 = !DILocation(line: 1177, column: 9, scope: !3305)
!3310 = !DILocation(line: 664, column: 37, scope: !1067, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 1178, column: 13, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 1178, column: 13)
!3313 = !DILocation(line: 665, column: 15, scope: !1067, inlinedAt: !3311)
!3314 = !DILocation(line: 665, column: 12, scope: !1067, inlinedAt: !3311)
!3315 = !DILocation(line: 665, column: 22, scope: !1067, inlinedAt: !3311)
!3316 = !DILocation(line: 665, column: 5, scope: !1067, inlinedAt: !3311)
!3317 = !DILocation(line: 1178, column: 13, scope: !3305)
!3318 = !DILocation(line: 665, column: 25, scope: !1067, inlinedAt: !3311)
!3319 = !DILocation(line: 176, column: 40, scope: !1024, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 1178, column: 41, scope: !3312)
!3321 = !DILocation(line: 180, column: 14, scope: !1029, inlinedAt: !3320)
!3322 = !DILocation(line: 180, column: 20, scope: !1029, inlinedAt: !3320)
!3323 = !DILocation(line: 180, column: 44, scope: !1029, inlinedAt: !3320)
!3324 = !DILocation(line: 181, column: 13, scope: !1029, inlinedAt: !3320)
!3325 = !DILocation(line: 181, column: 42, scope: !1029, inlinedAt: !3320)
!3326 = !DILocation(line: 182, column: 53, scope: !1029, inlinedAt: !3320)
!3327 = !DILocation(line: 182, column: 50, scope: !1029, inlinedAt: !3320)
!3328 = !DILocation(line: 180, column: 9, scope: !1024, inlinedAt: !3320)
!3329 = !DILocation(line: 190, column: 18, scope: !1040, inlinedAt: !3320)
!3330 = !DILocation(line: 191, column: 32, scope: !1040, inlinedAt: !3320)
!3331 = !DILocation(line: 191, column: 9, scope: !1040, inlinedAt: !3320)
!3332 = !DILocation(line: 192, column: 5, scope: !1040, inlinedAt: !3320)
!3333 = !DILocation(line: 193, column: 1, scope: !1024, inlinedAt: !3320)
!3334 = !DILocation(line: 1178, column: 41, scope: !3312)
!3335 = !DILocation(line: 1180, column: 1, scope: !3296)
!3336 = distinct !DISubprogram(name: "processInlineBuffer", scope: !3, file: !3, line: 1189, type: !1048, isLocal: false, isDefinition: true, scopeLine: 1189, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3337)
!3337 = !{!3338, !3339, !3340, !3341, !3342, !3343, !3345, !3346}
!3338 = !DILocalVariable(name: "c", arg: 1, scope: !3336, file: !3, line: 1189, type: !6)
!3339 = !DILocalVariable(name: "newline", scope: !3336, file: !3, line: 1190, type: !139)
!3340 = !DILocalVariable(name: "argc", scope: !3336, file: !3, line: 1191, type: !18)
!3341 = !DILocalVariable(name: "j", scope: !3336, file: !3, line: 1191, type: !18)
!3342 = !DILocalVariable(name: "linefeed_chars", scope: !3336, file: !3, line: 1191, type: !18)
!3343 = !DILocalVariable(name: "argv", scope: !3336, file: !3, line: 1192, type: !3344)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!3345 = !DILocalVariable(name: "aux", scope: !3336, file: !3, line: 1192, type: !137)
!3346 = !DILocalVariable(name: "querylen", scope: !3336, file: !3, line: 1193, type: !142)
!3347 = !DILocation(line: 1189, column: 33, scope: !3336)
!3348 = !DILocation(line: 1191, column: 5, scope: !3336)
!3349 = !DILocation(line: 1191, column: 18, scope: !3336)
!3350 = !DILocation(line: 1196, column: 25, scope: !3336)
!3351 = !DILocation(line: 1196, column: 37, scope: !3336)
!3352 = !DILocation(line: 1196, column: 33, scope: !3336)
!3353 = !DILocation(line: 1196, column: 15, scope: !3336)
!3354 = !DILocation(line: 1190, column: 11, scope: !3336)
!3355 = !DILocation(line: 1199, column: 17, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3336, file: !3, line: 1199, column: 9)
!3357 = !DILocation(line: 0, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3336, file: !3, line: 1208, column: 9)
!3359 = !DILocation(line: 1199, column: 9, scope: !3336)
!3360 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 1200, column: 13, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3363, file: !3, line: 1200, column: 13)
!3363 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 1199, column: 26)
!3364 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !3361)
!3365 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !3361)
!3366 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !3361)
!3367 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !3361)
!3368 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !3361)
!3369 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !3361)
!3370 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !3361)
!3371 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !3361)
!3372 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !3361)
!3373 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !3361)
!3374 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !3361)
!3375 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !3361)
!3376 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !3361)
!3377 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !3361)
!3378 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !3361)
!3379 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !3361)
!3380 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !3361)
!3381 = !DILocation(line: 0, scope: !851, inlinedAt: !3361)
!3382 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !3361)
!3383 = !DILocation(line: 1200, column: 36, scope: !3362)
!3384 = !DILocation(line: 1200, column: 32, scope: !3362)
!3385 = !DILocation(line: 1200, column: 43, scope: !3362)
!3386 = !DILocation(line: 1200, column: 13, scope: !3363)
!3387 = !DILocation(line: 384, column: 28, scope: !1692, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 1201, column: 13, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3362, file: !3, line: 1200, column: 68)
!3390 = !DILocation(line: 384, column: 43, scope: !1692, inlinedAt: !3388)
!3391 = !DILocation(line: 385, column: 31, scope: !1692, inlinedAt: !3388)
!3392 = !DILocation(line: 385, column: 5, scope: !1692, inlinedAt: !3388)
!3393 = !DILocation(line: 386, column: 1, scope: !1692, inlinedAt: !3388)
!3394 = !DILocation(line: 1202, column: 13, scope: !3389)
!3395 = !DILocation(line: 1203, column: 9, scope: !3389)
!3396 = !DILocation(line: 1208, column: 46, scope: !3358)
!3397 = !DILocation(line: 1208, column: 42, scope: !3358)
!3398 = !DILocation(line: 1208, column: 28, scope: !3358)
!3399 = !DILocation(line: 1208, column: 53, scope: !3358)
!3400 = !DILocation(line: 1208, column: 65, scope: !3358)
!3401 = !DILocation(line: 1208, column: 56, scope: !3358)
!3402 = !DILocation(line: 1208, column: 69, scope: !3358)
!3403 = !DILocation(line: 1208, column: 9, scope: !3336)
!3404 = !DILocation(line: 0, scope: !3336)
!3405 = !DILocation(line: 1212, column: 23, scope: !3336)
!3406 = !DILocation(line: 1193, column: 12, scope: !3336)
!3407 = !DILocation(line: 1213, column: 11, scope: !3336)
!3408 = !DILocation(line: 1192, column: 16, scope: !3336)
!3409 = !DILocation(line: 1191, column: 9, scope: !3336)
!3410 = !DILocation(line: 1214, column: 12, scope: !3336)
!3411 = !DILocation(line: 1192, column: 10, scope: !3336)
!3412 = !DILocation(line: 1215, column: 5, scope: !3336)
!3413 = !DILocation(line: 1216, column: 14, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3336, file: !3, line: 1216, column: 9)
!3415 = !DILocation(line: 1216, column: 9, scope: !3336)
!3416 = !DILocation(line: 384, column: 28, scope: !1692, inlinedAt: !3417)
!3417 = distinct !DILocation(line: 1217, column: 9, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 1216, column: 23)
!3419 = !DILocation(line: 384, column: 43, scope: !1692, inlinedAt: !3417)
!3420 = !DILocation(line: 385, column: 31, scope: !1692, inlinedAt: !3417)
!3421 = !DILocation(line: 385, column: 5, scope: !1692, inlinedAt: !3417)
!3422 = !DILocation(line: 386, column: 1, scope: !1692, inlinedAt: !3417)
!3423 = !DILocation(line: 1218, column: 9, scope: !3418)
!3424 = !DILocation(line: 1219, column: 9, scope: !3418)
!3425 = !DILocation(line: 1225, column: 18, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3336, file: !3, line: 1225, column: 9)
!3427 = !DILocation(line: 1225, column: 23, scope: !3426)
!3428 = !DILocation(line: 1225, column: 29, scope: !3426)
!3429 = !DILocation(line: 1225, column: 35, scope: !3426)
!3430 = !DILocation(line: 1225, column: 9, scope: !3336)
!3431 = !DILocation(line: 1226, column: 35, scope: !3426)
!3432 = !DILocation(line: 1226, column: 12, scope: !3426)
!3433 = !DILocation(line: 1226, column: 26, scope: !3426)
!3434 = !{!456, !443, i64 232}
!3435 = !DILocation(line: 1226, column: 9, scope: !3426)
!3436 = !DILocation(line: 1229, column: 26, scope: !3336)
!3437 = !DILocation(line: 1229, column: 15, scope: !3336)
!3438 = !DILocation(line: 1232, column: 9, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3336, file: !3, line: 1232, column: 9)
!3440 = !DILocation(line: 1232, column: 9, scope: !3336)
!3441 = !DILocation(line: 1238, column: 13, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3336, file: !3, line: 1238, column: 5)
!3443 = !DILocation(line: 1238, column: 18, scope: !3442)
!3444 = !DILocation(line: 1191, column: 15, scope: !3336)
!3445 = !DILocation(line: 1238, column: 5, scope: !3442)
!3446 = !DILocation(line: 1233, column: 16, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !3, line: 1233, column: 13)
!3448 = distinct !DILexicalBlock(scope: !3439, file: !3, line: 1232, column: 15)
!3449 = !DILocation(line: 1233, column: 13, scope: !3447)
!3450 = !DILocation(line: 1233, column: 13, scope: !3448)
!3451 = !DILocation(line: 1233, column: 28, scope: !3447)
!3452 = !DILocation(line: 1233, column: 22, scope: !3447)
!3453 = !DILocation(line: 1234, column: 41, scope: !3448)
!3454 = !DILocation(line: 1234, column: 40, scope: !3448)
!3455 = !DILocation(line: 1234, column: 19, scope: !3448)
!3456 = !DILocation(line: 1234, column: 17, scope: !3448)
!3457 = !DILocation(line: 1238, column: 34, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 1238, column: 5)
!3459 = !DILocation(line: 1235, column: 5, scope: !3448)
!3460 = !DILocation(line: 1239, column: 20, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 1239, column: 13)
!3462 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 1238, column: 45)
!3463 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 1239, column: 13, scope: !3461)
!3465 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !3464)
!3466 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !3464)
!3467 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !3464)
!3468 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !3464)
!3469 = !DILocation(line: 1239, column: 13, scope: !3462)
!3470 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !3464)
!3471 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !3464)
!3472 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !3464)
!3473 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !3464)
!3474 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !3464)
!3475 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !3464)
!3476 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !3464)
!3477 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !3464)
!3478 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !3464)
!3479 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !3464)
!3480 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !3464)
!3481 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !3464)
!3482 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !3464)
!3483 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !3464)
!3484 = !DILocation(line: 0, scope: !851, inlinedAt: !3464)
!3485 = !DILocation(line: 1239, column: 13, scope: !3461)
!3486 = !DILocation(line: 1240, column: 32, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 1239, column: 30)
!3488 = !DILocation(line: 1240, column: 16, scope: !3487)
!3489 = !DILocation(line: 1240, column: 24, scope: !3487)
!3490 = !DILocation(line: 1240, column: 13, scope: !3487)
!3491 = !DILocation(line: 1240, column: 30, scope: !3487)
!3492 = !DILocation(line: 1241, column: 20, scope: !3487)
!3493 = !DILocation(line: 1242, column: 9, scope: !3487)
!3494 = !DILocation(line: 1243, column: 13, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3461, file: !3, line: 1242, column: 16)
!3496 = !DILocation(line: 1238, column: 41, scope: !3458)
!3497 = !DILocation(line: 1238, column: 32, scope: !3458)
!3498 = distinct !{!3498, !3445, !3499}
!3499 = !DILocation(line: 1245, column: 5, scope: !3442)
!3500 = !DILocation(line: 57, column: 10, scope: !3501, inlinedAt: !3505)
!3501 = distinct !DISubprogram(name: "s_free", scope: !3502, file: !3502, line: 56, type: !118, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3503)
!3502 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sdsalloc.h", directory: "/root/.unikraft/apps/redis/build")
!3503 = !{!3504}
!3504 = !DILocalVariable(name: "ptr", arg: 1, scope: !3501, file: !3502, line: 56, type: !45)
!3505 = distinct !DILocation(line: 1246, column: 5, scope: !3336)
!3506 = !DILocation(line: 237, column: 45, scope: !2842, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 57, column: 2, scope: !3501, inlinedAt: !3505)
!3508 = !DILocation(line: 231, column: 48, scope: !2848, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 239, column: 2, scope: !2842, inlinedAt: !3507)
!3510 = !DILocation(line: 233, column: 2, scope: !2854, inlinedAt: !3509)
!3511 = !DILocation(line: 233, column: 2, scope: !2855, inlinedAt: !3509)
!3512 = !DILocation(line: 233, column: 2, scope: !2858, inlinedAt: !3509)
!3513 = !DILocation(line: 1246, column: 12, scope: !3336)
!3514 = !DILocation(line: 231, column: 57, scope: !2848, inlinedAt: !3509)
!3515 = !DILocation(line: 237, column: 54, scope: !2842, inlinedAt: !3507)
!3516 = !DILocation(line: 56, column: 33, scope: !3501, inlinedAt: !3505)
!3517 = !DILocation(line: 234, column: 5, scope: !2848, inlinedAt: !3509)
!3518 = !DILocation(line: 234, column: 2, scope: !2848, inlinedAt: !3509)
!3519 = !DILocation(line: 235, column: 1, scope: !2848, inlinedAt: !3509)
!3520 = !DILocation(line: 240, column: 1, scope: !2842, inlinedAt: !3507)
!3521 = !DILocation(line: 58, column: 1, scope: !3501, inlinedAt: !3505)
!3522 = !DILocation(line: 1247, column: 5, scope: !3336)
!3523 = !DILocation(line: 1248, column: 1, scope: !3336)
!3524 = distinct !DISubprogram(name: "setProtocolError", scope: !3, file: !3, line: 1253, type: !3525, isLocal: true, isDefinition: true, scopeLine: 1253, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3527)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{null, !317, !6}
!3527 = !{!3528, !3529, !3530, !3533, !3537}
!3528 = !DILocalVariable(name: "errstr", arg: 1, scope: !3524, file: !3, line: 1253, type: !317)
!3529 = !DILocalVariable(name: "c", arg: 2, scope: !3524, file: !3, line: 1253, type: !6)
!3530 = !DILocalVariable(name: "client", scope: !3531, file: !3, line: 1255, type: !137)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 1254, column: 41)
!3532 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 1254, column: 9)
!3533 = !DILocalVariable(name: "buf", scope: !3531, file: !3, line: 1258, type: !3534)
!3534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 2048, elements: !3535)
!3535 = !{!3536}
!3536 = !DISubrange(count: 256)
!3537 = !DILocalVariable(name: "p", scope: !3531, file: !3, line: 1266, type: !139)
!3538 = !DILocation(line: 1253, column: 42, scope: !3524)
!3539 = !DILocation(line: 1253, column: 58, scope: !3524)
!3540 = !DILocation(line: 1254, column: 16, scope: !3532)
!3541 = !{!442, !378, i64 1728}
!3542 = !DILocation(line: 1254, column: 26, scope: !3532)
!3543 = !DILocation(line: 1254, column: 9, scope: !3524)
!3544 = !DILocation(line: 1255, column: 42, scope: !3531)
!3545 = !DILocation(line: 1255, column: 22, scope: !3531)
!3546 = !DILocation(line: 1255, column: 13, scope: !3531)
!3547 = !DILocation(line: 1258, column: 9, scope: !3531)
!3548 = !DILocation(line: 1258, column: 14, scope: !3531)
!3549 = !DILocation(line: 1259, column: 23, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 1259, column: 13)
!3551 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 1259, column: 13, scope: !3550)
!3553 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !3552)
!3554 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !3552)
!3555 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !3552)
!3556 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !3552)
!3557 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !3552)
!3558 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !3552)
!3559 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !3552)
!3560 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !3552)
!3561 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !3552)
!3562 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !3552)
!3563 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !3552)
!3564 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !3552)
!3565 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !3552)
!3566 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !3552)
!3567 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !3552)
!3568 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !3552)
!3569 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !3552)
!3570 = !DILocation(line: 0, scope: !851, inlinedAt: !3552)
!3571 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !3552)
!3572 = !DILocation(line: 1259, column: 36, scope: !3550)
!3573 = !DILocation(line: 1259, column: 32, scope: !3550)
!3574 = !DILocation(line: 1259, column: 43, scope: !3550)
!3575 = !DILocation(line: 0, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3550, file: !3, line: 1261, column: 16)
!3577 = !DILocation(line: 1259, column: 13, scope: !3531)
!3578 = !DILocation(line: 1260, column: 13, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3550, file: !3, line: 1259, column: 61)
!3580 = !DILocation(line: 1261, column: 9, scope: !3579)
!3581 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !3582)
!3582 = distinct !DILocation(line: 1262, column: 157, scope: !3576)
!3583 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !3582)
!3584 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !3582)
!3585 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !3582)
!3586 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !3587)
!3587 = distinct !DILocation(line: 1262, column: 233, scope: !3576)
!3588 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !3587)
!3589 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !3587)
!3590 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !3582)
!3591 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !3582)
!3592 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !3587)
!3593 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !3582)
!3594 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !3582)
!3595 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !3587)
!3596 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !3582)
!3597 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !3582)
!3598 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !3587)
!3599 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !3582)
!3600 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !3582)
!3601 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !3587)
!3602 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !3582)
!3603 = !DILocation(line: 1262, column: 176, scope: !3576)
!3604 = !DILocation(line: 1262, column: 186, scope: !3576)
!3605 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !3587)
!3606 = !DILocation(line: 1262, column: 232, scope: !3576)
!3607 = !DILocation(line: 1262, column: 252, scope: !3576)
!3608 = !DILocation(line: 1262, column: 13, scope: !3576)
!3609 = !DILocation(line: 1266, column: 15, scope: !3531)
!3610 = !DILocation(line: 1267, column: 16, scope: !3531)
!3611 = !DILocation(line: 1267, column: 19, scope: !3531)
!3612 = !DILocation(line: 1267, column: 9, scope: !3531)
!3613 = !DILocation(line: 1268, column: 18, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !3, line: 1268, column: 17)
!3615 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 1267, column: 28)
!3616 = !DILocation(line: 1268, column: 17, scope: !3615)
!3617 = !DILocation(line: 1268, column: 34, scope: !3614)
!3618 = !DILocation(line: 1268, column: 31, scope: !3614)
!3619 = !DILocation(line: 1269, column: 14, scope: !3615)
!3620 = distinct !{!3620, !3612, !3621}
!3621 = !DILocation(line: 1270, column: 9, scope: !3531)
!3622 = !DILocation(line: 1273, column: 9, scope: !3531)
!3623 = !DILocation(line: 1275, column: 9, scope: !3531)
!3624 = !DILocation(line: 1276, column: 5, scope: !3532)
!3625 = !DILocation(line: 1276, column: 5, scope: !3531)
!3626 = !DILocation(line: 1277, column: 8, scope: !3524)
!3627 = !DILocation(line: 1277, column: 14, scope: !3524)
!3628 = !DILocation(line: 1278, column: 1, scope: !3524)
!3629 = distinct !DISubprogram(name: "processMultibulkBuffer", scope: !3, file: !3, line: 1291, type: !1048, isLocal: false, isDefinition: true, scopeLine: 1291, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3630)
!3630 = !{!3631, !3632, !3633, !3634}
!3631 = !DILocalVariable(name: "c", arg: 1, scope: !3629, file: !3, line: 1291, type: !6)
!3632 = !DILocalVariable(name: "newline", scope: !3629, file: !3, line: 1292, type: !139)
!3633 = !DILocalVariable(name: "ok", scope: !3629, file: !3, line: 1293, type: !18)
!3634 = !DILocalVariable(name: "ll", scope: !3629, file: !3, line: 1294, type: !95)
!3635 = !DILocation(line: 1291, column: 36, scope: !3629)
!3636 = !DILocation(line: 1292, column: 11, scope: !3629)
!3637 = !DILocation(line: 1294, column: 5, scope: !3629)
!3638 = !DILocation(line: 1296, column: 12, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3629, file: !3, line: 1296, column: 9)
!3640 = !DILocation(line: 1296, column: 25, scope: !3639)
!3641 = !DILocation(line: 1296, column: 9, scope: !3629)
!3642 = !DILocation(line: 1298, column: 9, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3639, file: !3, line: 1296, column: 31)
!3644 = !DILocation(line: 1301, column: 29, scope: !3643)
!3645 = !DILocation(line: 1301, column: 41, scope: !3643)
!3646 = !DILocation(line: 1301, column: 37, scope: !3643)
!3647 = !DILocation(line: 1301, column: 19, scope: !3643)
!3648 = !DILocation(line: 1302, column: 21, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1302, column: 13)
!3650 = !DILocation(line: 0, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1311, column: 13)
!3652 = !DILocation(line: 1302, column: 13, scope: !3643)
!3653 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 1303, column: 17, scope: !3655)
!3655 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 1303, column: 17)
!3656 = distinct !DILexicalBlock(scope: !3649, file: !3, line: 1302, column: 30)
!3657 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !3654)
!3658 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !3654)
!3659 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !3654)
!3660 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !3654)
!3661 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !3654)
!3662 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !3654)
!3663 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !3654)
!3664 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !3654)
!3665 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !3654)
!3666 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !3654)
!3667 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !3654)
!3668 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !3654)
!3669 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !3654)
!3670 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !3654)
!3671 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !3654)
!3672 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !3654)
!3673 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !3654)
!3674 = !DILocation(line: 0, scope: !851, inlinedAt: !3654)
!3675 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !3654)
!3676 = !DILocation(line: 1303, column: 40, scope: !3655)
!3677 = !DILocation(line: 1303, column: 36, scope: !3655)
!3678 = !DILocation(line: 1303, column: 47, scope: !3655)
!3679 = !DILocation(line: 1303, column: 17, scope: !3656)
!3680 = !DILocation(line: 384, column: 28, scope: !1692, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 1304, column: 17, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 1303, column: 72)
!3683 = !DILocation(line: 384, column: 43, scope: !1692, inlinedAt: !3681)
!3684 = !DILocation(line: 385, column: 31, scope: !1692, inlinedAt: !3681)
!3685 = !DILocation(line: 385, column: 5, scope: !1692, inlinedAt: !3681)
!3686 = !DILocation(line: 386, column: 1, scope: !1692, inlinedAt: !3681)
!3687 = !DILocation(line: 1305, column: 17, scope: !3682)
!3688 = !DILocation(line: 1306, column: 13, scope: !3682)
!3689 = !DILocation(line: 1311, column: 37, scope: !3651)
!3690 = !DILocation(line: 1311, column: 33, scope: !3651)
!3691 = !DILocation(line: 1311, column: 20, scope: !3651)
!3692 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 1311, column: 57, scope: !3651)
!3694 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !3693)
!3695 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !3693)
!3696 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !3693)
!3697 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !3693)
!3698 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !3693)
!3699 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !3693)
!3700 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !3693)
!3701 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !3693)
!3702 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !3693)
!3703 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !3693)
!3704 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !3693)
!3705 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !3693)
!3706 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !3693)
!3707 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !3693)
!3708 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !3693)
!3709 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !3693)
!3710 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !3693)
!3711 = !DILocation(line: 0, scope: !851, inlinedAt: !3693)
!3712 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !3693)
!3713 = !DILocation(line: 1311, column: 76, scope: !3651)
!3714 = !DILocation(line: 1311, column: 86, scope: !3651)
!3715 = !DILocation(line: 1311, column: 45, scope: !3651)
!3716 = !DILocation(line: 1311, column: 13, scope: !3643)
!3717 = !DILocation(line: 1316, column: 9, scope: !3643)
!3718 = !DILocation(line: 1317, column: 35, scope: !3643)
!3719 = !DILocation(line: 1317, column: 37, scope: !3643)
!3720 = !DILocation(line: 1317, column: 55, scope: !3643)
!3721 = !DILocation(line: 1294, column: 15, scope: !3629)
!3722 = !DILocation(line: 1317, column: 14, scope: !3643)
!3723 = !DILocation(line: 1293, column: 9, scope: !3629)
!3724 = !DILocation(line: 1318, column: 14, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1318, column: 13)
!3726 = !DILocation(line: 1318, column: 20, scope: !3725)
!3727 = !DILocation(line: 1318, column: 23, scope: !3725)
!3728 = !DILocation(line: 1318, column: 17, scope: !3725)
!3729 = !DILocation(line: 384, column: 28, scope: !1692, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 1319, column: 13, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3725, file: !3, line: 1318, column: 36)
!3732 = !DILocation(line: 384, column: 43, scope: !1692, inlinedAt: !3730)
!3733 = !DILocation(line: 385, column: 31, scope: !1692, inlinedAt: !3730)
!3734 = !DILocation(line: 385, column: 5, scope: !1692, inlinedAt: !3730)
!3735 = !DILocation(line: 386, column: 1, scope: !1692, inlinedAt: !3730)
!3736 = !DILocation(line: 1320, column: 13, scope: !3731)
!3737 = !DILocation(line: 1321, column: 13, scope: !3731)
!3738 = !DILocation(line: 1324, column: 33, scope: !3643)
!3739 = !DILocation(line: 1324, column: 29, scope: !3643)
!3740 = !DILocation(line: 1324, column: 42, scope: !3643)
!3741 = !DILocation(line: 1324, column: 19, scope: !3643)
!3742 = !DILocation(line: 1326, column: 16, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1326, column: 13)
!3744 = !DILocation(line: 1326, column: 13, scope: !3643)
!3745 = !DILocation(line: 1328, column: 27, scope: !3643)
!3746 = !DILocation(line: 1328, column: 25, scope: !3643)
!3747 = !DILocation(line: 1331, column: 16, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3643, file: !3, line: 1331, column: 13)
!3749 = !DILocation(line: 1331, column: 13, scope: !3748)
!3750 = !DILocation(line: 1331, column: 13, scope: !3643)
!3751 = !DILocation(line: 1331, column: 28, scope: !3748)
!3752 = !DILocation(line: 1331, column: 22, scope: !3748)
!3753 = !DILocation(line: 1332, column: 44, scope: !3643)
!3754 = !DILocation(line: 1332, column: 41, scope: !3643)
!3755 = !DILocation(line: 1332, column: 40, scope: !3643)
!3756 = !DILocation(line: 1332, column: 19, scope: !3643)
!3757 = !DILocation(line: 1332, column: 17, scope: !3643)
!3758 = !DILocation(line: 1335, column: 5, scope: !3629)
!3759 = !DILocation(line: 1333, column: 5, scope: !3643)
!3760 = !DILocation(line: 1338, column: 16, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3762, file: !3, line: 1338, column: 13)
!3762 = distinct !DILexicalBlock(scope: !3629, file: !3, line: 1336, column: 28)
!3763 = !DILocation(line: 1336, column: 5, scope: !3629)
!3764 = !DILocation(line: 1338, column: 24, scope: !3761)
!3765 = !DILocation(line: 0, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3762, file: !3, line: 1392, column: 13)
!3767 = !DILocation(line: 1338, column: 13, scope: !3762)
!3768 = !DILocation(line: 1339, column: 45, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3761, file: !3, line: 1338, column: 31)
!3770 = !DILocation(line: 1339, column: 41, scope: !3769)
!3771 = !DILocation(line: 1339, column: 23, scope: !3769)
!3772 = !DILocation(line: 1340, column: 25, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 1340, column: 17)
!3774 = !DILocation(line: 0, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 1351, column: 17)
!3776 = !DILocation(line: 1340, column: 17, scope: !3769)
!3777 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 1341, column: 21, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3780, file: !3, line: 1341, column: 21)
!3780 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 1340, column: 34)
!3781 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !3778)
!3782 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !3778)
!3783 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !3778)
!3784 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !3778)
!3785 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !3778)
!3786 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !3778)
!3787 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !3778)
!3788 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !3778)
!3789 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !3778)
!3790 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !3778)
!3791 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !3778)
!3792 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !3778)
!3793 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !3778)
!3794 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !3778)
!3795 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !3778)
!3796 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !3778)
!3797 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !3778)
!3798 = !DILocation(line: 0, scope: !851, inlinedAt: !3778)
!3799 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !3778)
!3800 = !DILocation(line: 1341, column: 44, scope: !3779)
!3801 = !DILocation(line: 1341, column: 40, scope: !3779)
!3802 = !DILocation(line: 1341, column: 51, scope: !3779)
!3803 = !DILocation(line: 1341, column: 21, scope: !3780)
!3804 = !DILocation(line: 384, column: 28, scope: !1692, inlinedAt: !3805)
!3805 = distinct !DILocation(line: 1342, column: 21, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 1341, column: 76)
!3807 = !DILocation(line: 384, column: 43, scope: !1692, inlinedAt: !3805)
!3808 = !DILocation(line: 385, column: 31, scope: !1692, inlinedAt: !3805)
!3809 = !DILocation(line: 385, column: 5, scope: !1692, inlinedAt: !3805)
!3810 = !DILocation(line: 386, column: 1, scope: !1692, inlinedAt: !3805)
!3811 = !DILocation(line: 1344, column: 21, scope: !3806)
!3812 = !DILocation(line: 1345, column: 21, scope: !3806)
!3813 = !DILocation(line: 1351, column: 41, scope: !3775)
!3814 = !DILocation(line: 1351, column: 37, scope: !3775)
!3815 = !DILocation(line: 1351, column: 24, scope: !3775)
!3816 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 1351, column: 61, scope: !3775)
!3818 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !3817)
!3819 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !3817)
!3820 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !3817)
!3821 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !3817)
!3822 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !3817)
!3823 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !3817)
!3824 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !3817)
!3825 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !3817)
!3826 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !3817)
!3827 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !3817)
!3828 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !3817)
!3829 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !3817)
!3830 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !3817)
!3831 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !3817)
!3832 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !3817)
!3833 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !3817)
!3834 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !3817)
!3835 = !DILocation(line: 0, scope: !851, inlinedAt: !3817)
!3836 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !3817)
!3837 = !DILocation(line: 1351, column: 80, scope: !3775)
!3838 = !DILocation(line: 1351, column: 90, scope: !3775)
!3839 = !DILocation(line: 1351, column: 49, scope: !3775)
!3840 = !DILocation(line: 1351, column: 17, scope: !3769)
!3841 = !DILocation(line: 1354, column: 17, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 1354, column: 17)
!3843 = !DILocation(line: 1354, column: 40, scope: !3842)
!3844 = !DILocation(line: 1354, column: 17, scope: !3769)
!3845 = !DILocation(line: 1355, column: 17, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 1354, column: 48)
!3847 = !DILocation(line: 1358, column: 17, scope: !3846)
!3848 = !DILocation(line: 1359, column: 17, scope: !3846)
!3849 = !DILocation(line: 1362, column: 49, scope: !3769)
!3850 = !DILocation(line: 1362, column: 59, scope: !3769)
!3851 = !DILocation(line: 1362, column: 18, scope: !3769)
!3852 = !DILocation(line: 1363, column: 18, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 1363, column: 17)
!3854 = !DILocation(line: 1363, column: 24, scope: !3853)
!3855 = !DILocation(line: 1363, column: 27, scope: !3853)
!3856 = !DILocation(line: 1363, column: 21, scope: !3853)
!3857 = !DILocation(line: 1363, column: 46, scope: !3853)
!3858 = !DILocation(line: 1363, column: 37, scope: !3853)
!3859 = !DILocation(line: 384, column: 28, scope: !1692, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 1364, column: 17, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3853, file: !3, line: 1363, column: 66)
!3862 = !DILocation(line: 384, column: 43, scope: !1692, inlinedAt: !3860)
!3863 = !DILocation(line: 385, column: 31, scope: !1692, inlinedAt: !3860)
!3864 = !DILocation(line: 385, column: 5, scope: !1692, inlinedAt: !3860)
!3865 = !DILocation(line: 386, column: 1, scope: !1692, inlinedAt: !3860)
!3866 = !DILocation(line: 1365, column: 17, scope: !3861)
!3867 = !DILocation(line: 1366, column: 17, scope: !3861)
!3868 = !DILocation(line: 1369, column: 36, scope: !3769)
!3869 = !DILocation(line: 1369, column: 32, scope: !3769)
!3870 = !DILocation(line: 1369, column: 44, scope: !3769)
!3871 = !DILocation(line: 1369, column: 23, scope: !3769)
!3872 = !DILocation(line: 1370, column: 20, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 1370, column: 17)
!3874 = !DILocation(line: 1370, column: 17, scope: !3769)
!3875 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !3876)
!3876 = distinct !DILocation(line: 1380, column: 21, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3878, file: !3, line: 1380, column: 21)
!3878 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 1370, column: 44)
!3879 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !3876)
!3880 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !3876)
!3881 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !3876)
!3882 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !3876)
!3883 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !3876)
!3884 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !3876)
!3885 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !3876)
!3886 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !3876)
!3887 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !3876)
!3888 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !3876)
!3889 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !3876)
!3890 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !3876)
!3891 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !3876)
!3892 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !3876)
!3893 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !3876)
!3894 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !3876)
!3895 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !3876)
!3896 = !DILocation(line: 0, scope: !851, inlinedAt: !3876)
!3897 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !3876)
!3898 = !DILocation(line: 1380, column: 40, scope: !3877)
!3899 = !DILocation(line: 1380, column: 64, scope: !3877)
!3900 = !DILocation(line: 1380, column: 51, scope: !3877)
!3901 = !DILocation(line: 1380, column: 21, scope: !3878)
!3902 = !DILocation(line: 1381, column: 21, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 1380, column: 68)
!3904 = !DILocation(line: 1382, column: 31, scope: !3903)
!3905 = !DILocation(line: 1385, column: 53, scope: !3903)
!3906 = !DILocation(line: 1385, column: 62, scope: !3903)
!3907 = !DILocation(line: 1385, column: 64, scope: !3903)
!3908 = !DILocation(line: 1385, column: 35, scope: !3903)
!3909 = !DILocation(line: 1385, column: 33, scope: !3903)
!3910 = !DILocation(line: 1388, column: 26, scope: !3769)
!3911 = !DILocation(line: 1386, column: 17, scope: !3903)
!3912 = !DILocation(line: 1388, column: 24, scope: !3769)
!3913 = !DILocation(line: 1389, column: 9, scope: !3769)
!3914 = !DILocation(line: 1392, column: 23, scope: !3766)
!3915 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 1392, column: 13, scope: !3766)
!3917 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !3916)
!3918 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !3916)
!3919 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !3916)
!3920 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !3916)
!3921 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !3916)
!3922 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !3916)
!3923 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !3916)
!3924 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !3916)
!3925 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !3916)
!3926 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !3916)
!3927 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !3916)
!3928 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !3916)
!3929 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !3916)
!3930 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !3916)
!3931 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !3916)
!3932 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !3916)
!3933 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !3916)
!3934 = !DILocation(line: 0, scope: !851, inlinedAt: !3916)
!3935 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !3916)
!3936 = !DILocation(line: 1392, column: 36, scope: !3766)
!3937 = !DILocation(line: 1392, column: 32, scope: !3766)
!3938 = !DILocation(line: 1392, column: 64, scope: !3766)
!3939 = !DILocation(line: 1392, column: 43, scope: !3766)
!3940 = !DILocation(line: 1392, column: 13, scope: !3762)
!3941 = !DILocation(line: 1399, column: 27, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3943, file: !3, line: 1399, column: 17)
!3943 = distinct !DILexicalBlock(scope: !3766, file: !3, line: 1395, column: 16)
!3944 = !DILocation(line: 1400, column: 28, scope: !3942)
!3945 = !DILocation(line: 1399, column: 32, scope: !3942)
!3946 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 1401, column: 17, scope: !3942)
!3948 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !3947)
!3949 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !3947)
!3950 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !3947)
!3951 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !3947)
!3952 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !3947)
!3953 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !3947)
!3954 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !3947)
!3955 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !3947)
!3956 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !3947)
!3957 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !3947)
!3958 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !3947)
!3959 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !3947)
!3960 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !3947)
!3961 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !3947)
!3962 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !3947)
!3963 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !3947)
!3964 = !DILocation(line: 0, scope: !851, inlinedAt: !3947)
!3965 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !3947)
!3966 = !DILocation(line: 1401, column: 37, scope: !3942)
!3967 = !DILocation(line: 1399, column: 17, scope: !3943)
!3968 = !DILocation(line: 1403, column: 38, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 1402, column: 13)
!3970 = !DILocation(line: 1403, column: 20, scope: !3969)
!3971 = !DILocation(line: 1403, column: 32, scope: !3969)
!3972 = !DILocation(line: 1403, column: 17, scope: !3969)
!3973 = !DILocation(line: 1403, column: 36, scope: !3969)
!3974 = !DILocation(line: 1404, column: 31, scope: !3969)
!3975 = !DILocation(line: 1404, column: 17, scope: !3969)
!3976 = !DILocation(line: 1407, column: 41, scope: !3969)
!3977 = !DILocation(line: 1407, column: 55, scope: !3969)
!3978 = !DILocation(line: 1407, column: 62, scope: !3969)
!3979 = !DILocation(line: 1407, column: 31, scope: !3969)
!3980 = !DILocation(line: 1407, column: 29, scope: !3969)
!3981 = !DILocation(line: 1408, column: 17, scope: !3969)
!3982 = !DILocation(line: 1409, column: 13, scope: !3969)
!3983 = !DILocation(line: 1411, column: 51, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 1409, column: 20)
!3985 = !DILocation(line: 1411, column: 21, scope: !3984)
!3986 = !DILocation(line: 1410, column: 20, scope: !3984)
!3987 = !DILocation(line: 1410, column: 32, scope: !3984)
!3988 = !DILocation(line: 1410, column: 17, scope: !3984)
!3989 = !DILocation(line: 1410, column: 36, scope: !3984)
!3990 = !DILocation(line: 1412, column: 33, scope: !3984)
!3991 = !DILocation(line: 1412, column: 40, scope: !3984)
!3992 = !DILocation(line: 1412, column: 27, scope: !3984)
!3993 = !DILocation(line: 1414, column: 24, scope: !3943)
!3994 = !DILocation(line: 1415, column: 28, scope: !3943)
!3995 = distinct !{!3995, !3763, !3996}
!3996 = !DILocation(line: 1417, column: 5, scope: !3629)
!3997 = !DILocation(line: 1420, column: 12, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3629, file: !3, line: 1420, column: 9)
!3999 = !DILocation(line: 1420, column: 25, scope: !3998)
!4000 = !DILocation(line: 1420, column: 31, scope: !3998)
!4001 = !DILocation(line: 0, scope: !3861)
!4002 = !DILocation(line: 1424, column: 1, scope: !3629)
!4003 = distinct !DISubprogram(name: "processInputBuffer", scope: !3, file: !3, line: 1430, type: !4, isLocal: false, isDefinition: true, scopeLine: 1430, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4004)
!4004 = !{!4005}
!4005 = !DILocalVariable(name: "c", arg: 1, scope: !4003, file: !3, line: 1430, type: !6)
!4006 = !DILocation(line: 1430, column: 33, scope: !4003)
!4007 = !DILocation(line: 1431, column: 27, scope: !4003)
!4008 = !DILocation(line: 1434, column: 5, scope: !4003)
!4009 = !DILocation(line: 1434, column: 14, scope: !4003)
!4010 = !DILocation(line: 1434, column: 33, scope: !4003)
!4011 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 1434, column: 23, scope: !4003)
!4013 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !4012)
!4014 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !4012)
!4015 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !4012)
!4016 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !4012)
!4017 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !4012)
!4018 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !4012)
!4019 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !4012)
!4020 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !4012)
!4021 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !4012)
!4022 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !4012)
!4023 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !4012)
!4024 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !4012)
!4025 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !4012)
!4026 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !4012)
!4027 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !4012)
!4028 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !4012)
!4029 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !4012)
!4030 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !4012)
!4031 = !DILocation(line: 0, scope: !851, inlinedAt: !4012)
!4032 = !DILocation(line: 1434, column: 21, scope: !4003)
!4033 = !DILocation(line: 1436, column: 18, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !3, line: 1436, column: 13)
!4035 = distinct !DILexicalBlock(scope: !4003, file: !3, line: 1434, column: 44)
!4036 = !DILocation(line: 1436, column: 24, scope: !4034)
!4037 = !DILocation(line: 1436, column: 40, scope: !4034)
!4038 = !DILocation(line: 2206, column: 16, scope: !4039, inlinedAt: !4046)
!4039 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 2206, column: 9)
!4040 = distinct !DISubprogram(name: "clientsArePaused", scope: !3, file: !3, line: 2205, type: !3166, isLocal: false, isDefinition: true, scopeLine: 2205, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4041)
!4041 = !{!4042, !4044, !4045}
!4042 = !DILocalVariable(name: "ln", scope: !4043, file: !3, line: 2209, type: !103)
!4043 = distinct !DILexicalBlock(scope: !4039, file: !3, line: 2208, column: 5)
!4044 = !DILocalVariable(name: "li", scope: !4043, file: !3, line: 2210, type: !3170)
!4045 = !DILocalVariable(name: "c", scope: !4043, file: !3, line: 2211, type: !6)
!4046 = distinct !DILocation(line: 1436, column: 43, scope: !4034)
!4047 = !{!442, !378, i64 568}
!4048 = !DILocation(line: 2206, column: 9, scope: !4039, inlinedAt: !4046)
!4049 = !DILocation(line: 2206, column: 31, scope: !4039, inlinedAt: !4046)
!4050 = !DILocation(line: 2227, column: 5, scope: !4040, inlinedAt: !4046)
!4051 = !DILocation(line: 1436, column: 13, scope: !4035)
!4052 = !DILocation(line: 2207, column: 16, scope: !4039, inlinedAt: !4046)
!4053 = !{!442, !443, i64 576}
!4054 = !DILocation(line: 2207, column: 48, scope: !4039, inlinedAt: !4046)
!4055 = !{!442, !443, i64 2896}
!4056 = !DILocation(line: 2207, column: 39, scope: !4039, inlinedAt: !4046)
!4057 = !DILocation(line: 2206, column: 9, scope: !4040, inlinedAt: !4046)
!4058 = !DILocation(line: 2210, column: 9, scope: !4043, inlinedAt: !4046)
!4059 = !DILocation(line: 2213, column: 31, scope: !4043, inlinedAt: !4046)
!4060 = !DILocation(line: 2217, column: 27, scope: !4043, inlinedAt: !4046)
!4061 = !DILocation(line: 2210, column: 18, scope: !4043, inlinedAt: !4046)
!4062 = !DILocation(line: 2217, column: 9, scope: !4043, inlinedAt: !4046)
!4063 = !DILocation(line: 2218, column: 22, scope: !4043, inlinedAt: !4046)
!4064 = !DILocation(line: 2209, column: 19, scope: !4043, inlinedAt: !4046)
!4065 = !DILocation(line: 2218, column: 37, scope: !4043, inlinedAt: !4046)
!4066 = !DILocation(line: 2218, column: 9, scope: !4043, inlinedAt: !4046)
!4067 = !DILocation(line: 2219, column: 17, scope: !4068, inlinedAt: !4046)
!4068 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 2218, column: 46)
!4069 = !DILocation(line: 2211, column: 17, scope: !4043, inlinedAt: !4046)
!4070 = !DILocation(line: 2223, column: 20, scope: !4071, inlinedAt: !4046)
!4071 = distinct !DILexicalBlock(scope: !4068, file: !3, line: 2223, column: 17)
!4072 = !DILocation(line: 2223, column: 26, scope: !4071, inlinedAt: !4046)
!4073 = !DILocation(line: 2223, column: 17, scope: !4068, inlinedAt: !4046)
!4074 = !DILocation(line: 2224, column: 13, scope: !4068, inlinedAt: !4046)
!4075 = distinct !{!4075, !4076, !4077}
!4076 = !DILocation(line: 2218, column: 9, scope: !4043)
!4077 = !DILocation(line: 2225, column: 9, scope: !4043)
!4078 = !DILocation(line: 2226, column: 5, scope: !4039, inlinedAt: !4046)
!4079 = !DILocation(line: 2227, column: 19, scope: !4040, inlinedAt: !4046)
!4080 = !DILocation(line: 1436, column: 43, scope: !4034)
!4081 = !DILocation(line: 1439, column: 16, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4035, file: !3, line: 1439, column: 13)
!4083 = !DILocation(line: 1439, column: 22, scope: !4082)
!4084 = !DILocation(line: 1439, column: 13, scope: !4035)
!4085 = !DILocation(line: 1445, column: 20, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4035, file: !3, line: 1445, column: 13)
!4087 = !{!442, !378, i64 3068}
!4088 = !DILocation(line: 1445, column: 13, scope: !4086)
!4089 = !DILocation(line: 1445, column: 45, scope: !4086)
!4090 = !DILocation(line: 1445, column: 33, scope: !4086)
!4091 = !DILocation(line: 1452, column: 22, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4035, file: !3, line: 1452, column: 13)
!4093 = !DILocation(line: 1455, column: 17, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4035, file: !3, line: 1455, column: 13)
!4095 = !DILocation(line: 1455, column: 13, scope: !4035)
!4096 = !DILocation(line: 1456, column: 20, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4098, file: !3, line: 1456, column: 17)
!4098 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 1455, column: 26)
!4099 = !DILocation(line: 1456, column: 32, scope: !4097)
!4100 = !DILocation(line: 1456, column: 17, scope: !4097)
!4101 = !DILocation(line: 1456, column: 40, scope: !4097)
!4102 = !DILocation(line: 1456, column: 17, scope: !4098)
!4103 = !DILocation(line: 1457, column: 28, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4097, file: !3, line: 1456, column: 48)
!4105 = !DILocation(line: 1463, column: 13, scope: !4035)
!4106 = !DILocation(line: 1459, column: 28, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4097, file: !3, line: 1458, column: 20)
!4108 = !DILocation(line: 1464, column: 17, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4110, file: !3, line: 1464, column: 17)
!4110 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 1463, column: 45)
!4111 = distinct !DILexicalBlock(scope: !4035, file: !3, line: 1463, column: 13)
!4112 = !DILocation(line: 1464, column: 40, scope: !4109)
!4113 = !DILocation(line: 1464, column: 17, scope: !4110)
!4114 = !DILocation(line: 1466, column: 17, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 1466, column: 17)
!4116 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 1465, column: 55)
!4117 = distinct !DILexicalBlock(scope: !4111, file: !3, line: 1465, column: 20)
!4118 = !DILocation(line: 1466, column: 43, scope: !4115)
!4119 = !DILocation(line: 1466, column: 17, scope: !4116)
!4120 = !DILocation(line: 1468, column: 13, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 1467, column: 16)
!4122 = !DILocation(line: 1472, column: 16, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4035, file: !3, line: 1472, column: 13)
!4124 = !DILocation(line: 1472, column: 21, scope: !4123)
!4125 = !DILocation(line: 1472, column: 13, scope: !4035)
!4126 = !DILocation(line: 1131, column: 26, scope: !3241, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 1473, column: 13, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4123, file: !3, line: 1472, column: 27)
!4129 = !DILocation(line: 1132, column: 36, scope: !3241, inlinedAt: !4127)
!4130 = !DILocation(line: 1132, column: 33, scope: !3241, inlinedAt: !4127)
!4131 = !DILocation(line: 1132, column: 50, scope: !3241, inlinedAt: !4127)
!4132 = !DILocation(line: 779, column: 36, scope: !2745, inlinedAt: !4133)
!4133 = distinct !DILocation(line: 1134, column: 5, scope: !3241, inlinedAt: !4127)
!4134 = !DILocation(line: 780, column: 9, scope: !2745, inlinedAt: !4133)
!4135 = !DILocation(line: 783, column: 13, scope: !2745, inlinedAt: !4133)
!4136 = !DILocation(line: 784, column: 12, scope: !2745, inlinedAt: !4133)
!4137 = !DILocation(line: 785, column: 1, scope: !2745, inlinedAt: !4133)
!4138 = !DILocation(line: 1135, column: 16, scope: !3241, inlinedAt: !4127)
!4139 = !DILocation(line: 1136, column: 21, scope: !3241, inlinedAt: !4127)
!4140 = !DILocation(line: 1137, column: 16, scope: !3241, inlinedAt: !4127)
!4141 = !DILocation(line: 1141, column: 14, scope: !3270, inlinedAt: !4127)
!4142 = !DILocation(line: 1141, column: 20, scope: !3270, inlinedAt: !4127)
!4143 = !DILocation(line: 1141, column: 36, scope: !3270, inlinedAt: !4127)
!4144 = !DILocation(line: 1142, column: 18, scope: !3270, inlinedAt: !4127)
!4145 = !DILocation(line: 1142, column: 9, scope: !3270, inlinedAt: !4127)
!4146 = !DILocation(line: 1147, column: 14, scope: !3241, inlinedAt: !4127)
!4147 = !DILocation(line: 1148, column: 18, scope: !3277, inlinedAt: !4127)
!4148 = !DILocation(line: 1150, column: 18, scope: !3279, inlinedAt: !4127)
!4149 = !DILocation(line: 1148, column: 9, scope: !3241, inlinedAt: !4127)
!4150 = !DILocation(line: 0, scope: !3241, inlinedAt: !4127)
!4151 = !DILocation(line: 1152, column: 1, scope: !3241, inlinedAt: !4127)
!4152 = !DILocation(line: 1474, column: 9, scope: !4128)
!4153 = !DILocation(line: 1476, column: 17, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4155, file: !3, line: 1476, column: 17)
!4155 = distinct !DILexicalBlock(scope: !4123, file: !3, line: 1474, column: 16)
!4156 = !DILocation(line: 1476, column: 35, scope: !4154)
!4157 = !DILocation(line: 1476, column: 17, scope: !4155)
!4158 = !DILocation(line: 1477, column: 24, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4160, file: !3, line: 1477, column: 21)
!4160 = distinct !DILexicalBlock(scope: !4154, file: !3, line: 1476, column: 44)
!4161 = !DILocation(line: 1477, column: 46, scope: !4159)
!4162 = !DILocation(line: 1479, column: 37, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4159, file: !3, line: 1477, column: 77)
!4164 = !DILocation(line: 1479, column: 62, scope: !4163)
!4165 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 1479, column: 52, scope: !4163)
!4167 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !4166)
!4168 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !4166)
!4169 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !4166)
!4170 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !4166)
!4171 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !4166)
!4172 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !4166)
!4173 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !4166)
!4174 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !4166)
!4175 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !4166)
!4176 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !4166)
!4177 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !4166)
!4178 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !4166)
!4179 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !4166)
!4180 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !4166)
!4181 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !4166)
!4182 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !4166)
!4183 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !4166)
!4184 = !DILocation(line: 0, scope: !851, inlinedAt: !4166)
!4185 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !4166)
!4186 = !DILocation(line: 1479, column: 50, scope: !4163)
!4187 = !DILocation(line: 1479, column: 77, scope: !4163)
!4188 = !DILocation(line: 1479, column: 72, scope: !4163)
!4189 = !DILocation(line: 1479, column: 32, scope: !4163)
!4190 = !DILocation(line: 1480, column: 17, scope: !4163)
!4191 = !DILocation(line: 1486, column: 32, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4160, file: !3, line: 1486, column: 21)
!4193 = !DILocation(line: 1486, column: 50, scope: !4192)
!4194 = !DILocation(line: 1486, column: 56, scope: !4192)
!4195 = !DILocation(line: 1486, column: 62, scope: !4192)
!4196 = !DILocation(line: 1486, column: 21, scope: !4160)
!4197 = !DILocation(line: 1131, column: 26, scope: !3241, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 1487, column: 21, scope: !4192)
!4199 = !DILocation(line: 1132, column: 36, scope: !3241, inlinedAt: !4198)
!4200 = !DILocation(line: 1132, column: 33, scope: !3241, inlinedAt: !4198)
!4201 = !DILocation(line: 1132, column: 50, scope: !3241, inlinedAt: !4198)
!4202 = !DILocation(line: 779, column: 36, scope: !2745, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 1134, column: 5, scope: !3241, inlinedAt: !4198)
!4204 = !DILocation(line: 780, column: 9, scope: !2745, inlinedAt: !4203)
!4205 = !DILocation(line: 781, column: 24, scope: !2752, inlinedAt: !4203)
!4206 = !DILocation(line: 781, column: 19, scope: !2752, inlinedAt: !4203)
!4207 = !DILocation(line: 781, column: 5, scope: !2753, inlinedAt: !4203)
!4208 = !DILocation(line: 782, column: 25, scope: !2752, inlinedAt: !4203)
!4209 = !DILocation(line: 782, column: 22, scope: !2752, inlinedAt: !4203)
!4210 = !DILocation(line: 782, column: 9, scope: !2752, inlinedAt: !4203)
!4211 = !DILocation(line: 781, column: 31, scope: !2752, inlinedAt: !4203)
!4212 = !DILocation(line: 1141, column: 14, scope: !3270, inlinedAt: !4198)
!4213 = !DILocation(line: 783, column: 13, scope: !2745, inlinedAt: !4203)
!4214 = !DILocation(line: 784, column: 12, scope: !2745, inlinedAt: !4203)
!4215 = !DILocation(line: 785, column: 1, scope: !2745, inlinedAt: !4203)
!4216 = !DILocation(line: 1135, column: 16, scope: !3241, inlinedAt: !4198)
!4217 = !DILocation(line: 1136, column: 21, scope: !3241, inlinedAt: !4198)
!4218 = !DILocation(line: 1137, column: 16, scope: !3241, inlinedAt: !4198)
!4219 = !DILocation(line: 1141, column: 20, scope: !3270, inlinedAt: !4198)
!4220 = !DILocation(line: 1141, column: 36, scope: !3270, inlinedAt: !4198)
!4221 = !DILocation(line: 1142, column: 18, scope: !3270, inlinedAt: !4198)
!4222 = !DILocation(line: 1142, column: 9, scope: !3270, inlinedAt: !4198)
!4223 = !DILocation(line: 1147, column: 14, scope: !3241, inlinedAt: !4198)
!4224 = !DILocation(line: 1148, column: 18, scope: !3277, inlinedAt: !4198)
!4225 = !DILocation(line: 1150, column: 18, scope: !3279, inlinedAt: !4198)
!4226 = !DILocation(line: 1148, column: 9, scope: !3241, inlinedAt: !4198)
!4227 = !DILocation(line: 0, scope: !3241, inlinedAt: !4198)
!4228 = !DILocation(line: 1152, column: 1, scope: !3241, inlinedAt: !4198)
!4229 = !DILocation(line: 1487, column: 21, scope: !4192)
!4230 = !DILocation(line: 1492, column: 24, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4155, file: !3, line: 1492, column: 17)
!4232 = !DILocation(line: 1492, column: 39, scope: !4231)
!4233 = !DILocation(line: 1492, column: 17, scope: !4155)
!4234 = distinct !{!4234, !4008, !4235}
!4235 = !DILocation(line: 1494, column: 5, scope: !4003)
!4236 = !DILocation(line: 1497, column: 16, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4003, file: !3, line: 1497, column: 9)
!4238 = !DILocation(line: 1497, column: 31, scope: !4237)
!4239 = !DILocation(line: 1497, column: 39, scope: !4237)
!4240 = !DILocation(line: 1497, column: 45, scope: !4237)
!4241 = !DILocation(line: 1497, column: 42, scope: !4237)
!4242 = !DILocation(line: 1497, column: 9, scope: !4003)
!4243 = !DILocation(line: 1498, column: 21, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 1497, column: 53)
!4245 = !DILocation(line: 1498, column: 9, scope: !4244)
!4246 = !DILocation(line: 1499, column: 19, scope: !4244)
!4247 = !DILocation(line: 1500, column: 5, scope: !4244)
!4248 = !DILocation(line: 1502, column: 27, scope: !4003)
!4249 = !DILocation(line: 1503, column: 1, scope: !4003)
!4250 = !DILocation(line: 2206, column: 16, scope: !4039)
!4251 = !DILocation(line: 2206, column: 9, scope: !4039)
!4252 = !DILocation(line: 2206, column: 31, scope: !4039)
!4253 = !DILocation(line: 2207, column: 16, scope: !4039)
!4254 = !DILocation(line: 2207, column: 48, scope: !4039)
!4255 = !DILocation(line: 2207, column: 39, scope: !4039)
!4256 = !DILocation(line: 2206, column: 9, scope: !4040)
!4257 = !DILocation(line: 2210, column: 9, scope: !4043)
!4258 = !DILocation(line: 2213, column: 31, scope: !4043)
!4259 = !DILocation(line: 2217, column: 27, scope: !4043)
!4260 = !DILocation(line: 2210, column: 18, scope: !4043)
!4261 = !DILocation(line: 2217, column: 9, scope: !4043)
!4262 = !DILocation(line: 2218, column: 22, scope: !4043)
!4263 = !DILocation(line: 2209, column: 19, scope: !4043)
!4264 = !DILocation(line: 2218, column: 37, scope: !4043)
!4265 = !DILocation(line: 2219, column: 17, scope: !4068)
!4266 = !DILocation(line: 2211, column: 17, scope: !4043)
!4267 = !DILocation(line: 2223, column: 20, scope: !4071)
!4268 = !DILocation(line: 2223, column: 26, scope: !4071)
!4269 = !DILocation(line: 2223, column: 17, scope: !4068)
!4270 = !DILocation(line: 2224, column: 13, scope: !4068)
!4271 = !DILocation(line: 2226, column: 5, scope: !4039)
!4272 = !DILocation(line: 2227, column: 19, scope: !4040)
!4273 = !DILocation(line: 2226, column: 5, scope: !4043)
!4274 = !DILocation(line: 2227, column: 5, scope: !4040)
!4275 = !DILocation(line: 1509, column: 45, scope: !992)
!4276 = !DILocation(line: 1510, column: 14, scope: !996)
!4277 = !DILocation(line: 1510, column: 20, scope: !996)
!4278 = !DILocation(line: 1510, column: 9, scope: !992)
!4279 = !DILocation(line: 1511, column: 9, scope: !1002)
!4280 = !DILocation(line: 1512, column: 5, scope: !1002)
!4281 = !DILocation(line: 1513, column: 33, scope: !995)
!4282 = !DILocation(line: 1513, column: 16, scope: !995)
!4283 = !DILocation(line: 1514, column: 9, scope: !995)
!4284 = !DILocation(line: 1515, column: 29, scope: !995)
!4285 = !DILocation(line: 1515, column: 37, scope: !995)
!4286 = !DILocation(line: 1515, column: 16, scope: !995)
!4287 = !DILocation(line: 1516, column: 13, scope: !1012)
!4288 = !DILocation(line: 1516, column: 13, scope: !995)
!4289 = !DILocation(line: 1517, column: 58, scope: !1015)
!4290 = !DILocation(line: 1518, column: 24, scope: !1015)
!4291 = !DILocation(line: 1517, column: 13, scope: !1015)
!4292 = !DILocation(line: 1519, column: 25, scope: !1015)
!4293 = !DILocation(line: 1519, column: 13, scope: !1015)
!4294 = !DILocation(line: 1520, column: 9, scope: !1015)
!4295 = !DILocation(line: 1522, column: 1, scope: !992)
!4296 = distinct !DISubprogram(name: "catClientInfoString", scope: !3, file: !3, line: 1652, type: !4297, isLocal: false, isDefinition: true, scopeLine: 1652, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4299)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!137, !137, !6}
!4299 = !{!4300, !4301, !4302, !4303, !4307, !4308}
!4300 = !DILocalVariable(name: "s", arg: 1, scope: !4296, file: !3, line: 1652, type: !137)
!4301 = !DILocalVariable(name: "client", arg: 2, scope: !4296, file: !3, line: 1652, type: !6)
!4302 = !DILocalVariable(name: "flags", scope: !4296, file: !3, line: 1653, type: !334)
!4303 = !DILocalVariable(name: "events", scope: !4296, file: !3, line: 1653, type: !4304)
!4304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 24, elements: !4305)
!4305 = !{!4306}
!4306 = !DISubrange(count: 3)
!4307 = !DILocalVariable(name: "p", scope: !4296, file: !3, line: 1653, type: !139)
!4308 = !DILocalVariable(name: "emask", scope: !4296, file: !3, line: 1654, type: !18)
!4309 = !DILocalVariable(name: "peerid", scope: !4310, file: !3, line: 1641, type: !4315)
!4310 = distinct !DISubprogram(name: "getClientPeerId", scope: !3, file: !3, line: 1640, type: !4311, isLocal: false, isDefinition: true, scopeLine: 1640, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4313)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!139, !6}
!4313 = !{!4314, !4309}
!4314 = !DILocalVariable(name: "c", arg: 1, scope: !4310, file: !3, line: 1640, type: !6)
!4315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 624, elements: !4316)
!4316 = !{!4317}
!4317 = !DISubrange(count: 78)
!4318 = !DILocation(line: 1641, column: 10, scope: !4310, inlinedAt: !4319)
!4319 = distinct !DILocation(line: 1684, column: 9, scope: !4296)
!4320 = !DILocation(line: 1652, column: 29, scope: !4296)
!4321 = !DILocation(line: 1652, column: 40, scope: !4296)
!4322 = !DILocation(line: 1653, column: 5, scope: !4296)
!4323 = !DILocation(line: 1653, column: 10, scope: !4296)
!4324 = !DILocation(line: 1653, column: 21, scope: !4296)
!4325 = !DILocation(line: 1653, column: 33, scope: !4296)
!4326 = !DILocation(line: 1657, column: 17, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 1657, column: 9)
!4328 = !DILocation(line: 1657, column: 23, scope: !4327)
!4329 = !DILocation(line: 1657, column: 9, scope: !4296)
!4330 = !DILocation(line: 1658, column: 27, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4332, file: !3, line: 1658, column: 13)
!4332 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 1657, column: 39)
!4333 = !DILocation(line: 0, scope: !4331)
!4334 = !DILocation(line: 1663, column: 23, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 1663, column: 9)
!4336 = !DILocation(line: 1663, column: 9, scope: !4296)
!4337 = !DILocation(line: 1663, column: 42, scope: !4335)
!4338 = !DILocation(line: 1663, column: 45, scope: !4335)
!4339 = !DILocation(line: 1663, column: 40, scope: !4335)
!4340 = !DILocation(line: 1664, column: 23, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 1664, column: 9)
!4342 = !DILocation(line: 1664, column: 9, scope: !4296)
!4343 = !DILocation(line: 1664, column: 42, scope: !4341)
!4344 = !DILocation(line: 1664, column: 45, scope: !4341)
!4345 = !DILocation(line: 1664, column: 40, scope: !4341)
!4346 = !DILocation(line: 1665, column: 23, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 1665, column: 9)
!4348 = !DILocation(line: 1665, column: 9, scope: !4296)
!4349 = !DILocation(line: 1665, column: 41, scope: !4347)
!4350 = !DILocation(line: 1665, column: 44, scope: !4347)
!4351 = !DILocation(line: 1665, column: 39, scope: !4347)
!4352 = !DILocation(line: 1666, column: 23, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 1666, column: 9)
!4354 = !DILocation(line: 1666, column: 9, scope: !4296)
!4355 = !DILocation(line: 1666, column: 43, scope: !4353)
!4356 = !DILocation(line: 1666, column: 46, scope: !4353)
!4357 = !DILocation(line: 1666, column: 41, scope: !4353)
!4358 = !DILocation(line: 1667, column: 23, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 1667, column: 9)
!4360 = !DILocation(line: 1667, column: 9, scope: !4296)
!4361 = !DILocation(line: 1667, column: 45, scope: !4359)
!4362 = !DILocation(line: 1667, column: 48, scope: !4359)
!4363 = !DILocation(line: 1667, column: 43, scope: !4359)
!4364 = !DILocation(line: 1668, column: 23, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 1668, column: 9)
!4366 = !DILocation(line: 1668, column: 9, scope: !4296)
!4367 = !DILocation(line: 1668, column: 53, scope: !4365)
!4368 = !DILocation(line: 1668, column: 56, scope: !4365)
!4369 = !DILocation(line: 1668, column: 51, scope: !4365)
!4370 = !DILocation(line: 1669, column: 23, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 1669, column: 9)
!4372 = !DILocation(line: 1669, column: 9, scope: !4296)
!4373 = !DILocation(line: 1669, column: 45, scope: !4371)
!4374 = !DILocation(line: 1669, column: 48, scope: !4371)
!4375 = !DILocation(line: 1669, column: 43, scope: !4371)
!4376 = !DILocation(line: 1670, column: 23, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 1670, column: 9)
!4378 = !DILocation(line: 1670, column: 9, scope: !4296)
!4379 = !DILocation(line: 1670, column: 46, scope: !4377)
!4380 = !DILocation(line: 1670, column: 49, scope: !4377)
!4381 = !DILocation(line: 1670, column: 44, scope: !4377)
!4382 = !DILocation(line: 1671, column: 23, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 1671, column: 9)
!4384 = !DILocation(line: 1671, column: 9, scope: !4296)
!4385 = !DILocation(line: 1671, column: 47, scope: !4383)
!4386 = !DILocation(line: 1671, column: 50, scope: !4383)
!4387 = !DILocation(line: 1671, column: 45, scope: !4383)
!4388 = !DILocation(line: 1672, column: 23, scope: !4389)
!4389 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 1672, column: 9)
!4390 = !DILocation(line: 1672, column: 9, scope: !4296)
!4391 = !DILocation(line: 1672, column: 44, scope: !4389)
!4392 = !DILocation(line: 1672, column: 47, scope: !4389)
!4393 = !DILocation(line: 1673, column: 9, scope: !4296)
!4394 = !DILocation(line: 1673, column: 11, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 1673, column: 9)
!4396 = !DILocation(line: 1673, column: 23, scope: !4395)
!4397 = !DILocation(line: 1673, column: 26, scope: !4395)
!4398 = !DILocation(line: 1673, column: 21, scope: !4395)
!4399 = !DILocation(line: 0, scope: !4389)
!4400 = !DILocation(line: 1674, column: 10, scope: !4296)
!4401 = !DILocation(line: 1676, column: 21, scope: !4296)
!4402 = !DILocation(line: 1676, column: 24, scope: !4296)
!4403 = !DILocation(line: 1676, column: 13, scope: !4296)
!4404 = !DILocation(line: 1676, column: 59, scope: !4296)
!4405 = !DILocation(line: 1676, column: 36, scope: !4296)
!4406 = !DILocation(line: 1654, column: 9, scope: !4296)
!4407 = !DILocation(line: 1678, column: 15, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 1678, column: 9)
!4409 = !DILocation(line: 1678, column: 9, scope: !4296)
!4410 = !DILocation(line: 1678, column: 32, scope: !4408)
!4411 = !DILocation(line: 1678, column: 35, scope: !4408)
!4412 = !DILocation(line: 1678, column: 30, scope: !4408)
!4413 = !DILocation(line: 0, scope: !4296)
!4414 = !DILocation(line: 1679, column: 15, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 1679, column: 9)
!4416 = !DILocation(line: 1679, column: 9, scope: !4296)
!4417 = !DILocation(line: 1679, column: 32, scope: !4415)
!4418 = !DILocation(line: 1679, column: 35, scope: !4415)
!4419 = !DILocation(line: 1679, column: 30, scope: !4415)
!4420 = !DILocation(line: 0, scope: !4408)
!4421 = !DILocation(line: 1680, column: 8, scope: !4296)
!4422 = !DILocation(line: 1683, column: 38, scope: !4296)
!4423 = !DILocation(line: 1640, column: 31, scope: !4310, inlinedAt: !4319)
!4424 = !DILocation(line: 1641, column: 5, scope: !4310, inlinedAt: !4319)
!4425 = !DILocation(line: 1643, column: 12, scope: !4426, inlinedAt: !4319)
!4426 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 1643, column: 9)
!4427 = !DILocation(line: 1643, column: 19, scope: !4426, inlinedAt: !4319)
!4428 = !DILocation(line: 1643, column: 9, scope: !4310, inlinedAt: !4319)
!4429 = !DILocalVariable(name: "client", arg: 1, scope: !4430, file: !3, line: 1625, type: !6)
!4430 = distinct !DISubprogram(name: "genClientPeerId", scope: !3, file: !3, line: 1625, type: !4431, isLocal: false, isDefinition: true, scopeLine: 1626, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4433)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{null, !6, !139, !142}
!4433 = !{!4429, !4434, !4435}
!4434 = !DILocalVariable(name: "peerid", arg: 2, scope: !4430, file: !3, line: 1625, type: !139)
!4435 = !DILocalVariable(name: "peerid_len", arg: 3, scope: !4430, file: !3, line: 1626, type: !142)
!4436 = !DILocation(line: 1625, column: 30, scope: !4430, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 1644, column: 9, scope: !4438, inlinedAt: !4319)
!4438 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 1643, column: 28)
!4439 = !DILocation(line: 1625, column: 44, scope: !4430, inlinedAt: !4437)
!4440 = !DILocation(line: 1626, column: 36, scope: !4430, inlinedAt: !4437)
!4441 = !DILocation(line: 1627, column: 17, scope: !4442, inlinedAt: !4437)
!4442 = distinct !DILexicalBlock(scope: !4430, file: !3, line: 1627, column: 9)
!4443 = !DILocation(line: 1627, column: 23, scope: !4442, inlinedAt: !4437)
!4444 = !DILocation(line: 1627, column: 9, scope: !4430, inlinedAt: !4437)
!4445 = !DILocation(line: 1629, column: 50, scope: !4446, inlinedAt: !4437)
!4446 = distinct !DILexicalBlock(scope: !4442, file: !3, line: 1627, column: 45)
!4447 = !DILocation(line: 1629, column: 9, scope: !4446, inlinedAt: !4437)
!4448 = !DILocation(line: 1630, column: 5, scope: !4446, inlinedAt: !4437)
!4449 = !DILocation(line: 1632, column: 32, scope: !4450, inlinedAt: !4437)
!4450 = distinct !DILexicalBlock(scope: !4442, file: !3, line: 1630, column: 12)
!4451 = !DILocation(line: 1632, column: 9, scope: !4450, inlinedAt: !4437)
!4452 = !DILocation(line: 1634, column: 1, scope: !4430, inlinedAt: !4437)
!4453 = !DILocation(line: 1645, column: 21, scope: !4438, inlinedAt: !4319)
!4454 = !DILocation(line: 1645, column: 19, scope: !4438, inlinedAt: !4319)
!4455 = !DILocation(line: 1646, column: 5, scope: !4438, inlinedAt: !4319)
!4456 = !DILocation(line: 1647, column: 15, scope: !4310, inlinedAt: !4319)
!4457 = !DILocation(line: 1648, column: 1, scope: !4310, inlinedAt: !4319)
!4458 = !DILocation(line: 1647, column: 5, scope: !4310, inlinedAt: !4319)
!4459 = !DILocation(line: 1685, column: 17, scope: !4296)
!4460 = !DILocation(line: 1686, column: 17, scope: !4296)
!4461 = !DILocation(line: 1686, column: 9, scope: !4296)
!4462 = !DILocation(line: 1686, column: 45, scope: !4296)
!4463 = !DILocation(line: 1687, column: 28, scope: !4296)
!4464 = !DILocation(line: 1687, column: 47, scope: !4296)
!4465 = !DILocation(line: 1687, column: 37, scope: !4296)
!4466 = !DILocation(line: 1688, column: 47, scope: !4296)
!4467 = !DILocation(line: 1688, column: 37, scope: !4296)
!4468 = !DILocation(line: 1690, column: 17, scope: !4296)
!4469 = !{!456, !381, i64 16}
!4470 = !DILocation(line: 1690, column: 21, scope: !4296)
!4471 = !{!4472, !378, i64 40}
!4472 = !{!"redisDb", !381, i64 0, !381, i64 8, !381, i64 16, !381, i64 24, !381, i64 32, !378, i64 40, !443, i64 48, !381, i64 56}
!4473 = !DILocation(line: 1691, column: 15, scope: !4296)
!4474 = !{!4475, !411, i64 24}
!4475 = !{!"dictht", !381, i64 0, !411, i64 8, !411, i64 16, !411, i64 24}
!4476 = !DILocation(line: 1691, column: 9, scope: !4296)
!4477 = !DILocation(line: 1692, column: 15, scope: !4296)
!4478 = !DILocation(line: 1692, column: 9, scope: !4296)
!4479 = !DILocation(line: 1693, column: 18, scope: !4296)
!4480 = !DILocation(line: 1693, column: 24, scope: !4296)
!4481 = !DILocation(line: 1693, column: 9, scope: !4296)
!4482 = !DILocation(line: 1693, column: 57, scope: !4296)
!4483 = !{!456, !378, i64 360}
!4484 = !DILocation(line: 1694, column: 45, scope: !4296)
!4485 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !4486)
!4486 = distinct !DILocation(line: 1694, column: 30, scope: !4296)
!4487 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !4486)
!4488 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !4486)
!4489 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !4486)
!4490 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !4486)
!4491 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !4486)
!4492 = !DILocalVariable(name: "s", arg: 1, scope: !4493, file: !138, line: 104, type: !842)
!4493 = distinct !DISubprogram(name: "sdsavail", scope: !138, file: !138, line: 104, type: !840, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4494)
!4494 = !{!4492, !4495, !4496, !4499, !4501, !4503}
!4495 = !DILocalVariable(name: "flags", scope: !4493, file: !138, line: 105, type: !269)
!4496 = !DILocalVariable(name: "sh", scope: !4497, file: !138, line: 111, type: !272)
!4497 = distinct !DILexicalBlock(scope: !4498, file: !138, line: 110, column: 26)
!4498 = distinct !DILexicalBlock(scope: !4493, file: !138, line: 106, column: 33)
!4499 = !DILocalVariable(name: "sh", scope: !4500, file: !138, line: 115, type: !284)
!4500 = distinct !DILexicalBlock(scope: !4498, file: !138, line: 114, column: 27)
!4501 = !DILocalVariable(name: "sh", scope: !4502, file: !138, line: 119, type: !294)
!4502 = distinct !DILexicalBlock(scope: !4498, file: !138, line: 118, column: 27)
!4503 = !DILocalVariable(name: "sh", scope: !4504, file: !138, line: 123, type: !303)
!4504 = distinct !DILexicalBlock(scope: !4498, file: !138, line: 122, column: 27)
!4505 = !DILocation(line: 104, column: 41, scope: !4493, inlinedAt: !4506)
!4506 = distinct !DILocation(line: 1695, column: 30, scope: !4296)
!4507 = !DILocation(line: 105, column: 19, scope: !4493, inlinedAt: !4506)
!4508 = !DILocation(line: 106, column: 5, scope: !4493, inlinedAt: !4506)
!4509 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !4486)
!4510 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !4486)
!4511 = !DILocation(line: 111, column: 13, scope: !4497, inlinedAt: !4506)
!4512 = !DILocation(line: 112, column: 24, scope: !4497, inlinedAt: !4506)
!4513 = !DILocation(line: 112, column: 20, scope: !4497, inlinedAt: !4506)
!4514 = !DILocation(line: 112, column: 30, scope: !4497, inlinedAt: !4506)
!4515 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !4486)
!4516 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !4486)
!4517 = !DILocation(line: 115, column: 13, scope: !4500, inlinedAt: !4506)
!4518 = !DILocation(line: 116, column: 24, scope: !4500, inlinedAt: !4506)
!4519 = !DILocation(line: 116, column: 20, scope: !4500, inlinedAt: !4506)
!4520 = !DILocation(line: 116, column: 30, scope: !4500, inlinedAt: !4506)
!4521 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !4486)
!4522 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !4486)
!4523 = !DILocation(line: 119, column: 13, scope: !4502, inlinedAt: !4506)
!4524 = !DILocation(line: 120, column: 24, scope: !4502, inlinedAt: !4506)
!4525 = !DILocation(line: 120, column: 30, scope: !4502, inlinedAt: !4506)
!4526 = !DILocation(line: 120, column: 20, scope: !4502, inlinedAt: !4506)
!4527 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !4486)
!4528 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !4486)
!4529 = !DILocation(line: 123, column: 13, scope: !4504, inlinedAt: !4506)
!4530 = !DILocation(line: 124, column: 24, scope: !4504, inlinedAt: !4506)
!4531 = !DILocation(line: 124, column: 30, scope: !4504, inlinedAt: !4506)
!4532 = !DILocation(line: 0, scope: !4533, inlinedAt: !4506)
!4533 = distinct !DILexicalBlock(scope: !4498, file: !138, line: 107, column: 26)
!4534 = !DILocation(line: 128, column: 1, scope: !4493, inlinedAt: !4506)
!4535 = !DILocation(line: 1696, column: 38, scope: !4296)
!4536 = !DILocation(line: 1696, column: 9, scope: !4296)
!4537 = !DILocation(line: 1697, column: 30, scope: !4296)
!4538 = !DILocation(line: 2036, column: 56, scope: !1236, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 1698, column: 30, scope: !4296)
!4540 = !DILocation(line: 2037, column: 19, scope: !1236, inlinedAt: !4539)
!4541 = !DILocation(line: 2038, column: 15, scope: !1236, inlinedAt: !4539)
!4542 = !DILocation(line: 2038, column: 44, scope: !1236, inlinedAt: !4539)
!4543 = !DILocation(line: 2038, column: 27, scope: !1236, inlinedAt: !4539)
!4544 = !DILocation(line: 2038, column: 5, scope: !1236, inlinedAt: !4539)
!4545 = !DILocation(line: 1700, column: 17, scope: !4296)
!4546 = !DILocation(line: 1700, column: 9, scope: !4296)
!4547 = !DILocation(line: 1700, column: 44, scope: !4296)
!4548 = !DILocation(line: 1681, column: 12, scope: !4296)
!4549 = !DILocation(line: 1701, column: 1, scope: !4296)
!4550 = !DILocation(line: 1681, column: 5, scope: !4296)
!4551 = distinct !DISubprogram(name: "getClientsMaxBuffers", scope: !3, file: !3, line: 1596, type: !4552, isLocal: false, isDefinition: true, scopeLine: 1597, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4555)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{null, !4554, !4554}
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!4555 = !{!4556, !4557, !4558, !4559, !4560, !4561, !4562}
!4556 = !DILocalVariable(name: "longest_output_list", arg: 1, scope: !4551, file: !3, line: 1596, type: !4554)
!4557 = !DILocalVariable(name: "biggest_input_buffer", arg: 2, scope: !4551, file: !3, line: 1597, type: !4554)
!4558 = !DILocalVariable(name: "c", scope: !4551, file: !3, line: 1598, type: !6)
!4559 = !DILocalVariable(name: "ln", scope: !4551, file: !3, line: 1599, type: !103)
!4560 = !DILocalVariable(name: "li", scope: !4551, file: !3, line: 1600, type: !3170)
!4561 = !DILocalVariable(name: "lol", scope: !4551, file: !3, line: 1601, type: !16)
!4562 = !DILocalVariable(name: "bib", scope: !4551, file: !3, line: 1601, type: !16)
!4563 = !DILocation(line: 1596, column: 42, scope: !4551)
!4564 = !DILocation(line: 1597, column: 42, scope: !4551)
!4565 = !DILocation(line: 1600, column: 5, scope: !4551)
!4566 = !DILocation(line: 1601, column: 19, scope: !4551)
!4567 = !DILocation(line: 1601, column: 28, scope: !4551)
!4568 = !DILocation(line: 1603, column: 23, scope: !4551)
!4569 = !DILocation(line: 1600, column: 14, scope: !4551)
!4570 = !DILocation(line: 1603, column: 5, scope: !4551)
!4571 = !DILocation(line: 1604, column: 18, scope: !4551)
!4572 = !DILocation(line: 1599, column: 15, scope: !4551)
!4573 = !DILocation(line: 1604, column: 33, scope: !4551)
!4574 = !DILocation(line: 1604, column: 5, scope: !4551)
!4575 = !DILocation(line: 1605, column: 13, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 1604, column: 42)
!4577 = !DILocation(line: 1598, column: 13, scope: !4551)
!4578 = !DILocation(line: 1607, column: 13, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 1607, column: 13)
!4580 = !DILocation(line: 1607, column: 34, scope: !4579)
!4581 = !DILocation(line: 1607, column: 13, scope: !4576)
!4582 = !DILocation(line: 1608, column: 23, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4576, file: !3, line: 1608, column: 13)
!4584 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !4585)
!4585 = distinct !DILocation(line: 1608, column: 13, scope: !4583)
!4586 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !4585)
!4587 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !4585)
!4588 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !4585)
!4589 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !4585)
!4590 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !4585)
!4591 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !4585)
!4592 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !4585)
!4593 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !4585)
!4594 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !4585)
!4595 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !4585)
!4596 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !4585)
!4597 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !4585)
!4598 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !4585)
!4599 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !4585)
!4600 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !4585)
!4601 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !4585)
!4602 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !4585)
!4603 = !DILocation(line: 0, scope: !851, inlinedAt: !4585)
!4604 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !4585)
!4605 = !DILocation(line: 1608, column: 33, scope: !4583)
!4606 = !DILocation(line: 1608, column: 13, scope: !4576)
!4607 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !4608)
!4608 = distinct !DILocation(line: 1608, column: 46, scope: !4583)
!4609 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !4608)
!4610 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !4608)
!4611 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !4608)
!4612 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !4608)
!4613 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !4608)
!4614 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !4608)
!4615 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !4608)
!4616 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !4608)
!4617 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !4608)
!4618 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !4608)
!4619 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !4608)
!4620 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !4608)
!4621 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !4608)
!4622 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !4608)
!4623 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !4608)
!4624 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !4608)
!4625 = !DILocation(line: 0, scope: !4551)
!4626 = distinct !{!4626, !4574, !4627}
!4627 = !DILocation(line: 1609, column: 5, scope: !4551)
!4628 = !DILocation(line: 0, scope: !4579)
!4629 = !DILocation(line: 0, scope: !4583)
!4630 = !DILocation(line: 1610, column: 26, scope: !4551)
!4631 = !DILocation(line: 1611, column: 27, scope: !4551)
!4632 = !DILocation(line: 1612, column: 1, scope: !4551)
!4633 = !DILocation(line: 1625, column: 30, scope: !4430)
!4634 = !DILocation(line: 1625, column: 44, scope: !4430)
!4635 = !DILocation(line: 1626, column: 36, scope: !4430)
!4636 = !DILocation(line: 1627, column: 17, scope: !4442)
!4637 = !DILocation(line: 1627, column: 23, scope: !4442)
!4638 = !DILocation(line: 1627, column: 9, scope: !4430)
!4639 = !DILocation(line: 1629, column: 50, scope: !4446)
!4640 = !DILocation(line: 1629, column: 9, scope: !4446)
!4641 = !DILocation(line: 1630, column: 5, scope: !4446)
!4642 = !DILocation(line: 1632, column: 32, scope: !4450)
!4643 = !DILocation(line: 1632, column: 9, scope: !4450)
!4644 = !DILocation(line: 1634, column: 1, scope: !4430)
!4645 = !DILocation(line: 1640, column: 31, scope: !4310)
!4646 = !DILocation(line: 1641, column: 5, scope: !4310)
!4647 = !DILocation(line: 1641, column: 10, scope: !4310)
!4648 = !DILocation(line: 1643, column: 12, scope: !4426)
!4649 = !DILocation(line: 1643, column: 19, scope: !4426)
!4650 = !DILocation(line: 1643, column: 9, scope: !4310)
!4651 = !DILocation(line: 1625, column: 30, scope: !4430, inlinedAt: !4652)
!4652 = distinct !DILocation(line: 1644, column: 9, scope: !4438)
!4653 = !DILocation(line: 1625, column: 44, scope: !4430, inlinedAt: !4652)
!4654 = !DILocation(line: 1626, column: 36, scope: !4430, inlinedAt: !4652)
!4655 = !DILocation(line: 1627, column: 17, scope: !4442, inlinedAt: !4652)
!4656 = !DILocation(line: 1627, column: 23, scope: !4442, inlinedAt: !4652)
!4657 = !DILocation(line: 1627, column: 9, scope: !4430, inlinedAt: !4652)
!4658 = !DILocation(line: 1629, column: 50, scope: !4446, inlinedAt: !4652)
!4659 = !DILocation(line: 1629, column: 9, scope: !4446, inlinedAt: !4652)
!4660 = !DILocation(line: 1630, column: 5, scope: !4446, inlinedAt: !4652)
!4661 = !DILocation(line: 1632, column: 32, scope: !4450, inlinedAt: !4652)
!4662 = !DILocation(line: 1632, column: 9, scope: !4450, inlinedAt: !4652)
!4663 = !DILocation(line: 1634, column: 1, scope: !4430, inlinedAt: !4652)
!4664 = !DILocation(line: 1645, column: 21, scope: !4438)
!4665 = !DILocation(line: 1645, column: 19, scope: !4438)
!4666 = !DILocation(line: 1646, column: 5, scope: !4438)
!4667 = !DILocation(line: 1647, column: 15, scope: !4310)
!4668 = !DILocation(line: 1648, column: 1, scope: !4310)
!4669 = !DILocation(line: 1647, column: 5, scope: !4310)
!4670 = !DILocation(line: 2036, column: 56, scope: !1236)
!4671 = !DILocation(line: 2037, column: 19, scope: !1236)
!4672 = !DILocation(line: 2038, column: 15, scope: !1236)
!4673 = !DILocation(line: 2038, column: 45, scope: !1236)
!4674 = !DILocation(line: 2038, column: 44, scope: !1236)
!4675 = !DILocation(line: 2038, column: 27, scope: !1236)
!4676 = !DILocation(line: 2038, column: 5, scope: !1236)
!4677 = distinct !DISubprogram(name: "getAllClientsInfoString", scope: !3, file: !3, line: 1703, type: !4678, isLocal: false, isDefinition: true, scopeLine: 1703, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4680)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!137, !18}
!4680 = !{!4681, !4682, !4683, !4684, !4685}
!4681 = !DILocalVariable(name: "type", arg: 1, scope: !4677, file: !3, line: 1703, type: !18)
!4682 = !DILocalVariable(name: "ln", scope: !4677, file: !3, line: 1704, type: !103)
!4683 = !DILocalVariable(name: "li", scope: !4677, file: !3, line: 1705, type: !3170)
!4684 = !DILocalVariable(name: "client", scope: !4677, file: !3, line: 1706, type: !6)
!4685 = !DILocalVariable(name: "o", scope: !4677, file: !3, line: 1707, type: !137)
!4686 = !DILocation(line: 1703, column: 33, scope: !4677)
!4687 = !DILocation(line: 1705, column: 5, scope: !4677)
!4688 = !DILocation(line: 1707, column: 23, scope: !4677)
!4689 = !DILocation(line: 1707, column: 38, scope: !4677)
!4690 = !DILocation(line: 1707, column: 37, scope: !4677)
!4691 = !DILocation(line: 1707, column: 13, scope: !4677)
!4692 = !DILocation(line: 1707, column: 9, scope: !4677)
!4693 = !DILocation(line: 1708, column: 5, scope: !4677)
!4694 = !DILocation(line: 1709, column: 23, scope: !4677)
!4695 = !DILocation(line: 1705, column: 14, scope: !4677)
!4696 = !DILocation(line: 1709, column: 5, scope: !4677)
!4697 = !DILocation(line: 1710, column: 5, scope: !4677)
!4698 = !DILocation(line: 1710, column: 18, scope: !4677)
!4699 = !DILocation(line: 1704, column: 15, scope: !4677)
!4700 = !DILocation(line: 1710, column: 33, scope: !4677)
!4701 = !DILocation(line: 1711, column: 18, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4677, file: !3, line: 1710, column: 42)
!4703 = !DILocation(line: 1706, column: 13, scope: !4677)
!4704 = !DILocation(line: 1712, column: 24, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4702, file: !3, line: 1712, column: 13)
!4706 = !DILocation(line: 2050, column: 27, scope: !1250, inlinedAt: !4707)
!4707 = distinct !DILocation(line: 1712, column: 27, scope: !4705)
!4708 = !DILocation(line: 2051, column: 12, scope: !1255, inlinedAt: !4707)
!4709 = !DILocation(line: 2051, column: 18, scope: !1255, inlinedAt: !4707)
!4710 = !DILocation(line: 2051, column: 9, scope: !1250, inlinedAt: !4707)
!4711 = !DILocation(line: 2052, column: 35, scope: !1258, inlinedAt: !4707)
!4712 = !DILocation(line: 2055, column: 5, scope: !1250, inlinedAt: !4707)
!4713 = !DILocation(line: 0, scope: !1258, inlinedAt: !4707)
!4714 = !DILocation(line: 2056, column: 1, scope: !1250, inlinedAt: !4707)
!4715 = !DILocation(line: 1712, column: 49, scope: !4705)
!4716 = !DILocation(line: 1712, column: 13, scope: !4702)
!4717 = distinct !{!4717, !4697, !4718}
!4718 = !DILocation(line: 1715, column: 5, scope: !4677)
!4719 = !DILocation(line: 1713, column: 13, scope: !4702)
!4720 = !DILocation(line: 1714, column: 13, scope: !4702)
!4721 = !DILocation(line: 1717, column: 1, scope: !4677)
!4722 = !DILocation(line: 1716, column: 5, scope: !4677)
!4723 = !DILocation(line: 2050, column: 27, scope: !1250)
!4724 = !DILocation(line: 2051, column: 12, scope: !1255)
!4725 = !DILocation(line: 2051, column: 18, scope: !1255)
!4726 = !DILocation(line: 2051, column: 9, scope: !1250)
!4727 = !DILocation(line: 2052, column: 35, scope: !1258)
!4728 = !DILocation(line: 2055, column: 5, scope: !1250)
!4729 = !DILocation(line: 0, scope: !1258)
!4730 = !DILocation(line: 2056, column: 1, scope: !1250)
!4731 = distinct !DISubprogram(name: "clientCommand", scope: !3, file: !3, line: 1719, type: !4, isLocal: false, isDefinition: true, scopeLine: 1719, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4732)
!4732 = !{!4733, !4734, !4735, !4736, !4737, !4743, !4747, !4748, !4752, !4753, !4754, !4755, !4756, !4757, !4761, !4763, !4766, !4769, !4770, !4772, !4775, !4776, !4777}
!4733 = !DILocalVariable(name: "c", arg: 1, scope: !4731, file: !3, line: 1719, type: !6)
!4734 = !DILocalVariable(name: "ln", scope: !4731, file: !3, line: 1720, type: !103)
!4735 = !DILocalVariable(name: "li", scope: !4731, file: !3, line: 1721, type: !3170)
!4736 = !DILocalVariable(name: "client", scope: !4731, file: !3, line: 1722, type: !6)
!4737 = !DILocalVariable(name: "help", scope: !4738, file: !3, line: 1725, type: !4740)
!4738 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 1724, column: 62)
!4739 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 1724, column: 9)
!4740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 896, elements: !4741)
!4741 = !{!4742}
!4742 = !DISubrange(count: 14)
!4743 = !DILocalVariable(name: "type", scope: !4744, file: !3, line: 1747, type: !18)
!4744 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 1745, column: 53)
!4745 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 1745, column: 16)
!4746 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 1742, column: 16)
!4747 = !DILocalVariable(name: "o", scope: !4744, file: !3, line: 1759, type: !137)
!4748 = !DILocalVariable(name: "addr", scope: !4749, file: !3, line: 1779, type: !139)
!4749 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 1776, column: 53)
!4750 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 1776, column: 16)
!4751 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 1762, column: 16)
!4752 = !DILocalVariable(name: "type", scope: !4749, file: !3, line: 1780, type: !18)
!4753 = !DILocalVariable(name: "id", scope: !4749, file: !3, line: 1781, type: !12)
!4754 = !DILocalVariable(name: "skipme", scope: !4749, file: !3, line: 1782, type: !18)
!4755 = !DILocalVariable(name: "killed", scope: !4749, file: !3, line: 1783, type: !18)
!4756 = !DILocalVariable(name: "close_this_client", scope: !4749, file: !3, line: 1783, type: !18)
!4757 = !DILocalVariable(name: "i", scope: !4758, file: !3, line: 1790, type: !18)
!4758 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 1789, column: 33)
!4759 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 1789, column: 20)
!4760 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 1785, column: 13)
!4761 = !DILocalVariable(name: "moreargs", scope: !4762, file: !3, line: 1794, type: !18)
!4762 = distinct !DILexicalBlock(scope: !4758, file: !3, line: 1793, column: 32)
!4763 = !DILocalVariable(name: "tmp", scope: !4764, file: !3, line: 1797, type: !95)
!4764 = distinct !DILexicalBlock(scope: !4765, file: !3, line: 1796, column: 68)
!4765 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 1796, column: 21)
!4766 = !DILocalVariable(name: "id", scope: !4767, file: !3, line: 1866, type: !95)
!4767 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 1864, column: 5)
!4768 = distinct !DILexicalBlock(scope: !4750, file: !3, line: 1862, column: 16)
!4769 = !DILocalVariable(name: "unblock_error", scope: !4767, file: !3, line: 1867, type: !18)
!4770 = !DILocalVariable(name: "target", scope: !4767, file: !3, line: 1882, type: !4771)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!4772 = !DILocalVariable(name: "j", scope: !4773, file: !3, line: 1895, type: !18)
!4773 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 1894, column: 72)
!4774 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 1894, column: 16)
!4775 = !DILocalVariable(name: "len", scope: !4773, file: !3, line: 1895, type: !18)
!4776 = !DILocalVariable(name: "p", scope: !4773, file: !3, line: 1896, type: !139)
!4777 = !DILocalVariable(name: "duration", scope: !4778, file: !3, line: 1928, type: !95)
!4778 = distinct !DILexicalBlock(scope: !4779, file: !3, line: 1927, column: 70)
!4779 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 1927, column: 16)
!4780 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 1922, column: 16)
!4781 = !DILocation(line: 1641, column: 10, scope: !4310, inlinedAt: !4782)
!4782 = distinct !DILocation(line: 1835, column: 32, scope: !4783)
!4783 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 1835, column: 17)
!4784 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 1833, column: 46)
!4785 = !DILocation(line: 1719, column: 28, scope: !4731)
!4786 = !DILocation(line: 1721, column: 5, scope: !4731)
!4787 = !DILocation(line: 1724, column: 12, scope: !4739)
!4788 = !DILocation(line: 1724, column: 17, scope: !4739)
!4789 = !DILocation(line: 0, scope: !4746)
!4790 = !DILocation(line: 1724, column: 22, scope: !4739)
!4791 = !DILocation(line: 1724, column: 26, scope: !4739)
!4792 = !DILocation(line: 1724, column: 9, scope: !4731)
!4793 = !DILocation(line: 1725, column: 9, scope: !4738)
!4794 = !DILocation(line: 1725, column: 21, scope: !4738)
!4795 = !DILocation(line: 1741, column: 25, scope: !4738)
!4796 = !DILocation(line: 1741, column: 9, scope: !4738)
!4797 = !DILocation(line: 1742, column: 5, scope: !4739)
!4798 = !DILocation(line: 1742, column: 5, scope: !4738)
!4799 = !DILocation(line: 1742, column: 17, scope: !4746)
!4800 = !DILocation(line: 1742, column: 50, scope: !4746)
!4801 = !DILocation(line: 1744, column: 31, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 1742, column: 67)
!4803 = !DILocation(line: 1744, column: 9, scope: !4802)
!4804 = !DILocation(line: 1745, column: 5, scope: !4802)
!4805 = !DILocation(line: 1745, column: 17, scope: !4745)
!4806 = !DILocation(line: 1745, column: 16, scope: !4746)
!4807 = !DILocation(line: 1747, column: 13, scope: !4744)
!4808 = !DILocation(line: 1748, column: 21, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4744, file: !3, line: 1748, column: 13)
!4810 = !DILocation(line: 1748, column: 26, scope: !4809)
!4811 = !DILocation(line: 1748, column: 41, scope: !4809)
!4812 = !DILocation(line: 1748, column: 53, scope: !4809)
!4813 = !DILocation(line: 1748, column: 30, scope: !4809)
!4814 = !DILocation(line: 1748, column: 13, scope: !4744)
!4815 = !DILocation(line: 1749, column: 40, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 1748, column: 66)
!4817 = !DILocation(line: 1749, column: 52, scope: !4816)
!4818 = !DILocalVariable(name: "name", arg: 1, scope: !4819, file: !3, line: 2058, type: !139)
!4819 = distinct !DISubprogram(name: "getClientTypeByName", scope: !3, file: !3, line: 2058, type: !4820, isLocal: false, isDefinition: true, scopeLine: 2058, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4822)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!18, !139}
!4822 = !{!4818}
!4823 = !DILocation(line: 2058, column: 31, scope: !4819, inlinedAt: !4824)
!4824 = distinct !DILocation(line: 1749, column: 20, scope: !4816)
!4825 = !DILocation(line: 2059, column: 10, scope: !4826, inlinedAt: !4824)
!4826 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 2059, column: 9)
!4827 = !DILocation(line: 2059, column: 9, scope: !4819, inlinedAt: !4824)
!4828 = !DILocation(line: 2060, column: 15, scope: !4829, inlinedAt: !4824)
!4829 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 2060, column: 14)
!4830 = !DILocation(line: 2060, column: 14, scope: !4826, inlinedAt: !4824)
!4831 = !DILocation(line: 2061, column: 15, scope: !4832, inlinedAt: !4824)
!4832 = distinct !DILexicalBlock(scope: !4829, file: !3, line: 2061, column: 14)
!4833 = !DILocation(line: 2061, column: 14, scope: !4829, inlinedAt: !4824)
!4834 = !DILocation(line: 2062, column: 15, scope: !4835, inlinedAt: !4824)
!4835 = distinct !DILexicalBlock(scope: !4832, file: !3, line: 2062, column: 14)
!4836 = !DILocation(line: 2062, column: 14, scope: !4832, inlinedAt: !4824)
!4837 = !DILocation(line: 2063, column: 15, scope: !4838, inlinedAt: !4824)
!4838 = distinct !DILexicalBlock(scope: !4835, file: !3, line: 2063, column: 14)
!4839 = !DILocation(line: 2065, column: 1, scope: !4819, inlinedAt: !4824)
!4840 = !DILocation(line: 1750, column: 17, scope: !4816)
!4841 = !DILocation(line: 1751, column: 17, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 1750, column: 29)
!4843 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 1750, column: 17)
!4844 = !DILocation(line: 1755, column: 20, scope: !4809)
!4845 = !DILocation(line: 1756, column: 31, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 1755, column: 34)
!4847 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 1755, column: 20)
!4848 = !{!2029, !381, i64 128}
!4849 = !DILocation(line: 1756, column: 13, scope: !4846)
!4850 = !DILocation(line: 0, scope: !4816)
!4851 = !DILocation(line: 1759, column: 17, scope: !4744)
!4852 = !DILocation(line: 1759, column: 13, scope: !4744)
!4853 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !4854)
!4854 = distinct !DILocation(line: 1760, column: 33, scope: !4744)
!4855 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !4854)
!4856 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !4854)
!4857 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !4854)
!4858 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !4854)
!4859 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !4854)
!4860 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !4854)
!4861 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !4854)
!4862 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !4854)
!4863 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !4854)
!4864 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !4854)
!4865 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !4854)
!4866 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !4854)
!4867 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !4854)
!4868 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !4854)
!4869 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !4854)
!4870 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !4854)
!4871 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !4854)
!4872 = !DILocation(line: 0, scope: !851, inlinedAt: !4854)
!4873 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !4854)
!4874 = !DILocation(line: 1760, column: 9, scope: !4744)
!4875 = !DILocation(line: 1761, column: 9, scope: !4744)
!4876 = !DILocation(line: 1762, column: 17, scope: !4751)
!4877 = !DILocation(line: 1762, column: 64, scope: !4751)
!4878 = !DILocation(line: 1762, column: 53, scope: !4751)
!4879 = !DILocation(line: 1764, column: 25, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4881, file: !3, line: 1764, column: 13)
!4881 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 1762, column: 70)
!4882 = !DILocation(line: 1764, column: 37, scope: !4880)
!4883 = !DILocation(line: 1764, column: 14, scope: !4880)
!4884 = !DILocation(line: 1764, column: 13, scope: !4881)
!4885 = !DILocation(line: 1765, column: 16, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 1764, column: 48)
!4887 = !DILocation(line: 1765, column: 22, scope: !4886)
!4888 = !DILocation(line: 1766, column: 31, scope: !4886)
!4889 = !{!2029, !381, i64 8}
!4890 = !DILocation(line: 1766, column: 13, scope: !4886)
!4891 = !DILocation(line: 1767, column: 9, scope: !4886)
!4892 = !DILocation(line: 1767, column: 21, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 1767, column: 20)
!4894 = !DILocation(line: 1767, column: 20, scope: !4880)
!4895 = !DILocation(line: 1768, column: 16, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 1767, column: 56)
!4897 = !DILocation(line: 1768, column: 22, scope: !4896)
!4898 = !DILocation(line: 1769, column: 9, scope: !4896)
!4899 = !DILocation(line: 1769, column: 21, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 1769, column: 20)
!4901 = !DILocation(line: 1769, column: 20, scope: !4893)
!4902 = !DILocation(line: 1770, column: 22, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 1770, column: 17)
!4904 = distinct !DILexicalBlock(scope: !4900, file: !3, line: 1769, column: 57)
!4905 = !DILocation(line: 1770, column: 28, scope: !4903)
!4906 = !DILocation(line: 1770, column: 17, scope: !4904)
!4907 = !DILocation(line: 1771, column: 26, scope: !4903)
!4908 = !DILocation(line: 1771, column: 17, scope: !4903)
!4909 = !DILocation(line: 1773, column: 31, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4900, file: !3, line: 1772, column: 16)
!4911 = !DILocation(line: 1773, column: 13, scope: !4910)
!4912 = !DILocation(line: 1774, column: 13, scope: !4910)
!4913 = !DILocation(line: 1776, column: 17, scope: !4750)
!4914 = !DILocation(line: 1776, column: 16, scope: !4751)
!4915 = !DILocation(line: 1779, column: 15, scope: !4749)
!4916 = !DILocation(line: 1780, column: 13, scope: !4749)
!4917 = !DILocation(line: 1781, column: 18, scope: !4749)
!4918 = !DILocation(line: 1782, column: 13, scope: !4749)
!4919 = !DILocation(line: 1783, column: 13, scope: !4749)
!4920 = !DILocation(line: 1783, column: 25, scope: !4749)
!4921 = !DILocation(line: 1785, column: 13, scope: !4749)
!4922 = !DILocation(line: 1787, column: 20, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 1785, column: 27)
!4924 = !DILocation(line: 1787, column: 32, scope: !4923)
!4925 = !DILocation(line: 1789, column: 9, scope: !4923)
!4926 = !DILocation(line: 1789, column: 28, scope: !4759)
!4927 = !DILocation(line: 1789, column: 20, scope: !4760)
!4928 = !DILocation(line: 1790, column: 17, scope: !4758)
!4929 = !DILocation(line: 1793, column: 13, scope: !4758)
!4930 = !DILocation(line: 1794, column: 43, scope: !4762)
!4931 = !DILocation(line: 1794, column: 40, scope: !4762)
!4932 = !DILocation(line: 1796, column: 36, scope: !4765)
!4933 = !DILocation(line: 1796, column: 33, scope: !4765)
!4934 = !DILocation(line: 1796, column: 45, scope: !4765)
!4935 = !DILocation(line: 1796, column: 22, scope: !4765)
!4936 = !DILocation(line: 1796, column: 55, scope: !4765)
!4937 = !DILocation(line: 1797, column: 21, scope: !4764)
!4938 = !DILocation(line: 1799, column: 56, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4764, file: !3, line: 1799, column: 25)
!4940 = !DILocation(line: 1797, column: 31, scope: !4764)
!4941 = !DILocation(line: 1799, column: 25, scope: !4939)
!4942 = !DILocation(line: 1800, column: 25, scope: !4939)
!4943 = !DILocation(line: 1801, column: 26, scope: !4764)
!4944 = !DILocation(line: 1802, column: 17, scope: !4765)
!4945 = !DILocation(line: 1802, column: 29, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4765, file: !3, line: 1802, column: 28)
!4947 = !DILocation(line: 1802, column: 64, scope: !4946)
!4948 = !DILocation(line: 1803, column: 48, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 1802, column: 77)
!4950 = !DILocation(line: 1803, column: 62, scope: !4949)
!4951 = !DILocation(line: 2058, column: 31, scope: !4819, inlinedAt: !4952)
!4952 = distinct !DILocation(line: 1803, column: 28, scope: !4949)
!4953 = !DILocation(line: 2059, column: 10, scope: !4826, inlinedAt: !4952)
!4954 = !DILocation(line: 2059, column: 9, scope: !4819, inlinedAt: !4952)
!4955 = !DILocation(line: 2060, column: 15, scope: !4829, inlinedAt: !4952)
!4956 = !DILocation(line: 2060, column: 14, scope: !4826, inlinedAt: !4952)
!4957 = !DILocation(line: 2061, column: 15, scope: !4832, inlinedAt: !4952)
!4958 = !DILocation(line: 2061, column: 14, scope: !4829, inlinedAt: !4952)
!4959 = !DILocation(line: 2062, column: 15, scope: !4835, inlinedAt: !4952)
!4960 = !DILocation(line: 2062, column: 14, scope: !4832, inlinedAt: !4952)
!4961 = !DILocation(line: 2063, column: 15, scope: !4838, inlinedAt: !4952)
!4962 = !DILocation(line: 2065, column: 1, scope: !4819, inlinedAt: !4952)
!4963 = !DILocation(line: 1804, column: 25, scope: !4949)
!4964 = !DILocation(line: 1805, column: 25, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4966, file: !3, line: 1804, column: 37)
!4966 = distinct !DILexicalBlock(scope: !4949, file: !3, line: 1804, column: 25)
!4967 = !DILocation(line: 1807, column: 25, scope: !4965)
!4968 = !DILocation(line: 1809, column: 29, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 1809, column: 28)
!4970 = !DILocation(line: 1809, column: 64, scope: !4969)
!4971 = !DILocation(line: 1810, column: 28, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4969, file: !3, line: 1809, column: 77)
!4973 = !DILocation(line: 1810, column: 42, scope: !4972)
!4974 = !DILocation(line: 1811, column: 17, scope: !4972)
!4975 = !DILocation(line: 1811, column: 29, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4969, file: !3, line: 1811, column: 28)
!4977 = !DILocation(line: 1811, column: 66, scope: !4976)
!4978 = !DILocation(line: 1812, column: 37, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 1812, column: 25)
!4980 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 1811, column: 79)
!4981 = !DILocation(line: 1812, column: 51, scope: !4979)
!4982 = !DILocation(line: 1812, column: 26, scope: !4979)
!4983 = !DILocation(line: 1812, column: 25, scope: !4980)
!4984 = !DILocation(line: 1814, column: 33, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 1814, column: 32)
!4986 = !DILocation(line: 1814, column: 32, scope: !4979)
!4987 = !DILocation(line: 1817, column: 43, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 1816, column: 28)
!4989 = !DILocation(line: 1817, column: 25, scope: !4988)
!4990 = !DILocation(line: 1818, column: 25, scope: !4988)
!4991 = !DILocation(line: 1821, column: 39, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 1820, column: 24)
!4993 = !DILocation(line: 1821, column: 21, scope: !4992)
!4994 = !DILocation(line: 1822, column: 21, scope: !4992)
!4995 = !DILocation(line: 0, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 1812, column: 63)
!4997 = !DILocation(line: 0, scope: !4749)
!4998 = !DILocation(line: 1824, column: 19, scope: !4762)
!4999 = !DILocation(line: 1793, column: 26, scope: !4758)
!5000 = !DILocation(line: 1793, column: 21, scope: !4758)
!5001 = !DILocation(line: 1827, column: 31, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4759, file: !3, line: 1826, column: 16)
!5003 = !DILocation(line: 1827, column: 13, scope: !5002)
!5004 = !DILocation(line: 1828, column: 13, scope: !5002)
!5005 = !DILocation(line: 1832, column: 27, scope: !4749)
!5006 = !DILocation(line: 1721, column: 14, scope: !4731)
!5007 = !DILocation(line: 1832, column: 9, scope: !4749)
!5008 = !DILocation(line: 1833, column: 22, scope: !4749)
!5009 = !DILocation(line: 1720, column: 15, scope: !4731)
!5010 = !DILocation(line: 1833, column: 37, scope: !4749)
!5011 = !DILocation(line: 1833, column: 9, scope: !4749)
!5012 = !DILocation(line: 1834, column: 22, scope: !4784)
!5013 = !DILocation(line: 1722, column: 13, scope: !4731)
!5014 = !DILocation(line: 1835, column: 22, scope: !4783)
!5015 = !DILocation(line: 1640, column: 31, scope: !4310, inlinedAt: !4782)
!5016 = !DILocation(line: 1641, column: 5, scope: !4310, inlinedAt: !4782)
!5017 = !DILocation(line: 1643, column: 12, scope: !4426, inlinedAt: !4782)
!5018 = !DILocation(line: 1643, column: 19, scope: !4426, inlinedAt: !4782)
!5019 = !DILocation(line: 1643, column: 9, scope: !4310, inlinedAt: !4782)
!5020 = !DILocation(line: 1625, column: 30, scope: !4430, inlinedAt: !5021)
!5021 = distinct !DILocation(line: 1644, column: 9, scope: !4438, inlinedAt: !4782)
!5022 = !DILocation(line: 1625, column: 44, scope: !4430, inlinedAt: !5021)
!5023 = !DILocation(line: 1626, column: 36, scope: !4430, inlinedAt: !5021)
!5024 = !DILocation(line: 1627, column: 17, scope: !4442, inlinedAt: !5021)
!5025 = !DILocation(line: 1627, column: 23, scope: !4442, inlinedAt: !5021)
!5026 = !DILocation(line: 1627, column: 9, scope: !4430, inlinedAt: !5021)
!5027 = !DILocation(line: 1629, column: 50, scope: !4446, inlinedAt: !5021)
!5028 = !DILocation(line: 1629, column: 9, scope: !4446, inlinedAt: !5021)
!5029 = !DILocation(line: 1630, column: 5, scope: !4446, inlinedAt: !5021)
!5030 = !DILocation(line: 1632, column: 32, scope: !4450, inlinedAt: !5021)
!5031 = !DILocation(line: 1632, column: 9, scope: !4450, inlinedAt: !5021)
!5032 = !DILocation(line: 1634, column: 1, scope: !4430, inlinedAt: !5021)
!5033 = !DILocation(line: 1645, column: 21, scope: !4438, inlinedAt: !4782)
!5034 = !DILocation(line: 1645, column: 19, scope: !4438, inlinedAt: !4782)
!5035 = !DILocation(line: 1646, column: 5, scope: !4438, inlinedAt: !4782)
!5036 = !DILocation(line: 1647, column: 15, scope: !4310, inlinedAt: !4782)
!5037 = !DILocation(line: 1648, column: 1, scope: !4310, inlinedAt: !4782)
!5038 = !DILocation(line: 1647, column: 5, scope: !4310, inlinedAt: !4782)
!5039 = !DILocation(line: 1835, column: 25, scope: !4783)
!5040 = !DILocation(line: 1835, column: 62, scope: !4783)
!5041 = !DILocation(line: 1835, column: 17, scope: !4784)
!5042 = !DILocation(line: 1836, column: 28, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 1836, column: 17)
!5044 = !DILocation(line: 2050, column: 27, scope: !1250, inlinedAt: !5045)
!5045 = distinct !DILocation(line: 1836, column: 31, scope: !5043)
!5046 = !DILocation(line: 2051, column: 12, scope: !1255, inlinedAt: !5045)
!5047 = !DILocation(line: 2051, column: 18, scope: !1255, inlinedAt: !5045)
!5048 = !DILocation(line: 2051, column: 9, scope: !1250, inlinedAt: !5045)
!5049 = !DILocation(line: 2052, column: 35, scope: !1258, inlinedAt: !5045)
!5050 = !DILocation(line: 2055, column: 5, scope: !1250, inlinedAt: !5045)
!5051 = !DILocation(line: 0, scope: !1258, inlinedAt: !5045)
!5052 = !DILocation(line: 2056, column: 1, scope: !1250, inlinedAt: !5045)
!5053 = !DILocation(line: 1836, column: 53, scope: !5043)
!5054 = !DILocation(line: 1836, column: 17, scope: !4784)
!5055 = !DILocation(line: 1837, column: 25, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 1837, column: 17)
!5057 = !DILocation(line: 1837, column: 36, scope: !5056)
!5058 = !DILocation(line: 1837, column: 39, scope: !5056)
!5059 = !DILocation(line: 1837, column: 17, scope: !4784)
!5060 = !DILocation(line: 1838, column: 19, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 1838, column: 17)
!5062 = !DILocation(line: 1838, column: 29, scope: !5061)
!5063 = distinct !{!5063, !5011, !5064}
!5064 = !DILocation(line: 1847, column: 9, scope: !4749)
!5065 = !DILocation(line: 1841, column: 17, scope: !4784)
!5066 = !DILocation(line: 1844, column: 17, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 1843, column: 20)
!5068 = distinct !DILexicalBlock(scope: !4784, file: !3, line: 1841, column: 17)
!5069 = !DILocation(line: 1846, column: 19, scope: !4784)
!5070 = !DILocation(line: 1850, column: 16, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 1850, column: 13)
!5072 = !DILocation(line: 1850, column: 21, scope: !5071)
!5073 = !DILocation(line: 1850, column: 13, scope: !4749)
!5074 = !DILocation(line: 1851, column: 24, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 1851, column: 17)
!5076 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 1850, column: 27)
!5077 = !DILocation(line: 1851, column: 17, scope: !5076)
!5078 = !DILocation(line: 384, column: 28, scope: !1692, inlinedAt: !5079)
!5079 = distinct !DILocation(line: 1852, column: 17, scope: !5075)
!5080 = !DILocation(line: 384, column: 43, scope: !1692, inlinedAt: !5079)
!5081 = !DILocation(line: 385, column: 31, scope: !1692, inlinedAt: !5079)
!5082 = !DILocation(line: 385, column: 5, scope: !1692, inlinedAt: !5079)
!5083 = !DILocation(line: 386, column: 1, scope: !1692, inlinedAt: !5079)
!5084 = !DILocation(line: 1852, column: 17, scope: !5075)
!5085 = !DILocation(line: 1854, column: 35, scope: !5075)
!5086 = !DILocation(line: 1854, column: 17, scope: !5075)
!5087 = !DILocation(line: 1856, column: 32, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 1855, column: 16)
!5089 = !DILocation(line: 1856, column: 13, scope: !5088)
!5090 = !DILocation(line: 1861, column: 13, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 1861, column: 13)
!5092 = !DILocation(line: 1861, column: 13, scope: !4749)
!5093 = !DILocation(line: 1861, column: 35, scope: !5091)
!5094 = !DILocation(line: 1861, column: 41, scope: !5091)
!5095 = !DILocation(line: 1861, column: 32, scope: !5091)
!5096 = !DILocation(line: 1862, column: 17, scope: !4768)
!5097 = !DILocation(line: 1862, column: 72, scope: !4768)
!5098 = !DILocation(line: 1862, column: 55, scope: !4768)
!5099 = !DILocation(line: 1866, column: 9, scope: !4767)
!5100 = !DILocation(line: 1867, column: 13, scope: !4767)
!5101 = !DILocation(line: 1869, column: 21, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 1869, column: 13)
!5103 = !DILocation(line: 1869, column: 13, scope: !4767)
!5104 = !DILocation(line: 1870, column: 29, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 1870, column: 17)
!5106 = distinct !DILexicalBlock(scope: !5102, file: !3, line: 1869, column: 27)
!5107 = !DILocation(line: 1870, column: 41, scope: !5105)
!5108 = !DILocation(line: 1870, column: 18, scope: !5105)
!5109 = !DILocation(line: 1870, column: 17, scope: !5106)
!5110 = !DILocation(line: 1872, column: 25, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5105, file: !3, line: 1872, column: 24)
!5112 = !DILocation(line: 1872, column: 24, scope: !5105)
!5113 = !DILocation(line: 384, column: 28, scope: !1692, inlinedAt: !5114)
!5114 = distinct !DILocation(line: 1875, column: 17, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 1874, column: 20)
!5116 = !DILocation(line: 384, column: 43, scope: !1692, inlinedAt: !5114)
!5117 = !DILocation(line: 385, column: 31, scope: !1692, inlinedAt: !5114)
!5118 = !DILocation(line: 385, column: 5, scope: !1692, inlinedAt: !5114)
!5119 = !DILocation(line: 386, column: 1, scope: !1692, inlinedAt: !5114)
!5120 = !DILocation(line: 1894, column: 5, scope: !4768)
!5121 = !DILocation(line: 0, scope: !4767)
!5122 = !DILocation(line: 1880, column: 44, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 1880, column: 13)
!5124 = !DILocation(line: 1866, column: 19, scope: !4767)
!5125 = !DILocation(line: 1880, column: 13, scope: !5123)
!5126 = !DILocation(line: 1881, column: 13, scope: !5123)
!5127 = !DILocation(line: 1880, column: 13, scope: !4767)
!5128 = !DILocation(line: 1882, column: 50, scope: !4767)
!5129 = !DILocation(line: 977, column: 35, scope: !2978, inlinedAt: !5130)
!5130 = distinct !DILocation(line: 1882, column: 33, scope: !4767)
!5131 = !DILocation(line: 978, column: 10, scope: !2978, inlinedAt: !5130)
!5132 = !DILocation(line: 978, column: 8, scope: !2978, inlinedAt: !5130)
!5133 = !DILocation(line: 979, column: 32, scope: !2978, inlinedAt: !5130)
!5134 = !DILocation(line: 979, column: 17, scope: !2978, inlinedAt: !5130)
!5135 = !DILocation(line: 979, column: 13, scope: !2978, inlinedAt: !5130)
!5136 = !DILocation(line: 980, column: 18, scope: !2978, inlinedAt: !5130)
!5137 = !DILocation(line: 980, column: 15, scope: !2978, inlinedAt: !5130)
!5138 = !DILocation(line: 980, column: 5, scope: !2978, inlinedAt: !5130)
!5139 = !DILocation(line: 1883, column: 13, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 1883, column: 13)
!5141 = !DILocation(line: 1883, column: 20, scope: !5140)
!5142 = !DILocation(line: 1883, column: 31, scope: !5140)
!5143 = !DILocation(line: 1883, column: 37, scope: !5140)
!5144 = !DILocation(line: 1883, column: 13, scope: !4767)
!5145 = !DILocation(line: 1884, column: 17, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 1884, column: 17)
!5147 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 1883, column: 55)
!5148 = !DILocation(line: 1884, column: 17, scope: !5147)
!5149 = !DILocation(line: 384, column: 43, scope: !1692, inlinedAt: !5150)
!5150 = distinct !DILocation(line: 1885, column: 17, scope: !5146)
!5151 = !DILocation(line: 385, column: 31, scope: !1692, inlinedAt: !5150)
!5152 = !DILocation(line: 385, column: 5, scope: !1692, inlinedAt: !5150)
!5153 = !DILocation(line: 386, column: 1, scope: !1692, inlinedAt: !5150)
!5154 = !DILocation(line: 1885, column: 17, scope: !5146)
!5155 = !DILocation(line: 1888, column: 17, scope: !5146)
!5156 = !DILocation(line: 1889, column: 13, scope: !5147)
!5157 = !DILocation(line: 1890, column: 31, scope: !5147)
!5158 = !DILocation(line: 1890, column: 13, scope: !5147)
!5159 = !DILocation(line: 1891, column: 9, scope: !5147)
!5160 = !DILocation(line: 1892, column: 31, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5140, file: !3, line: 1891, column: 16)
!5162 = !DILocation(line: 1892, column: 13, scope: !5161)
!5163 = !DILocation(line: 1894, column: 17, scope: !4774)
!5164 = !DILocation(line: 1894, column: 55, scope: !4774)
!5165 = !DILocation(line: 1895, column: 29, scope: !4773)
!5166 = !DILocation(line: 1895, column: 41, scope: !4773)
!5167 = !DILocation(line: 87, column: 39, scope: !839, inlinedAt: !5168)
!5168 = distinct !DILocation(line: 1895, column: 22, scope: !4773)
!5169 = !DILocation(line: 88, column: 27, scope: !839, inlinedAt: !5168)
!5170 = !DILocation(line: 88, column: 19, scope: !839, inlinedAt: !5168)
!5171 = !DILocation(line: 89, column: 5, scope: !839, inlinedAt: !5168)
!5172 = !DILocation(line: 102, column: 1, scope: !839, inlinedAt: !5168)
!5173 = !DILocation(line: 1895, column: 16, scope: !4773)
!5174 = !DILocation(line: 1896, column: 15, scope: !4773)
!5175 = !DILocation(line: 1900, column: 13, scope: !4773)
!5176 = !DILocation(line: 91, column: 20, scope: !851, inlinedAt: !5168)
!5177 = !DILocation(line: 91, column: 13, scope: !851, inlinedAt: !5168)
!5178 = !DILocation(line: 93, column: 20, scope: !851, inlinedAt: !5168)
!5179 = !DILocation(line: 93, column: 34, scope: !851, inlinedAt: !5168)
!5180 = !DILocation(line: 93, column: 13, scope: !851, inlinedAt: !5168)
!5181 = !DILocation(line: 95, column: 20, scope: !851, inlinedAt: !5168)
!5182 = !DILocation(line: 95, column: 35, scope: !851, inlinedAt: !5168)
!5183 = !DILocation(line: 95, column: 13, scope: !851, inlinedAt: !5168)
!5184 = !DILocation(line: 97, column: 20, scope: !851, inlinedAt: !5168)
!5185 = !DILocation(line: 97, column: 35, scope: !851, inlinedAt: !5168)
!5186 = !DILocation(line: 97, column: 13, scope: !851, inlinedAt: !5168)
!5187 = !DILocation(line: 99, column: 20, scope: !851, inlinedAt: !5168)
!5188 = !DILocation(line: 99, column: 35, scope: !851, inlinedAt: !5168)
!5189 = !DILocation(line: 99, column: 13, scope: !851, inlinedAt: !5168)
!5190 = !DILocation(line: 0, scope: !851, inlinedAt: !5168)
!5191 = !DILocation(line: 1895, column: 22, scope: !4773)
!5192 = !DILocation(line: 1900, column: 17, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 1900, column: 13)
!5194 = !DILocation(line: 1895, column: 13, scope: !4773)
!5195 = !DILocation(line: 1910, column: 23, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 1910, column: 9)
!5197 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 1910, column: 9)
!5198 = !DILocation(line: 1910, column: 9, scope: !5197)
!5199 = !DILocation(line: 1911, column: 17, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5201, file: !3, line: 1911, column: 17)
!5201 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 1910, column: 35)
!5202 = !DILocation(line: 1901, column: 20, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 1901, column: 17)
!5204 = distinct !DILexicalBlock(scope: !5193, file: !3, line: 1900, column: 23)
!5205 = !DILocation(line: 1901, column: 17, scope: !5203)
!5206 = !DILocation(line: 1901, column: 17, scope: !5204)
!5207 = !DILocation(line: 1901, column: 26, scope: !5203)
!5208 = !DILocation(line: 1902, column: 21, scope: !5204)
!5209 = !DILocation(line: 1903, column: 31, scope: !5204)
!5210 = !DILocation(line: 1903, column: 13, scope: !5204)
!5211 = distinct !{!5211, !5198, !5212}
!5212 = !DILocation(line: 1917, column: 9, scope: !5197)
!5213 = !DILocation(line: 1911, column: 22, scope: !5200)
!5214 = !DILocation(line: 1911, column: 36, scope: !5200)
!5215 = !DILocation(line: 1911, column: 28, scope: !5200)
!5216 = !DILocation(line: 1910, column: 31, scope: !5196)
!5217 = !DILocation(line: 384, column: 28, scope: !1692, inlinedAt: !5218)
!5218 = distinct !DILocation(line: 1912, column: 17, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 1911, column: 43)
!5220 = !DILocation(line: 384, column: 43, scope: !1692, inlinedAt: !5218)
!5221 = !DILocation(line: 385, column: 31, scope: !1692, inlinedAt: !5218)
!5222 = !DILocation(line: 385, column: 5, scope: !1692, inlinedAt: !5218)
!5223 = !DILocation(line: 386, column: 1, scope: !1692, inlinedAt: !5218)
!5224 = !DILocation(line: 1918, column: 16, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !4773, file: !3, line: 1918, column: 13)
!5226 = !DILocation(line: 1918, column: 13, scope: !5225)
!5227 = !DILocation(line: 1918, column: 13, scope: !4773)
!5228 = !DILocation(line: 1918, column: 22, scope: !5225)
!5229 = !DILocation(line: 1919, column: 22, scope: !4773)
!5230 = !DILocation(line: 1919, column: 19, scope: !4773)
!5231 = !DILocation(line: 1919, column: 17, scope: !4773)
!5232 = !DILocation(line: 1920, column: 9, scope: !4773)
!5233 = !DILocation(line: 1921, column: 27, scope: !4773)
!5234 = !DILocation(line: 1921, column: 9, scope: !4773)
!5235 = !DILocation(line: 1922, column: 17, scope: !4780)
!5236 = !DILocation(line: 1922, column: 55, scope: !4780)
!5237 = !DILocation(line: 1923, column: 16, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 1923, column: 13)
!5239 = distinct !DILexicalBlock(scope: !4780, file: !3, line: 1922, column: 72)
!5240 = !DILocation(line: 1923, column: 13, scope: !5238)
!5241 = !DILocation(line: 1923, column: 13, scope: !5239)
!5242 = !DILocation(line: 567, column: 27, scope: !2048, inlinedAt: !5243)
!5243 = distinct !DILocation(line: 1924, column: 13, scope: !5238)
!5244 = !DILocation(line: 567, column: 36, scope: !2048, inlinedAt: !5243)
!5245 = !DILocation(line: 568, column: 5, scope: !2048, inlinedAt: !5243)
!5246 = !DILocation(line: 569, column: 5, scope: !2048, inlinedAt: !5243)
!5247 = !DILocation(line: 570, column: 23, scope: !2048, inlinedAt: !5243)
!5248 = !DILocation(line: 570, column: 5, scope: !2048, inlinedAt: !5243)
!5249 = !DILocation(line: 571, column: 1, scope: !2048, inlinedAt: !5243)
!5250 = !DILocation(line: 1924, column: 13, scope: !5238)
!5251 = !DILocation(line: 1926, column: 31, scope: !5238)
!5252 = !DILocation(line: 1926, column: 13, scope: !5238)
!5253 = !DILocation(line: 1927, column: 17, scope: !4779)
!5254 = !DILocation(line: 1927, column: 53, scope: !4779)
!5255 = !DILocation(line: 1928, column: 9, scope: !4778)
!5256 = !DILocation(line: 1930, column: 43, scope: !5257)
!5257 = distinct !DILexicalBlock(scope: !4778, file: !3, line: 1930, column: 13)
!5258 = !DILocation(line: 1928, column: 19, scope: !4778)
!5259 = !DILocation(line: 1930, column: 13, scope: !5257)
!5260 = !DILocation(line: 1931, column: 41, scope: !5257)
!5261 = !DILocation(line: 1930, column: 13, scope: !4778)
!5262 = !DILocation(line: 1932, column: 22, scope: !4778)
!5263 = !DILocalVariable(name: "end", arg: 1, scope: !5264, file: !3, line: 2197, type: !235)
!5264 = distinct !DISubprogram(name: "pauseClients", scope: !3, file: !3, line: 2197, type: !5265, isLocal: false, isDefinition: true, scopeLine: 2197, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5267)
!5265 = !DISubroutineType(types: !5266)
!5266 = !{null, !235}
!5267 = !{!5263}
!5268 = !DILocation(line: 2197, column: 28, scope: !5264, inlinedAt: !5269)
!5269 = distinct !DILocation(line: 1932, column: 9, scope: !4778)
!5270 = !DILocation(line: 2198, column: 17, scope: !5271, inlinedAt: !5269)
!5271 = distinct !DILexicalBlock(scope: !5264, file: !3, line: 2198, column: 9)
!5272 = !DILocation(line: 2198, column: 10, scope: !5271, inlinedAt: !5269)
!5273 = !DILocation(line: 2198, column: 48, scope: !5271, inlinedAt: !5269)
!5274 = !DILocation(line: 2198, column: 39, scope: !5271, inlinedAt: !5269)
!5275 = !DILocation(line: 2198, column: 32, scope: !5271, inlinedAt: !5269)
!5276 = !DILocation(line: 2199, column: 39, scope: !5271, inlinedAt: !5269)
!5277 = !DILocation(line: 2199, column: 9, scope: !5271, inlinedAt: !5269)
!5278 = !DILocation(line: 2200, column: 27, scope: !5264, inlinedAt: !5269)
!5279 = !DILocation(line: 2201, column: 1, scope: !5264, inlinedAt: !5269)
!5280 = !DILocation(line: 1933, column: 27, scope: !4778)
!5281 = !DILocation(line: 1933, column: 9, scope: !4778)
!5282 = !DILocation(line: 1934, column: 5, scope: !4779)
!5283 = !DILocation(line: 1935, column: 9, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !4779, file: !3, line: 1934, column: 12)
!5285 = !DILocation(line: 1937, column: 1, scope: !4731)
!5286 = !DILocation(line: 2058, column: 31, scope: !4819)
!5287 = !DILocation(line: 2059, column: 10, scope: !4826)
!5288 = !DILocation(line: 2059, column: 9, scope: !4819)
!5289 = !DILocation(line: 2060, column: 15, scope: !4829)
!5290 = !DILocation(line: 2060, column: 14, scope: !4826)
!5291 = !DILocation(line: 2061, column: 15, scope: !4832)
!5292 = !DILocation(line: 2061, column: 14, scope: !4829)
!5293 = !DILocation(line: 2062, column: 15, scope: !4835)
!5294 = !DILocation(line: 2062, column: 14, scope: !4832)
!5295 = !DILocation(line: 2063, column: 15, scope: !4838)
!5296 = !DILocation(line: 2063, column: 42, scope: !4838)
!5297 = !DILocation(line: 0, scope: !4826)
!5298 = !DILocation(line: 2065, column: 1, scope: !4819)
!5299 = !DILocation(line: 2197, column: 28, scope: !5264)
!5300 = !DILocation(line: 2198, column: 17, scope: !5271)
!5301 = !DILocation(line: 2198, column: 10, scope: !5271)
!5302 = !DILocation(line: 2198, column: 48, scope: !5271)
!5303 = !DILocation(line: 2198, column: 39, scope: !5271)
!5304 = !DILocation(line: 2198, column: 32, scope: !5271)
!5305 = !DILocation(line: 2199, column: 39, scope: !5271)
!5306 = !DILocation(line: 2199, column: 9, scope: !5271)
!5307 = !DILocation(line: 2200, column: 27, scope: !5264)
!5308 = !DILocation(line: 2201, column: 1, scope: !5264)
!5309 = !DILocation(line: 1948, column: 37, scope: !2)
!5310 = !DILocation(line: 1950, column: 18, scope: !2)
!5311 = !DILocation(line: 1950, column: 12, scope: !2)
!5312 = !DILocation(line: 1952, column: 18, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1952, column: 9)
!5314 = !DILocation(line: 1952, column: 17, scope: !5313)
!5315 = !DILocation(line: 1952, column: 9, scope: !5313)
!5316 = !DILocation(line: 1952, column: 31, scope: !5313)
!5317 = !DILocation(line: 1952, column: 9, scope: !2)
!5318 = !DILocation(line: 1953, column: 9, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5313, file: !3, line: 1952, column: 37)
!5320 = !DILocation(line: 1954, column: 21, scope: !5319)
!5321 = !DILocation(line: 1955, column: 5, scope: !5319)
!5322 = !DILocation(line: 957, column: 30, scope: !1299, inlinedAt: !5323)
!5323 = distinct !DILocation(line: 1956, column: 5, scope: !2)
!5324 = !DILocation(line: 958, column: 12, scope: !1304, inlinedAt: !5323)
!5325 = !DILocation(line: 958, column: 38, scope: !1304, inlinedAt: !5323)
!5326 = !DILocation(line: 959, column: 14, scope: !1299, inlinedAt: !5323)
!5327 = !DILocation(line: 960, column: 28, scope: !1299, inlinedAt: !5323)
!5328 = !DILocation(line: 960, column: 45, scope: !1299, inlinedAt: !5323)
!5329 = !DILocation(line: 960, column: 5, scope: !1299, inlinedAt: !5323)
!5330 = !DILocation(line: 961, column: 1, scope: !1299, inlinedAt: !5323)
!5331 = !DILocation(line: 1957, column: 1, scope: !2)
!5332 = distinct !DISubprogram(name: "rewriteClientCommandVector", scope: !3, file: !3, line: 1962, type: !5333, isLocal: false, isDefinition: true, scopeLine: 1962, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5335)
!5333 = !DISubroutineType(types: !5334)
!5334 = !{null, !6, !18, null}
!5335 = !{!5336, !5337, !5338, !5339, !5340, !5341}
!5336 = !DILocalVariable(name: "c", arg: 1, scope: !5332, file: !3, line: 1962, type: !6)
!5337 = !DILocalVariable(name: "argc", arg: 2, scope: !5332, file: !3, line: 1962, type: !18)
!5338 = !DILocalVariable(name: "ap", scope: !5332, file: !3, line: 1963, type: !1712)
!5339 = !DILocalVariable(name: "j", scope: !5332, file: !3, line: 1964, type: !18)
!5340 = !DILocalVariable(name: "argv", scope: !5332, file: !3, line: 1965, type: !150)
!5341 = !DILocalVariable(name: "a", scope: !5342, file: !3, line: 1970, type: !126)
!5342 = distinct !DILexicalBlock(scope: !5343, file: !3, line: 1969, column: 32)
!5343 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 1969, column: 5)
!5344 = distinct !DILexicalBlock(scope: !5332, file: !3, line: 1969, column: 5)
!5345 = !DILocation(line: 1962, column: 41, scope: !5332)
!5346 = !DILocation(line: 1962, column: 48, scope: !5332)
!5347 = !DILocation(line: 1963, column: 5, scope: !5332)
!5348 = !DILocation(line: 1963, column: 13, scope: !5332)
!5349 = !DILocation(line: 1967, column: 34, scope: !5332)
!5350 = !DILocation(line: 1967, column: 33, scope: !5332)
!5351 = !DILocation(line: 1967, column: 12, scope: !5332)
!5352 = !DILocation(line: 1965, column: 12, scope: !5332)
!5353 = !DILocation(line: 1968, column: 5, scope: !5332)
!5354 = !DILocation(line: 1964, column: 9, scope: !5332)
!5355 = !DILocation(line: 1969, column: 19, scope: !5343)
!5356 = !DILocation(line: 1969, column: 5, scope: !5344)
!5357 = !DILocation(line: 1979, column: 24, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5359, file: !3, line: 1979, column: 5)
!5359 = distinct !DILexicalBlock(scope: !5332, file: !3, line: 1979, column: 5)
!5360 = !DILocation(line: 1979, column: 19, scope: !5358)
!5361 = !DILocation(line: 0, scope: !5332)
!5362 = !DILocation(line: 1979, column: 5, scope: !5359)
!5363 = !DILocation(line: 1972, column: 13, scope: !5342)
!5364 = !DILocation(line: 1970, column: 15, scope: !5342)
!5365 = !DILocation(line: 1973, column: 9, scope: !5342)
!5366 = !DILocation(line: 1973, column: 17, scope: !5342)
!5367 = !DILocation(line: 1974, column: 9, scope: !5342)
!5368 = !DILocation(line: 1969, column: 28, scope: !5343)
!5369 = distinct !{!5369, !5356, !5370}
!5370 = !DILocation(line: 1975, column: 5, scope: !5344)
!5371 = !DILocation(line: 1979, column: 48, scope: !5358)
!5372 = !DILocation(line: 1979, column: 35, scope: !5358)
!5373 = !DILocation(line: 1979, column: 31, scope: !5358)
!5374 = distinct !{!5374, !5362, !5375}
!5375 = !DILocation(line: 1979, column: 58, scope: !5359)
!5376 = !DILocation(line: 1980, column: 11, scope: !5332)
!5377 = !DILocation(line: 1980, column: 5, scope: !5332)
!5378 = !DILocation(line: 1982, column: 13, scope: !5332)
!5379 = !DILocation(line: 1983, column: 13, scope: !5332)
!5380 = !DILocation(line: 1984, column: 38, scope: !5332)
!5381 = !DILocation(line: 1984, column: 50, scope: !5332)
!5382 = !DILocation(line: 1984, column: 14, scope: !5332)
!5383 = !DILocation(line: 1984, column: 8, scope: !5332)
!5384 = !DILocation(line: 1984, column: 12, scope: !5332)
!5385 = !DILocation(line: 1985, column: 5, scope: !5332)
!5386 = !DILocation(line: 1986, column: 5, scope: !5332)
!5387 = !DILocation(line: 1987, column: 1, scope: !5332)
!5388 = distinct !DISubprogram(name: "replaceClientCommandVector", scope: !3, file: !3, line: 1990, type: !5389, isLocal: false, isDefinition: true, scopeLine: 1990, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5391)
!5389 = !DISubroutineType(types: !5390)
!5390 = !{null, !6, !18, !150}
!5391 = !{!5392, !5393, !5394}
!5392 = !DILocalVariable(name: "c", arg: 1, scope: !5388, file: !3, line: 1990, type: !6)
!5393 = !DILocalVariable(name: "argc", arg: 2, scope: !5388, file: !3, line: 1990, type: !18)
!5394 = !DILocalVariable(name: "argv", arg: 3, scope: !5388, file: !3, line: 1990, type: !150)
!5395 = !DILocation(line: 1990, column: 41, scope: !5388)
!5396 = !DILocation(line: 1990, column: 48, scope: !5388)
!5397 = !DILocation(line: 1990, column: 61, scope: !5388)
!5398 = !DILocation(line: 779, column: 36, scope: !2745, inlinedAt: !5399)
!5399 = distinct !DILocation(line: 1991, column: 5, scope: !5388)
!5400 = !DILocation(line: 780, column: 9, scope: !2745, inlinedAt: !5399)
!5401 = !DILocation(line: 781, column: 24, scope: !2752, inlinedAt: !5399)
!5402 = !DILocation(line: 781, column: 19, scope: !2752, inlinedAt: !5399)
!5403 = !DILocation(line: 781, column: 5, scope: !2753, inlinedAt: !5399)
!5404 = !DILocation(line: 782, column: 25, scope: !2752, inlinedAt: !5399)
!5405 = !DILocation(line: 782, column: 22, scope: !2752, inlinedAt: !5399)
!5406 = !DILocation(line: 782, column: 9, scope: !2752, inlinedAt: !5399)
!5407 = !DILocation(line: 781, column: 31, scope: !2752, inlinedAt: !5399)
!5408 = !DILocation(line: 783, column: 13, scope: !2745, inlinedAt: !5399)
!5409 = !DILocation(line: 784, column: 8, scope: !2745, inlinedAt: !5399)
!5410 = !DILocation(line: 784, column: 12, scope: !2745, inlinedAt: !5399)
!5411 = !DILocation(line: 785, column: 1, scope: !2745, inlinedAt: !5399)
!5412 = !DILocation(line: 57, column: 10, scope: !3501, inlinedAt: !5413)
!5413 = distinct !DILocation(line: 1992, column: 5, scope: !5388)
!5414 = !DILocation(line: 237, column: 45, scope: !2842, inlinedAt: !5415)
!5415 = distinct !DILocation(line: 57, column: 2, scope: !3501, inlinedAt: !5413)
!5416 = !DILocation(line: 231, column: 48, scope: !2848, inlinedAt: !5417)
!5417 = distinct !DILocation(line: 239, column: 2, scope: !2842, inlinedAt: !5415)
!5418 = !DILocation(line: 233, column: 2, scope: !2854, inlinedAt: !5417)
!5419 = !DILocation(line: 233, column: 2, scope: !2855, inlinedAt: !5417)
!5420 = !DILocation(line: 233, column: 2, scope: !2858, inlinedAt: !5417)
!5421 = !DILocation(line: 1992, column: 15, scope: !5388)
!5422 = !DILocation(line: 231, column: 57, scope: !2848, inlinedAt: !5417)
!5423 = !DILocation(line: 237, column: 54, scope: !2842, inlinedAt: !5415)
!5424 = !DILocation(line: 56, column: 33, scope: !3501, inlinedAt: !5413)
!5425 = !DILocation(line: 234, column: 5, scope: !2848, inlinedAt: !5417)
!5426 = !DILocation(line: 234, column: 2, scope: !2848, inlinedAt: !5417)
!5427 = !DILocation(line: 235, column: 1, scope: !2848, inlinedAt: !5417)
!5428 = !DILocation(line: 240, column: 1, scope: !2842, inlinedAt: !5415)
!5429 = !DILocation(line: 58, column: 1, scope: !3501, inlinedAt: !5413)
!5430 = !DILocation(line: 1993, column: 13, scope: !5388)
!5431 = !DILocation(line: 1994, column: 13, scope: !5388)
!5432 = !DILocation(line: 1995, column: 38, scope: !5388)
!5433 = !DILocation(line: 1995, column: 50, scope: !5388)
!5434 = !DILocation(line: 1995, column: 14, scope: !5388)
!5435 = !DILocation(line: 1995, column: 12, scope: !5388)
!5436 = !DILocation(line: 1996, column: 5, scope: !5388)
!5437 = !DILocation(line: 1997, column: 1, scope: !5388)
!5438 = distinct !DISubprogram(name: "rewriteClientCommandArgument", scope: !3, file: !3, line: 2010, type: !5439, isLocal: false, isDefinition: true, scopeLine: 2010, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5441)
!5439 = !DISubroutineType(types: !5440)
!5440 = !{null, !6, !18, !126}
!5441 = !{!5442, !5443, !5444, !5445}
!5442 = !DILocalVariable(name: "c", arg: 1, scope: !5438, file: !3, line: 2010, type: !6)
!5443 = !DILocalVariable(name: "i", arg: 2, scope: !5438, file: !3, line: 2010, type: !18)
!5444 = !DILocalVariable(name: "newval", arg: 3, scope: !5438, file: !3, line: 2010, type: !126)
!5445 = !DILocalVariable(name: "oldval", scope: !5438, file: !3, line: 2011, type: !126)
!5446 = !DILocation(line: 2010, column: 43, scope: !5438)
!5447 = !DILocation(line: 2010, column: 50, scope: !5438)
!5448 = !DILocation(line: 2010, column: 59, scope: !5438)
!5449 = !DILocation(line: 2013, column: 17, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5438, file: !3, line: 2013, column: 9)
!5451 = !DILocation(line: 2013, column: 11, scope: !5450)
!5452 = !DILocation(line: 0, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 2013, column: 23)
!5454 = !DILocation(line: 2013, column: 9, scope: !5438)
!5455 = !DILocation(line: 2018, column: 14, scope: !5438)
!5456 = !DILocation(line: 2014, column: 31, scope: !5453)
!5457 = !DILocation(line: 2014, column: 52, scope: !5453)
!5458 = !DILocation(line: 2014, column: 50, scope: !5453)
!5459 = !DILocation(line: 2014, column: 49, scope: !5453)
!5460 = !DILocation(line: 2014, column: 19, scope: !5453)
!5461 = !DILocation(line: 2014, column: 17, scope: !5453)
!5462 = !DILocation(line: 2015, column: 17, scope: !5453)
!5463 = !DILocation(line: 2016, column: 12, scope: !5453)
!5464 = !DILocation(line: 2016, column: 9, scope: !5453)
!5465 = !DILocation(line: 2016, column: 20, scope: !5453)
!5466 = !DILocation(line: 2017, column: 5, scope: !5453)
!5467 = !DILocation(line: 2018, column: 17, scope: !5438)
!5468 = !DILocation(line: 2011, column: 11, scope: !5438)
!5469 = !DILocation(line: 2019, column: 16, scope: !5438)
!5470 = !DILocation(line: 2020, column: 5, scope: !5438)
!5471 = !DILocation(line: 2021, column: 9, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5438, file: !3, line: 2021, column: 9)
!5473 = !DILocation(line: 2021, column: 9, scope: !5438)
!5474 = !DILocation(line: 2021, column: 17, scope: !5472)
!5475 = !DILocation(line: 2024, column: 11, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5438, file: !3, line: 2024, column: 9)
!5477 = !DILocation(line: 2024, column: 9, scope: !5438)
!5478 = !DILocation(line: 2025, column: 45, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 2024, column: 17)
!5480 = !DILocation(line: 2025, column: 42, scope: !5479)
!5481 = !DILocation(line: 2025, column: 54, scope: !5479)
!5482 = !DILocation(line: 2025, column: 18, scope: !5479)
!5483 = !DILocation(line: 2025, column: 12, scope: !5479)
!5484 = !DILocation(line: 2025, column: 16, scope: !5479)
!5485 = !DILocation(line: 2026, column: 9, scope: !5479)
!5486 = !DILocation(line: 2028, column: 1, scope: !5438)
!5487 = distinct !DISubprogram(name: "getClientTypeName", scope: !3, file: !3, line: 2067, type: !5488, isLocal: false, isDefinition: true, scopeLine: 2067, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5490)
!5488 = !DISubroutineType(types: !5489)
!5489 = !{!139, !18}
!5490 = !{!5491}
!5491 = !DILocalVariable(name: "class", arg: 1, scope: !5487, file: !3, line: 2067, type: !18)
!5492 = !DILocation(line: 2067, column: 29, scope: !5487)
!5493 = !DILocation(line: 2068, column: 5, scope: !5487)
!5494 = !DILocation(line: 0, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 2068, column: 19)
!5496 = !DILocation(line: 2075, column: 1, scope: !5487)
!5497 = !DILocation(line: 2083, column: 43, scope: !1220)
!5498 = !DILocation(line: 2084, column: 9, scope: !1220)
!5499 = !DILocation(line: 2084, column: 19, scope: !1220)
!5500 = !DILocation(line: 2036, column: 56, scope: !1236, inlinedAt: !5501)
!5501 = distinct !DILocation(line: 2085, column: 30, scope: !1220)
!5502 = !DILocation(line: 2037, column: 19, scope: !1236, inlinedAt: !5501)
!5503 = !DILocation(line: 2038, column: 15, scope: !1236, inlinedAt: !5501)
!5504 = !DILocation(line: 2038, column: 45, scope: !1236, inlinedAt: !5501)
!5505 = !DILocation(line: 2038, column: 44, scope: !1236, inlinedAt: !5501)
!5506 = !DILocation(line: 2038, column: 27, scope: !1236, inlinedAt: !5501)
!5507 = !DILocation(line: 2038, column: 5, scope: !1236, inlinedAt: !5501)
!5508 = !DILocation(line: 2085, column: 19, scope: !1220)
!5509 = !DILocation(line: 2050, column: 27, scope: !1250, inlinedAt: !5510)
!5510 = distinct !DILocation(line: 2087, column: 13, scope: !1220)
!5511 = !DILocation(line: 2051, column: 12, scope: !1255, inlinedAt: !5510)
!5512 = !DILocation(line: 2051, column: 18, scope: !1255, inlinedAt: !5510)
!5513 = !DILocation(line: 2051, column: 9, scope: !1250, inlinedAt: !5510)
!5514 = !DILocation(line: 2052, column: 35, scope: !1258, inlinedAt: !5510)
!5515 = !DILocation(line: 2055, column: 5, scope: !1250, inlinedAt: !5510)
!5516 = !DILocation(line: 2056, column: 1, scope: !1250, inlinedAt: !5510)
!5517 = !DILocation(line: 2084, column: 29, scope: !1220)
!5518 = !DILocation(line: 2090, column: 9, scope: !1220)
!5519 = !DILocation(line: 2092, column: 42, scope: !1264)
!5520 = !DILocation(line: 2092, column: 59, scope: !1264)
!5521 = !DILocation(line: 2095, column: 42, scope: !1269)
!5522 = !DILocation(line: 2095, column: 59, scope: !1269)
!5523 = !DILocation(line: 0, scope: !1273)
!5524 = !DILocation(line: 2101, column: 9, scope: !1220)
!5525 = !DILocation(line: 2102, column: 16, scope: !1228)
!5526 = !DILocation(line: 2102, column: 45, scope: !1228)
!5527 = !DILocation(line: 0, scope: !1227)
!5528 = !DILocation(line: 2102, column: 13, scope: !1229)
!5529 = !DILocation(line: 2103, column: 45, scope: !1280)
!5530 = !DILocation(line: 2105, column: 9, scope: !1280)
!5531 = !DILocation(line: 2106, column: 46, scope: !1227)
!5532 = !DILocation(line: 2106, column: 20, scope: !1227)
!5533 = !DILocation(line: 2109, column: 50, scope: !1285)
!5534 = !DILocation(line: 2108, column: 25, scope: !1285)
!5535 = !DILocation(line: 2108, column: 17, scope: !1227)
!5536 = !DILocation(line: 2116, column: 41, scope: !1273)
!5537 = !DILocation(line: 0, scope: !1269)
!5538 = !DILocation(line: 2118, column: 17, scope: !1220)
!5539 = !DILocation(line: 2118, column: 5, scope: !1220)
!5540 = distinct !DISubprogram(name: "flushSlavesOutputBuffers", scope: !3, file: !3, line: 2145, type: !2662, isLocal: false, isDefinition: true, scopeLine: 2145, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5541)
!5541 = !{!5542, !5543, !5544, !5546, !5547}
!5542 = !DILocalVariable(name: "li", scope: !5540, file: !3, line: 2146, type: !3170)
!5543 = !DILocalVariable(name: "ln", scope: !5540, file: !3, line: 2147, type: !103)
!5544 = !DILocalVariable(name: "slave", scope: !5545, file: !3, line: 2151, type: !6)
!5545 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 2150, column: 33)
!5546 = !DILocalVariable(name: "events", scope: !5545, file: !3, line: 2152, type: !18)
!5547 = !DILocalVariable(name: "can_receive_writes", scope: !5545, file: !3, line: 2153, type: !18)
!5548 = !DILocation(line: 2146, column: 5, scope: !5540)
!5549 = !DILocation(line: 2149, column: 23, scope: !5540)
!5550 = !DILocation(line: 2146, column: 14, scope: !5540)
!5551 = !DILocation(line: 2149, column: 5, scope: !5540)
!5552 = !DILocation(line: 2150, column: 17, scope: !5540)
!5553 = !DILocation(line: 2147, column: 15, scope: !5540)
!5554 = !DILocation(line: 2150, column: 5, scope: !5540)
!5555 = !DILocation(line: 2151, column: 25, scope: !5545)
!5556 = !DILocation(line: 2151, column: 17, scope: !5545)
!5557 = !DILocation(line: 2152, column: 45, scope: !5545)
!5558 = !DILocation(line: 2152, column: 55, scope: !5545)
!5559 = !DILocation(line: 2152, column: 22, scope: !5545)
!5560 = !DILocation(line: 2152, column: 13, scope: !5545)
!5561 = !DILocation(line: 2153, column: 42, scope: !5545)
!5562 = !DILocation(line: 2153, column: 57, scope: !5545)
!5563 = !DILocation(line: 2154, column: 42, scope: !5545)
!5564 = !DILocation(line: 2154, column: 48, scope: !5545)
!5565 = !DILocation(line: 2170, column: 20, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 2170, column: 13)
!5567 = !DILocation(line: 2170, column: 30, scope: !5566)
!5568 = !DILocation(line: 2170, column: 52, scope: !5566)
!5569 = !DILocation(line: 2172, column: 21, scope: !5566)
!5570 = !DILocation(line: 2172, column: 14, scope: !5566)
!5571 = !DILocation(line: 2172, column: 44, scope: !5566)
!5572 = !DILocation(line: 664, column: 37, scope: !1067, inlinedAt: !5573)
!5573 = distinct !DILocation(line: 2173, column: 13, scope: !5566)
!5574 = !DILocation(line: 665, column: 15, scope: !1067, inlinedAt: !5573)
!5575 = !DILocation(line: 665, column: 12, scope: !1067, inlinedAt: !5573)
!5576 = !DILocation(line: 665, column: 22, scope: !1067, inlinedAt: !5573)
!5577 = !DILocation(line: 665, column: 5, scope: !1067, inlinedAt: !5573)
!5578 = !DILocation(line: 2170, column: 13, scope: !5545)
!5579 = !DILocation(line: 665, column: 25, scope: !1067, inlinedAt: !5573)
!5580 = !DILocation(line: 2175, column: 34, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 2174, column: 9)
!5582 = !DILocation(line: 2175, column: 13, scope: !5581)
!5583 = !DILocation(line: 2176, column: 9, scope: !5581)
!5584 = distinct !{!5584, !5554, !5585}
!5585 = !DILocation(line: 2177, column: 5, scope: !5540)
!5586 = !DILocation(line: 2178, column: 1, scope: !5540)
!5587 = distinct !DISubprogram(name: "processEventsWhileBlocked", scope: !3, file: !3, line: 2242, type: !3166, isLocal: false, isDefinition: true, scopeLine: 2242, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5588)
!5588 = !{!5589, !5590, !5591}
!5589 = !DILocalVariable(name: "iterations", scope: !5587, file: !3, line: 2243, type: !18)
!5590 = !DILocalVariable(name: "count", scope: !5587, file: !3, line: 2244, type: !18)
!5591 = !DILocalVariable(name: "events", scope: !5592, file: !3, line: 2246, type: !18)
!5592 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 2245, column: 26)
!5593 = !DILocation(line: 2243, column: 9, scope: !5587)
!5594 = !DILocation(line: 2244, column: 9, scope: !5587)
!5595 = !DILocation(line: 2245, column: 5, scope: !5587)
!5596 = !DILocation(line: 0, scope: !5587)
!5597 = !DILocation(line: 0, scope: !5592)
!5598 = !DILocation(line: 2245, column: 22, scope: !5587)
!5599 = !DILocation(line: 2246, column: 13, scope: !5592)
!5600 = !DILocation(line: 2247, column: 42, scope: !5592)
!5601 = !DILocation(line: 2247, column: 19, scope: !5592)
!5602 = !DILocation(line: 2248, column: 19, scope: !5592)
!5603 = !DILocation(line: 2248, column: 16, scope: !5592)
!5604 = !DILocation(line: 2249, column: 14, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5592, file: !3, line: 2249, column: 13)
!5606 = !DILocation(line: 2249, column: 13, scope: !5592)
!5607 = distinct !{!5607, !5595, !5608}
!5608 = !DILocation(line: 2251, column: 5, scope: !5587)
!5609 = !DILocation(line: 2252, column: 5, scope: !5587)
!5610 = !DILocation(line: 196, column: 2, scope: !313)
!5611 = !DILocation(line: 196, column: 10, scope: !313)
!5612 = !DILocation(line: 197, column: 2, scope: !313)
!5613 = !DILocation(line: 198, column: 2, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5615, file: !314, line: 198, column: 2)
!5615 = distinct !DILexicalBlock(scope: !313, file: !314, line: 198, column: 2)
!5616 = !DILocation(line: 199, column: 2, scope: !313)
!5617 = !DILocation(line: 200, column: 1, scope: !313)
