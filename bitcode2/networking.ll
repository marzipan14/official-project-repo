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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  br i1 %5, label %7, label %6, !dbg !371

; <label>:6:                                      ; preds = %1
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 52) #8, !dbg !371
  tail call void @_exit(i32 1) #9, !dbg !371
  unreachable

; <label>:7:                                      ; preds = %1
  %8 = lshr i32 %3, 4, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  br i1 %4, label %5, label %7, !dbg !544, !prof !545

; <label>:5:                                      ; preds = %1
  %6 = tail call i32* @__errno() #8, !dbg !546
  store i32 12, i32* %6, align 4, !dbg !548, !tbaa !549
  br label %11, !dbg !550

; <label>:7:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  %8 = bitcast %struct.uk_alloc* %3 to i8* (%struct.uk_alloc*, i64)**, !dbg !560
  %9 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %8, align 8, !dbg !560, !tbaa !476
  %10 = tail call i8* %9(%struct.uk_alloc* nonnull %3, i64 16920) #8, !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  br label %11, !dbg !563

; <label>:11:                                     ; preds = %5, %7
  %12 = phi i8* [ null, %5 ], [ %10, %7 ], !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  %13 = bitcast i8* %12 to %struct.client*, !dbg !567
  %14 = icmp ne i32 %0, -1, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  br i1 %14, label %15, label %28, !dbg !571

; <label>:15:                                     ; preds = %11
  %16 = tail call i32 @anetNonBlock(i8* null, i32 %0) #8, !dbg !572
  %17 = tail call i32 @anetEnableTcpNoDelay(i8* null, i32 %0) #8, !dbg !574
  %18 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 102), align 8, !dbg !575, !tbaa !577
  %19 = icmp eq i32 %18, 0, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  br i1 %19, label %22, label %20, !dbg !579

; <label>:20:                                     ; preds = %15
  %21 = tail call i32 @anetKeepAlive(i8* null, i32 %0, i32 %18) #8, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  br label %22, !dbg !580

; <label>:22:                                     ; preds = %15, %20
  %23 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !581, !tbaa !583
  %24 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* %23, i32 %0, i32 1, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @readQueryFromClient, i8* %12) #8, !dbg !584
  %25 = icmp eq i32 %24, -1, !dbg !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  br i1 %25, label %26, label %28, !dbg !586

; <label>:26:                                     ; preds = %22
  %27 = tail call i32 @close(i32 %0) #8, !dbg !587
  tail call void @zfree(i8* %12) #8, !dbg !589
  br label %135, !dbg !590

; <label>:28:                                     ; preds = %22, %11
  %29 = tail call i32 @selectDb(%struct.client* %13, i32 0) #8, !dbg !591
  %30 = atomicrmw add i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 49), i64 1 monotonic, !dbg !592
  %31 = bitcast i8* %12 to i64*, !dbg !595
  store i64 %30, i64* %31, align 8, !dbg !596, !tbaa !461
  %32 = getelementptr inbounds i8, i8* %12, i64 8, !dbg !597
  %33 = bitcast i8* %32 to i32*, !dbg !597
  store i32 %0, i32* %33, align 8, !dbg !598, !tbaa !599
  %34 = getelementptr inbounds i8, i8* %12, i64 24, !dbg !600
  %35 = bitcast i8* %34 to %struct.redisObject**, !dbg !600
  store %struct.redisObject* null, %struct.redisObject** %35, align 8, !dbg !601, !tbaa !602
  %36 = getelementptr inbounds i8, i8* %12, i64 528, !dbg !603
  %37 = bitcast i8* %36 to i32*, !dbg !603
  store i32 0, i32* %37, align 8, !dbg !604, !tbaa !605
  %38 = getelementptr inbounds i8, i8* %12, i64 40, !dbg !606
  %39 = bitcast i8* %38 to i64*, !dbg !606
  store i64 0, i64* %39, align 8, !dbg !607, !tbaa !608
  %40 = tail call i8* @sdsempty() #8, !dbg !609
  %41 = getelementptr inbounds i8, i8* %12, i64 32, !dbg !610
  %42 = bitcast i8* %41 to i8**, !dbg !610
  store i8* %40, i8** %42, align 8, !dbg !611, !tbaa !612
  %43 = tail call i8* @sdsempty() #8, !dbg !613
  %44 = getelementptr inbounds i8, i8* %12, i64 48, !dbg !614
  %45 = bitcast i8* %44 to i8**, !dbg !614
  store i8* %43, i8** %45, align 8, !dbg !615, !tbaa !616
  %46 = getelementptr inbounds i8, i8* %12, i64 56, !dbg !617
  %47 = bitcast i8* %46 to i64*, !dbg !617
  store i64 0, i64* %47, align 8, !dbg !618, !tbaa !619
  %48 = getelementptr inbounds i8, i8* %12, i64 96, !dbg !620
  %49 = bitcast i8* %48 to i32*, !dbg !620
  store i32 0, i32* %49, align 8, !dbg !621, !tbaa !622
  %50 = getelementptr inbounds i8, i8* %12, i64 64, !dbg !623
  %51 = bitcast i8* %50 to i32*, !dbg !623
  store i32 0, i32* %51, align 8, !dbg !624, !tbaa !625
  %52 = getelementptr inbounds i8, i8* %12, i64 72, !dbg !626
  %53 = bitcast i8* %52 to %struct.redisObject***, !dbg !626
  store %struct.redisObject** null, %struct.redisObject*** %53, align 8, !dbg !627, !tbaa !628
  %54 = getelementptr inbounds i8, i8* %12, i64 80, !dbg !629
  %55 = bitcast i8* %54 to <2 x %struct.redisCommand*>*, !dbg !630
  store <2 x %struct.redisCommand*> zeroinitializer, <2 x %struct.redisCommand*>* %55, align 8, !dbg !630, !tbaa !476
  %56 = getelementptr inbounds i8, i8* %12, i64 100, !dbg !631
  %57 = bitcast i8* %56 to i32*, !dbg !631
  store i32 0, i32* %57, align 4, !dbg !632, !tbaa !633
  %58 = getelementptr inbounds i8, i8* %12, i64 104, !dbg !634
  %59 = bitcast i8* %58 to i64*, !dbg !634
  store i64 -1, i64* %59, align 8, !dbg !635, !tbaa !636
  %60 = getelementptr inbounds i8, i8* %12, i64 128, !dbg !637
  %61 = bitcast i8* %60 to i64*, !dbg !637
  store i64 0, i64* %61, align 8, !dbg !638, !tbaa !639
  %62 = getelementptr inbounds i8, i8* %12, i64 160, !dbg !640
  %63 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !641, !tbaa !642
  %64 = getelementptr inbounds i8, i8* %12, i64 144, !dbg !643
  %65 = bitcast i8* %64 to i64*, !dbg !643
  store i64 %63, i64* %65, align 8, !dbg !644, !tbaa !645
  %66 = getelementptr inbounds i8, i8* %12, i64 136, !dbg !646
  %67 = bitcast i8* %66 to i64*, !dbg !646
  store i64 %63, i64* %67, align 8, !dbg !647, !tbaa !648
  %68 = bitcast i8* %62 to <4 x i32>*, !dbg !649
  store <4 x i32> zeroinitializer, <4 x i32>* %68, align 8, !dbg !649, !tbaa !549
  %69 = getelementptr inbounds i8, i8* %12, i64 208, !dbg !650
  %70 = bitcast i8* %69 to <2 x i64>*, !dbg !651
  store <2 x i64> zeroinitializer, <2 x i64>* %70, align 8, !dbg !651, !tbaa !652
  %71 = getelementptr inbounds i8, i8* %12, i64 224, !dbg !653
  %72 = bitcast i8* %71 to <2 x i64>*, !dbg !654
  store <2 x i64> zeroinitializer, <2 x i64>* %72, align 8, !dbg !654, !tbaa !652
  %73 = getelementptr inbounds i8, i8* %12, i64 292, !dbg !655
  %74 = bitcast i8* %73 to i32*, !dbg !655
  store i32 0, i32* %74, align 4, !dbg !656, !tbaa !657
  %75 = getelementptr inbounds i8, i8* %12, i64 296, !dbg !658
  store i8 0, i8* %75, align 8, !dbg !659, !tbaa !660
  %76 = getelementptr inbounds i8, i8* %12, i64 344, !dbg !661
  %77 = bitcast i8* %76 to i32*, !dbg !661
  store i32 0, i32* %77, align 8, !dbg !662, !tbaa !663
  %78 = tail call %struct.list* @listCreate() #8, !dbg !664
  %79 = getelementptr inbounds i8, i8* %12, i64 112, !dbg !665
  %80 = bitcast i8* %79 to %struct.list**, !dbg !665
  store %struct.list* %78, %struct.list** %80, align 8, !dbg !666, !tbaa !667
  %81 = getelementptr inbounds i8, i8* %12, i64 120, !dbg !668
  %82 = bitcast i8* %81 to i64*, !dbg !668
  store i64 0, i64* %82, align 8, !dbg !669, !tbaa !670
  %83 = getelementptr inbounds i8, i8* %12, i64 152, !dbg !671
  %84 = bitcast i8* %83 to i64*, !dbg !671
  store i64 0, i64* %84, align 8, !dbg !672, !tbaa !673
  %85 = getelementptr inbounds %struct.list, %struct.list* %78, i64 0, i32 3, !dbg !674
  store void (i8*)* @freeClientReplyValue, void (i8*)** %85, align 8, !dbg !674, !tbaa !675
  %86 = getelementptr inbounds %struct.list, %struct.list* %78, i64 0, i32 2, !dbg !676
  store i8* (i8*)* @dupClientReplyValue, i8* (i8*)** %86, align 8, !dbg !676, !tbaa !677
  %87 = getelementptr inbounds i8, i8* %12, i64 384, !dbg !678
  %88 = bitcast i8* %87 to i32*, !dbg !678
  store i32 0, i32* %88, align 8, !dbg !679, !tbaa !680
  %89 = getelementptr inbounds i8, i8* %12, i64 392, !dbg !681
  %90 = bitcast i8* %89 to i64*, !dbg !682
  store i64 0, i64* %90, align 8, !dbg !683, !tbaa !684
  %91 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @objectKeyHeapPointerValueDictType, i8* null) #8, !dbg !685
  %92 = getelementptr inbounds i8, i8* %12, i64 400, !dbg !686
  %93 = bitcast i8* %92 to %struct.dict**, !dbg !686
  store %struct.dict* %91, %struct.dict** %93, align 8, !dbg !687, !tbaa !688
  %94 = getelementptr inbounds i8, i8* %12, i64 408, !dbg !689
  %95 = bitcast i8* %94 to %struct.redisObject**, !dbg !689
  store %struct.redisObject* null, %struct.redisObject** %95, align 8, !dbg !690, !tbaa !691
  %96 = getelementptr inbounds i8, i8* %12, i64 424, !dbg !692
  %97 = bitcast i8* %96 to <2 x %struct.redisObject*>*, !dbg !693
  store <2 x %struct.redisObject*> zeroinitializer, <2 x %struct.redisObject*>* %97, align 8, !dbg !693, !tbaa !476
  %98 = getelementptr inbounds i8, i8* %12, i64 456, !dbg !694
  %99 = bitcast i8* %98 to i32*, !dbg !694
  store i32 0, i32* %99, align 8, !dbg !695, !tbaa !696
  %100 = getelementptr inbounds i8, i8* %12, i64 460, !dbg !697
  %101 = bitcast i8* %100 to i32*, !dbg !697
  store i32 0, i32* %101, align 4, !dbg !698, !tbaa !699
  %102 = getelementptr inbounds i8, i8* %12, i64 464, !dbg !700
  %103 = bitcast i8* %102 to i64*, !dbg !700
  store i64 0, i64* %103, align 8, !dbg !701, !tbaa !702
  %104 = getelementptr inbounds i8, i8* %12, i64 480, !dbg !703
  %105 = bitcast i8* %104 to i64*, !dbg !703
  store i64 0, i64* %105, align 8, !dbg !704, !tbaa !705
  %106 = tail call %struct.list* @listCreate() #8, !dbg !706
  %107 = getelementptr inbounds i8, i8* %12, i64 488, !dbg !707
  %108 = bitcast i8* %107 to %struct.list**, !dbg !707
  store %struct.list* %106, %struct.list** %108, align 8, !dbg !708, !tbaa !709
  %109 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @objectKeyPointerValueDictType, i8* null) #8, !dbg !710
  %110 = getelementptr inbounds i8, i8* %12, i64 496, !dbg !711
  %111 = bitcast i8* %110 to %struct.dict**, !dbg !711
  store %struct.dict* %109, %struct.dict** %111, align 8, !dbg !712, !tbaa !713
  %112 = tail call %struct.list* @listCreate() #8, !dbg !714
  %113 = getelementptr inbounds i8, i8* %12, i64 504, !dbg !715
  %114 = bitcast i8* %113 to %struct.list**, !dbg !715
  store %struct.list* %112, %struct.list** %114, align 8, !dbg !716, !tbaa !717
  %115 = getelementptr inbounds i8, i8* %12, i64 512, !dbg !718
  %116 = bitcast i8* %115 to i8**, !dbg !718
  store i8* null, i8** %116, align 8, !dbg !719, !tbaa !720
  %117 = getelementptr inbounds i8, i8* %12, i64 520, !dbg !721
  %118 = bitcast i8* %117 to %struct.listNode**, !dbg !721
  store %struct.listNode* null, %struct.listNode** %118, align 8, !dbg !722, !tbaa !455
  %119 = getelementptr inbounds %struct.list, %struct.list* %112, i64 0, i32 3, !dbg !723
  store void (i8*)* @decrRefCountVoid, void (i8*)** %119, align 8, !dbg !723, !tbaa !675
  %120 = getelementptr inbounds %struct.list, %struct.list* %112, i64 0, i32 4, !dbg !724
  store i32 (i8*, i8*)* @listMatchObjects, i32 (i8*, i8*)** %120, align 8, !dbg !724, !tbaa !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  br i1 %14, label %121, label %134, !dbg !726

; <label>:121:                                    ; preds = %28
  %122 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !730, !tbaa !441
  %123 = tail call %struct.list* @listAddNodeTail(%struct.list* %122, i8* nonnull %12) #8, !dbg !731
  %124 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !732, !tbaa !441
  %125 = getelementptr inbounds %struct.list, %struct.list* %124, i64 0, i32 1, !dbg !732
  %126 = bitcast %struct.listNode** %125 to i64*, !dbg !732
  %127 = load i64, i64* %126, align 8, !dbg !732, !tbaa !451
  %128 = bitcast i8* %117 to i64*, !dbg !733
  store i64 %127, i64* %128, align 8, !dbg !733, !tbaa !455
  %129 = bitcast i64* %2 to i8*, !dbg !734
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %129) #5, !dbg !734
  %130 = load i64, i64* %31, align 8, !dbg !735, !tbaa !461
  %131 = tail call i64 @intrev64(i64 %130) #8, !dbg !735
  store i64 %131, i64* %2, align 8, !dbg !736, !tbaa !410
  %132 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 44), align 8, !dbg !737, !tbaa !464
  %133 = call i32 @raxInsert(%struct.rax* %132, i8* nonnull %129, i64 8, i8* nonnull %12, i8** null) #8, !dbg !738
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %129) #5, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !740
  br label %134, !dbg !740

; <label>:134:                                    ; preds = %121, %28
  call void @initClientMultiState(%struct.client* nonnull %13) #8, !dbg !741
  br label %135

; <label>:135:                                    ; preds = %134, %26
  %136 = phi %struct.client* [ null, %26 ], [ %13, %134 ], !dbg !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  ret %struct.client* %136, !dbg !742
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
define dso_local void @readQueryFromClient(%struct.aeEventLoop* nocapture readnone, i32, i8*, i32) #0 !dbg !743 {
  %5 = bitcast i8* %2 to %struct.client*, !dbg !826
  %6 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !829
  %7 = bitcast i8* %6 to i32*, !dbg !829
  %8 = load i32, i32* %7, align 8, !dbg !829, !tbaa !622
  %9 = icmp eq i32 %8, 2, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  br i1 %9, label %10, label %60, !dbg !831

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds i8, i8* %2, i64 100, !dbg !832
  %12 = bitcast i8* %11 to i32*, !dbg !832
  %13 = load i32, i32* %12, align 4, !dbg !832, !tbaa !633
  %14 = icmp eq i32 %13, 0, !dbg !833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !834
  br i1 %14, label %60, label %15, !dbg !834

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds i8, i8* %2, i64 104, !dbg !835
  %17 = bitcast i8* %16 to i64*, !dbg !835
  %18 = load i64, i64* %17, align 8, !dbg !835, !tbaa !636
  %19 = icmp eq i64 %18, -1, !dbg !836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !837
  br i1 %19, label %60, label %20, !dbg !837

; <label>:20:                                     ; preds = %15
  %21 = icmp sgt i64 %18, 32767, !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  br i1 %21, label %22, label %60, !dbg !839

; <label>:22:                                     ; preds = %20
  %23 = add nsw i64 %18, 2, !dbg !840
  %24 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !841
  %25 = bitcast i8* %24 to i8**, !dbg !841
  %26 = load i8*, i8** %25, align 8, !dbg !841, !tbaa !612
  %27 = getelementptr inbounds i8, i8* %26, i64 -1, !dbg !851
  %28 = load i8, i8* %27, align 1, !dbg !851, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !853
  %29 = trunc i8 %28 to i3, !dbg !853
  switch i3 %29, label %51 [
    i3 0, label %30
    i3 1, label %33
    i3 2, label %37
    i3 3, label %42
    i3 -4, label %47
  ], !dbg !853

; <label>:30:                                     ; preds = %22
  %31 = lshr i8 %28, 3, !dbg !854
  %32 = zext i8 %31 to i64, !dbg !854
  br label %51, !dbg !856

; <label>:33:                                     ; preds = %22
  %34 = getelementptr inbounds i8, i8* %26, i64 -3, !dbg !857
  %35 = load i8, i8* %34, align 1, !dbg !858, !tbaa !660
  %36 = zext i8 %35 to i64, !dbg !857
  br label %51, !dbg !859

; <label>:37:                                     ; preds = %22
  %38 = getelementptr inbounds i8, i8* %26, i64 -5, !dbg !860
  %39 = bitcast i8* %38 to i16*, !dbg !861
  %40 = load i16, i16* %39, align 1, !dbg !861, !tbaa !862
  %41 = zext i16 %40 to i64, !dbg !860
  br label %51, !dbg !864

; <label>:42:                                     ; preds = %22
  %43 = getelementptr inbounds i8, i8* %26, i64 -9, !dbg !865
  %44 = bitcast i8* %43 to i32*, !dbg !866
  %45 = load i32, i32* %44, align 1, !dbg !866, !tbaa !549
  %46 = zext i32 %45 to i64, !dbg !865
  br label %51, !dbg !867

; <label>:47:                                     ; preds = %22
  %48 = getelementptr inbounds i8, i8* %26, i64 -17, !dbg !868
  %49 = bitcast i8* %48 to i64*, !dbg !869
  %50 = load i64, i64* %49, align 1, !dbg !869, !tbaa !410
  br label %51, !dbg !870

; <label>:51:                                     ; preds = %22, %30, %33, %37, %42, %47
  %52 = phi i64 [ %50, %47 ], [ %46, %42 ], [ %41, %37 ], [ %36, %33 ], [ %32, %30 ], [ 0, %22 ], !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  %53 = sub i64 %23, %52, !dbg !874
  %54 = icmp sgt i64 %53, 0, !dbg !876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !878
  br i1 %54, label %55, label %58, !dbg !878

; <label>:55:                                     ; preds = %51
  %56 = icmp slt i64 %53, 16384, !dbg !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !880
  br i1 %56, label %57, label %58, !dbg !880

; <label>:57:                                     ; preds = %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  br label %58, !dbg !881

; <label>:58:                                     ; preds = %57, %55, %51
  %59 = phi i64 [ %53, %57 ], [ 16384, %55 ], [ 16384, %51 ], !dbg !882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  br label %60, !dbg !883

; <label>:60:                                     ; preds = %15, %10, %58, %20, %4
  %61 = phi i64 [ %59, %58 ], [ 16384, %20 ], [ 16384, %15 ], [ 16384, %10 ], [ 16384, %4 ], !dbg !882
  %62 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !884
  %63 = bitcast i8* %62 to i8**, !dbg !884
  %64 = load i8*, i8** %63, align 8, !dbg !884, !tbaa !612
  %65 = getelementptr inbounds i8, i8* %64, i64 -1, !dbg !887
  %66 = load i8, i8* %65, align 1, !dbg !887, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !889
  %67 = trunc i8 %66 to i3, !dbg !889
  switch i3 %67, label %89 [
    i3 0, label %68
    i3 1, label %71
    i3 2, label %75
    i3 3, label %80
    i3 -4, label %85
  ], !dbg !889

; <label>:68:                                     ; preds = %60
  %69 = lshr i8 %66, 3, !dbg !890
  %70 = zext i8 %69 to i64, !dbg !890
  br label %90, !dbg !891

; <label>:71:                                     ; preds = %60
  %72 = getelementptr inbounds i8, i8* %64, i64 -3, !dbg !892
  %73 = load i8, i8* %72, align 1, !dbg !893, !tbaa !660
  %74 = zext i8 %73 to i64, !dbg !892
  br label %90, !dbg !894

; <label>:75:                                     ; preds = %60
  %76 = getelementptr inbounds i8, i8* %64, i64 -5, !dbg !895
  %77 = bitcast i8* %76 to i16*, !dbg !896
  %78 = load i16, i16* %77, align 1, !dbg !896, !tbaa !862
  %79 = zext i16 %78 to i64, !dbg !895
  br label %90, !dbg !897

; <label>:80:                                     ; preds = %60
  %81 = getelementptr inbounds i8, i8* %64, i64 -9, !dbg !898
  %82 = bitcast i8* %81 to i32*, !dbg !899
  %83 = load i32, i32* %82, align 1, !dbg !899, !tbaa !549
  %84 = zext i32 %83 to i64, !dbg !898
  br label %90, !dbg !900

; <label>:85:                                     ; preds = %60
  %86 = getelementptr inbounds i8, i8* %64, i64 -17, !dbg !901
  %87 = bitcast i8* %86 to i64*, !dbg !902
  %88 = load i64, i64* %87, align 1, !dbg !902, !tbaa !410
  br label %90, !dbg !903

; <label>:89:                                     ; preds = %60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  br label %97, !dbg !907

; <label>:90:                                     ; preds = %68, %71, %75, %80, %85
  %91 = phi i64 [ %88, %85 ], [ %84, %80 ], [ %79, %75 ], [ %74, %71 ], [ %70, %68 ], !dbg !908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !905
  %92 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !909
  %93 = bitcast i8* %92 to i64*, !dbg !909
  %94 = load i64, i64* %93, align 8, !dbg !909, !tbaa !619
  %95 = icmp ult i64 %94, %91, !dbg !911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !907
  br i1 %95, label %96, label %99, !dbg !907

; <label>:96:                                     ; preds = %90
  store i64 %91, i64* %93, align 8, !dbg !912, !tbaa !619
  br label %97, !dbg !913

; <label>:97:                                     ; preds = %96, %89
  %98 = phi i64 [ %91, %96 ], [ 0, %89 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !914
  br label %99, !dbg !915

; <label>:99:                                     ; preds = %97, %90
  %100 = phi i64 [ %91, %90 ], [ %98, %97 ]
  %101 = shl i64 %61, 32, !dbg !915
  %102 = ashr exact i64 %101, 32, !dbg !915
  %103 = tail call i8* @sdsMakeRoomFor(i8* %64, i64 %102) #8, !dbg !916
  store i8* %103, i8** %63, align 8, !dbg !917, !tbaa !612
  %104 = getelementptr inbounds i8, i8* %103, i64 %100, !dbg !918
  %105 = tail call i64 @read(i32 %1, i8* %104, i64 %102) #8, !dbg !919
  %106 = trunc i64 %105 to i32, !dbg !919
  %107 = icmp eq i32 %106, -1, !dbg !921
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  br i1 %107, label %108, label %116, !dbg !923

; <label>:108:                                    ; preds = %99
  %109 = tail call i32* @__errno() #8, !dbg !924
  %110 = load i32, i32* %109, align 4, !dbg !924, !tbaa !549
  %111 = icmp eq i32 %110, 11, !dbg !927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !928
  br i1 %111, label %206, label %112, !dbg !928

; <label>:112:                                    ; preds = %108
  %113 = tail call i32* @__errno() #8, !dbg !929
  %114 = load i32, i32* %113, align 4, !dbg !929, !tbaa !549
  %115 = tail call i8* @strerror(i32 %114) #8, !dbg !931
  tail call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i64 0, i64 0), i8* %115) #8, !dbg !932
  tail call void @freeClient(%struct.client* nonnull %5) #10, !dbg !933
  br label %206, !dbg !934

; <label>:116:                                    ; preds = %99
  %117 = icmp eq i32 %106, 0, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !937
  br i1 %117, label %118, label %119, !dbg !937

; <label>:118:                                    ; preds = %116
  tail call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i64 0, i64 0)) #8, !dbg !938
  tail call void @freeClient(%struct.client* nonnull %5) #10, !dbg !940
  br label %206, !dbg !941

; <label>:119:                                    ; preds = %116
  %120 = getelementptr inbounds i8, i8* %2, i64 160, !dbg !942
  %121 = bitcast i8* %120 to i32*, !dbg !942
  %122 = load i32, i32* %121, align 8, !dbg !942, !tbaa !944
  %123 = and i32 %122, 2, !dbg !945
  %124 = icmp eq i32 %123, 0, !dbg !945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  br i1 %124, label %125, label %128, !dbg !946

; <label>:125:                                    ; preds = %119
  %126 = shl i64 %105, 32, !dbg !947
  %127 = ashr exact i64 %126, 32, !dbg !947
  br label %137, !dbg !946

; <label>:128:                                    ; preds = %119
  %129 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !948
  %130 = bitcast i8* %129 to i8**, !dbg !948
  %131 = load i8*, i8** %130, align 8, !dbg !948, !tbaa !616
  %132 = load i8*, i8** %63, align 8, !dbg !950, !tbaa !612
  %133 = getelementptr inbounds i8, i8* %132, i64 %100, !dbg !951
  %134 = shl i64 %105, 32, !dbg !952
  %135 = ashr exact i64 %134, 32, !dbg !952
  %136 = tail call i8* @sdscatlen(i8* %131, i8* %133, i64 %135) #8, !dbg !953
  store i8* %136, i8** %130, align 8, !dbg !954, !tbaa !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  br label %137, !dbg !955

; <label>:137:                                    ; preds = %125, %128
  %138 = phi i64 [ %127, %125 ], [ %135, %128 ], !dbg !947
  %139 = load i8*, i8** %63, align 8, !dbg !956, !tbaa !612
  tail call void @sdsIncrLen(i8* %139, i64 %138) #8, !dbg !957
  %140 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !958, !tbaa !642
  %141 = getelementptr inbounds i8, i8* %2, i64 144, !dbg !959
  %142 = bitcast i8* %141 to i64*, !dbg !959
  store i64 %140, i64* %142, align 8, !dbg !960, !tbaa !645
  %143 = load i32, i32* %121, align 8, !dbg !961, !tbaa !944
  %144 = and i32 %143, 2, !dbg !963
  %145 = icmp eq i32 %144, 0, !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !964
  br i1 %145, label %151, label %146, !dbg !964

; <label>:146:                                    ; preds = %137
  %147 = getelementptr inbounds i8, i8* %2, i64 208, !dbg !965
  %148 = bitcast i8* %147 to i64*, !dbg !965
  %149 = load i64, i64* %148, align 8, !dbg !966, !tbaa !967
  %150 = add nsw i64 %149, %138, !dbg !966
  store i64 %150, i64* %148, align 8, !dbg !966, !tbaa !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  br label %151, !dbg !968

; <label>:151:                                    ; preds = %137, %146
  %152 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 95), align 8, !dbg !969, !tbaa !970
  %153 = add nsw i64 %152, %138, !dbg !969
  store i64 %153, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 95), align 8, !dbg !969, !tbaa !970
  %154 = load i8*, i8** %63, align 8, !dbg !971, !tbaa !612
  %155 = getelementptr inbounds i8, i8* %154, i64 -1, !dbg !974
  %156 = load i8, i8* %155, align 1, !dbg !974, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  %157 = trunc i8 %156 to i3, !dbg !976
  switch i3 %157, label %179 [
    i3 0, label %158
    i3 1, label %161
    i3 2, label %165
    i3 3, label %170
    i3 -4, label %175
  ], !dbg !976

; <label>:158:                                    ; preds = %151
  %159 = lshr i8 %156, 3, !dbg !977
  %160 = zext i8 %159 to i64, !dbg !977
  br label %180, !dbg !978

; <label>:161:                                    ; preds = %151
  %162 = getelementptr inbounds i8, i8* %154, i64 -3, !dbg !979
  %163 = load i8, i8* %162, align 1, !dbg !980, !tbaa !660
  %164 = zext i8 %163 to i64, !dbg !979
  br label %180, !dbg !981

; <label>:165:                                    ; preds = %151
  %166 = getelementptr inbounds i8, i8* %154, i64 -5, !dbg !982
  %167 = bitcast i8* %166 to i16*, !dbg !983
  %168 = load i16, i16* %167, align 1, !dbg !983, !tbaa !862
  %169 = zext i16 %168 to i64, !dbg !982
  br label %180, !dbg !984

; <label>:170:                                    ; preds = %151
  %171 = getelementptr inbounds i8, i8* %154, i64 -9, !dbg !985
  %172 = bitcast i8* %171 to i32*, !dbg !986
  %173 = load i32, i32* %172, align 1, !dbg !986, !tbaa !549
  %174 = zext i32 %173 to i64, !dbg !985
  br label %180, !dbg !987

; <label>:175:                                    ; preds = %151
  %176 = getelementptr inbounds i8, i8* %154, i64 -17, !dbg !988
  %177 = bitcast i8* %176 to i64*, !dbg !989
  %178 = load i64, i64* %177, align 1, !dbg !989, !tbaa !410
  br label %180, !dbg !990

; <label>:179:                                    ; preds = %151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  br label %190, !dbg !993

; <label>:180:                                    ; preds = %158, %161, %165, %170, %175
  %181 = phi i64 [ %178, %175 ], [ %174, %170 ], [ %169, %165 ], [ %164, %161 ], [ %160, %158 ], !dbg !994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !995
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !992
  %182 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 111), align 8, !dbg !996, !tbaa !997
  %183 = icmp ugt i64 %181, %182, !dbg !998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  br i1 %183, label %184, label %190, !dbg !993

; <label>:184:                                    ; preds = %180
  %185 = tail call i8* @sdsempty() #8, !dbg !999
  %186 = tail call i8* @catClientInfoString(i8* %185, %struct.client* nonnull %5) #10, !dbg !1000
  %187 = tail call i8* @sdsempty() #8, !dbg !1002
  %188 = load i8*, i8** %63, align 8, !dbg !1004, !tbaa !612
  %189 = tail call i8* @sdscatrepr(i8* %187, i8* %188, i64 64) #8, !dbg !1005
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.46, i64 0, i64 0), i8* %186, i8* %189) #8, !dbg !1006
  tail call void @sdsfree(i8* %186) #8, !dbg !1007
  tail call void @sdsfree(i8* %189) #8, !dbg !1008
  tail call void @freeClient(%struct.client* nonnull %5) #10, !dbg !1009
  br label %206

; <label>:190:                                    ; preds = %179, %180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  br i1 %145, label %191, label %192, !dbg !1019

; <label>:191:                                    ; preds = %190
  tail call void @processInputBuffer(%struct.client* nonnull %5) #8, !dbg !1020
  br label %205, !dbg !1022

; <label>:192:                                    ; preds = %190
  %193 = getelementptr inbounds i8, i8* %2, i64 216, !dbg !1023
  %194 = bitcast i8* %193 to i64*, !dbg !1023
  %195 = load i64, i64* %194, align 8, !dbg !1023, !tbaa !1024
  tail call void @processInputBuffer(%struct.client* nonnull %5) #8, !dbg !1026
  %196 = load i64, i64* %194, align 8, !dbg !1027, !tbaa !1024
  %197 = sub i64 %196, %195, !dbg !1028
  %198 = icmp eq i64 %197, 0, !dbg !1030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %198, label %205, label %199, !dbg !1032

; <label>:199:                                    ; preds = %192
  %200 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1033, !tbaa !1035
  %201 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !1036
  %202 = bitcast i8* %201 to i8**, !dbg !1036
  %203 = load i8*, i8** %202, align 8, !dbg !1036, !tbaa !616
  tail call void @replicationFeedSlavesFromMasterStream(%struct.list* %200, i8* %203, i64 %197) #8, !dbg !1037
  %204 = load i8*, i8** %202, align 8, !dbg !1038, !tbaa !616
  tail call void @sdsrange(i8* %204, i64 %197, i64 -1) #8, !dbg !1039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1040
  br label %205, !dbg !1040

; <label>:205:                                    ; preds = %192, %199, %191
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1041
  br label %206, !dbg !1042

; <label>:206:                                    ; preds = %108, %205, %184, %118, %112
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1042
  ret void, !dbg !1042
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
define dso_local void @clientInstallWriteHandler(%struct.client*) local_unnamed_addr #0 !dbg !1043 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1047
  %3 = load i32, i32* %2, align 8, !dbg !1047, !tbaa !944
  %4 = and i32 %3, 2097152, !dbg !1049
  %5 = icmp eq i32 %4, 0, !dbg !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1050
  br i1 %5, label %6, label %21, !dbg !1050

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1051
  %8 = load i32, i32* %7, align 8, !dbg !1051, !tbaa !1052
  %9 = icmp eq i32 %8, 0, !dbg !1053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  br i1 %9, label %16, label %10, !dbg !1054

; <label>:10:                                     ; preds = %6
  %11 = icmp eq i32 %8, 9, !dbg !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1056
  br i1 %11, label %12, label %21, !dbg !1056

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1057
  %14 = load i32, i32* %13, align 4, !dbg !1057, !tbaa !1058
  %15 = icmp eq i32 %14, 0, !dbg !1059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1060
  br i1 %15, label %16, label %21, !dbg !1060

; <label>:16:                                     ; preds = %12, %6
  %17 = or i32 %3, 2097152, !dbg !1061
  store i32 %17, i32* %2, align 8, !dbg !1061, !tbaa !944
  %18 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !1063, !tbaa !1064
  %19 = bitcast %struct.client* %0 to i8*, !dbg !1065
  %20 = tail call %struct.list* @listAddNodeHead(%struct.list* %18, i8* %19) #8, !dbg !1066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1067
  br label %21, !dbg !1067

; <label>:21:                                     ; preds = %12, %1, %16, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1068
  ret void, !dbg !1068
}

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeHead(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @prepareClientToWrite(%struct.client*) local_unnamed_addr #0 !dbg !1069 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1075
  %3 = load i32, i32* %2, align 8, !dbg !1075, !tbaa !944
  %4 = and i32 %3, 134217984, !dbg !1077
  %5 = icmp eq i32 %4, 0, !dbg !1077
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1078
  br i1 %5, label %6, label %48, !dbg !1078

; <label>:6:                                      ; preds = %1
  %7 = and i32 %3, 20971520, !dbg !1079
  %8 = icmp eq i32 %7, 0, !dbg !1079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  br i1 %8, label %9, label %48, !dbg !1081

; <label>:9:                                      ; preds = %6
  %10 = and i32 %3, 2, !dbg !1082
  %11 = icmp eq i32 %10, 0, !dbg !1082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1084
  br i1 %11, label %15, label %12, !dbg !1084

; <label>:12:                                     ; preds = %9
  %13 = and i32 %3, 8192, !dbg !1085
  %14 = icmp eq i32 %13, 0, !dbg !1085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1086
  br i1 %14, label %48, label %15, !dbg !1086

; <label>:15:                                     ; preds = %12, %9
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1087
  %17 = load i32, i32* %16, align 8, !dbg !1087, !tbaa !599
  %18 = icmp slt i32 %17, 1, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1090
  br i1 %18, label %48, label %19, !dbg !1090

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1097
  %21 = load i32, i32* %20, align 8, !dbg !1097, !tbaa !605
  %22 = icmp eq i32 %21, 0, !dbg !1098
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1099
  br i1 %22, label %23, label %47, !dbg !1099

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1100
  %25 = load %struct.list*, %struct.list** %24, align 8, !dbg !1100, !tbaa !667
  %26 = getelementptr inbounds %struct.list, %struct.list* %25, i64 0, i32 5, !dbg !1100
  %27 = load i64, i64* %26, align 8, !dbg !1100, !tbaa !1101
  %28 = icmp eq i64 %27, 0, !dbg !1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1103
  br i1 %28, label %29, label %48, !dbg !1103

; <label>:29:                                     ; preds = %23
  %30 = and i32 %3, 2097152, !dbg !1106
  %31 = icmp eq i32 %30, 0, !dbg !1106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1107
  br i1 %31, label %32, label %47, !dbg !1107

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1108
  %34 = load i32, i32* %33, align 8, !dbg !1108, !tbaa !1052
  %35 = icmp eq i32 %34, 0, !dbg !1109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  br i1 %35, label %42, label %36, !dbg !1110

; <label>:36:                                     ; preds = %32
  %37 = icmp eq i32 %34, 9, !dbg !1111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1112
  br i1 %37, label %38, label %47, !dbg !1112

; <label>:38:                                     ; preds = %36
  %39 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1113
  %40 = load i32, i32* %39, align 4, !dbg !1113, !tbaa !1058
  %41 = icmp eq i32 %40, 0, !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1115
  br i1 %41, label %42, label %47, !dbg !1115

; <label>:42:                                     ; preds = %38, %32
  %43 = or i32 %3, 2097152, !dbg !1116
  store i32 %43, i32* %2, align 8, !dbg !1116, !tbaa !944
  %44 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !1117, !tbaa !1064
  %45 = bitcast %struct.client* %0 to i8*, !dbg !1118
  %46 = tail call %struct.list* @listAddNodeHead(%struct.list* %44, i8* %45) #8, !dbg !1119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1120
  br label %47, !dbg !1120

; <label>:47:                                     ; preds = %42, %38, %36, %29, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1121
  br label %48, !dbg !1122

; <label>:48:                                     ; preds = %23, %47, %15, %12, %6, %1
  %49 = phi i32 [ 0, %1 ], [ -1, %6 ], [ -1, %12 ], [ -1, %15 ], [ 0, %47 ], [ 0, %23 ], !dbg !1123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  ret i32 %49, !dbg !1125
}

; Function Attrs: noredzone nounwind
define dso_local i32 @clientHasPendingReplies(%struct.client* nocapture readonly) local_unnamed_addr #0 !dbg !1092 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1127
  %3 = load i32, i32* %2, align 8, !dbg !1127, !tbaa !605
  %4 = icmp eq i32 %3, 0, !dbg !1128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1129
  br i1 %4, label %5, label %12, !dbg !1129

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1130
  %7 = load %struct.list*, %struct.list** %6, align 8, !dbg !1130, !tbaa !667
  %8 = getelementptr inbounds %struct.list, %struct.list* %7, i64 0, i32 5, !dbg !1130
  %9 = load i64, i64* %8, align 8, !dbg !1130, !tbaa !1101
  %10 = icmp ne i64 %9, 0, !dbg !1129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1129
  %11 = zext i1 %10 to i32, !dbg !1129
  br label %12, !dbg !1129

; <label>:12:                                     ; preds = %1, %5
  %13 = phi i32 [ 1, %1 ], [ %11, %5 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  ret i32 %13, !dbg !1131
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_addReplyToBuffer(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !1132 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1143
  %5 = load i32, i32* %4, align 8, !dbg !1143, !tbaa !605
  %6 = sext i32 %5 to i64, !dbg !1144
  %7 = sub nsw i64 16384, %6, !dbg !1145
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1147
  %9 = load i32, i32* %8, align 8, !dbg !1147, !tbaa !944
  %10 = and i32 %9, 64, !dbg !1149
  %11 = icmp eq i32 %10, 0, !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1150
  br i1 %11, label %12, label %26, !dbg !1150

; <label>:12:                                     ; preds = %3
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1151
  %14 = load %struct.list*, %struct.list** %13, align 8, !dbg !1151, !tbaa !667
  %15 = getelementptr inbounds %struct.list, %struct.list* %14, i64 0, i32 5, !dbg !1151
  %16 = load i64, i64* %15, align 8, !dbg !1151, !tbaa !1101
  %17 = icmp eq i64 %16, 0, !dbg !1153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1154
  br i1 %17, label %18, label %26, !dbg !1154

; <label>:18:                                     ; preds = %12
  %19 = icmp ult i64 %7, %2, !dbg !1155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1157
  br i1 %19, label %26, label %20, !dbg !1157

; <label>:20:                                     ; preds = %18
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 48, i64 %6, !dbg !1158
  %22 = tail call i8* @memcpy(i8* nonnull %21, i8* %1, i64 %2) #8, !dbg !1159
  %23 = load i32, i32* %4, align 8, !dbg !1160, !tbaa !605
  %24 = trunc i64 %2 to i32, !dbg !1160
  %25 = add i32 %23, %24, !dbg !1160
  store i32 %25, i32* %4, align 8, !dbg !1160, !tbaa !605
  br label %26, !dbg !1161

; <label>:26:                                     ; preds = %18, %12, %3, %20
  %27 = phi i32 [ 0, %20 ], [ 0, %3 ], [ -1, %12 ], [ -1, %18 ], !dbg !1162
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  ret i32 %27, !dbg !1164
}

; Function Attrs: noredzone nounwind
define dso_local void @_addReplyStringToList(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !1165 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1184
  %5 = load i32, i32* %4, align 8, !dbg !1184, !tbaa !944
  %6 = and i32 %5, 64, !dbg !1186
  %7 = icmp eq i32 %6, 0, !dbg !1186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1187
  br i1 %7, label %8, label %59, !dbg !1187

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1188
  %10 = load %struct.list*, %struct.list** %9, align 8, !dbg !1188, !tbaa !667
  %11 = getelementptr inbounds %struct.list, %struct.list* %10, i64 0, i32 1, !dbg !1188
  %12 = load %struct.listNode*, %struct.listNode** %11, align 8, !dbg !1188, !tbaa !451
  %13 = icmp eq %struct.listNode* %12, null, !dbg !1190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1190
  br i1 %13, label %33, label %14, !dbg !1190

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.listNode, %struct.listNode* %12, i64 0, i32 2, !dbg !1191
  %16 = bitcast i8** %15 to %struct.clientReplyBlock**, !dbg !1191
  %17 = load %struct.clientReplyBlock*, %struct.clientReplyBlock** %16, align 8, !dbg !1191, !tbaa !1192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1190
  %18 = icmp eq %struct.clientReplyBlock* %17, null, !dbg !1195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  br i1 %18, label %36, label %19, !dbg !1196

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %17, i64 0, i32 0, !dbg !1197
  %21 = load i64, i64* %20, align 8, !dbg !1197, !tbaa !410
  %22 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %17, i64 0, i32 1, !dbg !1198
  %23 = load i64, i64* %22, align 8, !dbg !1198, !tbaa !410
  %24 = sub i64 %21, %23, !dbg !1199
  %25 = icmp ult i64 %24, %2, !dbg !1201
  %26 = select i1 %25, i64 %24, i64 %2, !dbg !1202
  %27 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %17, i64 0, i32 2, i64 %23, !dbg !1204
  %28 = tail call i8* @memcpy(i8* nonnull %27, i8* %1, i64 %26) #8, !dbg !1205
  %29 = load i64, i64* %22, align 8, !dbg !1206, !tbaa !410
  %30 = add i64 %26, %29, !dbg !1206
  store i64 %30, i64* %22, align 8, !dbg !1206, !tbaa !410
  %31 = getelementptr inbounds i8, i8* %1, i64 %26, !dbg !1207
  %32 = sub i64 %2, %26, !dbg !1208
  br label %33, !dbg !1209

; <label>:33:                                     ; preds = %8, %19
  %34 = phi i64 [ %32, %19 ], [ %2, %8 ]
  %35 = phi i8* [ %31, %19 ], [ %1, %8 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  br label %36, !dbg !1211

; <label>:36:                                     ; preds = %33, %14
  %37 = phi i64 [ %2, %14 ], [ %34, %33 ]
  %38 = phi i8* [ %1, %14 ], [ %35, %33 ]
  %39 = icmp eq i64 %37, 0, !dbg !1211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  br i1 %39, label %58, label %40, !dbg !1212

; <label>:40:                                     ; preds = %36
  %41 = icmp ugt i64 %37, 16384, !dbg !1213
  %42 = select i1 %41, i64 %37, i64 16384, !dbg !1213
  %43 = add i64 %42, 16, !dbg !1215
  %44 = tail call i8* @zmalloc(i64 %43) #8, !dbg !1216
  %45 = tail call i64 @zmalloc_usable(i8* %44) #8, !dbg !1217
  %46 = add i64 %45, -16, !dbg !1218
  %47 = bitcast i8* %44 to i64*, !dbg !1219
  store i64 %46, i64* %47, align 8, !dbg !1220, !tbaa !410
  %48 = getelementptr inbounds i8, i8* %44, i64 8, !dbg !1221
  %49 = bitcast i8* %48 to i64*, !dbg !1221
  store i64 %37, i64* %49, align 8, !dbg !1222, !tbaa !410
  %50 = getelementptr inbounds i8, i8* %44, i64 16, !dbg !1223
  %51 = tail call i8* @memcpy(i8* nonnull %50, i8* %38, i64 %37) #8, !dbg !1224
  %52 = load %struct.list*, %struct.list** %9, align 8, !dbg !1225, !tbaa !667
  %53 = tail call %struct.list* @listAddNodeTail(%struct.list* %52, i8* %44) #8, !dbg !1226
  %54 = load i64, i64* %47, align 8, !dbg !1227, !tbaa !410
  %55 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !1228
  %56 = load i64, i64* %55, align 8, !dbg !1229, !tbaa !670
  %57 = add i64 %56, %54, !dbg !1229
  store i64 %57, i64* %55, align 8, !dbg !1229, !tbaa !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1230
  br label %58, !dbg !1230

; <label>:58:                                     ; preds = %36, %40
  tail call void @asyncCloseClientOnOutputBufferLimitReached(%struct.client* nonnull %0) #10, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  br label %59, !dbg !1232

; <label>:59:                                     ; preds = %3, %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  ret void, !dbg !1232
}

; Function Attrs: noredzone
declare dso_local i64 @zmalloc_usable(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @asyncCloseClientOnOutputBufferLimitReached(%struct.client*) local_unnamed_addr #0 !dbg !1233 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1240
  %3 = load i32, i32* %2, align 8, !dbg !1240, !tbaa !599
  %4 = icmp eq i32 %3, -1, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1243
  br i1 %4, label %35, label %5, !dbg !1243

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !1244
  %7 = load i64, i64* %6, align 8, !dbg !1244, !tbaa !670
  %8 = icmp ult i64 %7, -65537, !dbg !1244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  br i1 %8, label %10, label %9, !dbg !1244

; <label>:9:                                      ; preds = %5
  tail call void @_serverAssert(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.95, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 2130) #8, !dbg !1244
  tail call void @_exit(i32 1) #9, !dbg !1244
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i64 %7, 0, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br i1 %11, label %35, label %12, !dbg !1247

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1248
  %14 = load i32, i32* %13, align 8, !dbg !1248, !tbaa !944
  %15 = and i32 %14, 1024, !dbg !1249
  %16 = icmp eq i32 %15, 0, !dbg !1249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1250
  br i1 %16, label %17, label %35, !dbg !1250

; <label>:17:                                     ; preds = %12
  %18 = tail call i32 @checkClientOutputBufferLimits(%struct.client* nonnull %0) #10, !dbg !1251
  %19 = icmp eq i32 %18, 0, !dbg !1251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1252
  br i1 %19, label %35, label %20, !dbg !1252

; <label>:20:                                     ; preds = %17
  %21 = tail call i8* @sdsempty() #8, !dbg !1253
  %22 = tail call i8* @catClientInfoString(i8* %21, %struct.client* nonnull %0) #10, !dbg !1254
  %23 = load i32, i32* %13, align 8, !dbg !1261, !tbaa !944
  %24 = and i32 %23, 1024, !dbg !1263
  %25 = icmp eq i32 %24, 0, !dbg !1263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1264
  br i1 %25, label %26, label %34, !dbg !1264

; <label>:26:                                     ; preds = %20
  %27 = and i32 %23, 256, !dbg !1265
  %28 = icmp eq i32 %27, 0, !dbg !1265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  br i1 %28, label %29, label %34, !dbg !1266

; <label>:29:                                     ; preds = %26
  %30 = or i32 %23, 1024, !dbg !1267
  store i32 %30, i32* %13, align 8, !dbg !1267, !tbaa !944
  %31 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !1268, !tbaa !1269
  %32 = bitcast %struct.client* %0 to i8*, !dbg !1270
  %33 = tail call %struct.list* @listAddNodeTail(%struct.list* %31, i8* %32) #8, !dbg !1271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  br label %34, !dbg !1272

; <label>:34:                                     ; preds = %20, %26, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.96, i64 0, i64 0), i8* %22) #8, !dbg !1273
  tail call void @sdsfree(i8* %22) #8, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1275
  br label %35, !dbg !1275

; <label>:35:                                     ; preds = %17, %12, %10, %1, %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  ret void, !dbg !1276
}

; Function Attrs: noredzone nounwind
define dso_local void @addReply(%struct.client*, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1277 {
  %3 = alloca [32 x i8], align 16
  %4 = tail call i32 @prepareClientToWrite(%struct.client* %0) #10, !dbg !1293
  %5 = icmp eq i32 %4, 0, !dbg !1295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1296
  br i1 %5, label %6, label %125, !dbg !1296

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !1297
  %8 = load i32, i32* %7, align 8, !dbg !1297
  %9 = lshr i32 %8, 4, !dbg !1297
  %10 = and i32 %9, 15, !dbg !1297
  %11 = icmp eq i32 %10, 0, !dbg !1297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1297
  br i1 %11, label %14, label %12, !dbg !1297

; <label>:12:                                     ; preds = %6
  %13 = icmp eq i32 %10, 8, !dbg !1297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1298
  br i1 %13, label %14, label %90, !dbg !1298

; <label>:14:                                     ; preds = %12, %6
  %15 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1299
  %16 = load i8*, i8** %15, align 8, !dbg !1299, !tbaa !376
  %17 = getelementptr inbounds i8, i8* %16, i64 -1, !dbg !1304
  %18 = load i8, i8* %17, align 1, !dbg !1304, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  %19 = trunc i8 %18 to i3, !dbg !1306
  switch i3 %19, label %41 [
    i3 0, label %20
    i3 1, label %23
    i3 2, label %27
    i3 3, label %32
    i3 -4, label %37
  ], !dbg !1306

; <label>:20:                                     ; preds = %14
  %21 = lshr i8 %18, 3, !dbg !1307
  %22 = zext i8 %21 to i64, !dbg !1307
  br label %41, !dbg !1308

; <label>:23:                                     ; preds = %14
  %24 = getelementptr inbounds i8, i8* %16, i64 -3, !dbg !1309
  %25 = load i8, i8* %24, align 1, !dbg !1310, !tbaa !660
  %26 = zext i8 %25 to i64, !dbg !1309
  br label %41, !dbg !1311

; <label>:27:                                     ; preds = %14
  %28 = getelementptr inbounds i8, i8* %16, i64 -5, !dbg !1312
  %29 = bitcast i8* %28 to i16*, !dbg !1313
  %30 = load i16, i16* %29, align 1, !dbg !1313, !tbaa !862
  %31 = zext i16 %30 to i64, !dbg !1312
  br label %41, !dbg !1314

; <label>:32:                                     ; preds = %14
  %33 = getelementptr inbounds i8, i8* %16, i64 -9, !dbg !1315
  %34 = bitcast i8* %33 to i32*, !dbg !1316
  %35 = load i32, i32* %34, align 1, !dbg !1316, !tbaa !549
  %36 = zext i32 %35 to i64, !dbg !1315
  br label %41, !dbg !1317

; <label>:37:                                     ; preds = %14
  %38 = getelementptr inbounds i8, i8* %16, i64 -17, !dbg !1318
  %39 = bitcast i8* %38 to i64*, !dbg !1319
  %40 = load i64, i64* %39, align 1, !dbg !1319, !tbaa !410
  br label %41, !dbg !1320

; <label>:41:                                     ; preds = %14, %20, %23, %27, %32, %37
  %42 = phi i64 [ %40, %37 ], [ %36, %32 ], [ %31, %27 ], [ %26, %23 ], [ %22, %20 ], [ 0, %14 ], !dbg !1321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  %43 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1328
  %44 = load i32, i32* %43, align 8, !dbg !1328, !tbaa !605
  %45 = sext i32 %44 to i64, !dbg !1329
  %46 = sub nsw i64 16384, %45, !dbg !1330
  %47 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1332
  %48 = load i32, i32* %47, align 8, !dbg !1332, !tbaa !944
  %49 = and i32 %48, 64, !dbg !1333
  %50 = icmp eq i32 %49, 0, !dbg !1333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1334
  br i1 %50, label %51, label %65, !dbg !1334

; <label>:51:                                     ; preds = %41
  %52 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1335
  %53 = load %struct.list*, %struct.list** %52, align 8, !dbg !1335, !tbaa !667
  %54 = getelementptr inbounds %struct.list, %struct.list* %53, i64 0, i32 5, !dbg !1335
  %55 = load i64, i64* %54, align 8, !dbg !1335, !tbaa !1101
  %56 = icmp eq i64 %55, 0, !dbg !1336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1337
  br i1 %56, label %57, label %66, !dbg !1337

; <label>:57:                                     ; preds = %51
  %58 = icmp ult i64 %46, %42, !dbg !1338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  br i1 %58, label %66, label %59, !dbg !1339

; <label>:59:                                     ; preds = %57
  %60 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 48, i64 %45, !dbg !1340
  %61 = tail call i8* @memcpy(i8* nonnull %60, i8* %16, i64 %42) #8, !dbg !1341
  %62 = load i32, i32* %43, align 8, !dbg !1342, !tbaa !605
  %63 = trunc i64 %42 to i32, !dbg !1342
  %64 = add i32 %62, %63, !dbg !1342
  store i32 %64, i32* %43, align 8, !dbg !1342, !tbaa !605
  br label %65, !dbg !1343

; <label>:65:                                     ; preds = %41, %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1344
  br label %124, !dbg !1345

; <label>:66:                                     ; preds = %57, %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  switch i3 %19, label %88 [
    i3 0, label %67
    i3 1, label %70
    i3 2, label %74
    i3 3, label %79
    i3 -4, label %84
  ], !dbg !1349

; <label>:67:                                     ; preds = %66
  %68 = lshr i8 %18, 3, !dbg !1350
  %69 = zext i8 %68 to i64, !dbg !1350
  br label %88, !dbg !1351

; <label>:70:                                     ; preds = %66
  %71 = getelementptr inbounds i8, i8* %16, i64 -3, !dbg !1352
  %72 = load i8, i8* %71, align 1, !dbg !1353, !tbaa !660
  %73 = zext i8 %72 to i64, !dbg !1352
  br label %88, !dbg !1354

; <label>:74:                                     ; preds = %66
  %75 = getelementptr inbounds i8, i8* %16, i64 -5, !dbg !1355
  %76 = bitcast i8* %75 to i16*, !dbg !1356
  %77 = load i16, i16* %76, align 1, !dbg !1356, !tbaa !862
  %78 = zext i16 %77 to i64, !dbg !1355
  br label %88, !dbg !1357

; <label>:79:                                     ; preds = %66
  %80 = getelementptr inbounds i8, i8* %16, i64 -9, !dbg !1358
  %81 = bitcast i8* %80 to i32*, !dbg !1359
  %82 = load i32, i32* %81, align 1, !dbg !1359, !tbaa !549
  %83 = zext i32 %82 to i64, !dbg !1358
  br label %88, !dbg !1360

; <label>:84:                                     ; preds = %66
  %85 = getelementptr inbounds i8, i8* %16, i64 -17, !dbg !1361
  %86 = bitcast i8* %85 to i64*, !dbg !1362
  %87 = load i64, i64* %86, align 1, !dbg !1362, !tbaa !410
  br label %88, !dbg !1363

; <label>:88:                                     ; preds = %66, %67, %70, %74, %79, %84
  %89 = phi i64 [ %87, %84 ], [ %83, %79 ], [ %78, %74 ], [ %73, %70 ], [ %69, %67 ], [ 0, %66 ], !dbg !1364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1365
  tail call void @_addReplyStringToList(%struct.client* nonnull %0, i8* %16, i64 %89) #10, !dbg !1366
  br label %124, !dbg !1366

; <label>:90:                                     ; preds = %12
  %91 = icmp eq i32 %10, 1, !dbg !1367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1368
  br i1 %91, label %92, label %123, !dbg !1368

; <label>:92:                                     ; preds = %90
  %93 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !1369
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %93) #5, !dbg !1369
  %94 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1371
  %95 = bitcast i8** %94 to i64*, !dbg !1371
  %96 = load i64, i64* %95, align 8, !dbg !1371, !tbaa !376
  %97 = call i32 @ll2string(i8* nonnull %93, i64 32, i64 %96) #8, !dbg !1372
  %98 = sext i32 %97 to i64, !dbg !1372
  %99 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1379
  %100 = load i32, i32* %99, align 8, !dbg !1379, !tbaa !605
  %101 = sext i32 %100 to i64, !dbg !1380
  %102 = sub nsw i64 16384, %101, !dbg !1381
  %103 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1383
  %104 = load i32, i32* %103, align 8, !dbg !1383, !tbaa !944
  %105 = and i32 %104, 64, !dbg !1384
  %106 = icmp eq i32 %105, 0, !dbg !1384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1385
  br i1 %106, label %107, label %120, !dbg !1385

; <label>:107:                                    ; preds = %92
  %108 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1386
  %109 = load %struct.list*, %struct.list** %108, align 8, !dbg !1386, !tbaa !667
  %110 = getelementptr inbounds %struct.list, %struct.list* %109, i64 0, i32 5, !dbg !1386
  %111 = load i64, i64* %110, align 8, !dbg !1386, !tbaa !1101
  %112 = icmp eq i64 %111, 0, !dbg !1387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1388
  br i1 %112, label %113, label %121, !dbg !1388

; <label>:113:                                    ; preds = %107
  %114 = icmp ult i64 %102, %98, !dbg !1389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1390
  br i1 %114, label %121, label %115, !dbg !1390

; <label>:115:                                    ; preds = %113
  %116 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 48, i64 %101, !dbg !1391
  %117 = call i8* @memcpy(i8* nonnull %116, i8* nonnull %93, i64 %98) #8, !dbg !1392
  %118 = load i32, i32* %99, align 8, !dbg !1393, !tbaa !605
  %119 = add i32 %118, %97, !dbg !1393
  store i32 %119, i32* %99, align 8, !dbg !1393, !tbaa !605
  br label %120, !dbg !1394

; <label>:120:                                    ; preds = %92, %115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1396
  br label %122, !dbg !1397

; <label>:121:                                    ; preds = %113, %107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  call void @_addReplyStringToList(%struct.client* nonnull %0, i8* nonnull %93, i64 %98) #10, !dbg !1398
  br label %122, !dbg !1398

; <label>:122:                                    ; preds = %120, %121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %93) #5, !dbg !1399
  br label %124

; <label>:123:                                    ; preds = %90
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 318, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1400
  tail call void @_exit(i32 1) #9, !dbg !1400
  unreachable

; <label>:124:                                    ; preds = %122, %88, %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %125, !dbg !1402

; <label>:125:                                    ; preds = %124, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1402
  ret void, !dbg !1402
}

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplySds(%struct.client*, i8*) local_unnamed_addr #0 !dbg !1403 {
  %3 = tail call i32 @prepareClientToWrite(%struct.client* %0) #10, !dbg !1411
  %4 = icmp eq i32 %3, 0, !dbg !1413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1414
  br i1 %4, label %6, label %5, !dbg !1414

; <label>:5:                                      ; preds = %2
  tail call void @sdsfree(i8* %1) #8, !dbg !1415
  br label %81, !dbg !1417

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !1421
  %8 = load i8, i8* %7, align 1, !dbg !1421, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1423
  %9 = trunc i8 %8 to i3, !dbg !1423
  switch i3 %9, label %31 [
    i3 0, label %10
    i3 1, label %13
    i3 2, label %17
    i3 3, label %22
    i3 -4, label %27
  ], !dbg !1423

; <label>:10:                                     ; preds = %6
  %11 = lshr i8 %8, 3, !dbg !1424
  %12 = zext i8 %11 to i64, !dbg !1424
  br label %31, !dbg !1425

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !1426
  %15 = load i8, i8* %14, align 1, !dbg !1427, !tbaa !660
  %16 = zext i8 %15 to i64, !dbg !1426
  br label %31, !dbg !1428

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !1429
  %19 = bitcast i8* %18 to i16*, !dbg !1430
  %20 = load i16, i16* %19, align 1, !dbg !1430, !tbaa !862
  %21 = zext i16 %20 to i64, !dbg !1429
  br label %31, !dbg !1431

; <label>:22:                                     ; preds = %6
  %23 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !1432
  %24 = bitcast i8* %23 to i32*, !dbg !1433
  %25 = load i32, i32* %24, align 1, !dbg !1433, !tbaa !549
  %26 = zext i32 %25 to i64, !dbg !1432
  br label %31, !dbg !1434

; <label>:27:                                     ; preds = %6
  %28 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !1435
  %29 = bitcast i8* %28 to i64*, !dbg !1436
  %30 = load i64, i64* %29, align 1, !dbg !1436, !tbaa !410
  br label %31, !dbg !1437

; <label>:31:                                     ; preds = %6, %10, %13, %17, %22, %27
  %32 = phi i64 [ %30, %27 ], [ %26, %22 ], [ %21, %17 ], [ %16, %13 ], [ %12, %10 ], [ 0, %6 ], !dbg !1438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1440
  %33 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1445
  %34 = load i32, i32* %33, align 8, !dbg !1445, !tbaa !605
  %35 = sext i32 %34 to i64, !dbg !1446
  %36 = sub nsw i64 16384, %35, !dbg !1447
  %37 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1449
  %38 = load i32, i32* %37, align 8, !dbg !1449, !tbaa !944
  %39 = and i32 %38, 64, !dbg !1450
  %40 = icmp eq i32 %39, 0, !dbg !1450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1451
  br i1 %40, label %41, label %55, !dbg !1451

; <label>:41:                                     ; preds = %31
  %42 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1452
  %43 = load %struct.list*, %struct.list** %42, align 8, !dbg !1452, !tbaa !667
  %44 = getelementptr inbounds %struct.list, %struct.list* %43, i64 0, i32 5, !dbg !1452
  %45 = load i64, i64* %44, align 8, !dbg !1452, !tbaa !1101
  %46 = icmp eq i64 %45, 0, !dbg !1453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1454
  br i1 %46, label %47, label %56, !dbg !1454

; <label>:47:                                     ; preds = %41
  %48 = icmp ult i64 %36, %32, !dbg !1455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1456
  br i1 %48, label %56, label %49, !dbg !1456

; <label>:49:                                     ; preds = %47
  %50 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 48, i64 %35, !dbg !1457
  %51 = tail call i8* @memcpy(i8* nonnull %50, i8* nonnull %1, i64 %32) #8, !dbg !1458
  %52 = load i32, i32* %33, align 8, !dbg !1459, !tbaa !605
  %53 = trunc i64 %32 to i32, !dbg !1459
  %54 = add i32 %52, %53, !dbg !1459
  store i32 %54, i32* %33, align 8, !dbg !1459, !tbaa !605
  br label %55, !dbg !1460

; <label>:55:                                     ; preds = %31, %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  br label %80, !dbg !1462

; <label>:56:                                     ; preds = %47, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  switch i3 %9, label %78 [
    i3 0, label %57
    i3 1, label %60
    i3 2, label %64
    i3 3, label %69
    i3 -4, label %74
  ], !dbg !1466

; <label>:57:                                     ; preds = %56
  %58 = lshr i8 %8, 3, !dbg !1467
  %59 = zext i8 %58 to i64, !dbg !1467
  br label %78, !dbg !1468

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !1469
  %62 = load i8, i8* %61, align 1, !dbg !1470, !tbaa !660
  %63 = zext i8 %62 to i64, !dbg !1469
  br label %78, !dbg !1471

; <label>:64:                                     ; preds = %56
  %65 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !1472
  %66 = bitcast i8* %65 to i16*, !dbg !1473
  %67 = load i16, i16* %66, align 1, !dbg !1473, !tbaa !862
  %68 = zext i16 %67 to i64, !dbg !1472
  br label %78, !dbg !1474

; <label>:69:                                     ; preds = %56
  %70 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !1475
  %71 = bitcast i8* %70 to i32*, !dbg !1476
  %72 = load i32, i32* %71, align 1, !dbg !1476, !tbaa !549
  %73 = zext i32 %72 to i64, !dbg !1475
  br label %78, !dbg !1477

; <label>:74:                                     ; preds = %56
  %75 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !1478
  %76 = bitcast i8* %75 to i64*, !dbg !1479
  %77 = load i64, i64* %76, align 1, !dbg !1479, !tbaa !410
  br label %78, !dbg !1480

; <label>:78:                                     ; preds = %56, %57, %60, %64, %69, %74
  %79 = phi i64 [ %77, %74 ], [ %73, %69 ], [ %68, %64 ], [ %63, %60 ], [ %59, %57 ], [ 0, %56 ], !dbg !1481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1482
  tail call void @_addReplyStringToList(%struct.client* nonnull %0, i8* nonnull %1, i64 %79) #10, !dbg !1483
  br label %80, !dbg !1483

; <label>:80:                                     ; preds = %55, %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1439
  tail call void @sdsfree(i8* nonnull %1) #8, !dbg !1484
  br label %81, !dbg !1485

; <label>:81:                                     ; preds = %80, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1485
  ret void, !dbg !1485
}

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyString(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !1487 {
  %4 = tail call i32 @prepareClientToWrite(%struct.client* %0) #10, !dbg !1495
  %5 = icmp eq i32 %4, 0, !dbg !1497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1498
  br i1 %5, label %6, label %32, !dbg !1498

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1504
  %8 = load i32, i32* %7, align 8, !dbg !1504, !tbaa !605
  %9 = sext i32 %8 to i64, !dbg !1505
  %10 = sub nsw i64 16384, %9, !dbg !1506
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1508
  %12 = load i32, i32* %11, align 8, !dbg !1508, !tbaa !944
  %13 = and i32 %12, 64, !dbg !1509
  %14 = icmp eq i32 %13, 0, !dbg !1509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1510
  br i1 %14, label %15, label %29, !dbg !1510

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1511
  %17 = load %struct.list*, %struct.list** %16, align 8, !dbg !1511, !tbaa !667
  %18 = getelementptr inbounds %struct.list, %struct.list* %17, i64 0, i32 5, !dbg !1511
  %19 = load i64, i64* %18, align 8, !dbg !1511, !tbaa !1101
  %20 = icmp eq i64 %19, 0, !dbg !1512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1513
  br i1 %20, label %21, label %30, !dbg !1513

; <label>:21:                                     ; preds = %15
  %22 = icmp ult i64 %10, %2, !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1515
  br i1 %22, label %30, label %23, !dbg !1515

; <label>:23:                                     ; preds = %21
  %24 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 48, i64 %9, !dbg !1516
  %25 = tail call i8* @memcpy(i8* nonnull %24, i8* %1, i64 %2) #8, !dbg !1517
  %26 = load i32, i32* %7, align 8, !dbg !1518, !tbaa !605
  %27 = trunc i64 %2 to i32, !dbg !1518
  %28 = add i32 %26, %27, !dbg !1518
  store i32 %28, i32* %7, align 8, !dbg !1518, !tbaa !605
  br label %29, !dbg !1519

; <label>:29:                                     ; preds = %6, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1521
  br label %31, !dbg !1522

; <label>:30:                                     ; preds = %21, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1522
  tail call void @_addReplyStringToList(%struct.client* nonnull %0, i8* %1, i64 %2) #10, !dbg !1523
  br label %31, !dbg !1523

; <label>:31:                                     ; preds = %30, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1520
  br label %32, !dbg !1524

; <label>:32:                                     ; preds = %31, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1524
  ret void, !dbg !1524
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyErrorLength(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !1525 {
  %4 = icmp eq i64 %2, 0, !dbg !1538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1540
  br i1 %4, label %8, label %5, !dbg !1540

; <label>:5:                                      ; preds = %3
  %6 = load i8, i8* %1, align 1, !dbg !1541, !tbaa !660
  %7 = icmp eq i8 %6, 45, !dbg !1542
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1543
  br i1 %7, label %9, label %8, !dbg !1543

; <label>:8:                                      ; preds = %5, %3
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 5) #10, !dbg !1544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1544
  br label %9, !dbg !1544

; <label>:9:                                      ; preds = %5, %8
  tail call void @addReplyString(%struct.client* %0, i8* %1, i64 %2) #10, !dbg !1545
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 2) #10, !dbg !1546
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1547
  %11 = load i32, i32* %10, align 8, !dbg !1547, !tbaa !944
  %12 = and i32 %11, 3, !dbg !1548
  %13 = icmp eq i32 %12, 0, !dbg !1548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1549
  br i1 %13, label %30, label %14, !dbg !1549

; <label>:14:                                     ; preds = %9
  %15 = and i32 %11, 4, !dbg !1550
  %16 = icmp eq i32 %15, 0, !dbg !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1551
  br i1 %16, label %17, label %30, !dbg !1551

; <label>:17:                                     ; preds = %14
  %18 = and i32 %11, 2, !dbg !1552
  %19 = icmp ne i32 %18, 0, !dbg !1553
  %20 = select i1 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), !dbg !1553
  %21 = select i1 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), !dbg !1555
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 11, !dbg !1557
  %23 = load %struct.redisCommand*, %struct.redisCommand** %22, align 8, !dbg !1557, !tbaa !1558
  %24 = icmp eq %struct.redisCommand* %23, null, !dbg !1559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1559
  br i1 %24, label %28, label %25, !dbg !1559

; <label>:25:                                     ; preds = %17
  %26 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %23, i64 0, i32 0, !dbg !1560
  %27 = load i8*, i8** %26, align 8, !dbg !1560, !tbaa !1561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1559
  br label %28, !dbg !1559

; <label>:28:                                     ; preds = %17, %25
  %29 = phi i8* [ %27, %25 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), %17 ], !dbg !1559
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.8, i64 0, i64 0), i8* %21, i8* %20, i8* %1, i8* %29) #8, !dbg !1564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  br label %30, !dbg !1565

; <label>:30:                                     ; preds = %14, %9, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1566
  ret void, !dbg !1566
}

; Function Attrs: noredzone
declare dso_local void @serverLog(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #0 !dbg !1567 {
  %3 = tail call i64 @strlen(i8* %1) #8, !dbg !1575
  tail call void @addReplyErrorLength(%struct.client* %0, i8* %1, i64 %3) #10, !dbg !1576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1577
  ret void, !dbg !1577
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) local_unnamed_addr #0 !dbg !1578 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1593
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #5, !dbg !1593
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1595
  call void @llvm.va_start(i8* nonnull %4), !dbg !1595
  %6 = call i8* @sdsempty() #8, !dbg !1596
  %7 = call i8* @sdscatvprintf(i8* %6, i8* %1, %struct.__va_list_tag* nonnull %5) #8, !dbg !1597
  call void @llvm.va_end(i8* nonnull %4), !dbg !1599
  %8 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !1602
  %9 = load i8, i8* %8, align 1, !dbg !1602, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1604
  %10 = trunc i8 %9 to i3, !dbg !1604
  switch i3 %10, label %32 [
    i3 0, label %11
    i3 1, label %14
    i3 2, label %18
    i3 3, label %23
    i3 -4, label %28
  ], !dbg !1604

; <label>:11:                                     ; preds = %2
  %12 = lshr i8 %9, 3, !dbg !1605
  %13 = zext i8 %12 to i64, !dbg !1605
  br label %33, !dbg !1606

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds i8, i8* %7, i64 -3, !dbg !1607
  %16 = load i8, i8* %15, align 1, !dbg !1608, !tbaa !660
  %17 = zext i8 %16 to i64, !dbg !1607
  br label %33, !dbg !1609

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1610
  %20 = bitcast i8* %19 to i16*, !dbg !1611
  %21 = load i16, i16* %20, align 1, !dbg !1611, !tbaa !862
  %22 = zext i16 %21 to i64, !dbg !1610
  br label %33, !dbg !1612

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %7, i64 -9, !dbg !1613
  %25 = bitcast i8* %24 to i32*, !dbg !1614
  %26 = load i32, i32* %25, align 1, !dbg !1614, !tbaa !549
  %27 = zext i32 %26 to i64, !dbg !1613
  br label %33, !dbg !1615

; <label>:28:                                     ; preds = %2
  %29 = getelementptr inbounds i8, i8* %7, i64 -17, !dbg !1616
  %30 = bitcast i8* %29 to i64*, !dbg !1617
  %31 = load i64, i64* %30, align 1, !dbg !1617, !tbaa !410
  br label %33, !dbg !1618

; <label>:32:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  br label %49, !dbg !1625

; <label>:33:                                     ; preds = %11, %14, %18, %23, %28
  %34 = phi i64 [ %31, %28 ], [ %27, %23 ], [ %22, %18 ], [ %17, %14 ], [ %13, %11 ], !dbg !1626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1623
  %35 = icmp eq i64 %34, 0, !dbg !1628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  br i1 %35, label %49, label %36, !dbg !1625

; <label>:36:                                     ; preds = %33, %44
  %37 = phi i64 [ %45, %44 ], [ 0, %33 ]
  %38 = getelementptr inbounds i8, i8* %7, i64 %37, !dbg !1630
  %39 = load i8, i8* %38, align 1, !dbg !1630, !tbaa !660
  %40 = icmp eq i8 %39, 13, !dbg !1633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  br i1 %40, label %43, label %41, !dbg !1634

; <label>:41:                                     ; preds = %36
  %42 = icmp eq i8 %39, 10, !dbg !1635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1636
  br i1 %42, label %43, label %44, !dbg !1636

; <label>:43:                                     ; preds = %41, %36
  store i8 32, i8* %38, align 1, !dbg !1637, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1638
  br label %44, !dbg !1638

; <label>:44:                                     ; preds = %41, %43
  %45 = add nuw i64 %37, 1, !dbg !1639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  %46 = icmp eq i64 %45, %34, !dbg !1628
  br i1 %46, label %47, label %36, !dbg !1625, !llvm.loop !1641

; <label>:47:                                     ; preds = %44
  %48 = load i8, i8* %8, align 1, !dbg !1643, !tbaa !660
  br label %49, !dbg !1643

; <label>:49:                                     ; preds = %32, %47, %33
  %50 = phi i8 [ %48, %47 ], [ %9, %33 ], [ %9, %32 ], !dbg !1643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1647
  %51 = trunc i8 %50 to i3, !dbg !1647
  switch i3 %51, label %73 [
    i3 0, label %52
    i3 1, label %55
    i3 2, label %59
    i3 3, label %64
    i3 -4, label %69
  ], !dbg !1647

; <label>:52:                                     ; preds = %49
  %53 = lshr i8 %50, 3, !dbg !1648
  %54 = zext i8 %53 to i64, !dbg !1648
  br label %73, !dbg !1649

; <label>:55:                                     ; preds = %49
  %56 = getelementptr inbounds i8, i8* %7, i64 -3, !dbg !1650
  %57 = load i8, i8* %56, align 1, !dbg !1651, !tbaa !660
  %58 = zext i8 %57 to i64, !dbg !1650
  br label %73, !dbg !1652

; <label>:59:                                     ; preds = %49
  %60 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1653
  %61 = bitcast i8* %60 to i16*, !dbg !1654
  %62 = load i16, i16* %61, align 1, !dbg !1654, !tbaa !862
  %63 = zext i16 %62 to i64, !dbg !1653
  br label %73, !dbg !1655

; <label>:64:                                     ; preds = %49
  %65 = getelementptr inbounds i8, i8* %7, i64 -9, !dbg !1656
  %66 = bitcast i8* %65 to i32*, !dbg !1657
  %67 = load i32, i32* %66, align 1, !dbg !1657, !tbaa !549
  %68 = zext i32 %67 to i64, !dbg !1656
  br label %73, !dbg !1658

; <label>:69:                                     ; preds = %49
  %70 = getelementptr inbounds i8, i8* %7, i64 -17, !dbg !1659
  %71 = bitcast i8* %70 to i64*, !dbg !1660
  %72 = load i64, i64* %71, align 1, !dbg !1660, !tbaa !410
  br label %73, !dbg !1661

; <label>:73:                                     ; preds = %49, %52, %55, %59, %64, %69
  %74 = phi i64 [ %72, %69 ], [ %68, %64 ], [ %63, %59 ], [ %58, %55 ], [ %54, %52 ], [ 0, %49 ], !dbg !1662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1663
  call void @addReplyErrorLength(%struct.client* %0, i8* nonnull %7, i64 %74) #10, !dbg !1664
  call void @sdsfree(i8* nonnull %7) #8, !dbg !1665
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #5, !dbg !1666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1666
  ret void, !dbg !1666
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: noredzone
declare dso_local i8* @sdscatvprintf(i8*, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noredzone nounwind
define dso_local void @addReplyStatusLength(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !1667 {
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 1) #10, !dbg !1675
  tail call void @addReplyString(%struct.client* %0, i8* %1, i64 %2) #10, !dbg !1676
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 2) #10, !dbg !1677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1678
  ret void, !dbg !1678
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyStatus(%struct.client*, i8*) local_unnamed_addr #0 !dbg !1679 {
  %3 = tail call i64 @strlen(i8* %1) #8, !dbg !1685
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 1) #8, !dbg !1690
  tail call void @addReplyString(%struct.client* %0, i8* %1, i64 %3) #8, !dbg !1691
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 2) #8, !dbg !1692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  ret void, !dbg !1694
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyStatusFormat(%struct.client*, i8*, ...) local_unnamed_addr #0 !dbg !1695 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1703
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #5, !dbg !1703
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1705
  call void @llvm.va_start(i8* nonnull %4), !dbg !1705
  %6 = call i8* @sdsempty() #8, !dbg !1706
  %7 = call i8* @sdscatvprintf(i8* %6, i8* %1, %struct.__va_list_tag* nonnull %5) #8, !dbg !1707
  call void @llvm.va_end(i8* nonnull %4), !dbg !1709
  %8 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !1712
  %9 = load i8, i8* %8, align 1, !dbg !1712, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1714
  %10 = trunc i8 %9 to i3, !dbg !1714
  switch i3 %10, label %32 [
    i3 0, label %11
    i3 1, label %14
    i3 2, label %18
    i3 3, label %23
    i3 -4, label %28
  ], !dbg !1714

; <label>:11:                                     ; preds = %2
  %12 = lshr i8 %9, 3, !dbg !1715
  %13 = zext i8 %12 to i64, !dbg !1715
  br label %32, !dbg !1716

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds i8, i8* %7, i64 -3, !dbg !1717
  %16 = load i8, i8* %15, align 1, !dbg !1718, !tbaa !660
  %17 = zext i8 %16 to i64, !dbg !1717
  br label %32, !dbg !1719

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1720
  %20 = bitcast i8* %19 to i16*, !dbg !1721
  %21 = load i16, i16* %20, align 1, !dbg !1721, !tbaa !862
  %22 = zext i16 %21 to i64, !dbg !1720
  br label %32, !dbg !1722

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %7, i64 -9, !dbg !1723
  %25 = bitcast i8* %24 to i32*, !dbg !1724
  %26 = load i32, i32* %25, align 1, !dbg !1724, !tbaa !549
  %27 = zext i32 %26 to i64, !dbg !1723
  br label %32, !dbg !1725

; <label>:28:                                     ; preds = %2
  %29 = getelementptr inbounds i8, i8* %7, i64 -17, !dbg !1726
  %30 = bitcast i8* %29 to i64*, !dbg !1727
  %31 = load i64, i64* %30, align 1, !dbg !1727, !tbaa !410
  br label %32, !dbg !1728

; <label>:32:                                     ; preds = %2, %11, %14, %18, %23, %28
  %33 = phi i64 [ %31, %28 ], [ %27, %23 ], [ %22, %18 ], [ %17, %14 ], [ %13, %11 ], [ 0, %2 ], !dbg !1729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1731
  call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 1) #8, !dbg !1736
  call void @addReplyString(%struct.client* %0, i8* %7, i64 %33) #8, !dbg !1737
  call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 2) #8, !dbg !1738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1739
  call void @sdsfree(i8* %7) #8, !dbg !1740
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #5, !dbg !1741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1741
  ret void, !dbg !1741
}

; Function Attrs: noredzone nounwind
define dso_local i8* @addDeferredMultiBulkLength(%struct.client*) local_unnamed_addr #0 !dbg !1742 {
  %2 = tail call i32 @prepareClientToWrite(%struct.client* %0) #10, !dbg !1748
  %3 = icmp eq i32 %2, 0, !dbg !1750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1751
  br i1 %3, label %4, label %12, !dbg !1751

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1752
  %6 = load %struct.list*, %struct.list** %5, align 8, !dbg !1752, !tbaa !667
  %7 = tail call %struct.list* @listAddNodeTail(%struct.list* %6, i8* null) #8, !dbg !1753
  %8 = load %struct.list*, %struct.list** %5, align 8, !dbg !1754, !tbaa !667
  %9 = getelementptr inbounds %struct.list, %struct.list* %8, i64 0, i32 1, !dbg !1754
  %10 = bitcast %struct.listNode** %9 to i8**, !dbg !1754
  %11 = load i8*, i8** %10, align 8, !dbg !1754, !tbaa !451
  br label %12, !dbg !1755

; <label>:12:                                     ; preds = %1, %4
  %13 = phi i8* [ %11, %4 ], [ null, %1 ], !dbg !1756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1758
  ret i8* %13, !dbg !1758
}

; Function Attrs: noredzone nounwind
define dso_local void @setDeferredMultiBulkLength(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !1759 {
  %4 = alloca [128 x i8], align 16
  %5 = bitcast i8* %1 to %struct.listNode*, !dbg !1779
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !1781
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #5, !dbg !1781
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 %2) #8, !dbg !1783
  %8 = sext i32 %7 to i64, !dbg !1783
  %9 = icmp eq i8* %1, null, !dbg !1785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1787
  br i1 %9, label %59, label %10, !dbg !1787

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1788
  %12 = bitcast i8* %11 to i8**, !dbg !1788
  %13 = load i8*, i8** %12, align 8, !dbg !1788, !tbaa !1192
  %14 = icmp eq i8* %13, null, !dbg !1788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1788
  br i1 %14, label %16, label %15, !dbg !1788

; <label>:15:                                     ; preds = %10
  call void @_serverAssert(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 444) #8, !dbg !1788
  call void @_exit(i32 1) #9, !dbg !1788
  unreachable

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1789
  %18 = bitcast i8* %17 to %struct.listNode**, !dbg !1789
  %19 = load %struct.listNode*, %struct.listNode** %18, align 8, !dbg !1789, !tbaa !1790
  %20 = icmp eq %struct.listNode* %19, null, !dbg !1791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1792
  br i1 %20, label %44, label %21, !dbg !1792

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.listNode, %struct.listNode* %19, i64 0, i32 2, !dbg !1793
  %23 = bitcast i8** %22 to %struct.clientReplyBlock**, !dbg !1793
  %24 = load %struct.clientReplyBlock*, %struct.clientReplyBlock** %23, align 8, !dbg !1793, !tbaa !1192
  %25 = icmp eq %struct.clientReplyBlock* %24, null, !dbg !1795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1796
  br i1 %25, label %44, label %26, !dbg !1796

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %24, i64 0, i32 0, !dbg !1797
  %28 = load i64, i64* %27, align 8, !dbg !1797, !tbaa !410
  %29 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %24, i64 0, i32 1, !dbg !1798
  %30 = load i64, i64* %29, align 8, !dbg !1798, !tbaa !410
  %31 = sub i64 %28, %30, !dbg !1799
  %32 = icmp ult i64 %31, %8, !dbg !1800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1801
  br i1 %32, label %44, label %33, !dbg !1801

; <label>:33:                                     ; preds = %26
  %34 = icmp ult i64 %30, 65536, !dbg !1802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1803
  br i1 %34, label %35, label %44, !dbg !1803

; <label>:35:                                     ; preds = %33
  %36 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %24, i64 0, i32 2, i64 0, !dbg !1804
  %37 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %24, i64 0, i32 2, i64 %8, !dbg !1806
  %38 = call i8* @memmove(i8* nonnull %37, i8* nonnull %36, i64 %30) #8, !dbg !1807
  %39 = call i8* @memcpy(i8* nonnull %36, i8* nonnull %6, i64 %8) #8, !dbg !1808
  %40 = load i64, i64* %29, align 8, !dbg !1809, !tbaa !410
  %41 = add i64 %40, %8, !dbg !1809
  store i64 %41, i64* %29, align 8, !dbg !1809, !tbaa !410
  %42 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1810
  %43 = load %struct.list*, %struct.list** %42, align 8, !dbg !1810, !tbaa !667
  call void @listDelNode(%struct.list* %43, %struct.listNode* nonnull %5) #8, !dbg !1811
  br label %58, !dbg !1812

; <label>:44:                                     ; preds = %26, %21, %16, %33
  %45 = add nsw i64 %8, 16, !dbg !1813
  %46 = call i8* @zmalloc(i64 %45) #8, !dbg !1814
  %47 = call i64 @zmalloc_usable(i8* %46) #8, !dbg !1816
  %48 = add i64 %47, -16, !dbg !1817
  %49 = bitcast i8* %46 to i64*, !dbg !1818
  store i64 %48, i64* %49, align 8, !dbg !1819, !tbaa !410
  %50 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !1820
  %51 = bitcast i8* %50 to i64*, !dbg !1820
  store i64 %8, i64* %51, align 8, !dbg !1821, !tbaa !410
  %52 = getelementptr inbounds i8, i8* %46, i64 16, !dbg !1822
  %53 = call i8* @memcpy(i8* nonnull %52, i8* nonnull %6, i64 %8) #8, !dbg !1823
  store i8* %46, i8** %12, align 8, !dbg !1824, !tbaa !1192
  %54 = load i64, i64* %49, align 8, !dbg !1825, !tbaa !410
  %55 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !1826
  %56 = load i64, i64* %55, align 8, !dbg !1827, !tbaa !670
  %57 = add i64 %56, %54, !dbg !1827
  store i64 %57, i64* %55, align 8, !dbg !1827, !tbaa !670
  br label %58

; <label>:58:                                     ; preds = %44, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @asyncCloseClientOnOutputBufferLimitReached(%struct.client* nonnull %0) #10, !dbg !1828
  br label %59, !dbg !1829

; <label>:59:                                     ; preds = %3, %58
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1830
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #5, !dbg !1829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1829
  ret void, !dbg !1829
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
define dso_local void @addReplyDouble(%struct.client*, double) local_unnamed_addr #0 !dbg !1831 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1843
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #5, !dbg !1843
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !1843
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #5, !dbg !1843
  %7 = tail call i32 @__fpclassifyd(double %1) #8, !dbg !1846
  %8 = icmp eq i32 %7, 1, !dbg !1846
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1848
  br i1 %8, label %9, label %13, !dbg !1848

; <label>:9:                                      ; preds = %2
  %10 = fcmp ogt double %1, 0.000000e+00, !dbg !1849
  %11 = select i1 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), !dbg !1851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1859
  %12 = tail call i64 @strlen(i8* nonnull %11) #8, !dbg !1860
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %11, i64 %12) #8, !dbg !1863
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1864
  br label %17, !dbg !1865

; <label>:13:                                     ; preds = %2
  %14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %5, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), double %1) #8, !dbg !1866
  %15 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %6, i64 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %14, i8* nonnull %5) #8, !dbg !1869
  %16 = sext i32 %15 to i64, !dbg !1871
  call void @addReplyString(%struct.client* %0, i8* nonnull %6, i64 %16) #10, !dbg !1872
  br label %17

; <label>:17:                                     ; preds = %13, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #5, !dbg !1873
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #5, !dbg !1873
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1873
  ret void, !dbg !1873
}

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyBulkCString(%struct.client*, i8*) local_unnamed_addr #0 !dbg !1853 {
  %3 = icmp eq i8* %1, null, !dbg !1876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1877
  br i1 %3, label %4, label %6, !dbg !1877

; <label>:4:                                      ; preds = %2
  %5 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1878, !tbaa !1880
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %5) #10, !dbg !1882
  br label %8, !dbg !1883

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @strlen(i8* nonnull %1) #8, !dbg !1884
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %1, i64 %7) #10, !dbg !1885
  br label %8

; <label>:8:                                      ; preds = %6, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1886
  ret void, !dbg !1886
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyHumanLongDouble(%struct.client*, x86_fp80) local_unnamed_addr #0 !dbg !1887 {
  %3 = tail call %struct.redisObject* @createStringObjectFromLongDouble(x86_fp80 %1, i32 1) #8, !dbg !1897
  tail call void @addReplyBulkLen(%struct.client* %0, %struct.redisObject* %3) #8, !dbg !1906
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %3) #8, !dbg !1907
  %4 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 0), align 8, !dbg !1908, !tbaa !1909
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %4) #8, !dbg !1910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1911
  tail call void @decrRefCount(%struct.redisObject* %3) #8, !dbg !1912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1913
  ret void, !dbg !1913
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongDouble(x86_fp80, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyBulk(%struct.client*, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1900 {
  tail call void @addReplyBulkLen(%struct.client* %0, %struct.redisObject* %1) #10, !dbg !1916
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %1) #10, !dbg !1917
  %3 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 0), align 8, !dbg !1918, !tbaa !1909
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %3) #10, !dbg !1919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1920
  ret void, !dbg !1920
}

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyLongLongWithPrefix(%struct.client*, i64, i8 signext) local_unnamed_addr #0 !dbg !1921 {
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !1933
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #5, !dbg !1933
  %6 = icmp eq i8 %2, 42, !dbg !1935
  %7 = icmp ult i64 %1, 32, !dbg !1937
  %8 = and i1 %7, %6, !dbg !1937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1937
  br i1 %8, label %9, label %12, !dbg !1937

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 %1, !dbg !1938
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !1938, !tbaa !476
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %11) #10, !dbg !1940
  br label %29, !dbg !1941

; <label>:12:                                     ; preds = %3
  %13 = icmp eq i8 %2, 36, !dbg !1942
  %14 = and i1 %7, %13, !dbg !1944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  br i1 %14, label %15, label %18, !dbg !1944

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 49, i64 %1, !dbg !1945
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !1945, !tbaa !476
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %17) #10, !dbg !1947
  br label %29, !dbg !1948

; <label>:18:                                     ; preds = %12
  store i8 %2, i8* %5, align 16, !dbg !1949, !tbaa !660
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 1, !dbg !1950
  %20 = call i32 @ll2string(i8* nonnull %19, i64 127, i64 %1) #8, !dbg !1951
  %21 = add nsw i32 %20, 1, !dbg !1953
  %22 = sext i32 %21 to i64, !dbg !1954
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %22, !dbg !1954
  store i8 13, i8* %23, align 1, !dbg !1955, !tbaa !660
  %24 = add nsw i32 %20, 2, !dbg !1956
  %25 = sext i32 %24 to i64, !dbg !1957
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %25, !dbg !1957
  store i8 10, i8* %26, align 1, !dbg !1958, !tbaa !660
  %27 = add nsw i32 %20, 3, !dbg !1959
  %28 = sext i32 %27 to i64, !dbg !1960
  call void @addReplyString(%struct.client* %0, i8* nonnull %5, i64 %28) #10, !dbg !1961
  br label %29, !dbg !1962

; <label>:29:                                     ; preds = %18, %15, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1963
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #5, !dbg !1962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1962
  ret void, !dbg !1962
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #0 !dbg !1964 {
  %3 = alloca [128 x i8], align 16
  %4 = icmp eq i64 %1, 0, !dbg !1976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1977
  br i1 %4, label %5, label %7, !dbg !1977

; <label>:5:                                      ; preds = %2
  %6 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !1978, !tbaa !1979
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %6) #10, !dbg !1980
  br label %23, !dbg !1980

; <label>:7:                                      ; preds = %2
  %8 = icmp eq i64 %1, 1, !dbg !1981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1982
  br i1 %8, label %9, label %11, !dbg !1982

; <label>:9:                                      ; preds = %7
  %10 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !1983, !tbaa !1984
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %10) #10, !dbg !1985
  br label %23, !dbg !1985

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1989
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %12) #5, !dbg !1989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1991
  store i8 58, i8* %12, align 16, !dbg !1992, !tbaa !660
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 1, !dbg !1993
  %14 = call i32 @ll2string(i8* nonnull %13, i64 127, i64 %1) #8, !dbg !1994
  %15 = add nsw i32 %14, 1, !dbg !1996
  %16 = sext i32 %15 to i64, !dbg !1997
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %16, !dbg !1997
  store i8 13, i8* %17, align 1, !dbg !1998, !tbaa !660
  %18 = add nsw i32 %14, 2, !dbg !1999
  %19 = sext i32 %18 to i64, !dbg !2000
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %19, !dbg !2000
  store i8 10, i8* %20, align 1, !dbg !2001, !tbaa !660
  %21 = add nsw i32 %14, 3, !dbg !2002
  %22 = sext i32 %21 to i64, !dbg !2003
  call void @addReplyString(%struct.client* %0, i8* nonnull %12, i64 %22) #8, !dbg !2004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2005
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %12) #5, !dbg !2005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2005
  br label %23

; <label>:23:                                     ; preds = %9, %11, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2006
  ret void, !dbg !2006
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #0 !dbg !2007 {
  %3 = alloca [128 x i8], align 16
  %4 = icmp slt i64 %1, 32, !dbg !2018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2019
  br i1 %4, label %5, label %8, !dbg !2019

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 %1, !dbg !2020
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !2020, !tbaa !476
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %7) #10, !dbg !2021
  br label %20, !dbg !2021

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !2025
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #5, !dbg !2025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2027
  store i8 42, i8* %9, align 16, !dbg !2028, !tbaa !660
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 1, !dbg !2029
  %11 = call i32 @ll2string(i8* nonnull %10, i64 127, i64 %1) #8, !dbg !2030
  %12 = add nsw i32 %11, 1, !dbg !2032
  %13 = sext i32 %12 to i64, !dbg !2033
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %13, !dbg !2033
  store i8 13, i8* %14, align 1, !dbg !2034, !tbaa !660
  %15 = add nsw i32 %11, 2, !dbg !2035
  %16 = sext i32 %15 to i64, !dbg !2036
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %16, !dbg !2036
  store i8 10, i8* %17, align 1, !dbg !2037, !tbaa !660
  %18 = add nsw i32 %11, 3, !dbg !2038
  %19 = sext i32 %18 to i64, !dbg !2039
  call void @addReplyString(%struct.client* %0, i8* nonnull %9, i64 %19) #8, !dbg !2040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2041
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #5, !dbg !2041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2041
  br label %20

; <label>:20:                                     ; preds = %8, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2042
  ret void, !dbg !2042
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyBulkLen(%struct.client*, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !2043 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !2056
  %5 = load i32, i32* %4, align 8, !dbg !2056
  %6 = lshr i32 %5, 4, !dbg !2056
  %7 = and i32 %6, 15, !dbg !2056
  %8 = icmp eq i32 %7, 0, !dbg !2056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2056
  br i1 %8, label %11, label %9, !dbg !2056

; <label>:9:                                      ; preds = %2
  %10 = icmp eq i32 %7, 8, !dbg !2056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  br i1 %10, label %11, label %40, !dbg !2057

; <label>:11:                                     ; preds = %9, %2
  %12 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2058
  %13 = load i8*, i8** %12, align 8, !dbg !2058, !tbaa !376
  %14 = getelementptr inbounds i8, i8* %13, i64 -1, !dbg !2062
  %15 = load i8, i8* %14, align 1, !dbg !2062, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2064
  %16 = trunc i8 %15 to i3, !dbg !2064
  switch i3 %16, label %38 [
    i3 0, label %17
    i3 1, label %20
    i3 2, label %24
    i3 3, label %29
    i3 -4, label %34
  ], !dbg !2064

; <label>:17:                                     ; preds = %11
  %18 = lshr i8 %15, 3, !dbg !2065
  %19 = zext i8 %18 to i64, !dbg !2065
  br label %38, !dbg !2066

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds i8, i8* %13, i64 -3, !dbg !2067
  %22 = load i8, i8* %21, align 1, !dbg !2068, !tbaa !660
  %23 = zext i8 %22 to i64, !dbg !2067
  br label %38, !dbg !2069

; <label>:24:                                     ; preds = %11
  %25 = getelementptr inbounds i8, i8* %13, i64 -5, !dbg !2070
  %26 = bitcast i8* %25 to i16*, !dbg !2071
  %27 = load i16, i16* %26, align 1, !dbg !2071, !tbaa !862
  %28 = zext i16 %27 to i64, !dbg !2070
  br label %38, !dbg !2072

; <label>:29:                                     ; preds = %11
  %30 = getelementptr inbounds i8, i8* %13, i64 -9, !dbg !2073
  %31 = bitcast i8* %30 to i32*, !dbg !2074
  %32 = load i32, i32* %31, align 1, !dbg !2074, !tbaa !549
  %33 = zext i32 %32 to i64, !dbg !2073
  br label %38, !dbg !2075

; <label>:34:                                     ; preds = %11
  %35 = getelementptr inbounds i8, i8* %13, i64 -17, !dbg !2076
  %36 = bitcast i8* %35 to i64*, !dbg !2077
  %37 = load i64, i64* %36, align 1, !dbg !2077, !tbaa !410
  br label %38, !dbg !2078

; <label>:38:                                     ; preds = %11, %17, %20, %24, %29, %34
  %39 = phi i64 [ %37, %34 ], [ %33, %29 ], [ %28, %24 ], [ %23, %20 ], [ %19, %17 ], [ 0, %11 ], !dbg !2079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2081
  br label %59, !dbg !2083

; <label>:40:                                     ; preds = %9
  %41 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2084
  %42 = bitcast i8** %41 to i64*, !dbg !2084
  %43 = load i64, i64* %42, align 8, !dbg !2084, !tbaa !376
  %44 = icmp slt i64 %43, 0, !dbg !2086
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2088
  br i1 %44, label %45, label %47, !dbg !2088

; <label>:45:                                     ; preds = %40
  %46 = sub nsw i64 0, %43, !dbg !2089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2091
  br label %47, !dbg !2091

; <label>:47:                                     ; preds = %45, %40
  %48 = phi i64 [ 2, %45 ], [ 1, %40 ], !dbg !2092
  %49 = phi i64 [ %46, %45 ], [ %43, %40 ], !dbg !2092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2093
  %50 = add i64 %49, 9, !dbg !2094
  %51 = icmp ugt i64 %50, 18, !dbg !2094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2093
  br i1 %51, label %52, label %59, !dbg !2093

; <label>:52:                                     ; preds = %47, %52
  %53 = phi i64 [ %55, %52 ], [ %49, %47 ]
  %54 = phi i64 [ %56, %52 ], [ %48, %47 ]
  %55 = sdiv i64 %53, 10, !dbg !2095
  %56 = add i64 %54, 1, !dbg !2096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2093
  %57 = add nsw i64 %55, 9, !dbg !2094
  %58 = icmp ugt i64 %57, 18, !dbg !2094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2093
  br i1 %58, label %52, label %59, !dbg !2093, !llvm.loop !2098

; <label>:59:                                     ; preds = %52, %47, %38
  %60 = phi i64 [ %39, %38 ], [ %48, %47 ], [ %56, %52 ], !dbg !2100
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %61 = icmp ult i64 %60, 32, !dbg !2101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2102
  br i1 %61, label %62, label %65, !dbg !2102

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 49, i64 %60, !dbg !2103
  %64 = load %struct.redisObject*, %struct.redisObject** %63, align 8, !dbg !2103, !tbaa !476
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %64) #10, !dbg !2104
  br label %77, !dbg !2104

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !2108
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %66) #5, !dbg !2108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2110
  store i8 36, i8* %66, align 16, !dbg !2111, !tbaa !660
  %67 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 1, !dbg !2112
  %68 = call i32 @ll2string(i8* nonnull %67, i64 127, i64 %60) #8, !dbg !2113
  %69 = add nsw i32 %68, 1, !dbg !2115
  %70 = sext i32 %69 to i64, !dbg !2116
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %70, !dbg !2116
  store i8 13, i8* %71, align 1, !dbg !2117, !tbaa !660
  %72 = add nsw i32 %68, 2, !dbg !2118
  %73 = sext i32 %72 to i64, !dbg !2119
  %74 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %73, !dbg !2119
  store i8 10, i8* %74, align 1, !dbg !2120, !tbaa !660
  %75 = add nsw i32 %68, 3, !dbg !2121
  %76 = sext i32 %75 to i64, !dbg !2122
  call void @addReplyString(%struct.client* %0, i8* nonnull %66, i64 %76) #8, !dbg !2123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2124
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %66) #5, !dbg !2124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2124
  br label %77

; <label>:77:                                     ; preds = %65, %62
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  ret void, !dbg !2125
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !2126 {
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !2141
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #5, !dbg !2141
  %6 = icmp ult i64 %2, 32, !dbg !2142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2143
  br i1 %6, label %7, label %10, !dbg !2143

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 49, i64 %2, !dbg !2144
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !2144, !tbaa !476
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %9) #8, !dbg !2145
  br label %21, !dbg !2146

; <label>:10:                                     ; preds = %3
  store i8 36, i8* %5, align 16, !dbg !2147, !tbaa !660
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 1, !dbg !2148
  %12 = call i32 @ll2string(i8* nonnull %11, i64 127, i64 %2) #8, !dbg !2149
  %13 = add nsw i32 %12, 1, !dbg !2151
  %14 = sext i32 %13 to i64, !dbg !2152
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %14, !dbg !2152
  store i8 13, i8* %15, align 1, !dbg !2153, !tbaa !660
  %16 = add nsw i32 %12, 2, !dbg !2154
  %17 = sext i32 %16 to i64, !dbg !2155
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %17, !dbg !2155
  store i8 10, i8* %18, align 1, !dbg !2156, !tbaa !660
  %19 = add nsw i32 %12, 3, !dbg !2157
  %20 = sext i32 %19 to i64, !dbg !2158
  call void @addReplyString(%struct.client* %0, i8* nonnull %5, i64 %20) #8, !dbg !2159
  br label %21, !dbg !2160

; <label>:21:                                     ; preds = %7, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2161
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #5, !dbg !2160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2160
  call void @addReplyString(%struct.client* %0, i8* %1, i64 %2) #10, !dbg !2162
  %22 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 0), align 8, !dbg !2163, !tbaa !1909
  call void @addReply(%struct.client* %0, %struct.redisObject* %22) #10, !dbg !2164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2165
  ret void, !dbg !2165
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyBulkSds(%struct.client*, i8*) local_unnamed_addr #0 !dbg !2166 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !2176
  %5 = load i8, i8* %4, align 1, !dbg !2176, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2178
  %6 = trunc i8 %5 to i3, !dbg !2178
  switch i3 %6, label %28 [
    i3 0, label %7
    i3 1, label %10
    i3 2, label %14
    i3 3, label %19
    i3 -4, label %24
  ], !dbg !2178

; <label>:7:                                      ; preds = %2
  %8 = lshr i8 %5, 3, !dbg !2179
  %9 = zext i8 %8 to i64, !dbg !2179
  br label %28, !dbg !2180

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !2181
  %12 = load i8, i8* %11, align 1, !dbg !2182, !tbaa !660
  %13 = zext i8 %12 to i64, !dbg !2181
  br label %28, !dbg !2183

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !2184
  %16 = bitcast i8* %15 to i16*, !dbg !2185
  %17 = load i16, i16* %16, align 1, !dbg !2185, !tbaa !862
  %18 = zext i16 %17 to i64, !dbg !2184
  br label %28, !dbg !2186

; <label>:19:                                     ; preds = %2
  %20 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !2187
  %21 = bitcast i8* %20 to i32*, !dbg !2188
  %22 = load i32, i32* %21, align 1, !dbg !2188, !tbaa !549
  %23 = zext i32 %22 to i64, !dbg !2187
  br label %28, !dbg !2189

; <label>:24:                                     ; preds = %2
  %25 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !2190
  %26 = bitcast i8* %25 to i64*, !dbg !2191
  %27 = load i64, i64* %26, align 1, !dbg !2191, !tbaa !410
  br label %28, !dbg !2192

; <label>:28:                                     ; preds = %2, %7, %10, %14, %19, %24
  %29 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ], [ %9, %7 ], [ 0, %2 ], !dbg !2193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2195
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !2199
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %30) #5, !dbg !2199
  %31 = icmp ult i64 %29, 32, !dbg !2200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2201
  br i1 %31, label %32, label %35, !dbg !2201

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 49, i64 %29, !dbg !2202
  %34 = load %struct.redisObject*, %struct.redisObject** %33, align 8, !dbg !2202, !tbaa !476
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %34) #8, !dbg !2203
  br label %46, !dbg !2204

; <label>:35:                                     ; preds = %28
  store i8 36, i8* %30, align 16, !dbg !2205, !tbaa !660
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 1, !dbg !2206
  %37 = call i32 @ll2string(i8* nonnull %36, i64 127, i64 %29) #8, !dbg !2207
  %38 = add nsw i32 %37, 1, !dbg !2209
  %39 = sext i32 %38 to i64, !dbg !2210
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %39, !dbg !2210
  store i8 13, i8* %40, align 1, !dbg !2211, !tbaa !660
  %41 = add nsw i32 %37, 2, !dbg !2212
  %42 = sext i32 %41 to i64, !dbg !2213
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %42, !dbg !2213
  store i8 10, i8* %43, align 1, !dbg !2214, !tbaa !660
  %44 = add nsw i32 %37, 3, !dbg !2215
  %45 = sext i32 %44 to i64, !dbg !2216
  call void @addReplyString(%struct.client* %0, i8* nonnull %30, i64 %45) #8, !dbg !2217
  br label %46, !dbg !2218

; <label>:46:                                     ; preds = %32, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2194
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %30) #5, !dbg !2218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2218
  call void @addReplySds(%struct.client* %0, i8* nonnull %1) #10, !dbg !2219
  %47 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 0), align 8, !dbg !2220, !tbaa !1909
  call void @addReply(%struct.client* %0, %struct.redisObject* %47) #10, !dbg !2221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2222
  ret void, !dbg !2222
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyBulkLongLong(%struct.client*, i64) local_unnamed_addr #0 !dbg !2223 {
  %3 = alloca [64 x i8], align 16
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0, !dbg !2234
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #5, !dbg !2234
  %5 = call i32 @ll2string(i8* nonnull %4, i64 64, i64 %1) #8, !dbg !2236
  %6 = sext i32 %5 to i64, !dbg !2238
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %4, i64 %6) #10, !dbg !2239
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #5, !dbg !2240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2240
  ret void, !dbg !2240
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyHelp(%struct.client*, i8** nocapture readonly) local_unnamed_addr #0 !dbg !2241 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2253
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2253, !tbaa !628
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2254, !tbaa !476
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 2, !dbg !2255
  %7 = load i8*, i8** %6, align 8, !dbg !2255, !tbaa !376
  %8 = tail call i8* @sdsnew(i8* %7) #8, !dbg !2256
  %9 = tail call i32 @prepareClientToWrite(%struct.client* %0) #8, !dbg !2260
  %10 = icmp eq i32 %9, 0, !dbg !2261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2262
  br i1 %10, label %11, label %19, !dbg !2262

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !2263
  %13 = load %struct.list*, %struct.list** %12, align 8, !dbg !2263, !tbaa !667
  %14 = tail call %struct.list* @listAddNodeTail(%struct.list* %13, i8* null) #8, !dbg !2264
  %15 = load %struct.list*, %struct.list** %12, align 8, !dbg !2265, !tbaa !667
  %16 = getelementptr inbounds %struct.list, %struct.list* %15, i64 0, i32 1, !dbg !2265
  %17 = bitcast %struct.listNode** %16 to i8**, !dbg !2265
  %18 = load i8*, i8** %17, align 8, !dbg !2265, !tbaa !451
  br label %19, !dbg !2266

; <label>:19:                                     ; preds = %2, %11
  %20 = phi i8* [ %18, %11 ], [ null, %2 ], !dbg !2267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2269
  tail call void @sdstoupper(i8* %8) #8, !dbg !2272
  tail call void (%struct.client*, i8*, ...) @addReplyStatusFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0), i8* %8) #10, !dbg !2273
  tail call void @sdsfree(i8* %8) #8, !dbg !2274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2275
  %21 = load i8*, i8** %1, align 8, !dbg !2276, !tbaa !476
  %22 = icmp eq i8* %21, null, !dbg !2275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2275
  br i1 %22, label %33, label %23, !dbg !2275

; <label>:23:                                     ; preds = %19, %23
  %24 = phi i64 [ %30, %23 ], [ 1, %19 ]
  %25 = phi i8* [ %28, %23 ], [ %21, %19 ]
  %26 = tail call i64 @strlen(i8* nonnull %25) #8, !dbg !2280
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 1) #8, !dbg !2285
  tail call void @addReplyString(%struct.client* %0, i8* nonnull %25, i64 %26) #8, !dbg !2286
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 2) #8, !dbg !2287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2275
  %27 = getelementptr inbounds i8*, i8** %1, i64 %24, !dbg !2276
  %28 = load i8*, i8** %27, align 8, !dbg !2276, !tbaa !476
  %29 = icmp eq i8* %28, null, !dbg !2275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2275
  %30 = add nuw i64 %24, 1, !dbg !2268
  br i1 %29, label %31, label %23, !dbg !2275, !llvm.loop !2290

; <label>:31:                                     ; preds = %23
  %32 = and i64 %30, 4294967295, !dbg !2292
  br label %33, !dbg !2292

; <label>:33:                                     ; preds = %31, %19
  %34 = phi i64 [ 1, %19 ], [ %32, %31 ]
  tail call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %20, i64 %34) #10, !dbg !2293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2294
  ret void, !dbg !2294
}

; Function Attrs: noredzone
declare dso_local i8* @sdsnew(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdstoupper(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplySubcommandSyntaxError(%struct.client*) local_unnamed_addr #0 !dbg !2295 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2300
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2300, !tbaa !628
  %4 = load %struct.redisObject*, %struct.redisObject** %3, align 8, !dbg !2301, !tbaa !476
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %4, i64 0, i32 2, !dbg !2302
  %6 = load i8*, i8** %5, align 8, !dbg !2302, !tbaa !376
  %7 = tail call i8* @sdsnew(i8* %6) #8, !dbg !2303
  tail call void @sdstoupper(i8* %7) #8, !dbg !2305
  %8 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2306, !tbaa !628
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 1, !dbg !2307
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !2307, !tbaa !476
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !2308
  %12 = load i8*, i8** %11, align 8, !dbg !2308, !tbaa !376
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.17, i64 0, i64 0), i8* %12, i8* %7) #10, !dbg !2309
  tail call void @sdsfree(i8* %7) #8, !dbg !2310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2311
  ret void, !dbg !2311
}

; Function Attrs: noredzone nounwind
define dso_local void @AddReplyFromClient(%struct.client*, %struct.client*) local_unnamed_addr #0 !dbg !2312 {
  %3 = tail call i32 @prepareClientToWrite(%struct.client* %0) #10, !dbg !2320
  %4 = icmp eq i32 %3, 0, !dbg !2322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2323
  br i1 %4, label %5, label %24, !dbg !2323

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 48, i64 0, !dbg !2324
  %7 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 47, !dbg !2325
  %8 = load i32, i32* %7, align 8, !dbg !2325, !tbaa !605
  %9 = sext i32 %8 to i64, !dbg !2326
  tail call void @addReplyString(%struct.client* %0, i8* nonnull %6, i64 %9) #10, !dbg !2327
  %10 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 15, !dbg !2328
  %11 = load %struct.list*, %struct.list** %10, align 8, !dbg !2328, !tbaa !667
  %12 = getelementptr inbounds %struct.list, %struct.list* %11, i64 0, i32 5, !dbg !2328
  %13 = load i64, i64* %12, align 8, !dbg !2328, !tbaa !1101
  %14 = icmp eq i64 %13, 0, !dbg !2328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2330
  br i1 %14, label %18, label %15, !dbg !2330

; <label>:15:                                     ; preds = %5
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !2331
  %17 = load %struct.list*, %struct.list** %16, align 8, !dbg !2331, !tbaa !667
  tail call void @listJoin(%struct.list* %17, %struct.list* %11) #8, !dbg !2332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2332
  br label %18, !dbg !2332

; <label>:18:                                     ; preds = %5, %15
  %19 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 16, !dbg !2333
  %20 = load i64, i64* %19, align 8, !dbg !2333, !tbaa !670
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !2334
  %22 = load i64, i64* %21, align 8, !dbg !2335, !tbaa !670
  %23 = add i64 %22, %20, !dbg !2335
  store i64 %23, i64* %21, align 8, !dbg !2335, !tbaa !670
  store i64 0, i64* %19, align 8, !dbg !2336, !tbaa !670
  store i32 0, i32* %7, align 8, !dbg !2337, !tbaa !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2338
  br label %24, !dbg !2338

; <label>:24:                                     ; preds = %2, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2338
  ret void, !dbg !2338
}

; Function Attrs: noredzone
declare dso_local void @listJoin(%struct.list*, %struct.list*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @copyClientOutputBuffer(%struct.client*, %struct.client*) local_unnamed_addr #0 !dbg !2339 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !2345
  %4 = load %struct.list*, %struct.list** %3, align 8, !dbg !2345, !tbaa !667
  tail call void @listRelease(%struct.list* %4) #8, !dbg !2346
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 17, !dbg !2347
  store i64 0, i64* %5, align 8, !dbg !2348, !tbaa !639
  %6 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 15, !dbg !2349
  %7 = load %struct.list*, %struct.list** %6, align 8, !dbg !2349, !tbaa !667
  %8 = tail call %struct.list* @listDup(%struct.list* %7) #8, !dbg !2350
  store %struct.list* %8, %struct.list** %3, align 8, !dbg !2351, !tbaa !667
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 48, i64 0, !dbg !2352
  %10 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 48, i64 0, !dbg !2353
  %11 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 47, !dbg !2354
  %12 = load i32, i32* %11, align 8, !dbg !2354, !tbaa !605
  %13 = sext i32 %12 to i64, !dbg !2355
  %14 = tail call i8* @memcpy(i8* nonnull %9, i8* nonnull %10, i64 %13) #8, !dbg !2356
  %15 = load i32, i32* %11, align 8, !dbg !2357, !tbaa !605
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !2358
  store i32 %15, i32* %16, align 8, !dbg !2359, !tbaa !605
  %17 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 16, !dbg !2360
  %18 = load i64, i64* %17, align 8, !dbg !2360, !tbaa !670
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !2361
  store i64 %18, i64* %19, align 8, !dbg !2362, !tbaa !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2363
  ret void, !dbg !2363
}

; Function Attrs: noredzone
declare dso_local void @listRelease(%struct.list*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.list* @listDup(%struct.list*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @acceptTcpHandler(%struct.aeEventLoop* nocapture readnone, i32, i8* nocapture readnone, i32) local_unnamed_addr #0 !dbg !2364 {
  %5 = alloca i32, align 4
  %6 = alloca [46 x i8], align 16
  %7 = bitcast i32* %5 to i8*, !dbg !2378
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #5, !dbg !2378
  %8 = getelementptr inbounds [46 x i8], [46 x i8]* %6, i64 0, i64 0, !dbg !2380
  call void @llvm.lifetime.start.p0i8(i64 46, i8* nonnull %8) #5, !dbg !2380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2382
  br label %9, !dbg !2382

; <label>:9:                                      ; preds = %4, %18
  %10 = phi i32 [ 999, %4 ], [ %20, %18 ]
  %11 = call i32 @anetTcpAccept(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 47, i64 0), i32 %1, i8* nonnull %8, i64 46, i32* nonnull %5) #8, !dbg !2384
  %12 = icmp eq i32 %11, -1, !dbg !2387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2389
  br i1 %12, label %13, label %18, !dbg !2389

; <label>:13:                                     ; preds = %9
  %14 = call i32* @__errno() #8, !dbg !2390
  %15 = load i32, i32* %14, align 4, !dbg !2390, !tbaa !549
  %16 = icmp eq i32 %15, 11, !dbg !2393
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2394
  br i1 %16, label %22, label %17, !dbg !2394

; <label>:17:                                     ; preds = %13
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 47, i64 0)) #8, !dbg !2395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2395
  br label %22, !dbg !2395

; <label>:18:                                     ; preds = %9
  %19 = load i32, i32* %5, align 4, !dbg !2396, !tbaa !549
  call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* nonnull %8, i32 %19) #8, !dbg !2397
  call fastcc void @acceptCommonHandler(i32 %11, i32 0, i8* nonnull %8) #10, !dbg !2398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2382
  %20 = add nsw i32 %10, -1, !dbg !2399
  %21 = icmp eq i32 %10, 0, !dbg !2382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2382
  br i1 %21, label %22, label %9, !dbg !2382, !llvm.loop !2400

; <label>:22:                                     ; preds = %18, %17, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2402
  call void @llvm.lifetime.end.p0i8(i64 46, i8* nonnull %8) #5, !dbg !2403
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #5, !dbg !2403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2403
  ret void, !dbg !2403
}

; Function Attrs: noredzone
declare dso_local i32 @anetTcpAccept(i8*, i32, i8*, i64, i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @acceptCommonHandler(i32, i32, i8*) unnamed_addr #0 !dbg !2404 {
  %4 = tail call %struct.client* @createClient(i32 %0) #10, !dbg !2418
  %5 = icmp eq %struct.client* %4, null, !dbg !2421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2422
  br i1 %5, label %6, label %11, !dbg !2422

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno() #8, !dbg !2423
  %8 = load i32, i32* %7, align 4, !dbg !2423, !tbaa !549
  %9 = tail call i8* @strerror(i32 %8) #8, !dbg !2425
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.100, i64 0, i64 0), i8* %9, i32 %0) #8, !dbg !2426
  %10 = tail call i32 @close(i32 %0) #8, !dbg !2427
  br label %58, !dbg !2428

; <label>:11:                                     ; preds = %3
  %12 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !2429, !tbaa !441
  %13 = getelementptr inbounds %struct.list, %struct.list* %12, i64 0, i32 5, !dbg !2429
  %14 = load i64, i64* %13, align 8, !dbg !2429, !tbaa !1101
  %15 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 226), align 4, !dbg !2430, !tbaa !2431
  %16 = zext i32 %15 to i64, !dbg !2432
  %17 = icmp ugt i64 %14, %16, !dbg !2433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2434
  br i1 %17, label %18, label %25, !dbg !2434

; <label>:18:                                     ; preds = %11
  %19 = getelementptr inbounds %struct.client, %struct.client* %4, i64 0, i32 1, !dbg !2435
  %20 = load i32, i32* %19, align 8, !dbg !2435, !tbaa !599
  %21 = tail call i64 @strlen(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.101, i64 0, i64 0)) #8, !dbg !2437
  %22 = tail call i64 @write(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.101, i64 0, i64 0), i64 %21) #8, !dbg !2438
  %23 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 86), align 8, !dbg !2439, !tbaa !2440
  %24 = add nsw i64 %23, 1, !dbg !2439
  store i64 %24, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 86), align 8, !dbg !2439, !tbaa !2440
  tail call void @freeClient(%struct.client* nonnull %4) #10, !dbg !2441
  br label %58

; <label>:25:                                     ; preds = %11
  %26 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 50), align 8, !dbg !2442, !tbaa !2444
  %27 = icmp ne i32 %26, 0, !dbg !2445
  %28 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 30), align 8, !dbg !2446
  %29 = icmp eq i32 %28, 0, !dbg !2447
  %30 = and i1 %27, %29, !dbg !2448
  %31 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 15), align 8, !dbg !2449
  %32 = icmp eq i8* %31, null, !dbg !2450
  %33 = and i1 %30, %32, !dbg !2448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2448
  br i1 %33, label %34, label %52, !dbg !2448

; <label>:34:                                     ; preds = %25
  %35 = and i32 %1, 2048, !dbg !2451
  %36 = icmp eq i32 %35, 0, !dbg !2451
  %37 = icmp ne i8* %2, null, !dbg !2452
  %38 = and i1 %36, %37, !dbg !2453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2453
  br i1 %38, label %39, label %52, !dbg !2453

; <label>:39:                                     ; preds = %34
  %40 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i64 0, i64 0)) #8, !dbg !2454
  %41 = icmp eq i32 %40, 0, !dbg !2454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2457
  br i1 %41, label %52, label %42, !dbg !2457

; <label>:42:                                     ; preds = %39
  %43 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0)) #8, !dbg !2458
  %44 = icmp eq i32 %43, 0, !dbg !2458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2459
  br i1 %44, label %52, label %45, !dbg !2459

; <label>:45:                                     ; preds = %42
  %46 = getelementptr inbounds %struct.client, %struct.client* %4, i64 0, i32 1, !dbg !2460
  %47 = load i32, i32* %46, align 8, !dbg !2460, !tbaa !599
  %48 = tail call i64 @strlen(i8* getelementptr inbounds ([1102 x i8], [1102 x i8]* @err, i64 0, i64 0)) #8, !dbg !2463
  %49 = tail call i64 @write(i32 %47, i8* getelementptr inbounds ([1102 x i8], [1102 x i8]* @err, i64 0, i64 0), i64 %48) #8, !dbg !2464
  %50 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 86), align 8, !dbg !2465, !tbaa !2440
  %51 = add nsw i64 %50, 1, !dbg !2465
  store i64 %51, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 86), align 8, !dbg !2465, !tbaa !2440
  tail call void @freeClient(%struct.client* nonnull %4) #10, !dbg !2466
  br label %58, !dbg !2467

; <label>:52:                                     ; preds = %42, %39, %34, %25
  %53 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 71), align 8, !dbg !2468, !tbaa !2469
  %54 = add nsw i64 %53, 1, !dbg !2468
  store i64 %54, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 71), align 8, !dbg !2468, !tbaa !2469
  %55 = getelementptr inbounds %struct.client, %struct.client* %4, i64 0, i32 21, !dbg !2470
  %56 = load i32, i32* %55, align 8, !dbg !2471, !tbaa !944
  %57 = or i32 %56, %1, !dbg !2471
  store i32 %57, i32* %55, align 8, !dbg !2471, !tbaa !944
  br label %58, !dbg !2472

; <label>:58:                                     ; preds = %52, %45, %18, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2472
  ret void, !dbg !2472
}

; Function Attrs: noredzone nounwind
define dso_local void @acceptUnixHandler(%struct.aeEventLoop* nocapture readnone, i32, i8* nocapture readnone, i32) local_unnamed_addr #0 !dbg !2473 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2486
  br label %5, !dbg !2486

; <label>:5:                                      ; preds = %4, %14
  %6 = phi i32 [ 999, %4 ], [ %16, %14 ]
  %7 = tail call i32 @anetUnixAccept(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 47, i64 0), i32 %1) #8, !dbg !2487
  %8 = icmp eq i32 %7, -1, !dbg !2490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2492
  br i1 %8, label %9, label %14, !dbg !2492

; <label>:9:                                      ; preds = %5
  %10 = tail call i32* @__errno() #8, !dbg !2493
  %11 = load i32, i32* %10, align 4, !dbg !2493, !tbaa !549
  %12 = icmp eq i32 %11, 11, !dbg !2496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2497
  br i1 %12, label %18, label %13, !dbg !2497

; <label>:13:                                     ; preds = %9
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 47, i64 0)) #8, !dbg !2498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2498
  br label %18, !dbg !2498

; <label>:14:                                     ; preds = %5
  %15 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 31), align 8, !dbg !2499, !tbaa !2500
  tail call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i8* %15) #8, !dbg !2501
  tail call fastcc void @acceptCommonHandler(i32 %7, i32 2048, i8* null) #10, !dbg !2502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2486
  %16 = add nsw i32 %6, -1, !dbg !2503
  %17 = icmp eq i32 %6, 0, !dbg !2486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2486
  br i1 %17, label %18, label %5, !dbg !2486, !llvm.loop !2504

; <label>:18:                                     ; preds = %14, %13, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2507
  ret void, !dbg !2507
}

; Function Attrs: noredzone
declare dso_local i32 @anetUnixAccept(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @disconnectSlaves() local_unnamed_addr #0 !dbg !2508 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2514
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !2515, !tbaa !1035
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 5, !dbg !2515
  %3 = load i64, i64* %2, align 8, !dbg !2515, !tbaa !1101
  %4 = icmp eq i64 %3, 0, !dbg !2514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2514
  br i1 %4, label %16, label %5, !dbg !2514

; <label>:5:                                      ; preds = %0, %5
  %6 = phi %struct.list* [ %12, %5 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct.list, %struct.list* %6, i64 0, i32 0, !dbg !2516
  %8 = load %struct.listNode*, %struct.listNode** %7, align 8, !dbg !2516, !tbaa !2517
  %9 = getelementptr inbounds %struct.listNode, %struct.listNode* %8, i64 0, i32 2, !dbg !2519
  %10 = bitcast i8** %9 to %struct.client**, !dbg !2519
  %11 = load %struct.client*, %struct.client** %10, align 8, !dbg !2519, !tbaa !1192
  tail call void @freeClient(%struct.client* %11) #10, !dbg !2520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2514
  %12 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !2515, !tbaa !1035
  %13 = getelementptr inbounds %struct.list, %struct.list* %12, i64 0, i32 5, !dbg !2515
  %14 = load i64, i64* %13, align 8, !dbg !2515, !tbaa !1101
  %15 = icmp eq i64 %14, 0, !dbg !2514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2514
  br i1 %15, label %16, label %5, !dbg !2514, !llvm.loop !2521

; <label>:16:                                     ; preds = %5, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2523
  ret void, !dbg !2523
}

; Function Attrs: noredzone nounwind
define dso_local void @freeClient(%struct.client*) local_unnamed_addr #0 !dbg !2524 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2532
  %3 = load i32, i32* %2, align 8, !dbg !2532, !tbaa !944
  %4 = and i32 %3, 268435456, !dbg !2534
  %5 = icmp eq i32 %4, 0, !dbg !2534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2535
  br i1 %5, label %18, label %6, !dbg !2535

; <label>:6:                                      ; preds = %1
  %7 = and i32 %3, 1024, !dbg !2539
  %8 = icmp eq i32 %7, 0, !dbg !2539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2540
  br i1 %8, label %9, label %17, !dbg !2540

; <label>:9:                                      ; preds = %6
  %10 = and i32 %3, 256, !dbg !2541
  %11 = icmp eq i32 %10, 0, !dbg !2541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2542
  br i1 %11, label %12, label %17, !dbg !2542

; <label>:12:                                     ; preds = %9
  %13 = or i32 %3, 1024, !dbg !2543
  store i32 %13, i32* %2, align 8, !dbg !2543, !tbaa !944
  %14 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2544, !tbaa !1269
  %15 = bitcast %struct.client* %0 to i8*, !dbg !2545
  %16 = tail call %struct.list* @listAddNodeTail(%struct.list* %14, i8* %15) #8, !dbg !2546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2547
  br label %17, !dbg !2547

; <label>:17:                                     ; preds = %6, %9, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2547
  br label %154, !dbg !2548

; <label>:18:                                     ; preds = %1
  %19 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2549, !tbaa !2551
  %20 = icmp eq %struct.client* %19, null, !dbg !2552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2553
  br i1 %20, label %29, label %21, !dbg !2553

; <label>:21:                                     ; preds = %18
  %22 = and i32 %3, 2, !dbg !2554
  %23 = icmp eq i32 %22, 0, !dbg !2554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2555
  br i1 %23, label %29, label %24, !dbg !2555

; <label>:24:                                     ; preds = %21
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0)) #8, !dbg !2556
  %25 = load i32, i32* %2, align 8, !dbg !2558, !tbaa !944
  %26 = and i32 %25, 1104, !dbg !2560
  %27 = icmp eq i32 %26, 0, !dbg !2560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2561
  br i1 %27, label %28, label %29, !dbg !2561

; <label>:28:                                     ; preds = %24
  tail call void @replicationCacheMaster(%struct.client* nonnull %0) #8, !dbg !2562
  br label %154, !dbg !2564

; <label>:29:                                     ; preds = %24, %21, %18
  %30 = phi i32 [ %25, %24 ], [ %3, %21 ], [ %3, %18 ], !dbg !2565
  %31 = and i32 %30, 1, !dbg !2567
  %32 = icmp eq i32 %31, 0, !dbg !2567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2568
  br i1 %32, label %38, label %33, !dbg !2568

; <label>:33:                                     ; preds = %29
  %34 = and i32 %30, 4, !dbg !2569
  %35 = icmp eq i32 %34, 0, !dbg !2569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2570
  br i1 %35, label %36, label %38, !dbg !2570

; <label>:36:                                     ; preds = %33
  %37 = tail call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #8, !dbg !2571
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i8* %37) #8, !dbg !2573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2574
  br label %38, !dbg !2574

; <label>:38:                                     ; preds = %33, %29, %36
  %39 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 4, !dbg !2575
  %40 = load i8*, i8** %39, align 8, !dbg !2575, !tbaa !612
  tail call void @sdsfree(i8* %40) #8, !dbg !2576
  %41 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 6, !dbg !2577
  %42 = load i8*, i8** %41, align 8, !dbg !2577, !tbaa !616
  tail call void @sdsfree(i8* %42) #8, !dbg !2578
  store i8* null, i8** %39, align 8, !dbg !2579, !tbaa !612
  %43 = load i32, i32* %2, align 8, !dbg !2580, !tbaa !944
  %44 = and i32 %43, 16, !dbg !2582
  %45 = icmp eq i32 %44, 0, !dbg !2582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2583
  br i1 %45, label %47, label %46, !dbg !2583

; <label>:46:                                     ; preds = %38
  tail call void @unblockClient(%struct.client* nonnull %0) #8, !dbg !2584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2584
  br label %47, !dbg !2584

; <label>:47:                                     ; preds = %38, %46
  %48 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 1, !dbg !2585
  %49 = load %struct.dict*, %struct.dict** %48, align 8, !dbg !2585, !tbaa !688
  tail call void @dictRelease(%struct.dict* %49) #8, !dbg !2586
  tail call void @unwatchAllKeys(%struct.client* nonnull %0) #8, !dbg !2587
  %50 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 42, !dbg !2588
  %51 = load %struct.list*, %struct.list** %50, align 8, !dbg !2588, !tbaa !709
  tail call void @listRelease(%struct.list* %51) #8, !dbg !2589
  %52 = tail call i32 @pubsubUnsubscribeAllChannels(%struct.client* nonnull %0, i32 0) #8, !dbg !2590
  %53 = tail call i32 @pubsubUnsubscribeAllPatterns(%struct.client* nonnull %0, i32 0) #8, !dbg !2591
  %54 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !2592
  %55 = load %struct.dict*, %struct.dict** %54, align 8, !dbg !2592, !tbaa !713
  tail call void @dictRelease(%struct.dict* %55) #8, !dbg !2593
  %56 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !2594
  %57 = load %struct.list*, %struct.list** %56, align 8, !dbg !2594, !tbaa !717
  tail call void @listRelease(%struct.list* %57) #8, !dbg !2595
  %58 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !2596
  %59 = load %struct.list*, %struct.list** %58, align 8, !dbg !2596, !tbaa !667
  tail call void @listRelease(%struct.list* %59) #8, !dbg !2597
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2605
  %60 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2607
  %61 = load i32, i32* %60, align 8, !dbg !2607, !tbaa !625
  %62 = icmp sgt i32 %61, 0, !dbg !2609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2610
  br i1 %62, label %63, label %74, !dbg !2610

; <label>:63:                                     ; preds = %47
  %64 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %65, !dbg !2610

; <label>:65:                                     ; preds = %65, %63
  %66 = phi i64 [ 0, %63 ], [ %70, %65 ]
  %67 = load %struct.redisObject**, %struct.redisObject*** %64, align 8, !dbg !2611, !tbaa !628
  %68 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %67, i64 %66, !dbg !2612
  %69 = load %struct.redisObject*, %struct.redisObject** %68, align 8, !dbg !2612, !tbaa !476
  tail call void @decrRefCount(%struct.redisObject* %69) #8, !dbg !2613
  %70 = add nuw nsw i64 %66, 1, !dbg !2614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2615
  %71 = load i32, i32* %60, align 8, !dbg !2607, !tbaa !625
  %72 = sext i32 %71 to i64, !dbg !2609
  %73 = icmp slt i64 %70, %72, !dbg !2609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2610
  br i1 %73, label %65, label %74, !dbg !2610, !llvm.loop !2616

; <label>:74:                                     ; preds = %65, %47
  store i32 0, i32* %60, align 8, !dbg !2619, !tbaa !625
  %75 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !2620
  store %struct.redisCommand* null, %struct.redisCommand** %75, align 8, !dbg !2621, !tbaa !2622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2623
  tail call void @unlinkClient(%struct.client* nonnull %0) #10, !dbg !2624
  %76 = load i32, i32* %2, align 8, !dbg !2625, !tbaa !944
  %77 = and i32 %76, 1, !dbg !2626
  %78 = icmp eq i32 %77, 0, !dbg !2626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2627
  br i1 %78, label %118, label %79, !dbg !2627

; <label>:79:                                     ; preds = %74
  %80 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !2628
  %81 = load i32, i32* %80, align 8, !dbg !2628, !tbaa !1052
  %82 = icmp eq i32 %81, 8, !dbg !2630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2631
  br i1 %82, label %83, label %94, !dbg !2631

; <label>:83:                                     ; preds = %79
  %84 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 25, !dbg !2632
  %85 = load i32, i32* %84, align 8, !dbg !2632, !tbaa !2635
  %86 = icmp eq i32 %85, -1, !dbg !2636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2637
  br i1 %86, label %89, label %87, !dbg !2637

; <label>:87:                                     ; preds = %83
  %88 = tail call i32 @close(i32 %85) #8, !dbg !2638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2638
  br label %89, !dbg !2638

; <label>:89:                                     ; preds = %83, %87
  %90 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 28, !dbg !2639
  %91 = load i8*, i8** %90, align 8, !dbg !2639, !tbaa !2641
  %92 = icmp eq i8* %91, null, !dbg !2642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  br i1 %92, label %94, label %93, !dbg !2643

; <label>:93:                                     ; preds = %89
  tail call void @sdsfree(i8* nonnull %91) #8, !dbg !2644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2644
  br label %94, !dbg !2644

; <label>:94:                                     ; preds = %89, %93, %79
  %95 = load i32, i32* %2, align 8, !dbg !2645, !tbaa !944
  %96 = and i32 %95, 4, !dbg !2646
  %97 = icmp eq i32 %96, 0, !dbg !2646
  %98 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 42), align 8, !dbg !2647
  %99 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !2648
  %100 = select i1 %97, %struct.list* %99, %struct.list* %98, !dbg !2649
  %101 = bitcast %struct.client* %0 to i8*, !dbg !2651
  %102 = tail call %struct.listNode* @listSearchKey(%struct.list* %100, i8* %101) #8, !dbg !2652
  %103 = icmp eq %struct.listNode* %102, null, !dbg !2654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2654
  br i1 %103, label %104, label %105, !dbg !2654

; <label>:104:                                    ; preds = %94
  tail call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 922) #8, !dbg !2654
  tail call void @_exit(i32 1) #9, !dbg !2654
  unreachable

; <label>:105:                                    ; preds = %94
  tail call void @listDelNode(%struct.list* %100, %struct.listNode* nonnull %102) #8, !dbg !2655
  %106 = load i32, i32* %2, align 8, !dbg !2656, !tbaa !944
  %107 = and i32 %106, 1, !dbg !2658
  %108 = icmp eq i32 %107, 0, !dbg !2658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2659
  br i1 %108, label %116, label %109, !dbg !2659

; <label>:109:                                    ; preds = %105
  %110 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !2660, !tbaa !1035
  %111 = getelementptr inbounds %struct.list, %struct.list* %110, i64 0, i32 5, !dbg !2660
  %112 = load i64, i64* %111, align 8, !dbg !2660, !tbaa !1101
  %113 = icmp eq i64 %112, 0, !dbg !2661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2662
  br i1 %113, label %114, label %116, !dbg !2662

; <label>:114:                                    ; preds = %109
  %115 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2663, !tbaa !642
  store i64 %115, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 189), align 8, !dbg !2664, !tbaa !2665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2666
  br label %116, !dbg !2666

; <label>:116:                                    ; preds = %105, %114, %109
  tail call void @refreshGoodSlavesCount() #8, !dbg !2667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2668
  %117 = load i32, i32* %2, align 8, !dbg !2669, !tbaa !944
  br label %118, !dbg !2668

; <label>:118:                                    ; preds = %74, %116
  %119 = phi i32 [ %76, %74 ], [ %117, %116 ], !dbg !2669
  %120 = and i32 %119, 2, !dbg !2671
  %121 = icmp eq i32 %120, 0, !dbg !2671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2672
  br i1 %121, label %124, label %122, !dbg !2672

; <label>:122:                                    ; preds = %118
  tail call void @replicationHandleMasterDisconnection() #8, !dbg !2673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2673
  %123 = load i32, i32* %2, align 8, !dbg !2674, !tbaa !944
  br label %124, !dbg !2673

; <label>:124:                                    ; preds = %118, %122
  %125 = phi i32 [ %119, %118 ], [ %123, %122 ], !dbg !2674
  %126 = and i32 %125, 1024, !dbg !2676
  %127 = icmp eq i32 %126, 0, !dbg !2676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2677
  br i1 %127, label %136, label %128, !dbg !2677

; <label>:128:                                    ; preds = %124
  %129 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2678, !tbaa !1269
  %130 = bitcast %struct.client* %0 to i8*, !dbg !2680
  %131 = tail call %struct.listNode* @listSearchKey(%struct.list* %129, i8* %130) #8, !dbg !2681
  %132 = icmp eq %struct.listNode* %131, null, !dbg !2682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2682
  br i1 %132, label %133, label %134, !dbg !2682

; <label>:133:                                    ; preds = %128
  tail call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 940) #8, !dbg !2682
  tail call void @_exit(i32 1) #9, !dbg !2682
  unreachable

; <label>:134:                                    ; preds = %128
  %135 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2683, !tbaa !1269
  tail call void @listDelNode(%struct.list* %135, %struct.listNode* nonnull %131) #8, !dbg !2684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2685
  br label %136, !dbg !2685

; <label>:136:                                    ; preds = %124, %134
  %137 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 3, !dbg !2686
  %138 = load %struct.redisObject*, %struct.redisObject** %137, align 8, !dbg !2686, !tbaa !602
  %139 = icmp eq %struct.redisObject* %138, null, !dbg !2688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2689
  br i1 %139, label %141, label %140, !dbg !2689

; <label>:140:                                    ; preds = %136
  tail call void @decrRefCount(%struct.redisObject* nonnull %138) #8, !dbg !2690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2690
  br label %141, !dbg !2690

; <label>:141:                                    ; preds = %136, %140
  %142 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2691
  %143 = bitcast %struct.redisObject*** %142 to i8**, !dbg !2691
  %144 = load i8*, i8** %143, align 8, !dbg !2691, !tbaa !628
  tail call void @zfree(i8* %144) #8, !dbg !2692
  tail call void @freeClientMultiState(%struct.client* nonnull %0) #8, !dbg !2693
  %145 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 45, !dbg !2694
  %146 = load i8*, i8** %145, align 8, !dbg !2694, !tbaa !720
  tail call void @sdsfree(i8* %146) #8, !dbg !2695
  %147 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2696, !tbaa !476
  %148 = icmp eq %struct.uk_alloc* %147, null, !dbg !2709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2712
  br i1 %148, label %149, label %150, !dbg !2712, !prof !545

; <label>:149:                                    ; preds = %141
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i64 0, i64 0)) #8, !dbg !2713
  tail call void @ukplat_terminate(i32 3) #9, !dbg !2713
  unreachable

; <label>:150:                                    ; preds = %141
  %151 = bitcast %struct.client* %0 to i8*, !dbg !2715
  %152 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %147, i64 0, i32 5, !dbg !2718
  %153 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %152, align 8, !dbg !2718, !tbaa !476
  tail call void %153(%struct.uk_alloc* nonnull %147, i8* %151) #8, !dbg !2719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2721
  br label %154, !dbg !2722

; <label>:154:                                    ; preds = %150, %28, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2722
  ret void, !dbg !2722
}

; Function Attrs: noredzone nounwind
define dso_local void @unlinkClient(%struct.client*) local_unnamed_addr #0 !dbg !2724 {
  %2 = alloca i64, align 8
  %3 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !2734, !tbaa !2736
  %4 = icmp eq %struct.client* %3, %0, !dbg !2737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2738
  br i1 %4, label %5, label %6, !dbg !2738

; <label>:5:                                      ; preds = %1
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !2739, !tbaa !2736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2740
  br label %6, !dbg !2740

; <label>:6:                                      ; preds = %5, %1
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !2741
  %8 = load i32, i32* %7, align 8, !dbg !2741, !tbaa !599
  %9 = icmp eq i32 %8, -1, !dbg !2742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2743
  br i1 %9, label %10, label %12, !dbg !2743

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2744
  br label %44, !dbg !2743

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 46, !dbg !2746
  %14 = load %struct.listNode*, %struct.listNode** %13, align 8, !dbg !2746, !tbaa !455
  %15 = icmp eq %struct.listNode* %14, null, !dbg !2747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2748
  br i1 %15, label %25, label %16, !dbg !2748

; <label>:16:                                     ; preds = %12
  %17 = bitcast i64* %2 to i8*, !dbg !2749
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #5, !dbg !2749
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 0, !dbg !2750
  %19 = load i64, i64* %18, align 8, !dbg !2750, !tbaa !461
  %20 = tail call i64 @intrev64(i64 %19) #8, !dbg !2750
  store i64 %20, i64* %2, align 8, !dbg !2751, !tbaa !410
  %21 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 44), align 8, !dbg !2752, !tbaa !464
  %22 = call i32 @raxRemove(%struct.rax* %21, i8* nonnull %17, i64 8, i8** null) #8, !dbg !2753
  %23 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !2754, !tbaa !441
  %24 = load %struct.listNode*, %struct.listNode** %13, align 8, !dbg !2755, !tbaa !455
  call void @listDelNode(%struct.list* %23, %struct.listNode* %24) #8, !dbg !2756
  store %struct.listNode* null, %struct.listNode** %13, align 8, !dbg !2757, !tbaa !455
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #5, !dbg !2758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2759
  br label %25, !dbg !2759

; <label>:25:                                     ; preds = %12, %16
  %26 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2760
  %27 = load i32, i32* %26, align 8, !dbg !2760, !tbaa !944
  %28 = and i32 %27, 1, !dbg !2762
  %29 = icmp eq i32 %28, 0, !dbg !2762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2763
  br i1 %29, label %37, label %30, !dbg !2763

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !2764
  %32 = load i32, i32* %31, align 8, !dbg !2764, !tbaa !1052
  %33 = icmp eq i32 %32, 7, !dbg !2765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2766
  br i1 %33, label %34, label %37, !dbg !2766

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* %7, align 8, !dbg !2767, !tbaa !599
  %36 = call i32 @shutdown(i32 %35, i32 2) #8, !dbg !2769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2770
  br label %37, !dbg !2770

; <label>:37:                                     ; preds = %25, %34, %30
  %38 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2771, !tbaa !583
  %39 = load i32, i32* %7, align 8, !dbg !2772, !tbaa !599
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %38, i32 %39, i32 1) #8, !dbg !2773
  %40 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2774, !tbaa !583
  %41 = load i32, i32* %7, align 8, !dbg !2775, !tbaa !599
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %40, i32 %41, i32 2) #8, !dbg !2776
  %42 = load i32, i32* %7, align 8, !dbg !2777, !tbaa !599
  %43 = call i32 @close(i32 %42) #8, !dbg !2778
  store i32 -1, i32* %7, align 8, !dbg !2779, !tbaa !599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2780
  br label %44, !dbg !2780

; <label>:44:                                     ; preds = %10, %37
  %45 = phi i32* [ %11, %10 ], [ %26, %37 ], !dbg !2744
  %46 = load i32, i32* %45, align 8, !dbg !2744, !tbaa !944
  %47 = and i32 %46, 2097152, !dbg !2781
  %48 = icmp eq i32 %47, 0, !dbg !2781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2782
  br i1 %48, label %59, label %49, !dbg !2782

; <label>:49:                                     ; preds = %44
  %50 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !2783, !tbaa !1064
  %51 = bitcast %struct.client* %0 to i8*, !dbg !2785
  %52 = call %struct.listNode* @listSearchKey(%struct.list* %50, i8* %51) #8, !dbg !2786
  %53 = icmp eq %struct.listNode* %52, null, !dbg !2788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2788
  br i1 %53, label %54, label %55, !dbg !2788

; <label>:54:                                     ; preds = %49
  call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 838) #8, !dbg !2788
  call void @_exit(i32 1) #9, !dbg !2788
  unreachable

; <label>:55:                                     ; preds = %49
  %56 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !2789, !tbaa !1064
  call void @listDelNode(%struct.list* %56, %struct.listNode* nonnull %52) #8, !dbg !2790
  %57 = load i32, i32* %45, align 8, !dbg !2791, !tbaa !944
  %58 = and i32 %57, -2097153, !dbg !2791
  store i32 %58, i32* %45, align 8, !dbg !2791, !tbaa !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2792
  br label %59, !dbg !2792

; <label>:59:                                     ; preds = %44, %55
  %60 = phi i32 [ %46, %44 ], [ %58, %55 ], !dbg !2793
  %61 = trunc i32 %60 to i8, !dbg !2795
  %62 = icmp slt i8 %61, 0, !dbg !2795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2796
  br i1 %62, label %63, label %73, !dbg !2796

; <label>:63:                                     ; preds = %59
  %64 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 235), align 8, !dbg !2797, !tbaa !2799
  %65 = bitcast %struct.client* %0 to i8*, !dbg !2800
  %66 = call %struct.listNode* @listSearchKey(%struct.list* %64, i8* %65) #8, !dbg !2801
  %67 = icmp eq %struct.listNode* %66, null, !dbg !2802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2802
  br i1 %67, label %68, label %69, !dbg !2802

; <label>:68:                                     ; preds = %63
  call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 847) #8, !dbg !2802
  call void @_exit(i32 1) #9, !dbg !2802
  unreachable

; <label>:69:                                     ; preds = %63
  %70 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 235), align 8, !dbg !2803, !tbaa !2799
  call void @listDelNode(%struct.list* %70, %struct.listNode* nonnull %66) #8, !dbg !2804
  %71 = load i32, i32* %45, align 8, !dbg !2805, !tbaa !944
  %72 = and i32 %71, -129, !dbg !2805
  store i32 %72, i32* %45, align 8, !dbg !2805, !tbaa !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2806
  br label %73, !dbg !2806

; <label>:73:                                     ; preds = %69, %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2807
  ret void, !dbg !2807
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
define dso_local void @freeClientAsync(%struct.client*) local_unnamed_addr #0 !dbg !1257 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2809
  %3 = load i32, i32* %2, align 8, !dbg !2809, !tbaa !944
  %4 = and i32 %3, 1024, !dbg !2810
  %5 = icmp eq i32 %4, 0, !dbg !2810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2811
  br i1 %5, label %6, label %14, !dbg !2811

; <label>:6:                                      ; preds = %1
  %7 = and i32 %3, 256, !dbg !2812
  %8 = icmp eq i32 %7, 0, !dbg !2812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2813
  br i1 %8, label %9, label %14, !dbg !2813

; <label>:9:                                      ; preds = %6
  %10 = or i32 %3, 1024, !dbg !2814
  store i32 %10, i32* %2, align 8, !dbg !2814, !tbaa !944
  %11 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2815, !tbaa !1269
  %12 = bitcast %struct.client* %0 to i8*, !dbg !2816
  %13 = tail call %struct.list* @listAddNodeTail(%struct.list* %11, i8* %12) #8, !dbg !2817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2818
  br label %14, !dbg !2818

; <label>:14:                                     ; preds = %6, %1, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2818
  ret void, !dbg !2818
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
define dso_local void @freeClientsInAsyncFreeQueue() local_unnamed_addr #0 !dbg !2819 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2824
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2825, !tbaa !1269
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 5, !dbg !2825
  %3 = load i64, i64* %2, align 8, !dbg !2825, !tbaa !1101
  %4 = icmp eq i64 %3, 0, !dbg !2824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2824
  br i1 %4, label %20, label %5, !dbg !2824

; <label>:5:                                      ; preds = %0, %5
  %6 = phi %struct.list* [ %16, %5 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct.list, %struct.list* %6, i64 0, i32 0, !dbg !2826
  %8 = load %struct.listNode*, %struct.listNode** %7, align 8, !dbg !2826, !tbaa !2517
  %9 = getelementptr inbounds %struct.listNode, %struct.listNode* %8, i64 0, i32 2, !dbg !2828
  %10 = bitcast i8** %9 to %struct.client**, !dbg !2828
  %11 = load %struct.client*, %struct.client** %10, align 8, !dbg !2828, !tbaa !1192
  %12 = getelementptr inbounds %struct.client, %struct.client* %11, i64 0, i32 21, !dbg !2830
  %13 = load i32, i32* %12, align 8, !dbg !2831, !tbaa !944
  %14 = and i32 %13, -1025, !dbg !2831
  store i32 %14, i32* %12, align 8, !dbg !2831, !tbaa !944
  tail call void @freeClient(%struct.client* %11) #10, !dbg !2832
  %15 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2833, !tbaa !1269
  tail call void @listDelNode(%struct.list* %15, %struct.listNode* %8) #8, !dbg !2834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2824
  %16 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2825, !tbaa !1269
  %17 = getelementptr inbounds %struct.list, %struct.list* %16, i64 0, i32 5, !dbg !2825
  %18 = load i64, i64* %17, align 8, !dbg !2825, !tbaa !1101
  %19 = icmp eq i64 %18, 0, !dbg !2824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2824
  br i1 %19, label %20, label %5, !dbg !2824, !llvm.loop !2835

; <label>:20:                                     ; preds = %5, %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2837
  ret void, !dbg !2837
}

; Function Attrs: noredzone nounwind
define dso_local %struct.client* @lookupClientByID(i64) local_unnamed_addr #0 !dbg !2838 {
  %2 = alloca i64, align 8
  %3 = tail call i64 @intrev64(i64 %0) #8, !dbg !2845
  store i64 %3, i64* %2, align 8, !dbg !2846, !tbaa !410
  %4 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 44), align 8, !dbg !2847, !tbaa !464
  %5 = bitcast i64* %2 to i8*, !dbg !2848
  %6 = call i8* @raxFind(%struct.rax* %4, i8* nonnull %5, i64 8) #8, !dbg !2849
  %7 = bitcast i8* %6 to %struct.client*, !dbg !2849
  %8 = load %struct.client*, %struct.client** bitcast (i8** @raxNotFound to %struct.client**), align 8, !dbg !2851, !tbaa !476
  %9 = icmp eq %struct.client* %8, %7, !dbg !2852
  %10 = select i1 %9, %struct.client* null, %struct.client* %7, !dbg !2853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2854
  ret %struct.client* %10, !dbg !2854
}

; Function Attrs: noredzone
declare dso_local i8* @raxFind(%struct.rax*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @writeToClient(i32, %struct.client*, i32) local_unnamed_addr #0 !dbg !2855 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2871
  %4 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 47
  %5 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 15
  %6 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 16
  %7 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 17
  %8 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 21
  br label %9, !dbg !2871

; <label>:9:                                      ; preds = %100, %3
  %10 = phi i64 [ %83, %100 ], [ 0, %3 ]
  %11 = phi i64 [ %84, %100 ], [ 0, %3 ]
  br label %12, !dbg !2872

; <label>:12:                                     ; preds = %9, %50
  %13 = load i32, i32* %4, align 8, !dbg !2872, !tbaa !605
  %14 = icmp eq i32 %13, 0, !dbg !2875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2876
  br i1 %14, label %15, label %21, !dbg !2876

; <label>:15:                                     ; preds = %12
  %16 = load %struct.list*, %struct.list** %5, align 8, !dbg !2877, !tbaa !667
  %17 = getelementptr inbounds %struct.list, %struct.list* %16, i64 0, i32 5, !dbg !2877
  %18 = load i64, i64* %17, align 8, !dbg !2877, !tbaa !1101
  %19 = icmp eq i64 %18, 0, !dbg !2876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2871
  br i1 %19, label %101, label %20, !dbg !2871

; <label>:20:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  br label %40, !dbg !2879

; <label>:21:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2871
  %22 = icmp sgt i32 %13, 0, !dbg !2881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  br i1 %22, label %25, label %23, !dbg !2879

; <label>:23:                                     ; preds = %21
  %24 = load %struct.list*, %struct.list** %5, align 8, !dbg !2883, !tbaa !667
  br label %40, !dbg !2879

; <label>:25:                                     ; preds = %21
  %26 = load i64, i64* %7, align 8, !dbg !2885, !tbaa !639
  %27 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 48, i64 %26, !dbg !2887
  %28 = sext i32 %13 to i64, !dbg !2888
  %29 = sub i64 %28, %26, !dbg !2889
  %30 = tail call i64 @write(i32 %0, i8* nonnull %27, i64 %29) #8, !dbg !2890
  %31 = icmp slt i64 %30, 1, !dbg !2891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2893
  br i1 %31, label %101, label %32, !dbg !2893

; <label>:32:                                     ; preds = %25
  %33 = load i64, i64* %7, align 8, !dbg !2894, !tbaa !639
  %34 = add i64 %33, %30, !dbg !2894
  store i64 %34, i64* %7, align 8, !dbg !2894, !tbaa !639
  %35 = add nsw i64 %30, %10, !dbg !2895
  %36 = trunc i64 %34 to i32, !dbg !2896
  %37 = load i32, i32* %4, align 8, !dbg !2898, !tbaa !605
  %38 = icmp eq i32 %37, %36, !dbg !2899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2900
  br i1 %38, label %39, label %82, !dbg !2900

; <label>:39:                                     ; preds = %32
  store i32 0, i32* %4, align 8, !dbg !2901, !tbaa !605
  store i64 0, i64* %7, align 8, !dbg !2903, !tbaa !639
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2904
  br label %82, !dbg !2904

; <label>:40:                                     ; preds = %23, %20
  %41 = phi %struct.list* [ %24, %23 ], [ %16, %20 ], !dbg !2883
  %42 = getelementptr inbounds %struct.list, %struct.list* %41, i64 0, i32 0, !dbg !2883
  %43 = load %struct.listNode*, %struct.listNode** %42, align 8, !dbg !2883, !tbaa !2517
  %44 = getelementptr inbounds %struct.listNode, %struct.listNode* %43, i64 0, i32 2, !dbg !2883
  %45 = bitcast i8** %44 to %struct.clientReplyBlock**, !dbg !2883
  %46 = load %struct.clientReplyBlock*, %struct.clientReplyBlock** %45, align 8, !dbg !2883, !tbaa !1192
  %47 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %46, i64 0, i32 1, !dbg !2906
  %48 = load i64, i64* %47, align 8, !dbg !2906, !tbaa !410
  %49 = icmp eq i64 %48, 0, !dbg !2908
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2910
  br i1 %49, label %50, label %55, !dbg !2910

; <label>:50:                                     ; preds = %40
  %51 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %46, i64 0, i32 0, !dbg !2911
  %52 = load i64, i64* %51, align 8, !dbg !2911, !tbaa !410
  %53 = load i64, i64* %6, align 8, !dbg !2913, !tbaa !670
  %54 = sub i64 %53, %52, !dbg !2913
  store i64 %54, i64* %6, align 8, !dbg !2913, !tbaa !670
  tail call void @listDelNode(%struct.list* %41, %struct.listNode* %43) #8, !dbg !2914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2915
  br label %12, !dbg !2915, !llvm.loop !2916

; <label>:55:                                     ; preds = %40
  %56 = load i64, i64* %7, align 8, !dbg !2918, !tbaa !639
  %57 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %46, i64 0, i32 2, i64 %56, !dbg !2919
  %58 = sub i64 %48, %56, !dbg !2920
  %59 = tail call i64 @write(i32 %0, i8* nonnull %57, i64 %58) #8, !dbg !2921
  %60 = icmp slt i64 %59, 1, !dbg !2922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2924
  br i1 %60, label %101, label %61, !dbg !2924

; <label>:61:                                     ; preds = %55
  %62 = load i64, i64* %7, align 8, !dbg !2925, !tbaa !639
  %63 = add i64 %62, %59, !dbg !2925
  store i64 %63, i64* %7, align 8, !dbg !2925, !tbaa !639
  %64 = add nsw i64 %59, %10, !dbg !2926
  %65 = icmp eq i64 %63, %48, !dbg !2927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2929
  br i1 %65, label %66, label %82, !dbg !2929

; <label>:66:                                     ; preds = %61
  %67 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %46, i64 0, i32 0, !dbg !2930
  %68 = load i64, i64* %67, align 8, !dbg !2930, !tbaa !410
  %69 = load i64, i64* %6, align 8, !dbg !2932, !tbaa !670
  %70 = sub i64 %69, %68, !dbg !2932
  store i64 %70, i64* %6, align 8, !dbg !2932, !tbaa !670
  %71 = load %struct.list*, %struct.list** %5, align 8, !dbg !2933, !tbaa !667
  %72 = getelementptr inbounds %struct.list, %struct.list* %71, i64 0, i32 0, !dbg !2934
  %73 = load %struct.listNode*, %struct.listNode** %72, align 8, !dbg !2934, !tbaa !2517
  tail call void @listDelNode(%struct.list* %71, %struct.listNode* %73) #8, !dbg !2935
  store i64 0, i64* %7, align 8, !dbg !2936, !tbaa !639
  %74 = load %struct.list*, %struct.list** %5, align 8, !dbg !2937, !tbaa !667
  %75 = getelementptr inbounds %struct.list, %struct.list* %74, i64 0, i32 5, !dbg !2937
  %76 = load i64, i64* %75, align 8, !dbg !2937, !tbaa !1101
  %77 = icmp eq i64 %76, 0, !dbg !2939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2940
  br i1 %77, label %78, label %82, !dbg !2940

; <label>:78:                                     ; preds = %66
  %79 = load i64, i64* %6, align 8, !dbg !2941, !tbaa !670
  %80 = icmp eq i64 %79, 0, !dbg !2941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2941
  br i1 %80, label %82, label %81, !dbg !2941

; <label>:81:                                     ; preds = %78
  tail call void @_serverAssert(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1026) #8, !dbg !2941
  tail call void @_exit(i32 1) #9, !dbg !2941
  unreachable

; <label>:82:                                     ; preds = %61, %78, %66, %32, %39
  %83 = phi i64 [ %35, %39 ], [ %35, %32 ], [ %64, %78 ], [ %64, %66 ], [ %64, %61 ], !dbg !2942
  %84 = phi i64 [ %30, %39 ], [ %30, %32 ], [ %59, %78 ], [ %59, %66 ], [ %59, %61 ], !dbg !2942
  %85 = icmp sgt i64 %83, 65536, !dbg !2943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2945
  br i1 %85, label %86, label %100, !dbg !2945

; <label>:86:                                     ; preds = %82
  %87 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !2946, !tbaa !2947
  %88 = icmp eq i64 %87, 0, !dbg !2948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2949
  br i1 %88, label %93, label %89, !dbg !2949

; <label>:89:                                     ; preds = %86
  %90 = tail call i64 @zmalloc_used_memory() #8, !dbg !2950
  %91 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !2951, !tbaa !2947
  %92 = icmp ult i64 %90, %91, !dbg !2952
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2953
  br i1 %92, label %93, label %100, !dbg !2953

; <label>:93:                                     ; preds = %89, %86
  %94 = load i32, i32* %8, align 8, !dbg !2954, !tbaa !944
  %95 = and i32 %94, 1, !dbg !2955
  %96 = icmp eq i32 %95, 0, !dbg !2955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2956
  br i1 %96, label %97, label %100, !dbg !2956

; <label>:97:                                     ; preds = %93
  %98 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !2957, !tbaa !2958
  %99 = add nsw i64 %98, %83, !dbg !2957
  store i64 %99, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !2957, !tbaa !2958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2960
  br label %119, !dbg !2960

; <label>:100:                                    ; preds = %93, %89, %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2871
  br label %9, !dbg !2871, !llvm.loop !2916

; <label>:101:                                    ; preds = %55, %25, %15
  %102 = phi i64 [ %11, %15 ], [ %30, %25 ], [ %59, %55 ], !dbg !2961
  %103 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !2957, !tbaa !2958
  %104 = add nsw i64 %103, %10, !dbg !2957
  store i64 %104, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !2957, !tbaa !2958
  %105 = icmp eq i64 %102, -1, !dbg !2962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2959
  br i1 %105, label %106, label %115, !dbg !2959

; <label>:106:                                    ; preds = %101
  %107 = tail call i32* @__errno() #8, !dbg !2964
  %108 = load i32, i32* %107, align 4, !dbg !2964, !tbaa !549
  %109 = icmp eq i32 %108, 11, !dbg !2967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2968
  br i1 %109, label %110, label %111, !dbg !2968

; <label>:110:                                    ; preds = %106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2969
  br label %115, !dbg !2969

; <label>:111:                                    ; preds = %106
  %112 = tail call i32* @__errno() #8, !dbg !2970
  %113 = load i32, i32* %112, align 4, !dbg !2970, !tbaa !549
  %114 = tail call i8* @strerror(i32 %113) #8, !dbg !2972
  tail call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i8* %114) #8, !dbg !2973
  tail call void @freeClient(%struct.client* nonnull %1) #10, !dbg !2974
  br label %146, !dbg !2975

; <label>:115:                                    ; preds = %110, %101
  %116 = icmp sgt i64 %10, 0, !dbg !2976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2960
  br i1 %116, label %117, label %126, !dbg !2960

; <label>:117:                                    ; preds = %115
  %118 = load i32, i32* %8, align 8, !dbg !2978, !tbaa !944
  br label %119, !dbg !2960

; <label>:119:                                    ; preds = %117, %97
  %120 = phi i32 [ %118, %117 ], [ %94, %97 ], !dbg !2978
  %121 = and i32 %120, 2, !dbg !2981
  %122 = icmp eq i32 %121, 0, !dbg !2981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2982
  br i1 %122, label %123, label %126, !dbg !2982

; <label>:123:                                    ; preds = %119
  %124 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2983, !tbaa !642
  %125 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 19, !dbg !2984
  store i64 %124, i64* %125, align 8, !dbg !2985, !tbaa !645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2986
  br label %126, !dbg !2986

; <label>:126:                                    ; preds = %119, %123, %115
  %127 = load i32, i32* %4, align 8, !dbg !2990, !tbaa !605
  %128 = icmp eq i32 %127, 0, !dbg !2991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2992
  br i1 %128, label %130, label %129, !dbg !2992

; <label>:129:                                    ; preds = %126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2994
  br label %146, !dbg !2994

; <label>:130:                                    ; preds = %126
  %131 = load %struct.list*, %struct.list** %5, align 8, !dbg !2995, !tbaa !667
  %132 = getelementptr inbounds %struct.list, %struct.list* %131, i64 0, i32 5, !dbg !2995
  %133 = load i64, i64* %132, align 8, !dbg !2995, !tbaa !1101
  %134 = icmp eq i64 %133, 0, !dbg !2992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2993
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2994
  br i1 %134, label %135, label %146, !dbg !2994

; <label>:135:                                    ; preds = %130
  store i64 0, i64* %7, align 8, !dbg !2996, !tbaa !639
  %136 = icmp eq i32 %2, 0, !dbg !2998
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3000
  br i1 %136, label %141, label %137, !dbg !3000

; <label>:137:                                    ; preds = %135
  %138 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3001, !tbaa !583
  %139 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 1, !dbg !3002
  %140 = load i32, i32* %139, align 8, !dbg !3002, !tbaa !599
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %138, i32 %140, i32 2) #8, !dbg !3003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3003
  br label %141, !dbg !3003

; <label>:141:                                    ; preds = %135, %137
  %142 = load i32, i32* %8, align 8, !dbg !3004, !tbaa !944
  %143 = and i32 %142, 64, !dbg !3006
  %144 = icmp eq i32 %143, 0, !dbg !3006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3007
  br i1 %144, label %146, label %145, !dbg !3007

; <label>:145:                                    ; preds = %141
  tail call void @freeClient(%struct.client* nonnull %1) #10, !dbg !3008
  br label %146, !dbg !3010

; <label>:146:                                    ; preds = %130, %141, %129, %145, %111
  %147 = phi i32 [ -1, %145 ], [ -1, %111 ], [ 0, %129 ], [ 0, %141 ], [ 0, %130 ], !dbg !3011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3012
  ret i32 %147, !dbg !3012
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @zmalloc_used_memory() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strerror(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @sendReplyToClient(%struct.aeEventLoop* nocapture readnone, i32, i8*, i32) #0 !dbg !3013 {
  %5 = bitcast i8* %2 to %struct.client*, !dbg !3023
  %6 = tail call i32 @writeToClient(i32 %1, %struct.client* %5, i32 1) #10, !dbg !3024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3025
  ret void, !dbg !3025
}

; Function Attrs: noredzone nounwind
define dso_local i32 @handleClientsWithPendingWrites() local_unnamed_addr #0 !dbg !3026 {
  %1 = alloca %struct.listIter, align 8
  %2 = bitcast %struct.listIter* %1 to i8*, !dbg !3043
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #5, !dbg !3043
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !3044, !tbaa !1064
  %4 = getelementptr inbounds %struct.list, %struct.list* %3, i64 0, i32 5, !dbg !3044
  %5 = load i64, i64* %4, align 8, !dbg !3044, !tbaa !1101
  %6 = trunc i64 %5 to i32, !dbg !3044
  call void @listRewind(%struct.list* %3, %struct.listIter* nonnull %1) #8, !dbg !3047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3048
  %7 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !3049
  %8 = icmp eq %struct.listNode* %7, null, !dbg !3048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3048
  br i1 %8, label %70, label %9, !dbg !3048

; <label>:9:                                      ; preds = %0, %67
  %10 = phi %struct.listNode* [ %68, %67 ], [ %7, %0 ]
  %11 = getelementptr inbounds %struct.listNode, %struct.listNode* %10, i64 0, i32 2, !dbg !3051
  %12 = load i8*, i8** %11, align 8, !dbg !3051, !tbaa !1192
  %13 = getelementptr inbounds i8, i8* %12, i64 160, !dbg !3052
  %14 = bitcast i8* %13 to i32*, !dbg !3052
  %15 = load i32, i32* %14, align 8, !dbg !3053, !tbaa !944
  %16 = and i32 %15, -2097153, !dbg !3053
  store i32 %16, i32* %14, align 8, !dbg !3053, !tbaa !944
  %17 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !3054, !tbaa !1064
  call void @listDelNode(%struct.list* %17, %struct.listNode* nonnull %10) #8, !dbg !3055
  %18 = load i32, i32* %14, align 8, !dbg !3056, !tbaa !944
  %19 = and i32 %18, 268435456, !dbg !3058
  %20 = icmp eq i32 %19, 0, !dbg !3058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3059
  br i1 %20, label %21, label %67, !dbg !3059, !llvm.loop !3060

; <label>:21:                                     ; preds = %9
  %22 = bitcast i8* %12 to %struct.client*, !dbg !3051
  %23 = getelementptr inbounds i8, i8* %12, i64 8, !dbg !3063
  %24 = bitcast i8* %23 to i32*, !dbg !3063
  %25 = load i32, i32* %24, align 8, !dbg !3063, !tbaa !599
  %26 = call i32 @writeToClient(i32 %25, %struct.client* %22, i32 0) #10, !dbg !3065
  %27 = icmp eq i32 %26, -1, !dbg !3066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3067
  br i1 %27, label %67, label %28, !dbg !3067, !llvm.loop !3060

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds i8, i8* %12, i64 528, !dbg !3070
  %30 = bitcast i8* %29 to i32*, !dbg !3070
  %31 = load i32, i32* %30, align 8, !dbg !3070, !tbaa !605
  %32 = icmp eq i32 %31, 0, !dbg !3071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3072
  br i1 %32, label %34, label %33, !dbg !3072

; <label>:33:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3074
  br label %41, !dbg !3074

; <label>:34:                                     ; preds = %28
  %35 = getelementptr inbounds i8, i8* %12, i64 112, !dbg !3075
  %36 = bitcast i8* %35 to %struct.list**, !dbg !3075
  %37 = load %struct.list*, %struct.list** %36, align 8, !dbg !3075, !tbaa !667
  %38 = getelementptr inbounds %struct.list, %struct.list* %37, i64 0, i32 5, !dbg !3075
  %39 = load i64, i64* %38, align 8, !dbg !3075, !tbaa !1101
  %40 = icmp eq i64 %39, 0, !dbg !3072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3074
  br i1 %40, label %67, label %41, !dbg !3074

; <label>:41:                                     ; preds = %33, %34
  %42 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !3077, !tbaa !3079
  %43 = icmp eq i32 %42, 1, !dbg !3080
  %44 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !3081
  %45 = icmp eq i32 %44, 1, !dbg !3082
  %46 = and i1 %43, %45, !dbg !3083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3083
  br i1 %46, label %47, label %48, !dbg !3083

; <label>:47:                                     ; preds = %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3084
  br label %48, !dbg !3084

; <label>:48:                                     ; preds = %47, %41
  %49 = phi i32 [ 6, %47 ], [ 2, %41 ], !dbg !3086
  %50 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3087, !tbaa !583
  %51 = load i32, i32* %24, align 8, !dbg !3089, !tbaa !599
  %52 = call i32 @aeCreateFileEvent(%struct.aeEventLoop* %50, i32 %51, i32 %49, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @sendReplyToClient, i8* nonnull %12) #8, !dbg !3090
  %53 = icmp eq i32 %52, -1, !dbg !3091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3092
  br i1 %53, label %54, label %66, !dbg !3092

; <label>:54:                                     ; preds = %48
  %55 = load i32, i32* %14, align 8, !dbg !3096, !tbaa !944
  %56 = and i32 %55, 1024, !dbg !3097
  %57 = icmp eq i32 %56, 0, !dbg !3097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3098
  br i1 %57, label %58, label %65, !dbg !3098

; <label>:58:                                     ; preds = %54
  %59 = and i32 %55, 256, !dbg !3099
  %60 = icmp eq i32 %59, 0, !dbg !3099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3100
  br i1 %60, label %61, label %65, !dbg !3100

; <label>:61:                                     ; preds = %58
  %62 = or i32 %55, 1024, !dbg !3101
  store i32 %62, i32* %14, align 8, !dbg !3101, !tbaa !944
  %63 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !3102, !tbaa !1269
  %64 = call %struct.list* @listAddNodeTail(%struct.list* %63, i8* nonnull %12) #8, !dbg !3103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3104
  br label %65, !dbg !3104

; <label>:65:                                     ; preds = %54, %58, %61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3105
  br label %66, !dbg !3105

; <label>:66:                                     ; preds = %65, %48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3106
  br label %67, !dbg !3106

; <label>:67:                                     ; preds = %66, %34, %21, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3107
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %68 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !3049
  %69 = icmp eq %struct.listNode* %68, null, !dbg !3048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3048
  br i1 %69, label %70, label %9, !dbg !3048

; <label>:70:                                     ; preds = %67, %0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #5, !dbg !3108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3109
  ret i32 %6, !dbg !3109
}

; Function Attrs: noredzone
declare dso_local void @listRewind(%struct.list*, %struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listNext(%struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @resetClient(%struct.client* nocapture) local_unnamed_addr #0 !dbg !3110 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !3115
  %3 = load %struct.redisCommand*, %struct.redisCommand** %2, align 8, !dbg !3115, !tbaa !2622
  %4 = icmp eq %struct.redisCommand* %3, null, !dbg !3116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3116
  br i1 %4, label %9, label %5, !dbg !3116

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %3, i64 0, i32 1, !dbg !3117
  %7 = load void (%struct.client*)*, void (%struct.client*)** %6, align 8, !dbg !3117, !tbaa !3118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3116
  %8 = icmp ne void (%struct.client*)* %7, @askingCommand, !dbg !3116
  br label %9, !dbg !3116

; <label>:9:                                      ; preds = %1, %5
  %10 = phi i1 [ %8, %5 ], [ true, %1 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3122
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3123
  %12 = load i32, i32* %11, align 8, !dbg !3123, !tbaa !625
  %13 = icmp sgt i32 %12, 0, !dbg !3124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3125
  br i1 %13, label %14, label %25, !dbg !3125

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %16, !dbg !3125

; <label>:16:                                     ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %21, %16 ]
  %18 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !3126, !tbaa !628
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 %17, !dbg !3127
  %20 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !3127, !tbaa !476
  tail call void @decrRefCount(%struct.redisObject* %20) #8, !dbg !3128
  %21 = add nuw nsw i64 %17, 1, !dbg !3129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3130
  %22 = load i32, i32* %11, align 8, !dbg !3123, !tbaa !625
  %23 = sext i32 %22 to i64, !dbg !3124
  %24 = icmp slt i64 %21, %23, !dbg !3124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3125
  br i1 %24, label %16, label %25, !dbg !3125, !llvm.loop !2616

; <label>:25:                                     ; preds = %16, %9
  store i32 0, i32* %11, align 8, !dbg !3131, !tbaa !625
  store %struct.redisCommand* null, %struct.redisCommand** %2, align 8, !dbg !3132, !tbaa !2622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3133
  %26 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 12, !dbg !3134
  store i32 0, i32* %26, align 8, !dbg !3135, !tbaa !622
  %27 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 13, !dbg !3136
  store i32 0, i32* %27, align 4, !dbg !3137, !tbaa !633
  %28 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 14, !dbg !3138
  store i64 -1, i64* %28, align 8, !dbg !3139, !tbaa !636
  %29 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3140
  %30 = load i32, i32* %29, align 8, !dbg !3140, !tbaa !944
  %31 = and i32 %30, 8, !dbg !3142
  %32 = icmp eq i32 %31, 0, !dbg !3142
  %33 = and i1 %10, %32, !dbg !3143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3143
  br i1 %33, label %34, label %36, !dbg !3143

; <label>:34:                                     ; preds = %25
  %35 = and i32 %30, -513, !dbg !3144
  store i32 %35, i32* %29, align 8, !dbg !3144, !tbaa !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3145
  br label %36, !dbg !3145

; <label>:36:                                     ; preds = %25, %34
  %37 = phi i32 [ %30, %25 ], [ %35, %34 ], !dbg !3146
  %38 = and i32 %37, -16777217, !dbg !3146
  store i32 %38, i32* %29, align 8, !dbg !3146, !tbaa !944
  %39 = and i32 %37, 8388608, !dbg !3147
  %40 = icmp eq i32 %39, 0, !dbg !3147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3149
  br i1 %40, label %44, label %41, !dbg !3149

; <label>:41:                                     ; preds = %36
  %42 = and i32 %37, -25165825, !dbg !3150
  %43 = or i32 %42, 16777216, !dbg !3150
  store i32 %43, i32* %29, align 8, !dbg !3150, !tbaa !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3152
  br label %44, !dbg !3152

; <label>:44:                                     ; preds = %36, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3153
  ret void, !dbg !3153
}

; Function Attrs: noredzone
declare dso_local void @askingCommand(%struct.client*) #3

; Function Attrs: noredzone nounwind
define dso_local void @protectClient(%struct.client* nocapture) local_unnamed_addr #0 !dbg !3154 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3158
  %3 = load i32, i32* %2, align 8, !dbg !3159, !tbaa !944
  %4 = or i32 %3, 268435456, !dbg !3159
  store i32 %4, i32* %2, align 8, !dbg !3159, !tbaa !944
  %5 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3160, !tbaa !583
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !3161
  %7 = load i32, i32* %6, align 8, !dbg !3161, !tbaa !599
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %5, i32 %7, i32 1) #8, !dbg !3162
  %8 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3163, !tbaa !583
  %9 = load i32, i32* %6, align 8, !dbg !3164, !tbaa !599
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %8, i32 %9, i32 2) #8, !dbg !3165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3166
  ret void, !dbg !3166
}

; Function Attrs: noredzone nounwind
define dso_local void @unprotectClient(%struct.client*) local_unnamed_addr #0 !dbg !3167 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3171
  %3 = load i32, i32* %2, align 8, !dbg !3171, !tbaa !944
  %4 = and i32 %3, 268435456, !dbg !3173
  %5 = icmp eq i32 %4, 0, !dbg !3173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3174
  br i1 %5, label %42, label %6, !dbg !3174

; <label>:6:                                      ; preds = %1
  %7 = and i32 %3, -268435457, !dbg !3175
  store i32 %7, i32* %2, align 8, !dbg !3175, !tbaa !944
  %8 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3177, !tbaa !583
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !3178
  %10 = load i32, i32* %9, align 8, !dbg !3178, !tbaa !599
  %11 = bitcast %struct.client* %0 to i8*, !dbg !3179
  %12 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* %8, i32 %10, i32 1, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @readQueryFromClient, i8* %11) #8, !dbg !3180
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !3184
  %14 = load i32, i32* %13, align 8, !dbg !3184, !tbaa !605
  %15 = icmp eq i32 %14, 0, !dbg !3185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3186
  br i1 %15, label %17, label %16, !dbg !3186

; <label>:16:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3188
  br label %23, !dbg !3188

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !3189
  %19 = load %struct.list*, %struct.list** %18, align 8, !dbg !3189, !tbaa !667
  %20 = getelementptr inbounds %struct.list, %struct.list* %19, i64 0, i32 5, !dbg !3189
  %21 = load i64, i64* %20, align 8, !dbg !3189, !tbaa !1101
  %22 = icmp eq i64 %21, 0, !dbg !3186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3188
  br i1 %22, label %42, label %23, !dbg !3188

; <label>:23:                                     ; preds = %16, %17
  %24 = load i32, i32* %2, align 8, !dbg !3192, !tbaa !944
  %25 = and i32 %24, 2097152, !dbg !3193
  %26 = icmp eq i32 %25, 0, !dbg !3193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3194
  br i1 %26, label %27, label %41, !dbg !3194

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !3195
  %29 = load i32, i32* %28, align 8, !dbg !3195, !tbaa !1052
  %30 = icmp eq i32 %29, 0, !dbg !3196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3197
  br i1 %30, label %37, label %31, !dbg !3197

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i32 %29, 9, !dbg !3198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3199
  br i1 %32, label %33, label %41, !dbg !3199

; <label>:33:                                     ; preds = %31
  %34 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !3200
  %35 = load i32, i32* %34, align 4, !dbg !3200, !tbaa !1058
  %36 = icmp eq i32 %35, 0, !dbg !3201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3202
  br i1 %36, label %37, label %41, !dbg !3202

; <label>:37:                                     ; preds = %33, %27
  %38 = or i32 %24, 2097152, !dbg !3203
  store i32 %38, i32* %2, align 8, !dbg !3203, !tbaa !944
  %39 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !3204, !tbaa !1064
  %40 = tail call %struct.list* @listAddNodeHead(%struct.list* %39, i8* nonnull %11) #8, !dbg !3205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3206
  br label %41, !dbg !3206

; <label>:41:                                     ; preds = %23, %31, %33, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3208
  br label %42, !dbg !3208

; <label>:42:                                     ; preds = %17, %1, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3209
  ret void, !dbg !3209
}

; Function Attrs: noredzone nounwind
define dso_local i32 @processInlineBuffer(%struct.client*) local_unnamed_addr #0 !dbg !3210 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !3222
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5, !dbg !3222
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 4, !dbg !3224
  %5 = load i8*, i8** %4, align 8, !dbg !3224, !tbaa !612
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 5, !dbg !3225
  %7 = load i64, i64* %6, align 8, !dbg !3225, !tbaa !608
  %8 = getelementptr inbounds i8, i8* %5, i64 %7, !dbg !3226
  %9 = tail call i8* @strchr(i8* %8, i32 10) #8, !dbg !3227
  %10 = icmp eq i8* %9, null, !dbg !3229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3231
  br i1 %10, label %11, label %44, !dbg !3231

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %4, align 8, !dbg !3232, !tbaa !612
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !3237
  %14 = load i8, i8* %13, align 1, !dbg !3237, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3239
  %15 = trunc i8 %14 to i3, !dbg !3239
  switch i3 %15, label %37 [
    i3 0, label %16
    i3 1, label %19
    i3 2, label %23
    i3 3, label %28
    i3 -4, label %33
  ], !dbg !3239

; <label>:16:                                     ; preds = %11
  %17 = lshr i8 %14, 3, !dbg !3240
  %18 = zext i8 %17 to i64, !dbg !3240
  br label %37, !dbg !3241

; <label>:19:                                     ; preds = %11
  %20 = getelementptr inbounds i8, i8* %12, i64 -3, !dbg !3242
  %21 = load i8, i8* %20, align 1, !dbg !3243, !tbaa !660
  %22 = zext i8 %21 to i64, !dbg !3242
  br label %37, !dbg !3244

; <label>:23:                                     ; preds = %11
  %24 = getelementptr inbounds i8, i8* %12, i64 -5, !dbg !3245
  %25 = bitcast i8* %24 to i16*, !dbg !3246
  %26 = load i16, i16* %25, align 1, !dbg !3246, !tbaa !862
  %27 = zext i16 %26 to i64, !dbg !3245
  br label %37, !dbg !3247

; <label>:28:                                     ; preds = %11
  %29 = getelementptr inbounds i8, i8* %12, i64 -9, !dbg !3248
  %30 = bitcast i8* %29 to i32*, !dbg !3249
  %31 = load i32, i32* %30, align 1, !dbg !3249, !tbaa !549
  %32 = zext i32 %31 to i64, !dbg !3248
  br label %37, !dbg !3250

; <label>:33:                                     ; preds = %11
  %34 = getelementptr inbounds i8, i8* %12, i64 -17, !dbg !3251
  %35 = bitcast i8* %34 to i64*, !dbg !3252
  %36 = load i64, i64* %35, align 1, !dbg !3252, !tbaa !410
  br label %37, !dbg !3253

; <label>:37:                                     ; preds = %11, %16, %19, %23, %28, %33
  %38 = phi i64 [ %36, %33 ], [ %32, %28 ], [ %27, %23 ], [ %22, %19 ], [ %18, %16 ], [ 0, %11 ], !dbg !3254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3256
  %39 = load i64, i64* %6, align 8, !dbg !3257, !tbaa !608
  %40 = sub i64 %38, %39, !dbg !3258
  %41 = icmp ugt i64 %40, 65536, !dbg !3259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3260
  br i1 %41, label %42, label %154, !dbg !3260

; <label>:42:                                     ; preds = %37
  %43 = tail call i64 @strlen(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0)) #8, !dbg !3265
  tail call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i64 %43) #8, !dbg !3266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3267
  tail call fastcc void @setProtocolError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0), %struct.client* nonnull %0) #10, !dbg !3268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3269
  br label %154, !dbg !3269

; <label>:44:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3270
  %45 = load i8*, i8** %4, align 8, !dbg !3272, !tbaa !612
  %46 = load i64, i64* %6, align 8, !dbg !3273, !tbaa !608
  %47 = getelementptr inbounds i8, i8* %45, i64 %46, !dbg !3274
  %48 = icmp eq i8* %9, %47, !dbg !3275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3276
  br i1 %48, label %54, label %49, !dbg !3276

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !3277
  %51 = load i8, i8* %50, align 1, !dbg !3278, !tbaa !660
  %52 = icmp eq i8 %51, 13, !dbg !3279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3280
  br i1 %52, label %53, label %54, !dbg !3280

; <label>:53:                                     ; preds = %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3281
  br label %54, !dbg !3281

; <label>:54:                                     ; preds = %44, %53, %49
  %55 = phi i64 [ 2, %53 ], [ 1, %49 ], [ 1, %44 ]
  %56 = phi i8* [ %50, %53 ], [ %9, %49 ], [ %9, %44 ], !dbg !3282
  %57 = ptrtoint i8* %56 to i64, !dbg !3283
  %58 = ptrtoint i8* %47 to i64, !dbg !3283
  %59 = sub i64 %57, %58, !dbg !3283
  %60 = tail call i8* @sdsnewlen(i8* %47, i64 %59) #8, !dbg !3285
  %61 = call i8** @sdssplitargs(i8* %60, i32* nonnull %2) #8, !dbg !3288
  call void @sdsfree(i8* %60) #8, !dbg !3290
  %62 = icmp eq i8** %61, null, !dbg !3291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3293
  br i1 %62, label %63, label %65, !dbg !3293

; <label>:63:                                     ; preds = %54
  %64 = call i64 @strlen(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i64 0, i64 0)) #8, !dbg !3298
  call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i64 0, i64 0), i64 %64) #8, !dbg !3299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3300
  call fastcc void @setProtocolError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0), %struct.client* nonnull %0) #10, !dbg !3301
  br label %154, !dbg !3302

; <label>:65:                                     ; preds = %54
  %66 = icmp eq i64 %59, 0, !dbg !3303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3305
  br i1 %66, label %67, label %75, !dbg !3305

; <label>:67:                                     ; preds = %65
  %68 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3306
  %69 = load i32, i32* %68, align 8, !dbg !3306, !tbaa !944
  %70 = and i32 %69, 1, !dbg !3307
  %71 = icmp eq i32 %70, 0, !dbg !3307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3308
  br i1 %71, label %75, label %72, !dbg !3308

; <label>:72:                                     ; preds = %67
  %73 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3309, !tbaa !642
  %74 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 32, !dbg !3310
  store i64 %73, i64* %74, align 8, !dbg !3311, !tbaa !3312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3313
  br label %75, !dbg !3313

; <label>:75:                                     ; preds = %67, %72, %65
  %76 = add i64 %59, %55, !dbg !3314
  %77 = load i64, i64* %6, align 8, !dbg !3315, !tbaa !608
  %78 = add i64 %76, %77, !dbg !3315
  store i64 %78, i64* %6, align 8, !dbg !3315, !tbaa !608
  %79 = load i32, i32* %2, align 4, !dbg !3316, !tbaa !549
  %80 = icmp eq i32 %79, 0, !dbg !3316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3318
  br i1 %80, label %81, label %83, !dbg !3318

; <label>:81:                                     ; preds = %75
  %82 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3319
  store i32 0, i32* %82, align 8, !dbg !3321, !tbaa !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3324
  br label %146, !dbg !3324

; <label>:83:                                     ; preds = %75
  %84 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3325
  %85 = load %struct.redisObject**, %struct.redisObject*** %84, align 8, !dbg !3325, !tbaa !628
  %86 = icmp eq %struct.redisObject** %85, null, !dbg !3328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  br i1 %86, label %90, label %87, !dbg !3329

; <label>:87:                                     ; preds = %83
  %88 = bitcast %struct.redisObject** %85 to i8*, !dbg !3330
  call void @zfree(i8* %88) #8, !dbg !3331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3331
  %89 = load i32, i32* %2, align 4, !dbg !3332, !tbaa !549
  br label %90, !dbg !3331

; <label>:90:                                     ; preds = %87, %83
  %91 = phi i32 [ %79, %83 ], [ %89, %87 ], !dbg !3332
  %92 = sext i32 %91 to i64, !dbg !3332
  %93 = shl nsw i64 %92, 3, !dbg !3333
  %94 = call i8* @zmalloc(i64 %93) #8, !dbg !3334
  %95 = bitcast %struct.redisObject*** %84 to i8**, !dbg !3335
  store i8* %94, i8** %95, align 8, !dbg !3335, !tbaa !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3336
  %96 = load i32, i32* %2, align 4, !dbg !3337, !tbaa !549
  %97 = icmp sgt i32 %96, 0, !dbg !3336
  %98 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3319
  store i32 0, i32* %98, align 8, !dbg !3321, !tbaa !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3324
  br i1 %97, label %99, label %146, !dbg !3324

; <label>:99:                                     ; preds = %90
  %100 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %101, !dbg !3324

; <label>:101:                                    ; preds = %99, %141
  %102 = phi i64 [ 0, %99 ], [ %142, %141 ]
  %103 = getelementptr inbounds i8*, i8** %61, i64 %102, !dbg !3339
  %104 = load i8*, i8** %103, align 8, !dbg !3339, !tbaa !476
  %105 = getelementptr inbounds i8, i8* %104, i64 -1, !dbg !3344
  %106 = load i8, i8* %105, align 1, !dbg !3344, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3346
  %107 = trunc i8 %106 to i3, !dbg !3346
  switch i3 %107, label %129 [
    i3 0, label %108
    i3 1, label %111
    i3 2, label %115
    i3 3, label %120
    i3 -4, label %125
  ], !dbg !3346

; <label>:108:                                    ; preds = %101
  %109 = lshr i8 %106, 3, !dbg !3347
  %110 = zext i8 %109 to i64, !dbg !3347
  br label %130, !dbg !3348

; <label>:111:                                    ; preds = %101
  %112 = getelementptr inbounds i8, i8* %104, i64 -3, !dbg !3349
  %113 = load i8, i8* %112, align 1, !dbg !3350, !tbaa !660
  %114 = zext i8 %113 to i64, !dbg !3349
  br label %130, !dbg !3351

; <label>:115:                                    ; preds = %101
  %116 = getelementptr inbounds i8, i8* %104, i64 -5, !dbg !3352
  %117 = bitcast i8* %116 to i16*, !dbg !3353
  %118 = load i16, i16* %117, align 1, !dbg !3353, !tbaa !862
  %119 = zext i16 %118 to i64, !dbg !3352
  br label %130, !dbg !3354

; <label>:120:                                    ; preds = %101
  %121 = getelementptr inbounds i8, i8* %104, i64 -9, !dbg !3355
  %122 = bitcast i8* %121 to i32*, !dbg !3356
  %123 = load i32, i32* %122, align 1, !dbg !3356, !tbaa !549
  %124 = zext i32 %123 to i64, !dbg !3355
  br label %130, !dbg !3357

; <label>:125:                                    ; preds = %101
  %126 = getelementptr inbounds i8, i8* %104, i64 -17, !dbg !3358
  %127 = bitcast i8* %126 to i64*, !dbg !3359
  %128 = load i64, i64* %127, align 1, !dbg !3359, !tbaa !410
  br label %130, !dbg !3360

; <label>:129:                                    ; preds = %101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3363
  br label %140, !dbg !3363

; <label>:130:                                    ; preds = %108, %111, %115, %120, %125
  %131 = phi i64 [ %128, %125 ], [ %124, %120 ], [ %119, %115 ], [ %114, %111 ], [ %110, %108 ], !dbg !3364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3362
  %132 = icmp eq i64 %131, 0, !dbg !3366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3363
  br i1 %132, label %140, label %133, !dbg !3363

; <label>:133:                                    ; preds = %130
  %134 = call %struct.redisObject* @createObject(i32 0, i8* %104) #8, !dbg !3367
  %135 = load %struct.redisObject**, %struct.redisObject*** %100, align 8, !dbg !3369, !tbaa !628
  %136 = load i32, i32* %98, align 8, !dbg !3370, !tbaa !625
  %137 = sext i32 %136 to i64, !dbg !3371
  %138 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %135, i64 %137, !dbg !3371
  store %struct.redisObject* %134, %struct.redisObject** %138, align 8, !dbg !3372, !tbaa !476
  %139 = add nsw i32 %136, 1, !dbg !3373
  store i32 %139, i32* %98, align 8, !dbg !3373, !tbaa !625
  br label %141, !dbg !3374

; <label>:140:                                    ; preds = %129, %130
  call void @sdsfree(i8* %104) #8, !dbg !3375
  br label %141

; <label>:141:                                    ; preds = %133, %140
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %142 = add nuw nsw i64 %102, 1, !dbg !3377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3378
  %143 = load i32, i32* %2, align 4, !dbg !3337, !tbaa !549
  %144 = sext i32 %143 to i64, !dbg !3379
  %145 = icmp slt i64 %142, %144, !dbg !3379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3324
  br i1 %145, label %101, label %146, !dbg !3324, !llvm.loop !3380

; <label>:146:                                    ; preds = %141, %81, %90
  %147 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3382, !tbaa !476
  %148 = icmp eq %struct.uk_alloc* %147, null, !dbg !3392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3393
  br i1 %148, label %149, label %150, !dbg !3393, !prof !545

; <label>:149:                                    ; preds = %146
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i64 0, i64 0)) #8, !dbg !3394
  call void @ukplat_terminate(i32 3) #9, !dbg !3394
  unreachable

; <label>:150:                                    ; preds = %146
  %151 = bitcast i8** %61 to i8*, !dbg !3395
  %152 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %147, i64 0, i32 5, !dbg !3399
  %153 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %152, align 8, !dbg !3399, !tbaa !476
  call void %153(%struct.uk_alloc* nonnull %147, i8* %151) #8, !dbg !3400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3403
  br label %154, !dbg !3404

; <label>:154:                                    ; preds = %37, %42, %150, %63
  %155 = phi i32 [ -1, %63 ], [ 0, %150 ], [ -1, %42 ], [ -1, %37 ], !dbg !3282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3405
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5, !dbg !3406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3406
  ret i32 %155, !dbg !3406
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @setProtocolError(i8*, %struct.client* nocapture) unnamed_addr #0 !dbg !3407 {
  %3 = alloca [256 x i8], align 16
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 100), align 8, !dbg !3423, !tbaa !3424
  %5 = icmp slt i32 %4, 2, !dbg !3425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3426
  br i1 %5, label %6, label %93, !dbg !3426

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @sdsempty() #8, !dbg !3427
  %8 = tail call i8* @catClientInfoString(i8* %7, %struct.client* %1) #10, !dbg !3428
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !3430
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %9) #5, !dbg !3430
  %10 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 4, !dbg !3432
  %11 = load i8*, i8** %10, align 8, !dbg !3432, !tbaa !612
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !3436
  %13 = load i8, i8* %12, align 1, !dbg !3436, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3438
  %14 = trunc i8 %13 to i3, !dbg !3438
  switch i3 %14, label %36 [
    i3 0, label %15
    i3 1, label %18
    i3 2, label %22
    i3 3, label %27
    i3 -4, label %32
  ], !dbg !3438

; <label>:15:                                     ; preds = %6
  %16 = lshr i8 %13, 3, !dbg !3439
  %17 = zext i8 %16 to i64, !dbg !3439
  br label %36, !dbg !3440

; <label>:18:                                     ; preds = %6
  %19 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !3441
  %20 = load i8, i8* %19, align 1, !dbg !3442, !tbaa !660
  %21 = zext i8 %20 to i64, !dbg !3441
  br label %36, !dbg !3443

; <label>:22:                                     ; preds = %6
  %23 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !3444
  %24 = bitcast i8* %23 to i16*, !dbg !3445
  %25 = load i16, i16* %24, align 1, !dbg !3445, !tbaa !862
  %26 = zext i16 %25 to i64, !dbg !3444
  br label %36, !dbg !3446

; <label>:27:                                     ; preds = %6
  %28 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !3447
  %29 = bitcast i8* %28 to i32*, !dbg !3448
  %30 = load i32, i32* %29, align 1, !dbg !3448, !tbaa !549
  %31 = zext i32 %30 to i64, !dbg !3447
  br label %36, !dbg !3449

; <label>:32:                                     ; preds = %6
  %33 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !3450
  %34 = bitcast i8* %33 to i64*, !dbg !3451
  %35 = load i64, i64* %34, align 1, !dbg !3451, !tbaa !410
  br label %36, !dbg !3452

; <label>:36:                                     ; preds = %6, %15, %18, %22, %27, %32
  %37 = phi i64 [ %35, %32 ], [ %31, %27 ], [ %26, %22 ], [ %21, %18 ], [ %17, %15 ], [ 0, %6 ], !dbg !3453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3455
  %38 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 5, !dbg !3456
  %39 = load i64, i64* %38, align 8, !dbg !3456, !tbaa !608
  %40 = sub i64 %37, %39, !dbg !3457
  %41 = icmp ult i64 %40, 128, !dbg !3458
  %42 = getelementptr inbounds i8, i8* %11, i64 %39, !dbg !3459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3461
  br i1 %41, label %43, label %45, !dbg !3461

; <label>:43:                                     ; preds = %36
  %44 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %9, i64 256, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.104, i64 0, i64 0), i8* %42) #8, !dbg !3462
  br label %74, !dbg !3464

; <label>:45:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3468
  switch i3 %14, label %67 [
    i3 0, label %46
    i3 1, label %49
    i3 2, label %53
    i3 3, label %58
    i3 -4, label %63
  ], !dbg !3468

; <label>:46:                                     ; preds = %45
  %47 = lshr i8 %13, 3, !dbg !3469
  %48 = zext i8 %47 to i64, !dbg !3469
  br label %67, !dbg !3473

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !3474
  %51 = load i8, i8* %50, align 1, !dbg !3475, !tbaa !660
  %52 = zext i8 %51 to i64, !dbg !3474
  br label %67, !dbg !3476

; <label>:53:                                     ; preds = %45
  %54 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !3477
  %55 = bitcast i8* %54 to i16*, !dbg !3478
  %56 = load i16, i16* %55, align 1, !dbg !3478, !tbaa !862
  %57 = zext i16 %56 to i64, !dbg !3477
  br label %67, !dbg !3479

; <label>:58:                                     ; preds = %45
  %59 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !3480
  %60 = bitcast i8* %59 to i32*, !dbg !3481
  %61 = load i32, i32* %60, align 1, !dbg !3481, !tbaa !549
  %62 = zext i32 %61 to i64, !dbg !3480
  br label %67, !dbg !3482

; <label>:63:                                     ; preds = %45
  %64 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !3483
  %65 = bitcast i8* %64 to i64*, !dbg !3484
  %66 = load i64, i64* %65, align 1, !dbg !3484, !tbaa !410
  br label %67, !dbg !3485

; <label>:67:                                     ; preds = %45, %46, %49, %53, %58, %63
  %68 = phi i64 [ %66, %63 ], [ %62, %58 ], [ %57, %53 ], [ %52, %49 ], [ %48, %46 ], [ 0, %45 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3459
  %69 = sub i64 -128, %39, !dbg !3488
  %70 = add i64 %69, %68, !dbg !3489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3490
  %71 = getelementptr inbounds i8, i8* %11, i64 %68, !dbg !3491
  %72 = getelementptr inbounds i8, i8* %71, i64 -64, !dbg !3492
  %73 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %9, i64 256, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.105, i64 0, i64 0), i32 64, i8* %42, i64 %70, i32 64, i8* nonnull %72) #8, !dbg !3493
  br label %74

; <label>:74:                                     ; preds = %67, %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3495
  %75 = load i8, i8* %9, align 16, !dbg !3496, !tbaa !660
  %76 = icmp eq i8 %75, 0, !dbg !3497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3495
  br i1 %76, label %92, label %77, !dbg !3495

; <label>:77:                                     ; preds = %74, %88
  %78 = phi i8* [ %89, %88 ], [ %9, %74 ]
  %79 = call i8* @__locale_ctype_ptr() #8, !dbg !3498
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !3498
  %81 = load i8, i8* %78, align 1, !dbg !3498, !tbaa !660
  %82 = sext i8 %81 to i64, !dbg !3498
  %83 = getelementptr inbounds i8, i8* %80, i64 %82, !dbg !3498
  %84 = load i8, i8* %83, align 1, !dbg !3498, !tbaa !660
  %85 = and i8 %84, -105, !dbg !3498
  %86 = icmp eq i8 %85, 0, !dbg !3498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3501
  br i1 %86, label %87, label %88, !dbg !3501

; <label>:87:                                     ; preds = %77
  store i8 46, i8* %78, align 1, !dbg !3502, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3503
  br label %88, !dbg !3503

; <label>:88:                                     ; preds = %77, %87
  %89 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !3504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3495
  %90 = load i8, i8* %89, align 1, !dbg !3496, !tbaa !660
  %91 = icmp eq i8 %90, 0, !dbg !3497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3495
  br i1 %91, label %92, label %77, !dbg !3495, !llvm.loop !3505

; <label>:92:                                     ; preds = %88, %74
  call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.106, i64 0, i64 0), i8* %0, i8* %8, i8* nonnull %9) #8, !dbg !3507
  call void @sdsfree(i8* %8) #8, !dbg !3508
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %9) #5, !dbg !3509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3510
  br label %93, !dbg !3510

; <label>:93:                                     ; preds = %92, %2
  %94 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 21, !dbg !3511
  %95 = load i32, i32* %94, align 8, !dbg !3512, !tbaa !944
  %96 = or i32 %95, 64, !dbg !3512
  store i32 %96, i32* %94, align 8, !dbg !3512, !tbaa !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3513
  ret void, !dbg !3513
}

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8** @sdssplitargs(i8*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @processMultibulkBuffer(%struct.client*) local_unnamed_addr #0 !dbg !3514 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !3522
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #5, !dbg !3522
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 13, !dbg !3523
  %5 = load i32, i32* %4, align 4, !dbg !3523, !tbaa !633
  %6 = icmp eq i32 %5, 0, !dbg !3525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3526
  br i1 %6, label %7, label %128, !dbg !3526

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3527
  %9 = load i32, i32* %8, align 8, !dbg !3527, !tbaa !625
  %10 = icmp eq i32 %9, 0, !dbg !3527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3527
  br i1 %10, label %12, label %11, !dbg !3527

; <label>:11:                                     ; preds = %7
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1298) #8, !dbg !3527
  tail call void @_exit(i32 1) #9, !dbg !3527
  unreachable

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 4, !dbg !3529
  %14 = load i8*, i8** %13, align 8, !dbg !3529, !tbaa !612
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 5, !dbg !3530
  %16 = load i64, i64* %15, align 8, !dbg !3530, !tbaa !608
  %17 = getelementptr inbounds i8, i8* %14, i64 %16, !dbg !3531
  %18 = tail call i8* @strchr(i8* %17, i32 13) #8, !dbg !3532
  %19 = icmp eq i8* %18, null, !dbg !3533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3535
  %20 = load i8*, i8** %13, align 8, !dbg !3536, !tbaa !612
  br i1 %19, label %21, label %54, !dbg !3535

; <label>:21:                                     ; preds = %12
  %22 = getelementptr inbounds i8, i8* %20, i64 -1, !dbg !3542
  %23 = load i8, i8* %22, align 1, !dbg !3542, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3544
  %24 = trunc i8 %23 to i3, !dbg !3544
  switch i3 %24, label %46 [
    i3 0, label %25
    i3 1, label %28
    i3 2, label %32
    i3 3, label %37
    i3 -4, label %42
  ], !dbg !3544

; <label>:25:                                     ; preds = %21
  %26 = lshr i8 %23, 3, !dbg !3545
  %27 = zext i8 %26 to i64, !dbg !3545
  br label %46, !dbg !3546

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds i8, i8* %20, i64 -3, !dbg !3547
  %30 = load i8, i8* %29, align 1, !dbg !3548, !tbaa !660
  %31 = zext i8 %30 to i64, !dbg !3547
  br label %46, !dbg !3549

; <label>:32:                                     ; preds = %21
  %33 = getelementptr inbounds i8, i8* %20, i64 -5, !dbg !3550
  %34 = bitcast i8* %33 to i16*, !dbg !3551
  %35 = load i16, i16* %34, align 1, !dbg !3551, !tbaa !862
  %36 = zext i16 %35 to i64, !dbg !3550
  br label %46, !dbg !3552

; <label>:37:                                     ; preds = %21
  %38 = getelementptr inbounds i8, i8* %20, i64 -9, !dbg !3553
  %39 = bitcast i8* %38 to i32*, !dbg !3554
  %40 = load i32, i32* %39, align 1, !dbg !3554, !tbaa !549
  %41 = zext i32 %40 to i64, !dbg !3553
  br label %46, !dbg !3555

; <label>:42:                                     ; preds = %21
  %43 = getelementptr inbounds i8, i8* %20, i64 -17, !dbg !3556
  %44 = bitcast i8* %43 to i64*, !dbg !3557
  %45 = load i64, i64* %44, align 1, !dbg !3557, !tbaa !410
  br label %46, !dbg !3558

; <label>:46:                                     ; preds = %21, %25, %28, %32, %37, %42
  %47 = phi i64 [ %45, %42 ], [ %41, %37 ], [ %36, %32 ], [ %31, %28 ], [ %27, %25 ], [ 0, %21 ], !dbg !3559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3561
  %48 = load i64, i64* %15, align 8, !dbg !3562, !tbaa !608
  %49 = sub i64 %47, %48, !dbg !3563
  %50 = icmp ugt i64 %49, 65536, !dbg !3564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3565
  br i1 %50, label %51, label %53, !dbg !3565

; <label>:51:                                     ; preds = %46
  %52 = tail call i64 @strlen(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0)) #8, !dbg !3570
  tail call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0), i64 %52) #8, !dbg !3571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3572
  tail call fastcc void @setProtocolError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), %struct.client* nonnull %0) #10, !dbg !3573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3574
  br label %53, !dbg !3574

; <label>:53:                                     ; preds = %51, %46
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3575
  br label %375, !dbg !3575

; <label>:54:                                     ; preds = %12
  %55 = load i64, i64* %15, align 8, !dbg !3576, !tbaa !608
  %56 = getelementptr inbounds i8, i8* %20, i64 %55, !dbg !3577
  %57 = ptrtoint i8* %18 to i64, !dbg !3578
  %58 = ptrtoint i8* %56 to i64, !dbg !3578
  %59 = sub i64 %57, %58, !dbg !3578
  %60 = getelementptr inbounds i8, i8* %20, i64 -1, !dbg !3581
  %61 = load i8, i8* %60, align 1, !dbg !3581, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3583
  %62 = trunc i8 %61 to i3, !dbg !3583
  switch i3 %62, label %84 [
    i3 0, label %63
    i3 1, label %66
    i3 2, label %70
    i3 3, label %75
    i3 -4, label %80
  ], !dbg !3583

; <label>:63:                                     ; preds = %54
  %64 = lshr i8 %61, 3, !dbg !3584
  %65 = zext i8 %64 to i64, !dbg !3584
  br label %84, !dbg !3585

; <label>:66:                                     ; preds = %54
  %67 = getelementptr inbounds i8, i8* %20, i64 -3, !dbg !3586
  %68 = load i8, i8* %67, align 1, !dbg !3587, !tbaa !660
  %69 = zext i8 %68 to i64, !dbg !3586
  br label %84, !dbg !3588

; <label>:70:                                     ; preds = %54
  %71 = getelementptr inbounds i8, i8* %20, i64 -5, !dbg !3589
  %72 = bitcast i8* %71 to i16*, !dbg !3590
  %73 = load i16, i16* %72, align 1, !dbg !3590, !tbaa !862
  %74 = zext i16 %73 to i64, !dbg !3589
  br label %84, !dbg !3591

; <label>:75:                                     ; preds = %54
  %76 = getelementptr inbounds i8, i8* %20, i64 -9, !dbg !3592
  %77 = bitcast i8* %76 to i32*, !dbg !3593
  %78 = load i32, i32* %77, align 1, !dbg !3593, !tbaa !549
  %79 = zext i32 %78 to i64, !dbg !3592
  br label %84, !dbg !3594

; <label>:80:                                     ; preds = %54
  %81 = getelementptr inbounds i8, i8* %20, i64 -17, !dbg !3595
  %82 = bitcast i8* %81 to i64*, !dbg !3596
  %83 = load i64, i64* %82, align 1, !dbg !3596, !tbaa !410
  br label %84, !dbg !3597

; <label>:84:                                     ; preds = %54, %63, %66, %70, %75, %80
  %85 = phi i64 [ %83, %80 ], [ %79, %75 ], [ %74, %70 ], [ %69, %66 ], [ %65, %63 ], [ 0, %54 ], !dbg !3598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3599
  %86 = sub i64 -2, %55, !dbg !3600
  %87 = add i64 %86, %85, !dbg !3601
  %88 = icmp sgt i64 %59, %87, !dbg !3602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3603
  br i1 %88, label %89, label %90, !dbg !3603

; <label>:89:                                     ; preds = %84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3604
  br label %375, !dbg !3604

; <label>:90:                                     ; preds = %84
  %91 = load i8, i8* %56, align 1, !dbg !3605, !tbaa !660
  %92 = icmp eq i8 %91, 42, !dbg !3605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3605
  br i1 %92, label %94, label %93, !dbg !3605

; <label>:93:                                     ; preds = %90
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1316) #8, !dbg !3605
  tail call void @_exit(i32 1) #9, !dbg !3605
  unreachable

; <label>:94:                                     ; preds = %90
  %95 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !3606
  %96 = getelementptr inbounds i8, i8* %95, i64 %55, !dbg !3607
  %97 = ptrtoint i8* %96 to i64, !dbg !3608
  %98 = sub i64 %57, %97, !dbg !3608
  %99 = call i32 @string2ll(i8* nonnull %96, i64 %98, i64* nonnull %2) #8, !dbg !3610
  %100 = icmp eq i32 %99, 0, !dbg !3612
  %101 = load i64, i64* %2, align 8, !dbg !3614
  %102 = icmp sgt i64 %101, 1048576, !dbg !3615
  %103 = or i1 %100, %102, !dbg !3616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3616
  br i1 %103, label %104, label %106, !dbg !3616

; <label>:104:                                    ; preds = %94
  %105 = call i64 @strlen(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i64 0, i64 0)) #8, !dbg !3621
  call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i64 0, i64 0), i64 %105) #8, !dbg !3622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3623
  call fastcc void @setProtocolError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), %struct.client* nonnull %0) #10, !dbg !3624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3625
  br label %375, !dbg !3625

; <label>:106:                                    ; preds = %94
  %107 = bitcast i8** %13 to i64*, !dbg !3626
  %108 = load i64, i64* %107, align 8, !dbg !3626, !tbaa !612
  %109 = add i64 %57, 2, !dbg !3627
  %110 = sub i64 %109, %108, !dbg !3628
  store i64 %110, i64* %15, align 8, !dbg !3629, !tbaa !608
  %111 = icmp slt i64 %101, 1, !dbg !3630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3632
  br i1 %111, label %112, label %113, !dbg !3632

; <label>:112:                                    ; preds = %106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3633
  br label %375, !dbg !3633

; <label>:113:                                    ; preds = %106
  %114 = trunc i64 %101 to i32, !dbg !3634
  store i32 %114, i32* %4, align 4, !dbg !3635, !tbaa !633
  %115 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3636
  %116 = load %struct.redisObject**, %struct.redisObject*** %115, align 8, !dbg !3636, !tbaa !628
  %117 = icmp eq %struct.redisObject** %116, null, !dbg !3638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3639
  br i1 %117, label %121, label %118, !dbg !3639

; <label>:118:                                    ; preds = %113
  %119 = bitcast %struct.redisObject** %116 to i8*, !dbg !3640
  call void @zfree(i8* %119) #8, !dbg !3641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3641
  %120 = load i32, i32* %4, align 4, !dbg !3642, !tbaa !633
  br label %121, !dbg !3641

; <label>:121:                                    ; preds = %113, %118
  %122 = phi i32 [ %114, %113 ], [ %120, %118 ], !dbg !3642
  %123 = sext i32 %122 to i64, !dbg !3643
  %124 = shl nsw i64 %123, 3, !dbg !3644
  %125 = call i8* @zmalloc(i64 %124) #8, !dbg !3645
  %126 = bitcast %struct.redisObject*** %115 to i8**, !dbg !3646
  store i8* %125, i8** %126, align 8, !dbg !3646, !tbaa !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3647
  %127 = load i32, i32* %4, align 4, !dbg !3648, !tbaa !633
  br label %128, !dbg !3647

; <label>:128:                                    ; preds = %121, %1
  %129 = phi i32 [ %127, %121 ], [ %5, %1 ], !dbg !3648
  %130 = icmp sgt i32 %129, 0, !dbg !3648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3648
  br i1 %130, label %132, label %131, !dbg !3648

; <label>:131:                                    ; preds = %128
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1335) #8, !dbg !3648
  call void @_exit(i32 1) #9, !dbg !3648
  unreachable

; <label>:132:                                    ; preds = %128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3649
  %133 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 14
  %134 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 4
  %135 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 5
  %136 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %137 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8
  %138 = bitcast i8** %134 to i64*
  %139 = load i64, i64* %133, align 8, !dbg !3650, !tbaa !636
  br label %140, !dbg !3649

; <label>:140:                                    ; preds = %132, %367
  %141 = phi i64 [ %139, %132 ], [ -1, %367 ], !dbg !3650
  %142 = icmp eq i64 %141, -1, !dbg !3653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3654
  %143 = load i8*, i8** %134, align 8, !dbg !3655, !tbaa !612
  br i1 %142, label %144, label %281, !dbg !3654

; <label>:144:                                    ; preds = %140
  %145 = load i64, i64* %135, align 8, !dbg !3657, !tbaa !608
  %146 = getelementptr inbounds i8, i8* %143, i64 %145, !dbg !3659
  %147 = call i8* @strchr(i8* %146, i32 13) #8, !dbg !3660
  %148 = icmp eq i8* %147, null, !dbg !3661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3663
  %149 = load i8*, i8** %134, align 8, !dbg !3664, !tbaa !612
  br i1 %148, label %150, label %182, !dbg !3663

; <label>:150:                                    ; preds = %144
  %151 = getelementptr inbounds i8, i8* %149, i64 -1, !dbg !3670
  %152 = load i8, i8* %151, align 1, !dbg !3670, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3672
  %153 = trunc i8 %152 to i3, !dbg !3672
  switch i3 %153, label %175 [
    i3 0, label %154
    i3 1, label %157
    i3 2, label %161
    i3 3, label %166
    i3 -4, label %171
  ], !dbg !3672

; <label>:154:                                    ; preds = %150
  %155 = lshr i8 %152, 3, !dbg !3673
  %156 = zext i8 %155 to i64, !dbg !3673
  br label %175, !dbg !3674

; <label>:157:                                    ; preds = %150
  %158 = getelementptr inbounds i8, i8* %149, i64 -3, !dbg !3675
  %159 = load i8, i8* %158, align 1, !dbg !3676, !tbaa !660
  %160 = zext i8 %159 to i64, !dbg !3675
  br label %175, !dbg !3677

; <label>:161:                                    ; preds = %150
  %162 = getelementptr inbounds i8, i8* %149, i64 -5, !dbg !3678
  %163 = bitcast i8* %162 to i16*, !dbg !3679
  %164 = load i16, i16* %163, align 1, !dbg !3679, !tbaa !862
  %165 = zext i16 %164 to i64, !dbg !3678
  br label %175, !dbg !3680

; <label>:166:                                    ; preds = %150
  %167 = getelementptr inbounds i8, i8* %149, i64 -9, !dbg !3681
  %168 = bitcast i8* %167 to i32*, !dbg !3682
  %169 = load i32, i32* %168, align 1, !dbg !3682, !tbaa !549
  %170 = zext i32 %169 to i64, !dbg !3681
  br label %175, !dbg !3683

; <label>:171:                                    ; preds = %150
  %172 = getelementptr inbounds i8, i8* %149, i64 -17, !dbg !3684
  %173 = bitcast i8* %172 to i64*, !dbg !3685
  %174 = load i64, i64* %173, align 1, !dbg !3685, !tbaa !410
  br label %175, !dbg !3686

; <label>:175:                                    ; preds = %150, %154, %157, %161, %166, %171
  %176 = phi i64 [ %174, %171 ], [ %170, %166 ], [ %165, %161 ], [ %160, %157 ], [ %156, %154 ], [ 0, %150 ], !dbg !3687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3689
  %177 = load i64, i64* %135, align 8, !dbg !3690, !tbaa !608
  %178 = sub i64 %176, %177, !dbg !3691
  %179 = icmp ugt i64 %178, 65536, !dbg !3692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3693
  br i1 %179, label %180, label %371, !dbg !3693

; <label>:180:                                    ; preds = %175
  %181 = call i64 @strlen(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i64 0, i64 0)) #8, !dbg !3698
  call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i64 0, i64 0), i64 %181) #8, !dbg !3699
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3700
  call fastcc void @setProtocolError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i64 0, i64 0), %struct.client* nonnull %0) #10, !dbg !3701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3702
  br label %375, !dbg !3702

; <label>:182:                                    ; preds = %144
  %183 = load i64, i64* %135, align 8, !dbg !3703, !tbaa !608
  %184 = getelementptr inbounds i8, i8* %149, i64 %183, !dbg !3704
  %185 = ptrtoint i8* %147 to i64, !dbg !3705
  %186 = ptrtoint i8* %184 to i64, !dbg !3705
  %187 = sub i64 %185, %186, !dbg !3705
  %188 = getelementptr inbounds i8, i8* %149, i64 -1, !dbg !3708
  %189 = load i8, i8* %188, align 1, !dbg !3708, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3710
  %190 = trunc i8 %189 to i3, !dbg !3710
  switch i3 %190, label %212 [
    i3 0, label %191
    i3 1, label %194
    i3 2, label %198
    i3 3, label %203
    i3 -4, label %208
  ], !dbg !3710

; <label>:191:                                    ; preds = %182
  %192 = lshr i8 %189, 3, !dbg !3711
  %193 = zext i8 %192 to i64, !dbg !3711
  br label %212, !dbg !3712

; <label>:194:                                    ; preds = %182
  %195 = getelementptr inbounds i8, i8* %149, i64 -3, !dbg !3713
  %196 = load i8, i8* %195, align 1, !dbg !3714, !tbaa !660
  %197 = zext i8 %196 to i64, !dbg !3713
  br label %212, !dbg !3715

; <label>:198:                                    ; preds = %182
  %199 = getelementptr inbounds i8, i8* %149, i64 -5, !dbg !3716
  %200 = bitcast i8* %199 to i16*, !dbg !3717
  %201 = load i16, i16* %200, align 1, !dbg !3717, !tbaa !862
  %202 = zext i16 %201 to i64, !dbg !3716
  br label %212, !dbg !3718

; <label>:203:                                    ; preds = %182
  %204 = getelementptr inbounds i8, i8* %149, i64 -9, !dbg !3719
  %205 = bitcast i8* %204 to i32*, !dbg !3720
  %206 = load i32, i32* %205, align 1, !dbg !3720, !tbaa !549
  %207 = zext i32 %206 to i64, !dbg !3719
  br label %212, !dbg !3721

; <label>:208:                                    ; preds = %182
  %209 = getelementptr inbounds i8, i8* %149, i64 -17, !dbg !3722
  %210 = bitcast i8* %209 to i64*, !dbg !3723
  %211 = load i64, i64* %210, align 1, !dbg !3723, !tbaa !410
  br label %212, !dbg !3724

; <label>:212:                                    ; preds = %182, %191, %194, %198, %203, %208
  %213 = phi i64 [ %211, %208 ], [ %207, %203 ], [ %202, %198 ], [ %197, %194 ], [ %193, %191 ], [ 0, %182 ], !dbg !3725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3726
  %214 = sub i64 -2, %183, !dbg !3727
  %215 = add i64 %214, %213, !dbg !3728
  %216 = icmp sgt i64 %187, %215, !dbg !3729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3730
  br i1 %216, label %371, label %217, !dbg !3730

; <label>:217:                                    ; preds = %212
  %218 = load i8, i8* %184, align 1, !dbg !3731, !tbaa !660
  %219 = icmp eq i8 %218, 36, !dbg !3733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3734
  br i1 %219, label %222, label %220, !dbg !3734

; <label>:220:                                    ; preds = %217
  %221 = sext i8 %218 to i32, !dbg !3731
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i32 %221) #10, !dbg !3735
  call fastcc void @setProtocolError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i64 0, i64 0), %struct.client* nonnull %0) #10, !dbg !3737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3738
  br label %375, !dbg !3738

; <label>:222:                                    ; preds = %217
  %223 = getelementptr inbounds i8, i8* %184, i64 1, !dbg !3739
  %224 = ptrtoint i8* %223 to i64, !dbg !3740
  %225 = sub i64 %185, %224, !dbg !3740
  %226 = call i32 @string2ll(i8* nonnull %223, i64 %225, i64* nonnull %2) #8, !dbg !3741
  %227 = icmp eq i32 %226, 0, !dbg !3742
  %228 = load i64, i64* %2, align 8, !dbg !3744
  %229 = icmp slt i64 %228, 0, !dbg !3745
  %230 = or i1 %227, %229, !dbg !3746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3746
  br i1 %230, label %234, label %231, !dbg !3746

; <label>:231:                                    ; preds = %222
  %232 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 232), align 8, !dbg !3747, !tbaa !3748
  %233 = icmp sgt i64 %228, %232, !dbg !3749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3750
  br i1 %233, label %234, label %236, !dbg !3750

; <label>:234:                                    ; preds = %222, %231
  %235 = call i64 @strlen(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i64 0, i64 0)) #8, !dbg !3755
  call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i64 0, i64 0), i64 %235) #8, !dbg !3756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3757
  call fastcc void @setProtocolError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i64 0, i64 0), %struct.client* nonnull %0) #10, !dbg !3758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  br label %375, !dbg !3759

; <label>:236:                                    ; preds = %231
  %237 = load i64, i64* %138, align 8, !dbg !3760, !tbaa !612
  %238 = sub i64 %185, %237, !dbg !3761
  %239 = add nsw i64 %238, 2, !dbg !3762
  store i64 %239, i64* %135, align 8, !dbg !3763, !tbaa !608
  %240 = icmp sgt i64 %228, 32767, !dbg !3764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3766
  %241 = inttoptr i64 %237 to i8*, !dbg !3766
  br i1 %240, label %242, label %278, !dbg !3766

; <label>:242:                                    ; preds = %236
  %243 = getelementptr inbounds i8, i8* %241, i64 -1, !dbg !3771
  %244 = load i8, i8* %243, align 1, !dbg !3771, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3773
  %245 = trunc i8 %244 to i3, !dbg !3773
  switch i3 %245, label %267 [
    i3 0, label %246
    i3 1, label %249
    i3 2, label %253
    i3 3, label %258
    i3 -4, label %263
  ], !dbg !3773

; <label>:246:                                    ; preds = %242
  %247 = lshr i8 %244, 3, !dbg !3774
  %248 = zext i8 %247 to i64, !dbg !3774
  br label %267, !dbg !3775

; <label>:249:                                    ; preds = %242
  %250 = getelementptr inbounds i8, i8* %241, i64 -3, !dbg !3776
  %251 = load i8, i8* %250, align 1, !dbg !3777, !tbaa !660
  %252 = zext i8 %251 to i64, !dbg !3776
  br label %267, !dbg !3778

; <label>:253:                                    ; preds = %242
  %254 = getelementptr inbounds i8, i8* %241, i64 -5, !dbg !3779
  %255 = bitcast i8* %254 to i16*, !dbg !3780
  %256 = load i16, i16* %255, align 1, !dbg !3780, !tbaa !862
  %257 = zext i16 %256 to i64, !dbg !3779
  br label %267, !dbg !3781

; <label>:258:                                    ; preds = %242
  %259 = getelementptr inbounds i8, i8* %241, i64 -9, !dbg !3782
  %260 = bitcast i8* %259 to i32*, !dbg !3783
  %261 = load i32, i32* %260, align 1, !dbg !3783, !tbaa !549
  %262 = zext i32 %261 to i64, !dbg !3782
  br label %267, !dbg !3784

; <label>:263:                                    ; preds = %242
  %264 = getelementptr inbounds i8, i8* %241, i64 -17, !dbg !3785
  %265 = bitcast i8* %264 to i64*, !dbg !3786
  %266 = load i64, i64* %265, align 1, !dbg !3786, !tbaa !410
  br label %267, !dbg !3787

; <label>:267:                                    ; preds = %242, %246, %249, %253, %258, %263
  %268 = phi i64 [ %266, %263 ], [ %262, %258 ], [ %257, %253 ], [ %252, %249 ], [ %248, %246 ], [ 0, %242 ], !dbg !3788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3790
  %269 = sub i64 %268, %239, !dbg !3791
  %270 = add i64 %228, 2, !dbg !3792
  %271 = icmp ugt i64 %269, %270, !dbg !3793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3794
  br i1 %271, label %278, label %272, !dbg !3794

; <label>:272:                                    ; preds = %267
  call void @sdsrange(i8* nonnull %241, i64 %239, i64 -1) #8, !dbg !3795
  store i64 0, i64* %135, align 8, !dbg !3797, !tbaa !608
  %273 = load i8*, i8** %134, align 8, !dbg !3798, !tbaa !612
  %274 = load i64, i64* %2, align 8, !dbg !3799, !tbaa !652
  %275 = add nsw i64 %274, 2, !dbg !3800
  %276 = call i8* @sdsMakeRoomFor(i8* %273, i64 %275) #8, !dbg !3801
  store i8* %276, i8** %134, align 8, !dbg !3802, !tbaa !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3803
  %277 = load i64, i64* %2, align 8, !dbg !3804, !tbaa !652
  br label %278, !dbg !3803

; <label>:278:                                    ; preds = %267, %272, %236
  %279 = phi i8* [ %241, %267 ], [ %276, %272 ], [ %241, %236 ]
  %280 = phi i64 [ %228, %267 ], [ %277, %272 ], [ %228, %236 ], !dbg !3804
  store i64 %280, i64* %133, align 8, !dbg !3805, !tbaa !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3806
  br label %281, !dbg !3806

; <label>:281:                                    ; preds = %140, %278
  %282 = phi i64 [ %280, %278 ], [ %141, %140 ]
  %283 = phi i8* [ %279, %278 ], [ %143, %140 ], !dbg !3807
  %284 = getelementptr inbounds i8, i8* %283, i64 -1, !dbg !3810
  %285 = load i8, i8* %284, align 1, !dbg !3810, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3812
  %286 = trunc i8 %285 to i3, !dbg !3812
  switch i3 %286, label %308 [
    i3 0, label %287
    i3 1, label %290
    i3 2, label %294
    i3 3, label %299
    i3 -4, label %304
  ], !dbg !3812

; <label>:287:                                    ; preds = %281
  %288 = lshr i8 %285, 3, !dbg !3813
  %289 = zext i8 %288 to i64, !dbg !3813
  br label %308, !dbg !3814

; <label>:290:                                    ; preds = %281
  %291 = getelementptr inbounds i8, i8* %283, i64 -3, !dbg !3815
  %292 = load i8, i8* %291, align 1, !dbg !3816, !tbaa !660
  %293 = zext i8 %292 to i64, !dbg !3815
  br label %308, !dbg !3817

; <label>:294:                                    ; preds = %281
  %295 = getelementptr inbounds i8, i8* %283, i64 -5, !dbg !3818
  %296 = bitcast i8* %295 to i16*, !dbg !3819
  %297 = load i16, i16* %296, align 1, !dbg !3819, !tbaa !862
  %298 = zext i16 %297 to i64, !dbg !3818
  br label %308, !dbg !3820

; <label>:299:                                    ; preds = %281
  %300 = getelementptr inbounds i8, i8* %283, i64 -9, !dbg !3821
  %301 = bitcast i8* %300 to i32*, !dbg !3822
  %302 = load i32, i32* %301, align 1, !dbg !3822, !tbaa !549
  %303 = zext i32 %302 to i64, !dbg !3821
  br label %308, !dbg !3823

; <label>:304:                                    ; preds = %281
  %305 = getelementptr inbounds i8, i8* %283, i64 -17, !dbg !3824
  %306 = bitcast i8* %305 to i64*, !dbg !3825
  %307 = load i64, i64* %306, align 1, !dbg !3825, !tbaa !410
  br label %308, !dbg !3826

; <label>:308:                                    ; preds = %281, %287, %290, %294, %299, %304
  %309 = phi i64 [ %307, %304 ], [ %303, %299 ], [ %298, %294 ], [ %293, %290 ], [ %289, %287 ], [ 0, %281 ], !dbg !3827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3828
  %310 = load i64, i64* %135, align 8, !dbg !3829, !tbaa !608
  %311 = sub i64 %309, %310, !dbg !3830
  %312 = add nsw i64 %282, 2, !dbg !3831
  %313 = icmp ult i64 %311, %312, !dbg !3832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3833
  br i1 %313, label %371, label %314, !dbg !3833

; <label>:314:                                    ; preds = %308
  %315 = icmp eq i64 %310, 0, !dbg !3834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3837
  br i1 %315, label %316, label %355, !dbg !3837

; <label>:316:                                    ; preds = %314
  %317 = icmp sgt i64 %282, 32767, !dbg !3838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3839
  br i1 %317, label %318, label %355, !dbg !3839

; <label>:318:                                    ; preds = %316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3843
  switch i3 %286, label %340 [
    i3 0, label %319
    i3 1, label %322
    i3 2, label %326
    i3 3, label %331
    i3 -4, label %336
  ], !dbg !3843

; <label>:319:                                    ; preds = %318
  %320 = lshr i8 %285, 3, !dbg !3844
  %321 = zext i8 %320 to i64, !dbg !3844
  br label %340, !dbg !3845

; <label>:322:                                    ; preds = %318
  %323 = getelementptr inbounds i8, i8* %283, i64 -3, !dbg !3846
  %324 = load i8, i8* %323, align 1, !dbg !3847, !tbaa !660
  %325 = zext i8 %324 to i64, !dbg !3846
  br label %340, !dbg !3848

; <label>:326:                                    ; preds = %318
  %327 = getelementptr inbounds i8, i8* %283, i64 -5, !dbg !3849
  %328 = bitcast i8* %327 to i16*, !dbg !3850
  %329 = load i16, i16* %328, align 1, !dbg !3850, !tbaa !862
  %330 = zext i16 %329 to i64, !dbg !3849
  br label %340, !dbg !3851

; <label>:331:                                    ; preds = %318
  %332 = getelementptr inbounds i8, i8* %283, i64 -9, !dbg !3852
  %333 = bitcast i8* %332 to i32*, !dbg !3853
  %334 = load i32, i32* %333, align 1, !dbg !3853, !tbaa !549
  %335 = zext i32 %334 to i64, !dbg !3852
  br label %340, !dbg !3854

; <label>:336:                                    ; preds = %318
  %337 = getelementptr inbounds i8, i8* %283, i64 -17, !dbg !3855
  %338 = bitcast i8* %337 to i64*, !dbg !3856
  %339 = load i64, i64* %338, align 1, !dbg !3856, !tbaa !410
  br label %340, !dbg !3857

; <label>:340:                                    ; preds = %318, %319, %322, %326, %331, %336
  %341 = phi i64 [ %339, %336 ], [ %335, %331 ], [ %330, %326 ], [ %325, %322 ], [ %321, %319 ], [ 0, %318 ], !dbg !3858
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3860
  %342 = icmp eq i64 %341, %312, !dbg !3861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3862
  br i1 %342, label %343, label %355, !dbg !3862

; <label>:343:                                    ; preds = %340
  %344 = call %struct.redisObject* @createObject(i32 0, i8* %283) #8, !dbg !3863
  %345 = load %struct.redisObject**, %struct.redisObject*** %136, align 8, !dbg !3865, !tbaa !628
  %346 = load i32, i32* %137, align 8, !dbg !3866, !tbaa !625
  %347 = add nsw i32 %346, 1, !dbg !3866
  store i32 %347, i32* %137, align 8, !dbg !3866, !tbaa !625
  %348 = sext i32 %346 to i64, !dbg !3867
  %349 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %345, i64 %348, !dbg !3867
  store %struct.redisObject* %344, %struct.redisObject** %349, align 8, !dbg !3868, !tbaa !476
  %350 = load i8*, i8** %134, align 8, !dbg !3869, !tbaa !612
  call void @sdsIncrLen(i8* %350, i64 -2) #8, !dbg !3870
  %351 = load i8*, i8** @SDS_NOINIT, align 8, !dbg !3871, !tbaa !476
  %352 = load i64, i64* %133, align 8, !dbg !3872, !tbaa !636
  %353 = add nsw i64 %352, 2, !dbg !3873
  %354 = call i8* @sdsnewlen(i8* %351, i64 %353) #8, !dbg !3874
  store i8* %354, i8** %134, align 8, !dbg !3875, !tbaa !612
  call void @sdsclear(i8* %354) #8, !dbg !3876
  br label %367, !dbg !3877

; <label>:355:                                    ; preds = %340, %316, %314
  %356 = getelementptr inbounds i8, i8* %283, i64 %310, !dbg !3878
  %357 = call %struct.redisObject* @createStringObject(i8* %356, i64 %282) #8, !dbg !3880
  %358 = load %struct.redisObject**, %struct.redisObject*** %136, align 8, !dbg !3881, !tbaa !628
  %359 = load i32, i32* %137, align 8, !dbg !3882, !tbaa !625
  %360 = add nsw i32 %359, 1, !dbg !3882
  store i32 %360, i32* %137, align 8, !dbg !3882, !tbaa !625
  %361 = sext i32 %359 to i64, !dbg !3883
  %362 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %358, i64 %361, !dbg !3883
  store %struct.redisObject* %357, %struct.redisObject** %362, align 8, !dbg !3884, !tbaa !476
  %363 = load i64, i64* %133, align 8, !dbg !3885, !tbaa !636
  %364 = add nsw i64 %363, 2, !dbg !3886
  %365 = load i64, i64* %135, align 8, !dbg !3887, !tbaa !608
  %366 = add i64 %364, %365, !dbg !3887
  store i64 %366, i64* %135, align 8, !dbg !3887, !tbaa !608
  br label %367

; <label>:367:                                    ; preds = %355, %343
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store i64 -1, i64* %133, align 8, !dbg !3888, !tbaa !636
  %368 = load i32, i32* %4, align 4, !dbg !3889, !tbaa !633
  %369 = add nsw i32 %368, -1, !dbg !3889
  store i32 %369, i32* %4, align 4, !dbg !3889, !tbaa !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3649
  %370 = icmp eq i32 %369, 0, !dbg !3649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3649
  br i1 %370, label %371, label %140, !dbg !3649, !llvm.loop !3890

; <label>:371:                                    ; preds = %212, %308, %367, %175
  %372 = load i32, i32* %4, align 4, !dbg !3892, !tbaa !633
  %373 = icmp ne i32 %372, 0, !dbg !3894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3896
  %374 = sext i1 %373 to i32, !dbg !3897
  br label %375, !dbg !3897

; <label>:375:                                    ; preds = %371, %234, %220, %180, %112, %104, %89, %53
  %376 = phi i32 [ -1, %53 ], [ -1, %89 ], [ -1, %104 ], [ 0, %112 ], [ -1, %180 ], [ -1, %220 ], [ -1, %234 ], [ %374, %371 ], !dbg !3898
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #5, !dbg !3899
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3899
  ret i32 %376, !dbg !3899
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
define dso_local void @processInputBuffer(%struct.client*) local_unnamed_addr #0 !dbg !3900 {
  store %struct.client* %0, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !3904, !tbaa !2736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3905
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 4
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 12
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 39
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 29
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 30
  br label %10, !dbg !3905

; <label>:10:                                     ; preds = %142, %1
  %11 = load i64, i64* %2, align 8, !dbg !3906, !tbaa !608
  %12 = load i8*, i8** %3, align 8, !dbg !3907, !tbaa !612
  %13 = getelementptr inbounds i8, i8* %12, i64 -1, !dbg !3910
  %14 = load i8, i8* %13, align 1, !dbg !3910, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3912
  %15 = trunc i8 %14 to i3, !dbg !3912
  switch i3 %15, label %37 [
    i3 0, label %16
    i3 1, label %19
    i3 2, label %23
    i3 3, label %28
    i3 -4, label %33
  ], !dbg !3912

; <label>:16:                                     ; preds = %10
  %17 = lshr i8 %14, 3, !dbg !3913
  %18 = zext i8 %17 to i64, !dbg !3913
  br label %38, !dbg !3914

; <label>:19:                                     ; preds = %10
  %20 = getelementptr inbounds i8, i8* %12, i64 -3, !dbg !3915
  %21 = load i8, i8* %20, align 1, !dbg !3916, !tbaa !660
  %22 = zext i8 %21 to i64, !dbg !3915
  br label %38, !dbg !3917

; <label>:23:                                     ; preds = %10
  %24 = getelementptr inbounds i8, i8* %12, i64 -5, !dbg !3918
  %25 = bitcast i8* %24 to i16*, !dbg !3919
  %26 = load i16, i16* %25, align 1, !dbg !3919, !tbaa !862
  %27 = zext i16 %26 to i64, !dbg !3918
  br label %38, !dbg !3920

; <label>:28:                                     ; preds = %10
  %29 = getelementptr inbounds i8, i8* %12, i64 -9, !dbg !3921
  %30 = bitcast i8* %29 to i32*, !dbg !3922
  %31 = load i32, i32* %30, align 1, !dbg !3922, !tbaa !549
  %32 = zext i32 %31 to i64, !dbg !3921
  br label %38, !dbg !3923

; <label>:33:                                     ; preds = %10
  %34 = getelementptr inbounds i8, i8* %12, i64 -17, !dbg !3924
  %35 = bitcast i8* %34 to i64*, !dbg !3925
  %36 = load i64, i64* %35, align 1, !dbg !3925, !tbaa !410
  br label %38, !dbg !3926

; <label>:37:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3905
  br label %143, !dbg !3905

; <label>:38:                                     ; preds = %16, %19, %23, %28, %33
  %39 = phi i64 [ %36, %33 ], [ %32, %28 ], [ %27, %23 ], [ %22, %19 ], [ %18, %16 ], !dbg !3929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3928
  %40 = icmp ult i64 %11, %39, !dbg !3931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3905
  br i1 %40, label %41, label %143, !dbg !3905

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %4, align 8, !dbg !3932, !tbaa !944
  %43 = and i32 %42, 1, !dbg !3935
  %44 = icmp eq i32 %43, 0, !dbg !3935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3936
  br i1 %44, label %45, label %50, !dbg !3936

; <label>:45:                                     ; preds = %41
  %46 = tail call i32 @clientsArePaused() #10, !dbg !3937
  %47 = icmp eq i32 %46, 0, !dbg !3937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3938
  br i1 %47, label %48, label %143, !dbg !3938

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %4, align 8, !dbg !3939, !tbaa !944
  br label %50, !dbg !3938

; <label>:50:                                     ; preds = %48, %41
  %51 = phi i32 [ %49, %48 ], [ %42, %41 ], !dbg !3939
  %52 = and i32 %51, 16, !dbg !3941
  %53 = icmp eq i32 %52, 0, !dbg !3941
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3942
  br i1 %53, label %54, label %143, !dbg !3942

; <label>:54:                                     ; preds = %50
  %55 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !3943, !tbaa !3945
  %56 = icmp eq i32 %55, 0, !dbg !3946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3947
  br i1 %56, label %60, label %57, !dbg !3947

; <label>:57:                                     ; preds = %54
  %58 = and i32 %51, 2, !dbg !3948
  %59 = icmp eq i32 %58, 0, !dbg !3948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3949
  br i1 %59, label %60, label %143, !dbg !3949

; <label>:60:                                     ; preds = %57, %54
  %61 = and i32 %51, 1088, !dbg !3950
  %62 = icmp eq i32 %61, 0, !dbg !3950
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3952
  br i1 %62, label %63, label %143, !dbg !3952

; <label>:63:                                     ; preds = %60
  %64 = load i32, i32* %5, align 8, !dbg !3953, !tbaa !622
  %65 = icmp eq i32 %64, 0, !dbg !3955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3956
  br i1 %65, label %66, label %74, !dbg !3956

; <label>:66:                                     ; preds = %63
  %67 = load i8*, i8** %3, align 8, !dbg !3957, !tbaa !612
  %68 = load i64, i64* %2, align 8, !dbg !3960, !tbaa !608
  %69 = getelementptr inbounds i8, i8* %67, i64 %68, !dbg !3961
  %70 = load i8, i8* %69, align 1, !dbg !3961, !tbaa !660
  %71 = icmp eq i8 %70, 42, !dbg !3962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3963
  br i1 %71, label %72, label %73, !dbg !3963

; <label>:72:                                     ; preds = %66
  store i32 2, i32* %5, align 8, !dbg !3964, !tbaa !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3966
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3968
  br label %81, !dbg !3968

; <label>:73:                                     ; preds = %66
  store i32 1, i32* %5, align 8, !dbg !3970, !tbaa !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3967
  br label %76, !dbg !3967

; <label>:74:                                     ; preds = %63
  %75 = icmp eq i32 %64, 1, !dbg !3972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3967
  br i1 %75, label %76, label %79, !dbg !3967

; <label>:76:                                     ; preds = %73, %74
  %77 = tail call i32 @processInlineBuffer(%struct.client* %0) #10, !dbg !3973
  %78 = icmp eq i32 %77, 0, !dbg !3976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3977
  br i1 %78, label %85, label %143, !dbg !3977

; <label>:79:                                     ; preds = %74
  %80 = icmp eq i32 %64, 2, !dbg !3978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3968
  br i1 %80, label %81, label %84, !dbg !3968

; <label>:81:                                     ; preds = %72, %79
  %82 = tail call i32 @processMultibulkBuffer(%struct.client* %0) #10, !dbg !3980
  %83 = icmp eq i32 %82, 0, !dbg !3983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3984
  br i1 %83, label %85, label %143, !dbg !3984

; <label>:84:                                     ; preds = %79
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1468, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0)) #8, !dbg !3985
  tail call void @_exit(i32 1) #9, !dbg !3985
  unreachable

; <label>:85:                                     ; preds = %76, %81
  %86 = load i32, i32* %6, align 8, !dbg !3987, !tbaa !625
  %87 = icmp eq i32 %86, 0, !dbg !3989
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3990
  br i1 %87, label %88, label %89, !dbg !3990

; <label>:88:                                     ; preds = %85
  tail call void @resetClient(%struct.client* nonnull %0) #10, !dbg !3991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3993
  br label %142, !dbg !3993

; <label>:89:                                     ; preds = %85
  %90 = tail call i32 @processCommand(%struct.client* nonnull %0) #8, !dbg !3994
  %91 = icmp eq i32 %90, 0, !dbg !3997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3998
  br i1 %91, label %92, label %138, !dbg !3998

; <label>:92:                                     ; preds = %89
  %93 = load i32, i32* %4, align 8, !dbg !3999, !tbaa !944
  %94 = and i32 %93, 2, !dbg !4002
  %95 = icmp eq i32 %94, 0, !dbg !4002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4003
  br i1 %95, label %131, label %96, !dbg !4003

; <label>:96:                                     ; preds = %92
  %97 = and i32 %93, 8, !dbg !4004
  %98 = icmp eq i32 %97, 0, !dbg !4004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4005
  br i1 %98, label %99, label %131, !dbg !4005

; <label>:99:                                     ; preds = %96
  %100 = load i64, i64* %8, align 8, !dbg !4006, !tbaa !967
  %101 = load i8*, i8** %3, align 8, !dbg !4008, !tbaa !612
  %102 = getelementptr inbounds i8, i8* %101, i64 -1, !dbg !4011
  %103 = load i8, i8* %102, align 1, !dbg !4011, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4013
  %104 = trunc i8 %103 to i3, !dbg !4013
  switch i3 %104, label %126 [
    i3 0, label %105
    i3 1, label %108
    i3 2, label %112
    i3 3, label %117
    i3 -4, label %122
  ], !dbg !4013

; <label>:105:                                    ; preds = %99
  %106 = lshr i8 %103, 3, !dbg !4014
  %107 = zext i8 %106 to i64, !dbg !4014
  br label %126, !dbg !4015

; <label>:108:                                    ; preds = %99
  %109 = getelementptr inbounds i8, i8* %101, i64 -3, !dbg !4016
  %110 = load i8, i8* %109, align 1, !dbg !4017, !tbaa !660
  %111 = zext i8 %110 to i64, !dbg !4016
  br label %126, !dbg !4018

; <label>:112:                                    ; preds = %99
  %113 = getelementptr inbounds i8, i8* %101, i64 -5, !dbg !4019
  %114 = bitcast i8* %113 to i16*, !dbg !4020
  %115 = load i16, i16* %114, align 1, !dbg !4020, !tbaa !862
  %116 = zext i16 %115 to i64, !dbg !4019
  br label %126, !dbg !4021

; <label>:117:                                    ; preds = %99
  %118 = getelementptr inbounds i8, i8* %101, i64 -9, !dbg !4022
  %119 = bitcast i8* %118 to i32*, !dbg !4023
  %120 = load i32, i32* %119, align 1, !dbg !4023, !tbaa !549
  %121 = zext i32 %120 to i64, !dbg !4022
  br label %126, !dbg !4024

; <label>:122:                                    ; preds = %99
  %123 = getelementptr inbounds i8, i8* %101, i64 -17, !dbg !4025
  %124 = bitcast i8* %123 to i64*, !dbg !4026
  %125 = load i64, i64* %124, align 1, !dbg !4026, !tbaa !410
  br label %126, !dbg !4027

; <label>:126:                                    ; preds = %99, %105, %108, %112, %117, %122
  %127 = phi i64 [ %125, %122 ], [ %121, %117 ], [ %116, %112 ], [ %111, %108 ], [ %107, %105 ], [ 0, %99 ], !dbg !4028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4030
  %128 = sub i64 %100, %127, !dbg !4031
  %129 = load i64, i64* %2, align 8, !dbg !4032, !tbaa !608
  %130 = add i64 %128, %129, !dbg !4033
  store i64 %130, i64* %9, align 8, !dbg !4034, !tbaa !1024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4035
  br label %131, !dbg !4035

; <label>:131:                                    ; preds = %96, %92, %126
  %132 = and i32 %93, 16, !dbg !4036
  %133 = icmp eq i32 %132, 0, !dbg !4036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4038
  br i1 %133, label %137, label %134, !dbg !4038

; <label>:134:                                    ; preds = %131
  %135 = load i32, i32* %7, align 8, !dbg !4039, !tbaa !680
  %136 = icmp eq i32 %135, 3, !dbg !4040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4041
  br i1 %136, label %138, label %137, !dbg !4041

; <label>:137:                                    ; preds = %134, %131
  tail call void @resetClient(%struct.client* nonnull %0) #10, !dbg !4042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4042
  br label %138, !dbg !4042

; <label>:138:                                    ; preds = %134, %137, %89
  %139 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !4043, !tbaa !2736
  %140 = icmp eq %struct.client* %139, null, !dbg !4045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4046
  br i1 %140, label %141, label %142, !dbg !4046

; <label>:141:                                    ; preds = %138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4047
  br label %151, !dbg !4047

; <label>:142:                                    ; preds = %138, %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3905
  br label %10, !dbg !3905, !llvm.loop !4049

; <label>:143:                                    ; preds = %57, %76, %81, %60, %50, %45, %38, %37
  %144 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !4051, !tbaa !2736
  %145 = icmp eq %struct.client* %144, null, !dbg !4052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4047
  br i1 %145, label %151, label %146, !dbg !4047

; <label>:146:                                    ; preds = %143
  %147 = load i64, i64* %2, align 8, !dbg !4053, !tbaa !608
  %148 = icmp eq i64 %147, 0, !dbg !4054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4055
  br i1 %148, label %151, label %149, !dbg !4055

; <label>:149:                                    ; preds = %146
  %150 = load i8*, i8** %3, align 8, !dbg !4056, !tbaa !612
  tail call void @sdsrange(i8* %150, i64 %147, i64 -1) #8, !dbg !4058
  store i64 0, i64* %2, align 8, !dbg !4059, !tbaa !608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4060
  br label %151, !dbg !4060

; <label>:151:                                    ; preds = %141, %146, %143, %149
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !4061, !tbaa !2736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4062
  ret void, !dbg !4062
}

; Function Attrs: noredzone nounwind
define dso_local i32 @clientsArePaused() local_unnamed_addr #0 !dbg !4063 {
  %1 = alloca %struct.listIter, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !4070, !tbaa !4071
  %3 = icmp eq i32 %2, 0, !dbg !4072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4073
  br i1 %3, label %28, label %4, !dbg !4073

; <label>:4:                                      ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 46), align 8, !dbg !4074, !tbaa !4075
  %6 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 254), align 8, !dbg !4076, !tbaa !4077
  %7 = icmp slt i64 %5, %6, !dbg !4078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4079
  br i1 %7, label %8, label %28, !dbg !4079

; <label>:8:                                      ; preds = %4
  %9 = bitcast %struct.listIter* %1 to i8*, !dbg !4080
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #5, !dbg !4080
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !4081, !tbaa !4071
  %10 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !4082, !tbaa !441
  call void @listRewind(%struct.list* %10, %struct.listIter* nonnull %1) #8, !dbg !4084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4085
  %11 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !4086
  %12 = icmp eq %struct.listNode* %11, null, !dbg !4088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4085
  br i1 %12, label %26, label %13, !dbg !4085

; <label>:13:                                     ; preds = %8, %23
  %14 = phi %struct.listNode* [ %24, %23 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.listNode, %struct.listNode* %14, i64 0, i32 2, !dbg !4089
  %16 = bitcast i8** %15 to %struct.client**, !dbg !4089
  %17 = load %struct.client*, %struct.client** %16, align 8, !dbg !4089, !tbaa !1192
  %18 = getelementptr inbounds %struct.client, %struct.client* %17, i64 0, i32 21, !dbg !4092
  %19 = load i32, i32* %18, align 8, !dbg !4092, !tbaa !944
  %20 = and i32 %19, 17, !dbg !4094
  %21 = icmp eq i32 %20, 0, !dbg !4094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4095
  br i1 %21, label %22, label %23, !dbg !4095

; <label>:22:                                     ; preds = %13
  call void @queueClientForReprocessing(%struct.client* %17) #8, !dbg !4096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4085
  br label %23, !dbg !4085

; <label>:23:                                     ; preds = %22, %13
  %24 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !4086
  %25 = icmp eq %struct.listNode* %24, null, !dbg !4088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4085
  br i1 %25, label %26, label %13, !dbg !4085, !llvm.loop !4097

; <label>:26:                                     ; preds = %23, %8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #5, !dbg !4099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4100
  %27 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !4101, !tbaa !4071
  br label %28, !dbg !4100

; <label>:28:                                     ; preds = %0, %26, %4
  %29 = phi i32 [ 0, %0 ], [ %27, %26 ], [ %2, %4 ], !dbg !4101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4102
  ret i32 %29, !dbg !4102
}

; Function Attrs: noredzone
declare dso_local i32 @processCommand(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @processInputBufferAndReplicate(%struct.client*) local_unnamed_addr #0 !dbg !1011 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4104
  %3 = load i32, i32* %2, align 8, !dbg !4104, !tbaa !944
  %4 = and i32 %3, 2, !dbg !4105
  %5 = icmp eq i32 %4, 0, !dbg !4105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4106
  br i1 %5, label %6, label %7, !dbg !4106

; <label>:6:                                      ; preds = %1
  tail call void @processInputBuffer(%struct.client* nonnull %0) #10, !dbg !4107
  br label %18, !dbg !4108

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 30, !dbg !4109
  %9 = load i64, i64* %8, align 8, !dbg !4109, !tbaa !1024
  tail call void @processInputBuffer(%struct.client* nonnull %0) #10, !dbg !4111
  %10 = load i64, i64* %8, align 8, !dbg !4112, !tbaa !1024
  %11 = sub i64 %10, %9, !dbg !4113
  %12 = icmp eq i64 %11, 0, !dbg !4115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4116
  br i1 %12, label %18, label %13, !dbg !4116

; <label>:13:                                     ; preds = %7
  %14 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4117, !tbaa !1035
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 6, !dbg !4118
  %16 = load i8*, i8** %15, align 8, !dbg !4118, !tbaa !616
  tail call void @replicationFeedSlavesFromMasterStream(%struct.list* %14, i8* %16, i64 %11) #8, !dbg !4119
  %17 = load i8*, i8** %15, align 8, !dbg !4120, !tbaa !616
  tail call void @sdsrange(i8* %17, i64 %11, i64 -1) #8, !dbg !4121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4122
  br label %18, !dbg !4122

; <label>:18:                                     ; preds = %13, %7, %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4123
  ret void, !dbg !4123
}

; Function Attrs: noredzone
declare dso_local void @replicationFeedSlavesFromMasterStream(%struct.list*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @catClientInfoString(i8*, %struct.client* nocapture) local_unnamed_addr #0 !dbg !4124 {
  %3 = alloca [78 x i8], align 16
  %4 = alloca [16 x i8], align 16
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0, !dbg !4150
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #5, !dbg !4150
  %7 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0, !dbg !4150
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %7) #5, !dbg !4150
  %8 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 21, !dbg !4154
  %9 = load i32, i32* %8, align 8, !dbg !4154, !tbaa !944
  %10 = and i32 %9, 1, !dbg !4156
  %11 = icmp eq i32 %10, 0, !dbg !4156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4157
  br i1 %11, label %16, label %12, !dbg !4157

; <label>:12:                                     ; preds = %2
  %13 = and i32 %9, 4, !dbg !4158
  %14 = icmp eq i32 %13, 0, !dbg !4158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4161
  %15 = select i1 %14, i8 83, i8 79
  store i8 %15, i8* %6, align 16, !dbg !4162, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %16, !dbg !4163

; <label>:16:                                     ; preds = %12, %2
  %17 = phi i64 [ 0, %2 ], [ 1, %12 ]
  %18 = and i32 %9, 2, !dbg !4163
  %19 = icmp eq i32 %18, 0, !dbg !4163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4165
  br i1 %19, label %23, label %20, !dbg !4165

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %17, !dbg !4153
  %22 = add nuw nsw i64 %17, 1, !dbg !4166
  store i8 77, i8* %21, align 1, !dbg !4167, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4168
  br label %23, !dbg !4168

; <label>:23:                                     ; preds = %16, %20
  %24 = phi i64 [ %22, %20 ], [ %17, %16 ]
  %25 = and i32 %9, 262144, !dbg !4169
  %26 = icmp eq i32 %25, 0, !dbg !4169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4171
  br i1 %26, label %30, label %27, !dbg !4171

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %24, !dbg !4153
  %29 = add nsw i64 %24, 1, !dbg !4172
  store i8 80, i8* %28, align 1, !dbg !4173, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4174
  br label %30, !dbg !4174

; <label>:30:                                     ; preds = %23, %27
  %31 = phi i64 [ %29, %27 ], [ %24, %23 ]
  %32 = and i32 %9, 8, !dbg !4175
  %33 = icmp eq i32 %32, 0, !dbg !4175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4177
  br i1 %33, label %37, label %34, !dbg !4177

; <label>:34:                                     ; preds = %30
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %31, !dbg !4153
  %36 = add nsw i64 %31, 1, !dbg !4178
  store i8 120, i8* %35, align 1, !dbg !4179, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4180
  br label %37, !dbg !4180

; <label>:37:                                     ; preds = %30, %34
  %38 = phi i64 [ %36, %34 ], [ %31, %30 ]
  %39 = and i32 %9, 16, !dbg !4181
  %40 = icmp eq i32 %39, 0, !dbg !4181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4183
  br i1 %40, label %44, label %41, !dbg !4183

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %38, !dbg !4153
  %43 = add nsw i64 %38, 1, !dbg !4184
  store i8 98, i8* %42, align 1, !dbg !4185, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4186
  br label %44, !dbg !4186

; <label>:44:                                     ; preds = %37, %41
  %45 = phi i64 [ %43, %41 ], [ %38, %37 ]
  %46 = and i32 %9, 32, !dbg !4187
  %47 = icmp eq i32 %46, 0, !dbg !4187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4189
  br i1 %47, label %51, label %48, !dbg !4189

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %45, !dbg !4153
  %50 = add nsw i64 %45, 1, !dbg !4190
  store i8 100, i8* %49, align 1, !dbg !4191, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4192
  br label %51, !dbg !4192

; <label>:51:                                     ; preds = %44, %48
  %52 = phi i64 [ %50, %48 ], [ %45, %44 ]
  %53 = and i32 %9, 64, !dbg !4193
  %54 = icmp eq i32 %53, 0, !dbg !4193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4195
  br i1 %54, label %58, label %55, !dbg !4195

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %52, !dbg !4153
  %57 = add nsw i64 %52, 1, !dbg !4196
  store i8 99, i8* %56, align 1, !dbg !4197, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4198
  br label %58, !dbg !4198

; <label>:58:                                     ; preds = %51, %55
  %59 = phi i64 [ %57, %55 ], [ %52, %51 ]
  %60 = trunc i32 %9 to i8, !dbg !4199
  %61 = icmp slt i8 %60, 0, !dbg !4199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4201
  br i1 %61, label %62, label %65, !dbg !4201

; <label>:62:                                     ; preds = %58
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %59, !dbg !4153
  %64 = add nsw i64 %59, 1, !dbg !4202
  store i8 117, i8* %63, align 1, !dbg !4203, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4204
  br label %65, !dbg !4204

; <label>:65:                                     ; preds = %62, %58
  %66 = phi i64 [ %64, %62 ], [ %59, %58 ]
  %67 = and i32 %9, 1024, !dbg !4205
  %68 = icmp eq i32 %67, 0, !dbg !4205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4207
  br i1 %68, label %72, label %69, !dbg !4207

; <label>:69:                                     ; preds = %65
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %66, !dbg !4153
  %71 = add nsw i64 %66, 1, !dbg !4208
  store i8 65, i8* %70, align 1, !dbg !4209, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4210
  br label %72, !dbg !4210

; <label>:72:                                     ; preds = %65, %69
  %73 = phi i64 [ %71, %69 ], [ %66, %65 ]
  %74 = and i32 %9, 2048, !dbg !4211
  %75 = icmp eq i32 %74, 0, !dbg !4211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4213
  br i1 %75, label %79, label %76, !dbg !4213

; <label>:76:                                     ; preds = %72
  %77 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %73, !dbg !4153
  %78 = add nsw i64 %73, 1, !dbg !4214
  store i8 85, i8* %77, align 1, !dbg !4215, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4216
  br label %79, !dbg !4216

; <label>:79:                                     ; preds = %72, %76
  %80 = phi i64 [ %78, %76 ], [ %73, %72 ]
  %81 = and i32 %9, 131072, !dbg !4217
  %82 = icmp eq i32 %81, 0, !dbg !4217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4219
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %80, !dbg !4153
  br i1 %82, label %87, label %84, !dbg !4219

; <label>:84:                                     ; preds = %79
  %85 = add nsw i64 %80, 1, !dbg !4220
  store i8 114, i8* %83, align 1, !dbg !4221, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4222
  %86 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %85, !dbg !4153
  br label %91, !dbg !4223

; <label>:87:                                     ; preds = %79
  %88 = icmp eq i64 %80, 0, !dbg !4224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4223
  br i1 %88, label %89, label %93, !dbg !4223

; <label>:89:                                     ; preds = %87
  %90 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !4226
  store i8 78, i8* %83, align 1, !dbg !4227, !tbaa !660
  br label %91, !dbg !4228

; <label>:91:                                     ; preds = %89, %84
  %92 = phi i8* [ %86, %84 ], [ %90, %89 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4229
  br label %93, !dbg !4230

; <label>:93:                                     ; preds = %91, %87
  %94 = phi i8* [ %83, %87 ], [ %92, %91 ], !dbg !4231
  store i8 0, i8* %94, align 1, !dbg !4230, !tbaa !660
  %95 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 1, !dbg !4232
  %96 = load i32, i32* %95, align 8, !dbg !4232, !tbaa !599
  %97 = icmp eq i32 %96, -1, !dbg !4233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4234
  br i1 %97, label %98, label %99, !dbg !4234

; <label>:98:                                     ; preds = %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4236
  br label %112, !dbg !4237

; <label>:99:                                     ; preds = %93
  %100 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4238, !tbaa !583
  %101 = tail call i32 @aeGetFileEvents(%struct.aeEventLoop* %100, i32 %96) #8, !dbg !4239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4234
  %102 = and i32 %101, 1, !dbg !4240
  %103 = icmp eq i32 %102, 0, !dbg !4240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4236
  br i1 %103, label %106, label %104, !dbg !4236

; <label>:104:                                    ; preds = %99
  %105 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1, !dbg !4242
  store i8 114, i8* %7, align 1, !dbg !4243, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4244
  br label %106, !dbg !4244

; <label>:106:                                    ; preds = %99, %104
  %107 = phi i8* [ %105, %104 ], [ %7, %99 ], !dbg !4245
  %108 = and i32 %101, 2, !dbg !4246
  %109 = icmp eq i32 %108, 0, !dbg !4246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4237
  br i1 %109, label %114, label %110, !dbg !4237

; <label>:110:                                    ; preds = %106
  %111 = getelementptr inbounds i8, i8* %107, i64 1, !dbg !4248
  store i8 119, i8* %107, align 1, !dbg !4249, !tbaa !660
  br label %112, !dbg !4250

; <label>:112:                                    ; preds = %110, %98
  %113 = phi i8* [ %7, %98 ], [ %111, %110 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4251
  br label %114, !dbg !4252

; <label>:114:                                    ; preds = %112, %106
  %115 = phi i8* [ %107, %106 ], [ %113, %112 ], !dbg !4253
  store i8 0, i8* %115, align 1, !dbg !4252, !tbaa !660
  %116 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 0, !dbg !4254
  %117 = load i64, i64* %116, align 8, !dbg !4254, !tbaa !461
  %118 = getelementptr inbounds [78 x i8], [78 x i8]* %3, i64 0, i64 0, !dbg !4256
  call void @llvm.lifetime.start.p0i8(i64 78, i8* nonnull %118) #5, !dbg !4256
  %119 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 45, !dbg !4257
  %120 = load i8*, i8** %119, align 8, !dbg !4257, !tbaa !720
  %121 = icmp eq i8* %120, null, !dbg !4259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4260
  br i1 %121, label %122, label %134, !dbg !4260

; <label>:122:                                    ; preds = %114
  %123 = load i32, i32* %8, align 8, !dbg !4273, !tbaa !944
  %124 = and i32 %123, 2048, !dbg !4275
  %125 = icmp eq i32 %124, 0, !dbg !4275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4276
  br i1 %125, label %129, label %126, !dbg !4276

; <label>:126:                                    ; preds = %122
  %127 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 31), align 8, !dbg !4277, !tbaa !2500
  %128 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %118, i64 78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* %127) #8, !dbg !4279
  br label %132, !dbg !4280

; <label>:129:                                    ; preds = %122
  %130 = load i32, i32* %95, align 8, !dbg !4281, !tbaa !599
  %131 = call i32 @anetFormatPeer(i32 %130, i8* nonnull %118, i64 78) #8, !dbg !4283
  br label %132

; <label>:132:                                    ; preds = %129, %126
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4284
  %133 = call i8* @sdsnew(i8* nonnull %118) #8, !dbg !4285
  store i8* %133, i8** %119, align 8, !dbg !4286, !tbaa !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4287
  br label %134, !dbg !4287

; <label>:134:                                    ; preds = %114, %132
  %135 = phi i8* [ %133, %132 ], [ %120, %114 ], !dbg !4288
  call void @llvm.lifetime.end.p0i8(i64 78, i8* nonnull %118) #5, !dbg !4289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4290
  %136 = load i32, i32* %95, align 8, !dbg !4291, !tbaa !599
  %137 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 3, !dbg !4292
  %138 = load %struct.redisObject*, %struct.redisObject** %137, align 8, !dbg !4292, !tbaa !602
  %139 = icmp eq %struct.redisObject* %138, null, !dbg !4293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4293
  br i1 %139, label %143, label %140, !dbg !4293

; <label>:140:                                    ; preds = %134
  %141 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %138, i64 0, i32 2, !dbg !4294
  %142 = load i8*, i8** %141, align 8, !dbg !4294, !tbaa !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4293
  br label %143, !dbg !4293

; <label>:143:                                    ; preds = %134, %140
  %144 = phi i8* [ %142, %140 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.49, i64 0, i64 0), %134 ], !dbg !4293
  %145 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !4295, !tbaa !642
  %146 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 18, !dbg !4296
  %147 = load i64, i64* %146, align 8, !dbg !4296, !tbaa !648
  %148 = sub nsw i64 %145, %147, !dbg !4297
  %149 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 19, !dbg !4298
  %150 = load i64, i64* %149, align 8, !dbg !4298, !tbaa !645
  %151 = sub nsw i64 %145, %150, !dbg !4299
  %152 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 2, !dbg !4300
  %153 = load %struct.redisDb*, %struct.redisDb** %152, align 8, !dbg !4300, !tbaa !4301
  %154 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %153, i64 0, i32 5, !dbg !4302
  %155 = load i32, i32* %154, align 8, !dbg !4302, !tbaa !4303
  %156 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 43, !dbg !4305
  %157 = load %struct.dict*, %struct.dict** %156, align 8, !dbg !4305, !tbaa !713
  %158 = getelementptr inbounds %struct.dict, %struct.dict* %157, i64 0, i32 2, i64 0, i32 3, !dbg !4305
  %159 = load i64, i64* %158, align 8, !dbg !4305, !tbaa !4306
  %160 = getelementptr inbounds %struct.dict, %struct.dict* %157, i64 0, i32 2, i64 1, i32 3, !dbg !4305
  %161 = load i64, i64* %160, align 8, !dbg !4305, !tbaa !4306
  %162 = add i64 %161, %159, !dbg !4305
  %163 = trunc i64 %162 to i32, !dbg !4308
  %164 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 44, !dbg !4309
  %165 = load %struct.list*, %struct.list** %164, align 8, !dbg !4309, !tbaa !717
  %166 = getelementptr inbounds %struct.list, %struct.list* %165, i64 0, i32 5, !dbg !4309
  %167 = load i64, i64* %166, align 8, !dbg !4309, !tbaa !1101
  %168 = trunc i64 %167 to i32, !dbg !4310
  %169 = load i32, i32* %8, align 8, !dbg !4311, !tbaa !944
  %170 = and i32 %169, 8, !dbg !4312
  %171 = icmp eq i32 %170, 0, !dbg !4312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4313
  br i1 %171, label %175, label %172, !dbg !4313

; <label>:172:                                    ; preds = %143
  %173 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 38, i32 1, !dbg !4314
  %174 = load i32, i32* %173, align 8, !dbg !4314, !tbaa !4315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4313
  br label %175, !dbg !4313

; <label>:175:                                    ; preds = %143, %172
  %176 = phi i32 [ %174, %172 ], [ -1, %143 ], !dbg !4313
  %177 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 4, !dbg !4316
  %178 = load i8*, i8** %177, align 8, !dbg !4316, !tbaa !612
  %179 = getelementptr inbounds i8, i8* %178, i64 -1, !dbg !4319
  %180 = load i8, i8* %179, align 1, !dbg !4319, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4321
  %181 = trunc i8 %180 to i3, !dbg !4321
  switch i3 %181, label %221 [
    i3 0, label %182
    i3 1, label %185
    i3 2, label %193
    i3 3, label %203
    i3 -4, label %213
  ], !dbg !4321

; <label>:182:                                    ; preds = %175
  %183 = lshr i8 %180, 3, !dbg !4322
  %184 = zext i8 %183 to i64, !dbg !4322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4341
  br label %222, !dbg !4342

; <label>:185:                                    ; preds = %175
  %186 = getelementptr inbounds i8, i8* %178, i64 -3, !dbg !4344
  %187 = load i8, i8* %186, align 1, !dbg !4345, !tbaa !660
  %188 = zext i8 %187 to i64, !dbg !4344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4341
  %189 = getelementptr inbounds i8, i8* %178, i64 -2, !dbg !4348
  %190 = load i8, i8* %189, align 1, !dbg !4348, !tbaa !660
  %191 = zext i8 %190 to i64, !dbg !4349
  %192 = sub nsw i64 %191, %188, !dbg !4350
  br label %222

; <label>:193:                                    ; preds = %175
  %194 = getelementptr inbounds i8, i8* %178, i64 -5, !dbg !4351
  %195 = bitcast i8* %194 to i16*, !dbg !4352
  %196 = load i16, i16* %195, align 1, !dbg !4352, !tbaa !862
  %197 = zext i16 %196 to i64, !dbg !4351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4341
  %198 = getelementptr inbounds i8, i8* %178, i64 -3, !dbg !4355
  %199 = bitcast i8* %198 to i16*, !dbg !4355
  %200 = load i16, i16* %199, align 1, !dbg !4355, !tbaa !862
  %201 = zext i16 %200 to i64, !dbg !4356
  %202 = sub nsw i64 %201, %197, !dbg !4357
  br label %222

; <label>:203:                                    ; preds = %175
  %204 = getelementptr inbounds i8, i8* %178, i64 -9, !dbg !4358
  %205 = bitcast i8* %204 to i32*, !dbg !4359
  %206 = load i32, i32* %205, align 1, !dbg !4359, !tbaa !549
  %207 = zext i32 %206 to i64, !dbg !4358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4341
  %208 = getelementptr inbounds i8, i8* %178, i64 -5, !dbg !4362
  %209 = bitcast i8* %208 to i32*, !dbg !4362
  %210 = load i32, i32* %209, align 1, !dbg !4362, !tbaa !549
  %211 = sub i32 %210, %206, !dbg !4363
  %212 = zext i32 %211 to i64, !dbg !4364
  br label %222

; <label>:213:                                    ; preds = %175
  %214 = getelementptr inbounds i8, i8* %178, i64 -17, !dbg !4365
  %215 = bitcast i8* %214 to i64*, !dbg !4366
  %216 = load i64, i64* %215, align 1, !dbg !4366, !tbaa !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4341
  %217 = getelementptr inbounds i8, i8* %178, i64 -9, !dbg !4369
  %218 = bitcast i8* %217 to i64*, !dbg !4369
  %219 = load i64, i64* %218, align 1, !dbg !4369, !tbaa !410
  %220 = sub i64 %219, %216, !dbg !4370
  br label %222

; <label>:221:                                    ; preds = %175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4341
  br label %222, !dbg !4372

; <label>:222:                                    ; preds = %182, %185, %193, %203, %213, %221
  %223 = phi i64 [ 0, %221 ], [ %216, %213 ], [ %207, %203 ], [ %197, %193 ], [ %188, %185 ], [ %184, %182 ]
  %224 = phi i64 [ 0, %221 ], [ %220, %213 ], [ %212, %203 ], [ %202, %193 ], [ %192, %185 ], [ 0, %182 ], !dbg !4373
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4374
  %225 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 47, !dbg !4375
  %226 = load i32, i32* %225, align 8, !dbg !4375, !tbaa !605
  %227 = sext i32 %226 to i64, !dbg !4376
  %228 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 15, !dbg !4377
  %229 = load %struct.list*, %struct.list** %228, align 8, !dbg !4377, !tbaa !667
  %230 = getelementptr inbounds %struct.list, %struct.list* %229, i64 0, i32 5, !dbg !4377
  %231 = load i64, i64* %230, align 8, !dbg !4377, !tbaa !1101
  %232 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 16, !dbg !4387
  %233 = load i64, i64* %232, align 8, !dbg !4387, !tbaa !670
  %234 = mul i64 %231, 40, !dbg !4388
  %235 = add i64 %234, %233, !dbg !4389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4390
  %236 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 11, !dbg !4391
  %237 = load %struct.redisCommand*, %struct.redisCommand** %236, align 8, !dbg !4391, !tbaa !1558
  %238 = icmp eq %struct.redisCommand* %237, null, !dbg !4392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4392
  br i1 %238, label %242, label %239, !dbg !4392

; <label>:239:                                    ; preds = %222
  %240 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %237, i64 0, i32 0, !dbg !4393
  %241 = load i8*, i8** %240, align 8, !dbg !4393, !tbaa !1561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4392
  br label %242, !dbg !4392

; <label>:242:                                    ; preds = %222, %239
  %243 = phi i8* [ %241, %239 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), %222 ], !dbg !4392
  %244 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.48, i64 0, i64 0), i64 %117, i8* %135, i32 %136, i8* %144, i64 %148, i64 %151, i8* nonnull %6, i32 %155, i32 %163, i32 %168, i32 %176, i64 %223, i64 %224, i64 %227, i64 %231, i64 %235, i8* nonnull %7, i8* %243) #8, !dbg !4394
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %7) #5, !dbg !4395
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #5, !dbg !4395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4396
  ret i8* %244, !dbg !4396
}

; Function Attrs: noredzone
declare dso_local i8* @sdscatrepr(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @getClientsMaxBuffers(i64* nocapture, i64* nocapture) local_unnamed_addr #0 !dbg !4397 {
  %3 = alloca %struct.listIter, align 8
  %4 = bitcast %struct.listIter* %3 to i8*, !dbg !4411
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #5, !dbg !4411
  %5 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !4414, !tbaa !441
  call void @listRewind(%struct.list* %5, %struct.listIter* nonnull %3) #8, !dbg !4416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4417
  %6 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !4418
  %7 = icmp eq %struct.listNode* %6, null, !dbg !4420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4417
  br i1 %7, label %80, label %8, !dbg !4417

; <label>:8:                                      ; preds = %2, %76
  %9 = phi %struct.listNode* [ %78, %76 ], [ %6, %2 ]
  %10 = phi i64 [ %77, %76 ], [ 0, %2 ]
  %11 = phi i64 [ %22, %76 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.listNode, %struct.listNode* %9, i64 0, i32 2, !dbg !4421
  %13 = bitcast i8** %12 to %struct.client**, !dbg !4421
  %14 = load %struct.client*, %struct.client** %13, align 8, !dbg !4421, !tbaa !1192
  %15 = getelementptr inbounds %struct.client, %struct.client* %14, i64 0, i32 15, !dbg !4424
  %16 = load %struct.list*, %struct.list** %15, align 8, !dbg !4424, !tbaa !667
  %17 = getelementptr inbounds %struct.list, %struct.list* %16, i64 0, i32 5, !dbg !4424
  %18 = load i64, i64* %17, align 8, !dbg !4424, !tbaa !1101
  %19 = icmp ugt i64 %18, %11, !dbg !4426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4427
  br i1 %19, label %20, label %21, !dbg !4427

; <label>:20:                                     ; preds = %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4428
  br label %21, !dbg !4428

; <label>:21:                                     ; preds = %20, %8
  %22 = phi i64 [ %18, %20 ], [ %11, %8 ], !dbg !4429
  %23 = getelementptr inbounds %struct.client, %struct.client* %14, i64 0, i32 4, !dbg !4430
  %24 = load i8*, i8** %23, align 8, !dbg !4430, !tbaa !612
  %25 = getelementptr inbounds i8, i8* %24, i64 -1, !dbg !4434
  %26 = load i8, i8* %25, align 1, !dbg !4434, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4436
  %27 = trunc i8 %26 to i3, !dbg !4436
  switch i3 %27, label %74 [
    i3 0, label %28
    i3 1, label %31
    i3 2, label %35
    i3 3, label %40
    i3 -4, label %45
  ], !dbg !4436

; <label>:28:                                     ; preds = %21
  %29 = lshr i8 %26, 3, !dbg !4437
  %30 = zext i8 %29 to i64, !dbg !4437
  br label %49, !dbg !4438

; <label>:31:                                     ; preds = %21
  %32 = getelementptr inbounds i8, i8* %24, i64 -3, !dbg !4439
  %33 = load i8, i8* %32, align 1, !dbg !4440, !tbaa !660
  %34 = zext i8 %33 to i64, !dbg !4439
  br label %49, !dbg !4441

; <label>:35:                                     ; preds = %21
  %36 = getelementptr inbounds i8, i8* %24, i64 -5, !dbg !4442
  %37 = bitcast i8* %36 to i16*, !dbg !4443
  %38 = load i16, i16* %37, align 1, !dbg !4443, !tbaa !862
  %39 = zext i16 %38 to i64, !dbg !4442
  br label %49, !dbg !4444

; <label>:40:                                     ; preds = %21
  %41 = getelementptr inbounds i8, i8* %24, i64 -9, !dbg !4445
  %42 = bitcast i8* %41 to i32*, !dbg !4446
  %43 = load i32, i32* %42, align 1, !dbg !4446, !tbaa !549
  %44 = zext i32 %43 to i64, !dbg !4445
  br label %49, !dbg !4447

; <label>:45:                                     ; preds = %21
  %46 = getelementptr inbounds i8, i8* %24, i64 -17, !dbg !4448
  %47 = bitcast i8* %46 to i64*, !dbg !4449
  %48 = load i64, i64* %47, align 1, !dbg !4449, !tbaa !410
  br label %49, !dbg !4450

; <label>:49:                                     ; preds = %28, %31, %35, %40, %45
  %50 = phi i64 [ %48, %45 ], [ %44, %40 ], [ %39, %35 ], [ %34, %31 ], [ %30, %28 ], !dbg !4451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4453
  %51 = icmp ugt i64 %50, %10, !dbg !4454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4455
  br i1 %51, label %52, label %76, !dbg !4455

; <label>:52:                                     ; preds = %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4459
  switch i3 %27, label %74 [
    i3 0, label %53
    i3 1, label %56
    i3 2, label %60
    i3 3, label %65
    i3 -4, label %70
  ], !dbg !4459

; <label>:53:                                     ; preds = %52
  %54 = lshr i8 %26, 3, !dbg !4460
  %55 = zext i8 %54 to i64, !dbg !4460
  br label %74, !dbg !4461

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds i8, i8* %24, i64 -3, !dbg !4462
  %58 = load i8, i8* %57, align 1, !dbg !4463, !tbaa !660
  %59 = zext i8 %58 to i64, !dbg !4462
  br label %74, !dbg !4464

; <label>:60:                                     ; preds = %52
  %61 = getelementptr inbounds i8, i8* %24, i64 -5, !dbg !4465
  %62 = bitcast i8* %61 to i16*, !dbg !4466
  %63 = load i16, i16* %62, align 1, !dbg !4466, !tbaa !862
  %64 = zext i16 %63 to i64, !dbg !4465
  br label %74, !dbg !4467

; <label>:65:                                     ; preds = %52
  %66 = getelementptr inbounds i8, i8* %24, i64 -9, !dbg !4468
  %67 = bitcast i8* %66 to i32*, !dbg !4469
  %68 = load i32, i32* %67, align 1, !dbg !4469, !tbaa !549
  %69 = zext i32 %68 to i64, !dbg !4468
  br label %74, !dbg !4470

; <label>:70:                                     ; preds = %52
  %71 = getelementptr inbounds i8, i8* %24, i64 -17, !dbg !4471
  %72 = bitcast i8* %71 to i64*, !dbg !4472
  %73 = load i64, i64* %72, align 1, !dbg !4472, !tbaa !410
  br label %74, !dbg !4473

; <label>:74:                                     ; preds = %70, %65, %60, %56, %53, %52, %21
  %75 = phi i64 [ %10, %21 ], [ %73, %70 ], [ %69, %65 ], [ %64, %60 ], [ %59, %56 ], [ %55, %53 ], [ 0, %52 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4452
  br label %76, !dbg !4417

; <label>:76:                                     ; preds = %74, %49
  %77 = phi i64 [ %10, %49 ], [ %75, %74 ], !dbg !4429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4417
  %78 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !4418
  %79 = icmp eq %struct.listNode* %78, null, !dbg !4420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4417
  br i1 %79, label %80, label %8, !dbg !4417, !llvm.loop !4474

; <label>:80:                                     ; preds = %76, %2
  %81 = phi i64 [ 0, %2 ], [ %22, %76 ], !dbg !4476
  %82 = phi i64 [ 0, %2 ], [ %77, %76 ], !dbg !4452
  store i64 %81, i64* %0, align 8, !dbg !4477, !tbaa !410
  store i64 %82, i64* %1, align 8, !dbg !4478, !tbaa !410
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #5, !dbg !4479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4479
  ret void, !dbg !4479
}

; Function Attrs: noredzone nounwind
define dso_local void @genClientPeerId(%struct.client* nocapture readonly, i8*, i64) local_unnamed_addr #0 !dbg !4262 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4483
  %5 = load i32, i32* %4, align 8, !dbg !4483, !tbaa !944
  %6 = and i32 %5, 2048, !dbg !4484
  %7 = icmp eq i32 %6, 0, !dbg !4484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4485
  br i1 %7, label %11, label %8, !dbg !4485

; <label>:8:                                      ; preds = %3
  %9 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 31), align 8, !dbg !4486, !tbaa !2500
  %10 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1, i64 %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* %9) #8, !dbg !4487
  br label %15, !dbg !4488

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !4489
  %13 = load i32, i32* %12, align 8, !dbg !4489, !tbaa !599
  %14 = tail call i32 @anetFormatPeer(i32 %13, i8* %1, i64 %2) #8, !dbg !4490
  br label %15

; <label>:15:                                     ; preds = %11, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4491
  ret void, !dbg !4491
}

; Function Attrs: noredzone
declare dso_local i32 @anetFormatPeer(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @getClientPeerId(%struct.client* nocapture) local_unnamed_addr #0 !dbg !4138 {
  %2 = alloca [78 x i8], align 16
  %3 = getelementptr inbounds [78 x i8], [78 x i8]* %2, i64 0, i64 0, !dbg !4493
  call void @llvm.lifetime.start.p0i8(i64 78, i8* nonnull %3) #5, !dbg !4493
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 45, !dbg !4495
  %5 = load i8*, i8** %4, align 8, !dbg !4495, !tbaa !720
  %6 = icmp eq i8* %5, null, !dbg !4496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4497
  br i1 %6, label %7, label %21, !dbg !4497

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4502
  %9 = load i32, i32* %8, align 8, !dbg !4502, !tbaa !944
  %10 = and i32 %9, 2048, !dbg !4503
  %11 = icmp eq i32 %10, 0, !dbg !4503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4504
  br i1 %11, label %15, label %12, !dbg !4504

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 31), align 8, !dbg !4505, !tbaa !2500
  %14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %3, i64 78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* %13) #8, !dbg !4506
  br label %19, !dbg !4507

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !4508
  %17 = load i32, i32* %16, align 8, !dbg !4508, !tbaa !599
  %18 = call i32 @anetFormatPeer(i32 %17, i8* nonnull %3, i64 78) #8, !dbg !4509
  br label %19

; <label>:19:                                     ; preds = %12, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4510
  %20 = call i8* @sdsnew(i8* nonnull %3) #8, !dbg !4511
  store i8* %20, i8** %4, align 8, !dbg !4512, !tbaa !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4513
  br label %21, !dbg !4513

; <label>:21:                                     ; preds = %19, %1
  %22 = phi i8* [ %20, %19 ], [ %5, %1 ], !dbg !4514
  call void @llvm.lifetime.end.p0i8(i64 78, i8* nonnull %3) #5, !dbg !4515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4516
  ret i8* %22, !dbg !4516
}

; Function Attrs: noredzone
declare dso_local i32 @aeGetFileEvents(%struct.aeEventLoop*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatfmt(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @getClientOutputBufferMemoryUsage(%struct.client* nocapture readonly) local_unnamed_addr #0 !dbg !4379 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !4519
  %3 = load i64, i64* %2, align 8, !dbg !4519, !tbaa !670
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !4520
  %5 = load %struct.list*, %struct.list** %4, align 8, !dbg !4520, !tbaa !667
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 5, !dbg !4520
  %7 = load i64, i64* %6, align 8, !dbg !4520, !tbaa !1101
  %8 = mul i64 %7, 40, !dbg !4521
  %9 = add i64 %8, %3, !dbg !4522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4523
  ret i64 %9, !dbg !4523
}

; Function Attrs: noredzone nounwind
define dso_local i8* @getAllClientsInfoString(i32) local_unnamed_addr #0 !dbg !4524 {
  %2 = alloca %struct.listIter, align 8
  %3 = bitcast %struct.listIter* %2 to i8*, !dbg !4534
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #5, !dbg !4534
  %4 = load i8*, i8** @SDS_NOINIT, align 8, !dbg !4535, !tbaa !476
  %5 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !4536, !tbaa !441
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 5, !dbg !4536
  %7 = load i64, i64* %6, align 8, !dbg !4536, !tbaa !1101
  %8 = mul i64 %7, 200, !dbg !4537
  %9 = tail call i8* @sdsnewlen(i8* %4, i64 %8) #8, !dbg !4538
  tail call void @sdsclear(i8* %9) #8, !dbg !4540
  %10 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !4541, !tbaa !441
  call void @listRewind(%struct.list* %10, %struct.listIter* nonnull %2) #8, !dbg !4543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4544
  %11 = icmp eq i32 %0, -1
  br label %12, !dbg !4544

; <label>:12:                                     ; preds = %40, %1
  %13 = phi i8* [ %42, %40 ], [ %9, %1 ]
  br label %14, !dbg !4545

; <label>:14:                                     ; preds = %12, %37
  %15 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !4545
  %16 = icmp eq %struct.listNode* %15, null, !dbg !4547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4544
  br i1 %16, label %43, label %17, !dbg !4544

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.listNode, %struct.listNode* %15, i64 0, i32 2, !dbg !4548
  %19 = bitcast i8** %18 to %struct.client**, !dbg !4548
  %20 = load %struct.client*, %struct.client** %19, align 8, !dbg !4548, !tbaa !1192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4551
  br i1 %11, label %40, label %21, !dbg !4551

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 21, !dbg !4558
  %23 = load i32, i32* %22, align 8, !dbg !4558, !tbaa !944
  %24 = and i32 %23, 2, !dbg !4560
  %25 = icmp eq i32 %24, 0, !dbg !4560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4561
  br i1 %25, label %27, label %26, !dbg !4561

; <label>:26:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4562
  br label %37, !dbg !4562

; <label>:27:                                     ; preds = %21
  %28 = and i32 %23, 1, !dbg !4563
  %29 = icmp eq i32 %28, 0, !dbg !4563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4565
  br i1 %29, label %34, label %30, !dbg !4565

; <label>:30:                                     ; preds = %27
  %31 = and i32 %23, 4, !dbg !4566
  %32 = icmp eq i32 %31, 0, !dbg !4566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4567
  br i1 %32, label %33, label %34, !dbg !4567

; <label>:33:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4568
  br label %37, !dbg !4568

; <label>:34:                                     ; preds = %30, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4570
  %35 = lshr i32 %23, 17, !dbg !4572
  %36 = and i32 %35, 2, !dbg !4572
  br label %37, !dbg !4572

; <label>:37:                                     ; preds = %26, %33, %34
  %38 = phi i32 [ 3, %26 ], [ 1, %33 ], [ %36, %34 ], !dbg !4573
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4574
  %39 = icmp eq i32 %38, %0, !dbg !4575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4576
  br i1 %39, label %40, label %14, !dbg !4576, !llvm.loop !4577

; <label>:40:                                     ; preds = %37, %17
  %41 = call i8* @catClientInfoString(i8* %13, %struct.client* %20) #10, !dbg !4579
  %42 = call i8* @sdscatlen(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 1) #8, !dbg !4580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4544
  br label %12, !dbg !4544, !llvm.loop !4577

; <label>:43:                                     ; preds = %14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #5, !dbg !4581
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4582
  ret i8* %13, !dbg !4582
}

; Function Attrs: noredzone nounwind
define dso_local i32 @getClientType(%struct.client* nocapture readonly) local_unnamed_addr #0 !dbg !4554 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4584
  %3 = load i32, i32* %2, align 8, !dbg !4584, !tbaa !944
  %4 = and i32 %3, 2, !dbg !4585
  %5 = icmp eq i32 %4, 0, !dbg !4585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4586
  br i1 %5, label %7, label %6, !dbg !4586

; <label>:6:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4587
  br label %17, !dbg !4587

; <label>:7:                                      ; preds = %1
  %8 = and i32 %3, 1, !dbg !4588
  %9 = icmp eq i32 %8, 0, !dbg !4588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4589
  br i1 %9, label %14, label %10, !dbg !4589

; <label>:10:                                     ; preds = %7
  %11 = and i32 %3, 4, !dbg !4590
  %12 = icmp eq i32 %11, 0, !dbg !4590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4591
  br i1 %12, label %13, label %14, !dbg !4591

; <label>:13:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4592
  br label %17, !dbg !4592

; <label>:14:                                     ; preds = %10, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4594
  %15 = lshr i32 %3, 17, !dbg !4595
  %16 = and i32 %15, 2, !dbg !4595
  br label %17, !dbg !4595

; <label>:17:                                     ; preds = %14, %13, %6
  %18 = phi i32 [ 3, %6 ], [ 1, %13 ], [ %16, %14 ], !dbg !4596
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4597
  ret i32 %18, !dbg !4597
}

; Function Attrs: noredzone nounwind
define dso_local void @clientCommand(%struct.client*) local_unnamed_addr #0 !dbg !4598 {
  %2 = alloca i64, align 8
  %3 = alloca [78 x i8], align 16
  %4 = alloca %struct.listIter, align 8
  %5 = alloca [14 x i8*], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = bitcast %struct.listIter* %4 to i8*, !dbg !4653
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #5, !dbg !4653
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4654
  %11 = load i32, i32* %10, align 8, !dbg !4654, !tbaa !625
  %12 = icmp eq i32 %11, 2, !dbg !4655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4656
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %14 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4657, !tbaa !628
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !4657, !tbaa !476
  %17 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %16, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8, !dbg !4657, !tbaa !376
  br i1 %12, label %19, label %25, !dbg !4656

; <label>:19:                                     ; preds = %1
  %20 = tail call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #11, !dbg !4658
  %21 = icmp eq i32 %20, 0, !dbg !4658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4659
  br i1 %21, label %22, label %25, !dbg !4659

; <label>:22:                                     ; preds = %19
  %23 = bitcast [14 x i8*]* %5 to i8*, !dbg !4660
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %23) #5, !dbg !4660
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %23, i8* align 16 bitcast ([14 x i8*]* @clientCommand.help to i8*), i64 112, i1 false), !dbg !4661
  %24 = getelementptr inbounds [14 x i8*], [14 x i8*]* %5, i64 0, i64 0, !dbg !4662
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %24) #10, !dbg !4663
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %23) #5, !dbg !4664
  br label %499, !dbg !4665

; <label>:25:                                     ; preds = %1, %19
  %26 = tail call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0)) #11, !dbg !4666
  %27 = icmp eq i32 %26, 0, !dbg !4666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4667
  br i1 %27, label %28, label %32, !dbg !4667

; <label>:28:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4668
  br i1 %12, label %29, label %32, !dbg !4668

; <label>:29:                                     ; preds = %28
  %30 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 0, !dbg !4669
  %31 = load i64, i64* %30, align 8, !dbg !4669, !tbaa !461
  tail call void @addReplyLongLong(%struct.client* nonnull %0, i64 %31) #10, !dbg !4671
  br label %499, !dbg !4672

; <label>:32:                                     ; preds = %25, %28
  %33 = tail call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i64 0, i64 0)) #11, !dbg !4673
  %34 = icmp eq i32 %33, 0, !dbg !4673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4674
  br i1 %34, label %35, label %89, !dbg !4674

; <label>:35:                                     ; preds = %32
  %36 = icmp eq i32 %11, 4, !dbg !4676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4678
  br i1 %36, label %37, label %57, !dbg !4678

; <label>:37:                                     ; preds = %35
  %38 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 2, !dbg !4679
  %39 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !4679, !tbaa !476
  %40 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %39, i64 0, i32 2, !dbg !4680
  %41 = load i8*, i8** %40, align 8, !dbg !4680, !tbaa !376
  %42 = tail call i32 @strcasecmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0)) #11, !dbg !4681
  %43 = icmp eq i32 %42, 0, !dbg !4681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4682
  br i1 %43, label %44, label %57, !dbg !4682

; <label>:44:                                     ; preds = %37
  %45 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 3, !dbg !4683
  %46 = load %struct.redisObject*, %struct.redisObject** %45, align 8, !dbg !4683, !tbaa !476
  %47 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %46, i64 0, i32 2, !dbg !4685
  %48 = load i8*, i8** %47, align 8, !dbg !4685, !tbaa !376
  %49 = tail call i32 @getClientTypeByName(i8* %48) #10, !dbg !4686
  %50 = icmp eq i32 %49, -1, !dbg !4687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4689
  br i1 %50, label %51, label %60, !dbg !4689

; <label>:51:                                     ; preds = %44
  %52 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4690, !tbaa !628
  %53 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %52, i64 3, !dbg !4692
  %54 = load %struct.redisObject*, %struct.redisObject** %53, align 8, !dbg !4692, !tbaa !476
  %55 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %54, i64 0, i32 2, !dbg !4693
  %56 = load i8*, i8** %55, align 8, !dbg !4693, !tbaa !376
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i64 0, i64 0), i8* %56) #10, !dbg !4694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4695
  br label %500

; <label>:57:                                     ; preds = %37, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4696
  br i1 %12, label %60, label %58, !dbg !4696

; <label>:58:                                     ; preds = %57
  %59 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4697, !tbaa !4700
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %59) #10, !dbg !4701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4702
  br label %500

; <label>:60:                                     ; preds = %57, %44
  %61 = phi i32 [ -1, %57 ], [ %49, %44 ], !dbg !4703
  %62 = tail call i8* @getAllClientsInfoString(i32 %61) #10, !dbg !4704
  %63 = getelementptr inbounds i8, i8* %62, i64 -1, !dbg !4708
  %64 = load i8, i8* %63, align 1, !dbg !4708, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4710
  %65 = trunc i8 %64 to i3, !dbg !4710
  switch i3 %65, label %87 [
    i3 0, label %66
    i3 1, label %69
    i3 2, label %73
    i3 3, label %78
    i3 -4, label %83
  ], !dbg !4710

; <label>:66:                                     ; preds = %60
  %67 = lshr i8 %64, 3, !dbg !4711
  %68 = zext i8 %67 to i64, !dbg !4711
  br label %87, !dbg !4712

; <label>:69:                                     ; preds = %60
  %70 = getelementptr inbounds i8, i8* %62, i64 -3, !dbg !4713
  %71 = load i8, i8* %70, align 1, !dbg !4714, !tbaa !660
  %72 = zext i8 %71 to i64, !dbg !4713
  br label %87, !dbg !4715

; <label>:73:                                     ; preds = %60
  %74 = getelementptr inbounds i8, i8* %62, i64 -5, !dbg !4716
  %75 = bitcast i8* %74 to i16*, !dbg !4717
  %76 = load i16, i16* %75, align 1, !dbg !4717, !tbaa !862
  %77 = zext i16 %76 to i64, !dbg !4716
  br label %87, !dbg !4718

; <label>:78:                                     ; preds = %60
  %79 = getelementptr inbounds i8, i8* %62, i64 -9, !dbg !4719
  %80 = bitcast i8* %79 to i32*, !dbg !4720
  %81 = load i32, i32* %80, align 1, !dbg !4720, !tbaa !549
  %82 = zext i32 %81 to i64, !dbg !4719
  br label %87, !dbg !4721

; <label>:83:                                     ; preds = %60
  %84 = getelementptr inbounds i8, i8* %62, i64 -17, !dbg !4722
  %85 = bitcast i8* %84 to i64*, !dbg !4723
  %86 = load i64, i64* %85, align 1, !dbg !4723, !tbaa !410
  br label %87, !dbg !4724

; <label>:87:                                     ; preds = %60, %66, %69, %73, %78, %83
  %88 = phi i64 [ %86, %83 ], [ %82, %78 ], [ %77, %73 ], [ %72, %69 ], [ %68, %66 ], [ 0, %60 ], !dbg !4725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4727
  tail call void @addReplyBulkCBuffer(%struct.client* nonnull %0, i8* %62, i64 %88) #10, !dbg !4728
  tail call void @sdsfree(i8* %62) #8, !dbg !4729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4730
  br label %499

; <label>:89:                                     ; preds = %32
  %90 = tail call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0)) #11, !dbg !4731
  %91 = icmp eq i32 %90, 0, !dbg !4731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4732
  br i1 %91, label %92, label %125, !dbg !4732

; <label>:92:                                     ; preds = %89
  %93 = icmp eq i32 %11, 3, !dbg !4733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4734
  br i1 %93, label %94, label %125, !dbg !4734

; <label>:94:                                     ; preds = %92
  %95 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 2, !dbg !4735
  %96 = load %struct.redisObject*, %struct.redisObject** %95, align 8, !dbg !4735, !tbaa !476
  %97 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %96, i64 0, i32 2, !dbg !4738
  %98 = load i8*, i8** %97, align 8, !dbg !4738, !tbaa !376
  %99 = tail call i32 @strcasecmp(i8* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0)) #11, !dbg !4739
  %100 = icmp eq i32 %99, 0, !dbg !4739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4740
  br i1 %100, label %101, label %106, !dbg !4740

; <label>:101:                                    ; preds = %94
  %102 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4741
  %103 = load i32, i32* %102, align 8, !dbg !4743, !tbaa !944
  %104 = and i32 %103, -20971521, !dbg !4743
  store i32 %104, i32* %102, align 8, !dbg !4743, !tbaa !944
  %105 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !4744, !tbaa !4745
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %105) #10, !dbg !4746
  br label %499, !dbg !4747

; <label>:106:                                    ; preds = %94
  %107 = tail call i32 @strcasecmp(i8* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0)) #11, !dbg !4748
  %108 = icmp eq i32 %107, 0, !dbg !4748
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4750
  br i1 %108, label %109, label %113, !dbg !4750

; <label>:109:                                    ; preds = %106
  %110 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4751
  %111 = load i32, i32* %110, align 8, !dbg !4753, !tbaa !944
  %112 = or i32 %111, 4194304, !dbg !4753
  store i32 %112, i32* %110, align 8, !dbg !4753, !tbaa !944
  br label %499, !dbg !4754

; <label>:113:                                    ; preds = %106
  %114 = tail call i32 @strcasecmp(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0)) #11, !dbg !4755
  %115 = icmp eq i32 %114, 0, !dbg !4755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4757
  br i1 %115, label %116, label %123, !dbg !4757

; <label>:116:                                    ; preds = %113
  %117 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4758
  %118 = load i32, i32* %117, align 8, !dbg !4758, !tbaa !944
  %119 = and i32 %118, 4194304, !dbg !4761
  %120 = icmp eq i32 %119, 0, !dbg !4761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4762
  br i1 %120, label %121, label %500, !dbg !4762

; <label>:121:                                    ; preds = %116
  %122 = or i32 %118, 8388608, !dbg !4763
  store i32 %122, i32* %117, align 8, !dbg !4763, !tbaa !944
  br label %499, !dbg !4764

; <label>:123:                                    ; preds = %113
  %124 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4765, !tbaa !4700
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %124) #10, !dbg !4767
  br label %500, !dbg !4768

; <label>:125:                                    ; preds = %89, %92
  %126 = tail call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0)) #11, !dbg !4769
  %127 = icmp eq i32 %126, 0, !dbg !4769
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4770
  br i1 %127, label %128, label %333, !dbg !4770

; <label>:128:                                    ; preds = %125
  %129 = icmp eq i32 %11, 3, !dbg !4777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4778
  br i1 %129, label %130, label %135, !dbg !4778

; <label>:130:                                    ; preds = %128
  %131 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 2, !dbg !4779
  %132 = load %struct.redisObject*, %struct.redisObject** %131, align 8, !dbg !4779, !tbaa !476
  %133 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %132, i64 0, i32 2, !dbg !4781
  %134 = load i8*, i8** %133, align 8, !dbg !4781, !tbaa !376
  br label %229, !dbg !4782

; <label>:135:                                    ; preds = %128
  %136 = icmp sgt i32 %11, 3, !dbg !4783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4784
  br i1 %136, label %137, label %227, !dbg !4784

; <label>:137:                                    ; preds = %135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4786
  %138 = bitcast i64* %6 to i8*
  br label %139, !dbg !4786

; <label>:139:                                    ; preds = %223, %137
  %140 = phi %struct.redisObject** [ %14, %137 ], [ %224, %223 ], !dbg !4787
  %141 = phi i64 [ 2, %137 ], [ %219, %223 ]
  %142 = phi i32 [ %11, %137 ], [ %220, %223 ]
  %143 = phi i8* [ null, %137 ], [ %218, %223 ]
  %144 = phi i32 [ -1, %137 ], [ %217, %223 ]
  %145 = phi i32 [ 1, %137 ], [ %216, %223 ]
  %146 = phi i64 [ 0, %137 ], [ %215, %223 ]
  %147 = or i64 %141, 1, !dbg !4788
  %148 = sext i32 %142 to i64, !dbg !4789
  %149 = icmp slt i64 %147, %148, !dbg !4789
  %150 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %140, i64 %141, !dbg !4790
  %151 = load %struct.redisObject*, %struct.redisObject** %150, align 8, !dbg !4790, !tbaa !476
  %152 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %151, i64 0, i32 2, !dbg !4791
  %153 = load i8*, i8** %152, align 8, !dbg !4791, !tbaa !376
  %154 = call i32 @strcasecmp(i8* %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0)) #11, !dbg !4792
  %155 = icmp eq i32 %154, 0, !dbg !4792
  %156 = and i1 %149, %155, !dbg !4793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4793
  br i1 %156, label %157, label %165, !dbg !4793

; <label>:157:                                    ; preds = %139
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %138) #5, !dbg !4794
  %158 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %140, i64 %147, !dbg !4795
  %159 = load %struct.redisObject*, %struct.redisObject** %158, align 8, !dbg !4795, !tbaa !476
  %160 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %159, i64* nonnull %6, i8* null) #8, !dbg !4798
  %161 = icmp eq i32 %160, 0, !dbg !4799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4800
  br i1 %161, label %162, label %164, !dbg !4800

; <label>:162:                                    ; preds = %157
  %163 = load i64, i64* %6, align 8, !dbg !4801, !tbaa !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4802
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %138) #5, !dbg !4802
  br label %210

; <label>:164:                                    ; preds = %157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4803
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %138) #5, !dbg !4802
  br label %226

; <label>:165:                                    ; preds = %139
  %166 = call i32 @strcasecmp(i8* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0)) #11, !dbg !4804
  %167 = icmp eq i32 %166, 0, !dbg !4804
  %168 = and i1 %149, %167, !dbg !4806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4806
  br i1 %168, label %169, label %183, !dbg !4806

; <label>:169:                                    ; preds = %165
  %170 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %140, i64 %147, !dbg !4807
  %171 = load %struct.redisObject*, %struct.redisObject** %170, align 8, !dbg !4807, !tbaa !476
  %172 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %171, i64 0, i32 2, !dbg !4809
  %173 = load i8*, i8** %172, align 8, !dbg !4809, !tbaa !376
  %174 = call i32 @getClientTypeByName(i8* %173) #10, !dbg !4810
  %175 = icmp eq i32 %174, -1, !dbg !4811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4813
  br i1 %175, label %176, label %214, !dbg !4813

; <label>:176:                                    ; preds = %169
  %177 = and i64 %147, 4294967295, !dbg !4807
  %178 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4814, !tbaa !628
  %179 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %178, i64 %177, !dbg !4816
  %180 = load %struct.redisObject*, %struct.redisObject** %179, align 8, !dbg !4816, !tbaa !476
  %181 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %180, i64 0, i32 2, !dbg !4817
  %182 = load i8*, i8** %181, align 8, !dbg !4817, !tbaa !376
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i64 0, i64 0), i8* %182) #10, !dbg !4818
  br label %226, !dbg !4819

; <label>:183:                                    ; preds = %165
  %184 = call i32 @strcasecmp(i8* %153, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0)) #11, !dbg !4820
  %185 = icmp eq i32 %184, 0, !dbg !4820
  %186 = and i1 %149, %185, !dbg !4822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4822
  br i1 %186, label %187, label %192, !dbg !4822

; <label>:187:                                    ; preds = %183
  %188 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %140, i64 %147, !dbg !4823
  %189 = load %struct.redisObject*, %struct.redisObject** %188, align 8, !dbg !4823, !tbaa !476
  %190 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %189, i64 0, i32 2, !dbg !4825
  %191 = load i8*, i8** %190, align 8, !dbg !4825, !tbaa !376
  br label %210, !dbg !4826

; <label>:192:                                    ; preds = %183
  %193 = call i32 @strcasecmp(i8* %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0)) #11, !dbg !4827
  %194 = icmp eq i32 %193, 0, !dbg !4827
  %195 = and i1 %149, %194, !dbg !4829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4829
  br i1 %195, label %196, label %208, !dbg !4829

; <label>:196:                                    ; preds = %192
  %197 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %140, i64 %147, !dbg !4830
  %198 = load %struct.redisObject*, %struct.redisObject** %197, align 8, !dbg !4830, !tbaa !476
  %199 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %198, i64 0, i32 2, !dbg !4833
  %200 = load i8*, i8** %199, align 8, !dbg !4833, !tbaa !376
  %201 = call i32 @strcasecmp(i8* %200, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #11, !dbg !4834
  %202 = icmp eq i32 %201, 0, !dbg !4834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4835
  br i1 %202, label %210, label %203, !dbg !4835

; <label>:203:                                    ; preds = %196
  %204 = call i32 @strcasecmp(i8* %200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0)) #11, !dbg !4836
  %205 = icmp eq i32 %204, 0, !dbg !4836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4838
  br i1 %205, label %210, label %206, !dbg !4838

; <label>:206:                                    ; preds = %203
  %207 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4839, !tbaa !4700
  call void @addReply(%struct.client* %0, %struct.redisObject* %207) #10, !dbg !4841
  br label %226, !dbg !4842

; <label>:208:                                    ; preds = %192
  %209 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4843, !tbaa !4700
  call void @addReply(%struct.client* %0, %struct.redisObject* %209) #10, !dbg !4845
  br label %226, !dbg !4846

; <label>:210:                                    ; preds = %203, %196, %162, %187
  %211 = phi i64 [ %163, %162 ], [ %146, %187 ], [ %146, %196 ], [ %146, %203 ]
  %212 = phi i32 [ %145, %162 ], [ %145, %187 ], [ 1, %196 ], [ 0, %203 ]
  %213 = phi i8* [ %143, %162 ], [ %191, %187 ], [ %143, %196 ], [ %143, %203 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %214, !dbg !4847

; <label>:214:                                    ; preds = %210, %169
  %215 = phi i64 [ %146, %169 ], [ %211, %210 ], !dbg !4773
  %216 = phi i32 [ %145, %169 ], [ %212, %210 ], !dbg !4848
  %217 = phi i32 [ %174, %169 ], [ %144, %210 ], !dbg !4850
  %218 = phi i8* [ %143, %169 ], [ %213, %210 ], !dbg !4850
  %219 = add nuw i64 %141, 2, !dbg !4847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4851
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %220 = load i32, i32* %10, align 8, !dbg !4852, !tbaa !625
  %221 = trunc i64 %219 to i32, !dbg !4853
  %222 = icmp sgt i32 %220, %221, !dbg !4853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4786
  br i1 %222, label %223, label %225, !dbg !4786

; <label>:223:                                    ; preds = %214
  %224 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4787, !tbaa !628
  br label %139, !dbg !4786

; <label>:225:                                    ; preds = %214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4854
  br label %229

; <label>:226:                                    ; preds = %164, %176, %206, %208
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %331

; <label>:227:                                    ; preds = %135
  %228 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4855, !tbaa !4700
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %228) #10, !dbg !4857
  br label %331, !dbg !4858

; <label>:229:                                    ; preds = %225, %130
  %230 = phi i64 [ 0, %130 ], [ %215, %225 ], !dbg !4773
  %231 = phi i32 [ 0, %130 ], [ %216, %225 ], !dbg !4850
  %232 = phi i32 [ -1, %130 ], [ %217, %225 ], !dbg !4772
  %233 = phi i8* [ %134, %130 ], [ %218, %225 ], !dbg !4850
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %234 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !4859, !tbaa !441
  call void @listRewind(%struct.list* %234, %struct.listIter* nonnull %4) #8, !dbg !4861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4862
  %235 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #8, !dbg !4863
  %236 = icmp eq %struct.listNode* %235, null, !dbg !4865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4862
  br i1 %236, label %312, label %237, !dbg !4862

; <label>:237:                                    ; preds = %229
  %238 = icmp eq i8* %233, null
  %239 = icmp eq i32 %232, -1
  %240 = getelementptr inbounds [78 x i8], [78 x i8]* %3, i64 0, i64 0
  %241 = icmp eq i64 %230, 0
  %242 = icmp ne i32 %231, 0
  br label %243, !dbg !4862

; <label>:243:                                    ; preds = %237, %307
  %244 = phi %struct.listNode* [ %235, %237 ], [ %310, %307 ]
  %245 = phi i32 [ 0, %237 ], [ %308, %307 ]
  %246 = phi i32 [ 0, %237 ], [ %309, %307 ]
  br label %247, !dbg !4862

; <label>:247:                                    ; preds = %243, %302
  %248 = phi %struct.listNode* [ %244, %243 ], [ %303, %302 ]
  %249 = getelementptr inbounds %struct.listNode, %struct.listNode* %248, i64 0, i32 2, !dbg !4866
  %250 = bitcast i8** %249 to %struct.client**, !dbg !4866
  %251 = load %struct.client*, %struct.client** %250, align 8, !dbg !4866, !tbaa !1192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4868
  br i1 %238, label %274, label %252, !dbg !4868

; <label>:252:                                    ; preds = %247
  call void @llvm.lifetime.start.p0i8(i64 78, i8* nonnull %240) #5, !dbg !4870
  %253 = getelementptr inbounds %struct.client, %struct.client* %251, i64 0, i32 45, !dbg !4871
  %254 = load i8*, i8** %253, align 8, !dbg !4871, !tbaa !720
  %255 = icmp eq i8* %254, null, !dbg !4872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4873
  br i1 %255, label %256, label %270, !dbg !4873

; <label>:256:                                    ; preds = %252
  %257 = getelementptr inbounds %struct.client, %struct.client* %251, i64 0, i32 21, !dbg !4878
  %258 = load i32, i32* %257, align 8, !dbg !4878, !tbaa !944
  %259 = and i32 %258, 2048, !dbg !4879
  %260 = icmp eq i32 %259, 0, !dbg !4879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4880
  br i1 %260, label %264, label %261, !dbg !4880

; <label>:261:                                    ; preds = %256
  %262 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 31), align 8, !dbg !4881, !tbaa !2500
  %263 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %240, i64 78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* %262) #8, !dbg !4882
  br label %268, !dbg !4883

; <label>:264:                                    ; preds = %256
  %265 = getelementptr inbounds %struct.client, %struct.client* %251, i64 0, i32 1, !dbg !4884
  %266 = load i32, i32* %265, align 8, !dbg !4884, !tbaa !599
  %267 = call i32 @anetFormatPeer(i32 %266, i8* nonnull %240, i64 78) #8, !dbg !4885
  br label %268

; <label>:268:                                    ; preds = %264, %261
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4886
  %269 = call i8* @sdsnew(i8* nonnull %240) #8, !dbg !4887
  store i8* %269, i8** %253, align 8, !dbg !4888, !tbaa !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4889
  br label %270, !dbg !4889

; <label>:270:                                    ; preds = %252, %268
  %271 = phi i8* [ %269, %268 ], [ %254, %252 ], !dbg !4890
  call void @llvm.lifetime.end.p0i8(i64 78, i8* nonnull %240) #5, !dbg !4891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4892
  %272 = call i32 @strcmp(i8* %271, i8* nonnull %233) #8, !dbg !4893
  %273 = icmp eq i32 %272, 0, !dbg !4894
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4895
  br i1 %273, label %274, label %302, !dbg !4895

; <label>:274:                                    ; preds = %270, %247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4896
  br i1 %239, label %294, label %275, !dbg !4896

; <label>:275:                                    ; preds = %274
  %276 = getelementptr inbounds %struct.client, %struct.client* %251, i64 0, i32 21, !dbg !4900
  %277 = load i32, i32* %276, align 8, !dbg !4900, !tbaa !944
  %278 = and i32 %277, 2, !dbg !4901
  %279 = icmp eq i32 %278, 0, !dbg !4901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4902
  br i1 %279, label %281, label %280, !dbg !4902

; <label>:280:                                    ; preds = %275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4903
  br label %291, !dbg !4903

; <label>:281:                                    ; preds = %275
  %282 = and i32 %277, 1, !dbg !4904
  %283 = icmp eq i32 %282, 0, !dbg !4904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4905
  br i1 %283, label %288, label %284, !dbg !4905

; <label>:284:                                    ; preds = %281
  %285 = and i32 %277, 4, !dbg !4906
  %286 = icmp eq i32 %285, 0, !dbg !4906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4907
  br i1 %286, label %287, label %288, !dbg !4907

; <label>:287:                                    ; preds = %284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4908
  br label %291, !dbg !4908

; <label>:288:                                    ; preds = %284, %281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4910
  %289 = lshr i32 %277, 17, !dbg !4911
  %290 = and i32 %289, 2, !dbg !4911
  br label %291, !dbg !4911

; <label>:291:                                    ; preds = %280, %287, %288
  %292 = phi i32 [ 3, %280 ], [ 1, %287 ], [ %290, %288 ], !dbg !4912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4913
  %293 = icmp eq i32 %292, %232, !dbg !4914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4915
  br i1 %293, label %294, label %302, !dbg !4915

; <label>:294:                                    ; preds = %291, %274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4916
  br i1 %241, label %299, label %295, !dbg !4916

; <label>:295:                                    ; preds = %294
  %296 = getelementptr inbounds %struct.client, %struct.client* %251, i64 0, i32 0, !dbg !4918
  %297 = load i64, i64* %296, align 8, !dbg !4918, !tbaa !461
  %298 = icmp eq i64 %297, %230, !dbg !4919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4920
  br i1 %298, label %299, label %302, !dbg !4920

; <label>:299:                                    ; preds = %295, %294
  %300 = icmp eq %struct.client* %251, %0, !dbg !4921
  %301 = and i1 %242, %300, !dbg !4923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4923
  br i1 %301, label %302, label %305, !dbg !4923

; <label>:302:                                    ; preds = %299, %295, %291, %270
  %303 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #8, !dbg !4863
  %304 = icmp eq %struct.listNode* %303, null, !dbg !4865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4862
  br i1 %304, label %312, label %247, !dbg !4862, !llvm.loop !4924

; <label>:305:                                    ; preds = %299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4926
  br i1 %300, label %307, label %306, !dbg !4926

; <label>:306:                                    ; preds = %305
  call void @freeClient(%struct.client* %251) #10, !dbg !4927
  br label %307

; <label>:307:                                    ; preds = %305, %306
  %308 = phi i32 [ %245, %306 ], [ 1, %305 ], !dbg !4850
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %309 = add nuw nsw i32 %246, 1, !dbg !4930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4862
  %310 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #8, !dbg !4863
  %311 = icmp eq %struct.listNode* %310, null, !dbg !4865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4862
  br i1 %311, label %312, label %243, !dbg !4862, !llvm.loop !4924

; <label>:312:                                    ; preds = %307, %302, %229
  %313 = phi i32 [ 0, %229 ], [ %246, %302 ], [ %309, %307 ]
  %314 = phi i32 [ 0, %229 ], [ %245, %302 ], [ %308, %307 ]
  %315 = load i32, i32* %10, align 8, !dbg !4931, !tbaa !625
  %316 = icmp eq i32 %315, 3, !dbg !4933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4934
  br i1 %316, label %317, label %323, !dbg !4934

; <label>:317:                                    ; preds = %312
  %318 = icmp eq i32 %313, 0, !dbg !4935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4938
  br i1 %318, label %319, label %321, !dbg !4938

; <label>:319:                                    ; preds = %317
  %320 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i64 0, i64 0)) #8, !dbg !4942
  call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i64 0, i64 0), i64 %320) #8, !dbg !4943
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4944
  br label %325, !dbg !4945

; <label>:321:                                    ; preds = %317
  %322 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !4946, !tbaa !4745
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %322) #10, !dbg !4947
  br label %325

; <label>:323:                                    ; preds = %312
  %324 = sext i32 %313 to i64, !dbg !4948
  call void @addReplyLongLong(%struct.client* nonnull %0, i64 %324) #10, !dbg !4950
  br label %325

; <label>:325:                                    ; preds = %319, %321, %323
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %326 = icmp eq i32 %314, 0, !dbg !4951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4953
  br i1 %326, label %332, label %327, !dbg !4953

; <label>:327:                                    ; preds = %325
  %328 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4954
  %329 = load i32, i32* %328, align 8, !dbg !4955, !tbaa !944
  %330 = or i32 %329, 64, !dbg !4955
  store i32 %330, i32* %328, align 8, !dbg !4955, !tbaa !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4956
  br label %332, !dbg !4956

; <label>:331:                                    ; preds = %226, %227
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %500

; <label>:332:                                    ; preds = %327, %325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4957
  br label %499

; <label>:333:                                    ; preds = %125
  %334 = tail call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0)) #11, !dbg !4958
  %335 = icmp eq i32 %334, 0, !dbg !4958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4959
  br i1 %335, label %336, label %390, !dbg !4959

; <label>:336:                                    ; preds = %333
  %337 = icmp eq i32 %11, 3, !dbg !4960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4961
  br i1 %337, label %340, label %338, !dbg !4961

; <label>:338:                                    ; preds = %336
  %339 = icmp eq i32 %11, 4, !dbg !4962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4963
  br i1 %339, label %342, label %390, !dbg !4963

; <label>:340:                                    ; preds = %336
  %341 = bitcast i64* %7 to i8*, !dbg !4964
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %341) #5, !dbg !4964
  br label %355

; <label>:342:                                    ; preds = %338
  %343 = bitcast i64* %7 to i8*, !dbg !4964
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %343) #5, !dbg !4964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4966
  %344 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 3, !dbg !4967
  %345 = load %struct.redisObject*, %struct.redisObject** %344, align 8, !dbg !4967, !tbaa !476
  %346 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %345, i64 0, i32 2, !dbg !4971
  %347 = load i8*, i8** %346, align 8, !dbg !4971, !tbaa !376
  %348 = tail call i32 @strcasecmp(i8* %347, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i64 0, i64 0)) #11, !dbg !4972
  %349 = icmp eq i32 %348, 0, !dbg !4972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4973
  br i1 %349, label %355, label %350, !dbg !4973

; <label>:350:                                    ; preds = %342
  %351 = tail call i32 @strcasecmp(i8* %347, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i64 0, i64 0)) #11, !dbg !4974
  %352 = icmp eq i32 %351, 0, !dbg !4974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4976
  br i1 %352, label %355, label %353, !dbg !4976

; <label>:353:                                    ; preds = %350
  %354 = tail call i64 @strlen(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.83, i64 0, i64 0)) #8, !dbg !4981
  tail call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.83, i64 0, i64 0), i64 %354) #8, !dbg !4982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4984
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %343) #5, !dbg !4985
  br label %500

; <label>:355:                                    ; preds = %350, %342, %340
  %356 = phi i8* [ %341, %340 ], [ %343, %342 ], [ %343, %350 ]
  %357 = phi i32 [ 0, %340 ], [ 0, %342 ], [ 1, %350 ], !dbg !4986
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %358 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 2, !dbg !4987
  %359 = load %struct.redisObject*, %struct.redisObject** %358, align 8, !dbg !4987, !tbaa !476
  %360 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %359, i64* nonnull %7, i8* null) #8, !dbg !4990
  %361 = icmp eq i32 %360, 0, !dbg !4991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4992
  br i1 %361, label %363, label %362, !dbg !4992

; <label>:362:                                    ; preds = %355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4993
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %356) #5, !dbg !4985
  br label %500

; <label>:363:                                    ; preds = %355
  %364 = load i64, i64* %7, align 8, !dbg !4994, !tbaa !652
  %365 = bitcast i64* %2 to i8*, !dbg !4995
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %365), !dbg !4995
  %366 = call i64 @intrev64(i64 %364) #8, !dbg !4997
  store i64 %366, i64* %2, align 8, !dbg !4998, !tbaa !410
  %367 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 44), align 8, !dbg !4999, !tbaa !464
  %368 = call i8* @raxFind(%struct.rax* %367, i8* nonnull %365, i64 8) #8, !dbg !5000
  %369 = bitcast i8* %368 to %struct.client*, !dbg !5000
  %370 = load %struct.client*, %struct.client** bitcast (i8** @raxNotFound to %struct.client**), align 8, !dbg !5002, !tbaa !476
  %371 = icmp eq %struct.client* %370, %369, !dbg !5003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5004
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %365), !dbg !5004
  %372 = icmp eq i8* %368, null, !dbg !5005
  %373 = or i1 %372, %371, !dbg !5005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5007
  br i1 %373, label %387, label %374, !dbg !5007

; <label>:374:                                    ; preds = %363
  %375 = getelementptr inbounds i8, i8* %368, i64 160, !dbg !5008
  %376 = bitcast i8* %375 to i32*, !dbg !5008
  %377 = load i32, i32* %376, align 8, !dbg !5008, !tbaa !944
  %378 = and i32 %377, 16, !dbg !5009
  %379 = icmp eq i32 %378, 0, !dbg !5009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5010
  br i1 %379, label %387, label %380, !dbg !5010

; <label>:380:                                    ; preds = %374
  %381 = icmp eq i32 %357, 0, !dbg !5011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5014
  br i1 %381, label %384, label %382, !dbg !5014

; <label>:382:                                    ; preds = %380
  %383 = call i64 @strlen(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.84, i64 0, i64 0)) #8, !dbg !5017
  call void @addReplyErrorLength(%struct.client* nonnull %369, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.84, i64 0, i64 0), i64 %383) #8, !dbg !5018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5019
  br label %385, !dbg !5020

; <label>:384:                                    ; preds = %380
  call void @replyToBlockedClientTimedOut(%struct.client* nonnull %369) #8, !dbg !5021
  br label %385

; <label>:385:                                    ; preds = %384, %382
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @unblockClient(%struct.client* nonnull %369) #8, !dbg !5022
  %386 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !5023, !tbaa !1984
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %386) #10, !dbg !5024
  br label %389, !dbg !5025

; <label>:387:                                    ; preds = %374, %363
  %388 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !5026, !tbaa !1979
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %388) #10, !dbg !5028
  br label %389

; <label>:389:                                    ; preds = %387, %385
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4985
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %356) #5, !dbg !4985
  br label %499

; <label>:390:                                    ; preds = %333, %338
  %391 = tail call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i64 0, i64 0)) #11, !dbg !5029
  %392 = icmp eq i32 %391, 0, !dbg !5029
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5030
  br i1 %392, label %393, label %464, !dbg !5030

; <label>:393:                                    ; preds = %390
  %394 = icmp eq i32 %11, 3, !dbg !5031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5032
  br i1 %394, label %395, label %464, !dbg !5032

; <label>:395:                                    ; preds = %393
  %396 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 2, !dbg !5033
  %397 = load %struct.redisObject*, %struct.redisObject** %396, align 8, !dbg !5033, !tbaa !476
  %398 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %397, i64 0, i32 2, !dbg !5034
  %399 = load i8*, i8** %398, align 8, !dbg !5034, !tbaa !376
  %400 = getelementptr inbounds i8, i8* %399, i64 -1, !dbg !5037
  %401 = load i8, i8* %400, align 1, !dbg !5037, !tbaa !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5039
  %402 = trunc i8 %401 to i3, !dbg !5039
  switch i3 %402, label %424 [
    i3 0, label %403
    i3 1, label %406
    i3 2, label %410
    i3 3, label %415
    i3 -4, label %420
  ], !dbg !5039

; <label>:403:                                    ; preds = %395
  %404 = lshr i8 %401, 3, !dbg !5040
  %405 = zext i8 %404 to i64, !dbg !5040
  br label %425, !dbg !5041

; <label>:406:                                    ; preds = %395
  %407 = getelementptr inbounds i8, i8* %399, i64 -3, !dbg !5042
  %408 = load i8, i8* %407, align 1, !dbg !5043, !tbaa !660
  %409 = zext i8 %408 to i64, !dbg !5042
  br label %425, !dbg !5044

; <label>:410:                                    ; preds = %395
  %411 = getelementptr inbounds i8, i8* %399, i64 -5, !dbg !5045
  %412 = bitcast i8* %411 to i16*, !dbg !5046
  %413 = load i16, i16* %412, align 1, !dbg !5046, !tbaa !862
  %414 = zext i16 %413 to i64, !dbg !5045
  br label %425, !dbg !5047

; <label>:415:                                    ; preds = %395
  %416 = getelementptr inbounds i8, i8* %399, i64 -9, !dbg !5048
  %417 = bitcast i8* %416 to i32*, !dbg !5049
  %418 = load i32, i32* %417, align 1, !dbg !5049, !tbaa !549
  %419 = zext i32 %418 to i64, !dbg !5048
  br label %425, !dbg !5050

; <label>:420:                                    ; preds = %395
  %421 = getelementptr inbounds i8, i8* %399, i64 -17, !dbg !5051
  %422 = bitcast i8* %421 to i64*, !dbg !5052
  %423 = load i64, i64* %422, align 1, !dbg !5052, !tbaa !410
  br label %425, !dbg !5053

; <label>:424:                                    ; preds = %395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5054
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5058
  br label %429, !dbg !5058

; <label>:425:                                    ; preds = %403, %406, %410, %415, %420
  %426 = phi i64 [ %423, %420 ], [ %419, %415 ], [ %414, %410 ], [ %409, %406 ], [ %405, %403 ], !dbg !5059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5055
  %427 = trunc i64 %426 to i32, !dbg !5061
  %428 = icmp eq i32 %427, 0, !dbg !5062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5058
  br i1 %428, label %429, label %436, !dbg !5058

; <label>:429:                                    ; preds = %424, %425
  %430 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 3, !dbg !5064
  %431 = load %struct.redisObject*, %struct.redisObject** %430, align 8, !dbg !5064, !tbaa !602
  %432 = icmp eq %struct.redisObject* %431, null, !dbg !5067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5068
  br i1 %432, label %434, label %433, !dbg !5068

; <label>:433:                                    ; preds = %429
  tail call void @decrRefCount(%struct.redisObject* nonnull %431) #8, !dbg !5069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5069
  br label %434, !dbg !5069

; <label>:434:                                    ; preds = %429, %433
  store %struct.redisObject* null, %struct.redisObject** %430, align 8, !dbg !5070, !tbaa !602
  %435 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !5071, !tbaa !4745
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %435) #10, !dbg !5072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5073
  br label %500

; <label>:436:                                    ; preds = %425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5075
  %437 = icmp sgt i32 %427, 0, !dbg !5077
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5079
  br i1 %437, label %438, label %453, !dbg !5079

; <label>:438:                                    ; preds = %436
  %439 = shl i64 %426, 32, !dbg !5080
  %440 = ashr exact i64 %439, 32, !dbg !5080
  br label %441, !dbg !5080

; <label>:441:                                    ; preds = %438, %450
  %442 = phi i64 [ 0, %438 ], [ %451, %450 ]
  %443 = getelementptr inbounds i8, i8* %399, i64 %442, !dbg !5080
  %444 = load i8, i8* %443, align 1, !dbg !5080, !tbaa !660
  %445 = icmp slt i8 %444, 33, !dbg !5083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5084
  br i1 %445, label %448, label %446, !dbg !5084

; <label>:446:                                    ; preds = %441
  %447 = icmp eq i8 %444, 127, !dbg !5085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5086
  br i1 %447, label %448, label %450, !dbg !5086

; <label>:448:                                    ; preds = %446, %441
  %449 = tail call i64 @strlen(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.86, i64 0, i64 0)) #8, !dbg !5091
  tail call void @addReplyErrorLength(%struct.client* %0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.86, i64 0, i64 0), i64 %449) #8, !dbg !5092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5094
  br label %500

; <label>:450:                                    ; preds = %446
  %451 = add nuw nsw i64 %442, 1, !dbg !5095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5096
  %452 = icmp slt i64 %451, %440, !dbg !5077
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5079
  br i1 %452, label %441, label %453, !dbg !5079, !llvm.loop !5097

; <label>:453:                                    ; preds = %450, %436
  %454 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 3, !dbg !5099
  %455 = load %struct.redisObject*, %struct.redisObject** %454, align 8, !dbg !5099, !tbaa !602
  %456 = icmp eq %struct.redisObject* %455, null, !dbg !5101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5102
  br i1 %456, label %461, label %457, !dbg !5102

; <label>:457:                                    ; preds = %453
  tail call void @decrRefCount(%struct.redisObject* nonnull %455) #8, !dbg !5103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5103
  %458 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !5104, !tbaa !628
  %459 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %458, i64 2
  %460 = load %struct.redisObject*, %struct.redisObject** %459, align 8, !dbg !5105, !tbaa !476
  br label %461, !dbg !5103

; <label>:461:                                    ; preds = %453, %457
  %462 = phi %struct.redisObject* [ %397, %453 ], [ %460, %457 ], !dbg !5105
  store %struct.redisObject* %462, %struct.redisObject** %454, align 8, !dbg !5106, !tbaa !602
  tail call void @incrRefCount(%struct.redisObject* %462) #8, !dbg !5107
  %463 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !5108, !tbaa !4745
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %463) #10, !dbg !5109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5110
  br label %499

; <label>:464:                                    ; preds = %390, %393
  %465 = tail call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i64 0, i64 0)) #11, !dbg !5111
  %466 = icmp eq i32 %465, 0, !dbg !5111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5112
  br i1 %466, label %467, label %476, !dbg !5112

; <label>:467:                                    ; preds = %464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5113
  br i1 %12, label %468, label %476, !dbg !5113

; <label>:468:                                    ; preds = %467
  %469 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 3, !dbg !5114
  %470 = load %struct.redisObject*, %struct.redisObject** %469, align 8, !dbg !5114, !tbaa !602
  %471 = icmp eq %struct.redisObject* %470, null, !dbg !5117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5118
  br i1 %471, label %474, label %472, !dbg !5118

; <label>:472:                                    ; preds = %468
  tail call void @addReplyBulkLen(%struct.client* nonnull %0, %struct.redisObject* nonnull %470) #8, !dbg !5122
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* nonnull %470) #8, !dbg !5123
  %473 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 0), align 8, !dbg !5124, !tbaa !1909
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %473) #8, !dbg !5125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5126
  br label %499, !dbg !5127

; <label>:474:                                    ; preds = %468
  %475 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !5128, !tbaa !1880
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %475) #10, !dbg !5129
  br label %499

; <label>:476:                                    ; preds = %464, %467
  %477 = tail call i32 @strcasecmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0)) #11, !dbg !5130
  %478 = icmp eq i32 %477, 0, !dbg !5130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5131
  br i1 %478, label %479, label %498, !dbg !5131

; <label>:479:                                    ; preds = %476
  %480 = icmp eq i32 %11, 3, !dbg !5132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5133
  br i1 %480, label %481, label %498, !dbg !5133

; <label>:481:                                    ; preds = %479
  %482 = bitcast i64* %8 to i8*, !dbg !5134
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %482) #5, !dbg !5134
  %483 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 2, !dbg !5135
  %484 = load %struct.redisObject*, %struct.redisObject** %483, align 8, !dbg !5135, !tbaa !476
  %485 = call i32 @getTimeoutFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %484, i64* nonnull %8, i32 1) #8, !dbg !5138
  %486 = icmp eq i32 %485, 0, !dbg !5139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5140
  br i1 %486, label %488, label %487, !dbg !5140

; <label>:487:                                    ; preds = %481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5141
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %482) #5, !dbg !5142
  br label %500

; <label>:488:                                    ; preds = %481
  %489 = load i64, i64* %8, align 8, !dbg !5143, !tbaa !652
  %490 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !5151, !tbaa !4071
  %491 = icmp eq i32 %490, 0, !dbg !5153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5154
  br i1 %491, label %495, label %492, !dbg !5154

; <label>:492:                                    ; preds = %488
  %493 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 46), align 8, !dbg !5155, !tbaa !4075
  %494 = icmp slt i64 %493, %489, !dbg !5156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5157
  br i1 %494, label %495, label %496, !dbg !5157

; <label>:495:                                    ; preds = %492, %488
  store i64 %489, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 46), align 8, !dbg !5158, !tbaa !4075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5159
  br label %496, !dbg !5159

; <label>:496:                                    ; preds = %492, %495
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !5160, !tbaa !4071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5161
  %497 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !5162, !tbaa !4745
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %497) #10, !dbg !5163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5142
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %482) #5, !dbg !5142
  br label %499

; <label>:498:                                    ; preds = %476, %479
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.89, i64 0, i64 0), i8* %18) #10, !dbg !5164
  br label %499

; <label>:499:                                    ; preds = %22, %498, %472, %474, %101, %121, %109, %29, %87, %389, %461, %496, %332
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %500, !dbg !5166

; <label>:500:                                    ; preds = %116, %499, %331, %487, %448, %434, %362, %353, %51, %58, %123
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #5, !dbg !5166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5166
  ret void, !dbg !5166
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @getClientTypeByName(i8* readonly) local_unnamed_addr #0 !dbg !5167 {
  %2 = tail call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i64 0, i64 0)) #11, !dbg !5173
  %3 = icmp eq i32 %2, 0, !dbg !5173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5175
  br i1 %3, label %4, label %5, !dbg !5175

; <label>:4:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5176
  br label %21, !dbg !5176

; <label>:5:                                      ; preds = %1
  %6 = tail call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0)) #11, !dbg !5177
  %7 = icmp eq i32 %6, 0, !dbg !5177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5179
  br i1 %7, label %8, label %9, !dbg !5179

; <label>:8:                                      ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5180
  br label %21, !dbg !5180

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #11, !dbg !5181
  %11 = icmp eq i32 %10, 0, !dbg !5181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5183
  br i1 %11, label %12, label %13, !dbg !5183

; <label>:12:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5184
  br label %21, !dbg !5184

; <label>:13:                                     ; preds = %9
  %14 = tail call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i64 0, i64 0)) #11, !dbg !5185
  %15 = icmp eq i32 %14, 0, !dbg !5185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5187
  br i1 %15, label %16, label %17, !dbg !5187

; <label>:16:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5188
  br label %21, !dbg !5188

; <label>:17:                                     ; preds = %13
  %18 = tail call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !5189
  %19 = icmp eq i32 %18, 0, !dbg !5189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5192
  %20 = select i1 %19, i32 3, i32 -1, !dbg !5193
  br label %21, !dbg !5193

; <label>:21:                                     ; preds = %17, %16, %12, %8, %4
  %22 = phi i32 [ 2, %16 ], [ 1, %12 ], [ 1, %8 ], [ 0, %4 ], [ %20, %17 ], !dbg !5194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5195
  ret i32 %22, !dbg !5195
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
define dso_local void @pauseClients(i64) local_unnamed_addr #0 !dbg !5145 {
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !5197, !tbaa !4071
  %3 = icmp eq i32 %2, 0, !dbg !5198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5199
  br i1 %3, label %7, label %4, !dbg !5199

; <label>:4:                                      ; preds = %1
  %5 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 46), align 8, !dbg !5200, !tbaa !4075
  %6 = icmp slt i64 %5, %0, !dbg !5201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5202
  br i1 %6, label %7, label %8, !dbg !5202

; <label>:7:                                      ; preds = %1, %4
  store i64 %0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 46), align 8, !dbg !5203, !tbaa !4075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5204
  br label %8, !dbg !5204

; <label>:8:                                      ; preds = %7, %4
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !5205, !tbaa !4071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5206
  ret void, !dbg !5206
}

; Function Attrs: noredzone nounwind
define dso_local void @securityWarningCommand(%struct.client*) local_unnamed_addr #0 !dbg !2 {
  %2 = tail call i64 @time(i64* null) #8, !dbg !5208
  %3 = load i64, i64* @securityWarningCommand.logged_time, align 8, !dbg !5210, !tbaa !410
  %4 = sub nsw i64 %2, %3, !dbg !5212
  %5 = tail call i64 @labs(i64 %4) #8, !dbg !5213
  %6 = icmp sgt i64 %5, 60, !dbg !5214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5215
  br i1 %6, label %7, label %8, !dbg !5215

; <label>:7:                                      ; preds = %1
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([234 x i8], [234 x i8]* @.str.90, i64 0, i64 0)) #8, !dbg !5216
  store i64 %2, i64* @securityWarningCommand.logged_time, align 8, !dbg !5218, !tbaa !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5219
  br label %8, !dbg !5219

; <label>:8:                                      ; preds = %7, %1
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !5222
  %10 = load i32, i32* %9, align 8, !dbg !5222, !tbaa !944
  %11 = and i32 %10, 1024, !dbg !5223
  %12 = icmp eq i32 %11, 0, !dbg !5223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5224
  br i1 %12, label %13, label %21, !dbg !5224

; <label>:13:                                     ; preds = %8
  %14 = and i32 %10, 256, !dbg !5225
  %15 = icmp eq i32 %14, 0, !dbg !5225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5226
  br i1 %15, label %16, label %21, !dbg !5226

; <label>:16:                                     ; preds = %13
  %17 = or i32 %10, 1024, !dbg !5227
  store i32 %17, i32* %9, align 8, !dbg !5227, !tbaa !944
  %18 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !5228, !tbaa !1269
  %19 = bitcast %struct.client* %0 to i8*, !dbg !5229
  %20 = tail call %struct.list* @listAddNodeTail(%struct.list* %18, i8* %19) #8, !dbg !5230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5231
  br label %21, !dbg !5231

; <label>:21:                                     ; preds = %8, %13, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5232
  ret void, !dbg !5232
}

; Function Attrs: noredzone
declare dso_local i64 @time(i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @labs(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @rewriteClientCommandVector(%struct.client*, i32, ...) local_unnamed_addr #0 !dbg !5233 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !5248
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #5, !dbg !5248
  %5 = sext i32 %1 to i64, !dbg !5250
  %6 = shl nsw i64 %5, 3, !dbg !5251
  %7 = tail call i8* @zmalloc(i64 %6) #8, !dbg !5252
  %8 = bitcast i8* %7 to %struct.redisObject**, !dbg !5252
  call void @llvm.va_start(i8* nonnull %4), !dbg !5254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5256
  %9 = icmp sgt i32 %1, 0, !dbg !5257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5258
  br i1 %9, label %10, label %34, !dbg !5258

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %14 = zext i32 %1 to i64
  br label %15, !dbg !5258

; <label>:15:                                     ; preds = %27, %10
  %16 = phi i64 [ 0, %10 ], [ %32, %27 ]
  %17 = load i32, i32* %11, align 16, !dbg !5259
  %18 = icmp ult i32 %17, 41, !dbg !5259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5259
  br i1 %18, label %19, label %24, !dbg !5259

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** %12, align 16, !dbg !5259
  %21 = sext i32 %17 to i64, !dbg !5259
  %22 = getelementptr i8, i8* %20, i64 %21, !dbg !5259
  %23 = add i32 %17, 8, !dbg !5259
  store i32 %23, i32* %11, align 16, !dbg !5259
  br label %27, !dbg !5259

; <label>:24:                                     ; preds = %15
  %25 = load i8*, i8** %13, align 8, !dbg !5259
  %26 = getelementptr i8, i8* %25, i64 8, !dbg !5259
  store i8* %26, i8** %13, align 8, !dbg !5259
  br label %27, !dbg !5259

; <label>:27:                                     ; preds = %24, %19
  %28 = phi i8* [ %22, %19 ], [ %25, %24 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5259
  %29 = bitcast i8* %28 to %struct.redisObject**, !dbg !5259
  %30 = load %struct.redisObject*, %struct.redisObject** %29, align 8, !dbg !5259
  %31 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 %16, !dbg !5261
  store %struct.redisObject* %30, %struct.redisObject** %31, align 8, !dbg !5262, !tbaa !476
  call void @incrRefCount(%struct.redisObject* %30) #8, !dbg !5263
  %32 = add nuw nsw i64 %16, 1, !dbg !5264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5258
  %33 = icmp eq i64 %32, %14, !dbg !5257
  br i1 %33, label %34, label %15, !dbg !5258, !llvm.loop !5266

; <label>:34:                                     ; preds = %27, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5268
  %35 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5270
  %36 = load i32, i32* %35, align 8, !dbg !5270, !tbaa !625
  %37 = icmp sgt i32 %36, 0, !dbg !5272
  %38 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !5273
  %39 = load %struct.redisObject**, %struct.redisObject*** %38, align 8, !dbg !5273, !tbaa !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5274
  br i1 %37, label %40, label %50, !dbg !5274

; <label>:40:                                     ; preds = %34, %40
  %41 = phi i64 [ %45, %40 ], [ 0, %34 ]
  %42 = phi %struct.redisObject** [ %49, %40 ], [ %39, %34 ]
  %43 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %42, i64 %41, !dbg !5275
  %44 = load %struct.redisObject*, %struct.redisObject** %43, align 8, !dbg !5275, !tbaa !476
  call void @decrRefCount(%struct.redisObject* %44) #8, !dbg !5276
  %45 = add nuw nsw i64 %41, 1, !dbg !5277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5278
  %46 = load i32, i32* %35, align 8, !dbg !5270, !tbaa !625
  %47 = sext i32 %46 to i64, !dbg !5272
  %48 = icmp slt i64 %45, %47, !dbg !5272
  %49 = load %struct.redisObject**, %struct.redisObject*** %38, align 8, !dbg !5273, !tbaa !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5274
  br i1 %48, label %40, label %50, !dbg !5274, !llvm.loop !5279

; <label>:50:                                     ; preds = %40, %34
  %51 = phi %struct.redisObject** [ %39, %34 ], [ %49, %40 ], !dbg !5273
  %52 = bitcast %struct.redisObject** %51 to i8*, !dbg !5281
  call void @zfree(i8* %52) #8, !dbg !5282
  %53 = bitcast %struct.redisObject*** %38 to i8**, !dbg !5283
  store i8* %7, i8** %53, align 8, !dbg !5283, !tbaa !628
  store i32 %1, i32* %35, align 8, !dbg !5284, !tbaa !625
  %54 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !5285, !tbaa !476
  %55 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %54, i64 0, i32 2, !dbg !5286
  %56 = load i8*, i8** %55, align 8, !dbg !5286, !tbaa !376
  %57 = call %struct.redisCommand* @lookupCommandOrOriginal(i8* %56) #8, !dbg !5287
  %58 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !5288
  store %struct.redisCommand* %57, %struct.redisCommand** %58, align 8, !dbg !5289, !tbaa !2622
  %59 = icmp eq %struct.redisCommand* %57, null, !dbg !5290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5290
  br i1 %59, label %60, label %61, !dbg !5290

; <label>:60:                                     ; preds = %50
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1985) #8, !dbg !5290
  call void @_exit(i32 1) #9, !dbg !5290
  unreachable

; <label>:61:                                     ; preds = %50
  call void @llvm.va_end(i8* nonnull %4), !dbg !5291
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #5, !dbg !5292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5292
  ret void, !dbg !5292
}

; Function Attrs: noredzone
declare dso_local %struct.redisCommand* @lookupCommandOrOriginal(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replaceClientCommandVector(%struct.client*, i32, %struct.redisObject**) local_unnamed_addr #0 !dbg !5293 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5306
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5307
  %5 = load i32, i32* %4, align 8, !dbg !5307, !tbaa !625
  %6 = icmp sgt i32 %5, 0, !dbg !5308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5309
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br i1 %6, label %8, label %17, !dbg !5309

; <label>:8:                                      ; preds = %3, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %3 ]
  %10 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !5310, !tbaa !628
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 %9, !dbg !5311
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !5311, !tbaa !476
  tail call void @decrRefCount(%struct.redisObject* %12) #8, !dbg !5312
  %13 = add nuw nsw i64 %9, 1, !dbg !5313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5314
  %14 = load i32, i32* %4, align 8, !dbg !5307, !tbaa !625
  %15 = sext i32 %14 to i64, !dbg !5308
  %16 = icmp slt i64 %13, %15, !dbg !5308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5309
  br i1 %16, label %8, label %17, !dbg !5309, !llvm.loop !2616

; <label>:17:                                     ; preds = %8, %3
  store i32 0, i32* %4, align 8, !dbg !5315, !tbaa !625
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !5316
  store %struct.redisCommand* null, %struct.redisCommand** %18, align 8, !dbg !5317, !tbaa !2622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5318
  %19 = bitcast %struct.redisObject*** %7 to i8**, !dbg !5319
  %20 = load i8*, i8** %19, align 8, !dbg !5319, !tbaa !628
  %21 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !5322, !tbaa !476
  %22 = icmp eq %struct.uk_alloc* %21, null, !dbg !5329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5330
  br i1 %22, label %23, label %24, !dbg !5330, !prof !545

; <label>:23:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i64 0, i64 0)) #8, !dbg !5331
  tail call void @ukplat_terminate(i32 3) #9, !dbg !5331
  unreachable

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %21, i64 0, i32 5, !dbg !5332
  %26 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %25, align 8, !dbg !5332, !tbaa !476
  tail call void %26(%struct.uk_alloc* nonnull %21, i8* %20) #8, !dbg !5333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5336
  store %struct.redisObject** %2, %struct.redisObject*** %7, align 8, !dbg !5337, !tbaa !628
  store i32 %1, i32* %4, align 8, !dbg !5338, !tbaa !625
  %27 = load %struct.redisObject*, %struct.redisObject** %2, align 8, !dbg !5339, !tbaa !476
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %27, i64 0, i32 2, !dbg !5340
  %29 = load i8*, i8** %28, align 8, !dbg !5340, !tbaa !376
  %30 = tail call %struct.redisCommand* @lookupCommandOrOriginal(i8* %29) #8, !dbg !5341
  store %struct.redisCommand* %30, %struct.redisCommand** %18, align 8, !dbg !5342, !tbaa !2622
  %31 = icmp eq %struct.redisCommand* %30, null, !dbg !5343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5343
  br i1 %31, label %32, label %33, !dbg !5343

; <label>:32:                                     ; preds = %24
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1996) #8, !dbg !5343
  tail call void @_exit(i32 1) #9, !dbg !5343
  unreachable

; <label>:33:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5344
  ret void, !dbg !5344
}

; Function Attrs: noredzone nounwind
define dso_local void @rewriteClientCommandArgument(%struct.client*, i32, %struct.redisObject*) local_unnamed_addr #0 !dbg !5345 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5356
  %5 = load i32, i32* %4, align 8, !dbg !5356, !tbaa !625
  %6 = icmp sgt i32 %5, %1, !dbg !5358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5359
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !5360
  br i1 %6, label %8, label %10, !dbg !5359

; <label>:8:                                      ; preds = %3
  %9 = sext i32 %1 to i64, !dbg !5362
  br label %20, !dbg !5359

; <label>:10:                                     ; preds = %3
  %11 = bitcast %struct.redisObject*** %7 to i8**, !dbg !5363
  %12 = load i8*, i8** %11, align 8, !dbg !5363, !tbaa !628
  %13 = add nsw i32 %1, 1, !dbg !5364
  %14 = sext i32 %13 to i64, !dbg !5365
  %15 = shl nsw i64 %14, 3, !dbg !5366
  %16 = tail call i8* @zrealloc(i8* %12, i64 %15) #8, !dbg !5367
  store i8* %16, i8** %11, align 8, !dbg !5368, !tbaa !628
  store i32 %13, i32* %4, align 8, !dbg !5369, !tbaa !625
  %17 = bitcast i8* %16 to %struct.redisObject**, !dbg !5370
  %18 = sext i32 %1 to i64, !dbg !5371
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 %18, !dbg !5371
  store %struct.redisObject* null, %struct.redisObject** %19, align 8, !dbg !5372, !tbaa !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5373
  br label %20, !dbg !5373

; <label>:20:                                     ; preds = %8, %10
  %21 = phi i64 [ %9, %8 ], [ %18, %10 ], !dbg !5362
  %22 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !5374, !tbaa !628
  %23 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %22, i64 %21, !dbg !5362
  %24 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !dbg !5362, !tbaa !476
  store %struct.redisObject* %2, %struct.redisObject** %23, align 8, !dbg !5376, !tbaa !476
  tail call void @incrRefCount(%struct.redisObject* %2) #8, !dbg !5377
  %25 = icmp eq %struct.redisObject* %24, null, !dbg !5378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5380
  br i1 %25, label %27, label %26, !dbg !5380

; <label>:26:                                     ; preds = %20
  tail call void @decrRefCount(%struct.redisObject* nonnull %24) #8, !dbg !5381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5381
  br label %27, !dbg !5381

; <label>:27:                                     ; preds = %20, %26
  %28 = icmp eq i32 %1, 0, !dbg !5382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5384
  br i1 %28, label %29, label %38, !dbg !5384

; <label>:29:                                     ; preds = %27
  %30 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !5385, !tbaa !628
  %31 = load %struct.redisObject*, %struct.redisObject** %30, align 8, !dbg !5387, !tbaa !476
  %32 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %31, i64 0, i32 2, !dbg !5388
  %33 = load i8*, i8** %32, align 8, !dbg !5388, !tbaa !376
  %34 = tail call %struct.redisCommand* @lookupCommandOrOriginal(i8* %33) #8, !dbg !5389
  %35 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !5390
  store %struct.redisCommand* %34, %struct.redisCommand** %35, align 8, !dbg !5391, !tbaa !2622
  %36 = icmp eq %struct.redisCommand* %34, null, !dbg !5392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5392
  br i1 %36, label %37, label %38, !dbg !5392

; <label>:37:                                     ; preds = %29
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 2026) #8, !dbg !5392
  tail call void @_exit(i32 1) #9, !dbg !5392
  unreachable

; <label>:38:                                     ; preds = %29, %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5393
  ret void, !dbg !5393
}

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @getClientTypeName(i32) local_unnamed_addr #0 !dbg !5394 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5400
  %2 = icmp ult i32 %0, 4, !dbg !5400
  br i1 %2, label %3, label %7, !dbg !5400

; <label>:3:                                      ; preds = %1
  %4 = sext i32 %0 to i64, !dbg !5400
  %5 = getelementptr inbounds [4 x i8*], [4 x i8*]* @switch.table.getClientTypeName, i64 0, i64 %4, !dbg !5400
  %6 = load i8*, i8** %5, align 8, !dbg !5400
  br label %7, !dbg !5400

; <label>:7:                                      ; preds = %1, %3
  %8 = phi i8* [ %6, %3 ], [ null, %1 ], !dbg !5401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5403
  ret i8* %8, !dbg !5403
}

; Function Attrs: noredzone nounwind
define dso_local i32 @checkClientOutputBufferLimits(%struct.client* nocapture) local_unnamed_addr #0 !dbg !5404 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !5422
  %3 = load i64, i64* %2, align 8, !dbg !5422, !tbaa !670
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !5423
  %5 = load %struct.list*, %struct.list** %4, align 8, !dbg !5423, !tbaa !667
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 5, !dbg !5423
  %7 = load i64, i64* %6, align 8, !dbg !5423, !tbaa !1101
  %8 = mul i64 %7, 40, !dbg !5424
  %9 = add i64 %8, %3, !dbg !5425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5426
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !5430
  %11 = load i32, i32* %10, align 8, !dbg !5430, !tbaa !944
  %12 = and i32 %11, 2, !dbg !5431
  %13 = icmp eq i32 %12, 0, !dbg !5431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5432
  br i1 %13, label %14, label %25, !dbg !5432

; <label>:14:                                     ; preds = %1
  %15 = and i32 %11, 1, !dbg !5433
  %16 = icmp eq i32 %15, 0, !dbg !5433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5434
  br i1 %16, label %21, label %17, !dbg !5434

; <label>:17:                                     ; preds = %14
  %18 = and i32 %11, 4, !dbg !5435
  %19 = icmp eq i32 %18, 0, !dbg !5435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5436
  br i1 %19, label %20, label %21, !dbg !5436

; <label>:20:                                     ; preds = %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5437
  br label %26, !dbg !5437

; <label>:21:                                     ; preds = %17, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5439
  %22 = lshr i32 %11, 17, !dbg !5440
  %23 = and i32 %22, 2, !dbg !5440
  %24 = zext i32 %23 to i64, !dbg !5440
  br label %26, !dbg !5440

; <label>:25:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5441
  br label %26, !dbg !5443

; <label>:26:                                     ; preds = %21, %20, %25
  %27 = phi i64 [ 0, %25 ], [ %24, %21 ], [ 1, %20 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5444
  %28 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 116, i64 %27, i32 0, !dbg !5445
  %29 = load i64, i64* %28, align 8, !dbg !5445, !tbaa !5447
  %30 = icmp eq i64 %29, 0, !dbg !5449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5450
  br i1 %30, label %34, label %31, !dbg !5450

; <label>:31:                                     ; preds = %26
  %32 = icmp ult i64 %9, %29, !dbg !5451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5452
  br i1 %32, label %34, label %33, !dbg !5452

; <label>:33:                                     ; preds = %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5453
  br label %34, !dbg !5453

; <label>:34:                                     ; preds = %31, %26, %33
  %35 = phi i32 [ 1, %33 ], [ 0, %31 ], [ 0, %26 ], !dbg !5454
  %36 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 116, i64 %27, i32 1, !dbg !5455
  %37 = load i64, i64* %36, align 8, !dbg !5455, !tbaa !5457
  %38 = icmp eq i64 %37, 0, !dbg !5458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5459
  br i1 %38, label %53, label %39, !dbg !5459

; <label>:39:                                     ; preds = %34
  %40 = icmp ult i64 %9, %37, !dbg !5460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5461
  br i1 %40, label %53, label %41, !dbg !5461

; <label>:41:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5462
  %42 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 20, !dbg !5463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5465
  %43 = load i64, i64* %42, align 8, !dbg !5466, !tbaa !673
  %44 = icmp eq i64 %43, 0, !dbg !5467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5468
  %45 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !5469, !tbaa !642
  br i1 %44, label %46, label %47, !dbg !5468

; <label>:46:                                     ; preds = %41
  store i64 %45, i64* %42, align 8, !dbg !5470, !tbaa !673
  br label %55, !dbg !5472

; <label>:47:                                     ; preds = %41
  %48 = sub nsw i64 %45, %43, !dbg !5473
  %49 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 116, i64 %27, i32 2, !dbg !5475
  %50 = load i64, i64* %49, align 8, !dbg !5475, !tbaa !5477
  %51 = icmp sgt i64 %48, %50, !dbg !5478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5479
  br i1 %51, label %55, label %52, !dbg !5479

; <label>:52:                                     ; preds = %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5480
  br label %55, !dbg !5480

; <label>:53:                                     ; preds = %39, %34
  %54 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 20, !dbg !5463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5465
  store i64 0, i64* %54, align 8, !dbg !5482, !tbaa !673
  br label %55

; <label>:55:                                     ; preds = %52, %47, %46, %53
  %56 = phi i32 [ 0, %46 ], [ 0, %53 ], [ 0, %52 ], [ 1, %47 ], !dbg !5483
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %57 = or i32 %56, %35, !dbg !5484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5485
  ret i32 %57, !dbg !5485
}

; Function Attrs: noredzone nounwind
define dso_local void @flushSlavesOutputBuffers() local_unnamed_addr #0 !dbg !5486 {
  %1 = alloca %struct.listIter, align 8
  %2 = bitcast %struct.listIter* %1 to i8*, !dbg !5494
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #5, !dbg !5494
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !5495, !tbaa !1035
  call void @listRewind(%struct.list* %3, %struct.listIter* nonnull %1) #8, !dbg !5497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5498
  %4 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !5499
  %5 = icmp eq %struct.listNode* %4, null, !dbg !5498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5498
  br i1 %5, label %49, label %6, !dbg !5498

; <label>:6:                                      ; preds = %0, %46
  %7 = phi %struct.listNode* [ %47, %46 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.listNode, %struct.listNode* %7, i64 0, i32 2, !dbg !5501
  %9 = bitcast i8** %8 to %struct.client**, !dbg !5501
  %10 = load %struct.client*, %struct.client** %9, align 8, !dbg !5501, !tbaa !1192
  %11 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !5503, !tbaa !583
  %12 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 1, !dbg !5504
  %13 = load i32, i32* %12, align 8, !dbg !5504, !tbaa !599
  %14 = call i32 @aeGetFileEvents(%struct.aeEventLoop* %11, i32 %13) #8, !dbg !5505
  %15 = and i32 %14, 2, !dbg !5507
  %16 = icmp eq i32 %15, 0, !dbg !5507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5508
  br i1 %16, label %17, label %22, !dbg !5508

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 21, !dbg !5509
  %19 = load i32, i32* %18, align 8, !dbg !5509, !tbaa !944
  %20 = and i32 %19, 2097152, !dbg !5510
  %21 = icmp ne i32 %20, 0, !dbg !5508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5508
  br label %22, !dbg !5508

; <label>:22:                                     ; preds = %6, %17
  %23 = phi i1 [ true, %6 ], [ %21, %17 ]
  %24 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 23, !dbg !5511
  %25 = load i32, i32* %24, align 8, !dbg !5511, !tbaa !1052
  %26 = icmp eq i32 %25, 9, !dbg !5513
  %27 = and i1 %23, %26, !dbg !5514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5514
  br i1 %27, label %28, label %46, !dbg !5514

; <label>:28:                                     ; preds = %22
  %29 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 24, !dbg !5515
  %30 = load i32, i32* %29, align 4, !dbg !5515, !tbaa !1058
  %31 = icmp eq i32 %30, 0, !dbg !5516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5517
  br i1 %31, label %32, label %46, !dbg !5517

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 47, !dbg !5520
  %34 = load i32, i32* %33, align 8, !dbg !5520, !tbaa !605
  %35 = icmp eq i32 %34, 0, !dbg !5521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5522
  br i1 %35, label %37, label %36, !dbg !5522

; <label>:36:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5524
  br label %43, !dbg !5524

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 15, !dbg !5525
  %39 = load %struct.list*, %struct.list** %38, align 8, !dbg !5525, !tbaa !667
  %40 = getelementptr inbounds %struct.list, %struct.list* %39, i64 0, i32 5, !dbg !5525
  %41 = load i64, i64* %40, align 8, !dbg !5525, !tbaa !1101
  %42 = icmp eq i64 %41, 0, !dbg !5522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5524
  br i1 %42, label %46, label %43, !dbg !5524

; <label>:43:                                     ; preds = %36, %37
  %44 = load i32, i32* %12, align 8, !dbg !5526, !tbaa !599
  %45 = call i32 @writeToClient(i32 %44, %struct.client* nonnull %10, i32 0) #10, !dbg !5528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5529
  br label %46, !dbg !5529

; <label>:46:                                     ; preds = %37, %28, %43, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5498
  %47 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !5499
  %48 = icmp eq %struct.listNode* %47, null, !dbg !5498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5498
  br i1 %48, label %49, label %6, !dbg !5498, !llvm.loop !5530

; <label>:49:                                     ; preds = %46, %0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #5, !dbg !5532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5532
  ret void, !dbg !5532
}

; Function Attrs: noredzone
declare dso_local void @queueClientForReprocessing(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @processEventsWhileBlocked() local_unnamed_addr #0 !dbg !5533 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5541
  %1 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !5543, !tbaa !583
  %2 = tail call i32 @aeProcessEvents(%struct.aeEventLoop* %1, i32 5) #8, !dbg !5544
  %3 = tail call i32 @handleClientsWithPendingWrites() #10, !dbg !5545
  %4 = add nsw i32 %3, %2, !dbg !5546
  %5 = icmp eq i32 %4, 0, !dbg !5547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5549
  br i1 %5, label %12, label %6, !dbg !5549

; <label>:6:                                      ; preds = %0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5550
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5541
  %7 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !5543, !tbaa !583
  %8 = tail call i32 @aeProcessEvents(%struct.aeEventLoop* %7, i32 5) #8, !dbg !5544
  %9 = tail call i32 @handleClientsWithPendingWrites() #10, !dbg !5545
  %10 = add nsw i32 %9, %8, !dbg !5546
  %11 = icmp eq i32 %10, 0, !dbg !5547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5549
  br i1 %11, label %12, label %14, !dbg !5549

; <label>:12:                                     ; preds = %0, %6, %14, %21, %28
  %13 = phi i32 [ %29, %28 ], [ 0, %0 ], [ %4, %6 ], [ %15, %14 ], [ %22, %21 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5551
  ret i32 %13, !dbg !5551

; <label>:14:                                     ; preds = %6
  %15 = add nsw i32 %10, %4, !dbg !5552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5550
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5541
  %16 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !5543, !tbaa !583
  %17 = tail call i32 @aeProcessEvents(%struct.aeEventLoop* %16, i32 5) #8, !dbg !5544
  %18 = tail call i32 @handleClientsWithPendingWrites() #10, !dbg !5545
  %19 = add nsw i32 %18, %17, !dbg !5546
  %20 = icmp eq i32 %19, 0, !dbg !5547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5549
  br i1 %20, label %12, label %21, !dbg !5549

; <label>:21:                                     ; preds = %14
  %22 = add nsw i32 %19, %15, !dbg !5552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5550
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5541
  %23 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !5543, !tbaa !583
  %24 = tail call i32 @aeProcessEvents(%struct.aeEventLoop* %23, i32 5) #8, !dbg !5544
  %25 = tail call i32 @handleClientsWithPendingWrites() #10, !dbg !5545
  %26 = add nsw i32 %25, %24, !dbg !5546
  %27 = icmp eq i32 %26, 0, !dbg !5547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5549
  br i1 %27, label %12, label %28, !dbg !5549

; <label>:28:                                     ; preds = %21
  %29 = add nsw i32 %26, %22, !dbg !5552
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5550
  br label %12, !dbg !5551
}

; Function Attrs: noredzone
declare dso_local i32 @aeProcessEvents(%struct.aeEventLoop*, i32) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #7 !dbg !313 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !5553
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #5, !dbg !5553
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !5555
  call void @llvm.va_start(i8* nonnull %3), !dbg !5555
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @uk_pr_crit.__str.99, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.97, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #8, !dbg !5556
  call void @llvm.va_end(i8* nonnull %3), !dbg !5559
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #5, !dbg !5560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !5560
  ret void, !dbg !5560
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
!558 = !DILocation(line: 153, column: 2, scope: !559, inlinedAt: !556)
!559 = distinct !DILexicalBlock(scope: !552, file: !479, line: 153, column: 2)
!560 = !DILocation(line: 154, column: 12, scope: !552, inlinedAt: !556)
!561 = !DILocation(line: 154, column: 9, scope: !552, inlinedAt: !556)
!562 = !DILocation(line: 154, column: 2, scope: !552, inlinedAt: !556)
!563 = !DILocation(line: 163, column: 2, scope: !478, inlinedAt: !540)
!564 = !DILocation(line: 0, scope: !478, inlinedAt: !540)
!565 = !DILocation(line: 0, scope: !467)
!566 = !DILocation(line: 164, column: 1, scope: !478, inlinedAt: !540)
!567 = !DILocation(line: 92, column: 17, scope: !467)
!568 = !DILocation(line: 92, column: 13, scope: !467)
!569 = !DILocation(line: 98, column: 12, scope: !570)
!570 = distinct !DILexicalBlock(scope: !467, file: !3, line: 98, column: 9)
!571 = !DILocation(line: 98, column: 9, scope: !467)
!572 = !DILocation(line: 99, column: 9, scope: !573)
!573 = distinct !DILexicalBlock(scope: !570, file: !3, line: 98, column: 19)
!574 = !DILocation(line: 100, column: 9, scope: !573)
!575 = !DILocation(line: 101, column: 20, scope: !576)
!576 = distinct !DILexicalBlock(scope: !573, file: !3, line: 101, column: 13)
!577 = !{!442, !378, i64 1736}
!578 = !DILocation(line: 101, column: 13, scope: !576)
!579 = !DILocation(line: 101, column: 13, scope: !573)
!580 = !DILocation(line: 102, column: 13, scope: !576)
!581 = !DILocation(line: 103, column: 38, scope: !582)
!582 = distinct !DILexicalBlock(scope: !573, file: !3, line: 103, column: 13)
!583 = !{!442, !381, i64 72}
!584 = !DILocation(line: 103, column: 13, scope: !582)
!585 = !DILocation(line: 104, column: 37, scope: !582)
!586 = !DILocation(line: 103, column: 13, scope: !573)
!587 = !DILocation(line: 106, column: 13, scope: !588)
!588 = distinct !DILexicalBlock(scope: !582, file: !3, line: 105, column: 9)
!589 = !DILocation(line: 107, column: 13, scope: !588)
!590 = !DILocation(line: 108, column: 13, scope: !588)
!591 = !DILocation(line: 112, column: 5, scope: !467)
!592 = !DILocation(line: 114, column: 5, scope: !593)
!593 = distinct !DILexicalBlock(scope: !467, file: !3, line: 114, column: 5)
!594 = !DILocation(line: 113, column: 14, scope: !467)
!595 = !DILocation(line: 115, column: 8, scope: !467)
!596 = !DILocation(line: 115, column: 11, scope: !467)
!597 = !DILocation(line: 116, column: 8, scope: !467)
!598 = !DILocation(line: 116, column: 11, scope: !467)
!599 = !{!456, !378, i64 8}
!600 = !DILocation(line: 117, column: 8, scope: !467)
!601 = !DILocation(line: 117, column: 13, scope: !467)
!602 = !{!456, !381, i64 24}
!603 = !DILocation(line: 118, column: 8, scope: !467)
!604 = !DILocation(line: 118, column: 15, scope: !467)
!605 = !{!456, !378, i64 528}
!606 = !DILocation(line: 119, column: 8, scope: !467)
!607 = !DILocation(line: 119, column: 15, scope: !467)
!608 = !{!456, !411, i64 40}
!609 = !DILocation(line: 120, column: 19, scope: !467)
!610 = !DILocation(line: 120, column: 8, scope: !467)
!611 = !DILocation(line: 120, column: 17, scope: !467)
!612 = !{!456, !381, i64 32}
!613 = !DILocation(line: 121, column: 27, scope: !467)
!614 = !DILocation(line: 121, column: 8, scope: !467)
!615 = !DILocation(line: 121, column: 25, scope: !467)
!616 = !{!456, !381, i64 48}
!617 = !DILocation(line: 122, column: 8, scope: !467)
!618 = !DILocation(line: 122, column: 22, scope: !467)
!619 = !{!456, !411, i64 56}
!620 = !DILocation(line: 123, column: 8, scope: !467)
!621 = !DILocation(line: 123, column: 16, scope: !467)
!622 = !{!456, !378, i64 96}
!623 = !DILocation(line: 124, column: 8, scope: !467)
!624 = !DILocation(line: 124, column: 13, scope: !467)
!625 = !{!456, !378, i64 64}
!626 = !DILocation(line: 125, column: 8, scope: !467)
!627 = !DILocation(line: 125, column: 13, scope: !467)
!628 = !{!456, !381, i64 72}
!629 = !DILocation(line: 126, column: 8, scope: !467)
!630 = !DILocation(line: 126, column: 12, scope: !467)
!631 = !DILocation(line: 127, column: 8, scope: !467)
!632 = !DILocation(line: 127, column: 21, scope: !467)
!633 = !{!456, !378, i64 100}
!634 = !DILocation(line: 128, column: 8, scope: !467)
!635 = !DILocation(line: 128, column: 16, scope: !467)
!636 = !{!456, !411, i64 104}
!637 = !DILocation(line: 129, column: 8, scope: !467)
!638 = !DILocation(line: 129, column: 16, scope: !467)
!639 = !{!456, !411, i64 128}
!640 = !DILocation(line: 130, column: 8, scope: !467)
!641 = !DILocation(line: 131, column: 44, scope: !467)
!642 = !{!442, !411, i64 2872}
!643 = !DILocation(line: 131, column: 19, scope: !467)
!644 = !DILocation(line: 131, column: 35, scope: !467)
!645 = !{!456, !411, i64 144}
!646 = !DILocation(line: 131, column: 8, scope: !467)
!647 = !DILocation(line: 131, column: 14, scope: !467)
!648 = !{!456, !411, i64 136}
!649 = !DILocation(line: 130, column: 14, scope: !467)
!650 = !DILocation(line: 136, column: 8, scope: !467)
!651 = !DILocation(line: 136, column: 21, scope: !467)
!652 = !{!443, !443, i64 0}
!653 = !DILocation(line: 137, column: 8, scope: !467)
!654 = !DILocation(line: 137, column: 21, scope: !467)
!655 = !DILocation(line: 139, column: 8, scope: !467)
!656 = !DILocation(line: 139, column: 29, scope: !467)
!657 = !{!456, !378, i64 292}
!658 = !DILocation(line: 140, column: 8, scope: !467)
!659 = !DILocation(line: 140, column: 20, scope: !467)
!660 = !{!379, !379, i64 0}
!661 = !DILocation(line: 141, column: 8, scope: !467)
!662 = !DILocation(line: 141, column: 19, scope: !467)
!663 = !{!456, !378, i64 344}
!664 = !DILocation(line: 142, column: 16, scope: !467)
!665 = !DILocation(line: 142, column: 8, scope: !467)
!666 = !DILocation(line: 142, column: 14, scope: !467)
!667 = !{!456, !381, i64 112}
!668 = !DILocation(line: 143, column: 8, scope: !467)
!669 = !DILocation(line: 143, column: 20, scope: !467)
!670 = !{!456, !443, i64 120}
!671 = !DILocation(line: 144, column: 8, scope: !467)
!672 = !DILocation(line: 144, column: 37, scope: !467)
!673 = !{!456, !411, i64 152}
!674 = !DILocation(line: 145, column: 5, scope: !467)
!675 = !{!452, !381, i64 24}
!676 = !DILocation(line: 146, column: 5, scope: !467)
!677 = !{!452, !381, i64 16}
!678 = !DILocation(line: 147, column: 8, scope: !467)
!679 = !DILocation(line: 147, column: 14, scope: !467)
!680 = !{!456, !378, i64 384}
!681 = !DILocation(line: 148, column: 8, scope: !467)
!682 = !DILocation(line: 148, column: 13, scope: !467)
!683 = !DILocation(line: 148, column: 21, scope: !467)
!684 = !{!456, !443, i64 392}
!685 = !DILocation(line: 149, column: 20, scope: !467)
!686 = !DILocation(line: 149, column: 13, scope: !467)
!687 = !DILocation(line: 149, column: 18, scope: !467)
!688 = !{!456, !381, i64 400}
!689 = !DILocation(line: 150, column: 13, scope: !467)
!690 = !DILocation(line: 150, column: 20, scope: !467)
!691 = !{!456, !381, i64 408}
!692 = !DILocation(line: 151, column: 13, scope: !467)
!693 = !DILocation(line: 151, column: 25, scope: !467)
!694 = !DILocation(line: 153, column: 13, scope: !467)
!695 = !DILocation(line: 153, column: 31, scope: !467)
!696 = !{!456, !378, i64 456}
!697 = !DILocation(line: 154, column: 13, scope: !467)
!698 = !DILocation(line: 154, column: 25, scope: !467)
!699 = !{!456, !378, i64 460}
!700 = !DILocation(line: 155, column: 13, scope: !467)
!701 = !DILocation(line: 155, column: 24, scope: !467)
!702 = !{!456, !443, i64 464}
!703 = !DILocation(line: 156, column: 8, scope: !467)
!704 = !DILocation(line: 156, column: 13, scope: !467)
!705 = !{!456, !443, i64 480}
!706 = !DILocation(line: 157, column: 23, scope: !467)
!707 = !DILocation(line: 157, column: 8, scope: !467)
!708 = !DILocation(line: 157, column: 21, scope: !467)
!709 = !{!456, !381, i64 488}
!710 = !DILocation(line: 158, column: 26, scope: !467)
!711 = !DILocation(line: 158, column: 8, scope: !467)
!712 = !DILocation(line: 158, column: 24, scope: !467)
!713 = !{!456, !381, i64 496}
!714 = !DILocation(line: 159, column: 26, scope: !467)
!715 = !DILocation(line: 159, column: 8, scope: !467)
!716 = !DILocation(line: 159, column: 24, scope: !467)
!717 = !{!456, !381, i64 504}
!718 = !DILocation(line: 160, column: 8, scope: !467)
!719 = !DILocation(line: 160, column: 15, scope: !467)
!720 = !{!456, !381, i64 512}
!721 = !DILocation(line: 161, column: 8, scope: !467)
!722 = !DILocation(line: 161, column: 25, scope: !467)
!723 = !DILocation(line: 162, column: 5, scope: !467)
!724 = !DILocation(line: 163, column: 5, scope: !467)
!725 = !{!452, !381, i64 32}
!726 = !DILocation(line: 164, column: 9, scope: !467)
!727 = !DILocation(line: 78, column: 25, scope: !435, inlinedAt: !728)
!728 = distinct !DILocation(line: 164, column: 19, scope: !729)
!729 = distinct !DILexicalBlock(scope: !467, file: !3, line: 164, column: 9)
!730 = !DILocation(line: 79, column: 28, scope: !435, inlinedAt: !728)
!731 = !DILocation(line: 79, column: 5, scope: !435, inlinedAt: !728)
!732 = !DILocation(line: 83, column: 27, scope: !435, inlinedAt: !728)
!733 = !DILocation(line: 83, column: 25, scope: !435, inlinedAt: !728)
!734 = !DILocation(line: 84, column: 5, scope: !435, inlinedAt: !728)
!735 = !DILocation(line: 84, column: 19, scope: !435, inlinedAt: !728)
!736 = !DILocation(line: 84, column: 14, scope: !435, inlinedAt: !728)
!737 = !DILocation(line: 85, column: 22, scope: !435, inlinedAt: !728)
!738 = !DILocation(line: 85, column: 5, scope: !435, inlinedAt: !728)
!739 = !DILocation(line: 86, column: 1, scope: !435, inlinedAt: !728)
!740 = !DILocation(line: 164, column: 19, scope: !729)
!741 = !DILocation(line: 165, column: 5, scope: !467)
!742 = !DILocation(line: 167, column: 1, scope: !467)
!743 = distinct !DISubprogram(name: "readQueryFromClient", scope: !3, file: !3, line: 1524, type: !744, isLocal: false, isDefinition: true, scopeLine: 1524, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !806)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !746, !18, !45, !18}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventLoop", file: !748, line: 109, baseType: !749)
!748 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/ae.h", directory: "/root/.unikraft/apps/redis/build")
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !748, line: 97, size: 640, elements: !750)
!750 = !{!751, !752, !753, !754, !755, !769, !776, !798, !799, !800, !805}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !749, file: !748, line: 98, baseType: !18, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !749, file: !748, line: 99, baseType: !18, size: 32, offset: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !749, file: !748, line: 100, baseType: !95, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "lastTime", scope: !749, file: !748, line: 101, baseType: !182, size: 64, offset: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !749, file: !748, line: 102, baseType: !756, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !748, line: 76, baseType: !758)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !748, line: 71, size: 256, elements: !759)
!759 = !{!760, !761, !767, !768}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !758, file: !748, line: 72, baseType: !18, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !758, file: !748, line: 73, baseType: !762, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !748, line: 65, baseType: !764)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !766, !18, !45, !18}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !758, file: !748, line: 74, baseType: !762, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !758, file: !748, line: 75, baseType: !45, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !749, file: !748, line: 103, baseType: !770, size: 64, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !748, line: 94, baseType: !772)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !748, line: 91, size: 64, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !772, file: !748, line: 92, baseType: !18, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !772, file: !748, line: 93, baseType: !18, size: 32, offset: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !749, file: !748, line: 104, baseType: !777, size: 64, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !748, line: 88, baseType: !779)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !748, line: 79, size: 512, elements: !780)
!780 = !{!781, !782, !783, !784, !789, !794, !795, !797}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !779, file: !748, line: 80, baseType: !95, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "when_sec", scope: !779, file: !748, line: 81, baseType: !77, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "when_ms", scope: !779, file: !748, line: 82, baseType: !77, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !779, file: !748, line: 83, baseType: !785, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !748, line: 66, baseType: !787)
!787 = !DISubroutineType(types: !788)
!788 = !{!18, !766, !95, !45}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !779, file: !748, line: 84, baseType: !790, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !748, line: 67, baseType: !792)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !766, !45}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !779, file: !748, line: 85, baseType: !45, size: 64, offset: 320)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !779, file: !748, line: 86, baseType: !796, size: 64, offset: 384)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !779, file: !748, line: 87, baseType: !796, size: 64, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !749, file: !748, line: 105, baseType: !18, size: 32, offset: 384)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !749, file: !748, line: 106, baseType: !45, size: 64, offset: 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !749, file: !748, line: 107, baseType: !801, size: 64, offset: 512)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !748, line: 68, baseType: !803)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !766}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !749, file: !748, line: 108, baseType: !801, size: 64, offset: 576)
!806 = !{!807, !808, !809, !810, !811, !812, !813, !814, !815, !818, !821}
!807 = !DILocalVariable(name: "el", arg: 1, scope: !743, file: !3, line: 1524, type: !746)
!808 = !DILocalVariable(name: "fd", arg: 2, scope: !743, file: !3, line: 1524, type: !18)
!809 = !DILocalVariable(name: "privdata", arg: 3, scope: !743, file: !3, line: 1524, type: !45)
!810 = !DILocalVariable(name: "mask", arg: 4, scope: !743, file: !3, line: 1524, type: !18)
!811 = !DILocalVariable(name: "c", scope: !743, file: !3, line: 1525, type: !6)
!812 = !DILocalVariable(name: "nread", scope: !743, file: !3, line: 1526, type: !18)
!813 = !DILocalVariable(name: "readlen", scope: !743, file: !3, line: 1526, type: !18)
!814 = !DILocalVariable(name: "qblen", scope: !743, file: !3, line: 1527, type: !142)
!815 = !DILocalVariable(name: "remaining", scope: !816, file: !3, line: 1541, type: !270)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 1540, column: 5)
!817 = distinct !DILexicalBlock(scope: !743, file: !3, line: 1538, column: 9)
!818 = !DILocalVariable(name: "ci", scope: !819, file: !3, line: 1577, type: !137)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 1576, column: 63)
!820 = distinct !DILexicalBlock(scope: !743, file: !3, line: 1576, column: 9)
!821 = !DILocalVariable(name: "bytes", scope: !819, file: !3, line: 1577, type: !137)
!822 = !DILocation(line: 1524, column: 39, scope: !743)
!823 = !DILocation(line: 1524, column: 47, scope: !743)
!824 = !DILocation(line: 1524, column: 57, scope: !743)
!825 = !DILocation(line: 1524, column: 71, scope: !743)
!826 = !DILocation(line: 1525, column: 17, scope: !743)
!827 = !DILocation(line: 1525, column: 13, scope: !743)
!828 = !DILocation(line: 1526, column: 16, scope: !743)
!829 = !DILocation(line: 1538, column: 12, scope: !817)
!830 = !DILocation(line: 1538, column: 20, scope: !817)
!831 = !DILocation(line: 1538, column: 43, scope: !817)
!832 = !DILocation(line: 1538, column: 49, scope: !817)
!833 = !DILocation(line: 1538, column: 46, scope: !817)
!834 = !DILocation(line: 1538, column: 62, scope: !817)
!835 = !DILocation(line: 1538, column: 68, scope: !817)
!836 = !DILocation(line: 1538, column: 76, scope: !817)
!837 = !DILocation(line: 1539, column: 9, scope: !817)
!838 = !DILocation(line: 1539, column: 23, scope: !817)
!839 = !DILocation(line: 1538, column: 9, scope: !743)
!840 = !DILocation(line: 1541, column: 48, scope: !816)
!841 = !DILocation(line: 1541, column: 62, scope: !816)
!842 = !DILocalVariable(name: "s", arg: 1, scope: !843, file: !138, line: 87, type: !846)
!843 = distinct !DISubprogram(name: "sdslen", scope: !138, file: !138, line: 87, type: !844, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !847)
!844 = !DISubroutineType(types: !845)
!845 = !{!142, !846}
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!847 = !{!842, !848}
!848 = !DILocalVariable(name: "flags", scope: !843, file: !138, line: 88, type: !269)
!849 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !850)
!850 = distinct !DILocation(line: 1541, column: 52, scope: !816)
!851 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !850)
!852 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !850)
!853 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !850)
!854 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !850)
!855 = distinct !DILexicalBlock(scope: !843, file: !138, line: 89, column: 33)
!856 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !850)
!857 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !850)
!858 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !850)
!859 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !850)
!860 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !850)
!861 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !850)
!862 = !{!863, !863, i64 0}
!863 = !{!"short", !379, i64 0}
!864 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !850)
!865 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !850)
!866 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !850)
!867 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !850)
!868 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !850)
!869 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !850)
!870 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !850)
!871 = !DILocation(line: 0, scope: !855, inlinedAt: !850)
!872 = !DILocation(line: 0, scope: !816)
!873 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !850)
!874 = !DILocation(line: 1541, column: 51, scope: !816)
!875 = !DILocation(line: 1541, column: 17, scope: !816)
!876 = !DILocation(line: 1545, column: 23, scope: !877)
!877 = distinct !DILexicalBlock(scope: !816, file: !3, line: 1545, column: 13)
!878 = !DILocation(line: 1545, column: 27, scope: !877)
!879 = !DILocation(line: 1545, column: 40, scope: !877)
!880 = !DILocation(line: 1545, column: 13, scope: !816)
!881 = !DILocation(line: 1545, column: 51, scope: !877)
!882 = !DILocation(line: 0, scope: !743)
!883 = !DILocation(line: 1546, column: 5, scope: !816)
!884 = !DILocation(line: 1548, column: 23, scope: !743)
!885 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !886)
!886 = distinct !DILocation(line: 1548, column: 13, scope: !743)
!887 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !886)
!888 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !886)
!889 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !886)
!890 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !886)
!891 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !886)
!892 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !886)
!893 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !886)
!894 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !886)
!895 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !886)
!896 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !886)
!897 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !886)
!898 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !886)
!899 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !886)
!900 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !886)
!901 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !886)
!902 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !886)
!903 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !886)
!904 = !DILocation(line: 101, column: 5, scope: !843, inlinedAt: !886)
!905 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !886)
!906 = !DILocation(line: 1527, column: 12, scope: !743)
!907 = !DILocation(line: 1549, column: 9, scope: !743)
!908 = !DILocation(line: 0, scope: !855, inlinedAt: !886)
!909 = !DILocation(line: 1549, column: 12, scope: !910)
!910 = distinct !DILexicalBlock(scope: !743, file: !3, line: 1549, column: 9)
!911 = !DILocation(line: 1549, column: 26, scope: !910)
!912 = !DILocation(line: 1549, column: 52, scope: !910)
!913 = !DILocation(line: 1549, column: 35, scope: !910)
!914 = !DILocation(line: 0, scope: !910)
!915 = !DILocation(line: 1550, column: 47, scope: !743)
!916 = !DILocation(line: 1550, column: 19, scope: !743)
!917 = !DILocation(line: 1550, column: 17, scope: !743)
!918 = !DILocation(line: 1551, column: 33, scope: !743)
!919 = !DILocation(line: 1551, column: 13, scope: !743)
!920 = !DILocation(line: 1526, column: 9, scope: !743)
!921 = !DILocation(line: 1552, column: 15, scope: !922)
!922 = distinct !DILexicalBlock(scope: !743, file: !3, line: 1552, column: 9)
!923 = !DILocation(line: 1552, column: 9, scope: !743)
!924 = !DILocation(line: 1553, column: 13, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 1553, column: 13)
!926 = distinct !DILexicalBlock(scope: !922, file: !3, line: 1552, column: 22)
!927 = !DILocation(line: 1553, column: 19, scope: !925)
!928 = !DILocation(line: 1553, column: 13, scope: !926)
!929 = !DILocation(line: 1556, column: 70, scope: !930)
!930 = distinct !DILexicalBlock(scope: !925, file: !3, line: 1555, column: 16)
!931 = !DILocation(line: 1556, column: 61, scope: !930)
!932 = !DILocation(line: 1556, column: 13, scope: !930)
!933 = !DILocation(line: 1557, column: 13, scope: !930)
!934 = !DILocation(line: 1558, column: 13, scope: !930)
!935 = !DILocation(line: 1560, column: 22, scope: !936)
!936 = distinct !DILexicalBlock(scope: !922, file: !3, line: 1560, column: 16)
!937 = !DILocation(line: 1560, column: 16, scope: !922)
!938 = !DILocation(line: 1561, column: 9, scope: !939)
!939 = distinct !DILexicalBlock(scope: !936, file: !3, line: 1560, column: 28)
!940 = !DILocation(line: 1562, column: 9, scope: !939)
!941 = !DILocation(line: 1563, column: 9, scope: !939)
!942 = !DILocation(line: 1564, column: 19, scope: !943)
!943 = distinct !DILexicalBlock(scope: !936, file: !3, line: 1564, column: 16)
!944 = !{!456, !378, i64 160}
!945 = !DILocation(line: 1564, column: 25, scope: !943)
!946 = !DILocation(line: 1564, column: 16, scope: !936)
!947 = !DILocation(line: 1572, column: 28, scope: !743)
!948 = !DILocation(line: 1568, column: 44, scope: !949)
!949 = distinct !DILexicalBlock(scope: !943, file: !3, line: 1564, column: 42)
!950 = !DILocation(line: 1569, column: 44, scope: !949)
!951 = !DILocation(line: 1569, column: 52, scope: !949)
!952 = !DILocation(line: 1569, column: 59, scope: !949)
!953 = !DILocation(line: 1568, column: 31, scope: !949)
!954 = !DILocation(line: 1568, column: 29, scope: !949)
!955 = !DILocation(line: 1570, column: 5, scope: !949)
!956 = !DILocation(line: 1572, column: 19, scope: !743)
!957 = !DILocation(line: 1572, column: 5, scope: !743)
!958 = !DILocation(line: 1573, column: 33, scope: !743)
!959 = !DILocation(line: 1573, column: 8, scope: !743)
!960 = !DILocation(line: 1573, column: 24, scope: !743)
!961 = !DILocation(line: 1574, column: 12, scope: !962)
!962 = distinct !DILexicalBlock(scope: !743, file: !3, line: 1574, column: 9)
!963 = !DILocation(line: 1574, column: 18, scope: !962)
!964 = !DILocation(line: 1574, column: 9, scope: !743)
!965 = !DILocation(line: 1574, column: 38, scope: !962)
!966 = !DILocation(line: 1574, column: 51, scope: !962)
!967 = !{!456, !443, i64 208}
!968 = !DILocation(line: 1574, column: 35, scope: !962)
!969 = !DILocation(line: 1575, column: 33, scope: !743)
!970 = !{!442, !443, i64 1240}
!971 = !DILocation(line: 1576, column: 19, scope: !820)
!972 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !973)
!973 = distinct !DILocation(line: 1576, column: 9, scope: !820)
!974 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !973)
!975 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !973)
!976 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !973)
!977 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !973)
!978 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !973)
!979 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !973)
!980 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !973)
!981 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !973)
!982 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !973)
!983 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !973)
!984 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !973)
!985 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !973)
!986 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !973)
!987 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !973)
!988 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !973)
!989 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !973)
!990 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !973)
!991 = !DILocation(line: 101, column: 5, scope: !843, inlinedAt: !973)
!992 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !973)
!993 = !DILocation(line: 1576, column: 9, scope: !743)
!994 = !DILocation(line: 0, scope: !855, inlinedAt: !973)
!995 = !DILocation(line: 0, scope: !820)
!996 = !DILocation(line: 1576, column: 38, scope: !820)
!997 = !{!442, !411, i64 1784}
!998 = !DILocation(line: 1576, column: 29, scope: !820)
!999 = !DILocation(line: 1577, column: 38, scope: !819)
!1000 = !DILocation(line: 1577, column: 18, scope: !819)
!1001 = !DILocation(line: 1577, column: 13, scope: !819)
!1002 = !DILocation(line: 1577, column: 61, scope: !819)
!1003 = !DILocation(line: 1577, column: 53, scope: !819)
!1004 = !DILocation(line: 1579, column: 37, scope: !819)
!1005 = !DILocation(line: 1579, column: 17, scope: !819)
!1006 = !DILocation(line: 1580, column: 9, scope: !819)
!1007 = !DILocation(line: 1581, column: 9, scope: !819)
!1008 = !DILocation(line: 1582, column: 9, scope: !819)
!1009 = !DILocation(line: 1583, column: 9, scope: !819)
!1010 = !DILocalVariable(name: "c", arg: 1, scope: !1011, file: !3, line: 1509, type: !6)
!1011 = distinct !DISubprogram(name: "processInputBufferAndReplicate", scope: !3, file: !3, line: 1509, type: !4, isLocal: false, isDefinition: true, scopeLine: 1509, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1012)
!1012 = !{!1010, !1013, !1016}
!1013 = !DILocalVariable(name: "prev_offset", scope: !1014, file: !3, line: 1513, type: !142)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 1512, column: 12)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 1510, column: 9)
!1016 = !DILocalVariable(name: "applied", scope: !1014, file: !3, line: 1515, type: !142)
!1017 = !DILocation(line: 1509, column: 45, scope: !1011, inlinedAt: !1018)
!1018 = distinct !DILocation(line: 1593, column: 5, scope: !743)
!1019 = !DILocation(line: 1510, column: 9, scope: !1011, inlinedAt: !1018)
!1020 = !DILocation(line: 1511, column: 9, scope: !1021, inlinedAt: !1018)
!1021 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 1510, column: 38)
!1022 = !DILocation(line: 1512, column: 5, scope: !1021, inlinedAt: !1018)
!1023 = !DILocation(line: 1513, column: 33, scope: !1014, inlinedAt: !1018)
!1024 = !{!456, !443, i64 216}
!1025 = !DILocation(line: 1513, column: 16, scope: !1014, inlinedAt: !1018)
!1026 = !DILocation(line: 1514, column: 9, scope: !1014, inlinedAt: !1018)
!1027 = !DILocation(line: 1515, column: 29, scope: !1014, inlinedAt: !1018)
!1028 = !DILocation(line: 1515, column: 37, scope: !1014, inlinedAt: !1018)
!1029 = !DILocation(line: 1515, column: 16, scope: !1014, inlinedAt: !1018)
!1030 = !DILocation(line: 1516, column: 13, scope: !1031, inlinedAt: !1018)
!1031 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 1516, column: 13)
!1032 = !DILocation(line: 1516, column: 13, scope: !1014, inlinedAt: !1018)
!1033 = !DILocation(line: 1517, column: 58, scope: !1034, inlinedAt: !1018)
!1034 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 1516, column: 22)
!1035 = !{!442, !381, i64 536}
!1036 = !DILocation(line: 1518, column: 24, scope: !1034, inlinedAt: !1018)
!1037 = !DILocation(line: 1517, column: 13, scope: !1034, inlinedAt: !1018)
!1038 = !DILocation(line: 1519, column: 25, scope: !1034, inlinedAt: !1018)
!1039 = !DILocation(line: 1519, column: 13, scope: !1034, inlinedAt: !1018)
!1040 = !DILocation(line: 1520, column: 9, scope: !1034, inlinedAt: !1018)
!1041 = !DILocation(line: 1522, column: 1, scope: !1011, inlinedAt: !1018)
!1042 = !DILocation(line: 1594, column: 1, scope: !743)
!1043 = distinct !DISubprogram(name: "clientInstallWriteHandler", scope: !3, file: !3, line: 176, type: !4, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1044)
!1044 = !{!1045}
!1045 = !DILocalVariable(name: "c", arg: 1, scope: !1043, file: !3, line: 176, type: !6)
!1046 = !DILocation(line: 176, column: 40, scope: !1043)
!1047 = !DILocation(line: 180, column: 14, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 180, column: 9)
!1049 = !DILocation(line: 180, column: 20, scope: !1048)
!1050 = !DILocation(line: 180, column: 44, scope: !1048)
!1051 = !DILocation(line: 181, column: 13, scope: !1048)
!1052 = !{!456, !378, i64 168}
!1053 = !DILocation(line: 181, column: 23, scope: !1048)
!1054 = !DILocation(line: 181, column: 42, scope: !1048)
!1055 = !DILocation(line: 182, column: 24, scope: !1048)
!1056 = !DILocation(line: 182, column: 46, scope: !1048)
!1057 = !DILocation(line: 182, column: 53, scope: !1048)
!1058 = !{!456, !378, i64 172}
!1059 = !DILocation(line: 182, column: 50, scope: !1048)
!1060 = !DILocation(line: 180, column: 9, scope: !1043)
!1061 = !DILocation(line: 190, column: 18, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 183, column: 5)
!1063 = !DILocation(line: 191, column: 32, scope: !1062)
!1064 = !{!442, !381, i64 528}
!1065 = !DILocation(line: 191, column: 54, scope: !1062)
!1066 = !DILocation(line: 191, column: 9, scope: !1062)
!1067 = !DILocation(line: 192, column: 5, scope: !1062)
!1068 = !DILocation(line: 193, column: 1, scope: !1043)
!1069 = distinct !DISubprogram(name: "prepareClientToWrite", scope: !3, file: !3, line: 217, type: !1070, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1072)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!18, !6}
!1072 = !{!1073}
!1073 = !DILocalVariable(name: "c", arg: 1, scope: !1069, file: !3, line: 217, type: !6)
!1074 = !DILocation(line: 217, column: 34, scope: !1069)
!1075 = !DILocation(line: 220, column: 12, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 220, column: 9)
!1077 = !DILocation(line: 220, column: 18, scope: !1076)
!1078 = !DILocation(line: 220, column: 9, scope: !1069)
!1079 = !DILocation(line: 223, column: 18, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 223, column: 9)
!1081 = !DILocation(line: 223, column: 9, scope: !1069)
!1082 = !DILocation(line: 227, column: 19, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 227, column: 9)
!1084 = !DILocation(line: 227, column: 36, scope: !1083)
!1085 = !DILocation(line: 228, column: 20, scope: !1083)
!1086 = !DILocation(line: 227, column: 9, scope: !1069)
!1087 = !DILocation(line: 230, column: 12, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 230, column: 9)
!1089 = !DILocation(line: 230, column: 15, scope: !1088)
!1090 = !DILocation(line: 230, column: 9, scope: !1069)
!1091 = !DILocalVariable(name: "c", arg: 1, scope: !1092, file: !3, line: 664, type: !6)
!1092 = distinct !DISubprogram(name: "clientHasPendingReplies", scope: !3, file: !3, line: 664, type: !1070, isLocal: false, isDefinition: true, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1093)
!1093 = !{!1091}
!1094 = !DILocation(line: 664, column: 37, scope: !1092, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 234, column: 10, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 234, column: 9)
!1097 = !DILocation(line: 665, column: 15, scope: !1092, inlinedAt: !1095)
!1098 = !DILocation(line: 665, column: 12, scope: !1092, inlinedAt: !1095)
!1099 = !DILocation(line: 665, column: 22, scope: !1092, inlinedAt: !1095)
!1100 = !DILocation(line: 665, column: 25, scope: !1092, inlinedAt: !1095)
!1101 = !{!452, !411, i64 40}
!1102 = !DILocation(line: 665, column: 5, scope: !1092, inlinedAt: !1095)
!1103 = !DILocation(line: 234, column: 9, scope: !1069)
!1104 = !DILocation(line: 176, column: 40, scope: !1043, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 234, column: 38, scope: !1096)
!1106 = !DILocation(line: 180, column: 20, scope: !1048, inlinedAt: !1105)
!1107 = !DILocation(line: 180, column: 44, scope: !1048, inlinedAt: !1105)
!1108 = !DILocation(line: 181, column: 13, scope: !1048, inlinedAt: !1105)
!1109 = !DILocation(line: 181, column: 23, scope: !1048, inlinedAt: !1105)
!1110 = !DILocation(line: 181, column: 42, scope: !1048, inlinedAt: !1105)
!1111 = !DILocation(line: 182, column: 24, scope: !1048, inlinedAt: !1105)
!1112 = !DILocation(line: 182, column: 46, scope: !1048, inlinedAt: !1105)
!1113 = !DILocation(line: 182, column: 53, scope: !1048, inlinedAt: !1105)
!1114 = !DILocation(line: 182, column: 50, scope: !1048, inlinedAt: !1105)
!1115 = !DILocation(line: 180, column: 9, scope: !1043, inlinedAt: !1105)
!1116 = !DILocation(line: 190, column: 18, scope: !1062, inlinedAt: !1105)
!1117 = !DILocation(line: 191, column: 32, scope: !1062, inlinedAt: !1105)
!1118 = !DILocation(line: 191, column: 54, scope: !1062, inlinedAt: !1105)
!1119 = !DILocation(line: 191, column: 9, scope: !1062, inlinedAt: !1105)
!1120 = !DILocation(line: 192, column: 5, scope: !1062, inlinedAt: !1105)
!1121 = !DILocation(line: 0, scope: !1096)
!1122 = !DILocation(line: 237, column: 5, scope: !1069)
!1123 = !DILocation(line: 0, scope: !1083)
!1124 = !DILocation(line: 0, scope: !1076)
!1125 = !DILocation(line: 238, column: 1, scope: !1069)
!1126 = !DILocation(line: 664, column: 37, scope: !1092)
!1127 = !DILocation(line: 665, column: 15, scope: !1092)
!1128 = !DILocation(line: 665, column: 12, scope: !1092)
!1129 = !DILocation(line: 665, column: 22, scope: !1092)
!1130 = !DILocation(line: 665, column: 25, scope: !1092)
!1131 = !DILocation(line: 665, column: 5, scope: !1092)
!1132 = distinct !DISubprogram(name: "_addReplyToBuffer", scope: !3, file: !3, line: 244, type: !1133, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1135)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!18, !6, !317, !142}
!1135 = !{!1136, !1137, !1138, !1139}
!1136 = !DILocalVariable(name: "c", arg: 1, scope: !1132, file: !3, line: 244, type: !6)
!1137 = !DILocalVariable(name: "s", arg: 2, scope: !1132, file: !3, line: 244, type: !317)
!1138 = !DILocalVariable(name: "len", arg: 3, scope: !1132, file: !3, line: 244, type: !142)
!1139 = !DILocalVariable(name: "available", scope: !1132, file: !3, line: 245, type: !142)
!1140 = !DILocation(line: 244, column: 31, scope: !1132)
!1141 = !DILocation(line: 244, column: 46, scope: !1132)
!1142 = !DILocation(line: 244, column: 56, scope: !1132)
!1143 = !DILocation(line: 245, column: 42, scope: !1132)
!1144 = !DILocation(line: 245, column: 39, scope: !1132)
!1145 = !DILocation(line: 245, column: 38, scope: !1132)
!1146 = !DILocation(line: 245, column: 12, scope: !1132)
!1147 = !DILocation(line: 247, column: 12, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 247, column: 9)
!1149 = !DILocation(line: 247, column: 18, scope: !1148)
!1150 = !DILocation(line: 247, column: 9, scope: !1132)
!1151 = !DILocation(line: 251, column: 9, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 251, column: 9)
!1153 = !DILocation(line: 251, column: 30, scope: !1152)
!1154 = !DILocation(line: 251, column: 9, scope: !1132)
!1155 = !DILocation(line: 254, column: 13, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 254, column: 9)
!1157 = !DILocation(line: 254, column: 9, scope: !1132)
!1158 = !DILocation(line: 256, column: 18, scope: !1132)
!1159 = !DILocation(line: 256, column: 5, scope: !1132)
!1160 = !DILocation(line: 257, column: 14, scope: !1132)
!1161 = !DILocation(line: 258, column: 5, scope: !1132)
!1162 = !DILocation(line: 0, scope: !1132)
!1163 = !DILocation(line: 0, scope: !1148)
!1164 = !DILocation(line: 259, column: 1, scope: !1132)
!1165 = distinct !DISubprogram(name: "_addReplyStringToList", scope: !3, file: !3, line: 261, type: !1166, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !6, !317, !142}
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1174, !1177, !1178}
!1169 = !DILocalVariable(name: "c", arg: 1, scope: !1165, file: !3, line: 261, type: !6)
!1170 = !DILocalVariable(name: "s", arg: 2, scope: !1165, file: !3, line: 261, type: !317)
!1171 = !DILocalVariable(name: "len", arg: 3, scope: !1165, file: !3, line: 261, type: !142)
!1172 = !DILocalVariable(name: "ln", scope: !1165, file: !3, line: 264, type: !103)
!1173 = !DILocalVariable(name: "tail", scope: !1165, file: !3, line: 265, type: !399)
!1174 = !DILocalVariable(name: "avail", scope: !1175, file: !3, line: 275, type: !142)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 272, column: 15)
!1176 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 272, column: 9)
!1177 = !DILocalVariable(name: "copy", scope: !1175, file: !3, line: 276, type: !142)
!1178 = !DILocalVariable(name: "size", scope: !1179, file: !3, line: 285, type: !142)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 282, column: 14)
!1180 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 282, column: 9)
!1181 = !DILocation(line: 261, column: 36, scope: !1165)
!1182 = !DILocation(line: 261, column: 51, scope: !1165)
!1183 = !DILocation(line: 261, column: 61, scope: !1165)
!1184 = !DILocation(line: 262, column: 12, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 262, column: 9)
!1186 = !DILocation(line: 262, column: 18, scope: !1185)
!1187 = !DILocation(line: 262, column: 9, scope: !1165)
!1188 = !DILocation(line: 264, column: 20, scope: !1165)
!1189 = !DILocation(line: 264, column: 15, scope: !1165)
!1190 = !DILocation(line: 265, column: 30, scope: !1165)
!1191 = !DILocation(line: 265, column: 34, scope: !1165)
!1192 = !{!1193, !381, i64 16}
!1193 = !{!"listNode", !381, i64 0, !381, i64 8, !381, i64 16}
!1194 = !DILocation(line: 265, column: 23, scope: !1165)
!1195 = !DILocation(line: 272, column: 9, scope: !1176)
!1196 = !DILocation(line: 272, column: 9, scope: !1165)
!1197 = !DILocation(line: 275, column: 30, scope: !1175)
!1198 = !DILocation(line: 275, column: 43, scope: !1175)
!1199 = !DILocation(line: 275, column: 35, scope: !1175)
!1200 = !DILocation(line: 275, column: 16, scope: !1175)
!1201 = !DILocation(line: 276, column: 29, scope: !1175)
!1202 = !DILocation(line: 276, column: 23, scope: !1175)
!1203 = !DILocation(line: 276, column: 16, scope: !1175)
!1204 = !DILocation(line: 277, column: 26, scope: !1175)
!1205 = !DILocation(line: 277, column: 9, scope: !1175)
!1206 = !DILocation(line: 278, column: 20, scope: !1175)
!1207 = !DILocation(line: 279, column: 11, scope: !1175)
!1208 = !DILocation(line: 280, column: 13, scope: !1175)
!1209 = !DILocation(line: 281, column: 5, scope: !1175)
!1210 = !DILocation(line: 0, scope: !1175)
!1211 = !DILocation(line: 282, column: 9, scope: !1180)
!1212 = !DILocation(line: 282, column: 9, scope: !1165)
!1213 = !DILocation(line: 285, column: 23, scope: !1179)
!1214 = !DILocation(line: 285, column: 16, scope: !1179)
!1215 = !DILocation(line: 286, column: 29, scope: !1179)
!1216 = !DILocation(line: 286, column: 16, scope: !1179)
!1217 = !DILocation(line: 288, column: 22, scope: !1179)
!1218 = !DILocation(line: 288, column: 43, scope: !1179)
!1219 = !DILocation(line: 288, column: 15, scope: !1179)
!1220 = !DILocation(line: 288, column: 20, scope: !1179)
!1221 = !DILocation(line: 289, column: 15, scope: !1179)
!1222 = !DILocation(line: 289, column: 20, scope: !1179)
!1223 = !DILocation(line: 290, column: 22, scope: !1179)
!1224 = !DILocation(line: 290, column: 9, scope: !1179)
!1225 = !DILocation(line: 291, column: 28, scope: !1179)
!1226 = !DILocation(line: 291, column: 9, scope: !1179)
!1227 = !DILocation(line: 292, column: 33, scope: !1179)
!1228 = !DILocation(line: 292, column: 12, scope: !1179)
!1229 = !DILocation(line: 292, column: 24, scope: !1179)
!1230 = !DILocation(line: 293, column: 5, scope: !1179)
!1231 = !DILocation(line: 294, column: 5, scope: !1165)
!1232 = !DILocation(line: 295, column: 1, scope: !1165)
!1233 = distinct !DISubprogram(name: "asyncCloseClientOnOutputBufferLimitReached", scope: !3, file: !3, line: 2128, type: !4, isLocal: false, isDefinition: true, scopeLine: 2128, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1234)
!1234 = !{!1235, !1236}
!1235 = !DILocalVariable(name: "c", arg: 1, scope: !1233, file: !3, line: 2128, type: !6)
!1236 = !DILocalVariable(name: "client", scope: !1237, file: !3, line: 2133, type: !137)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 2132, column: 43)
!1238 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 2132, column: 9)
!1239 = !DILocation(line: 2128, column: 57, scope: !1233)
!1240 = !DILocation(line: 2129, column: 12, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 2129, column: 9)
!1242 = !DILocation(line: 2129, column: 15, scope: !1241)
!1243 = !DILocation(line: 2129, column: 9, scope: !1233)
!1244 = !DILocation(line: 2130, column: 5, scope: !1233)
!1245 = !DILocation(line: 2131, column: 24, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 2131, column: 9)
!1247 = !DILocation(line: 2131, column: 29, scope: !1246)
!1248 = !DILocation(line: 2131, column: 35, scope: !1246)
!1249 = !DILocation(line: 2131, column: 41, scope: !1246)
!1250 = !DILocation(line: 2131, column: 9, scope: !1233)
!1251 = !DILocation(line: 2132, column: 9, scope: !1238)
!1252 = !DILocation(line: 2132, column: 9, scope: !1233)
!1253 = !DILocation(line: 2133, column: 42, scope: !1237)
!1254 = !DILocation(line: 2133, column: 22, scope: !1237)
!1255 = !DILocation(line: 2133, column: 13, scope: !1237)
!1256 = !DILocalVariable(name: "c", arg: 1, scope: !1257, file: !3, line: 957, type: !6)
!1257 = distinct !DISubprogram(name: "freeClientAsync", scope: !3, file: !3, line: 957, type: !4, isLocal: false, isDefinition: true, scopeLine: 957, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1258)
!1258 = !{!1256}
!1259 = !DILocation(line: 957, column: 30, scope: !1257, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 2135, column: 9, scope: !1237)
!1261 = !DILocation(line: 958, column: 12, scope: !1262, inlinedAt: !1260)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 958, column: 9)
!1263 = !DILocation(line: 958, column: 18, scope: !1262, inlinedAt: !1260)
!1264 = !DILocation(line: 958, column: 38, scope: !1262, inlinedAt: !1260)
!1265 = !DILocation(line: 958, column: 50, scope: !1262, inlinedAt: !1260)
!1266 = !DILocation(line: 958, column: 9, scope: !1257, inlinedAt: !1260)
!1267 = !DILocation(line: 959, column: 14, scope: !1257, inlinedAt: !1260)
!1268 = !DILocation(line: 960, column: 28, scope: !1257, inlinedAt: !1260)
!1269 = !{!442, !381, i64 520}
!1270 = !DILocation(line: 960, column: 45, scope: !1257, inlinedAt: !1260)
!1271 = !DILocation(line: 960, column: 5, scope: !1257, inlinedAt: !1260)
!1272 = !DILocation(line: 961, column: 1, scope: !1257, inlinedAt: !1260)
!1273 = !DILocation(line: 2136, column: 9, scope: !1237)
!1274 = !DILocation(line: 2137, column: 9, scope: !1237)
!1275 = !DILocation(line: 2138, column: 5, scope: !1237)
!1276 = !DILocation(line: 2139, column: 1, scope: !1233)
!1277 = distinct !DISubprogram(name: "addReply", scope: !3, file: !3, line: 303, type: !1278, isLocal: false, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1280)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !6, !126}
!1280 = !{!1281, !1282, !1283, !1290}
!1281 = !DILocalVariable(name: "c", arg: 1, scope: !1277, file: !3, line: 303, type: !6)
!1282 = !DILocalVariable(name: "obj", arg: 2, scope: !1277, file: !3, line: 303, type: !126)
!1283 = !DILocalVariable(name: "buf", scope: !1284, file: !3, line: 313, type: !1287)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 309, column: 51)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 309, column: 16)
!1286 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 306, column: 9)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 256, elements: !1288)
!1288 = !{!1289}
!1289 = !DISubrange(count: 32)
!1290 = !DILocalVariable(name: "len", scope: !1284, file: !3, line: 314, type: !142)
!1291 = !DILocation(line: 303, column: 23, scope: !1277)
!1292 = !DILocation(line: 303, column: 32, scope: !1277)
!1293 = !DILocation(line: 304, column: 9, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 304, column: 9)
!1295 = !DILocation(line: 304, column: 33, scope: !1294)
!1296 = !DILocation(line: 304, column: 9, scope: !1277)
!1297 = !DILocation(line: 306, column: 9, scope: !1286)
!1298 = !DILocation(line: 306, column: 9, scope: !1277)
!1299 = !DILocation(line: 307, column: 38, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 307, column: 13)
!1301 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 306, column: 32)
!1302 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !1303)
!1303 = distinct !DILocation(line: 307, column: 42, scope: !1300)
!1304 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !1303)
!1305 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !1303)
!1306 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !1303)
!1307 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !1303)
!1308 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !1303)
!1309 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !1303)
!1310 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !1303)
!1311 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !1303)
!1312 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !1303)
!1313 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !1303)
!1314 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !1303)
!1315 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !1303)
!1316 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !1303)
!1317 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !1303)
!1318 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !1303)
!1319 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !1303)
!1320 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !1303)
!1321 = !DILocation(line: 0, scope: !855, inlinedAt: !1303)
!1322 = !DILocation(line: 0, scope: !1300)
!1323 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !1303)
!1324 = !DILocation(line: 244, column: 31, scope: !1132, inlinedAt: !1325)
!1325 = distinct !DILocation(line: 307, column: 13, scope: !1300)
!1326 = !DILocation(line: 244, column: 46, scope: !1132, inlinedAt: !1325)
!1327 = !DILocation(line: 244, column: 56, scope: !1132, inlinedAt: !1325)
!1328 = !DILocation(line: 245, column: 42, scope: !1132, inlinedAt: !1325)
!1329 = !DILocation(line: 245, column: 39, scope: !1132, inlinedAt: !1325)
!1330 = !DILocation(line: 245, column: 38, scope: !1132, inlinedAt: !1325)
!1331 = !DILocation(line: 245, column: 12, scope: !1132, inlinedAt: !1325)
!1332 = !DILocation(line: 247, column: 12, scope: !1148, inlinedAt: !1325)
!1333 = !DILocation(line: 247, column: 18, scope: !1148, inlinedAt: !1325)
!1334 = !DILocation(line: 247, column: 9, scope: !1132, inlinedAt: !1325)
!1335 = !DILocation(line: 251, column: 9, scope: !1152, inlinedAt: !1325)
!1336 = !DILocation(line: 251, column: 30, scope: !1152, inlinedAt: !1325)
!1337 = !DILocation(line: 251, column: 9, scope: !1132, inlinedAt: !1325)
!1338 = !DILocation(line: 254, column: 13, scope: !1156, inlinedAt: !1325)
!1339 = !DILocation(line: 254, column: 9, scope: !1132, inlinedAt: !1325)
!1340 = !DILocation(line: 256, column: 18, scope: !1132, inlinedAt: !1325)
!1341 = !DILocation(line: 256, column: 5, scope: !1132, inlinedAt: !1325)
!1342 = !DILocation(line: 257, column: 14, scope: !1132, inlinedAt: !1325)
!1343 = !DILocation(line: 258, column: 5, scope: !1132, inlinedAt: !1325)
!1344 = !DILocation(line: 259, column: 1, scope: !1132, inlinedAt: !1325)
!1345 = !DILocation(line: 307, column: 13, scope: !1301)
!1346 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 308, column: 46, scope: !1300)
!1348 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !1347)
!1349 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !1347)
!1350 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !1347)
!1351 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !1347)
!1352 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !1347)
!1353 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !1347)
!1354 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !1347)
!1355 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !1347)
!1356 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !1347)
!1357 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !1347)
!1358 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !1347)
!1359 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !1347)
!1360 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !1347)
!1361 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !1347)
!1362 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !1347)
!1363 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !1347)
!1364 = !DILocation(line: 0, scope: !855, inlinedAt: !1347)
!1365 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !1347)
!1366 = !DILocation(line: 308, column: 13, scope: !1300)
!1367 = !DILocation(line: 309, column: 30, scope: !1285)
!1368 = !DILocation(line: 309, column: 16, scope: !1286)
!1369 = !DILocation(line: 313, column: 9, scope: !1284)
!1370 = !DILocation(line: 313, column: 14, scope: !1284)
!1371 = !DILocation(line: 314, column: 59, scope: !1284)
!1372 = !DILocation(line: 314, column: 22, scope: !1284)
!1373 = !DILocation(line: 314, column: 16, scope: !1284)
!1374 = !DILocation(line: 244, column: 31, scope: !1132, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 315, column: 13, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 315, column: 13)
!1377 = !DILocation(line: 244, column: 46, scope: !1132, inlinedAt: !1375)
!1378 = !DILocation(line: 244, column: 56, scope: !1132, inlinedAt: !1375)
!1379 = !DILocation(line: 245, column: 42, scope: !1132, inlinedAt: !1375)
!1380 = !DILocation(line: 245, column: 39, scope: !1132, inlinedAt: !1375)
!1381 = !DILocation(line: 245, column: 38, scope: !1132, inlinedAt: !1375)
!1382 = !DILocation(line: 245, column: 12, scope: !1132, inlinedAt: !1375)
!1383 = !DILocation(line: 247, column: 12, scope: !1148, inlinedAt: !1375)
!1384 = !DILocation(line: 247, column: 18, scope: !1148, inlinedAt: !1375)
!1385 = !DILocation(line: 247, column: 9, scope: !1132, inlinedAt: !1375)
!1386 = !DILocation(line: 251, column: 9, scope: !1152, inlinedAt: !1375)
!1387 = !DILocation(line: 251, column: 30, scope: !1152, inlinedAt: !1375)
!1388 = !DILocation(line: 251, column: 9, scope: !1132, inlinedAt: !1375)
!1389 = !DILocation(line: 254, column: 13, scope: !1156, inlinedAt: !1375)
!1390 = !DILocation(line: 254, column: 9, scope: !1132, inlinedAt: !1375)
!1391 = !DILocation(line: 256, column: 18, scope: !1132, inlinedAt: !1375)
!1392 = !DILocation(line: 256, column: 5, scope: !1132, inlinedAt: !1375)
!1393 = !DILocation(line: 257, column: 14, scope: !1132, inlinedAt: !1375)
!1394 = !DILocation(line: 258, column: 5, scope: !1132, inlinedAt: !1375)
!1395 = !DILocation(line: 0, scope: !1376)
!1396 = !DILocation(line: 259, column: 1, scope: !1132, inlinedAt: !1375)
!1397 = !DILocation(line: 315, column: 13, scope: !1284)
!1398 = !DILocation(line: 316, column: 13, scope: !1376)
!1399 = !DILocation(line: 317, column: 5, scope: !1285)
!1400 = !DILocation(line: 318, column: 9, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 317, column: 12)
!1402 = !DILocation(line: 320, column: 1, scope: !1277)
!1403 = distinct !DISubprogram(name: "addReplySds", scope: !3, file: !3, line: 324, type: !1404, isLocal: false, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1406)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{null, !6, !137}
!1406 = !{!1407, !1408}
!1407 = !DILocalVariable(name: "c", arg: 1, scope: !1403, file: !3, line: 324, type: !6)
!1408 = !DILocalVariable(name: "s", arg: 2, scope: !1403, file: !3, line: 324, type: !137)
!1409 = !DILocation(line: 324, column: 26, scope: !1403)
!1410 = !DILocation(line: 324, column: 33, scope: !1403)
!1411 = !DILocation(line: 325, column: 9, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 325, column: 9)
!1413 = !DILocation(line: 325, column: 33, scope: !1412)
!1414 = !DILocation(line: 325, column: 9, scope: !1403)
!1415 = !DILocation(line: 327, column: 9, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 325, column: 42)
!1417 = !DILocation(line: 328, column: 9, scope: !1416)
!1418 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 330, column: 31, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 330, column: 9)
!1421 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !1419)
!1422 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !1419)
!1423 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !1419)
!1424 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !1419)
!1425 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !1419)
!1426 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !1419)
!1427 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !1419)
!1428 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !1419)
!1429 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !1419)
!1430 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !1419)
!1431 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !1419)
!1432 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !1419)
!1433 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !1419)
!1434 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !1419)
!1435 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !1419)
!1436 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !1419)
!1437 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !1419)
!1438 = !DILocation(line: 0, scope: !855, inlinedAt: !1419)
!1439 = !DILocation(line: 0, scope: !1420)
!1440 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !1419)
!1441 = !DILocation(line: 244, column: 31, scope: !1132, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 330, column: 9, scope: !1420)
!1443 = !DILocation(line: 244, column: 46, scope: !1132, inlinedAt: !1442)
!1444 = !DILocation(line: 244, column: 56, scope: !1132, inlinedAt: !1442)
!1445 = !DILocation(line: 245, column: 42, scope: !1132, inlinedAt: !1442)
!1446 = !DILocation(line: 245, column: 39, scope: !1132, inlinedAt: !1442)
!1447 = !DILocation(line: 245, column: 38, scope: !1132, inlinedAt: !1442)
!1448 = !DILocation(line: 245, column: 12, scope: !1132, inlinedAt: !1442)
!1449 = !DILocation(line: 247, column: 12, scope: !1148, inlinedAt: !1442)
!1450 = !DILocation(line: 247, column: 18, scope: !1148, inlinedAt: !1442)
!1451 = !DILocation(line: 247, column: 9, scope: !1132, inlinedAt: !1442)
!1452 = !DILocation(line: 251, column: 9, scope: !1152, inlinedAt: !1442)
!1453 = !DILocation(line: 251, column: 30, scope: !1152, inlinedAt: !1442)
!1454 = !DILocation(line: 251, column: 9, scope: !1132, inlinedAt: !1442)
!1455 = !DILocation(line: 254, column: 13, scope: !1156, inlinedAt: !1442)
!1456 = !DILocation(line: 254, column: 9, scope: !1132, inlinedAt: !1442)
!1457 = !DILocation(line: 256, column: 18, scope: !1132, inlinedAt: !1442)
!1458 = !DILocation(line: 256, column: 5, scope: !1132, inlinedAt: !1442)
!1459 = !DILocation(line: 257, column: 14, scope: !1132, inlinedAt: !1442)
!1460 = !DILocation(line: 258, column: 5, scope: !1132, inlinedAt: !1442)
!1461 = !DILocation(line: 259, column: 1, scope: !1132, inlinedAt: !1442)
!1462 = !DILocation(line: 330, column: 9, scope: !1403)
!1463 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 331, column: 35, scope: !1420)
!1465 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !1464)
!1466 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !1464)
!1467 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !1464)
!1468 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !1464)
!1469 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !1464)
!1470 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !1464)
!1471 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !1464)
!1472 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !1464)
!1473 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !1464)
!1474 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !1464)
!1475 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !1464)
!1476 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !1464)
!1477 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !1464)
!1478 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !1464)
!1479 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !1464)
!1480 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !1464)
!1481 = !DILocation(line: 0, scope: !855, inlinedAt: !1464)
!1482 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !1464)
!1483 = !DILocation(line: 331, column: 9, scope: !1420)
!1484 = !DILocation(line: 332, column: 5, scope: !1403)
!1485 = !DILocation(line: 333, column: 1, scope: !1403)
!1486 = !DILocation(line: 0, scope: !1416)
!1487 = distinct !DISubprogram(name: "addReplyString", scope: !3, file: !3, line: 343, type: !1166, isLocal: false, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1488)
!1488 = !{!1489, !1490, !1491}
!1489 = !DILocalVariable(name: "c", arg: 1, scope: !1487, file: !3, line: 343, type: !6)
!1490 = !DILocalVariable(name: "s", arg: 2, scope: !1487, file: !3, line: 343, type: !317)
!1491 = !DILocalVariable(name: "len", arg: 3, scope: !1487, file: !3, line: 343, type: !142)
!1492 = !DILocation(line: 343, column: 29, scope: !1487)
!1493 = !DILocation(line: 343, column: 44, scope: !1487)
!1494 = !DILocation(line: 343, column: 54, scope: !1487)
!1495 = !DILocation(line: 344, column: 9, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 344, column: 9)
!1497 = !DILocation(line: 344, column: 33, scope: !1496)
!1498 = !DILocation(line: 344, column: 9, scope: !1487)
!1499 = !DILocation(line: 244, column: 31, scope: !1132, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 345, column: 9, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 345, column: 9)
!1502 = !DILocation(line: 244, column: 46, scope: !1132, inlinedAt: !1500)
!1503 = !DILocation(line: 244, column: 56, scope: !1132, inlinedAt: !1500)
!1504 = !DILocation(line: 245, column: 42, scope: !1132, inlinedAt: !1500)
!1505 = !DILocation(line: 245, column: 39, scope: !1132, inlinedAt: !1500)
!1506 = !DILocation(line: 245, column: 38, scope: !1132, inlinedAt: !1500)
!1507 = !DILocation(line: 245, column: 12, scope: !1132, inlinedAt: !1500)
!1508 = !DILocation(line: 247, column: 12, scope: !1148, inlinedAt: !1500)
!1509 = !DILocation(line: 247, column: 18, scope: !1148, inlinedAt: !1500)
!1510 = !DILocation(line: 247, column: 9, scope: !1132, inlinedAt: !1500)
!1511 = !DILocation(line: 251, column: 9, scope: !1152, inlinedAt: !1500)
!1512 = !DILocation(line: 251, column: 30, scope: !1152, inlinedAt: !1500)
!1513 = !DILocation(line: 251, column: 9, scope: !1132, inlinedAt: !1500)
!1514 = !DILocation(line: 254, column: 13, scope: !1156, inlinedAt: !1500)
!1515 = !DILocation(line: 254, column: 9, scope: !1132, inlinedAt: !1500)
!1516 = !DILocation(line: 256, column: 18, scope: !1132, inlinedAt: !1500)
!1517 = !DILocation(line: 256, column: 5, scope: !1132, inlinedAt: !1500)
!1518 = !DILocation(line: 257, column: 14, scope: !1132, inlinedAt: !1500)
!1519 = !DILocation(line: 258, column: 5, scope: !1132, inlinedAt: !1500)
!1520 = !DILocation(line: 0, scope: !1501)
!1521 = !DILocation(line: 259, column: 1, scope: !1132, inlinedAt: !1500)
!1522 = !DILocation(line: 345, column: 9, scope: !1487)
!1523 = !DILocation(line: 346, column: 9, scope: !1501)
!1524 = !DILocation(line: 347, column: 1, scope: !1487)
!1525 = distinct !DISubprogram(name: "addReplyErrorLength", scope: !3, file: !3, line: 357, type: !1166, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1526)
!1526 = !{!1527, !1528, !1529, !1530, !1533, !1534}
!1527 = !DILocalVariable(name: "c", arg: 1, scope: !1525, file: !3, line: 357, type: !6)
!1528 = !DILocalVariable(name: "s", arg: 2, scope: !1525, file: !3, line: 357, type: !317)
!1529 = !DILocalVariable(name: "len", arg: 3, scope: !1525, file: !3, line: 357, type: !142)
!1530 = !DILocalVariable(name: "to", scope: !1531, file: !3, line: 375, type: !139)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 374, column: 82)
!1532 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 374, column: 9)
!1533 = !DILocalVariable(name: "from", scope: !1531, file: !3, line: 376, type: !139)
!1534 = !DILocalVariable(name: "cmdname", scope: !1531, file: !3, line: 377, type: !139)
!1535 = !DILocation(line: 357, column: 34, scope: !1525)
!1536 = !DILocation(line: 357, column: 49, scope: !1525)
!1537 = !DILocation(line: 357, column: 59, scope: !1525)
!1538 = !DILocation(line: 360, column: 10, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 360, column: 9)
!1540 = !DILocation(line: 360, column: 14, scope: !1539)
!1541 = !DILocation(line: 360, column: 17, scope: !1539)
!1542 = !DILocation(line: 360, column: 22, scope: !1539)
!1543 = !DILocation(line: 360, column: 9, scope: !1525)
!1544 = !DILocation(line: 360, column: 30, scope: !1539)
!1545 = !DILocation(line: 361, column: 5, scope: !1525)
!1546 = !DILocation(line: 362, column: 5, scope: !1525)
!1547 = !DILocation(line: 374, column: 12, scope: !1532)
!1548 = !DILocation(line: 374, column: 18, scope: !1532)
!1549 = !DILocation(line: 374, column: 49, scope: !1532)
!1550 = !DILocation(line: 374, column: 63, scope: !1532)
!1551 = !DILocation(line: 374, column: 9, scope: !1525)
!1552 = !DILocation(line: 375, column: 29, scope: !1531)
!1553 = !DILocation(line: 375, column: 20, scope: !1531)
!1554 = !DILocation(line: 375, column: 15, scope: !1531)
!1555 = !DILocation(line: 376, column: 22, scope: !1531)
!1556 = !DILocation(line: 376, column: 15, scope: !1531)
!1557 = !DILocation(line: 377, column: 28, scope: !1531)
!1558 = !{!456, !381, i64 88}
!1559 = !DILocation(line: 377, column: 25, scope: !1531)
!1560 = !DILocation(line: 377, column: 50, scope: !1531)
!1561 = !{!1562, !381, i64 0}
!1562 = !{!"redisCommand", !381, i64 0, !381, i64 8, !378, i64 16, !381, i64 24, !378, i64 32, !381, i64 40, !378, i64 48, !378, i64 52, !378, i64 56, !443, i64 64, !443, i64 72}
!1563 = !DILocation(line: 377, column: 15, scope: !1531)
!1564 = !DILocation(line: 378, column: 9, scope: !1531)
!1565 = !DILocation(line: 381, column: 5, scope: !1531)
!1566 = !DILocation(line: 382, column: 1, scope: !1525)
!1567 = distinct !DISubprogram(name: "addReplyError", scope: !3, file: !3, line: 384, type: !1568, isLocal: false, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1570)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !6, !317}
!1570 = !{!1571, !1572}
!1571 = !DILocalVariable(name: "c", arg: 1, scope: !1567, file: !3, line: 384, type: !6)
!1572 = !DILocalVariable(name: "err", arg: 2, scope: !1567, file: !3, line: 384, type: !317)
!1573 = !DILocation(line: 384, column: 28, scope: !1567)
!1574 = !DILocation(line: 384, column: 43, scope: !1567)
!1575 = !DILocation(line: 385, column: 31, scope: !1567)
!1576 = !DILocation(line: 385, column: 5, scope: !1567)
!1577 = !DILocation(line: 386, column: 1, scope: !1567)
!1578 = distinct !DISubprogram(name: "addReplyErrorFormat", scope: !3, file: !3, line: 388, type: !1579, isLocal: false, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1581)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !6, !317, null}
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1590}
!1582 = !DILocalVariable(name: "c", arg: 1, scope: !1578, file: !3, line: 388, type: !6)
!1583 = !DILocalVariable(name: "fmt", arg: 2, scope: !1578, file: !3, line: 388, type: !317)
!1584 = !DILocalVariable(name: "l", scope: !1578, file: !3, line: 389, type: !142)
!1585 = !DILocalVariable(name: "j", scope: !1578, file: !3, line: 389, type: !142)
!1586 = !DILocalVariable(name: "ap", scope: !1578, file: !3, line: 390, type: !1587)
!1587 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1588, line: 46, baseType: !1589)
!1588 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !323, line: 51, baseType: !324)
!1590 = !DILocalVariable(name: "s", scope: !1578, file: !3, line: 392, type: !137)
!1591 = !DILocation(line: 388, column: 34, scope: !1578)
!1592 = !DILocation(line: 388, column: 49, scope: !1578)
!1593 = !DILocation(line: 390, column: 5, scope: !1578)
!1594 = !DILocation(line: 390, column: 13, scope: !1578)
!1595 = !DILocation(line: 391, column: 5, scope: !1578)
!1596 = !DILocation(line: 392, column: 27, scope: !1578)
!1597 = !DILocation(line: 392, column: 13, scope: !1578)
!1598 = !DILocation(line: 392, column: 9, scope: !1578)
!1599 = !DILocation(line: 393, column: 5, scope: !1578)
!1600 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 396, column: 9, scope: !1578)
!1602 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !1601)
!1603 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !1601)
!1604 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !1601)
!1605 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !1601)
!1606 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !1601)
!1607 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !1601)
!1608 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !1601)
!1609 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !1601)
!1610 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !1601)
!1611 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !1601)
!1612 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !1601)
!1613 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !1601)
!1614 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !1601)
!1615 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !1601)
!1616 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !1601)
!1617 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !1601)
!1618 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !1601)
!1619 = !DILocation(line: 101, column: 5, scope: !843, inlinedAt: !1601)
!1620 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !1601)
!1621 = !DILocation(line: 389, column: 12, scope: !1578)
!1622 = !DILocation(line: 389, column: 15, scope: !1578)
!1623 = !DILocation(line: 397, column: 10, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1578, file: !3, line: 397, column: 5)
!1625 = !DILocation(line: 397, column: 5, scope: !1624)
!1626 = !DILocation(line: 0, scope: !855, inlinedAt: !1601)
!1627 = !DILocation(line: 0, scope: !1578)
!1628 = !DILocation(line: 397, column: 19, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 397, column: 5)
!1630 = !DILocation(line: 398, column: 13, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 398, column: 13)
!1632 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 397, column: 29)
!1633 = !DILocation(line: 398, column: 18, scope: !1631)
!1634 = !DILocation(line: 398, column: 26, scope: !1631)
!1635 = !DILocation(line: 398, column: 34, scope: !1631)
!1636 = !DILocation(line: 398, column: 13, scope: !1632)
!1637 = !DILocation(line: 398, column: 48, scope: !1631)
!1638 = !DILocation(line: 398, column: 43, scope: !1631)
!1639 = !DILocation(line: 397, column: 25, scope: !1629)
!1640 = !DILocation(line: 397, column: 5, scope: !1629)
!1641 = distinct !{!1641, !1625, !1642}
!1642 = !DILocation(line: 399, column: 5, scope: !1624)
!1643 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !1644)
!1644 = distinct !DILocation(line: 400, column: 29, scope: !1578)
!1645 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !1644)
!1646 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !1644)
!1647 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !1644)
!1648 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !1644)
!1649 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !1644)
!1650 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !1644)
!1651 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !1644)
!1652 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !1644)
!1653 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !1644)
!1654 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !1644)
!1655 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !1644)
!1656 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !1644)
!1657 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !1644)
!1658 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !1644)
!1659 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !1644)
!1660 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !1644)
!1661 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !1644)
!1662 = !DILocation(line: 0, scope: !855, inlinedAt: !1644)
!1663 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !1644)
!1664 = !DILocation(line: 400, column: 5, scope: !1578)
!1665 = !DILocation(line: 401, column: 5, scope: !1578)
!1666 = !DILocation(line: 402, column: 1, scope: !1578)
!1667 = distinct !DISubprogram(name: "addReplyStatusLength", scope: !3, file: !3, line: 404, type: !1166, isLocal: false, isDefinition: true, scopeLine: 404, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1668)
!1668 = !{!1669, !1670, !1671}
!1669 = !DILocalVariable(name: "c", arg: 1, scope: !1667, file: !3, line: 404, type: !6)
!1670 = !DILocalVariable(name: "s", arg: 2, scope: !1667, file: !3, line: 404, type: !317)
!1671 = !DILocalVariable(name: "len", arg: 3, scope: !1667, file: !3, line: 404, type: !142)
!1672 = !DILocation(line: 404, column: 35, scope: !1667)
!1673 = !DILocation(line: 404, column: 50, scope: !1667)
!1674 = !DILocation(line: 404, column: 60, scope: !1667)
!1675 = !DILocation(line: 405, column: 5, scope: !1667)
!1676 = !DILocation(line: 406, column: 5, scope: !1667)
!1677 = !DILocation(line: 407, column: 5, scope: !1667)
!1678 = !DILocation(line: 408, column: 1, scope: !1667)
!1679 = distinct !DISubprogram(name: "addReplyStatus", scope: !3, file: !3, line: 410, type: !1568, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1680)
!1680 = !{!1681, !1682}
!1681 = !DILocalVariable(name: "c", arg: 1, scope: !1679, file: !3, line: 410, type: !6)
!1682 = !DILocalVariable(name: "status", arg: 2, scope: !1679, file: !3, line: 410, type: !317)
!1683 = !DILocation(line: 410, column: 29, scope: !1679)
!1684 = !DILocation(line: 410, column: 44, scope: !1679)
!1685 = !DILocation(line: 411, column: 35, scope: !1679)
!1686 = !DILocation(line: 404, column: 35, scope: !1667, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 411, column: 5, scope: !1679)
!1688 = !DILocation(line: 404, column: 50, scope: !1667, inlinedAt: !1687)
!1689 = !DILocation(line: 404, column: 60, scope: !1667, inlinedAt: !1687)
!1690 = !DILocation(line: 405, column: 5, scope: !1667, inlinedAt: !1687)
!1691 = !DILocation(line: 406, column: 5, scope: !1667, inlinedAt: !1687)
!1692 = !DILocation(line: 407, column: 5, scope: !1667, inlinedAt: !1687)
!1693 = !DILocation(line: 408, column: 1, scope: !1667, inlinedAt: !1687)
!1694 = !DILocation(line: 412, column: 1, scope: !1679)
!1695 = distinct !DISubprogram(name: "addReplyStatusFormat", scope: !3, file: !3, line: 414, type: !1579, isLocal: false, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1696)
!1696 = !{!1697, !1698, !1699, !1700}
!1697 = !DILocalVariable(name: "c", arg: 1, scope: !1695, file: !3, line: 414, type: !6)
!1698 = !DILocalVariable(name: "fmt", arg: 2, scope: !1695, file: !3, line: 414, type: !317)
!1699 = !DILocalVariable(name: "ap", scope: !1695, file: !3, line: 415, type: !1587)
!1700 = !DILocalVariable(name: "s", scope: !1695, file: !3, line: 417, type: !137)
!1701 = !DILocation(line: 414, column: 35, scope: !1695)
!1702 = !DILocation(line: 414, column: 50, scope: !1695)
!1703 = !DILocation(line: 415, column: 5, scope: !1695)
!1704 = !DILocation(line: 415, column: 13, scope: !1695)
!1705 = !DILocation(line: 416, column: 5, scope: !1695)
!1706 = !DILocation(line: 417, column: 27, scope: !1695)
!1707 = !DILocation(line: 417, column: 13, scope: !1695)
!1708 = !DILocation(line: 417, column: 9, scope: !1695)
!1709 = !DILocation(line: 418, column: 5, scope: !1695)
!1710 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 419, column: 30, scope: !1695)
!1712 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !1711)
!1713 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !1711)
!1714 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !1711)
!1715 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !1711)
!1716 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !1711)
!1717 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !1711)
!1718 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !1711)
!1719 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !1711)
!1720 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !1711)
!1721 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !1711)
!1722 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !1711)
!1723 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !1711)
!1724 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !1711)
!1725 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !1711)
!1726 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !1711)
!1727 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !1711)
!1728 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !1711)
!1729 = !DILocation(line: 0, scope: !855, inlinedAt: !1711)
!1730 = !DILocation(line: 0, scope: !1695)
!1731 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !1711)
!1732 = !DILocation(line: 404, column: 35, scope: !1667, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 419, column: 5, scope: !1695)
!1734 = !DILocation(line: 404, column: 50, scope: !1667, inlinedAt: !1733)
!1735 = !DILocation(line: 404, column: 60, scope: !1667, inlinedAt: !1733)
!1736 = !DILocation(line: 405, column: 5, scope: !1667, inlinedAt: !1733)
!1737 = !DILocation(line: 406, column: 5, scope: !1667, inlinedAt: !1733)
!1738 = !DILocation(line: 407, column: 5, scope: !1667, inlinedAt: !1733)
!1739 = !DILocation(line: 408, column: 1, scope: !1667, inlinedAt: !1733)
!1740 = !DILocation(line: 420, column: 5, scope: !1695)
!1741 = !DILocation(line: 421, column: 1, scope: !1695)
!1742 = distinct !DISubprogram(name: "addDeferredMultiBulkLength", scope: !3, file: !3, line: 425, type: !1743, isLocal: false, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1745)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!45, !6}
!1745 = !{!1746}
!1746 = !DILocalVariable(name: "c", arg: 1, scope: !1742, file: !3, line: 425, type: !6)
!1747 = !DILocation(line: 425, column: 42, scope: !1742)
!1748 = !DILocation(line: 429, column: 9, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 429, column: 9)
!1750 = !DILocation(line: 429, column: 33, scope: !1749)
!1751 = !DILocation(line: 429, column: 9, scope: !1742)
!1752 = !DILocation(line: 430, column: 24, scope: !1742)
!1753 = !DILocation(line: 430, column: 5, scope: !1742)
!1754 = !DILocation(line: 431, column: 12, scope: !1742)
!1755 = !DILocation(line: 431, column: 5, scope: !1742)
!1756 = !DILocation(line: 0, scope: !1742)
!1757 = !DILocation(line: 0, scope: !1749)
!1758 = !DILocation(line: 432, column: 1, scope: !1742)
!1759 = distinct !DISubprogram(name: "setDeferredMultiBulkLength", scope: !3, file: !3, line: 435, type: !1760, isLocal: false, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1762)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{null, !6, !45, !77}
!1762 = !{!1763, !1764, !1765, !1766, !1767, !1768, !1772, !1773}
!1763 = !DILocalVariable(name: "c", arg: 1, scope: !1759, file: !3, line: 435, type: !6)
!1764 = !DILocalVariable(name: "node", arg: 2, scope: !1759, file: !3, line: 435, type: !45)
!1765 = !DILocalVariable(name: "length", arg: 3, scope: !1759, file: !3, line: 435, type: !77)
!1766 = !DILocalVariable(name: "ln", scope: !1759, file: !3, line: 436, type: !103)
!1767 = !DILocalVariable(name: "next", scope: !1759, file: !3, line: 437, type: !399)
!1768 = !DILocalVariable(name: "lenstr", scope: !1759, file: !3, line: 438, type: !1769)
!1769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 1024, elements: !1770)
!1770 = !{!1771}
!1771 = !DISubrange(count: 128)
!1772 = !DILocalVariable(name: "lenstr_len", scope: !1759, file: !3, line: 439, type: !142)
!1773 = !DILocalVariable(name: "buf", scope: !1774, file: !3, line: 465, type: !399)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 463, column: 12)
!1775 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 456, column: 9)
!1776 = !DILocation(line: 435, column: 41, scope: !1759)
!1777 = !DILocation(line: 435, column: 50, scope: !1759)
!1778 = !DILocation(line: 435, column: 61, scope: !1759)
!1779 = !DILocation(line: 436, column: 20, scope: !1759)
!1780 = !DILocation(line: 436, column: 15, scope: !1759)
!1781 = !DILocation(line: 438, column: 5, scope: !1759)
!1782 = !DILocation(line: 438, column: 10, scope: !1759)
!1783 = !DILocation(line: 439, column: 25, scope: !1759)
!1784 = !DILocation(line: 439, column: 12, scope: !1759)
!1785 = !DILocation(line: 443, column: 14, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1759, file: !3, line: 443, column: 9)
!1787 = !DILocation(line: 443, column: 9, scope: !1759)
!1788 = !DILocation(line: 444, column: 5, scope: !1759)
!1789 = !DILocation(line: 456, column: 13, scope: !1775)
!1790 = !{!1193, !381, i64 8}
!1791 = !DILocation(line: 456, column: 18, scope: !1775)
!1792 = !DILocation(line: 456, column: 26, scope: !1775)
!1793 = !DILocation(line: 456, column: 37, scope: !1775)
!1794 = !DILocation(line: 437, column: 23, scope: !1759)
!1795 = !DILocation(line: 456, column: 35, scope: !1775)
!1796 = !DILocation(line: 456, column: 62, scope: !1775)
!1797 = !DILocation(line: 457, column: 15, scope: !1775)
!1798 = !DILocation(line: 457, column: 28, scope: !1775)
!1799 = !DILocation(line: 457, column: 20, scope: !1775)
!1800 = !DILocation(line: 457, column: 33, scope: !1775)
!1801 = !DILocation(line: 457, column: 47, scope: !1775)
!1802 = !DILocation(line: 458, column: 20, scope: !1775)
!1803 = !DILocation(line: 456, column: 9, scope: !1759)
!1804 = !DILocation(line: 459, column: 17, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1775, file: !3, line: 458, column: 51)
!1806 = !DILocation(line: 459, column: 27, scope: !1805)
!1807 = !DILocation(line: 459, column: 9, scope: !1805)
!1808 = !DILocation(line: 460, column: 9, scope: !1805)
!1809 = !DILocation(line: 461, column: 20, scope: !1805)
!1810 = !DILocation(line: 462, column: 24, scope: !1805)
!1811 = !DILocation(line: 462, column: 9, scope: !1805)
!1812 = !DILocation(line: 463, column: 5, scope: !1805)
!1813 = !DILocation(line: 465, column: 52, scope: !1774)
!1814 = !DILocation(line: 465, column: 33, scope: !1774)
!1815 = !DILocation(line: 465, column: 27, scope: !1774)
!1816 = !DILocation(line: 467, column: 21, scope: !1774)
!1817 = !DILocation(line: 467, column: 41, scope: !1774)
!1818 = !DILocation(line: 467, column: 14, scope: !1774)
!1819 = !DILocation(line: 467, column: 19, scope: !1774)
!1820 = !DILocation(line: 468, column: 14, scope: !1774)
!1821 = !DILocation(line: 468, column: 19, scope: !1774)
!1822 = !DILocation(line: 469, column: 21, scope: !1774)
!1823 = !DILocation(line: 469, column: 9, scope: !1774)
!1824 = !DILocation(line: 470, column: 27, scope: !1774)
!1825 = !DILocation(line: 471, column: 32, scope: !1774)
!1826 = !DILocation(line: 471, column: 12, scope: !1774)
!1827 = !DILocation(line: 471, column: 24, scope: !1774)
!1828 = !DILocation(line: 473, column: 5, scope: !1759)
!1829 = !DILocation(line: 474, column: 1, scope: !1759)
!1830 = !DILocation(line: 0, scope: !1786)
!1831 = distinct !DISubprogram(name: "addReplyDouble", scope: !3, file: !3, line: 477, type: !1832, isLocal: false, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1834)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !6, !79}
!1834 = !{!1835, !1836, !1837, !1838, !1839, !1840}
!1835 = !DILocalVariable(name: "c", arg: 1, scope: !1831, file: !3, line: 477, type: !6)
!1836 = !DILocalVariable(name: "d", arg: 2, scope: !1831, file: !3, line: 477, type: !79)
!1837 = !DILocalVariable(name: "dbuf", scope: !1831, file: !3, line: 478, type: !1769)
!1838 = !DILocalVariable(name: "sbuf", scope: !1831, file: !3, line: 478, type: !1769)
!1839 = !DILocalVariable(name: "dlen", scope: !1831, file: !3, line: 479, type: !18)
!1840 = !DILocalVariable(name: "slen", scope: !1831, file: !3, line: 479, type: !18)
!1841 = !DILocation(line: 477, column: 29, scope: !1831)
!1842 = !DILocation(line: 477, column: 39, scope: !1831)
!1843 = !DILocation(line: 478, column: 5, scope: !1831)
!1844 = !DILocation(line: 478, column: 10, scope: !1831)
!1845 = !DILocation(line: 478, column: 21, scope: !1831)
!1846 = !DILocation(line: 480, column: 9, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 480, column: 9)
!1848 = !DILocation(line: 480, column: 9, scope: !1831)
!1849 = !DILocation(line: 483, column: 34, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 480, column: 19)
!1851 = !DILocation(line: 483, column: 32, scope: !1850)
!1852 = !DILocalVariable(name: "c", arg: 1, scope: !1853, file: !3, line: 588, type: !6)
!1853 = distinct !DISubprogram(name: "addReplyBulkCString", scope: !3, file: !3, line: 588, type: !1568, isLocal: false, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1854)
!1854 = !{!1852, !1855}
!1855 = !DILocalVariable(name: "s", arg: 2, scope: !1853, file: !3, line: 588, type: !317)
!1856 = !DILocation(line: 588, column: 34, scope: !1853, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 483, column: 9, scope: !1850)
!1858 = !DILocation(line: 588, column: 49, scope: !1853, inlinedAt: !1857)
!1859 = !DILocation(line: 589, column: 9, scope: !1853, inlinedAt: !1857)
!1860 = !DILocation(line: 592, column: 33, scope: !1861, inlinedAt: !1857)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 591, column: 12)
!1862 = distinct !DILexicalBlock(scope: !1853, file: !3, line: 589, column: 9)
!1863 = !DILocation(line: 592, column: 9, scope: !1861, inlinedAt: !1857)
!1864 = !DILocation(line: 594, column: 1, scope: !1853, inlinedAt: !1857)
!1865 = !DILocation(line: 484, column: 5, scope: !1850)
!1866 = !DILocation(line: 485, column: 16, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 484, column: 12)
!1868 = !DILocation(line: 479, column: 9, scope: !1831)
!1869 = !DILocation(line: 486, column: 16, scope: !1867)
!1870 = !DILocation(line: 479, column: 15, scope: !1831)
!1871 = !DILocation(line: 487, column: 31, scope: !1867)
!1872 = !DILocation(line: 487, column: 9, scope: !1867)
!1873 = !DILocation(line: 489, column: 1, scope: !1831)
!1874 = !DILocation(line: 588, column: 34, scope: !1853)
!1875 = !DILocation(line: 588, column: 49, scope: !1853)
!1876 = !DILocation(line: 589, column: 11, scope: !1862)
!1877 = !DILocation(line: 589, column: 9, scope: !1853)
!1878 = !DILocation(line: 590, column: 27, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1862, file: !3, line: 589, column: 20)
!1880 = !{!1881, !381, i64 80}
!1881 = !{!"sharedObjectsStruct", !381, i64 0, !381, i64 8, !381, i64 16, !381, i64 24, !381, i64 32, !381, i64 40, !381, i64 48, !381, i64 56, !381, i64 64, !381, i64 72, !381, i64 80, !381, i64 88, !381, i64 96, !381, i64 104, !381, i64 112, !381, i64 120, !381, i64 128, !381, i64 136, !381, i64 144, !381, i64 152, !381, i64 160, !381, i64 168, !381, i64 176, !381, i64 184, !381, i64 192, !381, i64 200, !381, i64 208, !381, i64 216, !381, i64 224, !381, i64 232, !381, i64 240, !381, i64 248, !381, i64 256, !381, i64 264, !381, i64 272, !381, i64 280, !381, i64 288, !381, i64 296, !381, i64 304, !381, i64 312, !381, i64 320, !381, i64 328, !381, i64 336, !381, i64 344, !381, i64 352, !381, i64 360, !379, i64 368, !379, i64 448, !379, i64 80448, !379, i64 80704, !381, i64 80960, !381, i64 80968}
!1882 = !DILocation(line: 590, column: 9, scope: !1879)
!1883 = !DILocation(line: 591, column: 5, scope: !1879)
!1884 = !DILocation(line: 592, column: 33, scope: !1861)
!1885 = !DILocation(line: 592, column: 9, scope: !1861)
!1886 = !DILocation(line: 594, column: 1, scope: !1853)
!1887 = distinct !DISubprogram(name: "addReplyHumanLongDouble", scope: !3, file: !3, line: 494, type: !1888, isLocal: false, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1891)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{null, !6, !1890}
!1890 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1891 = !{!1892, !1893, !1894}
!1892 = !DILocalVariable(name: "c", arg: 1, scope: !1887, file: !3, line: 494, type: !6)
!1893 = !DILocalVariable(name: "d", arg: 2, scope: !1887, file: !3, line: 494, type: !1890)
!1894 = !DILocalVariable(name: "o", scope: !1887, file: !3, line: 495, type: !126)
!1895 = !DILocation(line: 494, column: 38, scope: !1887)
!1896 = !DILocation(line: 494, column: 53, scope: !1887)
!1897 = !DILocation(line: 495, column: 15, scope: !1887)
!1898 = !DILocation(line: 495, column: 11, scope: !1887)
!1899 = !DILocalVariable(name: "c", arg: 1, scope: !1900, file: !3, line: 567, type: !6)
!1900 = distinct !DISubprogram(name: "addReplyBulk", scope: !3, file: !3, line: 567, type: !1278, isLocal: false, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1901)
!1901 = !{!1899, !1902}
!1902 = !DILocalVariable(name: "obj", arg: 2, scope: !1900, file: !3, line: 567, type: !126)
!1903 = !DILocation(line: 567, column: 27, scope: !1900, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 496, column: 5, scope: !1887)
!1905 = !DILocation(line: 567, column: 36, scope: !1900, inlinedAt: !1904)
!1906 = !DILocation(line: 568, column: 5, scope: !1900, inlinedAt: !1904)
!1907 = !DILocation(line: 569, column: 5, scope: !1900, inlinedAt: !1904)
!1908 = !DILocation(line: 570, column: 23, scope: !1900, inlinedAt: !1904)
!1909 = !{!1881, !381, i64 0}
!1910 = !DILocation(line: 570, column: 5, scope: !1900, inlinedAt: !1904)
!1911 = !DILocation(line: 571, column: 1, scope: !1900, inlinedAt: !1904)
!1912 = !DILocation(line: 497, column: 5, scope: !1887)
!1913 = !DILocation(line: 498, column: 1, scope: !1887)
!1914 = !DILocation(line: 567, column: 27, scope: !1900)
!1915 = !DILocation(line: 567, column: 36, scope: !1900)
!1916 = !DILocation(line: 568, column: 5, scope: !1900)
!1917 = !DILocation(line: 569, column: 5, scope: !1900)
!1918 = !DILocation(line: 570, column: 23, scope: !1900)
!1919 = !DILocation(line: 570, column: 5, scope: !1900)
!1920 = !DILocation(line: 571, column: 1, scope: !1900)
!1921 = distinct !DISubprogram(name: "addReplyLongLongWithPrefix", scope: !3, file: !3, line: 502, type: !1922, isLocal: false, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1924)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !6, !95, !140}
!1924 = !{!1925, !1926, !1927, !1928, !1929}
!1925 = !DILocalVariable(name: "c", arg: 1, scope: !1921, file: !3, line: 502, type: !6)
!1926 = !DILocalVariable(name: "ll", arg: 2, scope: !1921, file: !3, line: 502, type: !95)
!1927 = !DILocalVariable(name: "prefix", arg: 3, scope: !1921, file: !3, line: 502, type: !140)
!1928 = !DILocalVariable(name: "buf", scope: !1921, file: !3, line: 503, type: !1769)
!1929 = !DILocalVariable(name: "len", scope: !1921, file: !3, line: 504, type: !18)
!1930 = !DILocation(line: 502, column: 41, scope: !1921)
!1931 = !DILocation(line: 502, column: 54, scope: !1921)
!1932 = !DILocation(line: 502, column: 63, scope: !1921)
!1933 = !DILocation(line: 503, column: 5, scope: !1921)
!1934 = !DILocation(line: 503, column: 10, scope: !1921)
!1935 = !DILocation(line: 509, column: 16, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 509, column: 9)
!1937 = !DILocation(line: 509, column: 23, scope: !1936)
!1938 = !DILocation(line: 510, column: 20, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 509, column: 66)
!1940 = !DILocation(line: 510, column: 9, scope: !1939)
!1941 = !DILocation(line: 511, column: 9, scope: !1939)
!1942 = !DILocation(line: 512, column: 23, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 512, column: 16)
!1944 = !DILocation(line: 512, column: 30, scope: !1943)
!1945 = !DILocation(line: 513, column: 20, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 512, column: 73)
!1947 = !DILocation(line: 513, column: 9, scope: !1946)
!1948 = !DILocation(line: 514, column: 9, scope: !1946)
!1949 = !DILocation(line: 517, column: 12, scope: !1921)
!1950 = !DILocation(line: 518, column: 24, scope: !1921)
!1951 = !DILocation(line: 518, column: 11, scope: !1921)
!1952 = !DILocation(line: 504, column: 9, scope: !1921)
!1953 = !DILocation(line: 519, column: 12, scope: !1921)
!1954 = !DILocation(line: 519, column: 5, scope: !1921)
!1955 = !DILocation(line: 519, column: 16, scope: !1921)
!1956 = !DILocation(line: 520, column: 12, scope: !1921)
!1957 = !DILocation(line: 520, column: 5, scope: !1921)
!1958 = !DILocation(line: 520, column: 16, scope: !1921)
!1959 = !DILocation(line: 521, column: 29, scope: !1921)
!1960 = !DILocation(line: 521, column: 26, scope: !1921)
!1961 = !DILocation(line: 521, column: 5, scope: !1921)
!1962 = !DILocation(line: 522, column: 1, scope: !1921)
!1963 = !DILocation(line: 0, scope: !1939)
!1964 = distinct !DISubprogram(name: "addReplyLongLong", scope: !3, file: !3, line: 524, type: !1965, isLocal: false, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1967)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !6, !95}
!1967 = !{!1968, !1969}
!1968 = !DILocalVariable(name: "c", arg: 1, scope: !1964, file: !3, line: 524, type: !6)
!1969 = !DILocalVariable(name: "ll", arg: 2, scope: !1964, file: !3, line: 524, type: !95)
!1970 = !DILocation(line: 503, column: 10, scope: !1921, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 530, column: 9, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 527, column: 14)
!1973 = distinct !DILexicalBlock(scope: !1964, file: !3, line: 525, column: 9)
!1974 = !DILocation(line: 524, column: 31, scope: !1964)
!1975 = !DILocation(line: 524, column: 44, scope: !1964)
!1976 = !DILocation(line: 525, column: 12, scope: !1973)
!1977 = !DILocation(line: 525, column: 9, scope: !1964)
!1978 = !DILocation(line: 526, column: 27, scope: !1973)
!1979 = !{!1881, !381, i64 32}
!1980 = !DILocation(line: 526, column: 9, scope: !1973)
!1981 = !DILocation(line: 527, column: 17, scope: !1972)
!1982 = !DILocation(line: 527, column: 14, scope: !1973)
!1983 = !DILocation(line: 528, column: 27, scope: !1972)
!1984 = !{!1881, !381, i64 40}
!1985 = !DILocation(line: 528, column: 9, scope: !1972)
!1986 = !DILocation(line: 502, column: 41, scope: !1921, inlinedAt: !1971)
!1987 = !DILocation(line: 502, column: 54, scope: !1921, inlinedAt: !1971)
!1988 = !DILocation(line: 502, column: 63, scope: !1921, inlinedAt: !1971)
!1989 = !DILocation(line: 503, column: 5, scope: !1921, inlinedAt: !1971)
!1990 = !DILocation(line: 509, column: 23, scope: !1936, inlinedAt: !1971)
!1991 = !DILocation(line: 512, column: 30, scope: !1943, inlinedAt: !1971)
!1992 = !DILocation(line: 517, column: 12, scope: !1921, inlinedAt: !1971)
!1993 = !DILocation(line: 518, column: 24, scope: !1921, inlinedAt: !1971)
!1994 = !DILocation(line: 518, column: 11, scope: !1921, inlinedAt: !1971)
!1995 = !DILocation(line: 504, column: 9, scope: !1921, inlinedAt: !1971)
!1996 = !DILocation(line: 519, column: 12, scope: !1921, inlinedAt: !1971)
!1997 = !DILocation(line: 519, column: 5, scope: !1921, inlinedAt: !1971)
!1998 = !DILocation(line: 519, column: 16, scope: !1921, inlinedAt: !1971)
!1999 = !DILocation(line: 520, column: 12, scope: !1921, inlinedAt: !1971)
!2000 = !DILocation(line: 520, column: 5, scope: !1921, inlinedAt: !1971)
!2001 = !DILocation(line: 520, column: 16, scope: !1921, inlinedAt: !1971)
!2002 = !DILocation(line: 521, column: 29, scope: !1921, inlinedAt: !1971)
!2003 = !DILocation(line: 521, column: 26, scope: !1921, inlinedAt: !1971)
!2004 = !DILocation(line: 521, column: 5, scope: !1921, inlinedAt: !1971)
!2005 = !DILocation(line: 522, column: 1, scope: !1921, inlinedAt: !1971)
!2006 = !DILocation(line: 531, column: 1, scope: !1964)
!2007 = distinct !DISubprogram(name: "addReplyMultiBulkLen", scope: !3, file: !3, line: 533, type: !2008, isLocal: false, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{null, !6, !77}
!2010 = !{!2011, !2012}
!2011 = !DILocalVariable(name: "c", arg: 1, scope: !2007, file: !3, line: 533, type: !6)
!2012 = !DILocalVariable(name: "length", arg: 2, scope: !2007, file: !3, line: 533, type: !77)
!2013 = !DILocation(line: 503, column: 10, scope: !1921, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 537, column: 9, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 534, column: 9)
!2016 = !DILocation(line: 533, column: 35, scope: !2007)
!2017 = !DILocation(line: 533, column: 43, scope: !2007)
!2018 = !DILocation(line: 534, column: 16, scope: !2015)
!2019 = !DILocation(line: 534, column: 9, scope: !2007)
!2020 = !DILocation(line: 535, column: 20, scope: !2015)
!2021 = !DILocation(line: 535, column: 9, scope: !2015)
!2022 = !DILocation(line: 502, column: 41, scope: !1921, inlinedAt: !2014)
!2023 = !DILocation(line: 502, column: 54, scope: !1921, inlinedAt: !2014)
!2024 = !DILocation(line: 502, column: 63, scope: !1921, inlinedAt: !2014)
!2025 = !DILocation(line: 503, column: 5, scope: !1921, inlinedAt: !2014)
!2026 = !DILocation(line: 509, column: 23, scope: !1936, inlinedAt: !2014)
!2027 = !DILocation(line: 512, column: 30, scope: !1943, inlinedAt: !2014)
!2028 = !DILocation(line: 517, column: 12, scope: !1921, inlinedAt: !2014)
!2029 = !DILocation(line: 518, column: 24, scope: !1921, inlinedAt: !2014)
!2030 = !DILocation(line: 518, column: 11, scope: !1921, inlinedAt: !2014)
!2031 = !DILocation(line: 504, column: 9, scope: !1921, inlinedAt: !2014)
!2032 = !DILocation(line: 519, column: 12, scope: !1921, inlinedAt: !2014)
!2033 = !DILocation(line: 519, column: 5, scope: !1921, inlinedAt: !2014)
!2034 = !DILocation(line: 519, column: 16, scope: !1921, inlinedAt: !2014)
!2035 = !DILocation(line: 520, column: 12, scope: !1921, inlinedAt: !2014)
!2036 = !DILocation(line: 520, column: 5, scope: !1921, inlinedAt: !2014)
!2037 = !DILocation(line: 520, column: 16, scope: !1921, inlinedAt: !2014)
!2038 = !DILocation(line: 521, column: 29, scope: !1921, inlinedAt: !2014)
!2039 = !DILocation(line: 521, column: 26, scope: !1921, inlinedAt: !2014)
!2040 = !DILocation(line: 521, column: 5, scope: !1921, inlinedAt: !2014)
!2041 = !DILocation(line: 522, column: 1, scope: !1921, inlinedAt: !2014)
!2042 = !DILocation(line: 538, column: 1, scope: !2007)
!2043 = distinct !DISubprogram(name: "addReplyBulkLen", scope: !3, file: !3, line: 541, type: !1278, isLocal: false, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2044)
!2044 = !{!2045, !2046, !2047, !2048}
!2045 = !DILocalVariable(name: "c", arg: 1, scope: !2043, file: !3, line: 541, type: !6)
!2046 = !DILocalVariable(name: "obj", arg: 2, scope: !2043, file: !3, line: 541, type: !126)
!2047 = !DILocalVariable(name: "len", scope: !2043, file: !3, line: 542, type: !142)
!2048 = !DILocalVariable(name: "n", scope: !2049, file: !3, line: 547, type: !77)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 546, column: 12)
!2050 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 544, column: 9)
!2051 = !DILocation(line: 503, column: 10, scope: !1921, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 563, column: 9, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 560, column: 9)
!2054 = !DILocation(line: 541, column: 30, scope: !2043)
!2055 = !DILocation(line: 541, column: 39, scope: !2043)
!2056 = !DILocation(line: 544, column: 9, scope: !2050)
!2057 = !DILocation(line: 544, column: 9, scope: !2043)
!2058 = !DILocation(line: 545, column: 27, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 544, column: 32)
!2060 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 545, column: 15, scope: !2059)
!2062 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !2061)
!2063 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !2061)
!2064 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !2061)
!2065 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !2061)
!2066 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !2061)
!2067 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !2061)
!2068 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !2061)
!2069 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !2061)
!2070 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !2061)
!2071 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !2061)
!2072 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !2061)
!2073 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !2061)
!2074 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !2061)
!2075 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !2061)
!2076 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !2061)
!2077 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !2061)
!2078 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !2061)
!2079 = !DILocation(line: 0, scope: !855, inlinedAt: !2061)
!2080 = !DILocation(line: 0, scope: !2059)
!2081 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !2061)
!2082 = !DILocation(line: 542, column: 12, scope: !2043)
!2083 = !DILocation(line: 546, column: 5, scope: !2059)
!2084 = !DILocation(line: 547, column: 29, scope: !2049)
!2085 = !DILocation(line: 547, column: 14, scope: !2049)
!2086 = !DILocation(line: 551, column: 15, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 551, column: 13)
!2088 = !DILocation(line: 551, column: 13, scope: !2049)
!2089 = !DILocation(line: 553, column: 17, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 551, column: 20)
!2091 = !DILocation(line: 554, column: 9, scope: !2090)
!2092 = !DILocation(line: 0, scope: !2049)
!2093 = !DILocation(line: 555, column: 9, scope: !2049)
!2094 = !DILocation(line: 555, column: 26, scope: !2049)
!2095 = !DILocation(line: 555, column: 21, scope: !2049)
!2096 = !DILocation(line: 556, column: 16, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2049, file: !3, line: 555, column: 32)
!2098 = distinct !{!2098, !2093, !2099}
!2099 = !DILocation(line: 557, column: 9, scope: !2049)
!2100 = !DILocation(line: 0, scope: !2090)
!2101 = !DILocation(line: 560, column: 13, scope: !2053)
!2102 = !DILocation(line: 560, column: 9, scope: !2043)
!2103 = !DILocation(line: 561, column: 20, scope: !2053)
!2104 = !DILocation(line: 561, column: 9, scope: !2053)
!2105 = !DILocation(line: 502, column: 41, scope: !1921, inlinedAt: !2052)
!2106 = !DILocation(line: 502, column: 54, scope: !1921, inlinedAt: !2052)
!2107 = !DILocation(line: 502, column: 63, scope: !1921, inlinedAt: !2052)
!2108 = !DILocation(line: 503, column: 5, scope: !1921, inlinedAt: !2052)
!2109 = !DILocation(line: 509, column: 23, scope: !1936, inlinedAt: !2052)
!2110 = !DILocation(line: 512, column: 30, scope: !1943, inlinedAt: !2052)
!2111 = !DILocation(line: 517, column: 12, scope: !1921, inlinedAt: !2052)
!2112 = !DILocation(line: 518, column: 24, scope: !1921, inlinedAt: !2052)
!2113 = !DILocation(line: 518, column: 11, scope: !1921, inlinedAt: !2052)
!2114 = !DILocation(line: 504, column: 9, scope: !1921, inlinedAt: !2052)
!2115 = !DILocation(line: 519, column: 12, scope: !1921, inlinedAt: !2052)
!2116 = !DILocation(line: 519, column: 5, scope: !1921, inlinedAt: !2052)
!2117 = !DILocation(line: 519, column: 16, scope: !1921, inlinedAt: !2052)
!2118 = !DILocation(line: 520, column: 12, scope: !1921, inlinedAt: !2052)
!2119 = !DILocation(line: 520, column: 5, scope: !1921, inlinedAt: !2052)
!2120 = !DILocation(line: 520, column: 16, scope: !1921, inlinedAt: !2052)
!2121 = !DILocation(line: 521, column: 29, scope: !1921, inlinedAt: !2052)
!2122 = !DILocation(line: 521, column: 26, scope: !1921, inlinedAt: !2052)
!2123 = !DILocation(line: 521, column: 5, scope: !1921, inlinedAt: !2052)
!2124 = !DILocation(line: 522, column: 1, scope: !1921, inlinedAt: !2052)
!2125 = !DILocation(line: 564, column: 1, scope: !2043)
!2126 = distinct !DISubprogram(name: "addReplyBulkCBuffer", scope: !3, file: !3, line: 574, type: !2127, isLocal: false, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{null, !6, !39, !142}
!2129 = !{!2130, !2131, !2132}
!2130 = !DILocalVariable(name: "c", arg: 1, scope: !2126, file: !3, line: 574, type: !6)
!2131 = !DILocalVariable(name: "p", arg: 2, scope: !2126, file: !3, line: 574, type: !39)
!2132 = !DILocalVariable(name: "len", arg: 3, scope: !2126, file: !3, line: 574, type: !142)
!2133 = !DILocation(line: 503, column: 10, scope: !1921, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 575, column: 5, scope: !2126)
!2135 = !DILocation(line: 574, column: 34, scope: !2126)
!2136 = !DILocation(line: 574, column: 49, scope: !2126)
!2137 = !DILocation(line: 574, column: 59, scope: !2126)
!2138 = !DILocation(line: 502, column: 41, scope: !1921, inlinedAt: !2134)
!2139 = !DILocation(line: 502, column: 54, scope: !1921, inlinedAt: !2134)
!2140 = !DILocation(line: 502, column: 63, scope: !1921, inlinedAt: !2134)
!2141 = !DILocation(line: 503, column: 5, scope: !1921, inlinedAt: !2134)
!2142 = !DILocation(line: 509, column: 23, scope: !1936, inlinedAt: !2134)
!2143 = !DILocation(line: 512, column: 30, scope: !1943, inlinedAt: !2134)
!2144 = !DILocation(line: 513, column: 20, scope: !1946, inlinedAt: !2134)
!2145 = !DILocation(line: 513, column: 9, scope: !1946, inlinedAt: !2134)
!2146 = !DILocation(line: 514, column: 9, scope: !1946, inlinedAt: !2134)
!2147 = !DILocation(line: 517, column: 12, scope: !1921, inlinedAt: !2134)
!2148 = !DILocation(line: 518, column: 24, scope: !1921, inlinedAt: !2134)
!2149 = !DILocation(line: 518, column: 11, scope: !1921, inlinedAt: !2134)
!2150 = !DILocation(line: 504, column: 9, scope: !1921, inlinedAt: !2134)
!2151 = !DILocation(line: 519, column: 12, scope: !1921, inlinedAt: !2134)
!2152 = !DILocation(line: 519, column: 5, scope: !1921, inlinedAt: !2134)
!2153 = !DILocation(line: 519, column: 16, scope: !1921, inlinedAt: !2134)
!2154 = !DILocation(line: 520, column: 12, scope: !1921, inlinedAt: !2134)
!2155 = !DILocation(line: 520, column: 5, scope: !1921, inlinedAt: !2134)
!2156 = !DILocation(line: 520, column: 16, scope: !1921, inlinedAt: !2134)
!2157 = !DILocation(line: 521, column: 29, scope: !1921, inlinedAt: !2134)
!2158 = !DILocation(line: 521, column: 26, scope: !1921, inlinedAt: !2134)
!2159 = !DILocation(line: 521, column: 5, scope: !1921, inlinedAt: !2134)
!2160 = !DILocation(line: 522, column: 1, scope: !1921, inlinedAt: !2134)
!2161 = !DILocation(line: 0, scope: !2126)
!2162 = !DILocation(line: 576, column: 5, scope: !2126)
!2163 = !DILocation(line: 577, column: 23, scope: !2126)
!2164 = !DILocation(line: 577, column: 5, scope: !2126)
!2165 = !DILocation(line: 578, column: 1, scope: !2126)
!2166 = distinct !DISubprogram(name: "addReplyBulkSds", scope: !3, file: !3, line: 581, type: !1404, isLocal: false, isDefinition: true, scopeLine: 581, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2167)
!2167 = !{!2168, !2169}
!2168 = !DILocalVariable(name: "c", arg: 1, scope: !2166, file: !3, line: 581, type: !6)
!2169 = !DILocalVariable(name: "s", arg: 2, scope: !2166, file: !3, line: 581, type: !137)
!2170 = !DILocation(line: 503, column: 10, scope: !1921, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 582, column: 5, scope: !2166)
!2172 = !DILocation(line: 581, column: 30, scope: !2166)
!2173 = !DILocation(line: 581, column: 37, scope: !2166)
!2174 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 582, column: 34, scope: !2166)
!2176 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !2175)
!2177 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !2175)
!2178 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !2175)
!2179 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !2175)
!2180 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !2175)
!2181 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !2175)
!2182 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !2175)
!2183 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !2175)
!2184 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !2175)
!2185 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !2175)
!2186 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !2175)
!2187 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !2175)
!2188 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !2175)
!2189 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !2175)
!2190 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !2175)
!2191 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !2175)
!2192 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !2175)
!2193 = !DILocation(line: 0, scope: !855, inlinedAt: !2175)
!2194 = !DILocation(line: 0, scope: !2166)
!2195 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !2175)
!2196 = !DILocation(line: 502, column: 41, scope: !1921, inlinedAt: !2171)
!2197 = !DILocation(line: 502, column: 54, scope: !1921, inlinedAt: !2171)
!2198 = !DILocation(line: 502, column: 63, scope: !1921, inlinedAt: !2171)
!2199 = !DILocation(line: 503, column: 5, scope: !1921, inlinedAt: !2171)
!2200 = !DILocation(line: 509, column: 23, scope: !1936, inlinedAt: !2171)
!2201 = !DILocation(line: 512, column: 30, scope: !1943, inlinedAt: !2171)
!2202 = !DILocation(line: 513, column: 20, scope: !1946, inlinedAt: !2171)
!2203 = !DILocation(line: 513, column: 9, scope: !1946, inlinedAt: !2171)
!2204 = !DILocation(line: 514, column: 9, scope: !1946, inlinedAt: !2171)
!2205 = !DILocation(line: 517, column: 12, scope: !1921, inlinedAt: !2171)
!2206 = !DILocation(line: 518, column: 24, scope: !1921, inlinedAt: !2171)
!2207 = !DILocation(line: 518, column: 11, scope: !1921, inlinedAt: !2171)
!2208 = !DILocation(line: 504, column: 9, scope: !1921, inlinedAt: !2171)
!2209 = !DILocation(line: 519, column: 12, scope: !1921, inlinedAt: !2171)
!2210 = !DILocation(line: 519, column: 5, scope: !1921, inlinedAt: !2171)
!2211 = !DILocation(line: 519, column: 16, scope: !1921, inlinedAt: !2171)
!2212 = !DILocation(line: 520, column: 12, scope: !1921, inlinedAt: !2171)
!2213 = !DILocation(line: 520, column: 5, scope: !1921, inlinedAt: !2171)
!2214 = !DILocation(line: 520, column: 16, scope: !1921, inlinedAt: !2171)
!2215 = !DILocation(line: 521, column: 29, scope: !1921, inlinedAt: !2171)
!2216 = !DILocation(line: 521, column: 26, scope: !1921, inlinedAt: !2171)
!2217 = !DILocation(line: 521, column: 5, scope: !1921, inlinedAt: !2171)
!2218 = !DILocation(line: 522, column: 1, scope: !1921, inlinedAt: !2171)
!2219 = !DILocation(line: 583, column: 5, scope: !2166)
!2220 = !DILocation(line: 584, column: 23, scope: !2166)
!2221 = !DILocation(line: 584, column: 5, scope: !2166)
!2222 = !DILocation(line: 585, column: 1, scope: !2166)
!2223 = distinct !DISubprogram(name: "addReplyBulkLongLong", scope: !3, file: !3, line: 597, type: !1965, isLocal: false, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2224)
!2224 = !{!2225, !2226, !2227, !2231}
!2225 = !DILocalVariable(name: "c", arg: 1, scope: !2223, file: !3, line: 597, type: !6)
!2226 = !DILocalVariable(name: "ll", arg: 2, scope: !2223, file: !3, line: 597, type: !95)
!2227 = !DILocalVariable(name: "buf", scope: !2223, file: !3, line: 598, type: !2228)
!2228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 512, elements: !2229)
!2229 = !{!2230}
!2230 = !DISubrange(count: 64)
!2231 = !DILocalVariable(name: "len", scope: !2223, file: !3, line: 599, type: !18)
!2232 = !DILocation(line: 597, column: 35, scope: !2223)
!2233 = !DILocation(line: 597, column: 48, scope: !2223)
!2234 = !DILocation(line: 598, column: 5, scope: !2223)
!2235 = !DILocation(line: 598, column: 10, scope: !2223)
!2236 = !DILocation(line: 601, column: 11, scope: !2223)
!2237 = !DILocation(line: 599, column: 9, scope: !2223)
!2238 = !DILocation(line: 602, column: 31, scope: !2223)
!2239 = !DILocation(line: 602, column: 5, scope: !2223)
!2240 = !DILocation(line: 603, column: 1, scope: !2223)
!2241 = distinct !DISubprogram(name: "addReplyHelp", scope: !3, file: !3, line: 609, type: !2242, isLocal: false, isDefinition: true, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2245)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{null, !6, !2244}
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!2245 = !{!2246, !2247, !2248, !2249, !2250}
!2246 = !DILocalVariable(name: "c", arg: 1, scope: !2241, file: !3, line: 609, type: !6)
!2247 = !DILocalVariable(name: "help", arg: 2, scope: !2241, file: !3, line: 609, type: !2244)
!2248 = !DILocalVariable(name: "cmd", scope: !2241, file: !3, line: 610, type: !137)
!2249 = !DILocalVariable(name: "blenp", scope: !2241, file: !3, line: 611, type: !45)
!2250 = !DILocalVariable(name: "blen", scope: !2241, file: !3, line: 612, type: !18)
!2251 = !DILocation(line: 609, column: 27, scope: !2241)
!2252 = !DILocation(line: 609, column: 43, scope: !2241)
!2253 = !DILocation(line: 610, column: 33, scope: !2241)
!2254 = !DILocation(line: 610, column: 30, scope: !2241)
!2255 = !DILocation(line: 610, column: 42, scope: !2241)
!2256 = !DILocation(line: 610, column: 15, scope: !2241)
!2257 = !DILocation(line: 610, column: 9, scope: !2241)
!2258 = !DILocation(line: 425, column: 42, scope: !1742, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 611, column: 19, scope: !2241)
!2260 = !DILocation(line: 429, column: 9, scope: !1749, inlinedAt: !2259)
!2261 = !DILocation(line: 429, column: 33, scope: !1749, inlinedAt: !2259)
!2262 = !DILocation(line: 429, column: 9, scope: !1742, inlinedAt: !2259)
!2263 = !DILocation(line: 430, column: 24, scope: !1742, inlinedAt: !2259)
!2264 = !DILocation(line: 430, column: 5, scope: !1742, inlinedAt: !2259)
!2265 = !DILocation(line: 431, column: 12, scope: !1742, inlinedAt: !2259)
!2266 = !DILocation(line: 431, column: 5, scope: !1742, inlinedAt: !2259)
!2267 = !DILocation(line: 0, scope: !1742, inlinedAt: !2259)
!2268 = !DILocation(line: 0, scope: !2241)
!2269 = !DILocation(line: 432, column: 1, scope: !1742, inlinedAt: !2259)
!2270 = !DILocation(line: 611, column: 11, scope: !2241)
!2271 = !DILocation(line: 612, column: 9, scope: !2241)
!2272 = !DILocation(line: 614, column: 5, scope: !2241)
!2273 = !DILocation(line: 615, column: 5, scope: !2241)
!2274 = !DILocation(line: 617, column: 5, scope: !2241)
!2275 = !DILocation(line: 619, column: 5, scope: !2241)
!2276 = !DILocation(line: 619, column: 12, scope: !2241)
!2277 = !DILocation(line: 410, column: 29, scope: !1679, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 619, column: 24, scope: !2241)
!2279 = !DILocation(line: 410, column: 44, scope: !1679, inlinedAt: !2278)
!2280 = !DILocation(line: 411, column: 35, scope: !1679, inlinedAt: !2278)
!2281 = !DILocation(line: 404, column: 35, scope: !1667, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 411, column: 5, scope: !1679, inlinedAt: !2278)
!2283 = !DILocation(line: 404, column: 50, scope: !1667, inlinedAt: !2282)
!2284 = !DILocation(line: 404, column: 60, scope: !1667, inlinedAt: !2282)
!2285 = !DILocation(line: 405, column: 5, scope: !1667, inlinedAt: !2282)
!2286 = !DILocation(line: 406, column: 5, scope: !1667, inlinedAt: !2282)
!2287 = !DILocation(line: 407, column: 5, scope: !1667, inlinedAt: !2282)
!2288 = !DILocation(line: 408, column: 1, scope: !1667, inlinedAt: !2282)
!2289 = !DILocation(line: 412, column: 1, scope: !1679, inlinedAt: !2278)
!2290 = distinct !{!2290, !2275, !2291}
!2291 = !DILocation(line: 619, column: 53, scope: !2241)
!2292 = !DILocation(line: 622, column: 40, scope: !2241)
!2293 = !DILocation(line: 622, column: 5, scope: !2241)
!2294 = !DILocation(line: 623, column: 1, scope: !2241)
!2295 = distinct !DISubprogram(name: "addReplySubcommandSyntaxError", scope: !3, file: !3, line: 628, type: !4, isLocal: false, isDefinition: true, scopeLine: 628, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2296)
!2296 = !{!2297, !2298}
!2297 = !DILocalVariable(name: "c", arg: 1, scope: !2295, file: !3, line: 628, type: !6)
!2298 = !DILocalVariable(name: "cmd", scope: !2295, file: !3, line: 629, type: !137)
!2299 = !DILocation(line: 628, column: 44, scope: !2295)
!2300 = !DILocation(line: 629, column: 33, scope: !2295)
!2301 = !DILocation(line: 629, column: 30, scope: !2295)
!2302 = !DILocation(line: 629, column: 42, scope: !2295)
!2303 = !DILocation(line: 629, column: 15, scope: !2295)
!2304 = !DILocation(line: 629, column: 9, scope: !2295)
!2305 = !DILocation(line: 630, column: 5, scope: !2295)
!2306 = !DILocation(line: 633, column: 19, scope: !2295)
!2307 = !DILocation(line: 633, column: 16, scope: !2295)
!2308 = !DILocation(line: 633, column: 28, scope: !2295)
!2309 = !DILocation(line: 631, column: 5, scope: !2295)
!2310 = !DILocation(line: 634, column: 5, scope: !2295)
!2311 = !DILocation(line: 635, column: 1, scope: !2295)
!2312 = distinct !DISubprogram(name: "AddReplyFromClient", scope: !3, file: !3, line: 639, type: !2313, isLocal: false, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2315)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{null, !6, !6}
!2315 = !{!2316, !2317}
!2316 = !DILocalVariable(name: "dst", arg: 1, scope: !2312, file: !3, line: 639, type: !6)
!2317 = !DILocalVariable(name: "src", arg: 2, scope: !2312, file: !3, line: 639, type: !6)
!2318 = !DILocation(line: 639, column: 33, scope: !2312)
!2319 = !DILocation(line: 639, column: 46, scope: !2312)
!2320 = !DILocation(line: 640, column: 9, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 640, column: 9)
!2322 = !DILocation(line: 640, column: 35, scope: !2321)
!2323 = !DILocation(line: 640, column: 9, scope: !2312)
!2324 = !DILocation(line: 642, column: 24, scope: !2312)
!2325 = !DILocation(line: 642, column: 39, scope: !2312)
!2326 = !DILocation(line: 642, column: 34, scope: !2312)
!2327 = !DILocation(line: 642, column: 5, scope: !2312)
!2328 = !DILocation(line: 643, column: 9, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 643, column: 9)
!2330 = !DILocation(line: 643, column: 9, scope: !2312)
!2331 = !DILocation(line: 644, column: 23, scope: !2329)
!2332 = !DILocation(line: 644, column: 9, scope: !2329)
!2333 = !DILocation(line: 645, column: 30, scope: !2312)
!2334 = !DILocation(line: 645, column: 10, scope: !2312)
!2335 = !DILocation(line: 645, column: 22, scope: !2312)
!2336 = !DILocation(line: 646, column: 22, scope: !2312)
!2337 = !DILocation(line: 647, column: 17, scope: !2312)
!2338 = !DILocation(line: 648, column: 1, scope: !2312)
!2339 = distinct !DISubprogram(name: "copyClientOutputBuffer", scope: !3, file: !3, line: 653, type: !2313, isLocal: false, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2340)
!2340 = !{!2341, !2342}
!2341 = !DILocalVariable(name: "dst", arg: 1, scope: !2339, file: !3, line: 653, type: !6)
!2342 = !DILocalVariable(name: "src", arg: 2, scope: !2339, file: !3, line: 653, type: !6)
!2343 = !DILocation(line: 653, column: 37, scope: !2339)
!2344 = !DILocation(line: 653, column: 50, scope: !2339)
!2345 = !DILocation(line: 654, column: 22, scope: !2339)
!2346 = !DILocation(line: 654, column: 5, scope: !2339)
!2347 = !DILocation(line: 655, column: 10, scope: !2339)
!2348 = !DILocation(line: 655, column: 18, scope: !2339)
!2349 = !DILocation(line: 656, column: 31, scope: !2339)
!2350 = !DILocation(line: 656, column: 18, scope: !2339)
!2351 = !DILocation(line: 656, column: 16, scope: !2339)
!2352 = !DILocation(line: 657, column: 12, scope: !2339)
!2353 = !DILocation(line: 657, column: 21, scope: !2339)
!2354 = !DILocation(line: 657, column: 35, scope: !2339)
!2355 = !DILocation(line: 657, column: 30, scope: !2339)
!2356 = !DILocation(line: 657, column: 5, scope: !2339)
!2357 = !DILocation(line: 658, column: 24, scope: !2339)
!2358 = !DILocation(line: 658, column: 10, scope: !2339)
!2359 = !DILocation(line: 658, column: 17, scope: !2339)
!2360 = !DILocation(line: 659, column: 29, scope: !2339)
!2361 = !DILocation(line: 659, column: 10, scope: !2339)
!2362 = !DILocation(line: 659, column: 22, scope: !2339)
!2363 = !DILocation(line: 660, column: 1, scope: !2339)
!2364 = distinct !DISubprogram(name: "acceptTcpHandler", scope: !3, file: !3, line: 740, type: !744, isLocal: false, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2365)
!2365 = !{!2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373}
!2366 = !DILocalVariable(name: "el", arg: 1, scope: !2364, file: !3, line: 740, type: !746)
!2367 = !DILocalVariable(name: "fd", arg: 2, scope: !2364, file: !3, line: 740, type: !18)
!2368 = !DILocalVariable(name: "privdata", arg: 3, scope: !2364, file: !3, line: 740, type: !45)
!2369 = !DILocalVariable(name: "mask", arg: 4, scope: !2364, file: !3, line: 740, type: !18)
!2370 = !DILocalVariable(name: "cport", scope: !2364, file: !3, line: 741, type: !18)
!2371 = !DILocalVariable(name: "cfd", scope: !2364, file: !3, line: 741, type: !18)
!2372 = !DILocalVariable(name: "max", scope: !2364, file: !3, line: 741, type: !18)
!2373 = !DILocalVariable(name: "cip", scope: !2364, file: !3, line: 742, type: !209)
!2374 = !DILocation(line: 740, column: 36, scope: !2364)
!2375 = !DILocation(line: 740, column: 44, scope: !2364)
!2376 = !DILocation(line: 740, column: 54, scope: !2364)
!2377 = !DILocation(line: 740, column: 68, scope: !2364)
!2378 = !DILocation(line: 741, column: 5, scope: !2364)
!2379 = !DILocation(line: 741, column: 21, scope: !2364)
!2380 = !DILocation(line: 742, column: 5, scope: !2364)
!2381 = !DILocation(line: 742, column: 10, scope: !2364)
!2382 = !DILocation(line: 747, column: 5, scope: !2364)
!2383 = !DILocation(line: 741, column: 9, scope: !2364)
!2384 = !DILocation(line: 748, column: 15, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 747, column: 18)
!2386 = !DILocation(line: 741, column: 16, scope: !2364)
!2387 = !DILocation(line: 749, column: 17, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 749, column: 13)
!2389 = !DILocation(line: 749, column: 13, scope: !2385)
!2390 = !DILocation(line: 750, column: 17, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !3, line: 750, column: 17)
!2392 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 749, column: 30)
!2393 = !DILocation(line: 750, column: 23, scope: !2391)
!2394 = !DILocation(line: 750, column: 17, scope: !2392)
!2395 = !DILocation(line: 751, column: 17, scope: !2391)
!2396 = !DILocation(line: 755, column: 53, scope: !2385)
!2397 = !DILocation(line: 755, column: 9, scope: !2385)
!2398 = !DILocation(line: 756, column: 9, scope: !2385)
!2399 = !DILocation(line: 747, column: 14, scope: !2364)
!2400 = distinct !{!2400, !2382, !2401}
!2401 = !DILocation(line: 757, column: 5, scope: !2364)
!2402 = !DILocation(line: 0, scope: !2392)
!2403 = !DILocation(line: 758, column: 1, scope: !2364)
!2404 = distinct !DISubprogram(name: "acceptCommonHandler", scope: !3, file: !3, line: 691, type: !2405, isLocal: true, isDefinition: true, scopeLine: 691, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2407)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !18, !18, !139}
!2407 = !{!2408, !2409, !2410, !2411, !2412}
!2408 = !DILocalVariable(name: "fd", arg: 1, scope: !2404, file: !3, line: 691, type: !18)
!2409 = !DILocalVariable(name: "flags", arg: 2, scope: !2404, file: !3, line: 691, type: !18)
!2410 = !DILocalVariable(name: "ip", arg: 3, scope: !2404, file: !3, line: 691, type: !139)
!2411 = !DILocalVariable(name: "c", scope: !2404, file: !3, line: 692, type: !6)
!2412 = !DILocalVariable(name: "err", scope: !2413, file: !3, line: 705, type: !139)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 704, column: 57)
!2414 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 704, column: 9)
!2415 = !DILocation(line: 691, column: 37, scope: !2404)
!2416 = !DILocation(line: 691, column: 45, scope: !2404)
!2417 = !DILocation(line: 691, column: 58, scope: !2404)
!2418 = !DILocation(line: 693, column: 14, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 693, column: 9)
!2420 = !DILocation(line: 692, column: 13, scope: !2404)
!2421 = !DILocation(line: 693, column: 32, scope: !2419)
!2422 = !DILocation(line: 693, column: 9, scope: !2404)
!2423 = !DILocation(line: 696, column: 22, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 693, column: 41)
!2425 = !DILocation(line: 696, column: 13, scope: !2424)
!2426 = !DILocation(line: 694, column: 9, scope: !2424)
!2427 = !DILocation(line: 697, column: 9, scope: !2424)
!2428 = !DILocation(line: 698, column: 9, scope: !2424)
!2429 = !DILocation(line: 704, column: 9, scope: !2414)
!2430 = !DILocation(line: 704, column: 45, scope: !2414)
!2431 = !{!442, !378, i64 2700}
!2432 = !DILocation(line: 704, column: 38, scope: !2414)
!2433 = !DILocation(line: 704, column: 36, scope: !2414)
!2434 = !DILocation(line: 704, column: 9, scope: !2404)
!2435 = !DILocation(line: 708, column: 22, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 708, column: 13)
!2437 = !DILocation(line: 708, column: 29, scope: !2436)
!2438 = !DILocation(line: 708, column: 13, scope: !2436)
!2439 = !DILocation(line: 711, column: 34, scope: !2413)
!2440 = !{!442, !443, i64 1136}
!2441 = !DILocation(line: 712, column: 9, scope: !2413)
!2442 = !DILocation(line: 720, column: 16, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2404, file: !3, line: 720, column: 9)
!2444 = !{!442, !378, i64 856}
!2445 = !DILocation(line: 720, column: 9, scope: !2443)
!2446 = !DILocation(line: 721, column: 16, scope: !2443)
!2447 = !DILocation(line: 721, column: 31, scope: !2443)
!2448 = !DILocation(line: 720, column: 31, scope: !2443)
!2449 = !DILocation(line: 722, column: 16, scope: !2443)
!2450 = !DILocation(line: 722, column: 28, scope: !2443)
!2451 = !DILocation(line: 723, column: 17, scope: !2443)
!2452 = !DILocation(line: 724, column: 12, scope: !2443)
!2453 = !DILocation(line: 723, column: 39, scope: !2443)
!2454 = !DILocation(line: 726, column: 13, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 726, column: 13)
!2456 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 725, column: 5)
!2457 = !DILocation(line: 726, column: 36, scope: !2455)
!2458 = !DILocation(line: 726, column: 39, scope: !2455)
!2459 = !DILocation(line: 726, column: 13, scope: !2456)
!2460 = !DILocation(line: 727, column: 26, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 727, column: 17)
!2462 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 726, column: 57)
!2463 = !DILocation(line: 727, column: 33, scope: !2461)
!2464 = !DILocation(line: 727, column: 17, scope: !2461)
!2465 = !DILocation(line: 730, column: 38, scope: !2462)
!2466 = !DILocation(line: 731, column: 13, scope: !2462)
!2467 = !DILocation(line: 732, column: 13, scope: !2462)
!2468 = !DILocation(line: 736, column: 31, scope: !2404)
!2469 = !{!442, !443, i64 1016}
!2470 = !DILocation(line: 737, column: 8, scope: !2404)
!2471 = !DILocation(line: 737, column: 14, scope: !2404)
!2472 = !DILocation(line: 738, column: 1, scope: !2404)
!2473 = distinct !DISubprogram(name: "acceptUnixHandler", scope: !3, file: !3, line: 760, type: !744, isLocal: false, isDefinition: true, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2474)
!2474 = !{!2475, !2476, !2477, !2478, !2479, !2480}
!2475 = !DILocalVariable(name: "el", arg: 1, scope: !2473, file: !3, line: 760, type: !746)
!2476 = !DILocalVariable(name: "fd", arg: 2, scope: !2473, file: !3, line: 760, type: !18)
!2477 = !DILocalVariable(name: "privdata", arg: 3, scope: !2473, file: !3, line: 760, type: !45)
!2478 = !DILocalVariable(name: "mask", arg: 4, scope: !2473, file: !3, line: 760, type: !18)
!2479 = !DILocalVariable(name: "cfd", scope: !2473, file: !3, line: 761, type: !18)
!2480 = !DILocalVariable(name: "max", scope: !2473, file: !3, line: 761, type: !18)
!2481 = !DILocation(line: 760, column: 37, scope: !2473)
!2482 = !DILocation(line: 760, column: 45, scope: !2473)
!2483 = !DILocation(line: 760, column: 55, scope: !2473)
!2484 = !DILocation(line: 760, column: 69, scope: !2473)
!2485 = !DILocation(line: 761, column: 14, scope: !2473)
!2486 = !DILocation(line: 766, column: 5, scope: !2473)
!2487 = !DILocation(line: 767, column: 15, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 766, column: 18)
!2489 = !DILocation(line: 761, column: 9, scope: !2473)
!2490 = !DILocation(line: 768, column: 17, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2488, file: !3, line: 768, column: 13)
!2492 = !DILocation(line: 768, column: 13, scope: !2488)
!2493 = !DILocation(line: 769, column: 17, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 769, column: 17)
!2495 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 768, column: 30)
!2496 = !DILocation(line: 769, column: 23, scope: !2494)
!2497 = !DILocation(line: 769, column: 17, scope: !2495)
!2498 = !DILocation(line: 770, column: 17, scope: !2494)
!2499 = !DILocation(line: 774, column: 66, scope: !2488)
!2500 = !{!442, !381, i64 360}
!2501 = !DILocation(line: 774, column: 9, scope: !2488)
!2502 = !DILocation(line: 775, column: 9, scope: !2488)
!2503 = !DILocation(line: 766, column: 14, scope: !2473)
!2504 = distinct !{!2504, !2486, !2505}
!2505 = !DILocation(line: 776, column: 5, scope: !2473)
!2506 = !DILocation(line: 0, scope: !2495)
!2507 = !DILocation(line: 777, column: 1, scope: !2473)
!2508 = distinct !DISubprogram(name: "disconnectSlaves", scope: !3, file: !3, line: 790, type: !2509, isLocal: false, isDefinition: true, scopeLine: 790, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2511)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{null}
!2511 = !{!2512}
!2512 = !DILocalVariable(name: "ln", scope: !2513, file: !3, line: 792, type: !103)
!2513 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 791, column: 39)
!2514 = !DILocation(line: 791, column: 5, scope: !2508)
!2515 = !DILocation(line: 791, column: 12, scope: !2508)
!2516 = !DILocation(line: 792, column: 24, scope: !2513)
!2517 = !{!452, !381, i64 0}
!2518 = !DILocation(line: 792, column: 19, scope: !2513)
!2519 = !DILocation(line: 793, column: 33, scope: !2513)
!2520 = !DILocation(line: 793, column: 9, scope: !2513)
!2521 = distinct !{!2521, !2514, !2522}
!2522 = !DILocation(line: 794, column: 5, scope: !2508)
!2523 = !DILocation(line: 795, column: 1, scope: !2508)
!2524 = distinct !DISubprogram(name: "freeClient", scope: !3, file: !3, line: 853, type: !4, isLocal: false, isDefinition: true, scopeLine: 853, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2525)
!2525 = !{!2526, !2527, !2528}
!2526 = !DILocalVariable(name: "c", arg: 1, scope: !2524, file: !3, line: 853, type: !6)
!2527 = !DILocalVariable(name: "ln", scope: !2524, file: !3, line: 854, type: !103)
!2528 = !DILocalVariable(name: "l", scope: !2529, file: !3, line: 920, type: !97)
!2529 = distinct !DILexicalBlock(scope: !2530, file: !3, line: 915, column: 34)
!2530 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 915, column: 9)
!2531 = !DILocation(line: 853, column: 25, scope: !2524)
!2532 = !DILocation(line: 858, column: 12, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 858, column: 9)
!2534 = !DILocation(line: 858, column: 18, scope: !2533)
!2535 = !DILocation(line: 858, column: 9, scope: !2524)
!2536 = !DILocation(line: 957, column: 30, scope: !1257, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 859, column: 9, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 858, column: 38)
!2539 = !DILocation(line: 958, column: 18, scope: !1262, inlinedAt: !2537)
!2540 = !DILocation(line: 958, column: 38, scope: !1262, inlinedAt: !2537)
!2541 = !DILocation(line: 958, column: 50, scope: !1262, inlinedAt: !2537)
!2542 = !DILocation(line: 958, column: 9, scope: !1257, inlinedAt: !2537)
!2543 = !DILocation(line: 959, column: 14, scope: !1257, inlinedAt: !2537)
!2544 = !DILocation(line: 960, column: 28, scope: !1257, inlinedAt: !2537)
!2545 = !DILocation(line: 960, column: 45, scope: !1257, inlinedAt: !2537)
!2546 = !DILocation(line: 960, column: 5, scope: !1257, inlinedAt: !2537)
!2547 = !DILocation(line: 961, column: 1, scope: !1257, inlinedAt: !2537)
!2548 = !DILocation(line: 860, column: 9, scope: !2538)
!2549 = !DILocation(line: 868, column: 16, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 868, column: 9)
!2551 = !{!442, !381, i64 2480}
!2552 = !DILocation(line: 868, column: 9, scope: !2550)
!2553 = !DILocation(line: 868, column: 23, scope: !2550)
!2554 = !DILocation(line: 868, column: 35, scope: !2550)
!2555 = !DILocation(line: 868, column: 9, scope: !2524)
!2556 = !DILocation(line: 869, column: 9, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 868, column: 52)
!2558 = !DILocation(line: 870, column: 18, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 870, column: 13)
!2560 = !DILocation(line: 870, column: 24, scope: !2559)
!2561 = !DILocation(line: 870, column: 13, scope: !2557)
!2562 = !DILocation(line: 874, column: 13, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 873, column: 9)
!2564 = !DILocation(line: 875, column: 13, scope: !2563)
!2565 = !DILocation(line: 880, column: 13, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 880, column: 9)
!2567 = !DILocation(line: 880, column: 19, scope: !2566)
!2568 = !DILocation(line: 880, column: 35, scope: !2566)
!2569 = !DILocation(line: 880, column: 49, scope: !2566)
!2570 = !DILocation(line: 880, column: 9, scope: !2524)
!2571 = !DILocation(line: 882, column: 13, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 880, column: 68)
!2573 = !DILocation(line: 881, column: 9, scope: !2572)
!2574 = !DILocation(line: 883, column: 5, scope: !2572)
!2575 = !DILocation(line: 886, column: 16, scope: !2524)
!2576 = !DILocation(line: 886, column: 5, scope: !2524)
!2577 = !DILocation(line: 887, column: 16, scope: !2524)
!2578 = !DILocation(line: 887, column: 5, scope: !2524)
!2579 = !DILocation(line: 888, column: 17, scope: !2524)
!2580 = !DILocation(line: 891, column: 12, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 891, column: 9)
!2582 = !DILocation(line: 891, column: 18, scope: !2581)
!2583 = !DILocation(line: 891, column: 9, scope: !2524)
!2584 = !DILocation(line: 891, column: 36, scope: !2581)
!2585 = !DILocation(line: 892, column: 25, scope: !2524)
!2586 = !DILocation(line: 892, column: 5, scope: !2524)
!2587 = !DILocation(line: 895, column: 5, scope: !2524)
!2588 = !DILocation(line: 896, column: 20, scope: !2524)
!2589 = !DILocation(line: 896, column: 5, scope: !2524)
!2590 = !DILocation(line: 899, column: 5, scope: !2524)
!2591 = !DILocation(line: 900, column: 5, scope: !2524)
!2592 = !DILocation(line: 901, column: 20, scope: !2524)
!2593 = !DILocation(line: 901, column: 5, scope: !2524)
!2594 = !DILocation(line: 902, column: 20, scope: !2524)
!2595 = !DILocation(line: 902, column: 5, scope: !2524)
!2596 = !DILocation(line: 905, column: 20, scope: !2524)
!2597 = !DILocation(line: 905, column: 5, scope: !2524)
!2598 = !DILocalVariable(name: "c", arg: 1, scope: !2599, file: !3, line: 779, type: !6)
!2599 = distinct !DISubprogram(name: "freeClientArgv", scope: !3, file: !3, line: 779, type: !4, isLocal: true, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2600)
!2600 = !{!2598, !2601}
!2601 = !DILocalVariable(name: "j", scope: !2599, file: !3, line: 780, type: !18)
!2602 = !DILocation(line: 779, column: 36, scope: !2599, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 906, column: 5, scope: !2524)
!2604 = !DILocation(line: 780, column: 9, scope: !2599, inlinedAt: !2603)
!2605 = !DILocation(line: 781, column: 10, scope: !2606, inlinedAt: !2603)
!2606 = distinct !DILexicalBlock(scope: !2599, file: !3, line: 781, column: 5)
!2607 = !DILocation(line: 781, column: 24, scope: !2608, inlinedAt: !2603)
!2608 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 781, column: 5)
!2609 = !DILocation(line: 781, column: 19, scope: !2608, inlinedAt: !2603)
!2610 = !DILocation(line: 781, column: 5, scope: !2606, inlinedAt: !2603)
!2611 = !DILocation(line: 782, column: 25, scope: !2608, inlinedAt: !2603)
!2612 = !DILocation(line: 782, column: 22, scope: !2608, inlinedAt: !2603)
!2613 = !DILocation(line: 782, column: 9, scope: !2608, inlinedAt: !2603)
!2614 = !DILocation(line: 781, column: 31, scope: !2608, inlinedAt: !2603)
!2615 = !DILocation(line: 781, column: 5, scope: !2608, inlinedAt: !2603)
!2616 = distinct !{!2616, !2617, !2618}
!2617 = !DILocation(line: 781, column: 5, scope: !2606)
!2618 = !DILocation(line: 782, column: 32, scope: !2606)
!2619 = !DILocation(line: 783, column: 13, scope: !2599, inlinedAt: !2603)
!2620 = !DILocation(line: 784, column: 8, scope: !2599, inlinedAt: !2603)
!2621 = !DILocation(line: 784, column: 12, scope: !2599, inlinedAt: !2603)
!2622 = !{!456, !381, i64 80}
!2623 = !DILocation(line: 785, column: 1, scope: !2599, inlinedAt: !2603)
!2624 = !DILocation(line: 911, column: 5, scope: !2524)
!2625 = !DILocation(line: 915, column: 12, scope: !2530)
!2626 = !DILocation(line: 915, column: 18, scope: !2530)
!2627 = !DILocation(line: 915, column: 9, scope: !2524)
!2628 = !DILocation(line: 916, column: 16, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 916, column: 13)
!2630 = !DILocation(line: 916, column: 26, scope: !2629)
!2631 = !DILocation(line: 916, column: 13, scope: !2529)
!2632 = !DILocation(line: 917, column: 20, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 917, column: 17)
!2634 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 916, column: 52)
!2635 = !{!456, !378, i64 176}
!2636 = !DILocation(line: 917, column: 29, scope: !2633)
!2637 = !DILocation(line: 917, column: 17, scope: !2634)
!2638 = !DILocation(line: 917, column: 36, scope: !2633)
!2639 = !DILocation(line: 918, column: 20, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2634, file: !3, line: 918, column: 17)
!2641 = !{!456, !381, i64 200}
!2642 = !DILocation(line: 918, column: 17, scope: !2640)
!2643 = !DILocation(line: 918, column: 17, scope: !2634)
!2644 = !DILocation(line: 918, column: 34, scope: !2640)
!2645 = !DILocation(line: 920, column: 23, scope: !2529)
!2646 = !DILocation(line: 920, column: 29, scope: !2529)
!2647 = !DILocation(line: 920, column: 56, scope: !2529)
!2648 = !DILocation(line: 920, column: 74, scope: !2529)
!2649 = !DILocation(line: 920, column: 19, scope: !2529)
!2650 = !DILocation(line: 920, column: 15, scope: !2529)
!2651 = !DILocation(line: 921, column: 30, scope: !2529)
!2652 = !DILocation(line: 921, column: 14, scope: !2529)
!2653 = !DILocation(line: 854, column: 15, scope: !2524)
!2654 = !DILocation(line: 922, column: 9, scope: !2529)
!2655 = !DILocation(line: 923, column: 9, scope: !2529)
!2656 = !DILocation(line: 927, column: 16, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 927, column: 13)
!2658 = !DILocation(line: 927, column: 22, scope: !2657)
!2659 = !DILocation(line: 927, column: 37, scope: !2657)
!2660 = !DILocation(line: 927, column: 40, scope: !2657)
!2661 = !DILocation(line: 927, column: 66, scope: !2657)
!2662 = !DILocation(line: 927, column: 13, scope: !2529)
!2663 = !DILocation(line: 928, column: 50, scope: !2657)
!2664 = !DILocation(line: 928, column: 41, scope: !2657)
!2665 = !{!442, !411, i64 2424}
!2666 = !DILocation(line: 928, column: 13, scope: !2657)
!2667 = !DILocation(line: 929, column: 9, scope: !2529)
!2668 = !DILocation(line: 930, column: 5, scope: !2529)
!2669 = !DILocation(line: 934, column: 12, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 934, column: 9)
!2671 = !DILocation(line: 934, column: 18, scope: !2670)
!2672 = !DILocation(line: 934, column: 9, scope: !2524)
!2673 = !DILocation(line: 934, column: 35, scope: !2670)
!2674 = !DILocation(line: 938, column: 12, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 938, column: 9)
!2676 = !DILocation(line: 938, column: 18, scope: !2675)
!2677 = !DILocation(line: 938, column: 9, scope: !2524)
!2678 = !DILocation(line: 939, column: 35, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 938, column: 39)
!2680 = !DILocation(line: 939, column: 52, scope: !2679)
!2681 = !DILocation(line: 939, column: 14, scope: !2679)
!2682 = !DILocation(line: 940, column: 9, scope: !2679)
!2683 = !DILocation(line: 941, column: 28, scope: !2679)
!2684 = !DILocation(line: 941, column: 9, scope: !2679)
!2685 = !DILocation(line: 942, column: 5, scope: !2679)
!2686 = !DILocation(line: 946, column: 12, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 946, column: 9)
!2688 = !DILocation(line: 946, column: 9, scope: !2687)
!2689 = !DILocation(line: 946, column: 9, scope: !2524)
!2690 = !DILocation(line: 946, column: 18, scope: !2687)
!2691 = !DILocation(line: 947, column: 14, scope: !2524)
!2692 = !DILocation(line: 947, column: 5, scope: !2524)
!2693 = !DILocation(line: 948, column: 5, scope: !2524)
!2694 = !DILocation(line: 949, column: 16, scope: !2524)
!2695 = !DILocation(line: 949, column: 5, scope: !2524)
!2696 = !DILocation(line: 950, column: 13, scope: !2524)
!2697 = !DILocalVariable(name: "a", arg: 1, scope: !2698, file: !479, line: 237, type: !482)
!2698 = distinct !DISubprogram(name: "uk_free", scope: !479, file: !479, line: 237, type: !511, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2699)
!2699 = !{!2697, !2700}
!2700 = !DILocalVariable(name: "ptr", arg: 2, scope: !2698, file: !479, line: 237, type: !45)
!2701 = !DILocation(line: 237, column: 45, scope: !2698, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 950, column: 5, scope: !2524)
!2703 = !DILocalVariable(name: "a", arg: 1, scope: !2704, file: !479, line: 231, type: !482)
!2704 = distinct !DISubprogram(name: "uk_do_free", scope: !479, file: !479, line: 231, type: !511, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2705)
!2705 = !{!2703, !2706}
!2706 = !DILocalVariable(name: "ptr", arg: 2, scope: !2704, file: !479, line: 231, type: !45)
!2707 = !DILocation(line: 231, column: 48, scope: !2704, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 239, column: 2, scope: !2698, inlinedAt: !2702)
!2709 = !DILocation(line: 233, column: 2, scope: !2710, inlinedAt: !2708)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !479, line: 233, column: 2)
!2711 = distinct !DILexicalBlock(scope: !2704, file: !479, line: 233, column: 2)
!2712 = !DILocation(line: 233, column: 2, scope: !2711, inlinedAt: !2708)
!2713 = !DILocation(line: 233, column: 2, scope: !2714, inlinedAt: !2708)
!2714 = distinct !DILexicalBlock(scope: !2710, file: !479, line: 233, column: 2)
!2715 = !DILocation(line: 950, column: 34, scope: !2524)
!2716 = !DILocation(line: 231, column: 57, scope: !2704, inlinedAt: !2708)
!2717 = !DILocation(line: 237, column: 54, scope: !2698, inlinedAt: !2702)
!2718 = !DILocation(line: 234, column: 5, scope: !2704, inlinedAt: !2708)
!2719 = !DILocation(line: 234, column: 2, scope: !2704, inlinedAt: !2708)
!2720 = !DILocation(line: 235, column: 1, scope: !2704, inlinedAt: !2708)
!2721 = !DILocation(line: 240, column: 1, scope: !2698, inlinedAt: !2702)
!2722 = !DILocation(line: 951, column: 1, scope: !2524)
!2723 = !DILocation(line: 0, scope: !2538)
!2724 = distinct !DISubprogram(name: "unlinkClient", scope: !3, file: !3, line: 800, type: !4, isLocal: false, isDefinition: true, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2725)
!2725 = !{!2726, !2727, !2728}
!2726 = !DILocalVariable(name: "c", arg: 1, scope: !2724, file: !3, line: 800, type: !6)
!2727 = !DILocalVariable(name: "ln", scope: !2724, file: !3, line: 801, type: !103)
!2728 = !DILocalVariable(name: "id", scope: !2729, file: !3, line: 812, type: !12)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 811, column: 34)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 811, column: 13)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !3, line: 809, column: 22)
!2732 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 809, column: 9)
!2733 = !DILocation(line: 800, column: 27, scope: !2724)
!2734 = !DILocation(line: 804, column: 16, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 804, column: 9)
!2736 = !{!442, !381, i64 552}
!2737 = !DILocation(line: 804, column: 31, scope: !2735)
!2738 = !DILocation(line: 804, column: 9, scope: !2724)
!2739 = !DILocation(line: 804, column: 59, scope: !2735)
!2740 = !DILocation(line: 804, column: 37, scope: !2735)
!2741 = !DILocation(line: 809, column: 12, scope: !2732)
!2742 = !DILocation(line: 809, column: 15, scope: !2732)
!2743 = !DILocation(line: 809, column: 9, scope: !2724)
!2744 = !DILocation(line: 836, column: 12, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 836, column: 9)
!2746 = !DILocation(line: 811, column: 16, scope: !2730)
!2747 = !DILocation(line: 811, column: 13, scope: !2730)
!2748 = !DILocation(line: 811, column: 13, scope: !2731)
!2749 = !DILocation(line: 812, column: 13, scope: !2729)
!2750 = !DILocation(line: 812, column: 27, scope: !2729)
!2751 = !DILocation(line: 812, column: 22, scope: !2729)
!2752 = !DILocation(line: 813, column: 30, scope: !2729)
!2753 = !DILocation(line: 813, column: 13, scope: !2729)
!2754 = !DILocation(line: 814, column: 32, scope: !2729)
!2755 = !DILocation(line: 814, column: 43, scope: !2729)
!2756 = !DILocation(line: 814, column: 13, scope: !2729)
!2757 = !DILocation(line: 815, column: 33, scope: !2729)
!2758 = !DILocation(line: 816, column: 9, scope: !2730)
!2759 = !DILocation(line: 816, column: 9, scope: !2729)
!2760 = !DILocation(line: 823, column: 17, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2731, file: !3, line: 823, column: 13)
!2762 = !DILocation(line: 823, column: 23, scope: !2761)
!2763 = !DILocation(line: 823, column: 39, scope: !2761)
!2764 = !DILocation(line: 824, column: 17, scope: !2761)
!2765 = !DILocation(line: 824, column: 27, scope: !2761)
!2766 = !DILocation(line: 823, column: 13, scope: !2731)
!2767 = !DILocation(line: 825, column: 25, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 824, column: 60)
!2769 = !DILocation(line: 825, column: 13, scope: !2768)
!2770 = !DILocation(line: 826, column: 9, scope: !2768)
!2771 = !DILocation(line: 829, column: 34, scope: !2731)
!2772 = !DILocation(line: 829, column: 40, scope: !2731)
!2773 = !DILocation(line: 829, column: 9, scope: !2731)
!2774 = !DILocation(line: 830, column: 34, scope: !2731)
!2775 = !DILocation(line: 830, column: 40, scope: !2731)
!2776 = !DILocation(line: 830, column: 9, scope: !2731)
!2777 = !DILocation(line: 831, column: 18, scope: !2731)
!2778 = !DILocation(line: 831, column: 9, scope: !2731)
!2779 = !DILocation(line: 832, column: 15, scope: !2731)
!2780 = !DILocation(line: 833, column: 5, scope: !2731)
!2781 = !DILocation(line: 836, column: 18, scope: !2745)
!2782 = !DILocation(line: 836, column: 9, scope: !2724)
!2783 = !DILocation(line: 837, column: 35, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 836, column: 42)
!2785 = !DILocation(line: 837, column: 57, scope: !2784)
!2786 = !DILocation(line: 837, column: 14, scope: !2784)
!2787 = !DILocation(line: 801, column: 15, scope: !2724)
!2788 = !DILocation(line: 838, column: 9, scope: !2784)
!2789 = !DILocation(line: 839, column: 28, scope: !2784)
!2790 = !DILocation(line: 839, column: 9, scope: !2784)
!2791 = !DILocation(line: 840, column: 18, scope: !2784)
!2792 = !DILocation(line: 841, column: 5, scope: !2784)
!2793 = !DILocation(line: 845, column: 12, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2724, file: !3, line: 845, column: 9)
!2795 = !DILocation(line: 845, column: 18, scope: !2794)
!2796 = !DILocation(line: 845, column: 9, scope: !2724)
!2797 = !DILocation(line: 846, column: 35, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2794, file: !3, line: 845, column: 38)
!2799 = !{!442, !381, i64 2768}
!2800 = !DILocation(line: 846, column: 53, scope: !2798)
!2801 = !DILocation(line: 846, column: 14, scope: !2798)
!2802 = !DILocation(line: 847, column: 9, scope: !2798)
!2803 = !DILocation(line: 848, column: 28, scope: !2798)
!2804 = !DILocation(line: 848, column: 9, scope: !2798)
!2805 = !DILocation(line: 849, column: 18, scope: !2798)
!2806 = !DILocation(line: 850, column: 5, scope: !2798)
!2807 = !DILocation(line: 851, column: 1, scope: !2724)
!2808 = !DILocation(line: 957, column: 30, scope: !1257)
!2809 = !DILocation(line: 958, column: 12, scope: !1262)
!2810 = !DILocation(line: 958, column: 18, scope: !1262)
!2811 = !DILocation(line: 958, column: 38, scope: !1262)
!2812 = !DILocation(line: 958, column: 50, scope: !1262)
!2813 = !DILocation(line: 958, column: 9, scope: !1257)
!2814 = !DILocation(line: 959, column: 14, scope: !1257)
!2815 = !DILocation(line: 960, column: 28, scope: !1257)
!2816 = !DILocation(line: 960, column: 45, scope: !1257)
!2817 = !DILocation(line: 960, column: 5, scope: !1257)
!2818 = !DILocation(line: 961, column: 1, scope: !1257)
!2819 = distinct !DISubprogram(name: "freeClientsInAsyncFreeQueue", scope: !3, file: !3, line: 963, type: !2509, isLocal: false, isDefinition: true, scopeLine: 963, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2820)
!2820 = !{!2821, !2823}
!2821 = !DILocalVariable(name: "ln", scope: !2822, file: !3, line: 965, type: !103)
!2822 = distinct !DILexicalBlock(scope: !2819, file: !3, line: 964, column: 49)
!2823 = !DILocalVariable(name: "c", scope: !2822, file: !3, line: 966, type: !6)
!2824 = !DILocation(line: 964, column: 5, scope: !2819)
!2825 = !DILocation(line: 964, column: 12, scope: !2819)
!2826 = !DILocation(line: 965, column: 24, scope: !2822)
!2827 = !DILocation(line: 965, column: 19, scope: !2822)
!2828 = !DILocation(line: 966, column: 21, scope: !2822)
!2829 = !DILocation(line: 966, column: 17, scope: !2822)
!2830 = !DILocation(line: 968, column: 12, scope: !2822)
!2831 = !DILocation(line: 968, column: 18, scope: !2822)
!2832 = !DILocation(line: 969, column: 9, scope: !2822)
!2833 = !DILocation(line: 970, column: 28, scope: !2822)
!2834 = !DILocation(line: 970, column: 9, scope: !2822)
!2835 = distinct !{!2835, !2824, !2836}
!2836 = !DILocation(line: 971, column: 5, scope: !2819)
!2837 = !DILocation(line: 972, column: 1, scope: !2819)
!2838 = distinct !DISubprogram(name: "lookupClientByID", scope: !3, file: !3, line: 977, type: !2839, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2841)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!6, !12}
!2841 = !{!2842, !2843}
!2842 = !DILocalVariable(name: "id", arg: 1, scope: !2838, file: !3, line: 977, type: !12)
!2843 = !DILocalVariable(name: "c", scope: !2838, file: !3, line: 979, type: !6)
!2844 = !DILocation(line: 977, column: 35, scope: !2838)
!2845 = !DILocation(line: 978, column: 10, scope: !2838)
!2846 = !DILocation(line: 978, column: 8, scope: !2838)
!2847 = !DILocation(line: 979, column: 32, scope: !2838)
!2848 = !DILocation(line: 979, column: 46, scope: !2838)
!2849 = !DILocation(line: 979, column: 17, scope: !2838)
!2850 = !DILocation(line: 979, column: 13, scope: !2838)
!2851 = !DILocation(line: 980, column: 18, scope: !2838)
!2852 = !DILocation(line: 980, column: 15, scope: !2838)
!2853 = !DILocation(line: 980, column: 12, scope: !2838)
!2854 = !DILocation(line: 980, column: 5, scope: !2838)
!2855 = distinct !DISubprogram(name: "writeToClient", scope: !3, file: !3, line: 985, type: !2856, isLocal: false, isDefinition: true, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!18, !18, !6, !18}
!2858 = !{!2859, !2860, !2861, !2862, !2863, !2864, !2865}
!2859 = !DILocalVariable(name: "fd", arg: 1, scope: !2855, file: !3, line: 985, type: !18)
!2860 = !DILocalVariable(name: "c", arg: 2, scope: !2855, file: !3, line: 985, type: !6)
!2861 = !DILocalVariable(name: "handler_installed", arg: 3, scope: !2855, file: !3, line: 985, type: !18)
!2862 = !DILocalVariable(name: "nwritten", scope: !2855, file: !3, line: 986, type: !270)
!2863 = !DILocalVariable(name: "totwritten", scope: !2855, file: !3, line: 986, type: !270)
!2864 = !DILocalVariable(name: "objlen", scope: !2855, file: !3, line: 987, type: !142)
!2865 = !DILocalVariable(name: "o", scope: !2855, file: !3, line: 988, type: !399)
!2866 = !DILocation(line: 985, column: 23, scope: !2855)
!2867 = !DILocation(line: 985, column: 35, scope: !2855)
!2868 = !DILocation(line: 985, column: 42, scope: !2855)
!2869 = !DILocation(line: 986, column: 13, scope: !2855)
!2870 = !DILocation(line: 986, column: 27, scope: !2855)
!2871 = !DILocation(line: 990, column: 5, scope: !2855)
!2872 = !DILocation(line: 665, column: 15, scope: !1092, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 990, column: 11, scope: !2855)
!2874 = !DILocation(line: 664, column: 37, scope: !1092, inlinedAt: !2873)
!2875 = !DILocation(line: 665, column: 12, scope: !1092, inlinedAt: !2873)
!2876 = !DILocation(line: 665, column: 22, scope: !1092, inlinedAt: !2873)
!2877 = !DILocation(line: 665, column: 25, scope: !1092, inlinedAt: !2873)
!2878 = !DILocation(line: 665, column: 5, scope: !1092, inlinedAt: !2873)
!2879 = !DILocation(line: 991, column: 13, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 990, column: 39)
!2881 = !DILocation(line: 991, column: 23, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 991, column: 13)
!2883 = !DILocation(line: 1004, column: 17, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 1003, column: 16)
!2885 = !DILocation(line: 992, column: 43, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 991, column: 28)
!2887 = !DILocation(line: 992, column: 39, scope: !2886)
!2888 = !DILocation(line: 992, column: 51, scope: !2886)
!2889 = !DILocation(line: 992, column: 60, scope: !2886)
!2890 = !DILocation(line: 992, column: 24, scope: !2886)
!2891 = !DILocation(line: 993, column: 26, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 993, column: 17)
!2893 = !DILocation(line: 993, column: 17, scope: !2886)
!2894 = !DILocation(line: 994, column: 24, scope: !2886)
!2895 = !DILocation(line: 995, column: 24, scope: !2886)
!2896 = !DILocation(line: 999, column: 17, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2886, file: !3, line: 999, column: 17)
!2898 = !DILocation(line: 999, column: 39, scope: !2897)
!2899 = !DILocation(line: 999, column: 33, scope: !2897)
!2900 = !DILocation(line: 999, column: 17, scope: !2886)
!2901 = !DILocation(line: 1000, column: 27, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2897, file: !3, line: 999, column: 47)
!2903 = !DILocation(line: 1001, column: 28, scope: !2902)
!2904 = !DILocation(line: 1002, column: 13, scope: !2902)
!2905 = !DILocation(line: 988, column: 23, scope: !2855)
!2906 = !DILocation(line: 1005, column: 25, scope: !2884)
!2907 = !DILocation(line: 987, column: 12, scope: !2855)
!2908 = !DILocation(line: 1007, column: 24, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 1007, column: 17)
!2910 = !DILocation(line: 1007, column: 17, scope: !2884)
!2911 = !DILocation(line: 1008, column: 38, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 1007, column: 30)
!2913 = !DILocation(line: 1008, column: 32, scope: !2912)
!2914 = !DILocation(line: 1009, column: 17, scope: !2912)
!2915 = !DILocation(line: 1010, column: 17, scope: !2912)
!2916 = distinct !{!2916, !2871, !2917}
!2917 = !DILocation(line: 1045, column: 5, scope: !2855)
!2918 = !DILocation(line: 1013, column: 46, scope: !2884)
!2919 = !DILocation(line: 1013, column: 41, scope: !2884)
!2920 = !DILocation(line: 1013, column: 62, scope: !2884)
!2921 = !DILocation(line: 1013, column: 24, scope: !2884)
!2922 = !DILocation(line: 1014, column: 26, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 1014, column: 17)
!2924 = !DILocation(line: 1014, column: 17, scope: !2884)
!2925 = !DILocation(line: 1015, column: 24, scope: !2884)
!2926 = !DILocation(line: 1016, column: 24, scope: !2884)
!2927 = !DILocation(line: 1019, column: 28, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2884, file: !3, line: 1019, column: 17)
!2929 = !DILocation(line: 1019, column: 17, scope: !2884)
!2930 = !DILocation(line: 1020, column: 38, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 1019, column: 39)
!2932 = !DILocation(line: 1020, column: 32, scope: !2931)
!2933 = !DILocation(line: 1021, column: 32, scope: !2931)
!2934 = !DILocation(line: 1021, column: 38, scope: !2931)
!2935 = !DILocation(line: 1021, column: 17, scope: !2931)
!2936 = !DILocation(line: 1022, column: 28, scope: !2931)
!2937 = !DILocation(line: 1025, column: 21, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2931, file: !3, line: 1025, column: 21)
!2939 = !DILocation(line: 1025, column: 42, scope: !2938)
!2940 = !DILocation(line: 1025, column: 21, scope: !2931)
!2941 = !DILocation(line: 1026, column: 21, scope: !2938)
!2942 = !DILocation(line: 0, scope: !2884)
!2943 = !DILocation(line: 1041, column: 24, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1041, column: 13)
!2945 = !DILocation(line: 1041, column: 51, scope: !2944)
!2946 = !DILocation(line: 1042, column: 21, scope: !2944)
!2947 = !{!442, !443, i64 2704}
!2948 = !DILocation(line: 1042, column: 31, scope: !2944)
!2949 = !DILocation(line: 1042, column: 36, scope: !2944)
!2950 = !DILocation(line: 1043, column: 14, scope: !2944)
!2951 = !DILocation(line: 1043, column: 45, scope: !2944)
!2952 = !DILocation(line: 1043, column: 36, scope: !2944)
!2953 = !DILocation(line: 1043, column: 56, scope: !2944)
!2954 = !DILocation(line: 1044, column: 18, scope: !2944)
!2955 = !DILocation(line: 1044, column: 24, scope: !2944)
!2956 = !DILocation(line: 1041, column: 13, scope: !2880)
!2957 = !DILocation(line: 1046, column: 34, scope: !2855)
!2958 = !{!442, !443, i64 1248}
!2959 = !DILocation(line: 1047, column: 9, scope: !2855)
!2960 = !DILocation(line: 1057, column: 9, scope: !2855)
!2961 = !DILocation(line: 0, scope: !2855)
!2962 = !DILocation(line: 1047, column: 18, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 1047, column: 9)
!2964 = !DILocation(line: 1048, column: 13, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 1048, column: 13)
!2966 = distinct !DILexicalBlock(scope: !2963, file: !3, line: 1047, column: 25)
!2967 = !DILocation(line: 1048, column: 19, scope: !2965)
!2968 = !DILocation(line: 1048, column: 13, scope: !2966)
!2969 = !DILocation(line: 1056, column: 5, scope: !2966)
!2970 = !DILocation(line: 1052, column: 57, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2965, file: !3, line: 1050, column: 16)
!2972 = !DILocation(line: 1052, column: 48, scope: !2971)
!2973 = !DILocation(line: 1051, column: 13, scope: !2971)
!2974 = !DILocation(line: 1053, column: 13, scope: !2971)
!2975 = !DILocation(line: 1054, column: 13, scope: !2971)
!2976 = !DILocation(line: 1057, column: 20, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 1057, column: 9)
!2978 = !DILocation(line: 1062, column: 18, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 1062, column: 13)
!2980 = distinct !DILexicalBlock(scope: !2977, file: !3, line: 1057, column: 25)
!2981 = !DILocation(line: 1062, column: 24, scope: !2979)
!2982 = !DILocation(line: 1062, column: 13, scope: !2980)
!2983 = !DILocation(line: 1062, column: 70, scope: !2979)
!2984 = !DILocation(line: 1062, column: 45, scope: !2979)
!2985 = !DILocation(line: 1062, column: 61, scope: !2979)
!2986 = !DILocation(line: 1062, column: 42, scope: !2979)
!2987 = !DILocation(line: 664, column: 37, scope: !1092, inlinedAt: !2988)
!2988 = distinct !DILocation(line: 1064, column: 10, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 1064, column: 9)
!2990 = !DILocation(line: 665, column: 15, scope: !1092, inlinedAt: !2988)
!2991 = !DILocation(line: 665, column: 12, scope: !1092, inlinedAt: !2988)
!2992 = !DILocation(line: 665, column: 22, scope: !1092, inlinedAt: !2988)
!2993 = !DILocation(line: 665, column: 5, scope: !1092, inlinedAt: !2988)
!2994 = !DILocation(line: 1064, column: 9, scope: !2855)
!2995 = !DILocation(line: 665, column: 25, scope: !1092, inlinedAt: !2988)
!2996 = !DILocation(line: 1065, column: 20, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 1064, column: 38)
!2998 = !DILocation(line: 1066, column: 13, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 1066, column: 13)
!3000 = !DILocation(line: 1066, column: 13, scope: !2997)
!3001 = !DILocation(line: 1066, column: 57, scope: !2999)
!3002 = !DILocation(line: 1066, column: 63, scope: !2999)
!3003 = !DILocation(line: 1066, column: 32, scope: !2999)
!3004 = !DILocation(line: 1069, column: 16, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 1069, column: 13)
!3006 = !DILocation(line: 1069, column: 22, scope: !3005)
!3007 = !DILocation(line: 1069, column: 13, scope: !2997)
!3008 = !DILocation(line: 1070, column: 13, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3005, file: !3, line: 1069, column: 50)
!3010 = !DILocation(line: 1071, column: 13, scope: !3009)
!3011 = !DILocation(line: 0, scope: !2971)
!3012 = !DILocation(line: 1075, column: 1, scope: !2855)
!3013 = distinct !DISubprogram(name: "sendReplyToClient", scope: !3, file: !3, line: 1078, type: !744, isLocal: false, isDefinition: true, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3014)
!3014 = !{!3015, !3016, !3017, !3018}
!3015 = !DILocalVariable(name: "el", arg: 1, scope: !3013, file: !3, line: 1078, type: !746)
!3016 = !DILocalVariable(name: "fd", arg: 2, scope: !3013, file: !3, line: 1078, type: !18)
!3017 = !DILocalVariable(name: "privdata", arg: 3, scope: !3013, file: !3, line: 1078, type: !45)
!3018 = !DILocalVariable(name: "mask", arg: 4, scope: !3013, file: !3, line: 1078, type: !18)
!3019 = !DILocation(line: 1078, column: 37, scope: !3013)
!3020 = !DILocation(line: 1078, column: 45, scope: !3013)
!3021 = !DILocation(line: 1078, column: 55, scope: !3013)
!3022 = !DILocation(line: 1078, column: 69, scope: !3013)
!3023 = !DILocation(line: 1081, column: 22, scope: !3013)
!3024 = !DILocation(line: 1081, column: 5, scope: !3013)
!3025 = !DILocation(line: 1082, column: 1, scope: !3013)
!3026 = distinct !DISubprogram(name: "handleClientsWithPendingWrites", scope: !3, file: !3, line: 1088, type: !3027, isLocal: false, isDefinition: true, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!18}
!3029 = !{!3030, !3036, !3037, !3038, !3040}
!3030 = !DILocalVariable(name: "li", scope: !3026, file: !3, line: 1089, type: !3031)
!3031 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !99, line: 45, baseType: !3032)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !99, line: 42, size: 128, elements: !3033)
!3033 = !{!3034, !3035}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3032, file: !99, line: 43, baseType: !103, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !3032, file: !99, line: 44, baseType: !18, size: 32, offset: 64)
!3036 = !DILocalVariable(name: "ln", scope: !3026, file: !3, line: 1090, type: !103)
!3037 = !DILocalVariable(name: "processed", scope: !3026, file: !3, line: 1091, type: !18)
!3038 = !DILocalVariable(name: "c", scope: !3039, file: !3, line: 1095, type: !6)
!3039 = distinct !DILexicalBlock(scope: !3026, file: !3, line: 1094, column: 33)
!3040 = !DILocalVariable(name: "ae_flags", scope: !3041, file: !3, line: 1109, type: !18)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 1108, column: 41)
!3042 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 1108, column: 13)
!3043 = !DILocation(line: 1089, column: 5, scope: !3026)
!3044 = !DILocation(line: 1091, column: 21, scope: !3026)
!3045 = !DILocation(line: 1091, column: 9, scope: !3026)
!3046 = !DILocation(line: 1089, column: 14, scope: !3026)
!3047 = !DILocation(line: 1093, column: 5, scope: !3026)
!3048 = !DILocation(line: 1094, column: 5, scope: !3026)
!3049 = !DILocation(line: 1094, column: 17, scope: !3026)
!3050 = !DILocation(line: 1090, column: 15, scope: !3026)
!3051 = !DILocation(line: 1095, column: 21, scope: !3039)
!3052 = !DILocation(line: 1096, column: 12, scope: !3039)
!3053 = !DILocation(line: 1096, column: 18, scope: !3039)
!3054 = !DILocation(line: 1097, column: 28, scope: !3039)
!3055 = !DILocation(line: 1097, column: 9, scope: !3039)
!3056 = !DILocation(line: 1101, column: 16, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 1101, column: 13)
!3058 = !DILocation(line: 1101, column: 22, scope: !3057)
!3059 = !DILocation(line: 1101, column: 13, scope: !3039)
!3060 = distinct !{!3060, !3048, !3061}
!3061 = !DILocation(line: 1126, column: 5, scope: !3026)
!3062 = !DILocation(line: 1095, column: 17, scope: !3039)
!3063 = !DILocation(line: 1104, column: 30, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3039, file: !3, line: 1104, column: 13)
!3065 = !DILocation(line: 1104, column: 13, scope: !3064)
!3066 = !DILocation(line: 1104, column: 38, scope: !3064)
!3067 = !DILocation(line: 1104, column: 13, scope: !3039)
!3068 = !DILocation(line: 664, column: 37, scope: !1092, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 1108, column: 13, scope: !3042)
!3070 = !DILocation(line: 665, column: 15, scope: !1092, inlinedAt: !3069)
!3071 = !DILocation(line: 665, column: 12, scope: !1092, inlinedAt: !3069)
!3072 = !DILocation(line: 665, column: 22, scope: !1092, inlinedAt: !3069)
!3073 = !DILocation(line: 665, column: 5, scope: !1092, inlinedAt: !3069)
!3074 = !DILocation(line: 1108, column: 13, scope: !3039)
!3075 = !DILocation(line: 665, column: 25, scope: !1092, inlinedAt: !3069)
!3076 = !DILocation(line: 1109, column: 17, scope: !3041)
!3077 = !DILocation(line: 1115, column: 24, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 1115, column: 17)
!3079 = !{!442, !378, i64 1880}
!3080 = !DILocation(line: 1115, column: 34, scope: !3078)
!3081 = !DILocation(line: 1116, column: 24, scope: !3078)
!3082 = !DILocation(line: 1116, column: 34, scope: !3078)
!3083 = !DILocation(line: 1115, column: 44, scope: !3078)
!3084 = !DILocation(line: 1119, column: 13, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3078, file: !3, line: 1117, column: 13)
!3086 = !DILocation(line: 0, scope: !3041)
!3087 = !DILocation(line: 1120, column: 42, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 1120, column: 17)
!3089 = !DILocation(line: 1120, column: 49, scope: !3088)
!3090 = !DILocation(line: 1120, column: 17, scope: !3088)
!3091 = !DILocation(line: 1121, column: 39, scope: !3088)
!3092 = !DILocation(line: 1120, column: 17, scope: !3041)
!3093 = !DILocation(line: 957, column: 30, scope: !1257, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 1123, column: 21, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 1122, column: 13)
!3096 = !DILocation(line: 958, column: 12, scope: !1262, inlinedAt: !3094)
!3097 = !DILocation(line: 958, column: 18, scope: !1262, inlinedAt: !3094)
!3098 = !DILocation(line: 958, column: 38, scope: !1262, inlinedAt: !3094)
!3099 = !DILocation(line: 958, column: 50, scope: !1262, inlinedAt: !3094)
!3100 = !DILocation(line: 958, column: 9, scope: !1257, inlinedAt: !3094)
!3101 = !DILocation(line: 959, column: 14, scope: !1257, inlinedAt: !3094)
!3102 = !DILocation(line: 960, column: 28, scope: !1257, inlinedAt: !3094)
!3103 = !DILocation(line: 960, column: 5, scope: !1257, inlinedAt: !3094)
!3104 = !DILocation(line: 961, column: 1, scope: !1257, inlinedAt: !3094)
!3105 = !DILocation(line: 1124, column: 13, scope: !3095)
!3106 = !DILocation(line: 1125, column: 9, scope: !3041)
!3107 = !DILocation(line: 0, scope: !3057)
!3108 = !DILocation(line: 1128, column: 1, scope: !3026)
!3109 = !DILocation(line: 1127, column: 5, scope: !3026)
!3110 = distinct !DISubprogram(name: "resetClient", scope: !3, file: !3, line: 1131, type: !4, isLocal: false, isDefinition: true, scopeLine: 1131, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3111)
!3111 = !{!3112, !3113}
!3112 = !DILocalVariable(name: "c", arg: 1, scope: !3110, file: !3, line: 1131, type: !6)
!3113 = !DILocalVariable(name: "prevcmd", scope: !3110, file: !3, line: 1132, type: !157)
!3114 = !DILocation(line: 1131, column: 26, scope: !3110)
!3115 = !DILocation(line: 1132, column: 36, scope: !3110)
!3116 = !DILocation(line: 1132, column: 33, scope: !3110)
!3117 = !DILocation(line: 1132, column: 50, scope: !3110)
!3118 = !{!1562, !381, i64 8}
!3119 = !DILocation(line: 779, column: 36, scope: !2599, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 1134, column: 5, scope: !3110)
!3121 = !DILocation(line: 780, column: 9, scope: !2599, inlinedAt: !3120)
!3122 = !DILocation(line: 781, column: 10, scope: !2606, inlinedAt: !3120)
!3123 = !DILocation(line: 781, column: 24, scope: !2608, inlinedAt: !3120)
!3124 = !DILocation(line: 781, column: 19, scope: !2608, inlinedAt: !3120)
!3125 = !DILocation(line: 781, column: 5, scope: !2606, inlinedAt: !3120)
!3126 = !DILocation(line: 782, column: 25, scope: !2608, inlinedAt: !3120)
!3127 = !DILocation(line: 782, column: 22, scope: !2608, inlinedAt: !3120)
!3128 = !DILocation(line: 782, column: 9, scope: !2608, inlinedAt: !3120)
!3129 = !DILocation(line: 781, column: 31, scope: !2608, inlinedAt: !3120)
!3130 = !DILocation(line: 781, column: 5, scope: !2608, inlinedAt: !3120)
!3131 = !DILocation(line: 783, column: 13, scope: !2599, inlinedAt: !3120)
!3132 = !DILocation(line: 784, column: 12, scope: !2599, inlinedAt: !3120)
!3133 = !DILocation(line: 785, column: 1, scope: !2599, inlinedAt: !3120)
!3134 = !DILocation(line: 1135, column: 8, scope: !3110)
!3135 = !DILocation(line: 1135, column: 16, scope: !3110)
!3136 = !DILocation(line: 1136, column: 8, scope: !3110)
!3137 = !DILocation(line: 1136, column: 21, scope: !3110)
!3138 = !DILocation(line: 1137, column: 8, scope: !3110)
!3139 = !DILocation(line: 1137, column: 16, scope: !3110)
!3140 = !DILocation(line: 1141, column: 14, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 1141, column: 9)
!3142 = !DILocation(line: 1141, column: 20, scope: !3141)
!3143 = !DILocation(line: 1141, column: 36, scope: !3141)
!3144 = !DILocation(line: 1142, column: 18, scope: !3141)
!3145 = !DILocation(line: 1142, column: 9, scope: !3141)
!3146 = !DILocation(line: 1147, column: 14, scope: !3110)
!3147 = !DILocation(line: 1148, column: 18, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 1148, column: 9)
!3149 = !DILocation(line: 1148, column: 9, scope: !3110)
!3150 = !DILocation(line: 1150, column: 18, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 1148, column: 44)
!3152 = !DILocation(line: 1151, column: 5, scope: !3151)
!3153 = !DILocation(line: 1152, column: 1, scope: !3110)
!3154 = distinct !DISubprogram(name: "protectClient", scope: !3, file: !3, line: 1167, type: !4, isLocal: false, isDefinition: true, scopeLine: 1167, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3155)
!3155 = !{!3156}
!3156 = !DILocalVariable(name: "c", arg: 1, scope: !3154, file: !3, line: 1167, type: !6)
!3157 = !DILocation(line: 1167, column: 28, scope: !3154)
!3158 = !DILocation(line: 1168, column: 8, scope: !3154)
!3159 = !DILocation(line: 1168, column: 14, scope: !3154)
!3160 = !DILocation(line: 1169, column: 30, scope: !3154)
!3161 = !DILocation(line: 1169, column: 36, scope: !3154)
!3162 = !DILocation(line: 1169, column: 5, scope: !3154)
!3163 = !DILocation(line: 1170, column: 30, scope: !3154)
!3164 = !DILocation(line: 1170, column: 36, scope: !3154)
!3165 = !DILocation(line: 1170, column: 5, scope: !3154)
!3166 = !DILocation(line: 1171, column: 1, scope: !3154)
!3167 = distinct !DISubprogram(name: "unprotectClient", scope: !3, file: !3, line: 1174, type: !4, isLocal: false, isDefinition: true, scopeLine: 1174, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3168)
!3168 = !{!3169}
!3169 = !DILocalVariable(name: "c", arg: 1, scope: !3167, file: !3, line: 1174, type: !6)
!3170 = !DILocation(line: 1174, column: 30, scope: !3167)
!3171 = !DILocation(line: 1175, column: 12, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 1175, column: 9)
!3173 = !DILocation(line: 1175, column: 18, scope: !3172)
!3174 = !DILocation(line: 1175, column: 9, scope: !3167)
!3175 = !DILocation(line: 1176, column: 18, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 1175, column: 38)
!3177 = !DILocation(line: 1177, column: 34, scope: !3176)
!3178 = !DILocation(line: 1177, column: 40, scope: !3176)
!3179 = !DILocation(line: 1177, column: 75, scope: !3176)
!3180 = !DILocation(line: 1177, column: 9, scope: !3176)
!3181 = !DILocation(line: 664, column: 37, scope: !1092, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 1178, column: 13, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3176, file: !3, line: 1178, column: 13)
!3184 = !DILocation(line: 665, column: 15, scope: !1092, inlinedAt: !3182)
!3185 = !DILocation(line: 665, column: 12, scope: !1092, inlinedAt: !3182)
!3186 = !DILocation(line: 665, column: 22, scope: !1092, inlinedAt: !3182)
!3187 = !DILocation(line: 665, column: 5, scope: !1092, inlinedAt: !3182)
!3188 = !DILocation(line: 1178, column: 13, scope: !3176)
!3189 = !DILocation(line: 665, column: 25, scope: !1092, inlinedAt: !3182)
!3190 = !DILocation(line: 176, column: 40, scope: !1043, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 1178, column: 41, scope: !3183)
!3192 = !DILocation(line: 180, column: 14, scope: !1048, inlinedAt: !3191)
!3193 = !DILocation(line: 180, column: 20, scope: !1048, inlinedAt: !3191)
!3194 = !DILocation(line: 180, column: 44, scope: !1048, inlinedAt: !3191)
!3195 = !DILocation(line: 181, column: 13, scope: !1048, inlinedAt: !3191)
!3196 = !DILocation(line: 181, column: 23, scope: !1048, inlinedAt: !3191)
!3197 = !DILocation(line: 181, column: 42, scope: !1048, inlinedAt: !3191)
!3198 = !DILocation(line: 182, column: 24, scope: !1048, inlinedAt: !3191)
!3199 = !DILocation(line: 182, column: 46, scope: !1048, inlinedAt: !3191)
!3200 = !DILocation(line: 182, column: 53, scope: !1048, inlinedAt: !3191)
!3201 = !DILocation(line: 182, column: 50, scope: !1048, inlinedAt: !3191)
!3202 = !DILocation(line: 180, column: 9, scope: !1043, inlinedAt: !3191)
!3203 = !DILocation(line: 190, column: 18, scope: !1062, inlinedAt: !3191)
!3204 = !DILocation(line: 191, column: 32, scope: !1062, inlinedAt: !3191)
!3205 = !DILocation(line: 191, column: 9, scope: !1062, inlinedAt: !3191)
!3206 = !DILocation(line: 192, column: 5, scope: !1062, inlinedAt: !3191)
!3207 = !DILocation(line: 193, column: 1, scope: !1043, inlinedAt: !3191)
!3208 = !DILocation(line: 1178, column: 41, scope: !3183)
!3209 = !DILocation(line: 1180, column: 1, scope: !3167)
!3210 = distinct !DISubprogram(name: "processInlineBuffer", scope: !3, file: !3, line: 1189, type: !1070, isLocal: false, isDefinition: true, scopeLine: 1189, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3211)
!3211 = !{!3212, !3213, !3214, !3215, !3216, !3217, !3219, !3220}
!3212 = !DILocalVariable(name: "c", arg: 1, scope: !3210, file: !3, line: 1189, type: !6)
!3213 = !DILocalVariable(name: "newline", scope: !3210, file: !3, line: 1190, type: !139)
!3214 = !DILocalVariable(name: "argc", scope: !3210, file: !3, line: 1191, type: !18)
!3215 = !DILocalVariable(name: "j", scope: !3210, file: !3, line: 1191, type: !18)
!3216 = !DILocalVariable(name: "linefeed_chars", scope: !3210, file: !3, line: 1191, type: !18)
!3217 = !DILocalVariable(name: "argv", scope: !3210, file: !3, line: 1192, type: !3218)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!3219 = !DILocalVariable(name: "aux", scope: !3210, file: !3, line: 1192, type: !137)
!3220 = !DILocalVariable(name: "querylen", scope: !3210, file: !3, line: 1193, type: !142)
!3221 = !DILocation(line: 1189, column: 33, scope: !3210)
!3222 = !DILocation(line: 1191, column: 5, scope: !3210)
!3223 = !DILocation(line: 1191, column: 18, scope: !3210)
!3224 = !DILocation(line: 1196, column: 25, scope: !3210)
!3225 = !DILocation(line: 1196, column: 37, scope: !3210)
!3226 = !DILocation(line: 1196, column: 33, scope: !3210)
!3227 = !DILocation(line: 1196, column: 15, scope: !3210)
!3228 = !DILocation(line: 1190, column: 11, scope: !3210)
!3229 = !DILocation(line: 1199, column: 17, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 1199, column: 9)
!3231 = !DILocation(line: 1199, column: 9, scope: !3210)
!3232 = !DILocation(line: 1200, column: 23, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !3, line: 1200, column: 13)
!3234 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 1199, column: 26)
!3235 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 1200, column: 13, scope: !3233)
!3237 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !3236)
!3238 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !3236)
!3239 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !3236)
!3240 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !3236)
!3241 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !3236)
!3242 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !3236)
!3243 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !3236)
!3244 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !3236)
!3245 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !3236)
!3246 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !3236)
!3247 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !3236)
!3248 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !3236)
!3249 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !3236)
!3250 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !3236)
!3251 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !3236)
!3252 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !3236)
!3253 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !3236)
!3254 = !DILocation(line: 0, scope: !855, inlinedAt: !3236)
!3255 = !DILocation(line: 0, scope: !3233)
!3256 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !3236)
!3257 = !DILocation(line: 1200, column: 36, scope: !3233)
!3258 = !DILocation(line: 1200, column: 32, scope: !3233)
!3259 = !DILocation(line: 1200, column: 43, scope: !3233)
!3260 = !DILocation(line: 1200, column: 13, scope: !3234)
!3261 = !DILocation(line: 384, column: 28, scope: !1567, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 1201, column: 13, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3233, file: !3, line: 1200, column: 68)
!3264 = !DILocation(line: 384, column: 43, scope: !1567, inlinedAt: !3262)
!3265 = !DILocation(line: 385, column: 31, scope: !1567, inlinedAt: !3262)
!3266 = !DILocation(line: 385, column: 5, scope: !1567, inlinedAt: !3262)
!3267 = !DILocation(line: 386, column: 1, scope: !1567, inlinedAt: !3262)
!3268 = !DILocation(line: 1202, column: 13, scope: !3263)
!3269 = !DILocation(line: 1203, column: 9, scope: !3263)
!3270 = !DILocation(line: 1208, column: 17, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 1208, column: 9)
!3272 = !DILocation(line: 1208, column: 34, scope: !3271)
!3273 = !DILocation(line: 1208, column: 46, scope: !3271)
!3274 = !DILocation(line: 1208, column: 42, scope: !3271)
!3275 = !DILocation(line: 1208, column: 28, scope: !3271)
!3276 = !DILocation(line: 1208, column: 53, scope: !3271)
!3277 = !DILocation(line: 1208, column: 65, scope: !3271)
!3278 = !DILocation(line: 1208, column: 56, scope: !3271)
!3279 = !DILocation(line: 1208, column: 69, scope: !3271)
!3280 = !DILocation(line: 1208, column: 9, scope: !3210)
!3281 = !DILocation(line: 1209, column: 9, scope: !3271)
!3282 = !DILocation(line: 0, scope: !3210)
!3283 = !DILocation(line: 1212, column: 23, scope: !3210)
!3284 = !DILocation(line: 1193, column: 12, scope: !3210)
!3285 = !DILocation(line: 1213, column: 11, scope: !3210)
!3286 = !DILocation(line: 1192, column: 16, scope: !3210)
!3287 = !DILocation(line: 1191, column: 9, scope: !3210)
!3288 = !DILocation(line: 1214, column: 12, scope: !3210)
!3289 = !DILocation(line: 1192, column: 10, scope: !3210)
!3290 = !DILocation(line: 1215, column: 5, scope: !3210)
!3291 = !DILocation(line: 1216, column: 14, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 1216, column: 9)
!3293 = !DILocation(line: 1216, column: 9, scope: !3210)
!3294 = !DILocation(line: 384, column: 28, scope: !1567, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 1217, column: 9, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 1216, column: 23)
!3297 = !DILocation(line: 384, column: 43, scope: !1567, inlinedAt: !3295)
!3298 = !DILocation(line: 385, column: 31, scope: !1567, inlinedAt: !3295)
!3299 = !DILocation(line: 385, column: 5, scope: !1567, inlinedAt: !3295)
!3300 = !DILocation(line: 386, column: 1, scope: !1567, inlinedAt: !3295)
!3301 = !DILocation(line: 1218, column: 9, scope: !3296)
!3302 = !DILocation(line: 1219, column: 9, scope: !3296)
!3303 = !DILocation(line: 1225, column: 18, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 1225, column: 9)
!3305 = !DILocation(line: 1225, column: 23, scope: !3304)
!3306 = !DILocation(line: 1225, column: 29, scope: !3304)
!3307 = !DILocation(line: 1225, column: 35, scope: !3304)
!3308 = !DILocation(line: 1225, column: 9, scope: !3210)
!3309 = !DILocation(line: 1226, column: 35, scope: !3304)
!3310 = !DILocation(line: 1226, column: 12, scope: !3304)
!3311 = !DILocation(line: 1226, column: 26, scope: !3304)
!3312 = !{!456, !443, i64 232}
!3313 = !DILocation(line: 1226, column: 9, scope: !3304)
!3314 = !DILocation(line: 1229, column: 26, scope: !3210)
!3315 = !DILocation(line: 1229, column: 15, scope: !3210)
!3316 = !DILocation(line: 1232, column: 9, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 1232, column: 9)
!3318 = !DILocation(line: 1232, column: 9, scope: !3210)
!3319 = !DILocation(line: 1238, column: 13, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 1238, column: 5)
!3321 = !DILocation(line: 1238, column: 18, scope: !3320)
!3322 = !DILocation(line: 1191, column: 15, scope: !3210)
!3323 = !DILocation(line: 1238, column: 10, scope: !3320)
!3324 = !DILocation(line: 1238, column: 5, scope: !3320)
!3325 = !DILocation(line: 1233, column: 16, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !3, line: 1233, column: 13)
!3327 = distinct !DILexicalBlock(scope: !3317, file: !3, line: 1232, column: 15)
!3328 = !DILocation(line: 1233, column: 13, scope: !3326)
!3329 = !DILocation(line: 1233, column: 13, scope: !3327)
!3330 = !DILocation(line: 1233, column: 28, scope: !3326)
!3331 = !DILocation(line: 1233, column: 22, scope: !3326)
!3332 = !DILocation(line: 1234, column: 41, scope: !3327)
!3333 = !DILocation(line: 1234, column: 40, scope: !3327)
!3334 = !DILocation(line: 1234, column: 19, scope: !3327)
!3335 = !DILocation(line: 1234, column: 17, scope: !3327)
!3336 = !DILocation(line: 1235, column: 5, scope: !3327)
!3337 = !DILocation(line: 1238, column: 34, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3320, file: !3, line: 1238, column: 5)
!3339 = !DILocation(line: 1239, column: 20, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 1239, column: 13)
!3341 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 1238, column: 45)
!3342 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 1239, column: 13, scope: !3340)
!3344 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !3343)
!3345 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !3343)
!3346 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !3343)
!3347 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !3343)
!3348 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !3343)
!3349 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !3343)
!3350 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !3343)
!3351 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !3343)
!3352 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !3343)
!3353 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !3343)
!3354 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !3343)
!3355 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !3343)
!3356 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !3343)
!3357 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !3343)
!3358 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !3343)
!3359 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !3343)
!3360 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !3343)
!3361 = !DILocation(line: 101, column: 5, scope: !843, inlinedAt: !3343)
!3362 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !3343)
!3363 = !DILocation(line: 1239, column: 13, scope: !3341)
!3364 = !DILocation(line: 0, scope: !855, inlinedAt: !3343)
!3365 = !DILocation(line: 0, scope: !3340)
!3366 = !DILocation(line: 1239, column: 13, scope: !3340)
!3367 = !DILocation(line: 1240, column: 32, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1239, column: 30)
!3369 = !DILocation(line: 1240, column: 16, scope: !3368)
!3370 = !DILocation(line: 1240, column: 24, scope: !3368)
!3371 = !DILocation(line: 1240, column: 13, scope: !3368)
!3372 = !DILocation(line: 1240, column: 30, scope: !3368)
!3373 = !DILocation(line: 1241, column: 20, scope: !3368)
!3374 = !DILocation(line: 1242, column: 9, scope: !3368)
!3375 = !DILocation(line: 1243, column: 13, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1242, column: 16)
!3377 = !DILocation(line: 1238, column: 41, scope: !3338)
!3378 = !DILocation(line: 1238, column: 5, scope: !3338)
!3379 = !DILocation(line: 1238, column: 32, scope: !3338)
!3380 = distinct !{!3380, !3324, !3381}
!3381 = !DILocation(line: 1245, column: 5, scope: !3320)
!3382 = !DILocation(line: 57, column: 10, scope: !3383, inlinedAt: !3387)
!3383 = distinct !DISubprogram(name: "s_free", scope: !3384, file: !3384, line: 56, type: !118, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3385)
!3384 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sdsalloc.h", directory: "/root/.unikraft/apps/redis/build")
!3385 = !{!3386}
!3386 = !DILocalVariable(name: "ptr", arg: 1, scope: !3383, file: !3384, line: 56, type: !45)
!3387 = distinct !DILocation(line: 1246, column: 5, scope: !3210)
!3388 = !DILocation(line: 237, column: 45, scope: !2698, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 57, column: 2, scope: !3383, inlinedAt: !3387)
!3390 = !DILocation(line: 231, column: 48, scope: !2704, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 239, column: 2, scope: !2698, inlinedAt: !3389)
!3392 = !DILocation(line: 233, column: 2, scope: !2710, inlinedAt: !3391)
!3393 = !DILocation(line: 233, column: 2, scope: !2711, inlinedAt: !3391)
!3394 = !DILocation(line: 233, column: 2, scope: !2714, inlinedAt: !3391)
!3395 = !DILocation(line: 1246, column: 12, scope: !3210)
!3396 = !DILocation(line: 231, column: 57, scope: !2704, inlinedAt: !3391)
!3397 = !DILocation(line: 237, column: 54, scope: !2698, inlinedAt: !3389)
!3398 = !DILocation(line: 56, column: 33, scope: !3383, inlinedAt: !3387)
!3399 = !DILocation(line: 234, column: 5, scope: !2704, inlinedAt: !3391)
!3400 = !DILocation(line: 234, column: 2, scope: !2704, inlinedAt: !3391)
!3401 = !DILocation(line: 235, column: 1, scope: !2704, inlinedAt: !3391)
!3402 = !DILocation(line: 240, column: 1, scope: !2698, inlinedAt: !3389)
!3403 = !DILocation(line: 58, column: 1, scope: !3383, inlinedAt: !3387)
!3404 = !DILocation(line: 1247, column: 5, scope: !3210)
!3405 = !DILocation(line: 0, scope: !3234)
!3406 = !DILocation(line: 1248, column: 1, scope: !3210)
!3407 = distinct !DISubprogram(name: "setProtocolError", scope: !3, file: !3, line: 1253, type: !3408, isLocal: true, isDefinition: true, scopeLine: 1253, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3410)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{null, !317, !6}
!3410 = !{!3411, !3412, !3413, !3416, !3420}
!3411 = !DILocalVariable(name: "errstr", arg: 1, scope: !3407, file: !3, line: 1253, type: !317)
!3412 = !DILocalVariable(name: "c", arg: 2, scope: !3407, file: !3, line: 1253, type: !6)
!3413 = !DILocalVariable(name: "client", scope: !3414, file: !3, line: 1255, type: !137)
!3414 = distinct !DILexicalBlock(scope: !3415, file: !3, line: 1254, column: 41)
!3415 = distinct !DILexicalBlock(scope: !3407, file: !3, line: 1254, column: 9)
!3416 = !DILocalVariable(name: "buf", scope: !3414, file: !3, line: 1258, type: !3417)
!3417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 2048, elements: !3418)
!3418 = !{!3419}
!3419 = !DISubrange(count: 256)
!3420 = !DILocalVariable(name: "p", scope: !3414, file: !3, line: 1266, type: !139)
!3421 = !DILocation(line: 1253, column: 42, scope: !3407)
!3422 = !DILocation(line: 1253, column: 58, scope: !3407)
!3423 = !DILocation(line: 1254, column: 16, scope: !3415)
!3424 = !{!442, !378, i64 1728}
!3425 = !DILocation(line: 1254, column: 26, scope: !3415)
!3426 = !DILocation(line: 1254, column: 9, scope: !3407)
!3427 = !DILocation(line: 1255, column: 42, scope: !3414)
!3428 = !DILocation(line: 1255, column: 22, scope: !3414)
!3429 = !DILocation(line: 1255, column: 13, scope: !3414)
!3430 = !DILocation(line: 1258, column: 9, scope: !3414)
!3431 = !DILocation(line: 1258, column: 14, scope: !3414)
!3432 = !DILocation(line: 1259, column: 23, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 1259, column: 13)
!3434 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 1259, column: 13, scope: !3433)
!3436 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !3435)
!3437 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !3435)
!3438 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !3435)
!3439 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !3435)
!3440 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !3435)
!3441 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !3435)
!3442 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !3435)
!3443 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !3435)
!3444 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !3435)
!3445 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !3435)
!3446 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !3435)
!3447 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !3435)
!3448 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !3435)
!3449 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !3435)
!3450 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !3435)
!3451 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !3435)
!3452 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !3435)
!3453 = !DILocation(line: 0, scope: !855, inlinedAt: !3435)
!3454 = !DILocation(line: 0, scope: !3433)
!3455 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !3435)
!3456 = !DILocation(line: 1259, column: 36, scope: !3433)
!3457 = !DILocation(line: 1259, column: 32, scope: !3433)
!3458 = !DILocation(line: 1259, column: 43, scope: !3433)
!3459 = !DILocation(line: 0, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 1261, column: 16)
!3461 = !DILocation(line: 1259, column: 13, scope: !3414)
!3462 = !DILocation(line: 1260, column: 13, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 1259, column: 61)
!3464 = !DILocation(line: 1261, column: 9, scope: !3463)
!3465 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !3466)
!3466 = distinct !DILocation(line: 1262, column: 157, scope: !3460)
!3467 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !3466)
!3468 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !3466)
!3469 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !3466)
!3470 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 1262, column: 233, scope: !3460)
!3472 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !3471)
!3473 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !3471)
!3474 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !3466)
!3475 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !3466)
!3476 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !3471)
!3477 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !3466)
!3478 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !3466)
!3479 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !3471)
!3480 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !3466)
!3481 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !3466)
!3482 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !3471)
!3483 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !3466)
!3484 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !3466)
!3485 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !3471)
!3486 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !3466)
!3487 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !3471)
!3488 = !DILocation(line: 1262, column: 176, scope: !3460)
!3489 = !DILocation(line: 1262, column: 186, scope: !3460)
!3490 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !3471)
!3491 = !DILocation(line: 1262, column: 232, scope: !3460)
!3492 = !DILocation(line: 1262, column: 252, scope: !3460)
!3493 = !DILocation(line: 1262, column: 13, scope: !3460)
!3494 = !DILocation(line: 1266, column: 15, scope: !3414)
!3495 = !DILocation(line: 1267, column: 9, scope: !3414)
!3496 = !DILocation(line: 1267, column: 16, scope: !3414)
!3497 = !DILocation(line: 1267, column: 19, scope: !3414)
!3498 = !DILocation(line: 1268, column: 18, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3500, file: !3, line: 1268, column: 17)
!3500 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 1267, column: 28)
!3501 = !DILocation(line: 1268, column: 17, scope: !3500)
!3502 = !DILocation(line: 1268, column: 34, scope: !3499)
!3503 = !DILocation(line: 1268, column: 31, scope: !3499)
!3504 = !DILocation(line: 1269, column: 14, scope: !3500)
!3505 = distinct !{!3505, !3495, !3506}
!3506 = !DILocation(line: 1270, column: 9, scope: !3414)
!3507 = !DILocation(line: 1273, column: 9, scope: !3414)
!3508 = !DILocation(line: 1275, column: 9, scope: !3414)
!3509 = !DILocation(line: 1276, column: 5, scope: !3415)
!3510 = !DILocation(line: 1276, column: 5, scope: !3414)
!3511 = !DILocation(line: 1277, column: 8, scope: !3407)
!3512 = !DILocation(line: 1277, column: 14, scope: !3407)
!3513 = !DILocation(line: 1278, column: 1, scope: !3407)
!3514 = distinct !DISubprogram(name: "processMultibulkBuffer", scope: !3, file: !3, line: 1291, type: !1070, isLocal: false, isDefinition: true, scopeLine: 1291, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3515)
!3515 = !{!3516, !3517, !3518, !3519}
!3516 = !DILocalVariable(name: "c", arg: 1, scope: !3514, file: !3, line: 1291, type: !6)
!3517 = !DILocalVariable(name: "newline", scope: !3514, file: !3, line: 1292, type: !139)
!3518 = !DILocalVariable(name: "ok", scope: !3514, file: !3, line: 1293, type: !18)
!3519 = !DILocalVariable(name: "ll", scope: !3514, file: !3, line: 1294, type: !95)
!3520 = !DILocation(line: 1291, column: 36, scope: !3514)
!3521 = !DILocation(line: 1292, column: 11, scope: !3514)
!3522 = !DILocation(line: 1294, column: 5, scope: !3514)
!3523 = !DILocation(line: 1296, column: 12, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 1296, column: 9)
!3525 = !DILocation(line: 1296, column: 25, scope: !3524)
!3526 = !DILocation(line: 1296, column: 9, scope: !3514)
!3527 = !DILocation(line: 1298, column: 9, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 1296, column: 31)
!3529 = !DILocation(line: 1301, column: 29, scope: !3528)
!3530 = !DILocation(line: 1301, column: 41, scope: !3528)
!3531 = !DILocation(line: 1301, column: 37, scope: !3528)
!3532 = !DILocation(line: 1301, column: 19, scope: !3528)
!3533 = !DILocation(line: 1302, column: 21, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 1302, column: 13)
!3535 = !DILocation(line: 1302, column: 13, scope: !3528)
!3536 = !DILocation(line: 0, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 1311, column: 13)
!3538 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 1303, column: 17, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 1303, column: 17)
!3541 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 1302, column: 30)
!3542 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !3539)
!3543 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !3539)
!3544 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !3539)
!3545 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !3539)
!3546 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !3539)
!3547 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !3539)
!3548 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !3539)
!3549 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !3539)
!3550 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !3539)
!3551 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !3539)
!3552 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !3539)
!3553 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !3539)
!3554 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !3539)
!3555 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !3539)
!3556 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !3539)
!3557 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !3539)
!3558 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !3539)
!3559 = !DILocation(line: 0, scope: !855, inlinedAt: !3539)
!3560 = !DILocation(line: 0, scope: !3540)
!3561 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !3539)
!3562 = !DILocation(line: 1303, column: 40, scope: !3540)
!3563 = !DILocation(line: 1303, column: 36, scope: !3540)
!3564 = !DILocation(line: 1303, column: 47, scope: !3540)
!3565 = !DILocation(line: 1303, column: 17, scope: !3541)
!3566 = !DILocation(line: 384, column: 28, scope: !1567, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 1304, column: 17, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 1303, column: 72)
!3569 = !DILocation(line: 384, column: 43, scope: !1567, inlinedAt: !3567)
!3570 = !DILocation(line: 385, column: 31, scope: !1567, inlinedAt: !3567)
!3571 = !DILocation(line: 385, column: 5, scope: !1567, inlinedAt: !3567)
!3572 = !DILocation(line: 386, column: 1, scope: !1567, inlinedAt: !3567)
!3573 = !DILocation(line: 1305, column: 17, scope: !3568)
!3574 = !DILocation(line: 1306, column: 13, scope: !3568)
!3575 = !DILocation(line: 1307, column: 13, scope: !3541)
!3576 = !DILocation(line: 1311, column: 37, scope: !3537)
!3577 = !DILocation(line: 1311, column: 33, scope: !3537)
!3578 = !DILocation(line: 1311, column: 20, scope: !3537)
!3579 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !3580)
!3580 = distinct !DILocation(line: 1311, column: 57, scope: !3537)
!3581 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !3580)
!3582 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !3580)
!3583 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !3580)
!3584 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !3580)
!3585 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !3580)
!3586 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !3580)
!3587 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !3580)
!3588 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !3580)
!3589 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !3580)
!3590 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !3580)
!3591 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !3580)
!3592 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !3580)
!3593 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !3580)
!3594 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !3580)
!3595 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !3580)
!3596 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !3580)
!3597 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !3580)
!3598 = !DILocation(line: 0, scope: !855, inlinedAt: !3580)
!3599 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !3580)
!3600 = !DILocation(line: 1311, column: 76, scope: !3537)
!3601 = !DILocation(line: 1311, column: 86, scope: !3537)
!3602 = !DILocation(line: 1311, column: 45, scope: !3537)
!3603 = !DILocation(line: 1311, column: 13, scope: !3528)
!3604 = !DILocation(line: 1312, column: 13, scope: !3537)
!3605 = !DILocation(line: 1316, column: 9, scope: !3528)
!3606 = !DILocation(line: 1317, column: 35, scope: !3528)
!3607 = !DILocation(line: 1317, column: 37, scope: !3528)
!3608 = !DILocation(line: 1317, column: 55, scope: !3528)
!3609 = !DILocation(line: 1294, column: 15, scope: !3514)
!3610 = !DILocation(line: 1317, column: 14, scope: !3528)
!3611 = !DILocation(line: 1293, column: 9, scope: !3514)
!3612 = !DILocation(line: 1318, column: 14, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 1318, column: 13)
!3614 = !DILocation(line: 1318, column: 20, scope: !3613)
!3615 = !DILocation(line: 1318, column: 23, scope: !3613)
!3616 = !DILocation(line: 1318, column: 17, scope: !3613)
!3617 = !DILocation(line: 384, column: 28, scope: !1567, inlinedAt: !3618)
!3618 = distinct !DILocation(line: 1319, column: 13, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3613, file: !3, line: 1318, column: 36)
!3620 = !DILocation(line: 384, column: 43, scope: !1567, inlinedAt: !3618)
!3621 = !DILocation(line: 385, column: 31, scope: !1567, inlinedAt: !3618)
!3622 = !DILocation(line: 385, column: 5, scope: !1567, inlinedAt: !3618)
!3623 = !DILocation(line: 386, column: 1, scope: !1567, inlinedAt: !3618)
!3624 = !DILocation(line: 1320, column: 13, scope: !3619)
!3625 = !DILocation(line: 1321, column: 13, scope: !3619)
!3626 = !DILocation(line: 1324, column: 33, scope: !3528)
!3627 = !DILocation(line: 1324, column: 29, scope: !3528)
!3628 = !DILocation(line: 1324, column: 42, scope: !3528)
!3629 = !DILocation(line: 1324, column: 19, scope: !3528)
!3630 = !DILocation(line: 1326, column: 16, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 1326, column: 13)
!3632 = !DILocation(line: 1326, column: 13, scope: !3528)
!3633 = !DILocation(line: 1326, column: 22, scope: !3631)
!3634 = !DILocation(line: 1328, column: 27, scope: !3528)
!3635 = !DILocation(line: 1328, column: 25, scope: !3528)
!3636 = !DILocation(line: 1331, column: 16, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3528, file: !3, line: 1331, column: 13)
!3638 = !DILocation(line: 1331, column: 13, scope: !3637)
!3639 = !DILocation(line: 1331, column: 13, scope: !3528)
!3640 = !DILocation(line: 1331, column: 28, scope: !3637)
!3641 = !DILocation(line: 1331, column: 22, scope: !3637)
!3642 = !DILocation(line: 1332, column: 44, scope: !3528)
!3643 = !DILocation(line: 1332, column: 41, scope: !3528)
!3644 = !DILocation(line: 1332, column: 40, scope: !3528)
!3645 = !DILocation(line: 1332, column: 19, scope: !3528)
!3646 = !DILocation(line: 1332, column: 17, scope: !3528)
!3647 = !DILocation(line: 1333, column: 5, scope: !3528)
!3648 = !DILocation(line: 1335, column: 5, scope: !3514)
!3649 = !DILocation(line: 1336, column: 5, scope: !3514)
!3650 = !DILocation(line: 1338, column: 16, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 1338, column: 13)
!3652 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 1336, column: 28)
!3653 = !DILocation(line: 1338, column: 24, scope: !3651)
!3654 = !DILocation(line: 1338, column: 13, scope: !3652)
!3655 = !DILocation(line: 0, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 1392, column: 13)
!3657 = !DILocation(line: 1339, column: 45, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 1338, column: 31)
!3659 = !DILocation(line: 1339, column: 41, scope: !3658)
!3660 = !DILocation(line: 1339, column: 23, scope: !3658)
!3661 = !DILocation(line: 1340, column: 25, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 1340, column: 17)
!3663 = !DILocation(line: 1340, column: 17, scope: !3658)
!3664 = !DILocation(line: 0, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 1351, column: 17)
!3666 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 1341, column: 21, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 1341, column: 21)
!3669 = distinct !DILexicalBlock(scope: !3662, file: !3, line: 1340, column: 34)
!3670 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !3667)
!3671 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !3667)
!3672 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !3667)
!3673 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !3667)
!3674 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !3667)
!3675 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !3667)
!3676 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !3667)
!3677 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !3667)
!3678 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !3667)
!3679 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !3667)
!3680 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !3667)
!3681 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !3667)
!3682 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !3667)
!3683 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !3667)
!3684 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !3667)
!3685 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !3667)
!3686 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !3667)
!3687 = !DILocation(line: 0, scope: !855, inlinedAt: !3667)
!3688 = !DILocation(line: 0, scope: !3668)
!3689 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !3667)
!3690 = !DILocation(line: 1341, column: 44, scope: !3668)
!3691 = !DILocation(line: 1341, column: 40, scope: !3668)
!3692 = !DILocation(line: 1341, column: 51, scope: !3668)
!3693 = !DILocation(line: 1341, column: 21, scope: !3669)
!3694 = !DILocation(line: 384, column: 28, scope: !1567, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 1342, column: 21, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3668, file: !3, line: 1341, column: 76)
!3697 = !DILocation(line: 384, column: 43, scope: !1567, inlinedAt: !3695)
!3698 = !DILocation(line: 385, column: 31, scope: !1567, inlinedAt: !3695)
!3699 = !DILocation(line: 385, column: 5, scope: !1567, inlinedAt: !3695)
!3700 = !DILocation(line: 386, column: 1, scope: !1567, inlinedAt: !3695)
!3701 = !DILocation(line: 1344, column: 21, scope: !3696)
!3702 = !DILocation(line: 1345, column: 21, scope: !3696)
!3703 = !DILocation(line: 1351, column: 41, scope: !3665)
!3704 = !DILocation(line: 1351, column: 37, scope: !3665)
!3705 = !DILocation(line: 1351, column: 24, scope: !3665)
!3706 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 1351, column: 61, scope: !3665)
!3708 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !3707)
!3709 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !3707)
!3710 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !3707)
!3711 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !3707)
!3712 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !3707)
!3713 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !3707)
!3714 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !3707)
!3715 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !3707)
!3716 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !3707)
!3717 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !3707)
!3718 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !3707)
!3719 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !3707)
!3720 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !3707)
!3721 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !3707)
!3722 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !3707)
!3723 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !3707)
!3724 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !3707)
!3725 = !DILocation(line: 0, scope: !855, inlinedAt: !3707)
!3726 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !3707)
!3727 = !DILocation(line: 1351, column: 80, scope: !3665)
!3728 = !DILocation(line: 1351, column: 90, scope: !3665)
!3729 = !DILocation(line: 1351, column: 49, scope: !3665)
!3730 = !DILocation(line: 1351, column: 17, scope: !3658)
!3731 = !DILocation(line: 1354, column: 17, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 1354, column: 17)
!3733 = !DILocation(line: 1354, column: 40, scope: !3732)
!3734 = !DILocation(line: 1354, column: 17, scope: !3658)
!3735 = !DILocation(line: 1355, column: 17, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3732, file: !3, line: 1354, column: 48)
!3737 = !DILocation(line: 1358, column: 17, scope: !3736)
!3738 = !DILocation(line: 1359, column: 17, scope: !3736)
!3739 = !DILocation(line: 1362, column: 49, scope: !3658)
!3740 = !DILocation(line: 1362, column: 59, scope: !3658)
!3741 = !DILocation(line: 1362, column: 18, scope: !3658)
!3742 = !DILocation(line: 1363, column: 18, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 1363, column: 17)
!3744 = !DILocation(line: 1363, column: 24, scope: !3743)
!3745 = !DILocation(line: 1363, column: 27, scope: !3743)
!3746 = !DILocation(line: 1363, column: 21, scope: !3743)
!3747 = !DILocation(line: 1363, column: 46, scope: !3743)
!3748 = !{!442, !443, i64 2728}
!3749 = !DILocation(line: 1363, column: 37, scope: !3743)
!3750 = !DILocation(line: 1363, column: 17, scope: !3658)
!3751 = !DILocation(line: 384, column: 28, scope: !1567, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 1364, column: 17, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3743, file: !3, line: 1363, column: 66)
!3754 = !DILocation(line: 384, column: 43, scope: !1567, inlinedAt: !3752)
!3755 = !DILocation(line: 385, column: 31, scope: !1567, inlinedAt: !3752)
!3756 = !DILocation(line: 385, column: 5, scope: !1567, inlinedAt: !3752)
!3757 = !DILocation(line: 386, column: 1, scope: !1567, inlinedAt: !3752)
!3758 = !DILocation(line: 1365, column: 17, scope: !3753)
!3759 = !DILocation(line: 1366, column: 17, scope: !3753)
!3760 = !DILocation(line: 1369, column: 36, scope: !3658)
!3761 = !DILocation(line: 1369, column: 32, scope: !3658)
!3762 = !DILocation(line: 1369, column: 44, scope: !3658)
!3763 = !DILocation(line: 1369, column: 23, scope: !3658)
!3764 = !DILocation(line: 1370, column: 20, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 1370, column: 17)
!3766 = !DILocation(line: 1370, column: 17, scope: !3658)
!3767 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 1380, column: 21, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !3, line: 1380, column: 21)
!3770 = distinct !DILexicalBlock(scope: !3765, file: !3, line: 1370, column: 44)
!3771 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !3768)
!3772 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !3768)
!3773 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !3768)
!3774 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !3768)
!3775 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !3768)
!3776 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !3768)
!3777 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !3768)
!3778 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !3768)
!3779 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !3768)
!3780 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !3768)
!3781 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !3768)
!3782 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !3768)
!3783 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !3768)
!3784 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !3768)
!3785 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !3768)
!3786 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !3768)
!3787 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !3768)
!3788 = !DILocation(line: 0, scope: !855, inlinedAt: !3768)
!3789 = !DILocation(line: 0, scope: !3769)
!3790 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !3768)
!3791 = !DILocation(line: 1380, column: 40, scope: !3769)
!3792 = !DILocation(line: 1380, column: 64, scope: !3769)
!3793 = !DILocation(line: 1380, column: 51, scope: !3769)
!3794 = !DILocation(line: 1380, column: 21, scope: !3770)
!3795 = !DILocation(line: 1381, column: 21, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 1380, column: 68)
!3797 = !DILocation(line: 1382, column: 31, scope: !3796)
!3798 = !DILocation(line: 1385, column: 53, scope: !3796)
!3799 = !DILocation(line: 1385, column: 62, scope: !3796)
!3800 = !DILocation(line: 1385, column: 64, scope: !3796)
!3801 = !DILocation(line: 1385, column: 35, scope: !3796)
!3802 = !DILocation(line: 1385, column: 33, scope: !3796)
!3803 = !DILocation(line: 1386, column: 17, scope: !3796)
!3804 = !DILocation(line: 1388, column: 26, scope: !3658)
!3805 = !DILocation(line: 1388, column: 24, scope: !3658)
!3806 = !DILocation(line: 1389, column: 9, scope: !3658)
!3807 = !DILocation(line: 1392, column: 23, scope: !3656)
!3808 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !3809)
!3809 = distinct !DILocation(line: 1392, column: 13, scope: !3656)
!3810 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !3809)
!3811 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !3809)
!3812 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !3809)
!3813 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !3809)
!3814 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !3809)
!3815 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !3809)
!3816 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !3809)
!3817 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !3809)
!3818 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !3809)
!3819 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !3809)
!3820 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !3809)
!3821 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !3809)
!3822 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !3809)
!3823 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !3809)
!3824 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !3809)
!3825 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !3809)
!3826 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !3809)
!3827 = !DILocation(line: 0, scope: !855, inlinedAt: !3809)
!3828 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !3809)
!3829 = !DILocation(line: 1392, column: 36, scope: !3656)
!3830 = !DILocation(line: 1392, column: 32, scope: !3656)
!3831 = !DILocation(line: 1392, column: 64, scope: !3656)
!3832 = !DILocation(line: 1392, column: 43, scope: !3656)
!3833 = !DILocation(line: 1392, column: 13, scope: !3652)
!3834 = !DILocation(line: 1399, column: 27, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 1399, column: 17)
!3836 = distinct !DILexicalBlock(scope: !3656, file: !3, line: 1395, column: 16)
!3837 = !DILocation(line: 1399, column: 32, scope: !3835)
!3838 = !DILocation(line: 1400, column: 28, scope: !3835)
!3839 = !DILocation(line: 1400, column: 51, scope: !3835)
!3840 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 1401, column: 17, scope: !3835)
!3842 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !3841)
!3843 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !3841)
!3844 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !3841)
!3845 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !3841)
!3846 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !3841)
!3847 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !3841)
!3848 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !3841)
!3849 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !3841)
!3850 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !3841)
!3851 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !3841)
!3852 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !3841)
!3853 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !3841)
!3854 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !3841)
!3855 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !3841)
!3856 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !3841)
!3857 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !3841)
!3858 = !DILocation(line: 0, scope: !855, inlinedAt: !3841)
!3859 = !DILocation(line: 0, scope: !3835)
!3860 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !3841)
!3861 = !DILocation(line: 1401, column: 37, scope: !3835)
!3862 = !DILocation(line: 1399, column: 17, scope: !3836)
!3863 = !DILocation(line: 1403, column: 38, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 1402, column: 13)
!3865 = !DILocation(line: 1403, column: 20, scope: !3864)
!3866 = !DILocation(line: 1403, column: 32, scope: !3864)
!3867 = !DILocation(line: 1403, column: 17, scope: !3864)
!3868 = !DILocation(line: 1403, column: 36, scope: !3864)
!3869 = !DILocation(line: 1404, column: 31, scope: !3864)
!3870 = !DILocation(line: 1404, column: 17, scope: !3864)
!3871 = !DILocation(line: 1407, column: 41, scope: !3864)
!3872 = !DILocation(line: 1407, column: 55, scope: !3864)
!3873 = !DILocation(line: 1407, column: 62, scope: !3864)
!3874 = !DILocation(line: 1407, column: 31, scope: !3864)
!3875 = !DILocation(line: 1407, column: 29, scope: !3864)
!3876 = !DILocation(line: 1408, column: 17, scope: !3864)
!3877 = !DILocation(line: 1409, column: 13, scope: !3864)
!3878 = !DILocation(line: 1411, column: 51, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 1409, column: 20)
!3880 = !DILocation(line: 1411, column: 21, scope: !3879)
!3881 = !DILocation(line: 1410, column: 20, scope: !3879)
!3882 = !DILocation(line: 1410, column: 32, scope: !3879)
!3883 = !DILocation(line: 1410, column: 17, scope: !3879)
!3884 = !DILocation(line: 1410, column: 36, scope: !3879)
!3885 = !DILocation(line: 1412, column: 33, scope: !3879)
!3886 = !DILocation(line: 1412, column: 40, scope: !3879)
!3887 = !DILocation(line: 1412, column: 27, scope: !3879)
!3888 = !DILocation(line: 1414, column: 24, scope: !3836)
!3889 = !DILocation(line: 1415, column: 28, scope: !3836)
!3890 = distinct !{!3890, !3649, !3891}
!3891 = !DILocation(line: 1417, column: 5, scope: !3514)
!3892 = !DILocation(line: 1420, column: 12, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 1420, column: 9)
!3894 = !DILocation(line: 1420, column: 25, scope: !3893)
!3895 = !DILocation(line: 1420, column: 9, scope: !3514)
!3896 = !DILocation(line: 0, scope: !3514)
!3897 = !DILocation(line: 1420, column: 31, scope: !3893)
!3898 = !DILocation(line: 0, scope: !3753)
!3899 = !DILocation(line: 1424, column: 1, scope: !3514)
!3900 = distinct !DISubprogram(name: "processInputBuffer", scope: !3, file: !3, line: 1430, type: !4, isLocal: false, isDefinition: true, scopeLine: 1430, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3901)
!3901 = !{!3902}
!3902 = !DILocalVariable(name: "c", arg: 1, scope: !3900, file: !3, line: 1430, type: !6)
!3903 = !DILocation(line: 1430, column: 33, scope: !3900)
!3904 = !DILocation(line: 1431, column: 27, scope: !3900)
!3905 = !DILocation(line: 1434, column: 5, scope: !3900)
!3906 = !DILocation(line: 1434, column: 14, scope: !3900)
!3907 = !DILocation(line: 1434, column: 33, scope: !3900)
!3908 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 1434, column: 23, scope: !3900)
!3910 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !3909)
!3911 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !3909)
!3912 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !3909)
!3913 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !3909)
!3914 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !3909)
!3915 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !3909)
!3916 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !3909)
!3917 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !3909)
!3918 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !3909)
!3919 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !3909)
!3920 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !3909)
!3921 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !3909)
!3922 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !3909)
!3923 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !3909)
!3924 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !3909)
!3925 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !3909)
!3926 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !3909)
!3927 = !DILocation(line: 101, column: 5, scope: !843, inlinedAt: !3909)
!3928 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !3909)
!3929 = !DILocation(line: 0, scope: !855, inlinedAt: !3909)
!3930 = !DILocation(line: 0, scope: !3900)
!3931 = !DILocation(line: 1434, column: 21, scope: !3900)
!3932 = !DILocation(line: 1436, column: 18, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3934, file: !3, line: 1436, column: 13)
!3934 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 1434, column: 44)
!3935 = !DILocation(line: 1436, column: 24, scope: !3933)
!3936 = !DILocation(line: 1436, column: 40, scope: !3933)
!3937 = !DILocation(line: 1436, column: 43, scope: !3933)
!3938 = !DILocation(line: 1436, column: 13, scope: !3934)
!3939 = !DILocation(line: 1439, column: 16, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3934, file: !3, line: 1439, column: 13)
!3941 = !DILocation(line: 1439, column: 22, scope: !3940)
!3942 = !DILocation(line: 1439, column: 13, scope: !3934)
!3943 = !DILocation(line: 1445, column: 20, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3934, file: !3, line: 1445, column: 13)
!3945 = !{!442, !378, i64 3068}
!3946 = !DILocation(line: 1445, column: 13, scope: !3944)
!3947 = !DILocation(line: 1445, column: 33, scope: !3944)
!3948 = !DILocation(line: 1445, column: 45, scope: !3944)
!3949 = !DILocation(line: 1445, column: 13, scope: !3934)
!3950 = !DILocation(line: 1452, column: 22, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3934, file: !3, line: 1452, column: 13)
!3952 = !DILocation(line: 1452, column: 13, scope: !3934)
!3953 = !DILocation(line: 1455, column: 17, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3934, file: !3, line: 1455, column: 13)
!3955 = !DILocation(line: 1455, column: 14, scope: !3954)
!3956 = !DILocation(line: 1455, column: 13, scope: !3934)
!3957 = !DILocation(line: 1456, column: 20, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3959, file: !3, line: 1456, column: 17)
!3959 = distinct !DILexicalBlock(scope: !3954, file: !3, line: 1455, column: 26)
!3960 = !DILocation(line: 1456, column: 32, scope: !3958)
!3961 = !DILocation(line: 1456, column: 17, scope: !3958)
!3962 = !DILocation(line: 1456, column: 40, scope: !3958)
!3963 = !DILocation(line: 1456, column: 17, scope: !3959)
!3964 = !DILocation(line: 1457, column: 28, scope: !3965)
!3965 = distinct !DILexicalBlock(scope: !3958, file: !3, line: 1456, column: 48)
!3966 = !DILocation(line: 1458, column: 13, scope: !3965)
!3967 = !DILocation(line: 1463, column: 13, scope: !3934)
!3968 = !DILocation(line: 1465, column: 20, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3934, file: !3, line: 1463, column: 13)
!3970 = !DILocation(line: 1459, column: 28, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3958, file: !3, line: 1458, column: 20)
!3972 = !DILocation(line: 1463, column: 24, scope: !3969)
!3973 = !DILocation(line: 1464, column: 17, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3975, file: !3, line: 1464, column: 17)
!3975 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 1463, column: 45)
!3976 = !DILocation(line: 1464, column: 40, scope: !3974)
!3977 = !DILocation(line: 1464, column: 17, scope: !3975)
!3978 = !DILocation(line: 1465, column: 31, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 1465, column: 20)
!3980 = !DILocation(line: 1466, column: 17, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3982, file: !3, line: 1466, column: 17)
!3982 = distinct !DILexicalBlock(scope: !3979, file: !3, line: 1465, column: 55)
!3983 = !DILocation(line: 1466, column: 43, scope: !3981)
!3984 = !DILocation(line: 1466, column: 17, scope: !3982)
!3985 = !DILocation(line: 1468, column: 13, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3979, file: !3, line: 1467, column: 16)
!3987 = !DILocation(line: 1472, column: 16, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3934, file: !3, line: 1472, column: 13)
!3989 = !DILocation(line: 1472, column: 21, scope: !3988)
!3990 = !DILocation(line: 1472, column: 13, scope: !3934)
!3991 = !DILocation(line: 1473, column: 13, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1472, column: 27)
!3993 = !DILocation(line: 1474, column: 9, scope: !3992)
!3994 = !DILocation(line: 1476, column: 17, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !3, line: 1476, column: 17)
!3996 = distinct !DILexicalBlock(scope: !3988, file: !3, line: 1474, column: 16)
!3997 = !DILocation(line: 1476, column: 35, scope: !3995)
!3998 = !DILocation(line: 1476, column: 17, scope: !3996)
!3999 = !DILocation(line: 1477, column: 24, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !4001, file: !3, line: 1477, column: 21)
!4001 = distinct !DILexicalBlock(scope: !3995, file: !3, line: 1476, column: 44)
!4002 = !DILocation(line: 1477, column: 30, scope: !4000)
!4003 = !DILocation(line: 1477, column: 46, scope: !4000)
!4004 = !DILocation(line: 1477, column: 60, scope: !4000)
!4005 = !DILocation(line: 1477, column: 21, scope: !4001)
!4006 = !DILocation(line: 1479, column: 37, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !4000, file: !3, line: 1477, column: 77)
!4008 = !DILocation(line: 1479, column: 62, scope: !4007)
!4009 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 1479, column: 52, scope: !4007)
!4011 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !4010)
!4012 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !4010)
!4013 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !4010)
!4014 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !4010)
!4015 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !4010)
!4016 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !4010)
!4017 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !4010)
!4018 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !4010)
!4019 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !4010)
!4020 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !4010)
!4021 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !4010)
!4022 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !4010)
!4023 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !4010)
!4024 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !4010)
!4025 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !4010)
!4026 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !4010)
!4027 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !4010)
!4028 = !DILocation(line: 0, scope: !855, inlinedAt: !4010)
!4029 = !DILocation(line: 0, scope: !4007)
!4030 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !4010)
!4031 = !DILocation(line: 1479, column: 50, scope: !4007)
!4032 = !DILocation(line: 1479, column: 77, scope: !4007)
!4033 = !DILocation(line: 1479, column: 72, scope: !4007)
!4034 = !DILocation(line: 1479, column: 32, scope: !4007)
!4035 = !DILocation(line: 1480, column: 17, scope: !4007)
!4036 = !DILocation(line: 1486, column: 32, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4001, file: !3, line: 1486, column: 21)
!4038 = !DILocation(line: 1486, column: 50, scope: !4037)
!4039 = !DILocation(line: 1486, column: 56, scope: !4037)
!4040 = !DILocation(line: 1486, column: 62, scope: !4037)
!4041 = !DILocation(line: 1486, column: 21, scope: !4001)
!4042 = !DILocation(line: 1487, column: 21, scope: !4037)
!4043 = !DILocation(line: 1492, column: 24, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !3996, file: !3, line: 1492, column: 17)
!4045 = !DILocation(line: 1492, column: 39, scope: !4044)
!4046 = !DILocation(line: 1492, column: 17, scope: !3996)
!4047 = !DILocation(line: 1497, column: 39, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 1497, column: 9)
!4049 = distinct !{!4049, !3905, !4050}
!4050 = !DILocation(line: 1494, column: 5, scope: !3900)
!4051 = !DILocation(line: 1497, column: 16, scope: !4048)
!4052 = !DILocation(line: 1497, column: 31, scope: !4048)
!4053 = !DILocation(line: 1497, column: 45, scope: !4048)
!4054 = !DILocation(line: 1497, column: 42, scope: !4048)
!4055 = !DILocation(line: 1497, column: 9, scope: !3900)
!4056 = !DILocation(line: 1498, column: 21, scope: !4057)
!4057 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 1497, column: 53)
!4058 = !DILocation(line: 1498, column: 9, scope: !4057)
!4059 = !DILocation(line: 1499, column: 19, scope: !4057)
!4060 = !DILocation(line: 1500, column: 5, scope: !4057)
!4061 = !DILocation(line: 1502, column: 27, scope: !3900)
!4062 = !DILocation(line: 1503, column: 1, scope: !3900)
!4063 = distinct !DISubprogram(name: "clientsArePaused", scope: !3, file: !3, line: 2205, type: !3027, isLocal: false, isDefinition: true, scopeLine: 2205, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4064)
!4064 = !{!4065, !4068, !4069}
!4065 = !DILocalVariable(name: "ln", scope: !4066, file: !3, line: 2209, type: !103)
!4066 = distinct !DILexicalBlock(scope: !4067, file: !3, line: 2208, column: 5)
!4067 = distinct !DILexicalBlock(scope: !4063, file: !3, line: 2206, column: 9)
!4068 = !DILocalVariable(name: "li", scope: !4066, file: !3, line: 2210, type: !3031)
!4069 = !DILocalVariable(name: "c", scope: !4066, file: !3, line: 2211, type: !6)
!4070 = !DILocation(line: 2206, column: 16, scope: !4067)
!4071 = !{!442, !378, i64 568}
!4072 = !DILocation(line: 2206, column: 9, scope: !4067)
!4073 = !DILocation(line: 2206, column: 31, scope: !4067)
!4074 = !DILocation(line: 2207, column: 16, scope: !4067)
!4075 = !{!442, !443, i64 576}
!4076 = !DILocation(line: 2207, column: 48, scope: !4067)
!4077 = !{!442, !443, i64 2896}
!4078 = !DILocation(line: 2207, column: 39, scope: !4067)
!4079 = !DILocation(line: 2206, column: 9, scope: !4063)
!4080 = !DILocation(line: 2210, column: 9, scope: !4066)
!4081 = !DILocation(line: 2213, column: 31, scope: !4066)
!4082 = !DILocation(line: 2217, column: 27, scope: !4066)
!4083 = !DILocation(line: 2210, column: 18, scope: !4066)
!4084 = !DILocation(line: 2217, column: 9, scope: !4066)
!4085 = !DILocation(line: 2218, column: 9, scope: !4066)
!4086 = !DILocation(line: 2218, column: 22, scope: !4066)
!4087 = !DILocation(line: 2209, column: 19, scope: !4066)
!4088 = !DILocation(line: 2218, column: 37, scope: !4066)
!4089 = !DILocation(line: 2219, column: 17, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4066, file: !3, line: 2218, column: 46)
!4091 = !DILocation(line: 2211, column: 17, scope: !4066)
!4092 = !DILocation(line: 2223, column: 20, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 2223, column: 17)
!4094 = !DILocation(line: 2223, column: 26, scope: !4093)
!4095 = !DILocation(line: 2223, column: 17, scope: !4090)
!4096 = !DILocation(line: 2224, column: 13, scope: !4090)
!4097 = distinct !{!4097, !4085, !4098}
!4098 = !DILocation(line: 2225, column: 9, scope: !4066)
!4099 = !DILocation(line: 2226, column: 5, scope: !4067)
!4100 = !DILocation(line: 2226, column: 5, scope: !4066)
!4101 = !DILocation(line: 2227, column: 19, scope: !4063)
!4102 = !DILocation(line: 2227, column: 5, scope: !4063)
!4103 = !DILocation(line: 1509, column: 45, scope: !1011)
!4104 = !DILocation(line: 1510, column: 14, scope: !1015)
!4105 = !DILocation(line: 1510, column: 20, scope: !1015)
!4106 = !DILocation(line: 1510, column: 9, scope: !1011)
!4107 = !DILocation(line: 1511, column: 9, scope: !1021)
!4108 = !DILocation(line: 1512, column: 5, scope: !1021)
!4109 = !DILocation(line: 1513, column: 33, scope: !1014)
!4110 = !DILocation(line: 1513, column: 16, scope: !1014)
!4111 = !DILocation(line: 1514, column: 9, scope: !1014)
!4112 = !DILocation(line: 1515, column: 29, scope: !1014)
!4113 = !DILocation(line: 1515, column: 37, scope: !1014)
!4114 = !DILocation(line: 1515, column: 16, scope: !1014)
!4115 = !DILocation(line: 1516, column: 13, scope: !1031)
!4116 = !DILocation(line: 1516, column: 13, scope: !1014)
!4117 = !DILocation(line: 1517, column: 58, scope: !1034)
!4118 = !DILocation(line: 1518, column: 24, scope: !1034)
!4119 = !DILocation(line: 1517, column: 13, scope: !1034)
!4120 = !DILocation(line: 1519, column: 25, scope: !1034)
!4121 = !DILocation(line: 1519, column: 13, scope: !1034)
!4122 = !DILocation(line: 1520, column: 9, scope: !1034)
!4123 = !DILocation(line: 1522, column: 1, scope: !1011)
!4124 = distinct !DISubprogram(name: "catClientInfoString", scope: !3, file: !3, line: 1652, type: !4125, isLocal: false, isDefinition: true, scopeLine: 1652, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4127)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!137, !137, !6}
!4127 = !{!4128, !4129, !4130, !4131, !4135, !4136}
!4128 = !DILocalVariable(name: "s", arg: 1, scope: !4124, file: !3, line: 1652, type: !137)
!4129 = !DILocalVariable(name: "client", arg: 2, scope: !4124, file: !3, line: 1652, type: !6)
!4130 = !DILocalVariable(name: "flags", scope: !4124, file: !3, line: 1653, type: !334)
!4131 = !DILocalVariable(name: "events", scope: !4124, file: !3, line: 1653, type: !4132)
!4132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 24, elements: !4133)
!4133 = !{!4134}
!4134 = !DISubrange(count: 3)
!4135 = !DILocalVariable(name: "p", scope: !4124, file: !3, line: 1653, type: !139)
!4136 = !DILocalVariable(name: "emask", scope: !4124, file: !3, line: 1654, type: !18)
!4137 = !DILocalVariable(name: "peerid", scope: !4138, file: !3, line: 1641, type: !4143)
!4138 = distinct !DISubprogram(name: "getClientPeerId", scope: !3, file: !3, line: 1640, type: !4139, isLocal: false, isDefinition: true, scopeLine: 1640, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4141)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!139, !6}
!4141 = !{!4142, !4137}
!4142 = !DILocalVariable(name: "c", arg: 1, scope: !4138, file: !3, line: 1640, type: !6)
!4143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 624, elements: !4144)
!4144 = !{!4145}
!4145 = !DISubrange(count: 78)
!4146 = !DILocation(line: 1641, column: 10, scope: !4138, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 1684, column: 9, scope: !4124)
!4148 = !DILocation(line: 1652, column: 29, scope: !4124)
!4149 = !DILocation(line: 1652, column: 40, scope: !4124)
!4150 = !DILocation(line: 1653, column: 5, scope: !4124)
!4151 = !DILocation(line: 1653, column: 10, scope: !4124)
!4152 = !DILocation(line: 1653, column: 21, scope: !4124)
!4153 = !DILocation(line: 1653, column: 33, scope: !4124)
!4154 = !DILocation(line: 1657, column: 17, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1657, column: 9)
!4156 = !DILocation(line: 1657, column: 23, scope: !4155)
!4157 = !DILocation(line: 1657, column: 9, scope: !4124)
!4158 = !DILocation(line: 1658, column: 27, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4160, file: !3, line: 1658, column: 13)
!4160 = distinct !DILexicalBlock(scope: !4155, file: !3, line: 1657, column: 39)
!4161 = !DILocation(line: 1658, column: 13, scope: !4160)
!4162 = !DILocation(line: 0, scope: !4159)
!4163 = !DILocation(line: 1663, column: 23, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1663, column: 9)
!4165 = !DILocation(line: 1663, column: 9, scope: !4124)
!4166 = !DILocation(line: 1663, column: 42, scope: !4164)
!4167 = !DILocation(line: 1663, column: 45, scope: !4164)
!4168 = !DILocation(line: 1663, column: 40, scope: !4164)
!4169 = !DILocation(line: 1664, column: 23, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1664, column: 9)
!4171 = !DILocation(line: 1664, column: 9, scope: !4124)
!4172 = !DILocation(line: 1664, column: 42, scope: !4170)
!4173 = !DILocation(line: 1664, column: 45, scope: !4170)
!4174 = !DILocation(line: 1664, column: 40, scope: !4170)
!4175 = !DILocation(line: 1665, column: 23, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1665, column: 9)
!4177 = !DILocation(line: 1665, column: 9, scope: !4124)
!4178 = !DILocation(line: 1665, column: 41, scope: !4176)
!4179 = !DILocation(line: 1665, column: 44, scope: !4176)
!4180 = !DILocation(line: 1665, column: 39, scope: !4176)
!4181 = !DILocation(line: 1666, column: 23, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1666, column: 9)
!4183 = !DILocation(line: 1666, column: 9, scope: !4124)
!4184 = !DILocation(line: 1666, column: 43, scope: !4182)
!4185 = !DILocation(line: 1666, column: 46, scope: !4182)
!4186 = !DILocation(line: 1666, column: 41, scope: !4182)
!4187 = !DILocation(line: 1667, column: 23, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1667, column: 9)
!4189 = !DILocation(line: 1667, column: 9, scope: !4124)
!4190 = !DILocation(line: 1667, column: 45, scope: !4188)
!4191 = !DILocation(line: 1667, column: 48, scope: !4188)
!4192 = !DILocation(line: 1667, column: 43, scope: !4188)
!4193 = !DILocation(line: 1668, column: 23, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1668, column: 9)
!4195 = !DILocation(line: 1668, column: 9, scope: !4124)
!4196 = !DILocation(line: 1668, column: 53, scope: !4194)
!4197 = !DILocation(line: 1668, column: 56, scope: !4194)
!4198 = !DILocation(line: 1668, column: 51, scope: !4194)
!4199 = !DILocation(line: 1669, column: 23, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1669, column: 9)
!4201 = !DILocation(line: 1669, column: 9, scope: !4124)
!4202 = !DILocation(line: 1669, column: 45, scope: !4200)
!4203 = !DILocation(line: 1669, column: 48, scope: !4200)
!4204 = !DILocation(line: 1669, column: 43, scope: !4200)
!4205 = !DILocation(line: 1670, column: 23, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1670, column: 9)
!4207 = !DILocation(line: 1670, column: 9, scope: !4124)
!4208 = !DILocation(line: 1670, column: 46, scope: !4206)
!4209 = !DILocation(line: 1670, column: 49, scope: !4206)
!4210 = !DILocation(line: 1670, column: 44, scope: !4206)
!4211 = !DILocation(line: 1671, column: 23, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1671, column: 9)
!4213 = !DILocation(line: 1671, column: 9, scope: !4124)
!4214 = !DILocation(line: 1671, column: 47, scope: !4212)
!4215 = !DILocation(line: 1671, column: 50, scope: !4212)
!4216 = !DILocation(line: 1671, column: 45, scope: !4212)
!4217 = !DILocation(line: 1672, column: 23, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1672, column: 9)
!4219 = !DILocation(line: 1672, column: 9, scope: !4124)
!4220 = !DILocation(line: 1672, column: 44, scope: !4218)
!4221 = !DILocation(line: 1672, column: 47, scope: !4218)
!4222 = !DILocation(line: 1672, column: 42, scope: !4218)
!4223 = !DILocation(line: 1673, column: 9, scope: !4124)
!4224 = !DILocation(line: 1673, column: 11, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1673, column: 9)
!4226 = !DILocation(line: 1673, column: 23, scope: !4225)
!4227 = !DILocation(line: 1673, column: 26, scope: !4225)
!4228 = !DILocation(line: 1673, column: 21, scope: !4225)
!4229 = !DILocation(line: 0, scope: !4225)
!4230 = !DILocation(line: 1674, column: 10, scope: !4124)
!4231 = !DILocation(line: 0, scope: !4218)
!4232 = !DILocation(line: 1676, column: 21, scope: !4124)
!4233 = !DILocation(line: 1676, column: 24, scope: !4124)
!4234 = !DILocation(line: 1676, column: 13, scope: !4124)
!4235 = !DILocation(line: 1654, column: 9, scope: !4124)
!4236 = !DILocation(line: 1678, column: 9, scope: !4124)
!4237 = !DILocation(line: 1679, column: 9, scope: !4124)
!4238 = !DILocation(line: 1676, column: 59, scope: !4124)
!4239 = !DILocation(line: 1676, column: 36, scope: !4124)
!4240 = !DILocation(line: 1678, column: 15, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1678, column: 9)
!4242 = !DILocation(line: 1678, column: 32, scope: !4241)
!4243 = !DILocation(line: 1678, column: 35, scope: !4241)
!4244 = !DILocation(line: 1678, column: 30, scope: !4241)
!4245 = !DILocation(line: 0, scope: !4124)
!4246 = !DILocation(line: 1679, column: 15, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4124, file: !3, line: 1679, column: 9)
!4248 = !DILocation(line: 1679, column: 32, scope: !4247)
!4249 = !DILocation(line: 1679, column: 35, scope: !4247)
!4250 = !DILocation(line: 1679, column: 30, scope: !4247)
!4251 = !DILocation(line: 0, scope: !4247)
!4252 = !DILocation(line: 1680, column: 8, scope: !4124)
!4253 = !DILocation(line: 0, scope: !4241)
!4254 = !DILocation(line: 1683, column: 38, scope: !4124)
!4255 = !DILocation(line: 1640, column: 31, scope: !4138, inlinedAt: !4147)
!4256 = !DILocation(line: 1641, column: 5, scope: !4138, inlinedAt: !4147)
!4257 = !DILocation(line: 1643, column: 12, scope: !4258, inlinedAt: !4147)
!4258 = distinct !DILexicalBlock(scope: !4138, file: !3, line: 1643, column: 9)
!4259 = !DILocation(line: 1643, column: 19, scope: !4258, inlinedAt: !4147)
!4260 = !DILocation(line: 1643, column: 9, scope: !4138, inlinedAt: !4147)
!4261 = !DILocalVariable(name: "client", arg: 1, scope: !4262, file: !3, line: 1625, type: !6)
!4262 = distinct !DISubprogram(name: "genClientPeerId", scope: !3, file: !3, line: 1625, type: !4263, isLocal: false, isDefinition: true, scopeLine: 1626, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4265)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{null, !6, !139, !142}
!4265 = !{!4261, !4266, !4267}
!4266 = !DILocalVariable(name: "peerid", arg: 2, scope: !4262, file: !3, line: 1625, type: !139)
!4267 = !DILocalVariable(name: "peerid_len", arg: 3, scope: !4262, file: !3, line: 1626, type: !142)
!4268 = !DILocation(line: 1625, column: 30, scope: !4262, inlinedAt: !4269)
!4269 = distinct !DILocation(line: 1644, column: 9, scope: !4270, inlinedAt: !4147)
!4270 = distinct !DILexicalBlock(scope: !4258, file: !3, line: 1643, column: 28)
!4271 = !DILocation(line: 1625, column: 44, scope: !4262, inlinedAt: !4269)
!4272 = !DILocation(line: 1626, column: 36, scope: !4262, inlinedAt: !4269)
!4273 = !DILocation(line: 1627, column: 17, scope: !4274, inlinedAt: !4269)
!4274 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 1627, column: 9)
!4275 = !DILocation(line: 1627, column: 23, scope: !4274, inlinedAt: !4269)
!4276 = !DILocation(line: 1627, column: 9, scope: !4262, inlinedAt: !4269)
!4277 = !DILocation(line: 1629, column: 50, scope: !4278, inlinedAt: !4269)
!4278 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 1627, column: 45)
!4279 = !DILocation(line: 1629, column: 9, scope: !4278, inlinedAt: !4269)
!4280 = !DILocation(line: 1630, column: 5, scope: !4278, inlinedAt: !4269)
!4281 = !DILocation(line: 1632, column: 32, scope: !4282, inlinedAt: !4269)
!4282 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 1630, column: 12)
!4283 = !DILocation(line: 1632, column: 9, scope: !4282, inlinedAt: !4269)
!4284 = !DILocation(line: 1634, column: 1, scope: !4262, inlinedAt: !4269)
!4285 = !DILocation(line: 1645, column: 21, scope: !4270, inlinedAt: !4147)
!4286 = !DILocation(line: 1645, column: 19, scope: !4270, inlinedAt: !4147)
!4287 = !DILocation(line: 1646, column: 5, scope: !4270, inlinedAt: !4147)
!4288 = !DILocation(line: 1647, column: 15, scope: !4138, inlinedAt: !4147)
!4289 = !DILocation(line: 1648, column: 1, scope: !4138, inlinedAt: !4147)
!4290 = !DILocation(line: 1647, column: 5, scope: !4138, inlinedAt: !4147)
!4291 = !DILocation(line: 1685, column: 17, scope: !4124)
!4292 = !DILocation(line: 1686, column: 17, scope: !4124)
!4293 = !DILocation(line: 1686, column: 9, scope: !4124)
!4294 = !DILocation(line: 1686, column: 45, scope: !4124)
!4295 = !DILocation(line: 1687, column: 28, scope: !4124)
!4296 = !DILocation(line: 1687, column: 47, scope: !4124)
!4297 = !DILocation(line: 1687, column: 37, scope: !4124)
!4298 = !DILocation(line: 1688, column: 47, scope: !4124)
!4299 = !DILocation(line: 1688, column: 37, scope: !4124)
!4300 = !DILocation(line: 1690, column: 17, scope: !4124)
!4301 = !{!456, !381, i64 16}
!4302 = !DILocation(line: 1690, column: 21, scope: !4124)
!4303 = !{!4304, !378, i64 40}
!4304 = !{!"redisDb", !381, i64 0, !381, i64 8, !381, i64 16, !381, i64 24, !381, i64 32, !378, i64 40, !443, i64 48, !381, i64 56}
!4305 = !DILocation(line: 1691, column: 15, scope: !4124)
!4306 = !{!4307, !411, i64 24}
!4307 = !{!"dictht", !381, i64 0, !411, i64 8, !411, i64 16, !411, i64 24}
!4308 = !DILocation(line: 1691, column: 9, scope: !4124)
!4309 = !DILocation(line: 1692, column: 15, scope: !4124)
!4310 = !DILocation(line: 1692, column: 9, scope: !4124)
!4311 = !DILocation(line: 1693, column: 18, scope: !4124)
!4312 = !DILocation(line: 1693, column: 24, scope: !4124)
!4313 = !DILocation(line: 1693, column: 9, scope: !4124)
!4314 = !DILocation(line: 1693, column: 57, scope: !4124)
!4315 = !{!456, !378, i64 360}
!4316 = !DILocation(line: 1694, column: 45, scope: !4124)
!4317 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 1694, column: 30, scope: !4124)
!4319 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !4318)
!4320 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !4318)
!4321 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !4318)
!4322 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !4318)
!4323 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !4318)
!4324 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !4318)
!4325 = !DILocalVariable(name: "s", arg: 1, scope: !4326, file: !138, line: 104, type: !846)
!4326 = distinct !DISubprogram(name: "sdsavail", scope: !138, file: !138, line: 104, type: !844, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4327)
!4327 = !{!4325, !4328, !4329, !4332, !4334, !4336}
!4328 = !DILocalVariable(name: "flags", scope: !4326, file: !138, line: 105, type: !269)
!4329 = !DILocalVariable(name: "sh", scope: !4330, file: !138, line: 111, type: !272)
!4330 = distinct !DILexicalBlock(scope: !4331, file: !138, line: 110, column: 26)
!4331 = distinct !DILexicalBlock(scope: !4326, file: !138, line: 106, column: 33)
!4332 = !DILocalVariable(name: "sh", scope: !4333, file: !138, line: 115, type: !284)
!4333 = distinct !DILexicalBlock(scope: !4331, file: !138, line: 114, column: 27)
!4334 = !DILocalVariable(name: "sh", scope: !4335, file: !138, line: 119, type: !294)
!4335 = distinct !DILexicalBlock(scope: !4331, file: !138, line: 118, column: 27)
!4336 = !DILocalVariable(name: "sh", scope: !4337, file: !138, line: 123, type: !303)
!4337 = distinct !DILexicalBlock(scope: !4331, file: !138, line: 122, column: 27)
!4338 = !DILocation(line: 104, column: 41, scope: !4326, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 1695, column: 30, scope: !4124)
!4340 = !DILocation(line: 105, column: 19, scope: !4326, inlinedAt: !4339)
!4341 = !DILocation(line: 106, column: 5, scope: !4326, inlinedAt: !4339)
!4342 = !DILocation(line: 108, column: 13, scope: !4343, inlinedAt: !4339)
!4343 = distinct !DILexicalBlock(scope: !4331, file: !138, line: 107, column: 26)
!4344 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !4318)
!4345 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !4318)
!4346 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !4318)
!4347 = !DILocation(line: 111, column: 13, scope: !4330, inlinedAt: !4339)
!4348 = !DILocation(line: 112, column: 24, scope: !4330, inlinedAt: !4339)
!4349 = !DILocation(line: 112, column: 20, scope: !4330, inlinedAt: !4339)
!4350 = !DILocation(line: 112, column: 30, scope: !4330, inlinedAt: !4339)
!4351 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !4318)
!4352 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !4318)
!4353 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !4318)
!4354 = !DILocation(line: 115, column: 13, scope: !4333, inlinedAt: !4339)
!4355 = !DILocation(line: 116, column: 24, scope: !4333, inlinedAt: !4339)
!4356 = !DILocation(line: 116, column: 20, scope: !4333, inlinedAt: !4339)
!4357 = !DILocation(line: 116, column: 30, scope: !4333, inlinedAt: !4339)
!4358 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !4318)
!4359 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !4318)
!4360 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !4318)
!4361 = !DILocation(line: 119, column: 13, scope: !4335, inlinedAt: !4339)
!4362 = !DILocation(line: 120, column: 24, scope: !4335, inlinedAt: !4339)
!4363 = !DILocation(line: 120, column: 30, scope: !4335, inlinedAt: !4339)
!4364 = !DILocation(line: 120, column: 20, scope: !4335, inlinedAt: !4339)
!4365 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !4318)
!4366 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !4318)
!4367 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !4318)
!4368 = !DILocation(line: 123, column: 13, scope: !4337, inlinedAt: !4339)
!4369 = !DILocation(line: 124, column: 24, scope: !4337, inlinedAt: !4339)
!4370 = !DILocation(line: 124, column: 30, scope: !4337, inlinedAt: !4339)
!4371 = !DILocation(line: 101, column: 5, scope: !843, inlinedAt: !4318)
!4372 = !DILocation(line: 127, column: 5, scope: !4326, inlinedAt: !4339)
!4373 = !DILocation(line: 0, scope: !4343, inlinedAt: !4339)
!4374 = !DILocation(line: 128, column: 1, scope: !4326, inlinedAt: !4339)
!4375 = !DILocation(line: 1696, column: 38, scope: !4124)
!4376 = !DILocation(line: 1696, column: 9, scope: !4124)
!4377 = !DILocation(line: 1697, column: 30, scope: !4124)
!4378 = !DILocalVariable(name: "c", arg: 1, scope: !4379, file: !3, line: 2036, type: !6)
!4379 = distinct !DISubprogram(name: "getClientOutputBufferMemoryUsage", scope: !3, file: !3, line: 2036, type: !4380, isLocal: false, isDefinition: true, scopeLine: 2036, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4382)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!16, !6}
!4382 = !{!4378, !4383}
!4383 = !DILocalVariable(name: "list_item_size", scope: !4379, file: !3, line: 2037, type: !16)
!4384 = !DILocation(line: 2036, column: 56, scope: !4379, inlinedAt: !4385)
!4385 = distinct !DILocation(line: 1698, column: 30, scope: !4124)
!4386 = !DILocation(line: 2037, column: 19, scope: !4379, inlinedAt: !4385)
!4387 = !DILocation(line: 2038, column: 15, scope: !4379, inlinedAt: !4385)
!4388 = !DILocation(line: 2038, column: 44, scope: !4379, inlinedAt: !4385)
!4389 = !DILocation(line: 2038, column: 27, scope: !4379, inlinedAt: !4385)
!4390 = !DILocation(line: 2038, column: 5, scope: !4379, inlinedAt: !4385)
!4391 = !DILocation(line: 1700, column: 17, scope: !4124)
!4392 = !DILocation(line: 1700, column: 9, scope: !4124)
!4393 = !DILocation(line: 1700, column: 44, scope: !4124)
!4394 = !DILocation(line: 1681, column: 12, scope: !4124)
!4395 = !DILocation(line: 1701, column: 1, scope: !4124)
!4396 = !DILocation(line: 1681, column: 5, scope: !4124)
!4397 = distinct !DISubprogram(name: "getClientsMaxBuffers", scope: !3, file: !3, line: 1596, type: !4398, isLocal: false, isDefinition: true, scopeLine: 1597, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4401)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{null, !4400, !4400}
!4400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!4401 = !{!4402, !4403, !4404, !4405, !4406, !4407, !4408}
!4402 = !DILocalVariable(name: "longest_output_list", arg: 1, scope: !4397, file: !3, line: 1596, type: !4400)
!4403 = !DILocalVariable(name: "biggest_input_buffer", arg: 2, scope: !4397, file: !3, line: 1597, type: !4400)
!4404 = !DILocalVariable(name: "c", scope: !4397, file: !3, line: 1598, type: !6)
!4405 = !DILocalVariable(name: "ln", scope: !4397, file: !3, line: 1599, type: !103)
!4406 = !DILocalVariable(name: "li", scope: !4397, file: !3, line: 1600, type: !3031)
!4407 = !DILocalVariable(name: "lol", scope: !4397, file: !3, line: 1601, type: !16)
!4408 = !DILocalVariable(name: "bib", scope: !4397, file: !3, line: 1601, type: !16)
!4409 = !DILocation(line: 1596, column: 42, scope: !4397)
!4410 = !DILocation(line: 1597, column: 42, scope: !4397)
!4411 = !DILocation(line: 1600, column: 5, scope: !4397)
!4412 = !DILocation(line: 1601, column: 19, scope: !4397)
!4413 = !DILocation(line: 1601, column: 28, scope: !4397)
!4414 = !DILocation(line: 1603, column: 23, scope: !4397)
!4415 = !DILocation(line: 1600, column: 14, scope: !4397)
!4416 = !DILocation(line: 1603, column: 5, scope: !4397)
!4417 = !DILocation(line: 1604, column: 5, scope: !4397)
!4418 = !DILocation(line: 1604, column: 18, scope: !4397)
!4419 = !DILocation(line: 1599, column: 15, scope: !4397)
!4420 = !DILocation(line: 1604, column: 33, scope: !4397)
!4421 = !DILocation(line: 1605, column: 13, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4397, file: !3, line: 1604, column: 42)
!4423 = !DILocation(line: 1598, column: 13, scope: !4397)
!4424 = !DILocation(line: 1607, column: 13, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 1607, column: 13)
!4426 = !DILocation(line: 1607, column: 34, scope: !4425)
!4427 = !DILocation(line: 1607, column: 13, scope: !4422)
!4428 = !DILocation(line: 1607, column: 41, scope: !4425)
!4429 = !DILocation(line: 0, scope: !4397)
!4430 = !DILocation(line: 1608, column: 23, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 1608, column: 13)
!4432 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 1608, column: 13, scope: !4431)
!4434 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !4433)
!4435 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !4433)
!4436 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !4433)
!4437 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !4433)
!4438 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !4433)
!4439 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !4433)
!4440 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !4433)
!4441 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !4433)
!4442 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !4433)
!4443 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !4433)
!4444 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !4433)
!4445 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !4433)
!4446 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !4433)
!4447 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !4433)
!4448 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !4433)
!4449 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !4433)
!4450 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !4433)
!4451 = !DILocation(line: 0, scope: !855, inlinedAt: !4433)
!4452 = !DILocation(line: 0, scope: !4431)
!4453 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !4433)
!4454 = !DILocation(line: 1608, column: 33, scope: !4431)
!4455 = !DILocation(line: 1608, column: 13, scope: !4422)
!4456 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !4457)
!4457 = distinct !DILocation(line: 1608, column: 46, scope: !4431)
!4458 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !4457)
!4459 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !4457)
!4460 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !4457)
!4461 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !4457)
!4462 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !4457)
!4463 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !4457)
!4464 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !4457)
!4465 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !4457)
!4466 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !4457)
!4467 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !4457)
!4468 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !4457)
!4469 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !4457)
!4470 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !4457)
!4471 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !4457)
!4472 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !4457)
!4473 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !4457)
!4474 = distinct !{!4474, !4417, !4475}
!4475 = !DILocation(line: 1609, column: 5, scope: !4397)
!4476 = !DILocation(line: 0, scope: !4425)
!4477 = !DILocation(line: 1610, column: 26, scope: !4397)
!4478 = !DILocation(line: 1611, column: 27, scope: !4397)
!4479 = !DILocation(line: 1612, column: 1, scope: !4397)
!4480 = !DILocation(line: 1625, column: 30, scope: !4262)
!4481 = !DILocation(line: 1625, column: 44, scope: !4262)
!4482 = !DILocation(line: 1626, column: 36, scope: !4262)
!4483 = !DILocation(line: 1627, column: 17, scope: !4274)
!4484 = !DILocation(line: 1627, column: 23, scope: !4274)
!4485 = !DILocation(line: 1627, column: 9, scope: !4262)
!4486 = !DILocation(line: 1629, column: 50, scope: !4278)
!4487 = !DILocation(line: 1629, column: 9, scope: !4278)
!4488 = !DILocation(line: 1630, column: 5, scope: !4278)
!4489 = !DILocation(line: 1632, column: 32, scope: !4282)
!4490 = !DILocation(line: 1632, column: 9, scope: !4282)
!4491 = !DILocation(line: 1634, column: 1, scope: !4262)
!4492 = !DILocation(line: 1640, column: 31, scope: !4138)
!4493 = !DILocation(line: 1641, column: 5, scope: !4138)
!4494 = !DILocation(line: 1641, column: 10, scope: !4138)
!4495 = !DILocation(line: 1643, column: 12, scope: !4258)
!4496 = !DILocation(line: 1643, column: 19, scope: !4258)
!4497 = !DILocation(line: 1643, column: 9, scope: !4138)
!4498 = !DILocation(line: 1625, column: 30, scope: !4262, inlinedAt: !4499)
!4499 = distinct !DILocation(line: 1644, column: 9, scope: !4270)
!4500 = !DILocation(line: 1625, column: 44, scope: !4262, inlinedAt: !4499)
!4501 = !DILocation(line: 1626, column: 36, scope: !4262, inlinedAt: !4499)
!4502 = !DILocation(line: 1627, column: 17, scope: !4274, inlinedAt: !4499)
!4503 = !DILocation(line: 1627, column: 23, scope: !4274, inlinedAt: !4499)
!4504 = !DILocation(line: 1627, column: 9, scope: !4262, inlinedAt: !4499)
!4505 = !DILocation(line: 1629, column: 50, scope: !4278, inlinedAt: !4499)
!4506 = !DILocation(line: 1629, column: 9, scope: !4278, inlinedAt: !4499)
!4507 = !DILocation(line: 1630, column: 5, scope: !4278, inlinedAt: !4499)
!4508 = !DILocation(line: 1632, column: 32, scope: !4282, inlinedAt: !4499)
!4509 = !DILocation(line: 1632, column: 9, scope: !4282, inlinedAt: !4499)
!4510 = !DILocation(line: 1634, column: 1, scope: !4262, inlinedAt: !4499)
!4511 = !DILocation(line: 1645, column: 21, scope: !4270)
!4512 = !DILocation(line: 1645, column: 19, scope: !4270)
!4513 = !DILocation(line: 1646, column: 5, scope: !4270)
!4514 = !DILocation(line: 1647, column: 15, scope: !4138)
!4515 = !DILocation(line: 1648, column: 1, scope: !4138)
!4516 = !DILocation(line: 1647, column: 5, scope: !4138)
!4517 = !DILocation(line: 2036, column: 56, scope: !4379)
!4518 = !DILocation(line: 2037, column: 19, scope: !4379)
!4519 = !DILocation(line: 2038, column: 15, scope: !4379)
!4520 = !DILocation(line: 2038, column: 45, scope: !4379)
!4521 = !DILocation(line: 2038, column: 44, scope: !4379)
!4522 = !DILocation(line: 2038, column: 27, scope: !4379)
!4523 = !DILocation(line: 2038, column: 5, scope: !4379)
!4524 = distinct !DISubprogram(name: "getAllClientsInfoString", scope: !3, file: !3, line: 1703, type: !4525, isLocal: false, isDefinition: true, scopeLine: 1703, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4527)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!137, !18}
!4527 = !{!4528, !4529, !4530, !4531, !4532}
!4528 = !DILocalVariable(name: "type", arg: 1, scope: !4524, file: !3, line: 1703, type: !18)
!4529 = !DILocalVariable(name: "ln", scope: !4524, file: !3, line: 1704, type: !103)
!4530 = !DILocalVariable(name: "li", scope: !4524, file: !3, line: 1705, type: !3031)
!4531 = !DILocalVariable(name: "client", scope: !4524, file: !3, line: 1706, type: !6)
!4532 = !DILocalVariable(name: "o", scope: !4524, file: !3, line: 1707, type: !137)
!4533 = !DILocation(line: 1703, column: 33, scope: !4524)
!4534 = !DILocation(line: 1705, column: 5, scope: !4524)
!4535 = !DILocation(line: 1707, column: 23, scope: !4524)
!4536 = !DILocation(line: 1707, column: 38, scope: !4524)
!4537 = !DILocation(line: 1707, column: 37, scope: !4524)
!4538 = !DILocation(line: 1707, column: 13, scope: !4524)
!4539 = !DILocation(line: 1707, column: 9, scope: !4524)
!4540 = !DILocation(line: 1708, column: 5, scope: !4524)
!4541 = !DILocation(line: 1709, column: 23, scope: !4524)
!4542 = !DILocation(line: 1705, column: 14, scope: !4524)
!4543 = !DILocation(line: 1709, column: 5, scope: !4524)
!4544 = !DILocation(line: 1710, column: 5, scope: !4524)
!4545 = !DILocation(line: 1710, column: 18, scope: !4524)
!4546 = !DILocation(line: 1704, column: 15, scope: !4524)
!4547 = !DILocation(line: 1710, column: 33, scope: !4524)
!4548 = !DILocation(line: 1711, column: 18, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 1710, column: 42)
!4550 = !DILocation(line: 1706, column: 13, scope: !4524)
!4551 = !DILocation(line: 1712, column: 24, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4549, file: !3, line: 1712, column: 13)
!4553 = !DILocalVariable(name: "c", arg: 1, scope: !4554, file: !3, line: 2050, type: !6)
!4554 = distinct !DISubprogram(name: "getClientType", scope: !3, file: !3, line: 2050, type: !1070, isLocal: false, isDefinition: true, scopeLine: 2050, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4555)
!4555 = !{!4553}
!4556 = !DILocation(line: 2050, column: 27, scope: !4554, inlinedAt: !4557)
!4557 = distinct !DILocation(line: 1712, column: 27, scope: !4552)
!4558 = !DILocation(line: 2051, column: 12, scope: !4559, inlinedAt: !4557)
!4559 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 2051, column: 9)
!4560 = !DILocation(line: 2051, column: 18, scope: !4559, inlinedAt: !4557)
!4561 = !DILocation(line: 2051, column: 9, scope: !4554, inlinedAt: !4557)
!4562 = !DILocation(line: 2051, column: 35, scope: !4559, inlinedAt: !4557)
!4563 = !DILocation(line: 2052, column: 19, scope: !4564, inlinedAt: !4557)
!4564 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 2052, column: 9)
!4565 = !DILocation(line: 2052, column: 35, scope: !4564, inlinedAt: !4557)
!4566 = !DILocation(line: 2052, column: 49, scope: !4564, inlinedAt: !4557)
!4567 = !DILocation(line: 2052, column: 9, scope: !4554, inlinedAt: !4557)
!4568 = !DILocation(line: 2053, column: 9, scope: !4564, inlinedAt: !4557)
!4569 = !DILocation(line: 2054, column: 9, scope: !4554, inlinedAt: !4557)
!4570 = !DILocation(line: 0, scope: !4571, inlinedAt: !4557)
!4571 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 2054, column: 9)
!4572 = !DILocation(line: 2055, column: 5, scope: !4554, inlinedAt: !4557)
!4573 = !DILocation(line: 0, scope: !4564, inlinedAt: !4557)
!4574 = !DILocation(line: 2056, column: 1, scope: !4554, inlinedAt: !4557)
!4575 = !DILocation(line: 1712, column: 49, scope: !4552)
!4576 = !DILocation(line: 1712, column: 13, scope: !4549)
!4577 = distinct !{!4577, !4544, !4578}
!4578 = !DILocation(line: 1715, column: 5, scope: !4524)
!4579 = !DILocation(line: 1713, column: 13, scope: !4549)
!4580 = !DILocation(line: 1714, column: 13, scope: !4549)
!4581 = !DILocation(line: 1717, column: 1, scope: !4524)
!4582 = !DILocation(line: 1716, column: 5, scope: !4524)
!4583 = !DILocation(line: 2050, column: 27, scope: !4554)
!4584 = !DILocation(line: 2051, column: 12, scope: !4559)
!4585 = !DILocation(line: 2051, column: 18, scope: !4559)
!4586 = !DILocation(line: 2051, column: 9, scope: !4554)
!4587 = !DILocation(line: 2051, column: 35, scope: !4559)
!4588 = !DILocation(line: 2052, column: 19, scope: !4564)
!4589 = !DILocation(line: 2052, column: 35, scope: !4564)
!4590 = !DILocation(line: 2052, column: 49, scope: !4564)
!4591 = !DILocation(line: 2052, column: 9, scope: !4554)
!4592 = !DILocation(line: 2053, column: 9, scope: !4564)
!4593 = !DILocation(line: 2054, column: 9, scope: !4554)
!4594 = !DILocation(line: 0, scope: !4571)
!4595 = !DILocation(line: 2055, column: 5, scope: !4554)
!4596 = !DILocation(line: 0, scope: !4564)
!4597 = !DILocation(line: 2056, column: 1, scope: !4554)
!4598 = distinct !DISubprogram(name: "clientCommand", scope: !3, file: !3, line: 1719, type: !4, isLocal: false, isDefinition: true, scopeLine: 1719, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4599)
!4599 = !{!4600, !4601, !4602, !4603, !4604, !4610, !4614, !4615, !4619, !4620, !4621, !4622, !4623, !4624, !4628, !4630, !4633, !4636, !4637, !4639, !4642, !4643, !4644}
!4600 = !DILocalVariable(name: "c", arg: 1, scope: !4598, file: !3, line: 1719, type: !6)
!4601 = !DILocalVariable(name: "ln", scope: !4598, file: !3, line: 1720, type: !103)
!4602 = !DILocalVariable(name: "li", scope: !4598, file: !3, line: 1721, type: !3031)
!4603 = !DILocalVariable(name: "client", scope: !4598, file: !3, line: 1722, type: !6)
!4604 = !DILocalVariable(name: "help", scope: !4605, file: !3, line: 1725, type: !4607)
!4605 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 1724, column: 62)
!4606 = distinct !DILexicalBlock(scope: !4598, file: !3, line: 1724, column: 9)
!4607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 896, elements: !4608)
!4608 = !{!4609}
!4609 = !DISubrange(count: 14)
!4610 = !DILocalVariable(name: "type", scope: !4611, file: !3, line: 1747, type: !18)
!4611 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 1745, column: 53)
!4612 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 1745, column: 16)
!4613 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 1742, column: 16)
!4614 = !DILocalVariable(name: "o", scope: !4611, file: !3, line: 1759, type: !137)
!4615 = !DILocalVariable(name: "addr", scope: !4616, file: !3, line: 1779, type: !139)
!4616 = distinct !DILexicalBlock(scope: !4617, file: !3, line: 1776, column: 53)
!4617 = distinct !DILexicalBlock(scope: !4618, file: !3, line: 1776, column: 16)
!4618 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 1762, column: 16)
!4619 = !DILocalVariable(name: "type", scope: !4616, file: !3, line: 1780, type: !18)
!4620 = !DILocalVariable(name: "id", scope: !4616, file: !3, line: 1781, type: !12)
!4621 = !DILocalVariable(name: "skipme", scope: !4616, file: !3, line: 1782, type: !18)
!4622 = !DILocalVariable(name: "killed", scope: !4616, file: !3, line: 1783, type: !18)
!4623 = !DILocalVariable(name: "close_this_client", scope: !4616, file: !3, line: 1783, type: !18)
!4624 = !DILocalVariable(name: "i", scope: !4625, file: !3, line: 1790, type: !18)
!4625 = distinct !DILexicalBlock(scope: !4626, file: !3, line: 1789, column: 33)
!4626 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 1789, column: 20)
!4627 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 1785, column: 13)
!4628 = !DILocalVariable(name: "moreargs", scope: !4629, file: !3, line: 1794, type: !18)
!4629 = distinct !DILexicalBlock(scope: !4625, file: !3, line: 1793, column: 32)
!4630 = !DILocalVariable(name: "tmp", scope: !4631, file: !3, line: 1797, type: !95)
!4631 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 1796, column: 68)
!4632 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 1796, column: 21)
!4633 = !DILocalVariable(name: "id", scope: !4634, file: !3, line: 1866, type: !95)
!4634 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 1864, column: 5)
!4635 = distinct !DILexicalBlock(scope: !4617, file: !3, line: 1862, column: 16)
!4636 = !DILocalVariable(name: "unblock_error", scope: !4634, file: !3, line: 1867, type: !18)
!4637 = !DILocalVariable(name: "target", scope: !4634, file: !3, line: 1882, type: !4638)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!4639 = !DILocalVariable(name: "j", scope: !4640, file: !3, line: 1895, type: !18)
!4640 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 1894, column: 72)
!4641 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 1894, column: 16)
!4642 = !DILocalVariable(name: "len", scope: !4640, file: !3, line: 1895, type: !18)
!4643 = !DILocalVariable(name: "p", scope: !4640, file: !3, line: 1896, type: !139)
!4644 = !DILocalVariable(name: "duration", scope: !4645, file: !3, line: 1928, type: !95)
!4645 = distinct !DILexicalBlock(scope: !4646, file: !3, line: 1927, column: 70)
!4646 = distinct !DILexicalBlock(scope: !4647, file: !3, line: 1927, column: 16)
!4647 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 1922, column: 16)
!4648 = !DILocation(line: 1641, column: 10, scope: !4138, inlinedAt: !4649)
!4649 = distinct !DILocation(line: 1835, column: 32, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 1835, column: 17)
!4651 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 1833, column: 46)
!4652 = !DILocation(line: 1719, column: 28, scope: !4598)
!4653 = !DILocation(line: 1721, column: 5, scope: !4598)
!4654 = !DILocation(line: 1724, column: 12, scope: !4606)
!4655 = !DILocation(line: 1724, column: 17, scope: !4606)
!4656 = !DILocation(line: 1724, column: 22, scope: !4606)
!4657 = !DILocation(line: 0, scope: !4613)
!4658 = !DILocation(line: 1724, column: 26, scope: !4606)
!4659 = !DILocation(line: 1724, column: 9, scope: !4598)
!4660 = !DILocation(line: 1725, column: 9, scope: !4605)
!4661 = !DILocation(line: 1725, column: 21, scope: !4605)
!4662 = !DILocation(line: 1741, column: 25, scope: !4605)
!4663 = !DILocation(line: 1741, column: 9, scope: !4605)
!4664 = !DILocation(line: 1742, column: 5, scope: !4606)
!4665 = !DILocation(line: 1742, column: 5, scope: !4605)
!4666 = !DILocation(line: 1742, column: 17, scope: !4613)
!4667 = !DILocation(line: 1742, column: 50, scope: !4613)
!4668 = !DILocation(line: 1742, column: 16, scope: !4606)
!4669 = !DILocation(line: 1744, column: 31, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4613, file: !3, line: 1742, column: 67)
!4671 = !DILocation(line: 1744, column: 9, scope: !4670)
!4672 = !DILocation(line: 1745, column: 5, scope: !4670)
!4673 = !DILocation(line: 1745, column: 17, scope: !4612)
!4674 = !DILocation(line: 1745, column: 16, scope: !4613)
!4675 = !DILocation(line: 1747, column: 13, scope: !4611)
!4676 = !DILocation(line: 1748, column: 21, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 1748, column: 13)
!4678 = !DILocation(line: 1748, column: 26, scope: !4677)
!4679 = !DILocation(line: 1748, column: 41, scope: !4677)
!4680 = !DILocation(line: 1748, column: 53, scope: !4677)
!4681 = !DILocation(line: 1748, column: 30, scope: !4677)
!4682 = !DILocation(line: 1748, column: 13, scope: !4611)
!4683 = !DILocation(line: 1749, column: 40, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4677, file: !3, line: 1748, column: 66)
!4685 = !DILocation(line: 1749, column: 52, scope: !4684)
!4686 = !DILocation(line: 1749, column: 20, scope: !4684)
!4687 = !DILocation(line: 1750, column: 22, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4684, file: !3, line: 1750, column: 17)
!4689 = !DILocation(line: 1750, column: 17, scope: !4684)
!4690 = !DILocation(line: 1752, column: 32, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 1750, column: 29)
!4692 = !DILocation(line: 1752, column: 29, scope: !4691)
!4693 = !DILocation(line: 1752, column: 41, scope: !4691)
!4694 = !DILocation(line: 1751, column: 17, scope: !4691)
!4695 = !DILocation(line: 1753, column: 17, scope: !4691)
!4696 = !DILocation(line: 1755, column: 20, scope: !4677)
!4697 = !DILocation(line: 1756, column: 31, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 1755, column: 34)
!4699 = distinct !DILexicalBlock(scope: !4677, file: !3, line: 1755, column: 20)
!4700 = !{!1881, !381, i64 128}
!4701 = !DILocation(line: 1756, column: 13, scope: !4698)
!4702 = !DILocation(line: 1757, column: 13, scope: !4698)
!4703 = !DILocation(line: 0, scope: !4684)
!4704 = !DILocation(line: 1759, column: 17, scope: !4611)
!4705 = !DILocation(line: 1759, column: 13, scope: !4611)
!4706 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !4707)
!4707 = distinct !DILocation(line: 1760, column: 33, scope: !4611)
!4708 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !4707)
!4709 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !4707)
!4710 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !4707)
!4711 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !4707)
!4712 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !4707)
!4713 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !4707)
!4714 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !4707)
!4715 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !4707)
!4716 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !4707)
!4717 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !4707)
!4718 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !4707)
!4719 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !4707)
!4720 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !4707)
!4721 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !4707)
!4722 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !4707)
!4723 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !4707)
!4724 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !4707)
!4725 = !DILocation(line: 0, scope: !855, inlinedAt: !4707)
!4726 = !DILocation(line: 0, scope: !4611)
!4727 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !4707)
!4728 = !DILocation(line: 1760, column: 9, scope: !4611)
!4729 = !DILocation(line: 1761, column: 9, scope: !4611)
!4730 = !DILocation(line: 1762, column: 5, scope: !4612)
!4731 = !DILocation(line: 1762, column: 17, scope: !4618)
!4732 = !DILocation(line: 1762, column: 53, scope: !4618)
!4733 = !DILocation(line: 1762, column: 64, scope: !4618)
!4734 = !DILocation(line: 1762, column: 16, scope: !4612)
!4735 = !DILocation(line: 1764, column: 25, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4737, file: !3, line: 1764, column: 13)
!4737 = distinct !DILexicalBlock(scope: !4618, file: !3, line: 1762, column: 70)
!4738 = !DILocation(line: 1764, column: 37, scope: !4736)
!4739 = !DILocation(line: 1764, column: 14, scope: !4736)
!4740 = !DILocation(line: 1764, column: 13, scope: !4737)
!4741 = !DILocation(line: 1765, column: 16, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4736, file: !3, line: 1764, column: 48)
!4743 = !DILocation(line: 1765, column: 22, scope: !4742)
!4744 = !DILocation(line: 1766, column: 31, scope: !4742)
!4745 = !{!1881, !381, i64 8}
!4746 = !DILocation(line: 1766, column: 13, scope: !4742)
!4747 = !DILocation(line: 1767, column: 9, scope: !4742)
!4748 = !DILocation(line: 1767, column: 21, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4736, file: !3, line: 1767, column: 20)
!4750 = !DILocation(line: 1767, column: 20, scope: !4736)
!4751 = !DILocation(line: 1768, column: 16, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 1767, column: 56)
!4753 = !DILocation(line: 1768, column: 22, scope: !4752)
!4754 = !DILocation(line: 1769, column: 9, scope: !4752)
!4755 = !DILocation(line: 1769, column: 21, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4749, file: !3, line: 1769, column: 20)
!4757 = !DILocation(line: 1769, column: 20, scope: !4749)
!4758 = !DILocation(line: 1770, column: 22, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4760, file: !3, line: 1770, column: 17)
!4760 = distinct !DILexicalBlock(scope: !4756, file: !3, line: 1769, column: 57)
!4761 = !DILocation(line: 1770, column: 28, scope: !4759)
!4762 = !DILocation(line: 1770, column: 17, scope: !4760)
!4763 = !DILocation(line: 1771, column: 26, scope: !4759)
!4764 = !DILocation(line: 1771, column: 17, scope: !4759)
!4765 = !DILocation(line: 1773, column: 31, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4756, file: !3, line: 1772, column: 16)
!4767 = !DILocation(line: 1773, column: 13, scope: !4766)
!4768 = !DILocation(line: 1774, column: 13, scope: !4766)
!4769 = !DILocation(line: 1776, column: 17, scope: !4617)
!4770 = !DILocation(line: 1776, column: 16, scope: !4618)
!4771 = !DILocation(line: 1779, column: 15, scope: !4616)
!4772 = !DILocation(line: 1780, column: 13, scope: !4616)
!4773 = !DILocation(line: 1781, column: 18, scope: !4616)
!4774 = !DILocation(line: 1782, column: 13, scope: !4616)
!4775 = !DILocation(line: 1783, column: 13, scope: !4616)
!4776 = !DILocation(line: 1783, column: 25, scope: !4616)
!4777 = !DILocation(line: 1785, column: 21, scope: !4627)
!4778 = !DILocation(line: 1785, column: 13, scope: !4616)
!4779 = !DILocation(line: 1787, column: 20, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 1785, column: 27)
!4781 = !DILocation(line: 1787, column: 32, scope: !4780)
!4782 = !DILocation(line: 1789, column: 9, scope: !4780)
!4783 = !DILocation(line: 1789, column: 28, scope: !4626)
!4784 = !DILocation(line: 1789, column: 20, scope: !4627)
!4785 = !DILocation(line: 1790, column: 17, scope: !4625)
!4786 = !DILocation(line: 1793, column: 13, scope: !4625)
!4787 = !DILocation(line: 1796, column: 36, scope: !4632)
!4788 = !DILocation(line: 1794, column: 43, scope: !4629)
!4789 = !DILocation(line: 1794, column: 40, scope: !4629)
!4790 = !DILocation(line: 1796, column: 33, scope: !4632)
!4791 = !DILocation(line: 1796, column: 45, scope: !4632)
!4792 = !DILocation(line: 1796, column: 22, scope: !4632)
!4793 = !DILocation(line: 1796, column: 55, scope: !4632)
!4794 = !DILocation(line: 1797, column: 21, scope: !4631)
!4795 = !DILocation(line: 1799, column: 56, scope: !4796)
!4796 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 1799, column: 25)
!4797 = !DILocation(line: 1797, column: 31, scope: !4631)
!4798 = !DILocation(line: 1799, column: 25, scope: !4796)
!4799 = !DILocation(line: 1800, column: 25, scope: !4796)
!4800 = !DILocation(line: 1799, column: 25, scope: !4631)
!4801 = !DILocation(line: 1801, column: 26, scope: !4631)
!4802 = !DILocation(line: 1802, column: 17, scope: !4632)
!4803 = !DILocation(line: 1800, column: 34, scope: !4796)
!4804 = !DILocation(line: 1802, column: 29, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4632, file: !3, line: 1802, column: 28)
!4806 = !DILocation(line: 1802, column: 64, scope: !4805)
!4807 = !DILocation(line: 1803, column: 48, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 1802, column: 77)
!4809 = !DILocation(line: 1803, column: 62, scope: !4808)
!4810 = !DILocation(line: 1803, column: 28, scope: !4808)
!4811 = !DILocation(line: 1804, column: 30, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 1804, column: 25)
!4813 = !DILocation(line: 1804, column: 25, scope: !4808)
!4814 = !DILocation(line: 1806, column: 40, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 1804, column: 37)
!4816 = !DILocation(line: 1806, column: 37, scope: !4815)
!4817 = !DILocation(line: 1806, column: 51, scope: !4815)
!4818 = !DILocation(line: 1805, column: 25, scope: !4815)
!4819 = !DILocation(line: 1807, column: 25, scope: !4815)
!4820 = !DILocation(line: 1809, column: 29, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 1809, column: 28)
!4822 = !DILocation(line: 1809, column: 64, scope: !4821)
!4823 = !DILocation(line: 1810, column: 28, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 1809, column: 77)
!4825 = !DILocation(line: 1810, column: 42, scope: !4824)
!4826 = !DILocation(line: 1811, column: 17, scope: !4824)
!4827 = !DILocation(line: 1811, column: 29, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4821, file: !3, line: 1811, column: 28)
!4829 = !DILocation(line: 1811, column: 66, scope: !4828)
!4830 = !DILocation(line: 1812, column: 37, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4832, file: !3, line: 1812, column: 25)
!4832 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 1811, column: 79)
!4833 = !DILocation(line: 1812, column: 51, scope: !4831)
!4834 = !DILocation(line: 1812, column: 26, scope: !4831)
!4835 = !DILocation(line: 1812, column: 25, scope: !4832)
!4836 = !DILocation(line: 1814, column: 33, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 1814, column: 32)
!4838 = !DILocation(line: 1814, column: 32, scope: !4831)
!4839 = !DILocation(line: 1817, column: 43, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 1816, column: 28)
!4841 = !DILocation(line: 1817, column: 25, scope: !4840)
!4842 = !DILocation(line: 1818, column: 25, scope: !4840)
!4843 = !DILocation(line: 1821, column: 39, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 1820, column: 24)
!4845 = !DILocation(line: 1821, column: 21, scope: !4844)
!4846 = !DILocation(line: 1822, column: 21, scope: !4844)
!4847 = !DILocation(line: 1824, column: 19, scope: !4629)
!4848 = !DILocation(line: 0, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 1812, column: 63)
!4850 = !DILocation(line: 0, scope: !4616)
!4851 = !DILocation(line: 1825, column: 13, scope: !4625)
!4852 = !DILocation(line: 1793, column: 26, scope: !4625)
!4853 = !DILocation(line: 1793, column: 21, scope: !4625)
!4854 = !DILocation(line: 1826, column: 9, scope: !4626)
!4855 = !DILocation(line: 1827, column: 31, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4626, file: !3, line: 1826, column: 16)
!4857 = !DILocation(line: 1827, column: 13, scope: !4856)
!4858 = !DILocation(line: 1828, column: 13, scope: !4856)
!4859 = !DILocation(line: 1832, column: 27, scope: !4616)
!4860 = !DILocation(line: 1721, column: 14, scope: !4598)
!4861 = !DILocation(line: 1832, column: 9, scope: !4616)
!4862 = !DILocation(line: 1833, column: 9, scope: !4616)
!4863 = !DILocation(line: 1833, column: 22, scope: !4616)
!4864 = !DILocation(line: 1720, column: 15, scope: !4598)
!4865 = !DILocation(line: 1833, column: 37, scope: !4616)
!4866 = !DILocation(line: 1834, column: 22, scope: !4651)
!4867 = !DILocation(line: 1722, column: 13, scope: !4598)
!4868 = !DILocation(line: 1835, column: 22, scope: !4650)
!4869 = !DILocation(line: 1640, column: 31, scope: !4138, inlinedAt: !4649)
!4870 = !DILocation(line: 1641, column: 5, scope: !4138, inlinedAt: !4649)
!4871 = !DILocation(line: 1643, column: 12, scope: !4258, inlinedAt: !4649)
!4872 = !DILocation(line: 1643, column: 19, scope: !4258, inlinedAt: !4649)
!4873 = !DILocation(line: 1643, column: 9, scope: !4138, inlinedAt: !4649)
!4874 = !DILocation(line: 1625, column: 30, scope: !4262, inlinedAt: !4875)
!4875 = distinct !DILocation(line: 1644, column: 9, scope: !4270, inlinedAt: !4649)
!4876 = !DILocation(line: 1625, column: 44, scope: !4262, inlinedAt: !4875)
!4877 = !DILocation(line: 1626, column: 36, scope: !4262, inlinedAt: !4875)
!4878 = !DILocation(line: 1627, column: 17, scope: !4274, inlinedAt: !4875)
!4879 = !DILocation(line: 1627, column: 23, scope: !4274, inlinedAt: !4875)
!4880 = !DILocation(line: 1627, column: 9, scope: !4262, inlinedAt: !4875)
!4881 = !DILocation(line: 1629, column: 50, scope: !4278, inlinedAt: !4875)
!4882 = !DILocation(line: 1629, column: 9, scope: !4278, inlinedAt: !4875)
!4883 = !DILocation(line: 1630, column: 5, scope: !4278, inlinedAt: !4875)
!4884 = !DILocation(line: 1632, column: 32, scope: !4282, inlinedAt: !4875)
!4885 = !DILocation(line: 1632, column: 9, scope: !4282, inlinedAt: !4875)
!4886 = !DILocation(line: 1634, column: 1, scope: !4262, inlinedAt: !4875)
!4887 = !DILocation(line: 1645, column: 21, scope: !4270, inlinedAt: !4649)
!4888 = !DILocation(line: 1645, column: 19, scope: !4270, inlinedAt: !4649)
!4889 = !DILocation(line: 1646, column: 5, scope: !4270, inlinedAt: !4649)
!4890 = !DILocation(line: 1647, column: 15, scope: !4138, inlinedAt: !4649)
!4891 = !DILocation(line: 1648, column: 1, scope: !4138, inlinedAt: !4649)
!4892 = !DILocation(line: 1647, column: 5, scope: !4138, inlinedAt: !4649)
!4893 = !DILocation(line: 1835, column: 25, scope: !4650)
!4894 = !DILocation(line: 1835, column: 62, scope: !4650)
!4895 = !DILocation(line: 1835, column: 17, scope: !4651)
!4896 = !DILocation(line: 1836, column: 28, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 1836, column: 17)
!4898 = !DILocation(line: 2050, column: 27, scope: !4554, inlinedAt: !4899)
!4899 = distinct !DILocation(line: 1836, column: 31, scope: !4897)
!4900 = !DILocation(line: 2051, column: 12, scope: !4559, inlinedAt: !4899)
!4901 = !DILocation(line: 2051, column: 18, scope: !4559, inlinedAt: !4899)
!4902 = !DILocation(line: 2051, column: 9, scope: !4554, inlinedAt: !4899)
!4903 = !DILocation(line: 2051, column: 35, scope: !4559, inlinedAt: !4899)
!4904 = !DILocation(line: 2052, column: 19, scope: !4564, inlinedAt: !4899)
!4905 = !DILocation(line: 2052, column: 35, scope: !4564, inlinedAt: !4899)
!4906 = !DILocation(line: 2052, column: 49, scope: !4564, inlinedAt: !4899)
!4907 = !DILocation(line: 2052, column: 9, scope: !4554, inlinedAt: !4899)
!4908 = !DILocation(line: 2053, column: 9, scope: !4564, inlinedAt: !4899)
!4909 = !DILocation(line: 2054, column: 9, scope: !4554, inlinedAt: !4899)
!4910 = !DILocation(line: 0, scope: !4571, inlinedAt: !4899)
!4911 = !DILocation(line: 2055, column: 5, scope: !4554, inlinedAt: !4899)
!4912 = !DILocation(line: 0, scope: !4564, inlinedAt: !4899)
!4913 = !DILocation(line: 2056, column: 1, scope: !4554, inlinedAt: !4899)
!4914 = !DILocation(line: 1836, column: 53, scope: !4897)
!4915 = !DILocation(line: 1836, column: 17, scope: !4651)
!4916 = !DILocation(line: 1837, column: 25, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 1837, column: 17)
!4918 = !DILocation(line: 1837, column: 36, scope: !4917)
!4919 = !DILocation(line: 1837, column: 39, scope: !4917)
!4920 = !DILocation(line: 1837, column: 17, scope: !4651)
!4921 = !DILocation(line: 1838, column: 19, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 1838, column: 17)
!4923 = !DILocation(line: 1838, column: 29, scope: !4922)
!4924 = distinct !{!4924, !4862, !4925}
!4925 = !DILocation(line: 1847, column: 9, scope: !4616)
!4926 = !DILocation(line: 1841, column: 17, scope: !4651)
!4927 = !DILocation(line: 1844, column: 17, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 1843, column: 20)
!4929 = distinct !DILexicalBlock(scope: !4651, file: !3, line: 1841, column: 17)
!4930 = !DILocation(line: 1846, column: 19, scope: !4651)
!4931 = !DILocation(line: 1850, column: 16, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 1850, column: 13)
!4933 = !DILocation(line: 1850, column: 21, scope: !4932)
!4934 = !DILocation(line: 1850, column: 13, scope: !4616)
!4935 = !DILocation(line: 1851, column: 24, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 1851, column: 17)
!4937 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 1850, column: 27)
!4938 = !DILocation(line: 1851, column: 17, scope: !4937)
!4939 = !DILocation(line: 384, column: 28, scope: !1567, inlinedAt: !4940)
!4940 = distinct !DILocation(line: 1852, column: 17, scope: !4936)
!4941 = !DILocation(line: 384, column: 43, scope: !1567, inlinedAt: !4940)
!4942 = !DILocation(line: 385, column: 31, scope: !1567, inlinedAt: !4940)
!4943 = !DILocation(line: 385, column: 5, scope: !1567, inlinedAt: !4940)
!4944 = !DILocation(line: 386, column: 1, scope: !1567, inlinedAt: !4940)
!4945 = !DILocation(line: 1852, column: 17, scope: !4936)
!4946 = !DILocation(line: 1854, column: 35, scope: !4936)
!4947 = !DILocation(line: 1854, column: 17, scope: !4936)
!4948 = !DILocation(line: 1856, column: 32, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 1855, column: 16)
!4950 = !DILocation(line: 1856, column: 13, scope: !4949)
!4951 = !DILocation(line: 1861, column: 13, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 1861, column: 13)
!4953 = !DILocation(line: 1861, column: 13, scope: !4616)
!4954 = !DILocation(line: 1861, column: 35, scope: !4952)
!4955 = !DILocation(line: 1861, column: 41, scope: !4952)
!4956 = !DILocation(line: 1861, column: 32, scope: !4952)
!4957 = !DILocation(line: 1862, column: 5, scope: !4617)
!4958 = !DILocation(line: 1862, column: 17, scope: !4635)
!4959 = !DILocation(line: 1862, column: 55, scope: !4635)
!4960 = !DILocation(line: 1862, column: 67, scope: !4635)
!4961 = !DILocation(line: 1862, column: 72, scope: !4635)
!4962 = !DILocation(line: 1863, column: 67, scope: !4635)
!4963 = !DILocation(line: 1862, column: 16, scope: !4617)
!4964 = !DILocation(line: 1866, column: 9, scope: !4634)
!4965 = !DILocation(line: 1867, column: 13, scope: !4634)
!4966 = !DILocation(line: 1869, column: 13, scope: !4634)
!4967 = !DILocation(line: 1870, column: 29, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4969, file: !3, line: 1870, column: 17)
!4969 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 1869, column: 27)
!4970 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 1869, column: 13)
!4971 = !DILocation(line: 1870, column: 41, scope: !4968)
!4972 = !DILocation(line: 1870, column: 18, scope: !4968)
!4973 = !DILocation(line: 1870, column: 17, scope: !4969)
!4974 = !DILocation(line: 1872, column: 25, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4968, file: !3, line: 1872, column: 24)
!4976 = !DILocation(line: 1872, column: 24, scope: !4968)
!4977 = !DILocation(line: 384, column: 28, scope: !1567, inlinedAt: !4978)
!4978 = distinct !DILocation(line: 1875, column: 17, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4975, file: !3, line: 1874, column: 20)
!4980 = !DILocation(line: 384, column: 43, scope: !1567, inlinedAt: !4978)
!4981 = !DILocation(line: 385, column: 31, scope: !1567, inlinedAt: !4978)
!4982 = !DILocation(line: 385, column: 5, scope: !1567, inlinedAt: !4978)
!4983 = !DILocation(line: 386, column: 1, scope: !1567, inlinedAt: !4978)
!4984 = !DILocation(line: 1877, column: 17, scope: !4979)
!4985 = !DILocation(line: 1894, column: 5, scope: !4635)
!4986 = !DILocation(line: 0, scope: !4634)
!4987 = !DILocation(line: 1880, column: 44, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 1880, column: 13)
!4989 = !DILocation(line: 1866, column: 19, scope: !4634)
!4990 = !DILocation(line: 1880, column: 13, scope: !4988)
!4991 = !DILocation(line: 1881, column: 13, scope: !4988)
!4992 = !DILocation(line: 1880, column: 13, scope: !4634)
!4993 = !DILocation(line: 1881, column: 22, scope: !4988)
!4994 = !DILocation(line: 1882, column: 50, scope: !4634)
!4995 = !DILocation(line: 977, column: 35, scope: !2838, inlinedAt: !4996)
!4996 = distinct !DILocation(line: 1882, column: 33, scope: !4634)
!4997 = !DILocation(line: 978, column: 10, scope: !2838, inlinedAt: !4996)
!4998 = !DILocation(line: 978, column: 8, scope: !2838, inlinedAt: !4996)
!4999 = !DILocation(line: 979, column: 32, scope: !2838, inlinedAt: !4996)
!5000 = !DILocation(line: 979, column: 17, scope: !2838, inlinedAt: !4996)
!5001 = !DILocation(line: 979, column: 13, scope: !2838, inlinedAt: !4996)
!5002 = !DILocation(line: 980, column: 18, scope: !2838, inlinedAt: !4996)
!5003 = !DILocation(line: 980, column: 15, scope: !2838, inlinedAt: !4996)
!5004 = !DILocation(line: 980, column: 5, scope: !2838, inlinedAt: !4996)
!5005 = !DILocation(line: 1883, column: 13, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 1883, column: 13)
!5007 = !DILocation(line: 1883, column: 20, scope: !5006)
!5008 = !DILocation(line: 1883, column: 31, scope: !5006)
!5009 = !DILocation(line: 1883, column: 37, scope: !5006)
!5010 = !DILocation(line: 1883, column: 13, scope: !4634)
!5011 = !DILocation(line: 1884, column: 17, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !5013, file: !3, line: 1884, column: 17)
!5013 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 1883, column: 55)
!5014 = !DILocation(line: 1884, column: 17, scope: !5013)
!5015 = !DILocation(line: 384, column: 43, scope: !1567, inlinedAt: !5016)
!5016 = distinct !DILocation(line: 1885, column: 17, scope: !5012)
!5017 = !DILocation(line: 385, column: 31, scope: !1567, inlinedAt: !5016)
!5018 = !DILocation(line: 385, column: 5, scope: !1567, inlinedAt: !5016)
!5019 = !DILocation(line: 386, column: 1, scope: !1567, inlinedAt: !5016)
!5020 = !DILocation(line: 1885, column: 17, scope: !5012)
!5021 = !DILocation(line: 1888, column: 17, scope: !5012)
!5022 = !DILocation(line: 1889, column: 13, scope: !5013)
!5023 = !DILocation(line: 1890, column: 31, scope: !5013)
!5024 = !DILocation(line: 1890, column: 13, scope: !5013)
!5025 = !DILocation(line: 1891, column: 9, scope: !5013)
!5026 = !DILocation(line: 1892, column: 31, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 1891, column: 16)
!5028 = !DILocation(line: 1892, column: 13, scope: !5027)
!5029 = !DILocation(line: 1894, column: 17, scope: !4641)
!5030 = !DILocation(line: 1894, column: 55, scope: !4641)
!5031 = !DILocation(line: 1894, column: 66, scope: !4641)
!5032 = !DILocation(line: 1894, column: 16, scope: !4635)
!5033 = !DILocation(line: 1895, column: 29, scope: !4640)
!5034 = !DILocation(line: 1895, column: 41, scope: !4640)
!5035 = !DILocation(line: 87, column: 39, scope: !843, inlinedAt: !5036)
!5036 = distinct !DILocation(line: 1895, column: 22, scope: !4640)
!5037 = !DILocation(line: 88, column: 27, scope: !843, inlinedAt: !5036)
!5038 = !DILocation(line: 88, column: 19, scope: !843, inlinedAt: !5036)
!5039 = !DILocation(line: 89, column: 5, scope: !843, inlinedAt: !5036)
!5040 = !DILocation(line: 91, column: 20, scope: !855, inlinedAt: !5036)
!5041 = !DILocation(line: 91, column: 13, scope: !855, inlinedAt: !5036)
!5042 = !DILocation(line: 93, column: 20, scope: !855, inlinedAt: !5036)
!5043 = !DILocation(line: 93, column: 34, scope: !855, inlinedAt: !5036)
!5044 = !DILocation(line: 93, column: 13, scope: !855, inlinedAt: !5036)
!5045 = !DILocation(line: 95, column: 20, scope: !855, inlinedAt: !5036)
!5046 = !DILocation(line: 95, column: 35, scope: !855, inlinedAt: !5036)
!5047 = !DILocation(line: 95, column: 13, scope: !855, inlinedAt: !5036)
!5048 = !DILocation(line: 97, column: 20, scope: !855, inlinedAt: !5036)
!5049 = !DILocation(line: 97, column: 35, scope: !855, inlinedAt: !5036)
!5050 = !DILocation(line: 97, column: 13, scope: !855, inlinedAt: !5036)
!5051 = !DILocation(line: 99, column: 20, scope: !855, inlinedAt: !5036)
!5052 = !DILocation(line: 99, column: 35, scope: !855, inlinedAt: !5036)
!5053 = !DILocation(line: 99, column: 13, scope: !855, inlinedAt: !5036)
!5054 = !DILocation(line: 101, column: 5, scope: !843, inlinedAt: !5036)
!5055 = !DILocation(line: 102, column: 1, scope: !843, inlinedAt: !5036)
!5056 = !DILocation(line: 1895, column: 16, scope: !4640)
!5057 = !DILocation(line: 1896, column: 15, scope: !4640)
!5058 = !DILocation(line: 1900, column: 13, scope: !4640)
!5059 = !DILocation(line: 0, scope: !855, inlinedAt: !5036)
!5060 = !DILocation(line: 0, scope: !4640)
!5061 = !DILocation(line: 1895, column: 22, scope: !4640)
!5062 = !DILocation(line: 1900, column: 17, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 1900, column: 13)
!5064 = !DILocation(line: 1901, column: 20, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5066, file: !3, line: 1901, column: 17)
!5066 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 1900, column: 23)
!5067 = !DILocation(line: 1901, column: 17, scope: !5065)
!5068 = !DILocation(line: 1901, column: 17, scope: !5066)
!5069 = !DILocation(line: 1901, column: 26, scope: !5065)
!5070 = !DILocation(line: 1902, column: 21, scope: !5066)
!5071 = !DILocation(line: 1903, column: 31, scope: !5066)
!5072 = !DILocation(line: 1903, column: 13, scope: !5066)
!5073 = !DILocation(line: 1904, column: 13, scope: !5066)
!5074 = !DILocation(line: 1895, column: 13, scope: !4640)
!5075 = !DILocation(line: 1910, column: 14, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 1910, column: 9)
!5077 = !DILocation(line: 1910, column: 23, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 1910, column: 9)
!5079 = !DILocation(line: 1910, column: 9, scope: !5076)
!5080 = !DILocation(line: 1911, column: 17, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 1911, column: 17)
!5082 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 1910, column: 35)
!5083 = !DILocation(line: 1911, column: 22, scope: !5081)
!5084 = !DILocation(line: 1911, column: 28, scope: !5081)
!5085 = !DILocation(line: 1911, column: 36, scope: !5081)
!5086 = !DILocation(line: 1911, column: 17, scope: !5082)
!5087 = !DILocation(line: 384, column: 28, scope: !1567, inlinedAt: !5088)
!5088 = distinct !DILocation(line: 1912, column: 17, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5081, file: !3, line: 1911, column: 43)
!5090 = !DILocation(line: 384, column: 43, scope: !1567, inlinedAt: !5088)
!5091 = !DILocation(line: 385, column: 31, scope: !1567, inlinedAt: !5088)
!5092 = !DILocation(line: 385, column: 5, scope: !1567, inlinedAt: !5088)
!5093 = !DILocation(line: 386, column: 1, scope: !1567, inlinedAt: !5088)
!5094 = !DILocation(line: 1915, column: 17, scope: !5089)
!5095 = !DILocation(line: 1910, column: 31, scope: !5078)
!5096 = !DILocation(line: 1910, column: 9, scope: !5078)
!5097 = distinct !{!5097, !5079, !5098}
!5098 = !DILocation(line: 1917, column: 9, scope: !5076)
!5099 = !DILocation(line: 1918, column: 16, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 1918, column: 13)
!5101 = !DILocation(line: 1918, column: 13, scope: !5100)
!5102 = !DILocation(line: 1918, column: 13, scope: !4640)
!5103 = !DILocation(line: 1918, column: 22, scope: !5100)
!5104 = !DILocation(line: 1919, column: 22, scope: !4640)
!5105 = !DILocation(line: 1919, column: 19, scope: !4640)
!5106 = !DILocation(line: 1919, column: 17, scope: !4640)
!5107 = !DILocation(line: 1920, column: 9, scope: !4640)
!5108 = !DILocation(line: 1921, column: 27, scope: !4640)
!5109 = !DILocation(line: 1921, column: 9, scope: !4640)
!5110 = !DILocation(line: 1922, column: 5, scope: !4641)
!5111 = !DILocation(line: 1922, column: 17, scope: !4647)
!5112 = !DILocation(line: 1922, column: 55, scope: !4647)
!5113 = !DILocation(line: 1922, column: 16, scope: !4641)
!5114 = !DILocation(line: 1923, column: 16, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5116, file: !3, line: 1923, column: 13)
!5116 = distinct !DILexicalBlock(scope: !4647, file: !3, line: 1922, column: 72)
!5117 = !DILocation(line: 1923, column: 13, scope: !5115)
!5118 = !DILocation(line: 1923, column: 13, scope: !5116)
!5119 = !DILocation(line: 567, column: 27, scope: !1900, inlinedAt: !5120)
!5120 = distinct !DILocation(line: 1924, column: 13, scope: !5115)
!5121 = !DILocation(line: 567, column: 36, scope: !1900, inlinedAt: !5120)
!5122 = !DILocation(line: 568, column: 5, scope: !1900, inlinedAt: !5120)
!5123 = !DILocation(line: 569, column: 5, scope: !1900, inlinedAt: !5120)
!5124 = !DILocation(line: 570, column: 23, scope: !1900, inlinedAt: !5120)
!5125 = !DILocation(line: 570, column: 5, scope: !1900, inlinedAt: !5120)
!5126 = !DILocation(line: 571, column: 1, scope: !1900, inlinedAt: !5120)
!5127 = !DILocation(line: 1924, column: 13, scope: !5115)
!5128 = !DILocation(line: 1926, column: 31, scope: !5115)
!5129 = !DILocation(line: 1926, column: 13, scope: !5115)
!5130 = !DILocation(line: 1927, column: 17, scope: !4646)
!5131 = !DILocation(line: 1927, column: 53, scope: !4646)
!5132 = !DILocation(line: 1927, column: 64, scope: !4646)
!5133 = !DILocation(line: 1927, column: 16, scope: !4647)
!5134 = !DILocation(line: 1928, column: 9, scope: !4645)
!5135 = !DILocation(line: 1930, column: 43, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 1930, column: 13)
!5137 = !DILocation(line: 1928, column: 19, scope: !4645)
!5138 = !DILocation(line: 1930, column: 13, scope: !5136)
!5139 = !DILocation(line: 1931, column: 41, scope: !5136)
!5140 = !DILocation(line: 1930, column: 13, scope: !4645)
!5141 = !DILocation(line: 1931, column: 50, scope: !5136)
!5142 = !DILocation(line: 1934, column: 5, scope: !4646)
!5143 = !DILocation(line: 1932, column: 22, scope: !4645)
!5144 = !DILocalVariable(name: "end", arg: 1, scope: !5145, file: !3, line: 2197, type: !235)
!5145 = distinct !DISubprogram(name: "pauseClients", scope: !3, file: !3, line: 2197, type: !5146, isLocal: false, isDefinition: true, scopeLine: 2197, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5148)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{null, !235}
!5148 = !{!5144}
!5149 = !DILocation(line: 2197, column: 28, scope: !5145, inlinedAt: !5150)
!5150 = distinct !DILocation(line: 1932, column: 9, scope: !4645)
!5151 = !DILocation(line: 2198, column: 17, scope: !5152, inlinedAt: !5150)
!5152 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 2198, column: 9)
!5153 = !DILocation(line: 2198, column: 10, scope: !5152, inlinedAt: !5150)
!5154 = !DILocation(line: 2198, column: 32, scope: !5152, inlinedAt: !5150)
!5155 = !DILocation(line: 2198, column: 48, scope: !5152, inlinedAt: !5150)
!5156 = !DILocation(line: 2198, column: 39, scope: !5152, inlinedAt: !5150)
!5157 = !DILocation(line: 2198, column: 9, scope: !5145, inlinedAt: !5150)
!5158 = !DILocation(line: 2199, column: 39, scope: !5152, inlinedAt: !5150)
!5159 = !DILocation(line: 2199, column: 9, scope: !5152, inlinedAt: !5150)
!5160 = !DILocation(line: 2200, column: 27, scope: !5145, inlinedAt: !5150)
!5161 = !DILocation(line: 2201, column: 1, scope: !5145, inlinedAt: !5150)
!5162 = !DILocation(line: 1933, column: 27, scope: !4645)
!5163 = !DILocation(line: 1933, column: 9, scope: !4645)
!5164 = !DILocation(line: 1935, column: 9, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !4646, file: !3, line: 1934, column: 12)
!5166 = !DILocation(line: 1937, column: 1, scope: !4598)
!5167 = distinct !DISubprogram(name: "getClientTypeByName", scope: !3, file: !3, line: 2058, type: !5168, isLocal: false, isDefinition: true, scopeLine: 2058, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5170)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!18, !139}
!5170 = !{!5171}
!5171 = !DILocalVariable(name: "name", arg: 1, scope: !5167, file: !3, line: 2058, type: !139)
!5172 = !DILocation(line: 2058, column: 31, scope: !5167)
!5173 = !DILocation(line: 2059, column: 10, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5167, file: !3, line: 2059, column: 9)
!5175 = !DILocation(line: 2059, column: 9, scope: !5167)
!5176 = !DILocation(line: 2059, column: 37, scope: !5174)
!5177 = !DILocation(line: 2060, column: 15, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 2060, column: 14)
!5179 = !DILocation(line: 2060, column: 14, scope: !5174)
!5180 = !DILocation(line: 2060, column: 41, scope: !5178)
!5181 = !DILocation(line: 2061, column: 15, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5178, file: !3, line: 2061, column: 14)
!5183 = !DILocation(line: 2061, column: 14, scope: !5178)
!5184 = !DILocation(line: 2061, column: 43, scope: !5182)
!5185 = !DILocation(line: 2062, column: 15, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 2062, column: 14)
!5187 = !DILocation(line: 2062, column: 14, scope: !5182)
!5188 = !DILocation(line: 2062, column: 42, scope: !5186)
!5189 = !DILocation(line: 2063, column: 15, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5186, file: !3, line: 2063, column: 14)
!5191 = !DILocation(line: 2063, column: 14, scope: !5186)
!5192 = !DILocation(line: 0, scope: !5190)
!5193 = !DILocation(line: 2063, column: 42, scope: !5190)
!5194 = !DILocation(line: 0, scope: !5174)
!5195 = !DILocation(line: 2065, column: 1, scope: !5167)
!5196 = !DILocation(line: 2197, column: 28, scope: !5145)
!5197 = !DILocation(line: 2198, column: 17, scope: !5152)
!5198 = !DILocation(line: 2198, column: 10, scope: !5152)
!5199 = !DILocation(line: 2198, column: 32, scope: !5152)
!5200 = !DILocation(line: 2198, column: 48, scope: !5152)
!5201 = !DILocation(line: 2198, column: 39, scope: !5152)
!5202 = !DILocation(line: 2198, column: 9, scope: !5145)
!5203 = !DILocation(line: 2199, column: 39, scope: !5152)
!5204 = !DILocation(line: 2199, column: 9, scope: !5152)
!5205 = !DILocation(line: 2200, column: 27, scope: !5145)
!5206 = !DILocation(line: 2201, column: 1, scope: !5145)
!5207 = !DILocation(line: 1948, column: 37, scope: !2)
!5208 = !DILocation(line: 1950, column: 18, scope: !2)
!5209 = !DILocation(line: 1950, column: 12, scope: !2)
!5210 = !DILocation(line: 1952, column: 18, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1952, column: 9)
!5212 = !DILocation(line: 1952, column: 17, scope: !5211)
!5213 = !DILocation(line: 1952, column: 9, scope: !5211)
!5214 = !DILocation(line: 1952, column: 31, scope: !5211)
!5215 = !DILocation(line: 1952, column: 9, scope: !2)
!5216 = !DILocation(line: 1953, column: 9, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5211, file: !3, line: 1952, column: 37)
!5218 = !DILocation(line: 1954, column: 21, scope: !5217)
!5219 = !DILocation(line: 1955, column: 5, scope: !5217)
!5220 = !DILocation(line: 957, column: 30, scope: !1257, inlinedAt: !5221)
!5221 = distinct !DILocation(line: 1956, column: 5, scope: !2)
!5222 = !DILocation(line: 958, column: 12, scope: !1262, inlinedAt: !5221)
!5223 = !DILocation(line: 958, column: 18, scope: !1262, inlinedAt: !5221)
!5224 = !DILocation(line: 958, column: 38, scope: !1262, inlinedAt: !5221)
!5225 = !DILocation(line: 958, column: 50, scope: !1262, inlinedAt: !5221)
!5226 = !DILocation(line: 958, column: 9, scope: !1257, inlinedAt: !5221)
!5227 = !DILocation(line: 959, column: 14, scope: !1257, inlinedAt: !5221)
!5228 = !DILocation(line: 960, column: 28, scope: !1257, inlinedAt: !5221)
!5229 = !DILocation(line: 960, column: 45, scope: !1257, inlinedAt: !5221)
!5230 = !DILocation(line: 960, column: 5, scope: !1257, inlinedAt: !5221)
!5231 = !DILocation(line: 961, column: 1, scope: !1257, inlinedAt: !5221)
!5232 = !DILocation(line: 1957, column: 1, scope: !2)
!5233 = distinct !DISubprogram(name: "rewriteClientCommandVector", scope: !3, file: !3, line: 1962, type: !5234, isLocal: false, isDefinition: true, scopeLine: 1962, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5236)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{null, !6, !18, null}
!5236 = !{!5237, !5238, !5239, !5240, !5241, !5242}
!5237 = !DILocalVariable(name: "c", arg: 1, scope: !5233, file: !3, line: 1962, type: !6)
!5238 = !DILocalVariable(name: "argc", arg: 2, scope: !5233, file: !3, line: 1962, type: !18)
!5239 = !DILocalVariable(name: "ap", scope: !5233, file: !3, line: 1963, type: !1587)
!5240 = !DILocalVariable(name: "j", scope: !5233, file: !3, line: 1964, type: !18)
!5241 = !DILocalVariable(name: "argv", scope: !5233, file: !3, line: 1965, type: !150)
!5242 = !DILocalVariable(name: "a", scope: !5243, file: !3, line: 1970, type: !126)
!5243 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 1969, column: 32)
!5244 = distinct !DILexicalBlock(scope: !5245, file: !3, line: 1969, column: 5)
!5245 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 1969, column: 5)
!5246 = !DILocation(line: 1962, column: 41, scope: !5233)
!5247 = !DILocation(line: 1962, column: 48, scope: !5233)
!5248 = !DILocation(line: 1963, column: 5, scope: !5233)
!5249 = !DILocation(line: 1963, column: 13, scope: !5233)
!5250 = !DILocation(line: 1967, column: 34, scope: !5233)
!5251 = !DILocation(line: 1967, column: 33, scope: !5233)
!5252 = !DILocation(line: 1967, column: 12, scope: !5233)
!5253 = !DILocation(line: 1965, column: 12, scope: !5233)
!5254 = !DILocation(line: 1968, column: 5, scope: !5233)
!5255 = !DILocation(line: 1964, column: 9, scope: !5233)
!5256 = !DILocation(line: 1969, column: 10, scope: !5245)
!5257 = !DILocation(line: 1969, column: 19, scope: !5244)
!5258 = !DILocation(line: 1969, column: 5, scope: !5245)
!5259 = !DILocation(line: 1972, column: 13, scope: !5243)
!5260 = !DILocation(line: 1970, column: 15, scope: !5243)
!5261 = !DILocation(line: 1973, column: 9, scope: !5243)
!5262 = !DILocation(line: 1973, column: 17, scope: !5243)
!5263 = !DILocation(line: 1974, column: 9, scope: !5243)
!5264 = !DILocation(line: 1969, column: 28, scope: !5244)
!5265 = !DILocation(line: 1969, column: 5, scope: !5244)
!5266 = distinct !{!5266, !5258, !5267}
!5267 = !DILocation(line: 1975, column: 5, scope: !5245)
!5268 = !DILocation(line: 1979, column: 10, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 1979, column: 5)
!5270 = !DILocation(line: 1979, column: 24, scope: !5271)
!5271 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 1979, column: 5)
!5272 = !DILocation(line: 1979, column: 19, scope: !5271)
!5273 = !DILocation(line: 0, scope: !5233)
!5274 = !DILocation(line: 1979, column: 5, scope: !5269)
!5275 = !DILocation(line: 1979, column: 48, scope: !5271)
!5276 = !DILocation(line: 1979, column: 35, scope: !5271)
!5277 = !DILocation(line: 1979, column: 31, scope: !5271)
!5278 = !DILocation(line: 1979, column: 5, scope: !5271)
!5279 = distinct !{!5279, !5274, !5280}
!5280 = !DILocation(line: 1979, column: 58, scope: !5269)
!5281 = !DILocation(line: 1980, column: 11, scope: !5233)
!5282 = !DILocation(line: 1980, column: 5, scope: !5233)
!5283 = !DILocation(line: 1982, column: 13, scope: !5233)
!5284 = !DILocation(line: 1983, column: 13, scope: !5233)
!5285 = !DILocation(line: 1984, column: 38, scope: !5233)
!5286 = !DILocation(line: 1984, column: 50, scope: !5233)
!5287 = !DILocation(line: 1984, column: 14, scope: !5233)
!5288 = !DILocation(line: 1984, column: 8, scope: !5233)
!5289 = !DILocation(line: 1984, column: 12, scope: !5233)
!5290 = !DILocation(line: 1985, column: 5, scope: !5233)
!5291 = !DILocation(line: 1986, column: 5, scope: !5233)
!5292 = !DILocation(line: 1987, column: 1, scope: !5233)
!5293 = distinct !DISubprogram(name: "replaceClientCommandVector", scope: !3, file: !3, line: 1990, type: !5294, isLocal: false, isDefinition: true, scopeLine: 1990, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5296)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{null, !6, !18, !150}
!5296 = !{!5297, !5298, !5299}
!5297 = !DILocalVariable(name: "c", arg: 1, scope: !5293, file: !3, line: 1990, type: !6)
!5298 = !DILocalVariable(name: "argc", arg: 2, scope: !5293, file: !3, line: 1990, type: !18)
!5299 = !DILocalVariable(name: "argv", arg: 3, scope: !5293, file: !3, line: 1990, type: !150)
!5300 = !DILocation(line: 1990, column: 41, scope: !5293)
!5301 = !DILocation(line: 1990, column: 48, scope: !5293)
!5302 = !DILocation(line: 1990, column: 61, scope: !5293)
!5303 = !DILocation(line: 779, column: 36, scope: !2599, inlinedAt: !5304)
!5304 = distinct !DILocation(line: 1991, column: 5, scope: !5293)
!5305 = !DILocation(line: 780, column: 9, scope: !2599, inlinedAt: !5304)
!5306 = !DILocation(line: 781, column: 10, scope: !2606, inlinedAt: !5304)
!5307 = !DILocation(line: 781, column: 24, scope: !2608, inlinedAt: !5304)
!5308 = !DILocation(line: 781, column: 19, scope: !2608, inlinedAt: !5304)
!5309 = !DILocation(line: 781, column: 5, scope: !2606, inlinedAt: !5304)
!5310 = !DILocation(line: 782, column: 25, scope: !2608, inlinedAt: !5304)
!5311 = !DILocation(line: 782, column: 22, scope: !2608, inlinedAt: !5304)
!5312 = !DILocation(line: 782, column: 9, scope: !2608, inlinedAt: !5304)
!5313 = !DILocation(line: 781, column: 31, scope: !2608, inlinedAt: !5304)
!5314 = !DILocation(line: 781, column: 5, scope: !2608, inlinedAt: !5304)
!5315 = !DILocation(line: 783, column: 13, scope: !2599, inlinedAt: !5304)
!5316 = !DILocation(line: 784, column: 8, scope: !2599, inlinedAt: !5304)
!5317 = !DILocation(line: 784, column: 12, scope: !2599, inlinedAt: !5304)
!5318 = !DILocation(line: 785, column: 1, scope: !2599, inlinedAt: !5304)
!5319 = !DILocation(line: 1992, column: 15, scope: !5293)
!5320 = !DILocation(line: 56, column: 33, scope: !3383, inlinedAt: !5321)
!5321 = distinct !DILocation(line: 1992, column: 5, scope: !5293)
!5322 = !DILocation(line: 57, column: 10, scope: !3383, inlinedAt: !5321)
!5323 = !DILocation(line: 237, column: 45, scope: !2698, inlinedAt: !5324)
!5324 = distinct !DILocation(line: 57, column: 2, scope: !3383, inlinedAt: !5321)
!5325 = !DILocation(line: 237, column: 54, scope: !2698, inlinedAt: !5324)
!5326 = !DILocation(line: 231, column: 48, scope: !2704, inlinedAt: !5327)
!5327 = distinct !DILocation(line: 239, column: 2, scope: !2698, inlinedAt: !5324)
!5328 = !DILocation(line: 231, column: 57, scope: !2704, inlinedAt: !5327)
!5329 = !DILocation(line: 233, column: 2, scope: !2710, inlinedAt: !5327)
!5330 = !DILocation(line: 233, column: 2, scope: !2711, inlinedAt: !5327)
!5331 = !DILocation(line: 233, column: 2, scope: !2714, inlinedAt: !5327)
!5332 = !DILocation(line: 234, column: 5, scope: !2704, inlinedAt: !5327)
!5333 = !DILocation(line: 234, column: 2, scope: !2704, inlinedAt: !5327)
!5334 = !DILocation(line: 235, column: 1, scope: !2704, inlinedAt: !5327)
!5335 = !DILocation(line: 240, column: 1, scope: !2698, inlinedAt: !5324)
!5336 = !DILocation(line: 58, column: 1, scope: !3383, inlinedAt: !5321)
!5337 = !DILocation(line: 1993, column: 13, scope: !5293)
!5338 = !DILocation(line: 1994, column: 13, scope: !5293)
!5339 = !DILocation(line: 1995, column: 38, scope: !5293)
!5340 = !DILocation(line: 1995, column: 50, scope: !5293)
!5341 = !DILocation(line: 1995, column: 14, scope: !5293)
!5342 = !DILocation(line: 1995, column: 12, scope: !5293)
!5343 = !DILocation(line: 1996, column: 5, scope: !5293)
!5344 = !DILocation(line: 1997, column: 1, scope: !5293)
!5345 = distinct !DISubprogram(name: "rewriteClientCommandArgument", scope: !3, file: !3, line: 2010, type: !5346, isLocal: false, isDefinition: true, scopeLine: 2010, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5348)
!5346 = !DISubroutineType(types: !5347)
!5347 = !{null, !6, !18, !126}
!5348 = !{!5349, !5350, !5351, !5352}
!5349 = !DILocalVariable(name: "c", arg: 1, scope: !5345, file: !3, line: 2010, type: !6)
!5350 = !DILocalVariable(name: "i", arg: 2, scope: !5345, file: !3, line: 2010, type: !18)
!5351 = !DILocalVariable(name: "newval", arg: 3, scope: !5345, file: !3, line: 2010, type: !126)
!5352 = !DILocalVariable(name: "oldval", scope: !5345, file: !3, line: 2011, type: !126)
!5353 = !DILocation(line: 2010, column: 43, scope: !5345)
!5354 = !DILocation(line: 2010, column: 50, scope: !5345)
!5355 = !DILocation(line: 2010, column: 59, scope: !5345)
!5356 = !DILocation(line: 2013, column: 17, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 2013, column: 9)
!5358 = !DILocation(line: 2013, column: 11, scope: !5357)
!5359 = !DILocation(line: 2013, column: 9, scope: !5345)
!5360 = !DILocation(line: 0, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 2013, column: 23)
!5362 = !DILocation(line: 2018, column: 14, scope: !5345)
!5363 = !DILocation(line: 2014, column: 31, scope: !5361)
!5364 = !DILocation(line: 2014, column: 52, scope: !5361)
!5365 = !DILocation(line: 2014, column: 50, scope: !5361)
!5366 = !DILocation(line: 2014, column: 49, scope: !5361)
!5367 = !DILocation(line: 2014, column: 19, scope: !5361)
!5368 = !DILocation(line: 2014, column: 17, scope: !5361)
!5369 = !DILocation(line: 2015, column: 17, scope: !5361)
!5370 = !DILocation(line: 2016, column: 12, scope: !5361)
!5371 = !DILocation(line: 2016, column: 9, scope: !5361)
!5372 = !DILocation(line: 2016, column: 20, scope: !5361)
!5373 = !DILocation(line: 2017, column: 5, scope: !5361)
!5374 = !DILocation(line: 2018, column: 17, scope: !5345)
!5375 = !DILocation(line: 2011, column: 11, scope: !5345)
!5376 = !DILocation(line: 2019, column: 16, scope: !5345)
!5377 = !DILocation(line: 2020, column: 5, scope: !5345)
!5378 = !DILocation(line: 2021, column: 9, scope: !5379)
!5379 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 2021, column: 9)
!5380 = !DILocation(line: 2021, column: 9, scope: !5345)
!5381 = !DILocation(line: 2021, column: 17, scope: !5379)
!5382 = !DILocation(line: 2024, column: 11, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 2024, column: 9)
!5384 = !DILocation(line: 2024, column: 9, scope: !5345)
!5385 = !DILocation(line: 2025, column: 45, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 2024, column: 17)
!5387 = !DILocation(line: 2025, column: 42, scope: !5386)
!5388 = !DILocation(line: 2025, column: 54, scope: !5386)
!5389 = !DILocation(line: 2025, column: 18, scope: !5386)
!5390 = !DILocation(line: 2025, column: 12, scope: !5386)
!5391 = !DILocation(line: 2025, column: 16, scope: !5386)
!5392 = !DILocation(line: 2026, column: 9, scope: !5386)
!5393 = !DILocation(line: 2028, column: 1, scope: !5345)
!5394 = distinct !DISubprogram(name: "getClientTypeName", scope: !3, file: !3, line: 2067, type: !5395, isLocal: false, isDefinition: true, scopeLine: 2067, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5397)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{!139, !18}
!5397 = !{!5398}
!5398 = !DILocalVariable(name: "class", arg: 1, scope: !5394, file: !3, line: 2067, type: !18)
!5399 = !DILocation(line: 2067, column: 29, scope: !5394)
!5400 = !DILocation(line: 2068, column: 5, scope: !5394)
!5401 = !DILocation(line: 0, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 2068, column: 19)
!5403 = !DILocation(line: 2075, column: 1, scope: !5394)
!5404 = distinct !DISubprogram(name: "checkClientOutputBufferLimits", scope: !3, file: !3, line: 2083, type: !1070, isLocal: false, isDefinition: true, scopeLine: 2083, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5405)
!5405 = !{!5406, !5407, !5408, !5409, !5410, !5411}
!5406 = !DILocalVariable(name: "c", arg: 1, scope: !5404, file: !3, line: 2083, type: !6)
!5407 = !DILocalVariable(name: "soft", scope: !5404, file: !3, line: 2084, type: !18)
!5408 = !DILocalVariable(name: "hard", scope: !5404, file: !3, line: 2084, type: !18)
!5409 = !DILocalVariable(name: "class", scope: !5404, file: !3, line: 2084, type: !18)
!5410 = !DILocalVariable(name: "used_mem", scope: !5404, file: !3, line: 2085, type: !16)
!5411 = !DILocalVariable(name: "elapsed", scope: !5412, file: !3, line: 2106, type: !182)
!5412 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 2105, column: 16)
!5413 = distinct !DILexicalBlock(scope: !5414, file: !3, line: 2102, column: 13)
!5414 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 2101, column: 15)
!5415 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 2101, column: 9)
!5416 = !DILocation(line: 2083, column: 43, scope: !5404)
!5417 = !DILocation(line: 2084, column: 9, scope: !5404)
!5418 = !DILocation(line: 2084, column: 19, scope: !5404)
!5419 = !DILocation(line: 2036, column: 56, scope: !4379, inlinedAt: !5420)
!5420 = distinct !DILocation(line: 2085, column: 30, scope: !5404)
!5421 = !DILocation(line: 2037, column: 19, scope: !4379, inlinedAt: !5420)
!5422 = !DILocation(line: 2038, column: 15, scope: !4379, inlinedAt: !5420)
!5423 = !DILocation(line: 2038, column: 45, scope: !4379, inlinedAt: !5420)
!5424 = !DILocation(line: 2038, column: 44, scope: !4379, inlinedAt: !5420)
!5425 = !DILocation(line: 2038, column: 27, scope: !4379, inlinedAt: !5420)
!5426 = !DILocation(line: 2038, column: 5, scope: !4379, inlinedAt: !5420)
!5427 = !DILocation(line: 2085, column: 19, scope: !5404)
!5428 = !DILocation(line: 2050, column: 27, scope: !4554, inlinedAt: !5429)
!5429 = distinct !DILocation(line: 2087, column: 13, scope: !5404)
!5430 = !DILocation(line: 2051, column: 12, scope: !4559, inlinedAt: !5429)
!5431 = !DILocation(line: 2051, column: 18, scope: !4559, inlinedAt: !5429)
!5432 = !DILocation(line: 2051, column: 9, scope: !4554, inlinedAt: !5429)
!5433 = !DILocation(line: 2052, column: 19, scope: !4564, inlinedAt: !5429)
!5434 = !DILocation(line: 2052, column: 35, scope: !4564, inlinedAt: !5429)
!5435 = !DILocation(line: 2052, column: 49, scope: !4564, inlinedAt: !5429)
!5436 = !DILocation(line: 2052, column: 9, scope: !4554, inlinedAt: !5429)
!5437 = !DILocation(line: 2053, column: 9, scope: !4564, inlinedAt: !5429)
!5438 = !DILocation(line: 2054, column: 9, scope: !4554, inlinedAt: !5429)
!5439 = !DILocation(line: 0, scope: !4571, inlinedAt: !5429)
!5440 = !DILocation(line: 2055, column: 5, scope: !4554, inlinedAt: !5429)
!5441 = !DILocation(line: 2051, column: 35, scope: !4559, inlinedAt: !5429)
!5442 = !DILocation(line: 2084, column: 29, scope: !5404)
!5443 = !DILocation(line: 2090, column: 9, scope: !5404)
!5444 = !DILocation(line: 2056, column: 1, scope: !4554, inlinedAt: !5429)
!5445 = !DILocation(line: 2092, column: 42, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 2092, column: 9)
!5447 = !{!5448, !443, i64 0}
!5448 = !{!"clientBufferLimitsConfig", !443, i64 0, !443, i64 8, !411, i64 16}
!5449 = !DILocation(line: 2092, column: 9, scope: !5446)
!5450 = !DILocation(line: 2092, column: 59, scope: !5446)
!5451 = !DILocation(line: 2093, column: 18, scope: !5446)
!5452 = !DILocation(line: 2092, column: 9, scope: !5404)
!5453 = !DILocation(line: 2094, column: 9, scope: !5446)
!5454 = !DILocation(line: 0, scope: !5404)
!5455 = !DILocation(line: 2095, column: 42, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 2095, column: 9)
!5457 = !{!5448, !443, i64 8}
!5458 = !DILocation(line: 2095, column: 9, scope: !5456)
!5459 = !DILocation(line: 2095, column: 59, scope: !5456)
!5460 = !DILocation(line: 2096, column: 18, scope: !5456)
!5461 = !DILocation(line: 2095, column: 9, scope: !5404)
!5462 = !DILocation(line: 2097, column: 9, scope: !5456)
!5463 = !DILocation(line: 0, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 2115, column: 12)
!5465 = !DILocation(line: 2101, column: 9, scope: !5404)
!5466 = !DILocation(line: 2102, column: 16, scope: !5413)
!5467 = !DILocation(line: 2102, column: 45, scope: !5413)
!5468 = !DILocation(line: 2102, column: 13, scope: !5414)
!5469 = !DILocation(line: 0, scope: !5412)
!5470 = !DILocation(line: 2103, column: 45, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 2102, column: 51)
!5472 = !DILocation(line: 2105, column: 9, scope: !5471)
!5473 = !DILocation(line: 2106, column: 46, scope: !5412)
!5474 = !DILocation(line: 2106, column: 20, scope: !5412)
!5475 = !DILocation(line: 2109, column: 50, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5412, file: !3, line: 2108, column: 17)
!5477 = !{!5448, !411, i64 16}
!5478 = !DILocation(line: 2108, column: 25, scope: !5476)
!5479 = !DILocation(line: 2108, column: 17, scope: !5412)
!5480 = !DILocation(line: 2113, column: 13, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 2109, column: 70)
!5482 = !DILocation(line: 2116, column: 41, scope: !5464)
!5483 = !DILocation(line: 0, scope: !5456)
!5484 = !DILocation(line: 2118, column: 17, scope: !5404)
!5485 = !DILocation(line: 2118, column: 5, scope: !5404)
!5486 = distinct !DISubprogram(name: "flushSlavesOutputBuffers", scope: !3, file: !3, line: 2145, type: !2509, isLocal: false, isDefinition: true, scopeLine: 2145, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5487)
!5487 = !{!5488, !5489, !5490, !5492, !5493}
!5488 = !DILocalVariable(name: "li", scope: !5486, file: !3, line: 2146, type: !3031)
!5489 = !DILocalVariable(name: "ln", scope: !5486, file: !3, line: 2147, type: !103)
!5490 = !DILocalVariable(name: "slave", scope: !5491, file: !3, line: 2151, type: !6)
!5491 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 2150, column: 33)
!5492 = !DILocalVariable(name: "events", scope: !5491, file: !3, line: 2152, type: !18)
!5493 = !DILocalVariable(name: "can_receive_writes", scope: !5491, file: !3, line: 2153, type: !18)
!5494 = !DILocation(line: 2146, column: 5, scope: !5486)
!5495 = !DILocation(line: 2149, column: 23, scope: !5486)
!5496 = !DILocation(line: 2146, column: 14, scope: !5486)
!5497 = !DILocation(line: 2149, column: 5, scope: !5486)
!5498 = !DILocation(line: 2150, column: 5, scope: !5486)
!5499 = !DILocation(line: 2150, column: 17, scope: !5486)
!5500 = !DILocation(line: 2147, column: 15, scope: !5486)
!5501 = !DILocation(line: 2151, column: 25, scope: !5491)
!5502 = !DILocation(line: 2151, column: 17, scope: !5491)
!5503 = !DILocation(line: 2152, column: 45, scope: !5491)
!5504 = !DILocation(line: 2152, column: 55, scope: !5491)
!5505 = !DILocation(line: 2152, column: 22, scope: !5491)
!5506 = !DILocation(line: 2152, column: 13, scope: !5491)
!5507 = !DILocation(line: 2153, column: 42, scope: !5491)
!5508 = !DILocation(line: 2153, column: 57, scope: !5491)
!5509 = !DILocation(line: 2154, column: 42, scope: !5491)
!5510 = !DILocation(line: 2154, column: 48, scope: !5491)
!5511 = !DILocation(line: 2170, column: 20, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 2170, column: 13)
!5513 = !DILocation(line: 2170, column: 30, scope: !5512)
!5514 = !DILocation(line: 2170, column: 52, scope: !5512)
!5515 = !DILocation(line: 2172, column: 21, scope: !5512)
!5516 = !DILocation(line: 2172, column: 14, scope: !5512)
!5517 = !DILocation(line: 2172, column: 44, scope: !5512)
!5518 = !DILocation(line: 664, column: 37, scope: !1092, inlinedAt: !5519)
!5519 = distinct !DILocation(line: 2173, column: 13, scope: !5512)
!5520 = !DILocation(line: 665, column: 15, scope: !1092, inlinedAt: !5519)
!5521 = !DILocation(line: 665, column: 12, scope: !1092, inlinedAt: !5519)
!5522 = !DILocation(line: 665, column: 22, scope: !1092, inlinedAt: !5519)
!5523 = !DILocation(line: 665, column: 5, scope: !1092, inlinedAt: !5519)
!5524 = !DILocation(line: 2170, column: 13, scope: !5491)
!5525 = !DILocation(line: 665, column: 25, scope: !1092, inlinedAt: !5519)
!5526 = !DILocation(line: 2175, column: 34, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 2174, column: 9)
!5528 = !DILocation(line: 2175, column: 13, scope: !5527)
!5529 = !DILocation(line: 2176, column: 9, scope: !5527)
!5530 = distinct !{!5530, !5498, !5531}
!5531 = !DILocation(line: 2177, column: 5, scope: !5486)
!5532 = !DILocation(line: 2178, column: 1, scope: !5486)
!5533 = distinct !DISubprogram(name: "processEventsWhileBlocked", scope: !3, file: !3, line: 2242, type: !3027, isLocal: false, isDefinition: true, scopeLine: 2242, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5534)
!5534 = !{!5535, !5536, !5537}
!5535 = !DILocalVariable(name: "iterations", scope: !5533, file: !3, line: 2243, type: !18)
!5536 = !DILocalVariable(name: "count", scope: !5533, file: !3, line: 2244, type: !18)
!5537 = !DILocalVariable(name: "events", scope: !5538, file: !3, line: 2246, type: !18)
!5538 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 2245, column: 26)
!5539 = !DILocation(line: 2243, column: 9, scope: !5533)
!5540 = !DILocation(line: 2244, column: 9, scope: !5533)
!5541 = !DILocation(line: 2245, column: 5, scope: !5533)
!5542 = !DILocation(line: 2246, column: 13, scope: !5538)
!5543 = !DILocation(line: 2247, column: 42, scope: !5538)
!5544 = !DILocation(line: 2247, column: 19, scope: !5538)
!5545 = !DILocation(line: 2248, column: 19, scope: !5538)
!5546 = !DILocation(line: 2248, column: 16, scope: !5538)
!5547 = !DILocation(line: 2249, column: 14, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 2249, column: 13)
!5549 = !DILocation(line: 2249, column: 13, scope: !5538)
!5550 = !DILocation(line: 2251, column: 5, scope: !5533)
!5551 = !DILocation(line: 2252, column: 5, scope: !5533)
!5552 = !DILocation(line: 2250, column: 15, scope: !5538)
!5553 = !DILocation(line: 196, column: 2, scope: !313)
!5554 = !DILocation(line: 196, column: 10, scope: !313)
!5555 = !DILocation(line: 197, column: 2, scope: !313)
!5556 = !DILocation(line: 198, column: 2, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5558, file: !314, line: 198, column: 2)
!5558 = distinct !DILexicalBlock(scope: !313, file: !314, line: 198, column: 2)
!5559 = !DILocation(line: 199, column: 2, scope: !313)
!5560 = !DILocation(line: 200, column: 1, scope: !313)
