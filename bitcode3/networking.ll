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
@switch.table.getClientTypeName = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)]

; Function Attrs: noredzone nounwind
define dso_local i64 @sdsZmallocSize(i8*) local_unnamed_addr #0 !dbg !354 {
  %2 = tail call i8* @sdsAllocPtr(i8* %0) #10, !dbg !361
  %3 = tail call i64 @zmalloc_size(i8* %2) #10, !dbg !363
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
  tail call void @_serverAssertWithInfo(%struct.client* null, %struct.redisObject* nonnull %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 52) #10, !dbg !371
  tail call void @_exit(i32 1) #11, !dbg !371
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
  %13 = tail call i8* @sdsAllocPtr(i8* %12) #10, !dbg !384
  %14 = tail call i64 @zmalloc_size(i8* %13) #10, !dbg !386
  br label %19, !dbg !387

; <label>:15:                                     ; preds = %7
  %16 = bitcast %struct.redisObject* %0 to i8*, !dbg !388
  %17 = tail call i64 @zmalloc_size(i8* %16) #10, !dbg !389
  %18 = add i64 %17, -16, !dbg !390
  br label %19, !dbg !391

; <label>:19:                                     ; preds = %7, %15, %10
  %20 = phi i64 [ %18, %15 ], [ %14, %10 ], [ 0, %7 ], !dbg !392
  ret i64 %20, !dbg !393
}

; Function Attrs: noredzone
declare dso_local void @_serverAssertWithInfo(%struct.client*, %struct.redisObject*, i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i8* @dupClientReplyValue(i8*) #0 !dbg !394 {
  %2 = bitcast i8* %0 to i64*, !dbg !408
  %3 = load i64, i64* %2, align 8, !dbg !408, !tbaa !409
  %4 = add i64 %3, 16, !dbg !411
  %5 = tail call i8* @zmalloc(i64 %4) #10, !dbg !412
  %6 = load i64, i64* %2, align 8, !dbg !414, !tbaa !409
  %7 = add i64 %6, 16, !dbg !415
  %8 = tail call i8* @memcpy(i8* %5, i8* %0, i64 %7) #10, !dbg !416
  ret i8* %5, !dbg !417
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @freeClientReplyValue(i8*) #0 !dbg !418 {
  tail call void @zfree(i8* %0) #10, !dbg !422
  ret void, !dbg !423
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @listMatchObjects(i8*, i8*) #0 !dbg !424 {
  %3 = bitcast i8* %0 to %struct.redisObject*, !dbg !430
  %4 = bitcast i8* %1 to %struct.redisObject*, !dbg !431
  %5 = tail call i32 @equalStringObjects(%struct.redisObject* %3, %struct.redisObject* %4) #10, !dbg !432
  ret i32 %5, !dbg !433
}

; Function Attrs: noredzone
declare dso_local i32 @equalStringObjects(%struct.redisObject*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @linkClient(%struct.client*) local_unnamed_addr #0 !dbg !434 {
  %2 = alloca i64, align 8
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !439, !tbaa !440
  %4 = bitcast %struct.client* %0 to i8*, !dbg !447
  %5 = tail call %struct.list* @listAddNodeTail(%struct.list* %3, i8* %4) #10, !dbg !448
  %6 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !449, !tbaa !440
  %7 = getelementptr inbounds %struct.list, %struct.list* %6, i64 0, i32 1, !dbg !449
  %8 = bitcast %struct.listNode** %7 to i64*, !dbg !449
  %9 = load i64, i64* %8, align 8, !dbg !449, !tbaa !450
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 46, !dbg !452
  %11 = bitcast %struct.listNode** %10 to i64*, !dbg !453
  store i64 %9, i64* %11, align 8, !dbg !453, !tbaa !454
  %12 = bitcast i64* %2 to i8*, !dbg !458
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #6, !dbg !458
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 0, !dbg !459
  %14 = load i64, i64* %13, align 8, !dbg !459, !tbaa !460
  %15 = tail call i64 @intrev64(i64 %14) #10, !dbg !459
  store i64 %15, i64* %2, align 8, !dbg !461, !tbaa !409
  %16 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 44), align 8, !dbg !462, !tbaa !463
  %17 = call i32 @raxInsert(%struct.rax* %16, i8* nonnull %12, i64 8, i8* %4, i8** null) #10, !dbg !464
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #6, !dbg !465
  ret void, !dbg !465
}

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @intrev64(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @raxInsert(%struct.rax*, i8*, i64, i8*, i8**) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.client* @createClient(i32) local_unnamed_addr #0 !dbg !466 {
  %2 = alloca i64, align 8
  %3 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !474, !tbaa !475
  %4 = icmp eq %struct.uk_alloc* %3, null, !dbg !541
  br i1 %4, label %5, label %7, !dbg !543, !prof !544

; <label>:5:                                      ; preds = %1
  %6 = tail call i32* @__errno() #10, !dbg !545
  store i32 12, i32* %6, align 4, !dbg !547, !tbaa !548
  br label %11, !dbg !549

; <label>:7:                                      ; preds = %1
  %8 = bitcast %struct.uk_alloc* %3 to i8* (%struct.uk_alloc*, i64)**, !dbg !557
  %9 = load i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)** %8, align 8, !dbg !557, !tbaa !475
  %10 = tail call i8* %9(%struct.uk_alloc* nonnull %3, i64 16920) #10, !dbg !558
  br label %11, !dbg !559

; <label>:11:                                     ; preds = %5, %7
  %12 = phi i8* [ null, %5 ], [ %10, %7 ], !dbg !560
  %13 = bitcast i8* %12 to %struct.client*, !dbg !561
  %14 = icmp ne i32 %0, -1, !dbg !563
  br i1 %14, label %15, label %28, !dbg !565

; <label>:15:                                     ; preds = %11
  %16 = tail call i32 @anetNonBlock(i8* null, i32 %0) #10, !dbg !566
  %17 = tail call i32 @anetEnableTcpNoDelay(i8* null, i32 %0) #10, !dbg !568
  %18 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 102), align 8, !dbg !569, !tbaa !571
  %19 = icmp eq i32 %18, 0, !dbg !572
  br i1 %19, label %22, label %20, !dbg !573

; <label>:20:                                     ; preds = %15
  %21 = tail call i32 @anetKeepAlive(i8* null, i32 %0, i32 %18) #10, !dbg !574
  br label %22, !dbg !574

; <label>:22:                                     ; preds = %15, %20
  %23 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !575, !tbaa !577
  %24 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* %23, i32 %0, i32 1, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @readQueryFromClient, i8* %12) #10, !dbg !578
  %25 = icmp eq i32 %24, -1, !dbg !579
  br i1 %25, label %26, label %28, !dbg !580

; <label>:26:                                     ; preds = %22
  %27 = tail call i32 @close(i32 %0) #10, !dbg !581
  tail call void @zfree(i8* %12) #10, !dbg !583
  br label %135, !dbg !584

; <label>:28:                                     ; preds = %22, %11
  %29 = tail call i32 @selectDb(%struct.client* %13, i32 0) #10, !dbg !585
  %30 = atomicrmw add i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 49), i64 1 monotonic, !dbg !586
  %31 = bitcast i8* %12 to i64*, !dbg !589
  store i64 %30, i64* %31, align 8, !dbg !590, !tbaa !460
  %32 = getelementptr inbounds i8, i8* %12, i64 8, !dbg !591
  %33 = bitcast i8* %32 to i32*, !dbg !591
  store i32 %0, i32* %33, align 8, !dbg !592, !tbaa !593
  %34 = getelementptr inbounds i8, i8* %12, i64 24, !dbg !594
  %35 = bitcast i8* %34 to %struct.redisObject**, !dbg !594
  store %struct.redisObject* null, %struct.redisObject** %35, align 8, !dbg !595, !tbaa !596
  %36 = getelementptr inbounds i8, i8* %12, i64 528, !dbg !597
  %37 = bitcast i8* %36 to i32*, !dbg !597
  store i32 0, i32* %37, align 8, !dbg !598, !tbaa !599
  %38 = getelementptr inbounds i8, i8* %12, i64 40, !dbg !600
  %39 = bitcast i8* %38 to i64*, !dbg !600
  store i64 0, i64* %39, align 8, !dbg !601, !tbaa !602
  %40 = tail call i8* @sdsempty() #10, !dbg !603
  %41 = getelementptr inbounds i8, i8* %12, i64 32, !dbg !604
  %42 = bitcast i8* %41 to i8**, !dbg !604
  store i8* %40, i8** %42, align 8, !dbg !605, !tbaa !606
  %43 = tail call i8* @sdsempty() #10, !dbg !607
  %44 = getelementptr inbounds i8, i8* %12, i64 48, !dbg !608
  %45 = bitcast i8* %44 to i8**, !dbg !608
  store i8* %43, i8** %45, align 8, !dbg !609, !tbaa !610
  %46 = getelementptr inbounds i8, i8* %12, i64 56, !dbg !611
  %47 = bitcast i8* %46 to i64*, !dbg !611
  store i64 0, i64* %47, align 8, !dbg !612, !tbaa !613
  %48 = getelementptr inbounds i8, i8* %12, i64 96, !dbg !614
  %49 = bitcast i8* %48 to i32*, !dbg !614
  store i32 0, i32* %49, align 8, !dbg !615, !tbaa !616
  %50 = getelementptr inbounds i8, i8* %12, i64 64, !dbg !617
  %51 = bitcast i8* %50 to i32*, !dbg !617
  store i32 0, i32* %51, align 8, !dbg !618, !tbaa !619
  %52 = getelementptr inbounds i8, i8* %12, i64 72, !dbg !620
  %53 = bitcast i8* %52 to %struct.redisObject***, !dbg !620
  store %struct.redisObject** null, %struct.redisObject*** %53, align 8, !dbg !621, !tbaa !622
  %54 = getelementptr inbounds i8, i8* %12, i64 80, !dbg !623
  %55 = bitcast i8* %54 to <2 x %struct.redisCommand*>*, !dbg !624
  store <2 x %struct.redisCommand*> zeroinitializer, <2 x %struct.redisCommand*>* %55, align 8, !dbg !624, !tbaa !475
  %56 = getelementptr inbounds i8, i8* %12, i64 100, !dbg !625
  %57 = bitcast i8* %56 to i32*, !dbg !625
  store i32 0, i32* %57, align 4, !dbg !626, !tbaa !627
  %58 = getelementptr inbounds i8, i8* %12, i64 104, !dbg !628
  %59 = bitcast i8* %58 to i64*, !dbg !628
  store i64 -1, i64* %59, align 8, !dbg !629, !tbaa !630
  %60 = getelementptr inbounds i8, i8* %12, i64 128, !dbg !631
  %61 = bitcast i8* %60 to i64*, !dbg !631
  store i64 0, i64* %61, align 8, !dbg !632, !tbaa !633
  %62 = getelementptr inbounds i8, i8* %12, i64 160, !dbg !634
  %63 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !635, !tbaa !636
  %64 = getelementptr inbounds i8, i8* %12, i64 144, !dbg !637
  %65 = bitcast i8* %64 to i64*, !dbg !637
  store i64 %63, i64* %65, align 8, !dbg !638, !tbaa !639
  %66 = getelementptr inbounds i8, i8* %12, i64 136, !dbg !640
  %67 = bitcast i8* %66 to i64*, !dbg !640
  store i64 %63, i64* %67, align 8, !dbg !641, !tbaa !642
  %68 = bitcast i8* %62 to <4 x i32>*, !dbg !643
  store <4 x i32> zeroinitializer, <4 x i32>* %68, align 8, !dbg !643, !tbaa !548
  %69 = getelementptr inbounds i8, i8* %12, i64 208, !dbg !644
  %70 = bitcast i8* %69 to <2 x i64>*, !dbg !645
  store <2 x i64> zeroinitializer, <2 x i64>* %70, align 8, !dbg !645, !tbaa !646
  %71 = getelementptr inbounds i8, i8* %12, i64 224, !dbg !647
  %72 = bitcast i8* %71 to <2 x i64>*, !dbg !648
  store <2 x i64> zeroinitializer, <2 x i64>* %72, align 8, !dbg !648, !tbaa !646
  %73 = getelementptr inbounds i8, i8* %12, i64 292, !dbg !649
  %74 = bitcast i8* %73 to i32*, !dbg !649
  store i32 0, i32* %74, align 4, !dbg !650, !tbaa !651
  %75 = getelementptr inbounds i8, i8* %12, i64 296, !dbg !652
  store i8 0, i8* %75, align 8, !dbg !653, !tbaa !654
  %76 = getelementptr inbounds i8, i8* %12, i64 344, !dbg !655
  %77 = bitcast i8* %76 to i32*, !dbg !655
  store i32 0, i32* %77, align 8, !dbg !656, !tbaa !657
  %78 = tail call %struct.list* @listCreate() #10, !dbg !658
  %79 = getelementptr inbounds i8, i8* %12, i64 112, !dbg !659
  %80 = bitcast i8* %79 to %struct.list**, !dbg !659
  store %struct.list* %78, %struct.list** %80, align 8, !dbg !660, !tbaa !661
  %81 = getelementptr inbounds i8, i8* %12, i64 120, !dbg !662
  %82 = bitcast i8* %81 to i64*, !dbg !662
  store i64 0, i64* %82, align 8, !dbg !663, !tbaa !664
  %83 = getelementptr inbounds i8, i8* %12, i64 152, !dbg !665
  %84 = bitcast i8* %83 to i64*, !dbg !665
  store i64 0, i64* %84, align 8, !dbg !666, !tbaa !667
  %85 = getelementptr inbounds %struct.list, %struct.list* %78, i64 0, i32 3, !dbg !668
  store void (i8*)* @freeClientReplyValue, void (i8*)** %85, align 8, !dbg !668, !tbaa !669
  %86 = getelementptr inbounds %struct.list, %struct.list* %78, i64 0, i32 2, !dbg !670
  store i8* (i8*)* @dupClientReplyValue, i8* (i8*)** %86, align 8, !dbg !670, !tbaa !671
  %87 = getelementptr inbounds i8, i8* %12, i64 384, !dbg !672
  %88 = bitcast i8* %87 to i32*, !dbg !672
  store i32 0, i32* %88, align 8, !dbg !673, !tbaa !674
  %89 = getelementptr inbounds i8, i8* %12, i64 392, !dbg !675
  %90 = bitcast i8* %89 to i64*, !dbg !676
  store i64 0, i64* %90, align 8, !dbg !677, !tbaa !678
  %91 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @objectKeyHeapPointerValueDictType, i8* null) #10, !dbg !679
  %92 = getelementptr inbounds i8, i8* %12, i64 400, !dbg !680
  %93 = bitcast i8* %92 to %struct.dict**, !dbg !680
  store %struct.dict* %91, %struct.dict** %93, align 8, !dbg !681, !tbaa !682
  %94 = getelementptr inbounds i8, i8* %12, i64 408, !dbg !683
  %95 = bitcast i8* %94 to %struct.redisObject**, !dbg !683
  store %struct.redisObject* null, %struct.redisObject** %95, align 8, !dbg !684, !tbaa !685
  %96 = getelementptr inbounds i8, i8* %12, i64 424, !dbg !686
  %97 = bitcast i8* %96 to <2 x %struct.redisObject*>*, !dbg !687
  store <2 x %struct.redisObject*> zeroinitializer, <2 x %struct.redisObject*>* %97, align 8, !dbg !687, !tbaa !475
  %98 = getelementptr inbounds i8, i8* %12, i64 456, !dbg !688
  %99 = bitcast i8* %98 to i32*, !dbg !688
  store i32 0, i32* %99, align 8, !dbg !689, !tbaa !690
  %100 = getelementptr inbounds i8, i8* %12, i64 460, !dbg !691
  %101 = bitcast i8* %100 to i32*, !dbg !691
  store i32 0, i32* %101, align 4, !dbg !692, !tbaa !693
  %102 = getelementptr inbounds i8, i8* %12, i64 464, !dbg !694
  %103 = bitcast i8* %102 to i64*, !dbg !694
  store i64 0, i64* %103, align 8, !dbg !695, !tbaa !696
  %104 = getelementptr inbounds i8, i8* %12, i64 480, !dbg !697
  %105 = bitcast i8* %104 to i64*, !dbg !697
  store i64 0, i64* %105, align 8, !dbg !698, !tbaa !699
  %106 = tail call %struct.list* @listCreate() #10, !dbg !700
  %107 = getelementptr inbounds i8, i8* %12, i64 488, !dbg !701
  %108 = bitcast i8* %107 to %struct.list**, !dbg !701
  store %struct.list* %106, %struct.list** %108, align 8, !dbg !702, !tbaa !703
  %109 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @objectKeyPointerValueDictType, i8* null) #10, !dbg !704
  %110 = getelementptr inbounds i8, i8* %12, i64 496, !dbg !705
  %111 = bitcast i8* %110 to %struct.dict**, !dbg !705
  store %struct.dict* %109, %struct.dict** %111, align 8, !dbg !706, !tbaa !707
  %112 = tail call %struct.list* @listCreate() #10, !dbg !708
  %113 = getelementptr inbounds i8, i8* %12, i64 504, !dbg !709
  %114 = bitcast i8* %113 to %struct.list**, !dbg !709
  store %struct.list* %112, %struct.list** %114, align 8, !dbg !710, !tbaa !711
  %115 = getelementptr inbounds i8, i8* %12, i64 512, !dbg !712
  %116 = bitcast i8* %115 to i8**, !dbg !712
  store i8* null, i8** %116, align 8, !dbg !713, !tbaa !714
  %117 = getelementptr inbounds i8, i8* %12, i64 520, !dbg !715
  %118 = bitcast i8* %117 to %struct.listNode**, !dbg !715
  store %struct.listNode* null, %struct.listNode** %118, align 8, !dbg !716, !tbaa !454
  %119 = getelementptr inbounds %struct.list, %struct.list* %112, i64 0, i32 3, !dbg !717
  store void (i8*)* @decrRefCountVoid, void (i8*)** %119, align 8, !dbg !717, !tbaa !669
  %120 = getelementptr inbounds %struct.list, %struct.list* %112, i64 0, i32 4, !dbg !718
  store i32 (i8*, i8*)* @listMatchObjects, i32 (i8*, i8*)** %120, align 8, !dbg !718, !tbaa !719
  br i1 %14, label %121, label %134, !dbg !720

; <label>:121:                                    ; preds = %28
  %122 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !724, !tbaa !440
  %123 = tail call %struct.list* @listAddNodeTail(%struct.list* %122, i8* nonnull %12) #10, !dbg !725
  %124 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !726, !tbaa !440
  %125 = getelementptr inbounds %struct.list, %struct.list* %124, i64 0, i32 1, !dbg !726
  %126 = bitcast %struct.listNode** %125 to i64*, !dbg !726
  %127 = load i64, i64* %126, align 8, !dbg !726, !tbaa !450
  %128 = bitcast i8* %117 to i64*, !dbg !727
  store i64 %127, i64* %128, align 8, !dbg !727, !tbaa !454
  %129 = bitcast i64* %2 to i8*, !dbg !728
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %129) #6, !dbg !728
  %130 = load i64, i64* %31, align 8, !dbg !729, !tbaa !460
  %131 = tail call i64 @intrev64(i64 %130) #10, !dbg !729
  store i64 %131, i64* %2, align 8, !dbg !730, !tbaa !409
  %132 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 44), align 8, !dbg !731, !tbaa !463
  %133 = call i32 @raxInsert(%struct.rax* %132, i8* nonnull %129, i64 8, i8* nonnull %12, i8** null) #10, !dbg !732
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %129) #6, !dbg !733
  br label %134, !dbg !734

; <label>:134:                                    ; preds = %121, %28
  call void @initClientMultiState(%struct.client* nonnull %13) #10, !dbg !735
  br label %135

; <label>:135:                                    ; preds = %134, %26
  %136 = phi %struct.client* [ null, %26 ], [ %13, %134 ], !dbg !736
  ret %struct.client* %136, !dbg !737
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
define dso_local void @readQueryFromClient(%struct.aeEventLoop* nocapture readnone, i32, i8*, i32) #0 !dbg !738 {
  %5 = bitcast i8* %2 to %struct.client*, !dbg !821
  %6 = getelementptr inbounds i8, i8* %2, i64 96, !dbg !824
  %7 = bitcast i8* %6 to i32*, !dbg !824
  %8 = load i32, i32* %7, align 8, !dbg !824, !tbaa !616
  %9 = icmp eq i32 %8, 2, !dbg !825
  br i1 %9, label %10, label %57, !dbg !826

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds i8, i8* %2, i64 100, !dbg !827
  %12 = bitcast i8* %11 to i32*, !dbg !827
  %13 = load i32, i32* %12, align 4, !dbg !827, !tbaa !627
  %14 = icmp eq i32 %13, 0, !dbg !828
  br i1 %14, label %57, label %15, !dbg !829

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds i8, i8* %2, i64 104, !dbg !830
  %17 = bitcast i8* %16 to i64*, !dbg !830
  %18 = load i64, i64* %17, align 8, !dbg !830, !tbaa !630
  %19 = icmp sgt i64 %18, 32767, !dbg !831
  br i1 %19, label %20, label %57, !dbg !832

; <label>:20:                                     ; preds = %15
  %21 = add nsw i64 %18, 2, !dbg !833
  %22 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !834
  %23 = bitcast i8* %22 to i8**, !dbg !834
  %24 = load i8*, i8** %23, align 8, !dbg !834, !tbaa !606
  %25 = getelementptr inbounds i8, i8* %24, i64 -1, !dbg !844
  %26 = load i8, i8* %25, align 1, !dbg !844, !tbaa !654
  %27 = trunc i8 %26 to i3, !dbg !846
  switch i3 %27, label %49 [
    i3 0, label %28
    i3 1, label %31
    i3 2, label %35
    i3 3, label %40
    i3 -4, label %45
  ], !dbg !846

; <label>:28:                                     ; preds = %20
  %29 = lshr i8 %26, 3, !dbg !847
  %30 = zext i8 %29 to i64, !dbg !847
  br label %49, !dbg !849

; <label>:31:                                     ; preds = %20
  %32 = getelementptr inbounds i8, i8* %24, i64 -3, !dbg !850
  %33 = load i8, i8* %32, align 1, !dbg !851, !tbaa !654
  %34 = zext i8 %33 to i64, !dbg !850
  br label %49, !dbg !852

; <label>:35:                                     ; preds = %20
  %36 = getelementptr inbounds i8, i8* %24, i64 -5, !dbg !853
  %37 = bitcast i8* %36 to i16*, !dbg !854
  %38 = load i16, i16* %37, align 1, !dbg !854, !tbaa !855
  %39 = zext i16 %38 to i64, !dbg !853
  br label %49, !dbg !857

; <label>:40:                                     ; preds = %20
  %41 = getelementptr inbounds i8, i8* %24, i64 -9, !dbg !858
  %42 = bitcast i8* %41 to i32*, !dbg !859
  %43 = load i32, i32* %42, align 1, !dbg !859, !tbaa !548
  %44 = zext i32 %43 to i64, !dbg !858
  br label %49, !dbg !860

; <label>:45:                                     ; preds = %20
  %46 = getelementptr inbounds i8, i8* %24, i64 -17, !dbg !861
  %47 = bitcast i8* %46 to i64*, !dbg !862
  %48 = load i64, i64* %47, align 1, !dbg !862, !tbaa !409
  br label %49, !dbg !863

; <label>:49:                                     ; preds = %20, %28, %31, %35, %40, %45
  %50 = phi i64 [ %48, %45 ], [ %44, %40 ], [ %39, %35 ], [ %34, %31 ], [ %30, %28 ], [ 0, %20 ], !dbg !864
  %51 = sub i64 %21, %50, !dbg !865
  %52 = add i64 %51, -1, !dbg !867
  %53 = icmp ult i64 %52, 16383, !dbg !867
  %54 = shl i64 %51, 32, !dbg !867
  %55 = ashr exact i64 %54, 32, !dbg !867
  %56 = select i1 %53, i64 %55, i64 16384, !dbg !867
  br label %57, !dbg !867

; <label>:57:                                     ; preds = %49, %15, %10, %4
  %58 = phi i64 [ 16384, %15 ], [ 16384, %10 ], [ 16384, %4 ], [ %56, %49 ]
  %59 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !869
  %60 = bitcast i8* %59 to i8**, !dbg !869
  %61 = load i8*, i8** %60, align 8, !dbg !869, !tbaa !606
  %62 = getelementptr inbounds i8, i8* %61, i64 -1, !dbg !872
  %63 = load i8, i8* %62, align 1, !dbg !872, !tbaa !654
  %64 = trunc i8 %63 to i3, !dbg !874
  switch i3 %64, label %93 [
    i3 0, label %65
    i3 1, label %68
    i3 2, label %72
    i3 3, label %77
    i3 -4, label %82
  ], !dbg !874

; <label>:65:                                     ; preds = %57
  %66 = lshr i8 %63, 3, !dbg !875
  %67 = zext i8 %66 to i64, !dbg !875
  br label %86, !dbg !876

; <label>:68:                                     ; preds = %57
  %69 = getelementptr inbounds i8, i8* %61, i64 -3, !dbg !877
  %70 = load i8, i8* %69, align 1, !dbg !878, !tbaa !654
  %71 = zext i8 %70 to i64, !dbg !877
  br label %86, !dbg !879

; <label>:72:                                     ; preds = %57
  %73 = getelementptr inbounds i8, i8* %61, i64 -5, !dbg !880
  %74 = bitcast i8* %73 to i16*, !dbg !881
  %75 = load i16, i16* %74, align 1, !dbg !881, !tbaa !855
  %76 = zext i16 %75 to i64, !dbg !880
  br label %86, !dbg !882

; <label>:77:                                     ; preds = %57
  %78 = getelementptr inbounds i8, i8* %61, i64 -9, !dbg !883
  %79 = bitcast i8* %78 to i32*, !dbg !884
  %80 = load i32, i32* %79, align 1, !dbg !884, !tbaa !548
  %81 = zext i32 %80 to i64, !dbg !883
  br label %86, !dbg !885

; <label>:82:                                     ; preds = %57
  %83 = getelementptr inbounds i8, i8* %61, i64 -17, !dbg !886
  %84 = bitcast i8* %83 to i64*, !dbg !887
  %85 = load i64, i64* %84, align 1, !dbg !887, !tbaa !409
  br label %86, !dbg !888

; <label>:86:                                     ; preds = %65, %68, %72, %77, %82
  %87 = phi i64 [ %85, %82 ], [ %81, %77 ], [ %76, %72 ], [ %71, %68 ], [ %67, %65 ], !dbg !889
  %88 = getelementptr inbounds i8, i8* %2, i64 56, !dbg !891
  %89 = bitcast i8* %88 to i64*, !dbg !891
  %90 = load i64, i64* %89, align 8, !dbg !891, !tbaa !613
  %91 = icmp ult i64 %90, %87, !dbg !893
  br i1 %91, label %92, label %93, !dbg !894

; <label>:92:                                     ; preds = %86
  store i64 %87, i64* %89, align 8, !dbg !895, !tbaa !613
  br label %93, !dbg !896

; <label>:93:                                     ; preds = %57, %92, %86
  %94 = phi i64 [ %87, %92 ], [ %87, %86 ], [ 0, %57 ]
  %95 = tail call i8* @sdsMakeRoomFor(i8* %61, i64 %58) #10, !dbg !897
  store i8* %95, i8** %60, align 8, !dbg !898, !tbaa !606
  %96 = getelementptr inbounds i8, i8* %95, i64 %94, !dbg !899
  %97 = tail call i64 @read(i32 %1, i8* %96, i64 %58) #10, !dbg !900
  %98 = trunc i64 %97 to i32, !dbg !900
  switch i32 %98, label %108 [
    i32 -1, label %99
    i32 0, label %107
  ], !dbg !902

; <label>:99:                                     ; preds = %93
  %100 = tail call i32* @__errno() #10, !dbg !903
  %101 = load i32, i32* %100, align 4, !dbg !903, !tbaa !548
  %102 = icmp eq i32 %101, 11, !dbg !907
  br i1 %102, label %193, label %103, !dbg !908

; <label>:103:                                    ; preds = %99
  %104 = tail call i32* @__errno() #10, !dbg !909
  %105 = load i32, i32* %104, align 4, !dbg !909, !tbaa !548
  %106 = tail call i8* @strerror(i32 %105) #10, !dbg !911
  tail call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i64 0, i64 0), i8* %106) #10, !dbg !912
  tail call void @freeClient(%struct.client* nonnull %5) #12, !dbg !913
  br label %193, !dbg !914

; <label>:107:                                    ; preds = %93
  tail call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i64 0, i64 0)) #10, !dbg !915
  tail call void @freeClient(%struct.client* nonnull %5) #12, !dbg !918
  br label %193, !dbg !919

; <label>:108:                                    ; preds = %93
  %109 = getelementptr inbounds i8, i8* %2, i64 160, !dbg !920
  %110 = bitcast i8* %109 to i32*, !dbg !920
  %111 = load i32, i32* %110, align 8, !dbg !920, !tbaa !922
  %112 = and i32 %111, 2, !dbg !923
  %113 = icmp eq i32 %112, 0, !dbg !923
  br i1 %113, label %114, label %117, !dbg !924

; <label>:114:                                    ; preds = %108
  %115 = shl i64 %97, 32, !dbg !925
  %116 = ashr exact i64 %115, 32, !dbg !925
  br label %126, !dbg !924

; <label>:117:                                    ; preds = %108
  %118 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !926
  %119 = bitcast i8* %118 to i8**, !dbg !926
  %120 = load i8*, i8** %119, align 8, !dbg !926, !tbaa !610
  %121 = load i8*, i8** %60, align 8, !dbg !928, !tbaa !606
  %122 = getelementptr inbounds i8, i8* %121, i64 %94, !dbg !929
  %123 = shl i64 %97, 32, !dbg !930
  %124 = ashr exact i64 %123, 32, !dbg !930
  %125 = tail call i8* @sdscatlen(i8* %120, i8* %122, i64 %124) #10, !dbg !931
  store i8* %125, i8** %119, align 8, !dbg !932, !tbaa !610
  br label %126, !dbg !933

; <label>:126:                                    ; preds = %114, %117
  %127 = phi i64 [ %116, %114 ], [ %124, %117 ], !dbg !925
  %128 = load i8*, i8** %60, align 8, !dbg !934, !tbaa !606
  tail call void @sdsIncrLen(i8* %128, i64 %127) #10, !dbg !935
  %129 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !936, !tbaa !636
  %130 = getelementptr inbounds i8, i8* %2, i64 144, !dbg !937
  %131 = bitcast i8* %130 to i64*, !dbg !937
  store i64 %129, i64* %131, align 8, !dbg !938, !tbaa !639
  %132 = load i32, i32* %110, align 8, !dbg !939, !tbaa !922
  %133 = and i32 %132, 2, !dbg !941
  %134 = icmp eq i32 %133, 0, !dbg !941
  br i1 %134, label %140, label %135, !dbg !942

; <label>:135:                                    ; preds = %126
  %136 = getelementptr inbounds i8, i8* %2, i64 208, !dbg !943
  %137 = bitcast i8* %136 to i64*, !dbg !943
  %138 = load i64, i64* %137, align 8, !dbg !944, !tbaa !945
  %139 = add nsw i64 %138, %127, !dbg !944
  store i64 %139, i64* %137, align 8, !dbg !944, !tbaa !945
  br label %140, !dbg !946

; <label>:140:                                    ; preds = %126, %135
  %141 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 95), align 8, !dbg !947, !tbaa !948
  %142 = add nsw i64 %141, %127, !dbg !947
  store i64 %142, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 95), align 8, !dbg !947, !tbaa !948
  %143 = load i8*, i8** %60, align 8, !dbg !949, !tbaa !606
  %144 = getelementptr inbounds i8, i8* %143, i64 -1, !dbg !952
  %145 = load i8, i8* %144, align 1, !dbg !952, !tbaa !654
  %146 = trunc i8 %145 to i3, !dbg !954
  switch i3 %146, label %178 [
    i3 0, label %147
    i3 1, label %150
    i3 2, label %154
    i3 3, label %159
    i3 -4, label %164
  ], !dbg !954

; <label>:147:                                    ; preds = %140
  %148 = lshr i8 %145, 3, !dbg !955
  %149 = zext i8 %148 to i64, !dbg !955
  br label %168, !dbg !956

; <label>:150:                                    ; preds = %140
  %151 = getelementptr inbounds i8, i8* %143, i64 -3, !dbg !957
  %152 = load i8, i8* %151, align 1, !dbg !958, !tbaa !654
  %153 = zext i8 %152 to i64, !dbg !957
  br label %168, !dbg !959

; <label>:154:                                    ; preds = %140
  %155 = getelementptr inbounds i8, i8* %143, i64 -5, !dbg !960
  %156 = bitcast i8* %155 to i16*, !dbg !961
  %157 = load i16, i16* %156, align 1, !dbg !961, !tbaa !855
  %158 = zext i16 %157 to i64, !dbg !960
  br label %168, !dbg !962

; <label>:159:                                    ; preds = %140
  %160 = getelementptr inbounds i8, i8* %143, i64 -9, !dbg !963
  %161 = bitcast i8* %160 to i32*, !dbg !964
  %162 = load i32, i32* %161, align 1, !dbg !964, !tbaa !548
  %163 = zext i32 %162 to i64, !dbg !963
  br label %168, !dbg !965

; <label>:164:                                    ; preds = %140
  %165 = getelementptr inbounds i8, i8* %143, i64 -17, !dbg !966
  %166 = bitcast i8* %165 to i64*, !dbg !967
  %167 = load i64, i64* %166, align 1, !dbg !967, !tbaa !409
  br label %168, !dbg !968

; <label>:168:                                    ; preds = %147, %150, %154, %159, %164
  %169 = phi i64 [ %167, %164 ], [ %163, %159 ], [ %158, %154 ], [ %153, %150 ], [ %149, %147 ], !dbg !969
  %170 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 111), align 8, !dbg !970, !tbaa !971
  %171 = icmp ugt i64 %169, %170, !dbg !972
  br i1 %171, label %172, label %178, !dbg !973

; <label>:172:                                    ; preds = %168
  %173 = tail call i8* @sdsempty() #10, !dbg !974
  %174 = tail call i8* @catClientInfoString(i8* %173, %struct.client* nonnull %5) #12, !dbg !975
  %175 = tail call i8* @sdsempty() #10, !dbg !977
  %176 = load i8*, i8** %60, align 8, !dbg !979, !tbaa !606
  %177 = tail call i8* @sdscatrepr(i8* %175, i8* %176, i64 64) #10, !dbg !980
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.46, i64 0, i64 0), i8* %174, i8* %177) #10, !dbg !981
  tail call void @sdsfree(i8* %174) #10, !dbg !982
  tail call void @sdsfree(i8* %177) #10, !dbg !983
  tail call void @freeClient(%struct.client* nonnull %5) #12, !dbg !984
  br label %193

; <label>:178:                                    ; preds = %140, %168
  br i1 %134, label %179, label %180, !dbg !994

; <label>:179:                                    ; preds = %178
  tail call void @processInputBuffer(%struct.client* nonnull %5) #10, !dbg !995
  br label %193, !dbg !997

; <label>:180:                                    ; preds = %178
  %181 = getelementptr inbounds i8, i8* %2, i64 216, !dbg !998
  %182 = bitcast i8* %181 to i64*, !dbg !998
  %183 = load i64, i64* %182, align 8, !dbg !998, !tbaa !999
  tail call void @processInputBuffer(%struct.client* nonnull %5) #10, !dbg !1001
  %184 = load i64, i64* %182, align 8, !dbg !1002, !tbaa !999
  %185 = sub i64 %184, %183, !dbg !1003
  %186 = icmp eq i64 %185, 0, !dbg !1005
  br i1 %186, label %193, label %187, !dbg !1007

; <label>:187:                                    ; preds = %180
  %188 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1008, !tbaa !1010
  %189 = getelementptr inbounds i8, i8* %2, i64 48, !dbg !1011
  %190 = bitcast i8* %189 to i8**, !dbg !1011
  %191 = load i8*, i8** %190, align 8, !dbg !1011, !tbaa !610
  tail call void @replicationFeedSlavesFromMasterStream(%struct.list* %188, i8* %191, i64 %185) #10, !dbg !1012
  %192 = load i8*, i8** %190, align 8, !dbg !1013, !tbaa !610
  tail call void @sdsrange(i8* %192, i64 %185, i64 -1) #10, !dbg !1014
  br label %193, !dbg !1015

; <label>:193:                                    ; preds = %187, %180, %179, %99, %172, %107, %103
  ret void, !dbg !1016
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
define dso_local void @clientInstallWriteHandler(%struct.client*) local_unnamed_addr #0 !dbg !1017 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1021
  %3 = load i32, i32* %2, align 8, !dbg !1021, !tbaa !922
  %4 = and i32 %3, 2097152, !dbg !1023
  %5 = icmp eq i32 %4, 0, !dbg !1023
  br i1 %5, label %6, label %18, !dbg !1024

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1025
  %8 = load i32, i32* %7, align 8, !dbg !1025, !tbaa !1026
  switch i32 %8, label %18 [
    i32 0, label %13
    i32 9, label %9
  ], !dbg !1027

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1028
  %11 = load i32, i32* %10, align 4, !dbg !1028, !tbaa !1029
  %12 = icmp eq i32 %11, 0, !dbg !1030
  br i1 %12, label %13, label %18, !dbg !1031

; <label>:13:                                     ; preds = %6, %9
  %14 = or i32 %3, 2097152, !dbg !1032
  store i32 %14, i32* %2, align 8, !dbg !1032, !tbaa !922
  %15 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !1034, !tbaa !1035
  %16 = bitcast %struct.client* %0 to i8*, !dbg !1036
  %17 = tail call %struct.list* @listAddNodeHead(%struct.list* %15, i8* %16) #10, !dbg !1037
  br label %18, !dbg !1038

; <label>:18:                                     ; preds = %6, %9, %1, %13
  ret void, !dbg !1039
}

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeHead(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @prepareClientToWrite(%struct.client*) local_unnamed_addr #0 !dbg !1040 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1046
  %3 = load i32, i32* %2, align 8, !dbg !1046, !tbaa !922
  %4 = and i32 %3, 134217984, !dbg !1048
  %5 = icmp eq i32 %4, 0, !dbg !1048
  br i1 %5, label %6, label %41, !dbg !1049

; <label>:6:                                      ; preds = %1
  %7 = and i32 %3, 20971520, !dbg !1050
  %8 = icmp ne i32 %7, 0, !dbg !1050
  %9 = and i32 %3, 8194, !dbg !1052
  %10 = icmp eq i32 %9, 2, !dbg !1052
  %11 = or i1 %8, %10, !dbg !1054
  br i1 %11, label %41, label %12, !dbg !1054

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1055
  %14 = load i32, i32* %13, align 8, !dbg !1055, !tbaa !593
  %15 = icmp slt i32 %14, 1, !dbg !1057
  br i1 %15, label %41, label %16, !dbg !1058

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1065
  %18 = load i32, i32* %17, align 8, !dbg !1065, !tbaa !599
  %19 = icmp eq i32 %18, 0, !dbg !1066
  br i1 %19, label %20, label %41, !dbg !1067

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1068
  %22 = load %struct.list*, %struct.list** %21, align 8, !dbg !1068, !tbaa !661
  %23 = getelementptr inbounds %struct.list, %struct.list* %22, i64 0, i32 5, !dbg !1068
  %24 = load i64, i64* %23, align 8, !dbg !1068, !tbaa !1069
  %25 = icmp eq i64 %24, 0, !dbg !1067
  %26 = and i32 %3, 2097152, !dbg !1070
  %27 = icmp eq i32 %26, 0, !dbg !1070
  %28 = and i1 %27, %25, !dbg !1072
  br i1 %28, label %29, label %41, !dbg !1072

; <label>:29:                                     ; preds = %20
  %30 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1074
  %31 = load i32, i32* %30, align 8, !dbg !1074, !tbaa !1026
  switch i32 %31, label %41 [
    i32 0, label %36
    i32 9, label %32
  ], !dbg !1075

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1076
  %34 = load i32, i32* %33, align 4, !dbg !1076, !tbaa !1029
  %35 = icmp eq i32 %34, 0, !dbg !1077
  br i1 %35, label %36, label %41, !dbg !1078

; <label>:36:                                     ; preds = %32, %29
  %37 = or i32 %3, 2097152, !dbg !1079
  store i32 %37, i32* %2, align 8, !dbg !1079, !tbaa !922
  %38 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !1080, !tbaa !1035
  %39 = bitcast %struct.client* %0 to i8*, !dbg !1081
  %40 = tail call %struct.list* @listAddNodeHead(%struct.list* %38, i8* %39) #10, !dbg !1082
  br label %41, !dbg !1083

; <label>:41:                                     ; preds = %6, %16, %36, %32, %29, %20, %12, %1
  %42 = phi i32 [ 0, %1 ], [ -1, %6 ], [ -1, %12 ], [ 0, %20 ], [ 0, %29 ], [ 0, %32 ], [ 0, %36 ], [ 0, %16 ], !dbg !1084
  ret i32 %42, !dbg !1085
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @clientHasPendingReplies(%struct.client* nocapture readonly) local_unnamed_addr #5 !dbg !1060 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1087
  %3 = load i32, i32* %2, align 8, !dbg !1087, !tbaa !599
  %4 = icmp eq i32 %3, 0, !dbg !1088
  br i1 %4, label %5, label %12, !dbg !1089

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1090
  %7 = load %struct.list*, %struct.list** %6, align 8, !dbg !1090, !tbaa !661
  %8 = getelementptr inbounds %struct.list, %struct.list* %7, i64 0, i32 5, !dbg !1090
  %9 = load i64, i64* %8, align 8, !dbg !1090, !tbaa !1069
  %10 = icmp ne i64 %9, 0, !dbg !1089
  %11 = zext i1 %10 to i32, !dbg !1089
  br label %12, !dbg !1089

; <label>:12:                                     ; preds = %1, %5
  %13 = phi i32 [ 1, %1 ], [ %11, %5 ]
  ret i32 %13, !dbg !1091
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_addReplyToBuffer(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !1092 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1103
  %5 = load i32, i32* %4, align 8, !dbg !1103, !tbaa !599
  %6 = sext i32 %5 to i64, !dbg !1104
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1105
  %8 = load i32, i32* %7, align 8, !dbg !1105, !tbaa !922
  %9 = and i32 %8, 64, !dbg !1107
  %10 = icmp eq i32 %9, 0, !dbg !1107
  br i1 %10, label %11, label %26, !dbg !1108

; <label>:11:                                     ; preds = %3
  %12 = sub nsw i64 16384, %6, !dbg !1109
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1111
  %14 = load %struct.list*, %struct.list** %13, align 8, !dbg !1111, !tbaa !661
  %15 = getelementptr inbounds %struct.list, %struct.list* %14, i64 0, i32 5, !dbg !1111
  %16 = load i64, i64* %15, align 8, !dbg !1111, !tbaa !1069
  %17 = icmp ne i64 %16, 0, !dbg !1113
  %18 = icmp ult i64 %12, %2, !dbg !1114
  %19 = or i1 %18, %17, !dbg !1116
  br i1 %19, label %26, label %20, !dbg !1116

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 48, i64 %6, !dbg !1117
  %22 = tail call i8* @memcpy(i8* nonnull %21, i8* %1, i64 %2) #10, !dbg !1118
  %23 = load i32, i32* %4, align 8, !dbg !1119, !tbaa !599
  %24 = trunc i64 %2 to i32, !dbg !1119
  %25 = add i32 %23, %24, !dbg !1119
  store i32 %25, i32* %4, align 8, !dbg !1119, !tbaa !599
  br label %26, !dbg !1120

; <label>:26:                                     ; preds = %11, %3, %20
  %27 = phi i32 [ 0, %20 ], [ 0, %3 ], [ -1, %11 ], !dbg !1121
  ret i32 %27, !dbg !1122
}

; Function Attrs: noredzone nounwind
define dso_local void @_addReplyStringToList(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !1123 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1142
  %5 = load i32, i32* %4, align 8, !dbg !1142, !tbaa !922
  %6 = and i32 %5, 64, !dbg !1144
  %7 = icmp eq i32 %6, 0, !dbg !1144
  br i1 %7, label %8, label %56, !dbg !1145

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1146
  %10 = load %struct.list*, %struct.list** %9, align 8, !dbg !1146, !tbaa !661
  %11 = getelementptr inbounds %struct.list, %struct.list* %10, i64 0, i32 1, !dbg !1146
  %12 = load %struct.listNode*, %struct.listNode** %11, align 8, !dbg !1146, !tbaa !450
  %13 = icmp eq %struct.listNode* %12, null, !dbg !1148
  br i1 %13, label %33, label %14, !dbg !1148

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.listNode, %struct.listNode* %12, i64 0, i32 2, !dbg !1149
  %16 = bitcast i8** %15 to %struct.clientReplyBlock**, !dbg !1149
  %17 = load %struct.clientReplyBlock*, %struct.clientReplyBlock** %16, align 8, !dbg !1149, !tbaa !1150
  %18 = icmp eq %struct.clientReplyBlock* %17, null, !dbg !1153
  br i1 %18, label %33, label %19, !dbg !1154

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %17, i64 0, i32 0, !dbg !1155
  %21 = load i64, i64* %20, align 8, !dbg !1155, !tbaa !409
  %22 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %17, i64 0, i32 1, !dbg !1156
  %23 = load i64, i64* %22, align 8, !dbg !1156, !tbaa !409
  %24 = sub i64 %21, %23, !dbg !1157
  %25 = icmp ult i64 %24, %2, !dbg !1159
  %26 = select i1 %25, i64 %24, i64 %2, !dbg !1160
  %27 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %17, i64 0, i32 2, i64 %23, !dbg !1162
  %28 = tail call i8* @memcpy(i8* nonnull %27, i8* %1, i64 %26) #10, !dbg !1163
  %29 = load i64, i64* %22, align 8, !dbg !1164, !tbaa !409
  %30 = add i64 %26, %29, !dbg !1164
  store i64 %30, i64* %22, align 8, !dbg !1164, !tbaa !409
  %31 = getelementptr inbounds i8, i8* %1, i64 %26, !dbg !1165
  %32 = sub i64 %2, %26, !dbg !1166
  br label %33, !dbg !1167

; <label>:33:                                     ; preds = %8, %14, %19
  %34 = phi i64 [ %32, %19 ], [ %2, %14 ], [ %2, %8 ]
  %35 = phi i8* [ %31, %19 ], [ %1, %14 ], [ %1, %8 ]
  %36 = icmp eq i64 %34, 0, !dbg !1168
  br i1 %36, label %55, label %37, !dbg !1169

; <label>:37:                                     ; preds = %33
  %38 = icmp ugt i64 %34, 16384, !dbg !1170
  %39 = select i1 %38, i64 %34, i64 16384, !dbg !1170
  %40 = add i64 %39, 16, !dbg !1172
  %41 = tail call i8* @zmalloc(i64 %40) #10, !dbg !1173
  %42 = tail call i64 @zmalloc_usable(i8* %41) #10, !dbg !1174
  %43 = add i64 %42, -16, !dbg !1175
  %44 = bitcast i8* %41 to i64*, !dbg !1176
  store i64 %43, i64* %44, align 8, !dbg !1177, !tbaa !409
  %45 = getelementptr inbounds i8, i8* %41, i64 8, !dbg !1178
  %46 = bitcast i8* %45 to i64*, !dbg !1178
  store i64 %34, i64* %46, align 8, !dbg !1179, !tbaa !409
  %47 = getelementptr inbounds i8, i8* %41, i64 16, !dbg !1180
  %48 = tail call i8* @memcpy(i8* nonnull %47, i8* %35, i64 %34) #10, !dbg !1181
  %49 = load %struct.list*, %struct.list** %9, align 8, !dbg !1182, !tbaa !661
  %50 = tail call %struct.list* @listAddNodeTail(%struct.list* %49, i8* %41) #10, !dbg !1183
  %51 = load i64, i64* %44, align 8, !dbg !1184, !tbaa !409
  %52 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !1185
  %53 = load i64, i64* %52, align 8, !dbg !1186, !tbaa !664
  %54 = add i64 %53, %51, !dbg !1186
  store i64 %54, i64* %52, align 8, !dbg !1186, !tbaa !664
  br label %55, !dbg !1187

; <label>:55:                                     ; preds = %33, %37
  tail call void @asyncCloseClientOnOutputBufferLimitReached(%struct.client* nonnull %0) #12, !dbg !1188
  br label %56, !dbg !1189

; <label>:56:                                     ; preds = %3, %55
  ret void, !dbg !1189
}

; Function Attrs: noredzone
declare dso_local i64 @zmalloc_usable(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @asyncCloseClientOnOutputBufferLimitReached(%struct.client*) local_unnamed_addr #0 !dbg !1190 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1197
  %3 = load i32, i32* %2, align 8, !dbg !1197, !tbaa !593
  %4 = icmp eq i32 %3, -1, !dbg !1199
  br i1 %4, label %75, label %5, !dbg !1200

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !1201
  %7 = load i64, i64* %6, align 8, !dbg !1201, !tbaa !664
  %8 = icmp ult i64 %7, -65537, !dbg !1201
  br i1 %8, label %10, label %9, !dbg !1201

; <label>:9:                                      ; preds = %5
  tail call void @_serverAssert(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.95, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 2130) #10, !dbg !1201
  tail call void @_exit(i32 1) #11, !dbg !1201
  unreachable, !dbg !1201

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i64 %7, 0, !dbg !1202
  br i1 %11, label %75, label %12, !dbg !1204

; <label>:12:                                     ; preds = %10
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1205
  %14 = load i32, i32* %13, align 8, !dbg !1205, !tbaa !922
  %15 = and i32 %14, 1024, !dbg !1206
  %16 = icmp eq i32 %15, 0, !dbg !1206
  br i1 %16, label %17, label %75, !dbg !1207

; <label>:17:                                     ; preds = %12
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1233
  %19 = load %struct.list*, %struct.list** %18, align 8, !dbg !1233, !tbaa !661
  %20 = getelementptr inbounds %struct.list, %struct.list* %19, i64 0, i32 5, !dbg !1233
  %21 = load i64, i64* %20, align 8, !dbg !1233, !tbaa !1069
  %22 = mul i64 %21, 40, !dbg !1234
  %23 = add i64 %22, %7, !dbg !1235
  %24 = and i32 %14, 2, !dbg !1242
  %25 = icmp eq i32 %24, 0, !dbg !1242
  br i1 %25, label %26, label %33, !dbg !1244

; <label>:26:                                     ; preds = %17
  %27 = and i32 %14, 5, !dbg !1245
  %28 = icmp eq i32 %27, 1, !dbg !1245
  br i1 %28, label %33, label %29, !dbg !1245

; <label>:29:                                     ; preds = %26
  %30 = lshr i32 %14, 17, !dbg !1247
  %31 = and i32 %30, 2, !dbg !1247
  %32 = zext i32 %31 to i64, !dbg !1247
  br label %33, !dbg !1247

; <label>:33:                                     ; preds = %29, %26, %17
  %34 = phi i64 [ 0, %17 ], [ %32, %29 ], [ 1, %26 ]
  %35 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 116, i64 %34, i32 0, !dbg !1248
  %36 = load i64, i64* %35, align 8, !dbg !1248, !tbaa !1250
  %37 = add i64 %36, -1, !dbg !1252
  %38 = icmp ult i64 %37, %23, !dbg !1252
  %39 = zext i1 %38 to i32, !dbg !1252
  %40 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 116, i64 %34, i32 1, !dbg !1253
  %41 = load i64, i64* %40, align 8, !dbg !1253, !tbaa !1255
  %42 = add i64 %41, -1, !dbg !1256
  %43 = icmp uge i64 %42, %23, !dbg !1256
  %44 = xor i1 %43, true, !dbg !1256
  %45 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 20, !dbg !1257
  br i1 %43, label %58, label %46, !dbg !1259

; <label>:46:                                     ; preds = %33
  %47 = load i64, i64* %45, align 8, !dbg !1260, !tbaa !667
  %48 = icmp eq i64 %47, 0, !dbg !1261
  %49 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !1262, !tbaa !636
  br i1 %48, label %50, label %51, !dbg !1263

; <label>:50:                                     ; preds = %46
  store i64 %49, i64* %45, align 8, !dbg !1264, !tbaa !667
  br label %59, !dbg !1266

; <label>:51:                                     ; preds = %46
  %52 = sub nsw i64 %49, %47, !dbg !1267
  %53 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 116, i64 %34, i32 2, !dbg !1269
  %54 = load i64, i64* %53, align 8, !dbg !1269, !tbaa !1271
  %55 = icmp sgt i64 %52, %54, !dbg !1272
  %56 = and i1 %55, %44, !dbg !1273
  %57 = zext i1 %56 to i32, !dbg !1273
  br label %59

; <label>:58:                                     ; preds = %33
  store i64 0, i64* %45, align 8, !dbg !1274, !tbaa !667
  br label %59

; <label>:59:                                     ; preds = %50, %51, %58
  %60 = phi i32 [ 0, %50 ], [ %57, %51 ], [ 0, %58 ], !dbg !1275
  %61 = or i32 %60, %39, !dbg !1276
  %62 = icmp eq i32 %61, 0, !dbg !1277
  br i1 %62, label %75, label %63, !dbg !1278

; <label>:63:                                     ; preds = %59
  %64 = tail call i8* @sdsempty() #10, !dbg !1279
  %65 = tail call i8* @catClientInfoString(i8* %64, %struct.client* nonnull %0) #12, !dbg !1280
  %66 = load i32, i32* %13, align 8, !dbg !1287, !tbaa !922
  %67 = and i32 %66, 1280, !dbg !1289
  %68 = icmp eq i32 %67, 0, !dbg !1289
  br i1 %68, label %69, label %74, !dbg !1289

; <label>:69:                                     ; preds = %63
  %70 = or i32 %66, 1024, !dbg !1290
  store i32 %70, i32* %13, align 8, !dbg !1290, !tbaa !922
  %71 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !1291, !tbaa !1292
  %72 = bitcast %struct.client* %0 to i8*, !dbg !1293
  %73 = tail call %struct.list* @listAddNodeTail(%struct.list* %71, i8* %72) #10, !dbg !1294
  br label %74, !dbg !1295

; <label>:74:                                     ; preds = %63, %69
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.96, i64 0, i64 0), i8* %65) #10, !dbg !1296
  tail call void @sdsfree(i8* %65) #10, !dbg !1297
  br label %75, !dbg !1298

; <label>:75:                                     ; preds = %59, %12, %10, %1, %74
  ret void, !dbg !1299
}

; Function Attrs: noredzone nounwind
define dso_local void @addReply(%struct.client*, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1300 {
  %3 = alloca [32 x i8], align 16
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1319
  %5 = load i32, i32* %4, align 8, !dbg !1319, !tbaa !922
  %6 = and i32 %5, 134217984, !dbg !1320
  %7 = icmp eq i32 %6, 0, !dbg !1320
  br i1 %7, label %8, label %43, !dbg !1321

; <label>:8:                                      ; preds = %2
  %9 = and i32 %5, 20971520, !dbg !1322
  %10 = icmp ne i32 %9, 0, !dbg !1322
  %11 = and i32 %5, 8194, !dbg !1323
  %12 = icmp eq i32 %11, 2, !dbg !1323
  %13 = or i1 %10, %12, !dbg !1324
  br i1 %13, label %152, label %14, !dbg !1324

; <label>:14:                                     ; preds = %8
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1325
  %16 = load i32, i32* %15, align 8, !dbg !1325, !tbaa !593
  %17 = icmp slt i32 %16, 1, !dbg !1326
  br i1 %17, label %152, label %18, !dbg !1327

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1330
  %20 = load i32, i32* %19, align 8, !dbg !1330, !tbaa !599
  %21 = icmp eq i32 %20, 0, !dbg !1331
  br i1 %21, label %22, label %43, !dbg !1332

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1333
  %24 = load %struct.list*, %struct.list** %23, align 8, !dbg !1333, !tbaa !661
  %25 = getelementptr inbounds %struct.list, %struct.list* %24, i64 0, i32 5, !dbg !1333
  %26 = load i64, i64* %25, align 8, !dbg !1333, !tbaa !1069
  %27 = icmp eq i64 %26, 0, !dbg !1332
  %28 = and i32 %5, 2097152, !dbg !1334
  %29 = icmp eq i32 %28, 0, !dbg !1334
  %30 = and i1 %29, %27, !dbg !1336
  br i1 %30, label %31, label %43, !dbg !1336

; <label>:31:                                     ; preds = %22
  %32 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1338
  %33 = load i32, i32* %32, align 8, !dbg !1338, !tbaa !1026
  switch i32 %33, label %43 [
    i32 0, label %38
    i32 9, label %34
  ], !dbg !1339

; <label>:34:                                     ; preds = %31
  %35 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1340
  %36 = load i32, i32* %35, align 4, !dbg !1340, !tbaa !1029
  %37 = icmp eq i32 %36, 0, !dbg !1341
  br i1 %37, label %38, label %43, !dbg !1342

; <label>:38:                                     ; preds = %34, %31
  %39 = or i32 %5, 2097152, !dbg !1343
  store i32 %39, i32* %4, align 8, !dbg !1343, !tbaa !922
  %40 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !1344, !tbaa !1035
  %41 = bitcast %struct.client* %0 to i8*, !dbg !1345
  %42 = tail call %struct.list* @listAddNodeHead(%struct.list* %40, i8* %41) #10, !dbg !1346
  br label %43, !dbg !1347

; <label>:43:                                     ; preds = %2, %22, %31, %34, %38, %18
  %44 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !1348
  %45 = load i32, i32* %44, align 8, !dbg !1348
  %46 = lshr i32 %45, 4, !dbg !1348
  %47 = trunc i32 %46 to i4, !dbg !1348
  switch i4 %47, label %151 [
    i4 0, label %48
    i4 -8, label %48
    i4 1, label %122
  ], !dbg !1348

; <label>:48:                                     ; preds = %43, %43
  %49 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1349
  %50 = load i8*, i8** %49, align 8, !dbg !1349, !tbaa !376
  %51 = getelementptr inbounds i8, i8* %50, i64 -1, !dbg !1354
  %52 = load i8, i8* %51, align 1, !dbg !1354, !tbaa !654
  %53 = trunc i8 %52 to i3, !dbg !1356
  switch i3 %53, label %75 [
    i3 0, label %54
    i3 1, label %57
    i3 2, label %61
    i3 3, label %66
    i3 -4, label %71
  ], !dbg !1356

; <label>:54:                                     ; preds = %48
  %55 = lshr i8 %52, 3, !dbg !1357
  %56 = zext i8 %55 to i64, !dbg !1357
  br label %75, !dbg !1358

; <label>:57:                                     ; preds = %48
  %58 = getelementptr inbounds i8, i8* %50, i64 -3, !dbg !1359
  %59 = load i8, i8* %58, align 1, !dbg !1360, !tbaa !654
  %60 = zext i8 %59 to i64, !dbg !1359
  br label %75, !dbg !1361

; <label>:61:                                     ; preds = %48
  %62 = getelementptr inbounds i8, i8* %50, i64 -5, !dbg !1362
  %63 = bitcast i8* %62 to i16*, !dbg !1363
  %64 = load i16, i16* %63, align 1, !dbg !1363, !tbaa !855
  %65 = zext i16 %64 to i64, !dbg !1362
  br label %75, !dbg !1364

; <label>:66:                                     ; preds = %48
  %67 = getelementptr inbounds i8, i8* %50, i64 -9, !dbg !1365
  %68 = bitcast i8* %67 to i32*, !dbg !1366
  %69 = load i32, i32* %68, align 1, !dbg !1366, !tbaa !548
  %70 = zext i32 %69 to i64, !dbg !1365
  br label %75, !dbg !1367

; <label>:71:                                     ; preds = %48
  %72 = getelementptr inbounds i8, i8* %50, i64 -17, !dbg !1368
  %73 = bitcast i8* %72 to i64*, !dbg !1369
  %74 = load i64, i64* %73, align 1, !dbg !1369, !tbaa !409
  br label %75, !dbg !1370

; <label>:75:                                     ; preds = %48, %54, %57, %61, %66, %71
  %76 = phi i64 [ %74, %71 ], [ %70, %66 ], [ %65, %61 ], [ %60, %57 ], [ %56, %54 ], [ 0, %48 ], !dbg !1371
  %77 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1376
  %78 = load i32, i32* %77, align 8, !dbg !1376, !tbaa !599
  %79 = sext i32 %78 to i64, !dbg !1377
  %80 = load i32, i32* %4, align 8, !dbg !1378, !tbaa !922
  %81 = and i32 %80, 64, !dbg !1379
  %82 = icmp eq i32 %81, 0, !dbg !1379
  br i1 %82, label %83, label %152, !dbg !1380

; <label>:83:                                     ; preds = %75
  %84 = sub nsw i64 16384, %79, !dbg !1381
  %85 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1383
  %86 = load %struct.list*, %struct.list** %85, align 8, !dbg !1383, !tbaa !661
  %87 = getelementptr inbounds %struct.list, %struct.list* %86, i64 0, i32 5, !dbg !1383
  %88 = load i64, i64* %87, align 8, !dbg !1383, !tbaa !1069
  %89 = icmp ne i64 %88, 0, !dbg !1384
  %90 = icmp ult i64 %84, %76, !dbg !1385
  %91 = or i1 %90, %89, !dbg !1386
  br i1 %91, label %98, label %92, !dbg !1386

; <label>:92:                                     ; preds = %83
  %93 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 48, i64 %79, !dbg !1387
  %94 = tail call i8* @memcpy(i8* nonnull %93, i8* %50, i64 %76) #10, !dbg !1388
  %95 = load i32, i32* %77, align 8, !dbg !1389, !tbaa !599
  %96 = trunc i64 %76 to i32, !dbg !1389
  %97 = add i32 %95, %96, !dbg !1389
  store i32 %97, i32* %77, align 8, !dbg !1389, !tbaa !599
  br label %152, !dbg !1390

; <label>:98:                                     ; preds = %83
  switch i3 %53, label %120 [
    i3 0, label %99
    i3 1, label %102
    i3 2, label %106
    i3 3, label %111
    i3 -4, label %116
  ], !dbg !1394

; <label>:99:                                     ; preds = %98
  %100 = lshr i8 %52, 3, !dbg !1395
  %101 = zext i8 %100 to i64, !dbg !1395
  br label %120, !dbg !1396

; <label>:102:                                    ; preds = %98
  %103 = getelementptr inbounds i8, i8* %50, i64 -3, !dbg !1397
  %104 = load i8, i8* %103, align 1, !dbg !1398, !tbaa !654
  %105 = zext i8 %104 to i64, !dbg !1397
  br label %120, !dbg !1399

; <label>:106:                                    ; preds = %98
  %107 = getelementptr inbounds i8, i8* %50, i64 -5, !dbg !1400
  %108 = bitcast i8* %107 to i16*, !dbg !1401
  %109 = load i16, i16* %108, align 1, !dbg !1401, !tbaa !855
  %110 = zext i16 %109 to i64, !dbg !1400
  br label %120, !dbg !1402

; <label>:111:                                    ; preds = %98
  %112 = getelementptr inbounds i8, i8* %50, i64 -9, !dbg !1403
  %113 = bitcast i8* %112 to i32*, !dbg !1404
  %114 = load i32, i32* %113, align 1, !dbg !1404, !tbaa !548
  %115 = zext i32 %114 to i64, !dbg !1403
  br label %120, !dbg !1405

; <label>:116:                                    ; preds = %98
  %117 = getelementptr inbounds i8, i8* %50, i64 -17, !dbg !1406
  %118 = bitcast i8* %117 to i64*, !dbg !1407
  %119 = load i64, i64* %118, align 1, !dbg !1407, !tbaa !409
  br label %120, !dbg !1408

; <label>:120:                                    ; preds = %98, %99, %102, %106, %111, %116
  %121 = phi i64 [ %119, %116 ], [ %115, %111 ], [ %110, %106 ], [ %105, %102 ], [ %101, %99 ], [ 0, %98 ], !dbg !1409
  tail call void @_addReplyStringToList(%struct.client* nonnull %0, i8* %50, i64 %121) #12, !dbg !1410
  br label %152, !dbg !1410

; <label>:122:                                    ; preds = %43
  %123 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !1411
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %123) #6, !dbg !1411
  %124 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !1413
  %125 = bitcast i8** %124 to i64*, !dbg !1413
  %126 = load i64, i64* %125, align 8, !dbg !1413, !tbaa !376
  %127 = call i32 @ll2string(i8* nonnull %123, i64 32, i64 %126) #10, !dbg !1414
  %128 = sext i32 %127 to i64, !dbg !1414
  %129 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1421
  %130 = load i32, i32* %129, align 8, !dbg !1421, !tbaa !599
  %131 = sext i32 %130 to i64, !dbg !1422
  %132 = load i32, i32* %4, align 8, !dbg !1423, !tbaa !922
  %133 = and i32 %132, 64, !dbg !1424
  %134 = icmp eq i32 %133, 0, !dbg !1424
  br i1 %134, label %135, label %150, !dbg !1425

; <label>:135:                                    ; preds = %122
  %136 = sub nsw i64 16384, %131, !dbg !1426
  %137 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1428
  %138 = load %struct.list*, %struct.list** %137, align 8, !dbg !1428, !tbaa !661
  %139 = getelementptr inbounds %struct.list, %struct.list* %138, i64 0, i32 5, !dbg !1428
  %140 = load i64, i64* %139, align 8, !dbg !1428, !tbaa !1069
  %141 = icmp ne i64 %140, 0, !dbg !1429
  %142 = icmp ult i64 %136, %128, !dbg !1430
  %143 = or i1 %142, %141, !dbg !1431
  br i1 %143, label %149, label %144, !dbg !1431

; <label>:144:                                    ; preds = %135
  %145 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 48, i64 %131, !dbg !1432
  %146 = call i8* @memcpy(i8* nonnull %145, i8* nonnull %123, i64 %128) #10, !dbg !1433
  %147 = load i32, i32* %129, align 8, !dbg !1434, !tbaa !599
  %148 = add i32 %147, %127, !dbg !1434
  store i32 %148, i32* %129, align 8, !dbg !1434, !tbaa !599
  br label %150, !dbg !1435

; <label>:149:                                    ; preds = %135
  call void @_addReplyStringToList(%struct.client* nonnull %0, i8* nonnull %123, i64 %128) #12, !dbg !1436
  br label %150, !dbg !1436

; <label>:150:                                    ; preds = %122, %144, %149
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %123) #6, !dbg !1437
  br label %152

; <label>:151:                                    ; preds = %43
  tail call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 318, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1438
  tail call void @_exit(i32 1) #11, !dbg !1438
  unreachable, !dbg !1438

; <label>:152:                                    ; preds = %75, %92, %14, %8, %120, %150
  ret void, !dbg !1440
}

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @_serverPanic(i8*, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplySds(%struct.client*, i8*) local_unnamed_addr #0 !dbg !1441 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1452
  %4 = load i32, i32* %3, align 8, !dbg !1452, !tbaa !922
  %5 = and i32 %4, 134217984, !dbg !1453
  %6 = icmp eq i32 %5, 0, !dbg !1453
  br i1 %6, label %7, label %43, !dbg !1454

; <label>:7:                                      ; preds = %2
  %8 = and i32 %4, 20971520, !dbg !1455
  %9 = icmp ne i32 %8, 0, !dbg !1455
  %10 = and i32 %4, 8194, !dbg !1456
  %11 = icmp eq i32 %10, 2, !dbg !1456
  %12 = or i1 %9, %11, !dbg !1457
  br i1 %12, label %42, label %13, !dbg !1457

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1458
  %15 = load i32, i32* %14, align 8, !dbg !1458, !tbaa !593
  %16 = icmp slt i32 %15, 1, !dbg !1459
  br i1 %16, label %42, label %17, !dbg !1460

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1463
  %19 = load i32, i32* %18, align 8, !dbg !1463, !tbaa !599
  %20 = icmp eq i32 %19, 0, !dbg !1464
  br i1 %20, label %21, label %43, !dbg !1465

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1466
  %23 = load %struct.list*, %struct.list** %22, align 8, !dbg !1466, !tbaa !661
  %24 = getelementptr inbounds %struct.list, %struct.list* %23, i64 0, i32 5, !dbg !1466
  %25 = load i64, i64* %24, align 8, !dbg !1466, !tbaa !1069
  %26 = icmp eq i64 %25, 0, !dbg !1465
  %27 = and i32 %4, 2097152, !dbg !1467
  %28 = icmp eq i32 %27, 0, !dbg !1467
  %29 = and i1 %28, %26, !dbg !1469
  br i1 %29, label %30, label %43, !dbg !1469

; <label>:30:                                     ; preds = %21
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1471
  %32 = load i32, i32* %31, align 8, !dbg !1471, !tbaa !1026
  switch i32 %32, label %43 [
    i32 0, label %37
    i32 9, label %33
  ], !dbg !1472

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1473
  %35 = load i32, i32* %34, align 4, !dbg !1473, !tbaa !1029
  %36 = icmp eq i32 %35, 0, !dbg !1474
  br i1 %36, label %37, label %43, !dbg !1475

; <label>:37:                                     ; preds = %33, %30
  %38 = or i32 %4, 2097152, !dbg !1476
  store i32 %38, i32* %3, align 8, !dbg !1476, !tbaa !922
  %39 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !1477, !tbaa !1035
  %40 = bitcast %struct.client* %0 to i8*, !dbg !1478
  %41 = tail call %struct.list* @listAddNodeHead(%struct.list* %39, i8* %40) #10, !dbg !1479
  br label %43, !dbg !1480

; <label>:42:                                     ; preds = %13, %7
  tail call void @sdsfree(i8* %1) #10, !dbg !1481
  br label %116, !dbg !1483

; <label>:43:                                     ; preds = %2, %21, %30, %33, %37, %17
  %44 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !1487
  %45 = load i8, i8* %44, align 1, !dbg !1487, !tbaa !654
  %46 = trunc i8 %45 to i3, !dbg !1489
  switch i3 %46, label %68 [
    i3 0, label %47
    i3 1, label %50
    i3 2, label %54
    i3 3, label %59
    i3 -4, label %64
  ], !dbg !1489

; <label>:47:                                     ; preds = %43
  %48 = lshr i8 %45, 3, !dbg !1490
  %49 = zext i8 %48 to i64, !dbg !1490
  br label %68, !dbg !1491

; <label>:50:                                     ; preds = %43
  %51 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !1492
  %52 = load i8, i8* %51, align 1, !dbg !1493, !tbaa !654
  %53 = zext i8 %52 to i64, !dbg !1492
  br label %68, !dbg !1494

; <label>:54:                                     ; preds = %43
  %55 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !1495
  %56 = bitcast i8* %55 to i16*, !dbg !1496
  %57 = load i16, i16* %56, align 1, !dbg !1496, !tbaa !855
  %58 = zext i16 %57 to i64, !dbg !1495
  br label %68, !dbg !1497

; <label>:59:                                     ; preds = %43
  %60 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !1498
  %61 = bitcast i8* %60 to i32*, !dbg !1499
  %62 = load i32, i32* %61, align 1, !dbg !1499, !tbaa !548
  %63 = zext i32 %62 to i64, !dbg !1498
  br label %68, !dbg !1500

; <label>:64:                                     ; preds = %43
  %65 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !1501
  %66 = bitcast i8* %65 to i64*, !dbg !1502
  %67 = load i64, i64* %66, align 1, !dbg !1502, !tbaa !409
  br label %68, !dbg !1503

; <label>:68:                                     ; preds = %43, %47, %50, %54, %59, %64
  %69 = phi i64 [ %67, %64 ], [ %63, %59 ], [ %58, %54 ], [ %53, %50 ], [ %49, %47 ], [ 0, %43 ], !dbg !1504
  %70 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1509
  %71 = load i32, i32* %70, align 8, !dbg !1509, !tbaa !599
  %72 = sext i32 %71 to i64, !dbg !1510
  %73 = load i32, i32* %3, align 8, !dbg !1511, !tbaa !922
  %74 = and i32 %73, 64, !dbg !1512
  %75 = icmp eq i32 %74, 0, !dbg !1512
  br i1 %75, label %76, label %115, !dbg !1513

; <label>:76:                                     ; preds = %68
  %77 = sub nsw i64 16384, %72, !dbg !1514
  %78 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1516
  %79 = load %struct.list*, %struct.list** %78, align 8, !dbg !1516, !tbaa !661
  %80 = getelementptr inbounds %struct.list, %struct.list* %79, i64 0, i32 5, !dbg !1516
  %81 = load i64, i64* %80, align 8, !dbg !1516, !tbaa !1069
  %82 = icmp ne i64 %81, 0, !dbg !1517
  %83 = icmp ult i64 %77, %69, !dbg !1518
  %84 = or i1 %83, %82, !dbg !1519
  br i1 %84, label %91, label %85, !dbg !1519

; <label>:85:                                     ; preds = %76
  %86 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 48, i64 %72, !dbg !1520
  %87 = tail call i8* @memcpy(i8* nonnull %86, i8* nonnull %1, i64 %69) #10, !dbg !1521
  %88 = load i32, i32* %70, align 8, !dbg !1522, !tbaa !599
  %89 = trunc i64 %69 to i32, !dbg !1522
  %90 = add i32 %88, %89, !dbg !1522
  store i32 %90, i32* %70, align 8, !dbg !1522, !tbaa !599
  br label %115, !dbg !1523

; <label>:91:                                     ; preds = %76
  switch i3 %46, label %113 [
    i3 0, label %92
    i3 1, label %95
    i3 2, label %99
    i3 3, label %104
    i3 -4, label %109
  ], !dbg !1527

; <label>:92:                                     ; preds = %91
  %93 = lshr i8 %45, 3, !dbg !1528
  %94 = zext i8 %93 to i64, !dbg !1528
  br label %113, !dbg !1529

; <label>:95:                                     ; preds = %91
  %96 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !1530
  %97 = load i8, i8* %96, align 1, !dbg !1531, !tbaa !654
  %98 = zext i8 %97 to i64, !dbg !1530
  br label %113, !dbg !1532

; <label>:99:                                     ; preds = %91
  %100 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !1533
  %101 = bitcast i8* %100 to i16*, !dbg !1534
  %102 = load i16, i16* %101, align 1, !dbg !1534, !tbaa !855
  %103 = zext i16 %102 to i64, !dbg !1533
  br label %113, !dbg !1535

; <label>:104:                                    ; preds = %91
  %105 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !1536
  %106 = bitcast i8* %105 to i32*, !dbg !1537
  %107 = load i32, i32* %106, align 1, !dbg !1537, !tbaa !548
  %108 = zext i32 %107 to i64, !dbg !1536
  br label %113, !dbg !1538

; <label>:109:                                    ; preds = %91
  %110 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !1539
  %111 = bitcast i8* %110 to i64*, !dbg !1540
  %112 = load i64, i64* %111, align 1, !dbg !1540, !tbaa !409
  br label %113, !dbg !1541

; <label>:113:                                    ; preds = %91, %92, %95, %99, %104, %109
  %114 = phi i64 [ %112, %109 ], [ %108, %104 ], [ %103, %99 ], [ %98, %95 ], [ %94, %92 ], [ 0, %91 ], !dbg !1542
  tail call void @_addReplyStringToList(%struct.client* nonnull %0, i8* nonnull %1, i64 %114) #12, !dbg !1543
  br label %115, !dbg !1543

; <label>:115:                                    ; preds = %68, %85, %113
  tail call void @sdsfree(i8* nonnull %1) #10, !dbg !1544
  br label %116, !dbg !1545

; <label>:116:                                    ; preds = %115, %42
  ret void, !dbg !1545
}

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyString(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !1546 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1557
  %5 = load i32, i32* %4, align 8, !dbg !1557, !tbaa !922
  %6 = and i32 %5, 134217984, !dbg !1558
  %7 = icmp eq i32 %6, 0, !dbg !1558
  br i1 %7, label %10, label %8, !dbg !1559

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1560
  br label %46, !dbg !1559

; <label>:10:                                     ; preds = %3
  %11 = and i32 %5, 20971520, !dbg !1563
  %12 = icmp ne i32 %11, 0, !dbg !1563
  %13 = and i32 %5, 8194, !dbg !1564
  %14 = icmp eq i32 %13, 2, !dbg !1564
  %15 = or i1 %12, %14, !dbg !1565
  br i1 %15, label %69, label %16, !dbg !1565

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1566
  %18 = load i32, i32* %17, align 8, !dbg !1566, !tbaa !593
  %19 = icmp slt i32 %18, 1, !dbg !1567
  br i1 %19, label %69, label %20, !dbg !1568

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1571
  %22 = load i32, i32* %21, align 8, !dbg !1571, !tbaa !599
  %23 = icmp eq i32 %22, 0, !dbg !1572
  br i1 %23, label %24, label %46, !dbg !1573

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1574
  %26 = load %struct.list*, %struct.list** %25, align 8, !dbg !1574, !tbaa !661
  %27 = getelementptr inbounds %struct.list, %struct.list* %26, i64 0, i32 5, !dbg !1574
  %28 = load i64, i64* %27, align 8, !dbg !1574, !tbaa !1069
  %29 = icmp eq i64 %28, 0, !dbg !1573
  %30 = and i32 %5, 2097152, !dbg !1575
  %31 = icmp eq i32 %30, 0, !dbg !1575
  %32 = and i1 %31, %29, !dbg !1577
  br i1 %32, label %33, label %46, !dbg !1577

; <label>:33:                                     ; preds = %24
  %34 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1579
  %35 = load i32, i32* %34, align 8, !dbg !1579, !tbaa !1026
  switch i32 %35, label %46 [
    i32 0, label %40
    i32 9, label %36
  ], !dbg !1580

; <label>:36:                                     ; preds = %33
  %37 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1581
  %38 = load i32, i32* %37, align 4, !dbg !1581, !tbaa !1029
  %39 = icmp eq i32 %38, 0, !dbg !1582
  br i1 %39, label %40, label %46, !dbg !1583

; <label>:40:                                     ; preds = %36, %33
  %41 = or i32 %5, 2097152, !dbg !1584
  store i32 %41, i32* %4, align 8, !dbg !1584, !tbaa !922
  %42 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !1585, !tbaa !1035
  %43 = bitcast %struct.client* %0 to i8*, !dbg !1586
  %44 = tail call %struct.list* @listAddNodeHead(%struct.list* %42, i8* %43) #10, !dbg !1587
  %45 = load i32, i32* %4, align 8, !dbg !1588, !tbaa !922
  br label %46, !dbg !1589

; <label>:46:                                     ; preds = %8, %24, %33, %36, %40, %20
  %47 = phi i32* [ %9, %8 ], [ %21, %24 ], [ %21, %33 ], [ %21, %36 ], [ %21, %40 ], [ %21, %20 ], !dbg !1560
  %48 = phi i32 [ %5, %8 ], [ %5, %24 ], [ %5, %33 ], [ %5, %36 ], [ %45, %40 ], [ %5, %20 ], !dbg !1588
  %49 = load i32, i32* %47, align 8, !dbg !1560, !tbaa !599
  %50 = sext i32 %49 to i64, !dbg !1593
  %51 = and i32 %48, 64, !dbg !1594
  %52 = icmp eq i32 %51, 0, !dbg !1594
  br i1 %52, label %53, label %69, !dbg !1595

; <label>:53:                                     ; preds = %46
  %54 = sub nsw i64 16384, %50, !dbg !1596
  %55 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1598
  %56 = load %struct.list*, %struct.list** %55, align 8, !dbg !1598, !tbaa !661
  %57 = getelementptr inbounds %struct.list, %struct.list* %56, i64 0, i32 5, !dbg !1598
  %58 = load i64, i64* %57, align 8, !dbg !1598, !tbaa !1069
  %59 = icmp ne i64 %58, 0, !dbg !1599
  %60 = icmp ult i64 %54, %2, !dbg !1600
  %61 = or i1 %60, %59, !dbg !1601
  br i1 %61, label %68, label %62, !dbg !1601

; <label>:62:                                     ; preds = %53
  %63 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 48, i64 %50, !dbg !1602
  %64 = tail call i8* @memcpy(i8* nonnull %63, i8* %1, i64 %2) #10, !dbg !1603
  %65 = load i32, i32* %47, align 8, !dbg !1604, !tbaa !599
  %66 = trunc i64 %2 to i32, !dbg !1604
  %67 = add i32 %65, %66, !dbg !1604
  store i32 %67, i32* %47, align 8, !dbg !1604, !tbaa !599
  br label %69, !dbg !1605

; <label>:68:                                     ; preds = %53
  tail call void @_addReplyStringToList(%struct.client* nonnull %0, i8* %1, i64 %2) #12, !dbg !1606
  br label %69, !dbg !1606

; <label>:69:                                     ; preds = %46, %62, %16, %10, %68
  ret void, !dbg !1607
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyErrorLength(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !1608 {
  %4 = icmp eq i64 %2, 0, !dbg !1621
  br i1 %4, label %8, label %5, !dbg !1623

; <label>:5:                                      ; preds = %3
  %6 = load i8, i8* %1, align 1, !dbg !1624, !tbaa !654
  %7 = icmp eq i8 %6, 45, !dbg !1625
  br i1 %7, label %9, label %8, !dbg !1626

; <label>:8:                                      ; preds = %5, %3
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 5) #12, !dbg !1627
  br label %9, !dbg !1627

; <label>:9:                                      ; preds = %5, %8
  tail call void @addReplyString(%struct.client* %0, i8* %1, i64 %2) #12, !dbg !1628
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 2) #12, !dbg !1629
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1630
  %11 = load i32, i32* %10, align 8, !dbg !1630, !tbaa !922
  %12 = and i32 %11, 3, !dbg !1631
  %13 = icmp ne i32 %12, 0, !dbg !1631
  %14 = and i32 %11, 4, !dbg !1632
  %15 = icmp eq i32 %14, 0, !dbg !1632
  %16 = and i1 %13, %15, !dbg !1633
  br i1 %16, label %17, label %30, !dbg !1633

; <label>:17:                                     ; preds = %9
  %18 = and i32 %11, 2, !dbg !1634
  %19 = icmp ne i32 %18, 0, !dbg !1635
  %20 = select i1 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), !dbg !1635
  %21 = select i1 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), !dbg !1637
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 11, !dbg !1639
  %23 = load %struct.redisCommand*, %struct.redisCommand** %22, align 8, !dbg !1639, !tbaa !1640
  %24 = icmp eq %struct.redisCommand* %23, null, !dbg !1641
  br i1 %24, label %28, label %25, !dbg !1641

; <label>:25:                                     ; preds = %17
  %26 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %23, i64 0, i32 0, !dbg !1642
  %27 = load i8*, i8** %26, align 8, !dbg !1642, !tbaa !1643
  br label %28, !dbg !1641

; <label>:28:                                     ; preds = %17, %25
  %29 = phi i8* [ %27, %25 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), %17 ], !dbg !1641
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.8, i64 0, i64 0), i8* %21, i8* %20, i8* %1, i8* %29) #10, !dbg !1646
  br label %30, !dbg !1647

; <label>:30:                                     ; preds = %9, %28
  ret void, !dbg !1648
}

; Function Attrs: noredzone
declare dso_local void @serverLog(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #0 !dbg !1649 {
  %3 = tail call i64 @strlen(i8* %1) #10, !dbg !1657
  tail call void @addReplyErrorLength(%struct.client* %0, i8* %1, i64 %3) #12, !dbg !1658
  ret void, !dbg !1659
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) local_unnamed_addr #0 !dbg !1660 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1675
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #6, !dbg !1675
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1677
  call void @llvm.va_start(i8* nonnull %4), !dbg !1677
  %6 = call i8* @sdsempty() #10, !dbg !1678
  %7 = call i8* @sdscatvprintf(i8* %6, i8* %1, %struct.__va_list_tag* nonnull %5) #10, !dbg !1679
  call void @llvm.va_end(i8* nonnull %4), !dbg !1681
  %8 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !1684
  %9 = load i8, i8* %8, align 1, !dbg !1684, !tbaa !654
  %10 = trunc i8 %9 to i3, !dbg !1686
  switch i3 %10, label %66 [
    i3 0, label %11
    i3 1, label %14
    i3 2, label %18
    i3 3, label %23
    i3 -4, label %28
  ], !dbg !1686

; <label>:11:                                     ; preds = %2
  %12 = lshr i8 %9, 3, !dbg !1687
  %13 = zext i8 %12 to i64, !dbg !1687
  br label %32, !dbg !1688

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds i8, i8* %7, i64 -3, !dbg !1689
  %16 = load i8, i8* %15, align 1, !dbg !1690, !tbaa !654
  %17 = zext i8 %16 to i64, !dbg !1689
  br label %32, !dbg !1691

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1692
  %20 = bitcast i8* %19 to i16*, !dbg !1693
  %21 = load i16, i16* %20, align 1, !dbg !1693, !tbaa !855
  %22 = zext i16 %21 to i64, !dbg !1692
  br label %32, !dbg !1694

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %7, i64 -9, !dbg !1695
  %25 = bitcast i8* %24 to i32*, !dbg !1696
  %26 = load i32, i32* %25, align 1, !dbg !1696, !tbaa !548
  %27 = zext i32 %26 to i64, !dbg !1695
  br label %32, !dbg !1697

; <label>:28:                                     ; preds = %2
  %29 = getelementptr inbounds i8, i8* %7, i64 -17, !dbg !1698
  %30 = bitcast i8* %29 to i64*, !dbg !1699
  %31 = load i64, i64* %30, align 1, !dbg !1699, !tbaa !409
  br label %32, !dbg !1700

; <label>:32:                                     ; preds = %11, %14, %18, %23, %28
  %33 = phi i64 [ %31, %28 ], [ %27, %23 ], [ %22, %18 ], [ %17, %14 ], [ %13, %11 ], !dbg !1701
  %34 = icmp eq i64 %33, 0, !dbg !1704
  br i1 %34, label %66, label %35, !dbg !1707

; <label>:35:                                     ; preds = %32
  %36 = add i64 %33, -1, !dbg !1708
  %37 = and i64 %33, 3, !dbg !1708
  %38 = icmp ult i64 %36, 3, !dbg !1708
  br i1 %38, label %51, label %39, !dbg !1708

; <label>:39:                                     ; preds = %35
  %40 = sub i64 %33, %37, !dbg !1708
  br label %41, !dbg !1708

; <label>:41:                                     ; preds = %103, %39
  %42 = phi i64 [ 0, %39 ], [ %104, %103 ]
  %43 = phi i64 [ %40, %39 ], [ %105, %103 ]
  %44 = getelementptr inbounds i8, i8* %7, i64 %42, !dbg !1708
  %45 = load i8, i8* %44, align 1, !dbg !1708, !tbaa !654
  switch i8 %45, label %47 [
    i8 13, label %46
    i8 10, label %46
  ], !dbg !1711

; <label>:46:                                     ; preds = %41, %41
  store i8 32, i8* %44, align 1, !dbg !1712, !tbaa !654
  br label %47, !dbg !1713

; <label>:47:                                     ; preds = %41, %46
  %48 = or i64 %42, 1, !dbg !1714
  %49 = getelementptr inbounds i8, i8* %7, i64 %48, !dbg !1708
  %50 = load i8, i8* %49, align 1, !dbg !1708, !tbaa !654
  switch i8 %50, label %93 [
    i8 13, label %92
    i8 10, label %92
  ], !dbg !1711

; <label>:51:                                     ; preds = %103, %35
  %52 = phi i64 [ 0, %35 ], [ %104, %103 ]
  %53 = icmp eq i64 %37, 0, !dbg !1711
  br i1 %53, label %64, label %54, !dbg !1711

; <label>:54:                                     ; preds = %51, %60
  %55 = phi i64 [ %61, %60 ], [ %52, %51 ]
  %56 = phi i64 [ %62, %60 ], [ %37, %51 ]
  %57 = getelementptr inbounds i8, i8* %7, i64 %55, !dbg !1708
  %58 = load i8, i8* %57, align 1, !dbg !1708, !tbaa !654
  switch i8 %58, label %60 [
    i8 13, label %59
    i8 10, label %59
  ], !dbg !1711

; <label>:59:                                     ; preds = %54, %54
  store i8 32, i8* %57, align 1, !dbg !1712, !tbaa !654
  br label %60, !dbg !1713

; <label>:60:                                     ; preds = %59, %54
  %61 = add nuw i64 %55, 1, !dbg !1714
  %62 = add i64 %56, -1, !dbg !1707
  %63 = icmp eq i64 %62, 0, !dbg !1707
  br i1 %63, label %64, label %54, !dbg !1707, !llvm.loop !1715

; <label>:64:                                     ; preds = %60, %51
  %65 = load i8, i8* %8, align 1, !dbg !1717, !tbaa !654
  br label %66, !dbg !1717

; <label>:66:                                     ; preds = %2, %64, %32
  %67 = phi i8 [ %65, %64 ], [ %9, %32 ], [ %9, %2 ], !dbg !1717
  %68 = trunc i8 %67 to i3, !dbg !1721
  switch i3 %68, label %90 [
    i3 0, label %69
    i3 1, label %72
    i3 2, label %76
    i3 3, label %81
    i3 -4, label %86
  ], !dbg !1721

; <label>:69:                                     ; preds = %66
  %70 = lshr i8 %67, 3, !dbg !1722
  %71 = zext i8 %70 to i64, !dbg !1722
  br label %90, !dbg !1723

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds i8, i8* %7, i64 -3, !dbg !1724
  %74 = load i8, i8* %73, align 1, !dbg !1725, !tbaa !654
  %75 = zext i8 %74 to i64, !dbg !1724
  br label %90, !dbg !1726

; <label>:76:                                     ; preds = %66
  %77 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1727
  %78 = bitcast i8* %77 to i16*, !dbg !1728
  %79 = load i16, i16* %78, align 1, !dbg !1728, !tbaa !855
  %80 = zext i16 %79 to i64, !dbg !1727
  br label %90, !dbg !1729

; <label>:81:                                     ; preds = %66
  %82 = getelementptr inbounds i8, i8* %7, i64 -9, !dbg !1730
  %83 = bitcast i8* %82 to i32*, !dbg !1731
  %84 = load i32, i32* %83, align 1, !dbg !1731, !tbaa !548
  %85 = zext i32 %84 to i64, !dbg !1730
  br label %90, !dbg !1732

; <label>:86:                                     ; preds = %66
  %87 = getelementptr inbounds i8, i8* %7, i64 -17, !dbg !1733
  %88 = bitcast i8* %87 to i64*, !dbg !1734
  %89 = load i64, i64* %88, align 1, !dbg !1734, !tbaa !409
  br label %90, !dbg !1735

; <label>:90:                                     ; preds = %66, %69, %72, %76, %81, %86
  %91 = phi i64 [ %89, %86 ], [ %85, %81 ], [ %80, %76 ], [ %75, %72 ], [ %71, %69 ], [ 0, %66 ], !dbg !1736
  call void @addReplyErrorLength(%struct.client* %0, i8* nonnull %7, i64 %91) #12, !dbg !1737
  call void @sdsfree(i8* nonnull %7) #10, !dbg !1738
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #6, !dbg !1739
  ret void, !dbg !1739

; <label>:92:                                     ; preds = %47, %47
  store i8 32, i8* %49, align 1, !dbg !1712, !tbaa !654
  br label %93, !dbg !1713

; <label>:93:                                     ; preds = %92, %47
  %94 = or i64 %42, 2, !dbg !1714
  %95 = getelementptr inbounds i8, i8* %7, i64 %94, !dbg !1708
  %96 = load i8, i8* %95, align 1, !dbg !1708, !tbaa !654
  switch i8 %96, label %98 [
    i8 13, label %97
    i8 10, label %97
  ], !dbg !1711

; <label>:97:                                     ; preds = %93, %93
  store i8 32, i8* %95, align 1, !dbg !1712, !tbaa !654
  br label %98, !dbg !1713

; <label>:98:                                     ; preds = %97, %93
  %99 = or i64 %42, 3, !dbg !1714
  %100 = getelementptr inbounds i8, i8* %7, i64 %99, !dbg !1708
  %101 = load i8, i8* %100, align 1, !dbg !1708, !tbaa !654
  switch i8 %101, label %103 [
    i8 13, label %102
    i8 10, label %102
  ], !dbg !1711

; <label>:102:                                    ; preds = %98, %98
  store i8 32, i8* %100, align 1, !dbg !1712, !tbaa !654
  br label %103, !dbg !1713

; <label>:103:                                    ; preds = %102, %98
  %104 = add i64 %42, 4, !dbg !1714
  %105 = add i64 %43, -4, !dbg !1707
  %106 = icmp eq i64 %105, 0, !dbg !1707
  br i1 %106, label %51, label %41, !dbg !1707, !llvm.loop !1740
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local i8* @sdscatvprintf(i8*, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noredzone nounwind
define dso_local void @addReplyStatusLength(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !1742 {
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 1) #12, !dbg !1750
  tail call void @addReplyString(%struct.client* %0, i8* %1, i64 %2) #12, !dbg !1751
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 2) #12, !dbg !1752
  ret void, !dbg !1753
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyStatus(%struct.client*, i8*) local_unnamed_addr #0 !dbg !1754 {
  %3 = tail call i64 @strlen(i8* %1) #10, !dbg !1760
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 1) #10, !dbg !1765
  tail call void @addReplyString(%struct.client* %0, i8* %1, i64 %3) #10, !dbg !1766
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 2) #10, !dbg !1767
  ret void, !dbg !1768
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyStatusFormat(%struct.client*, i8*, ...) local_unnamed_addr #0 !dbg !1769 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !1777
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #6, !dbg !1777
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !1779
  call void @llvm.va_start(i8* nonnull %4), !dbg !1779
  %6 = call i8* @sdsempty() #10, !dbg !1780
  %7 = call i8* @sdscatvprintf(i8* %6, i8* %1, %struct.__va_list_tag* nonnull %5) #10, !dbg !1781
  call void @llvm.va_end(i8* nonnull %4), !dbg !1783
  %8 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !1786
  %9 = load i8, i8* %8, align 1, !dbg !1786, !tbaa !654
  %10 = trunc i8 %9 to i3, !dbg !1788
  switch i3 %10, label %32 [
    i3 0, label %11
    i3 1, label %14
    i3 2, label %18
    i3 3, label %23
    i3 -4, label %28
  ], !dbg !1788

; <label>:11:                                     ; preds = %2
  %12 = lshr i8 %9, 3, !dbg !1789
  %13 = zext i8 %12 to i64, !dbg !1789
  br label %32, !dbg !1790

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds i8, i8* %7, i64 -3, !dbg !1791
  %16 = load i8, i8* %15, align 1, !dbg !1792, !tbaa !654
  %17 = zext i8 %16 to i64, !dbg !1791
  br label %32, !dbg !1793

; <label>:18:                                     ; preds = %2
  %19 = getelementptr inbounds i8, i8* %7, i64 -5, !dbg !1794
  %20 = bitcast i8* %19 to i16*, !dbg !1795
  %21 = load i16, i16* %20, align 1, !dbg !1795, !tbaa !855
  %22 = zext i16 %21 to i64, !dbg !1794
  br label %32, !dbg !1796

; <label>:23:                                     ; preds = %2
  %24 = getelementptr inbounds i8, i8* %7, i64 -9, !dbg !1797
  %25 = bitcast i8* %24 to i32*, !dbg !1798
  %26 = load i32, i32* %25, align 1, !dbg !1798, !tbaa !548
  %27 = zext i32 %26 to i64, !dbg !1797
  br label %32, !dbg !1799

; <label>:28:                                     ; preds = %2
  %29 = getelementptr inbounds i8, i8* %7, i64 -17, !dbg !1800
  %30 = bitcast i8* %29 to i64*, !dbg !1801
  %31 = load i64, i64* %30, align 1, !dbg !1801, !tbaa !409
  br label %32, !dbg !1802

; <label>:32:                                     ; preds = %2, %11, %14, %18, %23, %28
  %33 = phi i64 [ %31, %28 ], [ %27, %23 ], [ %22, %18 ], [ %17, %14 ], [ %13, %11 ], [ 0, %2 ], !dbg !1803
  call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 1) #10, !dbg !1808
  call void @addReplyString(%struct.client* %0, i8* %7, i64 %33) #10, !dbg !1809
  call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 2) #10, !dbg !1810
  call void @sdsfree(i8* %7) #10, !dbg !1811
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #6, !dbg !1812
  ret void, !dbg !1812
}

; Function Attrs: noredzone nounwind
define dso_local i8* @addDeferredMultiBulkLength(%struct.client*) local_unnamed_addr #0 !dbg !1813 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1822
  %3 = load i32, i32* %2, align 8, !dbg !1822, !tbaa !922
  %4 = and i32 %3, 134217984, !dbg !1823
  %5 = icmp eq i32 %4, 0, !dbg !1823
  br i1 %5, label %6, label %41, !dbg !1824

; <label>:6:                                      ; preds = %1
  %7 = and i32 %3, 20971520, !dbg !1825
  %8 = icmp ne i32 %7, 0, !dbg !1825
  %9 = and i32 %3, 8194, !dbg !1826
  %10 = icmp eq i32 %9, 2, !dbg !1826
  %11 = or i1 %8, %10, !dbg !1827
  br i1 %11, label %49, label %12, !dbg !1827

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1828
  %14 = load i32, i32* %13, align 8, !dbg !1828, !tbaa !593
  %15 = icmp slt i32 %14, 1, !dbg !1829
  br i1 %15, label %49, label %16, !dbg !1830

; <label>:16:                                     ; preds = %12
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !1833
  %18 = load i32, i32* %17, align 8, !dbg !1833, !tbaa !599
  %19 = icmp eq i32 %18, 0, !dbg !1834
  br i1 %19, label %20, label %41, !dbg !1835

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1836
  %22 = load %struct.list*, %struct.list** %21, align 8, !dbg !1836, !tbaa !661
  %23 = getelementptr inbounds %struct.list, %struct.list* %22, i64 0, i32 5, !dbg !1836
  %24 = load i64, i64* %23, align 8, !dbg !1836, !tbaa !1069
  %25 = icmp eq i64 %24, 0, !dbg !1835
  %26 = and i32 %3, 2097152, !dbg !1837
  %27 = icmp eq i32 %26, 0, !dbg !1837
  %28 = and i1 %27, %25, !dbg !1839
  br i1 %28, label %29, label %41, !dbg !1839

; <label>:29:                                     ; preds = %20
  %30 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1841
  %31 = load i32, i32* %30, align 8, !dbg !1841, !tbaa !1026
  switch i32 %31, label %41 [
    i32 0, label %36
    i32 9, label %32
  ], !dbg !1842

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1843
  %34 = load i32, i32* %33, align 4, !dbg !1843, !tbaa !1029
  %35 = icmp eq i32 %34, 0, !dbg !1844
  br i1 %35, label %36, label %41, !dbg !1845

; <label>:36:                                     ; preds = %32, %29
  %37 = or i32 %3, 2097152, !dbg !1846
  store i32 %37, i32* %2, align 8, !dbg !1846, !tbaa !922
  %38 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !1847, !tbaa !1035
  %39 = bitcast %struct.client* %0 to i8*, !dbg !1848
  %40 = tail call %struct.list* @listAddNodeHead(%struct.list* %38, i8* %39) #10, !dbg !1849
  br label %41, !dbg !1850

; <label>:41:                                     ; preds = %1, %20, %29, %32, %36, %16
  %42 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1851
  %43 = load %struct.list*, %struct.list** %42, align 8, !dbg !1851, !tbaa !661
  %44 = tail call %struct.list* @listAddNodeTail(%struct.list* %43, i8* null) #10, !dbg !1852
  %45 = load %struct.list*, %struct.list** %42, align 8, !dbg !1853, !tbaa !661
  %46 = getelementptr inbounds %struct.list, %struct.list* %45, i64 0, i32 1, !dbg !1853
  %47 = bitcast %struct.listNode** %46 to i8**, !dbg !1853
  %48 = load i8*, i8** %47, align 8, !dbg !1853, !tbaa !450
  br label %49, !dbg !1854

; <label>:49:                                     ; preds = %12, %6, %41
  %50 = phi i8* [ %48, %41 ], [ null, %6 ], [ null, %12 ], !dbg !1855
  ret i8* %50, !dbg !1856
}

; Function Attrs: noredzone nounwind
define dso_local void @setDeferredMultiBulkLength(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !1857 {
  %4 = alloca [128 x i8], align 16
  %5 = bitcast i8* %1 to %struct.listNode*, !dbg !1877
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !1879
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #6, !dbg !1879
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i64 %2) #10, !dbg !1881
  %8 = sext i32 %7 to i64, !dbg !1881
  %9 = icmp eq i8* %1, null, !dbg !1883
  br i1 %9, label %59, label %10, !dbg !1885

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !1886
  %12 = bitcast i8* %11 to i8**, !dbg !1886
  %13 = load i8*, i8** %12, align 8, !dbg !1886, !tbaa !1150
  %14 = icmp eq i8* %13, null, !dbg !1886
  br i1 %14, label %16, label %15, !dbg !1886

; <label>:15:                                     ; preds = %10
  call void @_serverAssert(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 444) #10, !dbg !1886
  call void @_exit(i32 1) #11, !dbg !1886
  unreachable, !dbg !1886

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !1887
  %18 = bitcast i8* %17 to %struct.listNode**, !dbg !1887
  %19 = load %struct.listNode*, %struct.listNode** %18, align 8, !dbg !1887, !tbaa !1888
  %20 = icmp eq %struct.listNode* %19, null, !dbg !1889
  br i1 %20, label %44, label %21, !dbg !1890

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.listNode, %struct.listNode* %19, i64 0, i32 2, !dbg !1891
  %23 = bitcast i8** %22 to %struct.clientReplyBlock**, !dbg !1891
  %24 = load %struct.clientReplyBlock*, %struct.clientReplyBlock** %23, align 8, !dbg !1891, !tbaa !1150
  %25 = icmp eq %struct.clientReplyBlock* %24, null, !dbg !1893
  br i1 %25, label %44, label %26, !dbg !1894

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %24, i64 0, i32 0, !dbg !1895
  %28 = load i64, i64* %27, align 8, !dbg !1895, !tbaa !409
  %29 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %24, i64 0, i32 1, !dbg !1896
  %30 = load i64, i64* %29, align 8, !dbg !1896, !tbaa !409
  %31 = sub i64 %28, %30, !dbg !1897
  %32 = icmp uge i64 %31, %8, !dbg !1898
  %33 = icmp ult i64 %30, 65536, !dbg !1899
  %34 = and i1 %33, %32, !dbg !1900
  br i1 %34, label %35, label %44, !dbg !1900

; <label>:35:                                     ; preds = %26
  %36 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %24, i64 0, i32 2, i64 0, !dbg !1901
  %37 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %24, i64 0, i32 2, i64 %8, !dbg !1903
  %38 = call i8* @memmove(i8* nonnull %37, i8* nonnull %36, i64 %30) #10, !dbg !1904
  %39 = call i8* @memcpy(i8* nonnull %36, i8* nonnull %6, i64 %8) #10, !dbg !1905
  %40 = load i64, i64* %29, align 8, !dbg !1906, !tbaa !409
  %41 = add i64 %40, %8, !dbg !1906
  store i64 %41, i64* %29, align 8, !dbg !1906, !tbaa !409
  %42 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !1907
  %43 = load %struct.list*, %struct.list** %42, align 8, !dbg !1907, !tbaa !661
  call void @listDelNode(%struct.list* %43, %struct.listNode* nonnull %5) #10, !dbg !1908
  br label %58, !dbg !1909

; <label>:44:                                     ; preds = %26, %21, %16
  %45 = add nsw i64 %8, 16, !dbg !1910
  %46 = call i8* @zmalloc(i64 %45) #10, !dbg !1911
  %47 = call i64 @zmalloc_usable(i8* %46) #10, !dbg !1913
  %48 = add i64 %47, -16, !dbg !1914
  %49 = bitcast i8* %46 to i64*, !dbg !1915
  store i64 %48, i64* %49, align 8, !dbg !1916, !tbaa !409
  %50 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !1917
  %51 = bitcast i8* %50 to i64*, !dbg !1917
  store i64 %8, i64* %51, align 8, !dbg !1918, !tbaa !409
  %52 = getelementptr inbounds i8, i8* %46, i64 16, !dbg !1919
  %53 = call i8* @memcpy(i8* nonnull %52, i8* nonnull %6, i64 %8) #10, !dbg !1920
  store i8* %46, i8** %12, align 8, !dbg !1921, !tbaa !1150
  %54 = load i64, i64* %49, align 8, !dbg !1922, !tbaa !409
  %55 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !1923
  %56 = load i64, i64* %55, align 8, !dbg !1924, !tbaa !664
  %57 = add i64 %56, %54, !dbg !1924
  store i64 %57, i64* %55, align 8, !dbg !1924, !tbaa !664
  br label %58

; <label>:58:                                     ; preds = %44, %35
  call void @asyncCloseClientOnOutputBufferLimitReached(%struct.client* nonnull %0) #12, !dbg !1925
  br label %59, !dbg !1926

; <label>:59:                                     ; preds = %3, %58
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #6, !dbg !1926
  ret void, !dbg !1926
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
define dso_local void @addReplyDouble(%struct.client*, double) local_unnamed_addr #0 !dbg !1927 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1939
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #6, !dbg !1939
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !1939
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %6) #6, !dbg !1939
  %7 = tail call i32 @__fpclassifyd(double %1) #10, !dbg !1942
  %8 = icmp eq i32 %7, 1, !dbg !1942
  br i1 %8, label %9, label %13, !dbg !1944

; <label>:9:                                      ; preds = %2
  %10 = fcmp ogt double %1, 0.000000e+00, !dbg !1945
  %11 = select i1 %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), !dbg !1947
  %12 = tail call i64 @strlen(i8* nonnull %11) #10, !dbg !1955
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %11, i64 %12) #10, !dbg !1958
  br label %17, !dbg !1959

; <label>:13:                                     ; preds = %2
  %14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %5, i64 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), double %1) #10, !dbg !1960
  %15 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %6, i64 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 %14, i8* nonnull %5) #10, !dbg !1963
  %16 = sext i32 %15 to i64, !dbg !1965
  call void @addReplyString(%struct.client* %0, i8* nonnull %6, i64 %16) #12, !dbg !1966
  br label %17

; <label>:17:                                     ; preds = %13, %9
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %6) #6, !dbg !1967
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #6, !dbg !1967
  ret void, !dbg !1967
}

; Function Attrs: noredzone
declare dso_local i32 @__fpclassifyd(double) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyBulkCString(%struct.client*, i8*) local_unnamed_addr #0 !dbg !1949 {
  %3 = icmp eq i8* %1, null, !dbg !1970
  br i1 %3, label %4, label %6, !dbg !1971

; <label>:4:                                      ; preds = %2
  %5 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !1972, !tbaa !1974
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %5) #12, !dbg !1976
  br label %8, !dbg !1977

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @strlen(i8* nonnull %1) #10, !dbg !1978
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %1, i64 %7) #12, !dbg !1979
  br label %8

; <label>:8:                                      ; preds = %6, %4
  ret void, !dbg !1980
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyHumanLongDouble(%struct.client*, x86_fp80) local_unnamed_addr #0 !dbg !1981 {
  %3 = tail call %struct.redisObject* @createStringObjectFromLongDouble(x86_fp80 %1, i32 1) #10, !dbg !1991
  tail call void @addReplyBulkLen(%struct.client* %0, %struct.redisObject* %3) #10, !dbg !2000
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %3) #10, !dbg !2001
  %4 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 0), align 8, !dbg !2002, !tbaa !2003
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %4) #10, !dbg !2004
  tail call void @decrRefCount(%struct.redisObject* %3) #10, !dbg !2005
  ret void, !dbg !2006
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObjectFromLongDouble(x86_fp80, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyBulk(%struct.client*, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !1994 {
  tail call void @addReplyBulkLen(%struct.client* %0, %struct.redisObject* %1) #12, !dbg !2009
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %1) #12, !dbg !2010
  %3 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 0), align 8, !dbg !2011, !tbaa !2003
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %3) #12, !dbg !2012
  ret void, !dbg !2013
}

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplyLongLongWithPrefix(%struct.client*, i64, i8 signext) local_unnamed_addr #0 !dbg !2014 {
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !2026
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #6, !dbg !2026
  %6 = icmp eq i8 %2, 42, !dbg !2028
  %7 = icmp ult i64 %1, 32, !dbg !2030
  %8 = and i1 %7, %6, !dbg !2030
  br i1 %8, label %9, label %12, !dbg !2030

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 %1, !dbg !2031
  %11 = load %struct.redisObject*, %struct.redisObject** %10, align 8, !dbg !2031, !tbaa !475
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %11) #12, !dbg !2033
  br label %29, !dbg !2034

; <label>:12:                                     ; preds = %3
  %13 = icmp eq i8 %2, 36, !dbg !2035
  %14 = and i1 %7, %13, !dbg !2037
  br i1 %14, label %15, label %18, !dbg !2037

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 49, i64 %1, !dbg !2038
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !2038, !tbaa !475
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %17) #12, !dbg !2040
  br label %29, !dbg !2041

; <label>:18:                                     ; preds = %12
  store i8 %2, i8* %5, align 16, !dbg !2042, !tbaa !654
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 1, !dbg !2043
  %20 = call i32 @ll2string(i8* nonnull %19, i64 127, i64 %1) #10, !dbg !2044
  %21 = add nsw i32 %20, 1, !dbg !2046
  %22 = sext i32 %21 to i64, !dbg !2047
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %22, !dbg !2047
  store i8 13, i8* %23, align 1, !dbg !2048, !tbaa !654
  %24 = add nsw i32 %20, 2, !dbg !2049
  %25 = sext i32 %24 to i64, !dbg !2050
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %25, !dbg !2050
  store i8 10, i8* %26, align 1, !dbg !2051, !tbaa !654
  %27 = add nsw i32 %20, 3, !dbg !2052
  %28 = sext i32 %27 to i64, !dbg !2053
  call void @addReplyString(%struct.client* %0, i8* nonnull %5, i64 %28) #12, !dbg !2054
  br label %29, !dbg !2055

; <label>:29:                                     ; preds = %18, %15, %9
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #6, !dbg !2055
  ret void, !dbg !2055
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #0 !dbg !2056 {
  %3 = alloca [128 x i8], align 16
  switch i64 %1, label %8 [
    i64 0, label %4
    i64 1, label %6
  ], !dbg !2068

; <label>:4:                                      ; preds = %2
  %5 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !2069, !tbaa !2070
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %5) #12, !dbg !2071
  br label %20, !dbg !2071

; <label>:6:                                      ; preds = %2
  %7 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !2072, !tbaa !2073
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %7) #12, !dbg !2074
  br label %20, !dbg !2074

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !2078
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #6, !dbg !2078
  store i8 58, i8* %9, align 16, !dbg !2079, !tbaa !654
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 1, !dbg !2080
  %11 = call i32 @ll2string(i8* nonnull %10, i64 127, i64 %1) #10, !dbg !2081
  %12 = add nsw i32 %11, 1, !dbg !2083
  %13 = sext i32 %12 to i64, !dbg !2084
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %13, !dbg !2084
  store i8 13, i8* %14, align 1, !dbg !2085, !tbaa !654
  %15 = add nsw i32 %11, 2, !dbg !2086
  %16 = sext i32 %15 to i64, !dbg !2087
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %16, !dbg !2087
  store i8 10, i8* %17, align 1, !dbg !2088, !tbaa !654
  %18 = add nsw i32 %11, 3, !dbg !2089
  %19 = sext i32 %18 to i64, !dbg !2090
  call void @addReplyString(%struct.client* %0, i8* nonnull %9, i64 %19) #10, !dbg !2091
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #6, !dbg !2092
  br label %20

; <label>:20:                                     ; preds = %6, %8, %4
  ret void, !dbg !2093
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #0 !dbg !2094 {
  %3 = alloca [128 x i8], align 16
  %4 = icmp slt i64 %1, 32, !dbg !2105
  br i1 %4, label %5, label %8, !dbg !2106

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 48, i64 %1, !dbg !2107
  %7 = load %struct.redisObject*, %struct.redisObject** %6, align 8, !dbg !2107, !tbaa !475
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %7) #12, !dbg !2108
  br label %20, !dbg !2108

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !2112
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #6, !dbg !2112
  store i8 42, i8* %9, align 16, !dbg !2113, !tbaa !654
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 1, !dbg !2114
  %11 = call i32 @ll2string(i8* nonnull %10, i64 127, i64 %1) #10, !dbg !2115
  %12 = add nsw i32 %11, 1, !dbg !2117
  %13 = sext i32 %12 to i64, !dbg !2118
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %13, !dbg !2118
  store i8 13, i8* %14, align 1, !dbg !2119, !tbaa !654
  %15 = add nsw i32 %11, 2, !dbg !2120
  %16 = sext i32 %15 to i64, !dbg !2121
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %16, !dbg !2121
  store i8 10, i8* %17, align 1, !dbg !2122, !tbaa !654
  %18 = add nsw i32 %11, 3, !dbg !2123
  %19 = sext i32 %18 to i64, !dbg !2124
  call void @addReplyString(%struct.client* %0, i8* nonnull %9, i64 %19) #10, !dbg !2125
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #6, !dbg !2126
  br label %20

; <label>:20:                                     ; preds = %8, %5
  ret void, !dbg !2127
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyBulkLen(%struct.client*, %struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !2128 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 0, !dbg !2141
  %5 = load i32, i32* %4, align 8, !dbg !2141
  %6 = lshr i32 %5, 4, !dbg !2141
  %7 = trunc i32 %6 to i4, !dbg !2141
  switch i4 %7, label %35 [
    i4 0, label %8
    i4 -8, label %8
  ], !dbg !2141

; <label>:8:                                      ; preds = %2, %2
  %9 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2142
  %10 = load i8*, i8** %9, align 8, !dbg !2142, !tbaa !376
  %11 = getelementptr inbounds i8, i8* %10, i64 -1, !dbg !2146
  %12 = load i8, i8* %11, align 1, !dbg !2146, !tbaa !654
  %13 = trunc i8 %12 to i3, !dbg !2148
  switch i3 %13, label %55 [
    i3 0, label %14
    i3 1, label %17
    i3 2, label %21
    i3 3, label %26
    i3 -4, label %31
  ], !dbg !2148

; <label>:14:                                     ; preds = %8
  %15 = lshr i8 %12, 3, !dbg !2149
  %16 = zext i8 %15 to i64, !dbg !2149
  br label %55, !dbg !2150

; <label>:17:                                     ; preds = %8
  %18 = getelementptr inbounds i8, i8* %10, i64 -3, !dbg !2151
  %19 = load i8, i8* %18, align 1, !dbg !2152, !tbaa !654
  %20 = zext i8 %19 to i64, !dbg !2151
  br label %52, !dbg !2153

; <label>:21:                                     ; preds = %8
  %22 = getelementptr inbounds i8, i8* %10, i64 -5, !dbg !2154
  %23 = bitcast i8* %22 to i16*, !dbg !2155
  %24 = load i16, i16* %23, align 1, !dbg !2155, !tbaa !855
  %25 = zext i16 %24 to i64, !dbg !2154
  br label %52, !dbg !2156

; <label>:26:                                     ; preds = %8
  %27 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !2157
  %28 = bitcast i8* %27 to i32*, !dbg !2158
  %29 = load i32, i32* %28, align 1, !dbg !2158, !tbaa !548
  %30 = zext i32 %29 to i64, !dbg !2157
  br label %52, !dbg !2159

; <label>:31:                                     ; preds = %8
  %32 = getelementptr inbounds i8, i8* %10, i64 -17, !dbg !2160
  %33 = bitcast i8* %32 to i64*, !dbg !2161
  %34 = load i64, i64* %33, align 1, !dbg !2161, !tbaa !409
  br label %52, !dbg !2162

; <label>:35:                                     ; preds = %2
  %36 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %1, i64 0, i32 2, !dbg !2163
  %37 = bitcast i8** %36 to i64*, !dbg !2163
  %38 = load i64, i64* %37, align 8, !dbg !2163, !tbaa !376
  %39 = icmp slt i64 %38, 0, !dbg !2166
  %40 = sub nsw i64 0, %38, !dbg !2168
  %41 = select i1 %39, i64 2, i64 1, !dbg !2170
  %42 = select i1 %39, i64 %40, i64 %38, !dbg !2170
  %43 = add nuw i64 %42, 9, !dbg !2171
  %44 = icmp ugt i64 %43, 18, !dbg !2171
  br i1 %44, label %45, label %55, !dbg !2172

; <label>:45:                                     ; preds = %35, %45
  %46 = phi i64 [ %48, %45 ], [ %42, %35 ]
  %47 = phi i64 [ %49, %45 ], [ %41, %35 ]
  %48 = sdiv i64 %46, 10, !dbg !2173
  %49 = add i64 %47, 1, !dbg !2174
  %50 = add nsw i64 %48, 9, !dbg !2171
  %51 = icmp ugt i64 %50, 18, !dbg !2171
  br i1 %51, label %45, label %52, !dbg !2172, !llvm.loop !2176

; <label>:52:                                     ; preds = %45, %31, %26, %21, %17
  %53 = phi i64 [ %34, %31 ], [ %30, %26 ], [ %25, %21 ], [ %20, %17 ], [ %49, %45 ], !dbg !2178
  %54 = icmp ult i64 %53, 32, !dbg !2179
  br i1 %54, label %55, label %59, !dbg !2180

; <label>:55:                                     ; preds = %35, %8, %14, %52
  %56 = phi i64 [ %53, %52 ], [ 0, %8 ], [ %16, %14 ], [ %41, %35 ]
  %57 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 49, i64 %56, !dbg !2181
  %58 = load %struct.redisObject*, %struct.redisObject** %57, align 8, !dbg !2181, !tbaa !475
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %58) #12, !dbg !2182
  br label %71, !dbg !2182

; <label>:59:                                     ; preds = %52
  %60 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !2186
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %60) #6, !dbg !2186
  store i8 36, i8* %60, align 16, !dbg !2187, !tbaa !654
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 1, !dbg !2188
  %62 = call i32 @ll2string(i8* nonnull %61, i64 127, i64 %53) #10, !dbg !2189
  %63 = add nsw i32 %62, 1, !dbg !2191
  %64 = sext i32 %63 to i64, !dbg !2192
  %65 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %64, !dbg !2192
  store i8 13, i8* %65, align 1, !dbg !2193, !tbaa !654
  %66 = add nsw i32 %62, 2, !dbg !2194
  %67 = sext i32 %66 to i64, !dbg !2195
  %68 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %67, !dbg !2195
  store i8 10, i8* %68, align 1, !dbg !2196, !tbaa !654
  %69 = add nsw i32 %62, 3, !dbg !2197
  %70 = sext i32 %69 to i64, !dbg !2198
  call void @addReplyString(%struct.client* %0, i8* nonnull %60, i64 %70) #10, !dbg !2199
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %60) #6, !dbg !2200
  br label %71

; <label>:71:                                     ; preds = %59, %55
  ret void, !dbg !2201
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #0 !dbg !2202 {
  %4 = alloca [128 x i8], align 16
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !2217
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %5) #6, !dbg !2217
  %6 = icmp ult i64 %2, 32, !dbg !2218
  br i1 %6, label %7, label %10, !dbg !2219

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 49, i64 %2, !dbg !2220
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !2220, !tbaa !475
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %9) #10, !dbg !2221
  br label %21, !dbg !2222

; <label>:10:                                     ; preds = %3
  store i8 36, i8* %5, align 16, !dbg !2223, !tbaa !654
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 1, !dbg !2224
  %12 = call i32 @ll2string(i8* nonnull %11, i64 127, i64 %2) #10, !dbg !2225
  %13 = add nsw i32 %12, 1, !dbg !2227
  %14 = sext i32 %13 to i64, !dbg !2228
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %14, !dbg !2228
  store i8 13, i8* %15, align 1, !dbg !2229, !tbaa !654
  %16 = add nsw i32 %12, 2, !dbg !2230
  %17 = sext i32 %16 to i64, !dbg !2231
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %17, !dbg !2231
  store i8 10, i8* %18, align 1, !dbg !2232, !tbaa !654
  %19 = add nsw i32 %12, 3, !dbg !2233
  %20 = sext i32 %19 to i64, !dbg !2234
  call void @addReplyString(%struct.client* %0, i8* nonnull %5, i64 %20) #10, !dbg !2235
  br label %21, !dbg !2236

; <label>:21:                                     ; preds = %7, %10
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %5) #6, !dbg !2236
  call void @addReplyString(%struct.client* %0, i8* %1, i64 %2) #12, !dbg !2237
  %22 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 0), align 8, !dbg !2238, !tbaa !2003
  call void @addReply(%struct.client* %0, %struct.redisObject* %22) #12, !dbg !2239
  ret void, !dbg !2240
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyBulkSds(%struct.client*, i8*) local_unnamed_addr #0 !dbg !2241 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !2251
  %5 = load i8, i8* %4, align 1, !dbg !2251, !tbaa !654
  %6 = trunc i8 %5 to i3, !dbg !2253
  switch i3 %6, label %28 [
    i3 0, label %7
    i3 1, label %10
    i3 2, label %14
    i3 3, label %19
    i3 -4, label %24
  ], !dbg !2253

; <label>:7:                                      ; preds = %2
  %8 = lshr i8 %5, 3, !dbg !2254
  %9 = zext i8 %8 to i64, !dbg !2254
  br label %28, !dbg !2255

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !2256
  %12 = load i8, i8* %11, align 1, !dbg !2257, !tbaa !654
  %13 = zext i8 %12 to i64, !dbg !2256
  br label %31, !dbg !2258

; <label>:14:                                     ; preds = %2
  %15 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !2259
  %16 = bitcast i8* %15 to i16*, !dbg !2260
  %17 = load i16, i16* %16, align 1, !dbg !2260, !tbaa !855
  %18 = zext i16 %17 to i64, !dbg !2259
  br label %31, !dbg !2261

; <label>:19:                                     ; preds = %2
  %20 = getelementptr inbounds i8, i8* %1, i64 -9, !dbg !2262
  %21 = bitcast i8* %20 to i32*, !dbg !2263
  %22 = load i32, i32* %21, align 1, !dbg !2263, !tbaa !548
  %23 = zext i32 %22 to i64, !dbg !2262
  br label %31, !dbg !2264

; <label>:24:                                     ; preds = %2
  %25 = getelementptr inbounds i8, i8* %1, i64 -17, !dbg !2265
  %26 = bitcast i8* %25 to i64*, !dbg !2266
  %27 = load i64, i64* %26, align 1, !dbg !2266, !tbaa !409
  br label %31, !dbg !2267

; <label>:28:                                     ; preds = %7, %2
  %29 = phi i64 [ 0, %2 ], [ %9, %7 ]
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !2271
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %30) #6, !dbg !2271
  br label %35, !dbg !2272

; <label>:31:                                     ; preds = %10, %14, %19, %24
  %32 = phi i64 [ %27, %24 ], [ %23, %19 ], [ %18, %14 ], [ %13, %10 ], !dbg !2273
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !2271
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %33) #6, !dbg !2271
  %34 = icmp ult i64 %32, 32, !dbg !2274
  br i1 %34, label %35, label %40, !dbg !2272

; <label>:35:                                     ; preds = %28, %31
  %36 = phi i8* [ %30, %28 ], [ %33, %31 ]
  %37 = phi i64 [ %29, %28 ], [ %32, %31 ]
  %38 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 49, i64 %37, !dbg !2275
  %39 = load %struct.redisObject*, %struct.redisObject** %38, align 8, !dbg !2275, !tbaa !475
  tail call void @addReply(%struct.client* %0, %struct.redisObject* %39) #10, !dbg !2276
  br label %51, !dbg !2277

; <label>:40:                                     ; preds = %31
  store i8 36, i8* %33, align 16, !dbg !2278, !tbaa !654
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 1, !dbg !2279
  %42 = call i32 @ll2string(i8* nonnull %41, i64 127, i64 %32) #10, !dbg !2280
  %43 = add nsw i32 %42, 1, !dbg !2282
  %44 = sext i32 %43 to i64, !dbg !2283
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %44, !dbg !2283
  store i8 13, i8* %45, align 1, !dbg !2284, !tbaa !654
  %46 = add nsw i32 %42, 2, !dbg !2285
  %47 = sext i32 %46 to i64, !dbg !2286
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 %47, !dbg !2286
  store i8 10, i8* %48, align 1, !dbg !2287, !tbaa !654
  %49 = add nsw i32 %42, 3, !dbg !2288
  %50 = sext i32 %49 to i64, !dbg !2289
  call void @addReplyString(%struct.client* %0, i8* nonnull %33, i64 %50) #10, !dbg !2290
  br label %51, !dbg !2291

; <label>:51:                                     ; preds = %35, %40
  %52 = phi i8* [ %36, %35 ], [ %33, %40 ]
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %52) #6, !dbg !2291
  call void @addReplySds(%struct.client* %0, i8* nonnull %1) #12, !dbg !2292
  %53 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 0), align 8, !dbg !2293, !tbaa !2003
  call void @addReply(%struct.client* %0, %struct.redisObject* %53) #12, !dbg !2294
  ret void, !dbg !2295
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyBulkLongLong(%struct.client*, i64) local_unnamed_addr #0 !dbg !2296 {
  %3 = alloca [64 x i8], align 16
  %4 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0, !dbg !2307
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %4) #6, !dbg !2307
  %5 = call i32 @ll2string(i8* nonnull %4, i64 64, i64 %1) #10, !dbg !2309
  %6 = sext i32 %5 to i64, !dbg !2311
  call void @addReplyBulkCBuffer(%struct.client* %0, i8* nonnull %4, i64 %6) #12, !dbg !2312
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %4) #6, !dbg !2313
  ret void, !dbg !2313
}

; Function Attrs: noredzone nounwind
define dso_local void @addReplyHelp(%struct.client*, i8** nocapture readonly) local_unnamed_addr #0 !dbg !2314 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2326
  %4 = load %struct.redisObject**, %struct.redisObject*** %3, align 8, !dbg !2326, !tbaa !622
  %5 = load %struct.redisObject*, %struct.redisObject** %4, align 8, !dbg !2327, !tbaa !475
  %6 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %5, i64 0, i32 2, !dbg !2328
  %7 = load i8*, i8** %6, align 8, !dbg !2328, !tbaa !376
  %8 = tail call i8* @sdsnew(i8* %7) #10, !dbg !2329
  %9 = tail call i8* @addDeferredMultiBulkLength(%struct.client* %0) #12, !dbg !2331
  tail call void @sdstoupper(i8* %8) #10, !dbg !2334
  tail call void (%struct.client*, i8*, ...) @addReplyStatusFormat(%struct.client* %0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0), i8* %8) #12, !dbg !2335
  tail call void @sdsfree(i8* %8) #10, !dbg !2336
  %10 = load i8*, i8** %1, align 8, !dbg !2337, !tbaa !475
  %11 = icmp eq i8* %10, null, !dbg !2338
  br i1 %11, label %22, label %12, !dbg !2338

; <label>:12:                                     ; preds = %2, %12
  %13 = phi i64 [ %19, %12 ], [ 1, %2 ]
  %14 = phi i8* [ %17, %12 ], [ %10, %2 ]
  %15 = tail call i64 @strlen(i8* nonnull %14) #10, !dbg !2342
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i64 1) #10, !dbg !2347
  tail call void @addReplyString(%struct.client* %0, i8* nonnull %14, i64 %15) #10, !dbg !2348
  tail call void @addReplyString(%struct.client* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 2) #10, !dbg !2349
  %16 = getelementptr inbounds i8*, i8** %1, i64 %13, !dbg !2337
  %17 = load i8*, i8** %16, align 8, !dbg !2337, !tbaa !475
  %18 = icmp eq i8* %17, null, !dbg !2338
  %19 = add nuw i64 %13, 1, !dbg !2350
  br i1 %18, label %20, label %12, !dbg !2338, !llvm.loop !2351

; <label>:20:                                     ; preds = %12
  %21 = and i64 %19, 4294967295, !dbg !2353
  br label %22, !dbg !2353

; <label>:22:                                     ; preds = %20, %2
  %23 = phi i64 [ 1, %2 ], [ %21, %20 ]
  tail call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %9, i64 %23) #12, !dbg !2354
  ret void, !dbg !2355
}

; Function Attrs: noredzone
declare dso_local i8* @sdsnew(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdstoupper(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @addReplySubcommandSyntaxError(%struct.client*) local_unnamed_addr #0 !dbg !2356 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2361
  %3 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2361, !tbaa !622
  %4 = load %struct.redisObject*, %struct.redisObject** %3, align 8, !dbg !2362, !tbaa !475
  %5 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %4, i64 0, i32 2, !dbg !2363
  %6 = load i8*, i8** %5, align 8, !dbg !2363, !tbaa !376
  %7 = tail call i8* @sdsnew(i8* %6) #10, !dbg !2364
  tail call void @sdstoupper(i8* %7) #10, !dbg !2366
  %8 = load %struct.redisObject**, %struct.redisObject*** %2, align 8, !dbg !2367, !tbaa !622
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 1, !dbg !2368
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !2368, !tbaa !475
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !2369
  %12 = load i8*, i8** %11, align 8, !dbg !2369, !tbaa !376
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* %0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.17, i64 0, i64 0), i8* %12, i8* %7) #12, !dbg !2370
  tail call void @sdsfree(i8* %7) #10, !dbg !2371
  ret void, !dbg !2372
}

; Function Attrs: noredzone nounwind
define dso_local void @AddReplyFromClient(%struct.client*, %struct.client*) local_unnamed_addr #0 !dbg !2373 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2384
  %4 = load i32, i32* %3, align 8, !dbg !2384, !tbaa !922
  %5 = and i32 %4, 134217984, !dbg !2385
  %6 = icmp eq i32 %5, 0, !dbg !2385
  br i1 %6, label %7, label %42, !dbg !2386

; <label>:7:                                      ; preds = %2
  %8 = and i32 %4, 20971520, !dbg !2387
  %9 = icmp ne i32 %8, 0, !dbg !2387
  %10 = and i32 %4, 8194, !dbg !2388
  %11 = icmp eq i32 %10, 2, !dbg !2388
  %12 = or i1 %9, %11, !dbg !2389
  br i1 %12, label %61, label %13, !dbg !2389

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !2390
  %15 = load i32, i32* %14, align 8, !dbg !2390, !tbaa !593
  %16 = icmp slt i32 %15, 1, !dbg !2391
  br i1 %16, label %61, label %17, !dbg !2392

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !2395
  %19 = load i32, i32* %18, align 8, !dbg !2395, !tbaa !599
  %20 = icmp eq i32 %19, 0, !dbg !2396
  br i1 %20, label %21, label %42, !dbg !2397

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !2398
  %23 = load %struct.list*, %struct.list** %22, align 8, !dbg !2398, !tbaa !661
  %24 = getelementptr inbounds %struct.list, %struct.list* %23, i64 0, i32 5, !dbg !2398
  %25 = load i64, i64* %24, align 8, !dbg !2398, !tbaa !1069
  %26 = icmp eq i64 %25, 0, !dbg !2397
  %27 = and i32 %4, 2097152, !dbg !2399
  %28 = icmp eq i32 %27, 0, !dbg !2399
  %29 = and i1 %28, %26, !dbg !2401
  br i1 %29, label %30, label %42, !dbg !2401

; <label>:30:                                     ; preds = %21
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !2403
  %32 = load i32, i32* %31, align 8, !dbg !2403, !tbaa !1026
  switch i32 %32, label %42 [
    i32 0, label %37
    i32 9, label %33
  ], !dbg !2404

; <label>:33:                                     ; preds = %30
  %34 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !2405
  %35 = load i32, i32* %34, align 4, !dbg !2405, !tbaa !1029
  %36 = icmp eq i32 %35, 0, !dbg !2406
  br i1 %36, label %37, label %42, !dbg !2407

; <label>:37:                                     ; preds = %33, %30
  %38 = or i32 %4, 2097152, !dbg !2408
  store i32 %38, i32* %3, align 8, !dbg !2408, !tbaa !922
  %39 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !2409, !tbaa !1035
  %40 = bitcast %struct.client* %0 to i8*, !dbg !2410
  %41 = tail call %struct.list* @listAddNodeHead(%struct.list* %39, i8* %40) #10, !dbg !2411
  br label %42, !dbg !2412

; <label>:42:                                     ; preds = %2, %21, %30, %33, %37, %17
  %43 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 48, i64 0, !dbg !2413
  %44 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 47, !dbg !2414
  %45 = load i32, i32* %44, align 8, !dbg !2414, !tbaa !599
  %46 = sext i32 %45 to i64, !dbg !2415
  tail call void @addReplyString(%struct.client* nonnull %0, i8* nonnull %43, i64 %46) #12, !dbg !2416
  %47 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 15, !dbg !2417
  %48 = load %struct.list*, %struct.list** %47, align 8, !dbg !2417, !tbaa !661
  %49 = getelementptr inbounds %struct.list, %struct.list* %48, i64 0, i32 5, !dbg !2417
  %50 = load i64, i64* %49, align 8, !dbg !2417, !tbaa !1069
  %51 = icmp eq i64 %50, 0, !dbg !2417
  br i1 %51, label %55, label %52, !dbg !2419

; <label>:52:                                     ; preds = %42
  %53 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !2420
  %54 = load %struct.list*, %struct.list** %53, align 8, !dbg !2420, !tbaa !661
  tail call void @listJoin(%struct.list* %54, %struct.list* %48) #10, !dbg !2421
  br label %55, !dbg !2421

; <label>:55:                                     ; preds = %42, %52
  %56 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 16, !dbg !2422
  %57 = load i64, i64* %56, align 8, !dbg !2422, !tbaa !664
  %58 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !2423
  %59 = load i64, i64* %58, align 8, !dbg !2424, !tbaa !664
  %60 = add i64 %59, %57, !dbg !2424
  store i64 %60, i64* %58, align 8, !dbg !2424, !tbaa !664
  store i64 0, i64* %56, align 8, !dbg !2425, !tbaa !664
  store i32 0, i32* %44, align 8, !dbg !2426, !tbaa !599
  br label %61, !dbg !2427

; <label>:61:                                     ; preds = %13, %7, %55
  ret void, !dbg !2427
}

; Function Attrs: noredzone
declare dso_local void @listJoin(%struct.list*, %struct.list*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @copyClientOutputBuffer(%struct.client*, %struct.client*) local_unnamed_addr #0 !dbg !2428 {
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !2434
  %4 = load %struct.list*, %struct.list** %3, align 8, !dbg !2434, !tbaa !661
  tail call void @listRelease(%struct.list* %4) #10, !dbg !2435
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 17, !dbg !2436
  store i64 0, i64* %5, align 8, !dbg !2437, !tbaa !633
  %6 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 15, !dbg !2438
  %7 = load %struct.list*, %struct.list** %6, align 8, !dbg !2438, !tbaa !661
  %8 = tail call %struct.list* @listDup(%struct.list* %7) #10, !dbg !2439
  store %struct.list* %8, %struct.list** %3, align 8, !dbg !2440, !tbaa !661
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 48, i64 0, !dbg !2441
  %10 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 48, i64 0, !dbg !2442
  %11 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 47, !dbg !2443
  %12 = load i32, i32* %11, align 8, !dbg !2443, !tbaa !599
  %13 = sext i32 %12 to i64, !dbg !2444
  %14 = tail call i8* @memcpy(i8* nonnull %9, i8* nonnull %10, i64 %13) #10, !dbg !2445
  %15 = load i32, i32* %11, align 8, !dbg !2446, !tbaa !599
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !2447
  store i32 %15, i32* %16, align 8, !dbg !2448, !tbaa !599
  %17 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 16, !dbg !2449
  %18 = load i64, i64* %17, align 8, !dbg !2449, !tbaa !664
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !2450
  store i64 %18, i64* %19, align 8, !dbg !2451, !tbaa !664
  ret void, !dbg !2452
}

; Function Attrs: noredzone
declare dso_local void @listRelease(%struct.list*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.list* @listDup(%struct.list*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @acceptTcpHandler(%struct.aeEventLoop* nocapture readnone, i32, i8* nocapture readnone, i32) local_unnamed_addr #0 !dbg !2453 {
  %5 = alloca i32, align 4
  %6 = alloca [46 x i8], align 16
  %7 = bitcast i32* %5 to i8*, !dbg !2467
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #6, !dbg !2467
  %8 = getelementptr inbounds [46 x i8], [46 x i8]* %6, i64 0, i64 0, !dbg !2469
  call void @llvm.lifetime.start.p0i8(i64 46, i8* nonnull %8) #6, !dbg !2469
  br label %9, !dbg !2471

; <label>:9:                                      ; preds = %4, %18
  %10 = phi i32 [ 999, %4 ], [ %20, %18 ]
  %11 = call i32 @anetTcpAccept(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 47, i64 0), i32 %1, i8* nonnull %8, i64 46, i32* nonnull %5) #10, !dbg !2473
  %12 = icmp eq i32 %11, -1, !dbg !2476
  br i1 %12, label %13, label %18, !dbg !2478

; <label>:13:                                     ; preds = %9
  %14 = call i32* @__errno() #10, !dbg !2479
  %15 = load i32, i32* %14, align 4, !dbg !2479, !tbaa !548
  %16 = icmp eq i32 %15, 11, !dbg !2482
  br i1 %16, label %22, label %17, !dbg !2483

; <label>:17:                                     ; preds = %13
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 47, i64 0)) #10, !dbg !2484
  br label %22, !dbg !2484

; <label>:18:                                     ; preds = %9
  %19 = load i32, i32* %5, align 4, !dbg !2485, !tbaa !548
  call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8* nonnull %8, i32 %19) #10, !dbg !2486
  call fastcc void @acceptCommonHandler(i32 %11, i32 0, i8* nonnull %8) #12, !dbg !2487
  %20 = add nsw i32 %10, -1, !dbg !2488
  %21 = icmp eq i32 %10, 0, !dbg !2471
  br i1 %21, label %22, label %9, !dbg !2471, !llvm.loop !2489

; <label>:22:                                     ; preds = %18, %17, %13
  call void @llvm.lifetime.end.p0i8(i64 46, i8* nonnull %8) #6, !dbg !2491
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #6, !dbg !2491
  ret void, !dbg !2491
}

; Function Attrs: noredzone
declare dso_local i32 @anetTcpAccept(i8*, i32, i8*, i64, i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @acceptCommonHandler(i32, i32, i8*) unnamed_addr #0 !dbg !2492 {
  %4 = tail call %struct.client* @createClient(i32 %0) #12, !dbg !2506
  %5 = icmp eq %struct.client* %4, null, !dbg !2509
  br i1 %5, label %6, label %11, !dbg !2510

; <label>:6:                                      ; preds = %3
  %7 = tail call i32* @__errno() #10, !dbg !2511
  %8 = load i32, i32* %7, align 4, !dbg !2511, !tbaa !548
  %9 = tail call i8* @strerror(i32 %8) #10, !dbg !2513
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.100, i64 0, i64 0), i8* %9, i32 %0) #10, !dbg !2514
  %10 = tail call i32 @close(i32 %0) #10, !dbg !2515
  br label %58, !dbg !2516

; <label>:11:                                     ; preds = %3
  %12 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !2517, !tbaa !440
  %13 = getelementptr inbounds %struct.list, %struct.list* %12, i64 0, i32 5, !dbg !2517
  %14 = load i64, i64* %13, align 8, !dbg !2517, !tbaa !1069
  %15 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 226), align 4, !dbg !2518, !tbaa !2519
  %16 = zext i32 %15 to i64, !dbg !2520
  %17 = icmp ugt i64 %14, %16, !dbg !2521
  br i1 %17, label %18, label %25, !dbg !2522

; <label>:18:                                     ; preds = %11
  %19 = getelementptr inbounds %struct.client, %struct.client* %4, i64 0, i32 1, !dbg !2523
  %20 = load i32, i32* %19, align 8, !dbg !2523, !tbaa !593
  %21 = tail call i64 @strlen(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.101, i64 0, i64 0)) #10, !dbg !2525
  %22 = tail call i64 @write(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.101, i64 0, i64 0), i64 %21) #10, !dbg !2526
  %23 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 86), align 8, !dbg !2527, !tbaa !2528
  %24 = add nsw i64 %23, 1, !dbg !2527
  store i64 %24, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 86), align 8, !dbg !2527, !tbaa !2528
  tail call void @freeClient(%struct.client* nonnull %4) #12, !dbg !2529
  br label %58

; <label>:25:                                     ; preds = %11
  %26 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 50), align 8, !dbg !2530, !tbaa !2532
  %27 = icmp ne i32 %26, 0, !dbg !2533
  %28 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 30), align 8, !dbg !2534
  %29 = icmp eq i32 %28, 0, !dbg !2535
  %30 = and i1 %27, %29, !dbg !2536
  %31 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 15), align 8, !dbg !2537
  %32 = icmp eq i8* %31, null, !dbg !2538
  %33 = and i1 %30, %32, !dbg !2536
  br i1 %33, label %34, label %52, !dbg !2536

; <label>:34:                                     ; preds = %25
  %35 = and i32 %1, 2048, !dbg !2539
  %36 = icmp eq i32 %35, 0, !dbg !2539
  %37 = icmp ne i8* %2, null, !dbg !2540
  %38 = and i1 %36, %37, !dbg !2541
  br i1 %38, label %39, label %52, !dbg !2541

; <label>:39:                                     ; preds = %34
  %40 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i64 0, i64 0)) #10, !dbg !2542
  %41 = icmp eq i32 %40, 0, !dbg !2542
  br i1 %41, label %52, label %42, !dbg !2545

; <label>:42:                                     ; preds = %39
  %43 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.103, i64 0, i64 0)) #10, !dbg !2546
  %44 = icmp eq i32 %43, 0, !dbg !2546
  br i1 %44, label %52, label %45, !dbg !2547

; <label>:45:                                     ; preds = %42
  %46 = getelementptr inbounds %struct.client, %struct.client* %4, i64 0, i32 1, !dbg !2548
  %47 = load i32, i32* %46, align 8, !dbg !2548, !tbaa !593
  %48 = tail call i64 @strlen(i8* getelementptr inbounds ([1102 x i8], [1102 x i8]* @err, i64 0, i64 0)) #10, !dbg !2551
  %49 = tail call i64 @write(i32 %47, i8* getelementptr inbounds ([1102 x i8], [1102 x i8]* @err, i64 0, i64 0), i64 %48) #10, !dbg !2552
  %50 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 86), align 8, !dbg !2553, !tbaa !2528
  %51 = add nsw i64 %50, 1, !dbg !2553
  store i64 %51, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 86), align 8, !dbg !2553, !tbaa !2528
  tail call void @freeClient(%struct.client* nonnull %4) #12, !dbg !2554
  br label %58, !dbg !2555

; <label>:52:                                     ; preds = %42, %39, %34, %25
  %53 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 71), align 8, !dbg !2556, !tbaa !2557
  %54 = add nsw i64 %53, 1, !dbg !2556
  store i64 %54, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 71), align 8, !dbg !2556, !tbaa !2557
  %55 = getelementptr inbounds %struct.client, %struct.client* %4, i64 0, i32 21, !dbg !2558
  %56 = load i32, i32* %55, align 8, !dbg !2559, !tbaa !922
  %57 = or i32 %56, %1, !dbg !2559
  store i32 %57, i32* %55, align 8, !dbg !2559, !tbaa !922
  br label %58, !dbg !2560

; <label>:58:                                     ; preds = %52, %45, %18, %6
  ret void, !dbg !2560
}

; Function Attrs: noredzone nounwind
define dso_local void @acceptUnixHandler(%struct.aeEventLoop* nocapture readnone, i32, i8* nocapture readnone, i32) local_unnamed_addr #0 !dbg !2561 {
  br label %5, !dbg !2574

; <label>:5:                                      ; preds = %4, %14
  %6 = phi i32 [ 999, %4 ], [ %16, %14 ]
  %7 = tail call i32 @anetUnixAccept(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 47, i64 0), i32 %1) #10, !dbg !2575
  %8 = icmp eq i32 %7, -1, !dbg !2578
  br i1 %8, label %9, label %14, !dbg !2580

; <label>:9:                                      ; preds = %5
  %10 = tail call i32* @__errno() #10, !dbg !2581
  %11 = load i32, i32* %10, align 4, !dbg !2581, !tbaa !548
  %12 = icmp eq i32 %11, 11, !dbg !2584
  br i1 %12, label %18, label %13, !dbg !2585

; <label>:13:                                     ; preds = %9
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 47, i64 0)) #10, !dbg !2586
  br label %18, !dbg !2586

; <label>:14:                                     ; preds = %5
  %15 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 31), align 8, !dbg !2587, !tbaa !2588
  tail call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i8* %15) #10, !dbg !2589
  tail call fastcc void @acceptCommonHandler(i32 %7, i32 2048, i8* null) #12, !dbg !2590
  %16 = add nsw i32 %6, -1, !dbg !2591
  %17 = icmp eq i32 %6, 0, !dbg !2574
  br i1 %17, label %18, label %5, !dbg !2574, !llvm.loop !2592

; <label>:18:                                     ; preds = %14, %13, %9
  ret void, !dbg !2594
}

; Function Attrs: noredzone
declare dso_local i32 @anetUnixAccept(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @disconnectSlaves() local_unnamed_addr #0 !dbg !2595 {
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !2601, !tbaa !1010
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 5, !dbg !2601
  %3 = load i64, i64* %2, align 8, !dbg !2601, !tbaa !1069
  %4 = icmp eq i64 %3, 0, !dbg !2602
  br i1 %4, label %16, label %5, !dbg !2602

; <label>:5:                                      ; preds = %0, %5
  %6 = phi %struct.list* [ %12, %5 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct.list, %struct.list* %6, i64 0, i32 0, !dbg !2603
  %8 = load %struct.listNode*, %struct.listNode** %7, align 8, !dbg !2603, !tbaa !2604
  %9 = getelementptr inbounds %struct.listNode, %struct.listNode* %8, i64 0, i32 2, !dbg !2606
  %10 = bitcast i8** %9 to %struct.client**, !dbg !2606
  %11 = load %struct.client*, %struct.client** %10, align 8, !dbg !2606, !tbaa !1150
  tail call void @freeClient(%struct.client* %11) #12, !dbg !2607
  %12 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !2601, !tbaa !1010
  %13 = getelementptr inbounds %struct.list, %struct.list* %12, i64 0, i32 5, !dbg !2601
  %14 = load i64, i64* %13, align 8, !dbg !2601, !tbaa !1069
  %15 = icmp eq i64 %14, 0, !dbg !2602
  br i1 %15, label %16, label %5, !dbg !2602, !llvm.loop !2608

; <label>:16:                                     ; preds = %5, %0
  ret void, !dbg !2610
}

; Function Attrs: noredzone nounwind
define dso_local void @freeClient(%struct.client*) local_unnamed_addr #0 !dbg !2611 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2619
  %3 = load i32, i32* %2, align 8, !dbg !2619, !tbaa !922
  %4 = and i32 %3, 268435456, !dbg !2621
  %5 = icmp eq i32 %4, 0, !dbg !2621
  br i1 %5, label %14, label %6, !dbg !2622

; <label>:6:                                      ; preds = %1
  %7 = and i32 %3, 1280, !dbg !2626
  %8 = icmp eq i32 %7, 0, !dbg !2626
  br i1 %8, label %9, label %147, !dbg !2626

; <label>:9:                                      ; preds = %6
  %10 = or i32 %3, 1024, !dbg !2627
  store i32 %10, i32* %2, align 8, !dbg !2627, !tbaa !922
  %11 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2628, !tbaa !1292
  %12 = bitcast %struct.client* %0 to i8*, !dbg !2629
  %13 = tail call %struct.list* @listAddNodeTail(%struct.list* %11, i8* %12) #10, !dbg !2630
  br label %147, !dbg !2631

; <label>:14:                                     ; preds = %1
  %15 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2632, !tbaa !2634
  %16 = icmp eq %struct.client* %15, null, !dbg !2635
  %17 = and i32 %3, 2, !dbg !2636
  %18 = icmp eq i32 %17, 0, !dbg !2636
  %19 = or i1 %18, %16, !dbg !2637
  br i1 %19, label %25, label %20, !dbg !2637

; <label>:20:                                     ; preds = %14
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !2638
  %21 = load i32, i32* %2, align 8, !dbg !2640, !tbaa !922
  %22 = and i32 %21, 1104, !dbg !2642
  %23 = icmp eq i32 %22, 0, !dbg !2642
  br i1 %23, label %24, label %25, !dbg !2643

; <label>:24:                                     ; preds = %20
  tail call void @replicationCacheMaster(%struct.client* nonnull %0) #10, !dbg !2644
  br label %147, !dbg !2646

; <label>:25:                                     ; preds = %20, %14
  %26 = phi i32 [ %21, %20 ], [ %3, %14 ], !dbg !2647
  %27 = and i32 %26, 5, !dbg !2649
  %28 = icmp eq i32 %27, 1, !dbg !2649
  br i1 %28, label %29, label %31, !dbg !2649

; <label>:29:                                     ; preds = %25
  %30 = tail call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #10, !dbg !2650
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i8* %30) #10, !dbg !2652
  br label %31, !dbg !2653

; <label>:31:                                     ; preds = %25, %29
  %32 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 4, !dbg !2654
  %33 = load i8*, i8** %32, align 8, !dbg !2654, !tbaa !606
  tail call void @sdsfree(i8* %33) #10, !dbg !2655
  %34 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 6, !dbg !2656
  %35 = load i8*, i8** %34, align 8, !dbg !2656, !tbaa !610
  tail call void @sdsfree(i8* %35) #10, !dbg !2657
  store i8* null, i8** %32, align 8, !dbg !2658, !tbaa !606
  %36 = load i32, i32* %2, align 8, !dbg !2659, !tbaa !922
  %37 = and i32 %36, 16, !dbg !2661
  %38 = icmp eq i32 %37, 0, !dbg !2661
  br i1 %38, label %40, label %39, !dbg !2662

; <label>:39:                                     ; preds = %31
  tail call void @unblockClient(%struct.client* nonnull %0) #10, !dbg !2663
  br label %40, !dbg !2663

; <label>:40:                                     ; preds = %31, %39
  %41 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 1, !dbg !2664
  %42 = load %struct.dict*, %struct.dict** %41, align 8, !dbg !2664, !tbaa !682
  tail call void @dictRelease(%struct.dict* %42) #10, !dbg !2665
  tail call void @unwatchAllKeys(%struct.client* nonnull %0) #10, !dbg !2666
  %43 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 42, !dbg !2667
  %44 = load %struct.list*, %struct.list** %43, align 8, !dbg !2667, !tbaa !703
  tail call void @listRelease(%struct.list* %44) #10, !dbg !2668
  %45 = tail call i32 @pubsubUnsubscribeAllChannels(%struct.client* nonnull %0, i32 0) #10, !dbg !2669
  %46 = tail call i32 @pubsubUnsubscribeAllPatterns(%struct.client* nonnull %0, i32 0) #10, !dbg !2670
  %47 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 43, !dbg !2671
  %48 = load %struct.dict*, %struct.dict** %47, align 8, !dbg !2671, !tbaa !707
  tail call void @dictRelease(%struct.dict* %48) #10, !dbg !2672
  %49 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 44, !dbg !2673
  %50 = load %struct.list*, %struct.list** %49, align 8, !dbg !2673, !tbaa !711
  tail call void @listRelease(%struct.list* %50) #10, !dbg !2674
  %51 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !2675
  %52 = load %struct.list*, %struct.list** %51, align 8, !dbg !2675, !tbaa !661
  tail call void @listRelease(%struct.list* %52) #10, !dbg !2676
  %53 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !2684
  %54 = load i32, i32* %53, align 8, !dbg !2684, !tbaa !619
  %55 = icmp sgt i32 %54, 0, !dbg !2687
  br i1 %55, label %56, label %67, !dbg !2688

; <label>:56:                                     ; preds = %40
  %57 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %58, !dbg !2688

; <label>:58:                                     ; preds = %58, %56
  %59 = phi i64 [ 0, %56 ], [ %63, %58 ]
  %60 = load %struct.redisObject**, %struct.redisObject*** %57, align 8, !dbg !2689, !tbaa !622
  %61 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %60, i64 %59, !dbg !2690
  %62 = load %struct.redisObject*, %struct.redisObject** %61, align 8, !dbg !2690, !tbaa !475
  tail call void @decrRefCount(%struct.redisObject* %62) #10, !dbg !2691
  %63 = add nuw nsw i64 %59, 1, !dbg !2692
  %64 = load i32, i32* %53, align 8, !dbg !2684, !tbaa !619
  %65 = sext i32 %64 to i64, !dbg !2687
  %66 = icmp slt i64 %63, %65, !dbg !2687
  br i1 %66, label %58, label %67, !dbg !2688, !llvm.loop !2693

; <label>:67:                                     ; preds = %58, %40
  store i32 0, i32* %53, align 8, !dbg !2696, !tbaa !619
  %68 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !2697
  store %struct.redisCommand* null, %struct.redisCommand** %68, align 8, !dbg !2698, !tbaa !2699
  tail call void @unlinkClient(%struct.client* nonnull %0) #12, !dbg !2700
  %69 = load i32, i32* %2, align 8, !dbg !2701, !tbaa !922
  %70 = and i32 %69, 1, !dbg !2702
  %71 = icmp eq i32 %70, 0, !dbg !2702
  br i1 %71, label %111, label %72, !dbg !2703

; <label>:72:                                     ; preds = %67
  %73 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !2704
  %74 = load i32, i32* %73, align 8, !dbg !2704, !tbaa !1026
  %75 = icmp eq i32 %74, 8, !dbg !2706
  br i1 %75, label %76, label %87, !dbg !2707

; <label>:76:                                     ; preds = %72
  %77 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 25, !dbg !2708
  %78 = load i32, i32* %77, align 8, !dbg !2708, !tbaa !2711
  %79 = icmp eq i32 %78, -1, !dbg !2712
  br i1 %79, label %82, label %80, !dbg !2713

; <label>:80:                                     ; preds = %76
  %81 = tail call i32 @close(i32 %78) #10, !dbg !2714
  br label %82, !dbg !2714

; <label>:82:                                     ; preds = %76, %80
  %83 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 28, !dbg !2715
  %84 = load i8*, i8** %83, align 8, !dbg !2715, !tbaa !2717
  %85 = icmp eq i8* %84, null, !dbg !2718
  br i1 %85, label %87, label %86, !dbg !2719

; <label>:86:                                     ; preds = %82
  tail call void @sdsfree(i8* nonnull %84) #10, !dbg !2720
  br label %87, !dbg !2720

; <label>:87:                                     ; preds = %82, %86, %72
  %88 = load i32, i32* %2, align 8, !dbg !2721, !tbaa !922
  %89 = and i32 %88, 4, !dbg !2722
  %90 = icmp eq i32 %89, 0, !dbg !2722
  %91 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 42), align 8, !dbg !2723
  %92 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !2724
  %93 = select i1 %90, %struct.list* %92, %struct.list* %91, !dbg !2725
  %94 = bitcast %struct.client* %0 to i8*, !dbg !2727
  %95 = tail call %struct.listNode* @listSearchKey(%struct.list* %93, i8* %94) #10, !dbg !2728
  %96 = icmp eq %struct.listNode* %95, null, !dbg !2730
  br i1 %96, label %97, label %98, !dbg !2730

; <label>:97:                                     ; preds = %87
  tail call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 922) #10, !dbg !2730
  tail call void @_exit(i32 1) #11, !dbg !2730
  unreachable, !dbg !2730

; <label>:98:                                     ; preds = %87
  tail call void @listDelNode(%struct.list* %93, %struct.listNode* nonnull %95) #10, !dbg !2731
  %99 = load i32, i32* %2, align 8, !dbg !2732, !tbaa !922
  %100 = and i32 %99, 1, !dbg !2734
  %101 = icmp eq i32 %100, 0, !dbg !2734
  br i1 %101, label %109, label %102, !dbg !2735

; <label>:102:                                    ; preds = %98
  %103 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !2736, !tbaa !1010
  %104 = getelementptr inbounds %struct.list, %struct.list* %103, i64 0, i32 5, !dbg !2736
  %105 = load i64, i64* %104, align 8, !dbg !2736, !tbaa !1069
  %106 = icmp eq i64 %105, 0, !dbg !2737
  br i1 %106, label %107, label %109, !dbg !2738

; <label>:107:                                    ; preds = %102
  %108 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2739, !tbaa !636
  store i64 %108, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 189), align 8, !dbg !2740, !tbaa !2741
  br label %109, !dbg !2742

; <label>:109:                                    ; preds = %98, %107, %102
  tail call void @refreshGoodSlavesCount() #10, !dbg !2743
  %110 = load i32, i32* %2, align 8, !dbg !2744, !tbaa !922
  br label %111, !dbg !2746

; <label>:111:                                    ; preds = %67, %109
  %112 = phi i32 [ %69, %67 ], [ %110, %109 ], !dbg !2744
  %113 = and i32 %112, 2, !dbg !2747
  %114 = icmp eq i32 %113, 0, !dbg !2747
  br i1 %114, label %117, label %115, !dbg !2748

; <label>:115:                                    ; preds = %111
  tail call void @replicationHandleMasterDisconnection() #10, !dbg !2749
  %116 = load i32, i32* %2, align 8, !dbg !2750, !tbaa !922
  br label %117, !dbg !2749

; <label>:117:                                    ; preds = %111, %115
  %118 = phi i32 [ %112, %111 ], [ %116, %115 ], !dbg !2750
  %119 = and i32 %118, 1024, !dbg !2752
  %120 = icmp eq i32 %119, 0, !dbg !2752
  br i1 %120, label %129, label %121, !dbg !2753

; <label>:121:                                    ; preds = %117
  %122 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2754, !tbaa !1292
  %123 = bitcast %struct.client* %0 to i8*, !dbg !2756
  %124 = tail call %struct.listNode* @listSearchKey(%struct.list* %122, i8* %123) #10, !dbg !2757
  %125 = icmp eq %struct.listNode* %124, null, !dbg !2758
  br i1 %125, label %126, label %127, !dbg !2758

; <label>:126:                                    ; preds = %121
  tail call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 940) #10, !dbg !2758
  tail call void @_exit(i32 1) #11, !dbg !2758
  unreachable, !dbg !2758

; <label>:127:                                    ; preds = %121
  %128 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2759, !tbaa !1292
  tail call void @listDelNode(%struct.list* %128, %struct.listNode* nonnull %124) #10, !dbg !2760
  br label %129, !dbg !2761

; <label>:129:                                    ; preds = %117, %127
  %130 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 3, !dbg !2762
  %131 = load %struct.redisObject*, %struct.redisObject** %130, align 8, !dbg !2762, !tbaa !596
  %132 = icmp eq %struct.redisObject* %131, null, !dbg !2764
  br i1 %132, label %134, label %133, !dbg !2765

; <label>:133:                                    ; preds = %129
  tail call void @decrRefCount(%struct.redisObject* nonnull %131) #10, !dbg !2766
  br label %134, !dbg !2766

; <label>:134:                                    ; preds = %129, %133
  %135 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !2767
  %136 = bitcast %struct.redisObject*** %135 to i8**, !dbg !2767
  %137 = load i8*, i8** %136, align 8, !dbg !2767, !tbaa !622
  tail call void @zfree(i8* %137) #10, !dbg !2768
  tail call void @freeClientMultiState(%struct.client* nonnull %0) #10, !dbg !2769
  %138 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 45, !dbg !2770
  %139 = load i8*, i8** %138, align 8, !dbg !2770, !tbaa !714
  tail call void @sdsfree(i8* %139) #10, !dbg !2771
  %140 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !2772, !tbaa !475
  %141 = icmp eq %struct.uk_alloc* %140, null, !dbg !2785
  br i1 %141, label %142, label %143, !dbg !2788, !prof !544

; <label>:142:                                    ; preds = %134
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i64 0, i64 0)) #10, !dbg !2789
  tail call void @ukplat_terminate(i32 3) #11, !dbg !2789
  unreachable, !dbg !2789

; <label>:143:                                    ; preds = %134
  %144 = bitcast %struct.client* %0 to i8*, !dbg !2791
  %145 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %140, i64 0, i32 5, !dbg !2794
  %146 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %145, align 8, !dbg !2794, !tbaa !475
  tail call void %146(%struct.uk_alloc* nonnull %140, i8* %144) #10, !dbg !2795
  br label %147, !dbg !2796

; <label>:147:                                    ; preds = %9, %6, %143, %24
  ret void, !dbg !2796
}

; Function Attrs: noredzone nounwind
define dso_local void @unlinkClient(%struct.client*) local_unnamed_addr #0 !dbg !2797 {
  %2 = alloca i64, align 8
  %3 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !2807, !tbaa !2809
  %4 = icmp eq %struct.client* %3, %0, !dbg !2810
  br i1 %4, label %5, label %6, !dbg !2811

; <label>:5:                                      ; preds = %1
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !2812, !tbaa !2809
  br label %6, !dbg !2813

; <label>:6:                                      ; preds = %5, %1
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !2814
  %8 = load i32, i32* %7, align 8, !dbg !2814, !tbaa !593
  %9 = icmp eq i32 %8, -1, !dbg !2815
  br i1 %9, label %10, label %12, !dbg !2816

; <label>:10:                                     ; preds = %6
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2817
  br label %44, !dbg !2816

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 46, !dbg !2819
  %14 = load %struct.listNode*, %struct.listNode** %13, align 8, !dbg !2819, !tbaa !454
  %15 = icmp eq %struct.listNode* %14, null, !dbg !2820
  br i1 %15, label %25, label %16, !dbg !2821

; <label>:16:                                     ; preds = %12
  %17 = bitcast i64* %2 to i8*, !dbg !2822
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #6, !dbg !2822
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 0, !dbg !2823
  %19 = load i64, i64* %18, align 8, !dbg !2823, !tbaa !460
  %20 = tail call i64 @intrev64(i64 %19) #10, !dbg !2823
  store i64 %20, i64* %2, align 8, !dbg !2824, !tbaa !409
  %21 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 44), align 8, !dbg !2825, !tbaa !463
  %22 = call i32 @raxRemove(%struct.rax* %21, i8* nonnull %17, i64 8, i8** null) #10, !dbg !2826
  %23 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !2827, !tbaa !440
  %24 = load %struct.listNode*, %struct.listNode** %13, align 8, !dbg !2828, !tbaa !454
  call void @listDelNode(%struct.list* %23, %struct.listNode* %24) #10, !dbg !2829
  store %struct.listNode* null, %struct.listNode** %13, align 8, !dbg !2830, !tbaa !454
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #6, !dbg !2831
  br label %25, !dbg !2832

; <label>:25:                                     ; preds = %12, %16
  %26 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2833
  %27 = load i32, i32* %26, align 8, !dbg !2833, !tbaa !922
  %28 = and i32 %27, 1, !dbg !2835
  %29 = icmp eq i32 %28, 0, !dbg !2835
  br i1 %29, label %37, label %30, !dbg !2836

; <label>:30:                                     ; preds = %25
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !2837
  %32 = load i32, i32* %31, align 8, !dbg !2837, !tbaa !1026
  %33 = icmp eq i32 %32, 7, !dbg !2838
  br i1 %33, label %34, label %37, !dbg !2839

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* %7, align 8, !dbg !2840, !tbaa !593
  %36 = call i32 @shutdown(i32 %35, i32 2) #10, !dbg !2842
  br label %37, !dbg !2843

; <label>:37:                                     ; preds = %25, %34, %30
  %38 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2844, !tbaa !577
  %39 = load i32, i32* %7, align 8, !dbg !2845, !tbaa !593
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %38, i32 %39, i32 1) #10, !dbg !2846
  %40 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2847, !tbaa !577
  %41 = load i32, i32* %7, align 8, !dbg !2848, !tbaa !593
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %40, i32 %41, i32 2) #10, !dbg !2849
  %42 = load i32, i32* %7, align 8, !dbg !2850, !tbaa !593
  %43 = call i32 @close(i32 %42) #10, !dbg !2851
  store i32 -1, i32* %7, align 8, !dbg !2852, !tbaa !593
  br label %44, !dbg !2853

; <label>:44:                                     ; preds = %10, %37
  %45 = phi i32* [ %11, %10 ], [ %26, %37 ], !dbg !2817
  %46 = load i32, i32* %45, align 8, !dbg !2817, !tbaa !922
  %47 = and i32 %46, 2097152, !dbg !2854
  %48 = icmp eq i32 %47, 0, !dbg !2854
  br i1 %48, label %59, label %49, !dbg !2855

; <label>:49:                                     ; preds = %44
  %50 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !2856, !tbaa !1035
  %51 = bitcast %struct.client* %0 to i8*, !dbg !2858
  %52 = call %struct.listNode* @listSearchKey(%struct.list* %50, i8* %51) #10, !dbg !2859
  %53 = icmp eq %struct.listNode* %52, null, !dbg !2861
  br i1 %53, label %54, label %55, !dbg !2861

; <label>:54:                                     ; preds = %49
  call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 838) #10, !dbg !2861
  call void @_exit(i32 1) #11, !dbg !2861
  unreachable, !dbg !2861

; <label>:55:                                     ; preds = %49
  %56 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !2862, !tbaa !1035
  call void @listDelNode(%struct.list* %56, %struct.listNode* nonnull %52) #10, !dbg !2863
  %57 = load i32, i32* %45, align 8, !dbg !2864, !tbaa !922
  %58 = and i32 %57, -2097153, !dbg !2864
  store i32 %58, i32* %45, align 8, !dbg !2864, !tbaa !922
  br label %59, !dbg !2865

; <label>:59:                                     ; preds = %44, %55
  %60 = phi i32 [ %46, %44 ], [ %58, %55 ], !dbg !2866
  %61 = trunc i32 %60 to i8, !dbg !2868
  %62 = icmp slt i8 %61, 0, !dbg !2868
  br i1 %62, label %63, label %73, !dbg !2869

; <label>:63:                                     ; preds = %59
  %64 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 235), align 8, !dbg !2870, !tbaa !2872
  %65 = bitcast %struct.client* %0 to i8*, !dbg !2873
  %66 = call %struct.listNode* @listSearchKey(%struct.list* %64, i8* %65) #10, !dbg !2874
  %67 = icmp eq %struct.listNode* %66, null, !dbg !2875
  br i1 %67, label %68, label %69, !dbg !2875

; <label>:68:                                     ; preds = %63
  call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 847) #10, !dbg !2875
  call void @_exit(i32 1) #11, !dbg !2875
  unreachable, !dbg !2875

; <label>:69:                                     ; preds = %63
  %70 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 235), align 8, !dbg !2876, !tbaa !2872
  call void @listDelNode(%struct.list* %70, %struct.listNode* nonnull %66) #10, !dbg !2877
  %71 = load i32, i32* %45, align 8, !dbg !2878, !tbaa !922
  %72 = and i32 %71, -129, !dbg !2878
  store i32 %72, i32* %45, align 8, !dbg !2878, !tbaa !922
  br label %73, !dbg !2879

; <label>:73:                                     ; preds = %69, %59
  ret void, !dbg !2880
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
define dso_local void @freeClientAsync(%struct.client*) local_unnamed_addr #0 !dbg !1283 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !2882
  %3 = load i32, i32* %2, align 8, !dbg !2882, !tbaa !922
  %4 = and i32 %3, 1280, !dbg !2883
  %5 = icmp eq i32 %4, 0, !dbg !2883
  br i1 %5, label %6, label %11, !dbg !2883

; <label>:6:                                      ; preds = %1
  %7 = or i32 %3, 1024, !dbg !2884
  store i32 %7, i32* %2, align 8, !dbg !2884, !tbaa !922
  %8 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2885, !tbaa !1292
  %9 = bitcast %struct.client* %0 to i8*, !dbg !2886
  %10 = tail call %struct.list* @listAddNodeTail(%struct.list* %8, i8* %9) #10, !dbg !2887
  br label %11, !dbg !2888

; <label>:11:                                     ; preds = %1, %6
  ret void, !dbg !2888
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
define dso_local void @freeClientsInAsyncFreeQueue() local_unnamed_addr #0 !dbg !2889 {
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2894, !tbaa !1292
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 5, !dbg !2894
  %3 = load i64, i64* %2, align 8, !dbg !2894, !tbaa !1069
  %4 = icmp eq i64 %3, 0, !dbg !2895
  br i1 %4, label %20, label %5, !dbg !2895

; <label>:5:                                      ; preds = %0, %5
  %6 = phi %struct.list* [ %16, %5 ], [ %1, %0 ]
  %7 = getelementptr inbounds %struct.list, %struct.list* %6, i64 0, i32 0, !dbg !2896
  %8 = load %struct.listNode*, %struct.listNode** %7, align 8, !dbg !2896, !tbaa !2604
  %9 = getelementptr inbounds %struct.listNode, %struct.listNode* %8, i64 0, i32 2, !dbg !2898
  %10 = bitcast i8** %9 to %struct.client**, !dbg !2898
  %11 = load %struct.client*, %struct.client** %10, align 8, !dbg !2898, !tbaa !1150
  %12 = getelementptr inbounds %struct.client, %struct.client* %11, i64 0, i32 21, !dbg !2900
  %13 = load i32, i32* %12, align 8, !dbg !2901, !tbaa !922
  %14 = and i32 %13, -1025, !dbg !2901
  store i32 %14, i32* %12, align 8, !dbg !2901, !tbaa !922
  tail call void @freeClient(%struct.client* %11) #12, !dbg !2902
  %15 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2903, !tbaa !1292
  tail call void @listDelNode(%struct.list* %15, %struct.listNode* %8) #10, !dbg !2904
  %16 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !2894, !tbaa !1292
  %17 = getelementptr inbounds %struct.list, %struct.list* %16, i64 0, i32 5, !dbg !2894
  %18 = load i64, i64* %17, align 8, !dbg !2894, !tbaa !1069
  %19 = icmp eq i64 %18, 0, !dbg !2895
  br i1 %19, label %20, label %5, !dbg !2895, !llvm.loop !2905

; <label>:20:                                     ; preds = %5, %0
  ret void, !dbg !2907
}

; Function Attrs: noredzone nounwind
define dso_local %struct.client* @lookupClientByID(i64) local_unnamed_addr #0 !dbg !2908 {
  %2 = alloca i64, align 8
  %3 = tail call i64 @intrev64(i64 %0) #10, !dbg !2915
  store i64 %3, i64* %2, align 8, !dbg !2916, !tbaa !409
  %4 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 44), align 8, !dbg !2917, !tbaa !463
  %5 = bitcast i64* %2 to i8*, !dbg !2918
  %6 = call i8* @raxFind(%struct.rax* %4, i8* nonnull %5, i64 8) #10, !dbg !2919
  %7 = bitcast i8* %6 to %struct.client*, !dbg !2919
  %8 = load %struct.client*, %struct.client** bitcast (i8** @raxNotFound to %struct.client**), align 8, !dbg !2921, !tbaa !475
  %9 = icmp eq %struct.client* %8, %7, !dbg !2922
  %10 = select i1 %9, %struct.client* null, %struct.client* %7, !dbg !2923
  ret %struct.client* %10, !dbg !2924
}

; Function Attrs: noredzone
declare dso_local i8* @raxFind(%struct.rax*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @writeToClient(i32, %struct.client*, i32) local_unnamed_addr #0 !dbg !2925 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 47
  %5 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 15
  %6 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 16
  %7 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 17
  %8 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 21
  br label %9, !dbg !2941

; <label>:9:                                      ; preds = %96, %3
  %10 = phi i64 [ 0, %3 ], [ %82, %96 ]
  %11 = phi i64 [ 0, %3 ], [ %83, %96 ]
  br label %12, !dbg !2942

; <label>:12:                                     ; preds = %9, %49
  %13 = load i32, i32* %4, align 8, !dbg !2942, !tbaa !599
  %14 = icmp eq i32 %13, 0, !dbg !2945
  br i1 %14, label %15, label %20, !dbg !2946

; <label>:15:                                     ; preds = %12
  %16 = load %struct.list*, %struct.list** %5, align 8, !dbg !2947, !tbaa !661
  %17 = getelementptr inbounds %struct.list, %struct.list* %16, i64 0, i32 5, !dbg !2947
  %18 = load i64, i64* %17, align 8, !dbg !2947, !tbaa !1069
  %19 = icmp eq i64 %18, 0, !dbg !2946
  br i1 %19, label %100, label %39, !dbg !2941

; <label>:20:                                     ; preds = %12
  %21 = icmp sgt i32 %13, 0, !dbg !2948
  br i1 %21, label %24, label %22, !dbg !2951

; <label>:22:                                     ; preds = %20
  %23 = load %struct.list*, %struct.list** %5, align 8, !dbg !2952, !tbaa !661
  br label %39, !dbg !2951

; <label>:24:                                     ; preds = %20
  %25 = load i64, i64* %7, align 8, !dbg !2954, !tbaa !633
  %26 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 48, i64 %25, !dbg !2956
  %27 = sext i32 %13 to i64, !dbg !2957
  %28 = sub i64 %27, %25, !dbg !2958
  %29 = tail call i64 @write(i32 %0, i8* nonnull %26, i64 %28) #10, !dbg !2959
  %30 = icmp slt i64 %29, 1, !dbg !2960
  br i1 %30, label %100, label %31, !dbg !2962

; <label>:31:                                     ; preds = %24
  %32 = load i64, i64* %7, align 8, !dbg !2963, !tbaa !633
  %33 = add i64 %32, %29, !dbg !2963
  store i64 %33, i64* %7, align 8, !dbg !2963, !tbaa !633
  %34 = add nsw i64 %29, %10, !dbg !2964
  %35 = trunc i64 %33 to i32, !dbg !2965
  %36 = load i32, i32* %4, align 8, !dbg !2967, !tbaa !599
  %37 = icmp eq i32 %36, %35, !dbg !2968
  br i1 %37, label %38, label %81, !dbg !2969

; <label>:38:                                     ; preds = %31
  store i32 0, i32* %4, align 8, !dbg !2970, !tbaa !599
  store i64 0, i64* %7, align 8, !dbg !2972, !tbaa !633
  br label %81, !dbg !2973

; <label>:39:                                     ; preds = %22, %15
  %40 = phi %struct.list* [ %23, %22 ], [ %16, %15 ], !dbg !2952
  %41 = getelementptr inbounds %struct.list, %struct.list* %40, i64 0, i32 0, !dbg !2952
  %42 = load %struct.listNode*, %struct.listNode** %41, align 8, !dbg !2952, !tbaa !2604
  %43 = getelementptr inbounds %struct.listNode, %struct.listNode* %42, i64 0, i32 2, !dbg !2952
  %44 = bitcast i8** %43 to %struct.clientReplyBlock**, !dbg !2952
  %45 = load %struct.clientReplyBlock*, %struct.clientReplyBlock** %44, align 8, !dbg !2952, !tbaa !1150
  %46 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %45, i64 0, i32 1, !dbg !2975
  %47 = load i64, i64* %46, align 8, !dbg !2975, !tbaa !409
  %48 = icmp eq i64 %47, 0, !dbg !2977
  br i1 %48, label %49, label %54, !dbg !2979

; <label>:49:                                     ; preds = %39
  %50 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %45, i64 0, i32 0, !dbg !2980
  %51 = load i64, i64* %50, align 8, !dbg !2980, !tbaa !409
  %52 = load i64, i64* %6, align 8, !dbg !2982, !tbaa !664
  %53 = sub i64 %52, %51, !dbg !2982
  store i64 %53, i64* %6, align 8, !dbg !2982, !tbaa !664
  tail call void @listDelNode(%struct.list* %40, %struct.listNode* %42) #10, !dbg !2983
  br label %12, !dbg !2984, !llvm.loop !2985

; <label>:54:                                     ; preds = %39
  %55 = load i64, i64* %7, align 8, !dbg !2987, !tbaa !633
  %56 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %45, i64 0, i32 2, i64 %55, !dbg !2988
  %57 = sub i64 %47, %55, !dbg !2989
  %58 = tail call i64 @write(i32 %0, i8* nonnull %56, i64 %57) #10, !dbg !2990
  %59 = icmp slt i64 %58, 1, !dbg !2991
  br i1 %59, label %100, label %60, !dbg !2993

; <label>:60:                                     ; preds = %54
  %61 = load i64, i64* %7, align 8, !dbg !2994, !tbaa !633
  %62 = add i64 %61, %58, !dbg !2994
  store i64 %62, i64* %7, align 8, !dbg !2994, !tbaa !633
  %63 = add nsw i64 %58, %10, !dbg !2995
  %64 = icmp eq i64 %62, %47, !dbg !2996
  br i1 %64, label %65, label %81, !dbg !2998

; <label>:65:                                     ; preds = %60
  %66 = getelementptr inbounds %struct.clientReplyBlock, %struct.clientReplyBlock* %45, i64 0, i32 0, !dbg !2999
  %67 = load i64, i64* %66, align 8, !dbg !2999, !tbaa !409
  %68 = load i64, i64* %6, align 8, !dbg !3001, !tbaa !664
  %69 = sub i64 %68, %67, !dbg !3001
  store i64 %69, i64* %6, align 8, !dbg !3001, !tbaa !664
  %70 = load %struct.list*, %struct.list** %5, align 8, !dbg !3002, !tbaa !661
  %71 = getelementptr inbounds %struct.list, %struct.list* %70, i64 0, i32 0, !dbg !3003
  %72 = load %struct.listNode*, %struct.listNode** %71, align 8, !dbg !3003, !tbaa !2604
  tail call void @listDelNode(%struct.list* %70, %struct.listNode* %72) #10, !dbg !3004
  store i64 0, i64* %7, align 8, !dbg !3005, !tbaa !633
  %73 = load %struct.list*, %struct.list** %5, align 8, !dbg !3006, !tbaa !661
  %74 = getelementptr inbounds %struct.list, %struct.list* %73, i64 0, i32 5, !dbg !3006
  %75 = load i64, i64* %74, align 8, !dbg !3006, !tbaa !1069
  %76 = icmp eq i64 %75, 0, !dbg !3008
  br i1 %76, label %77, label %81, !dbg !3009

; <label>:77:                                     ; preds = %65
  %78 = load i64, i64* %6, align 8, !dbg !3010, !tbaa !664
  %79 = icmp eq i64 %78, 0, !dbg !3010
  br i1 %79, label %81, label %80, !dbg !3010

; <label>:80:                                     ; preds = %77
  tail call void @_serverAssert(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1026) #10, !dbg !3010
  tail call void @_exit(i32 1) #11, !dbg !3010
  unreachable, !dbg !3010

; <label>:81:                                     ; preds = %60, %77, %65, %31, %38
  %82 = phi i64 [ %34, %38 ], [ %34, %31 ], [ %63, %77 ], [ %63, %65 ], [ %63, %60 ], !dbg !3011
  %83 = phi i64 [ %29, %38 ], [ %29, %31 ], [ %58, %77 ], [ %58, %65 ], [ %58, %60 ], !dbg !3011
  %84 = icmp sgt i64 %82, 65536, !dbg !3012
  br i1 %84, label %85, label %96, !dbg !3014

; <label>:85:                                     ; preds = %81
  %86 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !3015, !tbaa !3016
  %87 = icmp eq i64 %86, 0, !dbg !3017
  br i1 %87, label %92, label %88, !dbg !3018

; <label>:88:                                     ; preds = %85
  %89 = tail call i64 @zmalloc_used_memory() #10, !dbg !3019
  %90 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 227), align 8, !dbg !3020, !tbaa !3016
  %91 = icmp ult i64 %89, %90, !dbg !3021
  br i1 %91, label %92, label %96, !dbg !3022

; <label>:92:                                     ; preds = %88, %85
  %93 = load i32, i32* %8, align 8, !dbg !3023, !tbaa !922
  %94 = and i32 %93, 1, !dbg !3024
  %95 = icmp eq i32 %94, 0, !dbg !3024
  br i1 %95, label %97, label %96, !dbg !3025

; <label>:96:                                     ; preds = %92, %88, %81
  br label %9, !dbg !2942, !llvm.loop !2985

; <label>:97:                                     ; preds = %92
  %98 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !3026, !tbaa !3027
  %99 = add nsw i64 %98, %82, !dbg !3026
  store i64 %99, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !3026, !tbaa !3027
  br label %117, !dbg !3028

; <label>:100:                                    ; preds = %54, %24, %15
  %101 = phi i64 [ %11, %15 ], [ %29, %24 ], [ %58, %54 ], !dbg !3029
  %102 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !3026, !tbaa !3027
  %103 = add nsw i64 %102, %10, !dbg !3026
  store i64 %103, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !3026, !tbaa !3027
  %104 = icmp eq i64 %101, -1, !dbg !3030
  br i1 %104, label %105, label %113, !dbg !3032

; <label>:105:                                    ; preds = %100
  %106 = tail call i32* @__errno() #10, !dbg !3033
  %107 = load i32, i32* %106, align 4, !dbg !3033, !tbaa !548
  %108 = icmp eq i32 %107, 11, !dbg !3036
  br i1 %108, label %113, label %109, !dbg !3037

; <label>:109:                                    ; preds = %105
  %110 = tail call i32* @__errno() #10, !dbg !3038
  %111 = load i32, i32* %110, align 4, !dbg !3038, !tbaa !548
  %112 = tail call i8* @strerror(i32 %111) #10, !dbg !3040
  tail call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i8* %112) #10, !dbg !3041
  tail call void @freeClient(%struct.client* nonnull %1) #12, !dbg !3042
  br label %143, !dbg !3043

; <label>:113:                                    ; preds = %105, %100
  %114 = icmp sgt i64 %10, 0, !dbg !3044
  br i1 %114, label %115, label %124, !dbg !3028

; <label>:115:                                    ; preds = %113
  %116 = load i32, i32* %8, align 8, !dbg !3046, !tbaa !922
  br label %117, !dbg !3028

; <label>:117:                                    ; preds = %115, %97
  %118 = phi i32 [ %116, %115 ], [ %93, %97 ], !dbg !3046
  %119 = and i32 %118, 2, !dbg !3049
  %120 = icmp eq i32 %119, 0, !dbg !3049
  br i1 %120, label %121, label %124, !dbg !3050

; <label>:121:                                    ; preds = %117
  %122 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3051, !tbaa !636
  %123 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 19, !dbg !3052
  store i64 %122, i64* %123, align 8, !dbg !3053, !tbaa !639
  br label %124, !dbg !3054

; <label>:124:                                    ; preds = %117, %121, %113
  %125 = load i32, i32* %4, align 8, !dbg !3058, !tbaa !599
  %126 = icmp eq i32 %125, 0, !dbg !3059
  br i1 %126, label %127, label %143, !dbg !3060

; <label>:127:                                    ; preds = %124
  %128 = load %struct.list*, %struct.list** %5, align 8, !dbg !3061, !tbaa !661
  %129 = getelementptr inbounds %struct.list, %struct.list* %128, i64 0, i32 5, !dbg !3061
  %130 = load i64, i64* %129, align 8, !dbg !3061, !tbaa !1069
  %131 = icmp eq i64 %130, 0, !dbg !3060
  br i1 %131, label %132, label %143, !dbg !3062

; <label>:132:                                    ; preds = %127
  store i64 0, i64* %7, align 8, !dbg !3063, !tbaa !633
  %133 = icmp eq i32 %2, 0, !dbg !3065
  br i1 %133, label %138, label %134, !dbg !3067

; <label>:134:                                    ; preds = %132
  %135 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3068, !tbaa !577
  %136 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 1, !dbg !3069
  %137 = load i32, i32* %136, align 8, !dbg !3069, !tbaa !593
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %135, i32 %137, i32 2) #10, !dbg !3070
  br label %138, !dbg !3070

; <label>:138:                                    ; preds = %132, %134
  %139 = load i32, i32* %8, align 8, !dbg !3071, !tbaa !922
  %140 = and i32 %139, 64, !dbg !3073
  %141 = icmp eq i32 %140, 0, !dbg !3073
  br i1 %141, label %143, label %142, !dbg !3074

; <label>:142:                                    ; preds = %138
  tail call void @freeClient(%struct.client* nonnull %1) #12, !dbg !3075
  br label %143, !dbg !3077

; <label>:143:                                    ; preds = %124, %127, %138, %142, %109
  %144 = phi i32 [ -1, %142 ], [ -1, %109 ], [ 0, %138 ], [ 0, %127 ], [ 0, %124 ], !dbg !3078
  ret i32 %144, !dbg !3079
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @zmalloc_used_memory() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strerror(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @sendReplyToClient(%struct.aeEventLoop* nocapture readnone, i32, i8*, i32) #0 !dbg !3080 {
  %5 = bitcast i8* %2 to %struct.client*, !dbg !3090
  %6 = tail call i32 @writeToClient(i32 %1, %struct.client* %5, i32 1) #12, !dbg !3091
  ret void, !dbg !3092
}

; Function Attrs: noredzone nounwind
define dso_local i32 @handleClientsWithPendingWrites() local_unnamed_addr #0 !dbg !3093 {
  %1 = alloca %struct.listIter, align 8
  %2 = bitcast %struct.listIter* %1 to i8*, !dbg !3110
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #6, !dbg !3110
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !3111, !tbaa !1035
  %4 = getelementptr inbounds %struct.list, %struct.list* %3, i64 0, i32 5, !dbg !3111
  %5 = load i64, i64* %4, align 8, !dbg !3111, !tbaa !1069
  %6 = trunc i64 %5 to i32, !dbg !3111
  call void @listRewind(%struct.list* %3, %struct.listIter* nonnull %1) #10, !dbg !3114
  %7 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #10, !dbg !3115
  %8 = icmp eq %struct.listNode* %7, null, !dbg !3117
  br i1 %8, label %62, label %9, !dbg !3117

; <label>:9:                                      ; preds = %0, %59
  %10 = phi %struct.listNode* [ %60, %59 ], [ %7, %0 ]
  %11 = getelementptr inbounds %struct.listNode, %struct.listNode* %10, i64 0, i32 2, !dbg !3118
  %12 = load i8*, i8** %11, align 8, !dbg !3118, !tbaa !1150
  %13 = getelementptr inbounds i8, i8* %12, i64 160, !dbg !3119
  %14 = bitcast i8* %13 to i32*, !dbg !3119
  %15 = load i32, i32* %14, align 8, !dbg !3120, !tbaa !922
  %16 = and i32 %15, -2097153, !dbg !3120
  store i32 %16, i32* %14, align 8, !dbg !3120, !tbaa !922
  %17 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !3121, !tbaa !1035
  call void @listDelNode(%struct.list* %17, %struct.listNode* nonnull %10) #10, !dbg !3122
  %18 = load i32, i32* %14, align 8, !dbg !3123, !tbaa !922
  %19 = and i32 %18, 268435456, !dbg !3125
  %20 = icmp eq i32 %19, 0, !dbg !3125
  br i1 %20, label %21, label %59, !dbg !3126, !llvm.loop !3127

; <label>:21:                                     ; preds = %9
  %22 = bitcast i8* %12 to %struct.client*, !dbg !3118
  %23 = getelementptr inbounds i8, i8* %12, i64 8, !dbg !3130
  %24 = bitcast i8* %23 to i32*, !dbg !3130
  %25 = load i32, i32* %24, align 8, !dbg !3130, !tbaa !593
  %26 = call i32 @writeToClient(i32 %25, %struct.client* %22, i32 0) #12, !dbg !3132
  %27 = icmp eq i32 %26, -1, !dbg !3133
  br i1 %27, label %59, label %28, !dbg !3134, !llvm.loop !3127

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds i8, i8* %12, i64 528, !dbg !3137
  %30 = bitcast i8* %29 to i32*, !dbg !3137
  %31 = load i32, i32* %30, align 8, !dbg !3137, !tbaa !599
  %32 = icmp eq i32 %31, 0, !dbg !3138
  br i1 %32, label %33, label %40, !dbg !3139

; <label>:33:                                     ; preds = %28
  %34 = getelementptr inbounds i8, i8* %12, i64 112, !dbg !3140
  %35 = bitcast i8* %34 to %struct.list**, !dbg !3140
  %36 = load %struct.list*, %struct.list** %35, align 8, !dbg !3140, !tbaa !661
  %37 = getelementptr inbounds %struct.list, %struct.list* %36, i64 0, i32 5, !dbg !3140
  %38 = load i64, i64* %37, align 8, !dbg !3140, !tbaa !1069
  %39 = icmp eq i64 %38, 0, !dbg !3139
  br i1 %39, label %59, label %40, !dbg !3141

; <label>:40:                                     ; preds = %28, %33
  %41 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !3143, !tbaa !3145
  %42 = icmp eq i32 %41, 1, !dbg !3146
  %43 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 118), align 4, !dbg !3147
  %44 = icmp eq i32 %43, 1, !dbg !3148
  %45 = and i1 %42, %44, !dbg !3149
  %46 = select i1 %45, i32 6, i32 2, !dbg !3149
  %47 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3150, !tbaa !577
  %48 = load i32, i32* %24, align 8, !dbg !3152, !tbaa !593
  %49 = call i32 @aeCreateFileEvent(%struct.aeEventLoop* %47, i32 %48, i32 %46, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @sendReplyToClient, i8* nonnull %12) #10, !dbg !3153
  %50 = icmp eq i32 %49, -1, !dbg !3154
  br i1 %50, label %51, label %59, !dbg !3155

; <label>:51:                                     ; preds = %40
  %52 = load i32, i32* %14, align 8, !dbg !3159, !tbaa !922
  %53 = and i32 %52, 1280, !dbg !3160
  %54 = icmp eq i32 %53, 0, !dbg !3160
  br i1 %54, label %55, label %59, !dbg !3160

; <label>:55:                                     ; preds = %51
  %56 = or i32 %52, 1024, !dbg !3161
  store i32 %56, i32* %14, align 8, !dbg !3161, !tbaa !922
  %57 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !3162, !tbaa !1292
  %58 = call %struct.list* @listAddNodeTail(%struct.list* %57, i8* nonnull %12) #10, !dbg !3163
  br label %59, !dbg !3164

; <label>:59:                                     ; preds = %55, %51, %33, %40, %21, %9
  %60 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #10, !dbg !3115
  %61 = icmp eq %struct.listNode* %60, null, !dbg !3117
  br i1 %61, label %62, label %9, !dbg !3117

; <label>:62:                                     ; preds = %59, %0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #6, !dbg !3165
  ret i32 %6, !dbg !3166
}

; Function Attrs: noredzone
declare dso_local void @listRewind(%struct.list*, %struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listNext(%struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @resetClient(%struct.client* nocapture) local_unnamed_addr #0 !dbg !3167 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !3172
  %3 = load %struct.redisCommand*, %struct.redisCommand** %2, align 8, !dbg !3172, !tbaa !2699
  %4 = icmp eq %struct.redisCommand* %3, null, !dbg !3173
  br i1 %4, label %9, label %5, !dbg !3173

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %3, i64 0, i32 1, !dbg !3174
  %7 = load void (%struct.client*)*, void (%struct.client*)** %6, align 8, !dbg !3174, !tbaa !3175
  %8 = icmp ne void (%struct.client*)* %7, @askingCommand, !dbg !3173
  br label %9, !dbg !3173

; <label>:9:                                      ; preds = %1, %5
  %10 = phi i1 [ %8, %5 ], [ true, %1 ]
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3179
  %12 = load i32, i32* %11, align 8, !dbg !3179, !tbaa !619
  %13 = icmp sgt i32 %12, 0, !dbg !3180
  br i1 %13, label %14, label %25, !dbg !3181

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %16, !dbg !3181

; <label>:16:                                     ; preds = %16, %14
  %17 = phi i64 [ 0, %14 ], [ %21, %16 ]
  %18 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !3182, !tbaa !622
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %18, i64 %17, !dbg !3183
  %20 = load %struct.redisObject*, %struct.redisObject** %19, align 8, !dbg !3183, !tbaa !475
  tail call void @decrRefCount(%struct.redisObject* %20) #10, !dbg !3184
  %21 = add nuw nsw i64 %17, 1, !dbg !3185
  %22 = load i32, i32* %11, align 8, !dbg !3179, !tbaa !619
  %23 = sext i32 %22 to i64, !dbg !3180
  %24 = icmp slt i64 %21, %23, !dbg !3180
  br i1 %24, label %16, label %25, !dbg !3181, !llvm.loop !2693

; <label>:25:                                     ; preds = %16, %9
  store i32 0, i32* %11, align 8, !dbg !3186, !tbaa !619
  store %struct.redisCommand* null, %struct.redisCommand** %2, align 8, !dbg !3187, !tbaa !2699
  %26 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 12, !dbg !3188
  store i32 0, i32* %26, align 8, !dbg !3189, !tbaa !616
  %27 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 13, !dbg !3190
  store i32 0, i32* %27, align 4, !dbg !3191, !tbaa !627
  %28 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 14, !dbg !3192
  store i64 -1, i64* %28, align 8, !dbg !3193, !tbaa !630
  %29 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3194
  %30 = load i32, i32* %29, align 8, !dbg !3194, !tbaa !922
  %31 = and i32 %30, 8, !dbg !3196
  %32 = icmp eq i32 %31, 0, !dbg !3196
  %33 = and i1 %10, %32, !dbg !3197
  br i1 %33, label %34, label %36, !dbg !3197

; <label>:34:                                     ; preds = %25
  %35 = and i32 %30, -513, !dbg !3198
  store i32 %35, i32* %29, align 8, !dbg !3198, !tbaa !922
  br label %36, !dbg !3199

; <label>:36:                                     ; preds = %25, %34
  %37 = phi i32 [ %30, %25 ], [ %35, %34 ], !dbg !3200
  %38 = and i32 %37, -16777217, !dbg !3200
  %39 = and i32 %37, 8388608, !dbg !3201
  %40 = icmp eq i32 %39, 0, !dbg !3201
  %41 = and i32 %37, -25165825, !dbg !3203
  %42 = or i32 %41, 16777216, !dbg !3203
  %43 = select i1 %40, i32 %38, i32 %42, !dbg !3205
  store i32 %43, i32* %29, align 8, !dbg !3206, !tbaa !922
  ret void, !dbg !3207
}

; Function Attrs: noredzone
declare dso_local void @askingCommand(%struct.client*) #3

; Function Attrs: noredzone nounwind
define dso_local void @protectClient(%struct.client* nocapture) local_unnamed_addr #0 !dbg !3208 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3212
  %3 = load i32, i32* %2, align 8, !dbg !3213, !tbaa !922
  %4 = or i32 %3, 268435456, !dbg !3213
  store i32 %4, i32* %2, align 8, !dbg !3213, !tbaa !922
  %5 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3214, !tbaa !577
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !3215
  %7 = load i32, i32* %6, align 8, !dbg !3215, !tbaa !593
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %5, i32 %7, i32 1) #10, !dbg !3216
  %8 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3217, !tbaa !577
  %9 = load i32, i32* %6, align 8, !dbg !3218, !tbaa !593
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %8, i32 %9, i32 2) #10, !dbg !3219
  ret void, !dbg !3220
}

; Function Attrs: noredzone nounwind
define dso_local void @unprotectClient(%struct.client*) local_unnamed_addr #0 !dbg !3221 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3225
  %3 = load i32, i32* %2, align 8, !dbg !3225, !tbaa !922
  %4 = and i32 %3, 268435456, !dbg !3227
  %5 = icmp eq i32 %4, 0, !dbg !3227
  br i1 %5, label %37, label %6, !dbg !3228

; <label>:6:                                      ; preds = %1
  %7 = and i32 %3, -268435457, !dbg !3229
  store i32 %7, i32* %2, align 8, !dbg !3229, !tbaa !922
  %8 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3231, !tbaa !577
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !3232
  %10 = load i32, i32* %9, align 8, !dbg !3232, !tbaa !593
  %11 = bitcast %struct.client* %0 to i8*, !dbg !3233
  %12 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* %8, i32 %10, i32 1, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @readQueryFromClient, i8* %11) #10, !dbg !3234
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !3238
  %14 = load i32, i32* %13, align 8, !dbg !3238, !tbaa !599
  %15 = icmp eq i32 %14, 0, !dbg !3239
  br i1 %15, label %16, label %22, !dbg !3240

; <label>:16:                                     ; preds = %6
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !3241
  %18 = load %struct.list*, %struct.list** %17, align 8, !dbg !3241, !tbaa !661
  %19 = getelementptr inbounds %struct.list, %struct.list* %18, i64 0, i32 5, !dbg !3241
  %20 = load i64, i64* %19, align 8, !dbg !3241, !tbaa !1069
  %21 = icmp eq i64 %20, 0, !dbg !3240
  br i1 %21, label %37, label %22, !dbg !3242

; <label>:22:                                     ; preds = %6, %16
  %23 = load i32, i32* %2, align 8, !dbg !3245, !tbaa !922
  %24 = and i32 %23, 2097152, !dbg !3246
  %25 = icmp eq i32 %24, 0, !dbg !3246
  br i1 %25, label %26, label %37, !dbg !3247

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !3248
  %28 = load i32, i32* %27, align 8, !dbg !3248, !tbaa !1026
  switch i32 %28, label %37 [
    i32 0, label %33
    i32 9, label %29
  ], !dbg !3249

; <label>:29:                                     ; preds = %26
  %30 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !3250
  %31 = load i32, i32* %30, align 4, !dbg !3250, !tbaa !1029
  %32 = icmp eq i32 %31, 0, !dbg !3251
  br i1 %32, label %33, label %37, !dbg !3252

; <label>:33:                                     ; preds = %29, %26
  %34 = or i32 %23, 2097152, !dbg !3253
  store i32 %34, i32* %2, align 8, !dbg !3253, !tbaa !922
  %35 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 40), align 8, !dbg !3254, !tbaa !1035
  %36 = tail call %struct.list* @listAddNodeHead(%struct.list* %35, i8* nonnull %11) #10, !dbg !3255
  br label %37, !dbg !3256

; <label>:37:                                     ; preds = %33, %29, %26, %22, %16, %1
  ret void, !dbg !3257
}

; Function Attrs: noredzone nounwind
define dso_local i32 @processInlineBuffer(%struct.client*) local_unnamed_addr #0 !dbg !3258 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !3270
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #6, !dbg !3270
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 4, !dbg !3272
  %5 = load i8*, i8** %4, align 8, !dbg !3272, !tbaa !606
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 5, !dbg !3273
  %7 = load i64, i64* %6, align 8, !dbg !3273, !tbaa !602
  %8 = getelementptr inbounds i8, i8* %5, i64 %7, !dbg !3274
  %9 = tail call i8* @strchr(i8* %8, i32 10) #10, !dbg !3275
  %10 = icmp eq i8* %9, null, !dbg !3277
  %11 = load i8*, i8** %4, align 8, !dbg !3279, !tbaa !606
  br i1 %10, label %12, label %44, !dbg !3281

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !3286
  %14 = load i8, i8* %13, align 1, !dbg !3286, !tbaa !654
  %15 = trunc i8 %14 to i3, !dbg !3288
  switch i3 %15, label %37 [
    i3 0, label %16
    i3 1, label %19
    i3 2, label %23
    i3 3, label %28
    i3 -4, label %33
  ], !dbg !3288

; <label>:16:                                     ; preds = %12
  %17 = lshr i8 %14, 3, !dbg !3289
  %18 = zext i8 %17 to i64, !dbg !3289
  br label %37, !dbg !3290

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !3291
  %21 = load i8, i8* %20, align 1, !dbg !3292, !tbaa !654
  %22 = zext i8 %21 to i64, !dbg !3291
  br label %37, !dbg !3293

; <label>:23:                                     ; preds = %12
  %24 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !3294
  %25 = bitcast i8* %24 to i16*, !dbg !3295
  %26 = load i16, i16* %25, align 1, !dbg !3295, !tbaa !855
  %27 = zext i16 %26 to i64, !dbg !3294
  br label %37, !dbg !3296

; <label>:28:                                     ; preds = %12
  %29 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !3297
  %30 = bitcast i8* %29 to i32*, !dbg !3298
  %31 = load i32, i32* %30, align 1, !dbg !3298, !tbaa !548
  %32 = zext i32 %31 to i64, !dbg !3297
  br label %37, !dbg !3299

; <label>:33:                                     ; preds = %12
  %34 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !3300
  %35 = bitcast i8* %34 to i64*, !dbg !3301
  %36 = load i64, i64* %35, align 1, !dbg !3301, !tbaa !409
  br label %37, !dbg !3302

; <label>:37:                                     ; preds = %12, %16, %19, %23, %28, %33
  %38 = phi i64 [ %36, %33 ], [ %32, %28 ], [ %27, %23 ], [ %22, %19 ], [ %18, %16 ], [ 0, %12 ], !dbg !3303
  %39 = load i64, i64* %6, align 8, !dbg !3304, !tbaa !602
  %40 = sub i64 %38, %39, !dbg !3305
  %41 = icmp ugt i64 %40, 65536, !dbg !3306
  br i1 %41, label %42, label %153, !dbg !3307

; <label>:42:                                     ; preds = %37
  %43 = tail call i64 @strlen(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !3312
  tail call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i64 %43) #10, !dbg !3313
  tail call fastcc void @setProtocolError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0), %struct.client* nonnull %0) #12, !dbg !3314
  br label %153, !dbg !3315

; <label>:44:                                     ; preds = %1
  %45 = load i64, i64* %6, align 8, !dbg !3316, !tbaa !602
  %46 = getelementptr inbounds i8, i8* %11, i64 %45, !dbg !3317
  %47 = icmp eq i8* %9, %46, !dbg !3318
  br i1 %47, label %54, label %48, !dbg !3319

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds i8, i8* %9, i64 -1, !dbg !3320
  %50 = load i8, i8* %49, align 1, !dbg !3321, !tbaa !654
  %51 = icmp eq i8 %50, 13, !dbg !3322
  %52 = select i1 %51, i64 2, i64 1, !dbg !3323
  %53 = select i1 %51, i8* %49, i8* %9, !dbg !3323
  br label %54, !dbg !3323

; <label>:54:                                     ; preds = %48, %44
  %55 = phi i64 [ 1, %44 ], [ %52, %48 ]
  %56 = phi i8* [ %9, %44 ], [ %53, %48 ], !dbg !3324
  %57 = ptrtoint i8* %56 to i64, !dbg !3325
  %58 = ptrtoint i8* %46 to i64, !dbg !3325
  %59 = sub i64 %57, %58, !dbg !3325
  %60 = tail call i8* @sdsnewlen(i8* %46, i64 %59) #10, !dbg !3327
  %61 = call i8** @sdssplitargs(i8* %60, i32* nonnull %2) #10, !dbg !3330
  call void @sdsfree(i8* %60) #10, !dbg !3332
  %62 = icmp eq i8** %61, null, !dbg !3333
  br i1 %62, label %63, label %65, !dbg !3335

; <label>:63:                                     ; preds = %54
  %64 = call i64 @strlen(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i64 0, i64 0)) #10, !dbg !3340
  call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i64 0, i64 0), i64 %64) #10, !dbg !3341
  call fastcc void @setProtocolError(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0), %struct.client* nonnull %0) #12, !dbg !3342
  br label %153, !dbg !3343

; <label>:65:                                     ; preds = %54
  %66 = icmp eq i64 %59, 0, !dbg !3344
  br i1 %66, label %67, label %75, !dbg !3346

; <label>:67:                                     ; preds = %65
  %68 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3347
  %69 = load i32, i32* %68, align 8, !dbg !3347, !tbaa !922
  %70 = and i32 %69, 1, !dbg !3348
  %71 = icmp eq i32 %70, 0, !dbg !3348
  br i1 %71, label %75, label %72, !dbg !3349

; <label>:72:                                     ; preds = %67
  %73 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3350, !tbaa !636
  %74 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 32, !dbg !3351
  store i64 %73, i64* %74, align 8, !dbg !3352, !tbaa !3353
  br label %75, !dbg !3354

; <label>:75:                                     ; preds = %67, %72, %65
  %76 = add i64 %59, %55, !dbg !3355
  %77 = load i64, i64* %6, align 8, !dbg !3356, !tbaa !602
  %78 = add i64 %76, %77, !dbg !3356
  store i64 %78, i64* %6, align 8, !dbg !3356, !tbaa !602
  %79 = load i32, i32* %2, align 4, !dbg !3357, !tbaa !548
  %80 = icmp eq i32 %79, 0, !dbg !3357
  br i1 %80, label %81, label %83, !dbg !3359

; <label>:81:                                     ; preds = %75
  %82 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3360
  store i32 0, i32* %82, align 8, !dbg !3362, !tbaa !619
  br label %145, !dbg !3364

; <label>:83:                                     ; preds = %75
  %84 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3365
  %85 = load %struct.redisObject**, %struct.redisObject*** %84, align 8, !dbg !3365, !tbaa !622
  %86 = icmp eq %struct.redisObject** %85, null, !dbg !3368
  br i1 %86, label %90, label %87, !dbg !3369

; <label>:87:                                     ; preds = %83
  %88 = bitcast %struct.redisObject** %85 to i8*, !dbg !3370
  call void @zfree(i8* %88) #10, !dbg !3371
  %89 = load i32, i32* %2, align 4, !dbg !3372, !tbaa !548
  br label %90, !dbg !3371

; <label>:90:                                     ; preds = %87, %83
  %91 = phi i32 [ %79, %83 ], [ %89, %87 ], !dbg !3372
  %92 = sext i32 %91 to i64, !dbg !3372
  %93 = shl nsw i64 %92, 3, !dbg !3373
  %94 = call i8* @zmalloc(i64 %93) #10, !dbg !3374
  %95 = bitcast %struct.redisObject*** %84 to i8**, !dbg !3375
  store i8* %94, i8** %95, align 8, !dbg !3375, !tbaa !622
  %96 = load i32, i32* %2, align 4, !dbg !3376, !tbaa !548
  %97 = icmp sgt i32 %96, 0, !dbg !3378
  %98 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3360
  store i32 0, i32* %98, align 8, !dbg !3362, !tbaa !619
  br i1 %97, label %99, label %145, !dbg !3364

; <label>:99:                                     ; preds = %90
  %100 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br label %101, !dbg !3364

; <label>:101:                                    ; preds = %99, %140
  %102 = phi i64 [ 0, %99 ], [ %141, %140 ]
  %103 = getelementptr inbounds i8*, i8** %61, i64 %102, !dbg !3379
  %104 = load i8*, i8** %103, align 8, !dbg !3379, !tbaa !475
  %105 = getelementptr inbounds i8, i8* %104, i64 -1, !dbg !3384
  %106 = load i8, i8* %105, align 1, !dbg !3384, !tbaa !654
  %107 = trunc i8 %106 to i3, !dbg !3386
  switch i3 %107, label %139 [
    i3 0, label %108
    i3 1, label %111
    i3 2, label %115
    i3 3, label %120
    i3 -4, label %125
  ], !dbg !3386

; <label>:108:                                    ; preds = %101
  %109 = lshr i8 %106, 3, !dbg !3387
  %110 = zext i8 %109 to i64, !dbg !3387
  br label %129, !dbg !3388

; <label>:111:                                    ; preds = %101
  %112 = getelementptr inbounds i8, i8* %104, i64 -3, !dbg !3389
  %113 = load i8, i8* %112, align 1, !dbg !3390, !tbaa !654
  %114 = zext i8 %113 to i64, !dbg !3389
  br label %129, !dbg !3391

; <label>:115:                                    ; preds = %101
  %116 = getelementptr inbounds i8, i8* %104, i64 -5, !dbg !3392
  %117 = bitcast i8* %116 to i16*, !dbg !3393
  %118 = load i16, i16* %117, align 1, !dbg !3393, !tbaa !855
  %119 = zext i16 %118 to i64, !dbg !3392
  br label %129, !dbg !3394

; <label>:120:                                    ; preds = %101
  %121 = getelementptr inbounds i8, i8* %104, i64 -9, !dbg !3395
  %122 = bitcast i8* %121 to i32*, !dbg !3396
  %123 = load i32, i32* %122, align 1, !dbg !3396, !tbaa !548
  %124 = zext i32 %123 to i64, !dbg !3395
  br label %129, !dbg !3397

; <label>:125:                                    ; preds = %101
  %126 = getelementptr inbounds i8, i8* %104, i64 -17, !dbg !3398
  %127 = bitcast i8* %126 to i64*, !dbg !3399
  %128 = load i64, i64* %127, align 1, !dbg !3399, !tbaa !409
  br label %129, !dbg !3400

; <label>:129:                                    ; preds = %108, %111, %115, %120, %125
  %130 = phi i64 [ %128, %125 ], [ %124, %120 ], [ %119, %115 ], [ %114, %111 ], [ %110, %108 ], !dbg !3401
  %131 = icmp eq i64 %130, 0, !dbg !3402
  br i1 %131, label %139, label %132, !dbg !3403

; <label>:132:                                    ; preds = %129
  %133 = call %struct.redisObject* @createObject(i32 0, i8* %104) #10, !dbg !3404
  %134 = load %struct.redisObject**, %struct.redisObject*** %100, align 8, !dbg !3406, !tbaa !622
  %135 = load i32, i32* %98, align 8, !dbg !3407, !tbaa !619
  %136 = sext i32 %135 to i64, !dbg !3408
  %137 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %134, i64 %136, !dbg !3408
  store %struct.redisObject* %133, %struct.redisObject** %137, align 8, !dbg !3409, !tbaa !475
  %138 = add nsw i32 %135, 1, !dbg !3410
  store i32 %138, i32* %98, align 8, !dbg !3410, !tbaa !619
  br label %140, !dbg !3411

; <label>:139:                                    ; preds = %101, %129
  call void @sdsfree(i8* %104) #10, !dbg !3412
  br label %140

; <label>:140:                                    ; preds = %132, %139
  %141 = add nuw nsw i64 %102, 1, !dbg !3414
  %142 = load i32, i32* %2, align 4, !dbg !3376, !tbaa !548
  %143 = sext i32 %142 to i64, !dbg !3415
  %144 = icmp slt i64 %141, %143, !dbg !3415
  br i1 %144, label %101, label %145, !dbg !3364, !llvm.loop !3416

; <label>:145:                                    ; preds = %140, %81, %90
  %146 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !3418, !tbaa !475
  %147 = icmp eq %struct.uk_alloc* %146, null, !dbg !3428
  br i1 %147, label %148, label %149, !dbg !3429, !prof !544

; <label>:148:                                    ; preds = %145
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i64 0, i64 0)) #10, !dbg !3430
  call void @ukplat_terminate(i32 3) #11, !dbg !3430
  unreachable, !dbg !3430

; <label>:149:                                    ; preds = %145
  %150 = bitcast i8** %61 to i8*, !dbg !3431
  %151 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %146, i64 0, i32 5, !dbg !3435
  %152 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %151, align 8, !dbg !3435, !tbaa !475
  call void %152(%struct.uk_alloc* nonnull %146, i8* %150) #10, !dbg !3436
  br label %153, !dbg !3437

; <label>:153:                                    ; preds = %37, %42, %149, %63
  %154 = phi i32 [ -1, %63 ], [ 0, %149 ], [ -1, %42 ], [ -1, %37 ], !dbg !3324
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #6, !dbg !3438
  ret i32 %154, !dbg !3438
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @setProtocolError(i8*, %struct.client* nocapture) unnamed_addr #0 !dbg !3439 {
  %3 = alloca [256 x i8], align 16
  %4 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 100), align 8, !dbg !3455, !tbaa !3456
  %5 = icmp slt i32 %4, 2, !dbg !3457
  br i1 %5, label %6, label %93, !dbg !3458

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @sdsempty() #10, !dbg !3459
  %8 = tail call i8* @catClientInfoString(i8* %7, %struct.client* %1) #12, !dbg !3460
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !3462
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %9) #6, !dbg !3462
  %10 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 4, !dbg !3464
  %11 = load i8*, i8** %10, align 8, !dbg !3464, !tbaa !606
  %12 = getelementptr inbounds i8, i8* %11, i64 -1, !dbg !3468
  %13 = load i8, i8* %12, align 1, !dbg !3468, !tbaa !654
  %14 = trunc i8 %13 to i3, !dbg !3470
  switch i3 %14, label %36 [
    i3 0, label %15
    i3 1, label %18
    i3 2, label %22
    i3 3, label %27
    i3 -4, label %32
  ], !dbg !3470

; <label>:15:                                     ; preds = %6
  %16 = lshr i8 %13, 3, !dbg !3471
  %17 = zext i8 %16 to i64, !dbg !3471
  br label %36, !dbg !3472

; <label>:18:                                     ; preds = %6
  %19 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !3473
  %20 = load i8, i8* %19, align 1, !dbg !3474, !tbaa !654
  %21 = zext i8 %20 to i64, !dbg !3473
  br label %36, !dbg !3475

; <label>:22:                                     ; preds = %6
  %23 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !3476
  %24 = bitcast i8* %23 to i16*, !dbg !3477
  %25 = load i16, i16* %24, align 1, !dbg !3477, !tbaa !855
  %26 = zext i16 %25 to i64, !dbg !3476
  br label %36, !dbg !3478

; <label>:27:                                     ; preds = %6
  %28 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !3479
  %29 = bitcast i8* %28 to i32*, !dbg !3480
  %30 = load i32, i32* %29, align 1, !dbg !3480, !tbaa !548
  %31 = zext i32 %30 to i64, !dbg !3479
  br label %36, !dbg !3481

; <label>:32:                                     ; preds = %6
  %33 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !3482
  %34 = bitcast i8* %33 to i64*, !dbg !3483
  %35 = load i64, i64* %34, align 1, !dbg !3483, !tbaa !409
  br label %36, !dbg !3484

; <label>:36:                                     ; preds = %6, %15, %18, %22, %27, %32
  %37 = phi i64 [ %35, %32 ], [ %31, %27 ], [ %26, %22 ], [ %21, %18 ], [ %17, %15 ], [ 0, %6 ], !dbg !3485
  %38 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 5, !dbg !3486
  %39 = load i64, i64* %38, align 8, !dbg !3486, !tbaa !602
  %40 = sub i64 %37, %39, !dbg !3487
  %41 = icmp ult i64 %40, 128, !dbg !3488
  %42 = getelementptr inbounds i8, i8* %11, i64 %39, !dbg !3489
  br i1 %41, label %43, label %45, !dbg !3491

; <label>:43:                                     ; preds = %36
  %44 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %9, i64 256, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.104, i64 0, i64 0), i8* %42) #10, !dbg !3492
  br label %74, !dbg !3494

; <label>:45:                                     ; preds = %36
  switch i3 %14, label %67 [
    i3 0, label %46
    i3 1, label %49
    i3 2, label %53
    i3 3, label %58
    i3 -4, label %63
  ], !dbg !3498

; <label>:46:                                     ; preds = %45
  %47 = lshr i8 %13, 3, !dbg !3499
  %48 = zext i8 %47 to i64, !dbg !3499
  br label %67, !dbg !3503

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds i8, i8* %11, i64 -3, !dbg !3504
  %51 = load i8, i8* %50, align 1, !dbg !3505, !tbaa !654
  %52 = zext i8 %51 to i64, !dbg !3504
  br label %67, !dbg !3506

; <label>:53:                                     ; preds = %45
  %54 = getelementptr inbounds i8, i8* %11, i64 -5, !dbg !3507
  %55 = bitcast i8* %54 to i16*, !dbg !3508
  %56 = load i16, i16* %55, align 1, !dbg !3508, !tbaa !855
  %57 = zext i16 %56 to i64, !dbg !3507
  br label %67, !dbg !3509

; <label>:58:                                     ; preds = %45
  %59 = getelementptr inbounds i8, i8* %11, i64 -9, !dbg !3510
  %60 = bitcast i8* %59 to i32*, !dbg !3511
  %61 = load i32, i32* %60, align 1, !dbg !3511, !tbaa !548
  %62 = zext i32 %61 to i64, !dbg !3510
  br label %67, !dbg !3512

; <label>:63:                                     ; preds = %45
  %64 = getelementptr inbounds i8, i8* %11, i64 -17, !dbg !3513
  %65 = bitcast i8* %64 to i64*, !dbg !3514
  %66 = load i64, i64* %65, align 1, !dbg !3514, !tbaa !409
  br label %67, !dbg !3515

; <label>:67:                                     ; preds = %45, %46, %49, %53, %58, %63
  %68 = phi i64 [ %66, %63 ], [ %62, %58 ], [ %57, %53 ], [ %52, %49 ], [ %48, %46 ], [ 0, %45 ]
  %69 = sub i64 -128, %39, !dbg !3516
  %70 = add i64 %69, %68, !dbg !3517
  %71 = getelementptr inbounds i8, i8* %11, i64 %68, !dbg !3518
  %72 = getelementptr inbounds i8, i8* %71, i64 -64, !dbg !3519
  %73 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %9, i64 256, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.105, i64 0, i64 0), i32 64, i8* %42, i64 %70, i32 64, i8* nonnull %72) #10, !dbg !3520
  br label %74

; <label>:74:                                     ; preds = %67, %43
  %75 = load i8, i8* %9, align 16, !dbg !3522, !tbaa !654
  %76 = icmp eq i8 %75, 0, !dbg !3523
  br i1 %76, label %92, label %77, !dbg !3524

; <label>:77:                                     ; preds = %74, %88
  %78 = phi i8* [ %89, %88 ], [ %9, %74 ]
  %79 = call i8* @__locale_ctype_ptr() #10, !dbg !3525
  %80 = getelementptr inbounds i8, i8* %79, i64 1, !dbg !3525
  %81 = load i8, i8* %78, align 1, !dbg !3525, !tbaa !654
  %82 = sext i8 %81 to i64, !dbg !3525
  %83 = getelementptr inbounds i8, i8* %80, i64 %82, !dbg !3525
  %84 = load i8, i8* %83, align 1, !dbg !3525, !tbaa !654
  %85 = and i8 %84, -105, !dbg !3525
  %86 = icmp eq i8 %85, 0, !dbg !3525
  br i1 %86, label %87, label %88, !dbg !3528

; <label>:87:                                     ; preds = %77
  store i8 46, i8* %78, align 1, !dbg !3529, !tbaa !654
  br label %88, !dbg !3530

; <label>:88:                                     ; preds = %77, %87
  %89 = getelementptr inbounds i8, i8* %78, i64 1, !dbg !3531
  %90 = load i8, i8* %89, align 1, !dbg !3522, !tbaa !654
  %91 = icmp eq i8 %90, 0, !dbg !3523
  br i1 %91, label %92, label %77, !dbg !3524, !llvm.loop !3532

; <label>:92:                                     ; preds = %88, %74
  call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.106, i64 0, i64 0), i8* %0, i8* %8, i8* nonnull %9) #10, !dbg !3534
  call void @sdsfree(i8* %8) #10, !dbg !3535
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %9) #6, !dbg !3536
  br label %93, !dbg !3537

; <label>:93:                                     ; preds = %92, %2
  %94 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 21, !dbg !3538
  %95 = load i32, i32* %94, align 8, !dbg !3539, !tbaa !922
  %96 = or i32 %95, 64, !dbg !3539
  store i32 %96, i32* %94, align 8, !dbg !3539, !tbaa !922
  ret void, !dbg !3540
}

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8** @sdssplitargs(i8*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @processMultibulkBuffer(%struct.client*) local_unnamed_addr #0 !dbg !3541 {
  %2 = alloca i64, align 8
  %3 = bitcast i64* %2 to i8*, !dbg !3549
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #6, !dbg !3549
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 13, !dbg !3550
  %5 = load i32, i32* %4, align 4, !dbg !3550, !tbaa !627
  %6 = icmp eq i32 %5, 0, !dbg !3552
  br i1 %6, label %7, label %125, !dbg !3553

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !3554
  %9 = load i32, i32* %8, align 8, !dbg !3554, !tbaa !619
  %10 = icmp eq i32 %9, 0, !dbg !3554
  br i1 %10, label %12, label %11, !dbg !3554

; <label>:11:                                     ; preds = %7
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1298) #10, !dbg !3554
  tail call void @_exit(i32 1) #11, !dbg !3554
  unreachable, !dbg !3554

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 4, !dbg !3556
  %14 = load i8*, i8** %13, align 8, !dbg !3556, !tbaa !606
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 5, !dbg !3557
  %16 = load i64, i64* %15, align 8, !dbg !3557, !tbaa !602
  %17 = getelementptr inbounds i8, i8* %14, i64 %16, !dbg !3558
  %18 = tail call i8* @strchr(i8* %17, i32 13) #10, !dbg !3559
  %19 = icmp eq i8* %18, null, !dbg !3560
  %20 = load i8*, i8** %13, align 8, !dbg !3562, !tbaa !606
  br i1 %19, label %21, label %53, !dbg !3564

; <label>:21:                                     ; preds = %12
  %22 = getelementptr inbounds i8, i8* %20, i64 -1, !dbg !3569
  %23 = load i8, i8* %22, align 1, !dbg !3569, !tbaa !654
  %24 = trunc i8 %23 to i3, !dbg !3571
  switch i3 %24, label %46 [
    i3 0, label %25
    i3 1, label %28
    i3 2, label %32
    i3 3, label %37
    i3 -4, label %42
  ], !dbg !3571

; <label>:25:                                     ; preds = %21
  %26 = lshr i8 %23, 3, !dbg !3572
  %27 = zext i8 %26 to i64, !dbg !3572
  br label %46, !dbg !3573

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds i8, i8* %20, i64 -3, !dbg !3574
  %30 = load i8, i8* %29, align 1, !dbg !3575, !tbaa !654
  %31 = zext i8 %30 to i64, !dbg !3574
  br label %46, !dbg !3576

; <label>:32:                                     ; preds = %21
  %33 = getelementptr inbounds i8, i8* %20, i64 -5, !dbg !3577
  %34 = bitcast i8* %33 to i16*, !dbg !3578
  %35 = load i16, i16* %34, align 1, !dbg !3578, !tbaa !855
  %36 = zext i16 %35 to i64, !dbg !3577
  br label %46, !dbg !3579

; <label>:37:                                     ; preds = %21
  %38 = getelementptr inbounds i8, i8* %20, i64 -9, !dbg !3580
  %39 = bitcast i8* %38 to i32*, !dbg !3581
  %40 = load i32, i32* %39, align 1, !dbg !3581, !tbaa !548
  %41 = zext i32 %40 to i64, !dbg !3580
  br label %46, !dbg !3582

; <label>:42:                                     ; preds = %21
  %43 = getelementptr inbounds i8, i8* %20, i64 -17, !dbg !3583
  %44 = bitcast i8* %43 to i64*, !dbg !3584
  %45 = load i64, i64* %44, align 1, !dbg !3584, !tbaa !409
  br label %46, !dbg !3585

; <label>:46:                                     ; preds = %21, %25, %28, %32, %37, %42
  %47 = phi i64 [ %45, %42 ], [ %41, %37 ], [ %36, %32 ], [ %31, %28 ], [ %27, %25 ], [ 0, %21 ], !dbg !3586
  %48 = load i64, i64* %15, align 8, !dbg !3587, !tbaa !602
  %49 = sub i64 %47, %48, !dbg !3588
  %50 = icmp ugt i64 %49, 65536, !dbg !3589
  br i1 %50, label %51, label %372, !dbg !3590

; <label>:51:                                     ; preds = %46
  %52 = tail call i64 @strlen(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0)) #10, !dbg !3595
  tail call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0), i64 %52) #10, !dbg !3596
  tail call fastcc void @setProtocolError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0), %struct.client* nonnull %0) #12, !dbg !3597
  br label %372, !dbg !3598

; <label>:53:                                     ; preds = %12
  %54 = load i64, i64* %15, align 8, !dbg !3599, !tbaa !602
  %55 = getelementptr inbounds i8, i8* %20, i64 %54, !dbg !3600
  %56 = ptrtoint i8* %18 to i64, !dbg !3601
  %57 = ptrtoint i8* %55 to i64, !dbg !3601
  %58 = sub i64 %56, %57, !dbg !3601
  %59 = getelementptr inbounds i8, i8* %20, i64 -1, !dbg !3604
  %60 = load i8, i8* %59, align 1, !dbg !3604, !tbaa !654
  %61 = trunc i8 %60 to i3, !dbg !3606
  switch i3 %61, label %83 [
    i3 0, label %62
    i3 1, label %65
    i3 2, label %69
    i3 3, label %74
    i3 -4, label %79
  ], !dbg !3606

; <label>:62:                                     ; preds = %53
  %63 = lshr i8 %60, 3, !dbg !3607
  %64 = zext i8 %63 to i64, !dbg !3607
  br label %83, !dbg !3608

; <label>:65:                                     ; preds = %53
  %66 = getelementptr inbounds i8, i8* %20, i64 -3, !dbg !3609
  %67 = load i8, i8* %66, align 1, !dbg !3610, !tbaa !654
  %68 = zext i8 %67 to i64, !dbg !3609
  br label %83, !dbg !3611

; <label>:69:                                     ; preds = %53
  %70 = getelementptr inbounds i8, i8* %20, i64 -5, !dbg !3612
  %71 = bitcast i8* %70 to i16*, !dbg !3613
  %72 = load i16, i16* %71, align 1, !dbg !3613, !tbaa !855
  %73 = zext i16 %72 to i64, !dbg !3612
  br label %83, !dbg !3614

; <label>:74:                                     ; preds = %53
  %75 = getelementptr inbounds i8, i8* %20, i64 -9, !dbg !3615
  %76 = bitcast i8* %75 to i32*, !dbg !3616
  %77 = load i32, i32* %76, align 1, !dbg !3616, !tbaa !548
  %78 = zext i32 %77 to i64, !dbg !3615
  br label %83, !dbg !3617

; <label>:79:                                     ; preds = %53
  %80 = getelementptr inbounds i8, i8* %20, i64 -17, !dbg !3618
  %81 = bitcast i8* %80 to i64*, !dbg !3619
  %82 = load i64, i64* %81, align 1, !dbg !3619, !tbaa !409
  br label %83, !dbg !3620

; <label>:83:                                     ; preds = %53, %62, %65, %69, %74, %79
  %84 = phi i64 [ %82, %79 ], [ %78, %74 ], [ %73, %69 ], [ %68, %65 ], [ %64, %62 ], [ 0, %53 ], !dbg !3621
  %85 = sub i64 -2, %54, !dbg !3622
  %86 = add i64 %85, %84, !dbg !3623
  %87 = icmp sgt i64 %58, %86, !dbg !3624
  br i1 %87, label %372, label %88, !dbg !3625

; <label>:88:                                     ; preds = %83
  %89 = load i8, i8* %55, align 1, !dbg !3626, !tbaa !654
  %90 = icmp eq i8 %89, 42, !dbg !3626
  br i1 %90, label %92, label %91, !dbg !3626

; <label>:91:                                     ; preds = %88
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1316) #10, !dbg !3626
  tail call void @_exit(i32 1) #11, !dbg !3626
  unreachable, !dbg !3626

; <label>:92:                                     ; preds = %88
  %93 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !3627
  %94 = getelementptr inbounds i8, i8* %93, i64 %54, !dbg !3628
  %95 = ptrtoint i8* %94 to i64, !dbg !3629
  %96 = sub i64 %56, %95, !dbg !3629
  %97 = call i32 @string2ll(i8* nonnull %94, i64 %96, i64* nonnull %2) #10, !dbg !3631
  %98 = icmp eq i32 %97, 0, !dbg !3633
  %99 = load i64, i64* %2, align 8, !dbg !3635
  %100 = icmp sgt i64 %99, 1048576, !dbg !3636
  %101 = or i1 %98, %100, !dbg !3637
  br i1 %101, label %102, label %104, !dbg !3637

; <label>:102:                                    ; preds = %92
  %103 = call i64 @strlen(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i64 0, i64 0)) #10, !dbg !3642
  call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i64 0, i64 0), i64 %103) #10, !dbg !3643
  call fastcc void @setProtocolError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), %struct.client* nonnull %0) #12, !dbg !3644
  br label %372, !dbg !3645

; <label>:104:                                    ; preds = %92
  %105 = bitcast i8** %13 to i64*, !dbg !3646
  %106 = load i64, i64* %105, align 8, !dbg !3646, !tbaa !606
  %107 = add i64 %56, 2, !dbg !3647
  %108 = sub i64 %107, %106, !dbg !3648
  store i64 %108, i64* %15, align 8, !dbg !3649, !tbaa !602
  %109 = icmp slt i64 %99, 1, !dbg !3650
  br i1 %109, label %372, label %110, !dbg !3652

; <label>:110:                                    ; preds = %104
  %111 = trunc i64 %99 to i32, !dbg !3653
  store i32 %111, i32* %4, align 4, !dbg !3654, !tbaa !627
  %112 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3655
  %113 = load %struct.redisObject**, %struct.redisObject*** %112, align 8, !dbg !3655, !tbaa !622
  %114 = icmp eq %struct.redisObject** %113, null, !dbg !3657
  br i1 %114, label %118, label %115, !dbg !3658

; <label>:115:                                    ; preds = %110
  %116 = bitcast %struct.redisObject** %113 to i8*, !dbg !3659
  call void @zfree(i8* %116) #10, !dbg !3660
  %117 = load i32, i32* %4, align 4, !dbg !3661, !tbaa !627
  br label %118, !dbg !3660

; <label>:118:                                    ; preds = %110, %115
  %119 = phi i32 [ %111, %110 ], [ %117, %115 ], !dbg !3661
  %120 = sext i32 %119 to i64, !dbg !3662
  %121 = shl nsw i64 %120, 3, !dbg !3663
  %122 = call i8* @zmalloc(i64 %121) #10, !dbg !3664
  %123 = bitcast %struct.redisObject*** %112 to i8**, !dbg !3665
  store i8* %122, i8** %123, align 8, !dbg !3665, !tbaa !622
  %124 = load i32, i32* %4, align 4, !dbg !3666, !tbaa !627
  br label %125, !dbg !3667

; <label>:125:                                    ; preds = %118, %1
  %126 = phi i32 [ %124, %118 ], [ %5, %1 ], !dbg !3666
  %127 = icmp sgt i32 %126, 0, !dbg !3666
  br i1 %127, label %129, label %128, !dbg !3666

; <label>:128:                                    ; preds = %125
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1335) #10, !dbg !3666
  call void @_exit(i32 1) #11, !dbg !3666
  unreachable, !dbg !3666

; <label>:129:                                    ; preds = %125
  %130 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 14
  %131 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 4
  %132 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 5
  %133 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %134 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8
  %135 = bitcast i8** %131 to i64*
  %136 = load i64, i64* %130, align 8, !dbg !3668, !tbaa !630
  br label %137, !dbg !3671

; <label>:137:                                    ; preds = %129, %364
  %138 = phi i64 [ %136, %129 ], [ -1, %364 ], !dbg !3668
  %139 = icmp eq i64 %138, -1, !dbg !3672
  %140 = load i8*, i8** %131, align 8, !dbg !3673, !tbaa !606
  br i1 %139, label %141, label %278, !dbg !3675

; <label>:141:                                    ; preds = %137
  %142 = load i64, i64* %132, align 8, !dbg !3676, !tbaa !602
  %143 = getelementptr inbounds i8, i8* %140, i64 %142, !dbg !3678
  %144 = call i8* @strchr(i8* %143, i32 13) #10, !dbg !3679
  %145 = icmp eq i8* %144, null, !dbg !3680
  %146 = load i8*, i8** %131, align 8, !dbg !3682, !tbaa !606
  br i1 %145, label %147, label %179, !dbg !3684

; <label>:147:                                    ; preds = %141
  %148 = getelementptr inbounds i8, i8* %146, i64 -1, !dbg !3689
  %149 = load i8, i8* %148, align 1, !dbg !3689, !tbaa !654
  %150 = trunc i8 %149 to i3, !dbg !3691
  switch i3 %150, label %172 [
    i3 0, label %151
    i3 1, label %154
    i3 2, label %158
    i3 3, label %163
    i3 -4, label %168
  ], !dbg !3691

; <label>:151:                                    ; preds = %147
  %152 = lshr i8 %149, 3, !dbg !3692
  %153 = zext i8 %152 to i64, !dbg !3692
  br label %172, !dbg !3693

; <label>:154:                                    ; preds = %147
  %155 = getelementptr inbounds i8, i8* %146, i64 -3, !dbg !3694
  %156 = load i8, i8* %155, align 1, !dbg !3695, !tbaa !654
  %157 = zext i8 %156 to i64, !dbg !3694
  br label %172, !dbg !3696

; <label>:158:                                    ; preds = %147
  %159 = getelementptr inbounds i8, i8* %146, i64 -5, !dbg !3697
  %160 = bitcast i8* %159 to i16*, !dbg !3698
  %161 = load i16, i16* %160, align 1, !dbg !3698, !tbaa !855
  %162 = zext i16 %161 to i64, !dbg !3697
  br label %172, !dbg !3699

; <label>:163:                                    ; preds = %147
  %164 = getelementptr inbounds i8, i8* %146, i64 -9, !dbg !3700
  %165 = bitcast i8* %164 to i32*, !dbg !3701
  %166 = load i32, i32* %165, align 1, !dbg !3701, !tbaa !548
  %167 = zext i32 %166 to i64, !dbg !3700
  br label %172, !dbg !3702

; <label>:168:                                    ; preds = %147
  %169 = getelementptr inbounds i8, i8* %146, i64 -17, !dbg !3703
  %170 = bitcast i8* %169 to i64*, !dbg !3704
  %171 = load i64, i64* %170, align 1, !dbg !3704, !tbaa !409
  br label %172, !dbg !3705

; <label>:172:                                    ; preds = %147, %151, %154, %158, %163, %168
  %173 = phi i64 [ %171, %168 ], [ %167, %163 ], [ %162, %158 ], [ %157, %154 ], [ %153, %151 ], [ 0, %147 ], !dbg !3706
  %174 = load i64, i64* %132, align 8, !dbg !3707, !tbaa !602
  %175 = sub i64 %173, %174, !dbg !3708
  %176 = icmp ugt i64 %175, 65536, !dbg !3709
  br i1 %176, label %177, label %368, !dbg !3710

; <label>:177:                                    ; preds = %172
  %178 = call i64 @strlen(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i64 0, i64 0)) #10, !dbg !3715
  call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.37, i64 0, i64 0), i64 %178) #10, !dbg !3716
  call fastcc void @setProtocolError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i64 0, i64 0), %struct.client* nonnull %0) #12, !dbg !3717
  br label %372, !dbg !3718

; <label>:179:                                    ; preds = %141
  %180 = load i64, i64* %132, align 8, !dbg !3719, !tbaa !602
  %181 = getelementptr inbounds i8, i8* %146, i64 %180, !dbg !3720
  %182 = ptrtoint i8* %144 to i64, !dbg !3721
  %183 = ptrtoint i8* %181 to i64, !dbg !3721
  %184 = sub i64 %182, %183, !dbg !3721
  %185 = getelementptr inbounds i8, i8* %146, i64 -1, !dbg !3724
  %186 = load i8, i8* %185, align 1, !dbg !3724, !tbaa !654
  %187 = trunc i8 %186 to i3, !dbg !3726
  switch i3 %187, label %209 [
    i3 0, label %188
    i3 1, label %191
    i3 2, label %195
    i3 3, label %200
    i3 -4, label %205
  ], !dbg !3726

; <label>:188:                                    ; preds = %179
  %189 = lshr i8 %186, 3, !dbg !3727
  %190 = zext i8 %189 to i64, !dbg !3727
  br label %209, !dbg !3728

; <label>:191:                                    ; preds = %179
  %192 = getelementptr inbounds i8, i8* %146, i64 -3, !dbg !3729
  %193 = load i8, i8* %192, align 1, !dbg !3730, !tbaa !654
  %194 = zext i8 %193 to i64, !dbg !3729
  br label %209, !dbg !3731

; <label>:195:                                    ; preds = %179
  %196 = getelementptr inbounds i8, i8* %146, i64 -5, !dbg !3732
  %197 = bitcast i8* %196 to i16*, !dbg !3733
  %198 = load i16, i16* %197, align 1, !dbg !3733, !tbaa !855
  %199 = zext i16 %198 to i64, !dbg !3732
  br label %209, !dbg !3734

; <label>:200:                                    ; preds = %179
  %201 = getelementptr inbounds i8, i8* %146, i64 -9, !dbg !3735
  %202 = bitcast i8* %201 to i32*, !dbg !3736
  %203 = load i32, i32* %202, align 1, !dbg !3736, !tbaa !548
  %204 = zext i32 %203 to i64, !dbg !3735
  br label %209, !dbg !3737

; <label>:205:                                    ; preds = %179
  %206 = getelementptr inbounds i8, i8* %146, i64 -17, !dbg !3738
  %207 = bitcast i8* %206 to i64*, !dbg !3739
  %208 = load i64, i64* %207, align 1, !dbg !3739, !tbaa !409
  br label %209, !dbg !3740

; <label>:209:                                    ; preds = %179, %188, %191, %195, %200, %205
  %210 = phi i64 [ %208, %205 ], [ %204, %200 ], [ %199, %195 ], [ %194, %191 ], [ %190, %188 ], [ 0, %179 ], !dbg !3741
  %211 = sub i64 -2, %180, !dbg !3742
  %212 = add i64 %211, %210, !dbg !3743
  %213 = icmp sgt i64 %184, %212, !dbg !3744
  br i1 %213, label %368, label %214, !dbg !3745

; <label>:214:                                    ; preds = %209
  %215 = load i8, i8* %181, align 1, !dbg !3746, !tbaa !654
  %216 = icmp eq i8 %215, 36, !dbg !3748
  br i1 %216, label %219, label %217, !dbg !3749

; <label>:217:                                    ; preds = %214
  %218 = sext i8 %215 to i32, !dbg !3746
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i32 %218) #12, !dbg !3750
  call fastcc void @setProtocolError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i64 0, i64 0), %struct.client* nonnull %0) #12, !dbg !3752
  br label %372, !dbg !3753

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %181, i64 1, !dbg !3754
  %221 = ptrtoint i8* %220 to i64, !dbg !3755
  %222 = sub i64 %182, %221, !dbg !3755
  %223 = call i32 @string2ll(i8* nonnull %220, i64 %222, i64* nonnull %2) #10, !dbg !3756
  %224 = icmp eq i32 %223, 0, !dbg !3757
  %225 = load i64, i64* %2, align 8, !dbg !3759
  %226 = icmp slt i64 %225, 0, !dbg !3760
  %227 = or i1 %224, %226, !dbg !3761
  %228 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 232), align 8, !dbg !3762
  %229 = icmp sgt i64 %225, %228, !dbg !3763
  %230 = or i1 %227, %229, !dbg !3761
  br i1 %230, label %231, label %233, !dbg !3761

; <label>:231:                                    ; preds = %219
  %232 = call i64 @strlen(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i64 0, i64 0)) #10, !dbg !3768
  call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i64 0, i64 0), i64 %232) #10, !dbg !3769
  call fastcc void @setProtocolError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i64 0, i64 0), %struct.client* nonnull %0) #12, !dbg !3770
  br label %372, !dbg !3771

; <label>:233:                                    ; preds = %219
  %234 = load i64, i64* %135, align 8, !dbg !3772, !tbaa !606
  %235 = sub i64 %182, %234, !dbg !3773
  %236 = add nsw i64 %235, 2, !dbg !3774
  store i64 %236, i64* %132, align 8, !dbg !3775, !tbaa !602
  %237 = icmp sgt i64 %225, 32767, !dbg !3776
  %238 = inttoptr i64 %234 to i8*, !dbg !3778
  br i1 %237, label %239, label %275, !dbg !3778

; <label>:239:                                    ; preds = %233
  %240 = getelementptr inbounds i8, i8* %238, i64 -1, !dbg !3783
  %241 = load i8, i8* %240, align 1, !dbg !3783, !tbaa !654
  %242 = trunc i8 %241 to i3, !dbg !3785
  switch i3 %242, label %264 [
    i3 0, label %243
    i3 1, label %246
    i3 2, label %250
    i3 3, label %255
    i3 -4, label %260
  ], !dbg !3785

; <label>:243:                                    ; preds = %239
  %244 = lshr i8 %241, 3, !dbg !3786
  %245 = zext i8 %244 to i64, !dbg !3786
  br label %264, !dbg !3787

; <label>:246:                                    ; preds = %239
  %247 = getelementptr inbounds i8, i8* %238, i64 -3, !dbg !3788
  %248 = load i8, i8* %247, align 1, !dbg !3789, !tbaa !654
  %249 = zext i8 %248 to i64, !dbg !3788
  br label %264, !dbg !3790

; <label>:250:                                    ; preds = %239
  %251 = getelementptr inbounds i8, i8* %238, i64 -5, !dbg !3791
  %252 = bitcast i8* %251 to i16*, !dbg !3792
  %253 = load i16, i16* %252, align 1, !dbg !3792, !tbaa !855
  %254 = zext i16 %253 to i64, !dbg !3791
  br label %264, !dbg !3793

; <label>:255:                                    ; preds = %239
  %256 = getelementptr inbounds i8, i8* %238, i64 -9, !dbg !3794
  %257 = bitcast i8* %256 to i32*, !dbg !3795
  %258 = load i32, i32* %257, align 1, !dbg !3795, !tbaa !548
  %259 = zext i32 %258 to i64, !dbg !3794
  br label %264, !dbg !3796

; <label>:260:                                    ; preds = %239
  %261 = getelementptr inbounds i8, i8* %238, i64 -17, !dbg !3797
  %262 = bitcast i8* %261 to i64*, !dbg !3798
  %263 = load i64, i64* %262, align 1, !dbg !3798, !tbaa !409
  br label %264, !dbg !3799

; <label>:264:                                    ; preds = %239, %243, %246, %250, %255, %260
  %265 = phi i64 [ %263, %260 ], [ %259, %255 ], [ %254, %250 ], [ %249, %246 ], [ %245, %243 ], [ 0, %239 ], !dbg !3800
  %266 = sub i64 %265, %236, !dbg !3801
  %267 = add i64 %225, 2, !dbg !3802
  %268 = icmp ugt i64 %266, %267, !dbg !3803
  br i1 %268, label %275, label %269, !dbg !3804

; <label>:269:                                    ; preds = %264
  call void @sdsrange(i8* nonnull %238, i64 %236, i64 -1) #10, !dbg !3805
  store i64 0, i64* %132, align 8, !dbg !3807, !tbaa !602
  %270 = load i8*, i8** %131, align 8, !dbg !3808, !tbaa !606
  %271 = load i64, i64* %2, align 8, !dbg !3809, !tbaa !646
  %272 = add nsw i64 %271, 2, !dbg !3810
  %273 = call i8* @sdsMakeRoomFor(i8* %270, i64 %272) #10, !dbg !3811
  store i8* %273, i8** %131, align 8, !dbg !3812, !tbaa !606
  %274 = load i64, i64* %2, align 8, !dbg !3813, !tbaa !646
  br label %275, !dbg !3814

; <label>:275:                                    ; preds = %264, %269, %233
  %276 = phi i8* [ %238, %264 ], [ %273, %269 ], [ %238, %233 ]
  %277 = phi i64 [ %225, %264 ], [ %274, %269 ], [ %225, %233 ], !dbg !3813
  store i64 %277, i64* %130, align 8, !dbg !3815, !tbaa !630
  br label %278, !dbg !3816

; <label>:278:                                    ; preds = %137, %275
  %279 = phi i64 [ %277, %275 ], [ %138, %137 ]
  %280 = phi i8* [ %276, %275 ], [ %140, %137 ], !dbg !3817
  %281 = getelementptr inbounds i8, i8* %280, i64 -1, !dbg !3820
  %282 = load i8, i8* %281, align 1, !dbg !3820, !tbaa !654
  %283 = trunc i8 %282 to i3, !dbg !3822
  switch i3 %283, label %305 [
    i3 0, label %284
    i3 1, label %287
    i3 2, label %291
    i3 3, label %296
    i3 -4, label %301
  ], !dbg !3822

; <label>:284:                                    ; preds = %278
  %285 = lshr i8 %282, 3, !dbg !3823
  %286 = zext i8 %285 to i64, !dbg !3823
  br label %305, !dbg !3824

; <label>:287:                                    ; preds = %278
  %288 = getelementptr inbounds i8, i8* %280, i64 -3, !dbg !3825
  %289 = load i8, i8* %288, align 1, !dbg !3826, !tbaa !654
  %290 = zext i8 %289 to i64, !dbg !3825
  br label %305, !dbg !3827

; <label>:291:                                    ; preds = %278
  %292 = getelementptr inbounds i8, i8* %280, i64 -5, !dbg !3828
  %293 = bitcast i8* %292 to i16*, !dbg !3829
  %294 = load i16, i16* %293, align 1, !dbg !3829, !tbaa !855
  %295 = zext i16 %294 to i64, !dbg !3828
  br label %305, !dbg !3830

; <label>:296:                                    ; preds = %278
  %297 = getelementptr inbounds i8, i8* %280, i64 -9, !dbg !3831
  %298 = bitcast i8* %297 to i32*, !dbg !3832
  %299 = load i32, i32* %298, align 1, !dbg !3832, !tbaa !548
  %300 = zext i32 %299 to i64, !dbg !3831
  br label %305, !dbg !3833

; <label>:301:                                    ; preds = %278
  %302 = getelementptr inbounds i8, i8* %280, i64 -17, !dbg !3834
  %303 = bitcast i8* %302 to i64*, !dbg !3835
  %304 = load i64, i64* %303, align 1, !dbg !3835, !tbaa !409
  br label %305, !dbg !3836

; <label>:305:                                    ; preds = %278, %284, %287, %291, %296, %301
  %306 = phi i64 [ %304, %301 ], [ %300, %296 ], [ %295, %291 ], [ %290, %287 ], [ %286, %284 ], [ 0, %278 ], !dbg !3837
  %307 = load i64, i64* %132, align 8, !dbg !3838, !tbaa !602
  %308 = sub i64 %306, %307, !dbg !3839
  %309 = add nsw i64 %279, 2, !dbg !3840
  %310 = icmp ult i64 %308, %309, !dbg !3841
  br i1 %310, label %368, label %311, !dbg !3842

; <label>:311:                                    ; preds = %305
  %312 = icmp eq i64 %307, 0, !dbg !3843
  %313 = icmp sgt i64 %279, 32767, !dbg !3846
  %314 = and i1 %312, %313, !dbg !3847
  br i1 %314, label %315, label %352, !dbg !3847

; <label>:315:                                    ; preds = %311
  switch i3 %283, label %337 [
    i3 0, label %316
    i3 1, label %319
    i3 2, label %323
    i3 3, label %328
    i3 -4, label %333
  ], !dbg !3851

; <label>:316:                                    ; preds = %315
  %317 = lshr i8 %282, 3, !dbg !3852
  %318 = zext i8 %317 to i64, !dbg !3852
  br label %337, !dbg !3853

; <label>:319:                                    ; preds = %315
  %320 = getelementptr inbounds i8, i8* %280, i64 -3, !dbg !3854
  %321 = load i8, i8* %320, align 1, !dbg !3855, !tbaa !654
  %322 = zext i8 %321 to i64, !dbg !3854
  br label %337, !dbg !3856

; <label>:323:                                    ; preds = %315
  %324 = getelementptr inbounds i8, i8* %280, i64 -5, !dbg !3857
  %325 = bitcast i8* %324 to i16*, !dbg !3858
  %326 = load i16, i16* %325, align 1, !dbg !3858, !tbaa !855
  %327 = zext i16 %326 to i64, !dbg !3857
  br label %337, !dbg !3859

; <label>:328:                                    ; preds = %315
  %329 = getelementptr inbounds i8, i8* %280, i64 -9, !dbg !3860
  %330 = bitcast i8* %329 to i32*, !dbg !3861
  %331 = load i32, i32* %330, align 1, !dbg !3861, !tbaa !548
  %332 = zext i32 %331 to i64, !dbg !3860
  br label %337, !dbg !3862

; <label>:333:                                    ; preds = %315
  %334 = getelementptr inbounds i8, i8* %280, i64 -17, !dbg !3863
  %335 = bitcast i8* %334 to i64*, !dbg !3864
  %336 = load i64, i64* %335, align 1, !dbg !3864, !tbaa !409
  br label %337, !dbg !3865

; <label>:337:                                    ; preds = %315, %316, %319, %323, %328, %333
  %338 = phi i64 [ %336, %333 ], [ %332, %328 ], [ %327, %323 ], [ %322, %319 ], [ %318, %316 ], [ 0, %315 ], !dbg !3866
  %339 = icmp eq i64 %338, %309, !dbg !3867
  br i1 %339, label %340, label %352, !dbg !3868

; <label>:340:                                    ; preds = %337
  %341 = call %struct.redisObject* @createObject(i32 0, i8* %280) #10, !dbg !3869
  %342 = load %struct.redisObject**, %struct.redisObject*** %133, align 8, !dbg !3871, !tbaa !622
  %343 = load i32, i32* %134, align 8, !dbg !3872, !tbaa !619
  %344 = add nsw i32 %343, 1, !dbg !3872
  store i32 %344, i32* %134, align 8, !dbg !3872, !tbaa !619
  %345 = sext i32 %343 to i64, !dbg !3873
  %346 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %342, i64 %345, !dbg !3873
  store %struct.redisObject* %341, %struct.redisObject** %346, align 8, !dbg !3874, !tbaa !475
  %347 = load i8*, i8** %131, align 8, !dbg !3875, !tbaa !606
  call void @sdsIncrLen(i8* %347, i64 -2) #10, !dbg !3876
  %348 = load i8*, i8** @SDS_NOINIT, align 8, !dbg !3877, !tbaa !475
  %349 = load i64, i64* %130, align 8, !dbg !3878, !tbaa !630
  %350 = add nsw i64 %349, 2, !dbg !3879
  %351 = call i8* @sdsnewlen(i8* %348, i64 %350) #10, !dbg !3880
  store i8* %351, i8** %131, align 8, !dbg !3881, !tbaa !606
  call void @sdsclear(i8* %351) #10, !dbg !3882
  br label %364, !dbg !3883

; <label>:352:                                    ; preds = %337, %311
  %353 = getelementptr inbounds i8, i8* %280, i64 %307, !dbg !3884
  %354 = call %struct.redisObject* @createStringObject(i8* %353, i64 %279) #10, !dbg !3886
  %355 = load %struct.redisObject**, %struct.redisObject*** %133, align 8, !dbg !3887, !tbaa !622
  %356 = load i32, i32* %134, align 8, !dbg !3888, !tbaa !619
  %357 = add nsw i32 %356, 1, !dbg !3888
  store i32 %357, i32* %134, align 8, !dbg !3888, !tbaa !619
  %358 = sext i32 %356 to i64, !dbg !3889
  %359 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %355, i64 %358, !dbg !3889
  store %struct.redisObject* %354, %struct.redisObject** %359, align 8, !dbg !3890, !tbaa !475
  %360 = load i64, i64* %130, align 8, !dbg !3891, !tbaa !630
  %361 = add nsw i64 %360, 2, !dbg !3892
  %362 = load i64, i64* %132, align 8, !dbg !3893, !tbaa !602
  %363 = add i64 %361, %362, !dbg !3893
  store i64 %363, i64* %132, align 8, !dbg !3893, !tbaa !602
  br label %364

; <label>:364:                                    ; preds = %352, %340
  store i64 -1, i64* %130, align 8, !dbg !3894, !tbaa !630
  %365 = load i32, i32* %4, align 4, !dbg !3895, !tbaa !627
  %366 = add nsw i32 %365, -1, !dbg !3895
  store i32 %366, i32* %4, align 4, !dbg !3895, !tbaa !627
  %367 = icmp eq i32 %366, 0, !dbg !3671
  br i1 %367, label %368, label %137, !dbg !3671, !llvm.loop !3896

; <label>:368:                                    ; preds = %209, %305, %364, %172
  %369 = load i32, i32* %4, align 4, !dbg !3898, !tbaa !627
  %370 = icmp ne i32 %369, 0, !dbg !3900
  %371 = sext i1 %370 to i32, !dbg !3901
  br label %372, !dbg !3901

; <label>:372:                                    ; preds = %368, %104, %83, %46, %51, %231, %217, %177, %102
  %373 = phi i32 [ -1, %102 ], [ -1, %177 ], [ -1, %217 ], [ -1, %231 ], [ -1, %51 ], [ -1, %46 ], [ -1, %83 ], [ 0, %104 ], [ %371, %368 ], !dbg !3902
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #6, !dbg !3903
  ret i32 %373, !dbg !3903
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
define dso_local void @processInputBuffer(%struct.client*) local_unnamed_addr #0 !dbg !3904 {
  %2 = alloca %struct.listIter, align 8
  store %struct.client* %0, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !3908, !tbaa !2809
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
  br label %16, !dbg !3909

; <label>:16:                                     ; preds = %220, %1
  %17 = load i64, i64* %3, align 8, !dbg !3910, !tbaa !602
  %18 = load i8*, i8** %4, align 8, !dbg !3911, !tbaa !606
  %19 = getelementptr inbounds i8, i8* %18, i64 -1, !dbg !3914
  %20 = load i8, i8* %19, align 1, !dbg !3914, !tbaa !654
  %21 = trunc i8 %20 to i3, !dbg !3916
  switch i3 %21, label %221 [
    i3 0, label %22
    i3 1, label %25
    i3 2, label %29
    i3 3, label %34
    i3 -4, label %39
  ], !dbg !3916

; <label>:22:                                     ; preds = %16
  %23 = lshr i8 %20, 3, !dbg !3917
  %24 = zext i8 %23 to i64, !dbg !3917
  br label %43, !dbg !3918

; <label>:25:                                     ; preds = %16
  %26 = getelementptr inbounds i8, i8* %18, i64 -3, !dbg !3919
  %27 = load i8, i8* %26, align 1, !dbg !3920, !tbaa !654
  %28 = zext i8 %27 to i64, !dbg !3919
  br label %43, !dbg !3921

; <label>:29:                                     ; preds = %16
  %30 = getelementptr inbounds i8, i8* %18, i64 -5, !dbg !3922
  %31 = bitcast i8* %30 to i16*, !dbg !3923
  %32 = load i16, i16* %31, align 1, !dbg !3923, !tbaa !855
  %33 = zext i16 %32 to i64, !dbg !3922
  br label %43, !dbg !3924

; <label>:34:                                     ; preds = %16
  %35 = getelementptr inbounds i8, i8* %18, i64 -9, !dbg !3925
  %36 = bitcast i8* %35 to i32*, !dbg !3926
  %37 = load i32, i32* %36, align 1, !dbg !3926, !tbaa !548
  %38 = zext i32 %37 to i64, !dbg !3925
  br label %43, !dbg !3927

; <label>:39:                                     ; preds = %16
  %40 = getelementptr inbounds i8, i8* %18, i64 -17, !dbg !3928
  %41 = bitcast i8* %40 to i64*, !dbg !3929
  %42 = load i64, i64* %41, align 1, !dbg !3929, !tbaa !409
  br label %43, !dbg !3930

; <label>:43:                                     ; preds = %22, %25, %29, %34, %39
  %44 = phi i64 [ %42, %39 ], [ %38, %34 ], [ %33, %29 ], [ %28, %25 ], [ %24, %22 ], !dbg !3931
  %45 = icmp ult i64 %17, %44, !dbg !3932
  br i1 %45, label %46, label %221, !dbg !3909

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %5, align 8, !dbg !3933, !tbaa !922
  %48 = and i32 %47, 1, !dbg !3936
  %49 = icmp ne i32 %48, 0, !dbg !3936
  %50 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !3937
  %51 = icmp eq i32 %50, 0, !dbg !3946
  %52 = or i1 %49, %51, !dbg !3947
  br i1 %52, label %79, label %53, !dbg !3947

; <label>:53:                                     ; preds = %46
  %54 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 46), align 8, !dbg !3948, !tbaa !3949
  %55 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 254), align 8, !dbg !3950, !tbaa !3951
  %56 = icmp slt i64 %54, %55, !dbg !3952
  br i1 %56, label %57, label %221, !dbg !3953

; <label>:57:                                     ; preds = %53
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #6, !dbg !3954
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !3955, !tbaa !3956
  %58 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !3957, !tbaa !440
  call void @listRewind(%struct.list* %58, %struct.listIter* nonnull %2) #10, !dbg !3959
  %59 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #10, !dbg !3960
  %60 = icmp eq %struct.listNode* %59, null, !dbg !3962
  br i1 %60, label %74, label %61, !dbg !3963

; <label>:61:                                     ; preds = %57, %71
  %62 = phi %struct.listNode* [ %72, %71 ], [ %59, %57 ]
  %63 = getelementptr inbounds %struct.listNode, %struct.listNode* %62, i64 0, i32 2, !dbg !3964
  %64 = bitcast i8** %63 to %struct.client**, !dbg !3964
  %65 = load %struct.client*, %struct.client** %64, align 8, !dbg !3964, !tbaa !1150
  %66 = getelementptr inbounds %struct.client, %struct.client* %65, i64 0, i32 21, !dbg !3967
  %67 = load i32, i32* %66, align 8, !dbg !3967, !tbaa !922
  %68 = and i32 %67, 17, !dbg !3969
  %69 = icmp eq i32 %68, 0, !dbg !3969
  br i1 %69, label %70, label %71, !dbg !3970

; <label>:70:                                     ; preds = %61
  call void @queueClientForReprocessing(%struct.client* %65) #10, !dbg !3971
  br label %71, !dbg !3963

; <label>:71:                                     ; preds = %70, %61
  %72 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #10, !dbg !3960
  %73 = icmp eq %struct.listNode* %72, null, !dbg !3962
  br i1 %73, label %74, label %61, !dbg !3963, !llvm.loop !3972

; <label>:74:                                     ; preds = %71, %57
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #6, !dbg !3975
  %75 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !3976, !tbaa !3956
  %76 = icmp eq i32 %75, 0, !dbg !3977
  br i1 %76, label %77, label %221, !dbg !3978

; <label>:77:                                     ; preds = %74
  %78 = load i32, i32* %5, align 8, !dbg !3979, !tbaa !922
  br label %79, !dbg !3978

; <label>:79:                                     ; preds = %77, %46
  %80 = phi i32 [ %78, %77 ], [ %47, %46 ], !dbg !3979
  %81 = and i32 %80, 16, !dbg !3981
  %82 = icmp eq i32 %81, 0, !dbg !3981
  br i1 %82, label %83, label %221, !dbg !3982

; <label>:83:                                     ; preds = %79
  %84 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 282), align 4, !dbg !3983, !tbaa !3985
  %85 = icmp eq i32 %84, 0, !dbg !3986
  %86 = and i32 %80, 2, !dbg !3987
  %87 = icmp eq i32 %86, 0, !dbg !3987
  %88 = or i1 %87, %85, !dbg !3988
  %89 = and i32 %80, 1088, !dbg !3989
  %90 = icmp eq i32 %89, 0, !dbg !3989
  %91 = and i1 %90, %88, !dbg !3988
  br i1 %91, label %92, label %221, !dbg !3988

; <label>:92:                                     ; preds = %83
  %93 = load i32, i32* %7, align 8, !dbg !3991, !tbaa !616
  switch i32 %93, label %108 [
    i32 0, label %94
    i32 1, label %102
    i32 2, label %105
  ], !dbg !3993

; <label>:94:                                     ; preds = %92
  %95 = load i8*, i8** %4, align 8, !dbg !3994, !tbaa !606
  %96 = load i64, i64* %3, align 8, !dbg !3997, !tbaa !602
  %97 = getelementptr inbounds i8, i8* %95, i64 %96, !dbg !3998
  %98 = load i8, i8* %97, align 1, !dbg !3998, !tbaa !654
  %99 = icmp eq i8 %98, 42, !dbg !3999
  br i1 %99, label %100, label %101, !dbg !4000

; <label>:100:                                    ; preds = %94
  store i32 2, i32* %7, align 8, !dbg !4001, !tbaa !616
  br label %105, !dbg !4003

; <label>:101:                                    ; preds = %94
  store i32 1, i32* %7, align 8, !dbg !4004, !tbaa !616
  br label %102, !dbg !4003

; <label>:102:                                    ; preds = %92, %101
  %103 = call i32 @processInlineBuffer(%struct.client* nonnull %0) #12, !dbg !4006
  %104 = icmp eq i32 %103, 0, !dbg !4010
  br i1 %104, label %109, label %221, !dbg !4011

; <label>:105:                                    ; preds = %92, %100
  %106 = call i32 @processMultibulkBuffer(%struct.client* nonnull %0) #12, !dbg !4012
  %107 = icmp eq i32 %106, 0, !dbg !4016
  br i1 %107, label %109, label %221, !dbg !4017

; <label>:108:                                    ; preds = %92
  call void (i8*, i32, i8*, ...) @_serverPanic(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1468, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0)) #10, !dbg !4018
  call void @_exit(i32 1) #11, !dbg !4018
  unreachable, !dbg !4018

; <label>:109:                                    ; preds = %102, %105
  %110 = load i32, i32* %8, align 8, !dbg !4020, !tbaa !619
  %111 = icmp eq i32 %110, 0, !dbg !4022
  br i1 %111, label %112, label %135, !dbg !4023

; <label>:112:                                    ; preds = %109
  %113 = load %struct.redisCommand*, %struct.redisCommand** %9, align 8, !dbg !4027, !tbaa !2699
  %114 = icmp eq %struct.redisCommand* %113, null, !dbg !4028
  br i1 %114, label %119, label %115, !dbg !4028

; <label>:115:                                    ; preds = %112
  %116 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %113, i64 0, i32 1, !dbg !4029
  %117 = load void (%struct.client*)*, void (%struct.client*)** %116, align 8, !dbg !4029, !tbaa !3175
  %118 = icmp ne void (%struct.client*)* %117, @askingCommand, !dbg !4028
  br label %119, !dbg !4028

; <label>:119:                                    ; preds = %112, %115
  %120 = phi i1 [ %118, %115 ], [ true, %112 ]
  store i32 0, i32* %8, align 8, !dbg !4033, !tbaa !619
  store %struct.redisCommand* null, %struct.redisCommand** %9, align 8, !dbg !4034, !tbaa !2699
  store i32 0, i32* %7, align 8, !dbg !4035, !tbaa !616
  store i32 0, i32* %10, align 4, !dbg !4036, !tbaa !627
  store i64 -1, i64* %11, align 8, !dbg !4037, !tbaa !630
  %121 = load i32, i32* %5, align 8, !dbg !4038, !tbaa !922
  %122 = and i32 %121, 8, !dbg !4039
  %123 = icmp eq i32 %122, 0, !dbg !4039
  %124 = and i1 %120, %123, !dbg !4040
  br i1 %124, label %125, label %127, !dbg !4040

; <label>:125:                                    ; preds = %119
  %126 = and i32 %121, -513, !dbg !4041
  store i32 %126, i32* %5, align 8, !dbg !4041, !tbaa !922
  br label %127, !dbg !4042

; <label>:127:                                    ; preds = %119, %125
  %128 = phi i32 [ %121, %119 ], [ %126, %125 ], !dbg !4043
  %129 = and i32 %128, -16777217, !dbg !4043
  %130 = and i32 %128, 8388608, !dbg !4044
  %131 = icmp eq i32 %130, 0, !dbg !4044
  %132 = and i32 %128, -25165825, !dbg !4045
  %133 = or i32 %132, 16777216, !dbg !4045
  %134 = select i1 %131, i32 %129, i32 %133, !dbg !4046
  store i32 %134, i32* %5, align 8, !dbg !4047, !tbaa !922
  br label %220, !dbg !4048

; <label>:135:                                    ; preds = %109
  %136 = call i32 @processCommand(%struct.client* nonnull %0) #10, !dbg !4049
  %137 = icmp eq i32 %136, 0, !dbg !4052
  br i1 %137, label %138, label %217, !dbg !4053

; <label>:138:                                    ; preds = %135
  %139 = load i32, i32* %5, align 8, !dbg !4054, !tbaa !922
  %140 = and i32 %139, 10, !dbg !4057
  %141 = icmp eq i32 %140, 2, !dbg !4057
  br i1 %141, label %142, label %174, !dbg !4057

; <label>:142:                                    ; preds = %138
  %143 = load i64, i64* %12, align 8, !dbg !4058, !tbaa !945
  %144 = load i8*, i8** %4, align 8, !dbg !4060, !tbaa !606
  %145 = getelementptr inbounds i8, i8* %144, i64 -1, !dbg !4063
  %146 = load i8, i8* %145, align 1, !dbg !4063, !tbaa !654
  %147 = trunc i8 %146 to i3, !dbg !4065
  switch i3 %147, label %169 [
    i3 0, label %148
    i3 1, label %151
    i3 2, label %155
    i3 3, label %160
    i3 -4, label %165
  ], !dbg !4065

; <label>:148:                                    ; preds = %142
  %149 = lshr i8 %146, 3, !dbg !4066
  %150 = zext i8 %149 to i64, !dbg !4066
  br label %169, !dbg !4067

; <label>:151:                                    ; preds = %142
  %152 = getelementptr inbounds i8, i8* %144, i64 -3, !dbg !4068
  %153 = load i8, i8* %152, align 1, !dbg !4069, !tbaa !654
  %154 = zext i8 %153 to i64, !dbg !4068
  br label %169, !dbg !4070

; <label>:155:                                    ; preds = %142
  %156 = getelementptr inbounds i8, i8* %144, i64 -5, !dbg !4071
  %157 = bitcast i8* %156 to i16*, !dbg !4072
  %158 = load i16, i16* %157, align 1, !dbg !4072, !tbaa !855
  %159 = zext i16 %158 to i64, !dbg !4071
  br label %169, !dbg !4073

; <label>:160:                                    ; preds = %142
  %161 = getelementptr inbounds i8, i8* %144, i64 -9, !dbg !4074
  %162 = bitcast i8* %161 to i32*, !dbg !4075
  %163 = load i32, i32* %162, align 1, !dbg !4075, !tbaa !548
  %164 = zext i32 %163 to i64, !dbg !4074
  br label %169, !dbg !4076

; <label>:165:                                    ; preds = %142
  %166 = getelementptr inbounds i8, i8* %144, i64 -17, !dbg !4077
  %167 = bitcast i8* %166 to i64*, !dbg !4078
  %168 = load i64, i64* %167, align 1, !dbg !4078, !tbaa !409
  br label %169, !dbg !4079

; <label>:169:                                    ; preds = %142, %148, %151, %155, %160, %165
  %170 = phi i64 [ %168, %165 ], [ %164, %160 ], [ %159, %155 ], [ %154, %151 ], [ %150, %148 ], [ 0, %142 ], !dbg !4080
  %171 = sub i64 %143, %170, !dbg !4081
  %172 = load i64, i64* %3, align 8, !dbg !4082, !tbaa !602
  %173 = add i64 %171, %172, !dbg !4083
  store i64 %173, i64* %13, align 8, !dbg !4084, !tbaa !999
  br label %174, !dbg !4085

; <label>:174:                                    ; preds = %138, %169
  %175 = and i32 %139, 16, !dbg !4086
  %176 = icmp eq i32 %175, 0, !dbg !4086
  br i1 %176, label %180, label %177, !dbg !4088

; <label>:177:                                    ; preds = %174
  %178 = load i32, i32* %14, align 8, !dbg !4089, !tbaa !674
  %179 = icmp eq i32 %178, 3, !dbg !4090
  br i1 %179, label %217, label %180, !dbg !4091

; <label>:180:                                    ; preds = %177, %174
  %181 = load %struct.redisCommand*, %struct.redisCommand** %9, align 8, !dbg !4094, !tbaa !2699
  %182 = icmp eq %struct.redisCommand* %181, null, !dbg !4095
  br i1 %182, label %187, label %183, !dbg !4095

; <label>:183:                                    ; preds = %180
  %184 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %181, i64 0, i32 1, !dbg !4096
  %185 = load void (%struct.client*)*, void (%struct.client*)** %184, align 8, !dbg !4096, !tbaa !3175
  %186 = icmp ne void (%struct.client*)* %185, @askingCommand, !dbg !4095
  br label %187, !dbg !4095

; <label>:187:                                    ; preds = %183, %180
  %188 = phi i1 [ %186, %183 ], [ true, %180 ]
  %189 = load i32, i32* %8, align 8, !dbg !4100, !tbaa !619
  %190 = icmp sgt i32 %189, 0, !dbg !4101
  br i1 %190, label %191, label %202, !dbg !4102

; <label>:191:                                    ; preds = %187, %191
  %192 = phi i64 [ %196, %191 ], [ 0, %187 ]
  %193 = load %struct.redisObject**, %struct.redisObject*** %15, align 8, !dbg !4103, !tbaa !622
  %194 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %193, i64 %192, !dbg !4104
  %195 = load %struct.redisObject*, %struct.redisObject** %194, align 8, !dbg !4104, !tbaa !475
  call void @decrRefCount(%struct.redisObject* %195) #10, !dbg !4105
  %196 = add nuw nsw i64 %192, 1, !dbg !4106
  %197 = load i32, i32* %8, align 8, !dbg !4100, !tbaa !619
  %198 = sext i32 %197 to i64, !dbg !4101
  %199 = icmp slt i64 %196, %198, !dbg !4101
  br i1 %199, label %191, label %200, !dbg !4102, !llvm.loop !2693

; <label>:200:                                    ; preds = %191
  %201 = load i32, i32* %5, align 8, !dbg !4107, !tbaa !922
  br label %202, !dbg !4108

; <label>:202:                                    ; preds = %200, %187
  %203 = phi i32 [ %201, %200 ], [ %139, %187 ], !dbg !4107
  store i32 0, i32* %8, align 8, !dbg !4108, !tbaa !619
  store %struct.redisCommand* null, %struct.redisCommand** %9, align 8, !dbg !4109, !tbaa !2699
  store i32 0, i32* %7, align 8, !dbg !4110, !tbaa !616
  store i32 0, i32* %10, align 4, !dbg !4111, !tbaa !627
  store i64 -1, i64* %11, align 8, !dbg !4112, !tbaa !630
  %204 = and i32 %203, 8, !dbg !4113
  %205 = icmp eq i32 %204, 0, !dbg !4113
  %206 = and i1 %188, %205, !dbg !4114
  br i1 %206, label %207, label %209, !dbg !4114

; <label>:207:                                    ; preds = %202
  %208 = and i32 %203, -513, !dbg !4115
  store i32 %208, i32* %5, align 8, !dbg !4115, !tbaa !922
  br label %209, !dbg !4116

; <label>:209:                                    ; preds = %202, %207
  %210 = phi i32 [ %203, %202 ], [ %208, %207 ], !dbg !4117
  %211 = and i32 %210, -16777217, !dbg !4117
  %212 = and i32 %210, 8388608, !dbg !4118
  %213 = icmp eq i32 %212, 0, !dbg !4118
  %214 = and i32 %210, -25165825, !dbg !4119
  %215 = or i32 %214, 16777216, !dbg !4119
  %216 = select i1 %213, i32 %211, i32 %215, !dbg !4120
  store i32 %216, i32* %5, align 8, !dbg !4121, !tbaa !922
  br label %217, !dbg !4122

; <label>:217:                                    ; preds = %177, %209, %135
  %218 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !4123, !tbaa !2809
  %219 = icmp eq %struct.client* %218, null, !dbg !4125
  br i1 %219, label %229, label %220, !dbg !4126

; <label>:220:                                    ; preds = %217, %127
  br label %16, !dbg !3910, !llvm.loop !4127

; <label>:221:                                    ; preds = %53, %16, %83, %102, %105, %79, %74, %43
  %222 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !4129, !tbaa !2809
  %223 = icmp eq %struct.client* %222, null, !dbg !4131
  br i1 %223, label %229, label %224, !dbg !4132

; <label>:224:                                    ; preds = %221
  %225 = load i64, i64* %3, align 8, !dbg !4133, !tbaa !602
  %226 = icmp eq i64 %225, 0, !dbg !4134
  br i1 %226, label %229, label %227, !dbg !4135

; <label>:227:                                    ; preds = %224
  %228 = load i8*, i8** %4, align 8, !dbg !4136, !tbaa !606
  call void @sdsrange(i8* %228, i64 %225, i64 -1) #10, !dbg !4138
  store i64 0, i64* %3, align 8, !dbg !4139, !tbaa !602
  br label %229, !dbg !4140

; <label>:229:                                    ; preds = %217, %224, %221, %227
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 43), align 8, !dbg !4141, !tbaa !2809
  ret void, !dbg !4142
}

; Function Attrs: noredzone nounwind
define dso_local i32 @clientsArePaused() local_unnamed_addr #0 !dbg !3939 {
  %1 = alloca %struct.listIter, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !4143, !tbaa !3956
  %3 = icmp eq i32 %2, 0, !dbg !4144
  br i1 %3, label %28, label %4, !dbg !4145

; <label>:4:                                      ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 46), align 8, !dbg !4146, !tbaa !3949
  %6 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 254), align 8, !dbg !4147, !tbaa !3951
  %7 = icmp slt i64 %5, %6, !dbg !4148
  br i1 %7, label %8, label %28, !dbg !4149

; <label>:8:                                      ; preds = %4
  %9 = bitcast %struct.listIter* %1 to i8*, !dbg !4150
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #6, !dbg !4150
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !4151, !tbaa !3956
  %10 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !4152, !tbaa !440
  call void @listRewind(%struct.list* %10, %struct.listIter* nonnull %1) #10, !dbg !4154
  %11 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #10, !dbg !4155
  %12 = icmp eq %struct.listNode* %11, null, !dbg !4157
  br i1 %12, label %26, label %13, !dbg !3973

; <label>:13:                                     ; preds = %8, %23
  %14 = phi %struct.listNode* [ %24, %23 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct.listNode, %struct.listNode* %14, i64 0, i32 2, !dbg !4158
  %16 = bitcast i8** %15 to %struct.client**, !dbg !4158
  %17 = load %struct.client*, %struct.client** %16, align 8, !dbg !4158, !tbaa !1150
  %18 = getelementptr inbounds %struct.client, %struct.client* %17, i64 0, i32 21, !dbg !4160
  %19 = load i32, i32* %18, align 8, !dbg !4160, !tbaa !922
  %20 = and i32 %19, 17, !dbg !4161
  %21 = icmp eq i32 %20, 0, !dbg !4161
  br i1 %21, label %22, label %23, !dbg !4162

; <label>:22:                                     ; preds = %13
  call void @queueClientForReprocessing(%struct.client* %17) #10, !dbg !4163
  br label %23, !dbg !3973

; <label>:23:                                     ; preds = %22, %13
  %24 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #10, !dbg !4155
  %25 = icmp eq %struct.listNode* %24, null, !dbg !4157
  br i1 %25, label %26, label %13, !dbg !3973, !llvm.loop !3972

; <label>:26:                                     ; preds = %23, %8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #6, !dbg !4164
  %27 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !4165, !tbaa !3956
  br label %28, !dbg !4166

; <label>:28:                                     ; preds = %0, %26, %4
  %29 = phi i32 [ 0, %0 ], [ %27, %26 ], [ %2, %4 ], !dbg !4165
  ret i32 %29, !dbg !4167
}

; Function Attrs: noredzone
declare dso_local i32 @processCommand(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @processInputBufferAndReplicate(%struct.client*) local_unnamed_addr #0 !dbg !986 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4169
  %3 = load i32, i32* %2, align 8, !dbg !4169, !tbaa !922
  %4 = and i32 %3, 2, !dbg !4170
  %5 = icmp eq i32 %4, 0, !dbg !4170
  br i1 %5, label %6, label %7, !dbg !4171

; <label>:6:                                      ; preds = %1
  tail call void @processInputBuffer(%struct.client* nonnull %0) #12, !dbg !4172
  br label %18, !dbg !4173

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 30, !dbg !4174
  %9 = load i64, i64* %8, align 8, !dbg !4174, !tbaa !999
  tail call void @processInputBuffer(%struct.client* nonnull %0) #12, !dbg !4176
  %10 = load i64, i64* %8, align 8, !dbg !4177, !tbaa !999
  %11 = sub i64 %10, %9, !dbg !4178
  %12 = icmp eq i64 %11, 0, !dbg !4180
  br i1 %12, label %18, label %13, !dbg !4181

; <label>:13:                                     ; preds = %7
  %14 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4182, !tbaa !1010
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 6, !dbg !4183
  %16 = load i8*, i8** %15, align 8, !dbg !4183, !tbaa !610
  tail call void @replicationFeedSlavesFromMasterStream(%struct.list* %14, i8* %16, i64 %11) #10, !dbg !4184
  %17 = load i8*, i8** %15, align 8, !dbg !4185, !tbaa !610
  tail call void @sdsrange(i8* %17, i64 %11, i64 -1) #10, !dbg !4186
  br label %18, !dbg !4187

; <label>:18:                                     ; preds = %13, %7, %6
  ret void, !dbg !4188
}

; Function Attrs: noredzone
declare dso_local void @replicationFeedSlavesFromMasterStream(%struct.list*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @catClientInfoString(i8*, %struct.client* nocapture) local_unnamed_addr #0 !dbg !4189 {
  %3 = alloca [78 x i8], align 16
  %4 = alloca [16 x i8], align 16
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0, !dbg !4215
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #6, !dbg !4215
  %7 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0, !dbg !4215
  call void @llvm.lifetime.start.p0i8(i64 3, i8* nonnull %7) #6, !dbg !4215
  %8 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 21, !dbg !4219
  %9 = load i32, i32* %8, align 8, !dbg !4219, !tbaa !922
  %10 = and i32 %9, 1, !dbg !4221
  %11 = icmp eq i32 %10, 0, !dbg !4221
  br i1 %11, label %16, label %12, !dbg !4222

; <label>:12:                                     ; preds = %2
  %13 = and i32 %9, 4, !dbg !4223
  %14 = icmp eq i32 %13, 0, !dbg !4223
  %15 = select i1 %14, i8 83, i8 79
  store i8 %15, i8* %6, align 16, !dbg !4226, !tbaa !654
  br label %16, !dbg !4227

; <label>:16:                                     ; preds = %12, %2
  %17 = phi i64 [ 0, %2 ], [ 1, %12 ]
  %18 = and i32 %9, 2, !dbg !4227
  %19 = icmp eq i32 %18, 0, !dbg !4227
  br i1 %19, label %23, label %20, !dbg !4229

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %17, !dbg !4218
  %22 = add nuw nsw i64 %17, 1, !dbg !4230
  store i8 77, i8* %21, align 1, !dbg !4231, !tbaa !654
  br label %23, !dbg !4232

; <label>:23:                                     ; preds = %16, %20
  %24 = phi i64 [ %22, %20 ], [ %17, %16 ]
  %25 = and i32 %9, 262144, !dbg !4233
  %26 = icmp eq i32 %25, 0, !dbg !4233
  br i1 %26, label %30, label %27, !dbg !4235

; <label>:27:                                     ; preds = %23
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %24, !dbg !4218
  %29 = add nsw i64 %24, 1, !dbg !4236
  store i8 80, i8* %28, align 1, !dbg !4237, !tbaa !654
  br label %30, !dbg !4238

; <label>:30:                                     ; preds = %23, %27
  %31 = phi i64 [ %29, %27 ], [ %24, %23 ]
  %32 = and i32 %9, 8, !dbg !4239
  %33 = icmp eq i32 %32, 0, !dbg !4239
  br i1 %33, label %37, label %34, !dbg !4241

; <label>:34:                                     ; preds = %30
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %31, !dbg !4218
  %36 = add nsw i64 %31, 1, !dbg !4242
  store i8 120, i8* %35, align 1, !dbg !4243, !tbaa !654
  br label %37, !dbg !4244

; <label>:37:                                     ; preds = %30, %34
  %38 = phi i64 [ %36, %34 ], [ %31, %30 ]
  %39 = and i32 %9, 16, !dbg !4245
  %40 = icmp eq i32 %39, 0, !dbg !4245
  br i1 %40, label %44, label %41, !dbg !4247

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %38, !dbg !4218
  %43 = add nsw i64 %38, 1, !dbg !4248
  store i8 98, i8* %42, align 1, !dbg !4249, !tbaa !654
  br label %44, !dbg !4250

; <label>:44:                                     ; preds = %37, %41
  %45 = phi i64 [ %43, %41 ], [ %38, %37 ]
  %46 = and i32 %9, 32, !dbg !4251
  %47 = icmp eq i32 %46, 0, !dbg !4251
  br i1 %47, label %51, label %48, !dbg !4253

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %45, !dbg !4218
  %50 = add nsw i64 %45, 1, !dbg !4254
  store i8 100, i8* %49, align 1, !dbg !4255, !tbaa !654
  br label %51, !dbg !4256

; <label>:51:                                     ; preds = %44, %48
  %52 = phi i64 [ %50, %48 ], [ %45, %44 ]
  %53 = and i32 %9, 64, !dbg !4257
  %54 = icmp eq i32 %53, 0, !dbg !4257
  br i1 %54, label %58, label %55, !dbg !4259

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %52, !dbg !4218
  %57 = add nsw i64 %52, 1, !dbg !4260
  store i8 99, i8* %56, align 1, !dbg !4261, !tbaa !654
  br label %58, !dbg !4262

; <label>:58:                                     ; preds = %51, %55
  %59 = phi i64 [ %57, %55 ], [ %52, %51 ]
  %60 = trunc i32 %9 to i8, !dbg !4263
  %61 = icmp slt i8 %60, 0, !dbg !4263
  br i1 %61, label %62, label %65, !dbg !4265

; <label>:62:                                     ; preds = %58
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %59, !dbg !4218
  %64 = add nsw i64 %59, 1, !dbg !4266
  store i8 117, i8* %63, align 1, !dbg !4267, !tbaa !654
  br label %65, !dbg !4268

; <label>:65:                                     ; preds = %62, %58
  %66 = phi i64 [ %64, %62 ], [ %59, %58 ]
  %67 = and i32 %9, 1024, !dbg !4269
  %68 = icmp eq i32 %67, 0, !dbg !4269
  br i1 %68, label %72, label %69, !dbg !4271

; <label>:69:                                     ; preds = %65
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %66, !dbg !4218
  %71 = add nsw i64 %66, 1, !dbg !4272
  store i8 65, i8* %70, align 1, !dbg !4273, !tbaa !654
  br label %72, !dbg !4274

; <label>:72:                                     ; preds = %65, %69
  %73 = phi i64 [ %71, %69 ], [ %66, %65 ]
  %74 = and i32 %9, 2048, !dbg !4275
  %75 = icmp eq i32 %74, 0, !dbg !4275
  br i1 %75, label %79, label %76, !dbg !4277

; <label>:76:                                     ; preds = %72
  %77 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %73, !dbg !4218
  %78 = add nsw i64 %73, 1, !dbg !4278
  store i8 85, i8* %77, align 1, !dbg !4279, !tbaa !654
  br label %79, !dbg !4280

; <label>:79:                                     ; preds = %72, %76
  %80 = phi i64 [ %78, %76 ], [ %73, %72 ]
  %81 = and i32 %9, 131072, !dbg !4281
  %82 = icmp eq i32 %81, 0, !dbg !4281
  %83 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %80, !dbg !4218
  br i1 %82, label %87, label %84, !dbg !4283

; <label>:84:                                     ; preds = %79
  %85 = add nsw i64 %80, 1, !dbg !4284
  store i8 114, i8* %83, align 1, !dbg !4285, !tbaa !654
  %86 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 %85, !dbg !4218
  br label %91, !dbg !4286

; <label>:87:                                     ; preds = %79
  %88 = icmp eq i64 %80, 0, !dbg !4287
  br i1 %88, label %89, label %91, !dbg !4286

; <label>:89:                                     ; preds = %87
  %90 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !4289
  store i8 78, i8* %83, align 1, !dbg !4290, !tbaa !654
  br label %91, !dbg !4291

; <label>:91:                                     ; preds = %84, %89, %87
  %92 = phi i8* [ %90, %89 ], [ %83, %87 ], [ %86, %84 ], !dbg !4292
  store i8 0, i8* %92, align 1, !dbg !4293, !tbaa !654
  %93 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 1, !dbg !4294
  %94 = load i32, i32* %93, align 8, !dbg !4294, !tbaa !593
  %95 = icmp eq i32 %94, -1, !dbg !4295
  br i1 %95, label %109, label %96, !dbg !4296

; <label>:96:                                     ; preds = %91
  %97 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4297, !tbaa !577
  %98 = tail call i32 @aeGetFileEvents(%struct.aeEventLoop* %97, i32 %94) #10, !dbg !4298
  %99 = and i32 %98, 1, !dbg !4300
  %100 = icmp eq i32 %99, 0, !dbg !4300
  br i1 %100, label %103, label %101, !dbg !4302

; <label>:101:                                    ; preds = %96
  %102 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 1, !dbg !4303
  store i8 114, i8* %7, align 1, !dbg !4304, !tbaa !654
  br label %103, !dbg !4305

; <label>:103:                                    ; preds = %96, %101
  %104 = phi i8* [ %102, %101 ], [ %7, %96 ], !dbg !4306
  %105 = and i32 %98, 2, !dbg !4307
  %106 = icmp eq i32 %105, 0, !dbg !4307
  br i1 %106, label %109, label %107, !dbg !4309

; <label>:107:                                    ; preds = %103
  %108 = getelementptr inbounds i8, i8* %104, i64 1, !dbg !4310
  store i8 119, i8* %104, align 1, !dbg !4311, !tbaa !654
  br label %109, !dbg !4312

; <label>:109:                                    ; preds = %91, %103, %107
  %110 = phi i8* [ %108, %107 ], [ %104, %103 ], [ %7, %91 ], !dbg !4313
  store i8 0, i8* %110, align 1, !dbg !4314, !tbaa !654
  %111 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 0, !dbg !4315
  %112 = load i64, i64* %111, align 8, !dbg !4315, !tbaa !460
  %113 = getelementptr inbounds [78 x i8], [78 x i8]* %3, i64 0, i64 0, !dbg !4317
  call void @llvm.lifetime.start.p0i8(i64 78, i8* nonnull %113) #6, !dbg !4317
  %114 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 45, !dbg !4318
  %115 = load i8*, i8** %114, align 8, !dbg !4318, !tbaa !714
  %116 = icmp eq i8* %115, null, !dbg !4320
  br i1 %116, label %117, label %129, !dbg !4321

; <label>:117:                                    ; preds = %109
  %118 = load i32, i32* %8, align 8, !dbg !4334, !tbaa !922
  %119 = and i32 %118, 2048, !dbg !4336
  %120 = icmp eq i32 %119, 0, !dbg !4336
  br i1 %120, label %124, label %121, !dbg !4337

; <label>:121:                                    ; preds = %117
  %122 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 31), align 8, !dbg !4338, !tbaa !2588
  %123 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %113, i64 78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* %122) #10, !dbg !4340
  br label %127, !dbg !4341

; <label>:124:                                    ; preds = %117
  %125 = load i32, i32* %93, align 8, !dbg !4342, !tbaa !593
  %126 = call i32 @anetFormatPeer(i32 %125, i8* nonnull %113, i64 78) #10, !dbg !4344
  br label %127

; <label>:127:                                    ; preds = %124, %121
  %128 = call i8* @sdsnew(i8* nonnull %113) #10, !dbg !4345
  store i8* %128, i8** %114, align 8, !dbg !4346, !tbaa !714
  br label %129, !dbg !4347

; <label>:129:                                    ; preds = %109, %127
  %130 = phi i8* [ %128, %127 ], [ %115, %109 ], !dbg !4348
  call void @llvm.lifetime.end.p0i8(i64 78, i8* nonnull %113) #6, !dbg !4349
  %131 = load i32, i32* %93, align 8, !dbg !4350, !tbaa !593
  %132 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 3, !dbg !4351
  %133 = load %struct.redisObject*, %struct.redisObject** %132, align 8, !dbg !4351, !tbaa !596
  %134 = icmp eq %struct.redisObject* %133, null, !dbg !4352
  br i1 %134, label %138, label %135, !dbg !4352

; <label>:135:                                    ; preds = %129
  %136 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %133, i64 0, i32 2, !dbg !4353
  %137 = load i8*, i8** %136, align 8, !dbg !4353, !tbaa !376
  br label %138, !dbg !4352

; <label>:138:                                    ; preds = %129, %135
  %139 = phi i8* [ %137, %135 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.49, i64 0, i64 0), %129 ], !dbg !4352
  %140 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !4354, !tbaa !636
  %141 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 18, !dbg !4355
  %142 = load i64, i64* %141, align 8, !dbg !4355, !tbaa !642
  %143 = sub nsw i64 %140, %142, !dbg !4356
  %144 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 19, !dbg !4357
  %145 = load i64, i64* %144, align 8, !dbg !4357, !tbaa !639
  %146 = sub nsw i64 %140, %145, !dbg !4358
  %147 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 2, !dbg !4359
  %148 = load %struct.redisDb*, %struct.redisDb** %147, align 8, !dbg !4359, !tbaa !4360
  %149 = getelementptr inbounds %struct.redisDb, %struct.redisDb* %148, i64 0, i32 5, !dbg !4361
  %150 = load i32, i32* %149, align 8, !dbg !4361, !tbaa !4362
  %151 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 43, !dbg !4364
  %152 = load %struct.dict*, %struct.dict** %151, align 8, !dbg !4364, !tbaa !707
  %153 = getelementptr inbounds %struct.dict, %struct.dict* %152, i64 0, i32 2, i64 0, i32 3, !dbg !4364
  %154 = load i64, i64* %153, align 8, !dbg !4364, !tbaa !4365
  %155 = getelementptr inbounds %struct.dict, %struct.dict* %152, i64 0, i32 2, i64 1, i32 3, !dbg !4364
  %156 = load i64, i64* %155, align 8, !dbg !4364, !tbaa !4365
  %157 = add i64 %156, %154, !dbg !4364
  %158 = trunc i64 %157 to i32, !dbg !4367
  %159 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 44, !dbg !4368
  %160 = load %struct.list*, %struct.list** %159, align 8, !dbg !4368, !tbaa !711
  %161 = getelementptr inbounds %struct.list, %struct.list* %160, i64 0, i32 5, !dbg !4368
  %162 = load i64, i64* %161, align 8, !dbg !4368, !tbaa !1069
  %163 = trunc i64 %162 to i32, !dbg !4369
  %164 = load i32, i32* %8, align 8, !dbg !4370, !tbaa !922
  %165 = and i32 %164, 8, !dbg !4371
  %166 = icmp eq i32 %165, 0, !dbg !4371
  br i1 %166, label %170, label %167, !dbg !4372

; <label>:167:                                    ; preds = %138
  %168 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 38, i32 1, !dbg !4373
  %169 = load i32, i32* %168, align 8, !dbg !4373, !tbaa !4374
  br label %170, !dbg !4372

; <label>:170:                                    ; preds = %138, %167
  %171 = phi i32 [ %169, %167 ], [ -1, %138 ], !dbg !4372
  %172 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 4, !dbg !4375
  %173 = load i8*, i8** %172, align 8, !dbg !4375, !tbaa !606
  %174 = getelementptr inbounds i8, i8* %173, i64 -1, !dbg !4378
  %175 = load i8, i8* %174, align 1, !dbg !4378, !tbaa !654
  %176 = trunc i8 %175 to i3, !dbg !4380
  switch i3 %176, label %216 [
    i3 0, label %177
    i3 1, label %180
    i3 2, label %188
    i3 3, label %198
    i3 -4, label %208
  ], !dbg !4380

; <label>:177:                                    ; preds = %170
  %178 = lshr i8 %175, 3, !dbg !4381
  %179 = zext i8 %178 to i64, !dbg !4381
  br label %216, !dbg !4398

; <label>:180:                                    ; preds = %170
  %181 = getelementptr inbounds i8, i8* %173, i64 -3, !dbg !4399
  %182 = load i8, i8* %181, align 1, !dbg !4400, !tbaa !654
  %183 = zext i8 %182 to i64, !dbg !4399
  %184 = getelementptr inbounds i8, i8* %173, i64 -2, !dbg !4402
  %185 = load i8, i8* %184, align 1, !dbg !4402, !tbaa !654
  %186 = zext i8 %185 to i64, !dbg !4403
  %187 = sub nsw i64 %186, %183, !dbg !4404
  br label %216

; <label>:188:                                    ; preds = %170
  %189 = getelementptr inbounds i8, i8* %173, i64 -5, !dbg !4405
  %190 = bitcast i8* %189 to i16*, !dbg !4406
  %191 = load i16, i16* %190, align 1, !dbg !4406, !tbaa !855
  %192 = zext i16 %191 to i64, !dbg !4405
  %193 = getelementptr inbounds i8, i8* %173, i64 -3, !dbg !4408
  %194 = bitcast i8* %193 to i16*, !dbg !4408
  %195 = load i16, i16* %194, align 1, !dbg !4408, !tbaa !855
  %196 = zext i16 %195 to i64, !dbg !4409
  %197 = sub nsw i64 %196, %192, !dbg !4410
  br label %216

; <label>:198:                                    ; preds = %170
  %199 = getelementptr inbounds i8, i8* %173, i64 -9, !dbg !4411
  %200 = bitcast i8* %199 to i32*, !dbg !4412
  %201 = load i32, i32* %200, align 1, !dbg !4412, !tbaa !548
  %202 = zext i32 %201 to i64, !dbg !4411
  %203 = getelementptr inbounds i8, i8* %173, i64 -5, !dbg !4414
  %204 = bitcast i8* %203 to i32*, !dbg !4414
  %205 = load i32, i32* %204, align 1, !dbg !4414, !tbaa !548
  %206 = sub i32 %205, %201, !dbg !4415
  %207 = zext i32 %206 to i64, !dbg !4416
  br label %216

; <label>:208:                                    ; preds = %170
  %209 = getelementptr inbounds i8, i8* %173, i64 -17, !dbg !4417
  %210 = bitcast i8* %209 to i64*, !dbg !4418
  %211 = load i64, i64* %210, align 1, !dbg !4418, !tbaa !409
  %212 = getelementptr inbounds i8, i8* %173, i64 -9, !dbg !4420
  %213 = bitcast i8* %212 to i64*, !dbg !4420
  %214 = load i64, i64* %213, align 1, !dbg !4420, !tbaa !409
  %215 = sub i64 %214, %211, !dbg !4421
  br label %216

; <label>:216:                                    ; preds = %170, %177, %180, %188, %198, %208
  %217 = phi i64 [ %211, %208 ], [ %202, %198 ], [ %192, %188 ], [ %183, %180 ], [ %179, %177 ], [ 0, %170 ]
  %218 = phi i64 [ %215, %208 ], [ %207, %198 ], [ %197, %188 ], [ %187, %180 ], [ 0, %177 ], [ 0, %170 ], !dbg !4422
  %219 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 47, !dbg !4424
  %220 = load i32, i32* %219, align 8, !dbg !4424, !tbaa !599
  %221 = sext i32 %220 to i64, !dbg !4425
  %222 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 15, !dbg !4426
  %223 = load %struct.list*, %struct.list** %222, align 8, !dbg !4426, !tbaa !661
  %224 = getelementptr inbounds %struct.list, %struct.list* %223, i64 0, i32 5, !dbg !4426
  %225 = load i64, i64* %224, align 8, !dbg !4426, !tbaa !1069
  %226 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 16, !dbg !4430
  %227 = load i64, i64* %226, align 8, !dbg !4430, !tbaa !664
  %228 = mul i64 %225, 40, !dbg !4431
  %229 = add i64 %228, %227, !dbg !4432
  %230 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 11, !dbg !4433
  %231 = load %struct.redisCommand*, %struct.redisCommand** %230, align 8, !dbg !4433, !tbaa !1640
  %232 = icmp eq %struct.redisCommand* %231, null, !dbg !4434
  br i1 %232, label %236, label %233, !dbg !4434

; <label>:233:                                    ; preds = %216
  %234 = getelementptr inbounds %struct.redisCommand, %struct.redisCommand* %231, i64 0, i32 0, !dbg !4435
  %235 = load i8*, i8** %234, align 8, !dbg !4435, !tbaa !1643
  br label %236, !dbg !4434

; <label>:236:                                    ; preds = %216, %233
  %237 = phi i8* [ %235, %233 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), %216 ], !dbg !4434
  %238 = call i8* (i8*, i8*, ...) @sdscatfmt(i8* %0, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.48, i64 0, i64 0), i64 %112, i8* %130, i32 %131, i8* %139, i64 %143, i64 %146, i8* nonnull %6, i32 %150, i32 %158, i32 %163, i32 %171, i64 %217, i64 %218, i64 %221, i64 %225, i64 %229, i8* nonnull %7, i8* %237) #10, !dbg !4436
  call void @llvm.lifetime.end.p0i8(i64 3, i8* nonnull %7) #6, !dbg !4437
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #6, !dbg !4437
  ret i8* %238, !dbg !4438
}

; Function Attrs: noredzone
declare dso_local i8* @sdscatrepr(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @getClientsMaxBuffers(i64* nocapture, i64* nocapture) local_unnamed_addr #0 !dbg !4439 {
  %3 = alloca %struct.listIter, align 8
  %4 = bitcast %struct.listIter* %3 to i8*, !dbg !4453
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #6, !dbg !4453
  %5 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !4456, !tbaa !440
  call void @listRewind(%struct.list* %5, %struct.listIter* nonnull %3) #10, !dbg !4458
  %6 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #10, !dbg !4459
  %7 = icmp eq %struct.listNode* %6, null, !dbg !4461
  br i1 %7, label %76, label %8, !dbg !4462

; <label>:8:                                      ; preds = %2, %72
  %9 = phi %struct.listNode* [ %74, %72 ], [ %6, %2 ]
  %10 = phi i64 [ %73, %72 ], [ 0, %2 ]
  %11 = phi i64 [ %20, %72 ], [ 0, %2 ]
  %12 = getelementptr inbounds %struct.listNode, %struct.listNode* %9, i64 0, i32 2, !dbg !4463
  %13 = bitcast i8** %12 to %struct.client**, !dbg !4463
  %14 = load %struct.client*, %struct.client** %13, align 8, !dbg !4463, !tbaa !1150
  %15 = getelementptr inbounds %struct.client, %struct.client* %14, i64 0, i32 15, !dbg !4466
  %16 = load %struct.list*, %struct.list** %15, align 8, !dbg !4466, !tbaa !661
  %17 = getelementptr inbounds %struct.list, %struct.list* %16, i64 0, i32 5, !dbg !4466
  %18 = load i64, i64* %17, align 8, !dbg !4466, !tbaa !1069
  %19 = icmp ugt i64 %18, %11, !dbg !4468
  %20 = select i1 %19, i64 %18, i64 %11, !dbg !4469
  %21 = getelementptr inbounds %struct.client, %struct.client* %14, i64 0, i32 4, !dbg !4470
  %22 = load i8*, i8** %21, align 8, !dbg !4470, !tbaa !606
  %23 = getelementptr inbounds i8, i8* %22, i64 -1, !dbg !4474
  %24 = load i8, i8* %23, align 1, !dbg !4474, !tbaa !654
  %25 = trunc i8 %24 to i3, !dbg !4476
  switch i3 %25, label %72 [
    i3 0, label %26
    i3 1, label %29
    i3 2, label %33
    i3 3, label %38
    i3 -4, label %43
  ], !dbg !4476

; <label>:26:                                     ; preds = %8
  %27 = lshr i8 %24, 3, !dbg !4477
  %28 = zext i8 %27 to i64, !dbg !4477
  br label %47, !dbg !4478

; <label>:29:                                     ; preds = %8
  %30 = getelementptr inbounds i8, i8* %22, i64 -3, !dbg !4479
  %31 = load i8, i8* %30, align 1, !dbg !4480, !tbaa !654
  %32 = zext i8 %31 to i64, !dbg !4479
  br label %47, !dbg !4481

; <label>:33:                                     ; preds = %8
  %34 = getelementptr inbounds i8, i8* %22, i64 -5, !dbg !4482
  %35 = bitcast i8* %34 to i16*, !dbg !4483
  %36 = load i16, i16* %35, align 1, !dbg !4483, !tbaa !855
  %37 = zext i16 %36 to i64, !dbg !4482
  br label %47, !dbg !4484

; <label>:38:                                     ; preds = %8
  %39 = getelementptr inbounds i8, i8* %22, i64 -9, !dbg !4485
  %40 = bitcast i8* %39 to i32*, !dbg !4486
  %41 = load i32, i32* %40, align 1, !dbg !4486, !tbaa !548
  %42 = zext i32 %41 to i64, !dbg !4485
  br label %47, !dbg !4487

; <label>:43:                                     ; preds = %8
  %44 = getelementptr inbounds i8, i8* %22, i64 -17, !dbg !4488
  %45 = bitcast i8* %44 to i64*, !dbg !4489
  %46 = load i64, i64* %45, align 1, !dbg !4489, !tbaa !409
  br label %47, !dbg !4490

; <label>:47:                                     ; preds = %26, %29, %33, %38, %43
  %48 = phi i64 [ %46, %43 ], [ %42, %38 ], [ %37, %33 ], [ %32, %29 ], [ %28, %26 ], !dbg !4491
  %49 = icmp ugt i64 %48, %10, !dbg !4492
  br i1 %49, label %50, label %72, !dbg !4493

; <label>:50:                                     ; preds = %47
  switch i3 %25, label %72 [
    i3 0, label %51
    i3 1, label %54
    i3 2, label %58
    i3 3, label %63
    i3 -4, label %68
  ], !dbg !4497

; <label>:51:                                     ; preds = %50
  %52 = lshr i8 %24, 3, !dbg !4498
  %53 = zext i8 %52 to i64, !dbg !4498
  br label %72, !dbg !4499

; <label>:54:                                     ; preds = %50
  %55 = getelementptr inbounds i8, i8* %22, i64 -3, !dbg !4500
  %56 = load i8, i8* %55, align 1, !dbg !4501, !tbaa !654
  %57 = zext i8 %56 to i64, !dbg !4500
  br label %72, !dbg !4502

; <label>:58:                                     ; preds = %50
  %59 = getelementptr inbounds i8, i8* %22, i64 -5, !dbg !4503
  %60 = bitcast i8* %59 to i16*, !dbg !4504
  %61 = load i16, i16* %60, align 1, !dbg !4504, !tbaa !855
  %62 = zext i16 %61 to i64, !dbg !4503
  br label %72, !dbg !4505

; <label>:63:                                     ; preds = %50
  %64 = getelementptr inbounds i8, i8* %22, i64 -9, !dbg !4506
  %65 = bitcast i8* %64 to i32*, !dbg !4507
  %66 = load i32, i32* %65, align 1, !dbg !4507, !tbaa !548
  %67 = zext i32 %66 to i64, !dbg !4506
  br label %72, !dbg !4508

; <label>:68:                                     ; preds = %50
  %69 = getelementptr inbounds i8, i8* %22, i64 -17, !dbg !4509
  %70 = bitcast i8* %69 to i64*, !dbg !4510
  %71 = load i64, i64* %70, align 1, !dbg !4510, !tbaa !409
  br label %72, !dbg !4511

; <label>:72:                                     ; preds = %8, %68, %63, %58, %54, %51, %50, %47
  %73 = phi i64 [ %10, %47 ], [ %71, %68 ], [ %67, %63 ], [ %62, %58 ], [ %57, %54 ], [ %53, %51 ], [ 0, %50 ], [ %10, %8 ], !dbg !4512
  %74 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #10, !dbg !4459
  %75 = icmp eq %struct.listNode* %74, null, !dbg !4461
  br i1 %75, label %76, label %8, !dbg !4462, !llvm.loop !4513

; <label>:76:                                     ; preds = %72, %2
  %77 = phi i64 [ 0, %2 ], [ %20, %72 ], !dbg !4515
  %78 = phi i64 [ 0, %2 ], [ %73, %72 ], !dbg !4516
  store i64 %77, i64* %0, align 8, !dbg !4517, !tbaa !409
  store i64 %78, i64* %1, align 8, !dbg !4518, !tbaa !409
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #6, !dbg !4519
  ret void, !dbg !4519
}

; Function Attrs: noredzone nounwind
define dso_local void @genClientPeerId(%struct.client* nocapture readonly, i8*, i64) local_unnamed_addr #0 !dbg !4323 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4523
  %5 = load i32, i32* %4, align 8, !dbg !4523, !tbaa !922
  %6 = and i32 %5, 2048, !dbg !4524
  %7 = icmp eq i32 %6, 0, !dbg !4524
  br i1 %7, label %11, label %8, !dbg !4525

; <label>:8:                                      ; preds = %3
  %9 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 31), align 8, !dbg !4526, !tbaa !2588
  %10 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* %1, i64 %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* %9) #10, !dbg !4527
  br label %15, !dbg !4528

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !4529
  %13 = load i32, i32* %12, align 8, !dbg !4529, !tbaa !593
  %14 = tail call i32 @anetFormatPeer(i32 %13, i8* %1, i64 %2) #10, !dbg !4530
  br label %15

; <label>:15:                                     ; preds = %11, %8
  ret void, !dbg !4531
}

; Function Attrs: noredzone
declare dso_local i32 @anetFormatPeer(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @getClientPeerId(%struct.client* nocapture) local_unnamed_addr #0 !dbg !4203 {
  %2 = alloca [78 x i8], align 16
  %3 = getelementptr inbounds [78 x i8], [78 x i8]* %2, i64 0, i64 0, !dbg !4533
  call void @llvm.lifetime.start.p0i8(i64 78, i8* nonnull %3) #6, !dbg !4533
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 45, !dbg !4535
  %5 = load i8*, i8** %4, align 8, !dbg !4535, !tbaa !714
  %6 = icmp eq i8* %5, null, !dbg !4536
  br i1 %6, label %7, label %21, !dbg !4537

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4542
  %9 = load i32, i32* %8, align 8, !dbg !4542, !tbaa !922
  %10 = and i32 %9, 2048, !dbg !4543
  %11 = icmp eq i32 %10, 0, !dbg !4543
  br i1 %11, label %15, label %12, !dbg !4544

; <label>:12:                                     ; preds = %7
  %13 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 31), align 8, !dbg !4545, !tbaa !2588
  %14 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %3, i64 78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* %13) #10, !dbg !4546
  br label %19, !dbg !4547

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !4548
  %17 = load i32, i32* %16, align 8, !dbg !4548, !tbaa !593
  %18 = call i32 @anetFormatPeer(i32 %17, i8* nonnull %3, i64 78) #10, !dbg !4549
  br label %19

; <label>:19:                                     ; preds = %12, %15
  %20 = call i8* @sdsnew(i8* nonnull %3) #10, !dbg !4550
  store i8* %20, i8** %4, align 8, !dbg !4551, !tbaa !714
  br label %21, !dbg !4552

; <label>:21:                                     ; preds = %19, %1
  %22 = phi i8* [ %20, %19 ], [ %5, %1 ], !dbg !4553
  call void @llvm.lifetime.end.p0i8(i64 78, i8* nonnull %3) #6, !dbg !4554
  ret i8* %22, !dbg !4555
}

; Function Attrs: noredzone
declare dso_local i32 @aeGetFileEvents(%struct.aeEventLoop*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatfmt(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind readonly
define dso_local i64 @getClientOutputBufferMemoryUsage(%struct.client* nocapture readonly) local_unnamed_addr #5 !dbg !1225 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !4558
  %3 = load i64, i64* %2, align 8, !dbg !4558, !tbaa !664
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !4559
  %5 = load %struct.list*, %struct.list** %4, align 8, !dbg !4559, !tbaa !661
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 5, !dbg !4559
  %7 = load i64, i64* %6, align 8, !dbg !4559, !tbaa !1069
  %8 = mul i64 %7, 40, !dbg !4560
  %9 = add i64 %8, %3, !dbg !4561
  ret i64 %9, !dbg !4562
}

; Function Attrs: noredzone nounwind
define dso_local i8* @getAllClientsInfoString(i32) local_unnamed_addr #0 !dbg !4563 {
  %2 = alloca %struct.listIter, align 8
  %3 = bitcast %struct.listIter* %2 to i8*, !dbg !4573
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #6, !dbg !4573
  %4 = load i8*, i8** @SDS_NOINIT, align 8, !dbg !4574, !tbaa !475
  %5 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !4575, !tbaa !440
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 5, !dbg !4575
  %7 = load i64, i64* %6, align 8, !dbg !4575, !tbaa !1069
  %8 = mul i64 %7, 200, !dbg !4576
  %9 = tail call i8* @sdsnewlen(i8* %4, i64 %8) #10, !dbg !4577
  tail call void @sdsclear(i8* %9) #10, !dbg !4579
  %10 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !4580, !tbaa !440
  call void @listRewind(%struct.list* %10, %struct.listIter* nonnull %2) #10, !dbg !4582
  %11 = icmp eq i32 %0, -1
  br label %12, !dbg !4583

; <label>:12:                                     ; preds = %35, %1
  %13 = phi i8* [ %37, %35 ], [ %9, %1 ]
  br label %14, !dbg !4584

; <label>:14:                                     ; preds = %12, %32
  %15 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #10, !dbg !4584
  %16 = icmp eq %struct.listNode* %15, null, !dbg !4586
  br i1 %16, label %38, label %17, !dbg !4583

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.listNode, %struct.listNode* %15, i64 0, i32 2, !dbg !4587
  %19 = bitcast i8** %18 to %struct.client**, !dbg !4587
  %20 = load %struct.client*, %struct.client** %19, align 8, !dbg !4587, !tbaa !1150
  br i1 %11, label %35, label %21, !dbg !4590

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 21, !dbg !4594
  %23 = load i32, i32* %22, align 8, !dbg !4594, !tbaa !922
  %24 = and i32 %23, 2, !dbg !4595
  %25 = icmp eq i32 %24, 0, !dbg !4595
  br i1 %25, label %26, label %32, !dbg !4596

; <label>:26:                                     ; preds = %21
  %27 = and i32 %23, 5, !dbg !4597
  %28 = icmp eq i32 %27, 1, !dbg !4597
  br i1 %28, label %32, label %29, !dbg !4597

; <label>:29:                                     ; preds = %26
  %30 = lshr i32 %23, 17, !dbg !4598
  %31 = and i32 %30, 2, !dbg !4598
  br label %32, !dbg !4598

; <label>:32:                                     ; preds = %21, %26, %29
  %33 = phi i32 [ 3, %21 ], [ 1, %26 ], [ %31, %29 ], !dbg !4599
  %34 = icmp eq i32 %33, %0, !dbg !4600
  br i1 %34, label %35, label %14, !dbg !4601, !llvm.loop !4602

; <label>:35:                                     ; preds = %32, %17
  %36 = call i8* @catClientInfoString(i8* %13, %struct.client* %20) #12, !dbg !4604
  %37 = call i8* @sdscatlen(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), i64 1) #10, !dbg !4605
  br label %12, !dbg !4583, !llvm.loop !4602

; <label>:38:                                     ; preds = %14
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #6, !dbg !4606
  ret i8* %13, !dbg !4607
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @getClientType(%struct.client* nocapture readonly) local_unnamed_addr #5 !dbg !1238 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4609
  %3 = load i32, i32* %2, align 8, !dbg !4609, !tbaa !922
  %4 = and i32 %3, 2, !dbg !4610
  %5 = icmp eq i32 %4, 0, !dbg !4610
  br i1 %5, label %6, label %12, !dbg !4611

; <label>:6:                                      ; preds = %1
  %7 = and i32 %3, 5, !dbg !4612
  %8 = icmp eq i32 %7, 1, !dbg !4612
  br i1 %8, label %12, label %9, !dbg !4612

; <label>:9:                                      ; preds = %6
  %10 = lshr i32 %3, 17, !dbg !4613
  %11 = and i32 %10, 2, !dbg !4613
  br label %12, !dbg !4613

; <label>:12:                                     ; preds = %9, %6, %1
  %13 = phi i32 [ 3, %1 ], [ 1, %6 ], [ %11, %9 ], !dbg !4614
  ret i32 %13, !dbg !4615
}

; Function Attrs: noredzone nounwind
define dso_local void @clientCommand(%struct.client*) local_unnamed_addr #0 !dbg !4616 {
  %2 = alloca i64, align 8
  %3 = alloca [78 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = alloca %struct.listIter, align 8
  %6 = alloca [14 x i8*], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = bitcast %struct.listIter* %5 to i8*, !dbg !4680
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #6, !dbg !4680
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !4681
  %12 = load i32, i32* %11, align 8, !dbg !4681, !tbaa !619
  %13 = icmp eq i32 %12, 2, !dbg !4682
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %15 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !4683, !tbaa !622
  %16 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 1
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !4683, !tbaa !475
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 2
  %19 = load i8*, i8** %18, align 8, !dbg !4683, !tbaa !376
  br i1 %13, label %20, label %26, !dbg !4684

; <label>:20:                                     ; preds = %1
  %21 = tail call i32 @strcasecmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #13, !dbg !4685
  %22 = icmp eq i32 %21, 0, !dbg !4685
  br i1 %22, label %23, label %26, !dbg !4686

; <label>:23:                                     ; preds = %20
  %24 = bitcast [14 x i8*]* %6 to i8*, !dbg !4687
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %24) #6, !dbg !4687
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %24, i8* align 16 bitcast ([14 x i8*]* @clientCommand.help to i8*), i64 112, i1 false), !dbg !4688
  %25 = getelementptr inbounds [14 x i8*], [14 x i8*]* %6, i64 0, i64 0, !dbg !4689
  call void @addReplyHelp(%struct.client* nonnull %0, i8** nonnull %25) #12, !dbg !4690
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %24) #6, !dbg !4691
  br label %526, !dbg !4692

; <label>:26:                                     ; preds = %1, %20
  %27 = tail call i32 @strcasecmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0)) #13, !dbg !4693
  %28 = icmp ne i32 %27, 0, !dbg !4693
  %29 = xor i1 %13, true, !dbg !4694
  %30 = or i1 %28, %29, !dbg !4694
  br i1 %30, label %50, label %31, !dbg !4694

; <label>:31:                                     ; preds = %26
  %32 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 0, !dbg !4695
  %33 = load i64, i64* %32, align 8, !dbg !4695, !tbaa !460
  switch i64 %33, label %38 [
    i64 0, label %34
    i64 1, label %36
  ], !dbg !4698

; <label>:34:                                     ; preds = %31
  %35 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !4699, !tbaa !2070
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %35) #10, !dbg !4700
  br label %526, !dbg !4700

; <label>:36:                                     ; preds = %31
  %37 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !4701, !tbaa !2073
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %37) #10, !dbg !4702
  br label %526, !dbg !4702

; <label>:38:                                     ; preds = %31
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !4706
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %39) #6, !dbg !4706
  store i8 58, i8* %39, align 16, !dbg !4707, !tbaa !654
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 1, !dbg !4708
  %41 = call i32 @ll2string(i8* nonnull %40, i64 127, i64 %33) #10, !dbg !4709
  %42 = add nsw i32 %41, 1, !dbg !4711
  %43 = sext i32 %42 to i64, !dbg !4712
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %43, !dbg !4712
  store i8 13, i8* %44, align 1, !dbg !4713, !tbaa !654
  %45 = add nsw i32 %41, 2, !dbg !4714
  %46 = sext i32 %45 to i64, !dbg !4715
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %46, !dbg !4715
  store i8 10, i8* %47, align 1, !dbg !4716, !tbaa !654
  %48 = add nsw i32 %41, 3, !dbg !4717
  %49 = sext i32 %48 to i64, !dbg !4718
  call void @addReplyString(%struct.client* nonnull %0, i8* nonnull %39, i64 %49) #10, !dbg !4719
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %39) #6, !dbg !4720
  br label %526

; <label>:50:                                     ; preds = %26
  %51 = tail call i32 @strcasecmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i64 0, i64 0)) #13, !dbg !4721
  %52 = icmp eq i32 %51, 0, !dbg !4721
  br i1 %52, label %53, label %114, !dbg !4722

; <label>:53:                                     ; preds = %50
  %54 = icmp eq i32 %12, 4, !dbg !4724
  br i1 %54, label %55, label %82, !dbg !4726

; <label>:55:                                     ; preds = %53
  %56 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 2, !dbg !4727
  %57 = load %struct.redisObject*, %struct.redisObject** %56, align 8, !dbg !4727, !tbaa !475
  %58 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %57, i64 0, i32 2, !dbg !4728
  %59 = load i8*, i8** %58, align 8, !dbg !4728, !tbaa !376
  %60 = tail call i32 @strcasecmp(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0)) #13, !dbg !4729
  %61 = icmp eq i32 %60, 0, !dbg !4729
  br i1 %61, label %62, label %82, !dbg !4730

; <label>:62:                                     ; preds = %55
  %63 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 3, !dbg !4731
  %64 = load %struct.redisObject*, %struct.redisObject** %63, align 8, !dbg !4731, !tbaa !475
  %65 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %64, i64 0, i32 2, !dbg !4733
  %66 = load i8*, i8** %65, align 8, !dbg !4733, !tbaa !376
  %67 = tail call i32 @strcasecmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i64 0, i64 0)) #13, !dbg !4741
  %68 = icmp eq i32 %67, 0, !dbg !4741
  br i1 %68, label %85, label %69, !dbg !4743

; <label>:69:                                     ; preds = %62
  %70 = tail call i32 @strcasecmp(i8* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0)) #13, !dbg !4744
  %71 = icmp eq i32 %70, 0, !dbg !4744
  br i1 %71, label %85, label %72, !dbg !4746

; <label>:72:                                     ; preds = %69
  %73 = tail call i32 @strcasecmp(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #13, !dbg !4747
  %74 = icmp eq i32 %73, 0, !dbg !4747
  br i1 %74, label %85, label %75, !dbg !4749

; <label>:75:                                     ; preds = %72
  %76 = tail call i32 @strcasecmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i64 0, i64 0)) #13, !dbg !4750
  %77 = icmp eq i32 %76, 0, !dbg !4750
  br i1 %77, label %85, label %78, !dbg !4752

; <label>:78:                                     ; preds = %75
  %79 = tail call i32 @strcasecmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #13, !dbg !4753
  %80 = icmp eq i32 %79, 0, !dbg !4753
  br i1 %80, label %85, label %81

; <label>:81:                                     ; preds = %78
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i64 0, i64 0), i8* %66) #12, !dbg !4755
  br label %526

; <label>:82:                                     ; preds = %55, %53
  br i1 %13, label %85, label %83, !dbg !4758

; <label>:83:                                     ; preds = %82
  %84 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4759, !tbaa !4762
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %84) #12, !dbg !4763
  br label %526

; <label>:85:                                     ; preds = %78, %75, %72, %69, %62, %82
  %86 = phi i32 [ -1, %82 ], [ 2, %75 ], [ 1, %72 ], [ 1, %69 ], [ 0, %62 ], [ 3, %78 ], !dbg !4764
  %87 = tail call i8* @getAllClientsInfoString(i32 %86) #12, !dbg !4765
  %88 = getelementptr inbounds i8, i8* %87, i64 -1, !dbg !4769
  %89 = load i8, i8* %88, align 1, !dbg !4769, !tbaa !654
  %90 = trunc i8 %89 to i3, !dbg !4771
  switch i3 %90, label %112 [
    i3 0, label %91
    i3 1, label %94
    i3 2, label %98
    i3 3, label %103
    i3 -4, label %108
  ], !dbg !4771

; <label>:91:                                     ; preds = %85
  %92 = lshr i8 %89, 3, !dbg !4772
  %93 = zext i8 %92 to i64, !dbg !4772
  br label %112, !dbg !4773

; <label>:94:                                     ; preds = %85
  %95 = getelementptr inbounds i8, i8* %87, i64 -3, !dbg !4774
  %96 = load i8, i8* %95, align 1, !dbg !4775, !tbaa !654
  %97 = zext i8 %96 to i64, !dbg !4774
  br label %112, !dbg !4776

; <label>:98:                                     ; preds = %85
  %99 = getelementptr inbounds i8, i8* %87, i64 -5, !dbg !4777
  %100 = bitcast i8* %99 to i16*, !dbg !4778
  %101 = load i16, i16* %100, align 1, !dbg !4778, !tbaa !855
  %102 = zext i16 %101 to i64, !dbg !4777
  br label %112, !dbg !4779

; <label>:103:                                    ; preds = %85
  %104 = getelementptr inbounds i8, i8* %87, i64 -9, !dbg !4780
  %105 = bitcast i8* %104 to i32*, !dbg !4781
  %106 = load i32, i32* %105, align 1, !dbg !4781, !tbaa !548
  %107 = zext i32 %106 to i64, !dbg !4780
  br label %112, !dbg !4782

; <label>:108:                                    ; preds = %85
  %109 = getelementptr inbounds i8, i8* %87, i64 -17, !dbg !4783
  %110 = bitcast i8* %109 to i64*, !dbg !4784
  %111 = load i64, i64* %110, align 1, !dbg !4784, !tbaa !409
  br label %112, !dbg !4785

; <label>:112:                                    ; preds = %85, %91, %94, %98, %103, %108
  %113 = phi i64 [ %111, %108 ], [ %107, %103 ], [ %102, %98 ], [ %97, %94 ], [ %93, %91 ], [ 0, %85 ], !dbg !4786
  tail call void @addReplyBulkCBuffer(%struct.client* nonnull %0, i8* %87, i64 %113) #12, !dbg !4787
  tail call void @sdsfree(i8* %87) #10, !dbg !4788
  br label %526

; <label>:114:                                    ; preds = %50
  %115 = tail call i32 @strcasecmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0)) #13, !dbg !4789
  %116 = icmp eq i32 %115, 0, !dbg !4789
  %117 = icmp eq i32 %12, 3, !dbg !4790
  %118 = and i1 %117, %116, !dbg !4791
  br i1 %118, label %119, label %150, !dbg !4791

; <label>:119:                                    ; preds = %114
  %120 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 2, !dbg !4792
  %121 = load %struct.redisObject*, %struct.redisObject** %120, align 8, !dbg !4792, !tbaa !475
  %122 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %121, i64 0, i32 2, !dbg !4795
  %123 = load i8*, i8** %122, align 8, !dbg !4795, !tbaa !376
  %124 = tail call i32 @strcasecmp(i8* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i64 0, i64 0)) #13, !dbg !4796
  %125 = icmp eq i32 %124, 0, !dbg !4796
  br i1 %125, label %126, label %131, !dbg !4797

; <label>:126:                                    ; preds = %119
  %127 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4798
  %128 = load i32, i32* %127, align 8, !dbg !4800, !tbaa !922
  %129 = and i32 %128, -20971521, !dbg !4800
  store i32 %129, i32* %127, align 8, !dbg !4800, !tbaa !922
  %130 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !4801, !tbaa !4802
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %130) #12, !dbg !4803
  br label %526, !dbg !4804

; <label>:131:                                    ; preds = %119
  %132 = tail call i32 @strcasecmp(i8* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0)) #13, !dbg !4805
  %133 = icmp eq i32 %132, 0, !dbg !4805
  br i1 %133, label %134, label %138, !dbg !4807

; <label>:134:                                    ; preds = %131
  %135 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4808
  %136 = load i32, i32* %135, align 8, !dbg !4810, !tbaa !922
  %137 = or i32 %136, 4194304, !dbg !4810
  store i32 %137, i32* %135, align 8, !dbg !4810, !tbaa !922
  br label %526, !dbg !4811

; <label>:138:                                    ; preds = %131
  %139 = tail call i32 @strcasecmp(i8* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i64 0, i64 0)) #13, !dbg !4812
  %140 = icmp eq i32 %139, 0, !dbg !4812
  br i1 %140, label %141, label %148, !dbg !4814

; <label>:141:                                    ; preds = %138
  %142 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4815
  %143 = load i32, i32* %142, align 8, !dbg !4815, !tbaa !922
  %144 = and i32 %143, 4194304, !dbg !4818
  %145 = icmp eq i32 %144, 0, !dbg !4818
  br i1 %145, label %146, label %526, !dbg !4819

; <label>:146:                                    ; preds = %141
  %147 = or i32 %143, 8388608, !dbg !4820
  store i32 %147, i32* %142, align 8, !dbg !4820, !tbaa !922
  br label %526, !dbg !4821

; <label>:148:                                    ; preds = %138
  %149 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4822, !tbaa !4762
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %149) #12, !dbg !4824
  br label %526, !dbg !4825

; <label>:150:                                    ; preds = %114
  %151 = tail call i32 @strcasecmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0)) #13, !dbg !4826
  %152 = icmp eq i32 %151, 0, !dbg !4826
  br i1 %152, label %153, label %365, !dbg !4827

; <label>:153:                                    ; preds = %150
  br i1 %117, label %154, label %159, !dbg !4834

; <label>:154:                                    ; preds = %153
  %155 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 2, !dbg !4835
  %156 = load %struct.redisObject*, %struct.redisObject** %155, align 8, !dbg !4835, !tbaa !475
  %157 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %156, i64 0, i32 2, !dbg !4837
  %158 = load i8*, i8** %157, align 8, !dbg !4837, !tbaa !376
  br label %252, !dbg !4838

; <label>:159:                                    ; preds = %153
  %160 = icmp sgt i32 %12, 3, !dbg !4839
  br i1 %160, label %161, label %250, !dbg !4840

; <label>:161:                                    ; preds = %159
  %162 = bitcast i64* %7 to i8*
  br label %163, !dbg !4842

; <label>:163:                                    ; preds = %161, %242
  %164 = phi i8* [ null, %161 ], [ %246, %242 ]
  %165 = phi i32 [ -1, %161 ], [ %245, %242 ]
  %166 = phi i32 [ 2, %161 ], [ %247, %242 ]
  %167 = phi i32 [ 1, %161 ], [ %244, %242 ]
  %168 = phi i64 [ 0, %161 ], [ %243, %242 ]
  %169 = phi i32 [ %12, %161 ], [ %248, %242 ]
  %170 = or i32 %166, 1, !dbg !4843
  %171 = icmp sgt i32 %169, %170, !dbg !4844
  %172 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !4845, !tbaa !622
  %173 = zext i32 %166 to i64, !dbg !4846
  %174 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %172, i64 %173, !dbg !4846
  %175 = load %struct.redisObject*, %struct.redisObject** %174, align 8, !dbg !4846, !tbaa !475
  %176 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %175, i64 0, i32 2, !dbg !4847
  %177 = load i8*, i8** %176, align 8, !dbg !4847, !tbaa !376
  %178 = call i32 @strcasecmp(i8* %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i64 0, i64 0)) #13, !dbg !4848
  %179 = icmp eq i32 %178, 0, !dbg !4848
  %180 = and i1 %171, %179, !dbg !4849
  br i1 %180, label %181, label %188, !dbg !4849

; <label>:181:                                    ; preds = %163
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %162) #6, !dbg !4850
  %182 = zext i32 %170 to i64, !dbg !4851
  %183 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %172, i64 %182, !dbg !4851
  %184 = load %struct.redisObject*, %struct.redisObject** %183, align 8, !dbg !4851, !tbaa !475
  %185 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %184, i64* nonnull %7, i8* null) #10, !dbg !4854
  %186 = icmp eq i32 %185, 0, !dbg !4855
  %187 = load i64, i64* %7, align 8, !dbg !4856
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %162) #6, !dbg !4857
  br i1 %186, label %242, label %526

; <label>:188:                                    ; preds = %163
  %189 = call i32 @strcasecmp(i8* %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0)) #13, !dbg !4858
  %190 = icmp eq i32 %189, 0, !dbg !4858
  %191 = and i1 %171, %190, !dbg !4860
  br i1 %191, label %192, label %213, !dbg !4860

; <label>:192:                                    ; preds = %188
  %193 = zext i32 %170 to i64, !dbg !4861
  %194 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %172, i64 %193, !dbg !4861
  %195 = load %struct.redisObject*, %struct.redisObject** %194, align 8, !dbg !4861, !tbaa !475
  %196 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %195, i64 0, i32 2, !dbg !4863
  %197 = load i8*, i8** %196, align 8, !dbg !4863, !tbaa !376
  %198 = call i32 @strcasecmp(i8* %197, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i64 0, i64 0)) #13, !dbg !4866
  %199 = icmp eq i32 %198, 0, !dbg !4866
  br i1 %199, label %242, label %200, !dbg !4867

; <label>:200:                                    ; preds = %192
  %201 = call i32 @strcasecmp(i8* %197, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0)) #13, !dbg !4868
  %202 = icmp eq i32 %201, 0, !dbg !4868
  br i1 %202, label %242, label %203, !dbg !4869

; <label>:203:                                    ; preds = %200
  %204 = call i32 @strcasecmp(i8* %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #13, !dbg !4870
  %205 = icmp eq i32 %204, 0, !dbg !4870
  br i1 %205, label %242, label %206, !dbg !4871

; <label>:206:                                    ; preds = %203
  %207 = call i32 @strcasecmp(i8* %197, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i64 0, i64 0)) #13, !dbg !4872
  %208 = icmp eq i32 %207, 0, !dbg !4872
  br i1 %208, label %242, label %209, !dbg !4873

; <label>:209:                                    ; preds = %206
  %210 = call i32 @strcasecmp(i8* %197, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #13, !dbg !4874
  %211 = icmp eq i32 %210, 0, !dbg !4874
  br i1 %211, label %242, label %212

; <label>:212:                                    ; preds = %209
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.69, i64 0, i64 0), i8* %197) #12, !dbg !4875
  br label %526, !dbg !4878

; <label>:213:                                    ; preds = %188
  %214 = call i32 @strcasecmp(i8* %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0)) #13, !dbg !4879
  %215 = icmp eq i32 %214, 0, !dbg !4879
  %216 = and i1 %171, %215, !dbg !4881
  br i1 %216, label %217, label %223, !dbg !4881

; <label>:217:                                    ; preds = %213
  %218 = zext i32 %170 to i64, !dbg !4882
  %219 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %172, i64 %218, !dbg !4882
  %220 = load %struct.redisObject*, %struct.redisObject** %219, align 8, !dbg !4882, !tbaa !475
  %221 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %220, i64 0, i32 2, !dbg !4884
  %222 = load i8*, i8** %221, align 8, !dbg !4884, !tbaa !376
  br label %242, !dbg !4885

; <label>:223:                                    ; preds = %213
  %224 = call i32 @strcasecmp(i8* %177, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0)) #13, !dbg !4886
  %225 = icmp eq i32 %224, 0, !dbg !4886
  %226 = and i1 %171, %225, !dbg !4888
  br i1 %226, label %227, label %240, !dbg !4888

; <label>:227:                                    ; preds = %223
  %228 = zext i32 %170 to i64, !dbg !4889
  %229 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %172, i64 %228, !dbg !4889
  %230 = load %struct.redisObject*, %struct.redisObject** %229, align 8, !dbg !4889, !tbaa !475
  %231 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %230, i64 0, i32 2, !dbg !4892
  %232 = load i8*, i8** %231, align 8, !dbg !4892, !tbaa !376
  %233 = call i32 @strcasecmp(i8* %232, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i64 0, i64 0)) #13, !dbg !4893
  %234 = icmp eq i32 %233, 0, !dbg !4893
  br i1 %234, label %242, label %235, !dbg !4894

; <label>:235:                                    ; preds = %227
  %236 = call i32 @strcasecmp(i8* %232, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.78, i64 0, i64 0)) #13, !dbg !4895
  %237 = icmp eq i32 %236, 0, !dbg !4895
  br i1 %237, label %242, label %238, !dbg !4897

; <label>:238:                                    ; preds = %235
  %239 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4898, !tbaa !4762
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %239) #12, !dbg !4900
  br label %526, !dbg !4901

; <label>:240:                                    ; preds = %223
  %241 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4902, !tbaa !4762
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %241) #12, !dbg !4904
  br label %526, !dbg !4905

; <label>:242:                                    ; preds = %181, %217, %227, %235, %192, %200, %203, %206, %209
  %243 = phi i64 [ %187, %181 ], [ %168, %217 ], [ %168, %227 ], [ %168, %235 ], [ %168, %192 ], [ %168, %200 ], [ %168, %203 ], [ %168, %206 ], [ %168, %209 ], !dbg !4830
  %244 = phi i32 [ %167, %181 ], [ %167, %217 ], [ 1, %227 ], [ 0, %235 ], [ %167, %192 ], [ %167, %200 ], [ %167, %203 ], [ %167, %206 ], [ %167, %209 ], !dbg !4906
  %245 = phi i32 [ %165, %181 ], [ %165, %217 ], [ %165, %227 ], [ %165, %235 ], [ 0, %192 ], [ 1, %200 ], [ 1, %203 ], [ 2, %206 ], [ 3, %209 ], !dbg !4908
  %246 = phi i8* [ %164, %181 ], [ %222, %217 ], [ %164, %227 ], [ %164, %235 ], [ %164, %192 ], [ %164, %200 ], [ %164, %203 ], [ %164, %206 ], [ %164, %209 ], !dbg !4908
  %247 = add nuw nsw i32 %166, 2, !dbg !4909
  %248 = load i32, i32* %11, align 8, !dbg !4910, !tbaa !619
  %249 = icmp slt i32 %247, %248, !dbg !4911
  br i1 %249, label %163, label %252, !dbg !4842

; <label>:250:                                    ; preds = %159
  %251 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !4912, !tbaa !4762
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %251) #12, !dbg !4914
  br label %526, !dbg !4915

; <label>:252:                                    ; preds = %242, %154
  %253 = phi i64 [ 0, %154 ], [ %243, %242 ], !dbg !4830
  %254 = phi i32 [ 0, %154 ], [ %244, %242 ], !dbg !4908
  %255 = phi i32 [ -1, %154 ], [ %245, %242 ], !dbg !4829
  %256 = phi i8* [ %158, %154 ], [ %246, %242 ], !dbg !4908
  %257 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 38), align 8, !dbg !4916, !tbaa !440
  call void @listRewind(%struct.list* %257, %struct.listIter* nonnull %5) #10, !dbg !4918
  %258 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #10, !dbg !4919
  %259 = icmp eq %struct.listNode* %258, null, !dbg !4921
  br i1 %259, label %330, label %260, !dbg !4922

; <label>:260:                                    ; preds = %252
  %261 = icmp eq i8* %256, null
  %262 = icmp eq i32 %255, -1
  %263 = getelementptr inbounds [78 x i8], [78 x i8]* %3, i64 0, i64 0
  %264 = icmp eq i64 %253, 0
  %265 = icmp ne i32 %254, 0
  br label %266, !dbg !4922

; <label>:266:                                    ; preds = %260, %325
  %267 = phi %struct.listNode* [ %258, %260 ], [ %328, %325 ]
  %268 = phi i32 [ 0, %260 ], [ %326, %325 ]
  %269 = phi i32 [ 0, %260 ], [ %327, %325 ]
  br label %270, !dbg !4922

; <label>:270:                                    ; preds = %266, %320
  %271 = phi %struct.listNode* [ %267, %266 ], [ %321, %320 ]
  %272 = getelementptr inbounds %struct.listNode, %struct.listNode* %271, i64 0, i32 2, !dbg !4923
  %273 = bitcast i8** %272 to %struct.client**, !dbg !4923
  %274 = load %struct.client*, %struct.client** %273, align 8, !dbg !4923, !tbaa !1150
  br i1 %261, label %297, label %275, !dbg !4925

; <label>:275:                                    ; preds = %270
  call void @llvm.lifetime.start.p0i8(i64 78, i8* nonnull %263) #6, !dbg !4927
  %276 = getelementptr inbounds %struct.client, %struct.client* %274, i64 0, i32 45, !dbg !4928
  %277 = load i8*, i8** %276, align 8, !dbg !4928, !tbaa !714
  %278 = icmp eq i8* %277, null, !dbg !4929
  br i1 %278, label %279, label %293, !dbg !4930

; <label>:279:                                    ; preds = %275
  %280 = getelementptr inbounds %struct.client, %struct.client* %274, i64 0, i32 21, !dbg !4935
  %281 = load i32, i32* %280, align 8, !dbg !4935, !tbaa !922
  %282 = and i32 %281, 2048, !dbg !4936
  %283 = icmp eq i32 %282, 0, !dbg !4936
  br i1 %283, label %287, label %284, !dbg !4937

; <label>:284:                                    ; preds = %279
  %285 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 31), align 8, !dbg !4938, !tbaa !2588
  %286 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %263, i64 78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i8* %285) #10, !dbg !4939
  br label %291, !dbg !4940

; <label>:287:                                    ; preds = %279
  %288 = getelementptr inbounds %struct.client, %struct.client* %274, i64 0, i32 1, !dbg !4941
  %289 = load i32, i32* %288, align 8, !dbg !4941, !tbaa !593
  %290 = call i32 @anetFormatPeer(i32 %289, i8* nonnull %263, i64 78) #10, !dbg !4942
  br label %291

; <label>:291:                                    ; preds = %287, %284
  %292 = call i8* @sdsnew(i8* nonnull %263) #10, !dbg !4943
  store i8* %292, i8** %276, align 8, !dbg !4944, !tbaa !714
  br label %293, !dbg !4945

; <label>:293:                                    ; preds = %275, %291
  %294 = phi i8* [ %292, %291 ], [ %277, %275 ], !dbg !4946
  call void @llvm.lifetime.end.p0i8(i64 78, i8* nonnull %263) #6, !dbg !4947
  %295 = call i32 @strcmp(i8* %294, i8* nonnull %256) #10, !dbg !4948
  %296 = icmp eq i32 %295, 0, !dbg !4949
  br i1 %296, label %297, label %320, !dbg !4950

; <label>:297:                                    ; preds = %293, %270
  br i1 %262, label %312, label %298, !dbg !4951

; <label>:298:                                    ; preds = %297
  %299 = getelementptr inbounds %struct.client, %struct.client* %274, i64 0, i32 21, !dbg !4955
  %300 = load i32, i32* %299, align 8, !dbg !4955, !tbaa !922
  %301 = and i32 %300, 2, !dbg !4956
  %302 = icmp eq i32 %301, 0, !dbg !4956
  br i1 %302, label %303, label %309, !dbg !4957

; <label>:303:                                    ; preds = %298
  %304 = and i32 %300, 5, !dbg !4958
  %305 = icmp eq i32 %304, 1, !dbg !4958
  br i1 %305, label %309, label %306, !dbg !4958

; <label>:306:                                    ; preds = %303
  %307 = lshr i32 %300, 17, !dbg !4959
  %308 = and i32 %307, 2, !dbg !4959
  br label %309, !dbg !4959

; <label>:309:                                    ; preds = %298, %303, %306
  %310 = phi i32 [ 3, %298 ], [ 1, %303 ], [ %308, %306 ], !dbg !4960
  %311 = icmp eq i32 %310, %255, !dbg !4961
  br i1 %311, label %312, label %320, !dbg !4962

; <label>:312:                                    ; preds = %309, %297
  br i1 %264, label %317, label %313, !dbg !4963

; <label>:313:                                    ; preds = %312
  %314 = getelementptr inbounds %struct.client, %struct.client* %274, i64 0, i32 0, !dbg !4965
  %315 = load i64, i64* %314, align 8, !dbg !4965, !tbaa !460
  %316 = icmp eq i64 %315, %253, !dbg !4966
  br i1 %316, label %317, label %320, !dbg !4967

; <label>:317:                                    ; preds = %313, %312
  %318 = icmp eq %struct.client* %274, %0, !dbg !4968
  %319 = and i1 %265, %318, !dbg !4970
  br i1 %319, label %320, label %323, !dbg !4970

; <label>:320:                                    ; preds = %317, %313, %309, %293
  %321 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #10, !dbg !4919
  %322 = icmp eq %struct.listNode* %321, null, !dbg !4921
  br i1 %322, label %330, label %270, !dbg !4922, !llvm.loop !4971

; <label>:323:                                    ; preds = %317
  br i1 %318, label %325, label %324, !dbg !4973

; <label>:324:                                    ; preds = %323
  call void @freeClient(%struct.client* %274) #12, !dbg !4974
  br label %325

; <label>:325:                                    ; preds = %323, %324
  %326 = phi i32 [ %268, %324 ], [ 1, %323 ], !dbg !4908
  %327 = add nuw nsw i32 %269, 1, !dbg !4977
  %328 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #10, !dbg !4919
  %329 = icmp eq %struct.listNode* %328, null, !dbg !4921
  br i1 %329, label %330, label %266, !dbg !4922, !llvm.loop !4971

; <label>:330:                                    ; preds = %325, %320, %252
  %331 = phi i32 [ 0, %252 ], [ %269, %320 ], [ %327, %325 ]
  %332 = phi i32 [ 0, %252 ], [ %268, %320 ], [ %326, %325 ]
  %333 = load i32, i32* %11, align 8, !dbg !4978, !tbaa !619
  %334 = icmp eq i32 %333, 3, !dbg !4979
  br i1 %334, label %335, label %341, !dbg !4980

; <label>:335:                                    ; preds = %330
  %336 = icmp eq i32 %331, 0, !dbg !4981
  br i1 %336, label %337, label %339, !dbg !4984

; <label>:337:                                    ; preds = %335
  %338 = call i64 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i64 0, i64 0)) #10, !dbg !4988
  call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i64 0, i64 0), i64 %338) #10, !dbg !4989
  br label %359, !dbg !4990

; <label>:339:                                    ; preds = %335
  %340 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !4991, !tbaa !4802
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %340) #12, !dbg !4992
  br label %359

; <label>:341:                                    ; preds = %330
  %342 = sext i32 %331 to i64, !dbg !4993
  switch i64 %342, label %347 [
    i64 0, label %343
    i64 1, label %345
  ], !dbg !4996

; <label>:343:                                    ; preds = %341
  %344 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !4997, !tbaa !2070
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %344) #10, !dbg !4998
  br label %359, !dbg !4998

; <label>:345:                                    ; preds = %341
  %346 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !4999, !tbaa !2073
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %346) #10, !dbg !5000
  br label %359, !dbg !5000

; <label>:347:                                    ; preds = %341
  %348 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !5004
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %348) #6, !dbg !5004
  store i8 58, i8* %348, align 16, !dbg !5005, !tbaa !654
  %349 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 1, !dbg !5006
  %350 = call i32 @ll2string(i8* nonnull %349, i64 127, i64 %342) #10, !dbg !5007
  %351 = add nsw i32 %350, 1, !dbg !5009
  %352 = sext i32 %351 to i64, !dbg !5010
  %353 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %352, !dbg !5010
  store i8 13, i8* %353, align 1, !dbg !5011, !tbaa !654
  %354 = add nsw i32 %350, 2, !dbg !5012
  %355 = sext i32 %354 to i64, !dbg !5013
  %356 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 %355, !dbg !5013
  store i8 10, i8* %356, align 1, !dbg !5014, !tbaa !654
  %357 = add nsw i32 %350, 3, !dbg !5015
  %358 = sext i32 %357 to i64, !dbg !5016
  call void @addReplyString(%struct.client* nonnull %0, i8* nonnull %348, i64 %358) #10, !dbg !5017
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %348) #6, !dbg !5018
  br label %359

; <label>:359:                                    ; preds = %347, %345, %343, %337, %339
  %360 = icmp eq i32 %332, 0, !dbg !5019
  br i1 %360, label %526, label %361, !dbg !5021

; <label>:361:                                    ; preds = %359
  %362 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !5022
  %363 = load i32, i32* %362, align 8, !dbg !5023, !tbaa !922
  %364 = or i32 %363, 64, !dbg !5023
  store i32 %364, i32* %362, align 8, !dbg !5023, !tbaa !922
  br label %526, !dbg !5024

; <label>:365:                                    ; preds = %150
  %366 = tail call i32 @strcasecmp(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i64 0, i64 0)) #13, !dbg !5025
  %367 = icmp eq i32 %366, 0, !dbg !5025
  %368 = add i32 %12, -3, !dbg !5026
  %369 = icmp ult i32 %368, 2, !dbg !5026
  %370 = and i1 %369, %367, !dbg !5027
  br i1 %370, label %371, label %419, !dbg !5027

; <label>:371:                                    ; preds = %365
  %372 = bitcast i64* %8 to i8*, !dbg !5028
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %372) #6, !dbg !5028
  %373 = icmp eq i32 %12, 4, !dbg !5030
  br i1 %373, label %374, label %386, !dbg !5032

; <label>:374:                                    ; preds = %371
  %375 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 3, !dbg !5033
  %376 = load %struct.redisObject*, %struct.redisObject** %375, align 8, !dbg !5033, !tbaa !475
  %377 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %376, i64 0, i32 2, !dbg !5036
  %378 = load i8*, i8** %377, align 8, !dbg !5036, !tbaa !376
  %379 = tail call i32 @strcasecmp(i8* %378, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i64 0, i64 0)) #13, !dbg !5037
  %380 = icmp eq i32 %379, 0, !dbg !5037
  br i1 %380, label %386, label %381, !dbg !5038

; <label>:381:                                    ; preds = %374
  %382 = tail call i32 @strcasecmp(i8* %378, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i64 0, i64 0)) #13, !dbg !5039
  %383 = icmp eq i32 %382, 0, !dbg !5039
  br i1 %383, label %386, label %384, !dbg !5041

; <label>:384:                                    ; preds = %381
  %385 = tail call i64 @strlen(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.83, i64 0, i64 0)) #10, !dbg !5046
  tail call void @addReplyErrorLength(%struct.client* nonnull %0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.83, i64 0, i64 0), i64 %385) #10, !dbg !5047
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %372) #6, !dbg !5048
  br label %526

; <label>:386:                                    ; preds = %381, %374, %371
  %387 = phi i32 [ 0, %371 ], [ 0, %374 ], [ 1, %381 ], !dbg !5049
  %388 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 2, !dbg !5050
  %389 = load %struct.redisObject*, %struct.redisObject** %388, align 8, !dbg !5050, !tbaa !475
  %390 = call i32 @getLongLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %389, i64* nonnull %8, i8* null) #10, !dbg !5053
  %391 = icmp eq i32 %390, 0, !dbg !5054
  br i1 %391, label %392, label %525, !dbg !5055

; <label>:392:                                    ; preds = %386
  %393 = load i64, i64* %8, align 8, !dbg !5056, !tbaa !646
  %394 = bitcast i64* %2 to i8*, !dbg !5057
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %394), !dbg !5057
  %395 = call i64 @intrev64(i64 %393) #10, !dbg !5059
  store i64 %395, i64* %2, align 8, !dbg !5060, !tbaa !409
  %396 = load %struct.rax*, %struct.rax** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 44), align 8, !dbg !5061, !tbaa !463
  %397 = call i8* @raxFind(%struct.rax* %396, i8* nonnull %394, i64 8) #10, !dbg !5062
  %398 = bitcast i8* %397 to %struct.client*, !dbg !5062
  %399 = load %struct.client*, %struct.client** bitcast (i8** @raxNotFound to %struct.client**), align 8, !dbg !5064, !tbaa !475
  %400 = icmp eq %struct.client* %399, %398, !dbg !5065
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %394), !dbg !5066
  %401 = icmp eq i8* %397, null, !dbg !5067
  %402 = or i1 %401, %400, !dbg !5067
  br i1 %402, label %416, label %403, !dbg !5069

; <label>:403:                                    ; preds = %392
  %404 = getelementptr inbounds i8, i8* %397, i64 160, !dbg !5070
  %405 = bitcast i8* %404 to i32*, !dbg !5070
  %406 = load i32, i32* %405, align 8, !dbg !5070, !tbaa !922
  %407 = and i32 %406, 16, !dbg !5071
  %408 = icmp eq i32 %407, 0, !dbg !5071
  br i1 %408, label %416, label %409, !dbg !5072

; <label>:409:                                    ; preds = %403
  %410 = icmp eq i32 %387, 0, !dbg !5073
  br i1 %410, label %413, label %411, !dbg !5076

; <label>:411:                                    ; preds = %409
  %412 = call i64 @strlen(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.84, i64 0, i64 0)) #10, !dbg !5079
  call void @addReplyErrorLength(%struct.client* nonnull %398, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.84, i64 0, i64 0), i64 %412) #10, !dbg !5080
  br label %414, !dbg !5081

; <label>:413:                                    ; preds = %409
  call void @replyToBlockedClientTimedOut(%struct.client* nonnull %398) #10, !dbg !5082
  br label %414

; <label>:414:                                    ; preds = %413, %411
  call void @unblockClient(%struct.client* nonnull %398) #10, !dbg !5083
  %415 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 5), align 8, !dbg !5084, !tbaa !2073
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %415) #12, !dbg !5085
  br label %418, !dbg !5086

; <label>:416:                                    ; preds = %403, %392
  %417 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 4), align 8, !dbg !5087, !tbaa !2070
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %417) #12, !dbg !5089
  br label %418

; <label>:418:                                    ; preds = %414, %416
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %372) #6, !dbg !5048
  br label %526

; <label>:419:                                    ; preds = %365
  %420 = tail call i32 @strcasecmp(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i64 0, i64 0)) #13, !dbg !5090
  %421 = icmp eq i32 %420, 0, !dbg !5090
  %422 = and i1 %117, %421, !dbg !5091
  br i1 %422, label %423, label %491, !dbg !5091

; <label>:423:                                    ; preds = %419
  %424 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 2, !dbg !5092
  %425 = load %struct.redisObject*, %struct.redisObject** %424, align 8, !dbg !5092, !tbaa !475
  %426 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %425, i64 0, i32 2, !dbg !5093
  %427 = load i8*, i8** %426, align 8, !dbg !5093, !tbaa !376
  %428 = getelementptr inbounds i8, i8* %427, i64 -1, !dbg !5096
  %429 = load i8, i8* %428, align 1, !dbg !5096, !tbaa !654
  %430 = trunc i8 %429 to i3, !dbg !5098
  switch i3 %430, label %461 [
    i3 0, label %431
    i3 1, label %434
    i3 2, label %438
    i3 3, label %443
    i3 -4, label %448
  ], !dbg !5098

; <label>:431:                                    ; preds = %423
  %432 = lshr i8 %429, 3, !dbg !5099
  %433 = zext i8 %432 to i64, !dbg !5099
  br label %452, !dbg !5100

; <label>:434:                                    ; preds = %423
  %435 = getelementptr inbounds i8, i8* %427, i64 -3, !dbg !5101
  %436 = load i8, i8* %435, align 1, !dbg !5102, !tbaa !654
  %437 = zext i8 %436 to i64, !dbg !5101
  br label %452, !dbg !5103

; <label>:438:                                    ; preds = %423
  %439 = getelementptr inbounds i8, i8* %427, i64 -5, !dbg !5104
  %440 = bitcast i8* %439 to i16*, !dbg !5105
  %441 = load i16, i16* %440, align 1, !dbg !5105, !tbaa !855
  %442 = zext i16 %441 to i64, !dbg !5104
  br label %452, !dbg !5106

; <label>:443:                                    ; preds = %423
  %444 = getelementptr inbounds i8, i8* %427, i64 -9, !dbg !5107
  %445 = bitcast i8* %444 to i32*, !dbg !5108
  %446 = load i32, i32* %445, align 1, !dbg !5108, !tbaa !548
  %447 = zext i32 %446 to i64, !dbg !5107
  br label %452, !dbg !5109

; <label>:448:                                    ; preds = %423
  %449 = getelementptr inbounds i8, i8* %427, i64 -17, !dbg !5110
  %450 = bitcast i8* %449 to i64*, !dbg !5111
  %451 = load i64, i64* %450, align 1, !dbg !5111, !tbaa !409
  br label %452, !dbg !5112

; <label>:452:                                    ; preds = %431, %434, %438, %443, %448
  %453 = phi i64 [ %451, %448 ], [ %447, %443 ], [ %442, %438 ], [ %437, %434 ], [ %433, %431 ], !dbg !5113
  %454 = trunc i64 %453 to i32, !dbg !5114
  %455 = icmp eq i32 %454, 0, !dbg !5117
  br i1 %455, label %461, label %456, !dbg !5119

; <label>:456:                                    ; preds = %452
  %457 = icmp sgt i32 %454, 0, !dbg !5121
  br i1 %457, label %458, label %480, !dbg !5124

; <label>:458:                                    ; preds = %456
  %459 = shl i64 %453, 32, !dbg !5125
  %460 = ashr exact i64 %459, 32, !dbg !5125
  br label %470, !dbg !5125

; <label>:461:                                    ; preds = %423, %452
  %462 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 3, !dbg !5128
  %463 = load %struct.redisObject*, %struct.redisObject** %462, align 8, !dbg !5128, !tbaa !596
  %464 = icmp eq %struct.redisObject* %463, null, !dbg !5131
  br i1 %464, label %466, label %465, !dbg !5132

; <label>:465:                                    ; preds = %461
  tail call void @decrRefCount(%struct.redisObject* nonnull %463) #10, !dbg !5133
  br label %466, !dbg !5133

; <label>:466:                                    ; preds = %461, %465
  store %struct.redisObject* null, %struct.redisObject** %462, align 8, !dbg !5134, !tbaa !596
  %467 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !5135, !tbaa !4802
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %467) #12, !dbg !5136
  br label %526

; <label>:468:                                    ; preds = %470
  %469 = icmp slt i64 %477, %460, !dbg !5121
  br i1 %469, label %470, label %480, !dbg !5124, !llvm.loop !5137

; <label>:470:                                    ; preds = %458, %468
  %471 = phi i64 [ 0, %458 ], [ %477, %468 ]
  %472 = getelementptr inbounds i8, i8* %427, i64 %471, !dbg !5125
  %473 = load i8, i8* %472, align 1, !dbg !5125, !tbaa !654
  %474 = icmp slt i8 %473, 33, !dbg !5139
  %475 = icmp eq i8 %473, 127, !dbg !5140
  %476 = or i1 %474, %475, !dbg !5141
  %477 = add nuw nsw i64 %471, 1, !dbg !5142
  br i1 %476, label %478, label %468, !dbg !5141

; <label>:478:                                    ; preds = %470
  %479 = tail call i64 @strlen(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.86, i64 0, i64 0)) #10, !dbg !5147
  tail call void @addReplyErrorLength(%struct.client* %0, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.86, i64 0, i64 0), i64 %479) #10, !dbg !5148
  br label %526

; <label>:480:                                    ; preds = %468, %456
  %481 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 3, !dbg !5149
  %482 = load %struct.redisObject*, %struct.redisObject** %481, align 8, !dbg !5149, !tbaa !596
  %483 = icmp eq %struct.redisObject* %482, null, !dbg !5151
  br i1 %483, label %488, label %484, !dbg !5152

; <label>:484:                                    ; preds = %480
  tail call void @decrRefCount(%struct.redisObject* nonnull %482) #10, !dbg !5153
  %485 = load %struct.redisObject**, %struct.redisObject*** %14, align 8, !dbg !5154, !tbaa !622
  %486 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %485, i64 2
  %487 = load %struct.redisObject*, %struct.redisObject** %486, align 8, !dbg !5155, !tbaa !475
  br label %488, !dbg !5153

; <label>:488:                                    ; preds = %480, %484
  %489 = phi %struct.redisObject* [ %425, %480 ], [ %487, %484 ], !dbg !5155
  store %struct.redisObject* %489, %struct.redisObject** %481, align 8, !dbg !5156, !tbaa !596
  tail call void @incrRefCount(%struct.redisObject* %489) #10, !dbg !5157
  %490 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !5158, !tbaa !4802
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %490) #12, !dbg !5159
  br label %526

; <label>:491:                                    ; preds = %419
  %492 = tail call i32 @strcasecmp(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i64 0, i64 0)) #13, !dbg !5160
  %493 = icmp ne i32 %492, 0, !dbg !5160
  %494 = or i1 %493, %29, !dbg !5161
  br i1 %494, label %503, label %495, !dbg !5161

; <label>:495:                                    ; preds = %491
  %496 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 3, !dbg !5162
  %497 = load %struct.redisObject*, %struct.redisObject** %496, align 8, !dbg !5162, !tbaa !596
  %498 = icmp eq %struct.redisObject* %497, null, !dbg !5165
  br i1 %498, label %501, label %499, !dbg !5166

; <label>:499:                                    ; preds = %495
  tail call void @addReplyBulkLen(%struct.client* nonnull %0, %struct.redisObject* nonnull %497) #10, !dbg !5170
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* nonnull %497) #10, !dbg !5171
  %500 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 0), align 8, !dbg !5172, !tbaa !2003
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %500) #10, !dbg !5173
  br label %526, !dbg !5174

; <label>:501:                                    ; preds = %495
  %502 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 10), align 8, !dbg !5175, !tbaa !1974
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %502) #12, !dbg !5176
  br label %526

; <label>:503:                                    ; preds = %491
  %504 = tail call i32 @strcasecmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i64 0, i64 0)) #13, !dbg !5177
  %505 = icmp eq i32 %504, 0, !dbg !5177
  %506 = and i1 %117, %505, !dbg !5178
  br i1 %506, label %507, label %524, !dbg !5178

; <label>:507:                                    ; preds = %503
  %508 = bitcast i64* %9 to i8*, !dbg !5179
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %508) #6, !dbg !5179
  %509 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %15, i64 2, !dbg !5180
  %510 = load %struct.redisObject*, %struct.redisObject** %509, align 8, !dbg !5180, !tbaa !475
  %511 = call i32 @getTimeoutFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %510, i64* nonnull %9, i32 1) #10, !dbg !5183
  %512 = icmp eq i32 %511, 0, !dbg !5184
  br i1 %512, label %513, label %523, !dbg !5185

; <label>:513:                                    ; preds = %507
  %514 = load i64, i64* %9, align 8, !dbg !5186, !tbaa !646
  %515 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !5194, !tbaa !3956
  %516 = icmp eq i32 %515, 0, !dbg !5196
  %517 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 46), align 8, !dbg !5197
  %518 = icmp slt i64 %517, %514, !dbg !5198
  %519 = or i1 %516, %518, !dbg !5199
  br i1 %519, label %520, label %521, !dbg !5199

; <label>:520:                                    ; preds = %513
  store i64 %514, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 46), align 8, !dbg !5200, !tbaa !3949
  br label %521, !dbg !5201

; <label>:521:                                    ; preds = %513, %520
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !5202, !tbaa !3956
  %522 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !5203, !tbaa !4802
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %522) #12, !dbg !5204
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %508) #6, !dbg !5205
  br label %526

; <label>:523:                                    ; preds = %507
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %508) #6, !dbg !5205
  br label %526

; <label>:524:                                    ; preds = %503
  tail call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.89, i64 0, i64 0), i8* %19) #12, !dbg !5206
  br label %526

; <label>:525:                                    ; preds = %386
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %372) #6, !dbg !5048
  br label %526

; <label>:526:                                    ; preds = %181, %240, %238, %212, %38, %36, %34, %250, %359, %361, %23, %524, %499, %501, %126, %146, %134, %141, %112, %418, %488, %521, %523, %478, %466, %525, %384, %81, %83, %148
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #6, !dbg !5208
  ret void, !dbg !5208
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #7

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @getClientTypeByName(i8* readonly) local_unnamed_addr #5 !dbg !4735 {
  %2 = tail call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.92, i64 0, i64 0)) #13, !dbg !5210
  %3 = icmp eq i32 %2, 0, !dbg !5210
  br i1 %3, label %17, label %4, !dbg !5211

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0)) #13, !dbg !5212
  %6 = icmp eq i32 %5, 0, !dbg !5212
  br i1 %6, label %17, label %7, !dbg !5213

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)) #13, !dbg !5214
  %9 = icmp eq i32 %8, 0, !dbg !5214
  br i1 %9, label %17, label %10, !dbg !5215

; <label>:10:                                     ; preds = %7
  %11 = tail call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.94, i64 0, i64 0)) #13, !dbg !5216
  %12 = icmp eq i32 %11, 0, !dbg !5216
  br i1 %12, label %17, label %13, !dbg !5217

; <label>:13:                                     ; preds = %10
  %14 = tail call i32 @strcasecmp(i8* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #13, !dbg !5218
  %15 = icmp eq i32 %14, 0, !dbg !5218
  %16 = select i1 %15, i32 3, i32 -1, !dbg !5219
  br label %17, !dbg !5219

; <label>:17:                                     ; preds = %13, %10, %7, %4, %1
  %18 = phi i32 [ 0, %1 ], [ 1, %4 ], [ 1, %7 ], [ 2, %10 ], [ %16, %13 ], !dbg !5220
  ret i32 %18, !dbg !5221
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
define dso_local void @pauseClients(i64) local_unnamed_addr #0 !dbg !5188 {
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !5223, !tbaa !3956
  %3 = icmp eq i32 %2, 0, !dbg !5224
  %4 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 46), align 8, !dbg !5225
  %5 = icmp slt i64 %4, %0, !dbg !5226
  %6 = or i1 %3, %5, !dbg !5227
  br i1 %6, label %7, label %8, !dbg !5227

; <label>:7:                                      ; preds = %1
  store i64 %0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 46), align 8, !dbg !5228, !tbaa !3949
  br label %8, !dbg !5229

; <label>:8:                                      ; preds = %1, %7
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 45), align 8, !dbg !5230, !tbaa !3956
  ret void, !dbg !5231
}

; Function Attrs: noredzone nounwind
define dso_local void @securityWarningCommand(%struct.client*) local_unnamed_addr #0 !dbg !2 {
  %2 = tail call i64 @time(i64* null) #10, !dbg !5233
  %3 = load i64, i64* @securityWarningCommand.logged_time, align 8, !dbg !5235, !tbaa !409
  %4 = sub nsw i64 %2, %3, !dbg !5237
  %5 = tail call i64 @labs(i64 %4) #10, !dbg !5238
  %6 = icmp sgt i64 %5, 60, !dbg !5239
  br i1 %6, label %7, label %8, !dbg !5240

; <label>:7:                                      ; preds = %1
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([234 x i8], [234 x i8]* @.str.90, i64 0, i64 0)) #10, !dbg !5241
  store i64 %2, i64* @securityWarningCommand.logged_time, align 8, !dbg !5243, !tbaa !409
  br label %8, !dbg !5244

; <label>:8:                                      ; preds = %7, %1
  %9 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !5247
  %10 = load i32, i32* %9, align 8, !dbg !5247, !tbaa !922
  %11 = and i32 %10, 1280, !dbg !5248
  %12 = icmp eq i32 %11, 0, !dbg !5248
  br i1 %12, label %13, label %18, !dbg !5248

; <label>:13:                                     ; preds = %8
  %14 = or i32 %10, 1024, !dbg !5249
  store i32 %14, i32* %9, align 8, !dbg !5249, !tbaa !922
  %15 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 39), align 8, !dbg !5250, !tbaa !1292
  %16 = bitcast %struct.client* %0 to i8*, !dbg !5251
  %17 = tail call %struct.list* @listAddNodeTail(%struct.list* %15, i8* %16) #10, !dbg !5252
  br label %18, !dbg !5253

; <label>:18:                                     ; preds = %8, %13
  ret void, !dbg !5254
}

; Function Attrs: noredzone
declare dso_local i64 @time(i64*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @labs(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @rewriteClientCommandVector(%struct.client*, i32, ...) local_unnamed_addr #0 !dbg !5255 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !5270
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #6, !dbg !5270
  %5 = sext i32 %1 to i64, !dbg !5272
  %6 = shl nsw i64 %5, 3, !dbg !5273
  %7 = tail call i8* @zmalloc(i64 %6) #10, !dbg !5274
  %8 = bitcast i8* %7 to %struct.redisObject**, !dbg !5274
  call void @llvm.va_start(i8* nonnull %4), !dbg !5276
  %9 = icmp sgt i32 %1, 0, !dbg !5278
  br i1 %9, label %10, label %15, !dbg !5279

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %14 = zext i32 %1 to i64
  br label %21, !dbg !5279

; <label>:15:                                     ; preds = %33, %2
  %16 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5280
  %17 = load i32, i32* %16, align 8, !dbg !5280, !tbaa !619
  %18 = icmp sgt i32 %17, 0, !dbg !5283
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !5284
  %20 = load %struct.redisObject**, %struct.redisObject*** %19, align 8, !dbg !5284, !tbaa !622
  br i1 %18, label %40, label %50, !dbg !5285

; <label>:21:                                     ; preds = %33, %10
  %22 = phi i64 [ 0, %10 ], [ %38, %33 ]
  %23 = load i32, i32* %11, align 16, !dbg !5286
  %24 = icmp ult i32 %23, 41, !dbg !5286
  br i1 %24, label %25, label %30, !dbg !5286

; <label>:25:                                     ; preds = %21
  %26 = load i8*, i8** %12, align 16, !dbg !5286
  %27 = sext i32 %23 to i64, !dbg !5286
  %28 = getelementptr i8, i8* %26, i64 %27, !dbg !5286
  %29 = add i32 %23, 8, !dbg !5286
  store i32 %29, i32* %11, align 16, !dbg !5286
  br label %33, !dbg !5286

; <label>:30:                                     ; preds = %21
  %31 = load i8*, i8** %13, align 8, !dbg !5286
  %32 = getelementptr i8, i8* %31, i64 8, !dbg !5286
  store i8* %32, i8** %13, align 8, !dbg !5286
  br label %33, !dbg !5286

; <label>:33:                                     ; preds = %30, %25
  %34 = phi i8* [ %28, %25 ], [ %31, %30 ]
  %35 = bitcast i8* %34 to %struct.redisObject**, !dbg !5286
  %36 = load %struct.redisObject*, %struct.redisObject** %35, align 8, !dbg !5286
  %37 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 %22, !dbg !5288
  store %struct.redisObject* %36, %struct.redisObject** %37, align 8, !dbg !5289, !tbaa !475
  call void @incrRefCount(%struct.redisObject* %36) #10, !dbg !5290
  %38 = add nuw nsw i64 %22, 1, !dbg !5291
  %39 = icmp eq i64 %38, %14, !dbg !5278
  br i1 %39, label %15, label %21, !dbg !5279, !llvm.loop !5292

; <label>:40:                                     ; preds = %15, %40
  %41 = phi i64 [ %45, %40 ], [ 0, %15 ]
  %42 = phi %struct.redisObject** [ %49, %40 ], [ %20, %15 ]
  %43 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %42, i64 %41, !dbg !5294
  %44 = load %struct.redisObject*, %struct.redisObject** %43, align 8, !dbg !5294, !tbaa !475
  call void @decrRefCount(%struct.redisObject* %44) #10, !dbg !5295
  %45 = add nuw nsw i64 %41, 1, !dbg !5296
  %46 = load i32, i32* %16, align 8, !dbg !5280, !tbaa !619
  %47 = sext i32 %46 to i64, !dbg !5283
  %48 = icmp slt i64 %45, %47, !dbg !5283
  %49 = load %struct.redisObject**, %struct.redisObject*** %19, align 8, !dbg !5284, !tbaa !622
  br i1 %48, label %40, label %50, !dbg !5285, !llvm.loop !5297

; <label>:50:                                     ; preds = %40, %15
  %51 = phi %struct.redisObject** [ %20, %15 ], [ %49, %40 ], !dbg !5284
  %52 = bitcast %struct.redisObject** %51 to i8*, !dbg !5299
  call void @zfree(i8* %52) #10, !dbg !5300
  %53 = bitcast %struct.redisObject*** %19 to i8**, !dbg !5301
  store i8* %7, i8** %53, align 8, !dbg !5301, !tbaa !622
  store i32 %1, i32* %16, align 8, !dbg !5302, !tbaa !619
  %54 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !5303, !tbaa !475
  %55 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %54, i64 0, i32 2, !dbg !5304
  %56 = load i8*, i8** %55, align 8, !dbg !5304, !tbaa !376
  %57 = call %struct.redisCommand* @lookupCommandOrOriginal(i8* %56) #10, !dbg !5305
  %58 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !5306
  store %struct.redisCommand* %57, %struct.redisCommand** %58, align 8, !dbg !5307, !tbaa !2699
  %59 = icmp eq %struct.redisCommand* %57, null, !dbg !5308
  br i1 %59, label %60, label %61, !dbg !5308

; <label>:60:                                     ; preds = %50
  call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1985) #10, !dbg !5308
  call void @_exit(i32 1) #11, !dbg !5308
  unreachable, !dbg !5308

; <label>:61:                                     ; preds = %50
  call void @llvm.va_end(i8* nonnull %4), !dbg !5309
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #6, !dbg !5310
  ret void, !dbg !5310
}

; Function Attrs: noredzone
declare dso_local %struct.redisCommand* @lookupCommandOrOriginal(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replaceClientCommandVector(%struct.client*, i32, %struct.redisObject**) local_unnamed_addr #0 !dbg !5311 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5324
  %5 = load i32, i32* %4, align 8, !dbg !5324, !tbaa !619
  %6 = icmp sgt i32 %5, 0, !dbg !5325
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  br i1 %6, label %8, label %17, !dbg !5326

; <label>:8:                                      ; preds = %3, %8
  %9 = phi i64 [ %13, %8 ], [ 0, %3 ]
  %10 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !5327, !tbaa !622
  %11 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %10, i64 %9, !dbg !5328
  %12 = load %struct.redisObject*, %struct.redisObject** %11, align 8, !dbg !5328, !tbaa !475
  tail call void @decrRefCount(%struct.redisObject* %12) #10, !dbg !5329
  %13 = add nuw nsw i64 %9, 1, !dbg !5330
  %14 = load i32, i32* %4, align 8, !dbg !5324, !tbaa !619
  %15 = sext i32 %14 to i64, !dbg !5325
  %16 = icmp slt i64 %13, %15, !dbg !5325
  br i1 %16, label %8, label %17, !dbg !5326, !llvm.loop !2693

; <label>:17:                                     ; preds = %8, %3
  store i32 0, i32* %4, align 8, !dbg !5331, !tbaa !619
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !5332
  store %struct.redisCommand* null, %struct.redisCommand** %18, align 8, !dbg !5333, !tbaa !2699
  %19 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !5334, !tbaa !475
  %20 = icmp eq %struct.uk_alloc* %19, null, !dbg !5340
  br i1 %20, label %21, label %22, !dbg !5341, !prof !544

; <label>:21:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.98, i64 0, i64 0)) #10, !dbg !5342
  tail call void @ukplat_terminate(i32 3) #11, !dbg !5342
  unreachable, !dbg !5342

; <label>:22:                                     ; preds = %17
  %23 = bitcast %struct.redisObject*** %7 to i8**, !dbg !5343
  %24 = load i8*, i8** %23, align 8, !dbg !5343, !tbaa !622
  %25 = getelementptr inbounds %struct.uk_alloc, %struct.uk_alloc* %19, i64 0, i32 5, !dbg !5347
  %26 = load void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)** %25, align 8, !dbg !5347, !tbaa !475
  tail call void %26(%struct.uk_alloc* nonnull %19, i8* %24) #10, !dbg !5348
  store %struct.redisObject** %2, %struct.redisObject*** %7, align 8, !dbg !5349, !tbaa !622
  store i32 %1, i32* %4, align 8, !dbg !5350, !tbaa !619
  %27 = load %struct.redisObject*, %struct.redisObject** %2, align 8, !dbg !5351, !tbaa !475
  %28 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %27, i64 0, i32 2, !dbg !5352
  %29 = load i8*, i8** %28, align 8, !dbg !5352, !tbaa !376
  %30 = tail call %struct.redisCommand* @lookupCommandOrOriginal(i8* %29) #10, !dbg !5353
  store %struct.redisCommand* %30, %struct.redisCommand** %18, align 8, !dbg !5354, !tbaa !2699
  %31 = icmp eq %struct.redisCommand* %30, null, !dbg !5355
  br i1 %31, label %32, label %33, !dbg !5355

; <label>:32:                                     ; preds = %22
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 1996) #10, !dbg !5355
  tail call void @_exit(i32 1) #11, !dbg !5355
  unreachable, !dbg !5355

; <label>:33:                                     ; preds = %22
  ret void, !dbg !5356
}

; Function Attrs: noredzone nounwind
define dso_local void @rewriteClientCommandArgument(%struct.client*, i32, %struct.redisObject*) local_unnamed_addr #0 !dbg !5357 {
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !5368
  %5 = load i32, i32* %4, align 8, !dbg !5368, !tbaa !619
  %6 = icmp sgt i32 %5, %1, !dbg !5370
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !5371
  br i1 %6, label %8, label %10, !dbg !5373

; <label>:8:                                      ; preds = %3
  %9 = sext i32 %1 to i64, !dbg !5374
  br label %20, !dbg !5373

; <label>:10:                                     ; preds = %3
  %11 = bitcast %struct.redisObject*** %7 to i8**, !dbg !5375
  %12 = load i8*, i8** %11, align 8, !dbg !5375, !tbaa !622
  %13 = add nsw i32 %1, 1, !dbg !5376
  %14 = sext i32 %13 to i64, !dbg !5377
  %15 = shl nsw i64 %14, 3, !dbg !5378
  %16 = tail call i8* @zrealloc(i8* %12, i64 %15) #10, !dbg !5379
  store i8* %16, i8** %11, align 8, !dbg !5380, !tbaa !622
  store i32 %13, i32* %4, align 8, !dbg !5381, !tbaa !619
  %17 = bitcast i8* %16 to %struct.redisObject**, !dbg !5382
  %18 = sext i32 %1 to i64, !dbg !5383
  %19 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %17, i64 %18, !dbg !5383
  store %struct.redisObject* null, %struct.redisObject** %19, align 8, !dbg !5384, !tbaa !475
  br label %20, !dbg !5385

; <label>:20:                                     ; preds = %8, %10
  %21 = phi i64 [ %9, %8 ], [ %18, %10 ], !dbg !5374
  %22 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !5386, !tbaa !622
  %23 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %22, i64 %21, !dbg !5374
  %24 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !dbg !5374, !tbaa !475
  store %struct.redisObject* %2, %struct.redisObject** %23, align 8, !dbg !5388, !tbaa !475
  tail call void @incrRefCount(%struct.redisObject* %2) #10, !dbg !5389
  %25 = icmp eq %struct.redisObject* %24, null, !dbg !5390
  br i1 %25, label %27, label %26, !dbg !5392

; <label>:26:                                     ; preds = %20
  tail call void @decrRefCount(%struct.redisObject* nonnull %24) #10, !dbg !5393
  br label %27, !dbg !5393

; <label>:27:                                     ; preds = %20, %26
  %28 = icmp eq i32 %1, 0, !dbg !5394
  br i1 %28, label %29, label %38, !dbg !5396

; <label>:29:                                     ; preds = %27
  %30 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !5397, !tbaa !622
  %31 = load %struct.redisObject*, %struct.redisObject** %30, align 8, !dbg !5399, !tbaa !475
  %32 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %31, i64 0, i32 2, !dbg !5400
  %33 = load i8*, i8** %32, align 8, !dbg !5400, !tbaa !376
  %34 = tail call %struct.redisCommand* @lookupCommandOrOriginal(i8* %33) #10, !dbg !5401
  %35 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 10, !dbg !5402
  store %struct.redisCommand* %34, %struct.redisCommand** %35, align 8, !dbg !5403, !tbaa !2699
  %36 = icmp eq %struct.redisCommand* %34, null, !dbg !5404
  br i1 %36, label %37, label %38, !dbg !5404

; <label>:37:                                     ; preds = %29
  tail call void @_serverAssertWithInfo(%struct.client* nonnull %0, %struct.redisObject* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 2026) #10, !dbg !5404
  tail call void @_exit(i32 1) #11, !dbg !5404
  unreachable, !dbg !5404

; <label>:38:                                     ; preds = %29, %27
  ret void, !dbg !5405
}

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind readnone
define dso_local i8* @getClientTypeName(i32) local_unnamed_addr #8 !dbg !5406 {
  %2 = icmp ult i32 %0, 4, !dbg !5412
  br i1 %2, label %3, label %7, !dbg !5412

; <label>:3:                                      ; preds = %1
  %4 = sext i32 %0 to i64, !dbg !5412
  %5 = getelementptr inbounds [4 x i8*], [4 x i8*]* @switch.table.getClientTypeName, i64 0, i64 %4, !dbg !5412
  %6 = load i8*, i8** %5, align 8, !dbg !5412
  ret i8* %6, !dbg !5412

; <label>:7:                                      ; preds = %1
  ret i8* null, !dbg !5413
}

; Function Attrs: noredzone nounwind
define dso_local i32 @checkClientOutputBufferLimits(%struct.client* nocapture) local_unnamed_addr #0 !dbg !1209 {
  %2 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !5420
  %3 = load i64, i64* %2, align 8, !dbg !5420, !tbaa !664
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !5421
  %5 = load %struct.list*, %struct.list** %4, align 8, !dbg !5421, !tbaa !661
  %6 = getelementptr inbounds %struct.list, %struct.list* %5, i64 0, i32 5, !dbg !5421
  %7 = load i64, i64* %6, align 8, !dbg !5421, !tbaa !1069
  %8 = mul i64 %7, 40, !dbg !5422
  %9 = add i64 %8, %3, !dbg !5423
  %10 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !5427
  %11 = load i32, i32* %10, align 8, !dbg !5427, !tbaa !922
  %12 = and i32 %11, 2, !dbg !5428
  %13 = icmp eq i32 %12, 0, !dbg !5428
  br i1 %13, label %14, label %21, !dbg !5429

; <label>:14:                                     ; preds = %1
  %15 = and i32 %11, 5, !dbg !5430
  %16 = icmp eq i32 %15, 1, !dbg !5430
  br i1 %16, label %21, label %17, !dbg !5430

; <label>:17:                                     ; preds = %14
  %18 = lshr i32 %11, 17, !dbg !5431
  %19 = and i32 %18, 2, !dbg !5431
  %20 = zext i32 %19 to i64, !dbg !5431
  br label %21, !dbg !5431

; <label>:21:                                     ; preds = %17, %14, %1
  %22 = phi i64 [ 0, %1 ], [ %20, %17 ], [ 1, %14 ]
  %23 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 116, i64 %22, i32 0, !dbg !5432
  %24 = load i64, i64* %23, align 8, !dbg !5432, !tbaa !1250
  %25 = add i64 %24, -1, !dbg !5433
  %26 = icmp ult i64 %25, %9, !dbg !5433
  %27 = zext i1 %26 to i32, !dbg !5433
  %28 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 116, i64 %22, i32 1, !dbg !5434
  %29 = load i64, i64* %28, align 8, !dbg !5434, !tbaa !1255
  %30 = add i64 %29, -1, !dbg !5435
  %31 = icmp uge i64 %30, %9, !dbg !5435
  %32 = xor i1 %31, true, !dbg !5435
  %33 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 20, !dbg !5436
  br i1 %31, label %46, label %34, !dbg !5437

; <label>:34:                                     ; preds = %21
  %35 = load i64, i64* %33, align 8, !dbg !5438, !tbaa !667
  %36 = icmp eq i64 %35, 0, !dbg !5439
  %37 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !5440, !tbaa !636
  br i1 %36, label %38, label %39, !dbg !5441

; <label>:38:                                     ; preds = %34
  store i64 %37, i64* %33, align 8, !dbg !5442, !tbaa !667
  br label %47, !dbg !5443

; <label>:39:                                     ; preds = %34
  %40 = sub nsw i64 %37, %35, !dbg !5444
  %41 = getelementptr inbounds %struct.redisServer, %struct.redisServer* @server, i64 0, i32 116, i64 %22, i32 2, !dbg !5446
  %42 = load i64, i64* %41, align 8, !dbg !5446, !tbaa !1271
  %43 = icmp sgt i64 %40, %42, !dbg !5447
  %44 = and i1 %43, %32, !dbg !5448
  %45 = zext i1 %44 to i32, !dbg !5448
  br label %47

; <label>:46:                                     ; preds = %21
  store i64 0, i64* %33, align 8, !dbg !5449, !tbaa !667
  br label %47

; <label>:47:                                     ; preds = %38, %39, %46
  %48 = phi i32 [ 0, %38 ], [ %45, %39 ], [ 0, %46 ], !dbg !5450
  %49 = or i32 %48, %27, !dbg !5451
  ret i32 %49, !dbg !5452
}

; Function Attrs: noredzone nounwind
define dso_local void @flushSlavesOutputBuffers() local_unnamed_addr #0 !dbg !5453 {
  %1 = alloca %struct.listIter, align 8
  %2 = bitcast %struct.listIter* %1 to i8*, !dbg !5461
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #6, !dbg !5461
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !5462, !tbaa !1010
  call void @listRewind(%struct.list* %3, %struct.listIter* nonnull %1) #10, !dbg !5464
  %4 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #10, !dbg !5465
  %5 = icmp eq %struct.listNode* %4, null, !dbg !5467
  br i1 %5, label %48, label %6, !dbg !5467

; <label>:6:                                      ; preds = %0, %45
  %7 = phi %struct.listNode* [ %46, %45 ], [ %4, %0 ]
  %8 = getelementptr inbounds %struct.listNode, %struct.listNode* %7, i64 0, i32 2, !dbg !5468
  %9 = bitcast i8** %8 to %struct.client**, !dbg !5468
  %10 = load %struct.client*, %struct.client** %9, align 8, !dbg !5468, !tbaa !1150
  %11 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !5470, !tbaa !577
  %12 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 1, !dbg !5471
  %13 = load i32, i32* %12, align 8, !dbg !5471, !tbaa !593
  %14 = call i32 @aeGetFileEvents(%struct.aeEventLoop* %11, i32 %13) #10, !dbg !5472
  %15 = and i32 %14, 2, !dbg !5474
  %16 = icmp eq i32 %15, 0, !dbg !5474
  br i1 %16, label %17, label %22, !dbg !5475

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 21, !dbg !5476
  %19 = load i32, i32* %18, align 8, !dbg !5476, !tbaa !922
  %20 = and i32 %19, 2097152, !dbg !5477
  %21 = icmp ne i32 %20, 0, !dbg !5475
  br label %22, !dbg !5475

; <label>:22:                                     ; preds = %6, %17
  %23 = phi i1 [ true, %6 ], [ %21, %17 ]
  %24 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 23, !dbg !5478
  %25 = load i32, i32* %24, align 8, !dbg !5478, !tbaa !1026
  %26 = icmp eq i32 %25, 9, !dbg !5480
  %27 = and i1 %23, %26, !dbg !5481
  br i1 %27, label %28, label %45, !dbg !5481

; <label>:28:                                     ; preds = %22
  %29 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 24, !dbg !5482
  %30 = load i32, i32* %29, align 4, !dbg !5482, !tbaa !1029
  %31 = icmp eq i32 %30, 0, !dbg !5483
  br i1 %31, label %32, label %45, !dbg !5484

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 47, !dbg !5487
  %34 = load i32, i32* %33, align 8, !dbg !5487, !tbaa !599
  %35 = icmp eq i32 %34, 0, !dbg !5488
  br i1 %35, label %36, label %42, !dbg !5489

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 15, !dbg !5490
  %38 = load %struct.list*, %struct.list** %37, align 8, !dbg !5490, !tbaa !661
  %39 = getelementptr inbounds %struct.list, %struct.list* %38, i64 0, i32 5, !dbg !5490
  %40 = load i64, i64* %39, align 8, !dbg !5490, !tbaa !1069
  %41 = icmp eq i64 %40, 0, !dbg !5489
  br i1 %41, label %45, label %42, !dbg !5491

; <label>:42:                                     ; preds = %32, %36
  %43 = load i32, i32* %12, align 8, !dbg !5492, !tbaa !593
  %44 = call i32 @writeToClient(i32 %43, %struct.client* nonnull %10, i32 0) #12, !dbg !5494
  br label %45, !dbg !5495

; <label>:45:                                     ; preds = %36, %28, %42, %22
  %46 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #10, !dbg !5465
  %47 = icmp eq %struct.listNode* %46, null, !dbg !5467
  br i1 %47, label %48, label %6, !dbg !5467, !llvm.loop !5496

; <label>:48:                                     ; preds = %45, %0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #6, !dbg !5498
  ret void, !dbg !5498
}

; Function Attrs: noredzone
declare dso_local void @queueClientForReprocessing(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @processEventsWhileBlocked() local_unnamed_addr #0 !dbg !5499 {
  br label %1, !dbg !5507

; <label>:1:                                      ; preds = %5, %0
  %2 = phi i32 [ 4, %0 ], [ %6, %5 ], !dbg !5508
  %3 = phi i32 [ 0, %0 ], [ %12, %5 ], !dbg !5509
  %4 = icmp eq i32 %2, 0, !dbg !5507
  br i1 %4, label %13, label %5, !dbg !5507

; <label>:5:                                      ; preds = %1
  %6 = add nsw i32 %2, -1, !dbg !5510
  %7 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !5512, !tbaa !577
  %8 = tail call i32 @aeProcessEvents(%struct.aeEventLoop* %7, i32 5) #10, !dbg !5513
  %9 = tail call i32 @handleClientsWithPendingWrites() #12, !dbg !5514
  %10 = add nsw i32 %9, %8, !dbg !5515
  %11 = icmp eq i32 %10, 0, !dbg !5516
  %12 = add nsw i32 %10, %3, !dbg !5518
  br i1 %11, label %13, label %1, !llvm.loop !5519

; <label>:13:                                     ; preds = %5, %1
  %14 = phi i32 [ %12, %5 ], [ %3, %1 ], !dbg !5508
  ret i32 %14, !dbg !5521
}

; Function Attrs: noredzone
declare dso_local i32 @aeProcessEvents(%struct.aeEventLoop*, i32) local_unnamed_addr #3

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #9 !dbg !313 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !5522
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !5522
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !5524
  call void @llvm.va_start(i8* nonnull %3), !dbg !5524
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @uk_pr_crit.__str.99, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.97, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #10, !dbg !5525
  call void @llvm.va_end(i8* nonnull %3), !dbg !5528
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !5529
  ret void, !dbg !5529
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
attributes #5 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nobuiltin noredzone nounwind }
attributes #11 = { nobuiltin noredzone noreturn nounwind }
attributes #12 = { nobuiltin noredzone }
attributes #13 = { nobuiltin noredzone nounwind readonly }

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
!387 = !DILocation(line: 54, column: 28, scope: !375)
!388 = !DILocation(line: 55, column: 51, scope: !375)
!389 = !DILocation(line: 55, column: 38, scope: !375)
!390 = !DILocation(line: 55, column: 53, scope: !375)
!391 = !DILocation(line: 55, column: 31, scope: !375)
!392 = !DILocation(line: 0, scope: !375)
!393 = !DILocation(line: 58, column: 1, scope: !365)
!394 = distinct !DISubprogram(name: "dupClientReplyValue", scope: !3, file: !3, line: 61, type: !114, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !395)
!395 = !{!396, !397, !405}
!396 = !DILocalVariable(name: "o", arg: 1, scope: !394, file: !3, line: 61, type: !45)
!397 = !DILocalVariable(name: "old", scope: !394, file: !3, line: 62, type: !398)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "clientReplyBlock", file: !8, line: 642, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clientReplyBlock", file: !8, line: 639, size: 128, elements: !401)
!401 = !{!402, !403, !404}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !400, file: !8, line: 640, baseType: !142, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !400, file: !8, line: 640, baseType: !142, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !400, file: !8, line: 641, baseType: !281, offset: 128)
!405 = !DILocalVariable(name: "buf", scope: !394, file: !3, line: 63, type: !398)
!406 = !DILocation(line: 61, column: 33, scope: !394)
!407 = !DILocation(line: 62, column: 23, scope: !394)
!408 = !DILocation(line: 63, column: 69, scope: !394)
!409 = !{!410, !410, i64 0}
!410 = !{!"long", !379, i64 0}
!411 = !DILocation(line: 63, column: 62, scope: !394)
!412 = !DILocation(line: 63, column: 29, scope: !394)
!413 = !DILocation(line: 63, column: 23, scope: !394)
!414 = !DILocation(line: 64, column: 52, scope: !394)
!415 = !DILocation(line: 64, column: 45, scope: !394)
!416 = !DILocation(line: 64, column: 5, scope: !394)
!417 = !DILocation(line: 65, column: 5, scope: !394)
!418 = distinct !DISubprogram(name: "freeClientReplyValue", scope: !3, file: !3, line: 68, type: !118, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !419)
!419 = !{!420}
!420 = !DILocalVariable(name: "o", arg: 1, scope: !418, file: !3, line: 68, type: !45)
!421 = !DILocation(line: 68, column: 33, scope: !418)
!422 = !DILocation(line: 69, column: 5, scope: !418)
!423 = !DILocation(line: 70, column: 1, scope: !418)
!424 = distinct !DISubprogram(name: "listMatchObjects", scope: !3, file: !3, line: 72, type: !122, isLocal: false, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !425)
!425 = !{!426, !427}
!426 = !DILocalVariable(name: "a", arg: 1, scope: !424, file: !3, line: 72, type: !45)
!427 = !DILocalVariable(name: "b", arg: 2, scope: !424, file: !3, line: 72, type: !45)
!428 = !DILocation(line: 72, column: 28, scope: !424)
!429 = !DILocation(line: 72, column: 37, scope: !424)
!430 = !DILocation(line: 73, column: 31, scope: !424)
!431 = !DILocation(line: 73, column: 33, scope: !424)
!432 = !DILocation(line: 73, column: 12, scope: !424)
!433 = !DILocation(line: 73, column: 5, scope: !424)
!434 = distinct !DISubprogram(name: "linkClient", scope: !3, file: !3, line: 78, type: !4, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !435)
!435 = !{!436, !437}
!436 = !DILocalVariable(name: "c", arg: 1, scope: !434, file: !3, line: 78, type: !6)
!437 = !DILocalVariable(name: "id", scope: !434, file: !3, line: 84, type: !12)
!438 = !DILocation(line: 78, column: 25, scope: !434)
!439 = !DILocation(line: 79, column: 28, scope: !434)
!440 = !{!441, !381, i64 512}
!441 = !{!"redisServer", !378, i64 0, !381, i64 8, !381, i64 16, !381, i64 24, !378, i64 32, !378, i64 36, !378, i64 40, !381, i64 48, !381, i64 56, !381, i64 64, !381, i64 72, !378, i64 80, !378, i64 84, !378, i64 88, !378, i64 92, !381, i64 96, !381, i64 104, !378, i64 112, !378, i64 116, !379, i64 120, !378, i64 164, !410, i64 168, !378, i64 176, !381, i64 184, !381, i64 192, !381, i64 200, !379, i64 208, !378, i64 216, !378, i64 220, !379, i64 224, !378, i64 352, !381, i64 360, !378, i64 368, !379, i64 372, !378, i64 436, !378, i64 440, !379, i64 444, !378, i64 508, !381, i64 512, !381, i64 520, !381, i64 528, !381, i64 536, !381, i64 544, !381, i64 552, !381, i64 560, !378, i64 568, !442, i64 576, !379, i64 584, !381, i64 840, !410, i64 848, !378, i64 856, !378, i64 860, !410, i64 864, !410, i64 872, !410, i64 880, !410, i64 888, !381, i64 896, !381, i64 904, !381, i64 912, !381, i64 920, !381, i64 928, !381, i64 936, !381, i64 944, !381, i64 952, !381, i64 960, !381, i64 968, !381, i64 976, !381, i64 984, !381, i64 992, !410, i64 1000, !442, i64 1008, !442, i64 1016, !442, i64 1024, !443, i64 1032, !442, i64 1040, !442, i64 1048, !442, i64 1056, !442, i64 1064, !442, i64 1072, !442, i64 1080, !442, i64 1088, !442, i64 1096, !442, i64 1104, !410, i64 1112, !442, i64 1120, !443, i64 1128, !442, i64 1136, !442, i64 1144, !442, i64 1152, !442, i64 1160, !381, i64 1168, !442, i64 1176, !442, i64 1184, !410, i64 1192, !444, i64 1200, !442, i64 1240, !442, i64 1248, !410, i64 1256, !410, i64 1264, !379, i64 1272, !378, i64 1728, !378, i64 1732, !378, i64 1736, !378, i64 1740, !378, i64 1744, !410, i64 1752, !378, i64 1760, !378, i64 1764, !378, i64 1768, !378, i64 1772, !410, i64 1776, !410, i64 1784, !378, i64 1792, !378, i64 1796, !378, i64 1800, !378, i64 1804, !379, i64 1808, !378, i64 1880, !378, i64 1884, !381, i64 1888, !378, i64 1896, !378, i64 1900, !410, i64 1904, !410, i64 1912, !410, i64 1920, !410, i64 1928, !378, i64 1936, !378, i64 1940, !381, i64 1944, !381, i64 1952, !378, i64 1960, !378, i64 1964, !410, i64 1968, !410, i64 1976, !410, i64 1984, !410, i64 1992, !378, i64 2000, !410, i64 2008, !378, i64 2016, !378, i64 2020, !378, i64 2024, !378, i64 2028, !378, i64 2032, !378, i64 2036, !378, i64 2040, !378, i64 2044, !378, i64 2048, !378, i64 2052, !378, i64 2056, !378, i64 2060, !378, i64 2064, !381, i64 2072, !442, i64 2080, !442, i64 2088, !378, i64 2096, !381, i64 2104, !378, i64 2112, !381, i64 2120, !378, i64 2128, !378, i64 2132, !410, i64 2136, !410, i64 2144, !410, i64 2152, !410, i64 2160, !378, i64 2168, !378, i64 2172, !378, i64 2176, !378, i64 2180, !378, i64 2184, !378, i64 2188, !379, i64 2192, !445, i64 2200, !446, i64 2224, !381, i64 2240, !378, i64 2248, !381, i64 2256, !378, i64 2264, !379, i64 2268, !379, i64 2309, !442, i64 2352, !442, i64 2360, !378, i64 2368, !378, i64 2372, !381, i64 2376, !442, i64 2384, !442, i64 2392, !442, i64 2400, !442, i64 2408, !410, i64 2416, !410, i64 2424, !378, i64 2432, !378, i64 2436, !378, i64 2440, !378, i64 2444, !378, i64 2448, !381, i64 2456, !381, i64 2464, !378, i64 2472, !378, i64 2476, !381, i64 2480, !381, i64 2488, !378, i64 2496, !378, i64 2500, !410, i64 2504, !410, i64 2512, !410, i64 2520, !378, i64 2528, !378, i64 2532, !381, i64 2536, !410, i64 2544, !378, i64 2552, !378, i64 2556, !378, i64 2560, !410, i64 2568, !378, i64 2576, !378, i64 2580, !378, i64 2584, !381, i64 2592, !379, i64 2600, !442, i64 2648, !378, i64 2656, !381, i64 2664, !381, i64 2672, !378, i64 2680, !381, i64 2688, !378, i64 2696, !378, i64 2700, !442, i64 2704, !378, i64 2712, !378, i64 2716, !378, i64 2720, !378, i64 2724, !442, i64 2728, !378, i64 2736, !379, i64 2740, !381, i64 2768, !381, i64 2776, !378, i64 2784, !378, i64 2788, !378, i64 2792, !378, i64 2796, !410, i64 2800, !410, i64 2808, !410, i64 2816, !410, i64 2824, !410, i64 2832, !410, i64 2840, !410, i64 2848, !410, i64 2856, !378, i64 2864, !378, i64 2868, !410, i64 2872, !410, i64 2880, !378, i64 2888, !442, i64 2896, !381, i64 2904, !381, i64 2912, !378, i64 2920, !378, i64 2924, !442, i64 2928, !381, i64 2936, !381, i64 2944, !378, i64 2952, !378, i64 2956, !378, i64 2960, !378, i64 2964, !381, i64 2968, !378, i64 2976, !378, i64 2980, !378, i64 2984, !381, i64 2992, !381, i64 3000, !381, i64 3008, !381, i64 3016, !442, i64 3024, !442, i64 3032, !442, i64 3040, !378, i64 3048, !378, i64 3052, !378, i64 3056, !378, i64 3060, !378, i64 3064, !378, i64 3068, !378, i64 3072, !378, i64 3076, !378, i64 3080, !378, i64 3084, !378, i64 3088, !442, i64 3096, !381, i64 3104, !381, i64 3112, !381, i64 3120, !378, i64 3128, !378, i64 3132, !378, i64 3136, !410, i64 3144, !381, i64 3152, !381, i64 3160, !381, i64 3168}
!442 = !{!"long long", !379, i64 0}
!443 = !{!"double", !379, i64 0}
!444 = !{!"malloc_stats", !410, i64 0, !410, i64 8, !410, i64 16, !410, i64 24, !410, i64 32}
!445 = !{!"", !378, i64 0, !410, i64 8, !442, i64 16}
!446 = !{!"redisOpArray", !381, i64 0, !378, i64 8}
!447 = !DILocation(line: 79, column: 36, scope: !434)
!448 = !DILocation(line: 79, column: 5, scope: !434)
!449 = !DILocation(line: 83, column: 27, scope: !434)
!450 = !{!451, !381, i64 8}
!451 = !{!"list", !381, i64 0, !381, i64 8, !381, i64 16, !381, i64 24, !381, i64 32, !410, i64 40}
!452 = !DILocation(line: 83, column: 8, scope: !434)
!453 = !DILocation(line: 83, column: 25, scope: !434)
!454 = !{!455, !381, i64 520}
!455 = !{!"client", !410, i64 0, !378, i64 8, !381, i64 16, !381, i64 24, !381, i64 32, !410, i64 40, !381, i64 48, !410, i64 56, !378, i64 64, !381, i64 72, !381, i64 80, !381, i64 88, !378, i64 96, !378, i64 100, !410, i64 104, !381, i64 112, !442, i64 120, !410, i64 128, !410, i64 136, !410, i64 144, !410, i64 152, !378, i64 160, !378, i64 164, !378, i64 168, !378, i64 172, !378, i64 176, !410, i64 184, !410, i64 192, !381, i64 200, !442, i64 208, !442, i64 216, !442, i64 224, !442, i64 232, !442, i64 240, !379, i64 248, !378, i64 292, !379, i64 296, !378, i64 344, !456, i64 352, !378, i64 384, !457, i64 392, !442, i64 480, !381, i64 488, !381, i64 496, !381, i64 504, !381, i64 512, !381, i64 520, !378, i64 528, !379, i64 532}
!456 = !{!"multiState", !381, i64 0, !378, i64 8, !378, i64 12, !378, i64 16, !410, i64 24}
!457 = !{!"blockingState", !442, i64 0, !381, i64 8, !381, i64 16, !410, i64 24, !381, i64 32, !381, i64 40, !442, i64 48, !442, i64 56, !378, i64 64, !378, i64 68, !442, i64 72, !381, i64 80}
!458 = !DILocation(line: 84, column: 5, scope: !434)
!459 = !DILocation(line: 84, column: 19, scope: !434)
!460 = !{!455, !410, i64 0}
!461 = !DILocation(line: 84, column: 14, scope: !434)
!462 = !DILocation(line: 85, column: 22, scope: !434)
!463 = !{!441, !381, i64 560}
!464 = !DILocation(line: 85, column: 5, scope: !434)
!465 = !DILocation(line: 86, column: 1, scope: !434)
!466 = distinct !DISubprogram(name: "createClient", scope: !3, file: !3, line: 88, type: !467, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !469)
!467 = !DISubroutineType(types: !468)
!468 = !{!6, !18}
!469 = !{!470, !471, !472}
!470 = !DILocalVariable(name: "fd", arg: 1, scope: !466, file: !3, line: 88, type: !18)
!471 = !DILocalVariable(name: "c", scope: !466, file: !3, line: 92, type: !6)
!472 = !DILocalVariable(name: "client_id", scope: !466, file: !3, line: 113, type: !12)
!473 = !DILocation(line: 88, column: 26, scope: !466)
!474 = !DILocation(line: 92, column: 27, scope: !466)
!475 = !{!381, !381, i64 0}
!476 = !DILocalVariable(name: "a", arg: 1, scope: !477, file: !478, line: 157, type: !481)
!477 = distinct !DISubprogram(name: "uk_malloc", scope: !478, file: !478, line: 157, type: !479, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !536)
!478 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!479 = !DISubroutineType(types: !480)
!480 = !{!45, !481, !492}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !478, line: 77, size: 832, elements: !483)
!483 = !{!484, !487, !494, !499, !505, !507, !512, !513, !514, !519, !524, !529, !530, !531}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !482, file: !478, line: 79, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !478, line: 54, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !482, file: !478, line: 80, baseType: !488, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !478, line: 56, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!45, !481, !492, !492}
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !493, line: 58, baseType: !16)
!493 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!494 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !482, file: !478, line: 81, baseType: !495, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !478, line: 62, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!45, !481, !45, !492}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !482, file: !478, line: 82, baseType: !500, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !478, line: 58, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!18, !481, !504, !492, !492}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !482, file: !478, line: 83, baseType: !506, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !478, line: 60, baseType: !489)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !482, file: !478, line: 84, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !478, line: 64, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !481, !45}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !482, file: !478, line: 87, baseType: !508, size: 64, offset: 384)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !482, file: !478, line: 88, baseType: !485, size: 64, offset: 448)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !482, file: !478, line: 92, baseType: !515, size: 64, offset: 512)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !478, line: 66, baseType: !516)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!45, !481, !16}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !482, file: !478, line: 93, baseType: !520, size: 64, offset: 576)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !478, line: 68, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !481, !45, !16}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !482, file: !478, line: 99, baseType: !525, size: 64, offset: 640)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !478, line: 70, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!18, !481, !45, !492}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !482, file: !478, line: 100, baseType: !492, size: 64, offset: 704)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !482, file: !478, line: 103, baseType: !481, size: 64, offset: 768)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !482, file: !478, line: 104, baseType: !532, offset: 832)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, elements: !282)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !13, line: 20, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !15, line: 41, baseType: !535)
!535 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!536 = !{!476, !537}
!537 = !DILocalVariable(name: "size", arg: 2, scope: !477, file: !478, line: 157, type: !492)
!538 = !DILocation(line: 157, column: 48, scope: !477, inlinedAt: !539)
!539 = distinct !DILocation(line: 92, column: 17, scope: !466)
!540 = !DILocation(line: 157, column: 58, scope: !477, inlinedAt: !539)
!541 = !DILocation(line: 159, column: 6, scope: !542, inlinedAt: !539)
!542 = distinct !DILexicalBlock(scope: !477, file: !478, line: 159, column: 6)
!543 = !DILocation(line: 159, column: 6, scope: !477, inlinedAt: !539)
!544 = !{!"branch_weights", i32 1, i32 2000}
!545 = !DILocation(line: 160, column: 3, scope: !546, inlinedAt: !539)
!546 = distinct !DILexicalBlock(scope: !542, file: !478, line: 159, column: 20)
!547 = !DILocation(line: 160, column: 9, scope: !546, inlinedAt: !539)
!548 = !{!378, !378, i64 0}
!549 = !DILocation(line: 161, column: 3, scope: !546, inlinedAt: !539)
!550 = !DILocalVariable(name: "a", arg: 1, scope: !551, file: !478, line: 151, type: !481)
!551 = distinct !DISubprogram(name: "uk_do_malloc", scope: !478, file: !478, line: 151, type: !479, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !552)
!552 = !{!550, !553}
!553 = !DILocalVariable(name: "size", arg: 2, scope: !551, file: !478, line: 151, type: !492)
!554 = !DILocation(line: 151, column: 51, scope: !551, inlinedAt: !555)
!555 = distinct !DILocation(line: 163, column: 9, scope: !477, inlinedAt: !539)
!556 = !DILocation(line: 151, column: 61, scope: !551, inlinedAt: !555)
!557 = !DILocation(line: 154, column: 12, scope: !551, inlinedAt: !555)
!558 = !DILocation(line: 154, column: 9, scope: !551, inlinedAt: !555)
!559 = !DILocation(line: 163, column: 2, scope: !477, inlinedAt: !539)
!560 = !DILocation(line: 0, scope: !477, inlinedAt: !539)
!561 = !DILocation(line: 92, column: 17, scope: !466)
!562 = !DILocation(line: 92, column: 13, scope: !466)
!563 = !DILocation(line: 98, column: 12, scope: !564)
!564 = distinct !DILexicalBlock(scope: !466, file: !3, line: 98, column: 9)
!565 = !DILocation(line: 98, column: 9, scope: !466)
!566 = !DILocation(line: 99, column: 9, scope: !567)
!567 = distinct !DILexicalBlock(scope: !564, file: !3, line: 98, column: 19)
!568 = !DILocation(line: 100, column: 9, scope: !567)
!569 = !DILocation(line: 101, column: 20, scope: !570)
!570 = distinct !DILexicalBlock(scope: !567, file: !3, line: 101, column: 13)
!571 = !{!441, !378, i64 1736}
!572 = !DILocation(line: 101, column: 13, scope: !570)
!573 = !DILocation(line: 101, column: 13, scope: !567)
!574 = !DILocation(line: 102, column: 13, scope: !570)
!575 = !DILocation(line: 103, column: 38, scope: !576)
!576 = distinct !DILexicalBlock(scope: !567, file: !3, line: 103, column: 13)
!577 = !{!441, !381, i64 72}
!578 = !DILocation(line: 103, column: 13, scope: !576)
!579 = !DILocation(line: 104, column: 37, scope: !576)
!580 = !DILocation(line: 103, column: 13, scope: !567)
!581 = !DILocation(line: 106, column: 13, scope: !582)
!582 = distinct !DILexicalBlock(scope: !576, file: !3, line: 105, column: 9)
!583 = !DILocation(line: 107, column: 13, scope: !582)
!584 = !DILocation(line: 108, column: 13, scope: !582)
!585 = !DILocation(line: 112, column: 5, scope: !466)
!586 = !DILocation(line: 114, column: 5, scope: !587)
!587 = distinct !DILexicalBlock(scope: !466, file: !3, line: 114, column: 5)
!588 = !DILocation(line: 113, column: 14, scope: !466)
!589 = !DILocation(line: 115, column: 8, scope: !466)
!590 = !DILocation(line: 115, column: 11, scope: !466)
!591 = !DILocation(line: 116, column: 8, scope: !466)
!592 = !DILocation(line: 116, column: 11, scope: !466)
!593 = !{!455, !378, i64 8}
!594 = !DILocation(line: 117, column: 8, scope: !466)
!595 = !DILocation(line: 117, column: 13, scope: !466)
!596 = !{!455, !381, i64 24}
!597 = !DILocation(line: 118, column: 8, scope: !466)
!598 = !DILocation(line: 118, column: 15, scope: !466)
!599 = !{!455, !378, i64 528}
!600 = !DILocation(line: 119, column: 8, scope: !466)
!601 = !DILocation(line: 119, column: 15, scope: !466)
!602 = !{!455, !410, i64 40}
!603 = !DILocation(line: 120, column: 19, scope: !466)
!604 = !DILocation(line: 120, column: 8, scope: !466)
!605 = !DILocation(line: 120, column: 17, scope: !466)
!606 = !{!455, !381, i64 32}
!607 = !DILocation(line: 121, column: 27, scope: !466)
!608 = !DILocation(line: 121, column: 8, scope: !466)
!609 = !DILocation(line: 121, column: 25, scope: !466)
!610 = !{!455, !381, i64 48}
!611 = !DILocation(line: 122, column: 8, scope: !466)
!612 = !DILocation(line: 122, column: 22, scope: !466)
!613 = !{!455, !410, i64 56}
!614 = !DILocation(line: 123, column: 8, scope: !466)
!615 = !DILocation(line: 123, column: 16, scope: !466)
!616 = !{!455, !378, i64 96}
!617 = !DILocation(line: 124, column: 8, scope: !466)
!618 = !DILocation(line: 124, column: 13, scope: !466)
!619 = !{!455, !378, i64 64}
!620 = !DILocation(line: 125, column: 8, scope: !466)
!621 = !DILocation(line: 125, column: 13, scope: !466)
!622 = !{!455, !381, i64 72}
!623 = !DILocation(line: 126, column: 8, scope: !466)
!624 = !DILocation(line: 126, column: 12, scope: !466)
!625 = !DILocation(line: 127, column: 8, scope: !466)
!626 = !DILocation(line: 127, column: 21, scope: !466)
!627 = !{!455, !378, i64 100}
!628 = !DILocation(line: 128, column: 8, scope: !466)
!629 = !DILocation(line: 128, column: 16, scope: !466)
!630 = !{!455, !410, i64 104}
!631 = !DILocation(line: 129, column: 8, scope: !466)
!632 = !DILocation(line: 129, column: 16, scope: !466)
!633 = !{!455, !410, i64 128}
!634 = !DILocation(line: 130, column: 8, scope: !466)
!635 = !DILocation(line: 131, column: 44, scope: !466)
!636 = !{!441, !410, i64 2872}
!637 = !DILocation(line: 131, column: 19, scope: !466)
!638 = !DILocation(line: 131, column: 35, scope: !466)
!639 = !{!455, !410, i64 144}
!640 = !DILocation(line: 131, column: 8, scope: !466)
!641 = !DILocation(line: 131, column: 14, scope: !466)
!642 = !{!455, !410, i64 136}
!643 = !DILocation(line: 130, column: 14, scope: !466)
!644 = !DILocation(line: 136, column: 8, scope: !466)
!645 = !DILocation(line: 136, column: 21, scope: !466)
!646 = !{!442, !442, i64 0}
!647 = !DILocation(line: 137, column: 8, scope: !466)
!648 = !DILocation(line: 137, column: 21, scope: !466)
!649 = !DILocation(line: 139, column: 8, scope: !466)
!650 = !DILocation(line: 139, column: 29, scope: !466)
!651 = !{!455, !378, i64 292}
!652 = !DILocation(line: 140, column: 8, scope: !466)
!653 = !DILocation(line: 140, column: 20, scope: !466)
!654 = !{!379, !379, i64 0}
!655 = !DILocation(line: 141, column: 8, scope: !466)
!656 = !DILocation(line: 141, column: 19, scope: !466)
!657 = !{!455, !378, i64 344}
!658 = !DILocation(line: 142, column: 16, scope: !466)
!659 = !DILocation(line: 142, column: 8, scope: !466)
!660 = !DILocation(line: 142, column: 14, scope: !466)
!661 = !{!455, !381, i64 112}
!662 = !DILocation(line: 143, column: 8, scope: !466)
!663 = !DILocation(line: 143, column: 20, scope: !466)
!664 = !{!455, !442, i64 120}
!665 = !DILocation(line: 144, column: 8, scope: !466)
!666 = !DILocation(line: 144, column: 37, scope: !466)
!667 = !{!455, !410, i64 152}
!668 = !DILocation(line: 145, column: 5, scope: !466)
!669 = !{!451, !381, i64 24}
!670 = !DILocation(line: 146, column: 5, scope: !466)
!671 = !{!451, !381, i64 16}
!672 = !DILocation(line: 147, column: 8, scope: !466)
!673 = !DILocation(line: 147, column: 14, scope: !466)
!674 = !{!455, !378, i64 384}
!675 = !DILocation(line: 148, column: 8, scope: !466)
!676 = !DILocation(line: 148, column: 13, scope: !466)
!677 = !DILocation(line: 148, column: 21, scope: !466)
!678 = !{!455, !442, i64 392}
!679 = !DILocation(line: 149, column: 20, scope: !466)
!680 = !DILocation(line: 149, column: 13, scope: !466)
!681 = !DILocation(line: 149, column: 18, scope: !466)
!682 = !{!455, !381, i64 400}
!683 = !DILocation(line: 150, column: 13, scope: !466)
!684 = !DILocation(line: 150, column: 20, scope: !466)
!685 = !{!455, !381, i64 408}
!686 = !DILocation(line: 151, column: 13, scope: !466)
!687 = !DILocation(line: 151, column: 25, scope: !466)
!688 = !DILocation(line: 153, column: 13, scope: !466)
!689 = !DILocation(line: 153, column: 31, scope: !466)
!690 = !{!455, !378, i64 456}
!691 = !DILocation(line: 154, column: 13, scope: !466)
!692 = !DILocation(line: 154, column: 25, scope: !466)
!693 = !{!455, !378, i64 460}
!694 = !DILocation(line: 155, column: 13, scope: !466)
!695 = !DILocation(line: 155, column: 24, scope: !466)
!696 = !{!455, !442, i64 464}
!697 = !DILocation(line: 156, column: 8, scope: !466)
!698 = !DILocation(line: 156, column: 13, scope: !466)
!699 = !{!455, !442, i64 480}
!700 = !DILocation(line: 157, column: 23, scope: !466)
!701 = !DILocation(line: 157, column: 8, scope: !466)
!702 = !DILocation(line: 157, column: 21, scope: !466)
!703 = !{!455, !381, i64 488}
!704 = !DILocation(line: 158, column: 26, scope: !466)
!705 = !DILocation(line: 158, column: 8, scope: !466)
!706 = !DILocation(line: 158, column: 24, scope: !466)
!707 = !{!455, !381, i64 496}
!708 = !DILocation(line: 159, column: 26, scope: !466)
!709 = !DILocation(line: 159, column: 8, scope: !466)
!710 = !DILocation(line: 159, column: 24, scope: !466)
!711 = !{!455, !381, i64 504}
!712 = !DILocation(line: 160, column: 8, scope: !466)
!713 = !DILocation(line: 160, column: 15, scope: !466)
!714 = !{!455, !381, i64 512}
!715 = !DILocation(line: 161, column: 8, scope: !466)
!716 = !DILocation(line: 161, column: 25, scope: !466)
!717 = !DILocation(line: 162, column: 5, scope: !466)
!718 = !DILocation(line: 163, column: 5, scope: !466)
!719 = !{!451, !381, i64 32}
!720 = !DILocation(line: 164, column: 9, scope: !466)
!721 = !DILocation(line: 78, column: 25, scope: !434, inlinedAt: !722)
!722 = distinct !DILocation(line: 164, column: 19, scope: !723)
!723 = distinct !DILexicalBlock(scope: !466, file: !3, line: 164, column: 9)
!724 = !DILocation(line: 79, column: 28, scope: !434, inlinedAt: !722)
!725 = !DILocation(line: 79, column: 5, scope: !434, inlinedAt: !722)
!726 = !DILocation(line: 83, column: 27, scope: !434, inlinedAt: !722)
!727 = !DILocation(line: 83, column: 25, scope: !434, inlinedAt: !722)
!728 = !DILocation(line: 84, column: 5, scope: !434, inlinedAt: !722)
!729 = !DILocation(line: 84, column: 19, scope: !434, inlinedAt: !722)
!730 = !DILocation(line: 84, column: 14, scope: !434, inlinedAt: !722)
!731 = !DILocation(line: 85, column: 22, scope: !434, inlinedAt: !722)
!732 = !DILocation(line: 85, column: 5, scope: !434, inlinedAt: !722)
!733 = !DILocation(line: 86, column: 1, scope: !434, inlinedAt: !722)
!734 = !DILocation(line: 164, column: 19, scope: !723)
!735 = !DILocation(line: 165, column: 5, scope: !466)
!736 = !DILocation(line: 0, scope: !466)
!737 = !DILocation(line: 167, column: 1, scope: !466)
!738 = distinct !DISubprogram(name: "readQueryFromClient", scope: !3, file: !3, line: 1524, type: !739, isLocal: false, isDefinition: true, scopeLine: 1524, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !801)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !741, !18, !45, !18}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventLoop", file: !743, line: 109, baseType: !744)
!743 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/ae.h", directory: "/root/.unikraft/apps/redis/build")
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !743, line: 97, size: 640, elements: !745)
!745 = !{!746, !747, !748, !749, !750, !764, !771, !793, !794, !795, !800}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !744, file: !743, line: 98, baseType: !18, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !744, file: !743, line: 99, baseType: !18, size: 32, offset: 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !744, file: !743, line: 100, baseType: !95, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "lastTime", scope: !744, file: !743, line: 101, baseType: !182, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !744, file: !743, line: 102, baseType: !751, size: 64, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !743, line: 76, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !743, line: 71, size: 256, elements: !754)
!754 = !{!755, !756, !762, !763}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !753, file: !743, line: 72, baseType: !18, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !753, file: !743, line: 73, baseType: !757, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !743, line: 65, baseType: !759)
!759 = !DISubroutineType(types: !760)
!760 = !{null, !761, !18, !45, !18}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !753, file: !743, line: 74, baseType: !757, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !753, file: !743, line: 75, baseType: !45, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !744, file: !743, line: 103, baseType: !765, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !743, line: 94, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !743, line: 91, size: 64, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !767, file: !743, line: 92, baseType: !18, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !767, file: !743, line: 93, baseType: !18, size: 32, offset: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !744, file: !743, line: 104, baseType: !772, size: 64, offset: 320)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !743, line: 88, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !743, line: 79, size: 512, elements: !775)
!775 = !{!776, !777, !778, !779, !784, !789, !790, !792}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !774, file: !743, line: 80, baseType: !95, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "when_sec", scope: !774, file: !743, line: 81, baseType: !77, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "when_ms", scope: !774, file: !743, line: 82, baseType: !77, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !774, file: !743, line: 83, baseType: !780, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !743, line: 66, baseType: !782)
!782 = !DISubroutineType(types: !783)
!783 = !{!18, !761, !95, !45}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !774, file: !743, line: 84, baseType: !785, size: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !743, line: 67, baseType: !787)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !761, !45}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !774, file: !743, line: 85, baseType: !45, size: 64, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !774, file: !743, line: 86, baseType: !791, size: 64, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !774, file: !743, line: 87, baseType: !791, size: 64, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !744, file: !743, line: 105, baseType: !18, size: 32, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !744, file: !743, line: 106, baseType: !45, size: 64, offset: 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !744, file: !743, line: 107, baseType: !796, size: 64, offset: 512)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !743, line: 68, baseType: !798)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !761}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !744, file: !743, line: 108, baseType: !796, size: 64, offset: 576)
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !810, !813, !816}
!802 = !DILocalVariable(name: "el", arg: 1, scope: !738, file: !3, line: 1524, type: !741)
!803 = !DILocalVariable(name: "fd", arg: 2, scope: !738, file: !3, line: 1524, type: !18)
!804 = !DILocalVariable(name: "privdata", arg: 3, scope: !738, file: !3, line: 1524, type: !45)
!805 = !DILocalVariable(name: "mask", arg: 4, scope: !738, file: !3, line: 1524, type: !18)
!806 = !DILocalVariable(name: "c", scope: !738, file: !3, line: 1525, type: !6)
!807 = !DILocalVariable(name: "nread", scope: !738, file: !3, line: 1526, type: !18)
!808 = !DILocalVariable(name: "readlen", scope: !738, file: !3, line: 1526, type: !18)
!809 = !DILocalVariable(name: "qblen", scope: !738, file: !3, line: 1527, type: !142)
!810 = !DILocalVariable(name: "remaining", scope: !811, file: !3, line: 1541, type: !270)
!811 = distinct !DILexicalBlock(scope: !812, file: !3, line: 1540, column: 5)
!812 = distinct !DILexicalBlock(scope: !738, file: !3, line: 1538, column: 9)
!813 = !DILocalVariable(name: "ci", scope: !814, file: !3, line: 1577, type: !137)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 1576, column: 63)
!815 = distinct !DILexicalBlock(scope: !738, file: !3, line: 1576, column: 9)
!816 = !DILocalVariable(name: "bytes", scope: !814, file: !3, line: 1577, type: !137)
!817 = !DILocation(line: 1524, column: 39, scope: !738)
!818 = !DILocation(line: 1524, column: 47, scope: !738)
!819 = !DILocation(line: 1524, column: 57, scope: !738)
!820 = !DILocation(line: 1524, column: 71, scope: !738)
!821 = !DILocation(line: 1525, column: 17, scope: !738)
!822 = !DILocation(line: 1525, column: 13, scope: !738)
!823 = !DILocation(line: 1526, column: 16, scope: !738)
!824 = !DILocation(line: 1538, column: 12, scope: !812)
!825 = !DILocation(line: 1538, column: 20, scope: !812)
!826 = !DILocation(line: 1538, column: 43, scope: !812)
!827 = !DILocation(line: 1538, column: 49, scope: !812)
!828 = !DILocation(line: 1538, column: 46, scope: !812)
!829 = !DILocation(line: 1538, column: 62, scope: !812)
!830 = !DILocation(line: 1538, column: 68, scope: !812)
!831 = !DILocation(line: 1539, column: 23, scope: !812)
!832 = !DILocation(line: 1539, column: 9, scope: !812)
!833 = !DILocation(line: 1541, column: 48, scope: !811)
!834 = !DILocation(line: 1541, column: 62, scope: !811)
!835 = !DILocalVariable(name: "s", arg: 1, scope: !836, file: !138, line: 87, type: !839)
!836 = distinct !DISubprogram(name: "sdslen", scope: !138, file: !138, line: 87, type: !837, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !840)
!837 = !DISubroutineType(types: !838)
!838 = !{!142, !839}
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!840 = !{!835, !841}
!841 = !DILocalVariable(name: "flags", scope: !836, file: !138, line: 88, type: !269)
!842 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !843)
!843 = distinct !DILocation(line: 1541, column: 52, scope: !811)
!844 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !843)
!845 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !843)
!846 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !843)
!847 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !843)
!848 = distinct !DILexicalBlock(scope: !836, file: !138, line: 89, column: 33)
!849 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !843)
!850 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !843)
!851 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !843)
!852 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !843)
!853 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !843)
!854 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !843)
!855 = !{!856, !856, i64 0}
!856 = !{!"short", !379, i64 0}
!857 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !843)
!858 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !843)
!859 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !843)
!860 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !843)
!861 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !843)
!862 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !843)
!863 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !843)
!864 = !DILocation(line: 0, scope: !848, inlinedAt: !843)
!865 = !DILocation(line: 1541, column: 51, scope: !811)
!866 = !DILocation(line: 1541, column: 17, scope: !811)
!867 = !DILocation(line: 1545, column: 27, scope: !868)
!868 = distinct !DILexicalBlock(scope: !811, file: !3, line: 1545, column: 13)
!869 = !DILocation(line: 1548, column: 23, scope: !738)
!870 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !871)
!871 = distinct !DILocation(line: 1548, column: 13, scope: !738)
!872 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !871)
!873 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !871)
!874 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !871)
!875 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !871)
!876 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !871)
!877 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !871)
!878 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !871)
!879 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !871)
!880 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !871)
!881 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !871)
!882 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !871)
!883 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !871)
!884 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !871)
!885 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !871)
!886 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !871)
!887 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !871)
!888 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !871)
!889 = !DILocation(line: 0, scope: !848, inlinedAt: !871)
!890 = !DILocation(line: 1527, column: 12, scope: !738)
!891 = !DILocation(line: 1549, column: 12, scope: !892)
!892 = distinct !DILexicalBlock(scope: !738, file: !3, line: 1549, column: 9)
!893 = !DILocation(line: 1549, column: 26, scope: !892)
!894 = !DILocation(line: 1549, column: 9, scope: !738)
!895 = !DILocation(line: 1549, column: 52, scope: !892)
!896 = !DILocation(line: 1549, column: 35, scope: !892)
!897 = !DILocation(line: 1550, column: 19, scope: !738)
!898 = !DILocation(line: 1550, column: 17, scope: !738)
!899 = !DILocation(line: 1551, column: 33, scope: !738)
!900 = !DILocation(line: 1551, column: 13, scope: !738)
!901 = !DILocation(line: 1526, column: 9, scope: !738)
!902 = !DILocation(line: 1552, column: 9, scope: !738)
!903 = !DILocation(line: 1553, column: 13, scope: !904)
!904 = distinct !DILexicalBlock(scope: !905, file: !3, line: 1553, column: 13)
!905 = distinct !DILexicalBlock(scope: !906, file: !3, line: 1552, column: 22)
!906 = distinct !DILexicalBlock(scope: !738, file: !3, line: 1552, column: 9)
!907 = !DILocation(line: 1553, column: 19, scope: !904)
!908 = !DILocation(line: 1553, column: 13, scope: !905)
!909 = !DILocation(line: 1556, column: 70, scope: !910)
!910 = distinct !DILexicalBlock(scope: !904, file: !3, line: 1555, column: 16)
!911 = !DILocation(line: 1556, column: 61, scope: !910)
!912 = !DILocation(line: 1556, column: 13, scope: !910)
!913 = !DILocation(line: 1557, column: 13, scope: !910)
!914 = !DILocation(line: 1558, column: 13, scope: !910)
!915 = !DILocation(line: 1561, column: 9, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !3, line: 1560, column: 28)
!917 = distinct !DILexicalBlock(scope: !906, file: !3, line: 1560, column: 16)
!918 = !DILocation(line: 1562, column: 9, scope: !916)
!919 = !DILocation(line: 1563, column: 9, scope: !916)
!920 = !DILocation(line: 1564, column: 19, scope: !921)
!921 = distinct !DILexicalBlock(scope: !917, file: !3, line: 1564, column: 16)
!922 = !{!455, !378, i64 160}
!923 = !DILocation(line: 1564, column: 25, scope: !921)
!924 = !DILocation(line: 1564, column: 16, scope: !917)
!925 = !DILocation(line: 1572, column: 28, scope: !738)
!926 = !DILocation(line: 1568, column: 44, scope: !927)
!927 = distinct !DILexicalBlock(scope: !921, file: !3, line: 1564, column: 42)
!928 = !DILocation(line: 1569, column: 44, scope: !927)
!929 = !DILocation(line: 1569, column: 52, scope: !927)
!930 = !DILocation(line: 1569, column: 59, scope: !927)
!931 = !DILocation(line: 1568, column: 31, scope: !927)
!932 = !DILocation(line: 1568, column: 29, scope: !927)
!933 = !DILocation(line: 1570, column: 5, scope: !927)
!934 = !DILocation(line: 1572, column: 19, scope: !738)
!935 = !DILocation(line: 1572, column: 5, scope: !738)
!936 = !DILocation(line: 1573, column: 33, scope: !738)
!937 = !DILocation(line: 1573, column: 8, scope: !738)
!938 = !DILocation(line: 1573, column: 24, scope: !738)
!939 = !DILocation(line: 1574, column: 12, scope: !940)
!940 = distinct !DILexicalBlock(scope: !738, file: !3, line: 1574, column: 9)
!941 = !DILocation(line: 1574, column: 18, scope: !940)
!942 = !DILocation(line: 1574, column: 9, scope: !738)
!943 = !DILocation(line: 1574, column: 38, scope: !940)
!944 = !DILocation(line: 1574, column: 51, scope: !940)
!945 = !{!455, !442, i64 208}
!946 = !DILocation(line: 1574, column: 35, scope: !940)
!947 = !DILocation(line: 1575, column: 33, scope: !738)
!948 = !{!441, !442, i64 1240}
!949 = !DILocation(line: 1576, column: 19, scope: !815)
!950 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !951)
!951 = distinct !DILocation(line: 1576, column: 9, scope: !815)
!952 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !951)
!953 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !951)
!954 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !951)
!955 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !951)
!956 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !951)
!957 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !951)
!958 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !951)
!959 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !951)
!960 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !951)
!961 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !951)
!962 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !951)
!963 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !951)
!964 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !951)
!965 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !951)
!966 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !951)
!967 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !951)
!968 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !951)
!969 = !DILocation(line: 0, scope: !848, inlinedAt: !951)
!970 = !DILocation(line: 1576, column: 38, scope: !815)
!971 = !{!441, !410, i64 1784}
!972 = !DILocation(line: 1576, column: 29, scope: !815)
!973 = !DILocation(line: 1576, column: 9, scope: !738)
!974 = !DILocation(line: 1577, column: 38, scope: !814)
!975 = !DILocation(line: 1577, column: 18, scope: !814)
!976 = !DILocation(line: 1577, column: 13, scope: !814)
!977 = !DILocation(line: 1577, column: 61, scope: !814)
!978 = !DILocation(line: 1577, column: 53, scope: !814)
!979 = !DILocation(line: 1579, column: 37, scope: !814)
!980 = !DILocation(line: 1579, column: 17, scope: !814)
!981 = !DILocation(line: 1580, column: 9, scope: !814)
!982 = !DILocation(line: 1581, column: 9, scope: !814)
!983 = !DILocation(line: 1582, column: 9, scope: !814)
!984 = !DILocation(line: 1583, column: 9, scope: !814)
!985 = !DILocalVariable(name: "c", arg: 1, scope: !986, file: !3, line: 1509, type: !6)
!986 = distinct !DISubprogram(name: "processInputBufferAndReplicate", scope: !3, file: !3, line: 1509, type: !4, isLocal: false, isDefinition: true, scopeLine: 1509, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !987)
!987 = !{!985, !988, !991}
!988 = !DILocalVariable(name: "prev_offset", scope: !989, file: !3, line: 1513, type: !142)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 1512, column: 12)
!990 = distinct !DILexicalBlock(scope: !986, file: !3, line: 1510, column: 9)
!991 = !DILocalVariable(name: "applied", scope: !989, file: !3, line: 1515, type: !142)
!992 = !DILocation(line: 1509, column: 45, scope: !986, inlinedAt: !993)
!993 = distinct !DILocation(line: 1593, column: 5, scope: !738)
!994 = !DILocation(line: 1510, column: 9, scope: !986, inlinedAt: !993)
!995 = !DILocation(line: 1511, column: 9, scope: !996, inlinedAt: !993)
!996 = distinct !DILexicalBlock(scope: !990, file: !3, line: 1510, column: 38)
!997 = !DILocation(line: 1512, column: 5, scope: !996, inlinedAt: !993)
!998 = !DILocation(line: 1513, column: 33, scope: !989, inlinedAt: !993)
!999 = !{!455, !442, i64 216}
!1000 = !DILocation(line: 1513, column: 16, scope: !989, inlinedAt: !993)
!1001 = !DILocation(line: 1514, column: 9, scope: !989, inlinedAt: !993)
!1002 = !DILocation(line: 1515, column: 29, scope: !989, inlinedAt: !993)
!1003 = !DILocation(line: 1515, column: 37, scope: !989, inlinedAt: !993)
!1004 = !DILocation(line: 1515, column: 16, scope: !989, inlinedAt: !993)
!1005 = !DILocation(line: 1516, column: 13, scope: !1006, inlinedAt: !993)
!1006 = distinct !DILexicalBlock(scope: !989, file: !3, line: 1516, column: 13)
!1007 = !DILocation(line: 1516, column: 13, scope: !989, inlinedAt: !993)
!1008 = !DILocation(line: 1517, column: 58, scope: !1009, inlinedAt: !993)
!1009 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 1516, column: 22)
!1010 = !{!441, !381, i64 536}
!1011 = !DILocation(line: 1518, column: 24, scope: !1009, inlinedAt: !993)
!1012 = !DILocation(line: 1517, column: 13, scope: !1009, inlinedAt: !993)
!1013 = !DILocation(line: 1519, column: 25, scope: !1009, inlinedAt: !993)
!1014 = !DILocation(line: 1519, column: 13, scope: !1009, inlinedAt: !993)
!1015 = !DILocation(line: 1520, column: 9, scope: !1009, inlinedAt: !993)
!1016 = !DILocation(line: 1594, column: 1, scope: !738)
!1017 = distinct !DISubprogram(name: "clientInstallWriteHandler", scope: !3, file: !3, line: 176, type: !4, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1018)
!1018 = !{!1019}
!1019 = !DILocalVariable(name: "c", arg: 1, scope: !1017, file: !3, line: 176, type: !6)
!1020 = !DILocation(line: 176, column: 40, scope: !1017)
!1021 = !DILocation(line: 180, column: 14, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 180, column: 9)
!1023 = !DILocation(line: 180, column: 20, scope: !1022)
!1024 = !DILocation(line: 180, column: 44, scope: !1022)
!1025 = !DILocation(line: 181, column: 13, scope: !1022)
!1026 = !{!455, !378, i64 168}
!1027 = !DILocation(line: 181, column: 42, scope: !1022)
!1028 = !DILocation(line: 182, column: 53, scope: !1022)
!1029 = !{!455, !378, i64 172}
!1030 = !DILocation(line: 182, column: 50, scope: !1022)
!1031 = !DILocation(line: 180, column: 9, scope: !1017)
!1032 = !DILocation(line: 190, column: 18, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 183, column: 5)
!1034 = !DILocation(line: 191, column: 32, scope: !1033)
!1035 = !{!441, !381, i64 528}
!1036 = !DILocation(line: 191, column: 54, scope: !1033)
!1037 = !DILocation(line: 191, column: 9, scope: !1033)
!1038 = !DILocation(line: 192, column: 5, scope: !1033)
!1039 = !DILocation(line: 193, column: 1, scope: !1017)
!1040 = distinct !DISubprogram(name: "prepareClientToWrite", scope: !3, file: !3, line: 217, type: !1041, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1043)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!18, !6}
!1043 = !{!1044}
!1044 = !DILocalVariable(name: "c", arg: 1, scope: !1040, file: !3, line: 217, type: !6)
!1045 = !DILocation(line: 217, column: 34, scope: !1040)
!1046 = !DILocation(line: 220, column: 12, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 220, column: 9)
!1048 = !DILocation(line: 220, column: 18, scope: !1047)
!1049 = !DILocation(line: 220, column: 9, scope: !1040)
!1050 = !DILocation(line: 223, column: 18, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 223, column: 9)
!1052 = !DILocation(line: 227, column: 36, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 227, column: 9)
!1054 = !DILocation(line: 223, column: 9, scope: !1040)
!1055 = !DILocation(line: 230, column: 12, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 230, column: 9)
!1057 = !DILocation(line: 230, column: 15, scope: !1056)
!1058 = !DILocation(line: 230, column: 9, scope: !1040)
!1059 = !DILocalVariable(name: "c", arg: 1, scope: !1060, file: !3, line: 664, type: !6)
!1060 = distinct !DISubprogram(name: "clientHasPendingReplies", scope: !3, file: !3, line: 664, type: !1041, isLocal: false, isDefinition: true, scopeLine: 664, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1061)
!1061 = !{!1059}
!1062 = !DILocation(line: 664, column: 37, scope: !1060, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 234, column: 10, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 234, column: 9)
!1065 = !DILocation(line: 665, column: 15, scope: !1060, inlinedAt: !1063)
!1066 = !DILocation(line: 665, column: 12, scope: !1060, inlinedAt: !1063)
!1067 = !DILocation(line: 665, column: 22, scope: !1060, inlinedAt: !1063)
!1068 = !DILocation(line: 665, column: 25, scope: !1060, inlinedAt: !1063)
!1069 = !{!451, !410, i64 40}
!1070 = !DILocation(line: 180, column: 20, scope: !1022, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 234, column: 38, scope: !1064)
!1072 = !DILocation(line: 234, column: 9, scope: !1040)
!1073 = !DILocation(line: 176, column: 40, scope: !1017, inlinedAt: !1071)
!1074 = !DILocation(line: 181, column: 13, scope: !1022, inlinedAt: !1071)
!1075 = !DILocation(line: 181, column: 42, scope: !1022, inlinedAt: !1071)
!1076 = !DILocation(line: 182, column: 53, scope: !1022, inlinedAt: !1071)
!1077 = !DILocation(line: 182, column: 50, scope: !1022, inlinedAt: !1071)
!1078 = !DILocation(line: 180, column: 9, scope: !1017, inlinedAt: !1071)
!1079 = !DILocation(line: 190, column: 18, scope: !1033, inlinedAt: !1071)
!1080 = !DILocation(line: 191, column: 32, scope: !1033, inlinedAt: !1071)
!1081 = !DILocation(line: 191, column: 54, scope: !1033, inlinedAt: !1071)
!1082 = !DILocation(line: 191, column: 9, scope: !1033, inlinedAt: !1071)
!1083 = !DILocation(line: 192, column: 5, scope: !1033, inlinedAt: !1071)
!1084 = !DILocation(line: 0, scope: !1053)
!1085 = !DILocation(line: 238, column: 1, scope: !1040)
!1086 = !DILocation(line: 664, column: 37, scope: !1060)
!1087 = !DILocation(line: 665, column: 15, scope: !1060)
!1088 = !DILocation(line: 665, column: 12, scope: !1060)
!1089 = !DILocation(line: 665, column: 22, scope: !1060)
!1090 = !DILocation(line: 665, column: 25, scope: !1060)
!1091 = !DILocation(line: 665, column: 5, scope: !1060)
!1092 = distinct !DISubprogram(name: "_addReplyToBuffer", scope: !3, file: !3, line: 244, type: !1093, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1095)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!18, !6, !317, !142}
!1095 = !{!1096, !1097, !1098, !1099}
!1096 = !DILocalVariable(name: "c", arg: 1, scope: !1092, file: !3, line: 244, type: !6)
!1097 = !DILocalVariable(name: "s", arg: 2, scope: !1092, file: !3, line: 244, type: !317)
!1098 = !DILocalVariable(name: "len", arg: 3, scope: !1092, file: !3, line: 244, type: !142)
!1099 = !DILocalVariable(name: "available", scope: !1092, file: !3, line: 245, type: !142)
!1100 = !DILocation(line: 244, column: 31, scope: !1092)
!1101 = !DILocation(line: 244, column: 46, scope: !1092)
!1102 = !DILocation(line: 244, column: 56, scope: !1092)
!1103 = !DILocation(line: 245, column: 42, scope: !1092)
!1104 = !DILocation(line: 245, column: 39, scope: !1092)
!1105 = !DILocation(line: 247, column: 12, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 247, column: 9)
!1107 = !DILocation(line: 247, column: 18, scope: !1106)
!1108 = !DILocation(line: 247, column: 9, scope: !1092)
!1109 = !DILocation(line: 245, column: 38, scope: !1092)
!1110 = !DILocation(line: 245, column: 12, scope: !1092)
!1111 = !DILocation(line: 251, column: 9, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 251, column: 9)
!1113 = !DILocation(line: 251, column: 30, scope: !1112)
!1114 = !DILocation(line: 254, column: 13, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 254, column: 9)
!1116 = !DILocation(line: 251, column: 9, scope: !1092)
!1117 = !DILocation(line: 256, column: 18, scope: !1092)
!1118 = !DILocation(line: 256, column: 5, scope: !1092)
!1119 = !DILocation(line: 257, column: 14, scope: !1092)
!1120 = !DILocation(line: 258, column: 5, scope: !1092)
!1121 = !DILocation(line: 0, scope: !1092)
!1122 = !DILocation(line: 259, column: 1, scope: !1092)
!1123 = distinct !DISubprogram(name: "_addReplyStringToList", scope: !3, file: !3, line: 261, type: !1124, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1126)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !6, !317, !142}
!1126 = !{!1127, !1128, !1129, !1130, !1131, !1132, !1135, !1136}
!1127 = !DILocalVariable(name: "c", arg: 1, scope: !1123, file: !3, line: 261, type: !6)
!1128 = !DILocalVariable(name: "s", arg: 2, scope: !1123, file: !3, line: 261, type: !317)
!1129 = !DILocalVariable(name: "len", arg: 3, scope: !1123, file: !3, line: 261, type: !142)
!1130 = !DILocalVariable(name: "ln", scope: !1123, file: !3, line: 264, type: !103)
!1131 = !DILocalVariable(name: "tail", scope: !1123, file: !3, line: 265, type: !398)
!1132 = !DILocalVariable(name: "avail", scope: !1133, file: !3, line: 275, type: !142)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 272, column: 15)
!1134 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 272, column: 9)
!1135 = !DILocalVariable(name: "copy", scope: !1133, file: !3, line: 276, type: !142)
!1136 = !DILocalVariable(name: "size", scope: !1137, file: !3, line: 285, type: !142)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 282, column: 14)
!1138 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 282, column: 9)
!1139 = !DILocation(line: 261, column: 36, scope: !1123)
!1140 = !DILocation(line: 261, column: 51, scope: !1123)
!1141 = !DILocation(line: 261, column: 61, scope: !1123)
!1142 = !DILocation(line: 262, column: 12, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 262, column: 9)
!1144 = !DILocation(line: 262, column: 18, scope: !1143)
!1145 = !DILocation(line: 262, column: 9, scope: !1123)
!1146 = !DILocation(line: 264, column: 20, scope: !1123)
!1147 = !DILocation(line: 264, column: 15, scope: !1123)
!1148 = !DILocation(line: 265, column: 30, scope: !1123)
!1149 = !DILocation(line: 265, column: 34, scope: !1123)
!1150 = !{!1151, !381, i64 16}
!1151 = !{!"listNode", !381, i64 0, !381, i64 8, !381, i64 16}
!1152 = !DILocation(line: 265, column: 23, scope: !1123)
!1153 = !DILocation(line: 272, column: 9, scope: !1134)
!1154 = !DILocation(line: 272, column: 9, scope: !1123)
!1155 = !DILocation(line: 275, column: 30, scope: !1133)
!1156 = !DILocation(line: 275, column: 43, scope: !1133)
!1157 = !DILocation(line: 275, column: 35, scope: !1133)
!1158 = !DILocation(line: 275, column: 16, scope: !1133)
!1159 = !DILocation(line: 276, column: 29, scope: !1133)
!1160 = !DILocation(line: 276, column: 23, scope: !1133)
!1161 = !DILocation(line: 276, column: 16, scope: !1133)
!1162 = !DILocation(line: 277, column: 26, scope: !1133)
!1163 = !DILocation(line: 277, column: 9, scope: !1133)
!1164 = !DILocation(line: 278, column: 20, scope: !1133)
!1165 = !DILocation(line: 279, column: 11, scope: !1133)
!1166 = !DILocation(line: 280, column: 13, scope: !1133)
!1167 = !DILocation(line: 281, column: 5, scope: !1133)
!1168 = !DILocation(line: 282, column: 9, scope: !1138)
!1169 = !DILocation(line: 282, column: 9, scope: !1123)
!1170 = !DILocation(line: 285, column: 23, scope: !1137)
!1171 = !DILocation(line: 285, column: 16, scope: !1137)
!1172 = !DILocation(line: 286, column: 29, scope: !1137)
!1173 = !DILocation(line: 286, column: 16, scope: !1137)
!1174 = !DILocation(line: 288, column: 22, scope: !1137)
!1175 = !DILocation(line: 288, column: 43, scope: !1137)
!1176 = !DILocation(line: 288, column: 15, scope: !1137)
!1177 = !DILocation(line: 288, column: 20, scope: !1137)
!1178 = !DILocation(line: 289, column: 15, scope: !1137)
!1179 = !DILocation(line: 289, column: 20, scope: !1137)
!1180 = !DILocation(line: 290, column: 22, scope: !1137)
!1181 = !DILocation(line: 290, column: 9, scope: !1137)
!1182 = !DILocation(line: 291, column: 28, scope: !1137)
!1183 = !DILocation(line: 291, column: 9, scope: !1137)
!1184 = !DILocation(line: 292, column: 33, scope: !1137)
!1185 = !DILocation(line: 292, column: 12, scope: !1137)
!1186 = !DILocation(line: 292, column: 24, scope: !1137)
!1187 = !DILocation(line: 293, column: 5, scope: !1137)
!1188 = !DILocation(line: 294, column: 5, scope: !1123)
!1189 = !DILocation(line: 295, column: 1, scope: !1123)
!1190 = distinct !DISubprogram(name: "asyncCloseClientOnOutputBufferLimitReached", scope: !3, file: !3, line: 2128, type: !4, isLocal: false, isDefinition: true, scopeLine: 2128, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1191)
!1191 = !{!1192, !1193}
!1192 = !DILocalVariable(name: "c", arg: 1, scope: !1190, file: !3, line: 2128, type: !6)
!1193 = !DILocalVariable(name: "client", scope: !1194, file: !3, line: 2133, type: !137)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 2132, column: 43)
!1195 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 2132, column: 9)
!1196 = !DILocation(line: 2128, column: 57, scope: !1190)
!1197 = !DILocation(line: 2129, column: 12, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 2129, column: 9)
!1199 = !DILocation(line: 2129, column: 15, scope: !1198)
!1200 = !DILocation(line: 2129, column: 9, scope: !1190)
!1201 = !DILocation(line: 2130, column: 5, scope: !1190)
!1202 = !DILocation(line: 2131, column: 24, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 2131, column: 9)
!1204 = !DILocation(line: 2131, column: 29, scope: !1203)
!1205 = !DILocation(line: 2131, column: 35, scope: !1203)
!1206 = !DILocation(line: 2131, column: 41, scope: !1203)
!1207 = !DILocation(line: 2131, column: 9, scope: !1190)
!1208 = !DILocalVariable(name: "c", arg: 1, scope: !1209, file: !3, line: 2083, type: !6)
!1209 = distinct !DISubprogram(name: "checkClientOutputBufferLimits", scope: !3, file: !3, line: 2083, type: !1041, isLocal: false, isDefinition: true, scopeLine: 2083, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1210)
!1210 = !{!1208, !1211, !1212, !1213, !1214, !1215}
!1211 = !DILocalVariable(name: "soft", scope: !1209, file: !3, line: 2084, type: !18)
!1212 = !DILocalVariable(name: "hard", scope: !1209, file: !3, line: 2084, type: !18)
!1213 = !DILocalVariable(name: "class", scope: !1209, file: !3, line: 2084, type: !18)
!1214 = !DILocalVariable(name: "used_mem", scope: !1209, file: !3, line: 2085, type: !16)
!1215 = !DILocalVariable(name: "elapsed", scope: !1216, file: !3, line: 2106, type: !182)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 2105, column: 16)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 2102, column: 13)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 2101, column: 15)
!1219 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 2101, column: 9)
!1220 = !DILocation(line: 2083, column: 43, scope: !1209, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 2132, column: 9, scope: !1195)
!1222 = !DILocation(line: 2084, column: 9, scope: !1209, inlinedAt: !1221)
!1223 = !DILocation(line: 2084, column: 19, scope: !1209, inlinedAt: !1221)
!1224 = !DILocalVariable(name: "c", arg: 1, scope: !1225, file: !3, line: 2036, type: !6)
!1225 = distinct !DISubprogram(name: "getClientOutputBufferMemoryUsage", scope: !3, file: !3, line: 2036, type: !1226, isLocal: false, isDefinition: true, scopeLine: 2036, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1228)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!16, !6}
!1228 = !{!1224, !1229}
!1229 = !DILocalVariable(name: "list_item_size", scope: !1225, file: !3, line: 2037, type: !16)
!1230 = !DILocation(line: 2036, column: 56, scope: !1225, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 2085, column: 30, scope: !1209, inlinedAt: !1221)
!1232 = !DILocation(line: 2037, column: 19, scope: !1225, inlinedAt: !1231)
!1233 = !DILocation(line: 2038, column: 45, scope: !1225, inlinedAt: !1231)
!1234 = !DILocation(line: 2038, column: 44, scope: !1225, inlinedAt: !1231)
!1235 = !DILocation(line: 2038, column: 27, scope: !1225, inlinedAt: !1231)
!1236 = !DILocation(line: 2085, column: 19, scope: !1209, inlinedAt: !1221)
!1237 = !DILocalVariable(name: "c", arg: 1, scope: !1238, file: !3, line: 2050, type: !6)
!1238 = distinct !DISubprogram(name: "getClientType", scope: !3, file: !3, line: 2050, type: !1041, isLocal: false, isDefinition: true, scopeLine: 2050, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1239)
!1239 = !{!1237}
!1240 = !DILocation(line: 2050, column: 27, scope: !1238, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 2087, column: 13, scope: !1209, inlinedAt: !1221)
!1242 = !DILocation(line: 2051, column: 18, scope: !1243, inlinedAt: !1241)
!1243 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 2051, column: 9)
!1244 = !DILocation(line: 2051, column: 9, scope: !1238, inlinedAt: !1241)
!1245 = !DILocation(line: 2052, column: 35, scope: !1246, inlinedAt: !1241)
!1246 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 2052, column: 9)
!1247 = !DILocation(line: 2055, column: 5, scope: !1238, inlinedAt: !1241)
!1248 = !DILocation(line: 2092, column: 42, scope: !1249, inlinedAt: !1221)
!1249 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 2092, column: 9)
!1250 = !{!1251, !442, i64 0}
!1251 = !{!"clientBufferLimitsConfig", !442, i64 0, !442, i64 8, !410, i64 16}
!1252 = !DILocation(line: 2092, column: 59, scope: !1249, inlinedAt: !1221)
!1253 = !DILocation(line: 2095, column: 42, scope: !1254, inlinedAt: !1221)
!1254 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 2095, column: 9)
!1255 = !{!1251, !442, i64 8}
!1256 = !DILocation(line: 2095, column: 59, scope: !1254, inlinedAt: !1221)
!1257 = !DILocation(line: 0, scope: !1258, inlinedAt: !1221)
!1258 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 2115, column: 12)
!1259 = !DILocation(line: 2101, column: 9, scope: !1209, inlinedAt: !1221)
!1260 = !DILocation(line: 2102, column: 16, scope: !1217, inlinedAt: !1221)
!1261 = !DILocation(line: 2102, column: 45, scope: !1217, inlinedAt: !1221)
!1262 = !DILocation(line: 0, scope: !1216, inlinedAt: !1221)
!1263 = !DILocation(line: 2102, column: 13, scope: !1218, inlinedAt: !1221)
!1264 = !DILocation(line: 2103, column: 45, scope: !1265, inlinedAt: !1221)
!1265 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 2102, column: 51)
!1266 = !DILocation(line: 2105, column: 9, scope: !1265, inlinedAt: !1221)
!1267 = !DILocation(line: 2106, column: 46, scope: !1216, inlinedAt: !1221)
!1268 = !DILocation(line: 2106, column: 20, scope: !1216, inlinedAt: !1221)
!1269 = !DILocation(line: 2109, column: 50, scope: !1270, inlinedAt: !1221)
!1270 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 2108, column: 17)
!1271 = !{!1251, !410, i64 16}
!1272 = !DILocation(line: 2108, column: 25, scope: !1270, inlinedAt: !1221)
!1273 = !DILocation(line: 2108, column: 17, scope: !1216, inlinedAt: !1221)
!1274 = !DILocation(line: 2116, column: 41, scope: !1258, inlinedAt: !1221)
!1275 = !DILocation(line: 0, scope: !1254, inlinedAt: !1221)
!1276 = !DILocation(line: 2118, column: 17, scope: !1209, inlinedAt: !1221)
!1277 = !DILocation(line: 2132, column: 9, scope: !1195)
!1278 = !DILocation(line: 2132, column: 9, scope: !1190)
!1279 = !DILocation(line: 2133, column: 42, scope: !1194)
!1280 = !DILocation(line: 2133, column: 22, scope: !1194)
!1281 = !DILocation(line: 2133, column: 13, scope: !1194)
!1282 = !DILocalVariable(name: "c", arg: 1, scope: !1283, file: !3, line: 957, type: !6)
!1283 = distinct !DISubprogram(name: "freeClientAsync", scope: !3, file: !3, line: 957, type: !4, isLocal: false, isDefinition: true, scopeLine: 957, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1284)
!1284 = !{!1282}
!1285 = !DILocation(line: 957, column: 30, scope: !1283, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 2135, column: 9, scope: !1194)
!1287 = !DILocation(line: 958, column: 12, scope: !1288, inlinedAt: !1286)
!1288 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 958, column: 9)
!1289 = !DILocation(line: 958, column: 38, scope: !1288, inlinedAt: !1286)
!1290 = !DILocation(line: 959, column: 14, scope: !1283, inlinedAt: !1286)
!1291 = !DILocation(line: 960, column: 28, scope: !1283, inlinedAt: !1286)
!1292 = !{!441, !381, i64 520}
!1293 = !DILocation(line: 960, column: 45, scope: !1283, inlinedAt: !1286)
!1294 = !DILocation(line: 960, column: 5, scope: !1283, inlinedAt: !1286)
!1295 = !DILocation(line: 961, column: 1, scope: !1283, inlinedAt: !1286)
!1296 = !DILocation(line: 2136, column: 9, scope: !1194)
!1297 = !DILocation(line: 2137, column: 9, scope: !1194)
!1298 = !DILocation(line: 2138, column: 5, scope: !1194)
!1299 = !DILocation(line: 2139, column: 1, scope: !1190)
!1300 = distinct !DISubprogram(name: "addReply", scope: !3, file: !3, line: 303, type: !1301, isLocal: false, isDefinition: true, scopeLine: 303, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1303)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !6, !126}
!1303 = !{!1304, !1305, !1306, !1313}
!1304 = !DILocalVariable(name: "c", arg: 1, scope: !1300, file: !3, line: 303, type: !6)
!1305 = !DILocalVariable(name: "obj", arg: 2, scope: !1300, file: !3, line: 303, type: !126)
!1306 = !DILocalVariable(name: "buf", scope: !1307, file: !3, line: 313, type: !1310)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 309, column: 51)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 309, column: 16)
!1309 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 306, column: 9)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 256, elements: !1311)
!1311 = !{!1312}
!1312 = !DISubrange(count: 32)
!1313 = !DILocalVariable(name: "len", scope: !1307, file: !3, line: 314, type: !142)
!1314 = !DILocation(line: 303, column: 23, scope: !1300)
!1315 = !DILocation(line: 303, column: 32, scope: !1300)
!1316 = !DILocation(line: 217, column: 34, scope: !1040, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 304, column: 9, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 304, column: 9)
!1319 = !DILocation(line: 220, column: 12, scope: !1047, inlinedAt: !1317)
!1320 = !DILocation(line: 220, column: 18, scope: !1047, inlinedAt: !1317)
!1321 = !DILocation(line: 220, column: 9, scope: !1040, inlinedAt: !1317)
!1322 = !DILocation(line: 223, column: 18, scope: !1051, inlinedAt: !1317)
!1323 = !DILocation(line: 227, column: 36, scope: !1053, inlinedAt: !1317)
!1324 = !DILocation(line: 223, column: 9, scope: !1040, inlinedAt: !1317)
!1325 = !DILocation(line: 230, column: 12, scope: !1056, inlinedAt: !1317)
!1326 = !DILocation(line: 230, column: 15, scope: !1056, inlinedAt: !1317)
!1327 = !DILocation(line: 230, column: 9, scope: !1040, inlinedAt: !1317)
!1328 = !DILocation(line: 664, column: 37, scope: !1060, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 234, column: 10, scope: !1064, inlinedAt: !1317)
!1330 = !DILocation(line: 665, column: 15, scope: !1060, inlinedAt: !1329)
!1331 = !DILocation(line: 665, column: 12, scope: !1060, inlinedAt: !1329)
!1332 = !DILocation(line: 665, column: 22, scope: !1060, inlinedAt: !1329)
!1333 = !DILocation(line: 665, column: 25, scope: !1060, inlinedAt: !1329)
!1334 = !DILocation(line: 180, column: 20, scope: !1022, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 234, column: 38, scope: !1064, inlinedAt: !1317)
!1336 = !DILocation(line: 234, column: 9, scope: !1040, inlinedAt: !1317)
!1337 = !DILocation(line: 176, column: 40, scope: !1017, inlinedAt: !1335)
!1338 = !DILocation(line: 181, column: 13, scope: !1022, inlinedAt: !1335)
!1339 = !DILocation(line: 181, column: 42, scope: !1022, inlinedAt: !1335)
!1340 = !DILocation(line: 182, column: 53, scope: !1022, inlinedAt: !1335)
!1341 = !DILocation(line: 182, column: 50, scope: !1022, inlinedAt: !1335)
!1342 = !DILocation(line: 180, column: 9, scope: !1017, inlinedAt: !1335)
!1343 = !DILocation(line: 190, column: 18, scope: !1033, inlinedAt: !1335)
!1344 = !DILocation(line: 191, column: 32, scope: !1033, inlinedAt: !1335)
!1345 = !DILocation(line: 191, column: 54, scope: !1033, inlinedAt: !1335)
!1346 = !DILocation(line: 191, column: 9, scope: !1033, inlinedAt: !1335)
!1347 = !DILocation(line: 192, column: 5, scope: !1033, inlinedAt: !1335)
!1348 = !DILocation(line: 306, column: 9, scope: !1309)
!1349 = !DILocation(line: 307, column: 38, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 307, column: 13)
!1351 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 306, column: 32)
!1352 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 307, column: 42, scope: !1350)
!1354 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !1353)
!1355 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !1353)
!1356 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !1353)
!1357 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !1353)
!1358 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !1353)
!1359 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !1353)
!1360 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !1353)
!1361 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !1353)
!1362 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !1353)
!1363 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !1353)
!1364 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !1353)
!1365 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !1353)
!1366 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !1353)
!1367 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !1353)
!1368 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !1353)
!1369 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !1353)
!1370 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !1353)
!1371 = !DILocation(line: 0, scope: !848, inlinedAt: !1353)
!1372 = !DILocation(line: 244, column: 31, scope: !1092, inlinedAt: !1373)
!1373 = distinct !DILocation(line: 307, column: 13, scope: !1350)
!1374 = !DILocation(line: 244, column: 46, scope: !1092, inlinedAt: !1373)
!1375 = !DILocation(line: 244, column: 56, scope: !1092, inlinedAt: !1373)
!1376 = !DILocation(line: 245, column: 42, scope: !1092, inlinedAt: !1373)
!1377 = !DILocation(line: 245, column: 39, scope: !1092, inlinedAt: !1373)
!1378 = !DILocation(line: 247, column: 12, scope: !1106, inlinedAt: !1373)
!1379 = !DILocation(line: 247, column: 18, scope: !1106, inlinedAt: !1373)
!1380 = !DILocation(line: 247, column: 9, scope: !1092, inlinedAt: !1373)
!1381 = !DILocation(line: 245, column: 38, scope: !1092, inlinedAt: !1373)
!1382 = !DILocation(line: 245, column: 12, scope: !1092, inlinedAt: !1373)
!1383 = !DILocation(line: 251, column: 9, scope: !1112, inlinedAt: !1373)
!1384 = !DILocation(line: 251, column: 30, scope: !1112, inlinedAt: !1373)
!1385 = !DILocation(line: 254, column: 13, scope: !1115, inlinedAt: !1373)
!1386 = !DILocation(line: 251, column: 9, scope: !1092, inlinedAt: !1373)
!1387 = !DILocation(line: 256, column: 18, scope: !1092, inlinedAt: !1373)
!1388 = !DILocation(line: 256, column: 5, scope: !1092, inlinedAt: !1373)
!1389 = !DILocation(line: 257, column: 14, scope: !1092, inlinedAt: !1373)
!1390 = !DILocation(line: 258, column: 5, scope: !1092, inlinedAt: !1373)
!1391 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 308, column: 46, scope: !1350)
!1393 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !1392)
!1394 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !1392)
!1395 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !1392)
!1396 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !1392)
!1397 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !1392)
!1398 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !1392)
!1399 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !1392)
!1400 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !1392)
!1401 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !1392)
!1402 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !1392)
!1403 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !1392)
!1404 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !1392)
!1405 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !1392)
!1406 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !1392)
!1407 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !1392)
!1408 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !1392)
!1409 = !DILocation(line: 0, scope: !848, inlinedAt: !1392)
!1410 = !DILocation(line: 308, column: 13, scope: !1350)
!1411 = !DILocation(line: 313, column: 9, scope: !1307)
!1412 = !DILocation(line: 313, column: 14, scope: !1307)
!1413 = !DILocation(line: 314, column: 59, scope: !1307)
!1414 = !DILocation(line: 314, column: 22, scope: !1307)
!1415 = !DILocation(line: 314, column: 16, scope: !1307)
!1416 = !DILocation(line: 244, column: 31, scope: !1092, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 315, column: 13, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 315, column: 13)
!1419 = !DILocation(line: 244, column: 46, scope: !1092, inlinedAt: !1417)
!1420 = !DILocation(line: 244, column: 56, scope: !1092, inlinedAt: !1417)
!1421 = !DILocation(line: 245, column: 42, scope: !1092, inlinedAt: !1417)
!1422 = !DILocation(line: 245, column: 39, scope: !1092, inlinedAt: !1417)
!1423 = !DILocation(line: 247, column: 12, scope: !1106, inlinedAt: !1417)
!1424 = !DILocation(line: 247, column: 18, scope: !1106, inlinedAt: !1417)
!1425 = !DILocation(line: 247, column: 9, scope: !1092, inlinedAt: !1417)
!1426 = !DILocation(line: 245, column: 38, scope: !1092, inlinedAt: !1417)
!1427 = !DILocation(line: 245, column: 12, scope: !1092, inlinedAt: !1417)
!1428 = !DILocation(line: 251, column: 9, scope: !1112, inlinedAt: !1417)
!1429 = !DILocation(line: 251, column: 30, scope: !1112, inlinedAt: !1417)
!1430 = !DILocation(line: 254, column: 13, scope: !1115, inlinedAt: !1417)
!1431 = !DILocation(line: 251, column: 9, scope: !1092, inlinedAt: !1417)
!1432 = !DILocation(line: 256, column: 18, scope: !1092, inlinedAt: !1417)
!1433 = !DILocation(line: 256, column: 5, scope: !1092, inlinedAt: !1417)
!1434 = !DILocation(line: 257, column: 14, scope: !1092, inlinedAt: !1417)
!1435 = !DILocation(line: 258, column: 5, scope: !1092, inlinedAt: !1417)
!1436 = !DILocation(line: 316, column: 13, scope: !1418)
!1437 = !DILocation(line: 317, column: 5, scope: !1308)
!1438 = !DILocation(line: 318, column: 9, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 317, column: 12)
!1440 = !DILocation(line: 320, column: 1, scope: !1300)
!1441 = distinct !DISubprogram(name: "addReplySds", scope: !3, file: !3, line: 324, type: !1442, isLocal: false, isDefinition: true, scopeLine: 324, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1444)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{null, !6, !137}
!1444 = !{!1445, !1446}
!1445 = !DILocalVariable(name: "c", arg: 1, scope: !1441, file: !3, line: 324, type: !6)
!1446 = !DILocalVariable(name: "s", arg: 2, scope: !1441, file: !3, line: 324, type: !137)
!1447 = !DILocation(line: 324, column: 26, scope: !1441)
!1448 = !DILocation(line: 324, column: 33, scope: !1441)
!1449 = !DILocation(line: 217, column: 34, scope: !1040, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 325, column: 9, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 325, column: 9)
!1452 = !DILocation(line: 220, column: 12, scope: !1047, inlinedAt: !1450)
!1453 = !DILocation(line: 220, column: 18, scope: !1047, inlinedAt: !1450)
!1454 = !DILocation(line: 220, column: 9, scope: !1040, inlinedAt: !1450)
!1455 = !DILocation(line: 223, column: 18, scope: !1051, inlinedAt: !1450)
!1456 = !DILocation(line: 227, column: 36, scope: !1053, inlinedAt: !1450)
!1457 = !DILocation(line: 223, column: 9, scope: !1040, inlinedAt: !1450)
!1458 = !DILocation(line: 230, column: 12, scope: !1056, inlinedAt: !1450)
!1459 = !DILocation(line: 230, column: 15, scope: !1056, inlinedAt: !1450)
!1460 = !DILocation(line: 230, column: 9, scope: !1040, inlinedAt: !1450)
!1461 = !DILocation(line: 664, column: 37, scope: !1060, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 234, column: 10, scope: !1064, inlinedAt: !1450)
!1463 = !DILocation(line: 665, column: 15, scope: !1060, inlinedAt: !1462)
!1464 = !DILocation(line: 665, column: 12, scope: !1060, inlinedAt: !1462)
!1465 = !DILocation(line: 665, column: 22, scope: !1060, inlinedAt: !1462)
!1466 = !DILocation(line: 665, column: 25, scope: !1060, inlinedAt: !1462)
!1467 = !DILocation(line: 180, column: 20, scope: !1022, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 234, column: 38, scope: !1064, inlinedAt: !1450)
!1469 = !DILocation(line: 234, column: 9, scope: !1040, inlinedAt: !1450)
!1470 = !DILocation(line: 176, column: 40, scope: !1017, inlinedAt: !1468)
!1471 = !DILocation(line: 181, column: 13, scope: !1022, inlinedAt: !1468)
!1472 = !DILocation(line: 181, column: 42, scope: !1022, inlinedAt: !1468)
!1473 = !DILocation(line: 182, column: 53, scope: !1022, inlinedAt: !1468)
!1474 = !DILocation(line: 182, column: 50, scope: !1022, inlinedAt: !1468)
!1475 = !DILocation(line: 180, column: 9, scope: !1017, inlinedAt: !1468)
!1476 = !DILocation(line: 190, column: 18, scope: !1033, inlinedAt: !1468)
!1477 = !DILocation(line: 191, column: 32, scope: !1033, inlinedAt: !1468)
!1478 = !DILocation(line: 191, column: 54, scope: !1033, inlinedAt: !1468)
!1479 = !DILocation(line: 191, column: 9, scope: !1033, inlinedAt: !1468)
!1480 = !DILocation(line: 192, column: 5, scope: !1033, inlinedAt: !1468)
!1481 = !DILocation(line: 327, column: 9, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 325, column: 42)
!1483 = !DILocation(line: 328, column: 9, scope: !1482)
!1484 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 330, column: 31, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1441, file: !3, line: 330, column: 9)
!1487 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !1485)
!1488 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !1485)
!1489 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !1485)
!1490 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !1485)
!1491 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !1485)
!1492 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !1485)
!1493 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !1485)
!1494 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !1485)
!1495 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !1485)
!1496 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !1485)
!1497 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !1485)
!1498 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !1485)
!1499 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !1485)
!1500 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !1485)
!1501 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !1485)
!1502 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !1485)
!1503 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !1485)
!1504 = !DILocation(line: 0, scope: !848, inlinedAt: !1485)
!1505 = !DILocation(line: 244, column: 31, scope: !1092, inlinedAt: !1506)
!1506 = distinct !DILocation(line: 330, column: 9, scope: !1486)
!1507 = !DILocation(line: 244, column: 46, scope: !1092, inlinedAt: !1506)
!1508 = !DILocation(line: 244, column: 56, scope: !1092, inlinedAt: !1506)
!1509 = !DILocation(line: 245, column: 42, scope: !1092, inlinedAt: !1506)
!1510 = !DILocation(line: 245, column: 39, scope: !1092, inlinedAt: !1506)
!1511 = !DILocation(line: 247, column: 12, scope: !1106, inlinedAt: !1506)
!1512 = !DILocation(line: 247, column: 18, scope: !1106, inlinedAt: !1506)
!1513 = !DILocation(line: 247, column: 9, scope: !1092, inlinedAt: !1506)
!1514 = !DILocation(line: 245, column: 38, scope: !1092, inlinedAt: !1506)
!1515 = !DILocation(line: 245, column: 12, scope: !1092, inlinedAt: !1506)
!1516 = !DILocation(line: 251, column: 9, scope: !1112, inlinedAt: !1506)
!1517 = !DILocation(line: 251, column: 30, scope: !1112, inlinedAt: !1506)
!1518 = !DILocation(line: 254, column: 13, scope: !1115, inlinedAt: !1506)
!1519 = !DILocation(line: 251, column: 9, scope: !1092, inlinedAt: !1506)
!1520 = !DILocation(line: 256, column: 18, scope: !1092, inlinedAt: !1506)
!1521 = !DILocation(line: 256, column: 5, scope: !1092, inlinedAt: !1506)
!1522 = !DILocation(line: 257, column: 14, scope: !1092, inlinedAt: !1506)
!1523 = !DILocation(line: 258, column: 5, scope: !1092, inlinedAt: !1506)
!1524 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 331, column: 35, scope: !1486)
!1526 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !1525)
!1527 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !1525)
!1528 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !1525)
!1529 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !1525)
!1530 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !1525)
!1531 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !1525)
!1532 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !1525)
!1533 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !1525)
!1534 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !1525)
!1535 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !1525)
!1536 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !1525)
!1537 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !1525)
!1538 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !1525)
!1539 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !1525)
!1540 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !1525)
!1541 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !1525)
!1542 = !DILocation(line: 0, scope: !848, inlinedAt: !1525)
!1543 = !DILocation(line: 331, column: 9, scope: !1486)
!1544 = !DILocation(line: 332, column: 5, scope: !1441)
!1545 = !DILocation(line: 333, column: 1, scope: !1441)
!1546 = distinct !DISubprogram(name: "addReplyString", scope: !3, file: !3, line: 343, type: !1124, isLocal: false, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1547)
!1547 = !{!1548, !1549, !1550}
!1548 = !DILocalVariable(name: "c", arg: 1, scope: !1546, file: !3, line: 343, type: !6)
!1549 = !DILocalVariable(name: "s", arg: 2, scope: !1546, file: !3, line: 343, type: !317)
!1550 = !DILocalVariable(name: "len", arg: 3, scope: !1546, file: !3, line: 343, type: !142)
!1551 = !DILocation(line: 343, column: 29, scope: !1546)
!1552 = !DILocation(line: 343, column: 44, scope: !1546)
!1553 = !DILocation(line: 343, column: 54, scope: !1546)
!1554 = !DILocation(line: 217, column: 34, scope: !1040, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 344, column: 9, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 344, column: 9)
!1557 = !DILocation(line: 220, column: 12, scope: !1047, inlinedAt: !1555)
!1558 = !DILocation(line: 220, column: 18, scope: !1047, inlinedAt: !1555)
!1559 = !DILocation(line: 220, column: 9, scope: !1040, inlinedAt: !1555)
!1560 = !DILocation(line: 245, column: 42, scope: !1092, inlinedAt: !1561)
!1561 = distinct !DILocation(line: 345, column: 9, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 345, column: 9)
!1563 = !DILocation(line: 223, column: 18, scope: !1051, inlinedAt: !1555)
!1564 = !DILocation(line: 227, column: 36, scope: !1053, inlinedAt: !1555)
!1565 = !DILocation(line: 223, column: 9, scope: !1040, inlinedAt: !1555)
!1566 = !DILocation(line: 230, column: 12, scope: !1056, inlinedAt: !1555)
!1567 = !DILocation(line: 230, column: 15, scope: !1056, inlinedAt: !1555)
!1568 = !DILocation(line: 230, column: 9, scope: !1040, inlinedAt: !1555)
!1569 = !DILocation(line: 664, column: 37, scope: !1060, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 234, column: 10, scope: !1064, inlinedAt: !1555)
!1571 = !DILocation(line: 665, column: 15, scope: !1060, inlinedAt: !1570)
!1572 = !DILocation(line: 665, column: 12, scope: !1060, inlinedAt: !1570)
!1573 = !DILocation(line: 665, column: 22, scope: !1060, inlinedAt: !1570)
!1574 = !DILocation(line: 665, column: 25, scope: !1060, inlinedAt: !1570)
!1575 = !DILocation(line: 180, column: 20, scope: !1022, inlinedAt: !1576)
!1576 = distinct !DILocation(line: 234, column: 38, scope: !1064, inlinedAt: !1555)
!1577 = !DILocation(line: 234, column: 9, scope: !1040, inlinedAt: !1555)
!1578 = !DILocation(line: 176, column: 40, scope: !1017, inlinedAt: !1576)
!1579 = !DILocation(line: 181, column: 13, scope: !1022, inlinedAt: !1576)
!1580 = !DILocation(line: 181, column: 42, scope: !1022, inlinedAt: !1576)
!1581 = !DILocation(line: 182, column: 53, scope: !1022, inlinedAt: !1576)
!1582 = !DILocation(line: 182, column: 50, scope: !1022, inlinedAt: !1576)
!1583 = !DILocation(line: 180, column: 9, scope: !1017, inlinedAt: !1576)
!1584 = !DILocation(line: 190, column: 18, scope: !1033, inlinedAt: !1576)
!1585 = !DILocation(line: 191, column: 32, scope: !1033, inlinedAt: !1576)
!1586 = !DILocation(line: 191, column: 54, scope: !1033, inlinedAt: !1576)
!1587 = !DILocation(line: 191, column: 9, scope: !1033, inlinedAt: !1576)
!1588 = !DILocation(line: 247, column: 12, scope: !1106, inlinedAt: !1561)
!1589 = !DILocation(line: 192, column: 5, scope: !1033, inlinedAt: !1576)
!1590 = !DILocation(line: 244, column: 31, scope: !1092, inlinedAt: !1561)
!1591 = !DILocation(line: 244, column: 46, scope: !1092, inlinedAt: !1561)
!1592 = !DILocation(line: 244, column: 56, scope: !1092, inlinedAt: !1561)
!1593 = !DILocation(line: 245, column: 39, scope: !1092, inlinedAt: !1561)
!1594 = !DILocation(line: 247, column: 18, scope: !1106, inlinedAt: !1561)
!1595 = !DILocation(line: 247, column: 9, scope: !1092, inlinedAt: !1561)
!1596 = !DILocation(line: 245, column: 38, scope: !1092, inlinedAt: !1561)
!1597 = !DILocation(line: 245, column: 12, scope: !1092, inlinedAt: !1561)
!1598 = !DILocation(line: 251, column: 9, scope: !1112, inlinedAt: !1561)
!1599 = !DILocation(line: 251, column: 30, scope: !1112, inlinedAt: !1561)
!1600 = !DILocation(line: 254, column: 13, scope: !1115, inlinedAt: !1561)
!1601 = !DILocation(line: 251, column: 9, scope: !1092, inlinedAt: !1561)
!1602 = !DILocation(line: 256, column: 18, scope: !1092, inlinedAt: !1561)
!1603 = !DILocation(line: 256, column: 5, scope: !1092, inlinedAt: !1561)
!1604 = !DILocation(line: 257, column: 14, scope: !1092, inlinedAt: !1561)
!1605 = !DILocation(line: 258, column: 5, scope: !1092, inlinedAt: !1561)
!1606 = !DILocation(line: 346, column: 9, scope: !1562)
!1607 = !DILocation(line: 347, column: 1, scope: !1546)
!1608 = distinct !DISubprogram(name: "addReplyErrorLength", scope: !3, file: !3, line: 357, type: !1124, isLocal: false, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1609)
!1609 = !{!1610, !1611, !1612, !1613, !1616, !1617}
!1610 = !DILocalVariable(name: "c", arg: 1, scope: !1608, file: !3, line: 357, type: !6)
!1611 = !DILocalVariable(name: "s", arg: 2, scope: !1608, file: !3, line: 357, type: !317)
!1612 = !DILocalVariable(name: "len", arg: 3, scope: !1608, file: !3, line: 357, type: !142)
!1613 = !DILocalVariable(name: "to", scope: !1614, file: !3, line: 375, type: !139)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !3, line: 374, column: 82)
!1615 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 374, column: 9)
!1616 = !DILocalVariable(name: "from", scope: !1614, file: !3, line: 376, type: !139)
!1617 = !DILocalVariable(name: "cmdname", scope: !1614, file: !3, line: 377, type: !139)
!1618 = !DILocation(line: 357, column: 34, scope: !1608)
!1619 = !DILocation(line: 357, column: 49, scope: !1608)
!1620 = !DILocation(line: 357, column: 59, scope: !1608)
!1621 = !DILocation(line: 360, column: 10, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 360, column: 9)
!1623 = !DILocation(line: 360, column: 14, scope: !1622)
!1624 = !DILocation(line: 360, column: 17, scope: !1622)
!1625 = !DILocation(line: 360, column: 22, scope: !1622)
!1626 = !DILocation(line: 360, column: 9, scope: !1608)
!1627 = !DILocation(line: 360, column: 30, scope: !1622)
!1628 = !DILocation(line: 361, column: 5, scope: !1608)
!1629 = !DILocation(line: 362, column: 5, scope: !1608)
!1630 = !DILocation(line: 374, column: 12, scope: !1615)
!1631 = !DILocation(line: 374, column: 18, scope: !1615)
!1632 = !DILocation(line: 374, column: 63, scope: !1615)
!1633 = !DILocation(line: 374, column: 49, scope: !1615)
!1634 = !DILocation(line: 375, column: 29, scope: !1614)
!1635 = !DILocation(line: 375, column: 20, scope: !1614)
!1636 = !DILocation(line: 375, column: 15, scope: !1614)
!1637 = !DILocation(line: 376, column: 22, scope: !1614)
!1638 = !DILocation(line: 376, column: 15, scope: !1614)
!1639 = !DILocation(line: 377, column: 28, scope: !1614)
!1640 = !{!455, !381, i64 88}
!1641 = !DILocation(line: 377, column: 25, scope: !1614)
!1642 = !DILocation(line: 377, column: 50, scope: !1614)
!1643 = !{!1644, !381, i64 0}
!1644 = !{!"redisCommand", !381, i64 0, !381, i64 8, !378, i64 16, !381, i64 24, !378, i64 32, !381, i64 40, !378, i64 48, !378, i64 52, !378, i64 56, !442, i64 64, !442, i64 72}
!1645 = !DILocation(line: 377, column: 15, scope: !1614)
!1646 = !DILocation(line: 378, column: 9, scope: !1614)
!1647 = !DILocation(line: 381, column: 5, scope: !1614)
!1648 = !DILocation(line: 382, column: 1, scope: !1608)
!1649 = distinct !DISubprogram(name: "addReplyError", scope: !3, file: !3, line: 384, type: !1650, isLocal: false, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1652)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !6, !317}
!1652 = !{!1653, !1654}
!1653 = !DILocalVariable(name: "c", arg: 1, scope: !1649, file: !3, line: 384, type: !6)
!1654 = !DILocalVariable(name: "err", arg: 2, scope: !1649, file: !3, line: 384, type: !317)
!1655 = !DILocation(line: 384, column: 28, scope: !1649)
!1656 = !DILocation(line: 384, column: 43, scope: !1649)
!1657 = !DILocation(line: 385, column: 31, scope: !1649)
!1658 = !DILocation(line: 385, column: 5, scope: !1649)
!1659 = !DILocation(line: 386, column: 1, scope: !1649)
!1660 = distinct !DISubprogram(name: "addReplyErrorFormat", scope: !3, file: !3, line: 388, type: !1661, isLocal: false, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1663)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !6, !317, null}
!1663 = !{!1664, !1665, !1666, !1667, !1668, !1672}
!1664 = !DILocalVariable(name: "c", arg: 1, scope: !1660, file: !3, line: 388, type: !6)
!1665 = !DILocalVariable(name: "fmt", arg: 2, scope: !1660, file: !3, line: 388, type: !317)
!1666 = !DILocalVariable(name: "l", scope: !1660, file: !3, line: 389, type: !142)
!1667 = !DILocalVariable(name: "j", scope: !1660, file: !3, line: 389, type: !142)
!1668 = !DILocalVariable(name: "ap", scope: !1660, file: !3, line: 390, type: !1669)
!1669 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1670, line: 46, baseType: !1671)
!1670 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !323, line: 51, baseType: !324)
!1672 = !DILocalVariable(name: "s", scope: !1660, file: !3, line: 392, type: !137)
!1673 = !DILocation(line: 388, column: 34, scope: !1660)
!1674 = !DILocation(line: 388, column: 49, scope: !1660)
!1675 = !DILocation(line: 390, column: 5, scope: !1660)
!1676 = !DILocation(line: 390, column: 13, scope: !1660)
!1677 = !DILocation(line: 391, column: 5, scope: !1660)
!1678 = !DILocation(line: 392, column: 27, scope: !1660)
!1679 = !DILocation(line: 392, column: 13, scope: !1660)
!1680 = !DILocation(line: 392, column: 9, scope: !1660)
!1681 = !DILocation(line: 393, column: 5, scope: !1660)
!1682 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 396, column: 9, scope: !1660)
!1684 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !1683)
!1685 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !1683)
!1686 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !1683)
!1687 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !1683)
!1688 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !1683)
!1689 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !1683)
!1690 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !1683)
!1691 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !1683)
!1692 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !1683)
!1693 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !1683)
!1694 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !1683)
!1695 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !1683)
!1696 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !1683)
!1697 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !1683)
!1698 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !1683)
!1699 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !1683)
!1700 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !1683)
!1701 = !DILocation(line: 0, scope: !848, inlinedAt: !1683)
!1702 = !DILocation(line: 389, column: 12, scope: !1660)
!1703 = !DILocation(line: 389, column: 15, scope: !1660)
!1704 = !DILocation(line: 397, column: 19, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 397, column: 5)
!1706 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 397, column: 5)
!1707 = !DILocation(line: 397, column: 5, scope: !1706)
!1708 = !DILocation(line: 398, column: 13, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 398, column: 13)
!1710 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 397, column: 29)
!1711 = !DILocation(line: 398, column: 26, scope: !1709)
!1712 = !DILocation(line: 398, column: 48, scope: !1709)
!1713 = !DILocation(line: 398, column: 43, scope: !1709)
!1714 = !DILocation(line: 397, column: 25, scope: !1705)
!1715 = distinct !{!1715, !1716}
!1716 = !{!"llvm.loop.unroll.disable"}
!1717 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 400, column: 29, scope: !1660)
!1719 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !1718)
!1720 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !1718)
!1721 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !1718)
!1722 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !1718)
!1723 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !1718)
!1724 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !1718)
!1725 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !1718)
!1726 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !1718)
!1727 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !1718)
!1728 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !1718)
!1729 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !1718)
!1730 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !1718)
!1731 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !1718)
!1732 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !1718)
!1733 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !1718)
!1734 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !1718)
!1735 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !1718)
!1736 = !DILocation(line: 0, scope: !848, inlinedAt: !1718)
!1737 = !DILocation(line: 400, column: 5, scope: !1660)
!1738 = !DILocation(line: 401, column: 5, scope: !1660)
!1739 = !DILocation(line: 402, column: 1, scope: !1660)
!1740 = distinct !{!1740, !1707, !1741}
!1741 = !DILocation(line: 399, column: 5, scope: !1706)
!1742 = distinct !DISubprogram(name: "addReplyStatusLength", scope: !3, file: !3, line: 404, type: !1124, isLocal: false, isDefinition: true, scopeLine: 404, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1743)
!1743 = !{!1744, !1745, !1746}
!1744 = !DILocalVariable(name: "c", arg: 1, scope: !1742, file: !3, line: 404, type: !6)
!1745 = !DILocalVariable(name: "s", arg: 2, scope: !1742, file: !3, line: 404, type: !317)
!1746 = !DILocalVariable(name: "len", arg: 3, scope: !1742, file: !3, line: 404, type: !142)
!1747 = !DILocation(line: 404, column: 35, scope: !1742)
!1748 = !DILocation(line: 404, column: 50, scope: !1742)
!1749 = !DILocation(line: 404, column: 60, scope: !1742)
!1750 = !DILocation(line: 405, column: 5, scope: !1742)
!1751 = !DILocation(line: 406, column: 5, scope: !1742)
!1752 = !DILocation(line: 407, column: 5, scope: !1742)
!1753 = !DILocation(line: 408, column: 1, scope: !1742)
!1754 = distinct !DISubprogram(name: "addReplyStatus", scope: !3, file: !3, line: 410, type: !1650, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1755)
!1755 = !{!1756, !1757}
!1756 = !DILocalVariable(name: "c", arg: 1, scope: !1754, file: !3, line: 410, type: !6)
!1757 = !DILocalVariable(name: "status", arg: 2, scope: !1754, file: !3, line: 410, type: !317)
!1758 = !DILocation(line: 410, column: 29, scope: !1754)
!1759 = !DILocation(line: 410, column: 44, scope: !1754)
!1760 = !DILocation(line: 411, column: 35, scope: !1754)
!1761 = !DILocation(line: 404, column: 35, scope: !1742, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 411, column: 5, scope: !1754)
!1763 = !DILocation(line: 404, column: 50, scope: !1742, inlinedAt: !1762)
!1764 = !DILocation(line: 404, column: 60, scope: !1742, inlinedAt: !1762)
!1765 = !DILocation(line: 405, column: 5, scope: !1742, inlinedAt: !1762)
!1766 = !DILocation(line: 406, column: 5, scope: !1742, inlinedAt: !1762)
!1767 = !DILocation(line: 407, column: 5, scope: !1742, inlinedAt: !1762)
!1768 = !DILocation(line: 412, column: 1, scope: !1754)
!1769 = distinct !DISubprogram(name: "addReplyStatusFormat", scope: !3, file: !3, line: 414, type: !1661, isLocal: false, isDefinition: true, scopeLine: 414, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1770)
!1770 = !{!1771, !1772, !1773, !1774}
!1771 = !DILocalVariable(name: "c", arg: 1, scope: !1769, file: !3, line: 414, type: !6)
!1772 = !DILocalVariable(name: "fmt", arg: 2, scope: !1769, file: !3, line: 414, type: !317)
!1773 = !DILocalVariable(name: "ap", scope: !1769, file: !3, line: 415, type: !1669)
!1774 = !DILocalVariable(name: "s", scope: !1769, file: !3, line: 417, type: !137)
!1775 = !DILocation(line: 414, column: 35, scope: !1769)
!1776 = !DILocation(line: 414, column: 50, scope: !1769)
!1777 = !DILocation(line: 415, column: 5, scope: !1769)
!1778 = !DILocation(line: 415, column: 13, scope: !1769)
!1779 = !DILocation(line: 416, column: 5, scope: !1769)
!1780 = !DILocation(line: 417, column: 27, scope: !1769)
!1781 = !DILocation(line: 417, column: 13, scope: !1769)
!1782 = !DILocation(line: 417, column: 9, scope: !1769)
!1783 = !DILocation(line: 418, column: 5, scope: !1769)
!1784 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !1785)
!1785 = distinct !DILocation(line: 419, column: 30, scope: !1769)
!1786 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !1785)
!1787 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !1785)
!1788 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !1785)
!1789 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !1785)
!1790 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !1785)
!1791 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !1785)
!1792 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !1785)
!1793 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !1785)
!1794 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !1785)
!1795 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !1785)
!1796 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !1785)
!1797 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !1785)
!1798 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !1785)
!1799 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !1785)
!1800 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !1785)
!1801 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !1785)
!1802 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !1785)
!1803 = !DILocation(line: 0, scope: !848, inlinedAt: !1785)
!1804 = !DILocation(line: 404, column: 35, scope: !1742, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 419, column: 5, scope: !1769)
!1806 = !DILocation(line: 404, column: 50, scope: !1742, inlinedAt: !1805)
!1807 = !DILocation(line: 404, column: 60, scope: !1742, inlinedAt: !1805)
!1808 = !DILocation(line: 405, column: 5, scope: !1742, inlinedAt: !1805)
!1809 = !DILocation(line: 406, column: 5, scope: !1742, inlinedAt: !1805)
!1810 = !DILocation(line: 407, column: 5, scope: !1742, inlinedAt: !1805)
!1811 = !DILocation(line: 420, column: 5, scope: !1769)
!1812 = !DILocation(line: 421, column: 1, scope: !1769)
!1813 = distinct !DISubprogram(name: "addDeferredMultiBulkLength", scope: !3, file: !3, line: 425, type: !1814, isLocal: false, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1816)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!45, !6}
!1816 = !{!1817}
!1817 = !DILocalVariable(name: "c", arg: 1, scope: !1813, file: !3, line: 425, type: !6)
!1818 = !DILocation(line: 425, column: 42, scope: !1813)
!1819 = !DILocation(line: 217, column: 34, scope: !1040, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 429, column: 9, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 429, column: 9)
!1822 = !DILocation(line: 220, column: 12, scope: !1047, inlinedAt: !1820)
!1823 = !DILocation(line: 220, column: 18, scope: !1047, inlinedAt: !1820)
!1824 = !DILocation(line: 220, column: 9, scope: !1040, inlinedAt: !1820)
!1825 = !DILocation(line: 223, column: 18, scope: !1051, inlinedAt: !1820)
!1826 = !DILocation(line: 227, column: 36, scope: !1053, inlinedAt: !1820)
!1827 = !DILocation(line: 223, column: 9, scope: !1040, inlinedAt: !1820)
!1828 = !DILocation(line: 230, column: 12, scope: !1056, inlinedAt: !1820)
!1829 = !DILocation(line: 230, column: 15, scope: !1056, inlinedAt: !1820)
!1830 = !DILocation(line: 230, column: 9, scope: !1040, inlinedAt: !1820)
!1831 = !DILocation(line: 664, column: 37, scope: !1060, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 234, column: 10, scope: !1064, inlinedAt: !1820)
!1833 = !DILocation(line: 665, column: 15, scope: !1060, inlinedAt: !1832)
!1834 = !DILocation(line: 665, column: 12, scope: !1060, inlinedAt: !1832)
!1835 = !DILocation(line: 665, column: 22, scope: !1060, inlinedAt: !1832)
!1836 = !DILocation(line: 665, column: 25, scope: !1060, inlinedAt: !1832)
!1837 = !DILocation(line: 180, column: 20, scope: !1022, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 234, column: 38, scope: !1064, inlinedAt: !1820)
!1839 = !DILocation(line: 234, column: 9, scope: !1040, inlinedAt: !1820)
!1840 = !DILocation(line: 176, column: 40, scope: !1017, inlinedAt: !1838)
!1841 = !DILocation(line: 181, column: 13, scope: !1022, inlinedAt: !1838)
!1842 = !DILocation(line: 181, column: 42, scope: !1022, inlinedAt: !1838)
!1843 = !DILocation(line: 182, column: 53, scope: !1022, inlinedAt: !1838)
!1844 = !DILocation(line: 182, column: 50, scope: !1022, inlinedAt: !1838)
!1845 = !DILocation(line: 180, column: 9, scope: !1017, inlinedAt: !1838)
!1846 = !DILocation(line: 190, column: 18, scope: !1033, inlinedAt: !1838)
!1847 = !DILocation(line: 191, column: 32, scope: !1033, inlinedAt: !1838)
!1848 = !DILocation(line: 191, column: 54, scope: !1033, inlinedAt: !1838)
!1849 = !DILocation(line: 191, column: 9, scope: !1033, inlinedAt: !1838)
!1850 = !DILocation(line: 192, column: 5, scope: !1033, inlinedAt: !1838)
!1851 = !DILocation(line: 430, column: 24, scope: !1813)
!1852 = !DILocation(line: 430, column: 5, scope: !1813)
!1853 = !DILocation(line: 431, column: 12, scope: !1813)
!1854 = !DILocation(line: 431, column: 5, scope: !1813)
!1855 = !DILocation(line: 0, scope: !1813)
!1856 = !DILocation(line: 432, column: 1, scope: !1813)
!1857 = distinct !DISubprogram(name: "setDeferredMultiBulkLength", scope: !3, file: !3, line: 435, type: !1858, isLocal: false, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1860)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{null, !6, !45, !77}
!1860 = !{!1861, !1862, !1863, !1864, !1865, !1866, !1870, !1871}
!1861 = !DILocalVariable(name: "c", arg: 1, scope: !1857, file: !3, line: 435, type: !6)
!1862 = !DILocalVariable(name: "node", arg: 2, scope: !1857, file: !3, line: 435, type: !45)
!1863 = !DILocalVariable(name: "length", arg: 3, scope: !1857, file: !3, line: 435, type: !77)
!1864 = !DILocalVariable(name: "ln", scope: !1857, file: !3, line: 436, type: !103)
!1865 = !DILocalVariable(name: "next", scope: !1857, file: !3, line: 437, type: !398)
!1866 = !DILocalVariable(name: "lenstr", scope: !1857, file: !3, line: 438, type: !1867)
!1867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 1024, elements: !1868)
!1868 = !{!1869}
!1869 = !DISubrange(count: 128)
!1870 = !DILocalVariable(name: "lenstr_len", scope: !1857, file: !3, line: 439, type: !142)
!1871 = !DILocalVariable(name: "buf", scope: !1872, file: !3, line: 465, type: !398)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 463, column: 12)
!1873 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 456, column: 9)
!1874 = !DILocation(line: 435, column: 41, scope: !1857)
!1875 = !DILocation(line: 435, column: 50, scope: !1857)
!1876 = !DILocation(line: 435, column: 61, scope: !1857)
!1877 = !DILocation(line: 436, column: 20, scope: !1857)
!1878 = !DILocation(line: 436, column: 15, scope: !1857)
!1879 = !DILocation(line: 438, column: 5, scope: !1857)
!1880 = !DILocation(line: 438, column: 10, scope: !1857)
!1881 = !DILocation(line: 439, column: 25, scope: !1857)
!1882 = !DILocation(line: 439, column: 12, scope: !1857)
!1883 = !DILocation(line: 443, column: 14, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 443, column: 9)
!1885 = !DILocation(line: 443, column: 9, scope: !1857)
!1886 = !DILocation(line: 444, column: 5, scope: !1857)
!1887 = !DILocation(line: 456, column: 13, scope: !1873)
!1888 = !{!1151, !381, i64 8}
!1889 = !DILocation(line: 456, column: 18, scope: !1873)
!1890 = !DILocation(line: 456, column: 26, scope: !1873)
!1891 = !DILocation(line: 456, column: 37, scope: !1873)
!1892 = !DILocation(line: 437, column: 23, scope: !1857)
!1893 = !DILocation(line: 456, column: 35, scope: !1873)
!1894 = !DILocation(line: 456, column: 62, scope: !1873)
!1895 = !DILocation(line: 457, column: 15, scope: !1873)
!1896 = !DILocation(line: 457, column: 28, scope: !1873)
!1897 = !DILocation(line: 457, column: 20, scope: !1873)
!1898 = !DILocation(line: 457, column: 33, scope: !1873)
!1899 = !DILocation(line: 458, column: 20, scope: !1873)
!1900 = !DILocation(line: 457, column: 47, scope: !1873)
!1901 = !DILocation(line: 459, column: 17, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 458, column: 51)
!1903 = !DILocation(line: 459, column: 27, scope: !1902)
!1904 = !DILocation(line: 459, column: 9, scope: !1902)
!1905 = !DILocation(line: 460, column: 9, scope: !1902)
!1906 = !DILocation(line: 461, column: 20, scope: !1902)
!1907 = !DILocation(line: 462, column: 24, scope: !1902)
!1908 = !DILocation(line: 462, column: 9, scope: !1902)
!1909 = !DILocation(line: 463, column: 5, scope: !1902)
!1910 = !DILocation(line: 465, column: 52, scope: !1872)
!1911 = !DILocation(line: 465, column: 33, scope: !1872)
!1912 = !DILocation(line: 465, column: 27, scope: !1872)
!1913 = !DILocation(line: 467, column: 21, scope: !1872)
!1914 = !DILocation(line: 467, column: 41, scope: !1872)
!1915 = !DILocation(line: 467, column: 14, scope: !1872)
!1916 = !DILocation(line: 467, column: 19, scope: !1872)
!1917 = !DILocation(line: 468, column: 14, scope: !1872)
!1918 = !DILocation(line: 468, column: 19, scope: !1872)
!1919 = !DILocation(line: 469, column: 21, scope: !1872)
!1920 = !DILocation(line: 469, column: 9, scope: !1872)
!1921 = !DILocation(line: 470, column: 27, scope: !1872)
!1922 = !DILocation(line: 471, column: 32, scope: !1872)
!1923 = !DILocation(line: 471, column: 12, scope: !1872)
!1924 = !DILocation(line: 471, column: 24, scope: !1872)
!1925 = !DILocation(line: 473, column: 5, scope: !1857)
!1926 = !DILocation(line: 474, column: 1, scope: !1857)
!1927 = distinct !DISubprogram(name: "addReplyDouble", scope: !3, file: !3, line: 477, type: !1928, isLocal: false, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1930)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{null, !6, !79}
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1936}
!1931 = !DILocalVariable(name: "c", arg: 1, scope: !1927, file: !3, line: 477, type: !6)
!1932 = !DILocalVariable(name: "d", arg: 2, scope: !1927, file: !3, line: 477, type: !79)
!1933 = !DILocalVariable(name: "dbuf", scope: !1927, file: !3, line: 478, type: !1867)
!1934 = !DILocalVariable(name: "sbuf", scope: !1927, file: !3, line: 478, type: !1867)
!1935 = !DILocalVariable(name: "dlen", scope: !1927, file: !3, line: 479, type: !18)
!1936 = !DILocalVariable(name: "slen", scope: !1927, file: !3, line: 479, type: !18)
!1937 = !DILocation(line: 477, column: 29, scope: !1927)
!1938 = !DILocation(line: 477, column: 39, scope: !1927)
!1939 = !DILocation(line: 478, column: 5, scope: !1927)
!1940 = !DILocation(line: 478, column: 10, scope: !1927)
!1941 = !DILocation(line: 478, column: 21, scope: !1927)
!1942 = !DILocation(line: 480, column: 9, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 480, column: 9)
!1944 = !DILocation(line: 480, column: 9, scope: !1927)
!1945 = !DILocation(line: 483, column: 34, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 480, column: 19)
!1947 = !DILocation(line: 483, column: 32, scope: !1946)
!1948 = !DILocalVariable(name: "c", arg: 1, scope: !1949, file: !3, line: 588, type: !6)
!1949 = distinct !DISubprogram(name: "addReplyBulkCString", scope: !3, file: !3, line: 588, type: !1650, isLocal: false, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1950)
!1950 = !{!1948, !1951}
!1951 = !DILocalVariable(name: "s", arg: 2, scope: !1949, file: !3, line: 588, type: !317)
!1952 = !DILocation(line: 588, column: 34, scope: !1949, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 483, column: 9, scope: !1946)
!1954 = !DILocation(line: 588, column: 49, scope: !1949, inlinedAt: !1953)
!1955 = !DILocation(line: 592, column: 33, scope: !1956, inlinedAt: !1953)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 591, column: 12)
!1957 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 589, column: 9)
!1958 = !DILocation(line: 592, column: 9, scope: !1956, inlinedAt: !1953)
!1959 = !DILocation(line: 484, column: 5, scope: !1946)
!1960 = !DILocation(line: 485, column: 16, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 484, column: 12)
!1962 = !DILocation(line: 479, column: 9, scope: !1927)
!1963 = !DILocation(line: 486, column: 16, scope: !1961)
!1964 = !DILocation(line: 479, column: 15, scope: !1927)
!1965 = !DILocation(line: 487, column: 31, scope: !1961)
!1966 = !DILocation(line: 487, column: 9, scope: !1961)
!1967 = !DILocation(line: 489, column: 1, scope: !1927)
!1968 = !DILocation(line: 588, column: 34, scope: !1949)
!1969 = !DILocation(line: 588, column: 49, scope: !1949)
!1970 = !DILocation(line: 589, column: 11, scope: !1957)
!1971 = !DILocation(line: 589, column: 9, scope: !1949)
!1972 = !DILocation(line: 590, column: 27, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 589, column: 20)
!1974 = !{!1975, !381, i64 80}
!1975 = !{!"sharedObjectsStruct", !381, i64 0, !381, i64 8, !381, i64 16, !381, i64 24, !381, i64 32, !381, i64 40, !381, i64 48, !381, i64 56, !381, i64 64, !381, i64 72, !381, i64 80, !381, i64 88, !381, i64 96, !381, i64 104, !381, i64 112, !381, i64 120, !381, i64 128, !381, i64 136, !381, i64 144, !381, i64 152, !381, i64 160, !381, i64 168, !381, i64 176, !381, i64 184, !381, i64 192, !381, i64 200, !381, i64 208, !381, i64 216, !381, i64 224, !381, i64 232, !381, i64 240, !381, i64 248, !381, i64 256, !381, i64 264, !381, i64 272, !381, i64 280, !381, i64 288, !381, i64 296, !381, i64 304, !381, i64 312, !381, i64 320, !381, i64 328, !381, i64 336, !381, i64 344, !381, i64 352, !381, i64 360, !379, i64 368, !379, i64 448, !379, i64 80448, !379, i64 80704, !381, i64 80960, !381, i64 80968}
!1976 = !DILocation(line: 590, column: 9, scope: !1973)
!1977 = !DILocation(line: 591, column: 5, scope: !1973)
!1978 = !DILocation(line: 592, column: 33, scope: !1956)
!1979 = !DILocation(line: 592, column: 9, scope: !1956)
!1980 = !DILocation(line: 594, column: 1, scope: !1949)
!1981 = distinct !DISubprogram(name: "addReplyHumanLongDouble", scope: !3, file: !3, line: 494, type: !1982, isLocal: false, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1985)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !6, !1984}
!1984 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1985 = !{!1986, !1987, !1988}
!1986 = !DILocalVariable(name: "c", arg: 1, scope: !1981, file: !3, line: 494, type: !6)
!1987 = !DILocalVariable(name: "d", arg: 2, scope: !1981, file: !3, line: 494, type: !1984)
!1988 = !DILocalVariable(name: "o", scope: !1981, file: !3, line: 495, type: !126)
!1989 = !DILocation(line: 494, column: 38, scope: !1981)
!1990 = !DILocation(line: 494, column: 53, scope: !1981)
!1991 = !DILocation(line: 495, column: 15, scope: !1981)
!1992 = !DILocation(line: 495, column: 11, scope: !1981)
!1993 = !DILocalVariable(name: "c", arg: 1, scope: !1994, file: !3, line: 567, type: !6)
!1994 = distinct !DISubprogram(name: "addReplyBulk", scope: !3, file: !3, line: 567, type: !1301, isLocal: false, isDefinition: true, scopeLine: 567, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !1995)
!1995 = !{!1993, !1996}
!1996 = !DILocalVariable(name: "obj", arg: 2, scope: !1994, file: !3, line: 567, type: !126)
!1997 = !DILocation(line: 567, column: 27, scope: !1994, inlinedAt: !1998)
!1998 = distinct !DILocation(line: 496, column: 5, scope: !1981)
!1999 = !DILocation(line: 567, column: 36, scope: !1994, inlinedAt: !1998)
!2000 = !DILocation(line: 568, column: 5, scope: !1994, inlinedAt: !1998)
!2001 = !DILocation(line: 569, column: 5, scope: !1994, inlinedAt: !1998)
!2002 = !DILocation(line: 570, column: 23, scope: !1994, inlinedAt: !1998)
!2003 = !{!1975, !381, i64 0}
!2004 = !DILocation(line: 570, column: 5, scope: !1994, inlinedAt: !1998)
!2005 = !DILocation(line: 497, column: 5, scope: !1981)
!2006 = !DILocation(line: 498, column: 1, scope: !1981)
!2007 = !DILocation(line: 567, column: 27, scope: !1994)
!2008 = !DILocation(line: 567, column: 36, scope: !1994)
!2009 = !DILocation(line: 568, column: 5, scope: !1994)
!2010 = !DILocation(line: 569, column: 5, scope: !1994)
!2011 = !DILocation(line: 570, column: 23, scope: !1994)
!2012 = !DILocation(line: 570, column: 5, scope: !1994)
!2013 = !DILocation(line: 571, column: 1, scope: !1994)
!2014 = distinct !DISubprogram(name: "addReplyLongLongWithPrefix", scope: !3, file: !3, line: 502, type: !2015, isLocal: false, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2017)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !6, !95, !140}
!2017 = !{!2018, !2019, !2020, !2021, !2022}
!2018 = !DILocalVariable(name: "c", arg: 1, scope: !2014, file: !3, line: 502, type: !6)
!2019 = !DILocalVariable(name: "ll", arg: 2, scope: !2014, file: !3, line: 502, type: !95)
!2020 = !DILocalVariable(name: "prefix", arg: 3, scope: !2014, file: !3, line: 502, type: !140)
!2021 = !DILocalVariable(name: "buf", scope: !2014, file: !3, line: 503, type: !1867)
!2022 = !DILocalVariable(name: "len", scope: !2014, file: !3, line: 504, type: !18)
!2023 = !DILocation(line: 502, column: 41, scope: !2014)
!2024 = !DILocation(line: 502, column: 54, scope: !2014)
!2025 = !DILocation(line: 502, column: 63, scope: !2014)
!2026 = !DILocation(line: 503, column: 5, scope: !2014)
!2027 = !DILocation(line: 503, column: 10, scope: !2014)
!2028 = !DILocation(line: 509, column: 16, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 509, column: 9)
!2030 = !DILocation(line: 509, column: 23, scope: !2029)
!2031 = !DILocation(line: 510, column: 20, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 509, column: 66)
!2033 = !DILocation(line: 510, column: 9, scope: !2032)
!2034 = !DILocation(line: 511, column: 9, scope: !2032)
!2035 = !DILocation(line: 512, column: 23, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 512, column: 16)
!2037 = !DILocation(line: 512, column: 30, scope: !2036)
!2038 = !DILocation(line: 513, column: 20, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 512, column: 73)
!2040 = !DILocation(line: 513, column: 9, scope: !2039)
!2041 = !DILocation(line: 514, column: 9, scope: !2039)
!2042 = !DILocation(line: 517, column: 12, scope: !2014)
!2043 = !DILocation(line: 518, column: 24, scope: !2014)
!2044 = !DILocation(line: 518, column: 11, scope: !2014)
!2045 = !DILocation(line: 504, column: 9, scope: !2014)
!2046 = !DILocation(line: 519, column: 12, scope: !2014)
!2047 = !DILocation(line: 519, column: 5, scope: !2014)
!2048 = !DILocation(line: 519, column: 16, scope: !2014)
!2049 = !DILocation(line: 520, column: 12, scope: !2014)
!2050 = !DILocation(line: 520, column: 5, scope: !2014)
!2051 = !DILocation(line: 520, column: 16, scope: !2014)
!2052 = !DILocation(line: 521, column: 29, scope: !2014)
!2053 = !DILocation(line: 521, column: 26, scope: !2014)
!2054 = !DILocation(line: 521, column: 5, scope: !2014)
!2055 = !DILocation(line: 522, column: 1, scope: !2014)
!2056 = distinct !DISubprogram(name: "addReplyLongLong", scope: !3, file: !3, line: 524, type: !2057, isLocal: false, isDefinition: true, scopeLine: 524, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{null, !6, !95}
!2059 = !{!2060, !2061}
!2060 = !DILocalVariable(name: "c", arg: 1, scope: !2056, file: !3, line: 524, type: !6)
!2061 = !DILocalVariable(name: "ll", arg: 2, scope: !2056, file: !3, line: 524, type: !95)
!2062 = !DILocation(line: 503, column: 10, scope: !2014, inlinedAt: !2063)
!2063 = distinct !DILocation(line: 530, column: 9, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 527, column: 14)
!2065 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 525, column: 9)
!2066 = !DILocation(line: 524, column: 31, scope: !2056)
!2067 = !DILocation(line: 524, column: 44, scope: !2056)
!2068 = !DILocation(line: 525, column: 9, scope: !2056)
!2069 = !DILocation(line: 526, column: 27, scope: !2065)
!2070 = !{!1975, !381, i64 32}
!2071 = !DILocation(line: 526, column: 9, scope: !2065)
!2072 = !DILocation(line: 528, column: 27, scope: !2064)
!2073 = !{!1975, !381, i64 40}
!2074 = !DILocation(line: 528, column: 9, scope: !2064)
!2075 = !DILocation(line: 502, column: 41, scope: !2014, inlinedAt: !2063)
!2076 = !DILocation(line: 502, column: 54, scope: !2014, inlinedAt: !2063)
!2077 = !DILocation(line: 502, column: 63, scope: !2014, inlinedAt: !2063)
!2078 = !DILocation(line: 503, column: 5, scope: !2014, inlinedAt: !2063)
!2079 = !DILocation(line: 517, column: 12, scope: !2014, inlinedAt: !2063)
!2080 = !DILocation(line: 518, column: 24, scope: !2014, inlinedAt: !2063)
!2081 = !DILocation(line: 518, column: 11, scope: !2014, inlinedAt: !2063)
!2082 = !DILocation(line: 504, column: 9, scope: !2014, inlinedAt: !2063)
!2083 = !DILocation(line: 519, column: 12, scope: !2014, inlinedAt: !2063)
!2084 = !DILocation(line: 519, column: 5, scope: !2014, inlinedAt: !2063)
!2085 = !DILocation(line: 519, column: 16, scope: !2014, inlinedAt: !2063)
!2086 = !DILocation(line: 520, column: 12, scope: !2014, inlinedAt: !2063)
!2087 = !DILocation(line: 520, column: 5, scope: !2014, inlinedAt: !2063)
!2088 = !DILocation(line: 520, column: 16, scope: !2014, inlinedAt: !2063)
!2089 = !DILocation(line: 521, column: 29, scope: !2014, inlinedAt: !2063)
!2090 = !DILocation(line: 521, column: 26, scope: !2014, inlinedAt: !2063)
!2091 = !DILocation(line: 521, column: 5, scope: !2014, inlinedAt: !2063)
!2092 = !DILocation(line: 522, column: 1, scope: !2014, inlinedAt: !2063)
!2093 = !DILocation(line: 531, column: 1, scope: !2056)
!2094 = distinct !DISubprogram(name: "addReplyMultiBulkLen", scope: !3, file: !3, line: 533, type: !2095, isLocal: false, isDefinition: true, scopeLine: 533, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2097)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null, !6, !77}
!2097 = !{!2098, !2099}
!2098 = !DILocalVariable(name: "c", arg: 1, scope: !2094, file: !3, line: 533, type: !6)
!2099 = !DILocalVariable(name: "length", arg: 2, scope: !2094, file: !3, line: 533, type: !77)
!2100 = !DILocation(line: 503, column: 10, scope: !2014, inlinedAt: !2101)
!2101 = distinct !DILocation(line: 537, column: 9, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 534, column: 9)
!2103 = !DILocation(line: 533, column: 35, scope: !2094)
!2104 = !DILocation(line: 533, column: 43, scope: !2094)
!2105 = !DILocation(line: 534, column: 16, scope: !2102)
!2106 = !DILocation(line: 534, column: 9, scope: !2094)
!2107 = !DILocation(line: 535, column: 20, scope: !2102)
!2108 = !DILocation(line: 535, column: 9, scope: !2102)
!2109 = !DILocation(line: 502, column: 41, scope: !2014, inlinedAt: !2101)
!2110 = !DILocation(line: 502, column: 54, scope: !2014, inlinedAt: !2101)
!2111 = !DILocation(line: 502, column: 63, scope: !2014, inlinedAt: !2101)
!2112 = !DILocation(line: 503, column: 5, scope: !2014, inlinedAt: !2101)
!2113 = !DILocation(line: 517, column: 12, scope: !2014, inlinedAt: !2101)
!2114 = !DILocation(line: 518, column: 24, scope: !2014, inlinedAt: !2101)
!2115 = !DILocation(line: 518, column: 11, scope: !2014, inlinedAt: !2101)
!2116 = !DILocation(line: 504, column: 9, scope: !2014, inlinedAt: !2101)
!2117 = !DILocation(line: 519, column: 12, scope: !2014, inlinedAt: !2101)
!2118 = !DILocation(line: 519, column: 5, scope: !2014, inlinedAt: !2101)
!2119 = !DILocation(line: 519, column: 16, scope: !2014, inlinedAt: !2101)
!2120 = !DILocation(line: 520, column: 12, scope: !2014, inlinedAt: !2101)
!2121 = !DILocation(line: 520, column: 5, scope: !2014, inlinedAt: !2101)
!2122 = !DILocation(line: 520, column: 16, scope: !2014, inlinedAt: !2101)
!2123 = !DILocation(line: 521, column: 29, scope: !2014, inlinedAt: !2101)
!2124 = !DILocation(line: 521, column: 26, scope: !2014, inlinedAt: !2101)
!2125 = !DILocation(line: 521, column: 5, scope: !2014, inlinedAt: !2101)
!2126 = !DILocation(line: 522, column: 1, scope: !2014, inlinedAt: !2101)
!2127 = !DILocation(line: 538, column: 1, scope: !2094)
!2128 = distinct !DISubprogram(name: "addReplyBulkLen", scope: !3, file: !3, line: 541, type: !1301, isLocal: false, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2129)
!2129 = !{!2130, !2131, !2132, !2133}
!2130 = !DILocalVariable(name: "c", arg: 1, scope: !2128, file: !3, line: 541, type: !6)
!2131 = !DILocalVariable(name: "obj", arg: 2, scope: !2128, file: !3, line: 541, type: !126)
!2132 = !DILocalVariable(name: "len", scope: !2128, file: !3, line: 542, type: !142)
!2133 = !DILocalVariable(name: "n", scope: !2134, file: !3, line: 547, type: !77)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 546, column: 12)
!2135 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 544, column: 9)
!2136 = !DILocation(line: 503, column: 10, scope: !2014, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 563, column: 9, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 560, column: 9)
!2139 = !DILocation(line: 541, column: 30, scope: !2128)
!2140 = !DILocation(line: 541, column: 39, scope: !2128)
!2141 = !DILocation(line: 544, column: 9, scope: !2135)
!2142 = !DILocation(line: 545, column: 27, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 544, column: 32)
!2144 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !2145)
!2145 = distinct !DILocation(line: 545, column: 15, scope: !2143)
!2146 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !2145)
!2147 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !2145)
!2148 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !2145)
!2149 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !2145)
!2150 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !2145)
!2151 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !2145)
!2152 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !2145)
!2153 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !2145)
!2154 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !2145)
!2155 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !2145)
!2156 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !2145)
!2157 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !2145)
!2158 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !2145)
!2159 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !2145)
!2160 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !2145)
!2161 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !2145)
!2162 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !2145)
!2163 = !DILocation(line: 547, column: 29, scope: !2134)
!2164 = !DILocation(line: 547, column: 14, scope: !2134)
!2165 = !DILocation(line: 542, column: 12, scope: !2128)
!2166 = !DILocation(line: 551, column: 15, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 551, column: 13)
!2168 = !DILocation(line: 553, column: 17, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2167, file: !3, line: 551, column: 20)
!2170 = !DILocation(line: 551, column: 13, scope: !2134)
!2171 = !DILocation(line: 555, column: 26, scope: !2134)
!2172 = !DILocation(line: 555, column: 9, scope: !2134)
!2173 = !DILocation(line: 555, column: 21, scope: !2134)
!2174 = !DILocation(line: 556, column: 16, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 555, column: 32)
!2176 = distinct !{!2176, !2172, !2177}
!2177 = !DILocation(line: 557, column: 9, scope: !2134)
!2178 = !DILocation(line: 0, scope: !2169)
!2179 = !DILocation(line: 560, column: 13, scope: !2138)
!2180 = !DILocation(line: 560, column: 9, scope: !2128)
!2181 = !DILocation(line: 561, column: 20, scope: !2138)
!2182 = !DILocation(line: 561, column: 9, scope: !2138)
!2183 = !DILocation(line: 502, column: 41, scope: !2014, inlinedAt: !2137)
!2184 = !DILocation(line: 502, column: 54, scope: !2014, inlinedAt: !2137)
!2185 = !DILocation(line: 502, column: 63, scope: !2014, inlinedAt: !2137)
!2186 = !DILocation(line: 503, column: 5, scope: !2014, inlinedAt: !2137)
!2187 = !DILocation(line: 517, column: 12, scope: !2014, inlinedAt: !2137)
!2188 = !DILocation(line: 518, column: 24, scope: !2014, inlinedAt: !2137)
!2189 = !DILocation(line: 518, column: 11, scope: !2014, inlinedAt: !2137)
!2190 = !DILocation(line: 504, column: 9, scope: !2014, inlinedAt: !2137)
!2191 = !DILocation(line: 519, column: 12, scope: !2014, inlinedAt: !2137)
!2192 = !DILocation(line: 519, column: 5, scope: !2014, inlinedAt: !2137)
!2193 = !DILocation(line: 519, column: 16, scope: !2014, inlinedAt: !2137)
!2194 = !DILocation(line: 520, column: 12, scope: !2014, inlinedAt: !2137)
!2195 = !DILocation(line: 520, column: 5, scope: !2014, inlinedAt: !2137)
!2196 = !DILocation(line: 520, column: 16, scope: !2014, inlinedAt: !2137)
!2197 = !DILocation(line: 521, column: 29, scope: !2014, inlinedAt: !2137)
!2198 = !DILocation(line: 521, column: 26, scope: !2014, inlinedAt: !2137)
!2199 = !DILocation(line: 521, column: 5, scope: !2014, inlinedAt: !2137)
!2200 = !DILocation(line: 522, column: 1, scope: !2014, inlinedAt: !2137)
!2201 = !DILocation(line: 564, column: 1, scope: !2128)
!2202 = distinct !DISubprogram(name: "addReplyBulkCBuffer", scope: !3, file: !3, line: 574, type: !2203, isLocal: false, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2205)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{null, !6, !39, !142}
!2205 = !{!2206, !2207, !2208}
!2206 = !DILocalVariable(name: "c", arg: 1, scope: !2202, file: !3, line: 574, type: !6)
!2207 = !DILocalVariable(name: "p", arg: 2, scope: !2202, file: !3, line: 574, type: !39)
!2208 = !DILocalVariable(name: "len", arg: 3, scope: !2202, file: !3, line: 574, type: !142)
!2209 = !DILocation(line: 503, column: 10, scope: !2014, inlinedAt: !2210)
!2210 = distinct !DILocation(line: 575, column: 5, scope: !2202)
!2211 = !DILocation(line: 574, column: 34, scope: !2202)
!2212 = !DILocation(line: 574, column: 49, scope: !2202)
!2213 = !DILocation(line: 574, column: 59, scope: !2202)
!2214 = !DILocation(line: 502, column: 41, scope: !2014, inlinedAt: !2210)
!2215 = !DILocation(line: 502, column: 54, scope: !2014, inlinedAt: !2210)
!2216 = !DILocation(line: 502, column: 63, scope: !2014, inlinedAt: !2210)
!2217 = !DILocation(line: 503, column: 5, scope: !2014, inlinedAt: !2210)
!2218 = !DILocation(line: 509, column: 23, scope: !2029, inlinedAt: !2210)
!2219 = !DILocation(line: 512, column: 30, scope: !2036, inlinedAt: !2210)
!2220 = !DILocation(line: 513, column: 20, scope: !2039, inlinedAt: !2210)
!2221 = !DILocation(line: 513, column: 9, scope: !2039, inlinedAt: !2210)
!2222 = !DILocation(line: 514, column: 9, scope: !2039, inlinedAt: !2210)
!2223 = !DILocation(line: 517, column: 12, scope: !2014, inlinedAt: !2210)
!2224 = !DILocation(line: 518, column: 24, scope: !2014, inlinedAt: !2210)
!2225 = !DILocation(line: 518, column: 11, scope: !2014, inlinedAt: !2210)
!2226 = !DILocation(line: 504, column: 9, scope: !2014, inlinedAt: !2210)
!2227 = !DILocation(line: 519, column: 12, scope: !2014, inlinedAt: !2210)
!2228 = !DILocation(line: 519, column: 5, scope: !2014, inlinedAt: !2210)
!2229 = !DILocation(line: 519, column: 16, scope: !2014, inlinedAt: !2210)
!2230 = !DILocation(line: 520, column: 12, scope: !2014, inlinedAt: !2210)
!2231 = !DILocation(line: 520, column: 5, scope: !2014, inlinedAt: !2210)
!2232 = !DILocation(line: 520, column: 16, scope: !2014, inlinedAt: !2210)
!2233 = !DILocation(line: 521, column: 29, scope: !2014, inlinedAt: !2210)
!2234 = !DILocation(line: 521, column: 26, scope: !2014, inlinedAt: !2210)
!2235 = !DILocation(line: 521, column: 5, scope: !2014, inlinedAt: !2210)
!2236 = !DILocation(line: 522, column: 1, scope: !2014, inlinedAt: !2210)
!2237 = !DILocation(line: 576, column: 5, scope: !2202)
!2238 = !DILocation(line: 577, column: 23, scope: !2202)
!2239 = !DILocation(line: 577, column: 5, scope: !2202)
!2240 = !DILocation(line: 578, column: 1, scope: !2202)
!2241 = distinct !DISubprogram(name: "addReplyBulkSds", scope: !3, file: !3, line: 581, type: !1442, isLocal: false, isDefinition: true, scopeLine: 581, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2242)
!2242 = !{!2243, !2244}
!2243 = !DILocalVariable(name: "c", arg: 1, scope: !2241, file: !3, line: 581, type: !6)
!2244 = !DILocalVariable(name: "s", arg: 2, scope: !2241, file: !3, line: 581, type: !137)
!2245 = !DILocation(line: 503, column: 10, scope: !2014, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 582, column: 5, scope: !2241)
!2247 = !DILocation(line: 581, column: 30, scope: !2241)
!2248 = !DILocation(line: 581, column: 37, scope: !2241)
!2249 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 582, column: 34, scope: !2241)
!2251 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !2250)
!2252 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !2250)
!2253 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !2250)
!2254 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !2250)
!2255 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !2250)
!2256 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !2250)
!2257 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !2250)
!2258 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !2250)
!2259 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !2250)
!2260 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !2250)
!2261 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !2250)
!2262 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !2250)
!2263 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !2250)
!2264 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !2250)
!2265 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !2250)
!2266 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !2250)
!2267 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !2250)
!2268 = !DILocation(line: 502, column: 41, scope: !2014, inlinedAt: !2246)
!2269 = !DILocation(line: 502, column: 54, scope: !2014, inlinedAt: !2246)
!2270 = !DILocation(line: 502, column: 63, scope: !2014, inlinedAt: !2246)
!2271 = !DILocation(line: 503, column: 5, scope: !2014, inlinedAt: !2246)
!2272 = !DILocation(line: 512, column: 30, scope: !2036, inlinedAt: !2246)
!2273 = !DILocation(line: 0, scope: !848, inlinedAt: !2250)
!2274 = !DILocation(line: 509, column: 23, scope: !2029, inlinedAt: !2246)
!2275 = !DILocation(line: 513, column: 20, scope: !2039, inlinedAt: !2246)
!2276 = !DILocation(line: 513, column: 9, scope: !2039, inlinedAt: !2246)
!2277 = !DILocation(line: 514, column: 9, scope: !2039, inlinedAt: !2246)
!2278 = !DILocation(line: 517, column: 12, scope: !2014, inlinedAt: !2246)
!2279 = !DILocation(line: 518, column: 24, scope: !2014, inlinedAt: !2246)
!2280 = !DILocation(line: 518, column: 11, scope: !2014, inlinedAt: !2246)
!2281 = !DILocation(line: 504, column: 9, scope: !2014, inlinedAt: !2246)
!2282 = !DILocation(line: 519, column: 12, scope: !2014, inlinedAt: !2246)
!2283 = !DILocation(line: 519, column: 5, scope: !2014, inlinedAt: !2246)
!2284 = !DILocation(line: 519, column: 16, scope: !2014, inlinedAt: !2246)
!2285 = !DILocation(line: 520, column: 12, scope: !2014, inlinedAt: !2246)
!2286 = !DILocation(line: 520, column: 5, scope: !2014, inlinedAt: !2246)
!2287 = !DILocation(line: 520, column: 16, scope: !2014, inlinedAt: !2246)
!2288 = !DILocation(line: 521, column: 29, scope: !2014, inlinedAt: !2246)
!2289 = !DILocation(line: 521, column: 26, scope: !2014, inlinedAt: !2246)
!2290 = !DILocation(line: 521, column: 5, scope: !2014, inlinedAt: !2246)
!2291 = !DILocation(line: 522, column: 1, scope: !2014, inlinedAt: !2246)
!2292 = !DILocation(line: 583, column: 5, scope: !2241)
!2293 = !DILocation(line: 584, column: 23, scope: !2241)
!2294 = !DILocation(line: 584, column: 5, scope: !2241)
!2295 = !DILocation(line: 585, column: 1, scope: !2241)
!2296 = distinct !DISubprogram(name: "addReplyBulkLongLong", scope: !3, file: !3, line: 597, type: !2057, isLocal: false, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2297)
!2297 = !{!2298, !2299, !2300, !2304}
!2298 = !DILocalVariable(name: "c", arg: 1, scope: !2296, file: !3, line: 597, type: !6)
!2299 = !DILocalVariable(name: "ll", arg: 2, scope: !2296, file: !3, line: 597, type: !95)
!2300 = !DILocalVariable(name: "buf", scope: !2296, file: !3, line: 598, type: !2301)
!2301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 512, elements: !2302)
!2302 = !{!2303}
!2303 = !DISubrange(count: 64)
!2304 = !DILocalVariable(name: "len", scope: !2296, file: !3, line: 599, type: !18)
!2305 = !DILocation(line: 597, column: 35, scope: !2296)
!2306 = !DILocation(line: 597, column: 48, scope: !2296)
!2307 = !DILocation(line: 598, column: 5, scope: !2296)
!2308 = !DILocation(line: 598, column: 10, scope: !2296)
!2309 = !DILocation(line: 601, column: 11, scope: !2296)
!2310 = !DILocation(line: 599, column: 9, scope: !2296)
!2311 = !DILocation(line: 602, column: 31, scope: !2296)
!2312 = !DILocation(line: 602, column: 5, scope: !2296)
!2313 = !DILocation(line: 603, column: 1, scope: !2296)
!2314 = distinct !DISubprogram(name: "addReplyHelp", scope: !3, file: !3, line: 609, type: !2315, isLocal: false, isDefinition: true, scopeLine: 609, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2318)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{null, !6, !2317}
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!2318 = !{!2319, !2320, !2321, !2322, !2323}
!2319 = !DILocalVariable(name: "c", arg: 1, scope: !2314, file: !3, line: 609, type: !6)
!2320 = !DILocalVariable(name: "help", arg: 2, scope: !2314, file: !3, line: 609, type: !2317)
!2321 = !DILocalVariable(name: "cmd", scope: !2314, file: !3, line: 610, type: !137)
!2322 = !DILocalVariable(name: "blenp", scope: !2314, file: !3, line: 611, type: !45)
!2323 = !DILocalVariable(name: "blen", scope: !2314, file: !3, line: 612, type: !18)
!2324 = !DILocation(line: 609, column: 27, scope: !2314)
!2325 = !DILocation(line: 609, column: 43, scope: !2314)
!2326 = !DILocation(line: 610, column: 33, scope: !2314)
!2327 = !DILocation(line: 610, column: 30, scope: !2314)
!2328 = !DILocation(line: 610, column: 42, scope: !2314)
!2329 = !DILocation(line: 610, column: 15, scope: !2314)
!2330 = !DILocation(line: 610, column: 9, scope: !2314)
!2331 = !DILocation(line: 611, column: 19, scope: !2314)
!2332 = !DILocation(line: 611, column: 11, scope: !2314)
!2333 = !DILocation(line: 612, column: 9, scope: !2314)
!2334 = !DILocation(line: 614, column: 5, scope: !2314)
!2335 = !DILocation(line: 615, column: 5, scope: !2314)
!2336 = !DILocation(line: 617, column: 5, scope: !2314)
!2337 = !DILocation(line: 619, column: 12, scope: !2314)
!2338 = !DILocation(line: 619, column: 5, scope: !2314)
!2339 = !DILocation(line: 410, column: 29, scope: !1754, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 619, column: 24, scope: !2314)
!2341 = !DILocation(line: 410, column: 44, scope: !1754, inlinedAt: !2340)
!2342 = !DILocation(line: 411, column: 35, scope: !1754, inlinedAt: !2340)
!2343 = !DILocation(line: 404, column: 35, scope: !1742, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 411, column: 5, scope: !1754, inlinedAt: !2340)
!2345 = !DILocation(line: 404, column: 50, scope: !1742, inlinedAt: !2344)
!2346 = !DILocation(line: 404, column: 60, scope: !1742, inlinedAt: !2344)
!2347 = !DILocation(line: 405, column: 5, scope: !1742, inlinedAt: !2344)
!2348 = !DILocation(line: 406, column: 5, scope: !1742, inlinedAt: !2344)
!2349 = !DILocation(line: 407, column: 5, scope: !1742, inlinedAt: !2344)
!2350 = !DILocation(line: 0, scope: !2314)
!2351 = distinct !{!2351, !2338, !2352}
!2352 = !DILocation(line: 619, column: 53, scope: !2314)
!2353 = !DILocation(line: 622, column: 40, scope: !2314)
!2354 = !DILocation(line: 622, column: 5, scope: !2314)
!2355 = !DILocation(line: 623, column: 1, scope: !2314)
!2356 = distinct !DISubprogram(name: "addReplySubcommandSyntaxError", scope: !3, file: !3, line: 628, type: !4, isLocal: false, isDefinition: true, scopeLine: 628, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2357)
!2357 = !{!2358, !2359}
!2358 = !DILocalVariable(name: "c", arg: 1, scope: !2356, file: !3, line: 628, type: !6)
!2359 = !DILocalVariable(name: "cmd", scope: !2356, file: !3, line: 629, type: !137)
!2360 = !DILocation(line: 628, column: 44, scope: !2356)
!2361 = !DILocation(line: 629, column: 33, scope: !2356)
!2362 = !DILocation(line: 629, column: 30, scope: !2356)
!2363 = !DILocation(line: 629, column: 42, scope: !2356)
!2364 = !DILocation(line: 629, column: 15, scope: !2356)
!2365 = !DILocation(line: 629, column: 9, scope: !2356)
!2366 = !DILocation(line: 630, column: 5, scope: !2356)
!2367 = !DILocation(line: 633, column: 19, scope: !2356)
!2368 = !DILocation(line: 633, column: 16, scope: !2356)
!2369 = !DILocation(line: 633, column: 28, scope: !2356)
!2370 = !DILocation(line: 631, column: 5, scope: !2356)
!2371 = !DILocation(line: 634, column: 5, scope: !2356)
!2372 = !DILocation(line: 635, column: 1, scope: !2356)
!2373 = distinct !DISubprogram(name: "AddReplyFromClient", scope: !3, file: !3, line: 639, type: !2374, isLocal: false, isDefinition: true, scopeLine: 639, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2376)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !6, !6}
!2376 = !{!2377, !2378}
!2377 = !DILocalVariable(name: "dst", arg: 1, scope: !2373, file: !3, line: 639, type: !6)
!2378 = !DILocalVariable(name: "src", arg: 2, scope: !2373, file: !3, line: 639, type: !6)
!2379 = !DILocation(line: 639, column: 33, scope: !2373)
!2380 = !DILocation(line: 639, column: 46, scope: !2373)
!2381 = !DILocation(line: 217, column: 34, scope: !1040, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 640, column: 9, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 640, column: 9)
!2384 = !DILocation(line: 220, column: 12, scope: !1047, inlinedAt: !2382)
!2385 = !DILocation(line: 220, column: 18, scope: !1047, inlinedAt: !2382)
!2386 = !DILocation(line: 220, column: 9, scope: !1040, inlinedAt: !2382)
!2387 = !DILocation(line: 223, column: 18, scope: !1051, inlinedAt: !2382)
!2388 = !DILocation(line: 227, column: 36, scope: !1053, inlinedAt: !2382)
!2389 = !DILocation(line: 223, column: 9, scope: !1040, inlinedAt: !2382)
!2390 = !DILocation(line: 230, column: 12, scope: !1056, inlinedAt: !2382)
!2391 = !DILocation(line: 230, column: 15, scope: !1056, inlinedAt: !2382)
!2392 = !DILocation(line: 230, column: 9, scope: !1040, inlinedAt: !2382)
!2393 = !DILocation(line: 664, column: 37, scope: !1060, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 234, column: 10, scope: !1064, inlinedAt: !2382)
!2395 = !DILocation(line: 665, column: 15, scope: !1060, inlinedAt: !2394)
!2396 = !DILocation(line: 665, column: 12, scope: !1060, inlinedAt: !2394)
!2397 = !DILocation(line: 665, column: 22, scope: !1060, inlinedAt: !2394)
!2398 = !DILocation(line: 665, column: 25, scope: !1060, inlinedAt: !2394)
!2399 = !DILocation(line: 180, column: 20, scope: !1022, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 234, column: 38, scope: !1064, inlinedAt: !2382)
!2401 = !DILocation(line: 234, column: 9, scope: !1040, inlinedAt: !2382)
!2402 = !DILocation(line: 176, column: 40, scope: !1017, inlinedAt: !2400)
!2403 = !DILocation(line: 181, column: 13, scope: !1022, inlinedAt: !2400)
!2404 = !DILocation(line: 181, column: 42, scope: !1022, inlinedAt: !2400)
!2405 = !DILocation(line: 182, column: 53, scope: !1022, inlinedAt: !2400)
!2406 = !DILocation(line: 182, column: 50, scope: !1022, inlinedAt: !2400)
!2407 = !DILocation(line: 180, column: 9, scope: !1017, inlinedAt: !2400)
!2408 = !DILocation(line: 190, column: 18, scope: !1033, inlinedAt: !2400)
!2409 = !DILocation(line: 191, column: 32, scope: !1033, inlinedAt: !2400)
!2410 = !DILocation(line: 191, column: 54, scope: !1033, inlinedAt: !2400)
!2411 = !DILocation(line: 191, column: 9, scope: !1033, inlinedAt: !2400)
!2412 = !DILocation(line: 192, column: 5, scope: !1033, inlinedAt: !2400)
!2413 = !DILocation(line: 642, column: 24, scope: !2373)
!2414 = !DILocation(line: 642, column: 39, scope: !2373)
!2415 = !DILocation(line: 642, column: 34, scope: !2373)
!2416 = !DILocation(line: 642, column: 5, scope: !2373)
!2417 = !DILocation(line: 643, column: 9, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 643, column: 9)
!2419 = !DILocation(line: 643, column: 9, scope: !2373)
!2420 = !DILocation(line: 644, column: 23, scope: !2418)
!2421 = !DILocation(line: 644, column: 9, scope: !2418)
!2422 = !DILocation(line: 645, column: 30, scope: !2373)
!2423 = !DILocation(line: 645, column: 10, scope: !2373)
!2424 = !DILocation(line: 645, column: 22, scope: !2373)
!2425 = !DILocation(line: 646, column: 22, scope: !2373)
!2426 = !DILocation(line: 647, column: 17, scope: !2373)
!2427 = !DILocation(line: 648, column: 1, scope: !2373)
!2428 = distinct !DISubprogram(name: "copyClientOutputBuffer", scope: !3, file: !3, line: 653, type: !2374, isLocal: false, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2429)
!2429 = !{!2430, !2431}
!2430 = !DILocalVariable(name: "dst", arg: 1, scope: !2428, file: !3, line: 653, type: !6)
!2431 = !DILocalVariable(name: "src", arg: 2, scope: !2428, file: !3, line: 653, type: !6)
!2432 = !DILocation(line: 653, column: 37, scope: !2428)
!2433 = !DILocation(line: 653, column: 50, scope: !2428)
!2434 = !DILocation(line: 654, column: 22, scope: !2428)
!2435 = !DILocation(line: 654, column: 5, scope: !2428)
!2436 = !DILocation(line: 655, column: 10, scope: !2428)
!2437 = !DILocation(line: 655, column: 18, scope: !2428)
!2438 = !DILocation(line: 656, column: 31, scope: !2428)
!2439 = !DILocation(line: 656, column: 18, scope: !2428)
!2440 = !DILocation(line: 656, column: 16, scope: !2428)
!2441 = !DILocation(line: 657, column: 12, scope: !2428)
!2442 = !DILocation(line: 657, column: 21, scope: !2428)
!2443 = !DILocation(line: 657, column: 35, scope: !2428)
!2444 = !DILocation(line: 657, column: 30, scope: !2428)
!2445 = !DILocation(line: 657, column: 5, scope: !2428)
!2446 = !DILocation(line: 658, column: 24, scope: !2428)
!2447 = !DILocation(line: 658, column: 10, scope: !2428)
!2448 = !DILocation(line: 658, column: 17, scope: !2428)
!2449 = !DILocation(line: 659, column: 29, scope: !2428)
!2450 = !DILocation(line: 659, column: 10, scope: !2428)
!2451 = !DILocation(line: 659, column: 22, scope: !2428)
!2452 = !DILocation(line: 660, column: 1, scope: !2428)
!2453 = distinct !DISubprogram(name: "acceptTcpHandler", scope: !3, file: !3, line: 740, type: !739, isLocal: false, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2454)
!2454 = !{!2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462}
!2455 = !DILocalVariable(name: "el", arg: 1, scope: !2453, file: !3, line: 740, type: !741)
!2456 = !DILocalVariable(name: "fd", arg: 2, scope: !2453, file: !3, line: 740, type: !18)
!2457 = !DILocalVariable(name: "privdata", arg: 3, scope: !2453, file: !3, line: 740, type: !45)
!2458 = !DILocalVariable(name: "mask", arg: 4, scope: !2453, file: !3, line: 740, type: !18)
!2459 = !DILocalVariable(name: "cport", scope: !2453, file: !3, line: 741, type: !18)
!2460 = !DILocalVariable(name: "cfd", scope: !2453, file: !3, line: 741, type: !18)
!2461 = !DILocalVariable(name: "max", scope: !2453, file: !3, line: 741, type: !18)
!2462 = !DILocalVariable(name: "cip", scope: !2453, file: !3, line: 742, type: !209)
!2463 = !DILocation(line: 740, column: 36, scope: !2453)
!2464 = !DILocation(line: 740, column: 44, scope: !2453)
!2465 = !DILocation(line: 740, column: 54, scope: !2453)
!2466 = !DILocation(line: 740, column: 68, scope: !2453)
!2467 = !DILocation(line: 741, column: 5, scope: !2453)
!2468 = !DILocation(line: 741, column: 21, scope: !2453)
!2469 = !DILocation(line: 742, column: 5, scope: !2453)
!2470 = !DILocation(line: 742, column: 10, scope: !2453)
!2471 = !DILocation(line: 747, column: 5, scope: !2453)
!2472 = !DILocation(line: 741, column: 9, scope: !2453)
!2473 = !DILocation(line: 748, column: 15, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 747, column: 18)
!2475 = !DILocation(line: 741, column: 16, scope: !2453)
!2476 = !DILocation(line: 749, column: 17, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 749, column: 13)
!2478 = !DILocation(line: 749, column: 13, scope: !2474)
!2479 = !DILocation(line: 750, column: 17, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 750, column: 17)
!2481 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 749, column: 30)
!2482 = !DILocation(line: 750, column: 23, scope: !2480)
!2483 = !DILocation(line: 750, column: 17, scope: !2481)
!2484 = !DILocation(line: 751, column: 17, scope: !2480)
!2485 = !DILocation(line: 755, column: 53, scope: !2474)
!2486 = !DILocation(line: 755, column: 9, scope: !2474)
!2487 = !DILocation(line: 756, column: 9, scope: !2474)
!2488 = !DILocation(line: 747, column: 14, scope: !2453)
!2489 = distinct !{!2489, !2471, !2490}
!2490 = !DILocation(line: 757, column: 5, scope: !2453)
!2491 = !DILocation(line: 758, column: 1, scope: !2453)
!2492 = distinct !DISubprogram(name: "acceptCommonHandler", scope: !3, file: !3, line: 691, type: !2493, isLocal: true, isDefinition: true, scopeLine: 691, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2495)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{null, !18, !18, !139}
!2495 = !{!2496, !2497, !2498, !2499, !2500}
!2496 = !DILocalVariable(name: "fd", arg: 1, scope: !2492, file: !3, line: 691, type: !18)
!2497 = !DILocalVariable(name: "flags", arg: 2, scope: !2492, file: !3, line: 691, type: !18)
!2498 = !DILocalVariable(name: "ip", arg: 3, scope: !2492, file: !3, line: 691, type: !139)
!2499 = !DILocalVariable(name: "c", scope: !2492, file: !3, line: 692, type: !6)
!2500 = !DILocalVariable(name: "err", scope: !2501, file: !3, line: 705, type: !139)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 704, column: 57)
!2502 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 704, column: 9)
!2503 = !DILocation(line: 691, column: 37, scope: !2492)
!2504 = !DILocation(line: 691, column: 45, scope: !2492)
!2505 = !DILocation(line: 691, column: 58, scope: !2492)
!2506 = !DILocation(line: 693, column: 14, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 693, column: 9)
!2508 = !DILocation(line: 692, column: 13, scope: !2492)
!2509 = !DILocation(line: 693, column: 32, scope: !2507)
!2510 = !DILocation(line: 693, column: 9, scope: !2492)
!2511 = !DILocation(line: 696, column: 22, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 693, column: 41)
!2513 = !DILocation(line: 696, column: 13, scope: !2512)
!2514 = !DILocation(line: 694, column: 9, scope: !2512)
!2515 = !DILocation(line: 697, column: 9, scope: !2512)
!2516 = !DILocation(line: 698, column: 9, scope: !2512)
!2517 = !DILocation(line: 704, column: 9, scope: !2502)
!2518 = !DILocation(line: 704, column: 45, scope: !2502)
!2519 = !{!441, !378, i64 2700}
!2520 = !DILocation(line: 704, column: 38, scope: !2502)
!2521 = !DILocation(line: 704, column: 36, scope: !2502)
!2522 = !DILocation(line: 704, column: 9, scope: !2492)
!2523 = !DILocation(line: 708, column: 22, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2501, file: !3, line: 708, column: 13)
!2525 = !DILocation(line: 708, column: 29, scope: !2524)
!2526 = !DILocation(line: 708, column: 13, scope: !2524)
!2527 = !DILocation(line: 711, column: 34, scope: !2501)
!2528 = !{!441, !442, i64 1136}
!2529 = !DILocation(line: 712, column: 9, scope: !2501)
!2530 = !DILocation(line: 720, column: 16, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 720, column: 9)
!2532 = !{!441, !378, i64 856}
!2533 = !DILocation(line: 720, column: 9, scope: !2531)
!2534 = !DILocation(line: 721, column: 16, scope: !2531)
!2535 = !DILocation(line: 721, column: 31, scope: !2531)
!2536 = !DILocation(line: 720, column: 31, scope: !2531)
!2537 = !DILocation(line: 722, column: 16, scope: !2531)
!2538 = !DILocation(line: 722, column: 28, scope: !2531)
!2539 = !DILocation(line: 723, column: 17, scope: !2531)
!2540 = !DILocation(line: 724, column: 12, scope: !2531)
!2541 = !DILocation(line: 723, column: 39, scope: !2531)
!2542 = !DILocation(line: 726, column: 13, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 726, column: 13)
!2544 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 725, column: 5)
!2545 = !DILocation(line: 726, column: 36, scope: !2543)
!2546 = !DILocation(line: 726, column: 39, scope: !2543)
!2547 = !DILocation(line: 726, column: 13, scope: !2544)
!2548 = !DILocation(line: 727, column: 26, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 727, column: 17)
!2550 = distinct !DILexicalBlock(scope: !2543, file: !3, line: 726, column: 57)
!2551 = !DILocation(line: 727, column: 33, scope: !2549)
!2552 = !DILocation(line: 727, column: 17, scope: !2549)
!2553 = !DILocation(line: 730, column: 38, scope: !2550)
!2554 = !DILocation(line: 731, column: 13, scope: !2550)
!2555 = !DILocation(line: 732, column: 13, scope: !2550)
!2556 = !DILocation(line: 736, column: 31, scope: !2492)
!2557 = !{!441, !442, i64 1016}
!2558 = !DILocation(line: 737, column: 8, scope: !2492)
!2559 = !DILocation(line: 737, column: 14, scope: !2492)
!2560 = !DILocation(line: 738, column: 1, scope: !2492)
!2561 = distinct !DISubprogram(name: "acceptUnixHandler", scope: !3, file: !3, line: 760, type: !739, isLocal: false, isDefinition: true, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2562)
!2562 = !{!2563, !2564, !2565, !2566, !2567, !2568}
!2563 = !DILocalVariable(name: "el", arg: 1, scope: !2561, file: !3, line: 760, type: !741)
!2564 = !DILocalVariable(name: "fd", arg: 2, scope: !2561, file: !3, line: 760, type: !18)
!2565 = !DILocalVariable(name: "privdata", arg: 3, scope: !2561, file: !3, line: 760, type: !45)
!2566 = !DILocalVariable(name: "mask", arg: 4, scope: !2561, file: !3, line: 760, type: !18)
!2567 = !DILocalVariable(name: "cfd", scope: !2561, file: !3, line: 761, type: !18)
!2568 = !DILocalVariable(name: "max", scope: !2561, file: !3, line: 761, type: !18)
!2569 = !DILocation(line: 760, column: 37, scope: !2561)
!2570 = !DILocation(line: 760, column: 45, scope: !2561)
!2571 = !DILocation(line: 760, column: 55, scope: !2561)
!2572 = !DILocation(line: 760, column: 69, scope: !2561)
!2573 = !DILocation(line: 761, column: 14, scope: !2561)
!2574 = !DILocation(line: 766, column: 5, scope: !2561)
!2575 = !DILocation(line: 767, column: 15, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 766, column: 18)
!2577 = !DILocation(line: 761, column: 9, scope: !2561)
!2578 = !DILocation(line: 768, column: 17, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2576, file: !3, line: 768, column: 13)
!2580 = !DILocation(line: 768, column: 13, scope: !2576)
!2581 = !DILocation(line: 769, column: 17, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 769, column: 17)
!2583 = distinct !DILexicalBlock(scope: !2579, file: !3, line: 768, column: 30)
!2584 = !DILocation(line: 769, column: 23, scope: !2582)
!2585 = !DILocation(line: 769, column: 17, scope: !2583)
!2586 = !DILocation(line: 770, column: 17, scope: !2582)
!2587 = !DILocation(line: 774, column: 66, scope: !2576)
!2588 = !{!441, !381, i64 360}
!2589 = !DILocation(line: 774, column: 9, scope: !2576)
!2590 = !DILocation(line: 775, column: 9, scope: !2576)
!2591 = !DILocation(line: 766, column: 14, scope: !2561)
!2592 = distinct !{!2592, !2574, !2593}
!2593 = !DILocation(line: 776, column: 5, scope: !2561)
!2594 = !DILocation(line: 777, column: 1, scope: !2561)
!2595 = distinct !DISubprogram(name: "disconnectSlaves", scope: !3, file: !3, line: 790, type: !2596, isLocal: false, isDefinition: true, scopeLine: 790, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2598)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{null}
!2598 = !{!2599}
!2599 = !DILocalVariable(name: "ln", scope: !2600, file: !3, line: 792, type: !103)
!2600 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 791, column: 39)
!2601 = !DILocation(line: 791, column: 12, scope: !2595)
!2602 = !DILocation(line: 791, column: 5, scope: !2595)
!2603 = !DILocation(line: 792, column: 24, scope: !2600)
!2604 = !{!451, !381, i64 0}
!2605 = !DILocation(line: 792, column: 19, scope: !2600)
!2606 = !DILocation(line: 793, column: 33, scope: !2600)
!2607 = !DILocation(line: 793, column: 9, scope: !2600)
!2608 = distinct !{!2608, !2602, !2609}
!2609 = !DILocation(line: 794, column: 5, scope: !2595)
!2610 = !DILocation(line: 795, column: 1, scope: !2595)
!2611 = distinct !DISubprogram(name: "freeClient", scope: !3, file: !3, line: 853, type: !4, isLocal: false, isDefinition: true, scopeLine: 853, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2612)
!2612 = !{!2613, !2614, !2615}
!2613 = !DILocalVariable(name: "c", arg: 1, scope: !2611, file: !3, line: 853, type: !6)
!2614 = !DILocalVariable(name: "ln", scope: !2611, file: !3, line: 854, type: !103)
!2615 = !DILocalVariable(name: "l", scope: !2616, file: !3, line: 920, type: !97)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !3, line: 915, column: 34)
!2617 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 915, column: 9)
!2618 = !DILocation(line: 853, column: 25, scope: !2611)
!2619 = !DILocation(line: 858, column: 12, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 858, column: 9)
!2621 = !DILocation(line: 858, column: 18, scope: !2620)
!2622 = !DILocation(line: 858, column: 9, scope: !2611)
!2623 = !DILocation(line: 957, column: 30, scope: !1283, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 859, column: 9, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2620, file: !3, line: 858, column: 38)
!2626 = !DILocation(line: 958, column: 38, scope: !1288, inlinedAt: !2624)
!2627 = !DILocation(line: 959, column: 14, scope: !1283, inlinedAt: !2624)
!2628 = !DILocation(line: 960, column: 28, scope: !1283, inlinedAt: !2624)
!2629 = !DILocation(line: 960, column: 45, scope: !1283, inlinedAt: !2624)
!2630 = !DILocation(line: 960, column: 5, scope: !1283, inlinedAt: !2624)
!2631 = !DILocation(line: 961, column: 1, scope: !1283, inlinedAt: !2624)
!2632 = !DILocation(line: 868, column: 16, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 868, column: 9)
!2634 = !{!441, !381, i64 2480}
!2635 = !DILocation(line: 868, column: 9, scope: !2633)
!2636 = !DILocation(line: 868, column: 35, scope: !2633)
!2637 = !DILocation(line: 868, column: 23, scope: !2633)
!2638 = !DILocation(line: 869, column: 9, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2633, file: !3, line: 868, column: 52)
!2640 = !DILocation(line: 870, column: 18, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 870, column: 13)
!2642 = !DILocation(line: 870, column: 24, scope: !2641)
!2643 = !DILocation(line: 870, column: 13, scope: !2639)
!2644 = !DILocation(line: 874, column: 13, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2641, file: !3, line: 873, column: 9)
!2646 = !DILocation(line: 875, column: 13, scope: !2645)
!2647 = !DILocation(line: 880, column: 13, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 880, column: 9)
!2649 = !DILocation(line: 880, column: 35, scope: !2648)
!2650 = !DILocation(line: 882, column: 13, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 880, column: 68)
!2652 = !DILocation(line: 881, column: 9, scope: !2651)
!2653 = !DILocation(line: 883, column: 5, scope: !2651)
!2654 = !DILocation(line: 886, column: 16, scope: !2611)
!2655 = !DILocation(line: 886, column: 5, scope: !2611)
!2656 = !DILocation(line: 887, column: 16, scope: !2611)
!2657 = !DILocation(line: 887, column: 5, scope: !2611)
!2658 = !DILocation(line: 888, column: 17, scope: !2611)
!2659 = !DILocation(line: 891, column: 12, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 891, column: 9)
!2661 = !DILocation(line: 891, column: 18, scope: !2660)
!2662 = !DILocation(line: 891, column: 9, scope: !2611)
!2663 = !DILocation(line: 891, column: 36, scope: !2660)
!2664 = !DILocation(line: 892, column: 25, scope: !2611)
!2665 = !DILocation(line: 892, column: 5, scope: !2611)
!2666 = !DILocation(line: 895, column: 5, scope: !2611)
!2667 = !DILocation(line: 896, column: 20, scope: !2611)
!2668 = !DILocation(line: 896, column: 5, scope: !2611)
!2669 = !DILocation(line: 899, column: 5, scope: !2611)
!2670 = !DILocation(line: 900, column: 5, scope: !2611)
!2671 = !DILocation(line: 901, column: 20, scope: !2611)
!2672 = !DILocation(line: 901, column: 5, scope: !2611)
!2673 = !DILocation(line: 902, column: 20, scope: !2611)
!2674 = !DILocation(line: 902, column: 5, scope: !2611)
!2675 = !DILocation(line: 905, column: 20, scope: !2611)
!2676 = !DILocation(line: 905, column: 5, scope: !2611)
!2677 = !DILocalVariable(name: "c", arg: 1, scope: !2678, file: !3, line: 779, type: !6)
!2678 = distinct !DISubprogram(name: "freeClientArgv", scope: !3, file: !3, line: 779, type: !4, isLocal: true, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2679)
!2679 = !{!2677, !2680}
!2680 = !DILocalVariable(name: "j", scope: !2678, file: !3, line: 780, type: !18)
!2681 = !DILocation(line: 779, column: 36, scope: !2678, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 906, column: 5, scope: !2611)
!2683 = !DILocation(line: 780, column: 9, scope: !2678, inlinedAt: !2682)
!2684 = !DILocation(line: 781, column: 24, scope: !2685, inlinedAt: !2682)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !3, line: 781, column: 5)
!2686 = distinct !DILexicalBlock(scope: !2678, file: !3, line: 781, column: 5)
!2687 = !DILocation(line: 781, column: 19, scope: !2685, inlinedAt: !2682)
!2688 = !DILocation(line: 781, column: 5, scope: !2686, inlinedAt: !2682)
!2689 = !DILocation(line: 782, column: 25, scope: !2685, inlinedAt: !2682)
!2690 = !DILocation(line: 782, column: 22, scope: !2685, inlinedAt: !2682)
!2691 = !DILocation(line: 782, column: 9, scope: !2685, inlinedAt: !2682)
!2692 = !DILocation(line: 781, column: 31, scope: !2685, inlinedAt: !2682)
!2693 = distinct !{!2693, !2694, !2695}
!2694 = !DILocation(line: 781, column: 5, scope: !2686)
!2695 = !DILocation(line: 782, column: 32, scope: !2686)
!2696 = !DILocation(line: 783, column: 13, scope: !2678, inlinedAt: !2682)
!2697 = !DILocation(line: 784, column: 8, scope: !2678, inlinedAt: !2682)
!2698 = !DILocation(line: 784, column: 12, scope: !2678, inlinedAt: !2682)
!2699 = !{!455, !381, i64 80}
!2700 = !DILocation(line: 911, column: 5, scope: !2611)
!2701 = !DILocation(line: 915, column: 12, scope: !2617)
!2702 = !DILocation(line: 915, column: 18, scope: !2617)
!2703 = !DILocation(line: 915, column: 9, scope: !2611)
!2704 = !DILocation(line: 916, column: 16, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 916, column: 13)
!2706 = !DILocation(line: 916, column: 26, scope: !2705)
!2707 = !DILocation(line: 916, column: 13, scope: !2616)
!2708 = !DILocation(line: 917, column: 20, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 917, column: 17)
!2710 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 916, column: 52)
!2711 = !{!455, !378, i64 176}
!2712 = !DILocation(line: 917, column: 29, scope: !2709)
!2713 = !DILocation(line: 917, column: 17, scope: !2710)
!2714 = !DILocation(line: 917, column: 36, scope: !2709)
!2715 = !DILocation(line: 918, column: 20, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 918, column: 17)
!2717 = !{!455, !381, i64 200}
!2718 = !DILocation(line: 918, column: 17, scope: !2716)
!2719 = !DILocation(line: 918, column: 17, scope: !2710)
!2720 = !DILocation(line: 918, column: 34, scope: !2716)
!2721 = !DILocation(line: 920, column: 23, scope: !2616)
!2722 = !DILocation(line: 920, column: 29, scope: !2616)
!2723 = !DILocation(line: 920, column: 56, scope: !2616)
!2724 = !DILocation(line: 920, column: 74, scope: !2616)
!2725 = !DILocation(line: 920, column: 19, scope: !2616)
!2726 = !DILocation(line: 920, column: 15, scope: !2616)
!2727 = !DILocation(line: 921, column: 30, scope: !2616)
!2728 = !DILocation(line: 921, column: 14, scope: !2616)
!2729 = !DILocation(line: 854, column: 15, scope: !2611)
!2730 = !DILocation(line: 922, column: 9, scope: !2616)
!2731 = !DILocation(line: 923, column: 9, scope: !2616)
!2732 = !DILocation(line: 927, column: 16, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 927, column: 13)
!2734 = !DILocation(line: 927, column: 22, scope: !2733)
!2735 = !DILocation(line: 927, column: 37, scope: !2733)
!2736 = !DILocation(line: 927, column: 40, scope: !2733)
!2737 = !DILocation(line: 927, column: 66, scope: !2733)
!2738 = !DILocation(line: 927, column: 13, scope: !2616)
!2739 = !DILocation(line: 928, column: 50, scope: !2733)
!2740 = !DILocation(line: 928, column: 41, scope: !2733)
!2741 = !{!441, !410, i64 2424}
!2742 = !DILocation(line: 928, column: 13, scope: !2733)
!2743 = !DILocation(line: 929, column: 9, scope: !2616)
!2744 = !DILocation(line: 934, column: 12, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 934, column: 9)
!2746 = !DILocation(line: 930, column: 5, scope: !2616)
!2747 = !DILocation(line: 934, column: 18, scope: !2745)
!2748 = !DILocation(line: 934, column: 9, scope: !2611)
!2749 = !DILocation(line: 934, column: 35, scope: !2745)
!2750 = !DILocation(line: 938, column: 12, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 938, column: 9)
!2752 = !DILocation(line: 938, column: 18, scope: !2751)
!2753 = !DILocation(line: 938, column: 9, scope: !2611)
!2754 = !DILocation(line: 939, column: 35, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2751, file: !3, line: 938, column: 39)
!2756 = !DILocation(line: 939, column: 52, scope: !2755)
!2757 = !DILocation(line: 939, column: 14, scope: !2755)
!2758 = !DILocation(line: 940, column: 9, scope: !2755)
!2759 = !DILocation(line: 941, column: 28, scope: !2755)
!2760 = !DILocation(line: 941, column: 9, scope: !2755)
!2761 = !DILocation(line: 942, column: 5, scope: !2755)
!2762 = !DILocation(line: 946, column: 12, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 946, column: 9)
!2764 = !DILocation(line: 946, column: 9, scope: !2763)
!2765 = !DILocation(line: 946, column: 9, scope: !2611)
!2766 = !DILocation(line: 946, column: 18, scope: !2763)
!2767 = !DILocation(line: 947, column: 14, scope: !2611)
!2768 = !DILocation(line: 947, column: 5, scope: !2611)
!2769 = !DILocation(line: 948, column: 5, scope: !2611)
!2770 = !DILocation(line: 949, column: 16, scope: !2611)
!2771 = !DILocation(line: 949, column: 5, scope: !2611)
!2772 = !DILocation(line: 950, column: 13, scope: !2611)
!2773 = !DILocalVariable(name: "a", arg: 1, scope: !2774, file: !478, line: 237, type: !481)
!2774 = distinct !DISubprogram(name: "uk_free", scope: !478, file: !478, line: 237, type: !510, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2775)
!2775 = !{!2773, !2776}
!2776 = !DILocalVariable(name: "ptr", arg: 2, scope: !2774, file: !478, line: 237, type: !45)
!2777 = !DILocation(line: 237, column: 45, scope: !2774, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 950, column: 5, scope: !2611)
!2779 = !DILocalVariable(name: "a", arg: 1, scope: !2780, file: !478, line: 231, type: !481)
!2780 = distinct !DISubprogram(name: "uk_do_free", scope: !478, file: !478, line: 231, type: !510, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2781)
!2781 = !{!2779, !2782}
!2782 = !DILocalVariable(name: "ptr", arg: 2, scope: !2780, file: !478, line: 231, type: !45)
!2783 = !DILocation(line: 231, column: 48, scope: !2780, inlinedAt: !2784)
!2784 = distinct !DILocation(line: 239, column: 2, scope: !2774, inlinedAt: !2778)
!2785 = !DILocation(line: 233, column: 2, scope: !2786, inlinedAt: !2784)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !478, line: 233, column: 2)
!2787 = distinct !DILexicalBlock(scope: !2780, file: !478, line: 233, column: 2)
!2788 = !DILocation(line: 233, column: 2, scope: !2787, inlinedAt: !2784)
!2789 = !DILocation(line: 233, column: 2, scope: !2790, inlinedAt: !2784)
!2790 = distinct !DILexicalBlock(scope: !2786, file: !478, line: 233, column: 2)
!2791 = !DILocation(line: 950, column: 34, scope: !2611)
!2792 = !DILocation(line: 231, column: 57, scope: !2780, inlinedAt: !2784)
!2793 = !DILocation(line: 237, column: 54, scope: !2774, inlinedAt: !2778)
!2794 = !DILocation(line: 234, column: 5, scope: !2780, inlinedAt: !2784)
!2795 = !DILocation(line: 234, column: 2, scope: !2780, inlinedAt: !2784)
!2796 = !DILocation(line: 951, column: 1, scope: !2611)
!2797 = distinct !DISubprogram(name: "unlinkClient", scope: !3, file: !3, line: 800, type: !4, isLocal: false, isDefinition: true, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2798)
!2798 = !{!2799, !2800, !2801}
!2799 = !DILocalVariable(name: "c", arg: 1, scope: !2797, file: !3, line: 800, type: !6)
!2800 = !DILocalVariable(name: "ln", scope: !2797, file: !3, line: 801, type: !103)
!2801 = !DILocalVariable(name: "id", scope: !2802, file: !3, line: 812, type: !12)
!2802 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 811, column: 34)
!2803 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 811, column: 13)
!2804 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 809, column: 22)
!2805 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 809, column: 9)
!2806 = !DILocation(line: 800, column: 27, scope: !2797)
!2807 = !DILocation(line: 804, column: 16, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 804, column: 9)
!2809 = !{!441, !381, i64 552}
!2810 = !DILocation(line: 804, column: 31, scope: !2808)
!2811 = !DILocation(line: 804, column: 9, scope: !2797)
!2812 = !DILocation(line: 804, column: 59, scope: !2808)
!2813 = !DILocation(line: 804, column: 37, scope: !2808)
!2814 = !DILocation(line: 809, column: 12, scope: !2805)
!2815 = !DILocation(line: 809, column: 15, scope: !2805)
!2816 = !DILocation(line: 809, column: 9, scope: !2797)
!2817 = !DILocation(line: 836, column: 12, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 836, column: 9)
!2819 = !DILocation(line: 811, column: 16, scope: !2803)
!2820 = !DILocation(line: 811, column: 13, scope: !2803)
!2821 = !DILocation(line: 811, column: 13, scope: !2804)
!2822 = !DILocation(line: 812, column: 13, scope: !2802)
!2823 = !DILocation(line: 812, column: 27, scope: !2802)
!2824 = !DILocation(line: 812, column: 22, scope: !2802)
!2825 = !DILocation(line: 813, column: 30, scope: !2802)
!2826 = !DILocation(line: 813, column: 13, scope: !2802)
!2827 = !DILocation(line: 814, column: 32, scope: !2802)
!2828 = !DILocation(line: 814, column: 43, scope: !2802)
!2829 = !DILocation(line: 814, column: 13, scope: !2802)
!2830 = !DILocation(line: 815, column: 33, scope: !2802)
!2831 = !DILocation(line: 816, column: 9, scope: !2803)
!2832 = !DILocation(line: 816, column: 9, scope: !2802)
!2833 = !DILocation(line: 823, column: 17, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2804, file: !3, line: 823, column: 13)
!2835 = !DILocation(line: 823, column: 23, scope: !2834)
!2836 = !DILocation(line: 823, column: 39, scope: !2834)
!2837 = !DILocation(line: 824, column: 17, scope: !2834)
!2838 = !DILocation(line: 824, column: 27, scope: !2834)
!2839 = !DILocation(line: 823, column: 13, scope: !2804)
!2840 = !DILocation(line: 825, column: 25, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 824, column: 60)
!2842 = !DILocation(line: 825, column: 13, scope: !2841)
!2843 = !DILocation(line: 826, column: 9, scope: !2841)
!2844 = !DILocation(line: 829, column: 34, scope: !2804)
!2845 = !DILocation(line: 829, column: 40, scope: !2804)
!2846 = !DILocation(line: 829, column: 9, scope: !2804)
!2847 = !DILocation(line: 830, column: 34, scope: !2804)
!2848 = !DILocation(line: 830, column: 40, scope: !2804)
!2849 = !DILocation(line: 830, column: 9, scope: !2804)
!2850 = !DILocation(line: 831, column: 18, scope: !2804)
!2851 = !DILocation(line: 831, column: 9, scope: !2804)
!2852 = !DILocation(line: 832, column: 15, scope: !2804)
!2853 = !DILocation(line: 833, column: 5, scope: !2804)
!2854 = !DILocation(line: 836, column: 18, scope: !2818)
!2855 = !DILocation(line: 836, column: 9, scope: !2797)
!2856 = !DILocation(line: 837, column: 35, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 836, column: 42)
!2858 = !DILocation(line: 837, column: 57, scope: !2857)
!2859 = !DILocation(line: 837, column: 14, scope: !2857)
!2860 = !DILocation(line: 801, column: 15, scope: !2797)
!2861 = !DILocation(line: 838, column: 9, scope: !2857)
!2862 = !DILocation(line: 839, column: 28, scope: !2857)
!2863 = !DILocation(line: 839, column: 9, scope: !2857)
!2864 = !DILocation(line: 840, column: 18, scope: !2857)
!2865 = !DILocation(line: 841, column: 5, scope: !2857)
!2866 = !DILocation(line: 845, column: 12, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2797, file: !3, line: 845, column: 9)
!2868 = !DILocation(line: 845, column: 18, scope: !2867)
!2869 = !DILocation(line: 845, column: 9, scope: !2797)
!2870 = !DILocation(line: 846, column: 35, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 845, column: 38)
!2872 = !{!441, !381, i64 2768}
!2873 = !DILocation(line: 846, column: 53, scope: !2871)
!2874 = !DILocation(line: 846, column: 14, scope: !2871)
!2875 = !DILocation(line: 847, column: 9, scope: !2871)
!2876 = !DILocation(line: 848, column: 28, scope: !2871)
!2877 = !DILocation(line: 848, column: 9, scope: !2871)
!2878 = !DILocation(line: 849, column: 18, scope: !2871)
!2879 = !DILocation(line: 850, column: 5, scope: !2871)
!2880 = !DILocation(line: 851, column: 1, scope: !2797)
!2881 = !DILocation(line: 957, column: 30, scope: !1283)
!2882 = !DILocation(line: 958, column: 12, scope: !1288)
!2883 = !DILocation(line: 958, column: 38, scope: !1288)
!2884 = !DILocation(line: 959, column: 14, scope: !1283)
!2885 = !DILocation(line: 960, column: 28, scope: !1283)
!2886 = !DILocation(line: 960, column: 45, scope: !1283)
!2887 = !DILocation(line: 960, column: 5, scope: !1283)
!2888 = !DILocation(line: 961, column: 1, scope: !1283)
!2889 = distinct !DISubprogram(name: "freeClientsInAsyncFreeQueue", scope: !3, file: !3, line: 963, type: !2596, isLocal: false, isDefinition: true, scopeLine: 963, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2890)
!2890 = !{!2891, !2893}
!2891 = !DILocalVariable(name: "ln", scope: !2892, file: !3, line: 965, type: !103)
!2892 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 964, column: 49)
!2893 = !DILocalVariable(name: "c", scope: !2892, file: !3, line: 966, type: !6)
!2894 = !DILocation(line: 964, column: 12, scope: !2889)
!2895 = !DILocation(line: 964, column: 5, scope: !2889)
!2896 = !DILocation(line: 965, column: 24, scope: !2892)
!2897 = !DILocation(line: 965, column: 19, scope: !2892)
!2898 = !DILocation(line: 966, column: 21, scope: !2892)
!2899 = !DILocation(line: 966, column: 17, scope: !2892)
!2900 = !DILocation(line: 968, column: 12, scope: !2892)
!2901 = !DILocation(line: 968, column: 18, scope: !2892)
!2902 = !DILocation(line: 969, column: 9, scope: !2892)
!2903 = !DILocation(line: 970, column: 28, scope: !2892)
!2904 = !DILocation(line: 970, column: 9, scope: !2892)
!2905 = distinct !{!2905, !2895, !2906}
!2906 = !DILocation(line: 971, column: 5, scope: !2889)
!2907 = !DILocation(line: 972, column: 1, scope: !2889)
!2908 = distinct !DISubprogram(name: "lookupClientByID", scope: !3, file: !3, line: 977, type: !2909, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!6, !12}
!2911 = !{!2912, !2913}
!2912 = !DILocalVariable(name: "id", arg: 1, scope: !2908, file: !3, line: 977, type: !12)
!2913 = !DILocalVariable(name: "c", scope: !2908, file: !3, line: 979, type: !6)
!2914 = !DILocation(line: 977, column: 35, scope: !2908)
!2915 = !DILocation(line: 978, column: 10, scope: !2908)
!2916 = !DILocation(line: 978, column: 8, scope: !2908)
!2917 = !DILocation(line: 979, column: 32, scope: !2908)
!2918 = !DILocation(line: 979, column: 46, scope: !2908)
!2919 = !DILocation(line: 979, column: 17, scope: !2908)
!2920 = !DILocation(line: 979, column: 13, scope: !2908)
!2921 = !DILocation(line: 980, column: 18, scope: !2908)
!2922 = !DILocation(line: 980, column: 15, scope: !2908)
!2923 = !DILocation(line: 980, column: 12, scope: !2908)
!2924 = !DILocation(line: 980, column: 5, scope: !2908)
!2925 = distinct !DISubprogram(name: "writeToClient", scope: !3, file: !3, line: 985, type: !2926, isLocal: false, isDefinition: true, scopeLine: 985, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!18, !18, !6, !18}
!2928 = !{!2929, !2930, !2931, !2932, !2933, !2934, !2935}
!2929 = !DILocalVariable(name: "fd", arg: 1, scope: !2925, file: !3, line: 985, type: !18)
!2930 = !DILocalVariable(name: "c", arg: 2, scope: !2925, file: !3, line: 985, type: !6)
!2931 = !DILocalVariable(name: "handler_installed", arg: 3, scope: !2925, file: !3, line: 985, type: !18)
!2932 = !DILocalVariable(name: "nwritten", scope: !2925, file: !3, line: 986, type: !270)
!2933 = !DILocalVariable(name: "totwritten", scope: !2925, file: !3, line: 986, type: !270)
!2934 = !DILocalVariable(name: "objlen", scope: !2925, file: !3, line: 987, type: !142)
!2935 = !DILocalVariable(name: "o", scope: !2925, file: !3, line: 988, type: !398)
!2936 = !DILocation(line: 985, column: 23, scope: !2925)
!2937 = !DILocation(line: 985, column: 35, scope: !2925)
!2938 = !DILocation(line: 985, column: 42, scope: !2925)
!2939 = !DILocation(line: 986, column: 13, scope: !2925)
!2940 = !DILocation(line: 986, column: 27, scope: !2925)
!2941 = !DILocation(line: 990, column: 5, scope: !2925)
!2942 = !DILocation(line: 665, column: 15, scope: !1060, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 990, column: 11, scope: !2925)
!2944 = !DILocation(line: 664, column: 37, scope: !1060, inlinedAt: !2943)
!2945 = !DILocation(line: 665, column: 12, scope: !1060, inlinedAt: !2943)
!2946 = !DILocation(line: 665, column: 22, scope: !1060, inlinedAt: !2943)
!2947 = !DILocation(line: 665, column: 25, scope: !1060, inlinedAt: !2943)
!2948 = !DILocation(line: 991, column: 23, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 991, column: 13)
!2950 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 990, column: 39)
!2951 = !DILocation(line: 991, column: 13, scope: !2950)
!2952 = !DILocation(line: 1004, column: 17, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 1003, column: 16)
!2954 = !DILocation(line: 992, column: 43, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 991, column: 28)
!2956 = !DILocation(line: 992, column: 39, scope: !2955)
!2957 = !DILocation(line: 992, column: 51, scope: !2955)
!2958 = !DILocation(line: 992, column: 60, scope: !2955)
!2959 = !DILocation(line: 992, column: 24, scope: !2955)
!2960 = !DILocation(line: 993, column: 26, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 993, column: 17)
!2962 = !DILocation(line: 993, column: 17, scope: !2955)
!2963 = !DILocation(line: 994, column: 24, scope: !2955)
!2964 = !DILocation(line: 995, column: 24, scope: !2955)
!2965 = !DILocation(line: 999, column: 17, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2955, file: !3, line: 999, column: 17)
!2967 = !DILocation(line: 999, column: 39, scope: !2966)
!2968 = !DILocation(line: 999, column: 33, scope: !2966)
!2969 = !DILocation(line: 999, column: 17, scope: !2955)
!2970 = !DILocation(line: 1000, column: 27, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 999, column: 47)
!2972 = !DILocation(line: 1001, column: 28, scope: !2971)
!2973 = !DILocation(line: 1002, column: 13, scope: !2971)
!2974 = !DILocation(line: 988, column: 23, scope: !2925)
!2975 = !DILocation(line: 1005, column: 25, scope: !2953)
!2976 = !DILocation(line: 987, column: 12, scope: !2925)
!2977 = !DILocation(line: 1007, column: 24, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 1007, column: 17)
!2979 = !DILocation(line: 1007, column: 17, scope: !2953)
!2980 = !DILocation(line: 1008, column: 38, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2978, file: !3, line: 1007, column: 30)
!2982 = !DILocation(line: 1008, column: 32, scope: !2981)
!2983 = !DILocation(line: 1009, column: 17, scope: !2981)
!2984 = !DILocation(line: 1010, column: 17, scope: !2981)
!2985 = distinct !{!2985, !2941, !2986}
!2986 = !DILocation(line: 1045, column: 5, scope: !2925)
!2987 = !DILocation(line: 1013, column: 46, scope: !2953)
!2988 = !DILocation(line: 1013, column: 41, scope: !2953)
!2989 = !DILocation(line: 1013, column: 62, scope: !2953)
!2990 = !DILocation(line: 1013, column: 24, scope: !2953)
!2991 = !DILocation(line: 1014, column: 26, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 1014, column: 17)
!2993 = !DILocation(line: 1014, column: 17, scope: !2953)
!2994 = !DILocation(line: 1015, column: 24, scope: !2953)
!2995 = !DILocation(line: 1016, column: 24, scope: !2953)
!2996 = !DILocation(line: 1019, column: 28, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 1019, column: 17)
!2998 = !DILocation(line: 1019, column: 17, scope: !2953)
!2999 = !DILocation(line: 1020, column: 38, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 1019, column: 39)
!3001 = !DILocation(line: 1020, column: 32, scope: !3000)
!3002 = !DILocation(line: 1021, column: 32, scope: !3000)
!3003 = !DILocation(line: 1021, column: 38, scope: !3000)
!3004 = !DILocation(line: 1021, column: 17, scope: !3000)
!3005 = !DILocation(line: 1022, column: 28, scope: !3000)
!3006 = !DILocation(line: 1025, column: 21, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3000, file: !3, line: 1025, column: 21)
!3008 = !DILocation(line: 1025, column: 42, scope: !3007)
!3009 = !DILocation(line: 1025, column: 21, scope: !3000)
!3010 = !DILocation(line: 1026, column: 21, scope: !3007)
!3011 = !DILocation(line: 0, scope: !2953)
!3012 = !DILocation(line: 1041, column: 24, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 1041, column: 13)
!3014 = !DILocation(line: 1041, column: 51, scope: !3013)
!3015 = !DILocation(line: 1042, column: 21, scope: !3013)
!3016 = !{!441, !442, i64 2704}
!3017 = !DILocation(line: 1042, column: 31, scope: !3013)
!3018 = !DILocation(line: 1042, column: 36, scope: !3013)
!3019 = !DILocation(line: 1043, column: 14, scope: !3013)
!3020 = !DILocation(line: 1043, column: 45, scope: !3013)
!3021 = !DILocation(line: 1043, column: 36, scope: !3013)
!3022 = !DILocation(line: 1043, column: 56, scope: !3013)
!3023 = !DILocation(line: 1044, column: 18, scope: !3013)
!3024 = !DILocation(line: 1044, column: 24, scope: !3013)
!3025 = !DILocation(line: 1041, column: 13, scope: !2950)
!3026 = !DILocation(line: 1046, column: 34, scope: !2925)
!3027 = !{!441, !442, i64 1248}
!3028 = !DILocation(line: 1057, column: 9, scope: !2925)
!3029 = !DILocation(line: 0, scope: !2925)
!3030 = !DILocation(line: 1047, column: 18, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 1047, column: 9)
!3032 = !DILocation(line: 1047, column: 9, scope: !2925)
!3033 = !DILocation(line: 1048, column: 13, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 1048, column: 13)
!3035 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 1047, column: 25)
!3036 = !DILocation(line: 1048, column: 19, scope: !3034)
!3037 = !DILocation(line: 1048, column: 13, scope: !3035)
!3038 = !DILocation(line: 1052, column: 57, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 1050, column: 16)
!3040 = !DILocation(line: 1052, column: 48, scope: !3039)
!3041 = !DILocation(line: 1051, column: 13, scope: !3039)
!3042 = !DILocation(line: 1053, column: 13, scope: !3039)
!3043 = !DILocation(line: 1054, column: 13, scope: !3039)
!3044 = !DILocation(line: 1057, column: 20, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 1057, column: 9)
!3046 = !DILocation(line: 1062, column: 18, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 1062, column: 13)
!3048 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1057, column: 25)
!3049 = !DILocation(line: 1062, column: 24, scope: !3047)
!3050 = !DILocation(line: 1062, column: 13, scope: !3048)
!3051 = !DILocation(line: 1062, column: 70, scope: !3047)
!3052 = !DILocation(line: 1062, column: 45, scope: !3047)
!3053 = !DILocation(line: 1062, column: 61, scope: !3047)
!3054 = !DILocation(line: 1062, column: 42, scope: !3047)
!3055 = !DILocation(line: 664, column: 37, scope: !1060, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 1064, column: 10, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 1064, column: 9)
!3058 = !DILocation(line: 665, column: 15, scope: !1060, inlinedAt: !3056)
!3059 = !DILocation(line: 665, column: 12, scope: !1060, inlinedAt: !3056)
!3060 = !DILocation(line: 665, column: 22, scope: !1060, inlinedAt: !3056)
!3061 = !DILocation(line: 665, column: 25, scope: !1060, inlinedAt: !3056)
!3062 = !DILocation(line: 1064, column: 9, scope: !2925)
!3063 = !DILocation(line: 1065, column: 20, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 1064, column: 38)
!3065 = !DILocation(line: 1066, column: 13, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 1066, column: 13)
!3067 = !DILocation(line: 1066, column: 13, scope: !3064)
!3068 = !DILocation(line: 1066, column: 57, scope: !3066)
!3069 = !DILocation(line: 1066, column: 63, scope: !3066)
!3070 = !DILocation(line: 1066, column: 32, scope: !3066)
!3071 = !DILocation(line: 1069, column: 16, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 1069, column: 13)
!3073 = !DILocation(line: 1069, column: 22, scope: !3072)
!3074 = !DILocation(line: 1069, column: 13, scope: !3064)
!3075 = !DILocation(line: 1070, column: 13, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3072, file: !3, line: 1069, column: 50)
!3077 = !DILocation(line: 1071, column: 13, scope: !3076)
!3078 = !DILocation(line: 0, scope: !3039)
!3079 = !DILocation(line: 1075, column: 1, scope: !2925)
!3080 = distinct !DISubprogram(name: "sendReplyToClient", scope: !3, file: !3, line: 1078, type: !739, isLocal: false, isDefinition: true, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3081)
!3081 = !{!3082, !3083, !3084, !3085}
!3082 = !DILocalVariable(name: "el", arg: 1, scope: !3080, file: !3, line: 1078, type: !741)
!3083 = !DILocalVariable(name: "fd", arg: 2, scope: !3080, file: !3, line: 1078, type: !18)
!3084 = !DILocalVariable(name: "privdata", arg: 3, scope: !3080, file: !3, line: 1078, type: !45)
!3085 = !DILocalVariable(name: "mask", arg: 4, scope: !3080, file: !3, line: 1078, type: !18)
!3086 = !DILocation(line: 1078, column: 37, scope: !3080)
!3087 = !DILocation(line: 1078, column: 45, scope: !3080)
!3088 = !DILocation(line: 1078, column: 55, scope: !3080)
!3089 = !DILocation(line: 1078, column: 69, scope: !3080)
!3090 = !DILocation(line: 1081, column: 22, scope: !3080)
!3091 = !DILocation(line: 1081, column: 5, scope: !3080)
!3092 = !DILocation(line: 1082, column: 1, scope: !3080)
!3093 = distinct !DISubprogram(name: "handleClientsWithPendingWrites", scope: !3, file: !3, line: 1088, type: !3094, isLocal: false, isDefinition: true, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3096)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!18}
!3096 = !{!3097, !3103, !3104, !3105, !3107}
!3097 = !DILocalVariable(name: "li", scope: !3093, file: !3, line: 1089, type: !3098)
!3098 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !99, line: 45, baseType: !3099)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !99, line: 42, size: 128, elements: !3100)
!3100 = !{!3101, !3102}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3099, file: !99, line: 43, baseType: !103, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !3099, file: !99, line: 44, baseType: !18, size: 32, offset: 64)
!3103 = !DILocalVariable(name: "ln", scope: !3093, file: !3, line: 1090, type: !103)
!3104 = !DILocalVariable(name: "processed", scope: !3093, file: !3, line: 1091, type: !18)
!3105 = !DILocalVariable(name: "c", scope: !3106, file: !3, line: 1095, type: !6)
!3106 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 1094, column: 33)
!3107 = !DILocalVariable(name: "ae_flags", scope: !3108, file: !3, line: 1109, type: !18)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !3, line: 1108, column: 41)
!3109 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 1108, column: 13)
!3110 = !DILocation(line: 1089, column: 5, scope: !3093)
!3111 = !DILocation(line: 1091, column: 21, scope: !3093)
!3112 = !DILocation(line: 1091, column: 9, scope: !3093)
!3113 = !DILocation(line: 1089, column: 14, scope: !3093)
!3114 = !DILocation(line: 1093, column: 5, scope: !3093)
!3115 = !DILocation(line: 1094, column: 17, scope: !3093)
!3116 = !DILocation(line: 1090, column: 15, scope: !3093)
!3117 = !DILocation(line: 1094, column: 5, scope: !3093)
!3118 = !DILocation(line: 1095, column: 21, scope: !3106)
!3119 = !DILocation(line: 1096, column: 12, scope: !3106)
!3120 = !DILocation(line: 1096, column: 18, scope: !3106)
!3121 = !DILocation(line: 1097, column: 28, scope: !3106)
!3122 = !DILocation(line: 1097, column: 9, scope: !3106)
!3123 = !DILocation(line: 1101, column: 16, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 1101, column: 13)
!3125 = !DILocation(line: 1101, column: 22, scope: !3124)
!3126 = !DILocation(line: 1101, column: 13, scope: !3106)
!3127 = distinct !{!3127, !3117, !3128}
!3128 = !DILocation(line: 1126, column: 5, scope: !3093)
!3129 = !DILocation(line: 1095, column: 17, scope: !3106)
!3130 = !DILocation(line: 1104, column: 30, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3106, file: !3, line: 1104, column: 13)
!3132 = !DILocation(line: 1104, column: 13, scope: !3131)
!3133 = !DILocation(line: 1104, column: 38, scope: !3131)
!3134 = !DILocation(line: 1104, column: 13, scope: !3106)
!3135 = !DILocation(line: 664, column: 37, scope: !1060, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 1108, column: 13, scope: !3109)
!3137 = !DILocation(line: 665, column: 15, scope: !1060, inlinedAt: !3136)
!3138 = !DILocation(line: 665, column: 12, scope: !1060, inlinedAt: !3136)
!3139 = !DILocation(line: 665, column: 22, scope: !1060, inlinedAt: !3136)
!3140 = !DILocation(line: 665, column: 25, scope: !1060, inlinedAt: !3136)
!3141 = !DILocation(line: 1108, column: 13, scope: !3106)
!3142 = !DILocation(line: 1109, column: 17, scope: !3108)
!3143 = !DILocation(line: 1115, column: 24, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 1115, column: 17)
!3145 = !{!441, !378, i64 1880}
!3146 = !DILocation(line: 1115, column: 34, scope: !3144)
!3147 = !DILocation(line: 1116, column: 24, scope: !3144)
!3148 = !DILocation(line: 1116, column: 34, scope: !3144)
!3149 = !DILocation(line: 1115, column: 44, scope: !3144)
!3150 = !DILocation(line: 1120, column: 42, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 1120, column: 17)
!3152 = !DILocation(line: 1120, column: 49, scope: !3151)
!3153 = !DILocation(line: 1120, column: 17, scope: !3151)
!3154 = !DILocation(line: 1121, column: 39, scope: !3151)
!3155 = !DILocation(line: 1120, column: 17, scope: !3108)
!3156 = !DILocation(line: 957, column: 30, scope: !1283, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 1123, column: 21, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 1122, column: 13)
!3159 = !DILocation(line: 958, column: 12, scope: !1288, inlinedAt: !3157)
!3160 = !DILocation(line: 958, column: 38, scope: !1288, inlinedAt: !3157)
!3161 = !DILocation(line: 959, column: 14, scope: !1283, inlinedAt: !3157)
!3162 = !DILocation(line: 960, column: 28, scope: !1283, inlinedAt: !3157)
!3163 = !DILocation(line: 960, column: 5, scope: !1283, inlinedAt: !3157)
!3164 = !DILocation(line: 961, column: 1, scope: !1283, inlinedAt: !3157)
!3165 = !DILocation(line: 1128, column: 1, scope: !3093)
!3166 = !DILocation(line: 1127, column: 5, scope: !3093)
!3167 = distinct !DISubprogram(name: "resetClient", scope: !3, file: !3, line: 1131, type: !4, isLocal: false, isDefinition: true, scopeLine: 1131, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3168)
!3168 = !{!3169, !3170}
!3169 = !DILocalVariable(name: "c", arg: 1, scope: !3167, file: !3, line: 1131, type: !6)
!3170 = !DILocalVariable(name: "prevcmd", scope: !3167, file: !3, line: 1132, type: !157)
!3171 = !DILocation(line: 1131, column: 26, scope: !3167)
!3172 = !DILocation(line: 1132, column: 36, scope: !3167)
!3173 = !DILocation(line: 1132, column: 33, scope: !3167)
!3174 = !DILocation(line: 1132, column: 50, scope: !3167)
!3175 = !{!1644, !381, i64 8}
!3176 = !DILocation(line: 779, column: 36, scope: !2678, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 1134, column: 5, scope: !3167)
!3178 = !DILocation(line: 780, column: 9, scope: !2678, inlinedAt: !3177)
!3179 = !DILocation(line: 781, column: 24, scope: !2685, inlinedAt: !3177)
!3180 = !DILocation(line: 781, column: 19, scope: !2685, inlinedAt: !3177)
!3181 = !DILocation(line: 781, column: 5, scope: !2686, inlinedAt: !3177)
!3182 = !DILocation(line: 782, column: 25, scope: !2685, inlinedAt: !3177)
!3183 = !DILocation(line: 782, column: 22, scope: !2685, inlinedAt: !3177)
!3184 = !DILocation(line: 782, column: 9, scope: !2685, inlinedAt: !3177)
!3185 = !DILocation(line: 781, column: 31, scope: !2685, inlinedAt: !3177)
!3186 = !DILocation(line: 783, column: 13, scope: !2678, inlinedAt: !3177)
!3187 = !DILocation(line: 784, column: 12, scope: !2678, inlinedAt: !3177)
!3188 = !DILocation(line: 1135, column: 8, scope: !3167)
!3189 = !DILocation(line: 1135, column: 16, scope: !3167)
!3190 = !DILocation(line: 1136, column: 8, scope: !3167)
!3191 = !DILocation(line: 1136, column: 21, scope: !3167)
!3192 = !DILocation(line: 1137, column: 8, scope: !3167)
!3193 = !DILocation(line: 1137, column: 16, scope: !3167)
!3194 = !DILocation(line: 1141, column: 14, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 1141, column: 9)
!3196 = !DILocation(line: 1141, column: 20, scope: !3195)
!3197 = !DILocation(line: 1141, column: 36, scope: !3195)
!3198 = !DILocation(line: 1142, column: 18, scope: !3195)
!3199 = !DILocation(line: 1142, column: 9, scope: !3195)
!3200 = !DILocation(line: 1147, column: 14, scope: !3167)
!3201 = !DILocation(line: 1148, column: 18, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 1148, column: 9)
!3203 = !DILocation(line: 1150, column: 18, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 1148, column: 44)
!3205 = !DILocation(line: 1148, column: 9, scope: !3167)
!3206 = !DILocation(line: 0, scope: !3167)
!3207 = !DILocation(line: 1152, column: 1, scope: !3167)
!3208 = distinct !DISubprogram(name: "protectClient", scope: !3, file: !3, line: 1167, type: !4, isLocal: false, isDefinition: true, scopeLine: 1167, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3209)
!3209 = !{!3210}
!3210 = !DILocalVariable(name: "c", arg: 1, scope: !3208, file: !3, line: 1167, type: !6)
!3211 = !DILocation(line: 1167, column: 28, scope: !3208)
!3212 = !DILocation(line: 1168, column: 8, scope: !3208)
!3213 = !DILocation(line: 1168, column: 14, scope: !3208)
!3214 = !DILocation(line: 1169, column: 30, scope: !3208)
!3215 = !DILocation(line: 1169, column: 36, scope: !3208)
!3216 = !DILocation(line: 1169, column: 5, scope: !3208)
!3217 = !DILocation(line: 1170, column: 30, scope: !3208)
!3218 = !DILocation(line: 1170, column: 36, scope: !3208)
!3219 = !DILocation(line: 1170, column: 5, scope: !3208)
!3220 = !DILocation(line: 1171, column: 1, scope: !3208)
!3221 = distinct !DISubprogram(name: "unprotectClient", scope: !3, file: !3, line: 1174, type: !4, isLocal: false, isDefinition: true, scopeLine: 1174, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3222)
!3222 = !{!3223}
!3223 = !DILocalVariable(name: "c", arg: 1, scope: !3221, file: !3, line: 1174, type: !6)
!3224 = !DILocation(line: 1174, column: 30, scope: !3221)
!3225 = !DILocation(line: 1175, column: 12, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 1175, column: 9)
!3227 = !DILocation(line: 1175, column: 18, scope: !3226)
!3228 = !DILocation(line: 1175, column: 9, scope: !3221)
!3229 = !DILocation(line: 1176, column: 18, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3226, file: !3, line: 1175, column: 38)
!3231 = !DILocation(line: 1177, column: 34, scope: !3230)
!3232 = !DILocation(line: 1177, column: 40, scope: !3230)
!3233 = !DILocation(line: 1177, column: 75, scope: !3230)
!3234 = !DILocation(line: 1177, column: 9, scope: !3230)
!3235 = !DILocation(line: 664, column: 37, scope: !1060, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 1178, column: 13, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 1178, column: 13)
!3238 = !DILocation(line: 665, column: 15, scope: !1060, inlinedAt: !3236)
!3239 = !DILocation(line: 665, column: 12, scope: !1060, inlinedAt: !3236)
!3240 = !DILocation(line: 665, column: 22, scope: !1060, inlinedAt: !3236)
!3241 = !DILocation(line: 665, column: 25, scope: !1060, inlinedAt: !3236)
!3242 = !DILocation(line: 1178, column: 13, scope: !3230)
!3243 = !DILocation(line: 176, column: 40, scope: !1017, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 1178, column: 41, scope: !3237)
!3245 = !DILocation(line: 180, column: 14, scope: !1022, inlinedAt: !3244)
!3246 = !DILocation(line: 180, column: 20, scope: !1022, inlinedAt: !3244)
!3247 = !DILocation(line: 180, column: 44, scope: !1022, inlinedAt: !3244)
!3248 = !DILocation(line: 181, column: 13, scope: !1022, inlinedAt: !3244)
!3249 = !DILocation(line: 181, column: 42, scope: !1022, inlinedAt: !3244)
!3250 = !DILocation(line: 182, column: 53, scope: !1022, inlinedAt: !3244)
!3251 = !DILocation(line: 182, column: 50, scope: !1022, inlinedAt: !3244)
!3252 = !DILocation(line: 180, column: 9, scope: !1017, inlinedAt: !3244)
!3253 = !DILocation(line: 190, column: 18, scope: !1033, inlinedAt: !3244)
!3254 = !DILocation(line: 191, column: 32, scope: !1033, inlinedAt: !3244)
!3255 = !DILocation(line: 191, column: 9, scope: !1033, inlinedAt: !3244)
!3256 = !DILocation(line: 192, column: 5, scope: !1033, inlinedAt: !3244)
!3257 = !DILocation(line: 1180, column: 1, scope: !3221)
!3258 = distinct !DISubprogram(name: "processInlineBuffer", scope: !3, file: !3, line: 1189, type: !1041, isLocal: false, isDefinition: true, scopeLine: 1189, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3259)
!3259 = !{!3260, !3261, !3262, !3263, !3264, !3265, !3267, !3268}
!3260 = !DILocalVariable(name: "c", arg: 1, scope: !3258, file: !3, line: 1189, type: !6)
!3261 = !DILocalVariable(name: "newline", scope: !3258, file: !3, line: 1190, type: !139)
!3262 = !DILocalVariable(name: "argc", scope: !3258, file: !3, line: 1191, type: !18)
!3263 = !DILocalVariable(name: "j", scope: !3258, file: !3, line: 1191, type: !18)
!3264 = !DILocalVariable(name: "linefeed_chars", scope: !3258, file: !3, line: 1191, type: !18)
!3265 = !DILocalVariable(name: "argv", scope: !3258, file: !3, line: 1192, type: !3266)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!3267 = !DILocalVariable(name: "aux", scope: !3258, file: !3, line: 1192, type: !137)
!3268 = !DILocalVariable(name: "querylen", scope: !3258, file: !3, line: 1193, type: !142)
!3269 = !DILocation(line: 1189, column: 33, scope: !3258)
!3270 = !DILocation(line: 1191, column: 5, scope: !3258)
!3271 = !DILocation(line: 1191, column: 18, scope: !3258)
!3272 = !DILocation(line: 1196, column: 25, scope: !3258)
!3273 = !DILocation(line: 1196, column: 37, scope: !3258)
!3274 = !DILocation(line: 1196, column: 33, scope: !3258)
!3275 = !DILocation(line: 1196, column: 15, scope: !3258)
!3276 = !DILocation(line: 1190, column: 11, scope: !3258)
!3277 = !DILocation(line: 1199, column: 17, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 1199, column: 9)
!3279 = !DILocation(line: 0, scope: !3280)
!3280 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 1208, column: 9)
!3281 = !DILocation(line: 1199, column: 9, scope: !3258)
!3282 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 1200, column: 13, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !3, line: 1200, column: 13)
!3285 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 1199, column: 26)
!3286 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !3283)
!3287 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !3283)
!3288 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !3283)
!3289 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !3283)
!3290 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !3283)
!3291 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !3283)
!3292 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !3283)
!3293 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !3283)
!3294 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !3283)
!3295 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !3283)
!3296 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !3283)
!3297 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !3283)
!3298 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !3283)
!3299 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !3283)
!3300 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !3283)
!3301 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !3283)
!3302 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !3283)
!3303 = !DILocation(line: 0, scope: !848, inlinedAt: !3283)
!3304 = !DILocation(line: 1200, column: 36, scope: !3284)
!3305 = !DILocation(line: 1200, column: 32, scope: !3284)
!3306 = !DILocation(line: 1200, column: 43, scope: !3284)
!3307 = !DILocation(line: 1200, column: 13, scope: !3285)
!3308 = !DILocation(line: 384, column: 28, scope: !1649, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 1201, column: 13, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3284, file: !3, line: 1200, column: 68)
!3311 = !DILocation(line: 384, column: 43, scope: !1649, inlinedAt: !3309)
!3312 = !DILocation(line: 385, column: 31, scope: !1649, inlinedAt: !3309)
!3313 = !DILocation(line: 385, column: 5, scope: !1649, inlinedAt: !3309)
!3314 = !DILocation(line: 1202, column: 13, scope: !3310)
!3315 = !DILocation(line: 1203, column: 9, scope: !3310)
!3316 = !DILocation(line: 1208, column: 46, scope: !3280)
!3317 = !DILocation(line: 1208, column: 42, scope: !3280)
!3318 = !DILocation(line: 1208, column: 28, scope: !3280)
!3319 = !DILocation(line: 1208, column: 53, scope: !3280)
!3320 = !DILocation(line: 1208, column: 65, scope: !3280)
!3321 = !DILocation(line: 1208, column: 56, scope: !3280)
!3322 = !DILocation(line: 1208, column: 69, scope: !3280)
!3323 = !DILocation(line: 1208, column: 9, scope: !3258)
!3324 = !DILocation(line: 0, scope: !3258)
!3325 = !DILocation(line: 1212, column: 23, scope: !3258)
!3326 = !DILocation(line: 1193, column: 12, scope: !3258)
!3327 = !DILocation(line: 1213, column: 11, scope: !3258)
!3328 = !DILocation(line: 1192, column: 16, scope: !3258)
!3329 = !DILocation(line: 1191, column: 9, scope: !3258)
!3330 = !DILocation(line: 1214, column: 12, scope: !3258)
!3331 = !DILocation(line: 1192, column: 10, scope: !3258)
!3332 = !DILocation(line: 1215, column: 5, scope: !3258)
!3333 = !DILocation(line: 1216, column: 14, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 1216, column: 9)
!3335 = !DILocation(line: 1216, column: 9, scope: !3258)
!3336 = !DILocation(line: 384, column: 28, scope: !1649, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 1217, column: 9, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3334, file: !3, line: 1216, column: 23)
!3339 = !DILocation(line: 384, column: 43, scope: !1649, inlinedAt: !3337)
!3340 = !DILocation(line: 385, column: 31, scope: !1649, inlinedAt: !3337)
!3341 = !DILocation(line: 385, column: 5, scope: !1649, inlinedAt: !3337)
!3342 = !DILocation(line: 1218, column: 9, scope: !3338)
!3343 = !DILocation(line: 1219, column: 9, scope: !3338)
!3344 = !DILocation(line: 1225, column: 18, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 1225, column: 9)
!3346 = !DILocation(line: 1225, column: 23, scope: !3345)
!3347 = !DILocation(line: 1225, column: 29, scope: !3345)
!3348 = !DILocation(line: 1225, column: 35, scope: !3345)
!3349 = !DILocation(line: 1225, column: 9, scope: !3258)
!3350 = !DILocation(line: 1226, column: 35, scope: !3345)
!3351 = !DILocation(line: 1226, column: 12, scope: !3345)
!3352 = !DILocation(line: 1226, column: 26, scope: !3345)
!3353 = !{!455, !442, i64 232}
!3354 = !DILocation(line: 1226, column: 9, scope: !3345)
!3355 = !DILocation(line: 1229, column: 26, scope: !3258)
!3356 = !DILocation(line: 1229, column: 15, scope: !3258)
!3357 = !DILocation(line: 1232, column: 9, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 1232, column: 9)
!3359 = !DILocation(line: 1232, column: 9, scope: !3258)
!3360 = !DILocation(line: 1238, column: 13, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 1238, column: 5)
!3362 = !DILocation(line: 1238, column: 18, scope: !3361)
!3363 = !DILocation(line: 1191, column: 15, scope: !3258)
!3364 = !DILocation(line: 1238, column: 5, scope: !3361)
!3365 = !DILocation(line: 1233, column: 16, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 1233, column: 13)
!3367 = distinct !DILexicalBlock(scope: !3358, file: !3, line: 1232, column: 15)
!3368 = !DILocation(line: 1233, column: 13, scope: !3366)
!3369 = !DILocation(line: 1233, column: 13, scope: !3367)
!3370 = !DILocation(line: 1233, column: 28, scope: !3366)
!3371 = !DILocation(line: 1233, column: 22, scope: !3366)
!3372 = !DILocation(line: 1234, column: 41, scope: !3367)
!3373 = !DILocation(line: 1234, column: 40, scope: !3367)
!3374 = !DILocation(line: 1234, column: 19, scope: !3367)
!3375 = !DILocation(line: 1234, column: 17, scope: !3367)
!3376 = !DILocation(line: 1238, column: 34, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 1238, column: 5)
!3378 = !DILocation(line: 1235, column: 5, scope: !3367)
!3379 = !DILocation(line: 1239, column: 20, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 1239, column: 13)
!3381 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 1238, column: 45)
!3382 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !3383)
!3383 = distinct !DILocation(line: 1239, column: 13, scope: !3380)
!3384 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !3383)
!3385 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !3383)
!3386 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !3383)
!3387 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !3383)
!3388 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !3383)
!3389 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !3383)
!3390 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !3383)
!3391 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !3383)
!3392 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !3383)
!3393 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !3383)
!3394 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !3383)
!3395 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !3383)
!3396 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !3383)
!3397 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !3383)
!3398 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !3383)
!3399 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !3383)
!3400 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !3383)
!3401 = !DILocation(line: 0, scope: !848, inlinedAt: !3383)
!3402 = !DILocation(line: 1239, column: 13, scope: !3380)
!3403 = !DILocation(line: 1239, column: 13, scope: !3381)
!3404 = !DILocation(line: 1240, column: 32, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 1239, column: 30)
!3406 = !DILocation(line: 1240, column: 16, scope: !3405)
!3407 = !DILocation(line: 1240, column: 24, scope: !3405)
!3408 = !DILocation(line: 1240, column: 13, scope: !3405)
!3409 = !DILocation(line: 1240, column: 30, scope: !3405)
!3410 = !DILocation(line: 1241, column: 20, scope: !3405)
!3411 = !DILocation(line: 1242, column: 9, scope: !3405)
!3412 = !DILocation(line: 1243, column: 13, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 1242, column: 16)
!3414 = !DILocation(line: 1238, column: 41, scope: !3377)
!3415 = !DILocation(line: 1238, column: 32, scope: !3377)
!3416 = distinct !{!3416, !3364, !3417}
!3417 = !DILocation(line: 1245, column: 5, scope: !3361)
!3418 = !DILocation(line: 57, column: 10, scope: !3419, inlinedAt: !3423)
!3419 = distinct !DISubprogram(name: "s_free", scope: !3420, file: !3420, line: 56, type: !118, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3421)
!3420 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sdsalloc.h", directory: "/root/.unikraft/apps/redis/build")
!3421 = !{!3422}
!3422 = !DILocalVariable(name: "ptr", arg: 1, scope: !3419, file: !3420, line: 56, type: !45)
!3423 = distinct !DILocation(line: 1246, column: 5, scope: !3258)
!3424 = !DILocation(line: 237, column: 45, scope: !2774, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 57, column: 2, scope: !3419, inlinedAt: !3423)
!3426 = !DILocation(line: 231, column: 48, scope: !2780, inlinedAt: !3427)
!3427 = distinct !DILocation(line: 239, column: 2, scope: !2774, inlinedAt: !3425)
!3428 = !DILocation(line: 233, column: 2, scope: !2786, inlinedAt: !3427)
!3429 = !DILocation(line: 233, column: 2, scope: !2787, inlinedAt: !3427)
!3430 = !DILocation(line: 233, column: 2, scope: !2790, inlinedAt: !3427)
!3431 = !DILocation(line: 1246, column: 12, scope: !3258)
!3432 = !DILocation(line: 231, column: 57, scope: !2780, inlinedAt: !3427)
!3433 = !DILocation(line: 237, column: 54, scope: !2774, inlinedAt: !3425)
!3434 = !DILocation(line: 56, column: 33, scope: !3419, inlinedAt: !3423)
!3435 = !DILocation(line: 234, column: 5, scope: !2780, inlinedAt: !3427)
!3436 = !DILocation(line: 234, column: 2, scope: !2780, inlinedAt: !3427)
!3437 = !DILocation(line: 1247, column: 5, scope: !3258)
!3438 = !DILocation(line: 1248, column: 1, scope: !3258)
!3439 = distinct !DISubprogram(name: "setProtocolError", scope: !3, file: !3, line: 1253, type: !3440, isLocal: true, isDefinition: true, scopeLine: 1253, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3442)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{null, !317, !6}
!3442 = !{!3443, !3444, !3445, !3448, !3452}
!3443 = !DILocalVariable(name: "errstr", arg: 1, scope: !3439, file: !3, line: 1253, type: !317)
!3444 = !DILocalVariable(name: "c", arg: 2, scope: !3439, file: !3, line: 1253, type: !6)
!3445 = !DILocalVariable(name: "client", scope: !3446, file: !3, line: 1255, type: !137)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 1254, column: 41)
!3447 = distinct !DILexicalBlock(scope: !3439, file: !3, line: 1254, column: 9)
!3448 = !DILocalVariable(name: "buf", scope: !3446, file: !3, line: 1258, type: !3449)
!3449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 2048, elements: !3450)
!3450 = !{!3451}
!3451 = !DISubrange(count: 256)
!3452 = !DILocalVariable(name: "p", scope: !3446, file: !3, line: 1266, type: !139)
!3453 = !DILocation(line: 1253, column: 42, scope: !3439)
!3454 = !DILocation(line: 1253, column: 58, scope: !3439)
!3455 = !DILocation(line: 1254, column: 16, scope: !3447)
!3456 = !{!441, !378, i64 1728}
!3457 = !DILocation(line: 1254, column: 26, scope: !3447)
!3458 = !DILocation(line: 1254, column: 9, scope: !3439)
!3459 = !DILocation(line: 1255, column: 42, scope: !3446)
!3460 = !DILocation(line: 1255, column: 22, scope: !3446)
!3461 = !DILocation(line: 1255, column: 13, scope: !3446)
!3462 = !DILocation(line: 1258, column: 9, scope: !3446)
!3463 = !DILocation(line: 1258, column: 14, scope: !3446)
!3464 = !DILocation(line: 1259, column: 23, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3446, file: !3, line: 1259, column: 13)
!3466 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 1259, column: 13, scope: !3465)
!3468 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !3467)
!3469 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !3467)
!3470 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !3467)
!3471 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !3467)
!3472 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !3467)
!3473 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !3467)
!3474 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !3467)
!3475 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !3467)
!3476 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !3467)
!3477 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !3467)
!3478 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !3467)
!3479 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !3467)
!3480 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !3467)
!3481 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !3467)
!3482 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !3467)
!3483 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !3467)
!3484 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !3467)
!3485 = !DILocation(line: 0, scope: !848, inlinedAt: !3467)
!3486 = !DILocation(line: 1259, column: 36, scope: !3465)
!3487 = !DILocation(line: 1259, column: 32, scope: !3465)
!3488 = !DILocation(line: 1259, column: 43, scope: !3465)
!3489 = !DILocation(line: 0, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 1261, column: 16)
!3491 = !DILocation(line: 1259, column: 13, scope: !3446)
!3492 = !DILocation(line: 1260, column: 13, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 1259, column: 61)
!3494 = !DILocation(line: 1261, column: 9, scope: !3493)
!3495 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 1262, column: 157, scope: !3490)
!3497 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !3496)
!3498 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !3496)
!3499 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !3496)
!3500 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !3501)
!3501 = distinct !DILocation(line: 1262, column: 233, scope: !3490)
!3502 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !3501)
!3503 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !3501)
!3504 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !3496)
!3505 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !3496)
!3506 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !3501)
!3507 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !3496)
!3508 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !3496)
!3509 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !3501)
!3510 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !3496)
!3511 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !3496)
!3512 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !3501)
!3513 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !3496)
!3514 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !3496)
!3515 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !3501)
!3516 = !DILocation(line: 1262, column: 176, scope: !3490)
!3517 = !DILocation(line: 1262, column: 186, scope: !3490)
!3518 = !DILocation(line: 1262, column: 232, scope: !3490)
!3519 = !DILocation(line: 1262, column: 252, scope: !3490)
!3520 = !DILocation(line: 1262, column: 13, scope: !3490)
!3521 = !DILocation(line: 1266, column: 15, scope: !3446)
!3522 = !DILocation(line: 1267, column: 16, scope: !3446)
!3523 = !DILocation(line: 1267, column: 19, scope: !3446)
!3524 = !DILocation(line: 1267, column: 9, scope: !3446)
!3525 = !DILocation(line: 1268, column: 18, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !3, line: 1268, column: 17)
!3527 = distinct !DILexicalBlock(scope: !3446, file: !3, line: 1267, column: 28)
!3528 = !DILocation(line: 1268, column: 17, scope: !3527)
!3529 = !DILocation(line: 1268, column: 34, scope: !3526)
!3530 = !DILocation(line: 1268, column: 31, scope: !3526)
!3531 = !DILocation(line: 1269, column: 14, scope: !3527)
!3532 = distinct !{!3532, !3524, !3533}
!3533 = !DILocation(line: 1270, column: 9, scope: !3446)
!3534 = !DILocation(line: 1273, column: 9, scope: !3446)
!3535 = !DILocation(line: 1275, column: 9, scope: !3446)
!3536 = !DILocation(line: 1276, column: 5, scope: !3447)
!3537 = !DILocation(line: 1276, column: 5, scope: !3446)
!3538 = !DILocation(line: 1277, column: 8, scope: !3439)
!3539 = !DILocation(line: 1277, column: 14, scope: !3439)
!3540 = !DILocation(line: 1278, column: 1, scope: !3439)
!3541 = distinct !DISubprogram(name: "processMultibulkBuffer", scope: !3, file: !3, line: 1291, type: !1041, isLocal: false, isDefinition: true, scopeLine: 1291, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3542)
!3542 = !{!3543, !3544, !3545, !3546}
!3543 = !DILocalVariable(name: "c", arg: 1, scope: !3541, file: !3, line: 1291, type: !6)
!3544 = !DILocalVariable(name: "newline", scope: !3541, file: !3, line: 1292, type: !139)
!3545 = !DILocalVariable(name: "ok", scope: !3541, file: !3, line: 1293, type: !18)
!3546 = !DILocalVariable(name: "ll", scope: !3541, file: !3, line: 1294, type: !95)
!3547 = !DILocation(line: 1291, column: 36, scope: !3541)
!3548 = !DILocation(line: 1292, column: 11, scope: !3541)
!3549 = !DILocation(line: 1294, column: 5, scope: !3541)
!3550 = !DILocation(line: 1296, column: 12, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 1296, column: 9)
!3552 = !DILocation(line: 1296, column: 25, scope: !3551)
!3553 = !DILocation(line: 1296, column: 9, scope: !3541)
!3554 = !DILocation(line: 1298, column: 9, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3551, file: !3, line: 1296, column: 31)
!3556 = !DILocation(line: 1301, column: 29, scope: !3555)
!3557 = !DILocation(line: 1301, column: 41, scope: !3555)
!3558 = !DILocation(line: 1301, column: 37, scope: !3555)
!3559 = !DILocation(line: 1301, column: 19, scope: !3555)
!3560 = !DILocation(line: 1302, column: 21, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 1302, column: 13)
!3562 = !DILocation(line: 0, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 1311, column: 13)
!3564 = !DILocation(line: 1302, column: 13, scope: !3555)
!3565 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 1303, column: 17, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !3, line: 1303, column: 17)
!3568 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 1302, column: 30)
!3569 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !3566)
!3570 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !3566)
!3571 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !3566)
!3572 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !3566)
!3573 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !3566)
!3574 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !3566)
!3575 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !3566)
!3576 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !3566)
!3577 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !3566)
!3578 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !3566)
!3579 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !3566)
!3580 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !3566)
!3581 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !3566)
!3582 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !3566)
!3583 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !3566)
!3584 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !3566)
!3585 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !3566)
!3586 = !DILocation(line: 0, scope: !848, inlinedAt: !3566)
!3587 = !DILocation(line: 1303, column: 40, scope: !3567)
!3588 = !DILocation(line: 1303, column: 36, scope: !3567)
!3589 = !DILocation(line: 1303, column: 47, scope: !3567)
!3590 = !DILocation(line: 1303, column: 17, scope: !3568)
!3591 = !DILocation(line: 384, column: 28, scope: !1649, inlinedAt: !3592)
!3592 = distinct !DILocation(line: 1304, column: 17, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 1303, column: 72)
!3594 = !DILocation(line: 384, column: 43, scope: !1649, inlinedAt: !3592)
!3595 = !DILocation(line: 385, column: 31, scope: !1649, inlinedAt: !3592)
!3596 = !DILocation(line: 385, column: 5, scope: !1649, inlinedAt: !3592)
!3597 = !DILocation(line: 1305, column: 17, scope: !3593)
!3598 = !DILocation(line: 1306, column: 13, scope: !3593)
!3599 = !DILocation(line: 1311, column: 37, scope: !3563)
!3600 = !DILocation(line: 1311, column: 33, scope: !3563)
!3601 = !DILocation(line: 1311, column: 20, scope: !3563)
!3602 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !3603)
!3603 = distinct !DILocation(line: 1311, column: 57, scope: !3563)
!3604 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !3603)
!3605 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !3603)
!3606 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !3603)
!3607 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !3603)
!3608 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !3603)
!3609 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !3603)
!3610 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !3603)
!3611 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !3603)
!3612 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !3603)
!3613 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !3603)
!3614 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !3603)
!3615 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !3603)
!3616 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !3603)
!3617 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !3603)
!3618 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !3603)
!3619 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !3603)
!3620 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !3603)
!3621 = !DILocation(line: 0, scope: !848, inlinedAt: !3603)
!3622 = !DILocation(line: 1311, column: 76, scope: !3563)
!3623 = !DILocation(line: 1311, column: 86, scope: !3563)
!3624 = !DILocation(line: 1311, column: 45, scope: !3563)
!3625 = !DILocation(line: 1311, column: 13, scope: !3555)
!3626 = !DILocation(line: 1316, column: 9, scope: !3555)
!3627 = !DILocation(line: 1317, column: 35, scope: !3555)
!3628 = !DILocation(line: 1317, column: 37, scope: !3555)
!3629 = !DILocation(line: 1317, column: 55, scope: !3555)
!3630 = !DILocation(line: 1294, column: 15, scope: !3541)
!3631 = !DILocation(line: 1317, column: 14, scope: !3555)
!3632 = !DILocation(line: 1293, column: 9, scope: !3541)
!3633 = !DILocation(line: 1318, column: 14, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 1318, column: 13)
!3635 = !DILocation(line: 1318, column: 20, scope: !3634)
!3636 = !DILocation(line: 1318, column: 23, scope: !3634)
!3637 = !DILocation(line: 1318, column: 17, scope: !3634)
!3638 = !DILocation(line: 384, column: 28, scope: !1649, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 1319, column: 13, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3634, file: !3, line: 1318, column: 36)
!3641 = !DILocation(line: 384, column: 43, scope: !1649, inlinedAt: !3639)
!3642 = !DILocation(line: 385, column: 31, scope: !1649, inlinedAt: !3639)
!3643 = !DILocation(line: 385, column: 5, scope: !1649, inlinedAt: !3639)
!3644 = !DILocation(line: 1320, column: 13, scope: !3640)
!3645 = !DILocation(line: 1321, column: 13, scope: !3640)
!3646 = !DILocation(line: 1324, column: 33, scope: !3555)
!3647 = !DILocation(line: 1324, column: 29, scope: !3555)
!3648 = !DILocation(line: 1324, column: 42, scope: !3555)
!3649 = !DILocation(line: 1324, column: 19, scope: !3555)
!3650 = !DILocation(line: 1326, column: 16, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 1326, column: 13)
!3652 = !DILocation(line: 1326, column: 13, scope: !3555)
!3653 = !DILocation(line: 1328, column: 27, scope: !3555)
!3654 = !DILocation(line: 1328, column: 25, scope: !3555)
!3655 = !DILocation(line: 1331, column: 16, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3555, file: !3, line: 1331, column: 13)
!3657 = !DILocation(line: 1331, column: 13, scope: !3656)
!3658 = !DILocation(line: 1331, column: 13, scope: !3555)
!3659 = !DILocation(line: 1331, column: 28, scope: !3656)
!3660 = !DILocation(line: 1331, column: 22, scope: !3656)
!3661 = !DILocation(line: 1332, column: 44, scope: !3555)
!3662 = !DILocation(line: 1332, column: 41, scope: !3555)
!3663 = !DILocation(line: 1332, column: 40, scope: !3555)
!3664 = !DILocation(line: 1332, column: 19, scope: !3555)
!3665 = !DILocation(line: 1332, column: 17, scope: !3555)
!3666 = !DILocation(line: 1335, column: 5, scope: !3541)
!3667 = !DILocation(line: 1333, column: 5, scope: !3555)
!3668 = !DILocation(line: 1338, column: 16, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 1338, column: 13)
!3670 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 1336, column: 28)
!3671 = !DILocation(line: 1336, column: 5, scope: !3541)
!3672 = !DILocation(line: 1338, column: 24, scope: !3669)
!3673 = !DILocation(line: 0, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3670, file: !3, line: 1392, column: 13)
!3675 = !DILocation(line: 1338, column: 13, scope: !3670)
!3676 = !DILocation(line: 1339, column: 45, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3669, file: !3, line: 1338, column: 31)
!3678 = !DILocation(line: 1339, column: 41, scope: !3677)
!3679 = !DILocation(line: 1339, column: 23, scope: !3677)
!3680 = !DILocation(line: 1340, column: 25, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 1340, column: 17)
!3682 = !DILocation(line: 0, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 1351, column: 17)
!3684 = !DILocation(line: 1340, column: 17, scope: !3677)
!3685 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 1341, column: 21, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3688, file: !3, line: 1341, column: 21)
!3688 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 1340, column: 34)
!3689 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !3686)
!3690 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !3686)
!3691 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !3686)
!3692 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !3686)
!3693 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !3686)
!3694 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !3686)
!3695 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !3686)
!3696 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !3686)
!3697 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !3686)
!3698 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !3686)
!3699 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !3686)
!3700 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !3686)
!3701 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !3686)
!3702 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !3686)
!3703 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !3686)
!3704 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !3686)
!3705 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !3686)
!3706 = !DILocation(line: 0, scope: !848, inlinedAt: !3686)
!3707 = !DILocation(line: 1341, column: 44, scope: !3687)
!3708 = !DILocation(line: 1341, column: 40, scope: !3687)
!3709 = !DILocation(line: 1341, column: 51, scope: !3687)
!3710 = !DILocation(line: 1341, column: 21, scope: !3688)
!3711 = !DILocation(line: 384, column: 28, scope: !1649, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 1342, column: 21, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3687, file: !3, line: 1341, column: 76)
!3714 = !DILocation(line: 384, column: 43, scope: !1649, inlinedAt: !3712)
!3715 = !DILocation(line: 385, column: 31, scope: !1649, inlinedAt: !3712)
!3716 = !DILocation(line: 385, column: 5, scope: !1649, inlinedAt: !3712)
!3717 = !DILocation(line: 1344, column: 21, scope: !3713)
!3718 = !DILocation(line: 1345, column: 21, scope: !3713)
!3719 = !DILocation(line: 1351, column: 41, scope: !3683)
!3720 = !DILocation(line: 1351, column: 37, scope: !3683)
!3721 = !DILocation(line: 1351, column: 24, scope: !3683)
!3722 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 1351, column: 61, scope: !3683)
!3724 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !3723)
!3725 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !3723)
!3726 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !3723)
!3727 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !3723)
!3728 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !3723)
!3729 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !3723)
!3730 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !3723)
!3731 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !3723)
!3732 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !3723)
!3733 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !3723)
!3734 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !3723)
!3735 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !3723)
!3736 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !3723)
!3737 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !3723)
!3738 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !3723)
!3739 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !3723)
!3740 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !3723)
!3741 = !DILocation(line: 0, scope: !848, inlinedAt: !3723)
!3742 = !DILocation(line: 1351, column: 80, scope: !3683)
!3743 = !DILocation(line: 1351, column: 90, scope: !3683)
!3744 = !DILocation(line: 1351, column: 49, scope: !3683)
!3745 = !DILocation(line: 1351, column: 17, scope: !3677)
!3746 = !DILocation(line: 1354, column: 17, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 1354, column: 17)
!3748 = !DILocation(line: 1354, column: 40, scope: !3747)
!3749 = !DILocation(line: 1354, column: 17, scope: !3677)
!3750 = !DILocation(line: 1355, column: 17, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3747, file: !3, line: 1354, column: 48)
!3752 = !DILocation(line: 1358, column: 17, scope: !3751)
!3753 = !DILocation(line: 1359, column: 17, scope: !3751)
!3754 = !DILocation(line: 1362, column: 49, scope: !3677)
!3755 = !DILocation(line: 1362, column: 59, scope: !3677)
!3756 = !DILocation(line: 1362, column: 18, scope: !3677)
!3757 = !DILocation(line: 1363, column: 18, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 1363, column: 17)
!3759 = !DILocation(line: 1363, column: 24, scope: !3758)
!3760 = !DILocation(line: 1363, column: 27, scope: !3758)
!3761 = !DILocation(line: 1363, column: 21, scope: !3758)
!3762 = !DILocation(line: 1363, column: 46, scope: !3758)
!3763 = !DILocation(line: 1363, column: 37, scope: !3758)
!3764 = !DILocation(line: 384, column: 28, scope: !1649, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 1364, column: 17, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3758, file: !3, line: 1363, column: 66)
!3767 = !DILocation(line: 384, column: 43, scope: !1649, inlinedAt: !3765)
!3768 = !DILocation(line: 385, column: 31, scope: !1649, inlinedAt: !3765)
!3769 = !DILocation(line: 385, column: 5, scope: !1649, inlinedAt: !3765)
!3770 = !DILocation(line: 1365, column: 17, scope: !3766)
!3771 = !DILocation(line: 1366, column: 17, scope: !3766)
!3772 = !DILocation(line: 1369, column: 36, scope: !3677)
!3773 = !DILocation(line: 1369, column: 32, scope: !3677)
!3774 = !DILocation(line: 1369, column: 44, scope: !3677)
!3775 = !DILocation(line: 1369, column: 23, scope: !3677)
!3776 = !DILocation(line: 1370, column: 20, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 1370, column: 17)
!3778 = !DILocation(line: 1370, column: 17, scope: !3677)
!3779 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !3780)
!3780 = distinct !DILocation(line: 1380, column: 21, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 1380, column: 21)
!3782 = distinct !DILexicalBlock(scope: !3777, file: !3, line: 1370, column: 44)
!3783 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !3780)
!3784 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !3780)
!3785 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !3780)
!3786 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !3780)
!3787 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !3780)
!3788 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !3780)
!3789 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !3780)
!3790 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !3780)
!3791 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !3780)
!3792 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !3780)
!3793 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !3780)
!3794 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !3780)
!3795 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !3780)
!3796 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !3780)
!3797 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !3780)
!3798 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !3780)
!3799 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !3780)
!3800 = !DILocation(line: 0, scope: !848, inlinedAt: !3780)
!3801 = !DILocation(line: 1380, column: 40, scope: !3781)
!3802 = !DILocation(line: 1380, column: 64, scope: !3781)
!3803 = !DILocation(line: 1380, column: 51, scope: !3781)
!3804 = !DILocation(line: 1380, column: 21, scope: !3782)
!3805 = !DILocation(line: 1381, column: 21, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3781, file: !3, line: 1380, column: 68)
!3807 = !DILocation(line: 1382, column: 31, scope: !3806)
!3808 = !DILocation(line: 1385, column: 53, scope: !3806)
!3809 = !DILocation(line: 1385, column: 62, scope: !3806)
!3810 = !DILocation(line: 1385, column: 64, scope: !3806)
!3811 = !DILocation(line: 1385, column: 35, scope: !3806)
!3812 = !DILocation(line: 1385, column: 33, scope: !3806)
!3813 = !DILocation(line: 1388, column: 26, scope: !3677)
!3814 = !DILocation(line: 1386, column: 17, scope: !3806)
!3815 = !DILocation(line: 1388, column: 24, scope: !3677)
!3816 = !DILocation(line: 1389, column: 9, scope: !3677)
!3817 = !DILocation(line: 1392, column: 23, scope: !3674)
!3818 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 1392, column: 13, scope: !3674)
!3820 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !3819)
!3821 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !3819)
!3822 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !3819)
!3823 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !3819)
!3824 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !3819)
!3825 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !3819)
!3826 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !3819)
!3827 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !3819)
!3828 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !3819)
!3829 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !3819)
!3830 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !3819)
!3831 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !3819)
!3832 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !3819)
!3833 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !3819)
!3834 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !3819)
!3835 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !3819)
!3836 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !3819)
!3837 = !DILocation(line: 0, scope: !848, inlinedAt: !3819)
!3838 = !DILocation(line: 1392, column: 36, scope: !3674)
!3839 = !DILocation(line: 1392, column: 32, scope: !3674)
!3840 = !DILocation(line: 1392, column: 64, scope: !3674)
!3841 = !DILocation(line: 1392, column: 43, scope: !3674)
!3842 = !DILocation(line: 1392, column: 13, scope: !3670)
!3843 = !DILocation(line: 1399, column: 27, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 1399, column: 17)
!3845 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 1395, column: 16)
!3846 = !DILocation(line: 1400, column: 28, scope: !3844)
!3847 = !DILocation(line: 1399, column: 32, scope: !3844)
!3848 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !3849)
!3849 = distinct !DILocation(line: 1401, column: 17, scope: !3844)
!3850 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !3849)
!3851 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !3849)
!3852 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !3849)
!3853 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !3849)
!3854 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !3849)
!3855 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !3849)
!3856 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !3849)
!3857 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !3849)
!3858 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !3849)
!3859 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !3849)
!3860 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !3849)
!3861 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !3849)
!3862 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !3849)
!3863 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !3849)
!3864 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !3849)
!3865 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !3849)
!3866 = !DILocation(line: 0, scope: !848, inlinedAt: !3849)
!3867 = !DILocation(line: 1401, column: 37, scope: !3844)
!3868 = !DILocation(line: 1399, column: 17, scope: !3845)
!3869 = !DILocation(line: 1403, column: 38, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3844, file: !3, line: 1402, column: 13)
!3871 = !DILocation(line: 1403, column: 20, scope: !3870)
!3872 = !DILocation(line: 1403, column: 32, scope: !3870)
!3873 = !DILocation(line: 1403, column: 17, scope: !3870)
!3874 = !DILocation(line: 1403, column: 36, scope: !3870)
!3875 = !DILocation(line: 1404, column: 31, scope: !3870)
!3876 = !DILocation(line: 1404, column: 17, scope: !3870)
!3877 = !DILocation(line: 1407, column: 41, scope: !3870)
!3878 = !DILocation(line: 1407, column: 55, scope: !3870)
!3879 = !DILocation(line: 1407, column: 62, scope: !3870)
!3880 = !DILocation(line: 1407, column: 31, scope: !3870)
!3881 = !DILocation(line: 1407, column: 29, scope: !3870)
!3882 = !DILocation(line: 1408, column: 17, scope: !3870)
!3883 = !DILocation(line: 1409, column: 13, scope: !3870)
!3884 = !DILocation(line: 1411, column: 51, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3844, file: !3, line: 1409, column: 20)
!3886 = !DILocation(line: 1411, column: 21, scope: !3885)
!3887 = !DILocation(line: 1410, column: 20, scope: !3885)
!3888 = !DILocation(line: 1410, column: 32, scope: !3885)
!3889 = !DILocation(line: 1410, column: 17, scope: !3885)
!3890 = !DILocation(line: 1410, column: 36, scope: !3885)
!3891 = !DILocation(line: 1412, column: 33, scope: !3885)
!3892 = !DILocation(line: 1412, column: 40, scope: !3885)
!3893 = !DILocation(line: 1412, column: 27, scope: !3885)
!3894 = !DILocation(line: 1414, column: 24, scope: !3845)
!3895 = !DILocation(line: 1415, column: 28, scope: !3845)
!3896 = distinct !{!3896, !3671, !3897}
!3897 = !DILocation(line: 1417, column: 5, scope: !3541)
!3898 = !DILocation(line: 1420, column: 12, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 1420, column: 9)
!3900 = !DILocation(line: 1420, column: 25, scope: !3899)
!3901 = !DILocation(line: 1420, column: 31, scope: !3899)
!3902 = !DILocation(line: 0, scope: !3766)
!3903 = !DILocation(line: 1424, column: 1, scope: !3541)
!3904 = distinct !DISubprogram(name: "processInputBuffer", scope: !3, file: !3, line: 1430, type: !4, isLocal: false, isDefinition: true, scopeLine: 1430, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3905)
!3905 = !{!3906}
!3906 = !DILocalVariable(name: "c", arg: 1, scope: !3904, file: !3, line: 1430, type: !6)
!3907 = !DILocation(line: 1430, column: 33, scope: !3904)
!3908 = !DILocation(line: 1431, column: 27, scope: !3904)
!3909 = !DILocation(line: 1434, column: 5, scope: !3904)
!3910 = !DILocation(line: 1434, column: 14, scope: !3904)
!3911 = !DILocation(line: 1434, column: 33, scope: !3904)
!3912 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 1434, column: 23, scope: !3904)
!3914 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !3913)
!3915 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !3913)
!3916 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !3913)
!3917 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !3913)
!3918 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !3913)
!3919 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !3913)
!3920 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !3913)
!3921 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !3913)
!3922 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !3913)
!3923 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !3913)
!3924 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !3913)
!3925 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !3913)
!3926 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !3913)
!3927 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !3913)
!3928 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !3913)
!3929 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !3913)
!3930 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !3913)
!3931 = !DILocation(line: 0, scope: !848, inlinedAt: !3913)
!3932 = !DILocation(line: 1434, column: 21, scope: !3904)
!3933 = !DILocation(line: 1436, column: 18, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 1436, column: 13)
!3935 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 1434, column: 44)
!3936 = !DILocation(line: 1436, column: 24, scope: !3934)
!3937 = !DILocation(line: 2206, column: 16, scope: !3938, inlinedAt: !3945)
!3938 = distinct !DILexicalBlock(scope: !3939, file: !3, line: 2206, column: 9)
!3939 = distinct !DISubprogram(name: "clientsArePaused", scope: !3, file: !3, line: 2205, type: !3094, isLocal: false, isDefinition: true, scopeLine: 2205, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !3940)
!3940 = !{!3941, !3943, !3944}
!3941 = !DILocalVariable(name: "ln", scope: !3942, file: !3, line: 2209, type: !103)
!3942 = distinct !DILexicalBlock(scope: !3938, file: !3, line: 2208, column: 5)
!3943 = !DILocalVariable(name: "li", scope: !3942, file: !3, line: 2210, type: !3098)
!3944 = !DILocalVariable(name: "c", scope: !3942, file: !3, line: 2211, type: !6)
!3945 = distinct !DILocation(line: 1436, column: 43, scope: !3934)
!3946 = !DILocation(line: 2206, column: 9, scope: !3938, inlinedAt: !3945)
!3947 = !DILocation(line: 1436, column: 40, scope: !3934)
!3948 = !DILocation(line: 2207, column: 16, scope: !3938, inlinedAt: !3945)
!3949 = !{!441, !442, i64 576}
!3950 = !DILocation(line: 2207, column: 48, scope: !3938, inlinedAt: !3945)
!3951 = !{!441, !442, i64 2896}
!3952 = !DILocation(line: 2207, column: 39, scope: !3938, inlinedAt: !3945)
!3953 = !DILocation(line: 2206, column: 9, scope: !3939, inlinedAt: !3945)
!3954 = !DILocation(line: 2210, column: 9, scope: !3942, inlinedAt: !3945)
!3955 = !DILocation(line: 2213, column: 31, scope: !3942, inlinedAt: !3945)
!3956 = !{!441, !378, i64 568}
!3957 = !DILocation(line: 2217, column: 27, scope: !3942, inlinedAt: !3945)
!3958 = !DILocation(line: 2210, column: 18, scope: !3942, inlinedAt: !3945)
!3959 = !DILocation(line: 2217, column: 9, scope: !3942, inlinedAt: !3945)
!3960 = !DILocation(line: 2218, column: 22, scope: !3942, inlinedAt: !3945)
!3961 = !DILocation(line: 2209, column: 19, scope: !3942, inlinedAt: !3945)
!3962 = !DILocation(line: 2218, column: 37, scope: !3942, inlinedAt: !3945)
!3963 = !DILocation(line: 2218, column: 9, scope: !3942, inlinedAt: !3945)
!3964 = !DILocation(line: 2219, column: 17, scope: !3965, inlinedAt: !3945)
!3965 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 2218, column: 46)
!3966 = !DILocation(line: 2211, column: 17, scope: !3942, inlinedAt: !3945)
!3967 = !DILocation(line: 2223, column: 20, scope: !3968, inlinedAt: !3945)
!3968 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 2223, column: 17)
!3969 = !DILocation(line: 2223, column: 26, scope: !3968, inlinedAt: !3945)
!3970 = !DILocation(line: 2223, column: 17, scope: !3965, inlinedAt: !3945)
!3971 = !DILocation(line: 2224, column: 13, scope: !3965, inlinedAt: !3945)
!3972 = distinct !{!3972, !3973, !3974}
!3973 = !DILocation(line: 2218, column: 9, scope: !3942)
!3974 = !DILocation(line: 2225, column: 9, scope: !3942)
!3975 = !DILocation(line: 2226, column: 5, scope: !3938, inlinedAt: !3945)
!3976 = !DILocation(line: 2227, column: 19, scope: !3939, inlinedAt: !3945)
!3977 = !DILocation(line: 1436, column: 43, scope: !3934)
!3978 = !DILocation(line: 1436, column: 13, scope: !3935)
!3979 = !DILocation(line: 1439, column: 16, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 1439, column: 13)
!3981 = !DILocation(line: 1439, column: 22, scope: !3980)
!3982 = !DILocation(line: 1439, column: 13, scope: !3935)
!3983 = !DILocation(line: 1445, column: 20, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 1445, column: 13)
!3985 = !{!441, !378, i64 3068}
!3986 = !DILocation(line: 1445, column: 13, scope: !3984)
!3987 = !DILocation(line: 1445, column: 45, scope: !3984)
!3988 = !DILocation(line: 1445, column: 33, scope: !3984)
!3989 = !DILocation(line: 1452, column: 22, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 1452, column: 13)
!3991 = !DILocation(line: 1455, column: 17, scope: !3992)
!3992 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 1455, column: 13)
!3993 = !DILocation(line: 1455, column: 13, scope: !3935)
!3994 = !DILocation(line: 1456, column: 20, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !3, line: 1456, column: 17)
!3996 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 1455, column: 26)
!3997 = !DILocation(line: 1456, column: 32, scope: !3995)
!3998 = !DILocation(line: 1456, column: 17, scope: !3995)
!3999 = !DILocation(line: 1456, column: 40, scope: !3995)
!4000 = !DILocation(line: 1456, column: 17, scope: !3996)
!4001 = !DILocation(line: 1457, column: 28, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3995, file: !3, line: 1456, column: 48)
!4003 = !DILocation(line: 1463, column: 13, scope: !3935)
!4004 = !DILocation(line: 1459, column: 28, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3995, file: !3, line: 1458, column: 20)
!4006 = !DILocation(line: 1464, column: 17, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !4008, file: !3, line: 1464, column: 17)
!4008 = distinct !DILexicalBlock(scope: !4009, file: !3, line: 1463, column: 45)
!4009 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 1463, column: 13)
!4010 = !DILocation(line: 1464, column: 40, scope: !4007)
!4011 = !DILocation(line: 1464, column: 17, scope: !4008)
!4012 = !DILocation(line: 1466, column: 17, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4014, file: !3, line: 1466, column: 17)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 1465, column: 55)
!4015 = distinct !DILexicalBlock(scope: !4009, file: !3, line: 1465, column: 20)
!4016 = !DILocation(line: 1466, column: 43, scope: !4013)
!4017 = !DILocation(line: 1466, column: 17, scope: !4014)
!4018 = !DILocation(line: 1468, column: 13, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 1467, column: 16)
!4020 = !DILocation(line: 1472, column: 16, scope: !4021)
!4021 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 1472, column: 13)
!4022 = !DILocation(line: 1472, column: 21, scope: !4021)
!4023 = !DILocation(line: 1472, column: 13, scope: !3935)
!4024 = !DILocation(line: 1131, column: 26, scope: !3167, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 1473, column: 13, scope: !4026)
!4026 = distinct !DILexicalBlock(scope: !4021, file: !3, line: 1472, column: 27)
!4027 = !DILocation(line: 1132, column: 36, scope: !3167, inlinedAt: !4025)
!4028 = !DILocation(line: 1132, column: 33, scope: !3167, inlinedAt: !4025)
!4029 = !DILocation(line: 1132, column: 50, scope: !3167, inlinedAt: !4025)
!4030 = !DILocation(line: 779, column: 36, scope: !2678, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 1134, column: 5, scope: !3167, inlinedAt: !4025)
!4032 = !DILocation(line: 780, column: 9, scope: !2678, inlinedAt: !4031)
!4033 = !DILocation(line: 783, column: 13, scope: !2678, inlinedAt: !4031)
!4034 = !DILocation(line: 784, column: 12, scope: !2678, inlinedAt: !4031)
!4035 = !DILocation(line: 1135, column: 16, scope: !3167, inlinedAt: !4025)
!4036 = !DILocation(line: 1136, column: 21, scope: !3167, inlinedAt: !4025)
!4037 = !DILocation(line: 1137, column: 16, scope: !3167, inlinedAt: !4025)
!4038 = !DILocation(line: 1141, column: 14, scope: !3195, inlinedAt: !4025)
!4039 = !DILocation(line: 1141, column: 20, scope: !3195, inlinedAt: !4025)
!4040 = !DILocation(line: 1141, column: 36, scope: !3195, inlinedAt: !4025)
!4041 = !DILocation(line: 1142, column: 18, scope: !3195, inlinedAt: !4025)
!4042 = !DILocation(line: 1142, column: 9, scope: !3195, inlinedAt: !4025)
!4043 = !DILocation(line: 1147, column: 14, scope: !3167, inlinedAt: !4025)
!4044 = !DILocation(line: 1148, column: 18, scope: !3202, inlinedAt: !4025)
!4045 = !DILocation(line: 1150, column: 18, scope: !3204, inlinedAt: !4025)
!4046 = !DILocation(line: 1148, column: 9, scope: !3167, inlinedAt: !4025)
!4047 = !DILocation(line: 0, scope: !3167, inlinedAt: !4025)
!4048 = !DILocation(line: 1474, column: 9, scope: !4026)
!4049 = !DILocation(line: 1476, column: 17, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4051, file: !3, line: 1476, column: 17)
!4051 = distinct !DILexicalBlock(scope: !4021, file: !3, line: 1474, column: 16)
!4052 = !DILocation(line: 1476, column: 35, scope: !4050)
!4053 = !DILocation(line: 1476, column: 17, scope: !4051)
!4054 = !DILocation(line: 1477, column: 24, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4056, file: !3, line: 1477, column: 21)
!4056 = distinct !DILexicalBlock(scope: !4050, file: !3, line: 1476, column: 44)
!4057 = !DILocation(line: 1477, column: 46, scope: !4055)
!4058 = !DILocation(line: 1479, column: 37, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4055, file: !3, line: 1477, column: 77)
!4060 = !DILocation(line: 1479, column: 62, scope: !4059)
!4061 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 1479, column: 52, scope: !4059)
!4063 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !4062)
!4064 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !4062)
!4065 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !4062)
!4066 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !4062)
!4067 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !4062)
!4068 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !4062)
!4069 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !4062)
!4070 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !4062)
!4071 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !4062)
!4072 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !4062)
!4073 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !4062)
!4074 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !4062)
!4075 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !4062)
!4076 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !4062)
!4077 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !4062)
!4078 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !4062)
!4079 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !4062)
!4080 = !DILocation(line: 0, scope: !848, inlinedAt: !4062)
!4081 = !DILocation(line: 1479, column: 50, scope: !4059)
!4082 = !DILocation(line: 1479, column: 77, scope: !4059)
!4083 = !DILocation(line: 1479, column: 72, scope: !4059)
!4084 = !DILocation(line: 1479, column: 32, scope: !4059)
!4085 = !DILocation(line: 1480, column: 17, scope: !4059)
!4086 = !DILocation(line: 1486, column: 32, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4056, file: !3, line: 1486, column: 21)
!4088 = !DILocation(line: 1486, column: 50, scope: !4087)
!4089 = !DILocation(line: 1486, column: 56, scope: !4087)
!4090 = !DILocation(line: 1486, column: 62, scope: !4087)
!4091 = !DILocation(line: 1486, column: 21, scope: !4056)
!4092 = !DILocation(line: 1131, column: 26, scope: !3167, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 1487, column: 21, scope: !4087)
!4094 = !DILocation(line: 1132, column: 36, scope: !3167, inlinedAt: !4093)
!4095 = !DILocation(line: 1132, column: 33, scope: !3167, inlinedAt: !4093)
!4096 = !DILocation(line: 1132, column: 50, scope: !3167, inlinedAt: !4093)
!4097 = !DILocation(line: 779, column: 36, scope: !2678, inlinedAt: !4098)
!4098 = distinct !DILocation(line: 1134, column: 5, scope: !3167, inlinedAt: !4093)
!4099 = !DILocation(line: 780, column: 9, scope: !2678, inlinedAt: !4098)
!4100 = !DILocation(line: 781, column: 24, scope: !2685, inlinedAt: !4098)
!4101 = !DILocation(line: 781, column: 19, scope: !2685, inlinedAt: !4098)
!4102 = !DILocation(line: 781, column: 5, scope: !2686, inlinedAt: !4098)
!4103 = !DILocation(line: 782, column: 25, scope: !2685, inlinedAt: !4098)
!4104 = !DILocation(line: 782, column: 22, scope: !2685, inlinedAt: !4098)
!4105 = !DILocation(line: 782, column: 9, scope: !2685, inlinedAt: !4098)
!4106 = !DILocation(line: 781, column: 31, scope: !2685, inlinedAt: !4098)
!4107 = !DILocation(line: 1141, column: 14, scope: !3195, inlinedAt: !4093)
!4108 = !DILocation(line: 783, column: 13, scope: !2678, inlinedAt: !4098)
!4109 = !DILocation(line: 784, column: 12, scope: !2678, inlinedAt: !4098)
!4110 = !DILocation(line: 1135, column: 16, scope: !3167, inlinedAt: !4093)
!4111 = !DILocation(line: 1136, column: 21, scope: !3167, inlinedAt: !4093)
!4112 = !DILocation(line: 1137, column: 16, scope: !3167, inlinedAt: !4093)
!4113 = !DILocation(line: 1141, column: 20, scope: !3195, inlinedAt: !4093)
!4114 = !DILocation(line: 1141, column: 36, scope: !3195, inlinedAt: !4093)
!4115 = !DILocation(line: 1142, column: 18, scope: !3195, inlinedAt: !4093)
!4116 = !DILocation(line: 1142, column: 9, scope: !3195, inlinedAt: !4093)
!4117 = !DILocation(line: 1147, column: 14, scope: !3167, inlinedAt: !4093)
!4118 = !DILocation(line: 1148, column: 18, scope: !3202, inlinedAt: !4093)
!4119 = !DILocation(line: 1150, column: 18, scope: !3204, inlinedAt: !4093)
!4120 = !DILocation(line: 1148, column: 9, scope: !3167, inlinedAt: !4093)
!4121 = !DILocation(line: 0, scope: !3167, inlinedAt: !4093)
!4122 = !DILocation(line: 1487, column: 21, scope: !4087)
!4123 = !DILocation(line: 1492, column: 24, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4051, file: !3, line: 1492, column: 17)
!4125 = !DILocation(line: 1492, column: 39, scope: !4124)
!4126 = !DILocation(line: 1492, column: 17, scope: !4051)
!4127 = distinct !{!4127, !3909, !4128}
!4128 = !DILocation(line: 1494, column: 5, scope: !3904)
!4129 = !DILocation(line: 1497, column: 16, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !3904, file: !3, line: 1497, column: 9)
!4131 = !DILocation(line: 1497, column: 31, scope: !4130)
!4132 = !DILocation(line: 1497, column: 39, scope: !4130)
!4133 = !DILocation(line: 1497, column: 45, scope: !4130)
!4134 = !DILocation(line: 1497, column: 42, scope: !4130)
!4135 = !DILocation(line: 1497, column: 9, scope: !3904)
!4136 = !DILocation(line: 1498, column: 21, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 1497, column: 53)
!4138 = !DILocation(line: 1498, column: 9, scope: !4137)
!4139 = !DILocation(line: 1499, column: 19, scope: !4137)
!4140 = !DILocation(line: 1500, column: 5, scope: !4137)
!4141 = !DILocation(line: 1502, column: 27, scope: !3904)
!4142 = !DILocation(line: 1503, column: 1, scope: !3904)
!4143 = !DILocation(line: 2206, column: 16, scope: !3938)
!4144 = !DILocation(line: 2206, column: 9, scope: !3938)
!4145 = !DILocation(line: 2206, column: 31, scope: !3938)
!4146 = !DILocation(line: 2207, column: 16, scope: !3938)
!4147 = !DILocation(line: 2207, column: 48, scope: !3938)
!4148 = !DILocation(line: 2207, column: 39, scope: !3938)
!4149 = !DILocation(line: 2206, column: 9, scope: !3939)
!4150 = !DILocation(line: 2210, column: 9, scope: !3942)
!4151 = !DILocation(line: 2213, column: 31, scope: !3942)
!4152 = !DILocation(line: 2217, column: 27, scope: !3942)
!4153 = !DILocation(line: 2210, column: 18, scope: !3942)
!4154 = !DILocation(line: 2217, column: 9, scope: !3942)
!4155 = !DILocation(line: 2218, column: 22, scope: !3942)
!4156 = !DILocation(line: 2209, column: 19, scope: !3942)
!4157 = !DILocation(line: 2218, column: 37, scope: !3942)
!4158 = !DILocation(line: 2219, column: 17, scope: !3965)
!4159 = !DILocation(line: 2211, column: 17, scope: !3942)
!4160 = !DILocation(line: 2223, column: 20, scope: !3968)
!4161 = !DILocation(line: 2223, column: 26, scope: !3968)
!4162 = !DILocation(line: 2223, column: 17, scope: !3965)
!4163 = !DILocation(line: 2224, column: 13, scope: !3965)
!4164 = !DILocation(line: 2226, column: 5, scope: !3938)
!4165 = !DILocation(line: 2227, column: 19, scope: !3939)
!4166 = !DILocation(line: 2226, column: 5, scope: !3942)
!4167 = !DILocation(line: 2227, column: 5, scope: !3939)
!4168 = !DILocation(line: 1509, column: 45, scope: !986)
!4169 = !DILocation(line: 1510, column: 14, scope: !990)
!4170 = !DILocation(line: 1510, column: 20, scope: !990)
!4171 = !DILocation(line: 1510, column: 9, scope: !986)
!4172 = !DILocation(line: 1511, column: 9, scope: !996)
!4173 = !DILocation(line: 1512, column: 5, scope: !996)
!4174 = !DILocation(line: 1513, column: 33, scope: !989)
!4175 = !DILocation(line: 1513, column: 16, scope: !989)
!4176 = !DILocation(line: 1514, column: 9, scope: !989)
!4177 = !DILocation(line: 1515, column: 29, scope: !989)
!4178 = !DILocation(line: 1515, column: 37, scope: !989)
!4179 = !DILocation(line: 1515, column: 16, scope: !989)
!4180 = !DILocation(line: 1516, column: 13, scope: !1006)
!4181 = !DILocation(line: 1516, column: 13, scope: !989)
!4182 = !DILocation(line: 1517, column: 58, scope: !1009)
!4183 = !DILocation(line: 1518, column: 24, scope: !1009)
!4184 = !DILocation(line: 1517, column: 13, scope: !1009)
!4185 = !DILocation(line: 1519, column: 25, scope: !1009)
!4186 = !DILocation(line: 1519, column: 13, scope: !1009)
!4187 = !DILocation(line: 1520, column: 9, scope: !1009)
!4188 = !DILocation(line: 1522, column: 1, scope: !986)
!4189 = distinct !DISubprogram(name: "catClientInfoString", scope: !3, file: !3, line: 1652, type: !4190, isLocal: false, isDefinition: true, scopeLine: 1652, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4192)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!137, !137, !6}
!4192 = !{!4193, !4194, !4195, !4196, !4200, !4201}
!4193 = !DILocalVariable(name: "s", arg: 1, scope: !4189, file: !3, line: 1652, type: !137)
!4194 = !DILocalVariable(name: "client", arg: 2, scope: !4189, file: !3, line: 1652, type: !6)
!4195 = !DILocalVariable(name: "flags", scope: !4189, file: !3, line: 1653, type: !334)
!4196 = !DILocalVariable(name: "events", scope: !4189, file: !3, line: 1653, type: !4197)
!4197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 24, elements: !4198)
!4198 = !{!4199}
!4199 = !DISubrange(count: 3)
!4200 = !DILocalVariable(name: "p", scope: !4189, file: !3, line: 1653, type: !139)
!4201 = !DILocalVariable(name: "emask", scope: !4189, file: !3, line: 1654, type: !18)
!4202 = !DILocalVariable(name: "peerid", scope: !4203, file: !3, line: 1641, type: !4208)
!4203 = distinct !DISubprogram(name: "getClientPeerId", scope: !3, file: !3, line: 1640, type: !4204, isLocal: false, isDefinition: true, scopeLine: 1640, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4206)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!139, !6}
!4206 = !{!4207, !4202}
!4207 = !DILocalVariable(name: "c", arg: 1, scope: !4203, file: !3, line: 1640, type: !6)
!4208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 624, elements: !4209)
!4209 = !{!4210}
!4210 = !DISubrange(count: 78)
!4211 = !DILocation(line: 1641, column: 10, scope: !4203, inlinedAt: !4212)
!4212 = distinct !DILocation(line: 1684, column: 9, scope: !4189)
!4213 = !DILocation(line: 1652, column: 29, scope: !4189)
!4214 = !DILocation(line: 1652, column: 40, scope: !4189)
!4215 = !DILocation(line: 1653, column: 5, scope: !4189)
!4216 = !DILocation(line: 1653, column: 10, scope: !4189)
!4217 = !DILocation(line: 1653, column: 21, scope: !4189)
!4218 = !DILocation(line: 1653, column: 33, scope: !4189)
!4219 = !DILocation(line: 1657, column: 17, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 1657, column: 9)
!4221 = !DILocation(line: 1657, column: 23, scope: !4220)
!4222 = !DILocation(line: 1657, column: 9, scope: !4189)
!4223 = !DILocation(line: 1658, column: 27, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 1658, column: 13)
!4225 = distinct !DILexicalBlock(scope: !4220, file: !3, line: 1657, column: 39)
!4226 = !DILocation(line: 0, scope: !4224)
!4227 = !DILocation(line: 1663, column: 23, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 1663, column: 9)
!4229 = !DILocation(line: 1663, column: 9, scope: !4189)
!4230 = !DILocation(line: 1663, column: 42, scope: !4228)
!4231 = !DILocation(line: 1663, column: 45, scope: !4228)
!4232 = !DILocation(line: 1663, column: 40, scope: !4228)
!4233 = !DILocation(line: 1664, column: 23, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 1664, column: 9)
!4235 = !DILocation(line: 1664, column: 9, scope: !4189)
!4236 = !DILocation(line: 1664, column: 42, scope: !4234)
!4237 = !DILocation(line: 1664, column: 45, scope: !4234)
!4238 = !DILocation(line: 1664, column: 40, scope: !4234)
!4239 = !DILocation(line: 1665, column: 23, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 1665, column: 9)
!4241 = !DILocation(line: 1665, column: 9, scope: !4189)
!4242 = !DILocation(line: 1665, column: 41, scope: !4240)
!4243 = !DILocation(line: 1665, column: 44, scope: !4240)
!4244 = !DILocation(line: 1665, column: 39, scope: !4240)
!4245 = !DILocation(line: 1666, column: 23, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 1666, column: 9)
!4247 = !DILocation(line: 1666, column: 9, scope: !4189)
!4248 = !DILocation(line: 1666, column: 43, scope: !4246)
!4249 = !DILocation(line: 1666, column: 46, scope: !4246)
!4250 = !DILocation(line: 1666, column: 41, scope: !4246)
!4251 = !DILocation(line: 1667, column: 23, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 1667, column: 9)
!4253 = !DILocation(line: 1667, column: 9, scope: !4189)
!4254 = !DILocation(line: 1667, column: 45, scope: !4252)
!4255 = !DILocation(line: 1667, column: 48, scope: !4252)
!4256 = !DILocation(line: 1667, column: 43, scope: !4252)
!4257 = !DILocation(line: 1668, column: 23, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 1668, column: 9)
!4259 = !DILocation(line: 1668, column: 9, scope: !4189)
!4260 = !DILocation(line: 1668, column: 53, scope: !4258)
!4261 = !DILocation(line: 1668, column: 56, scope: !4258)
!4262 = !DILocation(line: 1668, column: 51, scope: !4258)
!4263 = !DILocation(line: 1669, column: 23, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 1669, column: 9)
!4265 = !DILocation(line: 1669, column: 9, scope: !4189)
!4266 = !DILocation(line: 1669, column: 45, scope: !4264)
!4267 = !DILocation(line: 1669, column: 48, scope: !4264)
!4268 = !DILocation(line: 1669, column: 43, scope: !4264)
!4269 = !DILocation(line: 1670, column: 23, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 1670, column: 9)
!4271 = !DILocation(line: 1670, column: 9, scope: !4189)
!4272 = !DILocation(line: 1670, column: 46, scope: !4270)
!4273 = !DILocation(line: 1670, column: 49, scope: !4270)
!4274 = !DILocation(line: 1670, column: 44, scope: !4270)
!4275 = !DILocation(line: 1671, column: 23, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 1671, column: 9)
!4277 = !DILocation(line: 1671, column: 9, scope: !4189)
!4278 = !DILocation(line: 1671, column: 47, scope: !4276)
!4279 = !DILocation(line: 1671, column: 50, scope: !4276)
!4280 = !DILocation(line: 1671, column: 45, scope: !4276)
!4281 = !DILocation(line: 1672, column: 23, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 1672, column: 9)
!4283 = !DILocation(line: 1672, column: 9, scope: !4189)
!4284 = !DILocation(line: 1672, column: 44, scope: !4282)
!4285 = !DILocation(line: 1672, column: 47, scope: !4282)
!4286 = !DILocation(line: 1673, column: 9, scope: !4189)
!4287 = !DILocation(line: 1673, column: 11, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 1673, column: 9)
!4289 = !DILocation(line: 1673, column: 23, scope: !4288)
!4290 = !DILocation(line: 1673, column: 26, scope: !4288)
!4291 = !DILocation(line: 1673, column: 21, scope: !4288)
!4292 = !DILocation(line: 0, scope: !4282)
!4293 = !DILocation(line: 1674, column: 10, scope: !4189)
!4294 = !DILocation(line: 1676, column: 21, scope: !4189)
!4295 = !DILocation(line: 1676, column: 24, scope: !4189)
!4296 = !DILocation(line: 1676, column: 13, scope: !4189)
!4297 = !DILocation(line: 1676, column: 59, scope: !4189)
!4298 = !DILocation(line: 1676, column: 36, scope: !4189)
!4299 = !DILocation(line: 1654, column: 9, scope: !4189)
!4300 = !DILocation(line: 1678, column: 15, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 1678, column: 9)
!4302 = !DILocation(line: 1678, column: 9, scope: !4189)
!4303 = !DILocation(line: 1678, column: 32, scope: !4301)
!4304 = !DILocation(line: 1678, column: 35, scope: !4301)
!4305 = !DILocation(line: 1678, column: 30, scope: !4301)
!4306 = !DILocation(line: 0, scope: !4189)
!4307 = !DILocation(line: 1679, column: 15, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 1679, column: 9)
!4309 = !DILocation(line: 1679, column: 9, scope: !4189)
!4310 = !DILocation(line: 1679, column: 32, scope: !4308)
!4311 = !DILocation(line: 1679, column: 35, scope: !4308)
!4312 = !DILocation(line: 1679, column: 30, scope: !4308)
!4313 = !DILocation(line: 0, scope: !4301)
!4314 = !DILocation(line: 1680, column: 8, scope: !4189)
!4315 = !DILocation(line: 1683, column: 38, scope: !4189)
!4316 = !DILocation(line: 1640, column: 31, scope: !4203, inlinedAt: !4212)
!4317 = !DILocation(line: 1641, column: 5, scope: !4203, inlinedAt: !4212)
!4318 = !DILocation(line: 1643, column: 12, scope: !4319, inlinedAt: !4212)
!4319 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 1643, column: 9)
!4320 = !DILocation(line: 1643, column: 19, scope: !4319, inlinedAt: !4212)
!4321 = !DILocation(line: 1643, column: 9, scope: !4203, inlinedAt: !4212)
!4322 = !DILocalVariable(name: "client", arg: 1, scope: !4323, file: !3, line: 1625, type: !6)
!4323 = distinct !DISubprogram(name: "genClientPeerId", scope: !3, file: !3, line: 1625, type: !4324, isLocal: false, isDefinition: true, scopeLine: 1626, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4326)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{null, !6, !139, !142}
!4326 = !{!4322, !4327, !4328}
!4327 = !DILocalVariable(name: "peerid", arg: 2, scope: !4323, file: !3, line: 1625, type: !139)
!4328 = !DILocalVariable(name: "peerid_len", arg: 3, scope: !4323, file: !3, line: 1626, type: !142)
!4329 = !DILocation(line: 1625, column: 30, scope: !4323, inlinedAt: !4330)
!4330 = distinct !DILocation(line: 1644, column: 9, scope: !4331, inlinedAt: !4212)
!4331 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 1643, column: 28)
!4332 = !DILocation(line: 1625, column: 44, scope: !4323, inlinedAt: !4330)
!4333 = !DILocation(line: 1626, column: 36, scope: !4323, inlinedAt: !4330)
!4334 = !DILocation(line: 1627, column: 17, scope: !4335, inlinedAt: !4330)
!4335 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 1627, column: 9)
!4336 = !DILocation(line: 1627, column: 23, scope: !4335, inlinedAt: !4330)
!4337 = !DILocation(line: 1627, column: 9, scope: !4323, inlinedAt: !4330)
!4338 = !DILocation(line: 1629, column: 50, scope: !4339, inlinedAt: !4330)
!4339 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 1627, column: 45)
!4340 = !DILocation(line: 1629, column: 9, scope: !4339, inlinedAt: !4330)
!4341 = !DILocation(line: 1630, column: 5, scope: !4339, inlinedAt: !4330)
!4342 = !DILocation(line: 1632, column: 32, scope: !4343, inlinedAt: !4330)
!4343 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 1630, column: 12)
!4344 = !DILocation(line: 1632, column: 9, scope: !4343, inlinedAt: !4330)
!4345 = !DILocation(line: 1645, column: 21, scope: !4331, inlinedAt: !4212)
!4346 = !DILocation(line: 1645, column: 19, scope: !4331, inlinedAt: !4212)
!4347 = !DILocation(line: 1646, column: 5, scope: !4331, inlinedAt: !4212)
!4348 = !DILocation(line: 1647, column: 15, scope: !4203, inlinedAt: !4212)
!4349 = !DILocation(line: 1648, column: 1, scope: !4203, inlinedAt: !4212)
!4350 = !DILocation(line: 1685, column: 17, scope: !4189)
!4351 = !DILocation(line: 1686, column: 17, scope: !4189)
!4352 = !DILocation(line: 1686, column: 9, scope: !4189)
!4353 = !DILocation(line: 1686, column: 45, scope: !4189)
!4354 = !DILocation(line: 1687, column: 28, scope: !4189)
!4355 = !DILocation(line: 1687, column: 47, scope: !4189)
!4356 = !DILocation(line: 1687, column: 37, scope: !4189)
!4357 = !DILocation(line: 1688, column: 47, scope: !4189)
!4358 = !DILocation(line: 1688, column: 37, scope: !4189)
!4359 = !DILocation(line: 1690, column: 17, scope: !4189)
!4360 = !{!455, !381, i64 16}
!4361 = !DILocation(line: 1690, column: 21, scope: !4189)
!4362 = !{!4363, !378, i64 40}
!4363 = !{!"redisDb", !381, i64 0, !381, i64 8, !381, i64 16, !381, i64 24, !381, i64 32, !378, i64 40, !442, i64 48, !381, i64 56}
!4364 = !DILocation(line: 1691, column: 15, scope: !4189)
!4365 = !{!4366, !410, i64 24}
!4366 = !{!"dictht", !381, i64 0, !410, i64 8, !410, i64 16, !410, i64 24}
!4367 = !DILocation(line: 1691, column: 9, scope: !4189)
!4368 = !DILocation(line: 1692, column: 15, scope: !4189)
!4369 = !DILocation(line: 1692, column: 9, scope: !4189)
!4370 = !DILocation(line: 1693, column: 18, scope: !4189)
!4371 = !DILocation(line: 1693, column: 24, scope: !4189)
!4372 = !DILocation(line: 1693, column: 9, scope: !4189)
!4373 = !DILocation(line: 1693, column: 57, scope: !4189)
!4374 = !{!455, !378, i64 360}
!4375 = !DILocation(line: 1694, column: 45, scope: !4189)
!4376 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !4377)
!4377 = distinct !DILocation(line: 1694, column: 30, scope: !4189)
!4378 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !4377)
!4379 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !4377)
!4380 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !4377)
!4381 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !4377)
!4382 = !DILocalVariable(name: "s", arg: 1, scope: !4383, file: !138, line: 104, type: !839)
!4383 = distinct !DISubprogram(name: "sdsavail", scope: !138, file: !138, line: 104, type: !837, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4384)
!4384 = !{!4382, !4385, !4386, !4389, !4391, !4393}
!4385 = !DILocalVariable(name: "flags", scope: !4383, file: !138, line: 105, type: !269)
!4386 = !DILocalVariable(name: "sh", scope: !4387, file: !138, line: 111, type: !272)
!4387 = distinct !DILexicalBlock(scope: !4388, file: !138, line: 110, column: 26)
!4388 = distinct !DILexicalBlock(scope: !4383, file: !138, line: 106, column: 33)
!4389 = !DILocalVariable(name: "sh", scope: !4390, file: !138, line: 115, type: !284)
!4390 = distinct !DILexicalBlock(scope: !4388, file: !138, line: 114, column: 27)
!4391 = !DILocalVariable(name: "sh", scope: !4392, file: !138, line: 119, type: !294)
!4392 = distinct !DILexicalBlock(scope: !4388, file: !138, line: 118, column: 27)
!4393 = !DILocalVariable(name: "sh", scope: !4394, file: !138, line: 123, type: !303)
!4394 = distinct !DILexicalBlock(scope: !4388, file: !138, line: 122, column: 27)
!4395 = !DILocation(line: 104, column: 41, scope: !4383, inlinedAt: !4396)
!4396 = distinct !DILocation(line: 1695, column: 30, scope: !4189)
!4397 = !DILocation(line: 105, column: 19, scope: !4383, inlinedAt: !4396)
!4398 = !DILocation(line: 106, column: 5, scope: !4383, inlinedAt: !4396)
!4399 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !4377)
!4400 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !4377)
!4401 = !DILocation(line: 111, column: 13, scope: !4387, inlinedAt: !4396)
!4402 = !DILocation(line: 112, column: 24, scope: !4387, inlinedAt: !4396)
!4403 = !DILocation(line: 112, column: 20, scope: !4387, inlinedAt: !4396)
!4404 = !DILocation(line: 112, column: 30, scope: !4387, inlinedAt: !4396)
!4405 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !4377)
!4406 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !4377)
!4407 = !DILocation(line: 115, column: 13, scope: !4390, inlinedAt: !4396)
!4408 = !DILocation(line: 116, column: 24, scope: !4390, inlinedAt: !4396)
!4409 = !DILocation(line: 116, column: 20, scope: !4390, inlinedAt: !4396)
!4410 = !DILocation(line: 116, column: 30, scope: !4390, inlinedAt: !4396)
!4411 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !4377)
!4412 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !4377)
!4413 = !DILocation(line: 119, column: 13, scope: !4392, inlinedAt: !4396)
!4414 = !DILocation(line: 120, column: 24, scope: !4392, inlinedAt: !4396)
!4415 = !DILocation(line: 120, column: 30, scope: !4392, inlinedAt: !4396)
!4416 = !DILocation(line: 120, column: 20, scope: !4392, inlinedAt: !4396)
!4417 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !4377)
!4418 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !4377)
!4419 = !DILocation(line: 123, column: 13, scope: !4394, inlinedAt: !4396)
!4420 = !DILocation(line: 124, column: 24, scope: !4394, inlinedAt: !4396)
!4421 = !DILocation(line: 124, column: 30, scope: !4394, inlinedAt: !4396)
!4422 = !DILocation(line: 0, scope: !4423, inlinedAt: !4396)
!4423 = distinct !DILexicalBlock(scope: !4388, file: !138, line: 107, column: 26)
!4424 = !DILocation(line: 1696, column: 38, scope: !4189)
!4425 = !DILocation(line: 1696, column: 9, scope: !4189)
!4426 = !DILocation(line: 1697, column: 30, scope: !4189)
!4427 = !DILocation(line: 2036, column: 56, scope: !1225, inlinedAt: !4428)
!4428 = distinct !DILocation(line: 1698, column: 30, scope: !4189)
!4429 = !DILocation(line: 2037, column: 19, scope: !1225, inlinedAt: !4428)
!4430 = !DILocation(line: 2038, column: 15, scope: !1225, inlinedAt: !4428)
!4431 = !DILocation(line: 2038, column: 44, scope: !1225, inlinedAt: !4428)
!4432 = !DILocation(line: 2038, column: 27, scope: !1225, inlinedAt: !4428)
!4433 = !DILocation(line: 1700, column: 17, scope: !4189)
!4434 = !DILocation(line: 1700, column: 9, scope: !4189)
!4435 = !DILocation(line: 1700, column: 44, scope: !4189)
!4436 = !DILocation(line: 1681, column: 12, scope: !4189)
!4437 = !DILocation(line: 1701, column: 1, scope: !4189)
!4438 = !DILocation(line: 1681, column: 5, scope: !4189)
!4439 = distinct !DISubprogram(name: "getClientsMaxBuffers", scope: !3, file: !3, line: 1596, type: !4440, isLocal: false, isDefinition: true, scopeLine: 1597, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4443)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{null, !4442, !4442}
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!4443 = !{!4444, !4445, !4446, !4447, !4448, !4449, !4450}
!4444 = !DILocalVariable(name: "longest_output_list", arg: 1, scope: !4439, file: !3, line: 1596, type: !4442)
!4445 = !DILocalVariable(name: "biggest_input_buffer", arg: 2, scope: !4439, file: !3, line: 1597, type: !4442)
!4446 = !DILocalVariable(name: "c", scope: !4439, file: !3, line: 1598, type: !6)
!4447 = !DILocalVariable(name: "ln", scope: !4439, file: !3, line: 1599, type: !103)
!4448 = !DILocalVariable(name: "li", scope: !4439, file: !3, line: 1600, type: !3098)
!4449 = !DILocalVariable(name: "lol", scope: !4439, file: !3, line: 1601, type: !16)
!4450 = !DILocalVariable(name: "bib", scope: !4439, file: !3, line: 1601, type: !16)
!4451 = !DILocation(line: 1596, column: 42, scope: !4439)
!4452 = !DILocation(line: 1597, column: 42, scope: !4439)
!4453 = !DILocation(line: 1600, column: 5, scope: !4439)
!4454 = !DILocation(line: 1601, column: 19, scope: !4439)
!4455 = !DILocation(line: 1601, column: 28, scope: !4439)
!4456 = !DILocation(line: 1603, column: 23, scope: !4439)
!4457 = !DILocation(line: 1600, column: 14, scope: !4439)
!4458 = !DILocation(line: 1603, column: 5, scope: !4439)
!4459 = !DILocation(line: 1604, column: 18, scope: !4439)
!4460 = !DILocation(line: 1599, column: 15, scope: !4439)
!4461 = !DILocation(line: 1604, column: 33, scope: !4439)
!4462 = !DILocation(line: 1604, column: 5, scope: !4439)
!4463 = !DILocation(line: 1605, column: 13, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4439, file: !3, line: 1604, column: 42)
!4465 = !DILocation(line: 1598, column: 13, scope: !4439)
!4466 = !DILocation(line: 1607, column: 13, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4464, file: !3, line: 1607, column: 13)
!4468 = !DILocation(line: 1607, column: 34, scope: !4467)
!4469 = !DILocation(line: 1607, column: 13, scope: !4464)
!4470 = !DILocation(line: 1608, column: 23, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4464, file: !3, line: 1608, column: 13)
!4472 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !4473)
!4473 = distinct !DILocation(line: 1608, column: 13, scope: !4471)
!4474 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !4473)
!4475 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !4473)
!4476 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !4473)
!4477 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !4473)
!4478 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !4473)
!4479 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !4473)
!4480 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !4473)
!4481 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !4473)
!4482 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !4473)
!4483 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !4473)
!4484 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !4473)
!4485 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !4473)
!4486 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !4473)
!4487 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !4473)
!4488 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !4473)
!4489 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !4473)
!4490 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !4473)
!4491 = !DILocation(line: 0, scope: !848, inlinedAt: !4473)
!4492 = !DILocation(line: 1608, column: 33, scope: !4471)
!4493 = !DILocation(line: 1608, column: 13, scope: !4464)
!4494 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !4495)
!4495 = distinct !DILocation(line: 1608, column: 46, scope: !4471)
!4496 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !4495)
!4497 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !4495)
!4498 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !4495)
!4499 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !4495)
!4500 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !4495)
!4501 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !4495)
!4502 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !4495)
!4503 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !4495)
!4504 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !4495)
!4505 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !4495)
!4506 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !4495)
!4507 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !4495)
!4508 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !4495)
!4509 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !4495)
!4510 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !4495)
!4511 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !4495)
!4512 = !DILocation(line: 0, scope: !4439)
!4513 = distinct !{!4513, !4462, !4514}
!4514 = !DILocation(line: 1609, column: 5, scope: !4439)
!4515 = !DILocation(line: 0, scope: !4467)
!4516 = !DILocation(line: 0, scope: !4471)
!4517 = !DILocation(line: 1610, column: 26, scope: !4439)
!4518 = !DILocation(line: 1611, column: 27, scope: !4439)
!4519 = !DILocation(line: 1612, column: 1, scope: !4439)
!4520 = !DILocation(line: 1625, column: 30, scope: !4323)
!4521 = !DILocation(line: 1625, column: 44, scope: !4323)
!4522 = !DILocation(line: 1626, column: 36, scope: !4323)
!4523 = !DILocation(line: 1627, column: 17, scope: !4335)
!4524 = !DILocation(line: 1627, column: 23, scope: !4335)
!4525 = !DILocation(line: 1627, column: 9, scope: !4323)
!4526 = !DILocation(line: 1629, column: 50, scope: !4339)
!4527 = !DILocation(line: 1629, column: 9, scope: !4339)
!4528 = !DILocation(line: 1630, column: 5, scope: !4339)
!4529 = !DILocation(line: 1632, column: 32, scope: !4343)
!4530 = !DILocation(line: 1632, column: 9, scope: !4343)
!4531 = !DILocation(line: 1634, column: 1, scope: !4323)
!4532 = !DILocation(line: 1640, column: 31, scope: !4203)
!4533 = !DILocation(line: 1641, column: 5, scope: !4203)
!4534 = !DILocation(line: 1641, column: 10, scope: !4203)
!4535 = !DILocation(line: 1643, column: 12, scope: !4319)
!4536 = !DILocation(line: 1643, column: 19, scope: !4319)
!4537 = !DILocation(line: 1643, column: 9, scope: !4203)
!4538 = !DILocation(line: 1625, column: 30, scope: !4323, inlinedAt: !4539)
!4539 = distinct !DILocation(line: 1644, column: 9, scope: !4331)
!4540 = !DILocation(line: 1625, column: 44, scope: !4323, inlinedAt: !4539)
!4541 = !DILocation(line: 1626, column: 36, scope: !4323, inlinedAt: !4539)
!4542 = !DILocation(line: 1627, column: 17, scope: !4335, inlinedAt: !4539)
!4543 = !DILocation(line: 1627, column: 23, scope: !4335, inlinedAt: !4539)
!4544 = !DILocation(line: 1627, column: 9, scope: !4323, inlinedAt: !4539)
!4545 = !DILocation(line: 1629, column: 50, scope: !4339, inlinedAt: !4539)
!4546 = !DILocation(line: 1629, column: 9, scope: !4339, inlinedAt: !4539)
!4547 = !DILocation(line: 1630, column: 5, scope: !4339, inlinedAt: !4539)
!4548 = !DILocation(line: 1632, column: 32, scope: !4343, inlinedAt: !4539)
!4549 = !DILocation(line: 1632, column: 9, scope: !4343, inlinedAt: !4539)
!4550 = !DILocation(line: 1645, column: 21, scope: !4331)
!4551 = !DILocation(line: 1645, column: 19, scope: !4331)
!4552 = !DILocation(line: 1646, column: 5, scope: !4331)
!4553 = !DILocation(line: 1647, column: 15, scope: !4203)
!4554 = !DILocation(line: 1648, column: 1, scope: !4203)
!4555 = !DILocation(line: 1647, column: 5, scope: !4203)
!4556 = !DILocation(line: 2036, column: 56, scope: !1225)
!4557 = !DILocation(line: 2037, column: 19, scope: !1225)
!4558 = !DILocation(line: 2038, column: 15, scope: !1225)
!4559 = !DILocation(line: 2038, column: 45, scope: !1225)
!4560 = !DILocation(line: 2038, column: 44, scope: !1225)
!4561 = !DILocation(line: 2038, column: 27, scope: !1225)
!4562 = !DILocation(line: 2038, column: 5, scope: !1225)
!4563 = distinct !DISubprogram(name: "getAllClientsInfoString", scope: !3, file: !3, line: 1703, type: !4564, isLocal: false, isDefinition: true, scopeLine: 1703, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4566)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!137, !18}
!4566 = !{!4567, !4568, !4569, !4570, !4571}
!4567 = !DILocalVariable(name: "type", arg: 1, scope: !4563, file: !3, line: 1703, type: !18)
!4568 = !DILocalVariable(name: "ln", scope: !4563, file: !3, line: 1704, type: !103)
!4569 = !DILocalVariable(name: "li", scope: !4563, file: !3, line: 1705, type: !3098)
!4570 = !DILocalVariable(name: "client", scope: !4563, file: !3, line: 1706, type: !6)
!4571 = !DILocalVariable(name: "o", scope: !4563, file: !3, line: 1707, type: !137)
!4572 = !DILocation(line: 1703, column: 33, scope: !4563)
!4573 = !DILocation(line: 1705, column: 5, scope: !4563)
!4574 = !DILocation(line: 1707, column: 23, scope: !4563)
!4575 = !DILocation(line: 1707, column: 38, scope: !4563)
!4576 = !DILocation(line: 1707, column: 37, scope: !4563)
!4577 = !DILocation(line: 1707, column: 13, scope: !4563)
!4578 = !DILocation(line: 1707, column: 9, scope: !4563)
!4579 = !DILocation(line: 1708, column: 5, scope: !4563)
!4580 = !DILocation(line: 1709, column: 23, scope: !4563)
!4581 = !DILocation(line: 1705, column: 14, scope: !4563)
!4582 = !DILocation(line: 1709, column: 5, scope: !4563)
!4583 = !DILocation(line: 1710, column: 5, scope: !4563)
!4584 = !DILocation(line: 1710, column: 18, scope: !4563)
!4585 = !DILocation(line: 1704, column: 15, scope: !4563)
!4586 = !DILocation(line: 1710, column: 33, scope: !4563)
!4587 = !DILocation(line: 1711, column: 18, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4563, file: !3, line: 1710, column: 42)
!4589 = !DILocation(line: 1706, column: 13, scope: !4563)
!4590 = !DILocation(line: 1712, column: 24, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4588, file: !3, line: 1712, column: 13)
!4592 = !DILocation(line: 2050, column: 27, scope: !1238, inlinedAt: !4593)
!4593 = distinct !DILocation(line: 1712, column: 27, scope: !4591)
!4594 = !DILocation(line: 2051, column: 12, scope: !1243, inlinedAt: !4593)
!4595 = !DILocation(line: 2051, column: 18, scope: !1243, inlinedAt: !4593)
!4596 = !DILocation(line: 2051, column: 9, scope: !1238, inlinedAt: !4593)
!4597 = !DILocation(line: 2052, column: 35, scope: !1246, inlinedAt: !4593)
!4598 = !DILocation(line: 2055, column: 5, scope: !1238, inlinedAt: !4593)
!4599 = !DILocation(line: 0, scope: !1246, inlinedAt: !4593)
!4600 = !DILocation(line: 1712, column: 49, scope: !4591)
!4601 = !DILocation(line: 1712, column: 13, scope: !4588)
!4602 = distinct !{!4602, !4583, !4603}
!4603 = !DILocation(line: 1715, column: 5, scope: !4563)
!4604 = !DILocation(line: 1713, column: 13, scope: !4588)
!4605 = !DILocation(line: 1714, column: 13, scope: !4588)
!4606 = !DILocation(line: 1717, column: 1, scope: !4563)
!4607 = !DILocation(line: 1716, column: 5, scope: !4563)
!4608 = !DILocation(line: 2050, column: 27, scope: !1238)
!4609 = !DILocation(line: 2051, column: 12, scope: !1243)
!4610 = !DILocation(line: 2051, column: 18, scope: !1243)
!4611 = !DILocation(line: 2051, column: 9, scope: !1238)
!4612 = !DILocation(line: 2052, column: 35, scope: !1246)
!4613 = !DILocation(line: 2055, column: 5, scope: !1238)
!4614 = !DILocation(line: 0, scope: !1246)
!4615 = !DILocation(line: 2056, column: 1, scope: !1238)
!4616 = distinct !DISubprogram(name: "clientCommand", scope: !3, file: !3, line: 1719, type: !4, isLocal: false, isDefinition: true, scopeLine: 1719, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4617)
!4617 = !{!4618, !4619, !4620, !4621, !4622, !4628, !4632, !4633, !4637, !4638, !4639, !4640, !4641, !4642, !4646, !4648, !4651, !4654, !4655, !4657, !4660, !4661, !4662}
!4618 = !DILocalVariable(name: "c", arg: 1, scope: !4616, file: !3, line: 1719, type: !6)
!4619 = !DILocalVariable(name: "ln", scope: !4616, file: !3, line: 1720, type: !103)
!4620 = !DILocalVariable(name: "li", scope: !4616, file: !3, line: 1721, type: !3098)
!4621 = !DILocalVariable(name: "client", scope: !4616, file: !3, line: 1722, type: !6)
!4622 = !DILocalVariable(name: "help", scope: !4623, file: !3, line: 1725, type: !4625)
!4623 = distinct !DILexicalBlock(scope: !4624, file: !3, line: 1724, column: 62)
!4624 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 1724, column: 9)
!4625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 896, elements: !4626)
!4626 = !{!4627}
!4627 = !DISubrange(count: 14)
!4628 = !DILocalVariable(name: "type", scope: !4629, file: !3, line: 1747, type: !18)
!4629 = distinct !DILexicalBlock(scope: !4630, file: !3, line: 1745, column: 53)
!4630 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 1745, column: 16)
!4631 = distinct !DILexicalBlock(scope: !4624, file: !3, line: 1742, column: 16)
!4632 = !DILocalVariable(name: "o", scope: !4629, file: !3, line: 1759, type: !137)
!4633 = !DILocalVariable(name: "addr", scope: !4634, file: !3, line: 1779, type: !139)
!4634 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 1776, column: 53)
!4635 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 1776, column: 16)
!4636 = distinct !DILexicalBlock(scope: !4630, file: !3, line: 1762, column: 16)
!4637 = !DILocalVariable(name: "type", scope: !4634, file: !3, line: 1780, type: !18)
!4638 = !DILocalVariable(name: "id", scope: !4634, file: !3, line: 1781, type: !12)
!4639 = !DILocalVariable(name: "skipme", scope: !4634, file: !3, line: 1782, type: !18)
!4640 = !DILocalVariable(name: "killed", scope: !4634, file: !3, line: 1783, type: !18)
!4641 = !DILocalVariable(name: "close_this_client", scope: !4634, file: !3, line: 1783, type: !18)
!4642 = !DILocalVariable(name: "i", scope: !4643, file: !3, line: 1790, type: !18)
!4643 = distinct !DILexicalBlock(scope: !4644, file: !3, line: 1789, column: 33)
!4644 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 1789, column: 20)
!4645 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 1785, column: 13)
!4646 = !DILocalVariable(name: "moreargs", scope: !4647, file: !3, line: 1794, type: !18)
!4647 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 1793, column: 32)
!4648 = !DILocalVariable(name: "tmp", scope: !4649, file: !3, line: 1797, type: !95)
!4649 = distinct !DILexicalBlock(scope: !4650, file: !3, line: 1796, column: 68)
!4650 = distinct !DILexicalBlock(scope: !4647, file: !3, line: 1796, column: 21)
!4651 = !DILocalVariable(name: "id", scope: !4652, file: !3, line: 1866, type: !95)
!4652 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 1864, column: 5)
!4653 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 1862, column: 16)
!4654 = !DILocalVariable(name: "unblock_error", scope: !4652, file: !3, line: 1867, type: !18)
!4655 = !DILocalVariable(name: "target", scope: !4652, file: !3, line: 1882, type: !4656)
!4656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!4657 = !DILocalVariable(name: "j", scope: !4658, file: !3, line: 1895, type: !18)
!4658 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 1894, column: 72)
!4659 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 1894, column: 16)
!4660 = !DILocalVariable(name: "len", scope: !4658, file: !3, line: 1895, type: !18)
!4661 = !DILocalVariable(name: "p", scope: !4658, file: !3, line: 1896, type: !139)
!4662 = !DILocalVariable(name: "duration", scope: !4663, file: !3, line: 1928, type: !95)
!4663 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 1927, column: 70)
!4664 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 1927, column: 16)
!4665 = distinct !DILexicalBlock(scope: !4659, file: !3, line: 1922, column: 16)
!4666 = !DILocation(line: 1641, column: 10, scope: !4203, inlinedAt: !4667)
!4667 = distinct !DILocation(line: 1835, column: 32, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 1835, column: 17)
!4669 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 1833, column: 46)
!4670 = !DILocation(line: 503, column: 10, scope: !2014, inlinedAt: !4671)
!4671 = distinct !DILocation(line: 530, column: 9, scope: !2064, inlinedAt: !4672)
!4672 = distinct !DILocation(line: 1856, column: 13, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 1855, column: 16)
!4674 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 1850, column: 13)
!4675 = !DILocation(line: 503, column: 10, scope: !2014, inlinedAt: !4676)
!4676 = distinct !DILocation(line: 530, column: 9, scope: !2064, inlinedAt: !4677)
!4677 = distinct !DILocation(line: 1744, column: 9, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 1742, column: 67)
!4679 = !DILocation(line: 1719, column: 28, scope: !4616)
!4680 = !DILocation(line: 1721, column: 5, scope: !4616)
!4681 = !DILocation(line: 1724, column: 12, scope: !4624)
!4682 = !DILocation(line: 1724, column: 17, scope: !4624)
!4683 = !DILocation(line: 0, scope: !4631)
!4684 = !DILocation(line: 1724, column: 22, scope: !4624)
!4685 = !DILocation(line: 1724, column: 26, scope: !4624)
!4686 = !DILocation(line: 1724, column: 9, scope: !4616)
!4687 = !DILocation(line: 1725, column: 9, scope: !4623)
!4688 = !DILocation(line: 1725, column: 21, scope: !4623)
!4689 = !DILocation(line: 1741, column: 25, scope: !4623)
!4690 = !DILocation(line: 1741, column: 9, scope: !4623)
!4691 = !DILocation(line: 1742, column: 5, scope: !4624)
!4692 = !DILocation(line: 1742, column: 5, scope: !4623)
!4693 = !DILocation(line: 1742, column: 17, scope: !4631)
!4694 = !DILocation(line: 1742, column: 50, scope: !4631)
!4695 = !DILocation(line: 1744, column: 31, scope: !4678)
!4696 = !DILocation(line: 524, column: 31, scope: !2056, inlinedAt: !4677)
!4697 = !DILocation(line: 524, column: 44, scope: !2056, inlinedAt: !4677)
!4698 = !DILocation(line: 525, column: 9, scope: !2056, inlinedAt: !4677)
!4699 = !DILocation(line: 526, column: 27, scope: !2065, inlinedAt: !4677)
!4700 = !DILocation(line: 526, column: 9, scope: !2065, inlinedAt: !4677)
!4701 = !DILocation(line: 528, column: 27, scope: !2064, inlinedAt: !4677)
!4702 = !DILocation(line: 528, column: 9, scope: !2064, inlinedAt: !4677)
!4703 = !DILocation(line: 502, column: 41, scope: !2014, inlinedAt: !4676)
!4704 = !DILocation(line: 502, column: 54, scope: !2014, inlinedAt: !4676)
!4705 = !DILocation(line: 502, column: 63, scope: !2014, inlinedAt: !4676)
!4706 = !DILocation(line: 503, column: 5, scope: !2014, inlinedAt: !4676)
!4707 = !DILocation(line: 517, column: 12, scope: !2014, inlinedAt: !4676)
!4708 = !DILocation(line: 518, column: 24, scope: !2014, inlinedAt: !4676)
!4709 = !DILocation(line: 518, column: 11, scope: !2014, inlinedAt: !4676)
!4710 = !DILocation(line: 504, column: 9, scope: !2014, inlinedAt: !4676)
!4711 = !DILocation(line: 519, column: 12, scope: !2014, inlinedAt: !4676)
!4712 = !DILocation(line: 519, column: 5, scope: !2014, inlinedAt: !4676)
!4713 = !DILocation(line: 519, column: 16, scope: !2014, inlinedAt: !4676)
!4714 = !DILocation(line: 520, column: 12, scope: !2014, inlinedAt: !4676)
!4715 = !DILocation(line: 520, column: 5, scope: !2014, inlinedAt: !4676)
!4716 = !DILocation(line: 520, column: 16, scope: !2014, inlinedAt: !4676)
!4717 = !DILocation(line: 521, column: 29, scope: !2014, inlinedAt: !4676)
!4718 = !DILocation(line: 521, column: 26, scope: !2014, inlinedAt: !4676)
!4719 = !DILocation(line: 521, column: 5, scope: !2014, inlinedAt: !4676)
!4720 = !DILocation(line: 522, column: 1, scope: !2014, inlinedAt: !4676)
!4721 = !DILocation(line: 1745, column: 17, scope: !4630)
!4722 = !DILocation(line: 1745, column: 16, scope: !4631)
!4723 = !DILocation(line: 1747, column: 13, scope: !4629)
!4724 = !DILocation(line: 1748, column: 21, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 1748, column: 13)
!4726 = !DILocation(line: 1748, column: 26, scope: !4725)
!4727 = !DILocation(line: 1748, column: 41, scope: !4725)
!4728 = !DILocation(line: 1748, column: 53, scope: !4725)
!4729 = !DILocation(line: 1748, column: 30, scope: !4725)
!4730 = !DILocation(line: 1748, column: 13, scope: !4629)
!4731 = !DILocation(line: 1749, column: 40, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 1748, column: 66)
!4733 = !DILocation(line: 1749, column: 52, scope: !4732)
!4734 = !DILocalVariable(name: "name", arg: 1, scope: !4735, file: !3, line: 2058, type: !139)
!4735 = distinct !DISubprogram(name: "getClientTypeByName", scope: !3, file: !3, line: 2058, type: !4736, isLocal: false, isDefinition: true, scopeLine: 2058, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4738)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!18, !139}
!4738 = !{!4734}
!4739 = !DILocation(line: 2058, column: 31, scope: !4735, inlinedAt: !4740)
!4740 = distinct !DILocation(line: 1749, column: 20, scope: !4732)
!4741 = !DILocation(line: 2059, column: 10, scope: !4742, inlinedAt: !4740)
!4742 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 2059, column: 9)
!4743 = !DILocation(line: 2059, column: 9, scope: !4735, inlinedAt: !4740)
!4744 = !DILocation(line: 2060, column: 15, scope: !4745, inlinedAt: !4740)
!4745 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 2060, column: 14)
!4746 = !DILocation(line: 2060, column: 14, scope: !4742, inlinedAt: !4740)
!4747 = !DILocation(line: 2061, column: 15, scope: !4748, inlinedAt: !4740)
!4748 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 2061, column: 14)
!4749 = !DILocation(line: 2061, column: 14, scope: !4745, inlinedAt: !4740)
!4750 = !DILocation(line: 2062, column: 15, scope: !4751, inlinedAt: !4740)
!4751 = distinct !DILexicalBlock(scope: !4748, file: !3, line: 2062, column: 14)
!4752 = !DILocation(line: 2062, column: 14, scope: !4748, inlinedAt: !4740)
!4753 = !DILocation(line: 2063, column: 15, scope: !4754, inlinedAt: !4740)
!4754 = distinct !DILexicalBlock(scope: !4751, file: !3, line: 2063, column: 14)
!4755 = !DILocation(line: 1751, column: 17, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 1750, column: 29)
!4757 = distinct !DILexicalBlock(scope: !4732, file: !3, line: 1750, column: 17)
!4758 = !DILocation(line: 1755, column: 20, scope: !4725)
!4759 = !DILocation(line: 1756, column: 31, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 1755, column: 34)
!4761 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 1755, column: 20)
!4762 = !{!1975, !381, i64 128}
!4763 = !DILocation(line: 1756, column: 13, scope: !4760)
!4764 = !DILocation(line: 0, scope: !4732)
!4765 = !DILocation(line: 1759, column: 17, scope: !4629)
!4766 = !DILocation(line: 1759, column: 13, scope: !4629)
!4767 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !4768)
!4768 = distinct !DILocation(line: 1760, column: 33, scope: !4629)
!4769 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !4768)
!4770 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !4768)
!4771 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !4768)
!4772 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !4768)
!4773 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !4768)
!4774 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !4768)
!4775 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !4768)
!4776 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !4768)
!4777 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !4768)
!4778 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !4768)
!4779 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !4768)
!4780 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !4768)
!4781 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !4768)
!4782 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !4768)
!4783 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !4768)
!4784 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !4768)
!4785 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !4768)
!4786 = !DILocation(line: 0, scope: !848, inlinedAt: !4768)
!4787 = !DILocation(line: 1760, column: 9, scope: !4629)
!4788 = !DILocation(line: 1761, column: 9, scope: !4629)
!4789 = !DILocation(line: 1762, column: 17, scope: !4636)
!4790 = !DILocation(line: 1762, column: 64, scope: !4636)
!4791 = !DILocation(line: 1762, column: 53, scope: !4636)
!4792 = !DILocation(line: 1764, column: 25, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 1764, column: 13)
!4794 = distinct !DILexicalBlock(scope: !4636, file: !3, line: 1762, column: 70)
!4795 = !DILocation(line: 1764, column: 37, scope: !4793)
!4796 = !DILocation(line: 1764, column: 14, scope: !4793)
!4797 = !DILocation(line: 1764, column: 13, scope: !4794)
!4798 = !DILocation(line: 1765, column: 16, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 1764, column: 48)
!4800 = !DILocation(line: 1765, column: 22, scope: !4799)
!4801 = !DILocation(line: 1766, column: 31, scope: !4799)
!4802 = !{!1975, !381, i64 8}
!4803 = !DILocation(line: 1766, column: 13, scope: !4799)
!4804 = !DILocation(line: 1767, column: 9, scope: !4799)
!4805 = !DILocation(line: 1767, column: 21, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4793, file: !3, line: 1767, column: 20)
!4807 = !DILocation(line: 1767, column: 20, scope: !4793)
!4808 = !DILocation(line: 1768, column: 16, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 1767, column: 56)
!4810 = !DILocation(line: 1768, column: 22, scope: !4809)
!4811 = !DILocation(line: 1769, column: 9, scope: !4809)
!4812 = !DILocation(line: 1769, column: 21, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4806, file: !3, line: 1769, column: 20)
!4814 = !DILocation(line: 1769, column: 20, scope: !4806)
!4815 = !DILocation(line: 1770, column: 22, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 1770, column: 17)
!4817 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 1769, column: 57)
!4818 = !DILocation(line: 1770, column: 28, scope: !4816)
!4819 = !DILocation(line: 1770, column: 17, scope: !4817)
!4820 = !DILocation(line: 1771, column: 26, scope: !4816)
!4821 = !DILocation(line: 1771, column: 17, scope: !4816)
!4822 = !DILocation(line: 1773, column: 31, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 1772, column: 16)
!4824 = !DILocation(line: 1773, column: 13, scope: !4823)
!4825 = !DILocation(line: 1774, column: 13, scope: !4823)
!4826 = !DILocation(line: 1776, column: 17, scope: !4635)
!4827 = !DILocation(line: 1776, column: 16, scope: !4636)
!4828 = !DILocation(line: 1779, column: 15, scope: !4634)
!4829 = !DILocation(line: 1780, column: 13, scope: !4634)
!4830 = !DILocation(line: 1781, column: 18, scope: !4634)
!4831 = !DILocation(line: 1782, column: 13, scope: !4634)
!4832 = !DILocation(line: 1783, column: 13, scope: !4634)
!4833 = !DILocation(line: 1783, column: 25, scope: !4634)
!4834 = !DILocation(line: 1785, column: 13, scope: !4634)
!4835 = !DILocation(line: 1787, column: 20, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 1785, column: 27)
!4837 = !DILocation(line: 1787, column: 32, scope: !4836)
!4838 = !DILocation(line: 1789, column: 9, scope: !4836)
!4839 = !DILocation(line: 1789, column: 28, scope: !4644)
!4840 = !DILocation(line: 1789, column: 20, scope: !4645)
!4841 = !DILocation(line: 1790, column: 17, scope: !4643)
!4842 = !DILocation(line: 1793, column: 13, scope: !4643)
!4843 = !DILocation(line: 1794, column: 43, scope: !4647)
!4844 = !DILocation(line: 1794, column: 40, scope: !4647)
!4845 = !DILocation(line: 1796, column: 36, scope: !4650)
!4846 = !DILocation(line: 1796, column: 33, scope: !4650)
!4847 = !DILocation(line: 1796, column: 45, scope: !4650)
!4848 = !DILocation(line: 1796, column: 22, scope: !4650)
!4849 = !DILocation(line: 1796, column: 55, scope: !4650)
!4850 = !DILocation(line: 1797, column: 21, scope: !4649)
!4851 = !DILocation(line: 1799, column: 56, scope: !4852)
!4852 = distinct !DILexicalBlock(scope: !4649, file: !3, line: 1799, column: 25)
!4853 = !DILocation(line: 1797, column: 31, scope: !4649)
!4854 = !DILocation(line: 1799, column: 25, scope: !4852)
!4855 = !DILocation(line: 1800, column: 25, scope: !4852)
!4856 = !DILocation(line: 1801, column: 26, scope: !4649)
!4857 = !DILocation(line: 1802, column: 17, scope: !4650)
!4858 = !DILocation(line: 1802, column: 29, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4650, file: !3, line: 1802, column: 28)
!4860 = !DILocation(line: 1802, column: 64, scope: !4859)
!4861 = !DILocation(line: 1803, column: 48, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 1802, column: 77)
!4863 = !DILocation(line: 1803, column: 62, scope: !4862)
!4864 = !DILocation(line: 2058, column: 31, scope: !4735, inlinedAt: !4865)
!4865 = distinct !DILocation(line: 1803, column: 28, scope: !4862)
!4866 = !DILocation(line: 2059, column: 10, scope: !4742, inlinedAt: !4865)
!4867 = !DILocation(line: 2059, column: 9, scope: !4735, inlinedAt: !4865)
!4868 = !DILocation(line: 2060, column: 15, scope: !4745, inlinedAt: !4865)
!4869 = !DILocation(line: 2060, column: 14, scope: !4742, inlinedAt: !4865)
!4870 = !DILocation(line: 2061, column: 15, scope: !4748, inlinedAt: !4865)
!4871 = !DILocation(line: 2061, column: 14, scope: !4745, inlinedAt: !4865)
!4872 = !DILocation(line: 2062, column: 15, scope: !4751, inlinedAt: !4865)
!4873 = !DILocation(line: 2062, column: 14, scope: !4748, inlinedAt: !4865)
!4874 = !DILocation(line: 2063, column: 15, scope: !4754, inlinedAt: !4865)
!4875 = !DILocation(line: 1805, column: 25, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4877, file: !3, line: 1804, column: 37)
!4877 = distinct !DILexicalBlock(scope: !4862, file: !3, line: 1804, column: 25)
!4878 = !DILocation(line: 1807, column: 25, scope: !4876)
!4879 = !DILocation(line: 1809, column: 29, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 1809, column: 28)
!4881 = !DILocation(line: 1809, column: 64, scope: !4880)
!4882 = !DILocation(line: 1810, column: 28, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 1809, column: 77)
!4884 = !DILocation(line: 1810, column: 42, scope: !4883)
!4885 = !DILocation(line: 1811, column: 17, scope: !4883)
!4886 = !DILocation(line: 1811, column: 29, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 1811, column: 28)
!4888 = !DILocation(line: 1811, column: 66, scope: !4887)
!4889 = !DILocation(line: 1812, column: 37, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 1812, column: 25)
!4891 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 1811, column: 79)
!4892 = !DILocation(line: 1812, column: 51, scope: !4890)
!4893 = !DILocation(line: 1812, column: 26, scope: !4890)
!4894 = !DILocation(line: 1812, column: 25, scope: !4891)
!4895 = !DILocation(line: 1814, column: 33, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 1814, column: 32)
!4897 = !DILocation(line: 1814, column: 32, scope: !4890)
!4898 = !DILocation(line: 1817, column: 43, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4896, file: !3, line: 1816, column: 28)
!4900 = !DILocation(line: 1817, column: 25, scope: !4899)
!4901 = !DILocation(line: 1818, column: 25, scope: !4899)
!4902 = !DILocation(line: 1821, column: 39, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 1820, column: 24)
!4904 = !DILocation(line: 1821, column: 21, scope: !4903)
!4905 = !DILocation(line: 1822, column: 21, scope: !4903)
!4906 = !DILocation(line: 0, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 1812, column: 63)
!4908 = !DILocation(line: 0, scope: !4634)
!4909 = !DILocation(line: 1824, column: 19, scope: !4647)
!4910 = !DILocation(line: 1793, column: 26, scope: !4643)
!4911 = !DILocation(line: 1793, column: 21, scope: !4643)
!4912 = !DILocation(line: 1827, column: 31, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4644, file: !3, line: 1826, column: 16)
!4914 = !DILocation(line: 1827, column: 13, scope: !4913)
!4915 = !DILocation(line: 1828, column: 13, scope: !4913)
!4916 = !DILocation(line: 1832, column: 27, scope: !4634)
!4917 = !DILocation(line: 1721, column: 14, scope: !4616)
!4918 = !DILocation(line: 1832, column: 9, scope: !4634)
!4919 = !DILocation(line: 1833, column: 22, scope: !4634)
!4920 = !DILocation(line: 1720, column: 15, scope: !4616)
!4921 = !DILocation(line: 1833, column: 37, scope: !4634)
!4922 = !DILocation(line: 1833, column: 9, scope: !4634)
!4923 = !DILocation(line: 1834, column: 22, scope: !4669)
!4924 = !DILocation(line: 1722, column: 13, scope: !4616)
!4925 = !DILocation(line: 1835, column: 22, scope: !4668)
!4926 = !DILocation(line: 1640, column: 31, scope: !4203, inlinedAt: !4667)
!4927 = !DILocation(line: 1641, column: 5, scope: !4203, inlinedAt: !4667)
!4928 = !DILocation(line: 1643, column: 12, scope: !4319, inlinedAt: !4667)
!4929 = !DILocation(line: 1643, column: 19, scope: !4319, inlinedAt: !4667)
!4930 = !DILocation(line: 1643, column: 9, scope: !4203, inlinedAt: !4667)
!4931 = !DILocation(line: 1625, column: 30, scope: !4323, inlinedAt: !4932)
!4932 = distinct !DILocation(line: 1644, column: 9, scope: !4331, inlinedAt: !4667)
!4933 = !DILocation(line: 1625, column: 44, scope: !4323, inlinedAt: !4932)
!4934 = !DILocation(line: 1626, column: 36, scope: !4323, inlinedAt: !4932)
!4935 = !DILocation(line: 1627, column: 17, scope: !4335, inlinedAt: !4932)
!4936 = !DILocation(line: 1627, column: 23, scope: !4335, inlinedAt: !4932)
!4937 = !DILocation(line: 1627, column: 9, scope: !4323, inlinedAt: !4932)
!4938 = !DILocation(line: 1629, column: 50, scope: !4339, inlinedAt: !4932)
!4939 = !DILocation(line: 1629, column: 9, scope: !4339, inlinedAt: !4932)
!4940 = !DILocation(line: 1630, column: 5, scope: !4339, inlinedAt: !4932)
!4941 = !DILocation(line: 1632, column: 32, scope: !4343, inlinedAt: !4932)
!4942 = !DILocation(line: 1632, column: 9, scope: !4343, inlinedAt: !4932)
!4943 = !DILocation(line: 1645, column: 21, scope: !4331, inlinedAt: !4667)
!4944 = !DILocation(line: 1645, column: 19, scope: !4331, inlinedAt: !4667)
!4945 = !DILocation(line: 1646, column: 5, scope: !4331, inlinedAt: !4667)
!4946 = !DILocation(line: 1647, column: 15, scope: !4203, inlinedAt: !4667)
!4947 = !DILocation(line: 1648, column: 1, scope: !4203, inlinedAt: !4667)
!4948 = !DILocation(line: 1835, column: 25, scope: !4668)
!4949 = !DILocation(line: 1835, column: 62, scope: !4668)
!4950 = !DILocation(line: 1835, column: 17, scope: !4669)
!4951 = !DILocation(line: 1836, column: 28, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 1836, column: 17)
!4953 = !DILocation(line: 2050, column: 27, scope: !1238, inlinedAt: !4954)
!4954 = distinct !DILocation(line: 1836, column: 31, scope: !4952)
!4955 = !DILocation(line: 2051, column: 12, scope: !1243, inlinedAt: !4954)
!4956 = !DILocation(line: 2051, column: 18, scope: !1243, inlinedAt: !4954)
!4957 = !DILocation(line: 2051, column: 9, scope: !1238, inlinedAt: !4954)
!4958 = !DILocation(line: 2052, column: 35, scope: !1246, inlinedAt: !4954)
!4959 = !DILocation(line: 2055, column: 5, scope: !1238, inlinedAt: !4954)
!4960 = !DILocation(line: 0, scope: !1246, inlinedAt: !4954)
!4961 = !DILocation(line: 1836, column: 53, scope: !4952)
!4962 = !DILocation(line: 1836, column: 17, scope: !4669)
!4963 = !DILocation(line: 1837, column: 25, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 1837, column: 17)
!4965 = !DILocation(line: 1837, column: 36, scope: !4964)
!4966 = !DILocation(line: 1837, column: 39, scope: !4964)
!4967 = !DILocation(line: 1837, column: 17, scope: !4669)
!4968 = !DILocation(line: 1838, column: 19, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 1838, column: 17)
!4970 = !DILocation(line: 1838, column: 29, scope: !4969)
!4971 = distinct !{!4971, !4922, !4972}
!4972 = !DILocation(line: 1847, column: 9, scope: !4634)
!4973 = !DILocation(line: 1841, column: 17, scope: !4669)
!4974 = !DILocation(line: 1844, column: 17, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 1843, column: 20)
!4976 = distinct !DILexicalBlock(scope: !4669, file: !3, line: 1841, column: 17)
!4977 = !DILocation(line: 1846, column: 19, scope: !4669)
!4978 = !DILocation(line: 1850, column: 16, scope: !4674)
!4979 = !DILocation(line: 1850, column: 21, scope: !4674)
!4980 = !DILocation(line: 1850, column: 13, scope: !4634)
!4981 = !DILocation(line: 1851, column: 24, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 1851, column: 17)
!4983 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 1850, column: 27)
!4984 = !DILocation(line: 1851, column: 17, scope: !4983)
!4985 = !DILocation(line: 384, column: 28, scope: !1649, inlinedAt: !4986)
!4986 = distinct !DILocation(line: 1852, column: 17, scope: !4982)
!4987 = !DILocation(line: 384, column: 43, scope: !1649, inlinedAt: !4986)
!4988 = !DILocation(line: 385, column: 31, scope: !1649, inlinedAt: !4986)
!4989 = !DILocation(line: 385, column: 5, scope: !1649, inlinedAt: !4986)
!4990 = !DILocation(line: 1852, column: 17, scope: !4982)
!4991 = !DILocation(line: 1854, column: 35, scope: !4982)
!4992 = !DILocation(line: 1854, column: 17, scope: !4982)
!4993 = !DILocation(line: 1856, column: 32, scope: !4673)
!4994 = !DILocation(line: 524, column: 31, scope: !2056, inlinedAt: !4672)
!4995 = !DILocation(line: 524, column: 44, scope: !2056, inlinedAt: !4672)
!4996 = !DILocation(line: 525, column: 9, scope: !2056, inlinedAt: !4672)
!4997 = !DILocation(line: 526, column: 27, scope: !2065, inlinedAt: !4672)
!4998 = !DILocation(line: 526, column: 9, scope: !2065, inlinedAt: !4672)
!4999 = !DILocation(line: 528, column: 27, scope: !2064, inlinedAt: !4672)
!5000 = !DILocation(line: 528, column: 9, scope: !2064, inlinedAt: !4672)
!5001 = !DILocation(line: 502, column: 41, scope: !2014, inlinedAt: !4671)
!5002 = !DILocation(line: 502, column: 54, scope: !2014, inlinedAt: !4671)
!5003 = !DILocation(line: 502, column: 63, scope: !2014, inlinedAt: !4671)
!5004 = !DILocation(line: 503, column: 5, scope: !2014, inlinedAt: !4671)
!5005 = !DILocation(line: 517, column: 12, scope: !2014, inlinedAt: !4671)
!5006 = !DILocation(line: 518, column: 24, scope: !2014, inlinedAt: !4671)
!5007 = !DILocation(line: 518, column: 11, scope: !2014, inlinedAt: !4671)
!5008 = !DILocation(line: 504, column: 9, scope: !2014, inlinedAt: !4671)
!5009 = !DILocation(line: 519, column: 12, scope: !2014, inlinedAt: !4671)
!5010 = !DILocation(line: 519, column: 5, scope: !2014, inlinedAt: !4671)
!5011 = !DILocation(line: 519, column: 16, scope: !2014, inlinedAt: !4671)
!5012 = !DILocation(line: 520, column: 12, scope: !2014, inlinedAt: !4671)
!5013 = !DILocation(line: 520, column: 5, scope: !2014, inlinedAt: !4671)
!5014 = !DILocation(line: 520, column: 16, scope: !2014, inlinedAt: !4671)
!5015 = !DILocation(line: 521, column: 29, scope: !2014, inlinedAt: !4671)
!5016 = !DILocation(line: 521, column: 26, scope: !2014, inlinedAt: !4671)
!5017 = !DILocation(line: 521, column: 5, scope: !2014, inlinedAt: !4671)
!5018 = !DILocation(line: 522, column: 1, scope: !2014, inlinedAt: !4671)
!5019 = !DILocation(line: 1861, column: 13, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 1861, column: 13)
!5021 = !DILocation(line: 1861, column: 13, scope: !4634)
!5022 = !DILocation(line: 1861, column: 35, scope: !5020)
!5023 = !DILocation(line: 1861, column: 41, scope: !5020)
!5024 = !DILocation(line: 1861, column: 32, scope: !5020)
!5025 = !DILocation(line: 1862, column: 17, scope: !4653)
!5026 = !DILocation(line: 1862, column: 72, scope: !4653)
!5027 = !DILocation(line: 1862, column: 55, scope: !4653)
!5028 = !DILocation(line: 1866, column: 9, scope: !4652)
!5029 = !DILocation(line: 1867, column: 13, scope: !4652)
!5030 = !DILocation(line: 1869, column: 21, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 1869, column: 13)
!5032 = !DILocation(line: 1869, column: 13, scope: !4652)
!5033 = !DILocation(line: 1870, column: 29, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5035, file: !3, line: 1870, column: 17)
!5035 = distinct !DILexicalBlock(scope: !5031, file: !3, line: 1869, column: 27)
!5036 = !DILocation(line: 1870, column: 41, scope: !5034)
!5037 = !DILocation(line: 1870, column: 18, scope: !5034)
!5038 = !DILocation(line: 1870, column: 17, scope: !5035)
!5039 = !DILocation(line: 1872, column: 25, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5034, file: !3, line: 1872, column: 24)
!5041 = !DILocation(line: 1872, column: 24, scope: !5034)
!5042 = !DILocation(line: 384, column: 28, scope: !1649, inlinedAt: !5043)
!5043 = distinct !DILocation(line: 1875, column: 17, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5040, file: !3, line: 1874, column: 20)
!5045 = !DILocation(line: 384, column: 43, scope: !1649, inlinedAt: !5043)
!5046 = !DILocation(line: 385, column: 31, scope: !1649, inlinedAt: !5043)
!5047 = !DILocation(line: 385, column: 5, scope: !1649, inlinedAt: !5043)
!5048 = !DILocation(line: 1894, column: 5, scope: !4653)
!5049 = !DILocation(line: 0, scope: !4652)
!5050 = !DILocation(line: 1880, column: 44, scope: !5051)
!5051 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 1880, column: 13)
!5052 = !DILocation(line: 1866, column: 19, scope: !4652)
!5053 = !DILocation(line: 1880, column: 13, scope: !5051)
!5054 = !DILocation(line: 1881, column: 13, scope: !5051)
!5055 = !DILocation(line: 1880, column: 13, scope: !4652)
!5056 = !DILocation(line: 1882, column: 50, scope: !4652)
!5057 = !DILocation(line: 977, column: 35, scope: !2908, inlinedAt: !5058)
!5058 = distinct !DILocation(line: 1882, column: 33, scope: !4652)
!5059 = !DILocation(line: 978, column: 10, scope: !2908, inlinedAt: !5058)
!5060 = !DILocation(line: 978, column: 8, scope: !2908, inlinedAt: !5058)
!5061 = !DILocation(line: 979, column: 32, scope: !2908, inlinedAt: !5058)
!5062 = !DILocation(line: 979, column: 17, scope: !2908, inlinedAt: !5058)
!5063 = !DILocation(line: 979, column: 13, scope: !2908, inlinedAt: !5058)
!5064 = !DILocation(line: 980, column: 18, scope: !2908, inlinedAt: !5058)
!5065 = !DILocation(line: 980, column: 15, scope: !2908, inlinedAt: !5058)
!5066 = !DILocation(line: 980, column: 5, scope: !2908, inlinedAt: !5058)
!5067 = !DILocation(line: 1883, column: 13, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 1883, column: 13)
!5069 = !DILocation(line: 1883, column: 20, scope: !5068)
!5070 = !DILocation(line: 1883, column: 31, scope: !5068)
!5071 = !DILocation(line: 1883, column: 37, scope: !5068)
!5072 = !DILocation(line: 1883, column: 13, scope: !4652)
!5073 = !DILocation(line: 1884, column: 17, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 1884, column: 17)
!5075 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 1883, column: 55)
!5076 = !DILocation(line: 1884, column: 17, scope: !5075)
!5077 = !DILocation(line: 384, column: 43, scope: !1649, inlinedAt: !5078)
!5078 = distinct !DILocation(line: 1885, column: 17, scope: !5074)
!5079 = !DILocation(line: 385, column: 31, scope: !1649, inlinedAt: !5078)
!5080 = !DILocation(line: 385, column: 5, scope: !1649, inlinedAt: !5078)
!5081 = !DILocation(line: 1885, column: 17, scope: !5074)
!5082 = !DILocation(line: 1888, column: 17, scope: !5074)
!5083 = !DILocation(line: 1889, column: 13, scope: !5075)
!5084 = !DILocation(line: 1890, column: 31, scope: !5075)
!5085 = !DILocation(line: 1890, column: 13, scope: !5075)
!5086 = !DILocation(line: 1891, column: 9, scope: !5075)
!5087 = !DILocation(line: 1892, column: 31, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 1891, column: 16)
!5089 = !DILocation(line: 1892, column: 13, scope: !5088)
!5090 = !DILocation(line: 1894, column: 17, scope: !4659)
!5091 = !DILocation(line: 1894, column: 55, scope: !4659)
!5092 = !DILocation(line: 1895, column: 29, scope: !4658)
!5093 = !DILocation(line: 1895, column: 41, scope: !4658)
!5094 = !DILocation(line: 87, column: 39, scope: !836, inlinedAt: !5095)
!5095 = distinct !DILocation(line: 1895, column: 22, scope: !4658)
!5096 = !DILocation(line: 88, column: 27, scope: !836, inlinedAt: !5095)
!5097 = !DILocation(line: 88, column: 19, scope: !836, inlinedAt: !5095)
!5098 = !DILocation(line: 89, column: 5, scope: !836, inlinedAt: !5095)
!5099 = !DILocation(line: 91, column: 20, scope: !848, inlinedAt: !5095)
!5100 = !DILocation(line: 91, column: 13, scope: !848, inlinedAt: !5095)
!5101 = !DILocation(line: 93, column: 20, scope: !848, inlinedAt: !5095)
!5102 = !DILocation(line: 93, column: 34, scope: !848, inlinedAt: !5095)
!5103 = !DILocation(line: 93, column: 13, scope: !848, inlinedAt: !5095)
!5104 = !DILocation(line: 95, column: 20, scope: !848, inlinedAt: !5095)
!5105 = !DILocation(line: 95, column: 35, scope: !848, inlinedAt: !5095)
!5106 = !DILocation(line: 95, column: 13, scope: !848, inlinedAt: !5095)
!5107 = !DILocation(line: 97, column: 20, scope: !848, inlinedAt: !5095)
!5108 = !DILocation(line: 97, column: 35, scope: !848, inlinedAt: !5095)
!5109 = !DILocation(line: 97, column: 13, scope: !848, inlinedAt: !5095)
!5110 = !DILocation(line: 99, column: 20, scope: !848, inlinedAt: !5095)
!5111 = !DILocation(line: 99, column: 35, scope: !848, inlinedAt: !5095)
!5112 = !DILocation(line: 99, column: 13, scope: !848, inlinedAt: !5095)
!5113 = !DILocation(line: 0, scope: !848, inlinedAt: !5095)
!5114 = !DILocation(line: 1895, column: 22, scope: !4658)
!5115 = !DILocation(line: 1895, column: 16, scope: !4658)
!5116 = !DILocation(line: 1896, column: 15, scope: !4658)
!5117 = !DILocation(line: 1900, column: 17, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 1900, column: 13)
!5119 = !DILocation(line: 1900, column: 13, scope: !4658)
!5120 = !DILocation(line: 1895, column: 13, scope: !4658)
!5121 = !DILocation(line: 1910, column: 23, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 1910, column: 9)
!5123 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 1910, column: 9)
!5124 = !DILocation(line: 1910, column: 9, scope: !5123)
!5125 = !DILocation(line: 1911, column: 17, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 1911, column: 17)
!5127 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 1910, column: 35)
!5128 = !DILocation(line: 1901, column: 20, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 1901, column: 17)
!5130 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 1900, column: 23)
!5131 = !DILocation(line: 1901, column: 17, scope: !5129)
!5132 = !DILocation(line: 1901, column: 17, scope: !5130)
!5133 = !DILocation(line: 1901, column: 26, scope: !5129)
!5134 = !DILocation(line: 1902, column: 21, scope: !5130)
!5135 = !DILocation(line: 1903, column: 31, scope: !5130)
!5136 = !DILocation(line: 1903, column: 13, scope: !5130)
!5137 = distinct !{!5137, !5124, !5138}
!5138 = !DILocation(line: 1917, column: 9, scope: !5123)
!5139 = !DILocation(line: 1911, column: 22, scope: !5126)
!5140 = !DILocation(line: 1911, column: 36, scope: !5126)
!5141 = !DILocation(line: 1911, column: 28, scope: !5126)
!5142 = !DILocation(line: 1910, column: 31, scope: !5122)
!5143 = !DILocation(line: 384, column: 28, scope: !1649, inlinedAt: !5144)
!5144 = distinct !DILocation(line: 1912, column: 17, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 1911, column: 43)
!5146 = !DILocation(line: 384, column: 43, scope: !1649, inlinedAt: !5144)
!5147 = !DILocation(line: 385, column: 31, scope: !1649, inlinedAt: !5144)
!5148 = !DILocation(line: 385, column: 5, scope: !1649, inlinedAt: !5144)
!5149 = !DILocation(line: 1918, column: 16, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 1918, column: 13)
!5151 = !DILocation(line: 1918, column: 13, scope: !5150)
!5152 = !DILocation(line: 1918, column: 13, scope: !4658)
!5153 = !DILocation(line: 1918, column: 22, scope: !5150)
!5154 = !DILocation(line: 1919, column: 22, scope: !4658)
!5155 = !DILocation(line: 1919, column: 19, scope: !4658)
!5156 = !DILocation(line: 1919, column: 17, scope: !4658)
!5157 = !DILocation(line: 1920, column: 9, scope: !4658)
!5158 = !DILocation(line: 1921, column: 27, scope: !4658)
!5159 = !DILocation(line: 1921, column: 9, scope: !4658)
!5160 = !DILocation(line: 1922, column: 17, scope: !4665)
!5161 = !DILocation(line: 1922, column: 55, scope: !4665)
!5162 = !DILocation(line: 1923, column: 16, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 1923, column: 13)
!5164 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 1922, column: 72)
!5165 = !DILocation(line: 1923, column: 13, scope: !5163)
!5166 = !DILocation(line: 1923, column: 13, scope: !5164)
!5167 = !DILocation(line: 567, column: 27, scope: !1994, inlinedAt: !5168)
!5168 = distinct !DILocation(line: 1924, column: 13, scope: !5163)
!5169 = !DILocation(line: 567, column: 36, scope: !1994, inlinedAt: !5168)
!5170 = !DILocation(line: 568, column: 5, scope: !1994, inlinedAt: !5168)
!5171 = !DILocation(line: 569, column: 5, scope: !1994, inlinedAt: !5168)
!5172 = !DILocation(line: 570, column: 23, scope: !1994, inlinedAt: !5168)
!5173 = !DILocation(line: 570, column: 5, scope: !1994, inlinedAt: !5168)
!5174 = !DILocation(line: 1924, column: 13, scope: !5163)
!5175 = !DILocation(line: 1926, column: 31, scope: !5163)
!5176 = !DILocation(line: 1926, column: 13, scope: !5163)
!5177 = !DILocation(line: 1927, column: 17, scope: !4664)
!5178 = !DILocation(line: 1927, column: 53, scope: !4664)
!5179 = !DILocation(line: 1928, column: 9, scope: !4663)
!5180 = !DILocation(line: 1930, column: 43, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !4663, file: !3, line: 1930, column: 13)
!5182 = !DILocation(line: 1928, column: 19, scope: !4663)
!5183 = !DILocation(line: 1930, column: 13, scope: !5181)
!5184 = !DILocation(line: 1931, column: 41, scope: !5181)
!5185 = !DILocation(line: 1930, column: 13, scope: !4663)
!5186 = !DILocation(line: 1932, column: 22, scope: !4663)
!5187 = !DILocalVariable(name: "end", arg: 1, scope: !5188, file: !3, line: 2197, type: !235)
!5188 = distinct !DISubprogram(name: "pauseClients", scope: !3, file: !3, line: 2197, type: !5189, isLocal: false, isDefinition: true, scopeLine: 2197, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5191)
!5189 = !DISubroutineType(types: !5190)
!5190 = !{null, !235}
!5191 = !{!5187}
!5192 = !DILocation(line: 2197, column: 28, scope: !5188, inlinedAt: !5193)
!5193 = distinct !DILocation(line: 1932, column: 9, scope: !4663)
!5194 = !DILocation(line: 2198, column: 17, scope: !5195, inlinedAt: !5193)
!5195 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 2198, column: 9)
!5196 = !DILocation(line: 2198, column: 10, scope: !5195, inlinedAt: !5193)
!5197 = !DILocation(line: 2198, column: 48, scope: !5195, inlinedAt: !5193)
!5198 = !DILocation(line: 2198, column: 39, scope: !5195, inlinedAt: !5193)
!5199 = !DILocation(line: 2198, column: 32, scope: !5195, inlinedAt: !5193)
!5200 = !DILocation(line: 2199, column: 39, scope: !5195, inlinedAt: !5193)
!5201 = !DILocation(line: 2199, column: 9, scope: !5195, inlinedAt: !5193)
!5202 = !DILocation(line: 2200, column: 27, scope: !5188, inlinedAt: !5193)
!5203 = !DILocation(line: 1933, column: 27, scope: !4663)
!5204 = !DILocation(line: 1933, column: 9, scope: !4663)
!5205 = !DILocation(line: 1934, column: 5, scope: !4664)
!5206 = !DILocation(line: 1935, column: 9, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 1934, column: 12)
!5208 = !DILocation(line: 1937, column: 1, scope: !4616)
!5209 = !DILocation(line: 2058, column: 31, scope: !4735)
!5210 = !DILocation(line: 2059, column: 10, scope: !4742)
!5211 = !DILocation(line: 2059, column: 9, scope: !4735)
!5212 = !DILocation(line: 2060, column: 15, scope: !4745)
!5213 = !DILocation(line: 2060, column: 14, scope: !4742)
!5214 = !DILocation(line: 2061, column: 15, scope: !4748)
!5215 = !DILocation(line: 2061, column: 14, scope: !4745)
!5216 = !DILocation(line: 2062, column: 15, scope: !4751)
!5217 = !DILocation(line: 2062, column: 14, scope: !4748)
!5218 = !DILocation(line: 2063, column: 15, scope: !4754)
!5219 = !DILocation(line: 2063, column: 42, scope: !4754)
!5220 = !DILocation(line: 0, scope: !4742)
!5221 = !DILocation(line: 2065, column: 1, scope: !4735)
!5222 = !DILocation(line: 2197, column: 28, scope: !5188)
!5223 = !DILocation(line: 2198, column: 17, scope: !5195)
!5224 = !DILocation(line: 2198, column: 10, scope: !5195)
!5225 = !DILocation(line: 2198, column: 48, scope: !5195)
!5226 = !DILocation(line: 2198, column: 39, scope: !5195)
!5227 = !DILocation(line: 2198, column: 32, scope: !5195)
!5228 = !DILocation(line: 2199, column: 39, scope: !5195)
!5229 = !DILocation(line: 2199, column: 9, scope: !5195)
!5230 = !DILocation(line: 2200, column: 27, scope: !5188)
!5231 = !DILocation(line: 2201, column: 1, scope: !5188)
!5232 = !DILocation(line: 1948, column: 37, scope: !2)
!5233 = !DILocation(line: 1950, column: 18, scope: !2)
!5234 = !DILocation(line: 1950, column: 12, scope: !2)
!5235 = !DILocation(line: 1952, column: 18, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1952, column: 9)
!5237 = !DILocation(line: 1952, column: 17, scope: !5236)
!5238 = !DILocation(line: 1952, column: 9, scope: !5236)
!5239 = !DILocation(line: 1952, column: 31, scope: !5236)
!5240 = !DILocation(line: 1952, column: 9, scope: !2)
!5241 = !DILocation(line: 1953, column: 9, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 1952, column: 37)
!5243 = !DILocation(line: 1954, column: 21, scope: !5242)
!5244 = !DILocation(line: 1955, column: 5, scope: !5242)
!5245 = !DILocation(line: 957, column: 30, scope: !1283, inlinedAt: !5246)
!5246 = distinct !DILocation(line: 1956, column: 5, scope: !2)
!5247 = !DILocation(line: 958, column: 12, scope: !1288, inlinedAt: !5246)
!5248 = !DILocation(line: 958, column: 38, scope: !1288, inlinedAt: !5246)
!5249 = !DILocation(line: 959, column: 14, scope: !1283, inlinedAt: !5246)
!5250 = !DILocation(line: 960, column: 28, scope: !1283, inlinedAt: !5246)
!5251 = !DILocation(line: 960, column: 45, scope: !1283, inlinedAt: !5246)
!5252 = !DILocation(line: 960, column: 5, scope: !1283, inlinedAt: !5246)
!5253 = !DILocation(line: 961, column: 1, scope: !1283, inlinedAt: !5246)
!5254 = !DILocation(line: 1957, column: 1, scope: !2)
!5255 = distinct !DISubprogram(name: "rewriteClientCommandVector", scope: !3, file: !3, line: 1962, type: !5256, isLocal: false, isDefinition: true, scopeLine: 1962, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5258)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{null, !6, !18, null}
!5258 = !{!5259, !5260, !5261, !5262, !5263, !5264}
!5259 = !DILocalVariable(name: "c", arg: 1, scope: !5255, file: !3, line: 1962, type: !6)
!5260 = !DILocalVariable(name: "argc", arg: 2, scope: !5255, file: !3, line: 1962, type: !18)
!5261 = !DILocalVariable(name: "ap", scope: !5255, file: !3, line: 1963, type: !1669)
!5262 = !DILocalVariable(name: "j", scope: !5255, file: !3, line: 1964, type: !18)
!5263 = !DILocalVariable(name: "argv", scope: !5255, file: !3, line: 1965, type: !150)
!5264 = !DILocalVariable(name: "a", scope: !5265, file: !3, line: 1970, type: !126)
!5265 = distinct !DILexicalBlock(scope: !5266, file: !3, line: 1969, column: 32)
!5266 = distinct !DILexicalBlock(scope: !5267, file: !3, line: 1969, column: 5)
!5267 = distinct !DILexicalBlock(scope: !5255, file: !3, line: 1969, column: 5)
!5268 = !DILocation(line: 1962, column: 41, scope: !5255)
!5269 = !DILocation(line: 1962, column: 48, scope: !5255)
!5270 = !DILocation(line: 1963, column: 5, scope: !5255)
!5271 = !DILocation(line: 1963, column: 13, scope: !5255)
!5272 = !DILocation(line: 1967, column: 34, scope: !5255)
!5273 = !DILocation(line: 1967, column: 33, scope: !5255)
!5274 = !DILocation(line: 1967, column: 12, scope: !5255)
!5275 = !DILocation(line: 1965, column: 12, scope: !5255)
!5276 = !DILocation(line: 1968, column: 5, scope: !5255)
!5277 = !DILocation(line: 1964, column: 9, scope: !5255)
!5278 = !DILocation(line: 1969, column: 19, scope: !5266)
!5279 = !DILocation(line: 1969, column: 5, scope: !5267)
!5280 = !DILocation(line: 1979, column: 24, scope: !5281)
!5281 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 1979, column: 5)
!5282 = distinct !DILexicalBlock(scope: !5255, file: !3, line: 1979, column: 5)
!5283 = !DILocation(line: 1979, column: 19, scope: !5281)
!5284 = !DILocation(line: 0, scope: !5255)
!5285 = !DILocation(line: 1979, column: 5, scope: !5282)
!5286 = !DILocation(line: 1972, column: 13, scope: !5265)
!5287 = !DILocation(line: 1970, column: 15, scope: !5265)
!5288 = !DILocation(line: 1973, column: 9, scope: !5265)
!5289 = !DILocation(line: 1973, column: 17, scope: !5265)
!5290 = !DILocation(line: 1974, column: 9, scope: !5265)
!5291 = !DILocation(line: 1969, column: 28, scope: !5266)
!5292 = distinct !{!5292, !5279, !5293}
!5293 = !DILocation(line: 1975, column: 5, scope: !5267)
!5294 = !DILocation(line: 1979, column: 48, scope: !5281)
!5295 = !DILocation(line: 1979, column: 35, scope: !5281)
!5296 = !DILocation(line: 1979, column: 31, scope: !5281)
!5297 = distinct !{!5297, !5285, !5298}
!5298 = !DILocation(line: 1979, column: 58, scope: !5282)
!5299 = !DILocation(line: 1980, column: 11, scope: !5255)
!5300 = !DILocation(line: 1980, column: 5, scope: !5255)
!5301 = !DILocation(line: 1982, column: 13, scope: !5255)
!5302 = !DILocation(line: 1983, column: 13, scope: !5255)
!5303 = !DILocation(line: 1984, column: 38, scope: !5255)
!5304 = !DILocation(line: 1984, column: 50, scope: !5255)
!5305 = !DILocation(line: 1984, column: 14, scope: !5255)
!5306 = !DILocation(line: 1984, column: 8, scope: !5255)
!5307 = !DILocation(line: 1984, column: 12, scope: !5255)
!5308 = !DILocation(line: 1985, column: 5, scope: !5255)
!5309 = !DILocation(line: 1986, column: 5, scope: !5255)
!5310 = !DILocation(line: 1987, column: 1, scope: !5255)
!5311 = distinct !DISubprogram(name: "replaceClientCommandVector", scope: !3, file: !3, line: 1990, type: !5312, isLocal: false, isDefinition: true, scopeLine: 1990, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5314)
!5312 = !DISubroutineType(types: !5313)
!5313 = !{null, !6, !18, !150}
!5314 = !{!5315, !5316, !5317}
!5315 = !DILocalVariable(name: "c", arg: 1, scope: !5311, file: !3, line: 1990, type: !6)
!5316 = !DILocalVariable(name: "argc", arg: 2, scope: !5311, file: !3, line: 1990, type: !18)
!5317 = !DILocalVariable(name: "argv", arg: 3, scope: !5311, file: !3, line: 1990, type: !150)
!5318 = !DILocation(line: 1990, column: 41, scope: !5311)
!5319 = !DILocation(line: 1990, column: 48, scope: !5311)
!5320 = !DILocation(line: 1990, column: 61, scope: !5311)
!5321 = !DILocation(line: 779, column: 36, scope: !2678, inlinedAt: !5322)
!5322 = distinct !DILocation(line: 1991, column: 5, scope: !5311)
!5323 = !DILocation(line: 780, column: 9, scope: !2678, inlinedAt: !5322)
!5324 = !DILocation(line: 781, column: 24, scope: !2685, inlinedAt: !5322)
!5325 = !DILocation(line: 781, column: 19, scope: !2685, inlinedAt: !5322)
!5326 = !DILocation(line: 781, column: 5, scope: !2686, inlinedAt: !5322)
!5327 = !DILocation(line: 782, column: 25, scope: !2685, inlinedAt: !5322)
!5328 = !DILocation(line: 782, column: 22, scope: !2685, inlinedAt: !5322)
!5329 = !DILocation(line: 782, column: 9, scope: !2685, inlinedAt: !5322)
!5330 = !DILocation(line: 781, column: 31, scope: !2685, inlinedAt: !5322)
!5331 = !DILocation(line: 783, column: 13, scope: !2678, inlinedAt: !5322)
!5332 = !DILocation(line: 784, column: 8, scope: !2678, inlinedAt: !5322)
!5333 = !DILocation(line: 784, column: 12, scope: !2678, inlinedAt: !5322)
!5334 = !DILocation(line: 57, column: 10, scope: !3419, inlinedAt: !5335)
!5335 = distinct !DILocation(line: 1992, column: 5, scope: !5311)
!5336 = !DILocation(line: 237, column: 45, scope: !2774, inlinedAt: !5337)
!5337 = distinct !DILocation(line: 57, column: 2, scope: !3419, inlinedAt: !5335)
!5338 = !DILocation(line: 231, column: 48, scope: !2780, inlinedAt: !5339)
!5339 = distinct !DILocation(line: 239, column: 2, scope: !2774, inlinedAt: !5337)
!5340 = !DILocation(line: 233, column: 2, scope: !2786, inlinedAt: !5339)
!5341 = !DILocation(line: 233, column: 2, scope: !2787, inlinedAt: !5339)
!5342 = !DILocation(line: 233, column: 2, scope: !2790, inlinedAt: !5339)
!5343 = !DILocation(line: 1992, column: 15, scope: !5311)
!5344 = !DILocation(line: 231, column: 57, scope: !2780, inlinedAt: !5339)
!5345 = !DILocation(line: 237, column: 54, scope: !2774, inlinedAt: !5337)
!5346 = !DILocation(line: 56, column: 33, scope: !3419, inlinedAt: !5335)
!5347 = !DILocation(line: 234, column: 5, scope: !2780, inlinedAt: !5339)
!5348 = !DILocation(line: 234, column: 2, scope: !2780, inlinedAt: !5339)
!5349 = !DILocation(line: 1993, column: 13, scope: !5311)
!5350 = !DILocation(line: 1994, column: 13, scope: !5311)
!5351 = !DILocation(line: 1995, column: 38, scope: !5311)
!5352 = !DILocation(line: 1995, column: 50, scope: !5311)
!5353 = !DILocation(line: 1995, column: 14, scope: !5311)
!5354 = !DILocation(line: 1995, column: 12, scope: !5311)
!5355 = !DILocation(line: 1996, column: 5, scope: !5311)
!5356 = !DILocation(line: 1997, column: 1, scope: !5311)
!5357 = distinct !DISubprogram(name: "rewriteClientCommandArgument", scope: !3, file: !3, line: 2010, type: !5358, isLocal: false, isDefinition: true, scopeLine: 2010, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5360)
!5358 = !DISubroutineType(types: !5359)
!5359 = !{null, !6, !18, !126}
!5360 = !{!5361, !5362, !5363, !5364}
!5361 = !DILocalVariable(name: "c", arg: 1, scope: !5357, file: !3, line: 2010, type: !6)
!5362 = !DILocalVariable(name: "i", arg: 2, scope: !5357, file: !3, line: 2010, type: !18)
!5363 = !DILocalVariable(name: "newval", arg: 3, scope: !5357, file: !3, line: 2010, type: !126)
!5364 = !DILocalVariable(name: "oldval", scope: !5357, file: !3, line: 2011, type: !126)
!5365 = !DILocation(line: 2010, column: 43, scope: !5357)
!5366 = !DILocation(line: 2010, column: 50, scope: !5357)
!5367 = !DILocation(line: 2010, column: 59, scope: !5357)
!5368 = !DILocation(line: 2013, column: 17, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 2013, column: 9)
!5370 = !DILocation(line: 2013, column: 11, scope: !5369)
!5371 = !DILocation(line: 0, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5369, file: !3, line: 2013, column: 23)
!5373 = !DILocation(line: 2013, column: 9, scope: !5357)
!5374 = !DILocation(line: 2018, column: 14, scope: !5357)
!5375 = !DILocation(line: 2014, column: 31, scope: !5372)
!5376 = !DILocation(line: 2014, column: 52, scope: !5372)
!5377 = !DILocation(line: 2014, column: 50, scope: !5372)
!5378 = !DILocation(line: 2014, column: 49, scope: !5372)
!5379 = !DILocation(line: 2014, column: 19, scope: !5372)
!5380 = !DILocation(line: 2014, column: 17, scope: !5372)
!5381 = !DILocation(line: 2015, column: 17, scope: !5372)
!5382 = !DILocation(line: 2016, column: 12, scope: !5372)
!5383 = !DILocation(line: 2016, column: 9, scope: !5372)
!5384 = !DILocation(line: 2016, column: 20, scope: !5372)
!5385 = !DILocation(line: 2017, column: 5, scope: !5372)
!5386 = !DILocation(line: 2018, column: 17, scope: !5357)
!5387 = !DILocation(line: 2011, column: 11, scope: !5357)
!5388 = !DILocation(line: 2019, column: 16, scope: !5357)
!5389 = !DILocation(line: 2020, column: 5, scope: !5357)
!5390 = !DILocation(line: 2021, column: 9, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 2021, column: 9)
!5392 = !DILocation(line: 2021, column: 9, scope: !5357)
!5393 = !DILocation(line: 2021, column: 17, scope: !5391)
!5394 = !DILocation(line: 2024, column: 11, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 2024, column: 9)
!5396 = !DILocation(line: 2024, column: 9, scope: !5357)
!5397 = !DILocation(line: 2025, column: 45, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 2024, column: 17)
!5399 = !DILocation(line: 2025, column: 42, scope: !5398)
!5400 = !DILocation(line: 2025, column: 54, scope: !5398)
!5401 = !DILocation(line: 2025, column: 18, scope: !5398)
!5402 = !DILocation(line: 2025, column: 12, scope: !5398)
!5403 = !DILocation(line: 2025, column: 16, scope: !5398)
!5404 = !DILocation(line: 2026, column: 9, scope: !5398)
!5405 = !DILocation(line: 2028, column: 1, scope: !5357)
!5406 = distinct !DISubprogram(name: "getClientTypeName", scope: !3, file: !3, line: 2067, type: !5407, isLocal: false, isDefinition: true, scopeLine: 2067, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5409)
!5407 = !DISubroutineType(types: !5408)
!5408 = !{!139, !18}
!5409 = !{!5410}
!5410 = !DILocalVariable(name: "class", arg: 1, scope: !5406, file: !3, line: 2067, type: !18)
!5411 = !DILocation(line: 2067, column: 29, scope: !5406)
!5412 = !DILocation(line: 2068, column: 5, scope: !5406)
!5413 = !DILocation(line: 2075, column: 1, scope: !5406)
!5414 = !DILocation(line: 2083, column: 43, scope: !1209)
!5415 = !DILocation(line: 2084, column: 9, scope: !1209)
!5416 = !DILocation(line: 2084, column: 19, scope: !1209)
!5417 = !DILocation(line: 2036, column: 56, scope: !1225, inlinedAt: !5418)
!5418 = distinct !DILocation(line: 2085, column: 30, scope: !1209)
!5419 = !DILocation(line: 2037, column: 19, scope: !1225, inlinedAt: !5418)
!5420 = !DILocation(line: 2038, column: 15, scope: !1225, inlinedAt: !5418)
!5421 = !DILocation(line: 2038, column: 45, scope: !1225, inlinedAt: !5418)
!5422 = !DILocation(line: 2038, column: 44, scope: !1225, inlinedAt: !5418)
!5423 = !DILocation(line: 2038, column: 27, scope: !1225, inlinedAt: !5418)
!5424 = !DILocation(line: 2085, column: 19, scope: !1209)
!5425 = !DILocation(line: 2050, column: 27, scope: !1238, inlinedAt: !5426)
!5426 = distinct !DILocation(line: 2087, column: 13, scope: !1209)
!5427 = !DILocation(line: 2051, column: 12, scope: !1243, inlinedAt: !5426)
!5428 = !DILocation(line: 2051, column: 18, scope: !1243, inlinedAt: !5426)
!5429 = !DILocation(line: 2051, column: 9, scope: !1238, inlinedAt: !5426)
!5430 = !DILocation(line: 2052, column: 35, scope: !1246, inlinedAt: !5426)
!5431 = !DILocation(line: 2055, column: 5, scope: !1238, inlinedAt: !5426)
!5432 = !DILocation(line: 2092, column: 42, scope: !1249)
!5433 = !DILocation(line: 2092, column: 59, scope: !1249)
!5434 = !DILocation(line: 2095, column: 42, scope: !1254)
!5435 = !DILocation(line: 2095, column: 59, scope: !1254)
!5436 = !DILocation(line: 0, scope: !1258)
!5437 = !DILocation(line: 2101, column: 9, scope: !1209)
!5438 = !DILocation(line: 2102, column: 16, scope: !1217)
!5439 = !DILocation(line: 2102, column: 45, scope: !1217)
!5440 = !DILocation(line: 0, scope: !1216)
!5441 = !DILocation(line: 2102, column: 13, scope: !1218)
!5442 = !DILocation(line: 2103, column: 45, scope: !1265)
!5443 = !DILocation(line: 2105, column: 9, scope: !1265)
!5444 = !DILocation(line: 2106, column: 46, scope: !1216)
!5445 = !DILocation(line: 2106, column: 20, scope: !1216)
!5446 = !DILocation(line: 2109, column: 50, scope: !1270)
!5447 = !DILocation(line: 2108, column: 25, scope: !1270)
!5448 = !DILocation(line: 2108, column: 17, scope: !1216)
!5449 = !DILocation(line: 2116, column: 41, scope: !1258)
!5450 = !DILocation(line: 0, scope: !1254)
!5451 = !DILocation(line: 2118, column: 17, scope: !1209)
!5452 = !DILocation(line: 2118, column: 5, scope: !1209)
!5453 = distinct !DISubprogram(name: "flushSlavesOutputBuffers", scope: !3, file: !3, line: 2145, type: !2596, isLocal: false, isDefinition: true, scopeLine: 2145, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5454)
!5454 = !{!5455, !5456, !5457, !5459, !5460}
!5455 = !DILocalVariable(name: "li", scope: !5453, file: !3, line: 2146, type: !3098)
!5456 = !DILocalVariable(name: "ln", scope: !5453, file: !3, line: 2147, type: !103)
!5457 = !DILocalVariable(name: "slave", scope: !5458, file: !3, line: 2151, type: !6)
!5458 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 2150, column: 33)
!5459 = !DILocalVariable(name: "events", scope: !5458, file: !3, line: 2152, type: !18)
!5460 = !DILocalVariable(name: "can_receive_writes", scope: !5458, file: !3, line: 2153, type: !18)
!5461 = !DILocation(line: 2146, column: 5, scope: !5453)
!5462 = !DILocation(line: 2149, column: 23, scope: !5453)
!5463 = !DILocation(line: 2146, column: 14, scope: !5453)
!5464 = !DILocation(line: 2149, column: 5, scope: !5453)
!5465 = !DILocation(line: 2150, column: 17, scope: !5453)
!5466 = !DILocation(line: 2147, column: 15, scope: !5453)
!5467 = !DILocation(line: 2150, column: 5, scope: !5453)
!5468 = !DILocation(line: 2151, column: 25, scope: !5458)
!5469 = !DILocation(line: 2151, column: 17, scope: !5458)
!5470 = !DILocation(line: 2152, column: 45, scope: !5458)
!5471 = !DILocation(line: 2152, column: 55, scope: !5458)
!5472 = !DILocation(line: 2152, column: 22, scope: !5458)
!5473 = !DILocation(line: 2152, column: 13, scope: !5458)
!5474 = !DILocation(line: 2153, column: 42, scope: !5458)
!5475 = !DILocation(line: 2153, column: 57, scope: !5458)
!5476 = !DILocation(line: 2154, column: 42, scope: !5458)
!5477 = !DILocation(line: 2154, column: 48, scope: !5458)
!5478 = !DILocation(line: 2170, column: 20, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5458, file: !3, line: 2170, column: 13)
!5480 = !DILocation(line: 2170, column: 30, scope: !5479)
!5481 = !DILocation(line: 2170, column: 52, scope: !5479)
!5482 = !DILocation(line: 2172, column: 21, scope: !5479)
!5483 = !DILocation(line: 2172, column: 14, scope: !5479)
!5484 = !DILocation(line: 2172, column: 44, scope: !5479)
!5485 = !DILocation(line: 664, column: 37, scope: !1060, inlinedAt: !5486)
!5486 = distinct !DILocation(line: 2173, column: 13, scope: !5479)
!5487 = !DILocation(line: 665, column: 15, scope: !1060, inlinedAt: !5486)
!5488 = !DILocation(line: 665, column: 12, scope: !1060, inlinedAt: !5486)
!5489 = !DILocation(line: 665, column: 22, scope: !1060, inlinedAt: !5486)
!5490 = !DILocation(line: 665, column: 25, scope: !1060, inlinedAt: !5486)
!5491 = !DILocation(line: 2170, column: 13, scope: !5458)
!5492 = !DILocation(line: 2175, column: 34, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 2174, column: 9)
!5494 = !DILocation(line: 2175, column: 13, scope: !5493)
!5495 = !DILocation(line: 2176, column: 9, scope: !5493)
!5496 = distinct !{!5496, !5467, !5497}
!5497 = !DILocation(line: 2177, column: 5, scope: !5453)
!5498 = !DILocation(line: 2178, column: 1, scope: !5453)
!5499 = distinct !DISubprogram(name: "processEventsWhileBlocked", scope: !3, file: !3, line: 2242, type: !3094, isLocal: false, isDefinition: true, scopeLine: 2242, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !5500)
!5500 = !{!5501, !5502, !5503}
!5501 = !DILocalVariable(name: "iterations", scope: !5499, file: !3, line: 2243, type: !18)
!5502 = !DILocalVariable(name: "count", scope: !5499, file: !3, line: 2244, type: !18)
!5503 = !DILocalVariable(name: "events", scope: !5504, file: !3, line: 2246, type: !18)
!5504 = distinct !DILexicalBlock(scope: !5499, file: !3, line: 2245, column: 26)
!5505 = !DILocation(line: 2243, column: 9, scope: !5499)
!5506 = !DILocation(line: 2244, column: 9, scope: !5499)
!5507 = !DILocation(line: 2245, column: 5, scope: !5499)
!5508 = !DILocation(line: 0, scope: !5499)
!5509 = !DILocation(line: 0, scope: !5504)
!5510 = !DILocation(line: 2245, column: 22, scope: !5499)
!5511 = !DILocation(line: 2246, column: 13, scope: !5504)
!5512 = !DILocation(line: 2247, column: 42, scope: !5504)
!5513 = !DILocation(line: 2247, column: 19, scope: !5504)
!5514 = !DILocation(line: 2248, column: 19, scope: !5504)
!5515 = !DILocation(line: 2248, column: 16, scope: !5504)
!5516 = !DILocation(line: 2249, column: 14, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 2249, column: 13)
!5518 = !DILocation(line: 2249, column: 13, scope: !5504)
!5519 = distinct !{!5519, !5507, !5520}
!5520 = !DILocation(line: 2251, column: 5, scope: !5499)
!5521 = !DILocation(line: 2252, column: 5, scope: !5499)
!5522 = !DILocation(line: 196, column: 2, scope: !313)
!5523 = !DILocation(line: 196, column: 10, scope: !313)
!5524 = !DILocation(line: 197, column: 2, scope: !313)
!5525 = !DILocation(line: 198, column: 2, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5527, file: !314, line: 198, column: 2)
!5527 = distinct !DILexicalBlock(scope: !313, file: !314, line: 198, column: 2)
!5528 = !DILocation(line: 199, column: 2, scope: !313)
!5529 = !DILocation(line: 200, column: 1, scope: !313)
