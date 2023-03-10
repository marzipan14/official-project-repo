; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/replication.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/replication.c"
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
%struct.sharedObjectsStruct = type { %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, %struct.redisObject*, [10 x %struct.redisObject*], [10000 x %struct.redisObject*], [32 x %struct.redisObject*], [32 x %struct.redisObject*], i8*, i8* }
%struct.rdbSaveInfo = type { i32, i32, [41 x i8], i64 }
%struct.listIter = type { %struct.listNode*, i32 }
%struct.timeval = type { i64, i64 }
%struct.stat = type { i16, i16, i32, i16, i16, i16, i16, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64 }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@replicationGetSlaveName.buf = internal global [78 x i8] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [26 x i8] c"%s:<unknown-replica-port>\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"client id #%llu\00", align 1
@server = external dso_local global %struct.redisServer, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"server.repl_backlog == NULL\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/replication.c\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"listLength(server.slaves) == 0\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"!(listLength(slaves) != 0 && server.repl_backlog == NULL)\00", align 1
@shared = external dso_local local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"*2\0D\0A$6\0D\0ASELECT\0D\0A$%d\0D\0A%s\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"%ld.%06ld \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"[%d lua] \00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"[%d unix:%s] \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"[%d %s] \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"\22%ld\22\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"[PSYNC] Replica request offset: %lld\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"[PSYNC] Backlog history len is zero\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"[PSYNC] Backlog size: %lld\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"[PSYNC] First byte: %lld\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"[PSYNC] History len: %lld\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"[PSYNC] Current index: %lld\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"[PSYNC] Skipping: %lld\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"[PSYNC] Index of first byte: %lld\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"[PSYNC] Reply total length: %lld\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"[PSYNC] addReply() length: %lld\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"+FULLRESYNC %s %lld\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [127 x i8] c"Partial resynchronization not accepted: Replication ID mismatch (Replica asked for '%s', my replication IDs are '%s' and '%s')\00", align 1
@.str.27 = private unnamed_addr constant [108 x i8] c"Partial resynchronization not accepted: Requested offset for second ID was %lld, but I can reply up to %lld\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"Full resync requested by replica %s\00", align 1
@.str.29 = private unnamed_addr constant [90 x i8] c"Unable to partial resync with replica %s for lack of backlog (Replica request was: %lld).\00", align 1
@.str.30 = private unnamed_addr constant [102 x i8] c"Warning: replica %s tried to PSYNC with an offset that is greater than the master replication offset.\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"+CONTINUE %s\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"+CONTINUE\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [109 x i8] c"Partial resynchronization request from %s accepted. Sending %lld bytes of backlog starting from offset %lld.\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"Starting BGSAVE for SYNC with target: %s\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"replicas sockets\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"disk\00", align 1
@.str.37 = private unnamed_addr constant [113 x i8] c"BGSAVE for replication: replication information not available, can't generate the RDB file right now. Try later.\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"BGSAVE for replication failed\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"BGSAVE failed, replication can't continue\00", align 1
@.str.40 = private unnamed_addr constant [62 x i8] c"-NOMASTERLINK Can't SYNC while not connected with my master\0D\0A\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"SYNC and PSYNC are invalid with pending output\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"Replica %s asks for synchronization\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"psync\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"Waiting for end of BGSAVE for SYNC\00", align 1
@.str.45 = private unnamed_addr constant [81 x i8] c"Can't attach the replica to the current BGSAVE. Waiting for next BGSAVE for SYNC\00", align 1
@.str.46 = private unnamed_addr constant [67 x i8] c"Current BGSAVE has socket target. Waiting for next BGSAVE for SYNC\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"Delay next BGSAVE for diskless SYNC\00", align 1
@.str.48 = private unnamed_addr constant [84 x i8] c"No BGSAVE in progress, but an AOF rewrite is active. BGSAVE for replication delayed\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"listening-port\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"ip-address\00", align 1
@.str.51 = private unnamed_addr constant [72 x i8] c"REPLCONF ip-address provided by replica instance is too long: %zd bytes\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"capa\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"eof\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"psync2\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"getack\00", align 1
@.str.57 = private unnamed_addr constant [33 x i8] c"Unrecognized REPLCONF option: %s\00", align 1
@.str.58 = private unnamed_addr constant [64 x i8] c"Unable to register writable event for replica bulk transfer: %s\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"Synchronization with replica %s succeeded\00", align 1
@.str.60 = private unnamed_addr constant [48 x i8] c"Write error sending RDB preamble to replica: %s\00", align 1
@.str.61 = private unnamed_addr constant [37 x i8] c"Read error sending DB to replica: %s\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"premature EOF\00", align 1
@.str.63 = private unnamed_addr constant [38 x i8] c"Write error sending DB to replica: %s\00", align 1
@.str.64 = private unnamed_addr constant [114 x i8] c"Streamed RDB transfer with replica %s succeeded (socket). Waiting for REPLCONF ACK from slave to enable streaming\00", align 1
@.str.65 = private unnamed_addr constant [44 x i8] c"SYNC failed. BGSAVE child returned an error\00", align 1
@.str.66 = private unnamed_addr constant [49 x i8] c"SYNC failed. Can't open/stat DB after BGSAVE: %s\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"$%lld\0D\0A\00", align 1
@.str.68 = private unnamed_addr constant [91 x i8] c"Setting secondary replication ID to %s, valid up to offset: %lld. New replication ID is %s\00", align 1
@replicationSendNewlineToMaster.newline_sent = internal unnamed_addr global i64 0, align 8, !dbg !303
@.str.69 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.70 = private unnamed_addr constant [96 x i8] c"Failed enabling the AOF after successful master synchronization! Trying it again in one second.\00", align 1
@.str.71 = private unnamed_addr constant [120 x i8] c"FATAL: this replica instance finished the synchronization with its master, but the AOF can't be turned on. Exiting now.\00", align 1
@readSyncBulkPayload.eofmark = internal global [40 x i8] zeroinitializer, align 16, !dbg !308
@readSyncBulkPayload.lastbytes = internal global [40 x i8] zeroinitializer, align 16, !dbg !411
@readSyncBulkPayload.usemark = internal unnamed_addr global i1 false, align 4, !dbg !461
@.str.72 = private unnamed_addr constant [45 x i8] c"I/O error reading bulk count from MASTER: %s\00", align 1
@.str.73 = private unnamed_addr constant [45 x i8] c"MASTER aborted replication with an error: %s\00", align 1
@.str.74 = private unnamed_addr constant [114 x i8] c"Bad protocol from MASTER, the first byte is not '$' (we received '%s'), are you sure the host and port are right?\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"EOF:\00", align 1
@.str.76 = private unnamed_addr constant [60 x i8] c"MASTER <-> REPLICA sync: receiving streamed RDB from master\00", align 1
@.str.77 = private unnamed_addr constant [58 x i8] c"MASTER <-> REPLICA sync: receiving %lld bytes from master\00", align 1
@.str.78 = private unnamed_addr constant [41 x i8] c"I/O error trying to sync with MASTER: %s\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"connection lost\00", align 1
@.str.80 = private unnamed_addr constant [105 x i8] c"Write error or short write writing to the DB dump file needed for MASTER <-> REPLICA synchronization: %s\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"short write\00", align 1
@.str.82 = private unnamed_addr constant [68 x i8] c"Error truncating the RDB file received from the master for SYNC: %s\00", align 1
@.str.83 = private unnamed_addr constant [171 x i8] c"Replica is about to load the RDB file received from the master, but there is a pending RDB child running. Killing process %ld and removing its temp file to avoid any race\00", align 1
@.str.84 = private unnamed_addr constant [92 x i8] c"Failed trying to rename the temp DB into dump.rdb in MASTER <-> REPLICA synchronization: %s\00", align 1
@.str.85 = private unnamed_addr constant [43 x i8] c"MASTER <-> REPLICA sync: Flushing old data\00", align 1
@.str.86 = private unnamed_addr constant [46 x i8] c"MASTER <-> REPLICA sync: Loading DB in memory\00", align 1
@readSyncBulkPayload.rsi = private unnamed_addr constant %struct.rdbSaveInfo { i32 -1, i32 0, [41 x i8] c"000000000000000000000000000000\00\00\00\00\00\00\00\00\00\00\00", i64 -1 }, align 8
@.str.87 = private unnamed_addr constant [62 x i8] c"Failed trying to load the MASTER synchronization DB from disk\00", align 1
@.str.88 = private unnamed_addr constant [47 x i8] c"MASTER <-> REPLICA sync: Finished with success\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"$%zu\0D\0A%s\0D\0A\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"*%zu\0D\0A\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c"-Writing to master: %s\00", align 1
@.str.92 = private unnamed_addr constant [25 x i8] c"-Reading from master: %s\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.94 = private unnamed_addr constant [52 x i8] c"Trying a partial resynchronization (request %s:%s).\00", align 1
@.str.95 = private unnamed_addr constant [58 x i8] c"Partial resynchronization not possible (no cached master)\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"PSYNC\00", align 1
@.str.99 = private unnamed_addr constant [35 x i8] c"Unable to send PSYNC to master: %s\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"+FULLRESYNC\00", align 1
@.str.101 = private unnamed_addr constant [46 x i8] c"Master replied with wrong +FULLRESYNC syntax.\00", align 1
@.str.102 = private unnamed_addr constant [33 x i8] c"Full resync from master: %s:%lld\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"+CONTINUE\00", align 1
@.str.104 = private unnamed_addr constant [50 x i8] c"Successful partial resynchronization with master.\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"Master replication ID changed to %s\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"-NOMASTERLINK\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"-LOADING\00", align 1
@.str.108 = private unnamed_addr constant [68 x i8] c"Master is currently unable to PSYNC but should be in the future: %s\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"-ERR\00", align 1
@.str.110 = private unnamed_addr constant [42 x i8] c"Unexpected reply to PSYNC from master: %s\00", align 1
@.str.111 = private unnamed_addr constant [63 x i8] c"Master does not support PSYNC or is in error state (reply: %s)\00", align 1
@.str.112 = private unnamed_addr constant [39 x i8] c"Error condition on socket for SYNC: %s\00", align 1
@.str.113 = private unnamed_addr constant [47 x i8] c"Non blocking connect for SYNC fired the event.\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"-NOAUTH\00", align 1
@.str.116 = private unnamed_addr constant [29 x i8] c"-ERR operation not permitted\00", align 1
@.str.117 = private unnamed_addr constant [38 x i8] c"Error reply to PING from master: '%s'\00", align 1
@.str.118 = private unnamed_addr constant [52 x i8] c"Master replied to PING, replication can continue...\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"AUTH\00", align 1
@.str.120 = private unnamed_addr constant [29 x i8] c"Unable to AUTH to MASTER: %s\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"REPLCONF\00", align 1
@.str.122 = private unnamed_addr constant [70 x i8] c"(Non critical) Master does not understand REPLCONF listening-port: %s\00", align 1
@.str.123 = private unnamed_addr constant [66 x i8] c"(Non critical) Master does not understand REPLCONF ip-address: %s\00", align 1
@.str.124 = private unnamed_addr constant [60 x i8] c"(Non critical) Master does not understand REPLCONF capa: %s\00", align 1
@.str.125 = private unnamed_addr constant [39 x i8] c"Write error sending the PSYNC command.\00", align 1
@.str.126 = private unnamed_addr constant [79 x i8] c"syncWithMaster(): state machine error, state should be RECEIVE_PSYNC but is %d\00", align 1
@.str.127 = private unnamed_addr constant [70 x i8] c"MASTER <-> REPLICA sync: Master accepted a Partial Resynchronization.\00", align 1
@.str.128 = private unnamed_addr constant [22 x i8] c"Retrying with SYNC...\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"SYNC\0D\0A\00", align 1
@.str.130 = private unnamed_addr constant [32 x i8] c"I/O error writing to MASTER: %s\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"temp-%d.%ld.rdb\00", align 1
@.str.132 = private unnamed_addr constant [72 x i8] c"Opening the temp file needed for MASTER <-> REPLICA synchronization: %s\00", align 1
@.str.133 = private unnamed_addr constant [49 x i8] c"Can't create readable event for SYNC: %s (fd=%d)\00", align 1
@.str.134 = private unnamed_addr constant [55 x i8] c"Sending command to master in replication handshake: %s\00", align 1
@.str.135 = private unnamed_addr constant [32 x i8] c"Unable to connect to MASTER: %s\00", align 1
@.str.136 = private unnamed_addr constant [37 x i8] c"Can't create readable event for SYNC\00", align 1
@.str.137 = private unnamed_addr constant [41 x i8] c"server.repl_state == REPL_STATE_TRANSFER\00", align 1
@.str.138 = private unnamed_addr constant [39 x i8] c"REPLICAOF not allowed in cluster mode.\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.141 = private unnamed_addr constant [45 x i8] c"MASTER MODE enabled (user request from '%s')\00", align 1
@.str.142 = private unnamed_addr constant [47 x i8] c"Command is not valid when client is a replica.\00", align 1
@.str.143 = private unnamed_addr constant [115 x i8] c"REPLICAOF would result into synchronization with the master we are already connected with. No operation performed.\00", align 1
@.str.144 = private unnamed_addr constant [44 x i8] c"+OK Already connected to specified master\0D\0A\00", align 1
@.str.145 = private unnamed_addr constant [49 x i8] c"REPLICAOF %s:%d enabled (user request from '%s')\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"handshake\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.151 = private unnamed_addr constant [11 x i8] c"connecting\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.153 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.156 = private unnamed_addr constant [54 x i8] c"server.master != NULL && server.cached_master == NULL\00", align 1
@.str.157 = private unnamed_addr constant [39 x i8] c"Caching the disconnected master state.\00", align 1
@.str.158 = private unnamed_addr constant [168 x i8] c"Before turning into a replica, using my master parameters to synthesize a cached master: I may be able to synchronize with the new master with just a partial transfer.\00", align 1
@.str.159 = private unnamed_addr constant [43 x i8] c"Discarding previously cached master state.\00", align 1
@.str.160 = private unnamed_addr constant [81 x i8] c"Error resurrecting the cached master, impossible to add the readable handler: %s\00", align 1
@.str.161 = private unnamed_addr constant [81 x i8] c"Error resurrecting the cached master, impossible to add the writable handler: %s\00", align 1
@replScriptCacheDictType = external dso_local global %struct.dictType, align 8
@.str.162 = private unnamed_addr constant [18 x i8] c"retval == DICT_OK\00", align 1
@.str.163 = private unnamed_addr constant [209 x i8] c"WAIT cannot be used with replica instances. Please also note that since Redis 4.0 if a replica is configured to be writable (which is not the default) writes to replicas are just local and are not propagated.\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"ln != NULL\00", align 1
@replicationCron.replication_cron_loops = internal unnamed_addr global i64 0, align 8, !dbg !415
@.str.165 = private unnamed_addr constant [36 x i8] c"Timeout connecting to the MASTER...\00", align 1
@.str.166 = private unnamed_addr constant [140 x i8] c"Timeout receiving bulk data from MASTER... If the problem persists try to set the 'repl-timeout' parameter in redis.conf to a larger value.\00", align 1
@.str.167 = private unnamed_addr constant [45 x i8] c"MASTER timeout: no data nor PING received...\00", align 1
@.str.168 = private unnamed_addr constant [27 x i8] c"Connecting to MASTER %s:%d\00", align 1
@.str.169 = private unnamed_addr constant [32 x i8] c"MASTER <-> REPLICA sync started\00", align 1
@.str.170 = private unnamed_addr constant [35 x i8] c"Disconnecting timedout replica: %s\00", align 1
@.str.171 = private unnamed_addr constant [71 x i8] c"Replication backlog freed after %d seconds without connected replicas.\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @replicationGetSlaveName(%struct.client*) local_unnamed_addr #0 !dbg !2 {
  %2 = alloca [46 x i8], align 16
  %3 = getelementptr inbounds [46 x i8], [46 x i8]* %2, i64 0, i64 0, !dbg !467
  call void @llvm.lifetime.start.p0i8(i64 46, i8* nonnull %3) #7, !dbg !467
  store i8 0, i8* %3, align 16, !dbg !469, !tbaa !470
  store i8 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0), align 16, !dbg !473, !tbaa !470
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 36, i64 0, !dbg !474
  %5 = load i8, i8* %4, align 8, !dbg !474, !tbaa !470
  %6 = icmp eq i8 %5, 0, !dbg !476
  br i1 %6, label %7, label %15, !dbg !477

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !478
  %9 = load i32, i32* %8, align 8, !dbg !478, !tbaa !479
  %10 = call i32 @anetPeerToString(i32 %9, i8* nonnull %3, i64 46, i32* null) #8, !dbg !487
  %11 = icmp eq i32 %10, -1, !dbg !488
  br i1 %11, label %25, label %12, !dbg !489

; <label>:12:                                     ; preds = %7
  %13 = load i8, i8* %4, align 8, !dbg !490, !tbaa !470
  %14 = icmp eq i8 %13, 0, !dbg !493
  br i1 %14, label %17, label %15, !dbg !494

; <label>:15:                                     ; preds = %1, %12
  %16 = call i8* @memcpy(i8* nonnull %3, i8* nonnull %4, i64 46) #8, !dbg !495
  br label %17, !dbg !495

; <label>:17:                                     ; preds = %12, %15
  %18 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 35, !dbg !496
  %19 = load i32, i32* %18, align 4, !dbg !496, !tbaa !498
  %20 = icmp eq i32 %19, 0, !dbg !499
  br i1 %20, label %23, label %21, !dbg !500

; <label>:21:                                     ; preds = %17
  %22 = call i32 @anetFormatAddr(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0), i64 78, i8* nonnull %3, i32 %19) #8, !dbg !501
  br label %29, !dbg !501

; <label>:23:                                     ; preds = %17
  %24 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0), i64 78, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* nonnull %3) #8, !dbg !502
  br label %29

; <label>:25:                                     ; preds = %7
  %26 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 0, !dbg !503
  %27 = load i64, i64* %26, align 8, !dbg !503, !tbaa !505
  %28 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0), i64 78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %27) #8, !dbg !506
  br label %29

; <label>:29:                                     ; preds = %21, %23, %25
  call void @llvm.lifetime.end.p0i8(i64 46, i8* nonnull %3) #7, !dbg !507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  ret i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0), !dbg !508
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i32 @anetPeerToString(i32, i8*, i64, i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @anetFormatAddr(i8*, i64, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local void @createReplicationBacklog() local_unnamed_addr #0 !dbg !509 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !510, !tbaa !511
  %2 = icmp eq i8* %1, null, !dbg !510
  br i1 %2, label %4, label %3, !dbg !510

; <label>:3:                                      ; preds = %0
  tail call void @_serverAssert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 79) #8, !dbg !510
  tail call void @_exit(i32 1) #9, !dbg !510
  unreachable, !dbg !510

; <label>:4:                                      ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !517, !tbaa !518
  %6 = tail call i8* @zmalloc(i64 %5) #8, !dbg !519
  store i8* %6, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !520, !tbaa !511
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185) to <2 x i64>*), align 8, !dbg !521, !tbaa !522
  %7 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !523, !tbaa !524
  %8 = add nsw i64 %7, 1, !dbg !525
  store i64 %8, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !526, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !528
  ret void, !dbg !528
}

; Function Attrs: noredzone
declare dso_local void @_serverAssert(i8*, i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @_exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @resizeReplicationBacklog(i64) local_unnamed_addr #0 !dbg !529 {
  %2 = icmp sgt i64 %0, 16384, !dbg !535
  %3 = select i1 %2, i64 %0, i64 16384, !dbg !535
  %4 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !536, !tbaa !518
  %5 = icmp eq i64 %4, %3, !dbg !538
  br i1 %5, label %14, label %6, !dbg !539

; <label>:6:                                      ; preds = %1
  store i64 %3, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !540, !tbaa !518
  %7 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !541, !tbaa !511
  %8 = icmp eq i8* %7, null, !dbg !543
  br i1 %8, label %14, label %9, !dbg !544

; <label>:9:                                      ; preds = %6
  tail call void @zfree(i8* nonnull %7) #8, !dbg !545
  %10 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !547, !tbaa !518
  %11 = tail call i8* @zmalloc(i64 %10) #8, !dbg !548
  store i8* %11, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !549, !tbaa !511
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185) to <2 x i64>*), align 8, !dbg !550, !tbaa !522
  %12 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !551, !tbaa !524
  %13 = add nsw i64 %12, 1, !dbg !552
  store i64 %13, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !553, !tbaa !527
  br label %14, !dbg !554

; <label>:14:                                     ; preds = %6, %1, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  ret void, !dbg !555
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @freeReplicationBacklog() local_unnamed_addr #0 !dbg !556 {
  %1 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !557, !tbaa !558
  %2 = getelementptr inbounds %struct.list, %struct.list* %1, i64 0, i32 5, !dbg !557
  %3 = load i64, i64* %2, align 8, !dbg !557, !tbaa !559
  %4 = icmp eq i64 %3, 0, !dbg !557
  br i1 %4, label %6, label %5, !dbg !557

; <label>:5:                                      ; preds = %0
  tail call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 118) #8, !dbg !557
  tail call void @_exit(i32 1) #9, !dbg !557
  unreachable, !dbg !557

; <label>:6:                                      ; preds = %0
  %7 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !561, !tbaa !511
  tail call void @zfree(i8* %7) #8, !dbg !562
  store i8* null, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !563, !tbaa !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  ret void, !dbg !564
}

; Function Attrs: noredzone nounwind
define dso_local void @feedReplicationBacklog(i8*, i64) local_unnamed_addr #0 !dbg !565 {
  %3 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !578, !tbaa !524
  %4 = add i64 %3, %1, !dbg !578
  store i64 %4, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !578, !tbaa !524
  %5 = icmp eq i64 %1, 0, !dbg !579
  br i1 %5, label %6, label %9, !dbg !579

; <label>:6:                                      ; preds = %2
  %7 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !580, !tbaa !582
  %8 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !583, !tbaa !518
  br label %33, !dbg !579

; <label>:9:                                      ; preds = %2
  %10 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !584, !tbaa !518
  %11 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !585, !tbaa !586
  br label %12, !dbg !584

; <label>:12:                                     ; preds = %9, %12
  %13 = phi i64 [ %27, %12 ], [ %11, %9 ], !dbg !585
  %14 = phi i64 [ %25, %12 ], [ %10, %9 ], !dbg !584
  %15 = phi i8* [ %29, %12 ], [ %0, %9 ]
  %16 = phi i64 [ %28, %12 ], [ %1, %9 ]
  %17 = sub nsw i64 %14, %13, !dbg !587
  %18 = icmp ugt i64 %17, %16, !dbg !589
  %19 = select i1 %18, i64 %16, i64 %17, !dbg !591
  %20 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !592, !tbaa !511
  %21 = getelementptr inbounds i8, i8* %20, i64 %13, !dbg !593
  %22 = tail call i8* @memcpy(i8* %21, i8* %15, i64 %19) #8, !dbg !594
  %23 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !595, !tbaa !586
  %24 = add i64 %23, %19, !dbg !595
  %25 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !596, !tbaa !518
  %26 = icmp eq i64 %24, %25, !dbg !598
  %27 = select i1 %26, i64 0, i64 %24, !dbg !599
  store i64 %27, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !600
  %28 = sub i64 %16, %19, !dbg !601
  %29 = getelementptr inbounds i8, i8* %15, i64 %19, !dbg !602
  %30 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !603, !tbaa !582
  %31 = add i64 %30, %19, !dbg !603
  store i64 %31, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !603, !tbaa !582
  %32 = icmp eq i64 %28, 0, !dbg !579
  br i1 %32, label %33, label %12, !dbg !579, !llvm.loop !604

; <label>:33:                                     ; preds = %12, %6
  %34 = phi i64 [ %8, %6 ], [ %25, %12 ], !dbg !583
  %35 = phi i64 [ %7, %6 ], [ %31, %12 ], !dbg !580
  %36 = icmp sgt i64 %35, %34, !dbg !606
  br i1 %36, label %37, label %38, !dbg !607

; <label>:37:                                     ; preds = %33
  store i64 %34, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !608, !tbaa !582
  br label %38, !dbg !609

; <label>:38:                                     ; preds = %37, %33
  %39 = phi i64 [ %34, %37 ], [ %35, %33 ], !dbg !610
  %40 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !611, !tbaa !524
  %41 = add i64 %40, 1, !dbg !612
  %42 = sub i64 %41, %39, !dbg !613
  store i64 %42, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !614, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  ret void, !dbg !615
}

; Function Attrs: noredzone nounwind
define dso_local void @feedReplicationBacklogWithObject(%struct.redisObject* nocapture readonly) local_unnamed_addr #0 !dbg !616 {
  %2 = alloca [21 x i8], align 16
  %3 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 0, !dbg !628
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %3) #7, !dbg !628
  %4 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 0, !dbg !630
  %5 = load i32, i32* %4, align 8, !dbg !630
  %6 = and i32 %5, 240, !dbg !630
  %7 = icmp eq i32 %6, 16, !dbg !632
  %8 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %0, i64 0, i32 2, !dbg !633
  br i1 %7, label %9, label %14, !dbg !635

; <label>:9:                                      ; preds = %1
  %10 = bitcast i8** %8 to i64*, !dbg !636
  %11 = load i64, i64* %10, align 8, !dbg !636, !tbaa !638
  %12 = call i32 @ll2string(i8* nonnull %3, i64 21, i64 %11) #8, !dbg !640
  %13 = sext i32 %12 to i64, !dbg !640
  br label %42, !dbg !643

; <label>:14:                                     ; preds = %1
  %15 = load i8*, i8** %8, align 8, !dbg !644, !tbaa !638
  %16 = getelementptr inbounds i8, i8* %15, i64 -1, !dbg !656
  %17 = load i8, i8* %16, align 1, !dbg !656, !tbaa !470
  %18 = trunc i8 %17 to i3, !dbg !658
  switch i3 %18, label %40 [
    i3 0, label %19
    i3 1, label %22
    i3 2, label %26
    i3 3, label %31
    i3 -4, label %36
  ], !dbg !658

; <label>:19:                                     ; preds = %14
  %20 = lshr i8 %17, 3, !dbg !659
  %21 = zext i8 %20 to i64, !dbg !659
  br label %40, !dbg !661

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds i8, i8* %15, i64 -3, !dbg !662
  %24 = load i8, i8* %23, align 1, !dbg !663, !tbaa !470
  %25 = zext i8 %24 to i64, !dbg !662
  br label %40, !dbg !664

; <label>:26:                                     ; preds = %14
  %27 = getelementptr inbounds i8, i8* %15, i64 -5, !dbg !665
  %28 = bitcast i8* %27 to i16*, !dbg !666
  %29 = load i16, i16* %28, align 1, !dbg !666, !tbaa !667
  %30 = zext i16 %29 to i64, !dbg !665
  br label %40, !dbg !669

; <label>:31:                                     ; preds = %14
  %32 = getelementptr inbounds i8, i8* %15, i64 -9, !dbg !670
  %33 = bitcast i8* %32 to i32*, !dbg !671
  %34 = load i32, i32* %33, align 1, !dbg !671, !tbaa !672
  %35 = zext i32 %34 to i64, !dbg !670
  br label %40, !dbg !673

; <label>:36:                                     ; preds = %14
  %37 = getelementptr inbounds i8, i8* %15, i64 -17, !dbg !674
  %38 = bitcast i8* %37 to i64*, !dbg !675
  %39 = load i64, i64* %38, align 1, !dbg !675, !tbaa !676
  br label %40, !dbg !677

; <label>:40:                                     ; preds = %14, %19, %22, %26, %31, %36
  %41 = phi i64 [ %39, %36 ], [ %35, %31 ], [ %30, %26 ], [ %25, %22 ], [ %21, %19 ], [ 0, %14 ], !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  br label %42

; <label>:42:                                     ; preds = %40, %9
  %43 = phi i8* [ %3, %9 ], [ %15, %40 ], !dbg !633
  %44 = phi i64 [ %13, %9 ], [ %41, %40 ], !dbg !633
  %45 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !684, !tbaa !524
  %46 = add i64 %45, %44, !dbg !684
  store i64 %46, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !684, !tbaa !524
  %47 = icmp eq i64 %44, 0, !dbg !685
  br i1 %47, label %48, label %51, !dbg !685

; <label>:48:                                     ; preds = %42
  %49 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !686, !tbaa !582
  %50 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !687, !tbaa !518
  br label %75, !dbg !685

; <label>:51:                                     ; preds = %42
  %52 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !688, !tbaa !518
  %53 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !689, !tbaa !586
  br label %54, !dbg !688

; <label>:54:                                     ; preds = %54, %51
  %55 = phi i64 [ %69, %54 ], [ %53, %51 ], !dbg !689
  %56 = phi i64 [ %67, %54 ], [ %52, %51 ], !dbg !688
  %57 = phi i8* [ %71, %54 ], [ %43, %51 ]
  %58 = phi i64 [ %70, %54 ], [ %44, %51 ]
  %59 = sub nsw i64 %56, %55, !dbg !690
  %60 = icmp ugt i64 %59, %58, !dbg !692
  %61 = select i1 %60, i64 %58, i64 %59, !dbg !693
  %62 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !694, !tbaa !511
  %63 = getelementptr inbounds i8, i8* %62, i64 %55, !dbg !695
  %64 = call i8* @memcpy(i8* %63, i8* %57, i64 %61) #8, !dbg !696
  %65 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !697, !tbaa !586
  %66 = add i64 %65, %61, !dbg !697
  %67 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !698, !tbaa !518
  %68 = icmp eq i64 %66, %67, !dbg !699
  %69 = select i1 %68, i64 0, i64 %66, !dbg !700
  store i64 %69, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !701
  %70 = sub i64 %58, %61, !dbg !702
  %71 = getelementptr inbounds i8, i8* %57, i64 %61, !dbg !703
  %72 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !704, !tbaa !582
  %73 = add i64 %72, %61, !dbg !704
  store i64 %73, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !704, !tbaa !582
  %74 = icmp eq i64 %70, 0, !dbg !685
  br i1 %74, label %75, label %54, !dbg !685, !llvm.loop !604

; <label>:75:                                     ; preds = %54, %48
  %76 = phi i64 [ %50, %48 ], [ %67, %54 ], !dbg !687
  %77 = phi i64 [ %49, %48 ], [ %73, %54 ], !dbg !686
  %78 = icmp sgt i64 %77, %76, !dbg !705
  br i1 %78, label %79, label %80, !dbg !706

; <label>:79:                                     ; preds = %75
  store i64 %76, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !707, !tbaa !582
  br label %80, !dbg !708

; <label>:80:                                     ; preds = %75, %79
  %81 = phi i64 [ %76, %79 ], [ %77, %75 ], !dbg !709
  %82 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !710, !tbaa !524
  %83 = sub i64 1, %81, !dbg !711
  %84 = add i64 %83, %82, !dbg !712
  store i64 %84, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !713, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !714
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %3) #7, !dbg !715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  ret void, !dbg !715
}

; Function Attrs: noredzone
declare dso_local i32 @ll2string(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationFeedSlaves(%struct.list*, i32, %struct.redisObject** nocapture readonly, i32) local_unnamed_addr #0 !dbg !716 {
  %5 = alloca %struct.listIter, align 8
  %6 = alloca [21 x i8], align 16
  %7 = alloca [24 x i8], align 16
  %8 = bitcast %struct.listIter* %5 to i8*, !dbg !753
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !753
  %9 = getelementptr inbounds [21 x i8], [21 x i8]* %6, i64 0, i64 0, !dbg !754
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %9) #7, !dbg !754
  %10 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !756, !tbaa !758
  %11 = icmp eq i8* %10, null, !dbg !759
  br i1 %11, label %12, label %236, !dbg !760

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !761, !tbaa !511
  %14 = icmp eq i8* %13, null, !dbg !763
  br i1 %14, label %15, label %20, !dbg !764

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.list, %struct.list* %0, i64 0, i32 5, !dbg !765
  %17 = load i64, i64* %16, align 8, !dbg !765, !tbaa !559
  %18 = icmp eq i64 %17, 0, !dbg !766
  br i1 %18, label %236, label %19, !dbg !767

; <label>:19:                                     ; preds = %15
  tail call void @_serverAssert(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 192) #8, !dbg !768
  tail call void @_exit(i32 1) #9, !dbg !768
  unreachable, !dbg !768

; <label>:20:                                     ; preds = %12
  %21 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !769, !tbaa !770
  %22 = icmp eq i32 %21, %1, !dbg !771
  br i1 %22, label %23, label %24, !dbg !772

; <label>:23:                                     ; preds = %20
  store i32 %1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !773, !tbaa !770
  br label %61, !dbg !774

; <label>:24:                                     ; preds = %20
  %25 = icmp ult i32 %1, 10, !dbg !775
  %26 = sext i32 %1 to i64, !dbg !776
  br i1 %25, label %27, label %30, !dbg !775

; <label>:27:                                     ; preds = %24
  %28 = getelementptr inbounds %struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 46, i64 %26, !dbg !777
  %29 = load %struct.redisObject*, %struct.redisObject** %28, align 8, !dbg !777, !tbaa !779
  br label %37, !dbg !781

; <label>:30:                                     ; preds = %24
  %31 = call i32 @ll2string(i8* nonnull %9, i64 21, i64 %26) #8, !dbg !782
  %32 = call i8* @sdsempty() #8, !dbg !784
  %33 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %31, i8* nonnull %9) #8, !dbg !785
  %34 = call %struct.redisObject* @createObject(i32 0, i8* %33) #8, !dbg !786
  %35 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !787, !tbaa !511
  %36 = icmp eq i8* %35, null, !dbg !789
  br i1 %36, label %39, label %37, !dbg !781

; <label>:37:                                     ; preds = %27, %30
  %38 = phi %struct.redisObject* [ %29, %27 ], [ %34, %30 ]
  call void @feedReplicationBacklogWithObject(%struct.redisObject* %38) #10, !dbg !790
  br label %39, !dbg !790

; <label>:39:                                     ; preds = %30, %37
  %40 = phi %struct.redisObject* [ %34, %30 ], [ %38, %37 ]
  call void @listRewind(%struct.list* %0, %struct.listIter* nonnull %5) #8, !dbg !792
  %41 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #8, !dbg !793
  %42 = icmp eq %struct.listNode* %41, null, !dbg !795
  br i1 %42, label %55, label %43, !dbg !795

; <label>:43:                                     ; preds = %39, %52
  %44 = phi %struct.listNode* [ %53, %52 ], [ %41, %39 ]
  %45 = getelementptr inbounds %struct.listNode, %struct.listNode* %44, i64 0, i32 2, !dbg !796
  %46 = bitcast i8** %45 to %struct.client**, !dbg !796
  %47 = load %struct.client*, %struct.client** %46, align 8, !dbg !796, !tbaa !797
  %48 = getelementptr inbounds %struct.client, %struct.client* %47, i64 0, i32 23, !dbg !800
  %49 = load i32, i32* %48, align 8, !dbg !800, !tbaa !802
  %50 = icmp eq i32 %49, 6, !dbg !803
  br i1 %50, label %52, label %51, !dbg !804, !llvm.loop !805

; <label>:51:                                     ; preds = %43
  call void @addReply(%struct.client* %47, %struct.redisObject* %40) #8, !dbg !807
  br label %52, !dbg !806

; <label>:52:                                     ; preds = %43, %51
  %53 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #8, !dbg !793
  %54 = icmp eq %struct.listNode* %53, null, !dbg !795
  br i1 %54, label %55, label %43, !dbg !795

; <label>:55:                                     ; preds = %52, %39
  %56 = icmp ugt i32 %1, 9, !dbg !808
  br i1 %56, label %57, label %58, !dbg !808

; <label>:57:                                     ; preds = %55
  call void @decrRefCount(%struct.redisObject* %40) #8, !dbg !810
  br label %58, !dbg !810

; <label>:58:                                     ; preds = %57, %55
  %59 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !811, !tbaa !511
  store i32 %1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !773, !tbaa !770
  %60 = icmp eq i8* %59, null, !dbg !812
  br i1 %60, label %211, label %61, !dbg !774

; <label>:61:                                     ; preds = %23, %58
  %62 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0, !dbg !813
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %62) #7, !dbg !813
  store i8 42, i8* %62, align 16, !dbg !815, !tbaa !470
  %63 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 1, !dbg !816
  %64 = sext i32 %3 to i64, !dbg !817
  %65 = call i32 @ll2string(i8* nonnull %63, i64 23, i64 %64) #8, !dbg !818
  %66 = add nsw i32 %65, 1, !dbg !820
  %67 = sext i32 %66 to i64, !dbg !821
  %68 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 %67, !dbg !821
  store i8 13, i8* %68, align 1, !dbg !822, !tbaa !470
  %69 = add nsw i32 %65, 2, !dbg !823
  %70 = sext i32 %69 to i64, !dbg !824
  %71 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 %70, !dbg !824
  store i8 10, i8* %71, align 1, !dbg !825, !tbaa !470
  %72 = add nsw i32 %65, 3, !dbg !826
  %73 = sext i32 %72 to i64, !dbg !827
  %74 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !832, !tbaa !524
  %75 = add i64 %74, %73, !dbg !832
  store i64 %75, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !832, !tbaa !524
  %76 = icmp eq i32 %72, 0, !dbg !833
  br i1 %76, label %77, label %80, !dbg !833

; <label>:77:                                     ; preds = %61
  %78 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !834, !tbaa !582
  %79 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !835, !tbaa !518
  br label %104, !dbg !833

; <label>:80:                                     ; preds = %61
  %81 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !836, !tbaa !518
  %82 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !837, !tbaa !586
  br label %83, !dbg !836

; <label>:83:                                     ; preds = %83, %80
  %84 = phi i64 [ %98, %83 ], [ %82, %80 ], !dbg !837
  %85 = phi i64 [ %96, %83 ], [ %81, %80 ], !dbg !836
  %86 = phi i8* [ %100, %83 ], [ %62, %80 ]
  %87 = phi i64 [ %99, %83 ], [ %73, %80 ]
  %88 = sub nsw i64 %85, %84, !dbg !838
  %89 = icmp ugt i64 %88, %87, !dbg !840
  %90 = select i1 %89, i64 %87, i64 %88, !dbg !841
  %91 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !842, !tbaa !511
  %92 = getelementptr inbounds i8, i8* %91, i64 %84, !dbg !843
  %93 = call i8* @memcpy(i8* %92, i8* %86, i64 %90) #8, !dbg !844
  %94 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !845, !tbaa !586
  %95 = add i64 %94, %90, !dbg !845
  %96 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !846, !tbaa !518
  %97 = icmp eq i64 %95, %96, !dbg !847
  %98 = select i1 %97, i64 0, i64 %95, !dbg !848
  store i64 %98, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !849
  %99 = sub i64 %87, %90, !dbg !850
  %100 = getelementptr inbounds i8, i8* %86, i64 %90, !dbg !851
  %101 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !852, !tbaa !582
  %102 = add i64 %101, %90, !dbg !852
  store i64 %102, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !852, !tbaa !582
  %103 = icmp eq i64 %99, 0, !dbg !833
  br i1 %103, label %104, label %83, !dbg !833, !llvm.loop !604

; <label>:104:                                    ; preds = %83, %77
  %105 = phi i64 [ %79, %77 ], [ %96, %83 ], !dbg !835
  %106 = phi i64 [ %78, %77 ], [ %102, %83 ], !dbg !834
  %107 = icmp sgt i64 %106, %105, !dbg !853
  br i1 %107, label %108, label %109, !dbg !854

; <label>:108:                                    ; preds = %104
  store i64 %105, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !855, !tbaa !582
  br label %109, !dbg !856

; <label>:109:                                    ; preds = %104, %108
  %110 = phi i64 [ %105, %108 ], [ %106, %104 ], !dbg !857
  %111 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !858, !tbaa !524
  %112 = sub i64 1, %110, !dbg !859
  %113 = add i64 %112, %111, !dbg !860
  store i64 %113, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !861, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  %114 = icmp sgt i32 %3, 0, !dbg !864
  br i1 %114, label %115, label %210, !dbg !865

; <label>:115:                                    ; preds = %109
  %116 = zext i32 %3 to i64
  br label %117, !dbg !866

; <label>:117:                                    ; preds = %203, %115
  %118 = phi i64 [ 0, %115 ], [ %208, %203 ]
  %119 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %118, !dbg !866
  %120 = load %struct.redisObject*, %struct.redisObject** %119, align 8, !dbg !866, !tbaa !779
  %121 = call i64 @stringObjectLen(%struct.redisObject* %120) #8, !dbg !867
  store i8 36, i8* %62, align 16, !dbg !869, !tbaa !470
  %122 = call i32 @ll2string(i8* nonnull %63, i64 23, i64 %121) #8, !dbg !870
  %123 = add nsw i32 %122, 1, !dbg !871
  %124 = sext i32 %123 to i64, !dbg !872
  %125 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 %124, !dbg !872
  store i8 13, i8* %125, align 1, !dbg !873, !tbaa !470
  %126 = add nsw i32 %122, 2, !dbg !874
  %127 = sext i32 %126 to i64, !dbg !875
  %128 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 %127, !dbg !875
  store i8 10, i8* %128, align 1, !dbg !876, !tbaa !470
  %129 = add nsw i32 %122, 3, !dbg !877
  %130 = sext i32 %129 to i64, !dbg !878
  %131 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !883, !tbaa !524
  %132 = add i64 %131, %130, !dbg !883
  store i64 %132, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !883, !tbaa !524
  %133 = icmp eq i32 %129, 0, !dbg !884
  br i1 %133, label %134, label %137, !dbg !884

; <label>:134:                                    ; preds = %117
  %135 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !885, !tbaa !582
  %136 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !886, !tbaa !518
  br label %161, !dbg !884

; <label>:137:                                    ; preds = %117
  %138 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !887, !tbaa !518
  %139 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !888, !tbaa !586
  br label %140, !dbg !887

; <label>:140:                                    ; preds = %140, %137
  %141 = phi i64 [ %155, %140 ], [ %139, %137 ], !dbg !888
  %142 = phi i64 [ %153, %140 ], [ %138, %137 ], !dbg !887
  %143 = phi i8* [ %157, %140 ], [ %62, %137 ]
  %144 = phi i64 [ %156, %140 ], [ %130, %137 ]
  %145 = sub nsw i64 %142, %141, !dbg !889
  %146 = icmp ugt i64 %145, %144, !dbg !891
  %147 = select i1 %146, i64 %144, i64 %145, !dbg !892
  %148 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !893, !tbaa !511
  %149 = getelementptr inbounds i8, i8* %148, i64 %141, !dbg !894
  %150 = call i8* @memcpy(i8* %149, i8* %143, i64 %147) #8, !dbg !895
  %151 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !896, !tbaa !586
  %152 = add i64 %151, %147, !dbg !896
  %153 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !897, !tbaa !518
  %154 = icmp eq i64 %152, %153, !dbg !898
  %155 = select i1 %154, i64 0, i64 %152, !dbg !899
  store i64 %155, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !900
  %156 = sub i64 %144, %147, !dbg !901
  %157 = getelementptr inbounds i8, i8* %143, i64 %147, !dbg !902
  %158 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !903, !tbaa !582
  %159 = add i64 %158, %147, !dbg !903
  store i64 %159, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !903, !tbaa !582
  %160 = icmp eq i64 %156, 0, !dbg !884
  br i1 %160, label %161, label %140, !dbg !884, !llvm.loop !604

; <label>:161:                                    ; preds = %140, %134
  %162 = phi i64 [ %136, %134 ], [ %153, %140 ], !dbg !886
  %163 = phi i64 [ %135, %134 ], [ %159, %140 ], !dbg !885
  %164 = icmp sgt i64 %163, %162, !dbg !904
  br i1 %164, label %165, label %166, !dbg !905

; <label>:165:                                    ; preds = %161
  store i64 %162, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !906, !tbaa !582
  br label %166, !dbg !907

; <label>:166:                                    ; preds = %161, %165
  %167 = phi i64 [ %162, %165 ], [ %163, %161 ], !dbg !908
  %168 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !909, !tbaa !524
  %169 = sub i64 1, %167, !dbg !910
  %170 = add i64 %169, %168, !dbg !911
  store i64 %170, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !912, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  %171 = load %struct.redisObject*, %struct.redisObject** %119, align 8, !dbg !914, !tbaa !779
  call void @feedReplicationBacklogWithObject(%struct.redisObject* %171) #10, !dbg !915
  %172 = sext i32 %122 to i64, !dbg !916
  %173 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 %172, !dbg !916
  %174 = getelementptr inbounds i8, i8* %173, i64 1, !dbg !917
  %175 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !922, !tbaa !524
  %176 = add i64 %175, 2, !dbg !922
  store i64 %176, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !922, !tbaa !524
  %177 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !923, !tbaa !518
  %178 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !924, !tbaa !586
  br label %179, !dbg !923

; <label>:179:                                    ; preds = %179, %166
  %180 = phi i64 [ %194, %179 ], [ %178, %166 ], !dbg !924
  %181 = phi i64 [ %192, %179 ], [ %177, %166 ], !dbg !923
  %182 = phi i8* [ %196, %179 ], [ %174, %166 ]
  %183 = phi i64 [ %195, %179 ], [ 2, %166 ]
  %184 = sub nsw i64 %181, %180, !dbg !925
  %185 = icmp ugt i64 %184, %183, !dbg !927
  %186 = select i1 %185, i64 %183, i64 %184, !dbg !928
  %187 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !929, !tbaa !511
  %188 = getelementptr inbounds i8, i8* %187, i64 %180, !dbg !930
  %189 = call i8* @memcpy(i8* %188, i8* %182, i64 %186) #8, !dbg !931
  %190 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !932, !tbaa !586
  %191 = add i64 %190, %186, !dbg !932
  %192 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !933, !tbaa !518
  %193 = icmp eq i64 %191, %192, !dbg !934
  %194 = select i1 %193, i64 0, i64 %191, !dbg !935
  store i64 %194, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !936
  %195 = sub i64 %183, %186, !dbg !937
  %196 = getelementptr inbounds i8, i8* %182, i64 %186, !dbg !938
  %197 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !939, !tbaa !582
  %198 = add i64 %197, %186, !dbg !939
  store i64 %198, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !939, !tbaa !582
  %199 = icmp eq i64 %195, 0, !dbg !940
  br i1 %199, label %200, label %179, !dbg !940, !llvm.loop !604

; <label>:200:                                    ; preds = %179
  %201 = icmp sgt i64 %198, %192, !dbg !941
  br i1 %201, label %202, label %203, !dbg !942

; <label>:202:                                    ; preds = %200
  store i64 %192, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !943, !tbaa !582
  br label %203, !dbg !944

; <label>:203:                                    ; preds = %200, %202
  %204 = phi i64 [ %192, %202 ], [ %198, %200 ], !dbg !945
  %205 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !946, !tbaa !524
  %206 = sub i64 1, %204, !dbg !947
  %207 = add i64 %206, %205, !dbg !948
  store i64 %207, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !949, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !950
  %208 = add nuw nsw i64 %118, 1, !dbg !951
  %209 = icmp eq i64 %208, %116, !dbg !864
  br i1 %209, label %210, label %117, !dbg !865, !llvm.loop !952

; <label>:210:                                    ; preds = %203, %109
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %62) #7, !dbg !954
  br label %211, !dbg !955

; <label>:211:                                    ; preds = %58, %210
  call void @listRewind(%struct.list* %0, %struct.listIter* nonnull %5) #8, !dbg !956
  %212 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #8, !dbg !957
  %213 = icmp eq %struct.listNode* %212, null, !dbg !958
  br i1 %213, label %236, label %214, !dbg !958

; <label>:214:                                    ; preds = %211
  %215 = sext i32 %3 to i64
  %216 = icmp sgt i32 %3, 0
  %217 = zext i32 %3 to i64
  br label %218, !dbg !958

; <label>:218:                                    ; preds = %214, %233
  %219 = phi %struct.listNode* [ %212, %214 ], [ %234, %233 ]
  %220 = getelementptr inbounds %struct.listNode, %struct.listNode* %219, i64 0, i32 2, !dbg !959
  %221 = bitcast i8** %220 to %struct.client**, !dbg !959
  %222 = load %struct.client*, %struct.client** %221, align 8, !dbg !959, !tbaa !797
  %223 = getelementptr inbounds %struct.client, %struct.client* %222, i64 0, i32 23, !dbg !961
  %224 = load i32, i32* %223, align 8, !dbg !961, !tbaa !802
  %225 = icmp eq i32 %224, 6, !dbg !963
  br i1 %225, label %233, label %226, !dbg !964, !llvm.loop !965

; <label>:226:                                    ; preds = %218
  call void @addReplyMultiBulkLen(%struct.client* %222, i64 %215) #8, !dbg !967
  br i1 %216, label %227, label %233, !dbg !968

; <label>:227:                                    ; preds = %226, %227
  %228 = phi i64 [ %231, %227 ], [ 0, %226 ]
  %229 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %2, i64 %228, !dbg !970
  %230 = load %struct.redisObject*, %struct.redisObject** %229, align 8, !dbg !970, !tbaa !779
  call void @addReplyBulk(%struct.client* %222, %struct.redisObject* %230) #8, !dbg !972
  %231 = add nuw nsw i64 %228, 1, !dbg !973
  %232 = icmp eq i64 %231, %217, !dbg !974
  br i1 %232, label %233, label %227, !dbg !968, !llvm.loop !975

; <label>:233:                                    ; preds = %227, %226, %218
  %234 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #8, !dbg !957
  %235 = icmp eq %struct.listNode* %234, null, !dbg !958
  br i1 %235, label %236, label %218, !dbg !958

; <label>:236:                                    ; preds = %233, %211, %15, %4
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %9) #7, !dbg !977
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !977
  ret void, !dbg !977
}

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createObject(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsempty() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listRewind(%struct.list*, %struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listNext(%struct.listIter*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReply(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @decrRefCount(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @stringObjectLen(%struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyMultiBulkLen(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulk(%struct.client*, %struct.redisObject*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationFeedSlavesFromMasterStream(%struct.list*, i8*, i64) local_unnamed_addr #0 !dbg !978 {
  %4 = alloca %struct.listIter, align 8
  %5 = bitcast %struct.listIter* %4 to i8*, !dbg !992
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !992
  %6 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !993, !tbaa !511
  %7 = icmp eq i8* %6, null, !dbg !995
  br i1 %7, label %51, label %8, !dbg !996

; <label>:8:                                      ; preds = %3
  %9 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1001, !tbaa !524
  %10 = add i64 %9, %2, !dbg !1001
  store i64 %10, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1001, !tbaa !524
  %11 = icmp eq i64 %2, 0, !dbg !1002
  br i1 %11, label %12, label %15, !dbg !1002

; <label>:12:                                     ; preds = %8
  %13 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1003, !tbaa !582
  %14 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1004, !tbaa !518
  br label %41, !dbg !1002

; <label>:15:                                     ; preds = %8
  %16 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1005, !tbaa !518
  %17 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !1006, !tbaa !586
  br label %18, !dbg !1005

; <label>:18:                                     ; preds = %38, %15
  %19 = phi i8* [ %40, %38 ], [ %6, %15 ], !dbg !1007
  %20 = phi i64 [ %33, %38 ], [ %17, %15 ], !dbg !1006
  %21 = phi i64 [ %31, %38 ], [ %16, %15 ], !dbg !1005
  %22 = phi i8* [ %39, %38 ], [ %1, %15 ]
  %23 = phi i64 [ %34, %38 ], [ %2, %15 ]
  %24 = sub nsw i64 %21, %20, !dbg !1008
  %25 = icmp ugt i64 %24, %23, !dbg !1010
  %26 = select i1 %25, i64 %23, i64 %24, !dbg !1011
  %27 = getelementptr inbounds i8, i8* %19, i64 %20, !dbg !1012
  %28 = tail call i8* @memcpy(i8* %27, i8* %22, i64 %26) #8, !dbg !1013
  %29 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !1014, !tbaa !586
  %30 = add i64 %29, %26, !dbg !1014
  %31 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1015, !tbaa !518
  %32 = icmp eq i64 %30, %31, !dbg !1016
  %33 = select i1 %32, i64 0, i64 %30, !dbg !1017
  store i64 %33, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !1018
  %34 = sub i64 %23, %26, !dbg !1019
  %35 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1020, !tbaa !582
  %36 = add i64 %35, %26, !dbg !1020
  store i64 %36, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1020, !tbaa !582
  %37 = icmp eq i64 %34, 0, !dbg !1002
  br i1 %37, label %41, label %38, !dbg !1002, !llvm.loop !604

; <label>:38:                                     ; preds = %18
  %39 = getelementptr inbounds i8, i8* %22, i64 %26, !dbg !1021
  %40 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1007, !tbaa !511
  br label %18, !dbg !1002

; <label>:41:                                     ; preds = %18, %12
  %42 = phi i64 [ %14, %12 ], [ %31, %18 ], !dbg !1004
  %43 = phi i64 [ %13, %12 ], [ %36, %18 ], !dbg !1003
  %44 = icmp sgt i64 %43, %42, !dbg !1022
  br i1 %44, label %45, label %46, !dbg !1023

; <label>:45:                                     ; preds = %41
  store i64 %42, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1024, !tbaa !582
  br label %46, !dbg !1025

; <label>:46:                                     ; preds = %41, %45
  %47 = phi i64 [ %42, %45 ], [ %43, %41 ], !dbg !1026
  %48 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1027, !tbaa !524
  %49 = sub i64 1, %47, !dbg !1028
  %50 = add i64 %49, %48, !dbg !1029
  store i64 %50, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !1030, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1031
  br label %51, !dbg !1032

; <label>:51:                                     ; preds = %3, %46
  call void @listRewind(%struct.list* %0, %struct.listIter* nonnull %4) #8, !dbg !1034
  %52 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #8, !dbg !1035
  %53 = icmp eq %struct.listNode* %52, null, !dbg !1037
  br i1 %53, label %66, label %54, !dbg !1037

; <label>:54:                                     ; preds = %51, %63
  %55 = phi %struct.listNode* [ %64, %63 ], [ %52, %51 ]
  %56 = getelementptr inbounds %struct.listNode, %struct.listNode* %55, i64 0, i32 2, !dbg !1038
  %57 = bitcast i8** %56 to %struct.client**, !dbg !1038
  %58 = load %struct.client*, %struct.client** %57, align 8, !dbg !1038, !tbaa !797
  %59 = getelementptr inbounds %struct.client, %struct.client* %58, i64 0, i32 23, !dbg !1040
  %60 = load i32, i32* %59, align 8, !dbg !1040, !tbaa !802
  %61 = icmp eq i32 %60, 6, !dbg !1042
  br i1 %61, label %63, label %62, !dbg !1043, !llvm.loop !1044

; <label>:62:                                     ; preds = %54
  call void @addReplyString(%struct.client* %58, i8* %1, i64 %2) #8, !dbg !1046
  br label %63, !dbg !1045

; <label>:63:                                     ; preds = %54, %62
  %64 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #8, !dbg !1035
  %65 = icmp eq %struct.listNode* %64, null, !dbg !1037
  br i1 %65, label %66, label %54, !dbg !1037

; <label>:66:                                     ; preds = %63, %51
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !1047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1047
  ret void, !dbg !1047
}

; Function Attrs: noredzone
declare dso_local void @addReplyString(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationFeedMonitors(%struct.client*, %struct.list*, i32, %struct.redisObject** nocapture readonly, i32) local_unnamed_addr #0 !dbg !1048 {
  %6 = alloca %struct.listIter, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = bitcast %struct.listIter* %6 to i8*, !dbg !1075
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !1075
  %9 = tail call i8* @sdsnew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !1076
  %10 = bitcast %struct.timeval* %7 to i8*, !dbg !1078
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #7, !dbg !1078
  %11 = call i32 @gettimeofday(%struct.timeval* nonnull %7, i8* null) #8, !dbg !1080
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 0, !dbg !1081
  %13 = load i64, i64* %12, align 8, !dbg !1081, !tbaa !1082
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i64 0, i32 1, !dbg !1084
  %15 = load i64, i64* %14, align 8, !dbg !1084, !tbaa !1085
  %16 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i64 %13, i64 %15) #8, !dbg !1086
  %17 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1087
  %18 = load i32, i32* %17, align 8, !dbg !1087, !tbaa !1089
  %19 = and i32 %18, 256, !dbg !1090
  %20 = icmp eq i32 %19, 0, !dbg !1090
  br i1 %20, label %23, label %21, !dbg !1091

; <label>:21:                                     ; preds = %5
  %22 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %2) #8, !dbg !1092
  br label %32, !dbg !1094

; <label>:23:                                     ; preds = %5
  %24 = and i32 %18, 2048, !dbg !1095
  %25 = icmp eq i32 %24, 0, !dbg !1095
  br i1 %25, label %29, label %26, !dbg !1097

; <label>:26:                                     ; preds = %23
  %27 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 31), align 8, !dbg !1098, !tbaa !1100
  %28 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %2, i8* %27) #8, !dbg !1101
  br label %32, !dbg !1102

; <label>:29:                                     ; preds = %23
  %30 = call i8* @getClientPeerId(%struct.client* nonnull %0) #8, !dbg !1103
  %31 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %2, i8* %30) #8, !dbg !1105
  br label %32

; <label>:32:                                     ; preds = %26, %29, %21
  %33 = phi i8* [ %22, %21 ], [ %28, %26 ], [ %31, %29 ], !dbg !1106
  %34 = icmp sgt i32 %4, 0, !dbg !1108
  br i1 %34, label %35, label %90, !dbg !1111

; <label>:35:                                     ; preds = %32
  %36 = add nsw i32 %4, -1
  %37 = zext i32 %36 to i64, !dbg !1111
  %38 = zext i32 %4 to i64
  br label %39, !dbg !1111

; <label>:39:                                     ; preds = %86, %35
  %40 = phi i64 [ 0, %35 ], [ %88, %86 ]
  %41 = phi i8* [ %33, %35 ], [ %87, %86 ]
  %42 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %3, i64 %40, !dbg !1112
  %43 = load %struct.redisObject*, %struct.redisObject** %42, align 8, !dbg !1112, !tbaa !779
  %44 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %43, i64 0, i32 0, !dbg !1115
  %45 = load i32, i32* %44, align 8, !dbg !1115
  %46 = and i32 %45, 240, !dbg !1115
  %47 = icmp eq i32 %46, 16, !dbg !1116
  %48 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %43, i64 0, i32 2, !dbg !1117
  %49 = load i8*, i8** %48, align 8, !dbg !1117, !tbaa !638
  br i1 %47, label %50, label %53, !dbg !1119

; <label>:50:                                     ; preds = %39
  %51 = ptrtoint i8* %49 to i64, !dbg !1120
  %52 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i64 %51) #8, !dbg !1122
  br label %81, !dbg !1123

; <label>:53:                                     ; preds = %39
  %54 = getelementptr inbounds i8, i8* %49, i64 -1, !dbg !1126
  %55 = load i8, i8* %54, align 1, !dbg !1126, !tbaa !470
  %56 = trunc i8 %55 to i3, !dbg !1128
  switch i3 %56, label %78 [
    i3 0, label %57
    i3 1, label %60
    i3 2, label %64
    i3 3, label %69
    i3 -4, label %74
  ], !dbg !1128

; <label>:57:                                     ; preds = %53
  %58 = lshr i8 %55, 3, !dbg !1129
  %59 = zext i8 %58 to i64, !dbg !1129
  br label %78, !dbg !1130

; <label>:60:                                     ; preds = %53
  %61 = getelementptr inbounds i8, i8* %49, i64 -3, !dbg !1131
  %62 = load i8, i8* %61, align 1, !dbg !1132, !tbaa !470
  %63 = zext i8 %62 to i64, !dbg !1131
  br label %78, !dbg !1133

; <label>:64:                                     ; preds = %53
  %65 = getelementptr inbounds i8, i8* %49, i64 -5, !dbg !1134
  %66 = bitcast i8* %65 to i16*, !dbg !1135
  %67 = load i16, i16* %66, align 1, !dbg !1135, !tbaa !667
  %68 = zext i16 %67 to i64, !dbg !1134
  br label %78, !dbg !1136

; <label>:69:                                     ; preds = %53
  %70 = getelementptr inbounds i8, i8* %49, i64 -9, !dbg !1137
  %71 = bitcast i8* %70 to i32*, !dbg !1138
  %72 = load i32, i32* %71, align 1, !dbg !1138, !tbaa !672
  %73 = zext i32 %72 to i64, !dbg !1137
  br label %78, !dbg !1139

; <label>:74:                                     ; preds = %53
  %75 = getelementptr inbounds i8, i8* %49, i64 -17, !dbg !1140
  %76 = bitcast i8* %75 to i64*, !dbg !1141
  %77 = load i64, i64* %76, align 1, !dbg !1141, !tbaa !676
  br label %78, !dbg !1142

; <label>:78:                                     ; preds = %53, %57, %60, %64, %69, %74
  %79 = phi i64 [ %77, %74 ], [ %73, %69 ], [ %68, %64 ], [ %63, %60 ], [ %59, %57 ], [ 0, %53 ], !dbg !1143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1144
  %80 = call i8* @sdscatrepr(i8* %41, i8* nonnull %49, i64 %79) #8, !dbg !1145
  br label %81

; <label>:81:                                     ; preds = %78, %50
  %82 = phi i8* [ %52, %50 ], [ %80, %78 ], !dbg !1117
  %83 = icmp eq i64 %40, %37, !dbg !1146
  br i1 %83, label %86, label %84, !dbg !1148

; <label>:84:                                     ; preds = %81
  %85 = call i8* @sdscatlen(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i64 1) #8, !dbg !1149
  br label %86, !dbg !1150

; <label>:86:                                     ; preds = %81, %84
  %87 = phi i8* [ %85, %84 ], [ %82, %81 ], !dbg !1151
  %88 = add nuw nsw i64 %40, 1, !dbg !1152
  %89 = icmp eq i64 %88, %38, !dbg !1108
  br i1 %89, label %90, label %39, !dbg !1111, !llvm.loop !1153

; <label>:90:                                     ; preds = %86, %32
  %91 = phi i8* [ %33, %32 ], [ %87, %86 ], !dbg !1155
  %92 = call i8* @sdscatlen(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i64 2) #8, !dbg !1156
  %93 = call %struct.redisObject* @createObject(i32 0, i8* %92) #8, !dbg !1157
  call void @listRewind(%struct.list* %1, %struct.listIter* nonnull %6) #8, !dbg !1160
  %94 = call %struct.listNode* @listNext(%struct.listIter* nonnull %6) #8, !dbg !1161
  %95 = icmp eq %struct.listNode* %94, null, !dbg !1163
  br i1 %95, label %103, label %96, !dbg !1163

; <label>:96:                                     ; preds = %90, %96
  %97 = phi %struct.listNode* [ %101, %96 ], [ %94, %90 ]
  %98 = getelementptr inbounds %struct.listNode, %struct.listNode* %97, i64 0, i32 2, !dbg !1164
  %99 = bitcast i8** %98 to %struct.client**, !dbg !1164
  %100 = load %struct.client*, %struct.client** %99, align 8, !dbg !1164, !tbaa !797
  call void @addReply(%struct.client* %100, %struct.redisObject* %93) #8, !dbg !1166
  %101 = call %struct.listNode* @listNext(%struct.listIter* nonnull %6) #8, !dbg !1161
  %102 = icmp eq %struct.listNode* %101, null, !dbg !1163
  br i1 %102, label %103, label %96, !dbg !1163, !llvm.loop !1167

; <label>:103:                                    ; preds = %96, %90
  call void @decrRefCount(%struct.redisObject* %93) #8, !dbg !1169
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #7, !dbg !1170
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !1170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1170
  ret void, !dbg !1170
}

; Function Attrs: noredzone
declare dso_local i8* @sdsnew(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @gettimeofday(%struct.timeval*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @getClientPeerId(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatrepr(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdscatlen(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @addReplyReplicationBacklog(%struct.client*, i64) local_unnamed_addr #0 !dbg !1171 {
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i64 %1) #8, !dbg !1184
  %3 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1185, !tbaa !582
  %4 = icmp eq i64 %3, 0, !dbg !1187
  br i1 %4, label %5, label %6, !dbg !1188

; <label>:5:                                      ; preds = %2
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !1189
  br label %47, !dbg !1191

; <label>:6:                                      ; preds = %2
  %7 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1192, !tbaa !518
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i64 %7) #8, !dbg !1193
  %8 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !1194, !tbaa !527
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i64 %8) #8, !dbg !1195
  %9 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1196, !tbaa !582
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i64 %9) #8, !dbg !1197
  %10 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !1198, !tbaa !586
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i64 %10) #8, !dbg !1199
  %11 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !1200, !tbaa !527
  %12 = sub nsw i64 %1, %11, !dbg !1201
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i64 %12) #8, !dbg !1203
  %13 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 186), align 8, !dbg !1204, !tbaa !586
  %14 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1205, !tbaa !518
  %15 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1206, !tbaa !582
  %16 = add i64 %14, %13, !dbg !1207
  %17 = sub i64 %16, %15, !dbg !1208
  %18 = srem i64 %17, %14, !dbg !1209
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i64 %18) #8, !dbg !1211
  %19 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1212, !tbaa !518
  %20 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1213, !tbaa !582
  %21 = sub nsw i64 %20, %12, !dbg !1214
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i64 %21) #8, !dbg !1216
  %22 = icmp eq i64 %21, 0, !dbg !1217
  br i1 %22, label %44, label %23, !dbg !1217

; <label>:23:                                     ; preds = %6
  %24 = add nsw i64 %18, %12, !dbg !1218
  %25 = srem i64 %24, %19, !dbg !1219
  %26 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1220, !tbaa !518
  %27 = sub nsw i64 %26, %25, !dbg !1221
  %28 = icmp slt i64 %27, %21, !dbg !1222
  %29 = select i1 %28, i64 %27, i64 %21, !dbg !1223
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i64 %29) #8, !dbg !1225
  %30 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1226, !tbaa !511
  %31 = getelementptr inbounds i8, i8* %30, i64 %25, !dbg !1227
  %32 = tail call i8* @sdsnewlen(i8* %31, i64 %29) #8, !dbg !1228
  tail call void @addReplySds(%struct.client* %0, i8* %32) #8, !dbg !1229
  %33 = sub nsw i64 %21, %29, !dbg !1230
  %34 = icmp eq i64 %33, 0, !dbg !1217
  br i1 %34, label %44, label %35, !dbg !1217, !llvm.loop !1231

; <label>:35:                                     ; preds = %23, %35
  %36 = phi i64 [ %42, %35 ], [ %33, %23 ]
  %37 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1220, !tbaa !518
  %38 = icmp slt i64 %37, %36, !dbg !1222
  %39 = select i1 %38, i64 %37, i64 %36, !dbg !1223
  tail call void (i32, i8*, ...) @serverLog(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0), i64 %39) #8, !dbg !1225
  %40 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1226, !tbaa !511
  %41 = tail call i8* @sdsnewlen(i8* %40, i64 %39) #8, !dbg !1228
  tail call void @addReplySds(%struct.client* %0, i8* %41) #8, !dbg !1229
  %42 = sub nsw i64 %36, %39, !dbg !1230
  %43 = icmp eq i64 %42, 0, !dbg !1217
  br i1 %43, label %44, label %35, !dbg !1217, !llvm.loop !1233

; <label>:44:                                     ; preds = %23, %35, %6
  %45 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1235, !tbaa !582
  %46 = sub nsw i64 %45, %12, !dbg !1236
  br label %47, !dbg !1237

; <label>:47:                                     ; preds = %44, %5
  %48 = phi i64 [ 0, %5 ], [ %46, %44 ], !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  ret i64 %48, !dbg !1239
}

; Function Attrs: noredzone
declare dso_local void @serverLog(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplySds(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsnewlen(i8*, i64) local_unnamed_addr #3

; Function Attrs: norecurse noredzone nounwind
define dso_local i64 @getPsyncInitialOffset() local_unnamed_addr #5 !dbg !1240 {
  %1 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1243, !tbaa !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  ret i64 %1, !dbg !1244
}

; Function Attrs: noredzone nounwind
define dso_local i32 @replicationSetupSlaveForFullResync(%struct.client*, i64) local_unnamed_addr #0 !dbg !1245 {
  %3 = alloca [128 x i8], align 16
  %4 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0, !dbg !1258
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %4) #7, !dbg !1258
  %5 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 33, !dbg !1260
  store i64 %1, i64* %5, align 8, !dbg !1261, !tbaa !1262
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1263
  store i32 7, i32* %6, align 8, !dbg !1264, !tbaa !802
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !1265, !tbaa !770
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1266
  %8 = load i32, i32* %7, align 8, !dbg !1266, !tbaa !1089
  %9 = and i32 %8, 65536, !dbg !1268
  %10 = icmp eq i32 %9, 0, !dbg !1268
  br i1 %10, label %11, label %19, !dbg !1269

; <label>:11:                                     ; preds = %2
  %12 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %4, i64 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 %1) #8, !dbg !1270
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1273
  %14 = load i32, i32* %13, align 8, !dbg !1273, !tbaa !479
  %15 = sext i32 %12 to i64, !dbg !1275
  %16 = call i64 @write(i32 %14, i8* nonnull %4, i64 %15) #8, !dbg !1276
  %17 = icmp eq i64 %16, %15, !dbg !1277
  br i1 %17, label %19, label %18, !dbg !1278

; <label>:18:                                     ; preds = %11
  call void @freeClientAsync(%struct.client* nonnull %0) #8, !dbg !1279
  br label %19, !dbg !1281

; <label>:19:                                     ; preds = %2, %11, %18
  %20 = phi i32 [ -1, %18 ], [ 0, %11 ], [ 0, %2 ], !dbg !1282
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %4) #7, !dbg !1283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1283
  ret i32 %20, !dbg !1283
}

; Function Attrs: noredzone
declare dso_local i64 @write(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @freeClientAsync(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @masterTryPartialResynchronization(%struct.client*) local_unnamed_addr #0 !dbg !1284 {
  %2 = alloca %struct.listIter, align 8
  %3 = alloca i64, align 8
  %4 = alloca [128 x i8], align 16
  %5 = bitcast i64* %3 to i8*, !dbg !1295
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !1295
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1296
  %7 = load %struct.redisObject**, %struct.redisObject*** %6, align 8, !dbg !1296, !tbaa !1297
  %8 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 1, !dbg !1298
  %9 = load %struct.redisObject*, %struct.redisObject** %8, align 8, !dbg !1298, !tbaa !779
  %10 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %9, i64 0, i32 2, !dbg !1299
  %11 = load i8*, i8** %10, align 8, !dbg !1299, !tbaa !638
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0, !dbg !1301
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %12) #7, !dbg !1301
  %13 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %7, i64 2, !dbg !1303
  %14 = load %struct.redisObject*, %struct.redisObject** %13, align 8, !dbg !1303, !tbaa !779
  %15 = call i32 @getLongLongFromObjectOrReply(%struct.client* %0, %struct.redisObject* %14, i64* nonnull %3, i8* null) #8, !dbg !1306
  %16 = icmp eq i32 %15, 0, !dbg !1307
  br i1 %16, label %17, label %124, !dbg !1308

; <label>:17:                                     ; preds = %1
  %18 = call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0)) #11, !dbg !1309
  %19 = icmp eq i32 %18, 0, !dbg !1309
  br i1 %19, label %37, label %20, !dbg !1311

; <label>:20:                                     ; preds = %17
  %21 = call i32 @strcasecmp(i8* %11, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0)) #11, !dbg !1312
  %22 = icmp eq i32 %21, 0, !dbg !1312
  br i1 %22, label %23, label %27, !dbg !1313

; <label>:23:                                     ; preds = %20
  %24 = load i64, i64* %3, align 8, !dbg !1314, !tbaa !522
  %25 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !1315, !tbaa !1316
  %26 = icmp sgt i64 %24, %25, !dbg !1317
  br i1 %26, label %27, label %37, !dbg !1318

; <label>:27:                                     ; preds = %20, %23
  %28 = load i8, i8* %11, align 1, !dbg !1319, !tbaa !470
  %29 = icmp eq i8 %28, 63, !dbg !1322
  br i1 %29, label %35, label %30, !dbg !1323

; <label>:30:                                     ; preds = %27
  br i1 %22, label %32, label %31, !dbg !1324

; <label>:31:                                     ; preds = %30
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.26, i64 0, i64 0), i8* nonnull %11, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0)) #8, !dbg !1326
  br label %124, !dbg !1329

; <label>:32:                                     ; preds = %30
  %33 = load i64, i64* %3, align 8, !dbg !1330, !tbaa !522
  %34 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !1332, !tbaa !1316
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.27, i64 0, i64 0), i64 %33, i64 %34) #8, !dbg !1333
  br label %124

; <label>:35:                                     ; preds = %27
  %36 = call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #10, !dbg !1334
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0)) #8, !dbg !1336
  br label %124

; <label>:37:                                     ; preds = %17, %23
  %38 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1337, !tbaa !511
  %39 = icmp eq i8* %38, null, !dbg !1339
  br i1 %39, label %48, label %40, !dbg !1340

; <label>:40:                                     ; preds = %37
  %41 = load i64, i64* %3, align 8, !dbg !1341, !tbaa !522
  %42 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !1342, !tbaa !527
  %43 = icmp slt i64 %41, %42, !dbg !1343
  br i1 %43, label %48, label %44, !dbg !1344

; <label>:44:                                     ; preds = %40
  %45 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185), align 8, !dbg !1345, !tbaa !582
  %46 = add nsw i64 %45, %42, !dbg !1346
  %47 = icmp sgt i64 %41, %46, !dbg !1347
  br i1 %47, label %48, label %56, !dbg !1348

; <label>:48:                                     ; preds = %37, %44, %40
  %49 = call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #10, !dbg !1349
  %50 = load i64, i64* %3, align 8, !dbg !1351, !tbaa !522
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0), i64 %50) #8, !dbg !1352
  %51 = load i64, i64* %3, align 8, !dbg !1353, !tbaa !522
  %52 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1355, !tbaa !524
  %53 = icmp sgt i64 %51, %52, !dbg !1356
  br i1 %53, label %54, label %124, !dbg !1357

; <label>:54:                                     ; preds = %48
  %55 = call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #10, !dbg !1358
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0)) #8, !dbg !1360
  br label %124, !dbg !1361

; <label>:56:                                     ; preds = %44
  %57 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1362
  %58 = load i32, i32* %57, align 8, !dbg !1363, !tbaa !1089
  %59 = or i32 %58, 1, !dbg !1363
  store i32 %59, i32* %57, align 8, !dbg !1363, !tbaa !1089
  %60 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1364
  store i32 9, i32* %60, align 8, !dbg !1365, !tbaa !802
  %61 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !1366, !tbaa !1367
  %62 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 32, !dbg !1368
  store i64 %61, i64* %62, align 8, !dbg !1369, !tbaa !1370
  %63 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1371
  store i32 0, i32* %63, align 4, !dbg !1372, !tbaa !1373
  %64 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1374, !tbaa !558
  %65 = bitcast %struct.client* %0 to i8*, !dbg !1375
  %66 = call %struct.list* @listAddNodeTail(%struct.list* %64, i8* %65) #8, !dbg !1376
  %67 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 37, !dbg !1377
  %68 = load i32, i32* %67, align 8, !dbg !1377, !tbaa !1379
  %69 = and i32 %68, 2, !dbg !1380
  %70 = icmp eq i32 %69, 0, !dbg !1380
  br i1 %70, label %73, label %71, !dbg !1381

; <label>:71:                                     ; preds = %56
  %72 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %12, i64 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0)) #8, !dbg !1382
  br label %75, !dbg !1385

; <label>:73:                                     ; preds = %56
  %74 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %12, i64 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0)) #8, !dbg !1386
  br label %75

; <label>:75:                                     ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ], !dbg !1388
  %77 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1389
  %78 = load i32, i32* %77, align 8, !dbg !1389, !tbaa !479
  %79 = sext i32 %76 to i64, !dbg !1391
  %80 = call i64 @write(i32 %78, i8* nonnull %12, i64 %79) #8, !dbg !1392
  %81 = icmp eq i64 %80, %79, !dbg !1393
  br i1 %81, label %83, label %82, !dbg !1394

; <label>:82:                                     ; preds = %75
  call void @freeClientAsync(%struct.client* nonnull %0) #8, !dbg !1395
  br label %124, !dbg !1397

; <label>:83:                                     ; preds = %75
  %84 = load i64, i64* %3, align 8, !dbg !1398, !tbaa !522
  %85 = call i64 @addReplyReplicationBacklog(%struct.client* nonnull %0, i64 %84) #10, !dbg !1399
  %86 = call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #10, !dbg !1401
  %87 = load i64, i64* %3, align 8, !dbg !1402, !tbaa !522
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0), i64 %85, i64 %87) #8, !dbg !1403
  %88 = bitcast %struct.listIter* %2 to i8*, !dbg !1404
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %88) #7, !dbg !1404
  %89 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 190), align 8, !dbg !1415, !tbaa !1417
  %90 = icmp ne i32 %89, 0, !dbg !1418
  %91 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 191), align 4, !dbg !1419
  %92 = icmp ne i32 %91, 0, !dbg !1420
  %93 = and i1 %90, %92, !dbg !1421
  br i1 %93, label %94, label %123, !dbg !1421

; <label>:94:                                     ; preds = %83
  %95 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1422, !tbaa !558
  call void @listRewind(%struct.list* %95, %struct.listIter* nonnull %2) #8, !dbg !1424
  %96 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !1425
  %97 = icmp eq %struct.listNode* %96, null, !dbg !1427
  br i1 %97, label %121, label %98, !dbg !1427

; <label>:98:                                     ; preds = %94, %117
  %99 = phi %struct.listNode* [ %119, %117 ], [ %96, %94 ]
  %100 = phi i32 [ %118, %117 ], [ 0, %94 ]
  %101 = getelementptr inbounds %struct.listNode, %struct.listNode* %99, i64 0, i32 2, !dbg !1428
  %102 = bitcast i8** %101 to %struct.client**, !dbg !1428
  %103 = load %struct.client*, %struct.client** %102, align 8, !dbg !1428, !tbaa !797
  %104 = getelementptr inbounds %struct.client, %struct.client* %103, i64 0, i32 23, !dbg !1430
  %105 = load i32, i32* %104, align 8, !dbg !1430, !tbaa !802
  %106 = icmp eq i32 %105, 9, !dbg !1432
  br i1 %106, label %107, label %117, !dbg !1433

; <label>:107:                                    ; preds = %98
  %108 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !1434, !tbaa !1367
  %109 = getelementptr inbounds %struct.client, %struct.client* %103, i64 0, i32 32, !dbg !1435
  %110 = load i64, i64* %109, align 8, !dbg !1435, !tbaa !1370
  %111 = sub nsw i64 %108, %110, !dbg !1436
  %112 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 191), align 4, !dbg !1438, !tbaa !1439
  %113 = sext i32 %112 to i64, !dbg !1440
  %114 = icmp sle i64 %111, %113, !dbg !1441
  %115 = zext i1 %114 to i32, !dbg !1442
  %116 = add nsw i32 %100, %115, !dbg !1442
  br label %117, !dbg !1442

; <label>:117:                                    ; preds = %107, %98
  %118 = phi i32 [ %100, %98 ], [ %116, %107 ], !dbg !1443
  %119 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !1425
  %120 = icmp eq %struct.listNode* %119, null, !dbg !1427
  br i1 %120, label %121, label %98, !dbg !1427, !llvm.loop !1444

; <label>:121:                                    ; preds = %117, %94
  %122 = phi i32 [ 0, %94 ], [ %118, %117 ], !dbg !1447
  store i32 %122, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 192), align 8, !dbg !1448, !tbaa !1449
  br label %123, !dbg !1450

; <label>:123:                                    ; preds = %83, %121
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %88) #7, !dbg !1450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  br label %124, !dbg !1451

; <label>:124:                                    ; preds = %31, %32, %35, %54, %48, %1, %123, %82
  %125 = phi i32 [ 0, %82 ], [ 0, %123 ], [ -1, %1 ], [ -1, %48 ], [ -1, %54 ], [ -1, %35 ], [ -1, %32 ], [ -1, %31 ], !dbg !1452
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %12) #7, !dbg !1453
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !1453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  ret i32 %125, !dbg !1453
}

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeTail(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @refreshGoodSlavesCount() local_unnamed_addr #0 !dbg !1405 {
  %1 = alloca %struct.listIter, align 8
  %2 = bitcast %struct.listIter* %1 to i8*, !dbg !1454
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #7, !dbg !1454
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 190), align 8, !dbg !1456, !tbaa !1417
  %4 = icmp ne i32 %3, 0, !dbg !1457
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 191), align 4, !dbg !1458
  %6 = icmp ne i32 %5, 0, !dbg !1459
  %7 = and i1 %4, %6, !dbg !1460
  br i1 %7, label %8, label %37, !dbg !1460

; <label>:8:                                      ; preds = %0
  %9 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1461, !tbaa !558
  call void @listRewind(%struct.list* %9, %struct.listIter* nonnull %1) #8, !dbg !1463
  %10 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !1464
  %11 = icmp eq %struct.listNode* %10, null, !dbg !1445
  br i1 %11, label %35, label %12, !dbg !1445

; <label>:12:                                     ; preds = %8, %31
  %13 = phi %struct.listNode* [ %33, %31 ], [ %10, %8 ]
  %14 = phi i32 [ %32, %31 ], [ 0, %8 ]
  %15 = getelementptr inbounds %struct.listNode, %struct.listNode* %13, i64 0, i32 2, !dbg !1466
  %16 = bitcast i8** %15 to %struct.client**, !dbg !1466
  %17 = load %struct.client*, %struct.client** %16, align 8, !dbg !1466, !tbaa !797
  %18 = getelementptr inbounds %struct.client, %struct.client* %17, i64 0, i32 23, !dbg !1468
  %19 = load i32, i32* %18, align 8, !dbg !1468, !tbaa !802
  %20 = icmp eq i32 %19, 9, !dbg !1469
  br i1 %20, label %21, label %31, !dbg !1470

; <label>:21:                                     ; preds = %12
  %22 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !1471, !tbaa !1367
  %23 = getelementptr inbounds %struct.client, %struct.client* %17, i64 0, i32 32, !dbg !1472
  %24 = load i64, i64* %23, align 8, !dbg !1472, !tbaa !1370
  %25 = sub nsw i64 %22, %24, !dbg !1473
  %26 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 191), align 4, !dbg !1475, !tbaa !1439
  %27 = sext i32 %26 to i64, !dbg !1476
  %28 = icmp sle i64 %25, %27, !dbg !1477
  %29 = zext i1 %28 to i32, !dbg !1478
  %30 = add nsw i32 %14, %29, !dbg !1478
  br label %31, !dbg !1478

; <label>:31:                                     ; preds = %21, %12
  %32 = phi i32 [ %14, %12 ], [ %30, %21 ], !dbg !1479
  %33 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !1464
  %34 = icmp eq %struct.listNode* %33, null, !dbg !1445
  br i1 %34, label %35, label %12, !dbg !1445, !llvm.loop !1444

; <label>:35:                                     ; preds = %31, %8
  %36 = phi i32 [ 0, %8 ], [ %32, %31 ], !dbg !1480
  store i32 %36, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 192), align 8, !dbg !1481, !tbaa !1449
  br label %37, !dbg !1482

; <label>:37:                                     ; preds = %0, %35
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #7, !dbg !1482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1482
  ret void, !dbg !1482
}

; Function Attrs: noredzone nounwind
define dso_local i32 @startBgsaveForReplication(i32) local_unnamed_addr #0 !dbg !1483 {
  %2 = alloca [128 x i8], align 16
  %3 = alloca %struct.listIter, align 8
  %4 = alloca %struct.rdbSaveInfo, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 193), align 4, !dbg !1508, !tbaa !1509
  %6 = icmp ne i32 %5, 0, !dbg !1510
  %7 = and i32 %0, 1, !dbg !1511
  %8 = icmp ne i32 %7, 0, !dbg !1512
  %9 = and i1 %8, %6, !dbg !1512
  %10 = bitcast %struct.listIter* %3 to i8*, !dbg !1513
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #7, !dbg !1513
  %11 = select i1 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), !dbg !1514
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i64 0, i64 0), i8* %11) #8, !dbg !1515
  %12 = bitcast %struct.rdbSaveInfo* %4 to i8*, !dbg !1516
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %12) #7, !dbg !1516
  %13 = call %struct.rdbSaveInfo* @rdbPopulateSaveInfo(%struct.rdbSaveInfo* nonnull %4) #8, !dbg !1518
  %14 = icmp eq %struct.rdbSaveInfo* %13, null, !dbg !1520
  br i1 %14, label %21, label %15, !dbg !1522

; <label>:15:                                     ; preds = %1
  br i1 %9, label %16, label %18, !dbg !1523

; <label>:16:                                     ; preds = %15
  %17 = call i32 @rdbSaveToSlavesSockets(%struct.rdbSaveInfo* nonnull %13) #8, !dbg !1525
  br label %22, !dbg !1528

; <label>:18:                                     ; preds = %15
  %19 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !1529, !tbaa !1530
  %20 = call i32 @rdbSaveBackground(i8* %19, %struct.rdbSaveInfo* nonnull %13) #8, !dbg !1531
  br label %22

; <label>:21:                                     ; preds = %1
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.37, i64 0, i64 0)) #8, !dbg !1532
  br label %25, !dbg !1534

; <label>:22:                                     ; preds = %16, %18
  %23 = phi i32 [ %17, %16 ], [ %20, %18 ], !dbg !1535
  %24 = icmp eq i32 %23, -1, !dbg !1536
  br i1 %24, label %25, label %47, !dbg !1534

; <label>:25:                                     ; preds = %21, %22
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0)) #8, !dbg !1537
  %26 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1538, !tbaa !558
  call void @listRewind(%struct.list* %26, %struct.listIter* nonnull %3) #8, !dbg !1540
  %27 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !1541
  %28 = icmp eq %struct.listNode* %27, null, !dbg !1543
  br i1 %28, label %87, label %29, !dbg !1543

; <label>:29:                                     ; preds = %25, %44
  %30 = phi %struct.listNode* [ %45, %44 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.listNode, %struct.listNode* %30, i64 0, i32 2, !dbg !1544
  %32 = bitcast i8** %31 to %struct.client**, !dbg !1544
  %33 = load %struct.client*, %struct.client** %32, align 8, !dbg !1544, !tbaa !797
  %34 = getelementptr inbounds %struct.client, %struct.client* %33, i64 0, i32 23, !dbg !1546
  %35 = load i32, i32* %34, align 8, !dbg !1546, !tbaa !802
  %36 = icmp eq i32 %35, 6, !dbg !1548
  br i1 %36, label %37, label %44, !dbg !1549

; <label>:37:                                     ; preds = %29
  store i32 0, i32* %34, align 8, !dbg !1550, !tbaa !802
  %38 = getelementptr inbounds %struct.client, %struct.client* %33, i64 0, i32 21, !dbg !1552
  %39 = load i32, i32* %38, align 8, !dbg !1553, !tbaa !1089
  %40 = and i32 %39, -2, !dbg !1553
  store i32 %40, i32* %38, align 8, !dbg !1553, !tbaa !1089
  %41 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1554, !tbaa !558
  call void @listDelNode(%struct.list* %41, %struct.listNode* nonnull %30) #8, !dbg !1555
  call void @addReplyError(%struct.client* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.39, i64 0, i64 0)) #8, !dbg !1556
  %42 = load i32, i32* %38, align 8, !dbg !1557, !tbaa !1089
  %43 = or i32 %42, 64, !dbg !1557
  store i32 %43, i32* %38, align 8, !dbg !1557, !tbaa !1089
  br label %44, !dbg !1558

; <label>:44:                                     ; preds = %37, %29
  %45 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !1541
  %46 = icmp eq %struct.listNode* %45, null, !dbg !1543
  br i1 %46, label %87, label %29, !dbg !1543, !llvm.loop !1559

; <label>:47:                                     ; preds = %22
  br i1 %9, label %81, label %48, !dbg !1561

; <label>:48:                                     ; preds = %47
  %49 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1562, !tbaa !558
  call void @listRewind(%struct.list* %49, %struct.listIter* nonnull %3) #8, !dbg !1563
  %50 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !1564
  %51 = icmp eq %struct.listNode* %50, null, !dbg !1565
  br i1 %51, label %81, label %52, !dbg !1565

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  br label %54, !dbg !1565

; <label>:54:                                     ; preds = %52, %78
  %55 = phi %struct.listNode* [ %50, %52 ], [ %79, %78 ]
  %56 = getelementptr inbounds %struct.listNode, %struct.listNode* %55, i64 0, i32 2, !dbg !1566
  %57 = bitcast i8** %56 to %struct.client**, !dbg !1566
  %58 = load %struct.client*, %struct.client** %57, align 8, !dbg !1566, !tbaa !797
  %59 = getelementptr inbounds %struct.client, %struct.client* %58, i64 0, i32 23, !dbg !1568
  %60 = load i32, i32* %59, align 8, !dbg !1568, !tbaa !802
  %61 = icmp eq i32 %60, 6, !dbg !1569
  br i1 %61, label %62, label %78, !dbg !1570

; <label>:62:                                     ; preds = %54
  %63 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1571, !tbaa !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %53) #7, !dbg !1576
  %64 = getelementptr inbounds %struct.client, %struct.client* %58, i64 0, i32 33, !dbg !1577
  store i64 %63, i64* %64, align 8, !dbg !1578, !tbaa !1262
  store i32 7, i32* %59, align 8, !dbg !1579, !tbaa !802
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !1580, !tbaa !770
  %65 = getelementptr inbounds %struct.client, %struct.client* %58, i64 0, i32 21, !dbg !1581
  %66 = load i32, i32* %65, align 8, !dbg !1581, !tbaa !1089
  %67 = and i32 %66, 65536, !dbg !1582
  %68 = icmp eq i32 %67, 0, !dbg !1582
  br i1 %68, label %69, label %77, !dbg !1583

; <label>:69:                                     ; preds = %62
  %70 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %53, i64 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 %63) #8, !dbg !1584
  %71 = getelementptr inbounds %struct.client, %struct.client* %58, i64 0, i32 1, !dbg !1586
  %72 = load i32, i32* %71, align 8, !dbg !1586, !tbaa !479
  %73 = sext i32 %70 to i64, !dbg !1587
  %74 = call i64 @write(i32 %72, i8* nonnull %53, i64 %73) #8, !dbg !1588
  %75 = icmp eq i64 %74, %73, !dbg !1589
  br i1 %75, label %77, label %76, !dbg !1590

; <label>:76:                                     ; preds = %69
  call void @freeClientAsync(%struct.client* nonnull %58) #8, !dbg !1591
  br label %77, !dbg !1592

; <label>:77:                                     ; preds = %62, %69, %76
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %53) #7, !dbg !1593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1593
  br label %78, !dbg !1594

; <label>:78:                                     ; preds = %77, %54
  %79 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !1564
  %80 = icmp eq %struct.listNode* %79, null, !dbg !1565
  br i1 %80, label %81, label %54, !dbg !1565, !llvm.loop !1595

; <label>:81:                                     ; preds = %78, %48, %47
  %82 = icmp eq i32 %23, 0, !dbg !1597
  br i1 %82, label %83, label %87, !dbg !1599

; <label>:83:                                     ; preds = %81
  %84 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !1600, !tbaa !1603
  call void @dictEmpty(%struct.dict* %84, void (i8*)* null) #8, !dbg !1604
  %85 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !1605, !tbaa !1606
  call void @listRelease(%struct.list* %85) #8, !dbg !1607
  %86 = call %struct.list* @listCreate() #8, !dbg !1608
  store %struct.list* %86, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !1609, !tbaa !1606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  br label %87, !dbg !1611

; <label>:87:                                     ; preds = %44, %25, %81, %83
  %88 = phi i32 [ %23, %81 ], [ 0, %83 ], [ -1, %25 ], [ -1, %44 ]
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %12) #7, !dbg !1612
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #7, !dbg !1612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1612
  ret i32 %88, !dbg !1612
}

; Function Attrs: noredzone
declare dso_local %struct.rdbSaveInfo* @rdbPopulateSaveInfo(%struct.rdbSaveInfo*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @rdbSaveToSlavesSockets(%struct.rdbSaveInfo*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @rdbSaveBackground(i8*, %struct.rdbSaveInfo*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listDelNode(%struct.list*, %struct.listNode*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyError(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationScriptCacheFlush() local_unnamed_addr #0 !dbg !1601 {
  %1 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !1613, !tbaa !1603
  tail call void @dictEmpty(%struct.dict* %1, void (i8*)* null) #8, !dbg !1614
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !1615, !tbaa !1606
  tail call void @listRelease(%struct.list* %2) #8, !dbg !1616
  %3 = tail call %struct.list* @listCreate() #8, !dbg !1617
  store %struct.list* %3, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !1618, !tbaa !1606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1619
  ret void, !dbg !1619
}

; Function Attrs: noredzone nounwind
define dso_local void @syncCommand(%struct.client*) local_unnamed_addr #0 !dbg !1620 {
  %2 = alloca [128 x i8], align 16
  %3 = alloca %struct.listIter, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1638
  %5 = load i32, i32* %4, align 8, !dbg !1638, !tbaa !1089
  %6 = and i32 %5, 1, !dbg !1640
  %7 = icmp eq i32 %6, 0, !dbg !1640
  br i1 %7, label %8, label %152, !dbg !1641

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !1642, !tbaa !758
  %10 = icmp ne i8* %9, null, !dbg !1644
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !1645
  %12 = icmp ne i32 %11, 15, !dbg !1646
  %13 = and i1 %10, %12, !dbg !1647
  br i1 %13, label %14, label %16, !dbg !1647

; <label>:14:                                     ; preds = %8
  %15 = tail call i8* @sdsnew(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.40, i64 0, i64 0)) #8, !dbg !1648
  tail call void @addReplySds(%struct.client* nonnull %0, i8* %15) #8, !dbg !1650
  br label %152, !dbg !1651

; <label>:16:                                     ; preds = %8
  %17 = tail call i32 @clientHasPendingReplies(%struct.client* nonnull %0) #8, !dbg !1652
  %18 = icmp eq i32 %17, 0, !dbg !1652
  br i1 %18, label %20, label %19, !dbg !1654

; <label>:19:                                     ; preds = %16
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i64 0, i64 0)) #8, !dbg !1655
  br label %152, !dbg !1657

; <label>:20:                                     ; preds = %16
  %21 = tail call i8* @replicationGetSlaveName(%struct.client* nonnull %0) #10, !dbg !1658
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0)) #8, !dbg !1659
  %22 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !1660
  %23 = load %struct.redisObject**, %struct.redisObject*** %22, align 8, !dbg !1660, !tbaa !1297
  %24 = load %struct.redisObject*, %struct.redisObject** %23, align 8, !dbg !1661, !tbaa !779
  %25 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %24, i64 0, i32 2, !dbg !1662
  %26 = load i8*, i8** %25, align 8, !dbg !1662, !tbaa !638
  %27 = tail call i32 @strcasecmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0)) #11, !dbg !1663
  %28 = icmp eq i32 %27, 0, !dbg !1663
  br i1 %28, label %29, label %46, !dbg !1664

; <label>:29:                                     ; preds = %20
  %30 = tail call i32 @masterTryPartialResynchronization(%struct.client* nonnull %0) #10, !dbg !1665
  %31 = icmp eq i32 %30, 0, !dbg !1666
  br i1 %31, label %32, label %35, !dbg !1667

; <label>:32:                                     ; preds = %29
  %33 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 88), align 8, !dbg !1668, !tbaa !1670
  %34 = add nsw i64 %33, 1, !dbg !1668
  store i64 %34, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 88), align 8, !dbg !1668, !tbaa !1670
  br label %152, !dbg !1671

; <label>:35:                                     ; preds = %29
  %36 = load %struct.redisObject**, %struct.redisObject*** %22, align 8, !dbg !1672, !tbaa !1297
  %37 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %36, i64 1, !dbg !1673
  %38 = load %struct.redisObject*, %struct.redisObject** %37, align 8, !dbg !1673, !tbaa !779
  %39 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %38, i64 0, i32 2, !dbg !1674
  %40 = load i8*, i8** %39, align 8, !dbg !1674, !tbaa !638
  %41 = load i8, i8* %40, align 1, !dbg !1676, !tbaa !470
  %42 = icmp eq i8 %41, 63, !dbg !1678
  br i1 %42, label %49, label %43, !dbg !1679

; <label>:43:                                     ; preds = %35
  %44 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 89), align 8, !dbg !1680, !tbaa !1681
  %45 = add nsw i64 %44, 1, !dbg !1680
  store i64 %45, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 89), align 8, !dbg !1680, !tbaa !1681
  br label %49, !dbg !1682

; <label>:46:                                     ; preds = %20
  %47 = load i32, i32* %4, align 8, !dbg !1683, !tbaa !1089
  %48 = or i32 %47, 65536, !dbg !1683
  store i32 %48, i32* %4, align 8, !dbg !1683, !tbaa !1089
  br label %49

; <label>:49:                                     ; preds = %43, %35, %46
  %50 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 87), align 8, !dbg !1685, !tbaa !1686
  %51 = add nsw i64 %50, 1, !dbg !1685
  store i64 %51, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 87), align 8, !dbg !1685, !tbaa !1686
  %52 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1687
  store i32 6, i32* %52, align 8, !dbg !1688, !tbaa !802
  %53 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 214), align 8, !dbg !1689, !tbaa !1691
  %54 = icmp eq i32 %53, 0, !dbg !1692
  br i1 %54, label %59, label %55, !dbg !1693

; <label>:55:                                     ; preds = %49
  %56 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1694
  %57 = load i32, i32* %56, align 8, !dbg !1694, !tbaa !479
  %58 = tail call i32 @anetDisableTcpNoDelay(i8* null, i32 %57) #8, !dbg !1695
  br label %59, !dbg !1695

; <label>:59:                                     ; preds = %49, %55
  %60 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 25, !dbg !1696
  store i32 -1, i32* %60, align 8, !dbg !1697, !tbaa !1698
  %61 = load i32, i32* %4, align 8, !dbg !1699, !tbaa !1089
  %62 = or i32 %61, 1, !dbg !1699
  store i32 %62, i32* %4, align 8, !dbg !1699, !tbaa !1089
  %63 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1700, !tbaa !558
  %64 = bitcast %struct.client* %0 to i8*, !dbg !1701
  %65 = tail call %struct.list* @listAddNodeTail(%struct.list* %63, i8* %64) #8, !dbg !1702
  %66 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1703, !tbaa !558
  %67 = getelementptr inbounds %struct.list, %struct.list* %66, i64 0, i32 5, !dbg !1703
  %68 = load i64, i64* %67, align 8, !dbg !1703, !tbaa !559
  %69 = icmp eq i64 %68, 1, !dbg !1705
  %70 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1706
  %71 = icmp eq i8* %70, null, !dbg !1707
  %72 = and i1 %69, %71, !dbg !1708
  br i1 %72, label %73, label %83, !dbg !1708

; <label>:73:                                     ; preds = %59
  tail call void @getRandomHexChars(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 40) #8, !dbg !1709
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 40), align 4, !dbg !1713, !tbaa !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1714
  %74 = tail call i8* @memset(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i32 48, i64 41) #8, !dbg !1715
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 40), align 1, !dbg !1718, !tbaa !470
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !1719, !tbaa !1316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1720
  %75 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1721, !tbaa !511
  %76 = icmp eq i8* %75, null, !dbg !1721
  br i1 %76, label %78, label %77, !dbg !1721

; <label>:77:                                     ; preds = %73
  tail call void @_serverAssert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 79) #8, !dbg !1721
  tail call void @_exit(i32 1) #9, !dbg !1721
  unreachable, !dbg !1721

; <label>:78:                                     ; preds = %73
  %79 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !1723, !tbaa !518
  %80 = tail call i8* @zmalloc(i64 %79) #8, !dbg !1724
  store i8* %80, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !1725, !tbaa !511
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185) to <2 x i64>*), align 8, !dbg !1726, !tbaa !522
  %81 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !1727, !tbaa !524
  %82 = add nsw i64 %81, 1, !dbg !1728
  store i64 %82, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !1729, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1730
  br label %83, !dbg !1731

; <label>:83:                                     ; preds = %78, %59
  %84 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !1732, !tbaa !1733
  %85 = icmp ne i32 %84, -1, !dbg !1734
  %86 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 165), align 4, !dbg !1735
  %87 = icmp eq i32 %86, 1, !dbg !1736
  %88 = and i1 %85, %87, !dbg !1737
  br i1 %88, label %89, label %128, !dbg !1737

; <label>:89:                                     ; preds = %83
  %90 = bitcast %struct.listIter* %3 to i8*, !dbg !1738
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %90) #7, !dbg !1738
  %91 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !1739, !tbaa !558
  call void @listRewind(%struct.list* %91, %struct.listIter* nonnull %3) #8, !dbg !1741
  br label %92, !dbg !1742

; <label>:92:                                     ; preds = %95, %89
  %93 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !1743
  %94 = icmp eq %struct.listNode* %93, null, !dbg !1742
  br i1 %94, label %126, label %95, !dbg !1742

; <label>:95:                                     ; preds = %92
  %96 = getelementptr inbounds %struct.listNode, %struct.listNode* %93, i64 0, i32 2, !dbg !1745
  %97 = bitcast i8** %96 to %struct.client**, !dbg !1745
  %98 = load %struct.client*, %struct.client** %97, align 8, !dbg !1745, !tbaa !797
  %99 = getelementptr inbounds %struct.client, %struct.client* %98, i64 0, i32 23, !dbg !1748
  %100 = load i32, i32* %99, align 8, !dbg !1748, !tbaa !802
  %101 = icmp eq i32 %100, 7, !dbg !1750
  br i1 %101, label %102, label %92, !dbg !1751, !llvm.loop !1752

; <label>:102:                                    ; preds = %95
  %103 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 37, !dbg !1754
  %104 = load i32, i32* %103, align 8, !dbg !1754, !tbaa !1379
  %105 = getelementptr inbounds %struct.client, %struct.client* %98, i64 0, i32 37, !dbg !1755
  %106 = load i32, i32* %105, align 8, !dbg !1755, !tbaa !1379
  %107 = and i32 %106, %104, !dbg !1756
  %108 = icmp eq i32 %107, %106, !dbg !1757
  br i1 %108, label %109, label %126, !dbg !1758

; <label>:109:                                    ; preds = %102
  call void @copyClientOutputBuffer(%struct.client* nonnull %0, %struct.client* nonnull %98) #8, !dbg !1759
  %110 = getelementptr inbounds %struct.client, %struct.client* %98, i64 0, i32 33, !dbg !1760
  %111 = load i64, i64* %110, align 8, !dbg !1760, !tbaa !1262
  %112 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0, !dbg !1763
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %112) #7, !dbg !1763
  %113 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 33, !dbg !1764
  store i64 %111, i64* %113, align 8, !dbg !1765, !tbaa !1262
  store i32 7, i32* %52, align 8, !dbg !1766, !tbaa !802
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !1767, !tbaa !770
  %114 = load i32, i32* %4, align 8, !dbg !1768, !tbaa !1089
  %115 = and i32 %114, 65536, !dbg !1769
  %116 = icmp eq i32 %115, 0, !dbg !1769
  br i1 %116, label %117, label %125, !dbg !1770

; <label>:117:                                    ; preds = %109
  %118 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %112, i64 128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 %111) #8, !dbg !1771
  %119 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !1773
  %120 = load i32, i32* %119, align 8, !dbg !1773, !tbaa !479
  %121 = sext i32 %118 to i64, !dbg !1774
  %122 = call i64 @write(i32 %120, i8* nonnull %112, i64 %121) #8, !dbg !1775
  %123 = icmp eq i64 %122, %121, !dbg !1776
  br i1 %123, label %125, label %124, !dbg !1777

; <label>:124:                                    ; preds = %117
  call void @freeClientAsync(%struct.client* nonnull %0) #8, !dbg !1778
  br label %125, !dbg !1779

; <label>:125:                                    ; preds = %109, %117, %124
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %112) #7, !dbg !1780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1780
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.44, i64 0, i64 0)) #8, !dbg !1781
  br label %127, !dbg !1782

; <label>:126:                                    ; preds = %92, %102
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.45, i64 0, i64 0)) #8, !dbg !1783
  br label %127

; <label>:127:                                    ; preds = %126, %125
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %90) #7, !dbg !1785
  br label %152, !dbg !1786

; <label>:128:                                    ; preds = %83
  %129 = icmp eq i32 %86, 2, !dbg !1787
  %130 = and i1 %85, %129, !dbg !1789
  br i1 %130, label %131, label %132, !dbg !1789

; <label>:131:                                    ; preds = %128
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.46, i64 0, i64 0)) #8, !dbg !1790
  br label %152, !dbg !1792

; <label>:132:                                    ; preds = %128
  %133 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 193), align 4, !dbg !1793, !tbaa !1509
  %134 = icmp eq i32 %133, 0, !dbg !1796
  br i1 %134, label %144, label %135, !dbg !1797

; <label>:135:                                    ; preds = %132
  %136 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 37, !dbg !1798
  %137 = load i32, i32* %136, align 8, !dbg !1798, !tbaa !1379
  %138 = and i32 %137, 1, !dbg !1799
  %139 = icmp eq i32 %138, 0, !dbg !1799
  br i1 %139, label %144, label %140, !dbg !1800

; <label>:140:                                    ; preds = %135
  %141 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 194), align 8, !dbg !1801, !tbaa !1804
  %142 = icmp eq i32 %141, 0, !dbg !1805
  br i1 %142, label %152, label %143, !dbg !1806

; <label>:143:                                    ; preds = %140
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i64 0, i64 0)) #8, !dbg !1807
  br label %152, !dbg !1807

; <label>:144:                                    ; preds = %135, %132
  %145 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !1808, !tbaa !1811
  %146 = icmp eq i32 %145, -1, !dbg !1812
  br i1 %146, label %147, label %151, !dbg !1813

; <label>:147:                                    ; preds = %144
  %148 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 37, !dbg !1814
  %149 = load i32, i32* %148, align 8, !dbg !1814, !tbaa !1379
  %150 = tail call i32 @startBgsaveForReplication(i32 %149) #10, !dbg !1816
  br label %152, !dbg !1817

; <label>:151:                                    ; preds = %144
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.48, i64 0, i64 0)) #8, !dbg !1818
  br label %152

; <label>:152:                                    ; preds = %140, %1, %127, %143, %151, %147, %131, %32, %19, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1820
  ret void, !dbg !1820
}

; Function Attrs: noredzone
declare dso_local i32 @clientHasPendingReplies(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @anetDisableTcpNoDelay(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @changeReplicationId() local_unnamed_addr #0 !dbg !1710 {
  tail call void @getRandomHexChars(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 40) #8, !dbg !1821
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 40), align 4, !dbg !1822, !tbaa !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1823
  ret void, !dbg !1823
}

; Function Attrs: noredzone nounwind
define dso_local void @clearReplicationId2() local_unnamed_addr #0 !dbg !1716 {
  %1 = tail call i8* @memset(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i32 48, i64 41) #8, !dbg !1824
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 40), align 1, !dbg !1825, !tbaa !470
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !1826, !tbaa !1316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1827
  ret void, !dbg !1827
}

; Function Attrs: noredzone
declare dso_local void @copyClientOutputBuffer(%struct.client*, %struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replconfCommand(%struct.client*) local_unnamed_addr #0 !dbg !1828 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 8, !dbg !1846
  %5 = load i32, i32* %4, align 8, !dbg !1846, !tbaa !1848
  %6 = and i32 %5, 1, !dbg !1849
  %7 = icmp eq i32 %6, 0, !dbg !1849
  br i1 %7, label %16, label %8, !dbg !1850

; <label>:8:                                      ; preds = %1
  %9 = icmp sgt i32 %5, 1, !dbg !1852
  br i1 %9, label %10, label %196, !dbg !1853

; <label>:10:                                     ; preds = %8
  %11 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9
  %12 = bitcast i64* %2 to i8*
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 35
  %14 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 36, i64 0
  %15 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 37
  br label %18, !dbg !1853

; <label>:16:                                     ; preds = %1
  %17 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 16), align 8, !dbg !1854, !tbaa !1856
  tail call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %17) #8, !dbg !1858
  br label %198, !dbg !1859

; <label>:18:                                     ; preds = %10, %191
  %19 = phi i64 [ 1, %10 ], [ %192, %191 ]
  %20 = load %struct.redisObject**, %struct.redisObject*** %11, align 8, !dbg !1860, !tbaa !1297
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %19, !dbg !1861
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !1861, !tbaa !779
  %23 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %22, i64 0, i32 2, !dbg !1862
  %24 = load i8*, i8** %23, align 8, !dbg !1862, !tbaa !638
  %25 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0)) #11, !dbg !1863
  %26 = icmp eq i32 %25, 0, !dbg !1863
  br i1 %26, label %27, label %37, !dbg !1864

; <label>:27:                                     ; preds = %18
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #7, !dbg !1865
  %28 = add nuw nsw i64 %19, 1, !dbg !1866
  %29 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %28, !dbg !1868
  %30 = load %struct.redisObject*, %struct.redisObject** %29, align 8, !dbg !1868, !tbaa !779
  %31 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %30, i64* nonnull %2, i8* null) #8, !dbg !1870
  %32 = icmp eq i32 %31, 0, !dbg !1871
  br i1 %32, label %33, label %36, !dbg !1872

; <label>:33:                                     ; preds = %27
  %34 = load i64, i64* %2, align 8, !dbg !1873, !tbaa !676
  %35 = trunc i64 %34 to i32, !dbg !1873
  store i32 %35, i32* %13, align 4, !dbg !1874, !tbaa !498
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #7, !dbg !1875
  br label %191

; <label>:36:                                     ; preds = %27
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #7, !dbg !1875
  br label %198

; <label>:37:                                     ; preds = %18
  %38 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i64 0, i64 0)) #11, !dbg !1876
  %39 = icmp eq i32 %38, 0, !dbg !1876
  br i1 %39, label %40, label %119, !dbg !1877

; <label>:40:                                     ; preds = %37
  %41 = add nuw nsw i64 %19, 1, !dbg !1878
  %42 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %41, !dbg !1879
  %43 = load %struct.redisObject*, %struct.redisObject** %42, align 8, !dbg !1879, !tbaa !779
  %44 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %43, i64 0, i32 2, !dbg !1880
  %45 = load i8*, i8** %44, align 8, !dbg !1880, !tbaa !638
  %46 = getelementptr inbounds i8, i8* %45, i64 -1, !dbg !1885
  %47 = load i8, i8* %46, align 1, !dbg !1885, !tbaa !470
  %48 = trunc i8 %47 to i3, !dbg !1887
  switch i3 %48, label %67 [
    i3 -4, label %63
    i3 1, label %49
    i3 2, label %53
    i3 3, label %58
  ], !dbg !1887

; <label>:49:                                     ; preds = %40
  %50 = getelementptr inbounds i8, i8* %45, i64 -3, !dbg !1888
  %51 = load i8, i8* %50, align 1, !dbg !1889, !tbaa !470
  %52 = zext i8 %51 to i64, !dbg !1888
  br label %68, !dbg !1890

; <label>:53:                                     ; preds = %40
  %54 = getelementptr inbounds i8, i8* %45, i64 -5, !dbg !1891
  %55 = bitcast i8* %54 to i16*, !dbg !1892
  %56 = load i16, i16* %55, align 1, !dbg !1892, !tbaa !667
  %57 = zext i16 %56 to i64, !dbg !1891
  br label %68, !dbg !1893

; <label>:58:                                     ; preds = %40
  %59 = getelementptr inbounds i8, i8* %45, i64 -9, !dbg !1894
  %60 = bitcast i8* %59 to i32*, !dbg !1895
  %61 = load i32, i32* %60, align 1, !dbg !1895, !tbaa !672
  %62 = zext i32 %61 to i64, !dbg !1894
  br label %68, !dbg !1896

; <label>:63:                                     ; preds = %40
  %64 = getelementptr inbounds i8, i8* %45, i64 -17, !dbg !1897
  %65 = bitcast i8* %64 to i64*, !dbg !1898
  %66 = load i64, i64* %65, align 1, !dbg !1898, !tbaa !676
  br label %68, !dbg !1899

; <label>:67:                                     ; preds = %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1900
  br label %71, !dbg !1901

; <label>:68:                                     ; preds = %49, %53, %58, %63
  %69 = phi i64 [ %66, %63 ], [ %62, %58 ], [ %57, %53 ], [ %52, %49 ], !dbg !1902
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1900
  %70 = icmp ult i64 %69, 46, !dbg !1903
  br i1 %70, label %71, label %97, !dbg !1901

; <label>:71:                                     ; preds = %67, %68
  switch i3 %48, label %93 [
    i3 0, label %72
    i3 1, label %75
    i3 2, label %79
    i3 3, label %84
    i3 -4, label %89
  ], !dbg !1908

; <label>:72:                                     ; preds = %71
  %73 = lshr i8 %47, 3, !dbg !1909
  %74 = zext i8 %73 to i64, !dbg !1909
  br label %93, !dbg !1910

; <label>:75:                                     ; preds = %71
  %76 = getelementptr inbounds i8, i8* %45, i64 -3, !dbg !1911
  %77 = load i8, i8* %76, align 1, !dbg !1912, !tbaa !470
  %78 = zext i8 %77 to i64, !dbg !1911
  br label %93, !dbg !1913

; <label>:79:                                     ; preds = %71
  %80 = getelementptr inbounds i8, i8* %45, i64 -5, !dbg !1914
  %81 = bitcast i8* %80 to i16*, !dbg !1915
  %82 = load i16, i16* %81, align 1, !dbg !1915, !tbaa !667
  %83 = zext i16 %82 to i64, !dbg !1914
  br label %93, !dbg !1916

; <label>:84:                                     ; preds = %71
  %85 = getelementptr inbounds i8, i8* %45, i64 -9, !dbg !1917
  %86 = bitcast i8* %85 to i32*, !dbg !1918
  %87 = load i32, i32* %86, align 1, !dbg !1918, !tbaa !672
  %88 = zext i32 %87 to i64, !dbg !1917
  br label %93, !dbg !1919

; <label>:89:                                     ; preds = %71
  %90 = getelementptr inbounds i8, i8* %45, i64 -17, !dbg !1920
  %91 = bitcast i8* %90 to i64*, !dbg !1921
  %92 = load i64, i64* %91, align 1, !dbg !1921, !tbaa !676
  br label %93, !dbg !1922

; <label>:93:                                     ; preds = %71, %72, %75, %79, %84, %89
  %94 = phi i64 [ %92, %89 ], [ %88, %84 ], [ %83, %79 ], [ %78, %75 ], [ %74, %72 ], [ 0, %71 ], !dbg !1923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1924
  %95 = add i64 %94, 1, !dbg !1925
  %96 = call i8* @memcpy(i8* nonnull %14, i8* %45, i64 %95) #8, !dbg !1926
  br label %191

; <label>:97:                                     ; preds = %68
  %98 = trunc i8 %47 to i3, !dbg !1887
  switch i3 %98, label %117 [
    i3 -4, label %113
    i3 1, label %99
    i3 2, label %103
    i3 3, label %108
  ], !dbg !1931

; <label>:99:                                     ; preds = %97
  %100 = getelementptr inbounds i8, i8* %45, i64 -3, !dbg !1932
  %101 = load i8, i8* %100, align 1, !dbg !1933, !tbaa !470
  %102 = zext i8 %101 to i64, !dbg !1932
  br label %117, !dbg !1934

; <label>:103:                                    ; preds = %97
  %104 = getelementptr inbounds i8, i8* %45, i64 -5, !dbg !1935
  %105 = bitcast i8* %104 to i16*, !dbg !1936
  %106 = load i16, i16* %105, align 1, !dbg !1936, !tbaa !667
  %107 = zext i16 %106 to i64, !dbg !1935
  br label %117, !dbg !1937

; <label>:108:                                    ; preds = %97
  %109 = getelementptr inbounds i8, i8* %45, i64 -9, !dbg !1938
  %110 = bitcast i8* %109 to i32*, !dbg !1939
  %111 = load i32, i32* %110, align 1, !dbg !1939, !tbaa !672
  %112 = zext i32 %111 to i64, !dbg !1938
  br label %117, !dbg !1940

; <label>:113:                                    ; preds = %97
  %114 = getelementptr inbounds i8, i8* %45, i64 -17, !dbg !1941
  %115 = bitcast i8* %114 to i64*, !dbg !1942
  %116 = load i64, i64* %115, align 1, !dbg !1942, !tbaa !676
  br label %117, !dbg !1943

; <label>:117:                                    ; preds = %97, %99, %103, %108, %113
  %118 = phi i64 [ %116, %113 ], [ %112, %108 ], [ %107, %103 ], [ %102, %99 ], [ 0, %97 ], !dbg !1944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1945
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.51, i64 0, i64 0), i64 %118) #8, !dbg !1946
  br label %198

; <label>:119:                                    ; preds = %37
  %120 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0)) #11, !dbg !1947
  %121 = icmp eq i32 %120, 0, !dbg !1947
  br i1 %121, label %122, label %139, !dbg !1948

; <label>:122:                                    ; preds = %119
  %123 = add nuw nsw i64 %19, 1, !dbg !1949
  %124 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %123, !dbg !1952
  %125 = load %struct.redisObject*, %struct.redisObject** %124, align 8, !dbg !1952, !tbaa !779
  %126 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %125, i64 0, i32 2, !dbg !1953
  %127 = load i8*, i8** %126, align 8, !dbg !1953, !tbaa !638
  %128 = call i32 @strcasecmp(i8* %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)) #11, !dbg !1954
  %129 = icmp eq i32 %128, 0, !dbg !1954
  br i1 %129, label %130, label %133, !dbg !1955

; <label>:130:                                    ; preds = %122
  %131 = load i32, i32* %15, align 8, !dbg !1956, !tbaa !1379
  %132 = or i32 %131, 1, !dbg !1956
  store i32 %132, i32* %15, align 8, !dbg !1956, !tbaa !1379
  br label %191, !dbg !1957

; <label>:133:                                    ; preds = %122
  %134 = call i32 @strcasecmp(i8* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0)) #11, !dbg !1958
  %135 = icmp eq i32 %134, 0, !dbg !1958
  br i1 %135, label %136, label %191, !dbg !1960

; <label>:136:                                    ; preds = %133
  %137 = load i32, i32* %15, align 8, !dbg !1961, !tbaa !1379
  %138 = or i32 %137, 2, !dbg !1961
  store i32 %138, i32* %15, align 8, !dbg !1961, !tbaa !1379
  br label %191, !dbg !1962

; <label>:139:                                    ; preds = %119
  %140 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0)) #11, !dbg !1963
  %141 = icmp eq i32 %140, 0, !dbg !1963
  br i1 %141, label %142, label %173, !dbg !1964

; <label>:142:                                    ; preds = %139
  %143 = bitcast i64* %3 to i8*, !dbg !1965
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %143) #7, !dbg !1965
  %144 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !1966
  %145 = load i32, i32* %144, align 8, !dbg !1966, !tbaa !1089
  %146 = and i32 %145, 1, !dbg !1968
  %147 = icmp eq i32 %146, 0, !dbg !1968
  br i1 %147, label %172, label %148, !dbg !1969

; <label>:148:                                    ; preds = %142
  %149 = add i64 %19, 1, !dbg !1970
  %150 = and i64 %149, 4294967295, !dbg !1972
  %151 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 %150, !dbg !1972
  %152 = load %struct.redisObject*, %struct.redisObject** %151, align 8, !dbg !1972, !tbaa !779
  %153 = call i32 @getLongLongFromObject(%struct.redisObject* %152, i64* nonnull %3) #8, !dbg !1974
  %154 = icmp eq i32 %153, 0, !dbg !1975
  br i1 %154, label %155, label %172, !dbg !1976

; <label>:155:                                    ; preds = %148
  %156 = load i64, i64* %3, align 8, !dbg !1977, !tbaa !522
  %157 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 31, !dbg !1979
  %158 = load i64, i64* %157, align 8, !dbg !1979, !tbaa !1980
  %159 = icmp sgt i64 %156, %158, !dbg !1981
  br i1 %159, label %160, label %161, !dbg !1982

; <label>:160:                                    ; preds = %155
  store i64 %156, i64* %157, align 8, !dbg !1983, !tbaa !1980
  br label %161, !dbg !1984

; <label>:161:                                    ; preds = %160, %155
  %162 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !1985, !tbaa !1367
  %163 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 32, !dbg !1986
  store i64 %162, i64* %163, align 8, !dbg !1987, !tbaa !1370
  %164 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !1988
  %165 = load i32, i32* %164, align 4, !dbg !1988, !tbaa !1373
  %166 = icmp eq i32 %165, 0, !dbg !1990
  br i1 %166, label %172, label %167, !dbg !1991

; <label>:167:                                    ; preds = %161
  %168 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !1992
  %169 = load i32, i32* %168, align 8, !dbg !1992, !tbaa !802
  %170 = icmp eq i32 %169, 9, !dbg !1993
  br i1 %170, label %171, label %172, !dbg !1994

; <label>:171:                                    ; preds = %167
  call void @putSlaveOnline(%struct.client* nonnull %0) #10, !dbg !1995
  br label %172, !dbg !1995

; <label>:172:                                    ; preds = %167, %171, %161, %148, %142
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %143) #7, !dbg !1996
  br label %198

; <label>:173:                                    ; preds = %139
  %174 = call i32 @strcasecmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0)) #11, !dbg !1997
  %175 = icmp eq i32 %174, 0, !dbg !1997
  br i1 %175, label %176, label %190, !dbg !1999

; <label>:176:                                    ; preds = %173
  %177 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !2000, !tbaa !758
  %178 = icmp ne i8* %177, null, !dbg !2003
  %179 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2004
  %180 = icmp ne %struct.client* %179, null, !dbg !2005
  %181 = and i1 %178, %180, !dbg !2006
  br i1 %181, label %182, label %198, !dbg !2006

; <label>:182:                                    ; preds = %176
  %183 = getelementptr inbounds %struct.client, %struct.client* %179, i64 0, i32 21, !dbg !2012
  %184 = load i32, i32* %183, align 8, !dbg !2015, !tbaa !1089
  %185 = or i32 %184, 8192, !dbg !2015
  store i32 %185, i32* %183, align 8, !dbg !2015, !tbaa !1089
  call void @addReplyMultiBulkLen(%struct.client* nonnull %179, i64 3) #8, !dbg !2016
  call void @addReplyBulkCString(%struct.client* nonnull %179, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0)) #8, !dbg !2017
  call void @addReplyBulkCString(%struct.client* nonnull %179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.155, i64 0, i64 0)) #8, !dbg !2018
  %186 = getelementptr inbounds %struct.client, %struct.client* %179, i64 0, i32 30, !dbg !2019
  %187 = load i64, i64* %186, align 8, !dbg !2019, !tbaa !2020
  call void @addReplyBulkLongLong(%struct.client* nonnull %179, i64 %187) #8, !dbg !2021
  %188 = load i32, i32* %183, align 8, !dbg !2022, !tbaa !1089
  %189 = and i32 %188, -8193, !dbg !2022
  store i32 %189, i32* %183, align 8, !dbg !2022, !tbaa !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2023
  br label %198, !dbg !2024

; <label>:190:                                    ; preds = %173
  call void (%struct.client*, i8*, ...) @addReplyErrorFormat(%struct.client* nonnull %0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.57, i64 0, i64 0), i8* %24) #8, !dbg !2025
  br label %198, !dbg !2027

; <label>:191:                                    ; preds = %93, %33, %133, %136, %130
  %192 = add nuw i64 %19, 2, !dbg !2028
  %193 = load i32, i32* %4, align 8, !dbg !2029, !tbaa !1848
  %194 = trunc i64 %192 to i32, !dbg !1852
  %195 = icmp sgt i32 %193, %194, !dbg !1852
  br i1 %195, label %18, label %196, !dbg !1853, !llvm.loop !2030

; <label>:196:                                    ; preds = %191, %8
  %197 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !2032, !tbaa !2033
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %197) #8, !dbg !2034
  br label %198, !dbg !2035

; <label>:198:                                    ; preds = %176, %182, %117, %36, %196, %190, %172, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2035
  ret void, !dbg !2035
}

; Function Attrs: noredzone
declare dso_local i32 @getLongFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyErrorFormat(%struct.client*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @getLongLongFromObject(%struct.redisObject*, i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @putSlaveOnline(%struct.client*) local_unnamed_addr #0 !dbg !2036 {
  %2 = alloca %struct.listIter, align 8
  %3 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 23, !dbg !2040
  store i32 9, i32* %3, align 8, !dbg !2041, !tbaa !802
  %4 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 24, !dbg !2042
  store i32 0, i32* %4, align 4, !dbg !2043, !tbaa !1373
  %5 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2044, !tbaa !1367
  %6 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 32, !dbg !2045
  store i64 %5, i64* %6, align 8, !dbg !2046, !tbaa !1370
  %7 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2047, !tbaa !2049
  %8 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 1, !dbg !2050
  %9 = load i32, i32* %8, align 8, !dbg !2050, !tbaa !479
  %10 = bitcast %struct.client* %0 to i8*, !dbg !2051
  %11 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* %7, i32 %9, i32 2, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @sendReplyToClient, i8* %10) #8, !dbg !2052
  %12 = icmp eq i32 %11, -1, !dbg !2053
  br i1 %12, label %13, label %17, !dbg !2054

; <label>:13:                                     ; preds = %1
  %14 = tail call i32* @__errno() #8, !dbg !2055
  %15 = load i32, i32* %14, align 4, !dbg !2055, !tbaa !672
  %16 = tail call i8* @strerror(i32 %15) #8, !dbg !2057
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.58, i64 0, i64 0), i8* %16) #8, !dbg !2058
  tail call void @freeClient(%struct.client* nonnull %0) #8, !dbg !2059
  br label %55, !dbg !2060

; <label>:17:                                     ; preds = %1
  %18 = bitcast %struct.listIter* %2 to i8*, !dbg !2061
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #7, !dbg !2061
  %19 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 190), align 8, !dbg !2064, !tbaa !1417
  %20 = icmp ne i32 %19, 0, !dbg !2065
  %21 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 191), align 4, !dbg !2066
  %22 = icmp ne i32 %21, 0, !dbg !2067
  %23 = and i1 %20, %22, !dbg !2068
  br i1 %23, label %24, label %53, !dbg !2068

; <label>:24:                                     ; preds = %17
  %25 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !2069, !tbaa !558
  call void @listRewind(%struct.list* %25, %struct.listIter* nonnull %2) #8, !dbg !2071
  %26 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !2072
  %27 = icmp eq %struct.listNode* %26, null, !dbg !2074
  br i1 %27, label %51, label %28, !dbg !2074

; <label>:28:                                     ; preds = %24, %47
  %29 = phi %struct.listNode* [ %49, %47 ], [ %26, %24 ]
  %30 = phi i32 [ %48, %47 ], [ 0, %24 ]
  %31 = getelementptr inbounds %struct.listNode, %struct.listNode* %29, i64 0, i32 2, !dbg !2075
  %32 = bitcast i8** %31 to %struct.client**, !dbg !2075
  %33 = load %struct.client*, %struct.client** %32, align 8, !dbg !2075, !tbaa !797
  %34 = getelementptr inbounds %struct.client, %struct.client* %33, i64 0, i32 23, !dbg !2077
  %35 = load i32, i32* %34, align 8, !dbg !2077, !tbaa !802
  %36 = icmp eq i32 %35, 9, !dbg !2078
  br i1 %36, label %37, label %47, !dbg !2079

; <label>:37:                                     ; preds = %28
  %38 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2080, !tbaa !1367
  %39 = getelementptr inbounds %struct.client, %struct.client* %33, i64 0, i32 32, !dbg !2081
  %40 = load i64, i64* %39, align 8, !dbg !2081, !tbaa !1370
  %41 = sub nsw i64 %38, %40, !dbg !2082
  %42 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 191), align 4, !dbg !2084, !tbaa !1439
  %43 = sext i32 %42 to i64, !dbg !2085
  %44 = icmp sle i64 %41, %43, !dbg !2086
  %45 = zext i1 %44 to i32, !dbg !2087
  %46 = add nsw i32 %30, %45, !dbg !2087
  br label %47, !dbg !2087

; <label>:47:                                     ; preds = %37, %28
  %48 = phi i32 [ %30, %28 ], [ %46, %37 ], !dbg !2088
  %49 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !2072
  %50 = icmp eq %struct.listNode* %49, null, !dbg !2074
  br i1 %50, label %51, label %28, !dbg !2074, !llvm.loop !1444

; <label>:51:                                     ; preds = %47, %24
  %52 = phi i32 [ 0, %24 ], [ %48, %47 ], !dbg !2089
  store i32 %52, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 192), align 8, !dbg !2090, !tbaa !1449
  br label %53, !dbg !2091

; <label>:53:                                     ; preds = %17, %51
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #7, !dbg !2091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2091
  %54 = call i8* @replicationGetSlaveName(%struct.client* %0) #10, !dbg !2092
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.59, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0)) #8, !dbg !2093
  br label %55, !dbg !2094

; <label>:55:                                     ; preds = %53, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2094
  ret void, !dbg !2094
}

; Function Attrs: noredzone nounwind
define dso_local void @replicationSendAck() local_unnamed_addr #0 !dbg !2008 {
  %1 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2095, !tbaa !2096
  %2 = icmp eq %struct.client* %1, null, !dbg !2098
  br i1 %2, label %11, label %3, !dbg !2099

; <label>:3:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 21, !dbg !2100
  %5 = load i32, i32* %4, align 8, !dbg !2101, !tbaa !1089
  %6 = or i32 %5, 8192, !dbg !2101
  store i32 %6, i32* %4, align 8, !dbg !2101, !tbaa !1089
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %1, i64 3) #8, !dbg !2102
  tail call void @addReplyBulkCString(%struct.client* nonnull %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0)) #8, !dbg !2103
  tail call void @addReplyBulkCString(%struct.client* nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.155, i64 0, i64 0)) #8, !dbg !2104
  %7 = getelementptr inbounds %struct.client, %struct.client* %1, i64 0, i32 30, !dbg !2105
  %8 = load i64, i64* %7, align 8, !dbg !2105, !tbaa !2020
  tail call void @addReplyBulkLongLong(%struct.client* nonnull %1, i64 %8) #8, !dbg !2106
  %9 = load i32, i32* %4, align 8, !dbg !2107, !tbaa !1089
  %10 = and i32 %9, -8193, !dbg !2107
  store i32 %10, i32* %4, align 8, !dbg !2107, !tbaa !1089
  br label %11, !dbg !2108

; <label>:11:                                     ; preds = %0, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2109
  ret void, !dbg !2109
}

; Function Attrs: noredzone
declare dso_local i32 @aeCreateFileEvent(%struct.aeEventLoop*, i32, i32, void (%struct.aeEventLoop*, i32, i8*, i32)*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sendReplyToClient(%struct.aeEventLoop*, i32, i8*, i32) #3

; Function Attrs: noredzone
declare dso_local i8* @strerror(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @freeClient(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @sendBulkToSlave(%struct.aeEventLoop* nocapture readnone, i32, i8*, i32) #0 !dbg !2110 {
  %5 = alloca [16384 x i8], align 16
  %6 = bitcast i8* %2 to %struct.client*, !dbg !2124
  %7 = getelementptr inbounds [16384 x i8], [16384 x i8]* %5, i64 0, i64 0, !dbg !2126
  call void @llvm.lifetime.start.p0i8(i64 16384, i8* nonnull %7) #7, !dbg !2126
  %8 = getelementptr inbounds i8, i8* %2, i64 200, !dbg !2128
  %9 = bitcast i8* %8 to i8**, !dbg !2128
  %10 = load i8*, i8** %9, align 8, !dbg !2128, !tbaa !2130
  %11 = icmp eq i8* %10, null, !dbg !2131
  br i1 %11, label %79, label %12, !dbg !2132

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds i8, i8* %10, i64 -1, !dbg !2136
  %14 = load i8, i8* %13, align 1, !dbg !2136, !tbaa !470
  %15 = trunc i8 %14 to i3, !dbg !2138
  switch i3 %15, label %37 [
    i3 0, label %16
    i3 1, label %19
    i3 2, label %23
    i3 3, label %28
    i3 -4, label %33
  ], !dbg !2138

; <label>:16:                                     ; preds = %12
  %17 = lshr i8 %14, 3, !dbg !2139
  %18 = zext i8 %17 to i64, !dbg !2139
  br label %37, !dbg !2140

; <label>:19:                                     ; preds = %12
  %20 = getelementptr inbounds i8, i8* %10, i64 -3, !dbg !2141
  %21 = load i8, i8* %20, align 1, !dbg !2142, !tbaa !470
  %22 = zext i8 %21 to i64, !dbg !2141
  br label %37, !dbg !2143

; <label>:23:                                     ; preds = %12
  %24 = getelementptr inbounds i8, i8* %10, i64 -5, !dbg !2144
  %25 = bitcast i8* %24 to i16*, !dbg !2145
  %26 = load i16, i16* %25, align 1, !dbg !2145, !tbaa !667
  %27 = zext i16 %26 to i64, !dbg !2144
  br label %37, !dbg !2146

; <label>:28:                                     ; preds = %12
  %29 = getelementptr inbounds i8, i8* %10, i64 -9, !dbg !2147
  %30 = bitcast i8* %29 to i32*, !dbg !2148
  %31 = load i32, i32* %30, align 1, !dbg !2148, !tbaa !672
  %32 = zext i32 %31 to i64, !dbg !2147
  br label %37, !dbg !2149

; <label>:33:                                     ; preds = %12
  %34 = getelementptr inbounds i8, i8* %10, i64 -17, !dbg !2150
  %35 = bitcast i8* %34 to i64*, !dbg !2151
  %36 = load i64, i64* %35, align 1, !dbg !2151, !tbaa !676
  br label %37, !dbg !2152

; <label>:37:                                     ; preds = %12, %16, %19, %23, %28, %33
  %38 = phi i64 [ %36, %33 ], [ %32, %28 ], [ %27, %23 ], [ %22, %19 ], [ %18, %16 ], [ 0, %12 ], !dbg !2153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2154
  %39 = tail call i64 @write(i32 %1, i8* nonnull %10, i64 %38) #8, !dbg !2155
  %40 = icmp eq i64 %39, -1, !dbg !2157
  br i1 %40, label %41, label %45, !dbg !2159

; <label>:41:                                     ; preds = %37
  %42 = tail call i32* @__errno() #8, !dbg !2160
  %43 = load i32, i32* %42, align 4, !dbg !2160, !tbaa !672
  %44 = tail call i8* @strerror(i32 %43) #8, !dbg !2162
  tail call void (i32, i8*, ...) @serverLog(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.60, i64 0, i64 0), i8* %44) #8, !dbg !2163
  tail call void @freeClient(%struct.client* %6) #8, !dbg !2164
  br label %125, !dbg !2165

; <label>:45:                                     ; preds = %37
  %46 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !2166, !tbaa !2167
  %47 = add nsw i64 %46, %39, !dbg !2166
  store i64 %47, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !2166, !tbaa !2167
  %48 = load i8*, i8** %9, align 8, !dbg !2168, !tbaa !2130
  tail call void @sdsrange(i8* %48, i64 %39, i64 -1) #8, !dbg !2169
  %49 = load i8*, i8** %9, align 8, !dbg !2170, !tbaa !2130
  %50 = getelementptr inbounds i8, i8* %49, i64 -1, !dbg !2174
  %51 = load i8, i8* %50, align 1, !dbg !2174, !tbaa !470
  %52 = trunc i8 %51 to i3, !dbg !2176
  switch i3 %52, label %53 [
    i3 0, label %54
    i3 1, label %57
    i3 2, label %61
    i3 3, label %66
    i3 -4, label %71
  ], !dbg !2176

; <label>:53:                                     ; preds = %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2177
  br label %78, !dbg !2178

; <label>:54:                                     ; preds = %45
  %55 = lshr i8 %51, 3, !dbg !2179
  %56 = zext i8 %55 to i64, !dbg !2179
  br label %75, !dbg !2180

; <label>:57:                                     ; preds = %45
  %58 = getelementptr inbounds i8, i8* %49, i64 -3, !dbg !2181
  %59 = load i8, i8* %58, align 1, !dbg !2182, !tbaa !470
  %60 = zext i8 %59 to i64, !dbg !2181
  br label %75, !dbg !2183

; <label>:61:                                     ; preds = %45
  %62 = getelementptr inbounds i8, i8* %49, i64 -5, !dbg !2184
  %63 = bitcast i8* %62 to i16*, !dbg !2185
  %64 = load i16, i16* %63, align 1, !dbg !2185, !tbaa !667
  %65 = zext i16 %64 to i64, !dbg !2184
  br label %75, !dbg !2186

; <label>:66:                                     ; preds = %45
  %67 = getelementptr inbounds i8, i8* %49, i64 -9, !dbg !2187
  %68 = bitcast i8* %67 to i32*, !dbg !2188
  %69 = load i32, i32* %68, align 1, !dbg !2188, !tbaa !672
  %70 = zext i32 %69 to i64, !dbg !2187
  br label %75, !dbg !2189

; <label>:71:                                     ; preds = %45
  %72 = getelementptr inbounds i8, i8* %49, i64 -17, !dbg !2190
  %73 = bitcast i8* %72 to i64*, !dbg !2191
  %74 = load i64, i64* %73, align 1, !dbg !2191, !tbaa !676
  br label %75, !dbg !2192

; <label>:75:                                     ; preds = %54, %57, %61, %66, %71
  %76 = phi i64 [ %74, %71 ], [ %70, %66 ], [ %65, %61 ], [ %60, %57 ], [ %56, %54 ], !dbg !2193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2177
  %77 = icmp eq i64 %76, 0, !dbg !2194
  br i1 %77, label %78, label %125, !dbg !2178

; <label>:78:                                     ; preds = %53, %75
  tail call void @sdsfree(i8* %49) #8, !dbg !2195
  store i8* null, i8** %9, align 8, !dbg !2197, !tbaa !2130
  br label %79, !dbg !2198

; <label>:79:                                     ; preds = %4, %78
  %80 = getelementptr inbounds i8, i8* %2, i64 176, !dbg !2199
  %81 = bitcast i8* %80 to i32*, !dbg !2199
  %82 = load i32, i32* %81, align 8, !dbg !2199, !tbaa !1698
  %83 = getelementptr inbounds i8, i8* %2, i64 184, !dbg !2200
  %84 = bitcast i8* %83 to i64*, !dbg !2200
  %85 = load i64, i64* %84, align 8, !dbg !2200, !tbaa !2201
  %86 = tail call i64 @lseek(i32 %82, i64 %85, i32 0) #8, !dbg !2202
  %87 = load i32, i32* %81, align 8, !dbg !2203, !tbaa !1698
  %88 = call i64 @read(i32 %87, i8* nonnull %7, i64 16384) #8, !dbg !2204
  %89 = icmp slt i64 %88, 1, !dbg !2206
  br i1 %89, label %90, label %98, !dbg !2208

; <label>:90:                                     ; preds = %79
  %91 = icmp eq i64 %88, 0, !dbg !2209
  br i1 %91, label %96, label %92, !dbg !2211

; <label>:92:                                     ; preds = %90
  %93 = call i32* @__errno() #8, !dbg !2212
  %94 = load i32, i32* %93, align 4, !dbg !2212, !tbaa !672
  %95 = call i8* @strerror(i32 %94) #8, !dbg !2213
  br label %96, !dbg !2211

; <label>:96:                                     ; preds = %90, %92
  %97 = phi i8* [ %95, %92 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i64 0, i64 0), %90 ], !dbg !2211
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.61, i64 0, i64 0), i8* %97) #8, !dbg !2214
  call void @freeClient(%struct.client* nonnull %6) #8, !dbg !2215
  br label %125, !dbg !2216

; <label>:98:                                     ; preds = %79
  %99 = call i64 @write(i32 %1, i8* nonnull %7, i64 %88) #8, !dbg !2217
  %100 = icmp eq i64 %99, -1, !dbg !2219
  br i1 %100, label %101, label %109, !dbg !2220

; <label>:101:                                    ; preds = %98
  %102 = call i32* @__errno() #8, !dbg !2221
  %103 = load i32, i32* %102, align 4, !dbg !2221, !tbaa !672
  %104 = icmp eq i32 %103, 11, !dbg !2224
  br i1 %104, label %125, label %105, !dbg !2225

; <label>:105:                                    ; preds = %101
  %106 = call i32* @__errno() #8, !dbg !2226
  %107 = load i32, i32* %106, align 4, !dbg !2226, !tbaa !672
  %108 = call i8* @strerror(i32 %107) #8, !dbg !2228
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.63, i64 0, i64 0), i8* %108) #8, !dbg !2229
  call void @freeClient(%struct.client* nonnull %6) #8, !dbg !2230
  br label %125, !dbg !2231

; <label>:109:                                    ; preds = %98
  %110 = load i64, i64* %84, align 8, !dbg !2232, !tbaa !2201
  %111 = add nsw i64 %110, %99, !dbg !2232
  store i64 %111, i64* %84, align 8, !dbg !2232, !tbaa !2201
  %112 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !2233, !tbaa !2167
  %113 = add nsw i64 %112, %99, !dbg !2233
  store i64 %113, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 96), align 8, !dbg !2233, !tbaa !2167
  %114 = getelementptr inbounds i8, i8* %2, i64 192, !dbg !2234
  %115 = bitcast i8* %114 to i64*, !dbg !2234
  %116 = load i64, i64* %115, align 8, !dbg !2234, !tbaa !2236
  %117 = icmp eq i64 %111, %116, !dbg !2237
  br i1 %117, label %118, label %125, !dbg !2238

; <label>:118:                                    ; preds = %109
  %119 = load i32, i32* %81, align 8, !dbg !2239, !tbaa !1698
  %120 = call i32 @close(i32 %119) #8, !dbg !2241
  store i32 -1, i32* %81, align 8, !dbg !2242, !tbaa !1698
  %121 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2243, !tbaa !2049
  %122 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !2244
  %123 = bitcast i8* %122 to i32*, !dbg !2244
  %124 = load i32, i32* %123, align 8, !dbg !2244, !tbaa !479
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %121, i32 %124, i32 2) #8, !dbg !2245
  call void @putSlaveOnline(%struct.client* nonnull %6) #10, !dbg !2246
  br label %125, !dbg !2247

; <label>:125:                                    ; preds = %109, %118, %105, %101, %75, %96, %41
  call void @llvm.lifetime.end.p0i8(i64 16384, i8* nonnull %7) #7, !dbg !2248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2248
  ret void, !dbg !2248
}

; Function Attrs: noredzone
declare dso_local void @sdsrange(i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @lseek(i32, i64, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @read(i32, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @close(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @aeDeleteFileEvent(%struct.aeEventLoop*, i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @updateSlavesWaitingBgsave(i32, i32) local_unnamed_addr #0 !dbg !2249 {
  %3 = alloca %struct.listIter, align 8
  %4 = alloca %struct.stat, align 8
  %5 = bitcast %struct.listIter* %3 to i8*, !dbg !2306
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #7, !dbg !2306
  %6 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !2307, !tbaa !558
  call void @listRewind(%struct.list* %6, %struct.listIter* nonnull %3) #8, !dbg !2309
  %7 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !2310
  %8 = icmp eq %struct.listNode* %7, null, !dbg !2312
  br i1 %8, label %82, label %9, !dbg !2312

; <label>:9:                                      ; preds = %2
  %10 = bitcast %struct.stat* %4 to i8*
  %11 = icmp eq i32 %1, 2
  %12 = icmp eq i32 %0, 0
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 7
  br label %14, !dbg !2312

; <label>:14:                                     ; preds = %9, %73
  %15 = phi %struct.listNode* [ %7, %9 ], [ %76, %73 ]
  %16 = phi i32 [ 0, %9 ], [ %75, %73 ]
  %17 = phi i32 [ -1, %9 ], [ %74, %73 ]
  %18 = getelementptr inbounds %struct.listNode, %struct.listNode* %15, i64 0, i32 2, !dbg !2313
  %19 = load i8*, i8** %18, align 8, !dbg !2313, !tbaa !797
  %20 = bitcast i8* %19 to %struct.client*, !dbg !2314
  %21 = getelementptr inbounds i8, i8* %19, i64 168, !dbg !2316
  %22 = bitcast i8* %21 to i32*, !dbg !2316
  %23 = load i32, i32* %22, align 8, !dbg !2316, !tbaa !802
  switch i32 %23, label %73 [
    i32 6, label %24
    i32 7, label %29
  ], !dbg !2317

; <label>:24:                                     ; preds = %14
  %25 = getelementptr inbounds i8, i8* %19, i64 344, !dbg !2318
  %26 = bitcast i8* %25 to i32*, !dbg !2318
  %27 = load i32, i32* %26, align 8, !dbg !2318, !tbaa !1379
  %28 = and i32 %27, %17, !dbg !2320
  br label %73, !dbg !2321

; <label>:29:                                     ; preds = %14
  call void @llvm.lifetime.start.p0i8(i64 88, i8* nonnull %10) #7, !dbg !2322
  br i1 %11, label %30, label %37, !dbg !2323

; <label>:30:                                     ; preds = %29
  %31 = call i8* @replicationGetSlaveName(%struct.client* %20) #10, !dbg !2324
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.64, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0)) #8, !dbg !2327
  store i32 9, i32* %22, align 8, !dbg !2328, !tbaa !802
  %32 = getelementptr inbounds i8, i8* %19, i64 172, !dbg !2329
  %33 = bitcast i8* %32 to i32*, !dbg !2329
  store i32 1, i32* %33, align 4, !dbg !2330, !tbaa !1373
  %34 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2331, !tbaa !1367
  %35 = getelementptr inbounds i8, i8* %19, i64 232, !dbg !2332
  %36 = bitcast i8* %35 to i64*, !dbg !2332
  store i64 %34, i64* %36, align 8, !dbg !2333, !tbaa !1370
  br label %72, !dbg !2334

; <label>:37:                                     ; preds = %29
  br i1 %12, label %39, label %38, !dbg !2335

; <label>:38:                                     ; preds = %37
  call void @freeClient(%struct.client* %20) #8, !dbg !2337
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.65, i64 0, i64 0)) #8, !dbg !2340
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %10) #7, !dbg !2341
  br label %73

; <label>:39:                                     ; preds = %37
  %40 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !2342, !tbaa !1530
  %41 = call i32 (i8*, i32, ...) @open(i8* %40, i32 0) #8, !dbg !2344
  %42 = getelementptr inbounds i8, i8* %19, i64 176, !dbg !2345
  %43 = bitcast i8* %42 to i32*, !dbg !2345
  store i32 %41, i32* %43, align 8, !dbg !2346, !tbaa !1698
  %44 = icmp eq i32 %41, -1, !dbg !2347
  br i1 %44, label %48, label %45, !dbg !2348

; <label>:45:                                     ; preds = %39
  %46 = call i32 @fstat(i32 %41, %struct.stat* nonnull %4) #8, !dbg !2350
  %47 = icmp eq i32 %46, -1, !dbg !2351
  br i1 %47, label %48, label %52, !dbg !2352

; <label>:48:                                     ; preds = %45, %39
  call void @freeClient(%struct.client* nonnull %20) #8, !dbg !2353
  %49 = call i32* @__errno() #8, !dbg !2355
  %50 = load i32, i32* %49, align 4, !dbg !2355, !tbaa !672
  %51 = call i8* @strerror(i32 %50) #8, !dbg !2356
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.66, i64 0, i64 0), i8* %51) #8, !dbg !2357
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %10) #7, !dbg !2341
  br label %73

; <label>:52:                                     ; preds = %45
  %53 = getelementptr inbounds i8, i8* %19, i64 184, !dbg !2358
  %54 = bitcast i8* %53 to i64*, !dbg !2358
  store i64 0, i64* %54, align 8, !dbg !2359, !tbaa !2201
  %55 = load i64, i64* %13, align 8, !dbg !2360, !tbaa !2361
  %56 = getelementptr inbounds i8, i8* %19, i64 192, !dbg !2364
  %57 = bitcast i8* %56 to i64*, !dbg !2364
  store i64 %55, i64* %57, align 8, !dbg !2365, !tbaa !2236
  store i32 8, i32* %22, align 8, !dbg !2366, !tbaa !802
  %58 = call i8* @sdsempty() #8, !dbg !2367
  %59 = load i64, i64* %57, align 8, !dbg !2368, !tbaa !2236
  %60 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i64 %59) #8, !dbg !2369
  %61 = getelementptr inbounds i8, i8* %19, i64 200, !dbg !2370
  %62 = bitcast i8* %61 to i8**, !dbg !2370
  store i8* %60, i8** %62, align 8, !dbg !2371, !tbaa !2130
  %63 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2372, !tbaa !2049
  %64 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !2373
  %65 = bitcast i8* %64 to i32*, !dbg !2373
  %66 = load i32, i32* %65, align 8, !dbg !2373, !tbaa !479
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %63, i32 %66, i32 2) #8, !dbg !2374
  %67 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2375, !tbaa !2049
  %68 = load i32, i32* %65, align 8, !dbg !2377, !tbaa !479
  %69 = call i32 @aeCreateFileEvent(%struct.aeEventLoop* %67, i32 %68, i32 2, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @sendBulkToSlave, i8* nonnull %19) #8, !dbg !2378
  %70 = icmp eq i32 %69, -1, !dbg !2379
  br i1 %70, label %71, label %72, !dbg !2380

; <label>:71:                                     ; preds = %52
  call void @freeClient(%struct.client* nonnull %20) #8, !dbg !2381
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %10) #7, !dbg !2341
  br label %73

; <label>:72:                                     ; preds = %30, %52
  call void @llvm.lifetime.end.p0i8(i64 88, i8* nonnull %10) #7, !dbg !2341
  br label %73

; <label>:73:                                     ; preds = %24, %14, %72, %71, %48, %38
  %74 = phi i32 [ %17, %38 ], [ %17, %48 ], [ %17, %71 ], [ %17, %72 ], [ %28, %24 ], [ %17, %14 ], !dbg !2383
  %75 = phi i32 [ %16, %38 ], [ %16, %48 ], [ %16, %71 ], [ %16, %72 ], [ 1, %24 ], [ %16, %14 ], !dbg !2383
  %76 = call %struct.listNode* @listNext(%struct.listIter* nonnull %3) #8, !dbg !2310
  %77 = icmp eq %struct.listNode* %76, null, !dbg !2312
  br i1 %77, label %78, label %14, !dbg !2312

; <label>:78:                                     ; preds = %73
  %79 = icmp eq i32 %75, 0, !dbg !2384
  br i1 %79, label %82, label %80, !dbg !2386

; <label>:80:                                     ; preds = %78
  %81 = call i32 @startBgsaveForReplication(i32 %74) #10, !dbg !2387
  br label %82, !dbg !2387

; <label>:82:                                     ; preds = %2, %78, %80
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #7, !dbg !2388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2388
  ret void, !dbg !2388
}

; Function Attrs: noredzone
declare dso_local i32 @open(i8*, i32, ...) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @fstat(i32, %struct.stat*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @getRandomHexChars(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @shiftReplicationId() local_unnamed_addr #0 !dbg !2389 {
  %1 = tail call i8* @memcpy(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 41) #8, !dbg !2390
  %2 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !2391, !tbaa !524
  %3 = add nsw i64 %2, 1, !dbg !2392
  store i64 %3, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !2393, !tbaa !1316
  tail call void @getRandomHexChars(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 40) #8, !dbg !2394
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 40), align 4, !dbg !2396, !tbaa !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2397
  %4 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !2398, !tbaa !1316
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i64 %4, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0)) #8, !dbg !2399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2400
  ret void, !dbg !2400
}

; Function Attrs: norecurse noredzone nounwind
define dso_local i32 @slaveIsInHandshakeState() local_unnamed_addr #5 !dbg !2401 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2404, !tbaa !2405
  %2 = add i32 %1, -3, !dbg !2406
  %3 = icmp ult i32 %2, 11, !dbg !2406
  %4 = zext i1 %3 to i32, !dbg !2406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2407
  ret i32 %4, !dbg !2407
}

; Function Attrs: noredzone nounwind
define dso_local void @replicationSendNewlineToMaster() local_unnamed_addr #0 !dbg !305 {
  %1 = tail call i64 @time(i64* null) #8, !dbg !2408
  %2 = load i64, i64* @replicationSendNewlineToMaster.newline_sent, align 8, !dbg !2410, !tbaa !676
  %3 = icmp eq i64 %1, %2, !dbg !2411
  br i1 %3, label %8, label %4, !dbg !2412

; <label>:4:                                      ; preds = %0
  %5 = tail call i64 @time(i64* null) #8, !dbg !2413
  store i64 %5, i64* @replicationSendNewlineToMaster.newline_sent, align 8, !dbg !2415, !tbaa !676
  %6 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2416, !tbaa !2418
  %7 = tail call i64 @write(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1) #8, !dbg !2419
  br label %8, !dbg !2420

; <label>:8:                                      ; preds = %0, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2421
  ret void, !dbg !2421
}

; Function Attrs: noredzone
declare dso_local i64 @time(i64*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationEmptyDbCallback(i8* nocapture readnone) #0 !dbg !2422 {
  %2 = tail call i64 @time(i64* null) #8, !dbg !2426
  %3 = load i64, i64* @replicationSendNewlineToMaster.newline_sent, align 8, !dbg !2428, !tbaa !676
  %4 = icmp eq i64 %2, %3, !dbg !2429
  br i1 %4, label %9, label %5, !dbg !2430

; <label>:5:                                      ; preds = %1
  %6 = tail call i64 @time(i64* null) #8, !dbg !2431
  store i64 %6, i64* @replicationSendNewlineToMaster.newline_sent, align 8, !dbg !2432, !tbaa !676
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2433, !tbaa !2418
  %8 = tail call i64 @write(i32 %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1) #8, !dbg !2434
  br label %9, !dbg !2435

; <label>:9:                                      ; preds = %1, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2437
  ret void, !dbg !2437
}

; Function Attrs: noredzone nounwind
define dso_local void @replicationCreateMasterClient(i32, i32) local_unnamed_addr #0 !dbg !2438 {
  %3 = tail call %struct.client* @createClient(i32 %0) #8, !dbg !2444
  store %struct.client* %3, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2445, !tbaa !2096
  %4 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 21, !dbg !2446
  %5 = load i32, i32* %4, align 8, !dbg !2447, !tbaa !1089
  %6 = or i32 %5, 2, !dbg !2447
  store i32 %6, i32* %4, align 8, !dbg !2447, !tbaa !1089
  %7 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 22, !dbg !2448
  store i32 1, i32* %7, align 4, !dbg !2449, !tbaa !2450
  %8 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 219), align 8, !dbg !2451, !tbaa !2452
  %9 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 30, !dbg !2453
  store i64 %8, i64* %9, align 8, !dbg !2454, !tbaa !2020
  %10 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 29, !dbg !2455
  store i64 %8, i64* %10, align 8, !dbg !2456, !tbaa !2457
  %11 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 34, i64 0, !dbg !2458
  %12 = tail call i8* @memcpy(i8* nonnull %11, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 0), i64 41) #8, !dbg !2459
  %13 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2460, !tbaa !2096
  %14 = getelementptr inbounds %struct.client, %struct.client* %13, i64 0, i32 30, !dbg !2462
  %15 = load i64, i64* %14, align 8, !dbg !2462, !tbaa !2020
  %16 = icmp eq i64 %15, -1, !dbg !2463
  br i1 %16, label %17, label %21, !dbg !2464

; <label>:17:                                     ; preds = %2
  %18 = getelementptr inbounds %struct.client, %struct.client* %13, i64 0, i32 21, !dbg !2465
  %19 = load i32, i32* %18, align 8, !dbg !2466, !tbaa !1089
  %20 = or i32 %19, 65536, !dbg !2466
  store i32 %20, i32* %18, align 8, !dbg !2466, !tbaa !1089
  br label %21, !dbg !2467

; <label>:21:                                     ; preds = %17, %2
  %22 = icmp eq i32 %1, -1, !dbg !2468
  br i1 %22, label %25, label %23, !dbg !2470

; <label>:23:                                     ; preds = %21
  %24 = tail call i32 @selectDb(%struct.client* %13, i32 %1) #8, !dbg !2471
  br label %25, !dbg !2471

; <label>:25:                                     ; preds = %21, %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2472
  ret void, !dbg !2472
}

; Function Attrs: noredzone
declare dso_local %struct.client* @createClient(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @selectDb(%struct.client*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @restartAOFAfterSYNC() local_unnamed_addr #0 !dbg !2473 {
  %1 = tail call i32 @startAppendOnly() #8, !dbg !2479
  %2 = icmp eq i32 %1, 0, !dbg !2484
  br i1 %2, label %9, label %3, !dbg !2485

; <label>:3:                                      ; preds = %0
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2486
  %4 = tail call i32 @sleep(i32 1) #8, !dbg !2487
  %5 = tail call i32 @startAppendOnly() #8, !dbg !2479
  %6 = icmp eq i32 %5, 0, !dbg !2484
  br i1 %6, label %9, label %10, !dbg !2485

; <label>:7:                                      ; preds = %38
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2486
  %8 = tail call i32 @sleep(i32 1) #8, !dbg !2487
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.71, i64 0, i64 0)) #8, !dbg !2488
  tail call void @exit(i32 1) #9, !dbg !2491
  unreachable, !dbg !2491

; <label>:9:                                      ; preds = %0, %3, %10, %14, %18, %22, %26, %30, %34, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2492
  ret void, !dbg !2492

; <label>:10:                                     ; preds = %3
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2486
  %11 = tail call i32 @sleep(i32 1) #8, !dbg !2487
  %12 = tail call i32 @startAppendOnly() #8, !dbg !2479
  %13 = icmp eq i32 %12, 0, !dbg !2484
  br i1 %13, label %9, label %14, !dbg !2485

; <label>:14:                                     ; preds = %10
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2486
  %15 = tail call i32 @sleep(i32 1) #8, !dbg !2487
  %16 = tail call i32 @startAppendOnly() #8, !dbg !2479
  %17 = icmp eq i32 %16, 0, !dbg !2484
  br i1 %17, label %9, label %18, !dbg !2485

; <label>:18:                                     ; preds = %14
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2486
  %19 = tail call i32 @sleep(i32 1) #8, !dbg !2487
  %20 = tail call i32 @startAppendOnly() #8, !dbg !2479
  %21 = icmp eq i32 %20, 0, !dbg !2484
  br i1 %21, label %9, label %22, !dbg !2485

; <label>:22:                                     ; preds = %18
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2486
  %23 = tail call i32 @sleep(i32 1) #8, !dbg !2487
  %24 = tail call i32 @startAppendOnly() #8, !dbg !2479
  %25 = icmp eq i32 %24, 0, !dbg !2484
  br i1 %25, label %9, label %26, !dbg !2485

; <label>:26:                                     ; preds = %22
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2486
  %27 = tail call i32 @sleep(i32 1) #8, !dbg !2487
  %28 = tail call i32 @startAppendOnly() #8, !dbg !2479
  %29 = icmp eq i32 %28, 0, !dbg !2484
  br i1 %29, label %9, label %30, !dbg !2485

; <label>:30:                                     ; preds = %26
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2486
  %31 = tail call i32 @sleep(i32 1) #8, !dbg !2487
  %32 = tail call i32 @startAppendOnly() #8, !dbg !2479
  %33 = icmp eq i32 %32, 0, !dbg !2484
  br i1 %33, label %9, label %34, !dbg !2485

; <label>:34:                                     ; preds = %30
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2486
  %35 = tail call i32 @sleep(i32 1) #8, !dbg !2487
  %36 = tail call i32 @startAppendOnly() #8, !dbg !2479
  %37 = icmp eq i32 %36, 0, !dbg !2484
  br i1 %37, label %9, label %38, !dbg !2485

; <label>:38:                                     ; preds = %34
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.70, i64 0, i64 0)) #8, !dbg !2486
  %39 = tail call i32 @sleep(i32 1) #8, !dbg !2487
  %40 = tail call i32 @startAppendOnly() #8, !dbg !2479
  %41 = icmp eq i32 %40, 0, !dbg !2484
  br i1 %41, label %9, label %7, !dbg !2485
}

; Function Attrs: noredzone
declare dso_local i32 @startAppendOnly() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @sleep(i32) local_unnamed_addr #3

; Function Attrs: noredzone noreturn
declare dso_local void @exit(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local void @readSyncBulkPayload(%struct.aeEventLoop* nocapture readnone, i32, i8* nocapture readnone, i32) #0 !dbg !310 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca %struct.rdbSaveInfo, align 8
  %7 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0, !dbg !2497
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %7) #7, !dbg !2497
  %8 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 203), align 8, !dbg !2499, !tbaa !2501
  %9 = icmp eq i64 %8, -1, !dbg !2502
  br i1 %9, label %10, label %40, !dbg !2503

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 201), align 8, !dbg !2504, !tbaa !2507
  %12 = mul nsw i32 %11, 1000, !dbg !2508
  %13 = sext i32 %12 to i64, !dbg !2509
  %14 = call i64 @syncReadLine(i32 %1, i8* nonnull %7, i64 1024, i64 %13) #8, !dbg !2510
  %15 = icmp eq i64 %14, -1, !dbg !2511
  br i1 %15, label %16, label %20, !dbg !2512

; <label>:16:                                     ; preds = %10
  %17 = call i32* @__errno() #8, !dbg !2513
  %18 = load i32, i32* %17, align 4, !dbg !2513, !tbaa !672
  %19 = call i8* @strerror(i32 %18) #8, !dbg !2515
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.72, i64 0, i64 0), i8* %19) #8, !dbg !2516
  br label %248, !dbg !2517

; <label>:20:                                     ; preds = %10
  %21 = load i8, i8* %7, align 16, !dbg !2518, !tbaa !470
  switch i8 %21, label %26 [
    i8 45, label %22
    i8 0, label %24
    i8 36, label %27
  ], !dbg !2520

; <label>:22:                                     ; preds = %20
  %23 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 1, !dbg !2521
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.73, i64 0, i64 0), i8* nonnull %23) #8, !dbg !2523
  br label %248, !dbg !2524

; <label>:24:                                     ; preds = %20
  %25 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2525, !tbaa !1367
  store i64 %25, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !2528, !tbaa !2529
  br label %260, !dbg !2530

; <label>:26:                                     ; preds = %20
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.74, i64 0, i64 0), i8* nonnull %7) #8, !dbg !2531
  br label %248, !dbg !2534

; <label>:27:                                     ; preds = %20
  %28 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 1, !dbg !2535
  %29 = call i32 @strncmp(i8* nonnull %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i64 4) #8, !dbg !2537
  %30 = icmp eq i32 %29, 0, !dbg !2538
  br i1 %30, label %31, label %38, !dbg !2539

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 5, !dbg !2540
  %33 = call i64 @strlen(i8* nonnull %32) #8, !dbg !2541
  %34 = icmp ugt i64 %33, 39, !dbg !2542
  br i1 %34, label %35, label %38, !dbg !2543

; <label>:35:                                     ; preds = %31
  store i1 true, i1* @readSyncBulkPayload.usemark, align 4
  %36 = call i8* @memcpy(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @readSyncBulkPayload.eofmark, i64 0, i64 0), i8* nonnull %32, i64 40) #8, !dbg !2544
  %37 = call i8* @memset(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @readSyncBulkPayload.lastbytes, i64 0, i64 0), i32 0, i64 40) #8, !dbg !2546
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 203), align 8, !dbg !2547, !tbaa !2501
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.76, i64 0, i64 0)) #8, !dbg !2548
  br label %260, !dbg !2549

; <label>:38:                                     ; preds = %31, %27
  store i1 false, i1* @readSyncBulkPayload.usemark, align 4
  %39 = call i64 @strtol(i8* nonnull %28, i8** null, i32 10) #8, !dbg !2550
  store i64 %39, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 203), align 8, !dbg !2552, !tbaa !2501
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.77, i64 0, i64 0), i64 %39) #8, !dbg !2553
  br label %260

; <label>:40:                                     ; preds = %4
  %41 = load i1, i1* @readSyncBulkPayload.usemark, align 4
  br i1 %41, label %47, label %42, !dbg !2554

; <label>:42:                                     ; preds = %40
  %43 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 204), align 8, !dbg !2555, !tbaa !2558
  %44 = sub nsw i64 %8, %43, !dbg !2559
  %45 = icmp slt i64 %44, 4096, !dbg !2561
  %46 = select i1 %45, i64 %44, i64 4096, !dbg !2562
  br label %47

; <label>:47:                                     ; preds = %40, %42
  %48 = phi i64 [ %46, %42 ], [ 4096, %40 ], !dbg !2564
  %49 = call i64 @read(i32 %1, i8* nonnull %7, i64 %48) #8, !dbg !2565
  %50 = icmp slt i64 %49, 1, !dbg !2567
  br i1 %50, label %51, label %70, !dbg !2569

; <label>:51:                                     ; preds = %47
  %52 = icmp eq i64 %49, -1, !dbg !2570
  br i1 %52, label %53, label %57, !dbg !2572

; <label>:53:                                     ; preds = %51
  %54 = call i32* @__errno() #8, !dbg !2573
  %55 = load i32, i32* %54, align 4, !dbg !2573, !tbaa !672
  %56 = call i8* @strerror(i32 %55) #8, !dbg !2574
  br label %57, !dbg !2572

; <label>:57:                                     ; preds = %51, %53
  %58 = phi i8* [ %56, %53 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.79, i64 0, i64 0), %51 ], !dbg !2572
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.78, i64 0, i64 0), i8* %58) #8, !dbg !2575
  %59 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2576, !tbaa !2405
  switch i32 %59, label %61 [
    i32 14, label %60
    i32 2, label %64
  ], !dbg !2580

; <label>:60:                                     ; preds = %57
  call void @replicationAbortSyncTransfer() #8, !dbg !2581
  br label %68, !dbg !2583

; <label>:61:                                     ; preds = %57
  %62 = add i32 %59, -3, !dbg !2584
  %63 = icmp ugt i32 %62, 10, !dbg !2584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2587
  br i1 %63, label %69, label %64, !dbg !2588

; <label>:64:                                     ; preds = %61, %57
  %65 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2589, !tbaa !2418
  %66 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2596, !tbaa !2049
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %66, i32 %65, i32 3) #8, !dbg !2597
  %67 = call i32 @close(i32 %65) #8, !dbg !2598
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2599, !tbaa !2418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2600
  br label %68

; <label>:68:                                     ; preds = %64, %60
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2601, !tbaa !2405
  br label %69, !dbg !2602

; <label>:69:                                     ; preds = %61, %68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2603
  br label %260, !dbg !2604

; <label>:70:                                     ; preds = %47
  %71 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 95), align 8, !dbg !2605, !tbaa !2606
  %72 = add nsw i64 %71, %49, !dbg !2605
  store i64 %72, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 95), align 8, !dbg !2605, !tbaa !2606
  %73 = load i1, i1* @readSyncBulkPayload.usemark, align 4
  br i1 %73, label %74, label %92, !dbg !2608

; <label>:74:                                     ; preds = %70
  %75 = icmp sgt i64 %49, 39, !dbg !2609
  br i1 %75, label %76, label %80, !dbg !2610

; <label>:76:                                     ; preds = %74
  %77 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 %49, !dbg !2611
  %78 = getelementptr inbounds i8, i8* %77, i64 -40, !dbg !2613
  %79 = call i8* @memcpy(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @readSyncBulkPayload.lastbytes, i64 0, i64 0), i8* nonnull %78, i64 40) #8, !dbg !2614
  br label %88, !dbg !2615

; <label>:80:                                     ; preds = %74
  %81 = getelementptr inbounds [40 x i8], [40 x i8]* @readSyncBulkPayload.lastbytes, i64 0, i64 %49, !dbg !2616
  %82 = shl i64 %49, 32, !dbg !2617
  %83 = sub i64 171798691840, %82, !dbg !2617
  %84 = ashr exact i64 %83, 32, !dbg !2617
  %85 = call i8* @memmove(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @readSyncBulkPayload.lastbytes, i64 0, i64 0), i8* nonnull %81, i64 %84) #8, !dbg !2618
  %86 = getelementptr inbounds [40 x i8], [40 x i8]* @readSyncBulkPayload.lastbytes, i64 0, i64 %84, !dbg !2619
  %87 = call i8* @memcpy(i8* nonnull %86, i8* nonnull %7, i64 %49) #8, !dbg !2620
  br label %88

; <label>:88:                                     ; preds = %80, %76
  %89 = call i32 @memcmp(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @readSyncBulkPayload.lastbytes, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @readSyncBulkPayload.eofmark, i64 0, i64 0), i64 40) #8, !dbg !2621
  %90 = icmp eq i32 %89, 0, !dbg !2623
  %91 = zext i1 %90 to i32, !dbg !2624
  br label %92, !dbg !2624

; <label>:92:                                     ; preds = %88, %70
  %93 = phi i32 [ 0, %70 ], [ %91, %88 ], !dbg !2625
  %94 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2626, !tbaa !1367
  store i64 %94, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !2627, !tbaa !2529
  %95 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 207), align 4, !dbg !2628, !tbaa !2630
  %96 = call i64 @write(i32 %95, i8* nonnull %7, i64 %49) #8, !dbg !2631
  %97 = icmp eq i64 %96, %49, !dbg !2633
  br i1 %97, label %106, label %98, !dbg !2634

; <label>:98:                                     ; preds = %92
  %99 = icmp eq i64 %96, -1, !dbg !2635
  br i1 %99, label %100, label %104, !dbg !2637

; <label>:100:                                    ; preds = %98
  %101 = call i32* @__errno() #8, !dbg !2638
  %102 = load i32, i32* %101, align 4, !dbg !2638, !tbaa !672
  %103 = call i8* @strerror(i32 %102) #8, !dbg !2639
  br label %104, !dbg !2637

; <label>:104:                                    ; preds = %98, %100
  %105 = phi i8* [ %103, %100 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i64 0, i64 0), %98 ], !dbg !2637
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.80, i64 0, i64 0), i8* %105) #8, !dbg !2640
  br label %248, !dbg !2641

; <label>:106:                                    ; preds = %92
  %107 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 204), align 8, !dbg !2642, !tbaa !2558
  %108 = add nsw i64 %107, %49, !dbg !2642
  store i64 %108, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 204), align 8, !dbg !2642, !tbaa !2558
  %109 = load i1, i1* @readSyncBulkPayload.usemark, align 4
  %110 = icmp ne i32 %93, 0, !dbg !2643
  %111 = and i1 %110, %109, !dbg !2645
  br i1 %111, label %112, label %123, !dbg !2645

; <label>:112:                                    ; preds = %106
  %113 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 207), align 4, !dbg !2646, !tbaa !2630
  %114 = add nsw i64 %108, -40, !dbg !2649
  %115 = call i32 @ftruncate(i32 %113, i64 %114) #8, !dbg !2650
  %116 = icmp eq i32 %115, -1, !dbg !2651
  br i1 %116, label %119, label %117, !dbg !2652

; <label>:117:                                    ; preds = %112
  %118 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 204), align 8, !dbg !2653, !tbaa !2558
  br label %123, !dbg !2652

; <label>:119:                                    ; preds = %112
  %120 = call i32* @__errno() #8, !dbg !2654
  %121 = load i32, i32* %120, align 4, !dbg !2654, !tbaa !672
  %122 = call i8* @strerror(i32 %121) #8, !dbg !2656
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.82, i64 0, i64 0), i8* %122) #8, !dbg !2657
  br label %248, !dbg !2658

; <label>:123:                                    ; preds = %117, %106
  %124 = phi i64 [ %118, %117 ], [ %108, %106 ], !dbg !2653
  %125 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 205), align 8, !dbg !2659, !tbaa !2660
  %126 = add nsw i64 %125, 8388608, !dbg !2661
  %127 = icmp slt i64 %124, %126, !dbg !2662
  br i1 %127, label %134, label %128, !dbg !2663

; <label>:128:                                    ; preds = %123
  %129 = sub i64 %124, %125, !dbg !2664
  %130 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 207), align 4, !dbg !2666, !tbaa !2630
  %131 = call i32 @fsync(i32 %130) #8, !dbg !2666
  %132 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 205), align 8, !dbg !2667, !tbaa !2660
  %133 = add nsw i64 %129, %132, !dbg !2667
  store i64 %133, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 205), align 8, !dbg !2667, !tbaa !2660
  br label %134, !dbg !2668

; <label>:134:                                    ; preds = %123, %128
  %135 = load i1, i1* @readSyncBulkPayload.usemark, align 4
  br i1 %135, label %142, label %136, !dbg !2669

; <label>:136:                                    ; preds = %134
  %137 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 204), align 8, !dbg !2670, !tbaa !2558
  %138 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 203), align 8, !dbg !2674, !tbaa !2501
  %139 = icmp ne i64 %137, %138, !dbg !2675
  %140 = icmp eq i32 %93, 0, !dbg !2676
  %141 = and i1 %140, %139
  br i1 %141, label %260, label %144

; <label>:142:                                    ; preds = %134
  %143 = icmp eq i32 %93, 0, !dbg !2676
  br i1 %143, label %260, label %144, !dbg !2677

; <label>:144:                                    ; preds = %136, %142
  %145 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !2678, !tbaa !2679
  %146 = icmp ne i32 %145, 0, !dbg !2680
  %147 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !2681, !tbaa !1733
  %148 = icmp eq i32 %147, -1, !dbg !2683
  br i1 %148, label %154, label %149, !dbg !2684

; <label>:149:                                    ; preds = %144
  %150 = sext i32 %147 to i64, !dbg !2685
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.83, i64 0, i64 0), i64 %150) #8, !dbg !2687
  %151 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !2688, !tbaa !1733
  %152 = call i32 @kill(i32 %151, i32 10) #8, !dbg !2689
  %153 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !2690, !tbaa !1733
  call void @rdbRemoveTempFile(i32 %153) #8, !dbg !2691
  br label %154, !dbg !2692

; <label>:154:                                    ; preds = %144, %149
  %155 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 208), align 8, !dbg !2693, !tbaa !2695
  %156 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !2696, !tbaa !1530
  %157 = call i32 @rename(i8* %155, i8* %156) #8, !dbg !2697
  %158 = icmp eq i32 %157, -1, !dbg !2698
  br i1 %158, label %159, label %174, !dbg !2699

; <label>:159:                                    ; preds = %154
  %160 = call i32* @__errno() #8, !dbg !2700
  %161 = load i32, i32* %160, align 4, !dbg !2700, !tbaa !672
  %162 = call i8* @strerror(i32 %161) #8, !dbg !2702
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.84, i64 0, i64 0), i8* %162) #8, !dbg !2703
  %163 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2704, !tbaa !2405
  switch i32 %163, label %165 [
    i32 14, label %164
    i32 2, label %168
  ], !dbg !2706

; <label>:164:                                    ; preds = %159
  call void @replicationAbortSyncTransfer() #8, !dbg !2707
  br label %172, !dbg !2708

; <label>:165:                                    ; preds = %159
  %166 = add i32 %163, -3, !dbg !2709
  %167 = icmp ugt i32 %166, 10, !dbg !2709
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2711
  br i1 %167, label %173, label %168, !dbg !2712

; <label>:168:                                    ; preds = %165, %159
  %169 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2713, !tbaa !2418
  %170 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2716, !tbaa !2049
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %170, i32 %169, i32 3) #8, !dbg !2717
  %171 = call i32 @close(i32 %169) #8, !dbg !2718
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2719, !tbaa !2418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2720
  br label %172

; <label>:172:                                    ; preds = %168, %164
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2721, !tbaa !2405
  br label %173, !dbg !2722

; <label>:173:                                    ; preds = %165, %172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2723
  br label %260, !dbg !2724

; <label>:174:                                    ; preds = %154
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.85, i64 0, i64 0)) #8, !dbg !2725
  br i1 %146, label %175, label %176, !dbg !2726

; <label>:175:                                    ; preds = %174
  call void @stopAppendOnly() #8, !dbg !2727
  br label %176, !dbg !2727

; <label>:176:                                    ; preds = %175, %174
  call void @signalFlushedDb(i32 -1) #8, !dbg !2729
  %177 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 220), align 8, !dbg !2730, !tbaa !2731
  %178 = icmp ne i32 %177, 0, !dbg !2732
  %179 = zext i1 %178 to i32, !dbg !2732
  %180 = call i64 @emptyDb(i32 -1, i32 %179, void (i8*)* nonnull @replicationEmptyDbCallback) #8, !dbg !2733
  %181 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2734, !tbaa !2049
  %182 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2735, !tbaa !2418
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %181, i32 %182, i32 1) #8, !dbg !2736
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.86, i64 0, i64 0)) #8, !dbg !2737
  %183 = bitcast %struct.rdbSaveInfo* %6 to i8*, !dbg !2738
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %183) #7, !dbg !2738
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %183, i8* align 8 bitcast (%struct.rdbSaveInfo* @readSyncBulkPayload.rsi to i8*), i64 64, i1 false), !dbg !2739
  %184 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 157), align 8, !dbg !2740, !tbaa !1530
  %185 = call i32 @rdbLoad(i8* %184, %struct.rdbSaveInfo* nonnull %6) #8, !dbg !2742
  %186 = icmp eq i32 %185, 0, !dbg !2743
  br i1 %186, label %200, label %187, !dbg !2744

; <label>:187:                                    ; preds = %176
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.87, i64 0, i64 0)) #8, !dbg !2745
  %188 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2747, !tbaa !2405
  switch i32 %188, label %190 [
    i32 14, label %189
    i32 2, label %193
  ], !dbg !2749

; <label>:189:                                    ; preds = %187
  call void @replicationAbortSyncTransfer() #8, !dbg !2750
  br label %197, !dbg !2751

; <label>:190:                                    ; preds = %187
  %191 = add i32 %188, -3, !dbg !2752
  %192 = icmp ugt i32 %191, 10, !dbg !2752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2754
  br i1 %192, label %198, label %193, !dbg !2755

; <label>:193:                                    ; preds = %190, %187
  %194 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2756, !tbaa !2418
  %195 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2759, !tbaa !2049
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %195, i32 %194, i32 3) #8, !dbg !2760
  %196 = call i32 @close(i32 %194) #8, !dbg !2761
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2762, !tbaa !2418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2763
  br label %197

; <label>:197:                                    ; preds = %193, %189
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2764, !tbaa !2405
  br label %198, !dbg !2765

; <label>:198:                                    ; preds = %190, %197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2766
  br i1 %146, label %199, label %247, !dbg !2767

; <label>:199:                                    ; preds = %198
  call void @restartAOFAfterSYNC() #10, !dbg !2768
  br label %247, !dbg !2768

; <label>:200:                                    ; preds = %176
  %201 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 208), align 8, !dbg !2770, !tbaa !2695
  call void @zfree(i8* %201) #8, !dbg !2771
  %202 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 207), align 4, !dbg !2772, !tbaa !2630
  %203 = call i32 @close(i32 %202) #8, !dbg !2773
  %204 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2774, !tbaa !2418
  %205 = getelementptr inbounds %struct.rdbSaveInfo, %struct.rdbSaveInfo* %6, i64 0, i32 0, !dbg !2775
  %206 = load i32, i32* %205, align 8, !dbg !2775, !tbaa !2776
  %207 = call %struct.client* @createClient(i32 %204) #8, !dbg !2781
  store %struct.client* %207, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2782, !tbaa !2096
  %208 = getelementptr inbounds %struct.client, %struct.client* %207, i64 0, i32 21, !dbg !2783
  %209 = load i32, i32* %208, align 8, !dbg !2784, !tbaa !1089
  %210 = or i32 %209, 2, !dbg !2784
  store i32 %210, i32* %208, align 8, !dbg !2784, !tbaa !1089
  %211 = getelementptr inbounds %struct.client, %struct.client* %207, i64 0, i32 22, !dbg !2785
  store i32 1, i32* %211, align 4, !dbg !2786, !tbaa !2450
  %212 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 219), align 8, !dbg !2787, !tbaa !2452
  %213 = getelementptr inbounds %struct.client, %struct.client* %207, i64 0, i32 30, !dbg !2788
  store i64 %212, i64* %213, align 8, !dbg !2789, !tbaa !2020
  %214 = getelementptr inbounds %struct.client, %struct.client* %207, i64 0, i32 29, !dbg !2790
  store i64 %212, i64* %214, align 8, !dbg !2791, !tbaa !2457
  %215 = getelementptr inbounds %struct.client, %struct.client* %207, i64 0, i32 34, i64 0, !dbg !2792
  %216 = call i8* @memcpy(i8* nonnull %215, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 0), i64 41) #8, !dbg !2793
  %217 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2794, !tbaa !2096
  %218 = getelementptr inbounds %struct.client, %struct.client* %217, i64 0, i32 30, !dbg !2795
  %219 = load i64, i64* %218, align 8, !dbg !2795, !tbaa !2020
  %220 = icmp eq i64 %219, -1, !dbg !2796
  br i1 %220, label %221, label %225, !dbg !2797

; <label>:221:                                    ; preds = %200
  %222 = getelementptr inbounds %struct.client, %struct.client* %217, i64 0, i32 21, !dbg !2798
  %223 = load i32, i32* %222, align 8, !dbg !2799, !tbaa !1089
  %224 = or i32 %223, 65536, !dbg !2799
  store i32 %224, i32* %222, align 8, !dbg !2799, !tbaa !1089
  br label %225, !dbg !2800

; <label>:225:                                    ; preds = %221, %200
  %226 = icmp eq i32 %206, -1, !dbg !2801
  br i1 %226, label %230, label %227, !dbg !2802

; <label>:227:                                    ; preds = %225
  %228 = call i32 @selectDb(%struct.client* %217, i32 %206) #8, !dbg !2803
  %229 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2804, !tbaa !2096
  br label %230, !dbg !2803

; <label>:230:                                    ; preds = %225, %227
  %231 = phi %struct.client* [ %217, %225 ], [ %229, %227 ], !dbg !2804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2805
  store i32 15, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2806, !tbaa !2405
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 213), align 8, !dbg !2807, !tbaa !2808
  %232 = getelementptr inbounds %struct.client, %struct.client* %231, i64 0, i32 34, i64 0, !dbg !2809
  %233 = call i8* @memcpy(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i8* nonnull %232, i64 41) #8, !dbg !2810
  %234 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !2811, !tbaa !2096
  %235 = getelementptr inbounds %struct.client, %struct.client* %234, i64 0, i32 30, !dbg !2812
  %236 = load i64, i64* %235, align 8, !dbg !2812, !tbaa !2020
  store i64 %236, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !2813, !tbaa !524
  %237 = call i8* @memset(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i32 48, i64 41) #8, !dbg !2814
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 40), align 1, !dbg !2816, !tbaa !470
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !2817, !tbaa !1316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2818
  %238 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !2819, !tbaa !511
  %239 = icmp eq i8* %238, null, !dbg !2821
  br i1 %239, label %240, label %245, !dbg !2822

; <label>:240:                                    ; preds = %230
  %241 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !2823, !tbaa !518
  %242 = call i8* @zmalloc(i64 %241) #8, !dbg !2825
  store i8* %242, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !2826, !tbaa !511
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185) to <2 x i64>*), align 8, !dbg !2827, !tbaa !522
  %243 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !2828, !tbaa !524
  %244 = add nsw i64 %243, 1, !dbg !2829
  store i64 %244, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !2830, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2831
  br label %245, !dbg !2832

; <label>:245:                                    ; preds = %240, %230
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.88, i64 0, i64 0)) #8, !dbg !2833
  br i1 %146, label %246, label %247, !dbg !2834

; <label>:246:                                    ; preds = %245
  call void @restartAOFAfterSYNC() #10, !dbg !2835
  br label %247, !dbg !2835

; <label>:247:                                    ; preds = %245, %246, %198, %199
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %183) #7, !dbg !2837
  br label %260

; <label>:248:                                    ; preds = %119, %104, %26, %22, %16
  %249 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2838, !tbaa !2405
  switch i32 %249, label %251 [
    i32 14, label %250
    i32 2, label %254
  ], !dbg !2840

; <label>:250:                                    ; preds = %248
  call void @replicationAbortSyncTransfer() #8, !dbg !2841
  br label %258, !dbg !2842

; <label>:251:                                    ; preds = %248
  %252 = add i32 %249, -3, !dbg !2843
  %253 = icmp ugt i32 %252, 10, !dbg !2843
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2845
  br i1 %253, label %259, label %254, !dbg !2846

; <label>:254:                                    ; preds = %251, %248
  %255 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2847, !tbaa !2418
  %256 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2850, !tbaa !2049
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %256, i32 %255, i32 3) #8, !dbg !2851
  %257 = call i32 @close(i32 %255) #8, !dbg !2852
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2853, !tbaa !2418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2854
  br label %258

; <label>:258:                                    ; preds = %254, %250
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2855, !tbaa !2405
  br label %259, !dbg !2856

; <label>:259:                                    ; preds = %251, %258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2857
  br label %260, !dbg !2858

; <label>:260:                                    ; preds = %136, %173, %247, %142, %35, %38, %259, %69, %24
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %7) #7, !dbg !2859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2859
  ret void, !dbg !2859
}

; Function Attrs: noredzone
declare dso_local i64 @syncReadLine(i32, i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @cancelReplicationHandshake() local_unnamed_addr #0 !dbg !2578 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2860, !tbaa !2405
  switch i32 %1, label %3 [
    i32 14, label %2
    i32 2, label %6
  ], !dbg !2861

; <label>:2:                                      ; preds = %0
  tail call void @replicationAbortSyncTransfer() #10, !dbg !2862
  br label %10, !dbg !2863

; <label>:3:                                      ; preds = %0
  %4 = add i32 %1, -3, !dbg !2864
  %5 = icmp ugt i32 %4, 10, !dbg !2864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2866
  br i1 %5, label %11, label %6, !dbg !2867

; <label>:6:                                      ; preds = %0, %3
  %7 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2868, !tbaa !2418
  %8 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !2871, !tbaa !2049
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %8, i32 %7, i32 3) #8, !dbg !2872
  %9 = tail call i32 @close(i32 %7) #8, !dbg !2873
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !2874, !tbaa !2418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2875
  br label %10

; <label>:10:                                     ; preds = %6, %2
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !2876, !tbaa !2405
  br label %11, !dbg !2877

; <label>:11:                                     ; preds = %3, %10
  %12 = phi i32 [ 1, %10 ], [ 0, %3 ], !dbg !2878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2880
  ret i32 %12, !dbg !2880
}

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @ftruncate(i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @fsync(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @kill(i32, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @rdbRemoveTempFile(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @rename(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @stopAppendOnly() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @signalFlushedDb(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @emptyDb(i32, i32, void (i8*)*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: noredzone
declare dso_local i32 @rdbLoad(i8*, %struct.rdbSaveInfo*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @sendSynchronousCommand(i32, i32, ...) local_unnamed_addr #0 !dbg !2881 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [256 x i8], align 16
  %5 = and i32 %0, 2, !dbg !2914
  %6 = icmp eq i32 %5, 0, !dbg !2914
  br i1 %6, label %77, label %7, !dbg !2915

; <label>:7:                                      ; preds = %2
  %8 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !2916
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #7, !dbg !2916
  %9 = tail call i8* @sdsempty() #8, !dbg !2918
  %10 = tail call i8* @sdsempty() #8, !dbg !2920
  call void @llvm.va_start(i8* nonnull %8), !dbg !2923
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  br label %14, !dbg !2924

; <label>:14:                                     ; preds = %32, %7
  %15 = phi i8* [ %10, %7 ], [ %34, %32 ], !dbg !2925
  %16 = phi i64 [ 0, %7 ], [ %35, %32 ], !dbg !2925
  %17 = load i32, i32* %11, align 16, !dbg !2927
  %18 = icmp ult i32 %17, 41, !dbg !2927
  br i1 %18, label %19, label %24, !dbg !2927

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %12, align 16, !dbg !2927
  %21 = sext i32 %17 to i64, !dbg !2927
  %22 = getelementptr i8, i8* %20, i64 %21, !dbg !2927
  %23 = add i32 %17, 8, !dbg !2927
  store i32 %23, i32* %11, align 16, !dbg !2927
  br label %27, !dbg !2927

; <label>:24:                                     ; preds = %14
  %25 = load i8*, i8** %13, align 8, !dbg !2927
  %26 = getelementptr i8, i8* %25, i64 8, !dbg !2927
  store i8* %26, i8** %13, align 8, !dbg !2927
  br label %27, !dbg !2927

; <label>:27:                                     ; preds = %24, %19
  %28 = phi i8* [ %22, %19 ], [ %25, %24 ]
  %29 = bitcast i8* %28 to i8**, !dbg !2927
  %30 = load i8*, i8** %29, align 8, !dbg !2927
  %31 = icmp eq i8* %30, null, !dbg !2929
  br i1 %31, label %36, label %32, !dbg !2931

; <label>:32:                                     ; preds = %27
  %33 = call i64 @strlen(i8* nonnull %30) #8, !dbg !2932
  %34 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i64 0, i64 0), i64 %33, i8* nonnull %30) #8, !dbg !2933
  %35 = add i64 %16, 1, !dbg !2934
  br label %14, !dbg !2924, !llvm.loop !2935

; <label>:36:                                     ; preds = %27
  call void @llvm.va_end(i8* nonnull %8), !dbg !2937
  %37 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i64 0, i64 0), i64 %16) #8, !dbg !2938
  %38 = call i8* @sdscatsds(i8* %37, i8* %15) #8, !dbg !2939
  call void @sdsfree(i8* %15) #8, !dbg !2940
  %39 = getelementptr inbounds i8, i8* %38, i64 -1, !dbg !2944
  %40 = load i8, i8* %39, align 1, !dbg !2944, !tbaa !470
  %41 = trunc i8 %40 to i3, !dbg !2946
  switch i3 %41, label %63 [
    i3 0, label %42
    i3 1, label %45
    i3 2, label %49
    i3 3, label %54
    i3 -4, label %59
  ], !dbg !2946

; <label>:42:                                     ; preds = %36
  %43 = lshr i8 %40, 3, !dbg !2947
  %44 = zext i8 %43 to i64, !dbg !2947
  br label %63, !dbg !2948

; <label>:45:                                     ; preds = %36
  %46 = getelementptr inbounds i8, i8* %38, i64 -3, !dbg !2949
  %47 = load i8, i8* %46, align 1, !dbg !2950, !tbaa !470
  %48 = zext i8 %47 to i64, !dbg !2949
  br label %63, !dbg !2951

; <label>:49:                                     ; preds = %36
  %50 = getelementptr inbounds i8, i8* %38, i64 -5, !dbg !2952
  %51 = bitcast i8* %50 to i16*, !dbg !2953
  %52 = load i16, i16* %51, align 1, !dbg !2953, !tbaa !667
  %53 = zext i16 %52 to i64, !dbg !2952
  br label %63, !dbg !2954

; <label>:54:                                     ; preds = %36
  %55 = getelementptr inbounds i8, i8* %38, i64 -9, !dbg !2955
  %56 = bitcast i8* %55 to i32*, !dbg !2956
  %57 = load i32, i32* %56, align 1, !dbg !2956, !tbaa !672
  %58 = zext i32 %57 to i64, !dbg !2955
  br label %63, !dbg !2957

; <label>:59:                                     ; preds = %36
  %60 = getelementptr inbounds i8, i8* %38, i64 -17, !dbg !2958
  %61 = bitcast i8* %60 to i64*, !dbg !2959
  %62 = load i64, i64* %61, align 1, !dbg !2959, !tbaa !676
  br label %63, !dbg !2960

; <label>:63:                                     ; preds = %36, %42, %45, %49, %54, %59
  %64 = phi i64 [ %62, %59 ], [ %58, %54 ], [ %53, %49 ], [ %48, %45 ], [ %44, %42 ], [ 0, %36 ], !dbg !2961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2962
  %65 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 201), align 8, !dbg !2963, !tbaa !2507
  %66 = mul nsw i32 %65, 1000, !dbg !2964
  %67 = sext i32 %66 to i64, !dbg !2965
  %68 = call i64 @syncWrite(i32 %1, i8* %38, i64 %64, i64 %67) #8, !dbg !2966
  %69 = icmp eq i64 %68, -1, !dbg !2967
  call void @sdsfree(i8* %38) #8, !dbg !2968
  br i1 %69, label %71, label %70, !dbg !2969

; <label>:70:                                     ; preds = %63
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7, !dbg !2970
  br label %77

; <label>:71:                                     ; preds = %63
  %72 = call i8* @sdsempty() #8, !dbg !2971
  %73 = call i32* @__errno() #8, !dbg !2973
  %74 = load i32, i32* %73, align 4, !dbg !2973, !tbaa !672
  %75 = call i8* @strerror(i32 %74) #8, !dbg !2974
  %76 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i64 0, i64 0), i8* %75) #8, !dbg !2975
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #7, !dbg !2970
  br label %98

; <label>:77:                                     ; preds = %70, %2
  %78 = and i32 %0, 1, !dbg !2976
  %79 = icmp eq i32 %78, 0, !dbg !2976
  br i1 %79, label %98, label %80, !dbg !2977

; <label>:80:                                     ; preds = %77
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !2978
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %81) #7, !dbg !2978
  %82 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 201), align 8, !dbg !2980, !tbaa !2507
  %83 = mul nsw i32 %82, 1000, !dbg !2982
  %84 = sext i32 %83 to i64, !dbg !2983
  %85 = call i64 @syncReadLine(i32 %1, i8* nonnull %81, i64 256, i64 %84) #8, !dbg !2984
  %86 = icmp eq i64 %85, -1, !dbg !2985
  br i1 %86, label %87, label %93, !dbg !2986

; <label>:87:                                     ; preds = %80
  %88 = call i8* @sdsempty() #8, !dbg !2987
  %89 = call i32* @__errno() #8, !dbg !2989
  %90 = load i32, i32* %89, align 4, !dbg !2989, !tbaa !672
  %91 = call i8* @strerror(i32 %90) #8, !dbg !2990
  %92 = call i8* (i8*, i8*, ...) @sdscatprintf(i8* %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.92, i64 0, i64 0), i8* %91) #8, !dbg !2991
  br label %96, !dbg !2992

; <label>:93:                                     ; preds = %80
  %94 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !2993, !tbaa !1367
  store i64 %94, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !2994, !tbaa !2529
  %95 = call i8* @sdsnew(i8* nonnull %81) #8, !dbg !2995
  br label %96, !dbg !2996

; <label>:96:                                     ; preds = %93, %87
  %97 = phi i8* [ %92, %87 ], [ %95, %93 ], !dbg !2997
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %81) #7, !dbg !2998
  br label %98

; <label>:98:                                     ; preds = %71, %77, %96
  %99 = phi i8* [ %97, %96 ], [ %76, %71 ], [ null, %77 ], !dbg !2999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3000
  ret i8* %99, !dbg !3000
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: noredzone
declare dso_local i8* @sdscatsds(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @syncWrite(i32, i8*, i64, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @slaveTryPartialResynchronization(i32, i32) local_unnamed_addr #0 !dbg !3001 {
  %3 = alloca [32 x i8], align 16
  %4 = alloca [41 x i8], align 16
  %5 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0, !dbg !3026
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #7, !dbg !3026
  %6 = icmp eq i32 %1, 0, !dbg !3028
  br i1 %6, label %7, label %24, !dbg !3030

; <label>:7:                                      ; preds = %2
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 219), align 8, !dbg !3031, !tbaa !2452
  %8 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3033, !tbaa !3035
  %9 = icmp eq %struct.client* %8, null, !dbg !3036
  br i1 %9, label %16, label %10, !dbg !3037

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.client, %struct.client* %8, i64 0, i32 34, i64 0, !dbg !3038
  %12 = getelementptr inbounds %struct.client, %struct.client* %8, i64 0, i32 30, !dbg !3041
  %13 = load i64, i64* %12, align 8, !dbg !3041, !tbaa !2020
  %14 = add nsw i64 %13, 1, !dbg !3042
  %15 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %5, i64 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.93, i64 0, i64 0), i64 %14) #8, !dbg !3043
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.94, i64 0, i64 0), i8* nonnull %11, i8* nonnull %5) #8, !dbg !3044
  br label %18, !dbg !3045

; <label>:16:                                     ; preds = %7
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.95, i64 0, i64 0)) #8, !dbg !3046
  %17 = call i8* @memcpy(i8* nonnull %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i64 0, i64 0), i64 3) #8, !dbg !3048
  br label %18

; <label>:18:                                     ; preds = %16, %10
  %19 = phi i8* [ %11, %10 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i64 0, i64 0), %16 ], !dbg !3049
  %20 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 2, i32 %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i64 0, i64 0), i8* nonnull %19, i8* nonnull %5, i8* null) #10, !dbg !3050
  %21 = icmp eq i8* %20, null, !dbg !3052
  br i1 %21, label %152, label %22, !dbg !3054

; <label>:22:                                     ; preds = %18
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.99, i64 0, i64 0), i8* nonnull %20) #8, !dbg !3055
  call void @sdsfree(i8* nonnull %20) #8, !dbg !3057
  %23 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3058, !tbaa !2049
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %23, i32 %0, i32 1) #8, !dbg !3059
  br label %152, !dbg !3060

; <label>:24:                                     ; preds = %2
  %25 = tail call i8* (i32, i32, ...) @sendSynchronousCommand(i32 1, i32 %0, i8* null) #10, !dbg !3061
  %26 = getelementptr inbounds i8, i8* %25, i64 -1, !dbg !3065
  %27 = load i8, i8* %26, align 1, !dbg !3065, !tbaa !470
  %28 = trunc i8 %27 to i3, !dbg !3067
  switch i3 %28, label %29 [
    i3 0, label %30
    i3 1, label %33
    i3 2, label %37
    i3 3, label %42
    i3 -4, label %47
  ], !dbg !3067

; <label>:29:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3068
  br label %54, !dbg !3069

; <label>:30:                                     ; preds = %24
  %31 = lshr i8 %27, 3, !dbg !3070
  %32 = zext i8 %31 to i64, !dbg !3070
  br label %51, !dbg !3071

; <label>:33:                                     ; preds = %24
  %34 = getelementptr inbounds i8, i8* %25, i64 -3, !dbg !3072
  %35 = load i8, i8* %34, align 1, !dbg !3073, !tbaa !470
  %36 = zext i8 %35 to i64, !dbg !3072
  br label %51, !dbg !3074

; <label>:37:                                     ; preds = %24
  %38 = getelementptr inbounds i8, i8* %25, i64 -5, !dbg !3075
  %39 = bitcast i8* %38 to i16*, !dbg !3076
  %40 = load i16, i16* %39, align 1, !dbg !3076, !tbaa !667
  %41 = zext i16 %40 to i64, !dbg !3075
  br label %51, !dbg !3077

; <label>:42:                                     ; preds = %24
  %43 = getelementptr inbounds i8, i8* %25, i64 -9, !dbg !3078
  %44 = bitcast i8* %43 to i32*, !dbg !3079
  %45 = load i32, i32* %44, align 1, !dbg !3079, !tbaa !672
  %46 = zext i32 %45 to i64, !dbg !3078
  br label %51, !dbg !3080

; <label>:47:                                     ; preds = %24
  %48 = getelementptr inbounds i8, i8* %25, i64 -17, !dbg !3081
  %49 = bitcast i8* %48 to i64*, !dbg !3082
  %50 = load i64, i64* %49, align 1, !dbg !3082, !tbaa !676
  br label %51, !dbg !3083

; <label>:51:                                     ; preds = %30, %33, %37, %42, %47
  %52 = phi i64 [ %50, %47 ], [ %46, %42 ], [ %41, %37 ], [ %36, %33 ], [ %32, %30 ], !dbg !3084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3068
  %53 = icmp eq i64 %52, 0, !dbg !3085
  br i1 %53, label %54, label %55, !dbg !3069

; <label>:54:                                     ; preds = %29, %51
  tail call void @sdsfree(i8* %25) #8, !dbg !3086
  br label %152, !dbg !3088

; <label>:55:                                     ; preds = %51
  %56 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3089, !tbaa !2049
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %56, i32 %0, i32 1) #8, !dbg !3090
  %57 = tail call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i64 0, i64 0), i64 11) #8, !dbg !3091
  %58 = icmp eq i32 %57, 0, !dbg !3091
  br i1 %58, label %59, label %88, !dbg !3092

; <label>:59:                                     ; preds = %55
  %60 = tail call i8* @strchr(i8* %25, i32 32) #8, !dbg !3095
  %61 = icmp eq i8* %60, null, !dbg !3096
  br i1 %61, label %74, label %62, !dbg !3098

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !3099
  %64 = tail call i8* @strchr(i8* nonnull %63, i32 32) #8, !dbg !3101
  %65 = icmp eq i8* %64, null, !dbg !3102
  %66 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !3104
  %67 = select i1 %65, i8* null, i8* %66, !dbg !3105
  br i1 %65, label %74, label %68, !dbg !3106

; <label>:68:                                     ; preds = %62
  %69 = ptrtoint i8* %67 to i64, !dbg !3108
  %70 = ptrtoint i8* %63 to i64, !dbg !3108
  %71 = xor i64 %70, -1, !dbg !3109
  %72 = add i64 %69, %71, !dbg !3109
  %73 = icmp eq i64 %72, 40, !dbg !3110
  br i1 %73, label %76, label %74, !dbg !3111

; <label>:74:                                     ; preds = %62, %59, %68
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.101, i64 0, i64 0)) #8, !dbg !3112
  %75 = tail call i8* @memset(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 0), i32 0, i64 41) #8, !dbg !3114
  br label %79, !dbg !3115

; <label>:76:                                     ; preds = %68
  %77 = tail call i8* @memcpy(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 0), i8* nonnull %63, i64 40) #8, !dbg !3116
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 40), align 8, !dbg !3118, !tbaa !470
  %78 = tail call i64 @strtoll(i8* nonnull %67, i8** null, i32 10) #8, !dbg !3119
  store i64 %78, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 219), align 8, !dbg !3120, !tbaa !2452
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.102, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 0), i64 %78) #8, !dbg !3121
  br label %79

; <label>:79:                                     ; preds = %76, %74
  %80 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3122, !tbaa !3035
  %81 = icmp eq %struct.client* %80, null, !dbg !3126
  br i1 %81, label %87, label %82, !dbg !3127

; <label>:82:                                     ; preds = %79
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.159, i64 0, i64 0)) #8, !dbg !3128
  %83 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3129, !tbaa !3035
  %84 = getelementptr inbounds %struct.client, %struct.client* %83, i64 0, i32 21, !dbg !3130
  %85 = load i32, i32* %84, align 8, !dbg !3131, !tbaa !1089
  %86 = and i32 %85, -3, !dbg !3131
  store i32 %86, i32* %84, align 8, !dbg !3131, !tbaa !1089
  tail call void @freeClient(%struct.client* %83) #8, !dbg !3132
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3133, !tbaa !3035
  br label %87, !dbg !3134

; <label>:87:                                     ; preds = %79, %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3134
  tail call void @sdsfree(i8* %25) #8, !dbg !3135
  br label %152

; <label>:88:                                     ; preds = %55
  %89 = tail call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i64 0, i64 0), i64 9) #8, !dbg !3136
  %90 = icmp eq i32 %89, 0, !dbg !3136
  br i1 %90, label %91, label %131, !dbg !3137

; <label>:91:                                     ; preds = %88
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.104, i64 0, i64 0)) #8, !dbg !3138
  %92 = getelementptr inbounds i8, i8* %25, i64 10, !dbg !3139
  %93 = getelementptr inbounds i8, i8* %25, i64 9, !dbg !3141
  br label %94, !dbg !3143

; <label>:94:                                     ; preds = %97, %91
  %95 = phi i8* [ %93, %91 ], [ %98, %97 ], !dbg !3144
  %96 = load i8, i8* %95, align 1, !dbg !3145, !tbaa !470
  switch i8 %96, label %97 [
    i8 13, label %99
    i8 10, label %99
    i8 0, label %99
  ], !dbg !3146

; <label>:97:                                     ; preds = %94
  %98 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !3147
  br label %94, !dbg !3143, !llvm.loop !3148

; <label>:99:                                     ; preds = %94, %94, %94
  %100 = ptrtoint i8* %95 to i64, !dbg !3149
  %101 = ptrtoint i8* %92 to i64, !dbg !3149
  %102 = sub i64 %100, %101, !dbg !3149
  %103 = icmp eq i64 %102, 40, !dbg !3150
  br i1 %103, label %104, label %123, !dbg !3151

; <label>:104:                                    ; preds = %99
  %105 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 0, !dbg !3152
  call void @llvm.lifetime.start.p0i8(i64 41, i8* nonnull %105) #7, !dbg !3152
  %106 = call i8* @memcpy(i8* nonnull %105, i8* nonnull %92, i64 40) #8, !dbg !3154
  %107 = getelementptr inbounds [41 x i8], [41 x i8]* %4, i64 0, i64 40, !dbg !3155
  store i8 0, i8* %107, align 8, !dbg !3156, !tbaa !470
  %108 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3157, !tbaa !3035
  %109 = getelementptr inbounds %struct.client, %struct.client* %108, i64 0, i32 34, i64 0, !dbg !3159
  %110 = call i32 @strcmp(i8* nonnull %105, i8* nonnull %109) #8, !dbg !3160
  %111 = icmp eq i32 %110, 0, !dbg !3160
  br i1 %111, label %122, label %112, !dbg !3161

; <label>:112:                                    ; preds = %104
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.105, i64 0, i64 0), i8* nonnull %105) #8, !dbg !3162
  %113 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3164, !tbaa !3035
  %114 = getelementptr inbounds %struct.client, %struct.client* %113, i64 0, i32 34, i64 0, !dbg !3165
  %115 = call i8* @memcpy(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i8* nonnull %114, i64 41) #8, !dbg !3166
  %116 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !3167, !tbaa !524
  %117 = add nsw i64 %116, 1, !dbg !3168
  store i64 %117, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !3169, !tbaa !1316
  %118 = call i8* @memcpy(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i8* nonnull %105, i64 41) #8, !dbg !3170
  %119 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3171, !tbaa !3035
  %120 = getelementptr inbounds %struct.client, %struct.client* %119, i64 0, i32 34, i64 0, !dbg !3172
  %121 = call i8* @memcpy(i8* nonnull %120, i8* nonnull %105, i64 41) #8, !dbg !3173
  call void @disconnectSlaves() #8, !dbg !3174
  br label %122, !dbg !3175

; <label>:122:                                    ; preds = %104, %112
  call void @llvm.lifetime.end.p0i8(i64 41, i8* nonnull %105) #7, !dbg !3176
  br label %123, !dbg !3177

; <label>:123:                                    ; preds = %122, %99
  call void @sdsfree(i8* %25) #8, !dbg !3178
  call void @replicationResurrectCachedMaster(i32 %0) #10, !dbg !3179
  %124 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !3180, !tbaa !511
  %125 = icmp eq i8* %124, null, !dbg !3182
  br i1 %125, label %126, label %152, !dbg !3183

; <label>:126:                                    ; preds = %123
  %127 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 184), align 8, !dbg !3184, !tbaa !518
  %128 = call i8* @zmalloc(i64 %127) #8, !dbg !3186
  store i8* %128, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !3187, !tbaa !511
  store <2 x i64> zeroinitializer, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 185) to <2 x i64>*), align 8, !dbg !3188, !tbaa !522
  %129 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !3189, !tbaa !524
  %130 = add nsw i64 %129, 1, !dbg !3190
  store i64 %130, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 187), align 8, !dbg !3191, !tbaa !527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3192
  br label %152, !dbg !3193

; <label>:131:                                    ; preds = %88
  %132 = tail call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.106, i64 0, i64 0), i64 13) #8, !dbg !3194
  %133 = icmp eq i32 %132, 0, !dbg !3194
  br i1 %133, label %137, label %134, !dbg !3196

; <label>:134:                                    ; preds = %131
  %135 = tail call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.107, i64 0, i64 0), i64 8) #8, !dbg !3197
  %136 = icmp eq i32 %135, 0, !dbg !3197
  br i1 %136, label %137, label %138, !dbg !3198

; <label>:137:                                    ; preds = %134, %131
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.108, i64 0, i64 0), i8* %25) #8, !dbg !3199
  tail call void @sdsfree(i8* %25) #8, !dbg !3201
  br label %152, !dbg !3202

; <label>:138:                                    ; preds = %134
  %139 = tail call i32 @strncmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i64 0, i64 0), i64 4) #8, !dbg !3203
  %140 = icmp eq i32 %139, 0, !dbg !3203
  br i1 %140, label %142, label %141, !dbg !3205

; <label>:141:                                    ; preds = %138
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.110, i64 0, i64 0), i8* %25) #8, !dbg !3206
  br label %143, !dbg !3208

; <label>:142:                                    ; preds = %138
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.111, i64 0, i64 0), i8* %25) #8, !dbg !3209
  br label %143

; <label>:143:                                    ; preds = %142, %141
  tail call void @sdsfree(i8* %25) #8, !dbg !3211
  %144 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3212, !tbaa !3035
  %145 = icmp eq %struct.client* %144, null, !dbg !3214
  br i1 %145, label %151, label %146, !dbg !3215

; <label>:146:                                    ; preds = %143
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.159, i64 0, i64 0)) #8, !dbg !3216
  %147 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3217, !tbaa !3035
  %148 = getelementptr inbounds %struct.client, %struct.client* %147, i64 0, i32 21, !dbg !3218
  %149 = load i32, i32* %148, align 8, !dbg !3219, !tbaa !1089
  %150 = and i32 %149, -3, !dbg !3219
  store i32 %150, i32* %148, align 8, !dbg !3219, !tbaa !1089
  tail call void @freeClient(%struct.client* %147) #8, !dbg !3220
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3221, !tbaa !3035
  br label %151, !dbg !3222

; <label>:151:                                    ; preds = %143, %146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3222
  br label %152, !dbg !3223

; <label>:152:                                    ; preds = %123, %126, %18, %151, %137, %87, %54, %22
  %153 = phi i32 [ 1, %54 ], [ 4, %151 ], [ 5, %137 ], [ 3, %87 ], [ 0, %22 ], [ 1, %18 ], [ 2, %126 ], [ 2, %123 ], !dbg !3224
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #7, !dbg !3225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3225
  ret i32 %153, !dbg !3225
}

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationDiscardCachedMaster() local_unnamed_addr #0 !dbg !3124 {
  %1 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3226, !tbaa !3035
  %2 = icmp eq %struct.client* %1, null, !dbg !3227
  br i1 %2, label %8, label %3, !dbg !3228

; <label>:3:                                      ; preds = %0
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.159, i64 0, i64 0)) #8, !dbg !3229
  %4 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3230, !tbaa !3035
  %5 = getelementptr inbounds %struct.client, %struct.client* %4, i64 0, i32 21, !dbg !3231
  %6 = load i32, i32* %5, align 8, !dbg !3232, !tbaa !1089
  %7 = and i32 %6, -3, !dbg !3232
  store i32 %7, i32* %5, align 8, !dbg !3232, !tbaa !1089
  tail call void @freeClient(%struct.client* %4) #8, !dbg !3233
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3234, !tbaa !3035
  br label %8, !dbg !3235

; <label>:8:                                      ; preds = %0, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3235
  ret void, !dbg !3235
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @disconnectSlaves() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationResurrectCachedMaster(i32) local_unnamed_addr #0 !dbg !3236 {
  %2 = load i64, i64* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200) to i64*), align 8, !dbg !3242, !tbaa !3035
  store i64 %2, i64* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199) to i64*), align 8, !dbg !3243, !tbaa !2096
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3244, !tbaa !3035
  %3 = inttoptr i64 %2 to %struct.client*, !dbg !3245
  %4 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 1, !dbg !3246
  store i32 %0, i32* %4, align 8, !dbg !3247, !tbaa !479
  %5 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 21, !dbg !3248
  %6 = load i32, i32* %5, align 8, !dbg !3249, !tbaa !1089
  %7 = and i32 %6, -1089, !dbg !3249
  store i32 %7, i32* %5, align 8, !dbg !3249, !tbaa !1089
  %8 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 22, !dbg !3250
  store i32 1, i32* %8, align 4, !dbg !3251, !tbaa !2450
  %9 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3252, !tbaa !1367
  %10 = getelementptr inbounds %struct.client, %struct.client* %3, i64 0, i32 19, !dbg !3253
  store i64 %9, i64* %10, align 8, !dbg !3254, !tbaa !3255
  store i32 15, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3256, !tbaa !2405
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 213), align 8, !dbg !3257, !tbaa !2808
  tail call void @linkClient(%struct.client* %3) #8, !dbg !3258
  %11 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3259, !tbaa !2049
  %12 = load i8*, i8** bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199) to i8**), align 8, !dbg !3261, !tbaa !2096
  %13 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* %11, i32 %0, i32 1, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @readQueryFromClient, i8* %12) #8, !dbg !3262
  %14 = icmp eq i32 %13, 0, !dbg !3262
  br i1 %14, label %20, label %15, !dbg !3263

; <label>:15:                                     ; preds = %1
  %16 = tail call i32* @__errno() #8, !dbg !3264
  %17 = load i32, i32* %16, align 4, !dbg !3264, !tbaa !672
  %18 = tail call i8* @strerror(i32 %17) #8, !dbg !3266
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.160, i64 0, i64 0), i8* %18) #8, !dbg !3267
  %19 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3268, !tbaa !2096
  tail call void @freeClientAsync(%struct.client* %19) #8, !dbg !3269
  br label %20, !dbg !3270

; <label>:20:                                     ; preds = %1, %15
  %21 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3271, !tbaa !2096
  %22 = tail call i32 @clientHasPendingReplies(%struct.client* %21) #8, !dbg !3273
  %23 = icmp eq i32 %22, 0, !dbg !3273
  br i1 %23, label %34, label %24, !dbg !3274

; <label>:24:                                     ; preds = %20
  %25 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3275, !tbaa !2049
  %26 = load i8*, i8** bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199) to i8**), align 8, !dbg !3278, !tbaa !2096
  %27 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* %25, i32 %0, i32 2, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @sendReplyToClient, i8* %26) #8, !dbg !3279
  %28 = icmp eq i32 %27, 0, !dbg !3279
  br i1 %28, label %34, label %29, !dbg !3280

; <label>:29:                                     ; preds = %24
  %30 = tail call i32* @__errno() #8, !dbg !3281
  %31 = load i32, i32* %30, align 4, !dbg !3281, !tbaa !672
  %32 = tail call i8* @strerror(i32 %31) #8, !dbg !3283
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.161, i64 0, i64 0), i8* %32) #8, !dbg !3284
  %33 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3285, !tbaa !2096
  tail call void @freeClientAsync(%struct.client* %33) #8, !dbg !3286
  br label %34, !dbg !3287

; <label>:34:                                     ; preds = %24, %20, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3288
  ret void, !dbg !3288
}

; Function Attrs: noredzone nounwind
define dso_local void @syncWithMaster(%struct.aeEventLoop* nocapture readnone, i32, i8* nocapture readnone, i32) #0 !dbg !3289 {
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !3313
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %8) #7, !dbg !3313
  %9 = bitcast i32* %6 to i8*, !dbg !3318
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #7, !dbg !3318
  store i32 0, i32* %6, align 4, !dbg !3319, !tbaa !672
  %10 = bitcast i32* %7 to i8*, !dbg !3320
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #7, !dbg !3320
  store i32 4, i32* %7, align 4, !dbg !3321, !tbaa !672
  %11 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3322, !tbaa !2405
  %12 = icmp eq i32 %11, 0, !dbg !3324
  br i1 %12, label %13, label %15, !dbg !3325

; <label>:13:                                     ; preds = %4
  %14 = tail call i32 @close(i32 %1) #8, !dbg !3326
  br label %170, !dbg !3328

; <label>:15:                                     ; preds = %4
  %16 = call i32 @getsockopt(i32 %1, i32 4095, i32 4103, i8* nonnull %9, i32* nonnull %7) #8, !dbg !3329
  %17 = icmp eq i32 %16, -1, !dbg !3331
  br i1 %17, label %18, label %21, !dbg !3332

; <label>:18:                                     ; preds = %15
  %19 = call i32* @__errno() #8, !dbg !3333
  %20 = load i32, i32* %19, align 4, !dbg !3333, !tbaa !672
  store i32 %20, i32* %6, align 4, !dbg !3334, !tbaa !672
  br label %23, !dbg !3335

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %6, align 4, !dbg !3336, !tbaa !672
  br label %23, !dbg !3336

; <label>:23:                                     ; preds = %21, %18
  %24 = phi i32 [ %22, %21 ], [ %20, %18 ], !dbg !3336
  %25 = icmp eq i32 %24, 0, !dbg !3336
  br i1 %25, label %28, label %26, !dbg !3338

; <label>:26:                                     ; preds = %23
  %27 = call i8* @strerror(i32 %24) #8, !dbg !3339
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.112, i64 0, i64 0), i8* %27) #8, !dbg !3341
  br label %158, !dbg !3342

; <label>:28:                                     ; preds = %23
  %29 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3343, !tbaa !2405
  switch i32 %29, label %76 [
    i32 2, label %30
    i32 3, label %34
    i32 4, label %46
    i32 5, label %53
    i32 6, label %60
    i32 7, label %70
  ], !dbg !3345

; <label>:30:                                     ; preds = %28
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.113, i64 0, i64 0)) #8, !dbg !3346
  %31 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3348, !tbaa !2049
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %31, i32 %1, i32 2) #8, !dbg !3349
  store i32 3, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3350, !tbaa !2405
  %32 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 2, i32 %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0), i8* null) #10, !dbg !3351
  %33 = icmp eq i8* %32, null, !dbg !3352
  br i1 %33, label %170, label %168, !dbg !3354

; <label>:34:                                     ; preds = %28
  %35 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 1, i32 %1, i8* null) #10, !dbg !3355
  %36 = load i8, i8* %35, align 1, !dbg !3358, !tbaa !470
  %37 = icmp eq i8 %36, 43, !dbg !3360
  br i1 %37, label %45, label %38, !dbg !3361

; <label>:38:                                     ; preds = %34
  %39 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i64 0, i64 0), i64 7) #8, !dbg !3362
  %40 = icmp eq i32 %39, 0, !dbg !3363
  br i1 %40, label %45, label %41, !dbg !3364

; <label>:41:                                     ; preds = %38
  %42 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.116, i64 0, i64 0), i64 28) #8, !dbg !3365
  %43 = icmp eq i32 %42, 0, !dbg !3366
  br i1 %43, label %45, label %44, !dbg !3367

; <label>:44:                                     ; preds = %41
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.117, i64 0, i64 0), i8* %35) #8, !dbg !3368
  call void @sdsfree(i8* %35) #8, !dbg !3370
  br label %158, !dbg !3371

; <label>:45:                                     ; preds = %34, %38, %41
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.118, i64 0, i64 0)) #8, !dbg !3372
  call void @sdsfree(i8* %35) #8, !dbg !3374
  store i32 4, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3375, !tbaa !2405
  br label %46, !dbg !3376

; <label>:46:                                     ; preds = %28, %45
  %47 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 195), align 8, !dbg !3377, !tbaa !3381
  %48 = icmp eq i8* %47, null, !dbg !3382
  br i1 %48, label %59, label %49, !dbg !3383

; <label>:49:                                     ; preds = %46
  %50 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 2, i32 %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.119, i64 0, i64 0), i8* nonnull %47, i8* null) #10, !dbg !3384
  %51 = icmp eq i8* %50, null, !dbg !3386
  br i1 %51, label %52, label %168, !dbg !3388

; <label>:52:                                     ; preds = %49
  store i32 5, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3389, !tbaa !2405
  br label %170, !dbg !3390

; <label>:53:                                     ; preds = %28
  %54 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 1, i32 %1, i8* null) #10, !dbg !3391
  %55 = load i8, i8* %54, align 1, !dbg !3394, !tbaa !470
  %56 = icmp eq i8 %55, 45, !dbg !3396
  br i1 %56, label %57, label %58, !dbg !3397

; <label>:57:                                     ; preds = %53
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.120, i64 0, i64 0), i8* %54) #8, !dbg !3398
  call void @sdsfree(i8* %54) #8, !dbg !3400
  br label %158, !dbg !3401

; <label>:58:                                     ; preds = %53
  call void @sdsfree(i8* %54) #8, !dbg !3402
  br label %59, !dbg !3403

; <label>:59:                                     ; preds = %46, %58
  store i32 6, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3404, !tbaa !2405
  br label %60, !dbg !3406

; <label>:60:                                     ; preds = %59, %28
  %61 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 216), align 8, !dbg !3406, !tbaa !3407
  %62 = icmp eq i32 %61, 0, !dbg !3408
  %63 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 27), align 8, !dbg !3409
  %64 = select i1 %62, i32 %63, i32 %61, !dbg !3408
  %65 = sext i32 %64 to i64, !dbg !3408
  %66 = call i8* @sdsfromlonglong(i64 %65) #8, !dbg !3410
  %67 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 2, i32 %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i8* %66, i8* null) #10, !dbg !3412
  call void @sdsfree(i8* %66) #8, !dbg !3413
  %68 = icmp eq i8* %67, null, !dbg !3414
  br i1 %68, label %69, label %168, !dbg !3416

; <label>:69:                                     ; preds = %60
  call void @sdsfree(i8* null) #8, !dbg !3417
  store i32 7, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3418, !tbaa !2405
  br label %170

; <label>:70:                                     ; preds = %28
  %71 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 1, i32 %1, i8* null) #10, !dbg !3419
  %72 = load i8, i8* %71, align 1, !dbg !3422, !tbaa !470
  %73 = icmp eq i8 %72, 45, !dbg !3424
  br i1 %73, label %74, label %75, !dbg !3425

; <label>:74:                                     ; preds = %70
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.122, i64 0, i64 0), i8* %71) #8, !dbg !3426
  br label %75, !dbg !3428

; <label>:75:                                     ; preds = %74, %70
  call void @sdsfree(i8* %71) #8, !dbg !3429
  store i32 8, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3430, !tbaa !2405
  br label %76, !dbg !3431

; <label>:76:                                     ; preds = %28, %75
  %77 = phi i32 [ 8, %75 ], [ %29, %28 ], !dbg !3432
  %78 = icmp eq i32 %77, 8, !dbg !3434
  %79 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 217), align 8, !dbg !3435
  %80 = icmp eq i8* %79, null, !dbg !3436
  %81 = and i1 %78, %80, !dbg !3437
  br i1 %81, label %93, label %82, !dbg !3437

; <label>:82:                                     ; preds = %76
  switch i32 %77, label %110 [
    i32 8, label %83
    i32 9, label %87
    i32 10, label %94
    i32 11, label %98
    i32 12, label %104
    i32 13, label %111
  ], !dbg !3438

; <label>:83:                                     ; preds = %82
  %84 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 2, i32 %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i64 0, i64 0), i8* %79, i8* null) #10, !dbg !3439
  %85 = icmp eq i8* %84, null, !dbg !3442
  br i1 %85, label %86, label %168, !dbg !3444

; <label>:86:                                     ; preds = %83
  call void @sdsfree(i8* null) #8, !dbg !3445
  store i32 9, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3446, !tbaa !2405
  br label %170, !dbg !3447

; <label>:87:                                     ; preds = %82
  %88 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 1, i32 %1, i8* null) #10, !dbg !3448
  %89 = load i8, i8* %88, align 1, !dbg !3451, !tbaa !470
  %90 = icmp eq i8 %89, 45, !dbg !3453
  br i1 %90, label %91, label %92, !dbg !3454

; <label>:91:                                     ; preds = %87
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.123, i64 0, i64 0), i8* %88) #8, !dbg !3455
  br label %92, !dbg !3457

; <label>:92:                                     ; preds = %91, %87
  call void @sdsfree(i8* %88) #8, !dbg !3458
  br label %93, !dbg !3459

; <label>:93:                                     ; preds = %76, %92
  store i32 10, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3460, !tbaa !2405
  br label %94, !dbg !3462

; <label>:94:                                     ; preds = %93, %82
  %95 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 2, i32 %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i64 0, i64 0), i8* null) #10, !dbg !3462
  %96 = icmp eq i8* %95, null, !dbg !3465
  br i1 %96, label %97, label %168, !dbg !3467

; <label>:97:                                     ; preds = %94
  call void @sdsfree(i8* null) #8, !dbg !3468
  store i32 11, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3469, !tbaa !2405
  br label %170, !dbg !3470

; <label>:98:                                     ; preds = %82
  %99 = call i8* (i32, i32, ...) @sendSynchronousCommand(i32 1, i32 %1, i8* null) #10, !dbg !3471
  %100 = load i8, i8* %99, align 1, !dbg !3474, !tbaa !470
  %101 = icmp eq i8 %100, 45, !dbg !3476
  br i1 %101, label %102, label %103, !dbg !3477

; <label>:102:                                    ; preds = %98
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.124, i64 0, i64 0), i8* %99) #8, !dbg !3478
  br label %103, !dbg !3480

; <label>:103:                                    ; preds = %98, %102
  call void @sdsfree(i8* %99) #8, !dbg !3481
  store i32 12, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3482, !tbaa !2405
  br label %104, !dbg !3483

; <label>:104:                                    ; preds = %82, %103
  %105 = call i32 @slaveTryPartialResynchronization(i32 %1, i32 0) #10, !dbg !3484
  %106 = icmp eq i32 %105, 0, !dbg !3488
  br i1 %106, label %107, label %109, !dbg !3489

; <label>:107:                                    ; preds = %104
  %108 = call i8* @sdsnew(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.125, i64 0, i64 0)) #8, !dbg !3490
  br label %168, !dbg !3492

; <label>:109:                                    ; preds = %104
  store i32 13, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3493, !tbaa !2405
  br label %170, !dbg !3494

; <label>:110:                                    ; preds = %82
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.126, i64 0, i64 0), i32 %77) #8, !dbg !3495
  br label %158, !dbg !3498

; <label>:111:                                    ; preds = %82
  %112 = call i32 @slaveTryPartialResynchronization(i32 %1, i32 1) #10, !dbg !3499
  switch i32 %112, label %114 [
    i32 1, label %170
    i32 5, label %158
    i32 2, label %113
  ], !dbg !3501

; <label>:113:                                    ; preds = %111
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.127, i64 0, i64 0)) #8, !dbg !3502
  br label %170, !dbg !3505

; <label>:114:                                    ; preds = %111
  call void @disconnectSlaves() #8, !dbg !3506
  %115 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !3507, !tbaa !558
  %116 = getelementptr inbounds %struct.list, %struct.list* %115, i64 0, i32 5, !dbg !3507
  %117 = load i64, i64* %116, align 8, !dbg !3507, !tbaa !559
  %118 = icmp eq i64 %117, 0, !dbg !3507
  br i1 %118, label %120, label %119, !dbg !3507

; <label>:119:                                    ; preds = %114
  call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 118) #8, !dbg !3507
  call void @_exit(i32 1) #9, !dbg !3507
  unreachable, !dbg !3507

; <label>:120:                                    ; preds = %114
  %121 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !3509, !tbaa !511
  call void @zfree(i8* %121) #8, !dbg !3510
  store i8* null, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !3511, !tbaa !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3512
  %122 = icmp eq i32 %112, 4, !dbg !3513
  br i1 %122, label %123, label %133, !dbg !3515

; <label>:123:                                    ; preds = %120
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.128, i64 0, i64 0)) #8, !dbg !3516
  %124 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 201), align 8, !dbg !3518, !tbaa !2507
  %125 = mul nsw i32 %124, 1000, !dbg !3520
  %126 = sext i32 %125 to i64, !dbg !3521
  %127 = call i64 @syncWrite(i32 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.129, i64 0, i64 0), i64 6, i64 %126) #8, !dbg !3522
  %128 = icmp eq i64 %127, -1, !dbg !3523
  br i1 %128, label %129, label %133, !dbg !3524

; <label>:129:                                    ; preds = %123
  %130 = call i32* @__errno() #8, !dbg !3525
  %131 = load i32, i32* %130, align 4, !dbg !3525, !tbaa !672
  %132 = call i8* @strerror(i32 %131) #8, !dbg !3527
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.130, i64 0, i64 0), i8* %132) #8, !dbg !3528
  br label %158, !dbg !3529

; <label>:133:                                    ; preds = %123, %120
  %134 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3530, !tbaa !1367
  %135 = trunc i64 %134 to i32, !dbg !3532
  %136 = call i32 @getpid() #8, !dbg !3533
  %137 = sext i32 %136 to i64, !dbg !3534
  %138 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %8, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i64 0, i64 0), i32 %135, i64 %137) #8, !dbg !3535
  %139 = call i32 (i8*, i32, ...) @open(i8* nonnull %8, i32 2561, i32 420) #8, !dbg !3536
  %140 = icmp eq i32 %139, -1, !dbg !3537
  br i1 %140, label %141, label %150, !dbg !3539

; <label>:141:                                    ; preds = %133
  %142 = call i32 @sleep(i32 1) #8, !dbg !3540
  %143 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3530, !tbaa !1367
  %144 = trunc i64 %143 to i32, !dbg !3532
  %145 = call i32 @getpid() #8, !dbg !3533
  %146 = sext i32 %145 to i64, !dbg !3534
  %147 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %8, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i64 0, i64 0), i32 %144, i64 %146) #8, !dbg !3535
  %148 = call i32 (i8*, i32, ...) @open(i8* nonnull %8, i32 2561, i32 420) #8, !dbg !3536
  %149 = icmp eq i32 %148, -1, !dbg !3537
  br i1 %149, label %171, label %150, !dbg !3539

; <label>:150:                                    ; preds = %189, %180, %171, %141, %133
  %151 = phi i32 [ %139, %133 ], [ %148, %141 ], [ %178, %171 ], [ %187, %180 ], [ %196, %189 ], !dbg !3536
  %152 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3541, !tbaa !2049
  %153 = call i32 @aeCreateFileEvent(%struct.aeEventLoop* %152, i32 %1, i32 1, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @readSyncBulkPayload, i8* null) #8, !dbg !3543
  %154 = icmp eq i32 %153, -1, !dbg !3544
  br i1 %154, label %160, label %155, !dbg !3545

; <label>:155:                                    ; preds = %150
  store i32 14, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3546, !tbaa !2405
  store <2 x i64> <i64 -1, i64 0>, <2 x i64>* bitcast (i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 203) to <2 x i64>*), align 8, !dbg !3547, !tbaa !676
  store i64 0, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 205), align 8, !dbg !3548, !tbaa !2660
  store i32 %151, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 207), align 4, !dbg !3549, !tbaa !2630
  %156 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3550, !tbaa !1367
  store i64 %156, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !3551, !tbaa !2529
  %157 = call i8* @zstrdup(i8* nonnull %8) #8, !dbg !3552
  store i8* %157, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 208), align 8, !dbg !3553, !tbaa !2695
  br label %170, !dbg !3554

; <label>:158:                                    ; preds = %26, %168, %44, %57, %110, %129, %198, %111
  %159 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3555, !tbaa !2049
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %159, i32 %1, i32 3) #8, !dbg !3556
  br label %166, !dbg !3557

; <label>:160:                                    ; preds = %150
  %161 = call i32* @__errno() #8, !dbg !3558
  %162 = load i32, i32* %161, align 4, !dbg !3558, !tbaa !672
  %163 = call i8* @strerror(i32 %162) #8, !dbg !3560
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.133, i64 0, i64 0), i8* %163, i32 %1) #8, !dbg !3561
  %164 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3555, !tbaa !2049
  call void @aeDeleteFileEvent(%struct.aeEventLoop* %164, i32 %1, i32 3) #8, !dbg !3556
  %165 = call i32 @close(i32 %151) #8, !dbg !3562
  br label %166, !dbg !3562

; <label>:166:                                    ; preds = %158, %160
  %167 = call i32 @close(i32 %1) #8, !dbg !3564
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3565, !tbaa !2418
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3566, !tbaa !2405
  br label %170, !dbg !3567

; <label>:168:                                    ; preds = %60, %30, %49, %83, %94, %107
  %169 = phi i8* [ %32, %30 ], [ %50, %49 ], [ %84, %83 ], [ %95, %94 ], [ %108, %107 ], [ %67, %60 ], !dbg !3568
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.134, i64 0, i64 0), i8* %169) #8, !dbg !3569
  call void @sdsfree(i8* %169) #8, !dbg !3570
  br label %158, !dbg !3571

; <label>:170:                                    ; preds = %111, %69, %30, %166, %155, %113, %109, %97, %86, %52, %13
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #7, !dbg !3572
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #7, !dbg !3572
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %8) #7, !dbg !3572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3572
  ret void, !dbg !3572

; <label>:171:                                    ; preds = %141
  %172 = call i32 @sleep(i32 1) #8, !dbg !3540
  %173 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3530, !tbaa !1367
  %174 = trunc i64 %173 to i32, !dbg !3532
  %175 = call i32 @getpid() #8, !dbg !3533
  %176 = sext i32 %175 to i64, !dbg !3534
  %177 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %8, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i64 0, i64 0), i32 %174, i64 %176) #8, !dbg !3535
  %178 = call i32 (i8*, i32, ...) @open(i8* nonnull %8, i32 2561, i32 420) #8, !dbg !3536
  %179 = icmp eq i32 %178, -1, !dbg !3537
  br i1 %179, label %180, label %150, !dbg !3539

; <label>:180:                                    ; preds = %171
  %181 = call i32 @sleep(i32 1) #8, !dbg !3540
  %182 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3530, !tbaa !1367
  %183 = trunc i64 %182 to i32, !dbg !3532
  %184 = call i32 @getpid() #8, !dbg !3533
  %185 = sext i32 %184 to i64, !dbg !3534
  %186 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %8, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i64 0, i64 0), i32 %183, i64 %185) #8, !dbg !3535
  %187 = call i32 (i8*, i32, ...) @open(i8* nonnull %8, i32 2561, i32 420) #8, !dbg !3536
  %188 = icmp eq i32 %187, -1, !dbg !3537
  br i1 %188, label %189, label %150, !dbg !3539

; <label>:189:                                    ; preds = %180
  %190 = call i32 @sleep(i32 1) #8, !dbg !3540
  %191 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3530, !tbaa !1367
  %192 = trunc i64 %191 to i32, !dbg !3532
  %193 = call i32 @getpid() #8, !dbg !3533
  %194 = sext i32 %193 to i64, !dbg !3534
  %195 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %8, i64 256, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.131, i64 0, i64 0), i32 %192, i64 %194) #8, !dbg !3535
  %196 = call i32 (i8*, i32, ...) @open(i8* nonnull %8, i32 2561, i32 420) #8, !dbg !3536
  %197 = icmp eq i32 %196, -1, !dbg !3537
  br i1 %197, label %198, label %150, !dbg !3539

; <label>:198:                                    ; preds = %189
  %199 = call i32 @sleep(i32 1) #8, !dbg !3540
  %200 = call i32* @__errno() #8, !dbg !3573
  %201 = load i32, i32* %200, align 4, !dbg !3573, !tbaa !672
  %202 = call i8* @strerror(i32 %201) #8, !dbg !3576
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.132, i64 0, i64 0), i8* %202) #8, !dbg !3577
  br label %158, !dbg !3578
}

; Function Attrs: noredzone
declare dso_local i32 @getsockopt(i32, i32, i32, i8*, i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @sdsfromlonglong(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @getpid() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @zstrdup(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @connectWithMaster() local_unnamed_addr #0 !dbg !3579 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3582, !tbaa !758
  %2 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 197), align 8, !dbg !3583, !tbaa !3584
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 30), align 8, !dbg !3585, !tbaa !3586
  %4 = icmp eq i32 %3, 0, !dbg !3585
  %5 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 29, i64 0), align 8, !dbg !3585
  %6 = select i1 %4, i8* null, i8* %5, !dbg !3585
  %7 = tail call i32 @anetTcpNonBlockBestEffortBindConnect(i8* null, i8* %1, i32 %2, i8* %6) #8, !dbg !3587
  %8 = icmp eq i32 %7, -1, !dbg !3589
  br i1 %8, label %9, label %13, !dbg !3591

; <label>:9:                                      ; preds = %0
  %10 = tail call i32* @__errno() #8, !dbg !3592
  %11 = load i32, i32* %10, align 4, !dbg !3592, !tbaa !672
  %12 = tail call i8* @strerror(i32 %11) #8, !dbg !3594
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.135, i64 0, i64 0), i8* %12) #8, !dbg !3595
  br label %21, !dbg !3596

; <label>:13:                                     ; preds = %0
  %14 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3597, !tbaa !2049
  %15 = tail call i32 @aeCreateFileEvent(%struct.aeEventLoop* %14, i32 %7, i32 3, void (%struct.aeEventLoop*, i32, i8*, i32)* nonnull @syncWithMaster, i8* null) #8, !dbg !3599
  %16 = icmp eq i32 %15, -1, !dbg !3600
  br i1 %16, label %17, label %19, !dbg !3601

; <label>:17:                                     ; preds = %13
  %18 = tail call i32 @close(i32 %7) #8, !dbg !3602
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.136, i64 0, i64 0)) #8, !dbg !3604
  br label %21, !dbg !3605

; <label>:19:                                     ; preds = %13
  %20 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3606, !tbaa !1367
  store i64 %20, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !3607, !tbaa !2529
  store i32 %7, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3608, !tbaa !2418
  store i32 2, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3609, !tbaa !2405
  br label %21, !dbg !3610

; <label>:21:                                     ; preds = %19, %17, %9
  %22 = phi i32 [ -1, %9 ], [ -1, %17 ], [ 0, %19 ], !dbg !3611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3612
  ret i32 %22, !dbg !3612
}

; Function Attrs: noredzone
declare dso_local i32 @anetTcpNonBlockBestEffortBindConnect(i8*, i8*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @undoConnectWithMaster() local_unnamed_addr #0 !dbg !2590 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3613, !tbaa !2418
  %2 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3615, !tbaa !2049
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %2, i32 %1, i32 3) #8, !dbg !3616
  %3 = tail call i32 @close(i32 %1) #8, !dbg !3617
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3618, !tbaa !2418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3619
  ret void, !dbg !3619
}

; Function Attrs: noredzone nounwind
define dso_local void @replicationAbortSyncTransfer() local_unnamed_addr #0 !dbg !3620 {
  %1 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3621, !tbaa !2405
  %2 = icmp eq i32 %1, 14, !dbg !3621
  br i1 %2, label %4, label %3, !dbg !3621

; <label>:3:                                      ; preds = %0
  tail call void @_serverAssert(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.137, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 1951) #8, !dbg !3621
  tail call void @_exit(i32 1) #9, !dbg !3621
  unreachable, !dbg !3621

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3622, !tbaa !2418
  %6 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3625, !tbaa !2049
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %6, i32 %5, i32 3) #8, !dbg !3626
  %7 = tail call i32 @close(i32 %5) #8, !dbg !3627
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3628, !tbaa !2418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3629
  %8 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 207), align 4, !dbg !3630, !tbaa !2630
  %9 = tail call i32 @close(i32 %8) #8, !dbg !3631
  %10 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 208), align 8, !dbg !3632, !tbaa !2695
  %11 = tail call i32 @unlink(i8* %10) #8, !dbg !3633
  %12 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 208), align 8, !dbg !3634, !tbaa !2695
  tail call void @zfree(i8* %12) #8, !dbg !3635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3636
  ret void, !dbg !3636
}

; Function Attrs: noredzone
declare dso_local i32 @unlink(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationSetMaster(i8*, i32) local_unnamed_addr #0 !dbg !3637 {
  %3 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3646, !tbaa !758
  %4 = icmp eq i8* %3, null, !dbg !3647
  tail call void @sdsfree(i8* %3) #8, !dbg !3648
  %5 = tail call i8* @sdsnew(i8* %0) #8, !dbg !3649
  store i8* %5, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3650, !tbaa !758
  store i32 %1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 197), align 8, !dbg !3651, !tbaa !3584
  %6 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3652, !tbaa !2096
  %7 = icmp eq %struct.client* %6, null, !dbg !3654
  br i1 %7, label %9, label %8, !dbg !3655

; <label>:8:                                      ; preds = %2
  tail call void @freeClient(%struct.client* nonnull %6) #8, !dbg !3656
  br label %9, !dbg !3658

; <label>:9:                                      ; preds = %2, %8
  tail call void @disconnectAllBlockedClients() #8, !dbg !3659
  tail call void @disconnectSlaves() #8, !dbg !3660
  %10 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3661, !tbaa !2405
  switch i32 %10, label %12 [
    i32 14, label %11
    i32 2, label %15
  ], !dbg !3663

; <label>:11:                                     ; preds = %9
  tail call void @replicationAbortSyncTransfer() #8, !dbg !3664
  br label %19, !dbg !3665

; <label>:12:                                     ; preds = %9
  %13 = add i32 %10, -3, !dbg !3666
  %14 = icmp ugt i32 %13, 10, !dbg !3666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3668
  br i1 %14, label %20, label %15, !dbg !3669

; <label>:15:                                     ; preds = %12, %9
  %16 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3670, !tbaa !2418
  %17 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3673, !tbaa !2049
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %17, i32 %16, i32 3) #8, !dbg !3674
  %18 = tail call i32 @close(i32 %16) #8, !dbg !3675
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3676, !tbaa !2418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3677
  br label %19

; <label>:19:                                     ; preds = %15, %11
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3678, !tbaa !2405
  br label %20, !dbg !3679

; <label>:20:                                     ; preds = %12, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3680
  br i1 %4, label %21, label %22, !dbg !3681

; <label>:21:                                     ; preds = %20
  tail call void @replicationCacheMasterUsingMyself() #10, !dbg !3682
  br label %22, !dbg !3682

; <label>:22:                                     ; preds = %21, %20
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3684, !tbaa !2405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3685
  ret void, !dbg !3685
}

; Function Attrs: noredzone
declare dso_local void @disconnectAllBlockedClients() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationCacheMasterUsingMyself() local_unnamed_addr #0 !dbg !3686 {
  %1 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !3687, !tbaa !524
  store i64 %1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 219), align 8, !dbg !3688, !tbaa !2452
  %2 = tail call %struct.client* @createClient(i32 -1) #8, !dbg !3692
  store %struct.client* %2, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3693, !tbaa !2096
  %3 = getelementptr inbounds %struct.client, %struct.client* %2, i64 0, i32 21, !dbg !3694
  %4 = load i32, i32* %3, align 8, !dbg !3695, !tbaa !1089
  %5 = or i32 %4, 2, !dbg !3695
  store i32 %5, i32* %3, align 8, !dbg !3695, !tbaa !1089
  %6 = getelementptr inbounds %struct.client, %struct.client* %2, i64 0, i32 22, !dbg !3696
  store i32 1, i32* %6, align 4, !dbg !3697, !tbaa !2450
  %7 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 219), align 8, !dbg !3698, !tbaa !2452
  %8 = getelementptr inbounds %struct.client, %struct.client* %2, i64 0, i32 30, !dbg !3699
  store i64 %7, i64* %8, align 8, !dbg !3700, !tbaa !2020
  %9 = getelementptr inbounds %struct.client, %struct.client* %2, i64 0, i32 29, !dbg !3701
  store i64 %7, i64* %9, align 8, !dbg !3702, !tbaa !2457
  %10 = getelementptr inbounds %struct.client, %struct.client* %2, i64 0, i32 34, i64 0, !dbg !3703
  %11 = tail call i8* @memcpy(i8* nonnull %10, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 218, i64 0), i64 41) #8, !dbg !3704
  %12 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3705, !tbaa !2096
  %13 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 30, !dbg !3706
  %14 = load i64, i64* %13, align 8, !dbg !3706, !tbaa !2020
  %15 = icmp eq i64 %14, -1, !dbg !3707
  br i1 %15, label %16, label %20, !dbg !3708

; <label>:16:                                     ; preds = %0
  %17 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 21, !dbg !3709
  %18 = load i32, i32* %17, align 8, !dbg !3710, !tbaa !1089
  %19 = or i32 %18, 65536, !dbg !3710
  store i32 %19, i32* %17, align 8, !dbg !3710, !tbaa !1089
  br label %20, !dbg !3711

; <label>:20:                                     ; preds = %0, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3712
  %21 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 34, i64 0, !dbg !3713
  %22 = tail call i8* @memcpy(i8* nonnull %21, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 41) #8, !dbg !3714
  %23 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3715, !tbaa !2096
  tail call void @unlinkClient(%struct.client* %23) #8, !dbg !3716
  %24 = load i64, i64* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199) to i64*), align 8, !dbg !3717, !tbaa !2096
  store i64 %24, i64* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200) to i64*), align 8, !dbg !3718, !tbaa !3035
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3719, !tbaa !2096
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([168 x i8], [168 x i8]* @.str.158, i64 0, i64 0)) #8, !dbg !3720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3721
  ret void, !dbg !3721
}

; Function Attrs: noredzone nounwind
define dso_local void @replicationUnsetMaster() local_unnamed_addr #0 !dbg !3722 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3723, !tbaa !758
  %2 = icmp eq i8* %1, null, !dbg !3725
  br i1 %2, label %32, label %3, !dbg !3726

; <label>:3:                                      ; preds = %0
  tail call void @sdsfree(i8* nonnull %1) #8, !dbg !3727
  store i8* null, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3728, !tbaa !758
  %4 = tail call i8* @memcpy(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 41) #8, !dbg !3729
  %5 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !3731, !tbaa !524
  %6 = add nsw i64 %5, 1, !dbg !3732
  store i64 %6, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !3733, !tbaa !1316
  tail call void @getRandomHexChars(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 40) #8, !dbg !3734
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 40), align 4, !dbg !3736, !tbaa !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3737
  %7 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !3738, !tbaa !1316
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i64 %7, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0)) #8, !dbg !3739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3740
  %8 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3741, !tbaa !2096
  %9 = icmp eq %struct.client* %8, null, !dbg !3743
  br i1 %9, label %11, label %10, !dbg !3744

; <label>:10:                                     ; preds = %3
  tail call void @freeClient(%struct.client* nonnull %8) #8, !dbg !3745
  br label %11, !dbg !3745

; <label>:11:                                     ; preds = %3, %10
  %12 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3746, !tbaa !3035
  %13 = icmp eq %struct.client* %12, null, !dbg !3748
  br i1 %13, label %19, label %14, !dbg !3749

; <label>:14:                                     ; preds = %11
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.159, i64 0, i64 0)) #8, !dbg !3750
  %15 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3751, !tbaa !3035
  %16 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 21, !dbg !3752
  %17 = load i32, i32* %16, align 8, !dbg !3753, !tbaa !1089
  %18 = and i32 %17, -3, !dbg !3753
  store i32 %18, i32* %16, align 8, !dbg !3753, !tbaa !1089
  tail call void @freeClient(%struct.client* %15) #8, !dbg !3754
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3755, !tbaa !3035
  br label %19, !dbg !3756

; <label>:19:                                     ; preds = %11, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3756
  %20 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3757, !tbaa !2405
  switch i32 %20, label %22 [
    i32 14, label %21
    i32 2, label %25
  ], !dbg !3759

; <label>:21:                                     ; preds = %19
  tail call void @replicationAbortSyncTransfer() #8, !dbg !3760
  br label %29, !dbg !3761

; <label>:22:                                     ; preds = %19
  %23 = add i32 %20, -3, !dbg !3762
  %24 = icmp ugt i32 %23, 10, !dbg !3762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3764
  br i1 %24, label %30, label %25, !dbg !3765

; <label>:25:                                     ; preds = %22, %19
  %26 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3766, !tbaa !2418
  %27 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !3769, !tbaa !2049
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %27, i32 %26, i32 3) #8, !dbg !3770
  %28 = tail call i32 @close(i32 %26) #8, !dbg !3771
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !3772, !tbaa !2418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3773
  br label %29

; <label>:29:                                     ; preds = %25, %21
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3774, !tbaa !2405
  br label %30, !dbg !3775

; <label>:30:                                     ; preds = %22, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3776
  tail call void @disconnectSlaves() #8, !dbg !3777
  store i32 0, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3778, !tbaa !2405
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !3779, !tbaa !770
  %31 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3780, !tbaa !1367
  store i64 %31, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 189), align 8, !dbg !3781, !tbaa !3782
  br label %32, !dbg !3783

; <label>:32:                                     ; preds = %0, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3783
  ret void, !dbg !3783
}

; Function Attrs: norecurse noredzone nounwind
define dso_local void @replicationHandleMasterDisconnection() local_unnamed_addr #5 !dbg !3784 {
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3785, !tbaa !2096
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3786, !tbaa !2405
  %1 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !3787, !tbaa !1367
  store i64 %1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 213), align 8, !dbg !3788, !tbaa !2808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3789
  ret void, !dbg !3789
}

; Function Attrs: noredzone nounwind
define dso_local void @replicaofCommand(%struct.client*) local_unnamed_addr #0 !dbg !3790 {
  %2 = alloca i64, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !3802, !tbaa !3804
  %4 = icmp eq i32 %3, 0, !dbg !3805
  br i1 %4, label %6, label %5, !dbg !3806

; <label>:5:                                      ; preds = %1
  tail call void @addReplyError(%struct.client* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.138, i64 0, i64 0)) #8, !dbg !3807
  br label %68, !dbg !3809

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !3810
  %8 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !3810, !tbaa !1297
  %9 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 1, !dbg !3811
  %10 = load %struct.redisObject*, %struct.redisObject** %9, align 8, !dbg !3811, !tbaa !779
  %11 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %10, i64 0, i32 2, !dbg !3812
  %12 = load i8*, i8** %11, align 8, !dbg !3812, !tbaa !638
  %13 = tail call i32 @strcasecmp(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.139, i64 0, i64 0)) #11, !dbg !3813
  %14 = icmp eq i32 %13, 0, !dbg !3813
  br i1 %14, label %15, label %28, !dbg !3814

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 2, !dbg !3815
  %17 = load %struct.redisObject*, %struct.redisObject** %16, align 8, !dbg !3815, !tbaa !779
  %18 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %17, i64 0, i32 2, !dbg !3816
  %19 = load i8*, i8** %18, align 8, !dbg !3816, !tbaa !638
  %20 = tail call i32 @strcasecmp(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.140, i64 0, i64 0)) #11, !dbg !3817
  %21 = icmp eq i32 %20, 0, !dbg !3817
  br i1 %21, label %22, label %28, !dbg !3818

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3819, !tbaa !758
  %24 = icmp eq i8* %23, null, !dbg !3820
  br i1 %24, label %66, label %25, !dbg !3821

; <label>:25:                                     ; preds = %22
  tail call void @replicationUnsetMaster() #10, !dbg !3822
  %26 = tail call i8* @sdsempty() #8, !dbg !3823
  %27 = tail call i8* @catClientInfoString(i8* %26, %struct.client* nonnull %0) #8, !dbg !3824
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.141, i64 0, i64 0), i8* %27) #8, !dbg !3826
  tail call void @sdsfree(i8* %27) #8, !dbg !3827
  br label %66, !dbg !3828

; <label>:28:                                     ; preds = %15, %6
  %29 = bitcast i64* %2 to i8*, !dbg !3829
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3829
  %30 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3830
  %31 = load i32, i32* %30, align 8, !dbg !3830, !tbaa !1089
  %32 = and i32 %31, 1, !dbg !3832
  %33 = icmp eq i32 %32, 0, !dbg !3832
  br i1 %33, label %35, label %34, !dbg !3833

; <label>:34:                                     ; preds = %28
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.142, i64 0, i64 0)) #8, !dbg !3834
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3836
  br label %68

; <label>:35:                                     ; preds = %28
  %36 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %8, i64 2, !dbg !3837
  %37 = load %struct.redisObject*, %struct.redisObject** %36, align 8, !dbg !3837, !tbaa !779
  %38 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %37, i64* nonnull %2, i8* null) #8, !dbg !3840
  %39 = icmp eq i32 %38, 0, !dbg !3841
  br i1 %39, label %40, label %65, !dbg !3842

; <label>:40:                                     ; preds = %35
  %41 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3843, !tbaa !758
  %42 = icmp eq i8* %41, null, !dbg !3845
  %43 = load %struct.redisObject**, %struct.redisObject*** %7, align 8, !dbg !3846, !tbaa !1297
  %44 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %43, i64 1
  %45 = load %struct.redisObject*, %struct.redisObject** %44, align 8, !dbg !3846, !tbaa !779
  %46 = getelementptr inbounds %struct.redisObject, %struct.redisObject* %45, i64 0, i32 2
  %47 = load i8*, i8** %46, align 8, !dbg !3846, !tbaa !638
  br i1 %42, label %58, label %48, !dbg !3847

; <label>:48:                                     ; preds = %40
  %49 = call i32 @strcasecmp(i8* nonnull %41, i8* %47) #11, !dbg !3848
  %50 = icmp eq i32 %49, 0, !dbg !3848
  br i1 %50, label %51, label %58, !dbg !3849

; <label>:51:                                     ; preds = %48
  %52 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 197), align 8, !dbg !3850, !tbaa !3584
  %53 = sext i32 %52 to i64, !dbg !3851
  %54 = load i64, i64* %2, align 8, !dbg !3852, !tbaa !676
  %55 = icmp eq i64 %54, %53, !dbg !3853
  br i1 %55, label %56, label %58, !dbg !3854

; <label>:56:                                     ; preds = %51
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.143, i64 0, i64 0)) #8, !dbg !3855
  %57 = call i8* @sdsnew(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.144, i64 0, i64 0)) #8, !dbg !3857
  call void @addReplySds(%struct.client* nonnull %0, i8* %57) #8, !dbg !3858
  br label %65, !dbg !3859

; <label>:58:                                     ; preds = %40, %48, %51
  %59 = load i64, i64* %2, align 8, !dbg !3860, !tbaa !676
  %60 = trunc i64 %59 to i32, !dbg !3860
  call void @replicationSetMaster(i8* %47, i32 %60) #10, !dbg !3861
  %61 = call i8* @sdsempty() #8, !dbg !3862
  %62 = call i8* @catClientInfoString(i8* %61, %struct.client* nonnull %0) #8, !dbg !3863
  %63 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3865, !tbaa !758
  %64 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 197), align 8, !dbg !3866, !tbaa !3584
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.145, i64 0, i64 0), i8* %63, i32 %64, i8* %62) #8, !dbg !3867
  call void @sdsfree(i8* %62) #8, !dbg !3868
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3836
  br label %66

; <label>:65:                                     ; preds = %35, %56
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #7, !dbg !3836
  br label %68

; <label>:66:                                     ; preds = %58, %22, %25
  %67 = load %struct.redisObject*, %struct.redisObject** getelementptr inbounds (%struct.sharedObjectsStruct, %struct.sharedObjectsStruct* @shared, i64 0, i32 1), align 8, !dbg !3869, !tbaa !2033
  call void @addReply(%struct.client* nonnull %0, %struct.redisObject* %67) #8, !dbg !3870
  br label %68, !dbg !3871

; <label>:68:                                     ; preds = %65, %34, %66, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3871
  ret void, !dbg !3871
}

; Function Attrs: noredzone
declare dso_local i8* @catClientInfoString(i8*, %struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @roleCommand(%struct.client*) local_unnamed_addr #0 !dbg !3872 {
  %2 = alloca %struct.listIter, align 8
  %3 = alloca [46 x i8], align 16
  %4 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3888, !tbaa !758
  %5 = icmp eq i8* %4, null, !dbg !3889
  br i1 %5, label %6, label %48, !dbg !3890

; <label>:6:                                      ; preds = %1
  %7 = bitcast %struct.listIter* %2 to i8*, !dbg !3891
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #7, !dbg !3891
  tail call void @addReplyMultiBulkLen(%struct.client* %0, i64 3) #8, !dbg !3893
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.146, i64 0, i64 0), i64 6) #8, !dbg !3894
  %8 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 179), align 8, !dbg !3895, !tbaa !524
  tail call void @addReplyLongLong(%struct.client* %0, i64 %8) #8, !dbg !3896
  %9 = tail call i8* @addDeferredMultiBulkLength(%struct.client* %0) #8, !dbg !3897
  %10 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !3899, !tbaa !558
  call void @listRewind(%struct.list* %10, %struct.listIter* nonnull %2) #8, !dbg !3901
  %11 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !3902
  %12 = icmp eq %struct.listNode* %11, null, !dbg !3904
  br i1 %12, label %45, label %13, !dbg !3904

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds [46 x i8], [46 x i8]* %3, i64 0, i64 0
  br label %15, !dbg !3904

; <label>:15:                                     ; preds = %13, %41
  %16 = phi %struct.listNode* [ %11, %13 ], [ %43, %41 ]
  %17 = phi i32 [ 0, %13 ], [ %42, %41 ]
  %18 = getelementptr inbounds %struct.listNode, %struct.listNode* %16, i64 0, i32 2, !dbg !3905
  %19 = bitcast i8** %18 to %struct.client**, !dbg !3905
  %20 = load %struct.client*, %struct.client** %19, align 8, !dbg !3905, !tbaa !797
  call void @llvm.lifetime.start.p0i8(i64 46, i8* nonnull %14) #7, !dbg !3907
  %21 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 36, i64 0, !dbg !3909
  %22 = load i8, i8* %21, align 1, !dbg !3911, !tbaa !470
  %23 = icmp eq i8 %22, 0, !dbg !3913
  br i1 %23, label %24, label %29, !dbg !3914

; <label>:24:                                     ; preds = %15
  %25 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 1, !dbg !3915
  %26 = load i32, i32* %25, align 8, !dbg !3915, !tbaa !479
  %27 = call i32 @anetPeerToString(i32 %26, i8* nonnull %14, i64 46, i32* null) #8, !dbg !3918
  %28 = icmp eq i32 %27, -1, !dbg !3919
  br i1 %28, label %41, label %29, !dbg !3920, !llvm.loop !3921

; <label>:29:                                     ; preds = %24, %15
  %30 = phi i8* [ %21, %15 ], [ %14, %24 ], !dbg !3923
  %31 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 23, !dbg !3924
  %32 = load i32, i32* %31, align 8, !dbg !3924, !tbaa !802
  %33 = icmp eq i32 %32, 9, !dbg !3926
  br i1 %33, label %34, label %41, !dbg !3927, !llvm.loop !3921

; <label>:34:                                     ; preds = %29
  call void @addReplyMultiBulkLen(%struct.client* %0, i64 3) #8, !dbg !3928
  call void @addReplyBulkCString(%struct.client* %0, i8* nonnull %30) #8, !dbg !3929
  %35 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 35, !dbg !3930
  %36 = load i32, i32* %35, align 4, !dbg !3930, !tbaa !498
  %37 = sext i32 %36 to i64, !dbg !3931
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %37) #8, !dbg !3932
  %38 = getelementptr inbounds %struct.client, %struct.client* %20, i64 0, i32 31, !dbg !3933
  %39 = load i64, i64* %38, align 8, !dbg !3933, !tbaa !1980
  call void @addReplyBulkLongLong(%struct.client* %0, i64 %39) #8, !dbg !3934
  %40 = add nsw i32 %17, 1, !dbg !3935
  br label %41, !dbg !3922

; <label>:41:                                     ; preds = %29, %24, %34
  %42 = phi i32 [ %40, %34 ], [ %17, %24 ], [ %17, %29 ], !dbg !3923
  call void @llvm.lifetime.end.p0i8(i64 46, i8* nonnull %14) #7, !dbg !3922
  %43 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !3902
  %44 = icmp eq %struct.listNode* %43, null, !dbg !3904
  br i1 %44, label %45, label %15, !dbg !3904

; <label>:45:                                     ; preds = %41, %6
  %46 = phi i32 [ 0, %6 ], [ %42, %41 ], !dbg !3892
  %47 = sext i32 %46 to i64, !dbg !3936
  call void @setDeferredMultiBulkLength(%struct.client* %0, i8* %9, i64 %47) #8, !dbg !3937
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #7, !dbg !3938
  br label %70, !dbg !3939

; <label>:48:                                     ; preds = %1
  tail call void @addReplyMultiBulkLen(%struct.client* %0, i64 5) #8, !dbg !3941
  tail call void @addReplyBulkCBuffer(%struct.client* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.147, i64 0, i64 0), i64 5) #8, !dbg !3942
  %49 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !3943, !tbaa !758
  tail call void @addReplyBulkCString(%struct.client* %0, i8* %49) #8, !dbg !3944
  %50 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 197), align 8, !dbg !3945, !tbaa !3584
  %51 = sext i32 %50 to i64, !dbg !3946
  tail call void @addReplyLongLong(%struct.client* %0, i64 %51) #8, !dbg !3947
  %52 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !3948, !tbaa !2405
  %53 = add i32 %52, -3, !dbg !3951
  %54 = icmp ugt i32 %53, 10, !dbg !3951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3952
  br i1 %54, label %55, label %61, !dbg !3953

; <label>:55:                                     ; preds = %48
  switch i32 %52, label %60 [
    i32 0, label %61
    i32 1, label %56
    i32 2, label %57
    i32 14, label %58
    i32 15, label %59
  ], !dbg !3954

; <label>:56:                                     ; preds = %55
  br label %61, !dbg !3956

; <label>:57:                                     ; preds = %55
  br label %61, !dbg !3958

; <label>:58:                                     ; preds = %55
  br label %61, !dbg !3959

; <label>:59:                                     ; preds = %55
  br label %61, !dbg !3960

; <label>:60:                                     ; preds = %55
  br label %61, !dbg !3961

; <label>:61:                                     ; preds = %55, %48, %56, %57, %58, %59, %60
  %62 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.154, i64 0, i64 0), %60 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.153, i64 0, i64 0), %59 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.152, i64 0, i64 0), %58 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.151, i64 0, i64 0), %57 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.150, i64 0, i64 0), %56 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i64 0, i64 0), %48 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.149, i64 0, i64 0), %55 ], !dbg !3962
  tail call void @addReplyBulkCString(%struct.client* %0, i8* nonnull %62) #8, !dbg !3963
  %63 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3964, !tbaa !2096
  %64 = icmp eq %struct.client* %63, null, !dbg !3965
  br i1 %64, label %68, label %65, !dbg !3965

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds %struct.client, %struct.client* %63, i64 0, i32 30, !dbg !3966
  %67 = load i64, i64* %66, align 8, !dbg !3966, !tbaa !2020
  br label %68, !dbg !3965

; <label>:68:                                     ; preds = %61, %65
  %69 = phi i64 [ %67, %65 ], [ -1, %61 ], !dbg !3965
  tail call void @addReplyLongLong(%struct.client* %0, i64 %69) #8, !dbg !3967
  br label %70

; <label>:70:                                     ; preds = %68, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3968
  ret void, !dbg !3968
}

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCBuffer(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @addDeferredMultiBulkLength(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkCString(%struct.client*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @addReplyBulkLongLong(%struct.client*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @setDeferredMultiBulkLength(%struct.client*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationCacheMaster(%struct.client*) local_unnamed_addr #0 !dbg !3969 {
  %2 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3973, !tbaa !2096
  %3 = icmp ne %struct.client* %2, null, !dbg !3973
  %4 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !3973
  %5 = icmp eq %struct.client* %4, null, !dbg !3973
  %6 = and i1 %3, %5, !dbg !3973
  br i1 %6, label %8, label %7, !dbg !3973

; <label>:7:                                      ; preds = %1
  tail call void @_serverAssert(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.156, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 2192) #8, !dbg !3973
  tail call void @_exit(i32 1) #9, !dbg !3973
  unreachable, !dbg !3973

; <label>:8:                                      ; preds = %1
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.157, i64 0, i64 0)) #8, !dbg !3974
  tail call void @unlinkClient(%struct.client* %0) #8, !dbg !3975
  %9 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3976, !tbaa !2096
  %10 = getelementptr inbounds %struct.client, %struct.client* %9, i64 0, i32 4, !dbg !3977
  %11 = load i8*, i8** %10, align 8, !dbg !3977, !tbaa !3978
  tail call void @sdsclear(i8* %11) #8, !dbg !3979
  %12 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3980, !tbaa !2096
  %13 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 6, !dbg !3981
  %14 = load i8*, i8** %13, align 8, !dbg !3981, !tbaa !3982
  tail call void @sdsclear(i8* %14) #8, !dbg !3983
  %15 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !3984, !tbaa !2096
  %16 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 30, !dbg !3985
  %17 = load i64, i64* %16, align 8, !dbg !3985, !tbaa !2020
  %18 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 29, !dbg !3986
  store i64 %17, i64* %18, align 8, !dbg !3987, !tbaa !2457
  %19 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !3988
  %20 = load i32, i32* %19, align 8, !dbg !3988, !tbaa !1089
  %21 = and i32 %20, 8, !dbg !3990
  %22 = icmp eq i32 %21, 0, !dbg !3990
  br i1 %22, label %24, label %23, !dbg !3991

; <label>:23:                                     ; preds = %8
  tail call void @discardTransaction(%struct.client* nonnull %0) #8, !dbg !3992
  br label %24, !dbg !3992

; <label>:24:                                     ; preds = %8, %23
  %25 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 15, !dbg !3993
  %26 = load %struct.list*, %struct.list** %25, align 8, !dbg !3993, !tbaa !3994
  tail call void @listEmpty(%struct.list* %26) #8, !dbg !3995
  %27 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 16, !dbg !3996
  %28 = bitcast i64* %27 to <2 x i64>*, !dbg !3997
  store <2 x i64> zeroinitializer, <2 x i64>* %28, align 8, !dbg !3997, !tbaa !470
  %29 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 47, !dbg !3998
  store i32 0, i32* %29, align 8, !dbg !3999, !tbaa !4000
  tail call void @resetClient(%struct.client* nonnull %0) #8, !dbg !4001
  %30 = load i64, i64* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199) to i64*), align 8, !dbg !4002, !tbaa !2096
  store i64 %30, i64* bitcast (%struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200) to i64*), align 8, !dbg !4003, !tbaa !3035
  %31 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 45, !dbg !4004
  %32 = load i8*, i8** %31, align 8, !dbg !4004, !tbaa !4006
  %33 = icmp eq i8* %32, null, !dbg !4007
  br i1 %33, label %35, label %34, !dbg !4008

; <label>:34:                                     ; preds = %24
  tail call void @sdsfree(i8* nonnull %32) #8, !dbg !4009
  store i8* null, i8** %31, align 8, !dbg !4011, !tbaa !4006
  br label %35, !dbg !4012

; <label>:35:                                     ; preds = %24, %34
  store %struct.client* null, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4013, !tbaa !2096
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4015, !tbaa !2405
  %36 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !4016, !tbaa !1367
  store i64 %36, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 213), align 8, !dbg !4017, !tbaa !2808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4019
  ret void, !dbg !4019
}

; Function Attrs: noredzone
declare dso_local void @unlinkClient(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @sdsclear(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @discardTransaction(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listEmpty(%struct.list*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @resetClient(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @linkClient(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @readQueryFromClient(%struct.aeEventLoop*, i32, i8*, i32) #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationScriptCacheInit() local_unnamed_addr #0 !dbg !4020 {
  store i32 10000, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 223), align 8, !dbg !4021, !tbaa !4022
  %1 = tail call %struct.dict* @dictCreate(%struct.dictType* nonnull @replScriptCacheDictType, i8* null) #8, !dbg !4023
  store %struct.dict* %1, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !4024, !tbaa !1603
  %2 = tail call %struct.list* @listCreate() #8, !dbg !4025
  store %struct.list* %2, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !4026, !tbaa !1606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4027
  ret void, !dbg !4027
}

; Function Attrs: noredzone
declare dso_local %struct.dict* @dictCreate(%struct.dictType*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.list* @listCreate() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @dictEmpty(%struct.dict*, void (i8*)*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @listRelease(%struct.list*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @replicationScriptCacheAdd(i8*) local_unnamed_addr #0 !dbg !4028 {
  %2 = tail call i8* @sdsdup(i8* %0) #8, !dbg !4040
  %3 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !4042, !tbaa !1606
  %4 = getelementptr inbounds %struct.list, %struct.list* %3, i64 0, i32 5, !dbg !4042
  %5 = load i64, i64* %4, align 8, !dbg !4042, !tbaa !559
  %6 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 223), align 8, !dbg !4043, !tbaa !4022
  %7 = zext i32 %6 to i64, !dbg !4044
  %8 = icmp eq i64 %5, %7, !dbg !4045
  br i1 %8, label %9, label %20, !dbg !4046

; <label>:9:                                      ; preds = %1
  %10 = getelementptr inbounds %struct.list, %struct.list* %3, i64 0, i32 1, !dbg !4047
  %11 = load %struct.listNode*, %struct.listNode** %10, align 8, !dbg !4047, !tbaa !4048
  %12 = getelementptr inbounds %struct.listNode, %struct.listNode* %11, i64 0, i32 2, !dbg !4050
  %13 = load i8*, i8** %12, align 8, !dbg !4050, !tbaa !797
  %14 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !4052, !tbaa !1603
  %15 = tail call i32 @dictDelete(%struct.dict* %14, i8* %13) #8, !dbg !4053
  %16 = icmp eq i32 %15, 0, !dbg !4055
  br i1 %16, label %18, label %17, !dbg !4055

; <label>:17:                                     ; preds = %9
  tail call void @_serverAssert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.162, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 2391) #8, !dbg !4055
  tail call void @_exit(i32 1) #9, !dbg !4055
  unreachable, !dbg !4055

; <label>:18:                                     ; preds = %9
  %19 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !4056, !tbaa !1606
  tail call void @listDelNode(%struct.list* %19, %struct.listNode* %11) #8, !dbg !4057
  br label %20, !dbg !4058

; <label>:20:                                     ; preds = %18, %1
  %21 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !4059, !tbaa !1603
  %22 = tail call i32 @dictAdd(%struct.dict* %21, i8* %2, i8* null) #8, !dbg !4060
  %23 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !4061, !tbaa !1606
  %24 = tail call %struct.list* @listAddNodeHead(%struct.list* %23, i8* %2) #8, !dbg !4062
  %25 = icmp eq i32 %22, 0, !dbg !4063
  br i1 %25, label %27, label %26, !dbg !4063

; <label>:26:                                     ; preds = %20
  tail call void @_serverAssert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.162, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 2398) #8, !dbg !4063
  tail call void @_exit(i32 1) #9, !dbg !4063
  unreachable, !dbg !4063

; <label>:27:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4064
  ret void, !dbg !4064
}

; Function Attrs: noredzone
declare dso_local i8* @sdsdup(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @dictDelete(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @dictAdd(%struct.dict*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.list* @listAddNodeHead(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @replicationScriptCacheExists(i8*) local_unnamed_addr #0 !dbg !4065 {
  %2 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !4071, !tbaa !1603
  %3 = tail call %struct.dictEntry* @dictFind(%struct.dict* %2, i8* %0) #8, !dbg !4072
  %4 = icmp ne %struct.dictEntry* %3, null, !dbg !4073
  %5 = zext i1 %4 to i32, !dbg !4073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4074
  ret i32 %5, !dbg !4074
}

; Function Attrs: noredzone
declare dso_local %struct.dictEntry* @dictFind(%struct.dict*, i8*) local_unnamed_addr #3

; Function Attrs: norecurse noredzone nounwind
define dso_local void @replicationRequestAckFromSlaves() local_unnamed_addr #5 !dbg !4075 {
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 225), align 8, !dbg !4076, !tbaa !4077
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4078
  ret void, !dbg !4078
}

; Function Attrs: noredzone nounwind
define dso_local i32 @replicationCountAcksByOffset(i64) local_unnamed_addr #0 !dbg !4079 {
  %2 = alloca %struct.listIter, align 8
  %3 = bitcast %struct.listIter* %2 to i8*, !dbg !4090
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4090
  %4 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4092, !tbaa !558
  call void @listRewind(%struct.list* %4, %struct.listIter* nonnull %2) #8, !dbg !4094
  %5 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !4095
  %6 = icmp eq %struct.listNode* %5, null, !dbg !4097
  br i1 %6, label %26, label %7, !dbg !4097

; <label>:7:                                      ; preds = %1, %22
  %8 = phi %struct.listNode* [ %24, %22 ], [ %5, %1 ]
  %9 = phi i32 [ %23, %22 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.listNode, %struct.listNode* %8, i64 0, i32 2, !dbg !4098
  %11 = bitcast i8** %10 to %struct.client**, !dbg !4098
  %12 = load %struct.client*, %struct.client** %11, align 8, !dbg !4098, !tbaa !797
  %13 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 23, !dbg !4100
  %14 = load i32, i32* %13, align 8, !dbg !4100, !tbaa !802
  %15 = icmp eq i32 %14, 9, !dbg !4102
  br i1 %15, label %16, label %22, !dbg !4103, !llvm.loop !4104

; <label>:16:                                     ; preds = %7
  %17 = getelementptr inbounds %struct.client, %struct.client* %12, i64 0, i32 31, !dbg !4106
  %18 = load i64, i64* %17, align 8, !dbg !4106, !tbaa !1980
  %19 = icmp sge i64 %18, %0, !dbg !4108
  %20 = zext i1 %19 to i32, !dbg !4109
  %21 = add nsw i32 %9, %20, !dbg !4109
  br label %22, !dbg !4105

; <label>:22:                                     ; preds = %7, %16
  %23 = phi i32 [ %21, %16 ], [ %9, %7 ], !dbg !4110
  %24 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !4095
  %25 = icmp eq %struct.listNode* %24, null, !dbg !4097
  br i1 %25, label %26, label %7, !dbg !4097

; <label>:26:                                     ; preds = %22, %1
  %27 = phi i32 [ 0, %1 ], [ %23, %22 ], !dbg !4091
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4112
  ret i32 %27, !dbg !4112
}

; Function Attrs: noredzone nounwind
define dso_local void @waitCommand(%struct.client*) local_unnamed_addr #0 !dbg !4113 {
  %2 = alloca %struct.listIter, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = bitcast i64* %3 to i8*, !dbg !4121
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !4121
  %6 = bitcast i64* %4 to i8*, !dbg !4122
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #7, !dbg !4122
  %7 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 41, !dbg !4123
  %8 = load i64, i64* %7, align 8, !dbg !4123, !tbaa !4124
  %9 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4126, !tbaa !758
  %10 = icmp eq i8* %9, null, !dbg !4128
  br i1 %10, label %12, label %11, !dbg !4129

; <label>:11:                                     ; preds = %1
  tail call void @addReplyError(%struct.client* nonnull %0, i8* getelementptr inbounds ([209 x i8], [209 x i8]* @.str.163, i64 0, i64 0)) #8, !dbg !4130
  br label %70, !dbg !4132

; <label>:12:                                     ; preds = %1
  %13 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 9, !dbg !4133
  %14 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4133, !tbaa !1297
  %15 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %14, i64 1, !dbg !4135
  %16 = load %struct.redisObject*, %struct.redisObject** %15, align 8, !dbg !4135, !tbaa !779
  %17 = call i32 @getLongFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %16, i64* nonnull %4, i8* null) #8, !dbg !4137
  %18 = icmp eq i32 %17, 0, !dbg !4138
  br i1 %18, label %19, label %70, !dbg !4139

; <label>:19:                                     ; preds = %12
  %20 = load %struct.redisObject**, %struct.redisObject*** %13, align 8, !dbg !4140, !tbaa !1297
  %21 = getelementptr inbounds %struct.redisObject*, %struct.redisObject** %20, i64 2, !dbg !4142
  %22 = load %struct.redisObject*, %struct.redisObject** %21, align 8, !dbg !4142, !tbaa !779
  %23 = call i32 @getTimeoutFromObjectOrReply(%struct.client* nonnull %0, %struct.redisObject* %22, i64* nonnull %3, i32 1) #8, !dbg !4144
  %24 = icmp eq i32 %23, 0, !dbg !4145
  br i1 %24, label %25, label %70, !dbg !4146

; <label>:25:                                     ; preds = %19
  %26 = load i64, i64* %7, align 8, !dbg !4147, !tbaa !4124
  %27 = bitcast %struct.listIter* %2 to i8*, !dbg !4150
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %27) #7, !dbg !4150
  %28 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4152, !tbaa !558
  call void @listRewind(%struct.list* %28, %struct.listIter* nonnull %2) #8, !dbg !4154
  %29 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !4155
  %30 = icmp eq %struct.listNode* %29, null, !dbg !4157
  br i1 %30, label %50, label %31, !dbg !4157

; <label>:31:                                     ; preds = %25, %46
  %32 = phi %struct.listNode* [ %48, %46 ], [ %29, %25 ]
  %33 = phi i32 [ %47, %46 ], [ 0, %25 ]
  %34 = getelementptr inbounds %struct.listNode, %struct.listNode* %32, i64 0, i32 2, !dbg !4158
  %35 = bitcast i8** %34 to %struct.client**, !dbg !4158
  %36 = load %struct.client*, %struct.client** %35, align 8, !dbg !4158, !tbaa !797
  %37 = getelementptr inbounds %struct.client, %struct.client* %36, i64 0, i32 23, !dbg !4160
  %38 = load i32, i32* %37, align 8, !dbg !4160, !tbaa !802
  %39 = icmp eq i32 %38, 9, !dbg !4161
  br i1 %39, label %40, label %46, !dbg !4162, !llvm.loop !4104

; <label>:40:                                     ; preds = %31
  %41 = getelementptr inbounds %struct.client, %struct.client* %36, i64 0, i32 31, !dbg !4163
  %42 = load i64, i64* %41, align 8, !dbg !4163, !tbaa !1980
  %43 = icmp sge i64 %42, %26, !dbg !4164
  %44 = zext i1 %43 to i32, !dbg !4165
  %45 = add nsw i32 %33, %44, !dbg !4165
  br label %46, !dbg !4166

; <label>:46:                                     ; preds = %40, %31
  %47 = phi i32 [ %45, %40 ], [ %33, %31 ], !dbg !4167
  %48 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !4155
  %49 = icmp eq %struct.listNode* %48, null, !dbg !4157
  br i1 %49, label %50, label %31, !dbg !4157

; <label>:50:                                     ; preds = %46, %25
  %51 = phi i32 [ 0, %25 ], [ %47, %46 ], !dbg !4151
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %27) #7, !dbg !4168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4169
  %52 = sext i32 %51 to i64, !dbg !4170
  %53 = load i64, i64* %4, align 8, !dbg !4172, !tbaa !676
  %54 = icmp sgt i64 %53, %52, !dbg !4174
  br i1 %54, label %55, label %60, !dbg !4175

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 21, !dbg !4176
  %57 = load i32, i32* %56, align 8, !dbg !4176, !tbaa !1089
  %58 = and i32 %57, 8, !dbg !4177
  %59 = icmp eq i32 %58, 0, !dbg !4177
  br i1 %59, label %61, label %60, !dbg !4178

; <label>:60:                                     ; preds = %55, %50
  call void @addReplyLongLong(%struct.client* %0, i64 %52) #8, !dbg !4179
  br label %70, !dbg !4181

; <label>:61:                                     ; preds = %55
  %62 = load i64, i64* %3, align 8, !dbg !4182, !tbaa !522
  %63 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 0, !dbg !4183
  store i64 %62, i64* %63, align 8, !dbg !4184, !tbaa !4185
  %64 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 10, !dbg !4186
  store i64 %8, i64* %64, align 8, !dbg !4187, !tbaa !4188
  %65 = trunc i64 %53 to i32, !dbg !4189
  %66 = getelementptr inbounds %struct.client, %struct.client* %0, i64 0, i32 40, i32 9, !dbg !4190
  store i32 %65, i32* %66, align 4, !dbg !4191, !tbaa !4192
  %67 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 224), align 8, !dbg !4193, !tbaa !4194
  %68 = bitcast %struct.client* %0 to i8*, !dbg !4195
  %69 = call %struct.list* @listAddNodeTail(%struct.list* %67, i8* %68) #8, !dbg !4196
  call void @blockClient(%struct.client* nonnull %0, i32 2) #8, !dbg !4197
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 225), align 8, !dbg !4198, !tbaa !4077
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4200
  br label %70, !dbg !4201

; <label>:70:                                     ; preds = %19, %12, %61, %60, %11
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #7, !dbg !4201
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !4201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4201
  ret void, !dbg !4201
}

; Function Attrs: noredzone
declare dso_local i32 @getTimeoutFromObjectOrReply(%struct.client*, %struct.redisObject*, i64*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @blockClient(%struct.client*, i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @unblockClientWaitingReplicas(%struct.client*) local_unnamed_addr #0 !dbg !4202 {
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 224), align 8, !dbg !4207, !tbaa !4194
  %3 = bitcast %struct.client* %0 to i8*, !dbg !4208
  %4 = tail call %struct.listNode* @listSearchKey(%struct.list* %2, i8* %3) #8, !dbg !4209
  %5 = icmp eq %struct.listNode* %4, null, !dbg !4211
  br i1 %5, label %6, label %7, !dbg !4211

; <label>:6:                                      ; preds = %1
  tail call void @_serverAssert(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.164, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 2502) #8, !dbg !4211
  tail call void @_exit(i32 1) #9, !dbg !4211
  unreachable, !dbg !4211

; <label>:7:                                      ; preds = %1
  %8 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 224), align 8, !dbg !4212, !tbaa !4194
  tail call void @listDelNode(%struct.list* %8, %struct.listNode* nonnull %4) #8, !dbg !4213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4214
  ret void, !dbg !4214
}

; Function Attrs: noredzone
declare dso_local %struct.listNode* @listSearchKey(%struct.list*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @processClientsWaitingReplicas() local_unnamed_addr #0 !dbg !4215 {
  %1 = alloca %struct.listIter, align 8
  %2 = alloca %struct.listIter, align 8
  %3 = bitcast %struct.listIter* %2 to i8*, !dbg !4228
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4228
  %4 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 224), align 8, !dbg !4229, !tbaa !4194
  call void @listRewind(%struct.list* %4, %struct.listIter* nonnull %2) #8, !dbg !4231
  %5 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !4232
  %6 = icmp eq %struct.listNode* %5, null, !dbg !4234
  br i1 %6, label %63, label %7, !dbg !4234

; <label>:7:                                      ; preds = %0
  %8 = bitcast %struct.listIter* %1 to i8*
  br label %9, !dbg !4234

; <label>:9:                                      ; preds = %7, %58
  %10 = phi %struct.listNode* [ %5, %7 ], [ %61, %58 ]
  %11 = phi i64 [ 0, %7 ], [ %60, %58 ]
  %12 = phi i32 [ 0, %7 ], [ %59, %58 ]
  %13 = getelementptr inbounds %struct.listNode, %struct.listNode* %10, i64 0, i32 2, !dbg !4235
  %14 = bitcast i8** %13 to %struct.client**, !dbg !4235
  %15 = load %struct.client*, %struct.client** %14, align 8, !dbg !4235, !tbaa !797
  %16 = icmp ne i64 %11, 0, !dbg !4237
  %17 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 40, i32 10
  %18 = load i64, i64* %17, align 8, !dbg !4238, !tbaa !4188
  %19 = icmp sgt i64 %11, %18, !dbg !4239
  %20 = and i1 %16, %19, !dbg !4240
  br i1 %20, label %21, label %27, !dbg !4240

; <label>:21:                                     ; preds = %9
  %22 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 40, i32 9, !dbg !4241
  %23 = load i32, i32* %22, align 4, !dbg !4241, !tbaa !4192
  %24 = icmp sgt i32 %12, %23, !dbg !4242
  br i1 %24, label %25, label %27, !dbg !4243

; <label>:25:                                     ; preds = %21
  call void @unblockClient(%struct.client* nonnull %15) #8, !dbg !4244
  %26 = sext i32 %12 to i64, !dbg !4246
  call void @addReplyLongLong(%struct.client* nonnull %15, i64 %26) #8, !dbg !4247
  br label %58, !dbg !4248

; <label>:27:                                     ; preds = %9, %21
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #7, !dbg !4251
  %28 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4253, !tbaa !558
  call void @listRewind(%struct.list* %28, %struct.listIter* nonnull %1) #8, !dbg !4255
  %29 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !4256
  %30 = icmp eq %struct.listNode* %29, null, !dbg !4258
  br i1 %30, label %50, label %31, !dbg !4258

; <label>:31:                                     ; preds = %27, %46
  %32 = phi %struct.listNode* [ %48, %46 ], [ %29, %27 ]
  %33 = phi i32 [ %47, %46 ], [ 0, %27 ]
  %34 = getelementptr inbounds %struct.listNode, %struct.listNode* %32, i64 0, i32 2, !dbg !4259
  %35 = bitcast i8** %34 to %struct.client**, !dbg !4259
  %36 = load %struct.client*, %struct.client** %35, align 8, !dbg !4259, !tbaa !797
  %37 = getelementptr inbounds %struct.client, %struct.client* %36, i64 0, i32 23, !dbg !4261
  %38 = load i32, i32* %37, align 8, !dbg !4261, !tbaa !802
  %39 = icmp eq i32 %38, 9, !dbg !4262
  br i1 %39, label %40, label %46, !dbg !4263, !llvm.loop !4104

; <label>:40:                                     ; preds = %31
  %41 = getelementptr inbounds %struct.client, %struct.client* %36, i64 0, i32 31, !dbg !4264
  %42 = load i64, i64* %41, align 8, !dbg !4264, !tbaa !1980
  %43 = icmp sge i64 %42, %18, !dbg !4265
  %44 = zext i1 %43 to i32, !dbg !4266
  %45 = add nsw i32 %33, %44, !dbg !4266
  br label %46, !dbg !4267

; <label>:46:                                     ; preds = %40, %31
  %47 = phi i32 [ %45, %40 ], [ %33, %31 ], !dbg !4268
  %48 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !4256
  %49 = icmp eq %struct.listNode* %48, null, !dbg !4258
  br i1 %49, label %50, label %31, !dbg !4258

; <label>:50:                                     ; preds = %46, %27
  %51 = phi i32 [ 0, %27 ], [ %47, %46 ], !dbg !4252
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #7, !dbg !4269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4270
  %52 = getelementptr inbounds %struct.client, %struct.client* %15, i64 0, i32 40, i32 9, !dbg !4272
  %53 = load i32, i32* %52, align 4, !dbg !4272, !tbaa !4192
  %54 = icmp slt i32 %51, %53, !dbg !4274
  br i1 %54, label %58, label %55, !dbg !4275

; <label>:55:                                     ; preds = %50
  %56 = load i64, i64* %17, align 8, !dbg !4276, !tbaa !4188
  call void @unblockClient(%struct.client* nonnull %15) #8, !dbg !4278
  %57 = sext i32 %51 to i64, !dbg !4279
  call void @addReplyLongLong(%struct.client* nonnull %15, i64 %57) #8, !dbg !4280
  br label %58, !dbg !4281

; <label>:58:                                     ; preds = %55, %50, %25
  %59 = phi i32 [ %12, %25 ], [ %51, %55 ], [ %12, %50 ], !dbg !4282
  %60 = phi i64 [ %11, %25 ], [ %56, %55 ], [ %11, %50 ], !dbg !4282
  %61 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !4232
  %62 = icmp eq %struct.listNode* %61, null, !dbg !4234
  br i1 %62, label %63, label %9, !dbg !4234, !llvm.loop !4283

; <label>:63:                                     ; preds = %58, %0
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #7, !dbg !4285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4285
  ret void, !dbg !4285
}

; Function Attrs: noredzone
declare dso_local void @unblockClient(%struct.client*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @replicationGetSlaveOffset() local_unnamed_addr #0 !dbg !4286 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4290, !tbaa !758
  %2 = icmp eq i8* %1, null, !dbg !4292
  br i1 %2, label %15, label %3, !dbg !4293

; <label>:3:                                      ; preds = %0
  %4 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4294, !tbaa !2096
  %5 = icmp eq %struct.client* %4, null, !dbg !4297
  br i1 %5, label %6, label %9, !dbg !4298

; <label>:6:                                      ; preds = %3
  %7 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 200), align 8, !dbg !4299, !tbaa !3035
  %8 = icmp eq %struct.client* %7, null, !dbg !4301
  br i1 %8, label %15, label %9, !dbg !4302

; <label>:9:                                      ; preds = %6, %3
  %10 = phi %struct.client* [ %4, %3 ], [ %7, %6 ]
  %11 = getelementptr inbounds %struct.client, %struct.client* %10, i64 0, i32 30, !dbg !4303
  %12 = load i64, i64* %11, align 8, !dbg !4305, !tbaa !2020
  %13 = icmp sgt i64 %12, 0, !dbg !4306
  %14 = select i1 %13, i64 %12, i64 0, !dbg !4306
  br label %15, !dbg !4306

; <label>:15:                                     ; preds = %9, %0, %6
  %16 = phi i64 [ 0, %6 ], [ 0, %0 ], [ %14, %9 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4307
  ret i64 %16, !dbg !4307
}

; Function Attrs: noredzone nounwind
define dso_local void @replicationCron() local_unnamed_addr #0 !dbg !417 {
  %1 = alloca %struct.listIter, align 8
  %2 = alloca %struct.listIter, align 8
  %3 = alloca [1 x %struct.redisObject*], align 8
  %4 = alloca %struct.listIter, align 8
  %5 = alloca %struct.listIter, align 8
  %6 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4308, !tbaa !758
  %7 = icmp eq i8* %6, null, !dbg !4310
  br i1 %7, label %33, label %8, !dbg !4311

; <label>:8:                                      ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4312, !tbaa !2405
  %10 = icmp eq i32 %9, 2, !dbg !4313
  br i1 %10, label %14, label %11, !dbg !4314

; <label>:11:                                     ; preds = %8
  %12 = add i32 %9, -3, !dbg !4315
  %13 = icmp ugt i32 %12, 10, !dbg !4315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4317
  br i1 %13, label %33, label %14, !dbg !4318

; <label>:14:                                     ; preds = %11, %8
  %15 = tail call i64 @time(i64* null) #8, !dbg !4319
  %16 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !4320, !tbaa !2529
  %17 = sub nsw i64 %15, %16, !dbg !4321
  %18 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 198), align 4, !dbg !4322, !tbaa !4323
  %19 = sext i32 %18 to i64, !dbg !4324
  %20 = icmp sgt i64 %17, %19, !dbg !4325
  br i1 %20, label %21, label %33, !dbg !4326

; <label>:21:                                     ; preds = %14
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.165, i64 0, i64 0)) #8, !dbg !4327
  %22 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4329, !tbaa !2405
  switch i32 %22, label %24 [
    i32 14, label %23
    i32 2, label %27
  ], !dbg !4331

; <label>:23:                                     ; preds = %21
  tail call void @replicationAbortSyncTransfer() #8, !dbg !4332
  br label %31, !dbg !4333

; <label>:24:                                     ; preds = %21
  %25 = add i32 %22, -3, !dbg !4334
  %26 = icmp ugt i32 %25, 10, !dbg !4334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4336
  br i1 %26, label %32, label %27, !dbg !4337

; <label>:27:                                     ; preds = %24, %21
  %28 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !4338, !tbaa !2418
  %29 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4341, !tbaa !2049
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %29, i32 %28, i32 3) #8, !dbg !4342
  %30 = tail call i32 @close(i32 %28) #8, !dbg !4343
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !4344, !tbaa !2418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4345
  br label %31

; <label>:31:                                     ; preds = %27, %23
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4346, !tbaa !2405
  br label %32, !dbg !4347

; <label>:32:                                     ; preds = %24, %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4348
  br label %33, !dbg !4349

; <label>:33:                                     ; preds = %11, %0, %32, %14
  %34 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4350, !tbaa !758
  %35 = icmp ne i8* %34, null, !dbg !4352
  %36 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4353
  %37 = icmp eq i32 %36, 14, !dbg !4354
  %38 = and i1 %35, %37, !dbg !4355
  br i1 %38, label %39, label %61, !dbg !4355

; <label>:39:                                     ; preds = %33
  %40 = tail call i64 @time(i64* null) #8, !dbg !4356
  %41 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 209), align 8, !dbg !4357, !tbaa !2529
  %42 = sub nsw i64 %40, %41, !dbg !4358
  %43 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 198), align 4, !dbg !4359, !tbaa !4323
  %44 = sext i32 %43 to i64, !dbg !4360
  %45 = icmp sgt i64 %42, %44, !dbg !4361
  br i1 %45, label %48, label %46, !dbg !4362

; <label>:46:                                     ; preds = %39
  %47 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4363
  br label %61, !dbg !4362

; <label>:48:                                     ; preds = %39
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.166, i64 0, i64 0)) #8, !dbg !4365
  %49 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4367, !tbaa !2405
  switch i32 %49, label %51 [
    i32 14, label %50
    i32 2, label %54
  ], !dbg !4369

; <label>:50:                                     ; preds = %48
  tail call void @replicationAbortSyncTransfer() #8, !dbg !4370
  br label %58, !dbg !4371

; <label>:51:                                     ; preds = %48
  %52 = add i32 %49, -3, !dbg !4372
  %53 = icmp ugt i32 %52, 10, !dbg !4372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4374
  br i1 %53, label %59, label %54, !dbg !4375

; <label>:54:                                     ; preds = %51, %48
  %55 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !4376, !tbaa !2418
  %56 = load %struct.aeEventLoop*, %struct.aeEventLoop** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 10), align 8, !dbg !4379, !tbaa !2049
  tail call void @aeDeleteFileEvent(%struct.aeEventLoop* %56, i32 %55, i32 3) #8, !dbg !4380
  %57 = tail call i32 @close(i32 %55) #8, !dbg !4381
  store i32 -1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 206), align 8, !dbg !4382, !tbaa !2418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4383
  br label %58

; <label>:58:                                     ; preds = %54, %50
  store i32 1, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4384, !tbaa !2405
  br label %59, !dbg !4385

; <label>:59:                                     ; preds = %51, %58
  %60 = phi i32 [ %49, %51 ], [ 1, %58 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4386
  br label %61, !dbg !4387

; <label>:61:                                     ; preds = %46, %59, %33
  %62 = phi i32 [ %47, %46 ], [ %60, %59 ], [ %36, %33 ], !dbg !4363
  %63 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4388, !tbaa !758
  %64 = icmp ne i8* %63, null, !dbg !4389
  %65 = icmp eq i32 %62, 15, !dbg !4390
  %66 = and i1 %64, %65, !dbg !4391
  br i1 %66, label %67, label %80, !dbg !4391

; <label>:67:                                     ; preds = %61
  %68 = tail call i64 @time(i64* null) #8, !dbg !4392
  %69 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4393, !tbaa !2096
  %70 = getelementptr inbounds %struct.client, %struct.client* %69, i64 0, i32 19, !dbg !4394
  %71 = load i64, i64* %70, align 8, !dbg !4394, !tbaa !3255
  %72 = sub nsw i64 %68, %71, !dbg !4395
  %73 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 198), align 4, !dbg !4396, !tbaa !4323
  %74 = sext i32 %73 to i64, !dbg !4397
  %75 = icmp sgt i64 %72, %74, !dbg !4398
  br i1 %75, label %76, label %78, !dbg !4399

; <label>:76:                                     ; preds = %67
  tail call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.167, i64 0, i64 0)) #8, !dbg !4400
  %77 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4402, !tbaa !2096
  tail call void @freeClient(%struct.client* %77) #8, !dbg !4403
  br label %78, !dbg !4404

; <label>:78:                                     ; preds = %67, %76
  %79 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 202), align 4, !dbg !4405, !tbaa !2405
  br label %80, !dbg !4405

; <label>:80:                                     ; preds = %78, %61
  %81 = phi i32 [ %79, %78 ], [ %62, %61 ], !dbg !4405
  %82 = icmp eq i32 %81, 1, !dbg !4407
  br i1 %82, label %83, label %89, !dbg !4408

; <label>:83:                                     ; preds = %80
  %84 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4409, !tbaa !758
  %85 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 197), align 8, !dbg !4411, !tbaa !3584
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.168, i64 0, i64 0), i8* %84, i32 %85) #8, !dbg !4412
  %86 = tail call i32 @connectWithMaster() #10, !dbg !4413
  %87 = icmp eq i32 %86, 0, !dbg !4415
  br i1 %87, label %88, label %89, !dbg !4416

; <label>:88:                                     ; preds = %83
  tail call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.169, i64 0, i64 0)) #8, !dbg !4417
  br label %89, !dbg !4419

; <label>:89:                                     ; preds = %83, %88, %80
  %90 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4420, !tbaa !758
  %91 = icmp ne i8* %90, null, !dbg !4422
  %92 = load %struct.client*, %struct.client** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 199), align 8, !dbg !4423
  %93 = icmp ne %struct.client* %92, null, !dbg !4424
  %94 = and i1 %91, %93, !dbg !4425
  br i1 %94, label %95, label %106, !dbg !4425

; <label>:95:                                     ; preds = %89
  %96 = getelementptr inbounds %struct.client, %struct.client* %92, i64 0, i32 21, !dbg !4426
  %97 = load i32, i32* %96, align 8, !dbg !4426, !tbaa !1089
  %98 = and i32 %97, 65536, !dbg !4427
  %99 = icmp eq i32 %98, 0, !dbg !4427
  br i1 %99, label %100, label %106, !dbg !4428

; <label>:100:                                    ; preds = %95
  %101 = or i32 %97, 8192, !dbg !4431
  store i32 %101, i32* %96, align 8, !dbg !4431, !tbaa !1089
  tail call void @addReplyMultiBulkLen(%struct.client* nonnull %92, i64 3) #8, !dbg !4432
  tail call void @addReplyBulkCString(%struct.client* nonnull %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0)) #8, !dbg !4433
  tail call void @addReplyBulkCString(%struct.client* nonnull %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.155, i64 0, i64 0)) #8, !dbg !4434
  %102 = getelementptr inbounds %struct.client, %struct.client* %92, i64 0, i32 30, !dbg !4435
  %103 = load i64, i64* %102, align 8, !dbg !4435, !tbaa !2020
  tail call void @addReplyBulkLongLong(%struct.client* nonnull %92, i64 %103) #8, !dbg !4436
  %104 = load i32, i32* %96, align 8, !dbg !4437, !tbaa !1089
  %105 = and i32 %104, -8193, !dbg !4437
  store i32 %105, i32* %96, align 8, !dbg !4437, !tbaa !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4438
  br label %106, !dbg !4439

; <label>:106:                                    ; preds = %95, %100, %89
  %107 = bitcast %struct.listIter* %2 to i8*, !dbg !4440
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %107) #7, !dbg !4440
  %108 = bitcast [1 x %struct.redisObject*]* %3 to i8*, !dbg !4441
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %108) #7, !dbg !4441
  %109 = load i64, i64* @replicationCron.replication_cron_loops, align 8, !dbg !4443, !tbaa !522
  %110 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 182), align 4, !dbg !4444, !tbaa !4445
  %111 = sext i32 %110 to i64, !dbg !4446
  %112 = srem i64 %109, %111, !dbg !4447
  %113 = icmp eq i64 %112, 0, !dbg !4448
  br i1 %113, label %114, label %135, !dbg !4449

; <label>:114:                                    ; preds = %106
  %115 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4450, !tbaa !558
  %116 = getelementptr inbounds %struct.list, %struct.list* %115, i64 0, i32 5, !dbg !4450
  %117 = load i64, i64* %116, align 8, !dbg !4450, !tbaa !559
  %118 = icmp eq i64 %117, 0, !dbg !4450
  br i1 %118, label %135, label %119, !dbg !4451

; <label>:119:                                    ; preds = %114
  %120 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 258), align 4, !dbg !4452, !tbaa !3804
  %121 = icmp eq i32 %120, 0, !dbg !4453
  br i1 %121, label %130, label %122, !dbg !4454

; <label>:122:                                    ; preds = %119
  %123 = load %struct.clusterState*, %struct.clusterState** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 261), align 8, !dbg !4455, !tbaa !4456
  %124 = getelementptr inbounds %struct.clusterState, %struct.clusterState* %123, i64 0, i32 17, !dbg !4457
  %125 = load i64, i64* %124, align 8, !dbg !4457, !tbaa !4458
  %126 = icmp eq i64 %125, 0, !dbg !4460
  br i1 %126, label %130, label %127, !dbg !4461

; <label>:127:                                    ; preds = %122
  %128 = tail call i32 @clientsArePaused() #8, !dbg !4462
  %129 = icmp eq i32 %128, 0, !dbg !4461
  br i1 %129, label %130, label %135, !dbg !4463

; <label>:130:                                    ; preds = %127, %119, %122
  %131 = tail call %struct.redisObject* @createStringObject(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.114, i64 0, i64 0), i64 4) #8, !dbg !4464
  %132 = getelementptr inbounds [1 x %struct.redisObject*], [1 x %struct.redisObject*]* %3, i64 0, i64 0, !dbg !4467
  store %struct.redisObject* %131, %struct.redisObject** %132, align 8, !dbg !4468, !tbaa !779
  %133 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4469, !tbaa !558
  %134 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 181), align 8, !dbg !4470, !tbaa !770
  call void @replicationFeedSlaves(%struct.list* %133, i32 %134, %struct.redisObject** nonnull %132, i32 1) #10, !dbg !4471
  tail call void @decrRefCount(%struct.redisObject* %131) #8, !dbg !4472
  br label %135, !dbg !4473

; <label>:135:                                    ; preds = %127, %130, %114, %106
  %136 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4474, !tbaa !558
  call void @listRewind(%struct.list* %136, %struct.listIter* nonnull %2) #8, !dbg !4476
  %137 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !4477
  %138 = icmp eq %struct.listNode* %137, null, !dbg !4479
  br i1 %138, label %159, label %139, !dbg !4479

; <label>:139:                                    ; preds = %135, %156
  %140 = phi %struct.listNode* [ %157, %156 ], [ %137, %135 ]
  %141 = getelementptr inbounds %struct.listNode, %struct.listNode* %140, i64 0, i32 2, !dbg !4480
  %142 = bitcast i8** %141 to %struct.client**, !dbg !4480
  %143 = load %struct.client*, %struct.client** %142, align 8, !dbg !4480, !tbaa !797
  %144 = getelementptr inbounds %struct.client, %struct.client* %143, i64 0, i32 23, !dbg !4482
  %145 = load i32, i32* %144, align 8, !dbg !4482, !tbaa !802
  %146 = icmp eq i32 %145, 6, !dbg !4483
  br i1 %146, label %152, label %147, !dbg !4484

; <label>:147:                                    ; preds = %139
  %148 = icmp eq i32 %145, 7, !dbg !4485
  %149 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 165), align 4, !dbg !4486
  %150 = icmp ne i32 %149, 2, !dbg !4487
  %151 = and i1 %148, %150, !dbg !4488
  br i1 %151, label %152, label %156, !dbg !4489

; <label>:152:                                    ; preds = %139, %147
  %153 = getelementptr inbounds %struct.client, %struct.client* %143, i64 0, i32 1, !dbg !4490
  %154 = load i32, i32* %153, align 8, !dbg !4490, !tbaa !479
  %155 = call i64 @write(i32 %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), i64 1) #8, !dbg !4494
  br label %156, !dbg !4495

; <label>:156:                                    ; preds = %152, %147
  %157 = call %struct.listNode* @listNext(%struct.listIter* nonnull %2) #8, !dbg !4477
  %158 = icmp eq %struct.listNode* %157, null, !dbg !4479
  br i1 %158, label %159, label %139, !dbg !4479, !llvm.loop !4496

; <label>:159:                                    ; preds = %156, %135
  %160 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4498, !tbaa !558
  %161 = getelementptr inbounds %struct.list, %struct.list* %160, i64 0, i32 5, !dbg !4498
  %162 = load i64, i64* %161, align 8, !dbg !4498, !tbaa !559
  %163 = icmp eq i64 %162, 0, !dbg !4498
  br i1 %163, label %198, label %164, !dbg !4499

; <label>:164:                                    ; preds = %159
  %165 = bitcast %struct.listIter* %4 to i8*, !dbg !4500
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %165) #7, !dbg !4500
  call void @listRewind(%struct.list* %160, %struct.listIter* nonnull %4) #8, !dbg !4502
  %166 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #8, !dbg !4503
  %167 = icmp eq %struct.listNode* %166, null, !dbg !4505
  br i1 %167, label %194, label %168, !dbg !4505

; <label>:168:                                    ; preds = %164, %191
  %169 = phi %struct.listNode* [ %192, %191 ], [ %166, %164 ]
  %170 = getelementptr inbounds %struct.listNode, %struct.listNode* %169, i64 0, i32 2, !dbg !4506
  %171 = bitcast i8** %170 to %struct.client**, !dbg !4506
  %172 = load %struct.client*, %struct.client** %171, align 8, !dbg !4506, !tbaa !797
  %173 = getelementptr inbounds %struct.client, %struct.client* %172, i64 0, i32 23, !dbg !4508
  %174 = load i32, i32* %173, align 8, !dbg !4508, !tbaa !802
  %175 = icmp eq i32 %174, 9, !dbg !4510
  br i1 %175, label %176, label %191, !dbg !4511, !llvm.loop !4512

; <label>:176:                                    ; preds = %168
  %177 = getelementptr inbounds %struct.client, %struct.client* %172, i64 0, i32 21, !dbg !4514
  %178 = load i32, i32* %177, align 8, !dbg !4514, !tbaa !1089
  %179 = and i32 %178, 65536, !dbg !4516
  %180 = icmp eq i32 %179, 0, !dbg !4516
  br i1 %180, label %181, label %191, !dbg !4517, !llvm.loop !4512

; <label>:181:                                    ; preds = %176
  %182 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !4518, !tbaa !1367
  %183 = getelementptr inbounds %struct.client, %struct.client* %172, i64 0, i32 32, !dbg !4520
  %184 = load i64, i64* %183, align 8, !dbg !4520, !tbaa !1370
  %185 = sub nsw i64 %182, %184, !dbg !4521
  %186 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 198), align 4, !dbg !4522, !tbaa !4323
  %187 = sext i32 %186 to i64, !dbg !4523
  %188 = icmp sgt i64 %185, %187, !dbg !4524
  br i1 %188, label %189, label %191, !dbg !4525

; <label>:189:                                    ; preds = %181
  %190 = call i8* @replicationGetSlaveName(%struct.client* nonnull %172) #10, !dbg !4526
  call void (i32, i8*, ...) @serverLog(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.170, i64 0, i64 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @replicationGetSlaveName.buf, i64 0, i64 0)) #8, !dbg !4528
  call void @freeClient(%struct.client* nonnull %172) #8, !dbg !4529
  br label %191, !dbg !4530

; <label>:191:                                    ; preds = %181, %189, %176, %168
  %192 = call %struct.listNode* @listNext(%struct.listIter* nonnull %4) #8, !dbg !4503
  %193 = icmp eq %struct.listNode* %192, null, !dbg !4505
  br i1 %193, label %194, label %168, !dbg !4505

; <label>:194:                                    ; preds = %191, %164
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %165) #7, !dbg !4531
  %195 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4532, !tbaa !558
  %196 = getelementptr inbounds %struct.list, %struct.list* %195, i64 0, i32 5
  %197 = load i64, i64* %196, align 8, !dbg !4532, !tbaa !559
  br label %198, !dbg !4533

; <label>:198:                                    ; preds = %159, %194
  %199 = phi i64 [ 0, %159 ], [ %197, %194 ], !dbg !4532
  %200 = icmp eq i64 %199, 0, !dbg !4534
  %201 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 188), align 8, !dbg !4535
  %202 = icmp ne i64 %201, 0, !dbg !4536
  %203 = and i1 %200, %202, !dbg !4537
  %204 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !4538
  %205 = icmp ne i8* %204, null, !dbg !4539
  %206 = and i1 %203, %205, !dbg !4537
  %207 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 196), align 8, !dbg !4540
  %208 = icmp eq i8* %207, null, !dbg !4541
  %209 = and i1 %206, %208, !dbg !4537
  br i1 %209, label %210, label %229, !dbg !4537

; <label>:210:                                    ; preds = %198
  %211 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !4542, !tbaa !1367
  %212 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 189), align 8, !dbg !4543, !tbaa !3782
  %213 = sub nsw i64 %211, %212, !dbg !4544
  %214 = icmp sgt i64 %213, %201, !dbg !4546
  br i1 %214, label %215, label %229, !dbg !4548

; <label>:215:                                    ; preds = %210
  call void @getRandomHexChars(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 0), i64 40) #8, !dbg !4549
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 177, i64 40), align 4, !dbg !4552, !tbaa !470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4553
  %216 = call i8* @memset(i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 0), i32 48, i64 41) #8, !dbg !4554
  store i8 0, i8* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 178, i64 40), align 1, !dbg !4556, !tbaa !470
  store i64 -1, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 180), align 8, !dbg !4557, !tbaa !1316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4558
  %217 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4559, !tbaa !558
  %218 = getelementptr inbounds %struct.list, %struct.list* %217, i64 0, i32 5, !dbg !4559
  %219 = load i64, i64* %218, align 8, !dbg !4559, !tbaa !559
  %220 = icmp eq i64 %219, 0, !dbg !4559
  br i1 %220, label %222, label %221, !dbg !4559

; <label>:221:                                    ; preds = %215
  call void @_serverAssert(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i32 118) #8, !dbg !4559
  call void @_exit(i32 1) #9, !dbg !4559
  unreachable, !dbg !4559

; <label>:222:                                    ; preds = %215
  %223 = load i8*, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !4561, !tbaa !511
  call void @zfree(i8* %223) #8, !dbg !4562
  store i8* null, i8** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 183), align 8, !dbg !4563, !tbaa !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4564
  %224 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 188), align 8, !dbg !4565, !tbaa !4566
  %225 = trunc i64 %224 to i32, !dbg !4567
  call void (i32, i8*, ...) @serverLog(i32 2, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.171, i64 0, i64 0), i32 %225) #8, !dbg !4568
  %226 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4569, !tbaa !558
  %227 = getelementptr inbounds %struct.list, %struct.list* %226, i64 0, i32 5
  %228 = load i64, i64* %227, align 8, !dbg !4569, !tbaa !559
  br label %229, !dbg !4571

; <label>:229:                                    ; preds = %210, %222, %198
  %230 = phi i64 [ 0, %210 ], [ %228, %222 ], [ %199, %198 ], !dbg !4569
  %231 = icmp eq i64 %230, 0, !dbg !4572
  %232 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 117), align 8, !dbg !4573
  %233 = icmp eq i32 %232, 0, !dbg !4574
  %234 = and i1 %231, %233, !dbg !4575
  br i1 %234, label %235, label %244, !dbg !4575

; <label>:235:                                    ; preds = %229
  %236 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !4576, !tbaa !1606
  %237 = getelementptr inbounds %struct.list, %struct.list* %236, i64 0, i32 5, !dbg !4576
  %238 = load i64, i64* %237, align 8, !dbg !4576, !tbaa !559
  %239 = icmp eq i64 %238, 0, !dbg !4577
  br i1 %239, label %244, label %240, !dbg !4578

; <label>:240:                                    ; preds = %235
  %241 = load %struct.dict*, %struct.dict** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 221), align 8, !dbg !4579, !tbaa !1603
  call void @dictEmpty(%struct.dict* %241, void (i8*)* null) #8, !dbg !4582
  %242 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !4583, !tbaa !1606
  call void @listRelease(%struct.list* %242) #8, !dbg !4584
  %243 = call %struct.list* @listCreate() #8, !dbg !4585
  store %struct.list* %243, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 222), align 8, !dbg !4586, !tbaa !1606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4587
  br label %244, !dbg !4588

; <label>:244:                                    ; preds = %235, %240, %229
  %245 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 154), align 8, !dbg !4589, !tbaa !1733
  %246 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 127), align 4, !dbg !4590
  %247 = and i32 %246, %245, !dbg !4591
  %248 = icmp eq i32 %247, -1, !dbg !4591
  br i1 %248, label %249, label %294, !dbg !4591

; <label>:249:                                    ; preds = %244
  %250 = bitcast %struct.listIter* %5 to i8*, !dbg !4595
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %250) #7, !dbg !4595
  %251 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4596, !tbaa !558
  call void @listRewind(%struct.list* %251, %struct.listIter* nonnull %5) #8, !dbg !4598
  %252 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #8, !dbg !4599
  %253 = icmp eq %struct.listNode* %252, null, !dbg !4601
  br i1 %253, label %293, label %254, !dbg !4601

; <label>:254:                                    ; preds = %249, %276
  %255 = phi %struct.listNode* [ %280, %276 ], [ %252, %249 ]
  %256 = phi i64 [ %279, %276 ], [ 0, %249 ]
  %257 = phi i32 [ %278, %276 ], [ -1, %249 ]
  %258 = phi i32 [ %277, %276 ], [ 0, %249 ]
  %259 = getelementptr inbounds %struct.listNode, %struct.listNode* %255, i64 0, i32 2, !dbg !4602
  %260 = bitcast i8** %259 to %struct.client**, !dbg !4602
  %261 = load %struct.client*, %struct.client** %260, align 8, !dbg !4602, !tbaa !797
  %262 = getelementptr inbounds %struct.client, %struct.client* %261, i64 0, i32 23, !dbg !4604
  %263 = load i32, i32* %262, align 8, !dbg !4604, !tbaa !802
  %264 = icmp eq i32 %263, 6, !dbg !4606
  br i1 %264, label %265, label %276, !dbg !4607

; <label>:265:                                    ; preds = %254
  %266 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !4608, !tbaa !1367
  %267 = getelementptr inbounds %struct.client, %struct.client* %261, i64 0, i32 19, !dbg !4610
  %268 = load i64, i64* %267, align 8, !dbg !4610, !tbaa !3255
  %269 = sub nsw i64 %266, %268, !dbg !4611
  %270 = icmp sgt i64 %269, %256, !dbg !4613
  %271 = select i1 %270, i64 %269, i64 %256, !dbg !4615
  %272 = add nsw i32 %258, 1, !dbg !4616
  %273 = getelementptr inbounds %struct.client, %struct.client* %261, i64 0, i32 37, !dbg !4617
  %274 = load i32, i32* %273, align 8, !dbg !4617, !tbaa !1379
  %275 = and i32 %274, %257, !dbg !4618
  br label %276, !dbg !4619

; <label>:276:                                    ; preds = %265, %254
  %277 = phi i32 [ %258, %254 ], [ %272, %265 ], !dbg !4620
  %278 = phi i32 [ %257, %254 ], [ %275, %265 ], !dbg !4620
  %279 = phi i64 [ %256, %254 ], [ %271, %265 ], !dbg !4620
  %280 = call %struct.listNode* @listNext(%struct.listIter* nonnull %5) #8, !dbg !4599
  %281 = icmp eq %struct.listNode* %280, null, !dbg !4601
  br i1 %281, label %282, label %254, !dbg !4601, !llvm.loop !4621

; <label>:282:                                    ; preds = %276
  %283 = icmp eq i32 %277, 0, !dbg !4623
  br i1 %283, label %293, label %284, !dbg !4625

; <label>:284:                                    ; preds = %282
  %285 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 193), align 4, !dbg !4626, !tbaa !1509
  %286 = icmp eq i32 %285, 0, !dbg !4627
  br i1 %286, label %291, label %287, !dbg !4628

; <label>:287:                                    ; preds = %284
  %288 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 194), align 8, !dbg !4629, !tbaa !1804
  %289 = sext i32 %288 to i64, !dbg !4630
  %290 = icmp sgt i64 %279, %289, !dbg !4631
  br i1 %290, label %291, label %293, !dbg !4632

; <label>:291:                                    ; preds = %284, %287
  %292 = call i32 @startBgsaveForReplication(i32 %278) #10, !dbg !4633
  br label %293, !dbg !4635

; <label>:293:                                    ; preds = %249, %282, %291, %287
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %250) #7, !dbg !4636
  br label %294, !dbg !4637

; <label>:294:                                    ; preds = %293, %244
  %295 = bitcast %struct.listIter* %1 to i8*, !dbg !4638
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %295) #7, !dbg !4638
  %296 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 190), align 8, !dbg !4641, !tbaa !1417
  %297 = icmp ne i32 %296, 0, !dbg !4642
  %298 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 191), align 4, !dbg !4643
  %299 = icmp ne i32 %298, 0, !dbg !4644
  %300 = and i1 %297, %299, !dbg !4645
  br i1 %300, label %301, label %330, !dbg !4645

; <label>:301:                                    ; preds = %294
  %302 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 41), align 8, !dbg !4646, !tbaa !558
  call void @listRewind(%struct.list* %302, %struct.listIter* nonnull %1) #8, !dbg !4648
  %303 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !4649
  %304 = icmp eq %struct.listNode* %303, null, !dbg !4651
  br i1 %304, label %328, label %305, !dbg !4651

; <label>:305:                                    ; preds = %301, %324
  %306 = phi %struct.listNode* [ %326, %324 ], [ %303, %301 ]
  %307 = phi i32 [ %325, %324 ], [ 0, %301 ]
  %308 = getelementptr inbounds %struct.listNode, %struct.listNode* %306, i64 0, i32 2, !dbg !4652
  %309 = bitcast i8** %308 to %struct.client**, !dbg !4652
  %310 = load %struct.client*, %struct.client** %309, align 8, !dbg !4652, !tbaa !797
  %311 = getelementptr inbounds %struct.client, %struct.client* %310, i64 0, i32 23, !dbg !4654
  %312 = load i32, i32* %311, align 8, !dbg !4654, !tbaa !802
  %313 = icmp eq i32 %312, 9, !dbg !4655
  br i1 %313, label %314, label %324, !dbg !4656

; <label>:314:                                    ; preds = %305
  %315 = load i64, i64* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 251), align 8, !dbg !4657, !tbaa !1367
  %316 = getelementptr inbounds %struct.client, %struct.client* %310, i64 0, i32 32, !dbg !4658
  %317 = load i64, i64* %316, align 8, !dbg !4658, !tbaa !1370
  %318 = sub nsw i64 %315, %317, !dbg !4659
  %319 = load i32, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 191), align 4, !dbg !4661, !tbaa !1439
  %320 = sext i32 %319 to i64, !dbg !4662
  %321 = icmp sle i64 %318, %320, !dbg !4663
  %322 = zext i1 %321 to i32, !dbg !4664
  %323 = add nsw i32 %307, %322, !dbg !4664
  br label %324, !dbg !4664

; <label>:324:                                    ; preds = %314, %305
  %325 = phi i32 [ %307, %305 ], [ %323, %314 ], !dbg !4665
  %326 = call %struct.listNode* @listNext(%struct.listIter* nonnull %1) #8, !dbg !4649
  %327 = icmp eq %struct.listNode* %326, null, !dbg !4651
  br i1 %327, label %328, label %305, !dbg !4651, !llvm.loop !1444

; <label>:328:                                    ; preds = %324, %301
  %329 = phi i32 [ 0, %301 ], [ %325, %324 ], !dbg !4666
  store i32 %329, i32* getelementptr inbounds (%struct.redisServer, %struct.redisServer* @server, i64 0, i32 192), align 8, !dbg !4667, !tbaa !1449
  br label %330, !dbg !4668

; <label>:330:                                    ; preds = %294, %328
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %295) #7, !dbg !4668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4668
  %331 = load i64, i64* @replicationCron.replication_cron_loops, align 8, !dbg !4669, !tbaa !522
  %332 = add nsw i64 %331, 1, !dbg !4669
  store i64 %332, i64* @replicationCron.replication_cron_loops, align 8, !dbg !4669, !tbaa !522
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %108) #7, !dbg !4670
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %107) #7, !dbg !4670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !4670
  ret void, !dbg !4670
}

; Function Attrs: noredzone
declare dso_local i32 @clientsArePaused() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.redisObject* @createStringObject(i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone nounwind }
attributes #9 = { nobuiltin noredzone noreturn nounwind }
attributes #10 = { nobuiltin noredzone }
attributes #11 = { nobuiltin noredzone nounwind readonly }

!llvm.module.flags = !{!462, !463, !464}
!llvm.ident = !{!465}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "buf", scope: !2, file: !3, line: 54, type: !458, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "replicationGetSlaveName", scope: !3, file: !3, line: 53, type: !4, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !455)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/replication.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "client", file: !10, line: 780, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/server.h", directory: "/root/.unikraft/apps/redis/build")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "client", file: !10, line: 723, size: 135360, elements: !12)
!12 = !{!13, !19, !21, !127, !138, !141, !146, !147, !148, !149, !151, !175, !176, !177, !178, !179, !180, !182, !183, !186, !187, !188, !189, !190, !191, !192, !193, !198, !199, !200, !201, !202, !203, !204, !205, !209, !210, !214, !215, !231, !232, !249, !250, !251, !252, !253, !254, !255, !256}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !11, file: !10, line: 724, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !15, line: 60, baseType: !16)
!15 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !17, line: 105, baseType: !18)
!17 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!18 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !11, file: !10, line: 725, baseType: !20, size: 32, offset: 64)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !11, file: !10, line: 726, baseType: !22, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisDb", file: !10, line: 656, baseType: !24)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisDb", file: !10, line: 647, size: 512, elements: !25)
!25 = !{!26, !91, !92, !93, !94, !95, !96, !98}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !24, file: !10, line: 648, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "dict", file: !29, line: 82, baseType: !30)
!29 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.h", directory: "/root/.unikraft/apps/redis/build")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dict", file: !29, line: 76, size: 768, elements: !31)
!31 = !{!32, !58, !59, !89, !90}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !30, file: !29, line: 77, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictType", file: !29, line: 65, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictType", file: !29, line: 58, size: 384, elements: !36)
!36 = !{!37, !43, !48, !49, !53, !57}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "hashFunction", scope: !35, file: !29, line: 59, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!14, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "keyDup", scope: !35, file: !29, line: 60, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !47, !41}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "valDup", scope: !35, file: !29, line: 61, baseType: !44, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "keyCompare", scope: !35, file: !29, line: 62, baseType: !50, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!20, !47, !41, !41}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "keyDestructor", scope: !35, file: !29, line: 63, baseType: !54, size: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !47, !47}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "valDestructor", scope: !35, file: !29, line: 64, baseType: !54, size: 64, offset: 320)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "privdata", scope: !30, file: !29, line: 78, baseType: !47, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !30, file: !29, line: 79, baseType: !60, size: 512, offset: 128)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 512, elements: !87)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictht", file: !29, line: 74, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictht", file: !29, line: 69, size: 256, elements: !63)
!63 = !{!64, !84, !85, !86}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !62, file: !29, line: 70, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "dictEntry", file: !29, line: 56, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dictEntry", file: !29, line: 47, size: 192, elements: !69)
!69 = !{!70, !71, !82}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !68, file: !29, line: 48, baseType: !47, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !68, file: !29, line: 54, baseType: !72, size: 64, offset: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !68, file: !29, line: 49, size: 64, elements: !73)
!73 = !{!74, !75, !76, !80}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !72, file: !29, line: 50, baseType: !47, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !72, file: !29, line: 51, baseType: !14, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "s64", scope: !72, file: !29, line: 52, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !15, line: 56, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !17, line: 103, baseType: !79)
!79 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !72, file: !29, line: 53, baseType: !81, size: 64)
!81 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !68, file: !29, line: 55, baseType: !83, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !62, file: !29, line: 71, baseType: !18, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sizemask", scope: !62, file: !29, line: 72, baseType: !18, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !62, file: !29, line: 73, baseType: !18, size: 64, offset: 192)
!87 = !{!88}
!88 = !DISubrange(count: 2)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "rehashidx", scope: !30, file: !29, line: 80, baseType: !79, size: 64, offset: 640)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "iterators", scope: !30, file: !29, line: 81, baseType: !18, size: 64, offset: 704)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !24, file: !10, line: 649, baseType: !27, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "blocking_keys", scope: !24, file: !10, line: 650, baseType: !27, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ready_keys", scope: !24, file: !10, line: 651, baseType: !27, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !24, file: !10, line: 652, baseType: !27, size: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !24, file: !10, line: 653, baseType: !20, size: 32, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "avg_ttl", scope: !24, file: !10, line: 654, baseType: !97, size: 64, offset: 384)
!97 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_later", scope: !24, file: !10, line: 655, baseType: !99, size: 64, offset: 448)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !101, line: 54, baseType: !102)
!101 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/adlist.h", directory: "/root/.unikraft/apps/redis/build")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !101, line: 47, size: 384, elements: !103)
!103 = !{!104, !113, !114, !118, !122, !126}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !102, file: !101, line: 48, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "listNode", file: !101, line: 40, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listNode", file: !101, line: 36, size: 192, elements: !108)
!108 = !{!109, !111, !112}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !107, file: !101, line: 37, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !107, file: !101, line: 38, baseType: !110, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !107, file: !101, line: 39, baseType: !47, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !102, file: !101, line: 49, baseType: !105, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "dup", scope: !102, file: !101, line: 50, baseType: !115, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!47, !47}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !102, file: !101, line: 51, baseType: !119, size: 64, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !47}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !102, file: !101, line: 52, baseType: !123, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!20, !47, !47}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !102, file: !101, line: 53, baseType: !18, size: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !11, file: !10, line: 727, baseType: !128, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "robj", file: !10, line: 622, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisObject", file: !10, line: 614, size: 128, elements: !131)
!131 = !{!132, !134, !135, !136, !137}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !10, line: 615, baseType: !133, size: 4, flags: DIFlagBitField, extraData: i64 0)
!133 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !130, file: !10, line: 616, baseType: !133, size: 4, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !130, file: !10, line: 617, baseType: !133, size: 24, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !130, file: !10, line: 620, baseType: !20, size: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !130, file: !10, line: 621, baseType: !47, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf", scope: !11, file: !10, line: 728, baseType: !139, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "sds", file: !140, line: 43, baseType: !6)
!140 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/sds.h", directory: "/root/.unikraft/apps/redis/build")
!141 = !DIDerivedType(tag: DW_TAG_member, name: "qb_pos", scope: !11, file: !10, line: 729, baseType: !142, size: 64, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !143, line: 40, baseType: !144)
!143 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !145, line: 129, baseType: !18)
!145 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!146 = !DIDerivedType(tag: DW_TAG_member, name: "pending_querybuf", scope: !11, file: !10, line: 730, baseType: !139, size: 64, offset: 384)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "querybuf_peak", scope: !11, file: !10, line: 734, baseType: !142, size: 64, offset: 448)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !11, file: !10, line: 735, baseType: !20, size: 32, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !11, file: !10, line: 736, baseType: !150, size: 64, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !11, file: !10, line: 737, baseType: !152, size: 64, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redisCommand", file: !10, line: 1307, size: 640, elements: !154)
!154 = !{!155, !156, !161, !162, !163, !164, !170, !171, !172, !173, !174}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !153, file: !10, line: 1308, baseType: !6, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !153, file: !10, line: 1309, baseType: !157, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisCommandProc", file: !10, line: 1305, baseType: !159)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !8}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "arity", scope: !153, file: !10, line: 1310, baseType: !20, size: 32, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sflags", scope: !153, file: !10, line: 1311, baseType: !6, size: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !10, line: 1312, baseType: !20, size: 32, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "getkeys_proc", scope: !153, file: !10, line: 1315, baseType: !165, size: 64, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "redisGetKeysProc", file: !10, line: 1306, baseType: !167)
!167 = !DISubroutineType(types: !168)
!168 = !{!169, !152, !150, !20, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "firstkey", scope: !153, file: !10, line: 1317, baseType: !20, size: 32, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "lastkey", scope: !153, file: !10, line: 1318, baseType: !20, size: 32, offset: 416)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "keystep", scope: !153, file: !10, line: 1319, baseType: !20, size: 32, offset: 448)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "microseconds", scope: !153, file: !10, line: 1320, baseType: !97, size: 64, offset: 512)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "calls", scope: !153, file: !10, line: 1320, baseType: !97, size: 64, offset: 576)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "lastcmd", scope: !11, file: !10, line: 737, baseType: !152, size: 64, offset: 704)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "reqtype", scope: !11, file: !10, line: 738, baseType: !20, size: 32, offset: 768)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "multibulklen", scope: !11, file: !10, line: 739, baseType: !20, size: 32, offset: 800)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "bulklen", scope: !11, file: !10, line: 740, baseType: !79, size: 64, offset: 832)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "reply", scope: !11, file: !10, line: 741, baseType: !99, size: 64, offset: 896)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "reply_bytes", scope: !11, file: !10, line: 742, baseType: !181, size: 64, offset: 960)
!181 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sentlen", scope: !11, file: !10, line: 743, baseType: !142, size: 64, offset: 1024)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !11, file: !10, line: 745, baseType: !184, size: 64, offset: 1088)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !185, line: 34, baseType: !79)
!185 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!186 = !DIDerivedType(tag: DW_TAG_member, name: "lastinteraction", scope: !11, file: !10, line: 746, baseType: !184, size: 64, offset: 1152)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "obuf_soft_limit_reached_time", scope: !11, file: !10, line: 747, baseType: !184, size: 64, offset: 1216)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !11, file: !10, line: 748, baseType: !20, size: 32, offset: 1280)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !11, file: !10, line: 749, baseType: !20, size: 32, offset: 1312)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "replstate", scope: !11, file: !10, line: 750, baseType: !20, size: 32, offset: 1344)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "repl_put_online_on_ack", scope: !11, file: !10, line: 751, baseType: !20, size: 32, offset: 1376)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "repldbfd", scope: !11, file: !10, line: 752, baseType: !20, size: 32, offset: 1408)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "repldboff", scope: !11, file: !10, line: 753, baseType: !194, size: 64, offset: 1472)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !195, line: 173, baseType: !196)
!195 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/types.h", directory: "/root/.unikraft/apps/redis/build")
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !145, line: 100, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !145, line: 44, baseType: !79)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "repldbsize", scope: !11, file: !10, line: 754, baseType: !194, size: 64, offset: 1536)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "replpreamble", scope: !11, file: !10, line: 755, baseType: !139, size: 64, offset: 1600)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "read_reploff", scope: !11, file: !10, line: 756, baseType: !97, size: 64, offset: 1664)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "reploff", scope: !11, file: !10, line: 757, baseType: !97, size: 64, offset: 1728)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_off", scope: !11, file: !10, line: 758, baseType: !97, size: 64, offset: 1792)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "repl_ack_time", scope: !11, file: !10, line: 759, baseType: !97, size: 64, offset: 1856)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "psync_initial_offset", scope: !11, file: !10, line: 760, baseType: !97, size: 64, offset: 1920)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "replid", scope: !11, file: !10, line: 763, baseType: !206, size: 328, offset: 1984)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 328, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 41)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "slave_listening_port", scope: !11, file: !10, line: 764, baseType: !20, size: 32, offset: 2336)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "slave_ip", scope: !11, file: !10, line: 765, baseType: !211, size: 368, offset: 2368)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 368, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 46)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "slave_capa", scope: !11, file: !10, line: 766, baseType: !20, size: 32, offset: 2752)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "mstate", scope: !11, file: !10, line: 767, baseType: !216, size: 256, offset: 2816)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiState", file: !10, line: 673, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiState", file: !10, line: 665, size: 256, elements: !218)
!218 = !{!219, !227, !228, !229, !230}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "commands", scope: !217, file: !10, line: 666, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "multiCmd", file: !10, line: 663, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "multiCmd", file: !10, line: 659, size: 192, elements: !223)
!223 = !{!224, !225, !226}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !222, file: !10, line: 660, baseType: !150, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "argc", scope: !222, file: !10, line: 661, baseType: !20, size: 32, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !222, file: !10, line: 662, baseType: !152, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !217, file: !10, line: 667, baseType: !20, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !217, file: !10, line: 668, baseType: !20, size: 32, offset: 96)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas", scope: !217, file: !10, line: 671, baseType: !20, size: 32, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "minreplicas_timeout", scope: !217, file: !10, line: 672, baseType: !184, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "btype", scope: !11, file: !10, line: 768, baseType: !20, size: 32, offset: 3072)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "bpop", scope: !11, file: !10, line: 769, baseType: !233, size: 704, offset: 3136)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "blockingState", file: !10, line: 703, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blockingState", file: !10, line: 677, size: 704, elements: !235)
!235 = !{!236, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !234, file: !10, line: 679, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "mstime_t", file: !10, line: 52, baseType: !97)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !234, file: !10, line: 683, baseType: !27, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !234, file: !10, line: 685, baseType: !128, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "xread_count", scope: !234, file: !10, line: 689, baseType: !142, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group", scope: !234, file: !10, line: 690, baseType: !128, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "xread_consumer", scope: !234, file: !10, line: 691, baseType: !128, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_time", scope: !234, file: !10, line: 692, baseType: !237, size: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "xread_retry_ttl", scope: !234, file: !10, line: 692, baseType: !237, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "xread_group_noack", scope: !234, file: !10, line: 693, baseType: !20, size: 32, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "numreplicas", scope: !234, file: !10, line: 696, baseType: !20, size: 32, offset: 544)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "reploffset", scope: !234, file: !10, line: 697, baseType: !97, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "module_blocked_handle", scope: !234, file: !10, line: 700, baseType: !47, size: 64, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "woff", scope: !11, file: !10, line: 770, baseType: !97, size: 64, offset: 3840)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "watched_keys", scope: !11, file: !10, line: 771, baseType: !99, size: 64, offset: 3904)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_channels", scope: !11, file: !10, line: 772, baseType: !27, size: 64, offset: 3968)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "pubsub_patterns", scope: !11, file: !10, line: 773, baseType: !99, size: 64, offset: 4032)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "peerid", scope: !11, file: !10, line: 774, baseType: !139, size: 64, offset: 4096)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "client_list_node", scope: !11, file: !10, line: 775, baseType: !105, size: 64, offset: 4160)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !11, file: !10, line: 778, baseType: !20, size: 32, offset: 4224)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !11, file: !10, line: 779, baseType: !257, size: 131072, offset: 4256)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 131072, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 16384)
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !261, retainedTypes: !262, globals: !302)
!261 = !{}
!262 = !{!181, !47, !79, !6, !97, !20, !263, !276, !286, !295}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr8", file: !140, line: 51, size: 24, elements: !265)
!265 = !{!266, !270, !271, !272}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !264, file: !140, line: 52, baseType: !267, size: 8)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !15, line: 24, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !17, line: 43, baseType: !269)
!269 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !264, file: !140, line: 53, baseType: !267, size: 8, offset: 8)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !264, file: !140, line: 54, baseType: !269, size: 8, offset: 16)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !264, file: !140, line: 55, baseType: !273, offset: 24)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: -1)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr16", file: !140, line: 57, size: 40, elements: !278)
!278 = !{!279, !283, !284, !285}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !277, file: !140, line: 58, baseType: !280, size: 16)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !15, line: 36, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !17, line: 57, baseType: !282)
!282 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !277, file: !140, line: 59, baseType: !280, size: 16, offset: 16)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !277, file: !140, line: 60, baseType: !269, size: 8, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !277, file: !140, line: 61, baseType: !273, offset: 40)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr32", file: !140, line: 63, size: 72, elements: !288)
!288 = !{!289, !292, !293, !294}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !287, file: !140, line: 64, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !15, line: 48, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !17, line: 79, baseType: !133)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !287, file: !140, line: 65, baseType: !290, size: 32, offset: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !140, line: 66, baseType: !269, size: 8, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !287, file: !140, line: 67, baseType: !273, offset: 72)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sdshdr64", file: !140, line: 69, size: 136, elements: !297)
!297 = !{!298, !299, !300, !301}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !296, file: !140, line: 70, baseType: !14, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !296, file: !140, line: 71, baseType: !14, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !296, file: !140, line: 72, baseType: !269, size: 8, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !296, file: !140, line: 73, baseType: !273, offset: 136)
!302 = !{!0, !303, !308, !411, !413, !415}
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "newline_sent", scope: !305, file: !3, line: 1084, type: !184, isLocal: true, isDefinition: true)
!305 = distinct !DISubprogram(name: "replicationSendNewlineToMaster", scope: !3, file: !3, line: 1083, type: !306, isLocal: false, isDefinition: true, scopeLine: 1083, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!306 = !DISubroutineType(types: !307)
!307 = !{null}
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(name: "eofmark", scope: !310, file: !3, line: 1151, type: !408, isLocal: true, isDefinition: true)
!310 = distinct !DISubprogram(name: "readSyncBulkPayload", scope: !3, file: !3, line: 1141, type: !311, isLocal: false, isDefinition: true, scopeLine: 1141, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !373)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !313, !20, !47, !20}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventLoop", file: !315, line: 109, baseType: !316)
!315 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/ae.h", directory: "/root/.unikraft/apps/redis/build")
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeEventLoop", file: !315, line: 97, size: 640, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !336, !343, !365, !366, !367, !372}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "maxfd", scope: !316, file: !315, line: 98, baseType: !20, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "setsize", scope: !316, file: !315, line: 99, baseType: !20, size: 32, offset: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventNextId", scope: !316, file: !315, line: 100, baseType: !97, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "lastTime", scope: !316, file: !315, line: 101, baseType: !184, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !316, file: !315, line: 102, baseType: !323, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileEvent", file: !315, line: 76, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFileEvent", file: !315, line: 71, size: 256, elements: !326)
!326 = !{!327, !328, !334, !335}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !325, file: !315, line: 72, baseType: !20, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "rfileProc", scope: !325, file: !315, line: 73, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFileProc", file: !315, line: 65, baseType: !331)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !333, !20, !47, !20}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "wfileProc", scope: !325, file: !315, line: 74, baseType: !329, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !325, file: !315, line: 75, baseType: !47, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "fired", scope: !316, file: !315, line: 103, baseType: !337, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeFiredEvent", file: !315, line: 94, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeFiredEvent", file: !315, line: 91, size: 64, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !339, file: !315, line: 92, baseType: !20, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !339, file: !315, line: 93, baseType: !20, size: 32, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "timeEventHead", scope: !316, file: !315, line: 104, baseType: !344, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeEvent", file: !315, line: 88, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aeTimeEvent", file: !315, line: 79, size: 512, elements: !347)
!347 = !{!348, !349, !350, !351, !356, !361, !362, !364}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !346, file: !315, line: 80, baseType: !97, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "when_sec", scope: !346, file: !315, line: 81, baseType: !79, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "when_ms", scope: !346, file: !315, line: 82, baseType: !79, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "timeProc", scope: !346, file: !315, line: 83, baseType: !352, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeTimeProc", file: !315, line: 66, baseType: !354)
!354 = !DISubroutineType(types: !355)
!355 = !{!20, !333, !97, !47}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "finalizerProc", scope: !346, file: !315, line: 84, baseType: !357, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeEventFinalizerProc", file: !315, line: 67, baseType: !359)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !333, !47}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "clientData", scope: !346, file: !315, line: 85, baseType: !47, size: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !346, file: !315, line: 86, baseType: !363, size: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !315, line: 87, baseType: !363, size: 64, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !316, file: !315, line: 105, baseType: !20, size: 32, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "apidata", scope: !316, file: !315, line: 106, baseType: !47, size: 64, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "beforesleep", scope: !316, file: !315, line: 107, baseType: !368, size: 64, offset: 512)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "aeBeforeSleepProc", file: !315, line: 68, baseType: !370)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !333}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "aftersleep", scope: !316, file: !315, line: 108, baseType: !368, size: 64, offset: 576)
!373 = !{!374, !375, !376, !377, !378, !382, !385, !386, !387, !388, !389, !394, !397, !400}
!374 = !DILocalVariable(name: "el", arg: 1, scope: !310, file: !3, line: 1141, type: !313)
!375 = !DILocalVariable(name: "fd", arg: 2, scope: !310, file: !3, line: 1141, type: !20)
!376 = !DILocalVariable(name: "privdata", arg: 3, scope: !310, file: !3, line: 1141, type: !47)
!377 = !DILocalVariable(name: "mask", arg: 4, scope: !310, file: !3, line: 1141, type: !20)
!378 = !DILocalVariable(name: "buf", scope: !310, file: !3, line: 1142, type: !379)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32768, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 4096)
!382 = !DILocalVariable(name: "nread", scope: !310, file: !3, line: 1143, type: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !195, line: 200, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !145, line: 145, baseType: !79)
!385 = !DILocalVariable(name: "readlen", scope: !310, file: !3, line: 1143, type: !383)
!386 = !DILocalVariable(name: "nwritten", scope: !310, file: !3, line: 1143, type: !383)
!387 = !DILocalVariable(name: "left", scope: !310, file: !3, line: 1144, type: !194)
!388 = !DILocalVariable(name: "eof_reached", scope: !310, file: !3, line: 1229, type: !20)
!389 = !DILocalVariable(name: "rem", scope: !390, file: !3, line: 1236, type: !20)
!390 = distinct !DILexicalBlock(scope: !391, file: !3, line: 1235, column: 16)
!391 = distinct !DILexicalBlock(scope: !392, file: !3, line: 1233, column: 13)
!392 = distinct !DILexicalBlock(scope: !393, file: !3, line: 1231, column: 18)
!393 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1231, column: 9)
!394 = !DILocalVariable(name: "sync_size", scope: !395, file: !3, line: 1267, type: !194)
!395 = distinct !DILexicalBlock(scope: !396, file: !3, line: 1266, column: 5)
!396 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1264, column: 9)
!397 = !DILocalVariable(name: "aof_is_enabled", scope: !398, file: !3, line: 1281, type: !20)
!398 = distinct !DILexicalBlock(scope: !399, file: !3, line: 1280, column: 22)
!399 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1280, column: 9)
!400 = !DILocalVariable(name: "rsi", scope: !398, file: !3, line: 1315, type: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "rdbSaveInfo", file: !10, line: 912, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rdbSaveInfo", file: !10, line: 904, size: 512, elements: !403)
!403 = !{!404, !405, !406, !407}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "repl_stream_db", scope: !402, file: !10, line: 906, baseType: !20, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "repl_id_is_set", scope: !402, file: !10, line: 909, baseType: !20, size: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "repl_id", scope: !402, file: !10, line: 910, baseType: !206, size: 328, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "repl_offset", scope: !402, file: !10, line: 911, baseType: !97, size: 64, offset: 448)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 320, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 40)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "lastbytes", scope: !310, file: !3, line: 1152, type: !408, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(name: "usemark", scope: !310, file: !3, line: 1153, type: !20, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(name: "replication_cron_loops", scope: !417, file: !3, line: 2565, type: !97, isLocal: true, isDefinition: true)
!417 = distinct !DISubprogram(name: "replicationCron", scope: !3, file: !3, line: 2564, type: !306, isLocal: false, isDefinition: true, scopeLine: 2564, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !418)
!418 = !{!419, !425, !426, !430, !433, !435, !436, !439, !440, !442, !445, !448, !449, !450, !451, !452, !453}
!419 = !DILocalVariable(name: "li", scope: !417, file: !3, line: 2613, type: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "listIter", file: !101, line: 45, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "listIter", file: !101, line: 42, size: 128, elements: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !101, line: 43, baseType: !105, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !421, file: !101, line: 44, baseType: !20, size: 32, offset: 64)
!425 = !DILocalVariable(name: "ln", scope: !417, file: !3, line: 2614, type: !105)
!426 = !DILocalVariable(name: "ping_argv", scope: !417, file: !3, line: 2615, type: !427)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 1)
!430 = !DILocalVariable(name: "manual_failover_in_progress", scope: !431, file: !3, line: 2625, type: !20)
!431 = distinct !DILexicalBlock(scope: !432, file: !3, line: 2620, column: 5)
!432 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2618, column: 9)
!433 = !DILocalVariable(name: "slave", scope: !434, file: !3, line: 2654, type: !8)
!434 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2653, column: 33)
!435 = !DILocalVariable(name: "is_presync", scope: !434, file: !3, line: 2656, type: !20)
!436 = !DILocalVariable(name: "li", scope: !437, file: !3, line: 2670, type: !420)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 2669, column: 36)
!438 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2669, column: 9)
!439 = !DILocalVariable(name: "ln", scope: !437, file: !3, line: 2671, type: !105)
!440 = !DILocalVariable(name: "slave", scope: !441, file: !3, line: 2675, type: !8)
!441 = distinct !DILexicalBlock(scope: !437, file: !3, line: 2674, column: 37)
!442 = !DILocalVariable(name: "idle", scope: !443, file: !3, line: 2697, type: !184)
!443 = distinct !DILexicalBlock(scope: !444, file: !3, line: 2696, column: 5)
!444 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2694, column: 9)
!445 = !DILocalVariable(name: "idle", scope: !446, file: !3, line: 2742, type: !184)
!446 = distinct !DILexicalBlock(scope: !447, file: !3, line: 2741, column: 67)
!447 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2741, column: 9)
!448 = !DILocalVariable(name: "max_idle", scope: !446, file: !3, line: 2742, type: !184)
!449 = !DILocalVariable(name: "slaves_waiting", scope: !446, file: !3, line: 2743, type: !20)
!450 = !DILocalVariable(name: "mincapa", scope: !446, file: !3, line: 2744, type: !20)
!451 = !DILocalVariable(name: "ln", scope: !446, file: !3, line: 2745, type: !105)
!452 = !DILocalVariable(name: "li", scope: !446, file: !3, line: 2746, type: !420)
!453 = !DILocalVariable(name: "slave", scope: !454, file: !3, line: 2750, type: !8)
!454 = distinct !DILexicalBlock(scope: !446, file: !3, line: 2749, column: 37)
!455 = !{!456, !457}
!456 = !DILocalVariable(name: "c", arg: 1, scope: !2, file: !3, line: 53, type: !8)
!457 = !DILocalVariable(name: "ip", scope: !2, file: !3, line: 55, type: !211)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 624, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 78)
!461 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!462 = !{i32 2, !"Dwarf Version", i32 4}
!463 = !{i32 2, !"Debug Info Version", i32 3}
!464 = !{i32 1, !"wchar_size", i32 4}
!465 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!466 = !DILocation(line: 53, column: 39, scope: !2)
!467 = !DILocation(line: 55, column: 5, scope: !2)
!468 = !DILocation(line: 55, column: 10, scope: !2)
!469 = !DILocation(line: 57, column: 11, scope: !2)
!470 = !{!471, !471, i64 0}
!471 = !{!"omnipotent char", !472, i64 0}
!472 = !{!"Simple C/C++ TBAA"}
!473 = !DILocation(line: 58, column: 12, scope: !2)
!474 = !DILocation(line: 59, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !2, file: !3, line: 59, column: 9)
!476 = !DILocation(line: 59, column: 24, scope: !475)
!477 = !DILocation(line: 59, column: 32, scope: !475)
!478 = !DILocation(line: 60, column: 29, scope: !475)
!479 = !{!480, !482, i64 8}
!480 = !{!"client", !481, i64 0, !482, i64 8, !483, i64 16, !483, i64 24, !483, i64 32, !481, i64 40, !483, i64 48, !481, i64 56, !482, i64 64, !483, i64 72, !483, i64 80, !483, i64 88, !482, i64 96, !482, i64 100, !481, i64 104, !483, i64 112, !484, i64 120, !481, i64 128, !481, i64 136, !481, i64 144, !481, i64 152, !482, i64 160, !482, i64 164, !482, i64 168, !482, i64 172, !482, i64 176, !481, i64 184, !481, i64 192, !483, i64 200, !484, i64 208, !484, i64 216, !484, i64 224, !484, i64 232, !484, i64 240, !471, i64 248, !482, i64 292, !471, i64 296, !482, i64 344, !485, i64 352, !482, i64 384, !486, i64 392, !484, i64 480, !483, i64 488, !483, i64 496, !483, i64 504, !483, i64 512, !483, i64 520, !482, i64 528, !471, i64 532}
!481 = !{!"long", !471, i64 0}
!482 = !{!"int", !471, i64 0}
!483 = !{!"any pointer", !471, i64 0}
!484 = !{!"long long", !471, i64 0}
!485 = !{!"multiState", !483, i64 0, !482, i64 8, !482, i64 12, !482, i64 16, !481, i64 24}
!486 = !{!"blockingState", !484, i64 0, !483, i64 8, !483, i64 16, !481, i64 24, !483, i64 32, !483, i64 40, !484, i64 48, !484, i64 56, !482, i64 64, !482, i64 68, !484, i64 72, !483, i64 80}
!487 = !DILocation(line: 60, column: 9, scope: !475)
!488 = !DILocation(line: 60, column: 52, scope: !475)
!489 = !DILocation(line: 59, column: 9, scope: !2)
!490 = !DILocation(line: 63, column: 13, scope: !491)
!491 = distinct !DILexicalBlock(scope: !492, file: !3, line: 63, column: 13)
!492 = distinct !DILexicalBlock(scope: !475, file: !3, line: 61, column: 5)
!493 = !DILocation(line: 63, column: 28, scope: !491)
!494 = !DILocation(line: 63, column: 13, scope: !492)
!495 = !DILocation(line: 63, column: 37, scope: !491)
!496 = !DILocation(line: 65, column: 16, scope: !497)
!497 = distinct !DILexicalBlock(scope: !492, file: !3, line: 65, column: 13)
!498 = !{!480, !482, i64 292}
!499 = !DILocation(line: 65, column: 13, scope: !497)
!500 = !DILocation(line: 65, column: 13, scope: !492)
!501 = !DILocation(line: 66, column: 13, scope: !497)
!502 = !DILocation(line: 68, column: 13, scope: !497)
!503 = !DILocation(line: 71, column: 37, scope: !504)
!504 = distinct !DILexicalBlock(scope: !475, file: !3, line: 69, column: 12)
!505 = !{!480, !481, i64 0}
!506 = !DILocation(line: 70, column: 9, scope: !504)
!507 = !DILocation(line: 74, column: 1, scope: !2)
!508 = !DILocation(line: 73, column: 5, scope: !2)
!509 = distinct !DISubprogram(name: "createReplicationBacklog", scope: !3, file: !3, line: 78, type: !306, isLocal: false, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!510 = !DILocation(line: 79, column: 5, scope: !509)
!511 = !{!512, !483, i64 2376}
!512 = !{!"redisServer", !482, i64 0, !483, i64 8, !483, i64 16, !483, i64 24, !482, i64 32, !482, i64 36, !482, i64 40, !483, i64 48, !483, i64 56, !483, i64 64, !483, i64 72, !482, i64 80, !482, i64 84, !482, i64 88, !482, i64 92, !483, i64 96, !483, i64 104, !482, i64 112, !482, i64 116, !471, i64 120, !482, i64 164, !481, i64 168, !482, i64 176, !483, i64 184, !483, i64 192, !483, i64 200, !471, i64 208, !482, i64 216, !482, i64 220, !471, i64 224, !482, i64 352, !483, i64 360, !482, i64 368, !471, i64 372, !482, i64 436, !482, i64 440, !471, i64 444, !482, i64 508, !483, i64 512, !483, i64 520, !483, i64 528, !483, i64 536, !483, i64 544, !483, i64 552, !483, i64 560, !482, i64 568, !484, i64 576, !471, i64 584, !483, i64 840, !481, i64 848, !482, i64 856, !482, i64 860, !481, i64 864, !481, i64 872, !481, i64 880, !481, i64 888, !483, i64 896, !483, i64 904, !483, i64 912, !483, i64 920, !483, i64 928, !483, i64 936, !483, i64 944, !483, i64 952, !483, i64 960, !483, i64 968, !483, i64 976, !483, i64 984, !483, i64 992, !481, i64 1000, !484, i64 1008, !484, i64 1016, !484, i64 1024, !513, i64 1032, !484, i64 1040, !484, i64 1048, !484, i64 1056, !484, i64 1064, !484, i64 1072, !484, i64 1080, !484, i64 1088, !484, i64 1096, !484, i64 1104, !481, i64 1112, !484, i64 1120, !513, i64 1128, !484, i64 1136, !484, i64 1144, !484, i64 1152, !484, i64 1160, !483, i64 1168, !484, i64 1176, !484, i64 1184, !481, i64 1192, !514, i64 1200, !484, i64 1240, !484, i64 1248, !481, i64 1256, !481, i64 1264, !471, i64 1272, !482, i64 1728, !482, i64 1732, !482, i64 1736, !482, i64 1740, !482, i64 1744, !481, i64 1752, !482, i64 1760, !482, i64 1764, !482, i64 1768, !482, i64 1772, !481, i64 1776, !481, i64 1784, !482, i64 1792, !482, i64 1796, !482, i64 1800, !482, i64 1804, !471, i64 1808, !482, i64 1880, !482, i64 1884, !483, i64 1888, !482, i64 1896, !482, i64 1900, !481, i64 1904, !481, i64 1912, !481, i64 1920, !481, i64 1928, !482, i64 1936, !482, i64 1940, !483, i64 1944, !483, i64 1952, !482, i64 1960, !482, i64 1964, !481, i64 1968, !481, i64 1976, !481, i64 1984, !481, i64 1992, !482, i64 2000, !481, i64 2008, !482, i64 2016, !482, i64 2020, !482, i64 2024, !482, i64 2028, !482, i64 2032, !482, i64 2036, !482, i64 2040, !482, i64 2044, !482, i64 2048, !482, i64 2052, !482, i64 2056, !482, i64 2060, !482, i64 2064, !483, i64 2072, !484, i64 2080, !484, i64 2088, !482, i64 2096, !483, i64 2104, !482, i64 2112, !483, i64 2120, !482, i64 2128, !482, i64 2132, !481, i64 2136, !481, i64 2144, !481, i64 2152, !481, i64 2160, !482, i64 2168, !482, i64 2172, !482, i64 2176, !482, i64 2180, !482, i64 2184, !482, i64 2188, !471, i64 2192, !515, i64 2200, !516, i64 2224, !483, i64 2240, !482, i64 2248, !483, i64 2256, !482, i64 2264, !471, i64 2268, !471, i64 2309, !484, i64 2352, !484, i64 2360, !482, i64 2368, !482, i64 2372, !483, i64 2376, !484, i64 2384, !484, i64 2392, !484, i64 2400, !484, i64 2408, !481, i64 2416, !481, i64 2424, !482, i64 2432, !482, i64 2436, !482, i64 2440, !482, i64 2444, !482, i64 2448, !483, i64 2456, !483, i64 2464, !482, i64 2472, !482, i64 2476, !483, i64 2480, !483, i64 2488, !482, i64 2496, !482, i64 2500, !481, i64 2504, !481, i64 2512, !481, i64 2520, !482, i64 2528, !482, i64 2532, !483, i64 2536, !481, i64 2544, !482, i64 2552, !482, i64 2556, !482, i64 2560, !481, i64 2568, !482, i64 2576, !482, i64 2580, !482, i64 2584, !483, i64 2592, !471, i64 2600, !484, i64 2648, !482, i64 2656, !483, i64 2664, !483, i64 2672, !482, i64 2680, !483, i64 2688, !482, i64 2696, !482, i64 2700, !484, i64 2704, !482, i64 2712, !482, i64 2716, !482, i64 2720, !482, i64 2724, !484, i64 2728, !482, i64 2736, !471, i64 2740, !483, i64 2768, !483, i64 2776, !482, i64 2784, !482, i64 2788, !482, i64 2792, !482, i64 2796, !481, i64 2800, !481, i64 2808, !481, i64 2816, !481, i64 2824, !481, i64 2832, !481, i64 2840, !481, i64 2848, !481, i64 2856, !482, i64 2864, !482, i64 2868, !481, i64 2872, !481, i64 2880, !482, i64 2888, !484, i64 2896, !483, i64 2904, !483, i64 2912, !482, i64 2920, !482, i64 2924, !484, i64 2928, !483, i64 2936, !483, i64 2944, !482, i64 2952, !482, i64 2956, !482, i64 2960, !482, i64 2964, !483, i64 2968, !482, i64 2976, !482, i64 2980, !482, i64 2984, !483, i64 2992, !483, i64 3000, !483, i64 3008, !483, i64 3016, !484, i64 3024, !484, i64 3032, !484, i64 3040, !482, i64 3048, !482, i64 3052, !482, i64 3056, !482, i64 3060, !482, i64 3064, !482, i64 3068, !482, i64 3072, !482, i64 3076, !482, i64 3080, !482, i64 3084, !482, i64 3088, !484, i64 3096, !483, i64 3104, !483, i64 3112, !483, i64 3120, !482, i64 3128, !482, i64 3132, !482, i64 3136, !481, i64 3144, !483, i64 3152, !483, i64 3160, !483, i64 3168}
!513 = !{!"double", !471, i64 0}
!514 = !{!"malloc_stats", !481, i64 0, !481, i64 8, !481, i64 16, !481, i64 24, !481, i64 32}
!515 = !{!"", !482, i64 0, !481, i64 8, !484, i64 16}
!516 = !{!"redisOpArray", !483, i64 0, !482, i64 8}
!517 = !DILocation(line: 80, column: 42, scope: !509)
!518 = !{!512, !484, i64 2384}
!519 = !DILocation(line: 80, column: 27, scope: !509)
!520 = !DILocation(line: 80, column: 25, scope: !509)
!521 = !DILocation(line: 81, column: 33, scope: !509)
!522 = !{!484, !484, i64 0}
!523 = !DILocation(line: 87, column: 38, scope: !509)
!524 = !{!512, !484, i64 2352}
!525 = !DILocation(line: 87, column: 56, scope: !509)
!526 = !DILocation(line: 87, column: 29, scope: !509)
!527 = !{!512, !484, i64 2408}
!528 = !DILocation(line: 88, column: 1, scope: !509)
!529 = distinct !DISubprogram(name: "resizeReplicationBacklog", scope: !3, file: !3, line: 96, type: !530, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !532)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !97}
!532 = !{!533}
!533 = !DILocalVariable(name: "newsize", arg: 1, scope: !529, file: !3, line: 96, type: !97)
!534 = !DILocation(line: 96, column: 41, scope: !529)
!535 = !DILocation(line: 97, column: 9, scope: !529)
!536 = !DILocation(line: 99, column: 16, scope: !537)
!537 = distinct !DILexicalBlock(scope: !529, file: !3, line: 99, column: 9)
!538 = !DILocation(line: 99, column: 34, scope: !537)
!539 = !DILocation(line: 99, column: 9, scope: !529)
!540 = !DILocation(line: 101, column: 30, scope: !529)
!541 = !DILocation(line: 102, column: 16, scope: !542)
!542 = distinct !DILexicalBlock(scope: !529, file: !3, line: 102, column: 9)
!543 = !DILocation(line: 102, column: 29, scope: !542)
!544 = !DILocation(line: 102, column: 9, scope: !529)
!545 = !DILocation(line: 108, column: 9, scope: !546)
!546 = distinct !DILexicalBlock(scope: !542, file: !3, line: 102, column: 38)
!547 = !DILocation(line: 109, column: 46, scope: !546)
!548 = !DILocation(line: 109, column: 31, scope: !546)
!549 = !DILocation(line: 109, column: 29, scope: !546)
!550 = !DILocation(line: 110, column: 37, scope: !546)
!551 = !DILocation(line: 113, column: 42, scope: !546)
!552 = !DILocation(line: 113, column: 60, scope: !546)
!553 = !DILocation(line: 113, column: 33, scope: !546)
!554 = !DILocation(line: 114, column: 5, scope: !546)
!555 = !DILocation(line: 115, column: 1, scope: !529)
!556 = distinct !DISubprogram(name: "freeReplicationBacklog", scope: !3, file: !3, line: 117, type: !306, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!557 = !DILocation(line: 118, column: 5, scope: !556)
!558 = !{!512, !483, i64 536}
!559 = !{!560, !481, i64 40}
!560 = !{!"list", !483, i64 0, !483, i64 8, !483, i64 16, !483, i64 24, !483, i64 32, !481, i64 40}
!561 = !DILocation(line: 119, column: 18, scope: !556)
!562 = !DILocation(line: 119, column: 5, scope: !556)
!563 = !DILocation(line: 120, column: 25, scope: !556)
!564 = !DILocation(line: 121, column: 1, scope: !556)
!565 = distinct !DISubprogram(name: "feedReplicationBacklog", scope: !3, file: !3, line: 127, type: !566, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !568)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !47, !142}
!568 = !{!569, !570, !571, !573}
!569 = !DILocalVariable(name: "ptr", arg: 1, scope: !565, file: !3, line: 127, type: !47)
!570 = !DILocalVariable(name: "len", arg: 2, scope: !565, file: !3, line: 127, type: !142)
!571 = !DILocalVariable(name: "p", scope: !565, file: !3, line: 128, type: !572)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!573 = !DILocalVariable(name: "thislen", scope: !574, file: !3, line: 135, type: !142)
!574 = distinct !DILexicalBlock(scope: !565, file: !3, line: 134, column: 16)
!575 = !DILocation(line: 127, column: 35, scope: !565)
!576 = !DILocation(line: 127, column: 47, scope: !565)
!577 = !DILocation(line: 128, column: 20, scope: !565)
!578 = !DILocation(line: 130, column: 31, scope: !565)
!579 = !DILocation(line: 134, column: 5, scope: !565)
!580 = !DILocation(line: 145, column: 16, scope: !581)
!581 = distinct !DILexicalBlock(scope: !565, file: !3, line: 145, column: 9)
!582 = !{!512, !484, i64 2392}
!583 = !DILocation(line: 145, column: 46, scope: !581)
!584 = !DILocation(line: 135, column: 33, scope: !574)
!585 = !DILocation(line: 135, column: 60, scope: !574)
!586 = !{!512, !484, i64 2400}
!587 = !DILocation(line: 135, column: 51, scope: !574)
!588 = !DILocation(line: 135, column: 16, scope: !574)
!589 = !DILocation(line: 136, column: 21, scope: !590)
!590 = distinct !DILexicalBlock(scope: !574, file: !3, line: 136, column: 13)
!591 = !DILocation(line: 136, column: 13, scope: !574)
!592 = !DILocation(line: 137, column: 23, scope: !574)
!593 = !DILocation(line: 137, column: 35, scope: !574)
!594 = !DILocation(line: 137, column: 9, scope: !574)
!595 = !DILocation(line: 138, column: 33, scope: !574)
!596 = !DILocation(line: 139, column: 47, scope: !597)
!597 = distinct !DILexicalBlock(scope: !574, file: !3, line: 139, column: 13)
!598 = !DILocation(line: 139, column: 37, scope: !597)
!599 = !DILocation(line: 139, column: 13, scope: !574)
!600 = !DILocation(line: 0, scope: !597)
!601 = !DILocation(line: 141, column: 13, scope: !574)
!602 = !DILocation(line: 142, column: 11, scope: !574)
!603 = !DILocation(line: 143, column: 37, scope: !574)
!604 = distinct !{!604, !579, !605}
!605 = !DILocation(line: 144, column: 5, scope: !565)
!606 = !DILocation(line: 145, column: 37, scope: !581)
!607 = !DILocation(line: 145, column: 9, scope: !565)
!608 = !DILocation(line: 146, column: 37, scope: !581)
!609 = !DILocation(line: 146, column: 9, scope: !581)
!610 = !DILocation(line: 149, column: 38, scope: !565)
!611 = !DILocation(line: 148, column: 38, scope: !565)
!612 = !DILocation(line: 148, column: 57, scope: !565)
!613 = !DILocation(line: 149, column: 59, scope: !565)
!614 = !DILocation(line: 148, column: 29, scope: !565)
!615 = !DILocation(line: 150, column: 1, scope: !565)
!616 = distinct !DISubprogram(name: "feedReplicationBacklogWithObject", scope: !3, file: !3, line: 154, type: !617, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !619)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !128}
!619 = !{!620, !621, !625, !626}
!620 = !DILocalVariable(name: "o", arg: 1, scope: !616, file: !3, line: 154, type: !128)
!621 = !DILocalVariable(name: "llstr", scope: !616, file: !3, line: 155, type: !622)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 168, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 21)
!625 = !DILocalVariable(name: "p", scope: !616, file: !3, line: 156, type: !47)
!626 = !DILocalVariable(name: "len", scope: !616, file: !3, line: 157, type: !142)
!627 = !DILocation(line: 154, column: 45, scope: !616)
!628 = !DILocation(line: 155, column: 5, scope: !616)
!629 = !DILocation(line: 155, column: 10, scope: !616)
!630 = !DILocation(line: 159, column: 12, scope: !631)
!631 = distinct !DILexicalBlock(scope: !616, file: !3, line: 159, column: 9)
!632 = !DILocation(line: 159, column: 21, scope: !631)
!633 = !DILocation(line: 0, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !3, line: 162, column: 12)
!635 = !DILocation(line: 159, column: 9, scope: !616)
!636 = !DILocation(line: 160, column: 54, scope: !637)
!637 = distinct !DILexicalBlock(scope: !631, file: !3, line: 159, column: 42)
!638 = !{!639, !483, i64 8}
!639 = !{!"redisObject", !482, i64 0, !482, i64 0, !482, i64 1, !482, i64 4, !483, i64 8}
!640 = !DILocation(line: 160, column: 15, scope: !637)
!641 = !DILocation(line: 157, column: 12, scope: !616)
!642 = !DILocation(line: 156, column: 11, scope: !616)
!643 = !DILocation(line: 162, column: 5, scope: !637)
!644 = !DILocation(line: 163, column: 25, scope: !634)
!645 = !DILocalVariable(name: "s", arg: 1, scope: !646, file: !140, line: 87, type: !651)
!646 = distinct !DISubprogram(name: "sdslen", scope: !140, file: !140, line: 87, type: !647, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !652)
!647 = !DISubroutineType(types: !648)
!648 = !{!649, !651}
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !650, line: 58, baseType: !18)
!650 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!652 = !{!645, !653}
!653 = !DILocalVariable(name: "flags", scope: !646, file: !140, line: 88, type: !269)
!654 = !DILocation(line: 87, column: 39, scope: !646, inlinedAt: !655)
!655 = distinct !DILocation(line: 163, column: 15, scope: !634)
!656 = !DILocation(line: 88, column: 27, scope: !646, inlinedAt: !655)
!657 = !DILocation(line: 88, column: 19, scope: !646, inlinedAt: !655)
!658 = !DILocation(line: 89, column: 5, scope: !646, inlinedAt: !655)
!659 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !655)
!660 = distinct !DILexicalBlock(scope: !646, file: !140, line: 89, column: 33)
!661 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !655)
!662 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !655)
!663 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !655)
!664 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !655)
!665 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !655)
!666 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !655)
!667 = !{!668, !668, i64 0}
!668 = !{!"short", !471, i64 0}
!669 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !655)
!670 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !655)
!671 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !655)
!672 = !{!482, !482, i64 0}
!673 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !655)
!674 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !655)
!675 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !655)
!676 = !{!481, !481, i64 0}
!677 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !655)
!678 = !DILocation(line: 0, scope: !660, inlinedAt: !655)
!679 = !DILocation(line: 102, column: 1, scope: !646, inlinedAt: !655)
!680 = !DILocation(line: 127, column: 35, scope: !565, inlinedAt: !681)
!681 = distinct !DILocation(line: 166, column: 5, scope: !616)
!682 = !DILocation(line: 127, column: 47, scope: !565, inlinedAt: !681)
!683 = !DILocation(line: 128, column: 20, scope: !565, inlinedAt: !681)
!684 = !DILocation(line: 130, column: 31, scope: !565, inlinedAt: !681)
!685 = !DILocation(line: 134, column: 5, scope: !565, inlinedAt: !681)
!686 = !DILocation(line: 145, column: 16, scope: !581, inlinedAt: !681)
!687 = !DILocation(line: 145, column: 46, scope: !581, inlinedAt: !681)
!688 = !DILocation(line: 135, column: 33, scope: !574, inlinedAt: !681)
!689 = !DILocation(line: 135, column: 60, scope: !574, inlinedAt: !681)
!690 = !DILocation(line: 135, column: 51, scope: !574, inlinedAt: !681)
!691 = !DILocation(line: 135, column: 16, scope: !574, inlinedAt: !681)
!692 = !DILocation(line: 136, column: 21, scope: !590, inlinedAt: !681)
!693 = !DILocation(line: 136, column: 13, scope: !574, inlinedAt: !681)
!694 = !DILocation(line: 137, column: 23, scope: !574, inlinedAt: !681)
!695 = !DILocation(line: 137, column: 35, scope: !574, inlinedAt: !681)
!696 = !DILocation(line: 137, column: 9, scope: !574, inlinedAt: !681)
!697 = !DILocation(line: 138, column: 33, scope: !574, inlinedAt: !681)
!698 = !DILocation(line: 139, column: 47, scope: !597, inlinedAt: !681)
!699 = !DILocation(line: 139, column: 37, scope: !597, inlinedAt: !681)
!700 = !DILocation(line: 139, column: 13, scope: !574, inlinedAt: !681)
!701 = !DILocation(line: 0, scope: !597, inlinedAt: !681)
!702 = !DILocation(line: 141, column: 13, scope: !574, inlinedAt: !681)
!703 = !DILocation(line: 142, column: 11, scope: !574, inlinedAt: !681)
!704 = !DILocation(line: 143, column: 37, scope: !574, inlinedAt: !681)
!705 = !DILocation(line: 145, column: 37, scope: !581, inlinedAt: !681)
!706 = !DILocation(line: 145, column: 9, scope: !565, inlinedAt: !681)
!707 = !DILocation(line: 146, column: 37, scope: !581, inlinedAt: !681)
!708 = !DILocation(line: 146, column: 9, scope: !581, inlinedAt: !681)
!709 = !DILocation(line: 149, column: 38, scope: !565, inlinedAt: !681)
!710 = !DILocation(line: 148, column: 38, scope: !565, inlinedAt: !681)
!711 = !DILocation(line: 148, column: 57, scope: !565, inlinedAt: !681)
!712 = !DILocation(line: 149, column: 59, scope: !565, inlinedAt: !681)
!713 = !DILocation(line: 148, column: 29, scope: !565, inlinedAt: !681)
!714 = !DILocation(line: 150, column: 1, scope: !565, inlinedAt: !681)
!715 = !DILocation(line: 167, column: 1, scope: !616)
!716 = distinct !DISubprogram(name: "replicationFeedSlaves", scope: !3, file: !3, line: 174, type: !717, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !719)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !99, !20, !150, !20}
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !732, !735, !737, !743, !747}
!720 = !DILocalVariable(name: "slaves", arg: 1, scope: !716, file: !3, line: 174, type: !99)
!721 = !DILocalVariable(name: "dictid", arg: 2, scope: !716, file: !3, line: 174, type: !20)
!722 = !DILocalVariable(name: "argv", arg: 3, scope: !716, file: !3, line: 174, type: !150)
!723 = !DILocalVariable(name: "argc", arg: 4, scope: !716, file: !3, line: 174, type: !20)
!724 = !DILocalVariable(name: "ln", scope: !716, file: !3, line: 175, type: !105)
!725 = !DILocalVariable(name: "li", scope: !716, file: !3, line: 176, type: !420)
!726 = !DILocalVariable(name: "j", scope: !716, file: !3, line: 177, type: !20)
!727 = !DILocalVariable(name: "len", scope: !716, file: !3, line: 177, type: !20)
!728 = !DILocalVariable(name: "llstr", scope: !716, file: !3, line: 178, type: !622)
!729 = !DILocalVariable(name: "selectcmd", scope: !730, file: !3, line: 196, type: !128)
!730 = distinct !DILexicalBlock(scope: !731, file: !3, line: 195, column: 38)
!731 = distinct !DILexicalBlock(scope: !716, file: !3, line: 195, column: 9)
!732 = !DILocalVariable(name: "dictid_len", scope: !733, file: !3, line: 202, type: !20)
!733 = distinct !DILexicalBlock(scope: !734, file: !3, line: 201, column: 16)
!734 = distinct !DILexicalBlock(scope: !730, file: !3, line: 199, column: 13)
!735 = !DILocalVariable(name: "slave", scope: !736, file: !3, line: 217, type: !8)
!736 = distinct !DILexicalBlock(scope: !730, file: !3, line: 216, column: 37)
!737 = !DILocalVariable(name: "aux", scope: !738, file: !3, line: 229, type: !740)
!738 = distinct !DILexicalBlock(scope: !739, file: !3, line: 228, column: 30)
!739 = distinct !DILexicalBlock(scope: !716, file: !3, line: 228, column: 9)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !741)
!741 = !{!742}
!742 = !DISubrange(count: 24)
!743 = !DILocalVariable(name: "objlen", scope: !744, file: !3, line: 239, type: !79)
!744 = distinct !DILexicalBlock(scope: !745, file: !3, line: 238, column: 36)
!745 = distinct !DILexicalBlock(scope: !746, file: !3, line: 238, column: 9)
!746 = distinct !DILexicalBlock(scope: !738, file: !3, line: 238, column: 9)
!747 = !DILocalVariable(name: "slave", scope: !748, file: !3, line: 257, type: !8)
!748 = distinct !DILexicalBlock(scope: !716, file: !3, line: 256, column: 33)
!749 = !DILocation(line: 174, column: 34, scope: !716)
!750 = !DILocation(line: 174, column: 46, scope: !716)
!751 = !DILocation(line: 174, column: 61, scope: !716)
!752 = !DILocation(line: 174, column: 71, scope: !716)
!753 = !DILocation(line: 176, column: 5, scope: !716)
!754 = !DILocation(line: 178, column: 5, scope: !716)
!755 = !DILocation(line: 178, column: 10, scope: !716)
!756 = !DILocation(line: 185, column: 16, scope: !757)
!757 = distinct !DILexicalBlock(scope: !716, file: !3, line: 185, column: 9)
!758 = !{!512, !483, i64 2464}
!759 = !DILocation(line: 185, column: 27, scope: !757)
!760 = !DILocation(line: 185, column: 9, scope: !716)
!761 = !DILocation(line: 189, column: 16, scope: !762)
!762 = distinct !DILexicalBlock(scope: !716, file: !3, line: 189, column: 9)
!763 = !DILocation(line: 189, column: 29, scope: !762)
!764 = !DILocation(line: 189, column: 37, scope: !762)
!765 = !DILocation(line: 189, column: 40, scope: !762)
!766 = !DILocation(line: 189, column: 59, scope: !762)
!767 = !DILocation(line: 189, column: 9, scope: !716)
!768 = !DILocation(line: 192, column: 5, scope: !716)
!769 = !DILocation(line: 195, column: 16, scope: !731)
!770 = !{!512, !482, i64 2368}
!771 = !DILocation(line: 195, column: 27, scope: !731)
!772 = !DILocation(line: 195, column: 9, scope: !716)
!773 = !DILocation(line: 225, column: 23, scope: !716)
!774 = !DILocation(line: 228, column: 9, scope: !716)
!775 = !DILocation(line: 199, column: 25, scope: !734)
!776 = !DILocation(line: 0, scope: !733)
!777 = !DILocation(line: 200, column: 25, scope: !778)
!778 = distinct !DILexicalBlock(scope: !734, file: !3, line: 199, column: 63)
!779 = !{!483, !483, i64 0}
!780 = !DILocation(line: 196, column: 15, scope: !730)
!781 = !DILocation(line: 212, column: 13, scope: !730)
!782 = !DILocation(line: 204, column: 26, scope: !733)
!783 = !DILocation(line: 202, column: 17, scope: !733)
!784 = !DILocation(line: 206, column: 30, scope: !733)
!785 = !DILocation(line: 206, column: 17, scope: !733)
!786 = !DILocation(line: 205, column: 25, scope: !733)
!787 = !DILocation(line: 212, column: 20, scope: !788)
!788 = distinct !DILexicalBlock(scope: !730, file: !3, line: 212, column: 13)
!789 = !DILocation(line: 212, column: 13, scope: !788)
!790 = !DILocation(line: 212, column: 34, scope: !788)
!791 = !DILocation(line: 176, column: 14, scope: !716)
!792 = !DILocation(line: 215, column: 9, scope: !730)
!793 = !DILocation(line: 216, column: 21, scope: !730)
!794 = !DILocation(line: 175, column: 15, scope: !716)
!795 = !DILocation(line: 216, column: 9, scope: !730)
!796 = !DILocation(line: 217, column: 33, scope: !736)
!797 = !{!798, !483, i64 16}
!798 = !{!"listNode", !483, i64 0, !483, i64 8, !483, i64 16}
!799 = !DILocation(line: 217, column: 21, scope: !736)
!800 = !DILocation(line: 218, column: 24, scope: !801)
!801 = distinct !DILexicalBlock(scope: !736, file: !3, line: 218, column: 17)
!802 = !{!480, !482, i64 168}
!803 = !DILocation(line: 218, column: 34, scope: !801)
!804 = !DILocation(line: 218, column: 17, scope: !736)
!805 = distinct !{!805, !795, !806}
!806 = !DILocation(line: 220, column: 9, scope: !730)
!807 = !DILocation(line: 219, column: 13, scope: !736)
!808 = !DILocation(line: 222, column: 24, scope: !809)
!809 = distinct !DILexicalBlock(scope: !730, file: !3, line: 222, column: 13)
!810 = !DILocation(line: 223, column: 13, scope: !809)
!811 = !DILocation(line: 228, column: 16, scope: !739)
!812 = !DILocation(line: 228, column: 9, scope: !739)
!813 = !DILocation(line: 229, column: 9, scope: !738)
!814 = !DILocation(line: 229, column: 14, scope: !738)
!815 = !DILocation(line: 232, column: 16, scope: !738)
!816 = !DILocation(line: 233, column: 28, scope: !738)
!817 = !DILocation(line: 233, column: 45, scope: !738)
!818 = !DILocation(line: 233, column: 15, scope: !738)
!819 = !DILocation(line: 177, column: 12, scope: !716)
!820 = !DILocation(line: 234, column: 16, scope: !738)
!821 = !DILocation(line: 234, column: 9, scope: !738)
!822 = !DILocation(line: 234, column: 20, scope: !738)
!823 = !DILocation(line: 235, column: 16, scope: !738)
!824 = !DILocation(line: 235, column: 9, scope: !738)
!825 = !DILocation(line: 235, column: 20, scope: !738)
!826 = !DILocation(line: 236, column: 39, scope: !738)
!827 = !DILocation(line: 236, column: 36, scope: !738)
!828 = !DILocation(line: 127, column: 35, scope: !565, inlinedAt: !829)
!829 = distinct !DILocation(line: 236, column: 9, scope: !738)
!830 = !DILocation(line: 127, column: 47, scope: !565, inlinedAt: !829)
!831 = !DILocation(line: 128, column: 20, scope: !565, inlinedAt: !829)
!832 = !DILocation(line: 130, column: 31, scope: !565, inlinedAt: !829)
!833 = !DILocation(line: 134, column: 5, scope: !565, inlinedAt: !829)
!834 = !DILocation(line: 145, column: 16, scope: !581, inlinedAt: !829)
!835 = !DILocation(line: 145, column: 46, scope: !581, inlinedAt: !829)
!836 = !DILocation(line: 135, column: 33, scope: !574, inlinedAt: !829)
!837 = !DILocation(line: 135, column: 60, scope: !574, inlinedAt: !829)
!838 = !DILocation(line: 135, column: 51, scope: !574, inlinedAt: !829)
!839 = !DILocation(line: 135, column: 16, scope: !574, inlinedAt: !829)
!840 = !DILocation(line: 136, column: 21, scope: !590, inlinedAt: !829)
!841 = !DILocation(line: 136, column: 13, scope: !574, inlinedAt: !829)
!842 = !DILocation(line: 137, column: 23, scope: !574, inlinedAt: !829)
!843 = !DILocation(line: 137, column: 35, scope: !574, inlinedAt: !829)
!844 = !DILocation(line: 137, column: 9, scope: !574, inlinedAt: !829)
!845 = !DILocation(line: 138, column: 33, scope: !574, inlinedAt: !829)
!846 = !DILocation(line: 139, column: 47, scope: !597, inlinedAt: !829)
!847 = !DILocation(line: 139, column: 37, scope: !597, inlinedAt: !829)
!848 = !DILocation(line: 139, column: 13, scope: !574, inlinedAt: !829)
!849 = !DILocation(line: 0, scope: !597, inlinedAt: !829)
!850 = !DILocation(line: 141, column: 13, scope: !574, inlinedAt: !829)
!851 = !DILocation(line: 142, column: 11, scope: !574, inlinedAt: !829)
!852 = !DILocation(line: 143, column: 37, scope: !574, inlinedAt: !829)
!853 = !DILocation(line: 145, column: 37, scope: !581, inlinedAt: !829)
!854 = !DILocation(line: 145, column: 9, scope: !565, inlinedAt: !829)
!855 = !DILocation(line: 146, column: 37, scope: !581, inlinedAt: !829)
!856 = !DILocation(line: 146, column: 9, scope: !581, inlinedAt: !829)
!857 = !DILocation(line: 149, column: 38, scope: !565, inlinedAt: !829)
!858 = !DILocation(line: 148, column: 38, scope: !565, inlinedAt: !829)
!859 = !DILocation(line: 148, column: 57, scope: !565, inlinedAt: !829)
!860 = !DILocation(line: 149, column: 59, scope: !565, inlinedAt: !829)
!861 = !DILocation(line: 148, column: 29, scope: !565, inlinedAt: !829)
!862 = !DILocation(line: 150, column: 1, scope: !565, inlinedAt: !829)
!863 = !DILocation(line: 177, column: 9, scope: !716)
!864 = !DILocation(line: 238, column: 23, scope: !745)
!865 = !DILocation(line: 238, column: 9, scope: !746)
!866 = !DILocation(line: 239, column: 43, scope: !744)
!867 = !DILocation(line: 239, column: 27, scope: !744)
!868 = !DILocation(line: 239, column: 18, scope: !744)
!869 = !DILocation(line: 244, column: 20, scope: !744)
!870 = !DILocation(line: 245, column: 19, scope: !744)
!871 = !DILocation(line: 246, column: 20, scope: !744)
!872 = !DILocation(line: 246, column: 13, scope: !744)
!873 = !DILocation(line: 246, column: 24, scope: !744)
!874 = !DILocation(line: 247, column: 20, scope: !744)
!875 = !DILocation(line: 247, column: 13, scope: !744)
!876 = !DILocation(line: 247, column: 24, scope: !744)
!877 = !DILocation(line: 248, column: 43, scope: !744)
!878 = !DILocation(line: 248, column: 40, scope: !744)
!879 = !DILocation(line: 127, column: 35, scope: !565, inlinedAt: !880)
!880 = distinct !DILocation(line: 248, column: 13, scope: !744)
!881 = !DILocation(line: 127, column: 47, scope: !565, inlinedAt: !880)
!882 = !DILocation(line: 128, column: 20, scope: !565, inlinedAt: !880)
!883 = !DILocation(line: 130, column: 31, scope: !565, inlinedAt: !880)
!884 = !DILocation(line: 134, column: 5, scope: !565, inlinedAt: !880)
!885 = !DILocation(line: 145, column: 16, scope: !581, inlinedAt: !880)
!886 = !DILocation(line: 145, column: 46, scope: !581, inlinedAt: !880)
!887 = !DILocation(line: 135, column: 33, scope: !574, inlinedAt: !880)
!888 = !DILocation(line: 135, column: 60, scope: !574, inlinedAt: !880)
!889 = !DILocation(line: 135, column: 51, scope: !574, inlinedAt: !880)
!890 = !DILocation(line: 135, column: 16, scope: !574, inlinedAt: !880)
!891 = !DILocation(line: 136, column: 21, scope: !590, inlinedAt: !880)
!892 = !DILocation(line: 136, column: 13, scope: !574, inlinedAt: !880)
!893 = !DILocation(line: 137, column: 23, scope: !574, inlinedAt: !880)
!894 = !DILocation(line: 137, column: 35, scope: !574, inlinedAt: !880)
!895 = !DILocation(line: 137, column: 9, scope: !574, inlinedAt: !880)
!896 = !DILocation(line: 138, column: 33, scope: !574, inlinedAt: !880)
!897 = !DILocation(line: 139, column: 47, scope: !597, inlinedAt: !880)
!898 = !DILocation(line: 139, column: 37, scope: !597, inlinedAt: !880)
!899 = !DILocation(line: 139, column: 13, scope: !574, inlinedAt: !880)
!900 = !DILocation(line: 0, scope: !597, inlinedAt: !880)
!901 = !DILocation(line: 141, column: 13, scope: !574, inlinedAt: !880)
!902 = !DILocation(line: 142, column: 11, scope: !574, inlinedAt: !880)
!903 = !DILocation(line: 143, column: 37, scope: !574, inlinedAt: !880)
!904 = !DILocation(line: 145, column: 37, scope: !581, inlinedAt: !880)
!905 = !DILocation(line: 145, column: 9, scope: !565, inlinedAt: !880)
!906 = !DILocation(line: 146, column: 37, scope: !581, inlinedAt: !880)
!907 = !DILocation(line: 146, column: 9, scope: !581, inlinedAt: !880)
!908 = !DILocation(line: 149, column: 38, scope: !565, inlinedAt: !880)
!909 = !DILocation(line: 148, column: 38, scope: !565, inlinedAt: !880)
!910 = !DILocation(line: 148, column: 57, scope: !565, inlinedAt: !880)
!911 = !DILocation(line: 149, column: 59, scope: !565, inlinedAt: !880)
!912 = !DILocation(line: 148, column: 29, scope: !565, inlinedAt: !880)
!913 = !DILocation(line: 150, column: 1, scope: !565, inlinedAt: !880)
!914 = !DILocation(line: 249, column: 46, scope: !744)
!915 = !DILocation(line: 249, column: 13, scope: !744)
!916 = !DILocation(line: 250, column: 39, scope: !744)
!917 = !DILocation(line: 250, column: 43, scope: !744)
!918 = !DILocation(line: 127, column: 35, scope: !565, inlinedAt: !919)
!919 = distinct !DILocation(line: 250, column: 13, scope: !744)
!920 = !DILocation(line: 127, column: 47, scope: !565, inlinedAt: !919)
!921 = !DILocation(line: 128, column: 20, scope: !565, inlinedAt: !919)
!922 = !DILocation(line: 130, column: 31, scope: !565, inlinedAt: !919)
!923 = !DILocation(line: 135, column: 33, scope: !574, inlinedAt: !919)
!924 = !DILocation(line: 135, column: 60, scope: !574, inlinedAt: !919)
!925 = !DILocation(line: 135, column: 51, scope: !574, inlinedAt: !919)
!926 = !DILocation(line: 135, column: 16, scope: !574, inlinedAt: !919)
!927 = !DILocation(line: 136, column: 21, scope: !590, inlinedAt: !919)
!928 = !DILocation(line: 136, column: 13, scope: !574, inlinedAt: !919)
!929 = !DILocation(line: 137, column: 23, scope: !574, inlinedAt: !919)
!930 = !DILocation(line: 137, column: 35, scope: !574, inlinedAt: !919)
!931 = !DILocation(line: 137, column: 9, scope: !574, inlinedAt: !919)
!932 = !DILocation(line: 138, column: 33, scope: !574, inlinedAt: !919)
!933 = !DILocation(line: 139, column: 47, scope: !597, inlinedAt: !919)
!934 = !DILocation(line: 139, column: 37, scope: !597, inlinedAt: !919)
!935 = !DILocation(line: 139, column: 13, scope: !574, inlinedAt: !919)
!936 = !DILocation(line: 0, scope: !597, inlinedAt: !919)
!937 = !DILocation(line: 141, column: 13, scope: !574, inlinedAt: !919)
!938 = !DILocation(line: 142, column: 11, scope: !574, inlinedAt: !919)
!939 = !DILocation(line: 143, column: 37, scope: !574, inlinedAt: !919)
!940 = !DILocation(line: 134, column: 5, scope: !565, inlinedAt: !919)
!941 = !DILocation(line: 145, column: 37, scope: !581, inlinedAt: !919)
!942 = !DILocation(line: 145, column: 9, scope: !565, inlinedAt: !919)
!943 = !DILocation(line: 146, column: 37, scope: !581, inlinedAt: !919)
!944 = !DILocation(line: 146, column: 9, scope: !581, inlinedAt: !919)
!945 = !DILocation(line: 149, column: 38, scope: !565, inlinedAt: !919)
!946 = !DILocation(line: 148, column: 38, scope: !565, inlinedAt: !919)
!947 = !DILocation(line: 148, column: 57, scope: !565, inlinedAt: !919)
!948 = !DILocation(line: 149, column: 59, scope: !565, inlinedAt: !919)
!949 = !DILocation(line: 148, column: 29, scope: !565, inlinedAt: !919)
!950 = !DILocation(line: 150, column: 1, scope: !565, inlinedAt: !919)
!951 = !DILocation(line: 238, column: 32, scope: !745)
!952 = distinct !{!952, !865, !953}
!953 = !DILocation(line: 251, column: 9, scope: !746)
!954 = !DILocation(line: 252, column: 5, scope: !739)
!955 = !DILocation(line: 252, column: 5, scope: !738)
!956 = !DILocation(line: 255, column: 5, scope: !716)
!957 = !DILocation(line: 256, column: 17, scope: !716)
!958 = !DILocation(line: 256, column: 5, scope: !716)
!959 = !DILocation(line: 257, column: 29, scope: !748)
!960 = !DILocation(line: 257, column: 17, scope: !748)
!961 = !DILocation(line: 260, column: 20, scope: !962)
!962 = distinct !DILexicalBlock(scope: !748, file: !3, line: 260, column: 13)
!963 = !DILocation(line: 260, column: 30, scope: !962)
!964 = !DILocation(line: 260, column: 13, scope: !748)
!965 = distinct !{!965, !958, !966}
!966 = !DILocation(line: 273, column: 5, scope: !716)
!967 = !DILocation(line: 267, column: 9, scope: !748)
!968 = !DILocation(line: 271, column: 9, scope: !969)
!969 = distinct !DILexicalBlock(scope: !748, file: !3, line: 271, column: 9)
!970 = !DILocation(line: 272, column: 32, scope: !971)
!971 = distinct !DILexicalBlock(scope: !969, file: !3, line: 271, column: 9)
!972 = !DILocation(line: 272, column: 13, scope: !971)
!973 = !DILocation(line: 271, column: 32, scope: !971)
!974 = !DILocation(line: 271, column: 23, scope: !971)
!975 = distinct !{!975, !968, !976}
!976 = !DILocation(line: 272, column: 39, scope: !969)
!977 = !DILocation(line: 274, column: 1, scope: !716)
!978 = distinct !DISubprogram(name: "replicationFeedSlavesFromMasterStream", scope: !3, file: !3, line: 279, type: !979, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !981)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !99, !6, !142}
!981 = !{!982, !983, !984, !985, !986, !987}
!982 = !DILocalVariable(name: "slaves", arg: 1, scope: !978, file: !3, line: 279, type: !99)
!983 = !DILocalVariable(name: "buf", arg: 2, scope: !978, file: !3, line: 279, type: !6)
!984 = !DILocalVariable(name: "buflen", arg: 3, scope: !978, file: !3, line: 279, type: !142)
!985 = !DILocalVariable(name: "ln", scope: !978, file: !3, line: 280, type: !105)
!986 = !DILocalVariable(name: "li", scope: !978, file: !3, line: 281, type: !420)
!987 = !DILocalVariable(name: "slave", scope: !988, file: !3, line: 296, type: !8)
!988 = distinct !DILexicalBlock(scope: !978, file: !3, line: 295, column: 33)
!989 = !DILocation(line: 279, column: 50, scope: !978)
!990 = !DILocation(line: 279, column: 64, scope: !978)
!991 = !DILocation(line: 279, column: 76, scope: !978)
!992 = !DILocation(line: 281, column: 5, scope: !978)
!993 = !DILocation(line: 293, column: 16, scope: !994)
!994 = distinct !DILexicalBlock(scope: !978, file: !3, line: 293, column: 9)
!995 = !DILocation(line: 293, column: 9, scope: !994)
!996 = !DILocation(line: 293, column: 9, scope: !978)
!997 = !DILocation(line: 127, column: 35, scope: !565, inlinedAt: !998)
!998 = distinct !DILocation(line: 293, column: 30, scope: !994)
!999 = !DILocation(line: 127, column: 47, scope: !565, inlinedAt: !998)
!1000 = !DILocation(line: 128, column: 20, scope: !565, inlinedAt: !998)
!1001 = !DILocation(line: 130, column: 31, scope: !565, inlinedAt: !998)
!1002 = !DILocation(line: 134, column: 5, scope: !565, inlinedAt: !998)
!1003 = !DILocation(line: 145, column: 16, scope: !581, inlinedAt: !998)
!1004 = !DILocation(line: 145, column: 46, scope: !581, inlinedAt: !998)
!1005 = !DILocation(line: 135, column: 33, scope: !574, inlinedAt: !998)
!1006 = !DILocation(line: 135, column: 60, scope: !574, inlinedAt: !998)
!1007 = !DILocation(line: 137, column: 23, scope: !574, inlinedAt: !998)
!1008 = !DILocation(line: 135, column: 51, scope: !574, inlinedAt: !998)
!1009 = !DILocation(line: 135, column: 16, scope: !574, inlinedAt: !998)
!1010 = !DILocation(line: 136, column: 21, scope: !590, inlinedAt: !998)
!1011 = !DILocation(line: 136, column: 13, scope: !574, inlinedAt: !998)
!1012 = !DILocation(line: 137, column: 35, scope: !574, inlinedAt: !998)
!1013 = !DILocation(line: 137, column: 9, scope: !574, inlinedAt: !998)
!1014 = !DILocation(line: 138, column: 33, scope: !574, inlinedAt: !998)
!1015 = !DILocation(line: 139, column: 47, scope: !597, inlinedAt: !998)
!1016 = !DILocation(line: 139, column: 37, scope: !597, inlinedAt: !998)
!1017 = !DILocation(line: 139, column: 13, scope: !574, inlinedAt: !998)
!1018 = !DILocation(line: 0, scope: !597, inlinedAt: !998)
!1019 = !DILocation(line: 141, column: 13, scope: !574, inlinedAt: !998)
!1020 = !DILocation(line: 143, column: 37, scope: !574, inlinedAt: !998)
!1021 = !DILocation(line: 142, column: 11, scope: !574, inlinedAt: !998)
!1022 = !DILocation(line: 145, column: 37, scope: !581, inlinedAt: !998)
!1023 = !DILocation(line: 145, column: 9, scope: !565, inlinedAt: !998)
!1024 = !DILocation(line: 146, column: 37, scope: !581, inlinedAt: !998)
!1025 = !DILocation(line: 146, column: 9, scope: !581, inlinedAt: !998)
!1026 = !DILocation(line: 149, column: 38, scope: !565, inlinedAt: !998)
!1027 = !DILocation(line: 148, column: 38, scope: !565, inlinedAt: !998)
!1028 = !DILocation(line: 148, column: 57, scope: !565, inlinedAt: !998)
!1029 = !DILocation(line: 149, column: 59, scope: !565, inlinedAt: !998)
!1030 = !DILocation(line: 148, column: 29, scope: !565, inlinedAt: !998)
!1031 = !DILocation(line: 150, column: 1, scope: !565, inlinedAt: !998)
!1032 = !DILocation(line: 293, column: 30, scope: !994)
!1033 = !DILocation(line: 281, column: 14, scope: !978)
!1034 = !DILocation(line: 294, column: 5, scope: !978)
!1035 = !DILocation(line: 295, column: 17, scope: !978)
!1036 = !DILocation(line: 280, column: 15, scope: !978)
!1037 = !DILocation(line: 295, column: 5, scope: !978)
!1038 = !DILocation(line: 296, column: 29, scope: !988)
!1039 = !DILocation(line: 296, column: 17, scope: !988)
!1040 = !DILocation(line: 299, column: 20, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !988, file: !3, line: 299, column: 13)
!1042 = !DILocation(line: 299, column: 30, scope: !1041)
!1043 = !DILocation(line: 299, column: 13, scope: !988)
!1044 = distinct !{!1044, !1037, !1045}
!1045 = !DILocation(line: 301, column: 5, scope: !978)
!1046 = !DILocation(line: 300, column: 9, scope: !988)
!1047 = !DILocation(line: 302, column: 1, scope: !978)
!1048 = distinct !DISubprogram(name: "replicationFeedMonitors", scope: !3, file: !3, line: 304, type: !1049, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1051)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !8, !99, !20, !150, !20}
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1068}
!1052 = !DILocalVariable(name: "c", arg: 1, scope: !1048, file: !3, line: 304, type: !8)
!1053 = !DILocalVariable(name: "monitors", arg: 2, scope: !1048, file: !3, line: 304, type: !99)
!1054 = !DILocalVariable(name: "dictid", arg: 3, scope: !1048, file: !3, line: 304, type: !20)
!1055 = !DILocalVariable(name: "argv", arg: 4, scope: !1048, file: !3, line: 304, type: !150)
!1056 = !DILocalVariable(name: "argc", arg: 5, scope: !1048, file: !3, line: 304, type: !20)
!1057 = !DILocalVariable(name: "ln", scope: !1048, file: !3, line: 305, type: !105)
!1058 = !DILocalVariable(name: "li", scope: !1048, file: !3, line: 306, type: !420)
!1059 = !DILocalVariable(name: "j", scope: !1048, file: !3, line: 307, type: !20)
!1060 = !DILocalVariable(name: "cmdrepr", scope: !1048, file: !3, line: 308, type: !139)
!1061 = !DILocalVariable(name: "cmdobj", scope: !1048, file: !3, line: 309, type: !128)
!1062 = !DILocalVariable(name: "tv", scope: !1048, file: !3, line: 310, type: !1063)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !185, line: 44, size: 128, elements: !1064)
!1064 = !{!1065, !1066}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1063, file: !185, line: 45, baseType: !184, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1063, file: !185, line: 46, baseType: !1067, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "suseconds_t", file: !185, line: 39, baseType: !79)
!1068 = !DILocalVariable(name: "monitor", scope: !1069, file: !3, line: 337, type: !8)
!1069 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 336, column: 33)
!1070 = !DILocation(line: 304, column: 38, scope: !1048)
!1071 = !DILocation(line: 304, column: 47, scope: !1048)
!1072 = !DILocation(line: 304, column: 61, scope: !1048)
!1073 = !DILocation(line: 304, column: 76, scope: !1048)
!1074 = !DILocation(line: 304, column: 86, scope: !1048)
!1075 = !DILocation(line: 306, column: 5, scope: !1048)
!1076 = !DILocation(line: 308, column: 19, scope: !1048)
!1077 = !DILocation(line: 308, column: 9, scope: !1048)
!1078 = !DILocation(line: 310, column: 5, scope: !1048)
!1079 = !DILocation(line: 310, column: 20, scope: !1048)
!1080 = !DILocation(line: 312, column: 5, scope: !1048)
!1081 = !DILocation(line: 313, column: 58, scope: !1048)
!1082 = !{!1083, !481, i64 0}
!1083 = !{!"timeval", !481, i64 0, !481, i64 8}
!1084 = !DILocation(line: 313, column: 74, scope: !1048)
!1085 = !{!1083, !481, i64 8}
!1086 = !DILocation(line: 313, column: 15, scope: !1048)
!1087 = !DILocation(line: 314, column: 12, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 314, column: 9)
!1089 = !{!480, !482, i64 160}
!1090 = !DILocation(line: 314, column: 18, scope: !1088)
!1091 = !DILocation(line: 314, column: 9, scope: !1048)
!1092 = !DILocation(line: 315, column: 19, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 314, column: 32)
!1094 = !DILocation(line: 316, column: 5, scope: !1093)
!1095 = !DILocation(line: 316, column: 25, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 316, column: 16)
!1097 = !DILocation(line: 316, column: 16, scope: !1088)
!1098 = !DILocation(line: 317, column: 70, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 316, column: 47)
!1100 = !{!512, !483, i64 360}
!1101 = !DILocation(line: 317, column: 19, scope: !1099)
!1102 = !DILocation(line: 318, column: 5, scope: !1099)
!1103 = !DILocation(line: 319, column: 58, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 318, column: 12)
!1105 = !DILocation(line: 319, column: 19, scope: !1104)
!1106 = !DILocation(line: 0, scope: !1104)
!1107 = !DILocation(line: 307, column: 9, scope: !1048)
!1108 = !DILocation(line: 322, column: 19, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 322, column: 5)
!1110 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 322, column: 5)
!1111 = !DILocation(line: 322, column: 5, scope: !1110)
!1112 = !DILocation(line: 323, column: 13, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 323, column: 13)
!1114 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 322, column: 32)
!1115 = !DILocation(line: 323, column: 22, scope: !1113)
!1116 = !DILocation(line: 323, column: 31, scope: !1113)
!1117 = !DILocation(line: 0, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 325, column: 16)
!1119 = !DILocation(line: 323, column: 13, scope: !1114)
!1120 = !DILocation(line: 324, column: 56, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 323, column: 52)
!1122 = !DILocation(line: 324, column: 23, scope: !1121)
!1123 = !DILocation(line: 325, column: 9, scope: !1121)
!1124 = !DILocation(line: 87, column: 39, scope: !646, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 327, column: 25, scope: !1118)
!1126 = !DILocation(line: 88, column: 27, scope: !646, inlinedAt: !1125)
!1127 = !DILocation(line: 88, column: 19, scope: !646, inlinedAt: !1125)
!1128 = !DILocation(line: 89, column: 5, scope: !646, inlinedAt: !1125)
!1129 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !1125)
!1130 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !1125)
!1131 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !1125)
!1132 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !1125)
!1133 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !1125)
!1134 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !1125)
!1135 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !1125)
!1136 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !1125)
!1137 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !1125)
!1138 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !1125)
!1139 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !1125)
!1140 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !1125)
!1141 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !1125)
!1142 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !1125)
!1143 = !DILocation(line: 0, scope: !660, inlinedAt: !1125)
!1144 = !DILocation(line: 102, column: 1, scope: !646, inlinedAt: !1125)
!1145 = !DILocation(line: 326, column: 23, scope: !1118)
!1146 = !DILocation(line: 329, column: 15, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 329, column: 13)
!1148 = !DILocation(line: 329, column: 13, scope: !1114)
!1149 = !DILocation(line: 330, column: 23, scope: !1147)
!1150 = !DILocation(line: 330, column: 13, scope: !1147)
!1151 = !DILocation(line: 0, scope: !1121)
!1152 = !DILocation(line: 322, column: 28, scope: !1109)
!1153 = distinct !{!1153, !1111, !1154}
!1154 = !DILocation(line: 331, column: 5, scope: !1110)
!1155 = !DILocation(line: 0, scope: !1147)
!1156 = !DILocation(line: 332, column: 15, scope: !1048)
!1157 = !DILocation(line: 333, column: 14, scope: !1048)
!1158 = !DILocation(line: 309, column: 11, scope: !1048)
!1159 = !DILocation(line: 306, column: 14, scope: !1048)
!1160 = !DILocation(line: 335, column: 5, scope: !1048)
!1161 = !DILocation(line: 336, column: 17, scope: !1048)
!1162 = !DILocation(line: 305, column: 15, scope: !1048)
!1163 = !DILocation(line: 336, column: 5, scope: !1048)
!1164 = !DILocation(line: 337, column: 31, scope: !1069)
!1165 = !DILocation(line: 337, column: 17, scope: !1069)
!1166 = !DILocation(line: 338, column: 9, scope: !1069)
!1167 = distinct !{!1167, !1163, !1168}
!1168 = !DILocation(line: 339, column: 5, scope: !1048)
!1169 = !DILocation(line: 340, column: 5, scope: !1048)
!1170 = !DILocation(line: 341, column: 1, scope: !1048)
!1171 = distinct !DISubprogram(name: "addReplyReplicationBacklog", scope: !3, file: !3, line: 345, type: !1172, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1174)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!97, !8, !97}
!1174 = !{!1175, !1176, !1177, !1178, !1179, !1180}
!1175 = !DILocalVariable(name: "c", arg: 1, scope: !1171, file: !3, line: 345, type: !8)
!1176 = !DILocalVariable(name: "offset", arg: 2, scope: !1171, file: !3, line: 345, type: !97)
!1177 = !DILocalVariable(name: "j", scope: !1171, file: !3, line: 346, type: !97)
!1178 = !DILocalVariable(name: "skip", scope: !1171, file: !3, line: 346, type: !97)
!1179 = !DILocalVariable(name: "len", scope: !1171, file: !3, line: 346, type: !97)
!1180 = !DILocalVariable(name: "thislen", scope: !1181, file: !3, line: 383, type: !97)
!1181 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 382, column: 16)
!1182 = !DILocation(line: 345, column: 46, scope: !1171)
!1183 = !DILocation(line: 345, column: 59, scope: !1171)
!1184 = !DILocation(line: 348, column: 5, scope: !1171)
!1185 = !DILocation(line: 350, column: 16, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 350, column: 9)
!1187 = !DILocation(line: 350, column: 37, scope: !1186)
!1188 = !DILocation(line: 350, column: 9, scope: !1171)
!1189 = !DILocation(line: 351, column: 9, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 350, column: 43)
!1191 = !DILocation(line: 352, column: 9, scope: !1190)
!1192 = !DILocation(line: 356, column: 21, scope: !1171)
!1193 = !DILocation(line: 355, column: 5, scope: !1171)
!1194 = !DILocation(line: 358, column: 21, scope: !1171)
!1195 = !DILocation(line: 357, column: 5, scope: !1171)
!1196 = !DILocation(line: 360, column: 21, scope: !1171)
!1197 = !DILocation(line: 359, column: 5, scope: !1171)
!1198 = !DILocation(line: 362, column: 21, scope: !1171)
!1199 = !DILocation(line: 361, column: 5, scope: !1171)
!1200 = !DILocation(line: 365, column: 28, scope: !1171)
!1201 = !DILocation(line: 365, column: 19, scope: !1171)
!1202 = !DILocation(line: 346, column: 18, scope: !1171)
!1203 = !DILocation(line: 366, column: 5, scope: !1171)
!1204 = !DILocation(line: 370, column: 17, scope: !1171)
!1205 = !DILocation(line: 371, column: 17, scope: !1171)
!1206 = !DILocation(line: 371, column: 42, scope: !1171)
!1207 = !DILocation(line: 371, column: 34, scope: !1171)
!1208 = !DILocation(line: 370, column: 34, scope: !1171)
!1209 = !DILocation(line: 371, column: 65, scope: !1171)
!1210 = !DILocation(line: 346, column: 15, scope: !1171)
!1211 = !DILocation(line: 373, column: 5, scope: !1171)
!1212 = !DILocation(line: 376, column: 29, scope: !1171)
!1213 = !DILocation(line: 380, column: 18, scope: !1171)
!1214 = !DILocation(line: 380, column: 39, scope: !1171)
!1215 = !DILocation(line: 346, column: 24, scope: !1171)
!1216 = !DILocation(line: 381, column: 5, scope: !1171)
!1217 = !DILocation(line: 382, column: 5, scope: !1171)
!1218 = !DILocation(line: 376, column: 12, scope: !1171)
!1219 = !DILocation(line: 376, column: 20, scope: !1171)
!1220 = !DILocation(line: 384, column: 22, scope: !1181)
!1221 = !DILocation(line: 384, column: 40, scope: !1181)
!1222 = !DILocation(line: 384, column: 45, scope: !1181)
!1223 = !DILocation(line: 384, column: 13, scope: !1181)
!1224 = !DILocation(line: 383, column: 19, scope: !1181)
!1225 = !DILocation(line: 387, column: 9, scope: !1181)
!1226 = !DILocation(line: 388, column: 40, scope: !1181)
!1227 = !DILocation(line: 388, column: 53, scope: !1181)
!1228 = !DILocation(line: 388, column: 23, scope: !1181)
!1229 = !DILocation(line: 388, column: 9, scope: !1181)
!1230 = !DILocation(line: 389, column: 13, scope: !1181)
!1231 = distinct !{!1231, !1217, !1232}
!1232 = !DILocation(line: 391, column: 5, scope: !1171)
!1233 = distinct !{!1233, !1217, !1232, !1234}
!1234 = !{!"llvm.loop.unroll.disable"}
!1235 = !DILocation(line: 392, column: 19, scope: !1171)
!1236 = !DILocation(line: 392, column: 40, scope: !1171)
!1237 = !DILocation(line: 392, column: 5, scope: !1171)
!1238 = !DILocation(line: 0, scope: !1171)
!1239 = !DILocation(line: 393, column: 1, scope: !1171)
!1240 = distinct !DISubprogram(name: "getPsyncInitialOffset", scope: !3, file: !3, line: 399, type: !1241, isLocal: false, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!97}
!1243 = !DILocation(line: 400, column: 19, scope: !1240)
!1244 = !DILocation(line: 400, column: 5, scope: !1240)
!1245 = distinct !DISubprogram(name: "replicationSetupSlaveForFullResync", scope: !3, file: !3, line: 419, type: !1246, isLocal: false, isDefinition: true, scopeLine: 419, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1248)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!20, !8, !97}
!1248 = !{!1249, !1250, !1251, !1255}
!1249 = !DILocalVariable(name: "slave", arg: 1, scope: !1245, file: !3, line: 419, type: !8)
!1250 = !DILocalVariable(name: "offset", arg: 2, scope: !1245, file: !3, line: 419, type: !97)
!1251 = !DILocalVariable(name: "buf", scope: !1245, file: !3, line: 420, type: !1252)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !1253)
!1253 = !{!1254}
!1254 = !DISubrange(count: 128)
!1255 = !DILocalVariable(name: "buflen", scope: !1245, file: !3, line: 421, type: !20)
!1256 = !DILocation(line: 419, column: 48, scope: !1245)
!1257 = !DILocation(line: 419, column: 65, scope: !1245)
!1258 = !DILocation(line: 420, column: 5, scope: !1245)
!1259 = !DILocation(line: 420, column: 10, scope: !1245)
!1260 = !DILocation(line: 423, column: 12, scope: !1245)
!1261 = !DILocation(line: 423, column: 33, scope: !1245)
!1262 = !{!480, !484, i64 240}
!1263 = !DILocation(line: 424, column: 12, scope: !1245)
!1264 = !DILocation(line: 424, column: 22, scope: !1245)
!1265 = !DILocation(line: 428, column: 23, scope: !1245)
!1266 = !DILocation(line: 432, column: 18, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 432, column: 9)
!1268 = !DILocation(line: 432, column: 24, scope: !1267)
!1269 = !DILocation(line: 432, column: 9, scope: !1245)
!1270 = !DILocation(line: 433, column: 18, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 432, column: 45)
!1272 = !DILocation(line: 421, column: 9, scope: !1245)
!1273 = !DILocation(line: 435, column: 26, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 435, column: 13)
!1275 = !DILocation(line: 435, column: 33, scope: !1274)
!1276 = !DILocation(line: 435, column: 13, scope: !1274)
!1277 = !DILocation(line: 435, column: 41, scope: !1274)
!1278 = !DILocation(line: 435, column: 13, scope: !1271)
!1279 = !DILocation(line: 436, column: 13, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 435, column: 52)
!1281 = !DILocation(line: 437, column: 13, scope: !1280)
!1282 = !DILocation(line: 0, scope: !1280)
!1283 = !DILocation(line: 441, column: 1, scope: !1245)
!1284 = distinct !DISubprogram(name: "masterTryPartialResynchronization", scope: !3, file: !3, line: 448, type: !1285, isLocal: false, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1287)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!20, !8}
!1287 = !{!1288, !1289, !1290, !1291, !1292, !1293}
!1288 = !DILocalVariable(name: "c", arg: 1, scope: !1284, file: !3, line: 448, type: !8)
!1289 = !DILocalVariable(name: "psync_offset", scope: !1284, file: !3, line: 449, type: !97)
!1290 = !DILocalVariable(name: "psync_len", scope: !1284, file: !3, line: 449, type: !97)
!1291 = !DILocalVariable(name: "master_replid", scope: !1284, file: !3, line: 450, type: !6)
!1292 = !DILocalVariable(name: "buf", scope: !1284, file: !3, line: 451, type: !1252)
!1293 = !DILocalVariable(name: "buflen", scope: !1284, file: !3, line: 452, type: !20)
!1294 = !DILocation(line: 448, column: 47, scope: !1284)
!1295 = !DILocation(line: 449, column: 5, scope: !1284)
!1296 = !DILocation(line: 450, column: 30, scope: !1284)
!1297 = !{!480, !483, i64 72}
!1298 = !DILocation(line: 450, column: 27, scope: !1284)
!1299 = !DILocation(line: 450, column: 39, scope: !1284)
!1300 = !DILocation(line: 450, column: 11, scope: !1284)
!1301 = !DILocation(line: 451, column: 5, scope: !1284)
!1302 = !DILocation(line: 451, column: 10, scope: !1284)
!1303 = !DILocation(line: 457, column: 40, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 457, column: 9)
!1305 = !DILocation(line: 449, column: 15, scope: !1284)
!1306 = !DILocation(line: 457, column: 9, scope: !1304)
!1307 = !DILocation(line: 457, column: 71, scope: !1304)
!1308 = !DILocation(line: 457, column: 9, scope: !1284)
!1309 = !DILocation(line: 466, column: 9, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 466, column: 9)
!1311 = !DILocation(line: 466, column: 50, scope: !1310)
!1312 = !DILocation(line: 467, column: 10, scope: !1310)
!1313 = !DILocation(line: 467, column: 52, scope: !1310)
!1314 = !DILocation(line: 468, column: 10, scope: !1310)
!1315 = !DILocation(line: 468, column: 32, scope: !1310)
!1316 = !{!512, !484, i64 2360}
!1317 = !DILocation(line: 468, column: 23, scope: !1310)
!1318 = !DILocation(line: 466, column: 9, scope: !1284)
!1319 = !DILocation(line: 471, column: 13, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 471, column: 13)
!1321 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 469, column: 5)
!1322 = !DILocation(line: 471, column: 30, scope: !1320)
!1323 = !DILocation(line: 471, column: 13, scope: !1321)
!1324 = !DILocation(line: 472, column: 17, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 471, column: 38)
!1326 = !DILocation(line: 475, column: 17, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 474, column: 13)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 472, column: 17)
!1329 = !DILocation(line: 479, column: 13, scope: !1327)
!1330 = !DILocation(line: 482, column: 35, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 479, column: 20)
!1332 = !DILocation(line: 482, column: 56, scope: !1331)
!1333 = !DILocation(line: 480, column: 17, scope: !1331)
!1334 = !DILocation(line: 486, column: 17, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 484, column: 16)
!1336 = !DILocation(line: 485, column: 13, scope: !1335)
!1337 = !DILocation(line: 492, column: 17, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 492, column: 9)
!1339 = !DILocation(line: 492, column: 10, scope: !1338)
!1340 = !DILocation(line: 492, column: 30, scope: !1338)
!1341 = !DILocation(line: 493, column: 9, scope: !1338)
!1342 = !DILocation(line: 493, column: 31, scope: !1338)
!1343 = !DILocation(line: 493, column: 22, scope: !1338)
!1344 = !DILocation(line: 493, column: 48, scope: !1338)
!1345 = !DILocation(line: 494, column: 58, scope: !1338)
!1346 = !DILocation(line: 494, column: 49, scope: !1338)
!1347 = !DILocation(line: 494, column: 22, scope: !1338)
!1348 = !DILocation(line: 492, column: 9, scope: !1284)
!1349 = !DILocation(line: 497, column: 106, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 495, column: 5)
!1351 = !DILocation(line: 497, column: 134, scope: !1350)
!1352 = !DILocation(line: 496, column: 9, scope: !1350)
!1353 = !DILocation(line: 498, column: 13, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 498, column: 13)
!1355 = !DILocation(line: 498, column: 35, scope: !1354)
!1356 = !DILocation(line: 498, column: 26, scope: !1354)
!1357 = !DILocation(line: 498, column: 13, scope: !1350)
!1358 = !DILocation(line: 500, column: 122, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1354, file: !3, line: 498, column: 55)
!1360 = !DILocation(line: 499, column: 13, scope: !1359)
!1361 = !DILocation(line: 501, column: 9, scope: !1359)
!1362 = !DILocation(line: 509, column: 8, scope: !1284)
!1363 = !DILocation(line: 509, column: 14, scope: !1284)
!1364 = !DILocation(line: 510, column: 8, scope: !1284)
!1365 = !DILocation(line: 510, column: 18, scope: !1284)
!1366 = !DILocation(line: 511, column: 31, scope: !1284)
!1367 = !{!512, !481, i64 2872}
!1368 = !DILocation(line: 511, column: 8, scope: !1284)
!1369 = !DILocation(line: 511, column: 22, scope: !1284)
!1370 = !{!480, !484, i64 232}
!1371 = !DILocation(line: 512, column: 8, scope: !1284)
!1372 = !DILocation(line: 512, column: 31, scope: !1284)
!1373 = !{!480, !482, i64 172}
!1374 = !DILocation(line: 513, column: 28, scope: !1284)
!1375 = !DILocation(line: 513, column: 35, scope: !1284)
!1376 = !DILocation(line: 513, column: 5, scope: !1284)
!1377 = !DILocation(line: 517, column: 12, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 517, column: 9)
!1379 = !{!480, !482, i64 344}
!1380 = !DILocation(line: 517, column: 23, scope: !1378)
!1381 = !DILocation(line: 517, column: 9, scope: !1284)
!1382 = !DILocation(line: 518, column: 18, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 517, column: 44)
!1384 = !DILocation(line: 452, column: 9, scope: !1284)
!1385 = !DILocation(line: 519, column: 5, scope: !1383)
!1386 = !DILocation(line: 520, column: 18, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 519, column: 12)
!1388 = !DILocation(line: 0, scope: !1387)
!1389 = !DILocation(line: 522, column: 18, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 522, column: 9)
!1391 = !DILocation(line: 522, column: 25, scope: !1390)
!1392 = !DILocation(line: 522, column: 9, scope: !1390)
!1393 = !DILocation(line: 522, column: 33, scope: !1390)
!1394 = !DILocation(line: 522, column: 9, scope: !1284)
!1395 = !DILocation(line: 523, column: 9, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 522, column: 44)
!1397 = !DILocation(line: 524, column: 9, scope: !1396)
!1398 = !DILocation(line: 526, column: 46, scope: !1284)
!1399 = !DILocation(line: 526, column: 17, scope: !1284)
!1400 = !DILocation(line: 449, column: 29, scope: !1284)
!1401 = !DILocation(line: 529, column: 13, scope: !1284)
!1402 = !DILocation(line: 530, column: 24, scope: !1284)
!1403 = !DILocation(line: 527, column: 5, scope: !1284)
!1404 = !DILocation(line: 2305, column: 5, scope: !1405, inlinedAt: !1413)
!1405 = distinct !DISubprogram(name: "refreshGoodSlavesCount", scope: !3, file: !3, line: 2304, type: !306, isLocal: false, isDefinition: true, scopeLine: 2304, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1406)
!1406 = !{!1407, !1408, !1409, !1410, !1412}
!1407 = !DILocalVariable(name: "li", scope: !1405, file: !3, line: 2305, type: !420)
!1408 = !DILocalVariable(name: "ln", scope: !1405, file: !3, line: 2306, type: !105)
!1409 = !DILocalVariable(name: "good", scope: !1405, file: !3, line: 2307, type: !20)
!1410 = !DILocalVariable(name: "slave", scope: !1411, file: !3, line: 2314, type: !8)
!1411 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 2313, column: 33)
!1412 = !DILocalVariable(name: "lag", scope: !1411, file: !3, line: 2315, type: !184)
!1413 = distinct !DILocation(line: 535, column: 5, scope: !1284)
!1414 = !DILocation(line: 2307, column: 9, scope: !1405, inlinedAt: !1413)
!1415 = !DILocation(line: 2309, column: 17, scope: !1416, inlinedAt: !1413)
!1416 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 2309, column: 9)
!1417 = !{!512, !482, i64 2432}
!1418 = !DILocation(line: 2309, column: 10, scope: !1416, inlinedAt: !1413)
!1419 = !DILocation(line: 2310, column: 17, scope: !1416, inlinedAt: !1413)
!1420 = !DILocation(line: 2310, column: 10, scope: !1416, inlinedAt: !1413)
!1421 = !DILocation(line: 2309, column: 42, scope: !1416, inlinedAt: !1413)
!1422 = !DILocation(line: 2312, column: 23, scope: !1405, inlinedAt: !1413)
!1423 = !DILocation(line: 2305, column: 14, scope: !1405, inlinedAt: !1413)
!1424 = !DILocation(line: 2312, column: 5, scope: !1405, inlinedAt: !1413)
!1425 = !DILocation(line: 2313, column: 17, scope: !1405, inlinedAt: !1413)
!1426 = !DILocation(line: 2306, column: 15, scope: !1405, inlinedAt: !1413)
!1427 = !DILocation(line: 2313, column: 5, scope: !1405, inlinedAt: !1413)
!1428 = !DILocation(line: 2314, column: 29, scope: !1411, inlinedAt: !1413)
!1429 = !DILocation(line: 2314, column: 17, scope: !1411, inlinedAt: !1413)
!1430 = !DILocation(line: 2317, column: 20, scope: !1431, inlinedAt: !1413)
!1431 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 2317, column: 13)
!1432 = !DILocation(line: 2317, column: 30, scope: !1431, inlinedAt: !1413)
!1433 = !DILocation(line: 2317, column: 52, scope: !1431, inlinedAt: !1413)
!1434 = !DILocation(line: 2315, column: 29, scope: !1411, inlinedAt: !1413)
!1435 = !DILocation(line: 2315, column: 47, scope: !1411, inlinedAt: !1413)
!1436 = !DILocation(line: 2315, column: 38, scope: !1411, inlinedAt: !1413)
!1437 = !DILocation(line: 2315, column: 16, scope: !1411, inlinedAt: !1413)
!1438 = !DILocation(line: 2318, column: 27, scope: !1431, inlinedAt: !1413)
!1439 = !{!512, !482, i64 2436}
!1440 = !DILocation(line: 2318, column: 20, scope: !1431, inlinedAt: !1413)
!1441 = !DILocation(line: 2318, column: 17, scope: !1431, inlinedAt: !1413)
!1442 = !DILocation(line: 2317, column: 13, scope: !1411, inlinedAt: !1413)
!1443 = !DILocation(line: 0, scope: !1405, inlinedAt: !1413)
!1444 = distinct !{!1444, !1445, !1446}
!1445 = !DILocation(line: 2313, column: 5, scope: !1405)
!1446 = !DILocation(line: 2319, column: 5, scope: !1405)
!1447 = !DILocation(line: 0, scope: !1431, inlinedAt: !1413)
!1448 = !DILocation(line: 2320, column: 35, scope: !1405, inlinedAt: !1413)
!1449 = !{!512, !482, i64 2440}
!1450 = !DILocation(line: 2321, column: 1, scope: !1405, inlinedAt: !1413)
!1451 = !DILocation(line: 536, column: 5, scope: !1284)
!1452 = !DILocation(line: 0, scope: !1284)
!1453 = !DILocation(line: 544, column: 1, scope: !1284)
!1454 = !DILocation(line: 2305, column: 5, scope: !1405)
!1455 = !DILocation(line: 2307, column: 9, scope: !1405)
!1456 = !DILocation(line: 2309, column: 17, scope: !1416)
!1457 = !DILocation(line: 2309, column: 10, scope: !1416)
!1458 = !DILocation(line: 2310, column: 17, scope: !1416)
!1459 = !DILocation(line: 2310, column: 10, scope: !1416)
!1460 = !DILocation(line: 2309, column: 42, scope: !1416)
!1461 = !DILocation(line: 2312, column: 23, scope: !1405)
!1462 = !DILocation(line: 2305, column: 14, scope: !1405)
!1463 = !DILocation(line: 2312, column: 5, scope: !1405)
!1464 = !DILocation(line: 2313, column: 17, scope: !1405)
!1465 = !DILocation(line: 2306, column: 15, scope: !1405)
!1466 = !DILocation(line: 2314, column: 29, scope: !1411)
!1467 = !DILocation(line: 2314, column: 17, scope: !1411)
!1468 = !DILocation(line: 2317, column: 20, scope: !1431)
!1469 = !DILocation(line: 2317, column: 30, scope: !1431)
!1470 = !DILocation(line: 2317, column: 52, scope: !1431)
!1471 = !DILocation(line: 2315, column: 29, scope: !1411)
!1472 = !DILocation(line: 2315, column: 47, scope: !1411)
!1473 = !DILocation(line: 2315, column: 38, scope: !1411)
!1474 = !DILocation(line: 2315, column: 16, scope: !1411)
!1475 = !DILocation(line: 2318, column: 27, scope: !1431)
!1476 = !DILocation(line: 2318, column: 20, scope: !1431)
!1477 = !DILocation(line: 2318, column: 17, scope: !1431)
!1478 = !DILocation(line: 2317, column: 13, scope: !1411)
!1479 = !DILocation(line: 0, scope: !1405)
!1480 = !DILocation(line: 0, scope: !1431)
!1481 = !DILocation(line: 2320, column: 35, scope: !1405)
!1482 = !DILocation(line: 2321, column: 1, scope: !1405)
!1483 = distinct !DISubprogram(name: "startBgsaveForReplication", scope: !3, file: !3, line: 564, type: !1484, isLocal: false, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1486)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!20, !20}
!1486 = !{!1487, !1488, !1489, !1490, !1491, !1492, !1493, !1495, !1499}
!1487 = !DILocalVariable(name: "mincapa", arg: 1, scope: !1483, file: !3, line: 564, type: !20)
!1488 = !DILocalVariable(name: "retval", scope: !1483, file: !3, line: 565, type: !20)
!1489 = !DILocalVariable(name: "socket_target", scope: !1483, file: !3, line: 566, type: !20)
!1490 = !DILocalVariable(name: "li", scope: !1483, file: !3, line: 567, type: !420)
!1491 = !DILocalVariable(name: "ln", scope: !1483, file: !3, line: 568, type: !105)
!1492 = !DILocalVariable(name: "rsi", scope: !1483, file: !3, line: 573, type: !401)
!1493 = !DILocalVariable(name: "rsiptr", scope: !1483, file: !3, line: 573, type: !1494)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!1495 = !DILocalVariable(name: "slave", scope: !1496, file: !3, line: 594, type: !8)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 593, column: 37)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 590, column: 26)
!1498 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 590, column: 9)
!1499 = !DILocalVariable(name: "slave", scope: !1500, file: !3, line: 613, type: !8)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 612, column: 37)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 610, column: 25)
!1502 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 610, column: 9)
!1503 = !DILocation(line: 420, column: 10, scope: !1245, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 616, column: 21, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 615, column: 68)
!1506 = distinct !DILexicalBlock(scope: !1500, file: !3, line: 615, column: 17)
!1507 = !DILocation(line: 564, column: 35, scope: !1483)
!1508 = !DILocation(line: 566, column: 32, scope: !1483)
!1509 = !{!512, !482, i64 2444}
!1510 = !DILocation(line: 566, column: 25, scope: !1483)
!1511 = !DILocation(line: 566, column: 63, scope: !1483)
!1512 = !DILocation(line: 566, column: 51, scope: !1483)
!1513 = !DILocation(line: 567, column: 5, scope: !1483)
!1514 = !DILocation(line: 571, column: 9, scope: !1483)
!1515 = !DILocation(line: 570, column: 5, scope: !1483)
!1516 = !DILocation(line: 573, column: 5, scope: !1483)
!1517 = !DILocation(line: 573, column: 17, scope: !1483)
!1518 = !DILocation(line: 574, column: 14, scope: !1483)
!1519 = !DILocation(line: 573, column: 23, scope: !1483)
!1520 = !DILocation(line: 577, column: 9, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 577, column: 9)
!1522 = !DILocation(line: 577, column: 9, scope: !1483)
!1523 = !DILocation(line: 578, column: 13, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 577, column: 17)
!1525 = !DILocation(line: 579, column: 22, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 578, column: 13)
!1527 = !DILocation(line: 565, column: 9, scope: !1483)
!1528 = !DILocation(line: 579, column: 13, scope: !1526)
!1529 = !DILocation(line: 581, column: 47, scope: !1526)
!1530 = !{!512, !483, i64 2120}
!1531 = !DILocation(line: 581, column: 22, scope: !1526)
!1532 = !DILocation(line: 583, column: 9, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 582, column: 12)
!1534 = !DILocation(line: 590, column: 9, scope: !1483)
!1535 = !DILocation(line: 0, scope: !1533)
!1536 = !DILocation(line: 590, column: 16, scope: !1498)
!1537 = !DILocation(line: 591, column: 9, scope: !1497)
!1538 = !DILocation(line: 592, column: 27, scope: !1497)
!1539 = !DILocation(line: 567, column: 14, scope: !1483)
!1540 = !DILocation(line: 592, column: 9, scope: !1497)
!1541 = !DILocation(line: 593, column: 21, scope: !1497)
!1542 = !DILocation(line: 568, column: 15, scope: !1483)
!1543 = !DILocation(line: 593, column: 9, scope: !1497)
!1544 = !DILocation(line: 594, column: 33, scope: !1496)
!1545 = !DILocation(line: 594, column: 21, scope: !1496)
!1546 = !DILocation(line: 596, column: 24, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 596, column: 17)
!1548 = !DILocation(line: 596, column: 34, scope: !1547)
!1549 = !DILocation(line: 596, column: 17, scope: !1496)
!1550 = !DILocation(line: 597, column: 34, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 596, column: 68)
!1552 = !DILocation(line: 598, column: 24, scope: !1551)
!1553 = !DILocation(line: 598, column: 30, scope: !1551)
!1554 = !DILocation(line: 599, column: 36, scope: !1551)
!1555 = !DILocation(line: 599, column: 17, scope: !1551)
!1556 = !DILocation(line: 600, column: 17, scope: !1551)
!1557 = !DILocation(line: 602, column: 30, scope: !1551)
!1558 = !DILocation(line: 603, column: 13, scope: !1551)
!1559 = distinct !{!1559, !1543, !1560}
!1560 = !DILocation(line: 604, column: 9, scope: !1497)
!1561 = !DILocation(line: 610, column: 9, scope: !1483)
!1562 = !DILocation(line: 611, column: 27, scope: !1501)
!1563 = !DILocation(line: 611, column: 9, scope: !1501)
!1564 = !DILocation(line: 612, column: 21, scope: !1501)
!1565 = !DILocation(line: 612, column: 9, scope: !1501)
!1566 = !DILocation(line: 613, column: 33, scope: !1500)
!1567 = !DILocation(line: 613, column: 21, scope: !1500)
!1568 = !DILocation(line: 615, column: 24, scope: !1506)
!1569 = !DILocation(line: 615, column: 34, scope: !1506)
!1570 = !DILocation(line: 615, column: 17, scope: !1500)
!1571 = !DILocation(line: 400, column: 19, scope: !1240, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 617, column: 29, scope: !1505)
!1573 = !DILocation(line: 400, column: 5, scope: !1240, inlinedAt: !1572)
!1574 = !DILocation(line: 419, column: 48, scope: !1245, inlinedAt: !1504)
!1575 = !DILocation(line: 419, column: 65, scope: !1245, inlinedAt: !1504)
!1576 = !DILocation(line: 420, column: 5, scope: !1245, inlinedAt: !1504)
!1577 = !DILocation(line: 423, column: 12, scope: !1245, inlinedAt: !1504)
!1578 = !DILocation(line: 423, column: 33, scope: !1245, inlinedAt: !1504)
!1579 = !DILocation(line: 424, column: 22, scope: !1245, inlinedAt: !1504)
!1580 = !DILocation(line: 428, column: 23, scope: !1245, inlinedAt: !1504)
!1581 = !DILocation(line: 432, column: 18, scope: !1267, inlinedAt: !1504)
!1582 = !DILocation(line: 432, column: 24, scope: !1267, inlinedAt: !1504)
!1583 = !DILocation(line: 432, column: 9, scope: !1245, inlinedAt: !1504)
!1584 = !DILocation(line: 433, column: 18, scope: !1271, inlinedAt: !1504)
!1585 = !DILocation(line: 421, column: 9, scope: !1245, inlinedAt: !1504)
!1586 = !DILocation(line: 435, column: 26, scope: !1274, inlinedAt: !1504)
!1587 = !DILocation(line: 435, column: 33, scope: !1274, inlinedAt: !1504)
!1588 = !DILocation(line: 435, column: 13, scope: !1274, inlinedAt: !1504)
!1589 = !DILocation(line: 435, column: 41, scope: !1274, inlinedAt: !1504)
!1590 = !DILocation(line: 435, column: 13, scope: !1271, inlinedAt: !1504)
!1591 = !DILocation(line: 436, column: 13, scope: !1280, inlinedAt: !1504)
!1592 = !DILocation(line: 437, column: 13, scope: !1280, inlinedAt: !1504)
!1593 = !DILocation(line: 441, column: 1, scope: !1245, inlinedAt: !1504)
!1594 = !DILocation(line: 618, column: 13, scope: !1505)
!1595 = distinct !{!1595, !1565, !1596}
!1596 = !DILocation(line: 619, column: 9, scope: !1501)
!1597 = !DILocation(line: 624, column: 16, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 624, column: 9)
!1599 = !DILocation(line: 624, column: 9, scope: !1483)
!1600 = !DILocation(line: 2373, column: 22, scope: !1601, inlinedAt: !1602)
!1601 = distinct !DISubprogram(name: "replicationScriptCacheFlush", scope: !3, file: !3, line: 2372, type: !306, isLocal: false, isDefinition: true, scopeLine: 2372, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!1602 = distinct !DILocation(line: 624, column: 25, scope: !1598)
!1603 = !{!512, !483, i64 2664}
!1604 = !DILocation(line: 2373, column: 5, scope: !1601, inlinedAt: !1602)
!1605 = !DILocation(line: 2374, column: 24, scope: !1601, inlinedAt: !1602)
!1606 = !{!512, !483, i64 2672}
!1607 = !DILocation(line: 2374, column: 5, scope: !1601, inlinedAt: !1602)
!1608 = !DILocation(line: 2375, column: 36, scope: !1601, inlinedAt: !1602)
!1609 = !DILocation(line: 2375, column: 34, scope: !1601, inlinedAt: !1602)
!1610 = !DILocation(line: 2376, column: 1, scope: !1601, inlinedAt: !1602)
!1611 = !DILocation(line: 624, column: 25, scope: !1598)
!1612 = !DILocation(line: 626, column: 1, scope: !1483)
!1613 = !DILocation(line: 2373, column: 22, scope: !1601)
!1614 = !DILocation(line: 2373, column: 5, scope: !1601)
!1615 = !DILocation(line: 2374, column: 24, scope: !1601)
!1616 = !DILocation(line: 2374, column: 5, scope: !1601)
!1617 = !DILocation(line: 2375, column: 36, scope: !1601)
!1618 = !DILocation(line: 2375, column: 34, scope: !1601)
!1619 = !DILocation(line: 2376, column: 1, scope: !1601)
!1620 = distinct !DISubprogram(name: "syncCommand", scope: !3, file: !3, line: 629, type: !159, isLocal: false, isDefinition: true, scopeLine: 629, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1621)
!1621 = !{!1622, !1623, !1628, !1631, !1632}
!1622 = !DILocalVariable(name: "c", arg: 1, scope: !1620, file: !3, line: 629, type: !8)
!1623 = !DILocalVariable(name: "master_replid", scope: !1624, file: !3, line: 666, type: !6)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 665, column: 16)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 662, column: 13)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 661, column: 47)
!1627 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 661, column: 9)
!1628 = !DILocalVariable(name: "slave", scope: !1629, file: !3, line: 710, type: !8)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 706, column: 5)
!1630 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 704, column: 9)
!1631 = !DILocalVariable(name: "ln", scope: !1629, file: !3, line: 711, type: !105)
!1632 = !DILocalVariable(name: "li", scope: !1629, file: !3, line: 712, type: !420)
!1633 = !DILocation(line: 420, column: 10, scope: !1245, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 725, column: 13, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 721, column: 79)
!1636 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 721, column: 13)
!1637 = !DILocation(line: 629, column: 26, scope: !1620)
!1638 = !DILocation(line: 631, column: 12, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 631, column: 9)
!1640 = !DILocation(line: 631, column: 18, scope: !1639)
!1641 = !DILocation(line: 631, column: 9, scope: !1620)
!1642 = !DILocation(line: 635, column: 16, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 635, column: 9)
!1644 = !DILocation(line: 635, column: 9, scope: !1643)
!1645 = !DILocation(line: 635, column: 37, scope: !1643)
!1646 = !DILocation(line: 635, column: 48, scope: !1643)
!1647 = !DILocation(line: 635, column: 27, scope: !1643)
!1648 = !DILocation(line: 636, column: 23, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 635, column: 73)
!1650 = !DILocation(line: 636, column: 9, scope: !1649)
!1651 = !DILocation(line: 637, column: 9, scope: !1649)
!1652 = !DILocation(line: 644, column: 9, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 644, column: 9)
!1654 = !DILocation(line: 644, column: 9, scope: !1620)
!1655 = !DILocation(line: 645, column: 9, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 644, column: 37)
!1657 = !DILocation(line: 646, column: 9, scope: !1656)
!1658 = !DILocation(line: 650, column: 9, scope: !1620)
!1659 = !DILocation(line: 649, column: 5, scope: !1620)
!1660 = !DILocation(line: 661, column: 24, scope: !1627)
!1661 = !DILocation(line: 661, column: 21, scope: !1627)
!1662 = !DILocation(line: 661, column: 33, scope: !1627)
!1663 = !DILocation(line: 661, column: 10, scope: !1627)
!1664 = !DILocation(line: 661, column: 9, scope: !1620)
!1665 = !DILocation(line: 662, column: 13, scope: !1625)
!1666 = !DILocation(line: 662, column: 50, scope: !1625)
!1667 = !DILocation(line: 662, column: 13, scope: !1626)
!1668 = !DILocation(line: 663, column: 40, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 662, column: 59)
!1670 = !{!512, !484, i64 1152}
!1671 = !DILocation(line: 664, column: 13, scope: !1669)
!1672 = !DILocation(line: 666, column: 38, scope: !1624)
!1673 = !DILocation(line: 666, column: 35, scope: !1624)
!1674 = !DILocation(line: 666, column: 47, scope: !1624)
!1675 = !DILocation(line: 666, column: 19, scope: !1624)
!1676 = !DILocation(line: 672, column: 17, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 672, column: 17)
!1678 = !DILocation(line: 672, column: 34, scope: !1677)
!1679 = !DILocation(line: 672, column: 17, scope: !1624)
!1680 = !DILocation(line: 672, column: 70, scope: !1677)
!1681 = !{!512, !484, i64 1160}
!1682 = !DILocation(line: 672, column: 42, scope: !1677)
!1683 = !DILocation(line: 678, column: 18, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 674, column: 12)
!1685 = !DILocation(line: 682, column: 26, scope: !1620)
!1686 = !{!512, !484, i64 1144}
!1687 = !DILocation(line: 686, column: 8, scope: !1620)
!1688 = !DILocation(line: 686, column: 18, scope: !1620)
!1689 = !DILocation(line: 687, column: 16, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 687, column: 9)
!1691 = !{!512, !482, i64 2576}
!1692 = !DILocation(line: 687, column: 9, scope: !1690)
!1693 = !DILocation(line: 687, column: 9, scope: !1620)
!1694 = !DILocation(line: 688, column: 40, scope: !1690)
!1695 = !DILocation(line: 688, column: 9, scope: !1690)
!1696 = !DILocation(line: 689, column: 8, scope: !1620)
!1697 = !DILocation(line: 689, column: 17, scope: !1620)
!1698 = !{!480, !482, i64 176}
!1699 = !DILocation(line: 690, column: 14, scope: !1620)
!1700 = !DILocation(line: 691, column: 28, scope: !1620)
!1701 = !DILocation(line: 691, column: 35, scope: !1620)
!1702 = !DILocation(line: 691, column: 5, scope: !1620)
!1703 = !DILocation(line: 694, column: 9, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 694, column: 9)
!1705 = !DILocation(line: 694, column: 35, scope: !1704)
!1706 = !DILocation(line: 694, column: 50, scope: !1704)
!1707 = !DILocation(line: 694, column: 63, scope: !1704)
!1708 = !DILocation(line: 694, column: 40, scope: !1704)
!1709 = !DILocation(line: 1034, column: 5, scope: !1710, inlinedAt: !1711)
!1710 = distinct !DISubprogram(name: "changeReplicationId", scope: !3, file: !3, line: 1033, type: !306, isLocal: false, isDefinition: true, scopeLine: 1033, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!1711 = distinct !DILocation(line: 698, column: 9, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 694, column: 72)
!1713 = !DILocation(line: 1035, column: 39, scope: !1710, inlinedAt: !1711)
!1714 = !DILocation(line: 1036, column: 1, scope: !1710, inlinedAt: !1711)
!1715 = !DILocation(line: 1042, column: 5, scope: !1716, inlinedAt: !1717)
!1716 = distinct !DISubprogram(name: "clearReplicationId2", scope: !3, file: !3, line: 1041, type: !306, isLocal: false, isDefinition: true, scopeLine: 1041, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!1717 = distinct !DILocation(line: 699, column: 9, scope: !1712)
!1718 = !DILocation(line: 1043, column: 40, scope: !1716, inlinedAt: !1717)
!1719 = !DILocation(line: 1044, column: 33, scope: !1716, inlinedAt: !1717)
!1720 = !DILocation(line: 1045, column: 1, scope: !1716, inlinedAt: !1717)
!1721 = !DILocation(line: 79, column: 5, scope: !509, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 700, column: 9, scope: !1712)
!1723 = !DILocation(line: 80, column: 42, scope: !509, inlinedAt: !1722)
!1724 = !DILocation(line: 80, column: 27, scope: !509, inlinedAt: !1722)
!1725 = !DILocation(line: 80, column: 25, scope: !509, inlinedAt: !1722)
!1726 = !DILocation(line: 81, column: 33, scope: !509, inlinedAt: !1722)
!1727 = !DILocation(line: 87, column: 38, scope: !509, inlinedAt: !1722)
!1728 = !DILocation(line: 87, column: 56, scope: !509, inlinedAt: !1722)
!1729 = !DILocation(line: 87, column: 29, scope: !509, inlinedAt: !1722)
!1730 = !DILocation(line: 88, column: 1, scope: !509, inlinedAt: !1722)
!1731 = !DILocation(line: 701, column: 5, scope: !1712)
!1732 = !DILocation(line: 704, column: 16, scope: !1630)
!1733 = !{!512, !482, i64 2096}
!1734 = !DILocation(line: 704, column: 30, scope: !1630)
!1735 = !DILocation(line: 705, column: 16, scope: !1630)
!1736 = !DILocation(line: 705, column: 31, scope: !1630)
!1737 = !DILocation(line: 704, column: 36, scope: !1630)
!1738 = !DILocation(line: 712, column: 9, scope: !1629)
!1739 = !DILocation(line: 714, column: 27, scope: !1629)
!1740 = !DILocation(line: 712, column: 18, scope: !1629)
!1741 = !DILocation(line: 714, column: 9, scope: !1629)
!1742 = !DILocation(line: 715, column: 9, scope: !1629)
!1743 = !DILocation(line: 715, column: 21, scope: !1629)
!1744 = !DILocation(line: 711, column: 19, scope: !1629)
!1745 = !DILocation(line: 716, column: 25, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 715, column: 37)
!1747 = !DILocation(line: 710, column: 17, scope: !1629)
!1748 = !DILocation(line: 717, column: 24, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 717, column: 17)
!1750 = !DILocation(line: 717, column: 34, scope: !1749)
!1751 = !DILocation(line: 717, column: 17, scope: !1746)
!1752 = distinct !{!1752, !1742, !1753}
!1753 = !DILocation(line: 718, column: 9, scope: !1629)
!1754 = !DILocation(line: 721, column: 24, scope: !1636)
!1755 = !DILocation(line: 721, column: 44, scope: !1636)
!1756 = !DILocation(line: 721, column: 35, scope: !1636)
!1757 = !DILocation(line: 721, column: 56, scope: !1636)
!1758 = !DILocation(line: 721, column: 13, scope: !1629)
!1759 = !DILocation(line: 724, column: 13, scope: !1635)
!1760 = !DILocation(line: 725, column: 57, scope: !1635)
!1761 = !DILocation(line: 419, column: 48, scope: !1245, inlinedAt: !1634)
!1762 = !DILocation(line: 419, column: 65, scope: !1245, inlinedAt: !1634)
!1763 = !DILocation(line: 420, column: 5, scope: !1245, inlinedAt: !1634)
!1764 = !DILocation(line: 423, column: 12, scope: !1245, inlinedAt: !1634)
!1765 = !DILocation(line: 423, column: 33, scope: !1245, inlinedAt: !1634)
!1766 = !DILocation(line: 424, column: 22, scope: !1245, inlinedAt: !1634)
!1767 = !DILocation(line: 428, column: 23, scope: !1245, inlinedAt: !1634)
!1768 = !DILocation(line: 432, column: 18, scope: !1267, inlinedAt: !1634)
!1769 = !DILocation(line: 432, column: 24, scope: !1267, inlinedAt: !1634)
!1770 = !DILocation(line: 432, column: 9, scope: !1245, inlinedAt: !1634)
!1771 = !DILocation(line: 433, column: 18, scope: !1271, inlinedAt: !1634)
!1772 = !DILocation(line: 421, column: 9, scope: !1245, inlinedAt: !1634)
!1773 = !DILocation(line: 435, column: 26, scope: !1274, inlinedAt: !1634)
!1774 = !DILocation(line: 435, column: 33, scope: !1274, inlinedAt: !1634)
!1775 = !DILocation(line: 435, column: 13, scope: !1274, inlinedAt: !1634)
!1776 = !DILocation(line: 435, column: 41, scope: !1274, inlinedAt: !1634)
!1777 = !DILocation(line: 435, column: 13, scope: !1271, inlinedAt: !1634)
!1778 = !DILocation(line: 436, column: 13, scope: !1280, inlinedAt: !1634)
!1779 = !DILocation(line: 437, column: 13, scope: !1280, inlinedAt: !1634)
!1780 = !DILocation(line: 441, column: 1, scope: !1245, inlinedAt: !1634)
!1781 = !DILocation(line: 726, column: 13, scope: !1635)
!1782 = !DILocation(line: 727, column: 9, scope: !1635)
!1783 = !DILocation(line: 730, column: 13, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 727, column: 16)
!1785 = !DILocation(line: 734, column: 5, scope: !1630)
!1786 = !DILocation(line: 734, column: 5, scope: !1629)
!1787 = !DILocation(line: 735, column: 38, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 734, column: 16)
!1789 = !DILocation(line: 734, column: 43, scope: !1788)
!1790 = !DILocation(line: 740, column: 9, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 736, column: 5)
!1792 = !DILocation(line: 743, column: 5, scope: !1791)
!1793 = !DILocation(line: 744, column: 20, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 744, column: 13)
!1795 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 743, column: 12)
!1796 = !DILocation(line: 744, column: 13, scope: !1794)
!1797 = !DILocation(line: 744, column: 39, scope: !1794)
!1798 = !DILocation(line: 744, column: 46, scope: !1794)
!1799 = !DILocation(line: 744, column: 57, scope: !1794)
!1800 = !DILocation(line: 744, column: 13, scope: !1795)
!1801 = !DILocation(line: 748, column: 24, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !3, line: 748, column: 17)
!1803 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 744, column: 76)
!1804 = !{!512, !482, i64 2448}
!1805 = !DILocation(line: 748, column: 17, scope: !1802)
!1806 = !DILocation(line: 748, column: 17, scope: !1803)
!1807 = !DILocation(line: 749, column: 17, scope: !1802)
!1808 = !DILocation(line: 754, column: 24, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 754, column: 17)
!1810 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 750, column: 16)
!1811 = !{!512, !482, i64 1940}
!1812 = !DILocation(line: 754, column: 38, scope: !1809)
!1813 = !DILocation(line: 754, column: 17, scope: !1810)
!1814 = !DILocation(line: 755, column: 46, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 754, column: 45)
!1816 = !DILocation(line: 755, column: 17, scope: !1815)
!1817 = !DILocation(line: 756, column: 13, scope: !1815)
!1818 = !DILocation(line: 757, column: 17, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 756, column: 20)
!1820 = !DILocation(line: 764, column: 1, scope: !1620)
!1821 = !DILocation(line: 1034, column: 5, scope: !1710)
!1822 = !DILocation(line: 1035, column: 39, scope: !1710)
!1823 = !DILocation(line: 1036, column: 1, scope: !1710)
!1824 = !DILocation(line: 1042, column: 5, scope: !1716)
!1825 = !DILocation(line: 1043, column: 40, scope: !1716)
!1826 = !DILocation(line: 1044, column: 33, scope: !1716)
!1827 = !DILocation(line: 1045, column: 1, scope: !1716)
!1828 = distinct !DISubprogram(name: "replconfCommand", scope: !3, file: !3, line: 778, type: !159, isLocal: false, isDefinition: true, scopeLine: 778, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !1829)
!1829 = !{!1830, !1831, !1832, !1838, !1841}
!1830 = !DILocalVariable(name: "c", arg: 1, scope: !1828, file: !3, line: 778, type: !8)
!1831 = !DILocalVariable(name: "j", scope: !1828, file: !3, line: 779, type: !20)
!1832 = !DILocalVariable(name: "port", scope: !1833, file: !3, line: 791, type: !79)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 790, column: 60)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 790, column: 13)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 789, column: 36)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !3, line: 789, column: 5)
!1837 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 789, column: 5)
!1838 = !DILocalVariable(name: "ip", scope: !1839, file: !3, line: 798, type: !139)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 797, column: 63)
!1840 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 797, column: 20)
!1841 = !DILocalVariable(name: "offset", scope: !1842, file: !3, line: 816, type: !97)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 812, column: 56)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 812, column: 20)
!1844 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 806, column: 20)
!1845 = !DILocation(line: 778, column: 30, scope: !1828)
!1846 = !DILocation(line: 781, column: 13, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 781, column: 9)
!1848 = !{!480, !482, i64 64}
!1849 = !DILocation(line: 781, column: 23, scope: !1847)
!1850 = !DILocation(line: 781, column: 9, scope: !1828)
!1851 = !DILocation(line: 779, column: 9, scope: !1828)
!1852 = !DILocation(line: 789, column: 19, scope: !1836)
!1853 = !DILocation(line: 789, column: 5, scope: !1837)
!1854 = !DILocation(line: 784, column: 27, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 781, column: 29)
!1856 = !{!1857, !483, i64 128}
!1857 = !{!"sharedObjectsStruct", !483, i64 0, !483, i64 8, !483, i64 16, !483, i64 24, !483, i64 32, !483, i64 40, !483, i64 48, !483, i64 56, !483, i64 64, !483, i64 72, !483, i64 80, !483, i64 88, !483, i64 96, !483, i64 104, !483, i64 112, !483, i64 120, !483, i64 128, !483, i64 136, !483, i64 144, !483, i64 152, !483, i64 160, !483, i64 168, !483, i64 176, !483, i64 184, !483, i64 192, !483, i64 200, !483, i64 208, !483, i64 216, !483, i64 224, !483, i64 232, !483, i64 240, !483, i64 248, !483, i64 256, !483, i64 264, !483, i64 272, !483, i64 280, !483, i64 288, !483, i64 296, !483, i64 304, !483, i64 312, !483, i64 320, !483, i64 328, !483, i64 336, !483, i64 344, !483, i64 352, !483, i64 360, !471, i64 368, !471, i64 448, !471, i64 80448, !471, i64 80704, !483, i64 80960, !483, i64 80968}
!1858 = !DILocation(line: 784, column: 9, scope: !1855)
!1859 = !DILocation(line: 785, column: 9, scope: !1855)
!1860 = !DILocation(line: 790, column: 28, scope: !1834)
!1861 = !DILocation(line: 790, column: 25, scope: !1834)
!1862 = !DILocation(line: 790, column: 37, scope: !1834)
!1863 = !DILocation(line: 790, column: 14, scope: !1834)
!1864 = !DILocation(line: 790, column: 13, scope: !1835)
!1865 = !DILocation(line: 791, column: 13, scope: !1833)
!1866 = !DILocation(line: 793, column: 54, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1833, file: !3, line: 793, column: 17)
!1868 = !DILocation(line: 793, column: 45, scope: !1867)
!1869 = !DILocation(line: 791, column: 18, scope: !1833)
!1870 = !DILocation(line: 793, column: 18, scope: !1867)
!1871 = !DILocation(line: 794, column: 33, scope: !1867)
!1872 = !DILocation(line: 793, column: 17, scope: !1833)
!1873 = !DILocation(line: 796, column: 39, scope: !1833)
!1874 = !DILocation(line: 796, column: 37, scope: !1833)
!1875 = !DILocation(line: 797, column: 9, scope: !1834)
!1876 = !DILocation(line: 797, column: 21, scope: !1840)
!1877 = !DILocation(line: 797, column: 20, scope: !1834)
!1878 = !DILocation(line: 798, column: 31, scope: !1839)
!1879 = !DILocation(line: 798, column: 22, scope: !1839)
!1880 = !DILocation(line: 798, column: 36, scope: !1839)
!1881 = !DILocation(line: 798, column: 17, scope: !1839)
!1882 = !DILocation(line: 87, column: 39, scope: !646, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 799, column: 17, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 799, column: 17)
!1885 = !DILocation(line: 88, column: 27, scope: !646, inlinedAt: !1883)
!1886 = !DILocation(line: 88, column: 19, scope: !646, inlinedAt: !1883)
!1887 = !DILocation(line: 89, column: 5, scope: !646, inlinedAt: !1883)
!1888 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !1883)
!1889 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !1883)
!1890 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !1883)
!1891 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !1883)
!1892 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !1883)
!1893 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !1883)
!1894 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !1883)
!1895 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !1883)
!1896 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !1883)
!1897 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !1883)
!1898 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !1883)
!1899 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !1883)
!1900 = !DILocation(line: 102, column: 1, scope: !646, inlinedAt: !1883)
!1901 = !DILocation(line: 799, column: 17, scope: !1839)
!1902 = !DILocation(line: 0, scope: !660, inlinedAt: !1883)
!1903 = !DILocation(line: 799, column: 28, scope: !1884)
!1904 = !DILocation(line: 87, column: 39, scope: !646, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 800, column: 39, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 799, column: 51)
!1907 = !DILocation(line: 88, column: 19, scope: !646, inlinedAt: !1905)
!1908 = !DILocation(line: 89, column: 5, scope: !646, inlinedAt: !1905)
!1909 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !1905)
!1910 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !1905)
!1911 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !1905)
!1912 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !1905)
!1913 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !1905)
!1914 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !1905)
!1915 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !1905)
!1916 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !1905)
!1917 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !1905)
!1918 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !1905)
!1919 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !1905)
!1920 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !1905)
!1921 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !1905)
!1922 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !1905)
!1923 = !DILocation(line: 0, scope: !660, inlinedAt: !1905)
!1924 = !DILocation(line: 102, column: 1, scope: !646, inlinedAt: !1905)
!1925 = !DILocation(line: 800, column: 49, scope: !1906)
!1926 = !DILocation(line: 800, column: 17, scope: !1906)
!1927 = !DILocation(line: 87, column: 39, scope: !646, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 803, column: 64, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 801, column: 20)
!1930 = !DILocation(line: 88, column: 19, scope: !646, inlinedAt: !1928)
!1931 = !DILocation(line: 89, column: 5, scope: !646, inlinedAt: !1928)
!1932 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !1928)
!1933 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !1928)
!1934 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !1928)
!1935 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !1928)
!1936 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !1928)
!1937 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !1928)
!1938 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !1928)
!1939 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !1928)
!1940 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !1928)
!1941 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !1928)
!1942 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !1928)
!1943 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !1928)
!1944 = !DILocation(line: 0, scope: !660, inlinedAt: !1928)
!1945 = !DILocation(line: 102, column: 1, scope: !646, inlinedAt: !1928)
!1946 = !DILocation(line: 802, column: 17, scope: !1929)
!1947 = !DILocation(line: 806, column: 21, scope: !1844)
!1948 = !DILocation(line: 806, column: 20, scope: !1840)
!1949 = !DILocation(line: 808, column: 38, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !3, line: 808, column: 17)
!1951 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 806, column: 57)
!1952 = !DILocation(line: 808, column: 29, scope: !1950)
!1953 = !DILocation(line: 808, column: 43, scope: !1950)
!1954 = !DILocation(line: 808, column: 18, scope: !1950)
!1955 = !DILocation(line: 808, column: 17, scope: !1951)
!1956 = !DILocation(line: 809, column: 31, scope: !1950)
!1957 = !DILocation(line: 809, column: 17, scope: !1950)
!1958 = !DILocation(line: 810, column: 23, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 810, column: 22)
!1960 = !DILocation(line: 810, column: 22, scope: !1950)
!1961 = !DILocation(line: 811, column: 31, scope: !1959)
!1962 = !DILocation(line: 811, column: 17, scope: !1959)
!1963 = !DILocation(line: 812, column: 21, scope: !1843)
!1964 = !DILocation(line: 812, column: 20, scope: !1844)
!1965 = !DILocation(line: 816, column: 13, scope: !1842)
!1966 = !DILocation(line: 818, column: 22, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 818, column: 17)
!1968 = !DILocation(line: 818, column: 28, scope: !1967)
!1969 = !DILocation(line: 818, column: 17, scope: !1842)
!1970 = !DILocation(line: 819, column: 49, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 819, column: 17)
!1972 = !DILocation(line: 819, column: 40, scope: !1971)
!1973 = !DILocation(line: 816, column: 23, scope: !1842)
!1974 = !DILocation(line: 819, column: 18, scope: !1971)
!1975 = !DILocation(line: 819, column: 63, scope: !1971)
!1976 = !DILocation(line: 819, column: 17, scope: !1842)
!1977 = !DILocation(line: 821, column: 17, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 821, column: 17)
!1979 = !DILocation(line: 821, column: 29, scope: !1978)
!1980 = !{!480, !484, i64 224}
!1981 = !DILocation(line: 821, column: 24, scope: !1978)
!1982 = !DILocation(line: 821, column: 17, scope: !1842)
!1983 = !DILocation(line: 822, column: 33, scope: !1978)
!1984 = !DILocation(line: 822, column: 17, scope: !1978)
!1985 = !DILocation(line: 823, column: 39, scope: !1842)
!1986 = !DILocation(line: 823, column: 16, scope: !1842)
!1987 = !DILocation(line: 823, column: 30, scope: !1842)
!1988 = !DILocation(line: 829, column: 20, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 829, column: 17)
!1990 = !DILocation(line: 829, column: 17, scope: !1989)
!1991 = !DILocation(line: 829, column: 43, scope: !1989)
!1992 = !DILocation(line: 829, column: 49, scope: !1989)
!1993 = !DILocation(line: 829, column: 59, scope: !1989)
!1994 = !DILocation(line: 829, column: 17, scope: !1842)
!1995 = !DILocation(line: 830, column: 17, scope: !1989)
!1996 = !DILocation(line: 833, column: 9, scope: !1843)
!1997 = !DILocation(line: 833, column: 21, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1843, file: !3, line: 833, column: 20)
!1999 = !DILocation(line: 833, column: 20, scope: !1843)
!2000 = !DILocation(line: 836, column: 24, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !3, line: 836, column: 17)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 833, column: 59)
!2003 = !DILocation(line: 836, column: 17, scope: !2001)
!2004 = !DILocation(line: 836, column: 45, scope: !2001)
!2005 = !DILocation(line: 836, column: 38, scope: !2001)
!2006 = !DILocation(line: 836, column: 35, scope: !2001)
!2007 = !DILocalVariable(name: "c", scope: !2008, file: !3, line: 2159, type: !8)
!2008 = distinct !DISubprogram(name: "replicationSendAck", scope: !3, file: !3, line: 2158, type: !306, isLocal: false, isDefinition: true, scopeLine: 2158, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2009)
!2009 = !{!2007}
!2010 = !DILocation(line: 2159, column: 13, scope: !2008, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 836, column: 53, scope: !2001)
!2012 = !DILocation(line: 2162, column: 12, scope: !2013, inlinedAt: !2011)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 2161, column: 20)
!2014 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 2161, column: 9)
!2015 = !DILocation(line: 2162, column: 18, scope: !2013, inlinedAt: !2011)
!2016 = !DILocation(line: 2163, column: 9, scope: !2013, inlinedAt: !2011)
!2017 = !DILocation(line: 2164, column: 9, scope: !2013, inlinedAt: !2011)
!2018 = !DILocation(line: 2165, column: 9, scope: !2013, inlinedAt: !2011)
!2019 = !DILocation(line: 2166, column: 35, scope: !2013, inlinedAt: !2011)
!2020 = !{!480, !484, i64 216}
!2021 = !DILocation(line: 2166, column: 9, scope: !2013, inlinedAt: !2011)
!2022 = !DILocation(line: 2167, column: 18, scope: !2013, inlinedAt: !2011)
!2023 = !DILocation(line: 2169, column: 1, scope: !2008, inlinedAt: !2011)
!2024 = !DILocation(line: 836, column: 53, scope: !2001)
!2025 = !DILocation(line: 839, column: 13, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 838, column: 16)
!2027 = !DILocation(line: 841, column: 13, scope: !2026)
!2028 = !DILocation(line: 789, column: 31, scope: !1836)
!2029 = !DILocation(line: 789, column: 24, scope: !1836)
!2030 = distinct !{!2030, !1853, !2031}
!2031 = !DILocation(line: 843, column: 5, scope: !1837)
!2032 = !DILocation(line: 844, column: 23, scope: !1828)
!2033 = !{!1857, !483, i64 8}
!2034 = !DILocation(line: 844, column: 5, scope: !1828)
!2035 = !DILocation(line: 845, column: 1, scope: !1828)
!2036 = distinct !DISubprogram(name: "putSlaveOnline", scope: !3, file: !3, line: 861, type: !159, isLocal: false, isDefinition: true, scopeLine: 861, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2037)
!2037 = !{!2038}
!2038 = !DILocalVariable(name: "slave", arg: 1, scope: !2036, file: !3, line: 861, type: !8)
!2039 = !DILocation(line: 861, column: 29, scope: !2036)
!2040 = !DILocation(line: 862, column: 12, scope: !2036)
!2041 = !DILocation(line: 862, column: 22, scope: !2036)
!2042 = !DILocation(line: 863, column: 12, scope: !2036)
!2043 = !DILocation(line: 863, column: 35, scope: !2036)
!2044 = !DILocation(line: 864, column: 35, scope: !2036)
!2045 = !DILocation(line: 864, column: 12, scope: !2036)
!2046 = !DILocation(line: 864, column: 26, scope: !2036)
!2047 = !DILocation(line: 865, column: 34, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 865, column: 9)
!2049 = !{!512, !483, i64 72}
!2050 = !DILocation(line: 865, column: 45, scope: !2048)
!2051 = !DILocation(line: 866, column: 28, scope: !2048)
!2052 = !DILocation(line: 865, column: 9, scope: !2048)
!2053 = !DILocation(line: 866, column: 35, scope: !2048)
!2054 = !DILocation(line: 865, column: 9, scope: !2036)
!2055 = !DILocation(line: 867, column: 106, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 866, column: 46)
!2057 = !DILocation(line: 867, column: 97, scope: !2056)
!2058 = !DILocation(line: 867, column: 9, scope: !2056)
!2059 = !DILocation(line: 868, column: 9, scope: !2056)
!2060 = !DILocation(line: 869, column: 9, scope: !2056)
!2061 = !DILocation(line: 2305, column: 5, scope: !1405, inlinedAt: !2062)
!2062 = distinct !DILocation(line: 871, column: 5, scope: !2036)
!2063 = !DILocation(line: 2307, column: 9, scope: !1405, inlinedAt: !2062)
!2064 = !DILocation(line: 2309, column: 17, scope: !1416, inlinedAt: !2062)
!2065 = !DILocation(line: 2309, column: 10, scope: !1416, inlinedAt: !2062)
!2066 = !DILocation(line: 2310, column: 17, scope: !1416, inlinedAt: !2062)
!2067 = !DILocation(line: 2310, column: 10, scope: !1416, inlinedAt: !2062)
!2068 = !DILocation(line: 2309, column: 42, scope: !1416, inlinedAt: !2062)
!2069 = !DILocation(line: 2312, column: 23, scope: !1405, inlinedAt: !2062)
!2070 = !DILocation(line: 2305, column: 14, scope: !1405, inlinedAt: !2062)
!2071 = !DILocation(line: 2312, column: 5, scope: !1405, inlinedAt: !2062)
!2072 = !DILocation(line: 2313, column: 17, scope: !1405, inlinedAt: !2062)
!2073 = !DILocation(line: 2306, column: 15, scope: !1405, inlinedAt: !2062)
!2074 = !DILocation(line: 2313, column: 5, scope: !1405, inlinedAt: !2062)
!2075 = !DILocation(line: 2314, column: 29, scope: !1411, inlinedAt: !2062)
!2076 = !DILocation(line: 2314, column: 17, scope: !1411, inlinedAt: !2062)
!2077 = !DILocation(line: 2317, column: 20, scope: !1431, inlinedAt: !2062)
!2078 = !DILocation(line: 2317, column: 30, scope: !1431, inlinedAt: !2062)
!2079 = !DILocation(line: 2317, column: 52, scope: !1431, inlinedAt: !2062)
!2080 = !DILocation(line: 2315, column: 29, scope: !1411, inlinedAt: !2062)
!2081 = !DILocation(line: 2315, column: 47, scope: !1411, inlinedAt: !2062)
!2082 = !DILocation(line: 2315, column: 38, scope: !1411, inlinedAt: !2062)
!2083 = !DILocation(line: 2315, column: 16, scope: !1411, inlinedAt: !2062)
!2084 = !DILocation(line: 2318, column: 27, scope: !1431, inlinedAt: !2062)
!2085 = !DILocation(line: 2318, column: 20, scope: !1431, inlinedAt: !2062)
!2086 = !DILocation(line: 2318, column: 17, scope: !1431, inlinedAt: !2062)
!2087 = !DILocation(line: 2317, column: 13, scope: !1411, inlinedAt: !2062)
!2088 = !DILocation(line: 0, scope: !1405, inlinedAt: !2062)
!2089 = !DILocation(line: 0, scope: !1431, inlinedAt: !2062)
!2090 = !DILocation(line: 2320, column: 35, scope: !1405, inlinedAt: !2062)
!2091 = !DILocation(line: 2321, column: 1, scope: !1405, inlinedAt: !2062)
!2092 = !DILocation(line: 873, column: 9, scope: !2036)
!2093 = !DILocation(line: 872, column: 5, scope: !2036)
!2094 = !DILocation(line: 874, column: 1, scope: !2036)
!2095 = !DILocation(line: 2159, column: 24, scope: !2008)
!2096 = !{!512, !483, i64 2480}
!2097 = !DILocation(line: 2159, column: 13, scope: !2008)
!2098 = !DILocation(line: 2161, column: 11, scope: !2014)
!2099 = !DILocation(line: 2161, column: 9, scope: !2008)
!2100 = !DILocation(line: 2162, column: 12, scope: !2013)
!2101 = !DILocation(line: 2162, column: 18, scope: !2013)
!2102 = !DILocation(line: 2163, column: 9, scope: !2013)
!2103 = !DILocation(line: 2164, column: 9, scope: !2013)
!2104 = !DILocation(line: 2165, column: 9, scope: !2013)
!2105 = !DILocation(line: 2166, column: 35, scope: !2013)
!2106 = !DILocation(line: 2166, column: 9, scope: !2013)
!2107 = !DILocation(line: 2167, column: 18, scope: !2013)
!2108 = !DILocation(line: 2168, column: 5, scope: !2013)
!2109 = !DILocation(line: 2169, column: 1, scope: !2008)
!2110 = distinct !DISubprogram(name: "sendBulkToSlave", scope: !3, file: !3, line: 876, type: !311, isLocal: false, isDefinition: true, scopeLine: 876, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2111)
!2111 = !{!2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119}
!2112 = !DILocalVariable(name: "el", arg: 1, scope: !2110, file: !3, line: 876, type: !313)
!2113 = !DILocalVariable(name: "fd", arg: 2, scope: !2110, file: !3, line: 876, type: !20)
!2114 = !DILocalVariable(name: "privdata", arg: 3, scope: !2110, file: !3, line: 876, type: !47)
!2115 = !DILocalVariable(name: "mask", arg: 4, scope: !2110, file: !3, line: 876, type: !20)
!2116 = !DILocalVariable(name: "slave", scope: !2110, file: !3, line: 877, type: !8)
!2117 = !DILocalVariable(name: "buf", scope: !2110, file: !3, line: 880, type: !257)
!2118 = !DILocalVariable(name: "nwritten", scope: !2110, file: !3, line: 881, type: !383)
!2119 = !DILocalVariable(name: "buflen", scope: !2110, file: !3, line: 881, type: !383)
!2120 = !DILocation(line: 876, column: 35, scope: !2110)
!2121 = !DILocation(line: 876, column: 43, scope: !2110)
!2122 = !DILocation(line: 876, column: 53, scope: !2110)
!2123 = !DILocation(line: 876, column: 67, scope: !2110)
!2124 = !DILocation(line: 877, column: 21, scope: !2110)
!2125 = !DILocation(line: 877, column: 13, scope: !2110)
!2126 = !DILocation(line: 880, column: 5, scope: !2110)
!2127 = !DILocation(line: 880, column: 10, scope: !2110)
!2128 = !DILocation(line: 886, column: 16, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 886, column: 9)
!2130 = !{!480, !483, i64 200}
!2131 = !DILocation(line: 886, column: 9, scope: !2129)
!2132 = !DILocation(line: 886, column: 9, scope: !2110)
!2133 = !DILocation(line: 87, column: 39, scope: !646, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 887, column: 49, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2129, file: !3, line: 886, column: 30)
!2136 = !DILocation(line: 88, column: 27, scope: !646, inlinedAt: !2134)
!2137 = !DILocation(line: 88, column: 19, scope: !646, inlinedAt: !2134)
!2138 = !DILocation(line: 89, column: 5, scope: !646, inlinedAt: !2134)
!2139 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !2134)
!2140 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !2134)
!2141 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !2134)
!2142 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !2134)
!2143 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !2134)
!2144 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !2134)
!2145 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !2134)
!2146 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !2134)
!2147 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !2134)
!2148 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !2134)
!2149 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !2134)
!2150 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !2134)
!2151 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !2134)
!2152 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !2134)
!2153 = !DILocation(line: 0, scope: !660, inlinedAt: !2134)
!2154 = !DILocation(line: 102, column: 1, scope: !646, inlinedAt: !2134)
!2155 = !DILocation(line: 887, column: 20, scope: !2135)
!2156 = !DILocation(line: 881, column: 13, scope: !2110)
!2157 = !DILocation(line: 888, column: 22, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 888, column: 13)
!2159 = !DILocation(line: 888, column: 13, scope: !2135)
!2160 = !DILocation(line: 890, column: 26, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 888, column: 29)
!2162 = !DILocation(line: 890, column: 17, scope: !2161)
!2163 = !DILocation(line: 889, column: 13, scope: !2161)
!2164 = !DILocation(line: 891, column: 13, scope: !2161)
!2165 = !DILocation(line: 892, column: 13, scope: !2161)
!2166 = !DILocation(line: 894, column: 38, scope: !2135)
!2167 = !{!512, !484, i64 1248}
!2168 = !DILocation(line: 895, column: 25, scope: !2135)
!2169 = !DILocation(line: 895, column: 9, scope: !2135)
!2170 = !DILocation(line: 896, column: 27, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 896, column: 13)
!2172 = !DILocation(line: 87, column: 39, scope: !646, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 896, column: 13, scope: !2171)
!2174 = !DILocation(line: 88, column: 27, scope: !646, inlinedAt: !2173)
!2175 = !DILocation(line: 88, column: 19, scope: !646, inlinedAt: !2173)
!2176 = !DILocation(line: 89, column: 5, scope: !646, inlinedAt: !2173)
!2177 = !DILocation(line: 102, column: 1, scope: !646, inlinedAt: !2173)
!2178 = !DILocation(line: 896, column: 13, scope: !2135)
!2179 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !2173)
!2180 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !2173)
!2181 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !2173)
!2182 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !2173)
!2183 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !2173)
!2184 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !2173)
!2185 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !2173)
!2186 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !2173)
!2187 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !2173)
!2188 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !2173)
!2189 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !2173)
!2190 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !2173)
!2191 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !2173)
!2192 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !2173)
!2193 = !DILocation(line: 0, scope: !660, inlinedAt: !2173)
!2194 = !DILocation(line: 896, column: 41, scope: !2171)
!2195 = !DILocation(line: 897, column: 13, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 896, column: 47)
!2197 = !DILocation(line: 898, column: 33, scope: !2196)
!2198 = !DILocation(line: 903, column: 5, scope: !2135)
!2199 = !DILocation(line: 906, column: 18, scope: !2110)
!2200 = !DILocation(line: 906, column: 34, scope: !2110)
!2201 = !{!480, !481, i64 184}
!2202 = !DILocation(line: 906, column: 5, scope: !2110)
!2203 = !DILocation(line: 907, column: 26, scope: !2110)
!2204 = !DILocation(line: 907, column: 14, scope: !2110)
!2205 = !DILocation(line: 881, column: 23, scope: !2110)
!2206 = !DILocation(line: 908, column: 16, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 908, column: 9)
!2208 = !DILocation(line: 908, column: 9, scope: !2110)
!2209 = !DILocation(line: 910, column: 21, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2207, file: !3, line: 908, column: 22)
!2211 = !DILocation(line: 910, column: 13, scope: !2210)
!2212 = !DILocation(line: 910, column: 56, scope: !2210)
!2213 = !DILocation(line: 910, column: 47, scope: !2210)
!2214 = !DILocation(line: 909, column: 9, scope: !2210)
!2215 = !DILocation(line: 911, column: 9, scope: !2210)
!2216 = !DILocation(line: 912, column: 9, scope: !2210)
!2217 = !DILocation(line: 914, column: 21, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 914, column: 9)
!2219 = !DILocation(line: 914, column: 43, scope: !2218)
!2220 = !DILocation(line: 914, column: 9, scope: !2110)
!2221 = !DILocation(line: 915, column: 13, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 915, column: 13)
!2223 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 914, column: 50)
!2224 = !DILocation(line: 915, column: 19, scope: !2222)
!2225 = !DILocation(line: 915, column: 13, scope: !2223)
!2226 = !DILocation(line: 917, column: 26, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 915, column: 30)
!2228 = !DILocation(line: 917, column: 17, scope: !2227)
!2229 = !DILocation(line: 916, column: 13, scope: !2227)
!2230 = !DILocation(line: 918, column: 13, scope: !2227)
!2231 = !DILocation(line: 919, column: 9, scope: !2227)
!2232 = !DILocation(line: 922, column: 22, scope: !2110)
!2233 = !DILocation(line: 923, column: 34, scope: !2110)
!2234 = !DILocation(line: 924, column: 36, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 924, column: 9)
!2236 = !{!480, !481, i64 192}
!2237 = !DILocation(line: 924, column: 26, scope: !2235)
!2238 = !DILocation(line: 924, column: 9, scope: !2110)
!2239 = !DILocation(line: 925, column: 22, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 924, column: 48)
!2241 = !DILocation(line: 925, column: 9, scope: !2240)
!2242 = !DILocation(line: 926, column: 25, scope: !2240)
!2243 = !DILocation(line: 927, column: 34, scope: !2240)
!2244 = !DILocation(line: 927, column: 44, scope: !2240)
!2245 = !DILocation(line: 927, column: 9, scope: !2240)
!2246 = !DILocation(line: 928, column: 9, scope: !2240)
!2247 = !DILocation(line: 929, column: 5, scope: !2240)
!2248 = !DILocation(line: 930, column: 1, scope: !2110)
!2249 = distinct !DISubprogram(name: "updateSlavesWaitingBgsave", scope: !3, file: !3, line: 946, type: !2250, isLocal: false, isDefinition: true, scopeLine: 946, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2252)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{null, !20, !20}
!2252 = !{!2253, !2254, !2255, !2256, !2257, !2258, !2259, !2261}
!2253 = !DILocalVariable(name: "bgsaveerr", arg: 1, scope: !2249, file: !3, line: 946, type: !20)
!2254 = !DILocalVariable(name: "type", arg: 2, scope: !2249, file: !3, line: 946, type: !20)
!2255 = !DILocalVariable(name: "ln", scope: !2249, file: !3, line: 947, type: !105)
!2256 = !DILocalVariable(name: "startbgsave", scope: !2249, file: !3, line: 948, type: !20)
!2257 = !DILocalVariable(name: "mincapa", scope: !2249, file: !3, line: 949, type: !20)
!2258 = !DILocalVariable(name: "li", scope: !2249, file: !3, line: 950, type: !420)
!2259 = !DILocalVariable(name: "slave", scope: !2260, file: !3, line: 954, type: !8)
!2260 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 953, column: 33)
!2261 = !DILocalVariable(name: "buf", scope: !2262, file: !3, line: 961, type: !2265)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 960, column: 69)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 960, column: 20)
!2264 = distinct !DILexicalBlock(scope: !2260, file: !3, line: 956, column: 13)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2266, line: 27, size: 704, elements: !2267)
!2266 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/stat.h", directory: "/root/.unikraft/apps/redis/build")
!2267 = !{!2268, !2272, !2275, !2278, !2281, !2284, !2287, !2288, !2289, !2294, !2295, !2296, !2299}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2265, file: !2266, line: 29, baseType: !2269, size: 16)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !195, line: 177, baseType: !2270)
!2270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !145, line: 54, baseType: !2271)
!2271 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2265, file: !2266, line: 30, baseType: !2273, size: 16, offset: 16)
!2273 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !195, line: 155, baseType: !2274)
!2274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !145, line: 73, baseType: !282)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2265, file: !2266, line: 31, baseType: !2276, size: 32, offset: 32)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !195, line: 205, baseType: !2277)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !145, line: 88, baseType: !291)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2265, file: !2266, line: 32, baseType: !2279, size: 16, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !195, line: 210, baseType: !2280)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !145, line: 210, baseType: !282)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2265, file: !2266, line: 33, baseType: !2282, size: 16, offset: 80)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !195, line: 181, baseType: !2283)
!2283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !145, line: 58, baseType: !282)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2265, file: !2266, line: 34, baseType: !2285, size: 16, offset: 96)
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !195, line: 185, baseType: !2286)
!2286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !145, line: 61, baseType: !282)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2265, file: !2266, line: 35, baseType: !2269, size: 16, offset: 112)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2265, file: !2266, line: 36, baseType: !194, size: 64, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2265, file: !2266, line: 37, baseType: !2290, size: 128, offset: 192)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !185, line: 52, size: 128, elements: !2291)
!2291 = !{!2292, !2293}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2290, file: !185, line: 53, baseType: !184, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2290, file: !185, line: 54, baseType: !79, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2265, file: !2266, line: 38, baseType: !2290, size: 128, offset: 320)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2265, file: !2266, line: 39, baseType: !2290, size: 128, offset: 448)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2265, file: !2266, line: 40, baseType: !2297, size: 64, offset: 576)
!2297 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !195, line: 118, baseType: !2298)
!2298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !145, line: 32, baseType: !79)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2265, file: !2266, line: 41, baseType: !2300, size: 64, offset: 640)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !195, line: 113, baseType: !2301)
!2301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !145, line: 28, baseType: !79)
!2302 = !DILocation(line: 946, column: 36, scope: !2249)
!2303 = !DILocation(line: 946, column: 51, scope: !2249)
!2304 = !DILocation(line: 948, column: 9, scope: !2249)
!2305 = !DILocation(line: 949, column: 9, scope: !2249)
!2306 = !DILocation(line: 950, column: 5, scope: !2249)
!2307 = !DILocation(line: 952, column: 23, scope: !2249)
!2308 = !DILocation(line: 950, column: 14, scope: !2249)
!2309 = !DILocation(line: 952, column: 5, scope: !2249)
!2310 = !DILocation(line: 953, column: 17, scope: !2249)
!2311 = !DILocation(line: 947, column: 15, scope: !2249)
!2312 = !DILocation(line: 953, column: 5, scope: !2249)
!2313 = !DILocation(line: 954, column: 29, scope: !2260)
!2314 = !DILocation(line: 954, column: 25, scope: !2260)
!2315 = !DILocation(line: 954, column: 17, scope: !2260)
!2316 = !DILocation(line: 956, column: 20, scope: !2264)
!2317 = !DILocation(line: 956, column: 13, scope: !2260)
!2318 = !DILocation(line: 0, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 956, column: 64)
!2320 = !DILocation(line: 959, column: 50, scope: !2319)
!2321 = !DILocation(line: 958, column: 23, scope: !2319)
!2322 = !DILocation(line: 961, column: 13, scope: !2262)
!2323 = !DILocation(line: 968, column: 17, scope: !2262)
!2324 = !DILocation(line: 971, column: 25, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 968, column: 48)
!2326 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 968, column: 17)
!2327 = !DILocation(line: 969, column: 17, scope: !2325)
!2328 = !DILocation(line: 997, column: 34, scope: !2325)
!2329 = !DILocation(line: 998, column: 24, scope: !2325)
!2330 = !DILocation(line: 998, column: 47, scope: !2325)
!2331 = !DILocation(line: 999, column: 47, scope: !2325)
!2332 = !DILocation(line: 999, column: 24, scope: !2325)
!2333 = !DILocation(line: 999, column: 38, scope: !2325)
!2334 = !DILocation(line: 1000, column: 13, scope: !2325)
!2335 = !DILocation(line: 1001, column: 21, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 1000, column: 20)
!2337 = !DILocation(line: 1002, column: 21, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 1001, column: 40)
!2339 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 1001, column: 21)
!2340 = !DILocation(line: 1003, column: 21, scope: !2338)
!2341 = !DILocation(line: 1024, column: 9, scope: !2263)
!2342 = !DILocation(line: 1006, column: 52, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 1006, column: 21)
!2344 = !DILocation(line: 1006, column: 40, scope: !2343)
!2345 = !DILocation(line: 1006, column: 29, scope: !2343)
!2346 = !DILocation(line: 1006, column: 38, scope: !2343)
!2347 = !DILocation(line: 1006, column: 76, scope: !2343)
!2348 = !DILocation(line: 1006, column: 82, scope: !2343)
!2349 = !DILocation(line: 961, column: 31, scope: !2262)
!2350 = !DILocation(line: 1007, column: 21, scope: !2343)
!2351 = !DILocation(line: 1007, column: 55, scope: !2343)
!2352 = !DILocation(line: 1006, column: 21, scope: !2336)
!2353 = !DILocation(line: 1008, column: 21, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 1007, column: 62)
!2355 = !DILocation(line: 1009, column: 103, scope: !2354)
!2356 = !DILocation(line: 1009, column: 94, scope: !2354)
!2357 = !DILocation(line: 1009, column: 21, scope: !2354)
!2358 = !DILocation(line: 1012, column: 24, scope: !2336)
!2359 = !DILocation(line: 1012, column: 34, scope: !2336)
!2360 = !DILocation(line: 1013, column: 41, scope: !2336)
!2361 = !{!2362, !481, i64 16}
!2362 = !{!"stat", !668, i64 0, !668, i64 2, !482, i64 4, !668, i64 8, !668, i64 10, !668, i64 12, !668, i64 14, !481, i64 16, !2363, i64 24, !2363, i64 40, !2363, i64 56, !481, i64 72, !481, i64 80}
!2363 = !{!"timespec", !481, i64 0, !481, i64 8}
!2364 = !DILocation(line: 1013, column: 24, scope: !2336)
!2365 = !DILocation(line: 1013, column: 35, scope: !2336)
!2366 = !DILocation(line: 1014, column: 34, scope: !2336)
!2367 = !DILocation(line: 1015, column: 52, scope: !2336)
!2368 = !DILocation(line: 1016, column: 49, scope: !2336)
!2369 = !DILocation(line: 1015, column: 39, scope: !2336)
!2370 = !DILocation(line: 1015, column: 24, scope: !2336)
!2371 = !DILocation(line: 1015, column: 37, scope: !2336)
!2372 = !DILocation(line: 1018, column: 42, scope: !2336)
!2373 = !DILocation(line: 1018, column: 52, scope: !2336)
!2374 = !DILocation(line: 1018, column: 17, scope: !2336)
!2375 = !DILocation(line: 1019, column: 46, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 1019, column: 21)
!2377 = !DILocation(line: 1019, column: 57, scope: !2376)
!2378 = !DILocation(line: 1019, column: 21, scope: !2376)
!2379 = !DILocation(line: 1019, column: 98, scope: !2376)
!2380 = !DILocation(line: 1019, column: 21, scope: !2336)
!2381 = !DILocation(line: 1020, column: 21, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 1019, column: 109)
!2383 = !DILocation(line: 0, scope: !2249)
!2384 = !DILocation(line: 1026, column: 9, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 1026, column: 9)
!2386 = !DILocation(line: 1026, column: 9, scope: !2249)
!2387 = !DILocation(line: 1026, column: 22, scope: !2385)
!2388 = !DILocation(line: 1027, column: 1, scope: !2249)
!2389 = distinct !DISubprogram(name: "shiftReplicationId", scope: !3, file: !3, line: 1052, type: !306, isLocal: false, isDefinition: true, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!2390 = !DILocation(line: 1053, column: 5, scope: !2389)
!2391 = !DILocation(line: 1061, column: 42, scope: !2389)
!2392 = !DILocation(line: 1061, column: 60, scope: !2389)
!2393 = !DILocation(line: 1061, column: 33, scope: !2389)
!2394 = !DILocation(line: 1034, column: 5, scope: !1710, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 1062, column: 5, scope: !2389)
!2396 = !DILocation(line: 1035, column: 39, scope: !1710, inlinedAt: !2395)
!2397 = !DILocation(line: 1036, column: 1, scope: !1710, inlinedAt: !2395)
!2398 = !DILocation(line: 1063, column: 143, scope: !2389)
!2399 = !DILocation(line: 1063, column: 5, scope: !2389)
!2400 = !DILocation(line: 1064, column: 1, scope: !2389)
!2401 = distinct !DISubprogram(name: "slaveIsInHandshakeState", scope: !3, file: !3, line: 1070, type: !2402, isLocal: false, isDefinition: true, scopeLine: 1070, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!20}
!2404 = !DILocation(line: 1071, column: 19, scope: !2401)
!2405 = !{!512, !482, i64 2500}
!2406 = !DILocation(line: 1071, column: 57, scope: !2401)
!2407 = !DILocation(line: 1071, column: 5, scope: !2401)
!2408 = !DILocation(line: 1085, column: 9, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !305, file: !3, line: 1085, column: 9)
!2410 = !DILocation(line: 1085, column: 23, scope: !2409)
!2411 = !DILocation(line: 1085, column: 20, scope: !2409)
!2412 = !DILocation(line: 1085, column: 9, scope: !305)
!2413 = !DILocation(line: 1086, column: 24, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 1085, column: 37)
!2415 = !DILocation(line: 1086, column: 22, scope: !2414)
!2416 = !DILocation(line: 1087, column: 26, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2414, file: !3, line: 1087, column: 13)
!2418 = !{!512, !482, i64 2528}
!2419 = !DILocation(line: 1087, column: 13, scope: !2417)
!2420 = !DILocation(line: 1090, column: 5, scope: !2414)
!2421 = !DILocation(line: 1091, column: 1, scope: !305)
!2422 = distinct !DISubprogram(name: "replicationEmptyDbCallback", scope: !3, file: !3, line: 1095, type: !120, isLocal: false, isDefinition: true, scopeLine: 1095, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2423)
!2423 = !{!2424}
!2424 = !DILocalVariable(name: "privdata", arg: 1, scope: !2422, file: !3, line: 1095, type: !47)
!2425 = !DILocation(line: 1095, column: 39, scope: !2422)
!2426 = !DILocation(line: 1085, column: 9, scope: !2409, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 1097, column: 5, scope: !2422)
!2428 = !DILocation(line: 1085, column: 23, scope: !2409, inlinedAt: !2427)
!2429 = !DILocation(line: 1085, column: 20, scope: !2409, inlinedAt: !2427)
!2430 = !DILocation(line: 1085, column: 9, scope: !305, inlinedAt: !2427)
!2431 = !DILocation(line: 1086, column: 24, scope: !2414, inlinedAt: !2427)
!2432 = !DILocation(line: 1086, column: 22, scope: !2414, inlinedAt: !2427)
!2433 = !DILocation(line: 1087, column: 26, scope: !2417, inlinedAt: !2427)
!2434 = !DILocation(line: 1087, column: 13, scope: !2417, inlinedAt: !2427)
!2435 = !DILocation(line: 1090, column: 5, scope: !2414, inlinedAt: !2427)
!2436 = !DILocation(line: 1091, column: 1, scope: !305, inlinedAt: !2427)
!2437 = !DILocation(line: 1098, column: 1, scope: !2422)
!2438 = distinct !DISubprogram(name: "replicationCreateMasterClient", scope: !3, file: !3, line: 1103, type: !2250, isLocal: false, isDefinition: true, scopeLine: 1103, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2439)
!2439 = !{!2440, !2441}
!2440 = !DILocalVariable(name: "fd", arg: 1, scope: !2438, file: !3, line: 1103, type: !20)
!2441 = !DILocalVariable(name: "dbid", arg: 2, scope: !2438, file: !3, line: 1103, type: !20)
!2442 = !DILocation(line: 1103, column: 40, scope: !2438)
!2443 = !DILocation(line: 1103, column: 48, scope: !2438)
!2444 = !DILocation(line: 1104, column: 21, scope: !2438)
!2445 = !DILocation(line: 1104, column: 19, scope: !2438)
!2446 = !DILocation(line: 1105, column: 20, scope: !2438)
!2447 = !DILocation(line: 1105, column: 26, scope: !2438)
!2448 = !DILocation(line: 1106, column: 20, scope: !2438)
!2449 = !DILocation(line: 1106, column: 34, scope: !2438)
!2450 = !{!480, !482, i64 164}
!2451 = !DILocation(line: 1107, column: 37, scope: !2438)
!2452 = !{!512, !484, i64 2648}
!2453 = !DILocation(line: 1107, column: 20, scope: !2438)
!2454 = !DILocation(line: 1107, column: 28, scope: !2438)
!2455 = !DILocation(line: 1108, column: 20, scope: !2438)
!2456 = !DILocation(line: 1108, column: 33, scope: !2438)
!2457 = !{!480, !484, i64 208}
!2458 = !DILocation(line: 1109, column: 12, scope: !2438)
!2459 = !DILocation(line: 1109, column: 5, scope: !2438)
!2460 = !DILocation(line: 1113, column: 16, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 1113, column: 9)
!2462 = !DILocation(line: 1113, column: 24, scope: !2461)
!2463 = !DILocation(line: 1113, column: 32, scope: !2461)
!2464 = !DILocation(line: 1113, column: 9, scope: !2438)
!2465 = !DILocation(line: 1114, column: 24, scope: !2461)
!2466 = !DILocation(line: 1114, column: 30, scope: !2461)
!2467 = !DILocation(line: 1114, column: 9, scope: !2461)
!2468 = !DILocation(line: 1115, column: 14, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2438, file: !3, line: 1115, column: 9)
!2470 = !DILocation(line: 1115, column: 9, scope: !2438)
!2471 = !DILocation(line: 1115, column: 21, scope: !2469)
!2472 = !DILocation(line: 1116, column: 1, scope: !2438)
!2473 = distinct !DISubprogram(name: "restartAOFAfterSYNC", scope: !3, file: !3, line: 1122, type: !306, isLocal: false, isDefinition: true, scopeLine: 1122, isOptimized: true, unit: !260, retainedNodes: !2474)
!2474 = !{!2475, !2476}
!2475 = !DILocalVariable(name: "tries", scope: !2473, file: !3, line: 1123, type: !133)
!2476 = !DILocalVariable(name: "max_tries", scope: !2473, file: !3, line: 1123, type: !133)
!2477 = !DILocation(line: 1123, column: 25, scope: !2473)
!2478 = !DILocation(line: 1123, column: 18, scope: !2473)
!2479 = !DILocation(line: 1125, column: 13, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 1125, column: 13)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 1124, column: 49)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 1124, column: 5)
!2483 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 1124, column: 5)
!2484 = !DILocation(line: 1125, column: 31, scope: !2480)
!2485 = !DILocation(line: 1125, column: 13, scope: !2481)
!2486 = !DILocation(line: 1126, column: 9, scope: !2481)
!2487 = !DILocation(line: 1129, column: 9, scope: !2481)
!2488 = !DILocation(line: 1132, column: 9, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 1131, column: 29)
!2490 = distinct !DILexicalBlock(scope: !2473, file: !3, line: 1131, column: 9)
!2491 = !DILocation(line: 1135, column: 9, scope: !2489)
!2492 = !DILocation(line: 1137, column: 1, scope: !2473)
!2493 = !DILocation(line: 1141, column: 39, scope: !310)
!2494 = !DILocation(line: 1141, column: 47, scope: !310)
!2495 = !DILocation(line: 1141, column: 57, scope: !310)
!2496 = !DILocation(line: 1141, column: 71, scope: !310)
!2497 = !DILocation(line: 1142, column: 5, scope: !310)
!2498 = !DILocation(line: 1142, column: 10, scope: !310)
!2499 = !DILocation(line: 1157, column: 16, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1157, column: 9)
!2501 = !{!512, !481, i64 2504}
!2502 = !DILocation(line: 1157, column: 35, scope: !2500)
!2503 = !DILocation(line: 1157, column: 9, scope: !310)
!2504 = !DILocation(line: 1158, column: 45, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 1158, column: 13)
!2506 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 1157, column: 42)
!2507 = !{!512, !482, i64 2496}
!2508 = !DILocation(line: 1158, column: 64, scope: !2505)
!2509 = !DILocation(line: 1158, column: 38, scope: !2505)
!2510 = !DILocation(line: 1158, column: 13, scope: !2505)
!2511 = !DILocation(line: 1158, column: 71, scope: !2505)
!2512 = !DILocation(line: 1158, column: 13, scope: !2506)
!2513 = !DILocation(line: 1161, column: 26, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 1158, column: 78)
!2515 = !DILocation(line: 1161, column: 17, scope: !2514)
!2516 = !DILocation(line: 1159, column: 13, scope: !2514)
!2517 = !DILocation(line: 1162, column: 13, scope: !2514)
!2518 = !DILocation(line: 1165, column: 13, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 1165, column: 13)
!2520 = !DILocation(line: 1165, column: 13, scope: !2506)
!2521 = !DILocation(line: 1168, column: 20, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1165, column: 28)
!2523 = !DILocation(line: 1166, column: 13, scope: !2522)
!2524 = !DILocation(line: 1169, column: 13, scope: !2522)
!2525 = !DILocation(line: 1174, column: 50, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 1170, column: 36)
!2527 = distinct !DILexicalBlock(scope: !2519, file: !3, line: 1170, column: 20)
!2528 = !DILocation(line: 1174, column: 41, scope: !2526)
!2529 = !{!512, !481, i64 2544}
!2530 = !DILocation(line: 1175, column: 13, scope: !2526)
!2531 = !DILocation(line: 1177, column: 13, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 1176, column: 35)
!2533 = distinct !DILexicalBlock(scope: !2527, file: !3, line: 1176, column: 20)
!2534 = !DILocation(line: 1178, column: 13, scope: !2532)
!2535 = !DILocation(line: 1191, column: 24, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 1191, column: 13)
!2537 = !DILocation(line: 1191, column: 13, scope: !2536)
!2538 = !DILocation(line: 1191, column: 37, scope: !2536)
!2539 = !DILocation(line: 1191, column: 42, scope: !2536)
!2540 = !DILocation(line: 1191, column: 55, scope: !2536)
!2541 = !DILocation(line: 1191, column: 45, scope: !2536)
!2542 = !DILocation(line: 1191, column: 59, scope: !2536)
!2543 = !DILocation(line: 1191, column: 13, scope: !2506)
!2544 = !DILocation(line: 1193, column: 13, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 1191, column: 82)
!2546 = !DILocation(line: 1194, column: 13, scope: !2545)
!2547 = !DILocation(line: 1197, column: 39, scope: !2545)
!2548 = !DILocation(line: 1198, column: 13, scope: !2545)
!2549 = !DILocation(line: 1200, column: 9, scope: !2545)
!2550 = !DILocation(line: 1202, column: 41, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 1200, column: 16)
!2552 = !DILocation(line: 1202, column: 39, scope: !2551)
!2553 = !DILocation(line: 1203, column: 13, scope: !2551)
!2554 = !DILocation(line: 1211, column: 9, scope: !310)
!2555 = !DILocation(line: 1214, column: 51, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 1213, column: 12)
!2557 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1211, column: 9)
!2558 = !{!512, !481, i64 2512}
!2559 = !DILocation(line: 1214, column: 42, scope: !2556)
!2560 = !DILocation(line: 1144, column: 11, scope: !310)
!2561 = !DILocation(line: 1215, column: 25, scope: !2556)
!2562 = !DILocation(line: 1215, column: 19, scope: !2556)
!2563 = !DILocation(line: 1143, column: 20, scope: !310)
!2564 = !DILocation(line: 0, scope: !2556)
!2565 = !DILocation(line: 1218, column: 13, scope: !310)
!2566 = !DILocation(line: 1143, column: 13, scope: !310)
!2567 = !DILocation(line: 1219, column: 15, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1219, column: 9)
!2569 = !DILocation(line: 1219, column: 9, scope: !310)
!2570 = !DILocation(line: 1221, column: 20, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2568, file: !3, line: 1219, column: 21)
!2572 = !DILocation(line: 1221, column: 13, scope: !2571)
!2573 = !DILocation(line: 1221, column: 38, scope: !2571)
!2574 = !DILocation(line: 1221, column: 29, scope: !2571)
!2575 = !DILocation(line: 1220, column: 9, scope: !2571)
!2576 = !DILocation(line: 1967, column: 16, scope: !2577, inlinedAt: !2579)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 1967, column: 9)
!2578 = distinct !DISubprogram(name: "cancelReplicationHandshake", scope: !3, file: !3, line: 1966, type: !2402, isLocal: false, isDefinition: true, scopeLine: 1966, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!2579 = distinct !DILocation(line: 1222, column: 9, scope: !2571)
!2580 = !DILocation(line: 1967, column: 9, scope: !2578, inlinedAt: !2579)
!2581 = !DILocation(line: 1968, column: 9, scope: !2582, inlinedAt: !2579)
!2582 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 1967, column: 51)
!2583 = !DILocation(line: 1970, column: 5, scope: !2582, inlinedAt: !2579)
!2584 = !DILocation(line: 1071, column: 57, scope: !2401, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 1971, column: 16, scope: !2586, inlinedAt: !2579)
!2586 = distinct !DILexicalBlock(scope: !2577, file: !3, line: 1970, column: 16)
!2587 = !DILocation(line: 1071, column: 5, scope: !2401, inlinedAt: !2585)
!2588 = !DILocation(line: 1970, column: 16, scope: !2577, inlinedAt: !2579)
!2589 = !DILocation(line: 1940, column: 21, scope: !2590, inlinedAt: !2593)
!2590 = distinct !DISubprogram(name: "undoConnectWithMaster", scope: !3, file: !3, line: 1939, type: !306, isLocal: false, isDefinition: true, scopeLine: 1939, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2591)
!2591 = !{!2592}
!2592 = !DILocalVariable(name: "fd", scope: !2590, file: !3, line: 1940, type: !20)
!2593 = distinct !DILocation(line: 1973, column: 9, scope: !2594, inlinedAt: !2579)
!2594 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 1972, column: 5)
!2595 = !DILocation(line: 1940, column: 9, scope: !2590, inlinedAt: !2593)
!2596 = !DILocation(line: 1942, column: 30, scope: !2590, inlinedAt: !2593)
!2597 = !DILocation(line: 1942, column: 5, scope: !2590, inlinedAt: !2593)
!2598 = !DILocation(line: 1943, column: 5, scope: !2590, inlinedAt: !2593)
!2599 = !DILocation(line: 1944, column: 28, scope: !2590, inlinedAt: !2593)
!2600 = !DILocation(line: 1945, column: 1, scope: !2590, inlinedAt: !2593)
!2601 = !DILocation(line: 0, scope: !2582, inlinedAt: !2579)
!2602 = !DILocation(line: 1978, column: 5, scope: !2578, inlinedAt: !2579)
!2603 = !DILocation(line: 1979, column: 1, scope: !2578, inlinedAt: !2579)
!2604 = !DILocation(line: 1223, column: 9, scope: !2571)
!2605 = !DILocation(line: 1225, column: 33, scope: !310)
!2606 = !{!512, !484, i64 1240}
!2607 = !DILocation(line: 1229, column: 9, scope: !310)
!2608 = !DILocation(line: 1231, column: 9, scope: !310)
!2609 = !DILocation(line: 1233, column: 19, scope: !391)
!2610 = !DILocation(line: 1233, column: 13, scope: !392)
!2611 = !DILocation(line: 1234, column: 33, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !391, file: !3, line: 1233, column: 42)
!2613 = !DILocation(line: 1234, column: 39, scope: !2612)
!2614 = !DILocation(line: 1234, column: 13, scope: !2612)
!2615 = !DILocation(line: 1235, column: 9, scope: !2612)
!2616 = !DILocation(line: 1237, column: 40, scope: !390)
!2617 = !DILocation(line: 1237, column: 47, scope: !390)
!2618 = !DILocation(line: 1237, column: 13, scope: !390)
!2619 = !DILocation(line: 1238, column: 29, scope: !390)
!2620 = !DILocation(line: 1238, column: 13, scope: !390)
!2621 = !DILocation(line: 1240, column: 13, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !392, file: !3, line: 1240, column: 13)
!2623 = !DILocation(line: 1240, column: 58, scope: !2622)
!2624 = !DILocation(line: 1240, column: 13, scope: !392)
!2625 = !DILocation(line: 0, scope: !310)
!2626 = !DILocation(line: 1243, column: 42, scope: !310)
!2627 = !DILocation(line: 1243, column: 33, scope: !310)
!2628 = !DILocation(line: 1244, column: 34, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1244, column: 9)
!2630 = !{!512, !482, i64 2532}
!2631 = !DILocation(line: 1244, column: 21, scope: !2629)
!2632 = !DILocation(line: 1143, column: 29, scope: !310)
!2633 = !DILocation(line: 1244, column: 63, scope: !2629)
!2634 = !DILocation(line: 1244, column: 9, scope: !310)
!2635 = !DILocation(line: 1246, column: 23, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 1244, column: 73)
!2637 = !DILocation(line: 1246, column: 13, scope: !2636)
!2638 = !DILocation(line: 1246, column: 41, scope: !2636)
!2639 = !DILocation(line: 1246, column: 32, scope: !2636)
!2640 = !DILocation(line: 1245, column: 9, scope: !2636)
!2641 = !DILocation(line: 1247, column: 9, scope: !2636)
!2642 = !DILocation(line: 1249, column: 31, scope: !310)
!2643 = !DILocation(line: 1252, column: 20, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1252, column: 9)
!2645 = !DILocation(line: 1252, column: 17, scope: !2644)
!2646 = !DILocation(line: 1253, column: 30, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 1253, column: 13)
!2648 = distinct !DILexicalBlock(scope: !2644, file: !3, line: 1252, column: 33)
!2649 = !DILocation(line: 1254, column: 39, scope: !2647)
!2650 = !DILocation(line: 1253, column: 13, scope: !2647)
!2651 = !DILocation(line: 1254, column: 61, scope: !2647)
!2652 = !DILocation(line: 1253, column: 13, scope: !2648)
!2653 = !DILocation(line: 1264, column: 16, scope: !396)
!2654 = !DILocation(line: 1256, column: 114, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 1255, column: 9)
!2656 = !DILocation(line: 1256, column: 105, scope: !2655)
!2657 = !DILocation(line: 1256, column: 13, scope: !2655)
!2658 = !DILocation(line: 1257, column: 13, scope: !2655)
!2659 = !DILocation(line: 1265, column: 16, scope: !396)
!2660 = !{!512, !481, i64 2520}
!2661 = !DILocation(line: 1265, column: 45, scope: !396)
!2662 = !DILocation(line: 1264, column: 35, scope: !396)
!2663 = !DILocation(line: 1264, column: 9, scope: !310)
!2664 = !DILocation(line: 1267, column: 53, scope: !395)
!2665 = !DILocation(line: 1267, column: 15, scope: !395)
!2666 = !DILocation(line: 1269, column: 9, scope: !395)
!2667 = !DILocation(line: 1271, column: 45, scope: !395)
!2668 = !DILocation(line: 1272, column: 5, scope: !395)
!2669 = !DILocation(line: 1275, column: 9, scope: !310)
!2670 = !DILocation(line: 1276, column: 20, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !3, line: 1276, column: 13)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 1275, column: 19)
!2673 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1275, column: 9)
!2674 = !DILocation(line: 1276, column: 49, scope: !2671)
!2675 = !DILocation(line: 1276, column: 39, scope: !2671)
!2676 = !DILocation(line: 1280, column: 9, scope: !399)
!2677 = !DILocation(line: 1280, column: 9, scope: !310)
!2678 = !DILocation(line: 1281, column: 37, scope: !398)
!2679 = !{!512, !482, i64 1880}
!2680 = !DILocation(line: 1281, column: 47, scope: !398)
!2681 = !DILocation(line: 1284, column: 20, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1284, column: 13)
!2683 = !DILocation(line: 1284, column: 34, scope: !2682)
!2684 = !DILocation(line: 1284, column: 13, scope: !398)
!2685 = !DILocation(line: 1290, column: 21, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 1284, column: 41)
!2687 = !DILocation(line: 1285, column: 13, scope: !2686)
!2688 = !DILocation(line: 1291, column: 25, scope: !2686)
!2689 = !DILocation(line: 1291, column: 13, scope: !2686)
!2690 = !DILocation(line: 1292, column: 38, scope: !2686)
!2691 = !DILocation(line: 1292, column: 13, scope: !2686)
!2692 = !DILocation(line: 1293, column: 9, scope: !2686)
!2693 = !DILocation(line: 1295, column: 27, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1295, column: 13)
!2695 = !{!512, !483, i64 2536}
!2696 = !DILocation(line: 1295, column: 56, scope: !2694)
!2697 = !DILocation(line: 1295, column: 13, scope: !2694)
!2698 = !DILocation(line: 1295, column: 70, scope: !2694)
!2699 = !DILocation(line: 1295, column: 13, scope: !398)
!2700 = !DILocation(line: 1296, column: 138, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 1295, column: 77)
!2702 = !DILocation(line: 1296, column: 129, scope: !2701)
!2703 = !DILocation(line: 1296, column: 13, scope: !2701)
!2704 = !DILocation(line: 1967, column: 16, scope: !2577, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 1297, column: 13, scope: !2701)
!2706 = !DILocation(line: 1967, column: 9, scope: !2578, inlinedAt: !2705)
!2707 = !DILocation(line: 1968, column: 9, scope: !2582, inlinedAt: !2705)
!2708 = !DILocation(line: 1970, column: 5, scope: !2582, inlinedAt: !2705)
!2709 = !DILocation(line: 1071, column: 57, scope: !2401, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 1971, column: 16, scope: !2586, inlinedAt: !2705)
!2711 = !DILocation(line: 1071, column: 5, scope: !2401, inlinedAt: !2710)
!2712 = !DILocation(line: 1970, column: 16, scope: !2577, inlinedAt: !2705)
!2713 = !DILocation(line: 1940, column: 21, scope: !2590, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 1973, column: 9, scope: !2594, inlinedAt: !2705)
!2715 = !DILocation(line: 1940, column: 9, scope: !2590, inlinedAt: !2714)
!2716 = !DILocation(line: 1942, column: 30, scope: !2590, inlinedAt: !2714)
!2717 = !DILocation(line: 1942, column: 5, scope: !2590, inlinedAt: !2714)
!2718 = !DILocation(line: 1943, column: 5, scope: !2590, inlinedAt: !2714)
!2719 = !DILocation(line: 1944, column: 28, scope: !2590, inlinedAt: !2714)
!2720 = !DILocation(line: 1945, column: 1, scope: !2590, inlinedAt: !2714)
!2721 = !DILocation(line: 0, scope: !2582, inlinedAt: !2705)
!2722 = !DILocation(line: 1978, column: 5, scope: !2578, inlinedAt: !2705)
!2723 = !DILocation(line: 1979, column: 1, scope: !2578, inlinedAt: !2705)
!2724 = !DILocation(line: 1298, column: 13, scope: !2701)
!2725 = !DILocation(line: 1300, column: 9, scope: !398)
!2726 = !DILocation(line: 1303, column: 12, scope: !398)
!2727 = !DILocation(line: 1303, column: 28, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1303, column: 12)
!2729 = !DILocation(line: 1304, column: 9, scope: !398)
!2730 = !DILocation(line: 1307, column: 20, scope: !398)
!2731 = !{!512, !482, i64 2656}
!2732 = !DILocation(line: 1307, column: 13, scope: !398)
!2733 = !DILocation(line: 1305, column: 9, scope: !398)
!2734 = !DILocation(line: 1313, column: 34, scope: !398)
!2735 = !DILocation(line: 1313, column: 44, scope: !398)
!2736 = !DILocation(line: 1313, column: 9, scope: !398)
!2737 = !DILocation(line: 1314, column: 9, scope: !398)
!2738 = !DILocation(line: 1315, column: 9, scope: !398)
!2739 = !DILocation(line: 1315, column: 21, scope: !398)
!2740 = !DILocation(line: 1316, column: 28, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1316, column: 13)
!2742 = !DILocation(line: 1316, column: 13, scope: !2741)
!2743 = !DILocation(line: 1316, column: 47, scope: !2741)
!2744 = !DILocation(line: 1316, column: 13, scope: !398)
!2745 = !DILocation(line: 1317, column: 13, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2741, file: !3, line: 1316, column: 56)
!2747 = !DILocation(line: 1967, column: 16, scope: !2577, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 1318, column: 13, scope: !2746)
!2749 = !DILocation(line: 1967, column: 9, scope: !2578, inlinedAt: !2748)
!2750 = !DILocation(line: 1968, column: 9, scope: !2582, inlinedAt: !2748)
!2751 = !DILocation(line: 1970, column: 5, scope: !2582, inlinedAt: !2748)
!2752 = !DILocation(line: 1071, column: 57, scope: !2401, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 1971, column: 16, scope: !2586, inlinedAt: !2748)
!2754 = !DILocation(line: 1071, column: 5, scope: !2401, inlinedAt: !2753)
!2755 = !DILocation(line: 1970, column: 16, scope: !2577, inlinedAt: !2748)
!2756 = !DILocation(line: 1940, column: 21, scope: !2590, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 1973, column: 9, scope: !2594, inlinedAt: !2748)
!2758 = !DILocation(line: 1940, column: 9, scope: !2590, inlinedAt: !2757)
!2759 = !DILocation(line: 1942, column: 30, scope: !2590, inlinedAt: !2757)
!2760 = !DILocation(line: 1942, column: 5, scope: !2590, inlinedAt: !2757)
!2761 = !DILocation(line: 1943, column: 5, scope: !2590, inlinedAt: !2757)
!2762 = !DILocation(line: 1944, column: 28, scope: !2590, inlinedAt: !2757)
!2763 = !DILocation(line: 1945, column: 1, scope: !2590, inlinedAt: !2757)
!2764 = !DILocation(line: 0, scope: !2582, inlinedAt: !2748)
!2765 = !DILocation(line: 1978, column: 5, scope: !2578, inlinedAt: !2748)
!2766 = !DILocation(line: 1979, column: 1, scope: !2578, inlinedAt: !2748)
!2767 = !DILocation(line: 1321, column: 17, scope: !2746)
!2768 = !DILocation(line: 1321, column: 33, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 1321, column: 17)
!2770 = !DILocation(line: 1325, column: 22, scope: !398)
!2771 = !DILocation(line: 1325, column: 9, scope: !398)
!2772 = !DILocation(line: 1326, column: 22, scope: !398)
!2773 = !DILocation(line: 1326, column: 9, scope: !398)
!2774 = !DILocation(line: 1327, column: 46, scope: !398)
!2775 = !DILocation(line: 1327, column: 66, scope: !398)
!2776 = !{!2777, !482, i64 0}
!2777 = !{!"rdbSaveInfo", !482, i64 0, !482, i64 4, !471, i64 8, !484, i64 56}
!2778 = !DILocation(line: 1103, column: 40, scope: !2438, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 1327, column: 9, scope: !398)
!2780 = !DILocation(line: 1103, column: 48, scope: !2438, inlinedAt: !2779)
!2781 = !DILocation(line: 1104, column: 21, scope: !2438, inlinedAt: !2779)
!2782 = !DILocation(line: 1104, column: 19, scope: !2438, inlinedAt: !2779)
!2783 = !DILocation(line: 1105, column: 20, scope: !2438, inlinedAt: !2779)
!2784 = !DILocation(line: 1105, column: 26, scope: !2438, inlinedAt: !2779)
!2785 = !DILocation(line: 1106, column: 20, scope: !2438, inlinedAt: !2779)
!2786 = !DILocation(line: 1106, column: 34, scope: !2438, inlinedAt: !2779)
!2787 = !DILocation(line: 1107, column: 37, scope: !2438, inlinedAt: !2779)
!2788 = !DILocation(line: 1107, column: 20, scope: !2438, inlinedAt: !2779)
!2789 = !DILocation(line: 1107, column: 28, scope: !2438, inlinedAt: !2779)
!2790 = !DILocation(line: 1108, column: 20, scope: !2438, inlinedAt: !2779)
!2791 = !DILocation(line: 1108, column: 33, scope: !2438, inlinedAt: !2779)
!2792 = !DILocation(line: 1109, column: 12, scope: !2438, inlinedAt: !2779)
!2793 = !DILocation(line: 1109, column: 5, scope: !2438, inlinedAt: !2779)
!2794 = !DILocation(line: 1113, column: 16, scope: !2461, inlinedAt: !2779)
!2795 = !DILocation(line: 1113, column: 24, scope: !2461, inlinedAt: !2779)
!2796 = !DILocation(line: 1113, column: 32, scope: !2461, inlinedAt: !2779)
!2797 = !DILocation(line: 1113, column: 9, scope: !2438, inlinedAt: !2779)
!2798 = !DILocation(line: 1114, column: 24, scope: !2461, inlinedAt: !2779)
!2799 = !DILocation(line: 1114, column: 30, scope: !2461, inlinedAt: !2779)
!2800 = !DILocation(line: 1114, column: 9, scope: !2461, inlinedAt: !2779)
!2801 = !DILocation(line: 1115, column: 14, scope: !2469, inlinedAt: !2779)
!2802 = !DILocation(line: 1115, column: 9, scope: !2438, inlinedAt: !2779)
!2803 = !DILocation(line: 1115, column: 21, scope: !2469, inlinedAt: !2779)
!2804 = !DILocation(line: 1333, column: 37, scope: !398)
!2805 = !DILocation(line: 1116, column: 1, scope: !2438, inlinedAt: !2779)
!2806 = !DILocation(line: 1328, column: 27, scope: !398)
!2807 = !DILocation(line: 1329, column: 32, scope: !398)
!2808 = !{!512, !481, i64 2568}
!2809 = !DILocation(line: 1333, column: 30, scope: !398)
!2810 = !DILocation(line: 1333, column: 9, scope: !398)
!2811 = !DILocation(line: 1334, column: 44, scope: !398)
!2812 = !DILocation(line: 1334, column: 52, scope: !398)
!2813 = !DILocation(line: 1334, column: 35, scope: !398)
!2814 = !DILocation(line: 1042, column: 5, scope: !1716, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 1335, column: 9, scope: !398)
!2816 = !DILocation(line: 1043, column: 40, scope: !1716, inlinedAt: !2815)
!2817 = !DILocation(line: 1044, column: 33, scope: !1716, inlinedAt: !2815)
!2818 = !DILocation(line: 1045, column: 1, scope: !1716, inlinedAt: !2815)
!2819 = !DILocation(line: 1340, column: 20, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1340, column: 13)
!2821 = !DILocation(line: 1340, column: 33, scope: !2820)
!2822 = !DILocation(line: 1340, column: 13, scope: !398)
!2823 = !DILocation(line: 80, column: 42, scope: !509, inlinedAt: !2824)
!2824 = distinct !DILocation(line: 1340, column: 42, scope: !2820)
!2825 = !DILocation(line: 80, column: 27, scope: !509, inlinedAt: !2824)
!2826 = !DILocation(line: 80, column: 25, scope: !509, inlinedAt: !2824)
!2827 = !DILocation(line: 81, column: 33, scope: !509, inlinedAt: !2824)
!2828 = !DILocation(line: 87, column: 38, scope: !509, inlinedAt: !2824)
!2829 = !DILocation(line: 87, column: 56, scope: !509, inlinedAt: !2824)
!2830 = !DILocation(line: 87, column: 29, scope: !509, inlinedAt: !2824)
!2831 = !DILocation(line: 88, column: 1, scope: !509, inlinedAt: !2824)
!2832 = !DILocation(line: 1340, column: 42, scope: !2820)
!2833 = !DILocation(line: 1342, column: 9, scope: !398)
!2834 = !DILocation(line: 1346, column: 13, scope: !398)
!2835 = !DILocation(line: 1346, column: 29, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1346, column: 13)
!2837 = !DILocation(line: 1347, column: 5, scope: !399)
!2838 = !DILocation(line: 1967, column: 16, scope: !2577, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 1351, column: 5, scope: !310)
!2840 = !DILocation(line: 1967, column: 9, scope: !2578, inlinedAt: !2839)
!2841 = !DILocation(line: 1968, column: 9, scope: !2582, inlinedAt: !2839)
!2842 = !DILocation(line: 1970, column: 5, scope: !2582, inlinedAt: !2839)
!2843 = !DILocation(line: 1071, column: 57, scope: !2401, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 1971, column: 16, scope: !2586, inlinedAt: !2839)
!2845 = !DILocation(line: 1071, column: 5, scope: !2401, inlinedAt: !2844)
!2846 = !DILocation(line: 1970, column: 16, scope: !2577, inlinedAt: !2839)
!2847 = !DILocation(line: 1940, column: 21, scope: !2590, inlinedAt: !2848)
!2848 = distinct !DILocation(line: 1973, column: 9, scope: !2594, inlinedAt: !2839)
!2849 = !DILocation(line: 1940, column: 9, scope: !2590, inlinedAt: !2848)
!2850 = !DILocation(line: 1942, column: 30, scope: !2590, inlinedAt: !2848)
!2851 = !DILocation(line: 1942, column: 5, scope: !2590, inlinedAt: !2848)
!2852 = !DILocation(line: 1943, column: 5, scope: !2590, inlinedAt: !2848)
!2853 = !DILocation(line: 1944, column: 28, scope: !2590, inlinedAt: !2848)
!2854 = !DILocation(line: 1945, column: 1, scope: !2590, inlinedAt: !2848)
!2855 = !DILocation(line: 0, scope: !2582, inlinedAt: !2839)
!2856 = !DILocation(line: 1978, column: 5, scope: !2578, inlinedAt: !2839)
!2857 = !DILocation(line: 1979, column: 1, scope: !2578, inlinedAt: !2839)
!2858 = !DILocation(line: 1352, column: 5, scope: !310)
!2859 = !DILocation(line: 1353, column: 1, scope: !310)
!2860 = !DILocation(line: 1967, column: 16, scope: !2577)
!2861 = !DILocation(line: 1967, column: 9, scope: !2578)
!2862 = !DILocation(line: 1968, column: 9, scope: !2582)
!2863 = !DILocation(line: 1970, column: 5, scope: !2582)
!2864 = !DILocation(line: 1071, column: 57, scope: !2401, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 1971, column: 16, scope: !2586)
!2866 = !DILocation(line: 1071, column: 5, scope: !2401, inlinedAt: !2865)
!2867 = !DILocation(line: 1970, column: 16, scope: !2577)
!2868 = !DILocation(line: 1940, column: 21, scope: !2590, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 1973, column: 9, scope: !2594)
!2870 = !DILocation(line: 1940, column: 9, scope: !2590, inlinedAt: !2869)
!2871 = !DILocation(line: 1942, column: 30, scope: !2590, inlinedAt: !2869)
!2872 = !DILocation(line: 1942, column: 5, scope: !2590, inlinedAt: !2869)
!2873 = !DILocation(line: 1943, column: 5, scope: !2590, inlinedAt: !2869)
!2874 = !DILocation(line: 1944, column: 28, scope: !2590, inlinedAt: !2869)
!2875 = !DILocation(line: 1945, column: 1, scope: !2590, inlinedAt: !2869)
!2876 = !DILocation(line: 0, scope: !2582)
!2877 = !DILocation(line: 1978, column: 5, scope: !2578)
!2878 = !DILocation(line: 0, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 1975, column: 12)
!2880 = !DILocation(line: 1979, column: 1, scope: !2578)
!2881 = distinct !DISubprogram(name: "sendSynchronousCommand", scope: !3, file: !3, line: 1364, type: !2882, isLocal: false, isDefinition: true, scopeLine: 1364, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!6, !20, !20, null}
!2884 = !{!2885, !2886, !2887, !2890, !2903, !2904, !2905, !2906}
!2885 = !DILocalVariable(name: "flags", arg: 1, scope: !2881, file: !3, line: 1364, type: !20)
!2886 = !DILocalVariable(name: "fd", arg: 2, scope: !2881, file: !3, line: 1364, type: !20)
!2887 = !DILocalVariable(name: "arg", scope: !2888, file: !3, line: 1370, type: !6)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !3, line: 1369, column: 33)
!2889 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 1369, column: 9)
!2890 = !DILocalVariable(name: "ap", scope: !2888, file: !3, line: 1371, type: !2891)
!2891 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2892, line: 46, baseType: !2893)
!2892 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!2893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2894, line: 51, baseType: !2895)
!2894 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 1371, baseType: !2896)
!2896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2897, size: 192, elements: !428)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 1371, size: 192, elements: !2898)
!2898 = !{!2899, !2900, !2901, !2902}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2897, file: !3, line: 1371, baseType: !133, size: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2897, file: !3, line: 1371, baseType: !133, size: 32, offset: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2897, file: !3, line: 1371, baseType: !47, size: 64, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2897, file: !3, line: 1371, baseType: !47, size: 64, offset: 128)
!2903 = !DILocalVariable(name: "cmd", scope: !2888, file: !3, line: 1372, type: !139)
!2904 = !DILocalVariable(name: "cmdargs", scope: !2888, file: !3, line: 1373, type: !139)
!2905 = !DILocalVariable(name: "argslen", scope: !2888, file: !3, line: 1374, type: !142)
!2906 = !DILocalVariable(name: "buf", scope: !2907, file: !3, line: 1404, type: !2909)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 1403, column: 32)
!2908 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 1403, column: 9)
!2909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 2048, elements: !2910)
!2910 = !{!2911}
!2911 = !DISubrange(count: 256)
!2912 = !DILocation(line: 1364, column: 34, scope: !2881)
!2913 = !DILocation(line: 1364, column: 45, scope: !2881)
!2914 = !DILocation(line: 1369, column: 15, scope: !2889)
!2915 = !DILocation(line: 1369, column: 9, scope: !2881)
!2916 = !DILocation(line: 1371, column: 9, scope: !2888)
!2917 = !DILocation(line: 1371, column: 17, scope: !2888)
!2918 = !DILocation(line: 1372, column: 19, scope: !2888)
!2919 = !DILocation(line: 1372, column: 13, scope: !2888)
!2920 = !DILocation(line: 1373, column: 23, scope: !2888)
!2921 = !DILocation(line: 1373, column: 13, scope: !2888)
!2922 = !DILocation(line: 1374, column: 16, scope: !2888)
!2923 = !DILocation(line: 1375, column: 9, scope: !2888)
!2924 = !DILocation(line: 1377, column: 9, scope: !2888)
!2925 = !DILocation(line: 0, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 1377, column: 18)
!2927 = !DILocation(line: 1378, column: 19, scope: !2926)
!2928 = !DILocation(line: 1370, column: 15, scope: !2888)
!2929 = !DILocation(line: 1379, column: 21, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 1379, column: 17)
!2931 = !DILocation(line: 1379, column: 17, scope: !2926)
!2932 = !DILocation(line: 1381, column: 61, scope: !2926)
!2933 = !DILocation(line: 1381, column: 23, scope: !2926)
!2934 = !DILocation(line: 1382, column: 20, scope: !2926)
!2935 = distinct !{!2935, !2924, !2936}
!2936 = !DILocation(line: 1383, column: 9, scope: !2888)
!2937 = !DILocation(line: 1385, column: 9, scope: !2888)
!2938 = !DILocation(line: 1387, column: 15, scope: !2888)
!2939 = !DILocation(line: 1388, column: 15, scope: !2888)
!2940 = !DILocation(line: 1389, column: 9, scope: !2888)
!2941 = !DILocation(line: 87, column: 39, scope: !646, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 1392, column: 30, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 1392, column: 13)
!2944 = !DILocation(line: 88, column: 27, scope: !646, inlinedAt: !2942)
!2945 = !DILocation(line: 88, column: 19, scope: !646, inlinedAt: !2942)
!2946 = !DILocation(line: 89, column: 5, scope: !646, inlinedAt: !2942)
!2947 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !2942)
!2948 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !2942)
!2949 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !2942)
!2950 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !2942)
!2951 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !2942)
!2952 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !2942)
!2953 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !2942)
!2954 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !2942)
!2955 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !2942)
!2956 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !2942)
!2957 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !2942)
!2958 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !2942)
!2959 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !2942)
!2960 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !2942)
!2961 = !DILocation(line: 0, scope: !660, inlinedAt: !2942)
!2962 = !DILocation(line: 102, column: 1, scope: !646, inlinedAt: !2942)
!2963 = !DILocation(line: 1392, column: 49, scope: !2943)
!2964 = !DILocation(line: 1392, column: 68, scope: !2943)
!2965 = !DILocation(line: 1392, column: 42, scope: !2943)
!2966 = !DILocation(line: 1392, column: 13, scope: !2943)
!2967 = !DILocation(line: 1393, column: 13, scope: !2943)
!2968 = !DILocation(line: 0, scope: !2888)
!2969 = !DILocation(line: 1392, column: 13, scope: !2888)
!2970 = !DILocation(line: 1400, column: 5, scope: !2889)
!2971 = !DILocation(line: 1396, column: 33, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 1394, column: 9)
!2973 = !DILocation(line: 1397, column: 30, scope: !2972)
!2974 = !DILocation(line: 1397, column: 21, scope: !2972)
!2975 = !DILocation(line: 1396, column: 20, scope: !2972)
!2976 = !DILocation(line: 1403, column: 15, scope: !2908)
!2977 = !DILocation(line: 1403, column: 9, scope: !2881)
!2978 = !DILocation(line: 1404, column: 9, scope: !2907)
!2979 = !DILocation(line: 1404, column: 14, scope: !2907)
!2980 = !DILocation(line: 1406, column: 52, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 1406, column: 13)
!2982 = !DILocation(line: 1406, column: 71, scope: !2981)
!2983 = !DILocation(line: 1406, column: 45, scope: !2981)
!2984 = !DILocation(line: 1406, column: 13, scope: !2981)
!2985 = !DILocation(line: 1407, column: 13, scope: !2981)
!2986 = !DILocation(line: 1406, column: 13, scope: !2907)
!2987 = !DILocation(line: 1409, column: 33, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 1408, column: 9)
!2989 = !DILocation(line: 1410, column: 30, scope: !2988)
!2990 = !DILocation(line: 1410, column: 21, scope: !2988)
!2991 = !DILocation(line: 1409, column: 20, scope: !2988)
!2992 = !DILocation(line: 1409, column: 13, scope: !2988)
!2993 = !DILocation(line: 1412, column: 46, scope: !2907)
!2994 = !DILocation(line: 1412, column: 37, scope: !2907)
!2995 = !DILocation(line: 1413, column: 16, scope: !2907)
!2996 = !DILocation(line: 1413, column: 9, scope: !2907)
!2997 = !DILocation(line: 0, scope: !2907)
!2998 = !DILocation(line: 1414, column: 5, scope: !2908)
!2999 = !DILocation(line: 0, scope: !2972)
!3000 = !DILocation(line: 1416, column: 1, scope: !2881)
!3001 = distinct !DISubprogram(name: "slaveTryPartialResynchronization", scope: !3, file: !3, line: 1472, type: !3002, isLocal: false, isDefinition: true, scopeLine: 1472, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!20, !20, !20}
!3004 = !{!3005, !3006, !3007, !3008, !3012, !3013, !3016, !3017, !3020, !3021}
!3005 = !DILocalVariable(name: "fd", arg: 1, scope: !3001, file: !3, line: 1472, type: !20)
!3006 = !DILocalVariable(name: "read_reply", arg: 2, scope: !3001, file: !3, line: 1472, type: !20)
!3007 = !DILocalVariable(name: "psync_replid", scope: !3001, file: !3, line: 1473, type: !6)
!3008 = !DILocalVariable(name: "psync_offset", scope: !3001, file: !3, line: 1474, type: !3009)
!3009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !3010)
!3010 = !{!3011}
!3011 = !DISubrange(count: 32)
!3012 = !DILocalVariable(name: "reply", scope: !3001, file: !3, line: 1475, type: !139)
!3013 = !DILocalVariable(name: "replid", scope: !3014, file: !3, line: 1519, type: !6)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 1518, column: 43)
!3015 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1518, column: 9)
!3016 = !DILocalVariable(name: "offset", scope: !3014, file: !3, line: 1519, type: !6)
!3017 = !DILocalVariable(name: "start", scope: !3018, file: !3, line: 1561, type: !6)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 1551, column: 40)
!3019 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1551, column: 9)
!3020 = !DILocalVariable(name: "end", scope: !3018, file: !3, line: 1562, type: !6)
!3021 = !DILocalVariable(name: "new", scope: !3022, file: !3, line: 1565, type: !206)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 1564, column: 46)
!3023 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 1564, column: 13)
!3024 = !DILocation(line: 1472, column: 42, scope: !3001)
!3025 = !DILocation(line: 1472, column: 50, scope: !3001)
!3026 = !DILocation(line: 1474, column: 5, scope: !3001)
!3027 = !DILocation(line: 1474, column: 10, scope: !3001)
!3028 = !DILocation(line: 1478, column: 10, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1478, column: 9)
!3030 = !DILocation(line: 1478, column: 9, scope: !3001)
!3031 = !DILocation(line: 1484, column: 38, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3029, file: !3, line: 1478, column: 22)
!3033 = !DILocation(line: 1486, column: 20, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 1486, column: 13)
!3035 = !{!512, !483, i64 2488}
!3036 = !DILocation(line: 1486, column: 13, scope: !3034)
!3037 = !DILocation(line: 1486, column: 13, scope: !3032)
!3038 = !DILocation(line: 1487, column: 28, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 1486, column: 35)
!3040 = !DILocation(line: 1473, column: 11, scope: !3001)
!3041 = !DILocation(line: 1488, column: 86, scope: !3039)
!3042 = !DILocation(line: 1488, column: 93, scope: !3039)
!3043 = !DILocation(line: 1488, column: 13, scope: !3039)
!3044 = !DILocation(line: 1489, column: 13, scope: !3039)
!3045 = !DILocation(line: 1490, column: 9, scope: !3039)
!3046 = !DILocation(line: 1491, column: 13, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3034, file: !3, line: 1490, column: 16)
!3048 = !DILocation(line: 1493, column: 13, scope: !3047)
!3049 = !DILocation(line: 0, scope: !3047)
!3050 = !DILocation(line: 1497, column: 17, scope: !3032)
!3051 = !DILocation(line: 1475, column: 9, scope: !3001)
!3052 = !DILocation(line: 1498, column: 19, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 1498, column: 13)
!3054 = !DILocation(line: 1498, column: 13, scope: !3032)
!3055 = !DILocation(line: 1499, column: 13, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 1498, column: 28)
!3057 = !DILocation(line: 1500, column: 13, scope: !3056)
!3058 = !DILocation(line: 1501, column: 38, scope: !3056)
!3059 = !DILocation(line: 1501, column: 13, scope: !3056)
!3060 = !DILocation(line: 1502, column: 13, scope: !3056)
!3061 = !DILocation(line: 1508, column: 13, scope: !3001)
!3062 = !DILocation(line: 87, column: 39, scope: !646, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 1509, column: 9, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1509, column: 9)
!3065 = !DILocation(line: 88, column: 27, scope: !646, inlinedAt: !3063)
!3066 = !DILocation(line: 88, column: 19, scope: !646, inlinedAt: !3063)
!3067 = !DILocation(line: 89, column: 5, scope: !646, inlinedAt: !3063)
!3068 = !DILocation(line: 102, column: 1, scope: !646, inlinedAt: !3063)
!3069 = !DILocation(line: 1509, column: 9, scope: !3001)
!3070 = !DILocation(line: 91, column: 20, scope: !660, inlinedAt: !3063)
!3071 = !DILocation(line: 91, column: 13, scope: !660, inlinedAt: !3063)
!3072 = !DILocation(line: 93, column: 20, scope: !660, inlinedAt: !3063)
!3073 = !DILocation(line: 93, column: 34, scope: !660, inlinedAt: !3063)
!3074 = !DILocation(line: 93, column: 13, scope: !660, inlinedAt: !3063)
!3075 = !DILocation(line: 95, column: 20, scope: !660, inlinedAt: !3063)
!3076 = !DILocation(line: 95, column: 35, scope: !660, inlinedAt: !3063)
!3077 = !DILocation(line: 95, column: 13, scope: !660, inlinedAt: !3063)
!3078 = !DILocation(line: 97, column: 20, scope: !660, inlinedAt: !3063)
!3079 = !DILocation(line: 97, column: 35, scope: !660, inlinedAt: !3063)
!3080 = !DILocation(line: 97, column: 13, scope: !660, inlinedAt: !3063)
!3081 = !DILocation(line: 99, column: 20, scope: !660, inlinedAt: !3063)
!3082 = !DILocation(line: 99, column: 35, scope: !660, inlinedAt: !3063)
!3083 = !DILocation(line: 99, column: 13, scope: !660, inlinedAt: !3063)
!3084 = !DILocation(line: 0, scope: !660, inlinedAt: !3063)
!3085 = !DILocation(line: 1509, column: 23, scope: !3064)
!3086 = !DILocation(line: 1512, column: 9, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 1509, column: 29)
!3088 = !DILocation(line: 1513, column: 9, scope: !3087)
!3089 = !DILocation(line: 1516, column: 30, scope: !3001)
!3090 = !DILocation(line: 1516, column: 5, scope: !3001)
!3091 = !DILocation(line: 1518, column: 10, scope: !3015)
!3092 = !DILocation(line: 1518, column: 9, scope: !3001)
!3093 = !DILocation(line: 1519, column: 15, scope: !3014)
!3094 = !DILocation(line: 1519, column: 31, scope: !3014)
!3095 = !DILocation(line: 1523, column: 18, scope: !3014)
!3096 = !DILocation(line: 1524, column: 13, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 1524, column: 13)
!3098 = !DILocation(line: 1524, column: 13, scope: !3014)
!3099 = !DILocation(line: 1525, column: 19, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 1524, column: 21)
!3101 = !DILocation(line: 1526, column: 22, scope: !3100)
!3102 = !DILocation(line: 1527, column: 17, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 1527, column: 17)
!3104 = !DILocation(line: 1527, column: 31, scope: !3103)
!3105 = !DILocation(line: 1527, column: 17, scope: !3100)
!3106 = !DILocation(line: 1529, column: 21, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3014, file: !3, line: 1529, column: 13)
!3108 = !DILocation(line: 1529, column: 42, scope: !3107)
!3109 = !DILocation(line: 1529, column: 49, scope: !3107)
!3110 = !DILocation(line: 1529, column: 53, scope: !3107)
!3111 = !DILocation(line: 1529, column: 13, scope: !3014)
!3112 = !DILocation(line: 1530, column: 13, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1529, column: 76)
!3114 = !DILocation(line: 1536, column: 13, scope: !3113)
!3115 = !DILocation(line: 1537, column: 9, scope: !3113)
!3116 = !DILocation(line: 1538, column: 13, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3107, file: !3, line: 1537, column: 16)
!3118 = !DILocation(line: 1539, column: 54, scope: !3117)
!3119 = !DILocation(line: 1540, column: 44, scope: !3117)
!3120 = !DILocation(line: 1540, column: 42, scope: !3117)
!3121 = !DILocation(line: 1541, column: 13, scope: !3117)
!3122 = !DILocation(line: 2256, column: 16, scope: !3123, inlinedAt: !3125)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !3, line: 2256, column: 9)
!3124 = distinct !DISubprogram(name: "replicationDiscardCachedMaster", scope: !3, file: !3, line: 2255, type: !306, isLocal: false, isDefinition: true, scopeLine: 2255, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!3125 = distinct !DILocation(line: 1546, column: 9, scope: !3014)
!3126 = !DILocation(line: 2256, column: 30, scope: !3123, inlinedAt: !3125)
!3127 = !DILocation(line: 2256, column: 9, scope: !3124, inlinedAt: !3125)
!3128 = !DILocation(line: 2258, column: 5, scope: !3124, inlinedAt: !3125)
!3129 = !DILocation(line: 2259, column: 12, scope: !3124, inlinedAt: !3125)
!3130 = !DILocation(line: 2259, column: 27, scope: !3124, inlinedAt: !3125)
!3131 = !DILocation(line: 2259, column: 33, scope: !3124, inlinedAt: !3125)
!3132 = !DILocation(line: 2260, column: 5, scope: !3124, inlinedAt: !3125)
!3133 = !DILocation(line: 2261, column: 26, scope: !3124, inlinedAt: !3125)
!3134 = !DILocation(line: 2262, column: 1, scope: !3124, inlinedAt: !3125)
!3135 = !DILocation(line: 1547, column: 9, scope: !3014)
!3136 = !DILocation(line: 1551, column: 10, scope: !3019)
!3137 = !DILocation(line: 1551, column: 9, scope: !3001)
!3138 = !DILocation(line: 1553, column: 9, scope: !3018)
!3139 = !DILocation(line: 1561, column: 28, scope: !3018)
!3140 = !DILocation(line: 1561, column: 15, scope: !3018)
!3141 = !DILocation(line: 1562, column: 26, scope: !3018)
!3142 = !DILocation(line: 1562, column: 15, scope: !3018)
!3143 = !DILocation(line: 1563, column: 9, scope: !3018)
!3144 = !DILocation(line: 0, scope: !3018)
!3145 = !DILocation(line: 1563, column: 15, scope: !3018)
!3146 = !DILocation(line: 1563, column: 30, scope: !3018)
!3147 = !DILocation(line: 1563, column: 70, scope: !3018)
!3148 = distinct !{!3148, !3143, !3147}
!3149 = !DILocation(line: 1564, column: 16, scope: !3023)
!3150 = !DILocation(line: 1564, column: 23, scope: !3023)
!3151 = !DILocation(line: 1564, column: 13, scope: !3018)
!3152 = !DILocation(line: 1565, column: 13, scope: !3022)
!3153 = !DILocation(line: 1565, column: 18, scope: !3022)
!3154 = !DILocation(line: 1566, column: 13, scope: !3022)
!3155 = !DILocation(line: 1567, column: 13, scope: !3022)
!3156 = !DILocation(line: 1567, column: 37, scope: !3022)
!3157 = !DILocation(line: 1569, column: 35, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3022, file: !3, line: 1569, column: 17)
!3159 = !DILocation(line: 1569, column: 28, scope: !3158)
!3160 = !DILocation(line: 1569, column: 17, scope: !3158)
!3161 = !DILocation(line: 1569, column: 17, scope: !3022)
!3162 = !DILocation(line: 1571, column: 17, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 1569, column: 59)
!3164 = !DILocation(line: 1574, column: 46, scope: !3163)
!3165 = !DILocation(line: 1574, column: 39, scope: !3163)
!3166 = !DILocation(line: 1574, column: 17, scope: !3163)
!3167 = !DILocation(line: 1576, column: 54, scope: !3163)
!3168 = !DILocation(line: 1576, column: 72, scope: !3163)
!3169 = !DILocation(line: 1576, column: 45, scope: !3163)
!3170 = !DILocation(line: 1580, column: 17, scope: !3163)
!3171 = !DILocation(line: 1581, column: 31, scope: !3163)
!3172 = !DILocation(line: 1581, column: 24, scope: !3163)
!3173 = !DILocation(line: 1581, column: 17, scope: !3163)
!3174 = !DILocation(line: 1584, column: 17, scope: !3163)
!3175 = !DILocation(line: 1585, column: 13, scope: !3163)
!3176 = !DILocation(line: 1586, column: 9, scope: !3023)
!3177 = !DILocation(line: 1586, column: 9, scope: !3022)
!3178 = !DILocation(line: 1589, column: 9, scope: !3018)
!3179 = !DILocation(line: 1590, column: 9, scope: !3018)
!3180 = !DILocation(line: 1595, column: 20, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 1595, column: 13)
!3182 = !DILocation(line: 1595, column: 33, scope: !3181)
!3183 = !DILocation(line: 1595, column: 13, scope: !3018)
!3184 = !DILocation(line: 80, column: 42, scope: !509, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 1595, column: 42, scope: !3181)
!3186 = !DILocation(line: 80, column: 27, scope: !509, inlinedAt: !3185)
!3187 = !DILocation(line: 80, column: 25, scope: !509, inlinedAt: !3185)
!3188 = !DILocation(line: 81, column: 33, scope: !509, inlinedAt: !3185)
!3189 = !DILocation(line: 87, column: 38, scope: !509, inlinedAt: !3185)
!3190 = !DILocation(line: 87, column: 56, scope: !509, inlinedAt: !3185)
!3191 = !DILocation(line: 87, column: 29, scope: !509, inlinedAt: !3185)
!3192 = !DILocation(line: 88, column: 1, scope: !509, inlinedAt: !3185)
!3193 = !DILocation(line: 1595, column: 42, scope: !3181)
!3194 = !DILocation(line: 1606, column: 10, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1606, column: 9)
!3196 = !DILocation(line: 1606, column: 44, scope: !3195)
!3197 = !DILocation(line: 1607, column: 10, scope: !3195)
!3198 = !DILocation(line: 1606, column: 9, scope: !3001)
!3199 = !DILocation(line: 1609, column: 9, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 1608, column: 5)
!3201 = !DILocation(line: 1612, column: 9, scope: !3200)
!3202 = !DILocation(line: 1613, column: 9, scope: !3200)
!3203 = !DILocation(line: 1616, column: 9, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 1616, column: 9)
!3205 = !DILocation(line: 1616, column: 9, scope: !3001)
!3206 = !DILocation(line: 1618, column: 9, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 1616, column: 34)
!3208 = !DILocation(line: 1620, column: 5, scope: !3207)
!3209 = !DILocation(line: 1621, column: 9, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 1620, column: 12)
!3211 = !DILocation(line: 1625, column: 5, scope: !3001)
!3212 = !DILocation(line: 2256, column: 16, scope: !3123, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 1626, column: 5, scope: !3001)
!3214 = !DILocation(line: 2256, column: 30, scope: !3123, inlinedAt: !3213)
!3215 = !DILocation(line: 2256, column: 9, scope: !3124, inlinedAt: !3213)
!3216 = !DILocation(line: 2258, column: 5, scope: !3124, inlinedAt: !3213)
!3217 = !DILocation(line: 2259, column: 12, scope: !3124, inlinedAt: !3213)
!3218 = !DILocation(line: 2259, column: 27, scope: !3124, inlinedAt: !3213)
!3219 = !DILocation(line: 2259, column: 33, scope: !3124, inlinedAt: !3213)
!3220 = !DILocation(line: 2260, column: 5, scope: !3124, inlinedAt: !3213)
!3221 = !DILocation(line: 2261, column: 26, scope: !3124, inlinedAt: !3213)
!3222 = !DILocation(line: 2262, column: 1, scope: !3124, inlinedAt: !3213)
!3223 = !DILocation(line: 1627, column: 5, scope: !3001)
!3224 = !DILocation(line: 0, scope: !3032)
!3225 = !DILocation(line: 1628, column: 1, scope: !3001)
!3226 = !DILocation(line: 2256, column: 16, scope: !3123)
!3227 = !DILocation(line: 2256, column: 30, scope: !3123)
!3228 = !DILocation(line: 2256, column: 9, scope: !3124)
!3229 = !DILocation(line: 2258, column: 5, scope: !3124)
!3230 = !DILocation(line: 2259, column: 12, scope: !3124)
!3231 = !DILocation(line: 2259, column: 27, scope: !3124)
!3232 = !DILocation(line: 2259, column: 33, scope: !3124)
!3233 = !DILocation(line: 2260, column: 5, scope: !3124)
!3234 = !DILocation(line: 2261, column: 26, scope: !3124)
!3235 = !DILocation(line: 2262, column: 1, scope: !3124)
!3236 = distinct !DISubprogram(name: "replicationResurrectCachedMaster", scope: !3, file: !3, line: 2270, type: !3237, isLocal: false, isDefinition: true, scopeLine: 2270, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3239)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{null, !20}
!3239 = !{!3240}
!3240 = !DILocalVariable(name: "newfd", arg: 1, scope: !3236, file: !3, line: 2270, type: !20)
!3241 = !DILocation(line: 2270, column: 43, scope: !3236)
!3242 = !DILocation(line: 2271, column: 28, scope: !3236)
!3243 = !DILocation(line: 2271, column: 19, scope: !3236)
!3244 = !DILocation(line: 2272, column: 26, scope: !3236)
!3245 = !DILocation(line: 2273, column: 12, scope: !3236)
!3246 = !DILocation(line: 2273, column: 20, scope: !3236)
!3247 = !DILocation(line: 2273, column: 23, scope: !3236)
!3248 = !DILocation(line: 2274, column: 20, scope: !3236)
!3249 = !DILocation(line: 2274, column: 26, scope: !3236)
!3250 = !DILocation(line: 2275, column: 20, scope: !3236)
!3251 = !DILocation(line: 2275, column: 34, scope: !3236)
!3252 = !DILocation(line: 2276, column: 45, scope: !3236)
!3253 = !DILocation(line: 2276, column: 20, scope: !3236)
!3254 = !DILocation(line: 2276, column: 36, scope: !3236)
!3255 = !{!480, !481, i64 144}
!3256 = !DILocation(line: 2277, column: 23, scope: !3236)
!3257 = !DILocation(line: 2278, column: 28, scope: !3236)
!3258 = !DILocation(line: 2281, column: 5, scope: !3236)
!3259 = !DILocation(line: 2282, column: 34, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 2282, column: 9)
!3261 = !DILocation(line: 2283, column: 55, scope: !3260)
!3262 = !DILocation(line: 2282, column: 9, scope: !3260)
!3263 = !DILocation(line: 2282, column: 9, scope: !3236)
!3264 = !DILocation(line: 2284, column: 123, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 2283, column: 64)
!3266 = !DILocation(line: 2284, column: 114, scope: !3265)
!3267 = !DILocation(line: 2284, column: 9, scope: !3265)
!3268 = !DILocation(line: 2285, column: 32, scope: !3265)
!3269 = !DILocation(line: 2285, column: 9, scope: !3265)
!3270 = !DILocation(line: 2286, column: 5, scope: !3265)
!3271 = !DILocation(line: 2290, column: 40, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 2290, column: 9)
!3273 = !DILocation(line: 2290, column: 9, scope: !3272)
!3274 = !DILocation(line: 2290, column: 9, scope: !3236)
!3275 = !DILocation(line: 2291, column: 38, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !3, line: 2291, column: 13)
!3277 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 2290, column: 49)
!3278 = !DILocation(line: 2292, column: 53, scope: !3276)
!3279 = !DILocation(line: 2291, column: 13, scope: !3276)
!3280 = !DILocation(line: 2291, column: 13, scope: !3277)
!3281 = !DILocation(line: 2293, column: 127, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3276, file: !3, line: 2292, column: 62)
!3283 = !DILocation(line: 2293, column: 118, scope: !3282)
!3284 = !DILocation(line: 2293, column: 13, scope: !3282)
!3285 = !DILocation(line: 2294, column: 36, scope: !3282)
!3286 = !DILocation(line: 2294, column: 13, scope: !3282)
!3287 = !DILocation(line: 2295, column: 9, scope: !3282)
!3288 = !DILocation(line: 2297, column: 1, scope: !3236)
!3289 = distinct !DISubprogram(name: "syncWithMaster", scope: !3, file: !3, line: 1632, type: !311, isLocal: false, isDefinition: true, scopeLine: 1632, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3290)
!3290 = !{!3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3306}
!3291 = !DILocalVariable(name: "el", arg: 1, scope: !3289, file: !3, line: 1632, type: !313)
!3292 = !DILocalVariable(name: "fd", arg: 2, scope: !3289, file: !3, line: 1632, type: !20)
!3293 = !DILocalVariable(name: "privdata", arg: 3, scope: !3289, file: !3, line: 1632, type: !47)
!3294 = !DILocalVariable(name: "mask", arg: 4, scope: !3289, file: !3, line: 1632, type: !20)
!3295 = !DILocalVariable(name: "tmpfile", scope: !3289, file: !3, line: 1633, type: !2909)
!3296 = !DILocalVariable(name: "err", scope: !3289, file: !3, line: 1633, type: !6)
!3297 = !DILocalVariable(name: "dfd", scope: !3289, file: !3, line: 1634, type: !20)
!3298 = !DILocalVariable(name: "maxtries", scope: !3289, file: !3, line: 1634, type: !20)
!3299 = !DILocalVariable(name: "sockerr", scope: !3289, file: !3, line: 1635, type: !20)
!3300 = !DILocalVariable(name: "psync_result", scope: !3289, file: !3, line: 1635, type: !20)
!3301 = !DILocalVariable(name: "errlen", scope: !3289, file: !3, line: 1636, type: !3302)
!3302 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !3303, line: 113, baseType: !3304)
!3303 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/sockets.h", directory: "/root/.unikraft/apps/redis/build")
!3304 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !3305, line: 129, baseType: !290)
!3305 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!3306 = !DILocalVariable(name: "port", scope: !3307, file: !3, line: 1723, type: !139)
!3307 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 1722, column: 52)
!3308 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1722, column: 9)
!3309 = !DILocation(line: 1632, column: 34, scope: !3289)
!3310 = !DILocation(line: 1632, column: 42, scope: !3289)
!3311 = !DILocation(line: 1632, column: 52, scope: !3289)
!3312 = !DILocation(line: 1632, column: 66, scope: !3289)
!3313 = !DILocation(line: 1633, column: 5, scope: !3289)
!3314 = !DILocation(line: 1633, column: 10, scope: !3289)
!3315 = !DILocation(line: 1633, column: 25, scope: !3289)
!3316 = !DILocation(line: 1634, column: 9, scope: !3289)
!3317 = !DILocation(line: 1634, column: 19, scope: !3289)
!3318 = !DILocation(line: 1635, column: 5, scope: !3289)
!3319 = !DILocation(line: 1635, column: 9, scope: !3289)
!3320 = !DILocation(line: 1636, column: 5, scope: !3289)
!3321 = !DILocation(line: 1636, column: 15, scope: !3289)
!3322 = !DILocation(line: 1643, column: 16, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1643, column: 9)
!3324 = !DILocation(line: 1643, column: 27, scope: !3323)
!3325 = !DILocation(line: 1643, column: 9, scope: !3289)
!3326 = !DILocation(line: 1644, column: 9, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 1643, column: 47)
!3328 = !DILocation(line: 1645, column: 9, scope: !3327)
!3329 = !DILocation(line: 1650, column: 9, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1650, column: 9)
!3331 = !DILocation(line: 1650, column: 65, scope: !3330)
!3332 = !DILocation(line: 1650, column: 9, scope: !3289)
!3333 = !DILocation(line: 1651, column: 19, scope: !3330)
!3334 = !DILocation(line: 1651, column: 17, scope: !3330)
!3335 = !DILocation(line: 1651, column: 9, scope: !3330)
!3336 = !DILocation(line: 1652, column: 9, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1652, column: 9)
!3338 = !DILocation(line: 1652, column: 9, scope: !3289)
!3339 = !DILocation(line: 1654, column: 13, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 1652, column: 18)
!3341 = !DILocation(line: 1653, column: 9, scope: !3340)
!3342 = !DILocation(line: 1655, column: 9, scope: !3340)
!3343 = !DILocation(line: 1659, column: 16, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1659, column: 9)
!3345 = !DILocation(line: 1659, column: 9, scope: !3289)
!3346 = !DILocation(line: 1660, column: 9, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 1659, column: 53)
!3348 = !DILocation(line: 1663, column: 34, scope: !3347)
!3349 = !DILocation(line: 1663, column: 9, scope: !3347)
!3350 = !DILocation(line: 1664, column: 27, scope: !3347)
!3351 = !DILocation(line: 1667, column: 15, scope: !3347)
!3352 = !DILocation(line: 1668, column: 13, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 1668, column: 13)
!3354 = !DILocation(line: 1668, column: 13, scope: !3347)
!3355 = !DILocation(line: 1674, column: 15, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !3, line: 1673, column: 55)
!3357 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1673, column: 9)
!3358 = !DILocation(line: 1681, column: 13, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 1681, column: 13)
!3360 = !DILocation(line: 1681, column: 20, scope: !3359)
!3361 = !DILocation(line: 1681, column: 27, scope: !3359)
!3362 = !DILocation(line: 1682, column: 13, scope: !3359)
!3363 = !DILocation(line: 1682, column: 38, scope: !3359)
!3364 = !DILocation(line: 1682, column: 43, scope: !3359)
!3365 = !DILocation(line: 1683, column: 13, scope: !3359)
!3366 = !DILocation(line: 1683, column: 60, scope: !3359)
!3367 = !DILocation(line: 1681, column: 13, scope: !3356)
!3368 = !DILocation(line: 1685, column: 13, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 1684, column: 9)
!3370 = !DILocation(line: 1686, column: 13, scope: !3369)
!3371 = !DILocation(line: 1687, column: 13, scope: !3369)
!3372 = !DILocation(line: 1689, column: 13, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 1688, column: 16)
!3374 = !DILocation(line: 1692, column: 9, scope: !3356)
!3375 = !DILocation(line: 1693, column: 27, scope: !3356)
!3376 = !DILocation(line: 1697, column: 9, scope: !3289)
!3377 = !DILocation(line: 1698, column: 20, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !3, line: 1698, column: 13)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 1697, column: 52)
!3380 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1697, column: 9)
!3381 = !{!512, !483, i64 2456}
!3382 = !DILocation(line: 1698, column: 13, scope: !3378)
!3383 = !DILocation(line: 1698, column: 13, scope: !3379)
!3384 = !DILocation(line: 1699, column: 19, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 1698, column: 32)
!3386 = !DILocation(line: 1700, column: 17, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 1700, column: 17)
!3388 = !DILocation(line: 1700, column: 17, scope: !3385)
!3389 = !DILocation(line: 1701, column: 31, scope: !3385)
!3390 = !DILocation(line: 1702, column: 13, scope: !3385)
!3391 = !DILocation(line: 1710, column: 15, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 1709, column: 55)
!3393 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1709, column: 9)
!3394 = !DILocation(line: 1711, column: 13, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 1711, column: 13)
!3396 = !DILocation(line: 1711, column: 20, scope: !3395)
!3397 = !DILocation(line: 1711, column: 13, scope: !3392)
!3398 = !DILocation(line: 1712, column: 13, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 1711, column: 28)
!3400 = !DILocation(line: 1713, column: 13, scope: !3399)
!3401 = !DILocation(line: 1714, column: 13, scope: !3399)
!3402 = !DILocation(line: 1716, column: 9, scope: !3392)
!3403 = !DILocation(line: 1718, column: 5, scope: !3392)
!3404 = !DILocation(line: 0, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3378, file: !3, line: 1703, column: 16)
!3406 = !DILocation(line: 1723, column: 43, scope: !3307)
!3407 = !{!512, !482, i64 2584}
!3408 = !DILocation(line: 1723, column: 36, scope: !3307)
!3409 = !DILocation(line: 1724, column: 49, scope: !3307)
!3410 = !DILocation(line: 1723, column: 20, scope: !3307)
!3411 = !DILocation(line: 1723, column: 13, scope: !3307)
!3412 = !DILocation(line: 1725, column: 15, scope: !3307)
!3413 = !DILocation(line: 1727, column: 9, scope: !3307)
!3414 = !DILocation(line: 1728, column: 13, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3307, file: !3, line: 1728, column: 13)
!3416 = !DILocation(line: 1728, column: 13, scope: !3307)
!3417 = !DILocation(line: 1729, column: 9, scope: !3307)
!3418 = !DILocation(line: 1730, column: 27, scope: !3307)
!3419 = !DILocation(line: 1736, column: 15, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 1735, column: 55)
!3421 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1735, column: 9)
!3422 = !DILocation(line: 1739, column: 13, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3420, file: !3, line: 1739, column: 13)
!3424 = !DILocation(line: 1739, column: 20, scope: !3423)
!3425 = !DILocation(line: 1739, column: 13, scope: !3420)
!3426 = !DILocation(line: 1740, column: 13, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 1739, column: 28)
!3428 = !DILocation(line: 1742, column: 9, scope: !3427)
!3429 = !DILocation(line: 1743, column: 9, scope: !3420)
!3430 = !DILocation(line: 1744, column: 27, scope: !3420)
!3431 = !DILocation(line: 1745, column: 5, scope: !3420)
!3432 = !DILocation(line: 1748, column: 16, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1748, column: 9)
!3434 = !DILocation(line: 1748, column: 27, scope: !3433)
!3435 = !DILocation(line: 1749, column: 16, scope: !3433)
!3436 = !DILocation(line: 1749, column: 34, scope: !3433)
!3437 = !DILocation(line: 1748, column: 49, scope: !3433)
!3438 = !DILocation(line: 1756, column: 9, scope: !3289)
!3439 = !DILocation(line: 1757, column: 15, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 1756, column: 50)
!3441 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1756, column: 9)
!3442 = !DILocation(line: 1759, column: 13, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 1759, column: 13)
!3444 = !DILocation(line: 1759, column: 13, scope: !3440)
!3445 = !DILocation(line: 1760, column: 9, scope: !3440)
!3446 = !DILocation(line: 1761, column: 27, scope: !3440)
!3447 = !DILocation(line: 1762, column: 9, scope: !3440)
!3448 = !DILocation(line: 1767, column: 15, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3450, file: !3, line: 1766, column: 53)
!3450 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1766, column: 9)
!3451 = !DILocation(line: 1770, column: 13, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3449, file: !3, line: 1770, column: 13)
!3453 = !DILocation(line: 1770, column: 20, scope: !3452)
!3454 = !DILocation(line: 1770, column: 13, scope: !3449)
!3455 = !DILocation(line: 1771, column: 13, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3452, file: !3, line: 1770, column: 28)
!3457 = !DILocation(line: 1773, column: 9, scope: !3456)
!3458 = !DILocation(line: 1774, column: 9, scope: !3449)
!3459 = !DILocation(line: 1776, column: 5, scope: !3449)
!3460 = !DILocation(line: 0, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3433, file: !3, line: 1750, column: 5)
!3462 = !DILocation(line: 1785, column: 15, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 1784, column: 52)
!3464 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1784, column: 9)
!3465 = !DILocation(line: 1787, column: 13, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 1787, column: 13)
!3467 = !DILocation(line: 1787, column: 13, scope: !3463)
!3468 = !DILocation(line: 1788, column: 9, scope: !3463)
!3469 = !DILocation(line: 1789, column: 27, scope: !3463)
!3470 = !DILocation(line: 1790, column: 9, scope: !3463)
!3471 = !DILocation(line: 1795, column: 15, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !3, line: 1794, column: 55)
!3473 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1794, column: 9)
!3474 = !DILocation(line: 1798, column: 13, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 1798, column: 13)
!3476 = !DILocation(line: 1798, column: 20, scope: !3475)
!3477 = !DILocation(line: 1798, column: 13, scope: !3472)
!3478 = !DILocation(line: 1799, column: 13, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 1798, column: 28)
!3480 = !DILocation(line: 1801, column: 9, scope: !3479)
!3481 = !DILocation(line: 1802, column: 9, scope: !3472)
!3482 = !DILocation(line: 1803, column: 27, scope: !3472)
!3483 = !DILocation(line: 1811, column: 9, scope: !3289)
!3484 = !DILocation(line: 1812, column: 13, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !3, line: 1812, column: 13)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 1811, column: 53)
!3487 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1811, column: 9)
!3488 = !DILocation(line: 1812, column: 52, scope: !3485)
!3489 = !DILocation(line: 1812, column: 13, scope: !3486)
!3490 = !DILocation(line: 1813, column: 19, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 1812, column: 74)
!3492 = !DILocation(line: 1814, column: 13, scope: !3491)
!3493 = !DILocation(line: 1816, column: 27, scope: !3486)
!3494 = !DILocation(line: 1817, column: 9, scope: !3486)
!3495 = !DILocation(line: 1822, column: 9, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3497, file: !3, line: 1821, column: 56)
!3497 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1821, column: 9)
!3498 = !DILocation(line: 1825, column: 9, scope: !3496)
!3499 = !DILocation(line: 1828, column: 20, scope: !3289)
!3500 = !DILocation(line: 1635, column: 22, scope: !3289)
!3501 = !DILocation(line: 1829, column: 9, scope: !3289)
!3502 = !DILocation(line: 1841, column: 9, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 1840, column: 41)
!3504 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1840, column: 9)
!3505 = !DILocation(line: 1842, column: 9, scope: !3503)
!3506 = !DILocation(line: 1849, column: 5, scope: !3289)
!3507 = !DILocation(line: 118, column: 5, scope: !556, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 1850, column: 5, scope: !3289)
!3509 = !DILocation(line: 119, column: 18, scope: !556, inlinedAt: !3508)
!3510 = !DILocation(line: 119, column: 5, scope: !556, inlinedAt: !3508)
!3511 = !DILocation(line: 120, column: 25, scope: !556, inlinedAt: !3508)
!3512 = !DILocation(line: 121, column: 1, scope: !556, inlinedAt: !3508)
!3513 = !DILocation(line: 1855, column: 22, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1855, column: 9)
!3515 = !DILocation(line: 1855, column: 9, scope: !3289)
!3516 = !DILocation(line: 1856, column: 9, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 1855, column: 46)
!3518 = !DILocation(line: 1857, column: 46, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3517, file: !3, line: 1857, column: 13)
!3520 = !DILocation(line: 1857, column: 65, scope: !3519)
!3521 = !DILocation(line: 1857, column: 39, scope: !3519)
!3522 = !DILocation(line: 1857, column: 13, scope: !3519)
!3523 = !DILocation(line: 1857, column: 72, scope: !3519)
!3524 = !DILocation(line: 1857, column: 13, scope: !3517)
!3525 = !DILocation(line: 1859, column: 26, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3519, file: !3, line: 1857, column: 79)
!3527 = !DILocation(line: 1859, column: 17, scope: !3526)
!3528 = !DILocation(line: 1858, column: 13, scope: !3526)
!3529 = !DILocation(line: 1860, column: 13, scope: !3526)
!3530 = !DILocation(line: 1867, column: 43, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1865, column: 23)
!3532 = !DILocation(line: 1867, column: 31, scope: !3531)
!3533 = !DILocation(line: 1867, column: 62, scope: !3531)
!3534 = !DILocation(line: 1867, column: 52, scope: !3531)
!3535 = !DILocation(line: 1866, column: 9, scope: !3531)
!3536 = !DILocation(line: 1868, column: 15, scope: !3531)
!3537 = !DILocation(line: 1869, column: 17, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 1869, column: 13)
!3539 = !DILocation(line: 1869, column: 13, scope: !3531)
!3540 = !DILocation(line: 1870, column: 9, scope: !3531)
!3541 = !DILocation(line: 1878, column: 34, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1878, column: 9)
!3543 = !DILocation(line: 1878, column: 9, scope: !3542)
!3544 = !DILocation(line: 1879, column: 13, scope: !3542)
!3545 = !DILocation(line: 1878, column: 9, scope: !3289)
!3546 = !DILocation(line: 1887, column: 23, scope: !3289)
!3547 = !DILocation(line: 1888, column: 31, scope: !3289)
!3548 = !DILocation(line: 1890, column: 41, scope: !3289)
!3549 = !DILocation(line: 1891, column: 29, scope: !3289)
!3550 = !DILocation(line: 1892, column: 42, scope: !3289)
!3551 = !DILocation(line: 1892, column: 33, scope: !3289)
!3552 = !DILocation(line: 1893, column: 36, scope: !3289)
!3553 = !DILocation(line: 1893, column: 34, scope: !3289)
!3554 = !DILocation(line: 1894, column: 5, scope: !3289)
!3555 = !DILocation(line: 1897, column: 30, scope: !3289)
!3556 = !DILocation(line: 1897, column: 5, scope: !3289)
!3557 = !DILocation(line: 1898, column: 9, scope: !3289)
!3558 = !DILocation(line: 1883, column: 22, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3542, file: !3, line: 1880, column: 5)
!3560 = !DILocation(line: 1883, column: 13, scope: !3559)
!3561 = !DILocation(line: 1881, column: 9, scope: !3559)
!3562 = !DILocation(line: 1898, column: 20, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1898, column: 9)
!3564 = !DILocation(line: 1899, column: 5, scope: !3289)
!3565 = !DILocation(line: 1900, column: 28, scope: !3289)
!3566 = !DILocation(line: 1901, column: 23, scope: !3289)
!3567 = !DILocation(line: 1902, column: 5, scope: !3289)
!3568 = !DILocation(line: 0, scope: !3491)
!3569 = !DILocation(line: 1905, column: 5, scope: !3289)
!3570 = !DILocation(line: 1906, column: 5, scope: !3289)
!3571 = !DILocation(line: 1907, column: 5, scope: !3289)
!3572 = !DILocation(line: 1908, column: 1, scope: !3289)
!3573 = !DILocation(line: 1873, column: 113, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !3, line: 1872, column: 20)
!3575 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 1872, column: 9)
!3576 = !DILocation(line: 1873, column: 104, scope: !3574)
!3577 = !DILocation(line: 1873, column: 9, scope: !3574)
!3578 = !DILocation(line: 1874, column: 9, scope: !3574)
!3579 = distinct !DISubprogram(name: "connectWithMaster", scope: !3, file: !3, line: 1910, type: !2402, isLocal: false, isDefinition: true, scopeLine: 1910, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3580)
!3580 = !{!3581}
!3581 = !DILocalVariable(name: "fd", scope: !3579, file: !3, line: 1911, type: !20)
!3582 = !DILocation(line: 1914, column: 16, scope: !3579)
!3583 = !DILocation(line: 1914, column: 34, scope: !3579)
!3584 = !{!512, !482, i64 2472}
!3585 = !DILocation(line: 1914, column: 45, scope: !3579)
!3586 = !{!512, !482, i64 352}
!3587 = !DILocation(line: 1913, column: 10, scope: !3579)
!3588 = !DILocation(line: 1911, column: 9, scope: !3579)
!3589 = !DILocation(line: 1915, column: 12, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 1915, column: 9)
!3591 = !DILocation(line: 1915, column: 9, scope: !3579)
!3592 = !DILocation(line: 1917, column: 22, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3590, file: !3, line: 1915, column: 19)
!3594 = !DILocation(line: 1917, column: 13, scope: !3593)
!3595 = !DILocation(line: 1916, column: 9, scope: !3593)
!3596 = !DILocation(line: 1918, column: 9, scope: !3593)
!3597 = !DILocation(line: 1921, column: 34, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3579, file: !3, line: 1921, column: 9)
!3599 = !DILocation(line: 1921, column: 9, scope: !3598)
!3600 = !DILocation(line: 1921, column: 85, scope: !3598)
!3601 = !DILocation(line: 1921, column: 9, scope: !3579)
!3602 = !DILocation(line: 1924, column: 9, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3598, file: !3, line: 1923, column: 5)
!3604 = !DILocation(line: 1925, column: 9, scope: !3603)
!3605 = !DILocation(line: 1926, column: 9, scope: !3603)
!3606 = !DILocation(line: 1929, column: 42, scope: !3579)
!3607 = !DILocation(line: 1929, column: 33, scope: !3579)
!3608 = !DILocation(line: 1930, column: 28, scope: !3579)
!3609 = !DILocation(line: 1931, column: 23, scope: !3579)
!3610 = !DILocation(line: 1932, column: 5, scope: !3579)
!3611 = !DILocation(line: 0, scope: !3579)
!3612 = !DILocation(line: 1933, column: 1, scope: !3579)
!3613 = !DILocation(line: 1940, column: 21, scope: !2590)
!3614 = !DILocation(line: 1940, column: 9, scope: !2590)
!3615 = !DILocation(line: 1942, column: 30, scope: !2590)
!3616 = !DILocation(line: 1942, column: 5, scope: !2590)
!3617 = !DILocation(line: 1943, column: 5, scope: !2590)
!3618 = !DILocation(line: 1944, column: 28, scope: !2590)
!3619 = !DILocation(line: 1945, column: 1, scope: !2590)
!3620 = distinct !DISubprogram(name: "replicationAbortSyncTransfer", scope: !3, file: !3, line: 1950, type: !306, isLocal: false, isDefinition: true, scopeLine: 1950, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!3621 = !DILocation(line: 1951, column: 5, scope: !3620)
!3622 = !DILocation(line: 1940, column: 21, scope: !2590, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 1952, column: 5, scope: !3620)
!3624 = !DILocation(line: 1940, column: 9, scope: !2590, inlinedAt: !3623)
!3625 = !DILocation(line: 1942, column: 30, scope: !2590, inlinedAt: !3623)
!3626 = !DILocation(line: 1942, column: 5, scope: !2590, inlinedAt: !3623)
!3627 = !DILocation(line: 1943, column: 5, scope: !2590, inlinedAt: !3623)
!3628 = !DILocation(line: 1944, column: 28, scope: !2590, inlinedAt: !3623)
!3629 = !DILocation(line: 1945, column: 1, scope: !2590, inlinedAt: !3623)
!3630 = !DILocation(line: 1953, column: 18, scope: !3620)
!3631 = !DILocation(line: 1953, column: 5, scope: !3620)
!3632 = !DILocation(line: 1954, column: 19, scope: !3620)
!3633 = !DILocation(line: 1954, column: 5, scope: !3620)
!3634 = !DILocation(line: 1955, column: 18, scope: !3620)
!3635 = !DILocation(line: 1955, column: 5, scope: !3620)
!3636 = !DILocation(line: 1956, column: 1, scope: !3620)
!3637 = distinct !DISubprogram(name: "replicationSetMaster", scope: !3, file: !3, line: 1982, type: !3638, isLocal: false, isDefinition: true, scopeLine: 1982, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3640)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{null, !6, !20}
!3640 = !{!3641, !3642, !3643}
!3641 = !DILocalVariable(name: "ip", arg: 1, scope: !3637, file: !3, line: 1982, type: !6)
!3642 = !DILocalVariable(name: "port", arg: 2, scope: !3637, file: !3, line: 1982, type: !20)
!3643 = !DILocalVariable(name: "was_master", scope: !3637, file: !3, line: 1983, type: !20)
!3644 = !DILocation(line: 1982, column: 33, scope: !3637)
!3645 = !DILocation(line: 1982, column: 41, scope: !3637)
!3646 = !DILocation(line: 1983, column: 29, scope: !3637)
!3647 = !DILocation(line: 1983, column: 40, scope: !3637)
!3648 = !DILocation(line: 1985, column: 5, scope: !3637)
!3649 = !DILocation(line: 1986, column: 25, scope: !3637)
!3650 = !DILocation(line: 1986, column: 23, scope: !3637)
!3651 = !DILocation(line: 1987, column: 23, scope: !3637)
!3652 = !DILocation(line: 1988, column: 16, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3637, file: !3, line: 1988, column: 9)
!3654 = !DILocation(line: 1988, column: 9, scope: !3653)
!3655 = !DILocation(line: 1988, column: 9, scope: !3637)
!3656 = !DILocation(line: 1989, column: 9, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3653, file: !3, line: 1988, column: 24)
!3658 = !DILocation(line: 1990, column: 5, scope: !3657)
!3659 = !DILocation(line: 1991, column: 5, scope: !3637)
!3660 = !DILocation(line: 1995, column: 5, scope: !3637)
!3661 = !DILocation(line: 1967, column: 16, scope: !2577, inlinedAt: !3662)
!3662 = distinct !DILocation(line: 1996, column: 5, scope: !3637)
!3663 = !DILocation(line: 1967, column: 9, scope: !2578, inlinedAt: !3662)
!3664 = !DILocation(line: 1968, column: 9, scope: !2582, inlinedAt: !3662)
!3665 = !DILocation(line: 1970, column: 5, scope: !2582, inlinedAt: !3662)
!3666 = !DILocation(line: 1071, column: 57, scope: !2401, inlinedAt: !3667)
!3667 = distinct !DILocation(line: 1971, column: 16, scope: !2586, inlinedAt: !3662)
!3668 = !DILocation(line: 1071, column: 5, scope: !2401, inlinedAt: !3667)
!3669 = !DILocation(line: 1970, column: 16, scope: !2577, inlinedAt: !3662)
!3670 = !DILocation(line: 1940, column: 21, scope: !2590, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 1973, column: 9, scope: !2594, inlinedAt: !3662)
!3672 = !DILocation(line: 1940, column: 9, scope: !2590, inlinedAt: !3671)
!3673 = !DILocation(line: 1942, column: 30, scope: !2590, inlinedAt: !3671)
!3674 = !DILocation(line: 1942, column: 5, scope: !2590, inlinedAt: !3671)
!3675 = !DILocation(line: 1943, column: 5, scope: !2590, inlinedAt: !3671)
!3676 = !DILocation(line: 1944, column: 28, scope: !2590, inlinedAt: !3671)
!3677 = !DILocation(line: 1945, column: 1, scope: !2590, inlinedAt: !3671)
!3678 = !DILocation(line: 0, scope: !2582, inlinedAt: !3662)
!3679 = !DILocation(line: 1978, column: 5, scope: !2578, inlinedAt: !3662)
!3680 = !DILocation(line: 1979, column: 1, scope: !2578, inlinedAt: !3662)
!3681 = !DILocation(line: 1999, column: 9, scope: !3637)
!3682 = !DILocation(line: 1999, column: 21, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3637, file: !3, line: 1999, column: 9)
!3684 = !DILocation(line: 2000, column: 23, scope: !3637)
!3685 = !DILocation(line: 2001, column: 1, scope: !3637)
!3686 = distinct !DISubprogram(name: "replicationCacheMasterUsingMyself", scope: !3, file: !3, line: 2237, type: !306, isLocal: false, isDefinition: true, scopeLine: 2237, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!3687 = !DILocation(line: 2240, column: 43, scope: !3686)
!3688 = !DILocation(line: 2240, column: 34, scope: !3686)
!3689 = !DILocation(line: 1103, column: 40, scope: !2438, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 2241, column: 5, scope: !3686)
!3691 = !DILocation(line: 1103, column: 48, scope: !2438, inlinedAt: !3690)
!3692 = !DILocation(line: 1104, column: 21, scope: !2438, inlinedAt: !3690)
!3693 = !DILocation(line: 1104, column: 19, scope: !2438, inlinedAt: !3690)
!3694 = !DILocation(line: 1105, column: 20, scope: !2438, inlinedAt: !3690)
!3695 = !DILocation(line: 1105, column: 26, scope: !2438, inlinedAt: !3690)
!3696 = !DILocation(line: 1106, column: 20, scope: !2438, inlinedAt: !3690)
!3697 = !DILocation(line: 1106, column: 34, scope: !2438, inlinedAt: !3690)
!3698 = !DILocation(line: 1107, column: 37, scope: !2438, inlinedAt: !3690)
!3699 = !DILocation(line: 1107, column: 20, scope: !2438, inlinedAt: !3690)
!3700 = !DILocation(line: 1107, column: 28, scope: !2438, inlinedAt: !3690)
!3701 = !DILocation(line: 1108, column: 20, scope: !2438, inlinedAt: !3690)
!3702 = !DILocation(line: 1108, column: 33, scope: !2438, inlinedAt: !3690)
!3703 = !DILocation(line: 1109, column: 12, scope: !2438, inlinedAt: !3690)
!3704 = !DILocation(line: 1109, column: 5, scope: !2438, inlinedAt: !3690)
!3705 = !DILocation(line: 1113, column: 16, scope: !2461, inlinedAt: !3690)
!3706 = !DILocation(line: 1113, column: 24, scope: !2461, inlinedAt: !3690)
!3707 = !DILocation(line: 1113, column: 32, scope: !2461, inlinedAt: !3690)
!3708 = !DILocation(line: 1113, column: 9, scope: !2438, inlinedAt: !3690)
!3709 = !DILocation(line: 1114, column: 24, scope: !2461, inlinedAt: !3690)
!3710 = !DILocation(line: 1114, column: 30, scope: !2461, inlinedAt: !3690)
!3711 = !DILocation(line: 1114, column: 9, scope: !2461, inlinedAt: !3690)
!3712 = !DILocation(line: 1116, column: 1, scope: !2438, inlinedAt: !3690)
!3713 = !DILocation(line: 2244, column: 12, scope: !3686)
!3714 = !DILocation(line: 2244, column: 5, scope: !3686)
!3715 = !DILocation(line: 2247, column: 25, scope: !3686)
!3716 = !DILocation(line: 2247, column: 5, scope: !3686)
!3717 = !DILocation(line: 2248, column: 35, scope: !3686)
!3718 = !DILocation(line: 2248, column: 26, scope: !3686)
!3719 = !DILocation(line: 2249, column: 19, scope: !3686)
!3720 = !DILocation(line: 2250, column: 5, scope: !3686)
!3721 = !DILocation(line: 2251, column: 1, scope: !3686)
!3722 = distinct !DISubprogram(name: "replicationUnsetMaster", scope: !3, file: !3, line: 2004, type: !306, isLocal: false, isDefinition: true, scopeLine: 2004, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!3723 = !DILocation(line: 2005, column: 16, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3722, file: !3, line: 2005, column: 9)
!3725 = !DILocation(line: 2005, column: 27, scope: !3724)
!3726 = !DILocation(line: 2005, column: 9, scope: !3722)
!3727 = !DILocation(line: 2006, column: 5, scope: !3722)
!3728 = !DILocation(line: 2007, column: 23, scope: !3722)
!3729 = !DILocation(line: 1053, column: 5, scope: !2389, inlinedAt: !3730)
!3730 = distinct !DILocation(line: 2012, column: 5, scope: !3722)
!3731 = !DILocation(line: 1061, column: 42, scope: !2389, inlinedAt: !3730)
!3732 = !DILocation(line: 1061, column: 60, scope: !2389, inlinedAt: !3730)
!3733 = !DILocation(line: 1061, column: 33, scope: !2389, inlinedAt: !3730)
!3734 = !DILocation(line: 1034, column: 5, scope: !1710, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 1062, column: 5, scope: !2389, inlinedAt: !3730)
!3736 = !DILocation(line: 1035, column: 39, scope: !1710, inlinedAt: !3735)
!3737 = !DILocation(line: 1036, column: 1, scope: !1710, inlinedAt: !3735)
!3738 = !DILocation(line: 1063, column: 143, scope: !2389, inlinedAt: !3730)
!3739 = !DILocation(line: 1063, column: 5, scope: !2389, inlinedAt: !3730)
!3740 = !DILocation(line: 1064, column: 1, scope: !2389, inlinedAt: !3730)
!3741 = !DILocation(line: 2013, column: 16, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3722, file: !3, line: 2013, column: 9)
!3743 = !DILocation(line: 2013, column: 9, scope: !3742)
!3744 = !DILocation(line: 2013, column: 9, scope: !3722)
!3745 = !DILocation(line: 2013, column: 24, scope: !3742)
!3746 = !DILocation(line: 2256, column: 16, scope: !3123, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 2014, column: 5, scope: !3722)
!3748 = !DILocation(line: 2256, column: 30, scope: !3123, inlinedAt: !3747)
!3749 = !DILocation(line: 2256, column: 9, scope: !3124, inlinedAt: !3747)
!3750 = !DILocation(line: 2258, column: 5, scope: !3124, inlinedAt: !3747)
!3751 = !DILocation(line: 2259, column: 12, scope: !3124, inlinedAt: !3747)
!3752 = !DILocation(line: 2259, column: 27, scope: !3124, inlinedAt: !3747)
!3753 = !DILocation(line: 2259, column: 33, scope: !3124, inlinedAt: !3747)
!3754 = !DILocation(line: 2260, column: 5, scope: !3124, inlinedAt: !3747)
!3755 = !DILocation(line: 2261, column: 26, scope: !3124, inlinedAt: !3747)
!3756 = !DILocation(line: 2262, column: 1, scope: !3124, inlinedAt: !3747)
!3757 = !DILocation(line: 1967, column: 16, scope: !2577, inlinedAt: !3758)
!3758 = distinct !DILocation(line: 2015, column: 5, scope: !3722)
!3759 = !DILocation(line: 1967, column: 9, scope: !2578, inlinedAt: !3758)
!3760 = !DILocation(line: 1968, column: 9, scope: !2582, inlinedAt: !3758)
!3761 = !DILocation(line: 1970, column: 5, scope: !2582, inlinedAt: !3758)
!3762 = !DILocation(line: 1071, column: 57, scope: !2401, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 1971, column: 16, scope: !2586, inlinedAt: !3758)
!3764 = !DILocation(line: 1071, column: 5, scope: !2401, inlinedAt: !3763)
!3765 = !DILocation(line: 1970, column: 16, scope: !2577, inlinedAt: !3758)
!3766 = !DILocation(line: 1940, column: 21, scope: !2590, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 1973, column: 9, scope: !2594, inlinedAt: !3758)
!3768 = !DILocation(line: 1940, column: 9, scope: !2590, inlinedAt: !3767)
!3769 = !DILocation(line: 1942, column: 30, scope: !2590, inlinedAt: !3767)
!3770 = !DILocation(line: 1942, column: 5, scope: !2590, inlinedAt: !3767)
!3771 = !DILocation(line: 1943, column: 5, scope: !2590, inlinedAt: !3767)
!3772 = !DILocation(line: 1944, column: 28, scope: !2590, inlinedAt: !3767)
!3773 = !DILocation(line: 1945, column: 1, scope: !2590, inlinedAt: !3767)
!3774 = !DILocation(line: 0, scope: !2582, inlinedAt: !3758)
!3775 = !DILocation(line: 1978, column: 5, scope: !2578, inlinedAt: !3758)
!3776 = !DILocation(line: 1979, column: 1, scope: !2578, inlinedAt: !3758)
!3777 = !DILocation(line: 2020, column: 5, scope: !3722)
!3778 = !DILocation(line: 2021, column: 23, scope: !3722)
!3779 = !DILocation(line: 2027, column: 23, scope: !3722)
!3780 = !DILocation(line: 2033, column: 42, scope: !3722)
!3781 = !DILocation(line: 2033, column: 33, scope: !3722)
!3782 = !{!512, !481, i64 2424}
!3783 = !DILocation(line: 2034, column: 1, scope: !3722)
!3784 = distinct !DISubprogram(name: "replicationHandleMasterDisconnection", scope: !3, file: !3, line: 2038, type: !306, isLocal: false, isDefinition: true, scopeLine: 2038, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!3785 = !DILocation(line: 2039, column: 19, scope: !3784)
!3786 = !DILocation(line: 2040, column: 23, scope: !3784)
!3787 = !DILocation(line: 2041, column: 37, scope: !3784)
!3788 = !DILocation(line: 2041, column: 28, scope: !3784)
!3789 = !DILocation(line: 2045, column: 1, scope: !3784)
!3790 = distinct !DISubprogram(name: "replicaofCommand", scope: !3, file: !3, line: 2047, type: !159, isLocal: false, isDefinition: true, scopeLine: 2047, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3791)
!3791 = !{!3792, !3793, !3798, !3800}
!3792 = !DILocalVariable(name: "c", arg: 1, scope: !3790, file: !3, line: 2047, type: !8)
!3793 = !DILocalVariable(name: "client", scope: !3794, file: !3, line: 2061, type: !139)
!3794 = distinct !DILexicalBlock(scope: !3795, file: !3, line: 2059, column: 32)
!3795 = distinct !DILexicalBlock(scope: !3796, file: !3, line: 2059, column: 13)
!3796 = distinct !DILexicalBlock(scope: !3797, file: !3, line: 2058, column: 45)
!3797 = distinct !DILexicalBlock(scope: !3790, file: !3, line: 2057, column: 9)
!3798 = !DILocalVariable(name: "port", scope: !3799, file: !3, line: 2067, type: !79)
!3799 = distinct !DILexicalBlock(scope: !3797, file: !3, line: 2066, column: 12)
!3800 = !DILocalVariable(name: "client", scope: !3799, file: !3, line: 2091, type: !139)
!3801 = !DILocation(line: 2047, column: 31, scope: !3790)
!3802 = !DILocation(line: 2050, column: 16, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3790, file: !3, line: 2050, column: 9)
!3804 = !{!512, !482, i64 2924}
!3805 = !DILocation(line: 2050, column: 9, scope: !3803)
!3806 = !DILocation(line: 2050, column: 9, scope: !3790)
!3807 = !DILocation(line: 2051, column: 9, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 2050, column: 33)
!3809 = !DILocation(line: 2052, column: 9, scope: !3808)
!3810 = !DILocation(line: 2057, column: 24, scope: !3797)
!3811 = !DILocation(line: 2057, column: 21, scope: !3797)
!3812 = !DILocation(line: 2057, column: 33, scope: !3797)
!3813 = !DILocation(line: 2057, column: 10, scope: !3797)
!3814 = !DILocation(line: 2057, column: 43, scope: !3797)
!3815 = !DILocation(line: 2058, column: 21, scope: !3797)
!3816 = !DILocation(line: 2058, column: 33, scope: !3797)
!3817 = !DILocation(line: 2058, column: 10, scope: !3797)
!3818 = !DILocation(line: 2057, column: 9, scope: !3790)
!3819 = !DILocation(line: 2059, column: 20, scope: !3795)
!3820 = !DILocation(line: 2059, column: 13, scope: !3795)
!3821 = !DILocation(line: 2059, column: 13, scope: !3796)
!3822 = !DILocation(line: 2060, column: 13, scope: !3794)
!3823 = !DILocation(line: 2061, column: 46, scope: !3794)
!3824 = !DILocation(line: 2061, column: 26, scope: !3794)
!3825 = !DILocation(line: 2061, column: 17, scope: !3794)
!3826 = !DILocation(line: 2062, column: 13, scope: !3794)
!3827 = !DILocation(line: 2064, column: 13, scope: !3794)
!3828 = !DILocation(line: 2065, column: 9, scope: !3794)
!3829 = !DILocation(line: 2067, column: 9, scope: !3799)
!3830 = !DILocation(line: 2069, column: 16, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 2069, column: 13)
!3832 = !DILocation(line: 2069, column: 22, scope: !3831)
!3833 = !DILocation(line: 2069, column: 13, scope: !3799)
!3834 = !DILocation(line: 2074, column: 13, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3831, file: !3, line: 2070, column: 9)
!3836 = !DILocation(line: 2095, column: 5, scope: !3797)
!3837 = !DILocation(line: 2078, column: 42, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 2078, column: 13)
!3839 = !DILocation(line: 2067, column: 14, scope: !3799)
!3840 = !DILocation(line: 2078, column: 14, scope: !3838)
!3841 = !DILocation(line: 2078, column: 67, scope: !3838)
!3842 = !DILocation(line: 2078, column: 13, scope: !3799)
!3843 = !DILocation(line: 2082, column: 20, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 2082, column: 13)
!3845 = !DILocation(line: 2082, column: 13, scope: !3844)
!3846 = !DILocation(line: 0, scope: !3844)
!3847 = !DILocation(line: 2082, column: 31, scope: !3844)
!3848 = !DILocation(line: 2082, column: 35, scope: !3844)
!3849 = !DILocation(line: 2083, column: 13, scope: !3844)
!3850 = !DILocation(line: 2083, column: 23, scope: !3844)
!3851 = !DILocation(line: 2083, column: 16, scope: !3844)
!3852 = !DILocation(line: 2083, column: 37, scope: !3844)
!3853 = !DILocation(line: 2083, column: 34, scope: !3844)
!3854 = !DILocation(line: 2082, column: 13, scope: !3799)
!3855 = !DILocation(line: 2084, column: 13, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3844, file: !3, line: 2083, column: 43)
!3857 = !DILocation(line: 2085, column: 27, scope: !3856)
!3858 = !DILocation(line: 2085, column: 13, scope: !3856)
!3859 = !DILocation(line: 2086, column: 13, scope: !3856)
!3860 = !DILocation(line: 2090, column: 47, scope: !3799)
!3861 = !DILocation(line: 2090, column: 9, scope: !3799)
!3862 = !DILocation(line: 2091, column: 42, scope: !3799)
!3863 = !DILocation(line: 2091, column: 22, scope: !3799)
!3864 = !DILocation(line: 2091, column: 13, scope: !3799)
!3865 = !DILocation(line: 2093, column: 20, scope: !3799)
!3866 = !DILocation(line: 2093, column: 39, scope: !3799)
!3867 = !DILocation(line: 2092, column: 9, scope: !3799)
!3868 = !DILocation(line: 2094, column: 9, scope: !3799)
!3869 = !DILocation(line: 2096, column: 23, scope: !3790)
!3870 = !DILocation(line: 2096, column: 5, scope: !3790)
!3871 = !DILocation(line: 2097, column: 1, scope: !3790)
!3872 = distinct !DISubprogram(name: "roleCommand", scope: !3, file: !3, line: 2102, type: !159, isLocal: false, isDefinition: true, scopeLine: 2102, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3873)
!3873 = !{!3874, !3875, !3878, !3879, !3880, !3881, !3883, !3884, !3885}
!3874 = !DILocalVariable(name: "c", arg: 1, scope: !3872, file: !3, line: 2102, type: !8)
!3875 = !DILocalVariable(name: "li", scope: !3876, file: !3, line: 2104, type: !420)
!3876 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 2103, column: 36)
!3877 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 2103, column: 9)
!3878 = !DILocalVariable(name: "ln", scope: !3876, file: !3, line: 2105, type: !105)
!3879 = !DILocalVariable(name: "mbcount", scope: !3876, file: !3, line: 2106, type: !47)
!3880 = !DILocalVariable(name: "slaves", scope: !3876, file: !3, line: 2107, type: !20)
!3881 = !DILocalVariable(name: "slave", scope: !3882, file: !3, line: 2115, type: !8)
!3882 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 2114, column: 37)
!3883 = !DILocalVariable(name: "ip", scope: !3882, file: !3, line: 2116, type: !211)
!3884 = !DILocalVariable(name: "slaveip", scope: !3882, file: !3, line: 2116, type: !6)
!3885 = !DILocalVariable(name: "slavestate", scope: !3886, file: !3, line: 2132, type: !6)
!3886 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 2131, column: 12)
!3887 = !DILocation(line: 2102, column: 26, scope: !3872)
!3888 = !DILocation(line: 2103, column: 16, scope: !3877)
!3889 = !DILocation(line: 2103, column: 27, scope: !3877)
!3890 = !DILocation(line: 2103, column: 9, scope: !3872)
!3891 = !DILocation(line: 2104, column: 9, scope: !3876)
!3892 = !DILocation(line: 2107, column: 13, scope: !3876)
!3893 = !DILocation(line: 2109, column: 9, scope: !3876)
!3894 = !DILocation(line: 2110, column: 9, scope: !3876)
!3895 = !DILocation(line: 2111, column: 35, scope: !3876)
!3896 = !DILocation(line: 2111, column: 9, scope: !3876)
!3897 = !DILocation(line: 2112, column: 19, scope: !3876)
!3898 = !DILocation(line: 2106, column: 15, scope: !3876)
!3899 = !DILocation(line: 2113, column: 27, scope: !3876)
!3900 = !DILocation(line: 2104, column: 18, scope: !3876)
!3901 = !DILocation(line: 2113, column: 9, scope: !3876)
!3902 = !DILocation(line: 2114, column: 21, scope: !3876)
!3903 = !DILocation(line: 2105, column: 19, scope: !3876)
!3904 = !DILocation(line: 2114, column: 9, scope: !3876)
!3905 = !DILocation(line: 2115, column: 33, scope: !3882)
!3906 = !DILocation(line: 2115, column: 21, scope: !3882)
!3907 = !DILocation(line: 2116, column: 13, scope: !3882)
!3908 = !DILocation(line: 2116, column: 18, scope: !3882)
!3909 = !DILocation(line: 2116, column: 49, scope: !3882)
!3910 = !DILocation(line: 2116, column: 39, scope: !3882)
!3911 = !DILocation(line: 2118, column: 17, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3882, file: !3, line: 2118, column: 17)
!3913 = !DILocation(line: 2118, column: 28, scope: !3912)
!3914 = !DILocation(line: 2118, column: 17, scope: !3882)
!3915 = !DILocation(line: 2119, column: 45, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3917, file: !3, line: 2119, column: 21)
!3917 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 2118, column: 37)
!3918 = !DILocation(line: 2119, column: 21, scope: !3916)
!3919 = !DILocation(line: 2119, column: 68, scope: !3916)
!3920 = !DILocation(line: 2119, column: 21, scope: !3917)
!3921 = distinct !{!3921, !3904, !3922}
!3922 = !DILocation(line: 2129, column: 9, scope: !3876)
!3923 = !DILocation(line: 0, scope: !3882)
!3924 = !DILocation(line: 2123, column: 24, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3882, file: !3, line: 2123, column: 17)
!3926 = !DILocation(line: 2123, column: 34, scope: !3925)
!3927 = !DILocation(line: 2123, column: 17, scope: !3882)
!3928 = !DILocation(line: 2124, column: 13, scope: !3882)
!3929 = !DILocation(line: 2125, column: 13, scope: !3882)
!3930 = !DILocation(line: 2126, column: 43, scope: !3882)
!3931 = !DILocation(line: 2126, column: 36, scope: !3882)
!3932 = !DILocation(line: 2126, column: 13, scope: !3882)
!3933 = !DILocation(line: 2127, column: 43, scope: !3882)
!3934 = !DILocation(line: 2127, column: 13, scope: !3882)
!3935 = !DILocation(line: 2128, column: 19, scope: !3882)
!3936 = !DILocation(line: 2130, column: 46, scope: !3876)
!3937 = !DILocation(line: 2130, column: 9, scope: !3876)
!3938 = !DILocation(line: 2131, column: 5, scope: !3877)
!3939 = !DILocation(line: 2131, column: 5, scope: !3876)
!3940 = !DILocation(line: 2132, column: 15, scope: !3886)
!3941 = !DILocation(line: 2134, column: 9, scope: !3886)
!3942 = !DILocation(line: 2135, column: 9, scope: !3886)
!3943 = !DILocation(line: 2136, column: 38, scope: !3886)
!3944 = !DILocation(line: 2136, column: 9, scope: !3886)
!3945 = !DILocation(line: 2137, column: 35, scope: !3886)
!3946 = !DILocation(line: 2137, column: 28, scope: !3886)
!3947 = !DILocation(line: 2137, column: 9, scope: !3886)
!3948 = !DILocation(line: 1071, column: 19, scope: !2401, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 2138, column: 13, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3886, file: !3, line: 2138, column: 13)
!3951 = !DILocation(line: 1071, column: 57, scope: !2401, inlinedAt: !3949)
!3952 = !DILocation(line: 1071, column: 5, scope: !2401, inlinedAt: !3949)
!3953 = !DILocation(line: 2138, column: 13, scope: !3886)
!3954 = !DILocation(line: 2141, column: 13, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3950, file: !3, line: 2140, column: 16)
!3956 = !DILocation(line: 2143, column: 62, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3955, file: !3, line: 2141, column: 39)
!3958 = !DILocation(line: 2144, column: 68, scope: !3957)
!3959 = !DILocation(line: 2145, column: 60, scope: !3957)
!3960 = !DILocation(line: 2146, column: 66, scope: !3957)
!3961 = !DILocation(line: 2147, column: 46, scope: !3957)
!3962 = !DILocation(line: 0, scope: !3957)
!3963 = !DILocation(line: 2150, column: 9, scope: !3886)
!3964 = !DILocation(line: 2151, column: 35, scope: !3886)
!3965 = !DILocation(line: 2151, column: 28, scope: !3886)
!3966 = !DILocation(line: 2151, column: 59, scope: !3886)
!3967 = !DILocation(line: 2151, column: 9, scope: !3886)
!3968 = !DILocation(line: 2153, column: 1, scope: !3872)
!3969 = distinct !DISubprogram(name: "replicationCacheMaster", scope: !3, file: !3, line: 2191, type: !159, isLocal: false, isDefinition: true, scopeLine: 2191, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !3970)
!3970 = !{!3971}
!3971 = !DILocalVariable(name: "c", arg: 1, scope: !3969, file: !3, line: 2191, type: !8)
!3972 = !DILocation(line: 2191, column: 37, scope: !3969)
!3973 = !DILocation(line: 2192, column: 5, scope: !3969)
!3974 = !DILocation(line: 2193, column: 5, scope: !3969)
!3975 = !DILocation(line: 2196, column: 5, scope: !3969)
!3976 = !DILocation(line: 2202, column: 21, scope: !3969)
!3977 = !DILocation(line: 2202, column: 29, scope: !3969)
!3978 = !{!480, !483, i64 32}
!3979 = !DILocation(line: 2202, column: 5, scope: !3969)
!3980 = !DILocation(line: 2203, column: 21, scope: !3969)
!3981 = !DILocation(line: 2203, column: 29, scope: !3969)
!3982 = !{!480, !483, i64 48}
!3983 = !DILocation(line: 2203, column: 5, scope: !3969)
!3984 = !DILocation(line: 2204, column: 42, scope: !3969)
!3985 = !DILocation(line: 2204, column: 50, scope: !3969)
!3986 = !DILocation(line: 2204, column: 20, scope: !3969)
!3987 = !DILocation(line: 2204, column: 33, scope: !3969)
!3988 = !DILocation(line: 2205, column: 12, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 2205, column: 9)
!3990 = !DILocation(line: 2205, column: 18, scope: !3989)
!3991 = !DILocation(line: 2205, column: 9, scope: !3969)
!3992 = !DILocation(line: 2205, column: 34, scope: !3989)
!3993 = !DILocation(line: 2206, column: 18, scope: !3969)
!3994 = !{!480, !483, i64 112}
!3995 = !DILocation(line: 2206, column: 5, scope: !3969)
!3996 = !DILocation(line: 2208, column: 8, scope: !3969)
!3997 = !DILocation(line: 2208, column: 20, scope: !3969)
!3998 = !DILocation(line: 2209, column: 8, scope: !3969)
!3999 = !DILocation(line: 2209, column: 15, scope: !3969)
!4000 = !{!480, !482, i64 528}
!4001 = !DILocation(line: 2210, column: 5, scope: !3969)
!4002 = !DILocation(line: 2214, column: 35, scope: !3969)
!4003 = !DILocation(line: 2214, column: 26, scope: !3969)
!4004 = !DILocation(line: 2217, column: 12, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 2217, column: 9)
!4006 = !{!480, !483, i64 512}
!4007 = !DILocation(line: 2217, column: 9, scope: !4005)
!4008 = !DILocation(line: 2217, column: 9, scope: !3969)
!4009 = !DILocation(line: 2218, column: 9, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4005, file: !3, line: 2217, column: 20)
!4011 = !DILocation(line: 2219, column: 19, scope: !4010)
!4012 = !DILocation(line: 2220, column: 5, scope: !4010)
!4013 = !DILocation(line: 2039, column: 19, scope: !3784, inlinedAt: !4014)
!4014 = distinct !DILocation(line: 2225, column: 5, scope: !3969)
!4015 = !DILocation(line: 2040, column: 23, scope: !3784, inlinedAt: !4014)
!4016 = !DILocation(line: 2041, column: 37, scope: !3784, inlinedAt: !4014)
!4017 = !DILocation(line: 2041, column: 28, scope: !3784, inlinedAt: !4014)
!4018 = !DILocation(line: 2045, column: 1, scope: !3784, inlinedAt: !4014)
!4019 = !DILocation(line: 2226, column: 1, scope: !3969)
!4020 = distinct !DISubprogram(name: "replicationScriptCacheInit", scope: !3, file: !3, line: 2355, type: !306, isLocal: false, isDefinition: true, scopeLine: 2355, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!4021 = !DILocation(line: 2356, column: 34, scope: !4020)
!4022 = !{!512, !482, i64 2680}
!4023 = !DILocation(line: 2357, column: 36, scope: !4020)
!4024 = !DILocation(line: 2357, column: 34, scope: !4020)
!4025 = !DILocation(line: 2358, column: 36, scope: !4020)
!4026 = !DILocation(line: 2358, column: 34, scope: !4020)
!4027 = !DILocation(line: 2359, column: 1, scope: !4020)
!4028 = distinct !DISubprogram(name: "replicationScriptCacheAdd", scope: !3, file: !3, line: 2380, type: !4029, isLocal: false, isDefinition: true, scopeLine: 2380, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4031)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{null, !139}
!4031 = !{!4032, !4033, !4034, !4035, !4038}
!4032 = !DILocalVariable(name: "sha1", arg: 1, scope: !4028, file: !3, line: 2380, type: !139)
!4033 = !DILocalVariable(name: "retval", scope: !4028, file: !3, line: 2381, type: !20)
!4034 = !DILocalVariable(name: "key", scope: !4028, file: !3, line: 2382, type: !139)
!4035 = !DILocalVariable(name: "ln", scope: !4036, file: !3, line: 2387, type: !105)
!4036 = distinct !DILexicalBlock(scope: !4037, file: !3, line: 2386, column: 5)
!4037 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 2385, column: 9)
!4038 = !DILocalVariable(name: "oldest", scope: !4036, file: !3, line: 2388, type: !139)
!4039 = !DILocation(line: 2380, column: 36, scope: !4028)
!4040 = !DILocation(line: 2382, column: 15, scope: !4028)
!4041 = !DILocation(line: 2382, column: 9, scope: !4028)
!4042 = !DILocation(line: 2385, column: 9, scope: !4037)
!4043 = !DILocation(line: 2385, column: 60, scope: !4037)
!4044 = !DILocation(line: 2385, column: 53, scope: !4037)
!4045 = !DILocation(line: 2385, column: 50, scope: !4037)
!4046 = !DILocation(line: 2385, column: 9, scope: !4028)
!4047 = !DILocation(line: 2387, column: 24, scope: !4036)
!4048 = !{!560, !483, i64 8}
!4049 = !DILocation(line: 2387, column: 19, scope: !4036)
!4050 = !DILocation(line: 2388, column: 22, scope: !4036)
!4051 = !DILocation(line: 2388, column: 13, scope: !4036)
!4052 = !DILocation(line: 2390, column: 36, scope: !4036)
!4053 = !DILocation(line: 2390, column: 18, scope: !4036)
!4054 = !DILocation(line: 2381, column: 9, scope: !4028)
!4055 = !DILocation(line: 2391, column: 9, scope: !4036)
!4056 = !DILocation(line: 2392, column: 28, scope: !4036)
!4057 = !DILocation(line: 2392, column: 9, scope: !4036)
!4058 = !DILocation(line: 2393, column: 5, scope: !4036)
!4059 = !DILocation(line: 2396, column: 29, scope: !4028)
!4060 = !DILocation(line: 2396, column: 14, scope: !4028)
!4061 = !DILocation(line: 2397, column: 28, scope: !4028)
!4062 = !DILocation(line: 2397, column: 5, scope: !4028)
!4063 = !DILocation(line: 2398, column: 5, scope: !4028)
!4064 = !DILocation(line: 2399, column: 1, scope: !4028)
!4065 = distinct !DISubprogram(name: "replicationScriptCacheExists", scope: !3, file: !3, line: 2403, type: !4066, isLocal: false, isDefinition: true, scopeLine: 2403, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4068)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!20, !139}
!4068 = !{!4069}
!4069 = !DILocalVariable(name: "sha1", arg: 1, scope: !4065, file: !3, line: 2403, type: !139)
!4070 = !DILocation(line: 2403, column: 38, scope: !4065)
!4071 = !DILocation(line: 2404, column: 28, scope: !4065)
!4072 = !DILocation(line: 2404, column: 12, scope: !4065)
!4073 = !DILocation(line: 2404, column: 56, scope: !4065)
!4074 = !DILocation(line: 2404, column: 5, scope: !4065)
!4075 = distinct !DISubprogram(name: "replicationRequestAckFromSlaves", scope: !3, file: !3, line: 2437, type: !306, isLocal: false, isDefinition: true, scopeLine: 2437, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !261)
!4076 = !DILocation(line: 2438, column: 32, scope: !4075)
!4077 = !{!512, !482, i64 2696}
!4078 = !DILocation(line: 2439, column: 1, scope: !4075)
!4079 = distinct !DISubprogram(name: "replicationCountAcksByOffset", scope: !3, file: !3, line: 2443, type: !4080, isLocal: false, isDefinition: true, scopeLine: 2443, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4082)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!20, !97}
!4082 = !{!4083, !4084, !4085, !4086, !4087}
!4083 = !DILocalVariable(name: "offset", arg: 1, scope: !4079, file: !3, line: 2443, type: !97)
!4084 = !DILocalVariable(name: "li", scope: !4079, file: !3, line: 2444, type: !420)
!4085 = !DILocalVariable(name: "ln", scope: !4079, file: !3, line: 2445, type: !105)
!4086 = !DILocalVariable(name: "count", scope: !4079, file: !3, line: 2446, type: !20)
!4087 = !DILocalVariable(name: "slave", scope: !4088, file: !3, line: 2450, type: !8)
!4088 = distinct !DILexicalBlock(scope: !4079, file: !3, line: 2449, column: 33)
!4089 = !DILocation(line: 2443, column: 44, scope: !4079)
!4090 = !DILocation(line: 2444, column: 5, scope: !4079)
!4091 = !DILocation(line: 2446, column: 9, scope: !4079)
!4092 = !DILocation(line: 2448, column: 23, scope: !4079)
!4093 = !DILocation(line: 2444, column: 14, scope: !4079)
!4094 = !DILocation(line: 2448, column: 5, scope: !4079)
!4095 = !DILocation(line: 2449, column: 17, scope: !4079)
!4096 = !DILocation(line: 2445, column: 15, scope: !4079)
!4097 = !DILocation(line: 2449, column: 5, scope: !4079)
!4098 = !DILocation(line: 2450, column: 29, scope: !4088)
!4099 = !DILocation(line: 2450, column: 17, scope: !4088)
!4100 = !DILocation(line: 2452, column: 20, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 2452, column: 13)
!4102 = !DILocation(line: 2452, column: 30, scope: !4101)
!4103 = !DILocation(line: 2452, column: 13, scope: !4088)
!4104 = distinct !{!4104, !4097, !4105}
!4105 = !DILocation(line: 2454, column: 5, scope: !4079)
!4106 = !DILocation(line: 2453, column: 20, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 2453, column: 13)
!4108 = !DILocation(line: 2453, column: 33, scope: !4107)
!4109 = !DILocation(line: 2453, column: 13, scope: !4088)
!4110 = !DILocation(line: 0, scope: !4107)
!4111 = !DILocation(line: 2456, column: 1, scope: !4079)
!4112 = !DILocation(line: 2455, column: 5, scope: !4079)
!4113 = distinct !DISubprogram(name: "waitCommand", scope: !3, file: !3, line: 2460, type: !159, isLocal: false, isDefinition: true, scopeLine: 2460, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4114)
!4114 = !{!4115, !4116, !4117, !4118, !4119}
!4115 = !DILocalVariable(name: "c", arg: 1, scope: !4113, file: !3, line: 2460, type: !8)
!4116 = !DILocalVariable(name: "timeout", scope: !4113, file: !3, line: 2461, type: !237)
!4117 = !DILocalVariable(name: "numreplicas", scope: !4113, file: !3, line: 2462, type: !79)
!4118 = !DILocalVariable(name: "ackreplicas", scope: !4113, file: !3, line: 2462, type: !79)
!4119 = !DILocalVariable(name: "offset", scope: !4113, file: !3, line: 2463, type: !97)
!4120 = !DILocation(line: 2460, column: 26, scope: !4113)
!4121 = !DILocation(line: 2461, column: 5, scope: !4113)
!4122 = !DILocation(line: 2462, column: 5, scope: !4113)
!4123 = !DILocation(line: 2463, column: 27, scope: !4113)
!4124 = !{!480, !484, i64 480}
!4125 = !DILocation(line: 2463, column: 15, scope: !4113)
!4126 = !DILocation(line: 2465, column: 16, scope: !4127)
!4127 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 2465, column: 9)
!4128 = !DILocation(line: 2465, column: 9, scope: !4127)
!4129 = !DILocation(line: 2465, column: 9, scope: !4113)
!4130 = !DILocation(line: 2466, column: 9, scope: !4131)
!4131 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 2465, column: 28)
!4132 = !DILocation(line: 2467, column: 9, scope: !4131)
!4133 = !DILocation(line: 2471, column: 39, scope: !4134)
!4134 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 2471, column: 9)
!4135 = !DILocation(line: 2471, column: 36, scope: !4134)
!4136 = !DILocation(line: 2462, column: 10, scope: !4113)
!4137 = !DILocation(line: 2471, column: 9, scope: !4134)
!4138 = !DILocation(line: 2471, column: 66, scope: !4134)
!4139 = !DILocation(line: 2471, column: 9, scope: !4113)
!4140 = !DILocation(line: 2473, column: 42, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 2473, column: 9)
!4142 = !DILocation(line: 2473, column: 39, scope: !4141)
!4143 = !DILocation(line: 2461, column: 14, scope: !4113)
!4144 = !DILocation(line: 2473, column: 9, scope: !4141)
!4145 = !DILocation(line: 2474, column: 9, scope: !4141)
!4146 = !DILocation(line: 2473, column: 9, scope: !4113)
!4147 = !DILocation(line: 2477, column: 51, scope: !4113)
!4148 = !DILocation(line: 2443, column: 44, scope: !4079, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 2477, column: 19, scope: !4113)
!4150 = !DILocation(line: 2444, column: 5, scope: !4079, inlinedAt: !4149)
!4151 = !DILocation(line: 2446, column: 9, scope: !4079, inlinedAt: !4149)
!4152 = !DILocation(line: 2448, column: 23, scope: !4079, inlinedAt: !4149)
!4153 = !DILocation(line: 2444, column: 14, scope: !4079, inlinedAt: !4149)
!4154 = !DILocation(line: 2448, column: 5, scope: !4079, inlinedAt: !4149)
!4155 = !DILocation(line: 2449, column: 17, scope: !4079, inlinedAt: !4149)
!4156 = !DILocation(line: 2445, column: 15, scope: !4079, inlinedAt: !4149)
!4157 = !DILocation(line: 2449, column: 5, scope: !4079, inlinedAt: !4149)
!4158 = !DILocation(line: 2450, column: 29, scope: !4088, inlinedAt: !4149)
!4159 = !DILocation(line: 2450, column: 17, scope: !4088, inlinedAt: !4149)
!4160 = !DILocation(line: 2452, column: 20, scope: !4101, inlinedAt: !4149)
!4161 = !DILocation(line: 2452, column: 30, scope: !4101, inlinedAt: !4149)
!4162 = !DILocation(line: 2452, column: 13, scope: !4088, inlinedAt: !4149)
!4163 = !DILocation(line: 2453, column: 20, scope: !4107, inlinedAt: !4149)
!4164 = !DILocation(line: 2453, column: 33, scope: !4107, inlinedAt: !4149)
!4165 = !DILocation(line: 2453, column: 13, scope: !4088, inlinedAt: !4149)
!4166 = !DILocation(line: 2454, column: 5, scope: !4079, inlinedAt: !4149)
!4167 = !DILocation(line: 0, scope: !4107, inlinedAt: !4149)
!4168 = !DILocation(line: 2456, column: 1, scope: !4079, inlinedAt: !4149)
!4169 = !DILocation(line: 2455, column: 5, scope: !4079, inlinedAt: !4149)
!4170 = !DILocation(line: 2477, column: 19, scope: !4113)
!4171 = !DILocation(line: 2462, column: 23, scope: !4113)
!4172 = !DILocation(line: 2478, column: 24, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 2478, column: 9)
!4174 = !DILocation(line: 2478, column: 21, scope: !4173)
!4175 = !DILocation(line: 2478, column: 36, scope: !4173)
!4176 = !DILocation(line: 2478, column: 42, scope: !4173)
!4177 = !DILocation(line: 2478, column: 48, scope: !4173)
!4178 = !DILocation(line: 2478, column: 9, scope: !4113)
!4179 = !DILocation(line: 2479, column: 9, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4173, file: !3, line: 2478, column: 64)
!4181 = !DILocation(line: 2480, column: 9, scope: !4180)
!4182 = !DILocation(line: 2485, column: 23, scope: !4113)
!4183 = !DILocation(line: 2485, column: 13, scope: !4113)
!4184 = !DILocation(line: 2485, column: 21, scope: !4113)
!4185 = !{!480, !484, i64 392}
!4186 = !DILocation(line: 2486, column: 13, scope: !4113)
!4187 = !DILocation(line: 2486, column: 24, scope: !4113)
!4188 = !{!480, !484, i64 464}
!4189 = !DILocation(line: 2487, column: 27, scope: !4113)
!4190 = !DILocation(line: 2487, column: 13, scope: !4113)
!4191 = !DILocation(line: 2487, column: 25, scope: !4113)
!4192 = !{!480, !482, i64 460}
!4193 = !DILocation(line: 2488, column: 28, scope: !4113)
!4194 = !{!512, !483, i64 2688}
!4195 = !DILocation(line: 2488, column: 49, scope: !4113)
!4196 = !DILocation(line: 2488, column: 5, scope: !4113)
!4197 = !DILocation(line: 2489, column: 5, scope: !4113)
!4198 = !DILocation(line: 2438, column: 32, scope: !4075, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 2493, column: 5, scope: !4113)
!4200 = !DILocation(line: 2439, column: 1, scope: !4075, inlinedAt: !4199)
!4201 = !DILocation(line: 2494, column: 1, scope: !4113)
!4202 = distinct !DISubprogram(name: "unblockClientWaitingReplicas", scope: !3, file: !3, line: 2500, type: !159, isLocal: false, isDefinition: true, scopeLine: 2500, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4203)
!4203 = !{!4204, !4205}
!4204 = !DILocalVariable(name: "c", arg: 1, scope: !4202, file: !3, line: 2500, type: !8)
!4205 = !DILocalVariable(name: "ln", scope: !4202, file: !3, line: 2501, type: !105)
!4206 = !DILocation(line: 2500, column: 43, scope: !4202)
!4207 = !DILocation(line: 2501, column: 41, scope: !4202)
!4208 = !DILocation(line: 2501, column: 62, scope: !4202)
!4209 = !DILocation(line: 2501, column: 20, scope: !4202)
!4210 = !DILocation(line: 2501, column: 15, scope: !4202)
!4211 = !DILocation(line: 2502, column: 5, scope: !4202)
!4212 = !DILocation(line: 2503, column: 24, scope: !4202)
!4213 = !DILocation(line: 2503, column: 5, scope: !4202)
!4214 = !DILocation(line: 2504, column: 1, scope: !4202)
!4215 = distinct !DISubprogram(name: "processClientsWaitingReplicas", scope: !3, file: !3, line: 2508, type: !306, isLocal: false, isDefinition: true, scopeLine: 2508, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4216)
!4216 = !{!4217, !4218, !4219, !4220, !4221, !4223}
!4217 = !DILocalVariable(name: "last_offset", scope: !4215, file: !3, line: 2509, type: !97)
!4218 = !DILocalVariable(name: "last_numreplicas", scope: !4215, file: !3, line: 2510, type: !20)
!4219 = !DILocalVariable(name: "li", scope: !4215, file: !3, line: 2512, type: !420)
!4220 = !DILocalVariable(name: "ln", scope: !4215, file: !3, line: 2513, type: !105)
!4221 = !DILocalVariable(name: "c", scope: !4222, file: !3, line: 2517, type: !8)
!4222 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 2516, column: 33)
!4223 = !DILocalVariable(name: "numreplicas", scope: !4224, file: !3, line: 2529, type: !20)
!4224 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 2528, column: 16)
!4225 = distinct !DILexicalBlock(scope: !4222, file: !3, line: 2523, column: 13)
!4226 = !DILocation(line: 2509, column: 15, scope: !4215)
!4227 = !DILocation(line: 2510, column: 9, scope: !4215)
!4228 = !DILocation(line: 2512, column: 5, scope: !4215)
!4229 = !DILocation(line: 2515, column: 23, scope: !4215)
!4230 = !DILocation(line: 2512, column: 14, scope: !4215)
!4231 = !DILocation(line: 2515, column: 5, scope: !4215)
!4232 = !DILocation(line: 2516, column: 17, scope: !4215)
!4233 = !DILocation(line: 2513, column: 15, scope: !4215)
!4234 = !DILocation(line: 2516, column: 5, scope: !4215)
!4235 = !DILocation(line: 2517, column: 25, scope: !4222)
!4236 = !DILocation(line: 2517, column: 17, scope: !4222)
!4237 = !DILocation(line: 2523, column: 13, scope: !4225)
!4238 = !DILocation(line: 0, scope: !4225)
!4239 = !DILocation(line: 2523, column: 40, scope: !4225)
!4240 = !DILocation(line: 2523, column: 25, scope: !4225)
!4241 = !DILocation(line: 2524, column: 55, scope: !4225)
!4242 = !DILocation(line: 2524, column: 45, scope: !4225)
!4243 = !DILocation(line: 2523, column: 13, scope: !4222)
!4244 = !DILocation(line: 2526, column: 13, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 2525, column: 9)
!4246 = !DILocation(line: 2527, column: 32, scope: !4245)
!4247 = !DILocation(line: 2527, column: 13, scope: !4245)
!4248 = !DILocation(line: 2528, column: 9, scope: !4245)
!4249 = !DILocation(line: 2443, column: 44, scope: !4079, inlinedAt: !4250)
!4250 = distinct !DILocation(line: 2529, column: 31, scope: !4224)
!4251 = !DILocation(line: 2444, column: 5, scope: !4079, inlinedAt: !4250)
!4252 = !DILocation(line: 2446, column: 9, scope: !4079, inlinedAt: !4250)
!4253 = !DILocation(line: 2448, column: 23, scope: !4079, inlinedAt: !4250)
!4254 = !DILocation(line: 2444, column: 14, scope: !4079, inlinedAt: !4250)
!4255 = !DILocation(line: 2448, column: 5, scope: !4079, inlinedAt: !4250)
!4256 = !DILocation(line: 2449, column: 17, scope: !4079, inlinedAt: !4250)
!4257 = !DILocation(line: 2445, column: 15, scope: !4079, inlinedAt: !4250)
!4258 = !DILocation(line: 2449, column: 5, scope: !4079, inlinedAt: !4250)
!4259 = !DILocation(line: 2450, column: 29, scope: !4088, inlinedAt: !4250)
!4260 = !DILocation(line: 2450, column: 17, scope: !4088, inlinedAt: !4250)
!4261 = !DILocation(line: 2452, column: 20, scope: !4101, inlinedAt: !4250)
!4262 = !DILocation(line: 2452, column: 30, scope: !4101, inlinedAt: !4250)
!4263 = !DILocation(line: 2452, column: 13, scope: !4088, inlinedAt: !4250)
!4264 = !DILocation(line: 2453, column: 20, scope: !4107, inlinedAt: !4250)
!4265 = !DILocation(line: 2453, column: 33, scope: !4107, inlinedAt: !4250)
!4266 = !DILocation(line: 2453, column: 13, scope: !4088, inlinedAt: !4250)
!4267 = !DILocation(line: 2454, column: 5, scope: !4079, inlinedAt: !4250)
!4268 = !DILocation(line: 0, scope: !4107, inlinedAt: !4250)
!4269 = !DILocation(line: 2456, column: 1, scope: !4079, inlinedAt: !4250)
!4270 = !DILocation(line: 2455, column: 5, scope: !4079, inlinedAt: !4250)
!4271 = !DILocation(line: 2529, column: 17, scope: !4224)
!4272 = !DILocation(line: 2531, column: 40, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4224, file: !3, line: 2531, column: 17)
!4274 = !DILocation(line: 2531, column: 29, scope: !4273)
!4275 = !DILocation(line: 2531, column: 17, scope: !4224)
!4276 = !DILocation(line: 2532, column: 39, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 2531, column: 53)
!4278 = !DILocation(line: 2534, column: 17, scope: !4277)
!4279 = !DILocation(line: 2535, column: 36, scope: !4277)
!4280 = !DILocation(line: 2535, column: 17, scope: !4277)
!4281 = !DILocation(line: 2536, column: 13, scope: !4277)
!4282 = !DILocation(line: 0, scope: !4277)
!4283 = distinct !{!4283, !4234, !4284}
!4284 = !DILocation(line: 2538, column: 5, scope: !4215)
!4285 = !DILocation(line: 2539, column: 1, scope: !4215)
!4286 = distinct !DISubprogram(name: "replicationGetSlaveOffset", scope: !3, file: !3, line: 2543, type: !1241, isLocal: false, isDefinition: true, scopeLine: 2543, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4287)
!4287 = !{!4288}
!4288 = !DILocalVariable(name: "offset", scope: !4286, file: !3, line: 2544, type: !97)
!4289 = !DILocation(line: 2544, column: 15, scope: !4286)
!4290 = !DILocation(line: 2546, column: 16, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4286, file: !3, line: 2546, column: 9)
!4292 = !DILocation(line: 2546, column: 27, scope: !4291)
!4293 = !DILocation(line: 2546, column: 9, scope: !4286)
!4294 = !DILocation(line: 2547, column: 20, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 2547, column: 13)
!4296 = distinct !DILexicalBlock(scope: !4291, file: !3, line: 2546, column: 36)
!4297 = !DILocation(line: 2547, column: 13, scope: !4295)
!4298 = !DILocation(line: 2547, column: 13, scope: !4296)
!4299 = !DILocation(line: 2549, column: 27, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 2549, column: 20)
!4301 = !DILocation(line: 2549, column: 20, scope: !4300)
!4302 = !DILocation(line: 2549, column: 20, scope: !4295)
!4303 = !DILocation(line: 0, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 2549, column: 42)
!4305 = !DILocation(line: 0, scope: !4286)
!4306 = !DILocation(line: 2557, column: 9, scope: !4286)
!4307 = !DILocation(line: 2558, column: 5, scope: !4286)
!4308 = !DILocation(line: 2568, column: 16, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2568, column: 9)
!4310 = !DILocation(line: 2568, column: 9, scope: !4309)
!4311 = !DILocation(line: 2568, column: 27, scope: !4309)
!4312 = !DILocation(line: 2569, column: 17, scope: !4309)
!4313 = !DILocation(line: 2569, column: 28, scope: !4309)
!4314 = !DILocation(line: 2569, column: 53, scope: !4309)
!4315 = !DILocation(line: 1071, column: 57, scope: !2401, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 2570, column: 10, scope: !4309)
!4317 = !DILocation(line: 1071, column: 5, scope: !2401, inlinedAt: !4316)
!4318 = !DILocation(line: 2570, column: 37, scope: !4309)
!4319 = !DILocation(line: 2571, column: 11, scope: !4309)
!4320 = !DILocation(line: 2571, column: 29, scope: !4309)
!4321 = !DILocation(line: 2571, column: 21, scope: !4309)
!4322 = !DILocation(line: 2571, column: 60, scope: !4309)
!4323 = !{!512, !482, i64 2476}
!4324 = !DILocation(line: 2571, column: 53, scope: !4309)
!4325 = !DILocation(line: 2571, column: 51, scope: !4309)
!4326 = !DILocation(line: 2568, column: 9, scope: !417)
!4327 = !DILocation(line: 2573, column: 9, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 2572, column: 5)
!4329 = !DILocation(line: 1967, column: 16, scope: !2577, inlinedAt: !4330)
!4330 = distinct !DILocation(line: 2574, column: 9, scope: !4328)
!4331 = !DILocation(line: 1967, column: 9, scope: !2578, inlinedAt: !4330)
!4332 = !DILocation(line: 1968, column: 9, scope: !2582, inlinedAt: !4330)
!4333 = !DILocation(line: 1970, column: 5, scope: !2582, inlinedAt: !4330)
!4334 = !DILocation(line: 1071, column: 57, scope: !2401, inlinedAt: !4335)
!4335 = distinct !DILocation(line: 1971, column: 16, scope: !2586, inlinedAt: !4330)
!4336 = !DILocation(line: 1071, column: 5, scope: !2401, inlinedAt: !4335)
!4337 = !DILocation(line: 1970, column: 16, scope: !2577, inlinedAt: !4330)
!4338 = !DILocation(line: 1940, column: 21, scope: !2590, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 1973, column: 9, scope: !2594, inlinedAt: !4330)
!4340 = !DILocation(line: 1940, column: 9, scope: !2590, inlinedAt: !4339)
!4341 = !DILocation(line: 1942, column: 30, scope: !2590, inlinedAt: !4339)
!4342 = !DILocation(line: 1942, column: 5, scope: !2590, inlinedAt: !4339)
!4343 = !DILocation(line: 1943, column: 5, scope: !2590, inlinedAt: !4339)
!4344 = !DILocation(line: 1944, column: 28, scope: !2590, inlinedAt: !4339)
!4345 = !DILocation(line: 1945, column: 1, scope: !2590, inlinedAt: !4339)
!4346 = !DILocation(line: 0, scope: !2582, inlinedAt: !4330)
!4347 = !DILocation(line: 1978, column: 5, scope: !2578, inlinedAt: !4330)
!4348 = !DILocation(line: 1979, column: 1, scope: !2578, inlinedAt: !4330)
!4349 = !DILocation(line: 2575, column: 5, scope: !4328)
!4350 = !DILocation(line: 2578, column: 16, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2578, column: 9)
!4352 = !DILocation(line: 2578, column: 9, scope: !4351)
!4353 = !DILocation(line: 2578, column: 37, scope: !4351)
!4354 = !DILocation(line: 2578, column: 48, scope: !4351)
!4355 = !DILocation(line: 2578, column: 27, scope: !4351)
!4356 = !DILocation(line: 2579, column: 10, scope: !4351)
!4357 = !DILocation(line: 2579, column: 28, scope: !4351)
!4358 = !DILocation(line: 2579, column: 20, scope: !4351)
!4359 = !DILocation(line: 2579, column: 59, scope: !4351)
!4360 = !DILocation(line: 2579, column: 52, scope: !4351)
!4361 = !DILocation(line: 2579, column: 50, scope: !4351)
!4362 = !DILocation(line: 2578, column: 9, scope: !417)
!4363 = !DILocation(line: 2586, column: 37, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2586, column: 9)
!4365 = !DILocation(line: 2581, column: 9, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 2580, column: 5)
!4367 = !DILocation(line: 1967, column: 16, scope: !2577, inlinedAt: !4368)
!4368 = distinct !DILocation(line: 2582, column: 9, scope: !4366)
!4369 = !DILocation(line: 1967, column: 9, scope: !2578, inlinedAt: !4368)
!4370 = !DILocation(line: 1968, column: 9, scope: !2582, inlinedAt: !4368)
!4371 = !DILocation(line: 1970, column: 5, scope: !2582, inlinedAt: !4368)
!4372 = !DILocation(line: 1071, column: 57, scope: !2401, inlinedAt: !4373)
!4373 = distinct !DILocation(line: 1971, column: 16, scope: !2586, inlinedAt: !4368)
!4374 = !DILocation(line: 1071, column: 5, scope: !2401, inlinedAt: !4373)
!4375 = !DILocation(line: 1970, column: 16, scope: !2577, inlinedAt: !4368)
!4376 = !DILocation(line: 1940, column: 21, scope: !2590, inlinedAt: !4377)
!4377 = distinct !DILocation(line: 1973, column: 9, scope: !2594, inlinedAt: !4368)
!4378 = !DILocation(line: 1940, column: 9, scope: !2590, inlinedAt: !4377)
!4379 = !DILocation(line: 1942, column: 30, scope: !2590, inlinedAt: !4377)
!4380 = !DILocation(line: 1942, column: 5, scope: !2590, inlinedAt: !4377)
!4381 = !DILocation(line: 1943, column: 5, scope: !2590, inlinedAt: !4377)
!4382 = !DILocation(line: 1944, column: 28, scope: !2590, inlinedAt: !4377)
!4383 = !DILocation(line: 1945, column: 1, scope: !2590, inlinedAt: !4377)
!4384 = !DILocation(line: 0, scope: !2582, inlinedAt: !4368)
!4385 = !DILocation(line: 1978, column: 5, scope: !2578, inlinedAt: !4368)
!4386 = !DILocation(line: 1979, column: 1, scope: !2578, inlinedAt: !4368)
!4387 = !DILocation(line: 2583, column: 5, scope: !4366)
!4388 = !DILocation(line: 2586, column: 16, scope: !4364)
!4389 = !DILocation(line: 2586, column: 9, scope: !4364)
!4390 = !DILocation(line: 2586, column: 48, scope: !4364)
!4391 = !DILocation(line: 2586, column: 27, scope: !4364)
!4392 = !DILocation(line: 2587, column: 10, scope: !4364)
!4393 = !DILocation(line: 2587, column: 28, scope: !4364)
!4394 = !DILocation(line: 2587, column: 36, scope: !4364)
!4395 = !DILocation(line: 2587, column: 20, scope: !4364)
!4396 = !DILocation(line: 2587, column: 62, scope: !4364)
!4397 = !DILocation(line: 2587, column: 55, scope: !4364)
!4398 = !DILocation(line: 2587, column: 53, scope: !4364)
!4399 = !DILocation(line: 2586, column: 9, scope: !417)
!4400 = !DILocation(line: 2589, column: 9, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4364, file: !3, line: 2588, column: 5)
!4402 = !DILocation(line: 2590, column: 27, scope: !4401)
!4403 = !DILocation(line: 2590, column: 9, scope: !4401)
!4404 = !DILocation(line: 2591, column: 5, scope: !4401)
!4405 = !DILocation(line: 2594, column: 16, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2594, column: 9)
!4407 = !DILocation(line: 2594, column: 27, scope: !4406)
!4408 = !DILocation(line: 2594, column: 9, scope: !417)
!4409 = !DILocation(line: 2596, column: 20, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4406, file: !3, line: 2594, column: 50)
!4411 = !DILocation(line: 2596, column: 39, scope: !4410)
!4412 = !DILocation(line: 2595, column: 9, scope: !4410)
!4413 = !DILocation(line: 2597, column: 13, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 2597, column: 13)
!4415 = !DILocation(line: 2597, column: 33, scope: !4414)
!4416 = !DILocation(line: 2597, column: 13, scope: !4410)
!4417 = !DILocation(line: 2598, column: 13, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4414, file: !3, line: 2597, column: 42)
!4419 = !DILocation(line: 2599, column: 9, scope: !4418)
!4420 = !DILocation(line: 2605, column: 16, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2605, column: 9)
!4422 = !DILocation(line: 2605, column: 9, scope: !4421)
!4423 = !DILocation(line: 2605, column: 37, scope: !4421)
!4424 = !DILocation(line: 2605, column: 30, scope: !4421)
!4425 = !DILocation(line: 2605, column: 27, scope: !4421)
!4426 = !DILocation(line: 2606, column: 26, scope: !4421)
!4427 = !DILocation(line: 2606, column: 32, scope: !4421)
!4428 = !DILocation(line: 2605, column: 9, scope: !417)
!4429 = !DILocation(line: 2159, column: 13, scope: !2008, inlinedAt: !4430)
!4430 = distinct !DILocation(line: 2607, column: 9, scope: !4421)
!4431 = !DILocation(line: 2162, column: 18, scope: !2013, inlinedAt: !4430)
!4432 = !DILocation(line: 2163, column: 9, scope: !2013, inlinedAt: !4430)
!4433 = !DILocation(line: 2164, column: 9, scope: !2013, inlinedAt: !4430)
!4434 = !DILocation(line: 2165, column: 9, scope: !2013, inlinedAt: !4430)
!4435 = !DILocation(line: 2166, column: 35, scope: !2013, inlinedAt: !4430)
!4436 = !DILocation(line: 2166, column: 9, scope: !2013, inlinedAt: !4430)
!4437 = !DILocation(line: 2167, column: 18, scope: !2013, inlinedAt: !4430)
!4438 = !DILocation(line: 2169, column: 1, scope: !2008, inlinedAt: !4430)
!4439 = !DILocation(line: 2607, column: 9, scope: !4421)
!4440 = !DILocation(line: 2613, column: 5, scope: !417)
!4441 = !DILocation(line: 2615, column: 5, scope: !417)
!4442 = !DILocation(line: 2615, column: 11, scope: !417)
!4443 = !DILocation(line: 2618, column: 10, scope: !432)
!4444 = !DILocation(line: 2618, column: 42, scope: !432)
!4445 = !{!512, !482, i64 2372}
!4446 = !DILocation(line: 2618, column: 35, scope: !432)
!4447 = !DILocation(line: 2618, column: 33, scope: !432)
!4448 = !DILocation(line: 2618, column: 66, scope: !432)
!4449 = !DILocation(line: 2618, column: 71, scope: !432)
!4450 = !DILocation(line: 2619, column: 9, scope: !432)
!4451 = !DILocation(line: 2618, column: 9, scope: !417)
!4452 = !DILocation(line: 2626, column: 20, scope: !431)
!4453 = !DILocation(line: 2626, column: 13, scope: !431)
!4454 = !DILocation(line: 2626, column: 36, scope: !431)
!4455 = !DILocation(line: 2627, column: 20, scope: !431)
!4456 = !{!512, !483, i64 2944}
!4457 = !DILocation(line: 2627, column: 29, scope: !431)
!4458 = !{!4459, !484, i64 524376}
!4459 = !{!"clusterState", !483, i64 0, !481, i64 8, !482, i64 16, !482, i64 20, !483, i64 24, !483, i64 32, !471, i64 40, !471, i64 131112, !471, i64 262184, !471, i64 393256, !483, i64 524328, !484, i64 524336, !482, i64 524344, !482, i64 524348, !482, i64 524352, !481, i64 524360, !482, i64 524368, !484, i64 524376, !483, i64 524384, !484, i64 524392, !482, i64 524400, !481, i64 524408, !482, i64 524416, !471, i64 524424, !471, i64 524504, !484, i64 524584}
!4460 = !DILocation(line: 2627, column: 13, scope: !431)
!4461 = !DILocation(line: 2627, column: 36, scope: !431)
!4462 = !DILocation(line: 2628, column: 13, scope: !431)
!4463 = !DILocation(line: 2630, column: 13, scope: !431)
!4464 = !DILocation(line: 2631, column: 28, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 2630, column: 43)
!4466 = distinct !DILexicalBlock(scope: !431, file: !3, line: 2630, column: 13)
!4467 = !DILocation(line: 2631, column: 13, scope: !4465)
!4468 = !DILocation(line: 2631, column: 26, scope: !4465)
!4469 = !DILocation(line: 2632, column: 42, scope: !4465)
!4470 = !DILocation(line: 2632, column: 57, scope: !4465)
!4471 = !DILocation(line: 2632, column: 13, scope: !4465)
!4472 = !DILocation(line: 2634, column: 13, scope: !4465)
!4473 = !DILocation(line: 2635, column: 9, scope: !4465)
!4474 = !DILocation(line: 2652, column: 23, scope: !417)
!4475 = !DILocation(line: 2613, column: 14, scope: !417)
!4476 = !DILocation(line: 2652, column: 5, scope: !417)
!4477 = !DILocation(line: 2653, column: 17, scope: !417)
!4478 = !DILocation(line: 2614, column: 15, scope: !417)
!4479 = !DILocation(line: 2653, column: 5, scope: !417)
!4480 = !DILocation(line: 2654, column: 29, scope: !434)
!4481 = !DILocation(line: 2654, column: 17, scope: !434)
!4482 = !DILocation(line: 2657, column: 21, scope: !434)
!4483 = !DILocation(line: 2657, column: 31, scope: !434)
!4484 = !DILocation(line: 2657, column: 64, scope: !434)
!4485 = !DILocation(line: 2658, column: 31, scope: !434)
!4486 = !DILocation(line: 2659, column: 21, scope: !434)
!4487 = !DILocation(line: 2659, column: 36, scope: !434)
!4488 = !DILocation(line: 2658, column: 62, scope: !434)
!4489 = !DILocation(line: 2661, column: 13, scope: !434)
!4490 = !DILocation(line: 2662, column: 30, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 2662, column: 17)
!4492 = distinct !DILexicalBlock(scope: !4493, file: !3, line: 2661, column: 25)
!4493 = distinct !DILexicalBlock(scope: !434, file: !3, line: 2661, column: 13)
!4494 = !DILocation(line: 2662, column: 17, scope: !4491)
!4495 = !DILocation(line: 2665, column: 9, scope: !4492)
!4496 = distinct !{!4496, !4479, !4497}
!4497 = !DILocation(line: 2666, column: 5, scope: !417)
!4498 = !DILocation(line: 2669, column: 9, scope: !438)
!4499 = !DILocation(line: 2669, column: 9, scope: !417)
!4500 = !DILocation(line: 2670, column: 9, scope: !437)
!4501 = !DILocation(line: 2670, column: 18, scope: !437)
!4502 = !DILocation(line: 2673, column: 9, scope: !437)
!4503 = !DILocation(line: 2674, column: 21, scope: !437)
!4504 = !DILocation(line: 2671, column: 19, scope: !437)
!4505 = !DILocation(line: 2674, column: 9, scope: !437)
!4506 = !DILocation(line: 2675, column: 33, scope: !441)
!4507 = !DILocation(line: 2675, column: 21, scope: !441)
!4508 = !DILocation(line: 2677, column: 24, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !441, file: !3, line: 2677, column: 17)
!4510 = !DILocation(line: 2677, column: 34, scope: !4509)
!4511 = !DILocation(line: 2677, column: 17, scope: !441)
!4512 = distinct !{!4512, !4505, !4513}
!4513 = !DILocation(line: 2685, column: 9, scope: !437)
!4514 = !DILocation(line: 2678, column: 24, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !441, file: !3, line: 2678, column: 17)
!4516 = !DILocation(line: 2678, column: 30, scope: !4515)
!4517 = !DILocation(line: 2678, column: 17, scope: !441)
!4518 = !DILocation(line: 2679, column: 25, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !441, file: !3, line: 2679, column: 17)
!4520 = !DILocation(line: 2679, column: 43, scope: !4519)
!4521 = !DILocation(line: 2679, column: 34, scope: !4519)
!4522 = !DILocation(line: 2679, column: 67, scope: !4519)
!4523 = !DILocation(line: 2679, column: 60, scope: !4519)
!4524 = !DILocation(line: 2679, column: 58, scope: !4519)
!4525 = !DILocation(line: 2679, column: 17, scope: !441)
!4526 = !DILocation(line: 2682, column: 21, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 2680, column: 13)
!4528 = !DILocation(line: 2681, column: 17, scope: !4527)
!4529 = !DILocation(line: 2683, column: 17, scope: !4527)
!4530 = !DILocation(line: 2684, column: 13, scope: !4527)
!4531 = !DILocation(line: 2686, column: 5, scope: !438)
!4532 = !DILocation(line: 2694, column: 9, scope: !444)
!4533 = !DILocation(line: 2686, column: 5, scope: !437)
!4534 = !DILocation(line: 2694, column: 35, scope: !444)
!4535 = !DILocation(line: 2694, column: 50, scope: !444)
!4536 = !DILocation(line: 2694, column: 43, scope: !444)
!4537 = !DILocation(line: 2694, column: 40, scope: !444)
!4538 = !DILocation(line: 2695, column: 16, scope: !444)
!4539 = !DILocation(line: 2695, column: 9, scope: !444)
!4540 = !DILocation(line: 2695, column: 39, scope: !444)
!4541 = !DILocation(line: 2695, column: 50, scope: !444)
!4542 = !DILocation(line: 2697, column: 30, scope: !443)
!4543 = !DILocation(line: 2697, column: 48, scope: !443)
!4544 = !DILocation(line: 2697, column: 39, scope: !443)
!4545 = !DILocation(line: 2697, column: 16, scope: !443)
!4546 = !DILocation(line: 2699, column: 18, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !443, file: !3, line: 2699, column: 13)
!4548 = !DILocation(line: 2699, column: 13, scope: !443)
!4549 = !DILocation(line: 1034, column: 5, scope: !1710, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 2715, column: 13, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4547, file: !3, line: 2699, column: 52)
!4552 = !DILocation(line: 1035, column: 39, scope: !1710, inlinedAt: !4550)
!4553 = !DILocation(line: 1036, column: 1, scope: !1710, inlinedAt: !4550)
!4554 = !DILocation(line: 1042, column: 5, scope: !1716, inlinedAt: !4555)
!4555 = distinct !DILocation(line: 2716, column: 13, scope: !4551)
!4556 = !DILocation(line: 1043, column: 40, scope: !1716, inlinedAt: !4555)
!4557 = !DILocation(line: 1044, column: 33, scope: !1716, inlinedAt: !4555)
!4558 = !DILocation(line: 1045, column: 1, scope: !1716, inlinedAt: !4555)
!4559 = !DILocation(line: 118, column: 5, scope: !556, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 2717, column: 13, scope: !4551)
!4561 = !DILocation(line: 119, column: 18, scope: !556, inlinedAt: !4560)
!4562 = !DILocation(line: 119, column: 5, scope: !556, inlinedAt: !4560)
!4563 = !DILocation(line: 120, column: 25, scope: !556, inlinedAt: !4560)
!4564 = !DILocation(line: 121, column: 1, scope: !556, inlinedAt: !4560)
!4565 = !DILocation(line: 2721, column: 30, scope: !4551)
!4566 = !{!512, !481, i64 2416}
!4567 = !DILocation(line: 2721, column: 17, scope: !4551)
!4568 = !DILocation(line: 2718, column: 13, scope: !4551)
!4569 = !DILocation(line: 2728, column: 9, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !417, file: !3, line: 2728, column: 9)
!4571 = !DILocation(line: 2722, column: 9, scope: !4551)
!4572 = !DILocation(line: 2728, column: 35, scope: !4570)
!4573 = !DILocation(line: 2729, column: 16, scope: !4570)
!4574 = !DILocation(line: 2729, column: 26, scope: !4570)
!4575 = !DILocation(line: 2728, column: 40, scope: !4570)
!4576 = !DILocation(line: 2730, column: 9, scope: !4570)
!4577 = !DILocation(line: 2730, column: 50, scope: !4570)
!4578 = !DILocation(line: 2728, column: 9, scope: !417)
!4579 = !DILocation(line: 2373, column: 22, scope: !1601, inlinedAt: !4580)
!4580 = distinct !DILocation(line: 2732, column: 9, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 2731, column: 5)
!4582 = !DILocation(line: 2373, column: 5, scope: !1601, inlinedAt: !4580)
!4583 = !DILocation(line: 2374, column: 24, scope: !1601, inlinedAt: !4580)
!4584 = !DILocation(line: 2374, column: 5, scope: !1601, inlinedAt: !4580)
!4585 = !DILocation(line: 2375, column: 36, scope: !1601, inlinedAt: !4580)
!4586 = !DILocation(line: 2375, column: 34, scope: !1601, inlinedAt: !4580)
!4587 = !DILocation(line: 2376, column: 1, scope: !1601, inlinedAt: !4580)
!4588 = !DILocation(line: 2733, column: 5, scope: !4581)
!4589 = !DILocation(line: 2741, column: 16, scope: !447)
!4590 = !DILocation(line: 2741, column: 46, scope: !447)
!4591 = !DILocation(line: 2741, column: 36, scope: !447)
!4592 = !DILocation(line: 2742, column: 22, scope: !446)
!4593 = !DILocation(line: 2743, column: 13, scope: !446)
!4594 = !DILocation(line: 2744, column: 13, scope: !446)
!4595 = !DILocation(line: 2746, column: 9, scope: !446)
!4596 = !DILocation(line: 2748, column: 27, scope: !446)
!4597 = !DILocation(line: 2746, column: 18, scope: !446)
!4598 = !DILocation(line: 2748, column: 9, scope: !446)
!4599 = !DILocation(line: 2749, column: 21, scope: !446)
!4600 = !DILocation(line: 2745, column: 19, scope: !446)
!4601 = !DILocation(line: 2749, column: 9, scope: !446)
!4602 = !DILocation(line: 2750, column: 33, scope: !454)
!4603 = !DILocation(line: 2750, column: 21, scope: !454)
!4604 = !DILocation(line: 2751, column: 24, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !454, file: !3, line: 2751, column: 17)
!4606 = !DILocation(line: 2751, column: 34, scope: !4605)
!4607 = !DILocation(line: 2751, column: 17, scope: !454)
!4608 = !DILocation(line: 2752, column: 31, scope: !4609)
!4609 = distinct !DILexicalBlock(scope: !4605, file: !3, line: 2751, column: 68)
!4610 = !DILocation(line: 2752, column: 49, scope: !4609)
!4611 = !DILocation(line: 2752, column: 40, scope: !4609)
!4612 = !DILocation(line: 2742, column: 16, scope: !446)
!4613 = !DILocation(line: 2753, column: 26, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 2753, column: 21)
!4615 = !DILocation(line: 2753, column: 21, scope: !4609)
!4616 = !DILocation(line: 2754, column: 31, scope: !4609)
!4617 = !DILocation(line: 0, scope: !4609)
!4618 = !DILocation(line: 2756, column: 54, scope: !4609)
!4619 = !DILocation(line: 2755, column: 27, scope: !4609)
!4620 = !DILocation(line: 0, scope: !446)
!4621 = distinct !{!4621, !4601, !4622}
!4622 = !DILocation(line: 2758, column: 9, scope: !446)
!4623 = !DILocation(line: 2760, column: 13, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !446, file: !3, line: 2760, column: 13)
!4625 = !DILocation(line: 2760, column: 28, scope: !4624)
!4626 = !DILocation(line: 2761, column: 22, scope: !4624)
!4627 = !DILocation(line: 2761, column: 15, scope: !4624)
!4628 = !DILocation(line: 2761, column: 41, scope: !4624)
!4629 = !DILocation(line: 2762, column: 32, scope: !4624)
!4630 = !DILocation(line: 2762, column: 25, scope: !4624)
!4631 = !DILocation(line: 2762, column: 23, scope: !4624)
!4632 = !DILocation(line: 2760, column: 13, scope: !446)
!4633 = !DILocation(line: 2767, column: 13, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4624, file: !3, line: 2763, column: 9)
!4635 = !DILocation(line: 2768, column: 9, scope: !4634)
!4636 = !DILocation(line: 2769, column: 5, scope: !447)
!4637 = !DILocation(line: 2769, column: 5, scope: !446)
!4638 = !DILocation(line: 2305, column: 5, scope: !1405, inlinedAt: !4639)
!4639 = distinct !DILocation(line: 2772, column: 5, scope: !417)
!4640 = !DILocation(line: 2307, column: 9, scope: !1405, inlinedAt: !4639)
!4641 = !DILocation(line: 2309, column: 17, scope: !1416, inlinedAt: !4639)
!4642 = !DILocation(line: 2309, column: 10, scope: !1416, inlinedAt: !4639)
!4643 = !DILocation(line: 2310, column: 17, scope: !1416, inlinedAt: !4639)
!4644 = !DILocation(line: 2310, column: 10, scope: !1416, inlinedAt: !4639)
!4645 = !DILocation(line: 2309, column: 42, scope: !1416, inlinedAt: !4639)
!4646 = !DILocation(line: 2312, column: 23, scope: !1405, inlinedAt: !4639)
!4647 = !DILocation(line: 2305, column: 14, scope: !1405, inlinedAt: !4639)
!4648 = !DILocation(line: 2312, column: 5, scope: !1405, inlinedAt: !4639)
!4649 = !DILocation(line: 2313, column: 17, scope: !1405, inlinedAt: !4639)
!4650 = !DILocation(line: 2306, column: 15, scope: !1405, inlinedAt: !4639)
!4651 = !DILocation(line: 2313, column: 5, scope: !1405, inlinedAt: !4639)
!4652 = !DILocation(line: 2314, column: 29, scope: !1411, inlinedAt: !4639)
!4653 = !DILocation(line: 2314, column: 17, scope: !1411, inlinedAt: !4639)
!4654 = !DILocation(line: 2317, column: 20, scope: !1431, inlinedAt: !4639)
!4655 = !DILocation(line: 2317, column: 30, scope: !1431, inlinedAt: !4639)
!4656 = !DILocation(line: 2317, column: 52, scope: !1431, inlinedAt: !4639)
!4657 = !DILocation(line: 2315, column: 29, scope: !1411, inlinedAt: !4639)
!4658 = !DILocation(line: 2315, column: 47, scope: !1411, inlinedAt: !4639)
!4659 = !DILocation(line: 2315, column: 38, scope: !1411, inlinedAt: !4639)
!4660 = !DILocation(line: 2315, column: 16, scope: !1411, inlinedAt: !4639)
!4661 = !DILocation(line: 2318, column: 27, scope: !1431, inlinedAt: !4639)
!4662 = !DILocation(line: 2318, column: 20, scope: !1431, inlinedAt: !4639)
!4663 = !DILocation(line: 2318, column: 17, scope: !1431, inlinedAt: !4639)
!4664 = !DILocation(line: 2317, column: 13, scope: !1411, inlinedAt: !4639)
!4665 = !DILocation(line: 0, scope: !1405, inlinedAt: !4639)
!4666 = !DILocation(line: 0, scope: !1431, inlinedAt: !4639)
!4667 = !DILocation(line: 2320, column: 35, scope: !1405, inlinedAt: !4639)
!4668 = !DILocation(line: 2321, column: 1, scope: !1405, inlinedAt: !4639)
!4669 = !DILocation(line: 2773, column: 27, scope: !417)
!4670 = !DILocation(line: 2774, column: 1, scope: !417)
